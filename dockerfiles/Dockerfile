FROM centos
MAINTAINER https://github.com/yanll
RUN yum -y install readline-devel pcre pcre-devel openssl-devel gcc curl vim
RUN yum -y install git java maven





EXPOSE 8080
EXPOSE 8088

ADD operateFile.py gracefulstop.sh replaceConfigs.py startup.sh entrypoint.sh /
RUN chmod 755 /gracefulstop.sh /replaceConfigs.py /operateFile.py /startup.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
