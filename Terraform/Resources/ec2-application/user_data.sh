#!/bin/bash

echo "Installing Docker"
sudo yum install docker -y

echo "start the Docker service"
sudo systemctl start docker