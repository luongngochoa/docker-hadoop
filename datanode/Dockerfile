FROM hoaln/hadoop-base-with-tez:3.2.2-java8
MAINTAINER HoaLN <l.ngochoa97@gmail.com>

HEALTHCHECK --interval=30s --timeout=10s --start-period=5m CMD curl -f http://localhost:9864/ || exit 1

ENV HDFS_CONF_dfs_datanode_data_dir=file:///hadoop/dfs/data
RUN mkdir -p /hadoop/dfs/data
VOLUME /hadoop/dfs/data

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 9864

CMD ["/run.sh"]
