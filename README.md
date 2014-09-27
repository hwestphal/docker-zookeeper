## Zookeeper Dockerfile


This repository contains **Dockerfile** of [Zookeeper](http://zookeeper.apache.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/hwestphal/zookeeper/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [dockerfile/java:oracle-java7](http://dockerfile.github.io/#/java)


### Usage

Create a Zookeeper data directory on your host and put there a [`zoo.cfg`](http://zookeeper.apache.org/doc/r3.4.6/zookeeperAdmin.html#sc_configuration) file, then

    docker run -d -p 2181:2181 -p 2888:2888 -p 3888:3888 -v <persistent-data-dir>:/data hwestphal/zookeeper
