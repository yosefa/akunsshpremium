#!/bin/bash
tgl="$(chage -l $1 | grep "Account expires" | awk -F" " '{print $5}' | sed 's/,$
bln="$(chage -l $1 | grep "Account expires" | awk -F" " '{print $4}')"
thn="$(chage -l $1 | grep "Account expires" | awk -F" " '{print $6}')"
date=$(date +'%Y-%m-%d %H:%M:%S %Z %a')
read Y M D h m s Z a <<< ${date//[-: ]/ }
jam=$(date +'%X')
tambah="$a $bln $tgl $jam $Z $Y"
baru=`date '+%C%y/%m/%d' -d "$tambah+$2 days"`
usermod -e $baru $1