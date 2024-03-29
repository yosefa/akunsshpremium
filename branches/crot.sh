#!/bin/bash
echo "------------------------------------------------------"
echo "USERNAME          EXP DATE          KETERANGAN        "
echo "------------------------------------------------------"
while read mumetndase
do
        AKUN="$(echo $mumetndase | cut -d: -f1)"
        ID="$(echo $mumetndase | grep -v nobody | cut -d: -f3)"
        exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
        kom="$(echo $mumetndase | cut -d: -f5)"
        if [[ $ID -ge 1000 ]]; then
        printf "%-17s %-17s %2s\n" "$AKUN" "$exp" "$kom"
        fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l$
echo "------------------------------------------------------"
echo "Jumlah akun: $JUMLAH user"
echo "------------------------------------------------------"
echo -e "\e[1;33;44m[ Akun SSH Premium ]\e[0m"