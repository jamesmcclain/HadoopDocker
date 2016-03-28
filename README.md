This repository contains the elements needed to build a Docker image which can be used to run Hadoop in a distributed fashion.
The configuration of the cluster is based on [this tutorial](https://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/ClusterSetup.html).

## Obtaining ##

The Hadoop image can be obtained in one of at least two ways:
by pulling it from Docker Hub or building it using the provided Makefile.

### Pulling ###

To pull the image from Docker Hub, type:
```shell
docker pull jamesmcclain/hadoop:0
```

### Building ###

To build the image with the provided Makefile, type:
```shell
make
```

## Running the Leader ###

To run the leader (which contains a YARN Resource Manager, a Hadoop NameNode, and a MapReduce History Server), type:
```shell
docker run -dit -p 8088:8088 -p 50070:50070 -p 19888:19888 -h leader --name leader --entrypoint /scripts/leader.sh hadoop:0
```

## Running a Follower ###

To run a follower (which contains both a YARN NodeManager and a Hadoop DataNode), type:
```shell
docker run -dit --entrypoint /scripts/follower.sh --link leader hadoop:0
```
