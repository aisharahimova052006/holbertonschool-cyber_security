#!/bin/bash
find $1  -type f -mtime -1  -perm /2000 -exec  chmod o+x{}  2>/dev/null
