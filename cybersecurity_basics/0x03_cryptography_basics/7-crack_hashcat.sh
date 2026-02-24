#!/bin/bash
hashcat -m 0  --show "$1" | awk -F: '/:/ {print $2}' | head -n 1 >7_password.txt
