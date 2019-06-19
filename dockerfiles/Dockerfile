FROM centos
MAINTAINER https://github.com/yanll
RUN yum provides '*/applydeltarpm'
RUN yum -y install deltarpm
RUN yum -y install readline-devel
RUN yum -y install pcre
RUN yum -y install pcre-devel
#RUN yum -y install gcc
RUN yum -y install net-tools
RUN yum -y install openssl-devel
RUN yum -y install curl
RUN yum -y install git
RUN yum -y install java
RUN yum -y install maven

EXPOSE 8080

ADD startup.sh entrypoint.sh /opt/
RUN chmod 755 /opt/startup.sh

ENTRYPOINT ["/startup.sh"]
