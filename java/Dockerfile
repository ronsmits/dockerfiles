# Pull base image.
FROM rons/base

MAINTAINER ron.smits@gmail.com

# Install Java.
RUN /bin/echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN /bin/echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN /bin/echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
RUN /bin/echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
RUN apt-get update
RUN apt-get install -y oracle-java8-installer

RUN apt-get install wget tar gzip

CMD ["/usr/bin/supervisord"]