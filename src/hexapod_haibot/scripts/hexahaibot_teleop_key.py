#!/usr/bin/env python3


import rospy
from geometry_msgs.msg import Twist
import sys, select, os
if os.name == 'nt':
  import msvcrt, time
else:
  import tty, termios

DIFFER_MAX_LIN_VEL = 0.06
DIFFER_MAX_LIN_VEL_Z = 0.06
DIFFER_MAX_ANG_VEL = 0.26
LIN_VEL_STEP_SIZE = 0.06
LIN_VEL_STEP_SIZE_Z = 0.06
ANG_VEL_STEP_SIZE = 0.13

msg = """
Control Your hexapod!
--------------------------------
Moving around:
        w                 u
   a    s    d        h   j   k
        x             

space key, s : force stop
--------------------------------

CTRL-C to quit
"""

e = """
Communications Failed
"""

def getKey():
    if os.name == 'nt':
        timeout = 0.1
        startTime = time.time()
        while(1):
            if msvcrt.kbhit():
                if sys.version_info[0] >= 3:
                    return msvcrt.getch().decode()
                else:
                    return msvcrt.getch()
            elif time.time() - startTime > timeout:
                return ''

    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''

    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

def vels(target_linear_vel_x, target_linear_vel_y, target_linear_vel_z, target_angular_vel):
    return "Currently:\tLinear vel [ %s, %s, %s ]\t|    Angular vel %s " % (target_linear_vel_x, target_linear_vel_y, target_linear_vel_z, target_angular_vel)

def makeSimpleProfile(output, input, slop):
    if input > output:
        output = min( input, output + slop )
    elif input < output:
        output = max( input, output - slop )
    else:
        output = input

    return output

def constrain(input, low, high):
    if input < low:
      input = low
    elif input > high:
      input = high
    else:
      input = input

    return input

def checkLinearLimitVelocity(vel):

    vel = constrain(vel, -DIFFER_MAX_LIN_VEL, DIFFER_MAX_LIN_VEL)

    return vel

def checkLinearLimitVelocityZ(vel):

    vel = constrain(vel, -DIFFER_MAX_LIN_VEL_Z, DIFFER_MAX_LIN_VEL_Z)

    return vel

def checkAngularLimitVelocity(vel):

    vel = constrain(vel, -DIFFER_MAX_ANG_VEL, DIFFER_MAX_ANG_VEL)

    return vel

if __name__=="__main__":
    if os.name != 'nt':
        settings = termios.tcgetattr(sys.stdin)

    rospy.init_node('hexapod_teleop')
    pub = rospy.Publisher('hexa_haibot/cmd_vel', Twist, queue_size=1)
    # rate = rospy.Rate(10)


    status = 0
    target_linear_vel_x   = 0.0
    target_linear_vel_y   = 0.0
    target_linear_vel_z   = 0.0
    target_angular_vel  = 0.0
    control_linear_vel_x  = 0.0
    control_linear_vel_y  = 0.0
    control_linear_vel_z  = 0.0
    control_angular_vel = 0.0

    try:
        print(msg)
        while not rospy.is_shutdown():
            key = getKey()
            if key == 'w' :
                target_linear_vel_x = checkLinearLimitVelocity(target_linear_vel_x + LIN_VEL_STEP_SIZE)
                status = status + 1
                print(vels(target_linear_vel_x, target_linear_vel_y, target_linear_vel_z, target_angular_vel))
                
            elif key == 'x' :
                target_linear_vel_x = checkLinearLimitVelocity(target_linear_vel_x - LIN_VEL_STEP_SIZE)
                status = status + 1
                print(vels(target_linear_vel_x, target_linear_vel_y, target_linear_vel_z, target_angular_vel))
            
            elif key == 'a' :
                target_angular_vel = checkAngularLimitVelocity(target_angular_vel + ANG_VEL_STEP_SIZE)
                status = status + 1
                print(vels(target_linear_vel_x, target_linear_vel_y, target_linear_vel_z, target_angular_vel))
                
            elif key == 'd' :
                target_angular_vel = checkAngularLimitVelocity(target_angular_vel - ANG_VEL_STEP_SIZE)
                status = status + 1
                print(vels(target_linear_vel_x, target_linear_vel_y, target_linear_vel_z, target_angular_vel))
                
            elif key == 'h' :
                target_linear_vel_y = checkLinearLimitVelocity(target_linear_vel_y + LIN_VEL_STEP_SIZE)
                status = status + 1
                print(vels(target_linear_vel_x, target_linear_vel_y, target_linear_vel_z, target_angular_vel))
                
            elif key == 'k' :
                target_linear_vel_y = checkLinearLimitVelocity(target_linear_vel_y - LIN_VEL_STEP_SIZE)
                status = status + 1
                print(vels(target_linear_vel_x, target_linear_vel_y, target_linear_vel_z, target_angular_vel))
                
            elif key == 'u' :
                target_linear_vel_z = checkLinearLimitVelocityZ(target_linear_vel_z + LIN_VEL_STEP_SIZE_Z)
                status = status + 1
                print(vels(target_linear_vel_x, target_linear_vel_y, target_linear_vel_z, target_angular_vel))
                
            elif key == 'j' :
                target_linear_vel_z = checkLinearLimitVelocityZ(target_linear_vel_z - LIN_VEL_STEP_SIZE_Z)
                status = status + 1
                print(vels(target_linear_vel_x, target_linear_vel_y, target_linear_vel_z, target_angular_vel))
                
            elif key == ' ' or key == 's' :
                target_linear_vel_x   = 0.0
                target_linear_vel_y   = 0.0
                target_linear_vel_z   = 0.0
                target_angular_vel  = 0.0
                control_linear_vel_x  = 0.0
                control_linear_vel_y  = 0.0
                control_linear_vel_z  = 0.0
                control_angular_vel = 0.0
                print(vels(target_linear_vel_x, target_linear_vel_y, target_linear_vel_z, target_angular_vel))
                
            else:
                if (key == '\x03'):
                    break

            if status == 20 :
                print(msg)
                status = 0

            twist = Twist()

            control_linear_vel_x = makeSimpleProfile(control_linear_vel_x, target_linear_vel_x, (LIN_VEL_STEP_SIZE/2.0))
            twist.linear.x = control_linear_vel_x
            
            control_linear_vel_y = makeSimpleProfile(control_linear_vel_y, target_linear_vel_y, (LIN_VEL_STEP_SIZE/2.0))
            twist.linear.y = control_linear_vel_y
            
            control_linear_vel_z = makeSimpleProfile(control_linear_vel_z, target_linear_vel_z, (LIN_VEL_STEP_SIZE/2.0))
            twist.linear.z = control_linear_vel_z

            control_angular_vel = makeSimpleProfile(control_angular_vel, target_angular_vel, (ANG_VEL_STEP_SIZE/2.0))
            twist.angular.x = 0.0; twist.angular.y = 0.0; twist.angular.z = control_angular_vel

            pub.publish(twist)
            # rate.sleep()

    except:
        print(e)

    finally:
        twist = Twist()
        twist.linear.x = 0.0; twist.linear.y = 0.0; twist.linear.z = 0.0
        twist.angular.x = 0.0; twist.angular.y = 0.0; twist.angular.z = 0.0
        pub.publish(twist)
        # rate.sleep()

    if os.name != 'nt':
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
