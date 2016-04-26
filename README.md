This repository contains the elements needed to build a Docker image which can be used to run Hadoop in a distributed fashion.
The configuration of the cluster is based on [this tutorial](https://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/ClusterSetup.html).

## Obtaining ##

The Hadoop image can be obtained in one of at least two ways:
by pulling it from Docker Hub or building it using the provided Makefile.

### Pulling ###

To pull the image from Docker Hub, type:

```bash
docker pull jamesmcclain/hadoop:1
```

### Building ###

To build the image with the provided Makefile, type:

```bash
make
```

## Running the Leader ###

The leader contains a YARN Resource Manager, a Hadoop NameNode, a MapReduce History Server, and everything contained by a follower.
To run the leader, type:

```bash
docker run -it --rm -p 8088:8088 -p 50070:50070 -p 19888:19888 -h leader --name leader --entrypoint /scripts/leader.sh jamesmcclain/hadoop:1
```

## Running a Follower ###

A follower contains a YARN NodeManager and a Hadoop DataNode.
To run a follower, type:

```bash
docker run -it --rm --link leader --entrypoint /scripts/follower.sh jamesmcclain/hadoop:1
```
