#!/bin/bash
echo -n "$1" | sha1sum | awk '{print $NF}' > 0_hash.txt
