____________<HAIBOTLAB> HEXA-HAIBOT GAZEBO SIMULATION____________

<Son_Nguyen: son94227@gmail.com> 

---------------------------------------------------------------
List of sensors intergrated on Hexapod Robot: 
---------------------------------------------------------------
  + IMU: topic /imu;
  + Velodyne VLP-16: topic /velodyne_points;
  + Realsense D-435: represents color, depth, infrared image topics;
  
---------------------------------------------------------------
<1> Initialize Hexapod in Gazebo Environment: 
---------------------------------------------------------------
	+ Catkin_make workspace
	+ $ roslaunch hexa_haibot hexahaibot_gazebo.launch
  + To control hexapod, hit this commands: 
    - $ cd src/hexa_haibot/scripts/
    - $ python3 hexahaibot_teleop_key.py
  
_____End_____
