#!/bin/sh
#Bash Script to Display System and User Details.
#Command to display date and time.
echo "Date and Time"
date
#Command to display Host Name.
echo "Host Name"
hostname
#Command to display version
echo "System Type and Version" 
lsb_release -a
#Command to display Home directory of User
echo "Home Directory"
echo $HOME
#Command to display other users logged in to system.
echo "Other Users logged in to System"
who
#Command to display group user belongs
echo "Group User Belongs"
groups webonise
#Command to display files in Home directory.
echo "Files in Home and Sub Directories"
find $HOME -type f

