echo 'build start'
docker build -f Dockerfile -t techforge/baseos:beta .
echo 'build success'
#docker run --name baseos -p 18080:8080 -i -t -v /usr/local/software/:/mnt/software/ techforge/baseos:beta /bin/bash
#docker run --name baseos -p 18080:8080 -i -t -v /usr/local/software/:/mnt/software/ techforge/baseos:beta /usr/sbin/init

#docker run -d -i -t <imageID> /bin/bash



yum -y install ntp
ntpdate time1.aliyun.com



#清理
docker system prune
docker system prune -a
