#!/bin/bash
for i in 1 2
do
cd /tmp
su -c "touch file${i}"
done
