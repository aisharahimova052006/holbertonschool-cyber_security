#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=RAW-SHA256 "$1" | john --show --format=RAW-SHA256 "$1" | awk -F: '{print $2}' | head -n 1 > 6-password.txt
