#!/usr/bin/bash
echo "go to bin folder to store downloaded file"
sleep 2
mkdir ~/bin
cd ~/bin

echo "download miniconda for linux"
sleep 2
wget https://repo.anaconda.com/miniconda/Miniconda3-py39_22.11.1-1-Linux-x86_64.sh

echo "install miniconda"
sleep 2
bash Miniconda3-py39_22.11.1-1-Linux-x86_64.sh -y
