#!/bin/bash
echo "please enter the username:"

read -s USERNAME # the username is the variable

echo "please enter the password:"

read -s PASSWORD # the password is the variable 

# -s flag will not display when entering the input values 

echo "username is: $USERNAME password is: $PASSWORD"