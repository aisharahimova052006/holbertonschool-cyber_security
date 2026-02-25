#!/bin/bash
sudo useradd -m "$1" 
echo "$1:$2" | chpasswd
