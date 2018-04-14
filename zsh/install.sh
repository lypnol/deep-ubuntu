#!/bin/bash

sudo apt-get install -y zsh
sudo usermod -s /bin/zsh root

sudo sed -i "s/DSHELL=.*/DSHELL=\/bin\/zsh/g" /etc/adduser.conf
sudo sed -i "s/SHELL=.*/SHELL=\/bin\/zsh/g" /etc/default/useradd
