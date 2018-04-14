#!/bin/bash

echo 'basics'
sudo apt-get update 
sudo apt-get upgrade -y
sudo apt-get install -y git htop zip cmake
sudo apt-get install -y unzip rsync build-essential tcl

echo 'sshd'
sudo echo '' > /root/.ssh/authorized_keys || true
sudo sed -i "s/PermitRootLogin yes/PermitRootLogin no/g" /etc/ssh/sshd_config

function change_hostname {
    NAME="$1"
    sudo sed -i "s/127.0.0.1\tlocalhost/127.0.0.1\tlocalhost\t$NAME/g" /etc/hosts
    sudo hostname $NAME
}
