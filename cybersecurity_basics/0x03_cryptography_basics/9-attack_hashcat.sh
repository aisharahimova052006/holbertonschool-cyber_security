hashcat -a 1 --stdout list1.txt list2.txt | hashcat -m 0 --show  "$1" | awk -F : {print } | head -n 1 >> 9-password.txt
