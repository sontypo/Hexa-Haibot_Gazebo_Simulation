#!usr/bin/env python3

import rospy
import serial
import time
# 
from std_msgs.msg import Int32, String, Int16MultiArray
from nav_msgs.msg import Odometry
from tf import TransformBroadcaster
from tf.msg import geometry_msgs
from tf.transformations import euler_from_quaternion, quaternion_from_euler
from geometry_msgs.msg import Twist, Point, Pose, Quaternion
from sensor_msgs.msg import Imu
from math import *


class DataHandler():
    def __init__(self):
        self.measurement_time = rospy.Time()
        self.imu_measurement_time = rospy.Time()
        self.pre_measurement_time = rospy.Time()
        self.pre_imu_measurement_time = rospy.Time()
        self.imu = Imu()
        self.imu_pub = rospy.Publisher('IMU', Imu, queue_size=20)
        self.frame_id = "base_link"
        self.rad2deg = 180/pi
        self.rads = pi/1800
        self.pre_angle = 0.0
        
    def dataImu(self, angle):
        self.imu_measurement_time = rospy.Time.now()
        delta_t = (self.measurement_time - self.imu_measurement_time).to_sec()
        x_quat, y_quat, z_quat, w_quat = quaternion_from_euler(0.0, 0.0, angle*self.rads)
        self.imu.header.stamp = self.imu_measurement_time
        self.imu.header.frame_id = self.frame_id
        self.imu.orientation.x = x_quat
        self.imu.orientation.y = y_quat
        self.imu.orientation.z = z_quat
        self.imu.orientation.w = w_quat
        self.imu.angular_velocity.z = ((angle - self.pre_angle)*self.rads)/delta_t
        self.imu_pub.publish(self.imu)
        self.pre_imu_measurement_time = self.imu_measurement_time
        self.pre_angle = angle
        

class TransRecvData():
    def __init__(self):
        self.serial_port = "/dev/ttyUSB0"
        self.baudrate = 115200
        self.ser = serial.Serial()
        self.angle = 0.0
        self.count = 0
        self.data_handler = DataHandler()
        self.sub_cmd_vel = rospy.Subscriber("cmd_vel", Twist, self.getVelocity)
        self.velocties_pair = Twist()
        
        
    def serialConnect(self):
        self.ser.port = self.serial_port
        self.ser.baudrate = self.baudrate
        # self.ser.timeout = 0
        
        try:
            self.ser.open()
            print("Serial is connected") 
            
        except serial.SerialException:
            rospy.logerr("Serial unable to connect, at %s . Trying again in 5 secs...", self.serial_port)
            rospy.Duration(5)
            # rospy.sleep(5)
        
        if self.ser.is_open:
            rospy.logdebug("Serial port %s is connected.", self.serial_port)
            
    def serialReceive(self):
        recv_data = []
        count = 0
        while self.ser.is_open:
            # print(self.ser.read(1))
            for data in self.ser.read():
                # data = self.ser.read(1)
                recv_data.append(data)
                
                if count == 0 and data != 0x02:
                    recv_data = []
                    print("Just died from begining")
                    pass
                
                if count == 3 and data != 0x03:
                    recv_data = []
                    print("Died, almost finished")
                    pass
                
                if count == 3 and data == 0x03:
                    # recv_data.append(data)
                    self.angle = recv_data[1]<<8 | recv_data[2]
                    count = 0
                    # recv_data = []
                    self.data_handler.dataImu(self.angle)
                    rospy.loginfo("IMU angle received: %d", self.angle)
                    
                else:
                    recv_data[count] = data
                    count += 1
            
    def serialTransmit(self, linear_x, angular_z):
        linear_vel = round(linear_x, 2) * 100
        theta = round(angular_z, 2) * 100
        
        if theta < 0:
            direct = 1
            theta = -theta
            
        elif theta > 0:
            direct = 0
            theta = theta
            
        if theta > 255:
            theta = 255
        
        ss = String()
        ss<<", "<<linear_vel<<" "<<direct<<" "<<theta<<"."
    
        string_2_stm = str(ss)
        self.ser.write(string_2_stm)
        
    def getVelocity(self, cmd):
        self.velocties_pair = cmd
        linear_x = cmd.linear.x
        angular_z = cmd.angular.z
        self.serialTransmit(linear_x, angular_z)
        
    
if __name__ == "__main__":
    rospy.init_node("ros_2_stm")
    tr_data = TransRecvData()
    tr_data.serialConnect()
    while True:
        tr_data.serialReceive()
        rospy.Rate(100).sleep()
        rospy.spin()
    