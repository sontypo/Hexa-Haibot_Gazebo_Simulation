#!/usr/bin/env python3

from threading import Thread
import rospy
import math
import sys
import os
sys.path.append(os.path.dirname(os.path.abspath(os.path.dirname(__file__))))
from src.hexapod_haibot.hexahaibot import HexaHaibot
from geometry_msgs.msg import Twist, TransformStamped, Vector3, Pose, Point, Quaternion
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion, quaternion_from_euler

# List of Hexapod Joints
leg_num = 6
leg_idx = ["1", "2", "3", "4", "5", "6"]
joint_name = ['coxa', 'femur', 'tibia']
joints = []
for j in joint_name:
    # for i in range(1, leg_num + 1):
    for i in leg_idx:
        z = j + "_" + i + "_joint"
        joints.append(z)

hexapod_joints = joints


class JointFunction():
    """Joint Function"""
    def __init__(self):
        self.offset = 0
        self.scale = 1
        self.in_offset = 0
        self.in_scale = 1

    def get(self, x):
        """x between 0 and 1"""
        f = math.sin(self.in_offset + self.in_scale * x)
        return self.offset + self.scale * f

    def clone(self):
        z = JointFunction()
        z.offset = self.offset
        z.scale = self.scale
        z.in_offset = self.in_offset
        z.in_scale = self.in_scale
        return z

    def mirror(self):
        z = self.clone()
        z.offset *= -1
        z.scale *= -1
        return z

    def __str__(self):
        return 'y = {} + {} * sin({} + {} * x)'.format(
            self.offset, self.scale, self.in_offset, self.in_scale)


