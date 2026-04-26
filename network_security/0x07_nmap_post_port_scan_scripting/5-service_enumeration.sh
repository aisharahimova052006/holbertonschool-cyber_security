#!/bin/bash
nmap -sV -O -sC --traceroute --script=banner,ssl-enum-ciphers,smb-enum-domains "$1" -oN service_enumeration_results.txt
