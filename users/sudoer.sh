#!/bin/bash

sudo useradd -m $USERNAME
sudo usermod -s /bin/zsh $USERNAME
sudo mkdir -p /home/$USERNAME/.ssh
sudo echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/90-cloud-init-users
sudo cat ./keys/id_rsa.pub >> /home/$USERNAME/.ssh/authorized_keys
sudo chown -R $USERNAME:$USERNAME /home/$USERNAME
