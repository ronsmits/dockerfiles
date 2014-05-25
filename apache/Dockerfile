FROM debian:latest
MAINTAINER ron.smits@gmail.com
RUN apt-get update
RUN apt-get upgrade -y
RUN mkdir -p /var/run/sshd
RUN mkdir -p /var/log/supervisor
RUN apt-get install -y openssh-server apache2 supervisor

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN mkdir -p /root/.ssh
ADD authorized_keys /root/.ssh/authorized_keys
RUN chmod 0600 /root/.ssh
EXPOSE 22 80
RUN sed -i.bak 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
RUN rm /etc/ssh/sshd_config.bak
CMD ["/usr/bin/supervisord"]
