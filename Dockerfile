FROM openjdk:11-jdk
MAINTAINER James McClain <james.mcclain@gmail.com>

ADD archives/hadoop-2.7.6.tar.gz /opt
ADD core-site.xml hdfs-site.xml yarn-site.xml /opt/hadoop-2.7.6/etc/hadoop/
ADD hadoop-leader.sh hadoop-follower.sh leader.sh follower.sh /scripts/

RUN groupadd -r hdfs && useradd -r -g hdfs hdfs \
    && chown hdfs:hdfs -R /opt/hadoop-2.7.6/ \
    && chown hdfs:hdfs -R /scripts

EXPOSE 8088 19888 50070

ENV HADOOP_PREFIX=/opt/hadoop-2.7.6/
ENV PATH=${HADOOP_PREFIX}/bin:${PATH}

CMD ["/scripts/leader.sh"]
