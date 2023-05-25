#!/usr/bin/env python3

import rospy
import sys
import os
sys.path.append(os.path.dirname(os.path.abspath(os.path.dirname(__file__))))
from src.hexapod_haibot.hexahaibot import HexaHaibot


if __name__ == '__main__':
    rospy.init_node('walker_demo')

    rospy.loginfo('Instantiating robot Client')
    robot = HexaHaibot()
    rospy.sleep(1)

    rospy.loginfo('Walker Demo Starting')

    robot.set_gait_velocity(0.2, 0, 0.1, 0)
    rospy.sleep(3)
    robot.set_gait_velocity(1, 0, 0.2, 0)
    rospy.sleep(3)
    robot.set_gait_velocity(0, 1, 0.05, 0)
    rospy.sleep(3)
    robot.set_gait_velocity(0, -1, -0.2, 0)
    rospy.sleep(3)
    robot.set_gait_velocity(-1, 0, 0, 0)
    rospy.sleep(3)
    robot.set_gait_velocity(1, 1, 0.11, 0)
    rospy.sleep(5)
    robot.set_gait_velocity(0, 0, 0, 0)

    rospy.loginfo('Walker Demo Finished')