class GaitFunction():
    """Gait Function"""
    def __init__(self, **kwargs):
        self.parameters = {}

        self.parameters['swing_scale'] = 0.5
        self.parameters['vx_scale'] = 1.0
        self.parameters['vy_scale'] = 1.0
        self.parameters['vz_scale'] = 1.0
        self.parameters['vt_scale'] = 1.0

        for k, v in kwargs.items():
            self.parameters[k] = v

        self.joints = hexapod_joints
        self.generate()

    def generate(self):
        # f1=THIGH1=ANKLE1=L=R in phase
        self.pfn = {}  # phase joint functions
        self.afn = {}  # anti phase joint functions

        f1 = JointFunction()
        f1.in_scale = math.pi
        f1.scale = -self.parameters['swing_scale']

        f2 = f1.clone()
        f2.scale = 0

        f3 = f1.clone()
        f3.scale *= -1

        f4 = f2.clone()
        f3.scale *= -1

        zero = JointFunction()
        zero.scale = 0

        self.set_func('femur', f1, f2)
        self.set_func('tibia', f3, f4)
        self.set_func('coxa', zero, zero)

        # self.show()

    def set_func(self, joint, fp, fa):
        # Tripple gait setings
        # if set_phase:
        for leg in ['1', '4', '5']:
            j = joint + '_' + leg + '_' + "joint"
            self.pfn[j] = fp
            self.afn[j] = fa

        for leg in ['2', '3', '6']:
            j = joint + '_' + leg + '_' + "joint"
            self.pfn[j] = fa
            self.afn[j] = fp
        
        # else:
        #     for leg in ["1", "2", "3", "4", "5", "6"]:
        #         j = joint + '_' + leg + '_' + "joint"
        #         self.pfn[j] = fp
        #         self.afn[j] = fp

    # def generate_right(self):
    #     # Mirror from left to right and antiphase right
    #     l=[ v[:-2] for v in self.pfn.keys()]
    #     for j in l:
    #         self.pfn[j+"_r"]=self.afn[j+"_l"].mirror()
    #         self.afn[j+"_r"]=self.pfn[j+"_l"].mirror()

    def get(self, phase, x, velocity):
        """x between 0 and 1"""
        angles = {}
        for j in self.pfn.keys():
            if phase:
                v = self.pfn[j].get(x)
                angles[j] = v
            else:
                angles[j] = self.afn[j].get(x)
        self.apply_velocity(angles, velocity, phase, x)
        return angles

    def show(self):
        for j in self.pfn.keys():
            print (j, 'p', self.pfn[j], 'a', self.afn[j])

    def apply_velocity(self, angles, velocity, phase, x):
        pass
        
        # linear velocity along the X axis
        v1 = velocity[0] * self.parameters['vx_scale']
        d1 = (x * 4 - 1) * v1
        if phase:
            angles['coxa_2_joint'] += d1
            angles['coxa_3_joint'] -= d1
            angles['coxa_6_joint'] += d1
            angles['coxa_1_joint'] += d1
            angles['coxa_4_joint'] -= d1
            angles['coxa_5_joint'] += d1
        else:
            angles['coxa_2_joint'] -= d1
            angles['coxa_3_joint'] += d1
            angles['coxa_6_joint'] -= d1
            angles['coxa_1_joint'] -= d1
            angles['coxa_4_joint'] += d1
            angles['coxa_5_joint'] -= d1

        # linear velocity along the Y axis
        v2 = velocity[1]*self.parameters["vy_scale"]
        d2=(x * 2 - 1)*v2
        if phase:
            angles["femur_2_joint"] -= d2
            angles["tibia_2_joint"] += d2
            angles["femur_3_joint"] -= d2
            angles["tibia_3_joint"] -= d2
            angles["femur_6_joint"] -= d2
            angles["tibia_6_joint"] += d2
            angles["femur_1_joint"] -= d2
            angles["tibia_1_joint"] += d2
            angles["femur_4_joint"] += d2
            angles["tibia_4_joint"] -= d2
            angles["femur_5_joint"] += d2
            angles["tibia_5_joint"] += d2
            
        else:
            angles["femur_2_joint"] += d2
            angles["tibia_2_joint"] -= d2
            angles["femur_3_joint"] += d2
            angles["tibia_3_joint"] += d2
            angles["femur_6_joint"] += d2
            angles["tibia_6_joint"] -= d2
            angles["femur_1_joint"] += d2
            angles["tibia_1_joint"] -= d2
            angles["femur_4_joint"] -= d2
            angles["tibia_4_joint"] += d2
            angles["femur_5_joint"] -= d2
            angles["tibia_5_joint"] -= d2

        # linear velocity along the Z axis
        v3 = velocity[2]*self.parameters["vz_scale"]
        d3 = v3*30
        # if d3>10 or d3<-10:
        #     d3 = 0
        if v3<0:
            angles["femur_2_joint"] -= d3
            angles["femur_3_joint"] -= d3
            angles["femur_6_joint"] -= d3
            angles["femur_1_joint"] -= d3
            angles["femur_4_joint"] -= d3
            angles["femur_5_joint"] -= d3
            angles["tibia_1_joint"] += d3
            angles["tibia_2_joint"] += d3
            angles["tibia_3_joint"] += d3
            angles["tibia_4_joint"] += d3
            angles["tibia_5_joint"] += d3
            angles["tibia_6_joint"] += d3
        elif v3>0:
            angles["femur_2_joint"] += d3
            angles["femur_3_joint"] += d3
            angles["femur_6_joint"] += d3
            angles["femur_1_joint"] += d3
            angles["femur_4_joint"] += d3
            angles["femur_5_joint"] += d3
            angles["tibia_1_joint"] -= d3
            angles["tibia_2_joint"] -= d3
            angles["tibia_3_joint"] -= d3
            angles["tibia_4_joint"] -= d3
            angles["tibia_5_joint"] -= d3
            angles["tibia_6_joint"] -= d3
                
        # angular velocity theta around the Z axis 
        v4 = velocity[3] * self.parameters['vt_scale']
        d4 = (x * 2 - 1) * v4
        if phase:
            angles['coxa_2_joint'] -= d4
            angles['coxa_3_joint'] -= d4
            angles['coxa_6_joint'] -= d4
            angles['coxa_1_joint'] += d4
            angles['coxa_4_joint'] += d4
            angles['coxa_5_joint'] += d4
        else:
            angles['coxa_2_joint'] += d4
            angles['coxa_3_joint'] += d4
            angles['coxa_6_joint'] += d4
            angles['coxa_1_joint'] -= d4
            angles['coxa_4_joint'] -= d4
            angles['coxa_5_joint'] -= d4


