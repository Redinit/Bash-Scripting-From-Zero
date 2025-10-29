#!/bin/bash 

#===========================================================================================================================================
# Script Name : echo_example.sh
# Discription : Combines echo Basics,Escape Sequences, and Colors in One Script
#===========================================================================================================================================

# A Simple User Info Display Script

# print header with color 
echo -e "\033[1;34m========== USER INFORMATION ==========\033[0m"

# ask for user input
echo -n -e "Enter Your Name: "
read name

echo -n -e "Enter Your Role: "
read role

# print formated user info with tab spacing and color 
echo -e "\n\033[1;33mCollected Information :\033[0m"
echo -e "Name:\t\033[32m${name}\033[0m"
echo -e "Role:\t\033[36m${role}\033[0m"

# display status messages with colors
echo -e "\n\033[1;32m[+] Data Displayed Successfully\033[0m"
