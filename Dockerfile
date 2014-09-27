FROM dockerfile/java:oracle-java7
MAINTAINER Harald Westphal <h.westphal@gmx.de>

RUN \
  wget -q -O - http://apache.proserve.nl/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz | tar -zxf - -C / && \
  mv /zookeeper-3.4.6 /zookeeper

ENV ZOO_LOG_DIR /data/log
ENV ZOO_LOG4J_PROP INFO,ROLLINGFILE

EXPOSE 2181 2888 3888

WORKDIR /data

VOLUME ["/data"]

CMD ["/zookeeper/bin/zkServer.sh", "start-foreground", "/data/zoo.cfg"]
