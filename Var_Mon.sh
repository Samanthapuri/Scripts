#!/bin/bash
df -hP / | tail -n +2 | awk '{print $5}' | cut -d% -f1 | while read UTIL
do
if [ $UTIL -gt 30 ]; then #// Checking if file system utilization is above threshold.
echo "File System is aboove threshold."
fi
done
