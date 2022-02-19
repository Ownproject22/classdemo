#!/bin/bash
# This script adds username and creates userID
echo "Please, enter your First and Last name"
read name
echo "Please, enter your preferred username"
read username
sudo useradd -c "$name" $username
echo "Please, enter your secret password"
read -s password
sudo passwd $username
tail -2 /etc/passwd
