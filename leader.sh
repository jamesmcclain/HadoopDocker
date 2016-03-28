#!/bin/sh

$HADOOP_PREFIX/bin/hdfs namenode -format cluster
$HADOOP_PREFIX/sbin/hadoop-daemon.sh --config $HADOOP_PREFIX/etc/hadoop --script hdfs start namenode
$HADOOP_PREFIX/sbin/yarn-daemon.sh --config $HADOOP_PREFIX/etc/hadoop start resourcemanager
$HADOOP_PREFIX/sbin/mr-jobhistory-daemon.sh --config $HADOOP_PREFIX/etc/hadoop start historyserver
bash
