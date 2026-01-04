#!/bin/bash
subfinder -d $1 -silent | awk '{ "dig +short "$1" "$0 | getline ip; if (ip != "") print $0","ip }' > $1.txt