class Walker:
    """Class for making Hexapod walk"""
    def __init__(self, robot):
        self.robot = robot
        self.running = False

        self.velocity = [0, 0, 0, 0]
        self.walking = False
        self.func = GaitFunction()
        
        self.current_time = rospy.Time()
        self.prev_time = rospy.Time()

        # self.ready_pos=get_walk_angles(10)
        self.ready_pos = self.func.get(True, 0, [0, 0, 0, 0]) #TODO:

        self._th_walk = None
        
        self.pose_theta = 0.0
        self.pose_x = -1.2  #TODO:
        self.pose_y = -1.0  #TODO:

        self._sub_cmd_vel = rospy.Subscriber(
            robot.ns + "cmd_vel", Twist, self._cb_cmd_vel, queue_size=1)
        
        self.pub_odom = rospy.Publisher("odom_hexa", Odometry, queue_size=1)
        
    def odom_publish(self, vx, vy, vz):
        self.current_time = rospy.Time.now()
        delta_t = ( self.current_time - self.prev_time ).to_sec()
        
        delta_theta = vz * delta_t
        self.pose_theta += delta_theta
        
        delta_x = ( vx * math.cos( self.pose_theta ) - vy * math.sin( self.pose_theta ) ) * delta_t
        delta_y = ( vx * math.sin( self.pose_theta ) + vy * math.cos( self.pose_theta ) ) * delta_t
        
        self.pose_x += delta_x/3
        self.pose_y += delta_y/3
        
        odom_quaternion = quaternion_from_euler(0, 0, self.pose_theta)
        odom_trans = TransformStamped()
        odom_trans.header.stamp = self.current_time
        odom_trans.header.frame_id = "odom"
        odom_trans.child_frame_id = "base_link"

        odom_trans.transform.translation.x = self.pose_x
        odom_trans.transform.translation.y = self.pose_y
        odom_trans.transform.translation.z = 0.15
        odom_trans.transform.rotation = odom_quaternion

        # self.pub_odom.publish( odom )
        odom = Odometry()
        odom.header.stamp = self.current_time
        odom.header.frame_id = "odom"

        # set the position
        odom.pose.pose = Pose(Point(self.pose_x, self.pose_y, 0.15), Quaternion(*odom_quaternion))

        # set the velocity
        odom.child_frame_id = "base_link"
        odom.twist.twist = Twist(Vector3(vx, vy, 0), Vector3(0, 0, vz))

        # publish the message
        self.pub_odom.publish(odom)

        self.prev_time = self.current_time
        

    def _cb_cmd_vel(self, msg):
        """Catches cmd_vel and update walker speed"""
        vx = msg.linear.x
        vy = msg.linear.y
        vz = msg.linear.z
        vt = msg.angular.z
        self.start()
        self.set_velocity(vx, vy, vz, vt)

    def init_walk(self):
        """If not there yet, go to initial walk position"""
        rospy.loginfo('Going to walk position')
        if self.get_dist_to_ready() > 0.02:
            self.robot.set_angles_slow(self.ready_pos)

    def start(self):
        if not self.running:
            self.running = True
            self.init_walk()
            self._th_walk = Thread(target=self._do_walk)
            self._th_walk.start()
            self.walking = True

    def stop(self):
        if self.running:
            self.walking = False
            rospy.loginfo('Waiting for stopped')
            while not rospy.is_shutdown() and self._th_walk is not None:
                rospy.sleep(0.1)
            rospy.loginfo('Stopped')
            self.running = False

    def set_velocity(self, x, y, z, t):
        self.velocity = [x, y, z, t]
        # self.odom_publish(x, y, z)

    def _do_walk(self):
        """Main walking loop

        Smoothly update velocity vectors and apply corresponding angles.
        """
        r = rospy.Rate(100)
        rospy.loginfo('Started walking thread')
        func = self.func

        # Global walk loop
        n = 10
        p = True
        i = 0
        self.current_velocity = [0, 0, 0, 0]
        # self.odom_publish(0,0,0)
        while (not rospy.is_shutdown() and
               (self.walking or i < n or self.is_walking())):
            if not self.walking:
                self.velocity = [0, 0, 0, 0]
                # self.odom_publish(0,0,0)
            if not self.is_walking() and i == 0:
                # Do not move if nothing to do and already at 0
                self.update_velocity(self.velocity, n)
                # self.odom_publish(self.velocity[0],self.velocity[1],self.velocity[3])
                r.sleep()
                continue
            x = float(i) / n
            angles = func.get(p, x, self.current_velocity)
            self.update_velocity(self.velocity, n)
            # self.odom_publish(self.velocity[0],self.velocity[1],self.velocity[3])
            self.robot.set_angles(angles)
            i += 1
            if i > n:
                i = 0
                p = not p
            r.sleep()
        rospy.loginfo('Finished walking thread')

        self._th_walk = None

    def is_walking(self):
        e = 0.02
        for v in self.current_velocity:
            if abs(v) > e:
                return True
        return False

    def rescale(self, angles, coef):
        z = {}
        for j, v in angles.items():
            offset = self.ready_pos[j]
            v -= offset
            v *= coef
            v += offset
            z[j] = v
        return z

    def update_velocity(self, target, n):
        a = 3 / float(n)
        b = 1 - a
        t_and_v = zip(target, self.current_velocity)
        self.current_velocity = [a * t + b * v for (t, v) in t_and_v]

    def get_dist_to_ready(self):
        angles = self.robot.get_angles()
        return get_distance(self.ready_pos, angles)


def interpolate(anglesa, anglesb, coefa):
    z = {}
    joints = anglesa.keys()
    for j in joints:
        z[j] = anglesa[j] * coefa + anglesb[j] * (1 - coefa)
    return z


def get_distance(anglesa, anglesb):
    d = 0
    joints = anglesa.keys()
    if len(joints) == 0:
        return 0
    for j in joints:
        d += abs(anglesb[j] - anglesa[j])
    d /= len(joints)
    return d


if __name__ == '__main__':
    rospy.init_node('hexa_haibot_walking_node')
    rospy.sleep(1)
    rospy.loginfo('Instantiating Hexapod Client')
    robot = HexaHaibot()
    rospy.loginfo('Instantiating Hexapod Walker')
    walker = Walker(robot)

    rospy.loginfo('Hexapod_HaIBot Ready')
    while not rospy.is_shutdown():
        rospy.sleep(1)
