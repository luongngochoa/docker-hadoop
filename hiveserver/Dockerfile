FROM hoaln/hadoop-base-with-tez:3.2.2-java8
MAINTAINER HoaLN <l.ngochoa97@gmail.com>

HEALTHCHECK --interval=30s --timeout=10s --start-period=5m CMD curl -f http://localhost:10002/ || exit 1

ENV HIVE_VER=3.1.3
ENV POSTGRESQL_VER=42.2.19

COPY apache-hive-$HIVE_VER-bin.tar.gz /apache-hive-$HIVE_VER-bin.tar.gz

RUN tar -xvf /apache-hive-$HIVE_VER-bin.tar.gz -C /opt/ && rm /apache-hive-$HIVE_VER-bin.tar.gz
RUN ln -s /opt/apache-hive-$HIVE_VER-bin /opt/hive
RUN rename 's/properties.template/properties/' /opt/hive/conf/*.properties.template

ENV HIVE_HOME=/opt/hive

RUN curl -fSL https://jdbc.postgresql.org/download/postgresql-$POSTGRESQL_VER.jar -o /opt/hive/lib/postgresql-$POSTGRESQL_VER.jar

# Remove old Guava JAR and create a symlink to the newer one from Hadoop
RUN rm /opt/hive/lib/guava-19.0.jar && \
    ln -s /opt/hadoop-3.2.2/share/hadoop/common/lib/guava-27.0-jre.jar /opt/hive/lib/guava-27.0-jre.jar

ADD hive-site.xml /opt/hive/conf
ADD hive-env.sh /opt/hive/conf

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 10000 10002 9083

CMD ["/run.sh"]
