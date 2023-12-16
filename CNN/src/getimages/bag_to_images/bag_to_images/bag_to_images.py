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
    rosbagpath = input("Write path to rosbag(s):")
    single = None
    while(single != "s" and single != "m"):
        single = input("Is this a single rosbag or multiple rosbags? (s/m)")
        if single == "s":
            part_here = input("Where should the bag name be shortened? (press enter to ignore)")
            extract_images(rosbagpath, part_here)
        elif single =="m":
            part_here = input("Where should the bag names be shortened? (press enter to ignore)")
            for subdir, dirs, files in os.walk(rosbagpath):
                for index, dir in enumerate(dirs):
                    single_bag_path = os.path.join(subdir, dir)
                    print(index + 1, "/", len(dirs), dir)
                    extract_images(single_bag_path, part_here)
        else:
            print("Wrong input try again!")
    # rosbagpath = "/home/frank/Documents/Git/Final_Embbeded_Group6/CNN/src/getimages/images/cross"
    print("Done!")

def extract_images(path_to_rosbag, partor = ""):
    with AnyReader([Path(path_to_rosbag)]) as reader:

        connections = [x for x in reader.connections if x.topic == '/image_raw']
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
            if partor == "":
                bag_image_path = image_path + os.path.basename(os.path.normpath(path_to_rosbag)) + "/"
            else:   
                bag_image_path = image_path + os.path.basename(os.path.normpath(path_to_rosbag)).partition(partor)[0] + "/"
            if not os.path.isdir(image_path):
                os.mkdir(image_path)
            if not os.path.isdir(bag_image_path):
                os.mkdir(bag_image_path)
            image.save(bag_image_path + rgb_image_name)
