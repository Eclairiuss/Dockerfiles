FROM debian
MAINTAINER eclairiuss <nurdiales@e-biz.fr>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
  apt-get -yq install mysql-server && \
  rm -rf /var/lib/apt/lists/*

ADD init.sh /init.sh
RUN chmod 755 /*.sh
ENTRYPOINT ["/init.sh"]

VOLUME /var/lib/mysql
EXPOSE 3306
CMD ["mysqld_safe"]