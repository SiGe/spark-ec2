#!/bin/bash

# Setup persistent-hdfs
mkdir -p /mnt/persistent-hdfs/logs
mkdir -p /mnt/hadoop-logs

# Setup yarn logs, local dirs
mkdir -p /mnt/yarn-local
mkdir -p /mnt/yarn-logs

if [[ -e /vol/persistent-hdfs ]] ; then
  chmod -R 755 /vol/persistent-hdfs
fi
