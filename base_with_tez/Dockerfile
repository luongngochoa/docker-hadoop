FROM hoaln/hadoop-base:3.2.2-java8
MAINTAINER HoaLN <l.ngochoa97@gmail.com>

ENV TEZ_VERSION 0.10.1

COPY tez-$TEZ_VERSION.tar.gz /

RUN mkdir /opt/tez-$TEZ_VERSION
RUN tar -xvf /tez-$TEZ_VERSION.tar.gz -C /opt/tez-$TEZ_VERSION && rm /tez-$TEZ_VERSION.tar.gz
RUN ln -s /opt/tez-$TEZ_VERSION /opt/tez

COPY tez-site.xml /etc/hadoop

ENV TEZ_CONF=/etc/hadoop
ENV TEZ_JARS=/opt/tez
# ENV TEZ_JARS=/opt/tez/apache-tez-0.10.1-bin
ENV TEZ_CLASSPATH=${TEZ_CONF}:${TEZ_JARS}/*:${TEZ_JARS}/lib/*
ENV HADOOP_CLASSPATH=${HADOOP_CLASSPATH}:${TEZ_CLASSPATH}
