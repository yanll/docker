FROM centos
MAINTAINER https://github.com/yanll
RUN yum -y install readline-devel pcre pcre-devel openssl-devel gcc curl vim
RUN yum -y install git java maven

EXPOSE 8080

ADD startup.sh entrypoint.sh /opt/
RUN chmod 755 /opt/startup.sh

ENTRYPOINT ["/startup.sh"]
