#!usr/bin/env python3

import rospy
import numpy as np
import math
import os
from math import *
from geometry_msgs.msg import Twist, Point, Pose, Vector3, Quaternion, PoseStamped
from sensor_msgs.msg import LaserScan, PointCloud2
import sensor_msgs.point_cloud2 as pc2
from nav_msgs.msg import Odometry
import pandas as pd
from tf.transformations import euler_from_quaternion, quaternion_from_euler


exp_path = os.path.dirname(os.path.realpath(__file__))
exp_path = exp_path.replace('hexapod_haibot/nodes', 'hexapod_haibot/Experimental_result')
# exp_path = "/home/saun"

def SavePoses(odomMsg):
    pose_data = Pose()
    pose_data.position.x = odomMsg.pose.pose.position.x
    pose_data.position.y = odomMsg.pose.pose.position.y
    pose_data.position.z = 0.0
    pose_data.orientation.x = 0.0
    pose_data.orientation.y = 0.0
    pose_data.orientation.z = 0.0
    pose_data.orientation.w = 0.0

    a = pose_data.position.x
    b = pose_data.position.y

    print(a, b)

    df = pd.DataFrame([[a,b]])
    return df

def SavePoses2D(x, y):
    df = pd.DataFrame([[x,y]])
    return df

class CMD():
    def __init__(self):
        self.origin_x = 0.0
        self.origin_y = 0.0
        self.origin_theta = 0
        self.init_x = 0.0 #m  #TODO:
        self.init_y = 0.0
        self.pose_x = 0.0  #TODO:
        self.pose_y = 0.0  #TODO:
        self.vx = 0.0
        self.vy = 0.0
        self.vz = 0.0
        self.v_theta = 0.0
        self.current_theta = 0

        self.pose_theta = 0.0
        self.position = Pose()
        self.pub_cmd_vel = rospy.Subscriber('/hexa_haibot/cmd_vel', Twist, self.VelocitiesCallback)
        self.sub_odom = rospy.Subscriber('/odom', Odometry, self.getOdometry)
        self.pub_odom = rospy.Publisher("odom_hexa", Odometry, queue_size=1)
        self.current_time = rospy.Time()
        self.prev_time = rospy.Time()
        self.rate = rospy.Rate(1)
        # self.pub_cmd_vel.publish(Twist())
        # rospy.sleep(1)

    def getOdometry(self, odom):
        self.position = odom.pose.pose.position
        orientation = odom.pose.pose.orientation
        orientation_list = [orientation.x, orientation.y, orientation.z, orientation.w]
        _, _, cur_theta = euler_from_quaternion(orientation_list)

        self.current_theta = cur_theta #radian
        
        return self.position.x, self.position.y, self.current_theta
    
    def OdomPublish(self):
        self.current_time = rospy.Time.now()
        delta_t = ( self.current_time - self.prev_time ).to_sec()
        
        delta_theta = self.v_theta * delta_t
        self.pose_theta += delta_theta
        
        delta_x = ( self.vx * math.cos( self.pose_theta ) - self.vy * math.sin( self.pose_theta ) ) * delta_t
        delta_y = ( self.vx * math.sin( self.pose_theta ) + self.vy * math.cos( self.pose_theta ) ) * delta_t
        
        self.pose_x += delta_x
        self.pose_y += delta_y
        
        odom_quaternion = quaternion_from_euler(0, 0, self.pose_theta)

        # self.pub_odom.publish( odom )
        odom = Odometry()
        odom.header.stamp = self.current_time
        odom.header.frame_id = "odom"

        # set the position
        odom.pose.pose = Pose(Point(self.pose_x, self.pose_y, 0.15), Quaternion(*odom_quaternion))

        # set the velocity
        odom.child_frame_id = "base_link"
        odom.twist.twist = Twist(Vector3(self.vx, self.vy, 0), Vector3(0, 0, self.v_theta))

        # publish the message
        self.pub_odom.publish(odom)
        self.prev_time = self.current_time
        
        x_pos = self.pose_x
        y_pos = self.pose_y
        print (x_pos , y_pos)
        
        return x_pos, y_pos
    
    
    def VelocitiesCallback(self, cmd_vel):
        self.vx = cmd_vel.linear.x
        self.vy = cmd_vel.linear.y
        self.vz = cmd_vel.linear.z
        self.v_theta = cmd_vel.angular.z

def run():
    rospy.init_node('experimental_saved_node')
    cmd = CMD()
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        x, y = cmd.OdomPublish()
        odomMsg = rospy.wait_for_message('/odom', Odometry)
        df = SavePoses(odomMsg)
        # df = SavePoses(x, y) 
        f =  open(exp_path+'/test.csv', 'a')
        # f.write("fst\n")
        np.savetxt(f, df, delimiter = ' , ')
        f.close()
        rate.sleep()
    print("<--------- Test mode completed --------->")
    print('Deployment Break!')
    
if __name__ == '__main__':
    try:
        run()
    except rospy.ROSInterruptException:
        pass