#!/bin/bash
tgl=`date '+%C%y/%m/%d' -d "+30 days"`
usermod -e $tgl $1
if [[ $2 == 1 ]]; then
passwd -u $1
fi