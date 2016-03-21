#!/bin/bash
source /opt/ros/indigo/setup.bash
source ~/eos_ws/devel/setup.bash
#alias ros="source /opt/ros/indigo/setup.bash"

# set a 256 xterm
export TERM='xterm-256color'

# reverse lookup
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# alias for profiles
alias work='~/profiles/work.sh'

#alias for ros master uri
function rosrobot() {
  if [ -z "$1" ]; then
    echo "function requires an IP address"
  else
    echo "setting rosmaster to $1"
    export ROS_MASTER_URI=http://$1:11311
    export ROS_IP=`ifconfig em1 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
  fi
}
alias r12="export ROS_MASTER_URI=http://172.16.12.10:11311"
alias r15="export ROS_MASTER_URI=http://172.16.15.10:11311"
alias r20="export ROS_MASTER_URI=http://172.16.20.10:11311"
alias r25="export ROS_MASTER_URI=http://172.16.25.10:11311"
alias meung="export ROS_MASTER_URI=http://10.2.86.82:11311"
IP=`ifconfig em1 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
export ROS_IP=$IP
