#test for Ubuntu

#+100%FREE /dev/ubuntu-vg/ubuntu-lv
#test for Ubuntu



#!/bin/bash
echo "extending disk to match physical"
sleep1
printf "n\np\n3\n\n\nt\n3\n8e\nw\n"|sudo fdisk /dev/sda
sudo partprobe -s
sudo partx -a /dev/sda3
sudo vgextend centos /dev/sda3
sudo lvextend -q -r -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
echo "nice disk"
