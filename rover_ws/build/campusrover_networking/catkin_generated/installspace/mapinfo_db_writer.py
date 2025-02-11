#!/usr/bin/env python3
import rospy
from campusrover_msgs.srv import MapInfo, MapInfoResponse

import requests
import json

class MapInfoDbWriter:
    def __init__(self):
        self.getParameters()
        self.s = rospy.Service('save_map_info', MapInfo, self.handle_save_map_info)

    def getParameters(self):
        self.host = rospy.get_param('~host', default='127.0.0.1')
        self.port = rospy.get_param('~port', default='8080')
        self.json_folder = rospy.get_param('~json_folder', default='')
    
    def handle_save_map_info(self, req):
        url = 'http://34.80.89.25:8000/api/mapinfo/create_floor/'
        # url = 'http://{}:{}/api/mapinfo/create_floor/'.format('127.0.0.1', 8080)
        # url = 'http://' + str(self.host) + ':' + str(self.port) + '/api/mapinfo/create_floor/'
        with open(self.json_folder + 'create_floor.json') as json_file:
            json_temp = json.load(json_file)
        json_temp['location'] = req.location
        json_temp['floor'] = req.floor
        json_temp['tf']['x'] = req.tf.transform.translation.x
        json_temp['tf']['y'] = req.tf.transform.translation.y
        json_temp['tf']['z'] = req.tf.transform.translation.z
        json_temp['tf']['rx'] = req.tf.transform.rotation.x
        json_temp['tf']['ry'] = req.tf.transform.rotation.y
        json_temp['tf']['rz'] = req.tf.transform.rotation.z
        json_temp['tf']['rw'] = req.tf.transform.rotation.w
        for room in req.rooms:
             json_temp['rooms'].append({
                'room': room.room,
                'position': {
                    'x': room.position.position.x,
                    'y': room.position.position.y,
                    'z': room.position.position.z,
                    'rx': room.position.orientation.x,
                    'ry': room.position.orientation.y,
                    'rz': room.position.orientation.z,
                    'rw': room.position.orientation.w
                }
            })
        for c in req.connections:
            json_temp['connections'].append(c.connection)
        x = requests.post(url, json = json_temp, auth = ('rover_db_writer', 'campusrover314'))
        return MapInfoResponse(str(x.status_code), x.content[1:-1])


if __name__ == '__main__':
    rospy.init_node('mapinfo_db_writer')
    mapinfo_writer = MapInfoDbWriter()
    rospy.spin()