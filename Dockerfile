from offbyone/base:1.0.0

MAINTAINER Craig Kimerer <craig@offxone.com>

RUN apt-get -y install supervisor

RUN mkdir -p /var/log/supervisor
RUN mkdir -p /etc/supervisor/conf.d/

ADD supervisor.conf /etc/

CMD ["supervisord", "-c", "/etc/supervisor.conf"]