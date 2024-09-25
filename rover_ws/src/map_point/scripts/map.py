#!/usr/bin/env python3
import rospy
import json
import os
import tkinter as tk
from geometry_msgs.msg import PoseWithCovarianceStamped, PoseStamped, Point
from visualization_msgs.msg import Marker, MarkerArray

class RvizMarkerDisplay:
    def __init__(self):
        rospy.init_node('rviz_marker_display', anonymous=True)
        
        # 設定路徑到你的 JSON 檔案
        self.json_file = '/home/lun/rover_ws/src/map_point/json/itc_3f.json'
        
        self.marker_pub = rospy.Publisher('/visualization_marker_array', MarkerArray, queue_size=10)
        self.pose_sub = rospy.Subscriber('/initialpose', PoseWithCovarianceStamped, self.pose_callback)
        
        self.load_data()
        self.check_loaded_points()
        self.display_markers()  # 啟動時自動顯示標記
        self.display_connections()  # 顯示連線

    def load_data(self):
        try:
            with open(self.json_file, 'r') as f:
                self.data = json.load(f)
            rospy.loginfo(f"Successfully loaded data from {self.json_file}")
        except Exception as e:
            rospy.logerr(f"Failed to load JSON file: {e}")
            self.data = {"rooms": [], "connections": []}

    def check_loaded_points(self):
        num_rooms = len(self.data.get('rooms', []))
        if num_rooms > 0:
            rospy.loginfo(f"Loaded {num_rooms} points from the JSON file.")
        else:
            rospy.logwarn("No points loaded from the JSON file.")

    def display_markers(self):
        marker_array = MarkerArray()
        for i, room in enumerate(self.data['rooms']):
            # 創建箭頭或圓形標記
            marker = Marker()
            marker.header.frame_id = "map"
            marker.id = i
            marker.type = Marker.SPHERE if room['room'].startswith('c') else Marker.ARROW
            marker.action = Marker.ADD
            marker.pose.position.x = room['position']['x']
            marker.pose.position.y = room['position']['y']
            marker.pose.position.z = room['position']['z']
            
            # 如果房間名稱以 c 開頭，將方向角度設為 0
            if room['room'].startswith('c'):
                marker.pose.orientation.x = 0.0
                marker.pose.orientation.y = 0.0
                marker.pose.orientation.z = 0.0
                marker.pose.orientation.w = 1.0
            else:
                marker.pose.orientation.x = room['position']['rx']
                marker.pose.orientation.y = room['position']['ry']
                marker.pose.orientation.z = room['position']['rz']
                marker.pose.orientation.w = room['position']['rw']
            
            marker.scale.x = 0.75 if marker.type == Marker.SPHERE else 1.5
            marker.scale.y = 0.75 if marker.type == Marker.SPHERE else 0.3
            marker.scale.z = 0.75 if marker.type == Marker.SPHERE else 0.3
            marker.color.a = 1.0
            marker.color.r = 0.0
            marker.color.g = 1.0
            marker.color.b = 0.0
            marker_array.markers.append(marker)

            # 創建顯示房間名稱的文字標記
            text_marker = Marker()
            text_marker.header.frame_id = "map"
            text_marker.id = i + len(self.data['rooms'])  # 確保文字標記 ID 不重複
            text_marker.type = Marker.TEXT_VIEW_FACING
            text_marker.action = Marker.ADD
            text_marker.pose.position.x = room['position']['x']
            text_marker.pose.position.y = room['position']['y']
            text_marker.pose.position.z = room['position']['z'] + 0.5  # 讓文字顯示在標記上方
            text_marker.scale.z = 0.6  # 設定文字大小
            text_marker.color.a = 1.0
            text_marker.color.r = 1.0
            text_marker.color.g = 0.0
            text_marker.color.b = 0.0
            text_marker.text = room['room']  # 設定顯示的文字內容
            marker_array.markers.append(text_marker)
        
        self.marker_pub.publish(marker_array)
        rospy.loginfo("Markers and names published to RViz.")

    def display_connections(self):
        connection_marker_array = MarkerArray()  # 使用 MarkerArray 來發佈多個標記

        connection_marker = Marker()
        connection_marker.header.frame_id = "map"
        connection_marker.id = len(self.data['rooms']) * 2  # 確保與其他標記 ID 不重複
        connection_marker.type = Marker.LINE_LIST
        connection_marker.action = Marker.ADD
        connection_marker.scale.x = 0.1  # 線條的寬度
        connection_marker.color.a = 1.0
        connection_marker.color.r = 0.0
        connection_marker.color.g = 0.0
        connection_marker.color.b = 1.0
        
        room_dict = {room['room']: room['position'] for room in self.data['rooms']}
        
        for connection in self.data['connections']:
            room1_name, room2_name = connection

            if room1_name in room_dict and room2_name in room_dict:
                # 找到第一個房間的座標
                point1 = room_dict[room1_name]
                p1 = Point()
                p1.x = point1['x']
                p1.y = point1['y']
                p1.z = point1['z']
                connection_marker.points.append(p1)

                # 找到第二個房間的座標
                point2 = room_dict[room2_name]
                p2 = Point()
                p2.x = point2['x']
                p2.y = point2['y']
                p2.z = point2['z']
                connection_marker.points.append(p2)

        connection_marker_array.markers.append(connection_marker)
        self.marker_pub.publish(connection_marker_array)  # 發佈 MarkerArray
        rospy.loginfo("Connections published to RViz.")

    def pose_callback(self, msg):
        x = msg.pose.pose.position.x
        y = msg.pose.pose.position.y
        rz = msg.pose.pose.orientation.z
        rw = msg.pose.pose.orientation.w
        rospy.loginfo(f"2D Pose Estimate received at position: ({x}, {y}) with orientation (rz={rz}, rw={rw})")
        self.prompt_for_name(x, y, rz, rw)

    def prompt_for_name(self, x, y, rz, rw):
        root = tk.Tk()
        root.title("Enter Room Name")
        tk.Label(root, text="Enter Room Name:").pack()
        entry = tk.Entry(root)
        entry.pack()

        def on_submit():
            room_name = entry.get()
            if room_name:  # 檢查房間名稱是否為空
                self.add_room_to_json(room_name, x, y, rz, rw)
            root.destroy()

        tk.Button(root, text="Submit", command=on_submit).pack()
        root.mainloop()

    def add_room_to_json(self, room_name, x, y, rz, rw):
        # 在這裡不再新增新的點位
        rospy.loginfo("Room name is empty. No new room added.")
        # 仍然顯示現有的標記和連線
        self.display_markers()
        self.display_connections()

if __name__ == '__main__':
    try:
        display = RvizMarkerDisplay()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
