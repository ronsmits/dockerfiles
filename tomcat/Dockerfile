FROM rons/java

WORKDIR /opt
RUN wget http://ftp.tudelft.nl/apache/tomcat/tomcat-7/v7.0.54/bin/apache-tomcat-7.0.54.tar.gz

RUN tar xzf apache-tomcat-7.0.54.tar.gz

RUN rm apache-tomcat-7.0.54.tar.gz
RUN ln -s apache-tomcat-7.0.54 tomcat
ADD supervisord.conf /etc/supervisor/supervisord.conf
ADD tomcat-users.xml /opt/tomcat/conf/tomcat-users.xml
EXPOSE 8080
CMD ["/usr/bin/supervisord"]