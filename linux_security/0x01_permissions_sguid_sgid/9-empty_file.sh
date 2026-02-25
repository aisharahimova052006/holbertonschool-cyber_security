#!/bin/bash
find -type f -empty "$1"  -exec chmod +x 777 {} +
