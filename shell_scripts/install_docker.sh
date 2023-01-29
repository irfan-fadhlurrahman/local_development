#!/usr/bin/bash
echo "Update and upgrade your terminal"
sleep 2
sudo apt update -y & sudo apt upgrade -y

echo "Install docker.io"
sleep 2
sudo apt install docker.io -y

echo "To run docker without sudo"
sleep 2
sudo groupadd docker
sudo usermod -aG docker $USER

echo "Create new directory for docker-compose"
sleep 2
mkdir ~/bin

echo "Go to bin folder"
cd ~/bin

echo "Download docker-compose from Github"
sleep 2
wget https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-linux-x86_64 -O docker-compose

echo "Make docker-compose executable"
sleep 2
chmod +x docker-compose

echo "add path to .bashrc (copy this export PATH=HOME/bin:PATH)"
sleep 6
nano ~/.bashrc

echo "apply the change"
sleep 2
source ~/.bashrc

echo "Please exit the terminal and reboot your machine"
sleep 2
sudo reboot