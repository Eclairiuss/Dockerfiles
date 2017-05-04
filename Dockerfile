FROM eclairiuss/java
MAINTAINER eclairiuss <nurdiales@e-biz.fr>

ENV CATALINA_HOME /usr/local/tomcat
RUN mkdir -p "$CATALINA_HOME"

ENV TOMCAT_MAJOR 8
ENV TOMCAT_VERSION 8.0.43

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /tmp

RUN groupadd tomcat && \
	useradd -s /bin/false -g tomcat -d $CATALINA_HOME tomcat && \
	wget -O tomcat.tar.gz http://wwwftp.ciril.fr/pub/apache/tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz && \
	tar -xzvf tomcat.tar.gz -C $CATALINA_HOME --strip-components=1 && \
	chmod +x $CATALINA_HOME/bin/* && \
	chown -R tomcat:tomcat $CATALINA_HOME && \
	chmod -R g+r $CATALINA_HOME/conf && \
	chmod g+x $CATALINA_HOME/conf && \
	rm -rf tomcat.tar.gz

CMD ["su","-c","${CATALINA_HOME}/bin/catalina.sh","run"]
