FROM java:openjdk-8u72-jdk

ADD hadoop-2.7.2.tar.gz /opt
ADD core-site.xml hdfs-site.xml yarn-site.xml /opt/hadoop-2.7.2/etc/hadoop/
ADD leader.sh follower.sh /scripts/

RUN groupadd -r hdfs && useradd -r -g hdfs hdfs \
    && chown hdfs:hdfs -R /opt/hadoop-2.7.2/ \
    && chown hdfs:hdfs -R /scripts

USER hdfs

ENV HADOOP_PREFIX /opt/hadoop-2.7.2/
