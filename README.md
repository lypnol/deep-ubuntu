# Deep Ubuntu

Simple script to install deep learning requirements on Ubuntu 16.04 (or higher) with nvidia GPU support.  

## What does it include

Python 2 & 3 along with tensorflow (1.7), keras, CUDA 9.0 and cuDNN 7.0.5.

## How to use

You should download the cuDNN first from [https://developer.nvidia.com/rdp/cudnn-download](https://developer.nvidia.com/rdp/cudnn-download).  
Put the downloaded files inside cuDNN folder:  
 * `cuDNN/libcudnn7_7.0.5.15-1+cuda9.0_amd64.deb` cuDNN v7.0.5 Runtime Library for Ubuntu16.04 (Deb)
 * `cuDNN/libcudnn7-dev_7.0.5.15-1+cuda9.0_amd64.deb` cuDNN v7.0.5 Developer Library for Ubuntu16.04 (Deb)
 * `cuDNN/libcudnn7-doc_7.0.5.15-1+cuda9.0_amd64.deb` cuDNN v7.0.5 Code Samples and User Guide for Ubuntu16.04 (Deb)

Put your **public SSH Key** in `keys/id_rsa.pub` file.

Change `USERNAME` variable in `ìnstall1.sh` to whatever you'd like to connect over ssh as.

Launch `install1.sh` with bash and wait for your machine to rebbot then launch `install2.sh`.

**You must launch the scripts as root user**

