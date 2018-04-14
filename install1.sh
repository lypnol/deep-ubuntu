#!/bin/bash

source include/common.sh

source zsh/install.sh
source zsh/theme.sh

HOSTNAME='deep'
USERNAME=''

echo '---------------------------'
echo '===>  Chaning hostname <==='
change_hostname $HOSTNAME

echo '---------------------------'
echo '===>    Adding User    <==='
source users/sudoer.sh

echo '---------------------------'
echo '===> Installing python <==='

sudo apt-get install -y python python-pip
sudo apt-get install -y python3 python3-pip

echo '----------------------------'
echo '===> Installing headers <==='
sudo apt-get install -y linux-headers-$(uname -r)

echo '---------------------------'
echo '===>  Installing CUDA  <==='
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo apt-get update
sudo apt-get install -y cuda-9.0

echo 'done.'
echo 'REBOOTING NOW'
reboot
