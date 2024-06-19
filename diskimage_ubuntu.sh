#test for Ubuntu

#+100%FREE /dev/ubuntu-vg/ubuntu-lv
#test for Ubuntu

#!/bin/bash
echo "extending disk to match physical"
sleep1
pvresize /dev/sda3
lvdisplay
lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
resize2fs /dev/ubuntu-vg/ubuntu-lv
echo "nice disk"
