FROM eclairiuss/java
MAINTAINER eclairiuss <nurdiales@e-biz.fr>

ENV CATALINA_HOME /usr/local/tomcat
RUN mkdir -p "$CATALINA_HOME"

ENV TOMCAT_MAJOR 8
ENV TOMCAT_VERSION 8.0.43

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /tmp

RUN wget -O tomcat.tar.gz http://wwwftp.ciril.fr/pub/apache/tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz && \
	tar -xzvf tomcat.tar.gz -C $CATALINA_HOME --strip-components=1 && \
	chmod +x $CATALINA_HOME/bin/* && \
	chmod -R g+r $CATALINA_HOME/conf && \
	chmod g+x $CATALINA_HOME/conf && \
	rm -rf tomcat.tar.gz

ADD tomcat-run.sh /tomcat-run.sh
RUN chmod 755 /tomcat-run.sh
ADD settings.xml $CATALINA_HOME/conf/settings.xml
ADD tomcat-users.xml $CATALINA_HOME/conf/tomcat-users.xml

EXPOSE 8080
EXPOSE 8000

ENTRYPOINT ["/tomcat-run.sh"]