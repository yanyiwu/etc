#!/bin/bash

day=$(date -d last-day +%Y%m%d)

dir=/opt/logs/RedisTagServer

cp $dir/run.log $dir/run.log.$day

cat /dev/null > $dir/run.log

find $dir -type f -mtime +7 -exec rm -f {} \;
