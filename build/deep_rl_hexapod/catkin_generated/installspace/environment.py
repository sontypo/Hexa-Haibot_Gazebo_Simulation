#!/usr/bin/env python3

#####################################################################
## Environment settings for HaIBot Hexapod with Velodyne sensor data
#####################################################################

import rospy
import numpy as np
import math
import os
from math import *
from geometry_msgs.msg import Twist, Point, Pose, Vector3, Quaternion
from sensor_msgs.msg import LaserScan, PointCloud2
import sensor_msgs.point_cloud2 as pc2
from nav_msgs.msg import Odometry
from std_srvs.srv import Empty
from gazebo_msgs.srv import SpawnModel
from tf.transformations import euler_from_quaternion, quaternion_from_euler
from src.respawnGoal import Respawn
from gazebo_msgs.msg import ModelState

class Env():
    def __init__(self, action_size):
        self.origin_x = -1.4
        self.origin_y = -2.3
        self.origin_theta = 0.0
        self.init_x = -1.4 #m  #TODO:
        self.init_y = -2.3
        self.pose_x = -1.4  #TODO:
        self.pose_y = -2.3  #TODO:
        # self.goal_x = 1.25  #| fixed goal less obstacles
        # self.goal_y = 1.25  #|
        self.goal_x = 1.5  #| fixed goal hexapod_yard.world
        self.goal_y = 0.5  #|
        self.heading = 0
        self.action_size = action_size
        self.velodyne_state_size = 60
        self.state = []
        self.initGoal = True
        self.get_goalbox = False
        self.prev_distance = 0
        self.const_vel = 0.3    #0.25
        self.max_angular_vel = 0.25
        self.max_horizontal_vel = 0.1
        self.current_theta = 0
        self.goal_counters = 0
        self.enable_feedback_control = False
        self.safe_dist = 1.0
        self.gaps = [[-1.6, -1.57 + 3.14 / 20]]
        self.lidar = []
        self.pose_theta = 0.0
        self.position = Pose()
        self.pub_cmd_vel = rospy.Publisher('/hexa_haibot/cmd_vel', Twist, queue_size=5)
        self.sub_velodyne = rospy.Subscriber('/velodyne_points', PointCloud2, self.VelodyneCallback, queue_size=1) 
        self.sub_odom = rospy.Subscriber('/odom', Odometry, self.getOdometry)
        self.model_state = rospy.Publisher('/gazebo/set_model_state', ModelState, queue_size = 10)
        self.reset_proxy = rospy.ServiceProxy('gazebo/reset_simulation', Empty)
        self.unpause_proxy = rospy.ServiceProxy('gazebo/unpause_physics', Empty)
        self.pause_proxy = rospy.ServiceProxy('gazebo/pause_physics', Empty)
        self.pub_odom = rospy.Publisher("odom_hexa", Odometry, queue_size=1)
        self.respawn_goal = Respawn()
        self.current_time = rospy.Time()
        self.prev_time = rospy.Time()
        self.rate = rospy.Rate(1)
        # self.pub_cmd_vel.publish(Twist())
        # rospy.sleep(1)
    
    def getGoalDistance(self):
        goal_distance = round(math.hypot(self.goal_x - self.position.x, self.goal_y - self.position.y), 2)

        return goal_distance
    
    def VelodyneCallback(self, data):
        velodyne_data = list(pc2.read_points(data, skip_nans=False, field_names=("x", "y", "z")))
        self.velodyne_data = np.ones(self.velodyne_state_size) * 10
        for i in range(len(velodyne_data)):
            if velodyne_data[i][2] > -0.2:
                dot = velodyne_data[i][0] * 1 + velodyne_data[i][1] * 0
                mag1 = sqrt(pow(velodyne_data[i][0], 2) + pow(velodyne_data[i][1], 2))
                mag2 = sqrt(pow(1, 2) + pow(0, 2))
                beta = acos(dot / (mag1 * mag2)) * np.sign(velodyne_data[i][1])  # * -1
                dist = sqrt(velodyne_data[i][0] ** 2 + velodyne_data[i][1] ** 2 + velodyne_data[i][2] ** 2)

                for j in range(len(self.gaps)):
                    if self.gaps[j][0] <= beta < self.gaps[j][1]:
                        self.velodyne_data[j] = min(self.velodyne_data[j], dist)
                        break
                    
    def getOdometry(self, odom):
        self.position = odom.pose.pose.position
        orientation = odom.pose.pose.orientation
        orientation_list = [orientation.x, orientation.y, orientation.z, orientation.w]
        _, _, cur_theta = euler_from_quaternion(orientation_list)
        goal_angle = math.atan2(self.goal_y - self.position.y, self.goal_x - self.position.x)

        # heading = goal_angle - cur_theta
        # if heading > pi:
        #     heading -= 2 * pi

        # elif heading < -pi:
        #     heading += 2 * pi

        # self.heading = round(heading, 2)
        self.current_theta = cur_theta #radian
        
        return self.position.x, self.position.y, self.current_theta
    
    def initialRobotPostion(self, x, y, theta):
        checkpoint = ModelState()
        checkpoint.model_name = 'hexa_haibot'

        checkpoint.pose.position.x = x
        checkpoint.pose.position.y = y
        checkpoint.pose.position.z = 0.0

        [x_q,y_q,z_q,w_q] = quaternion_from_euler(0.0,0.0,radians(theta))

        checkpoint.pose.orientation.x = x_q
        checkpoint.pose.orientation.y = y_q
        checkpoint.pose.orientation.z = z_q
        checkpoint.pose.orientation.w = w_q

        checkpoint.twist.linear.x = 0.0
        checkpoint.twist.linear.y = 0.0
        checkpoint.twist.linear.z = 0.0

        checkpoint.twist.angular.x = 0.0
        checkpoint.twist.angular.y = 0.0
        checkpoint.twist.angular.z = 0.0
        
        self.model_state.publish(checkpoint)

    def getState(self, scan):
        scan_range = []
        heading = self.heading
        min_range = 0.48
        done = False

        for i in range(len(scan.ranges)):
            if scan.ranges[i] == float('Inf'):
                scan_range.append(3.5)
            elif np.isnan(scan.ranges[i]):
                scan_range.append(0)
            else:
                scan_range.append(scan.ranges[i])

        if min_range >= min(scan_range) > 0.0:
            done = True

        # current_distance = round(math.hypot(self.goal_x - self.position.x, self.goal_y - self.position.y),2)
        # if current_distance <= 0.35:
        #     self.get_goalbox = True
            
        # laserscan_state = np.array(scan.ranges[:])
        # velodyne_state = []
        # velodyne_state[:] = self.velodyne_data[:]
        
        # laserscan_state = [velodyne_state]
        
        # toGoal = [heading, current_distance]
        # to_Obs = [heading, min(scan_range)]
        # self.state = np.append(laserscan_state, toGoal)
        # self.state = np.append(scan_range, to_Obs)
        # print ("velodyne_state:", self.state )
        # state = self.state
        state = scan_range

        return state, done

    def setReward(self, state, done, action):
        yaw_reward = []
        # current_distance = state[-1]
        # heading = state[-2]
        # heading = state[-2]
        # min_range = state[-1]

        # for i in range(self.action_size):
        #     angle = -pi / 4 + heading + (pi / 8 * i) + pi / 2
        #     tr = 1 - 4 * math.fabs(0.5 - math.modf(0.25 + 0.5 * angle % (2 * math.pi) / math.pi)[0])
        #     yaw_reward.append(tr)
        
        for i in range(self.action_size):
            angle = -pi / 4 + (pi / 8 * i) + pi / 2
            tr = 1 - 4 * math.fabs(0.5 - math.modf(0.25 + 0.5 * angle % (2 * math.pi) / math.pi)[0])
            yaw_reward.append(tr)

        # distance_rate = 2 ** (current_distance / self.goal_distance)
        # reward = ((round(yaw_reward[action] * self.action_size, 2)) * distance_rate)
        reward = round((yaw_reward[action]) * self.action_size, 2)
        
        # dist_rate = self.prev_distance - current_distance
        # self.prev_distance = current_distance
        
        if action == 2: 
            reward = 3.0
            
        elif action == 1 or action == 3:
            reward = 2.5
            
        else:
            reward = 2.0

        if done:
            rospy.loginfo("*****************")
            rospy.loginfo("* COLLISION !!! *")
            rospy.loginfo("*****************")
            # reward = -650.
            reward = -300.
            self.pub_cmd_vel.publish(Twist())
        
        # elif dist_rate > 0:
        #     reward = 200.*dist_rate
        
        # elif dist_rate <= 0:
        #     reward = -8.
        
        # if (self.get_goalbox):
        #     rospy.loginfo("********************")
        #     rospy.loginfo("* GOAL REACHED !!! *")
        #     rospy.loginfo("********************")
        #     reward = 550.
        #     self.goal_counters += 1
        #     self.pub_cmd_vel.publish(Twist())
        #     # self.goal_x, self.goal_y = self.respawn_goal.getPosition(True, delete=True)
            
        #     # if self.position.x == self.init_x and self.position.y == self.init_y:   
        #     self.goal_x, self.goal_y = self.respawn_goal.getPosition(False, delete=True)
        #     self.goal_distance = self.getGoalDistance()
        #         # self.get_goalbox = False
        #     self.get_goalbox = False
        #     self.pose_x = -1.4
        #     self.pose_y = -1.5
        #     self.pose_theta = 0.0
        #     self.initialRobotPostion(self.origin_x, self.origin_y, self.origin_theta)
        #     twist = Twist()
        #     self.pub_cmd_vel.publish(twist)
        #     self.OdomPublish(0,0,0)

        # return reward, self.goal_counters
        return reward

    def step(self, action):
        self.linear_y_vel = ((self.action_size - 1)/2 - action) * self.max_horizontal_vel/2
        self.ang_vel = ((self.action_size - 1)/2 - action) * self.max_angular_vel/2

        vel_cmd = Twist()
        vel_cmd.linear.x = self.const_vel
        vel_cmd.linear.y = self.linear_y_vel
        vel_cmd.angular.z = -self.ang_vel
        self.pub_cmd_vel.publish(vel_cmd)
        self.OdomPublish(self.const_vel,self.linear_y_vel,self.ang_vel)

        data = None
        # odom = None
        vlp = None
        while data is None:
            try:
                data = rospy.wait_for_message('/scan', LaserScan)
                odom = rospy.wait_for_message('/odom', Odometry)
                vlp = rospy.wait_for_message('/velodyne_points', PointCloud2)
            except:
                pass
            
        self.init_x, self.init_y, self.current_theta = self.getOdometry(odom)
        state, done = self.getState(data)   
        # reward, counters = self.setReward(state, done, action)
        reward = self.setReward(state, done, action)

        # return np.asarray(state), reward, done, counters
        return np.asarray(state), reward, done
    
    def OdomPublish(self, vx, vy, v_theta):
        self.current_time = rospy.Time.now()
        delta_t = ( self.current_time - self.prev_time ).to_sec()
        
        delta_theta = v_theta * delta_t
        self.pose_theta += delta_theta
        
        delta_x = ( vx * math.cos( self.pose_theta ) - vy * math.sin( self.pose_theta ) ) * delta_t
        delta_y = ( vx * math.sin( self.pose_theta ) + vy * math.cos( self.pose_theta ) ) * delta_t
        
        self.pose_x += delta_x/2
        self.pose_y += delta_y/2
        
        odom_quaternion = quaternion_from_euler(0, 0, self.pose_theta)

        # self.pub_odom.publish( odom )
        odom = Odometry()
        odom.header.stamp = self.current_time
        odom.header.frame_id = "odom"

        # set the position
        odom.pose.pose = Pose(Point(self.pose_x, self.pose_y, 0.15), Quaternion(*odom_quaternion))

        # set the velocity
        odom.child_frame_id = "base_link"
        odom.twist.twist = Twist(Vector3(vx, vy, 0), Vector3(0, 0, v_theta))

        # publish the message
        self.pub_odom.publish(odom)
        self.prev_time = self.current_time

    def reset(self):
        self.state = []
        self.pose_x = self.origin_x
        self.pose_y = self.origin_y
        self.pose_theta = 0.0
        self.initialRobotPostion(self.origin_x, self.origin_y, self.origin_theta)
        twist = Twist()
        self.pub_cmd_vel.publish(twist)
        self.OdomPublish(0,0,0)
        # self.rate.sleep()

        data = None
        odom = None
        vlp = None
        while data is None:
            try:
                data = rospy.wait_for_message('/scan', LaserScan)
                odom = rospy.wait_for_message('/odom', Odometry)
                vlp = rospy.wait_for_message('/velodyne_points', PointCloud2)
            except:
                pass

        # if self.initGoal:
        #     self.goal_x, self.goal_y = self.respawn_goal.getPosition()
        #     self.initGoal = False

        self.init_x, self.init_y, self.current_theta = self.getOdometry(odom)
        # self.goal_distance = self.getGoalDistance()
        state, done = self.getState(data)
        # self.goal_counters = 0
        # self.lidar = state

        return np.asarray(state)