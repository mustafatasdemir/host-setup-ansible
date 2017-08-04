#!/bin/bash

echo "Installing python-pip"
sudo apt-get -y install python-pip >> host.log 2>&1
echo "Installing ansible"
pip install --upgrade ansible >> host.log 2>&1

echo "Running setup"
ansible-playbook setup.yml

echo "Cleaning up logs"
rm -f host.log
echo "Installation complete"
