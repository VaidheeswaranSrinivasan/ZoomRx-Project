#!/bin/bash

echo "Installing Docker"
sudo yum install docker -y

echo "start the Docker service"
sudo systemctl start docker

echo "Installing git"
sudo yum install git -y