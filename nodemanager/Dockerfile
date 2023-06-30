FROM hoaln/hadoop-base-with-tez:3.2.2-java8
MAINTAINER HoaLN <l.ngochoa97@gmail.com>

HEALTHCHECK --interval=30s --timeout=10s --start-period=5m CMD curl -f http://localhost:8042/ || exit 1

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 8042

CMD ["/run.sh"]
