#!/bin/sh

su hdfs -c "$HADOOP_PREFIX/sbin/hadoop-daemon.sh --config $HADOOP_PREFIX/etc/hadoop --script hdfs start datanode"
su hdfs -c "$HADOOP_PREFIX/sbin/yarn-daemon.sh --config $HADOOP_PREFIX/etc/hadoop start nodemanager"
