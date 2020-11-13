#!/bin/bash

echo "Updating the repos"
sudo apt-get update -y

echo "Installing Ansible"
sudo apt-get install ansible -y

echo "Installing nginx"
sudo apt-get install nginx -y

echo "Starting the SSM agent"
sudo snap start amazon-ssm-agent
