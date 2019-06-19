FROM centos
MAINTAINER https://github.com/yanll
#RUN yum provides '*/applydeltarpm' && \
#    yum -y install net-tools && \
#    yum -y install deltarpm && \
#    yum -y install readline-devel && \
#    yum -y install pcre && \
#    yum -y install pcre-devel && \
#    yum -y install gcc && \
#    yum -y install openssl-devel && \
#    yum -y install curl && \
#    yum -y install git && \
#    yum -y install java && \
#    yum -y install maven && \
#    yum  clean all

EXPOSE 8080

ADD startup.sh /opt/
RUN chmod 755 /opt/startup.sh

ENTRYPOINT ["/opt/startup.sh"]
