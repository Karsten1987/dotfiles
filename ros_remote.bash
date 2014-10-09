#!/bin/bash

REMOTE_IP=$1
if [ -z "$REMOTE_IP" ];
then
   echo remote ip not set
   echo usage: source ros_remote.bash remote_ip
   exit
fi

echo setting up remote ros for $REMOTE_IP

LOCAL_IP=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'`

export ROS_MASTER_URI=http://$REMOTE_IP:11311
export ROS_IP=$LOCAL_IP
