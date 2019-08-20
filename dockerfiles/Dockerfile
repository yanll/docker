FROM centos
MAINTAINER https://github.com/yanll
RUN yum provides '*/applydeltarpm' && \
    yum -y install yum-utils && \
    yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo && \
    yum-config-manager --add-repo http://mirrors.aliyun.com/repo/Centos-7.repo && \
    yum -y install net-tools && \
    yum -y install telnet && \
    yum -y install deltarpm && \
    yum -y install readline-devel && \
    yum -y install pcre && \
    yum -y install pcre-devel && \
    yum -y install gcc && \
    yum -y install gcc-c++ && \
    yum -y install openssl && \
    yum -y install openssl-devel && \
    yum -y install curl && \
    yum -y install git && \
    yum -y install java && \
    yum -y install maven && \
    yum -y install openresty && \
    yum -y install openresty-resty && \
    yum -y install openssh* && \
    yum -y install epel-release && \
    wget https://bintray.com/kong/kong-rpm/download_file?file_path=centos/7/kong-1.2.0.el7.noarch.rpm
    yum -y install kong-1.2.0.el7.noarch.rpm --nogpgcheck && \
    yum -y install nodejs && \
    yum -y install npm && \
    npm install -g kong-dashboard && \
    yum install -y lrzsz && \
    yum install -y lua && \
    yum clean all

EXPOSE 8080

ADD startup.sh /opt/
RUN chmod 755 /opt/startup.sh

#ENTRYPOINT ["/opt/startup.sh"]




#wget https://bintray.com/kong/kong-rpm/download_file?file_path=centos/7/kong-1.2.0.el7.noarch.rpm
