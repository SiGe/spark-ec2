#!/bin/bash

# Setup persistent-hdfs
mkdir -p /vol/persistent-hdfs/logs
mkdir -p /vol/persistent-hdfs/hadoop-logs

# Setup yarn logs, local dirs
mkdir -p /vol/persistent-hdfs/yarn-local
mkdir -p /vol/persistent-hdfs/yarn-logs

if [[ -e /vol/persistent-hdfs ]] ; then
  chmod -R 755 /vol/persistent-hdfs
fi
