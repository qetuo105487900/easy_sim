#!/usr/bin/env python3
import rospy
import tf2_ros
import tf2_geometry_msgs
from geometry_msgs.msg import PoseStamped
from campusrover_msgs.msg import ButtonPoses

def button_transform_callback(detections):
    target_button_pose = PoseStamped()
    target_button_pose.header.frame_id = detections.header.frame_id
    target_button_pose.header.stamp = detections.header.stamp
    
    # Filter the button with label "("
    found_button = False
    for button in detections.button_poses:
        if button.label == "3":
            target_button_pose.pose = button.pose
            found_button = True
            break

    if not found_button:
        rospy.loginfo("Button with label '3' not found.")
        return

    # Initialize tf2 buffer and listener
    tf_buffer = tf2_ros.Buffer()
    listener = tf2_ros.TransformListener(tf_buffer)

    try:
        # Transform PoseStamped from original frame to rs_d435i_color_frame
        transform_camera = tf_buffer.lookup_transform("rs_d435i_color_frame", target_button_pose.header.frame_id, rospy.Time(0), rospy.Duration(1.0))
        transformed_pose_camera = tf2_geometry_msgs.do_transform_pose(target_button_pose, transform_camera)

        # Publish the transformed pose in rs_d435i_color_frame
        detected_pose_pub.publish(transformed_pose_camera)

        # Transform PoseStamped from rs_d435i_color_frame to map frame
        transform_map = tf_buffer.lookup_transform("map", "rs_d435i_color_frame", rospy.Time(0), rospy.Duration(1.0))
        transformed_pose_map = tf2_geometry_msgs.do_transform_pose(transformed_pose_camera, transform_map)

        # Publish the transformed pose in map frame
        transformed_pose_pub.publish(transformed_pose_map)

        # Calculate the distance from the origin of the map frame to the target button
        distance = (transformed_pose_map.pose.position.x ** 2 + 
                    transformed_pose_map.pose.position.y ** 2 + 
                    transformed_pose_map.pose.position.z ** 2) ** 0.5

        rospy.loginfo("Distance to target button in map frame: %.2f meters", distance)

    except tf2_ros.LookupException as e:
        rospy.logerr("Transform lookup failed: %s", str(e))
    except tf2_ros.ExtrapolationException as e:
        rospy.logerr("Transform extrapolation failed: %s", str(e))

if __name__ == '__main__':
    rospy.init_node('button_transform_node')

    # Publisher for the PoseStamped in the original camera frame
    detected_pose_pub = rospy.Publisher('/button_pose_in_camera_frame', PoseStamped, queue_size=10)

    # Publisher for the transformed PoseStamped in the map frame
    transformed_pose_pub = rospy.Publisher('/button_pose_in_map', PoseStamped, queue_size=10)

    # Subscriber for the recognized_button_poses topic
    rospy.Subscriber('/recognized_button_poses', ButtonPoses, button_transform_callback)

    rospy.spin()
