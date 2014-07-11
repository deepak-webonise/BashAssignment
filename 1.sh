#!/bin/sh
echo "Date and Time"
date
echo "Host Name"
hostname
echo "System Type and Version" 
lsb_release -a
echo "Home Directory"
echo $HOME
echo "Other Users logged in to System"
who
echo "Group User Belongs"
groups webonise
echo "Files in Home and Sub Directories"
find $HOME -type f

