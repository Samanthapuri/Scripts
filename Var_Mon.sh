#!/bin/bash
df -hP / | tail -n +2 | awk '{print $5}' | cut -d% -f1 | while read UTIL
do
if [ $UTIL -gt 30 ]; then
echo "File System is aboove threshold."
fi
done
