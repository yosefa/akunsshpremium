#!/bin/bash
tgl=`date '+%C%y/%m/%d' -d "+30 days"`
useradd -c "$1" -e $tgl -d /home/$2 -m -g akun -s /bin/false $2
echo "$2:$3" | chpasswd