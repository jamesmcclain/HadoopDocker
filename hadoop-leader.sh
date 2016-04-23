#!/bin/sh

su hdfs -c "$HADOOP_PREFIX/bin/hdfs namenode -format cluster"
su hdfs -c "$HADOOP_PREFIX/sbin/hadoop-daemon.sh --config $HADOOP_PREFIX/etc/hadoop --script hdfs start namenode"
su hdfs -c "$HADOOP_PREFIX/sbin/yarn-daemon.sh --config $HADOOP_PREFIX/etc/hadoop start resourcemanager"
su hdfs -c "$HADOOP_PREFIX/sbin/mr-jobhistory-daemon.sh --config $HADOOP_PREFIX/etc/hadoop start historyserver"
