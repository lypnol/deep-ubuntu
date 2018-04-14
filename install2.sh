#!/bin/bash

echo '----------------------------'
echo '===>  Installing cuDNN  <==='
sudo dpkg -i cuDNN/libcudnn7_7.0.5.15-1+cuda9.0_amd64.deb
sudo dpkg -i cuDNN/libcudnn7-dev_7.0.5.15-1+cuda9.0_amd64.deb
sudo dpkg -i cuDNN/libcudnn7-doc_7.0.5.15-1+cuda9.0_amd64.deb
sudo apt-get install -y libcupti-dev

echo '----------------------------'
echo '===>     tensorflow     <==='
sudo pip install keras tensorflow==1.7 tensorflow-gpu==1.7
sudo pip3 install keras tensorflow==1.7 tensorflow-gpu==1.7

echo '----------------------------'
echo '===>      aws cli       <==='
sudo pip install awscli --upgrade

echo 'done.'
