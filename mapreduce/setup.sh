#!/bin/bash
MAPREDUCE=/root/mapreduce

mkdir -p /vol/persistent-hdfs/logs
for node in $SLAVES $OTHER_MASTERS; do
  ssh -t $SSH_OPTS root@$node "mkdir -p /vol/persistent-hdfs/mapreduce/logs && chown hadoop:hadoop /vol/persistent-hdfs/mapreduce/logs && chown hadoop:hadoop /vol/persistent-hdfs/mapreduce" & sleep 0.3
done
wait

chown hadoop:hadoop /vol/persistent-hdfs/mapreduce -R
/root/spark-ec2/copy-dir $MAPREDUCE/conf
