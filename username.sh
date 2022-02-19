#!/bin/bash
# This script adds username and creates userID
echo -n "Please, enter your First and Last name: "
read name
echo "Thank you very much $name"
echo -n "Please, enter your preferred username: "
read username
echo "Great! $name, you have entered $username as your username"
sudo useradd -c "$name" $username
echo "Wonderful! your username was successful created"
echo -n "Please, enter your secret password: "
read -s password
sudo passwd $username
echo "Below is your /etc/passwd file. Now, you can access your account"
tail -1 /etc/passwd
