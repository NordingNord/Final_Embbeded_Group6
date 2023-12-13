from pathlib import Path

from rosbags.highlevel import AnyReader
import numpy as np
from PIL import Image
from datetime import datetime
from matplotlib import image
import cv2
import os
import shutil

import matplotlib.pyplot as plt

def main(args=None):
    if os.path.exists(os.path.join(os.getcwd(), 'rgb')):
        shutil.rmtree(os.path.join(os.getcwd(), 'rgb'))
        os.mkdir(os.path.join(os.getcwd(), 'rgb'))
                

    # create reader instance and open for reading
    rosbagpath = input("Write path to rosbag:")
    # rosbagpath = "/home/frank/Documents/Git/Final_Embbeded_Group6/CNN/src/getimages/images/cross"
    with AnyReader([Path(rosbagpath)]) as reader:

        connections = [x for x in reader.connections if x.topic == '/image_raw']
        print(connections)
        for connection, timestamp, rawdata in reader.messages(connections=connections):
            msg = reader.deserialize(rawdata, connection.msgtype)
            timestamp_dt = datetime.fromtimestamp(msg.header.stamp.sec + msg.header.stamp.nanosec * 1e-9)
            timestamp_str = timestamp_dt.strftime("%Y-%m-%d %H:%M:%S.%f")
            timestamp_ns = msg.header.stamp.sec * 1e9 + msg.header.stamp.nanosec
            numeric_timestamp = int(timestamp_ns / 1e-9)
            
            w, h = msg.width, msg.height
        
            color_image_data = np.reshape(msg.data, (h, w, 3)) # for rgb image
            rgb_image_name = str(numeric_timestamp)[:20] + '.png'
            image = Image.fromarray(color_image_data)
            image_path = 'imgs/'
            bag_image_path = image_path + os.path.basename(os.path.normpath(rosbagpath)) + "/"
            if not os.path.isdir(image_path):
                os.mkdir(image_path)
            if not os.path.isdir(bag_image_path):
                os.mkdir(bag_image_path)
            image.save(bag_image_path + rgb_image_name)

    print("Done!")