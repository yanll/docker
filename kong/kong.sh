sudo yum install epel-release

wget https://bintray.com/kong/kong-rpm/download_file?file_path=centos/7/kong-1.2.0.el7.noarch.rpm
yum -y install kong-1.2.0.el7.noarch.rpm --nogpgcheck

npm install -g kong-dashboard

修改默数据库配置

kong migrations bootstrap


kong start

kong-dashboard start --basic-auth admin=admin --kong-url http://127.0.0.1:8001



docker run -p 1337:1337 --name konga pantsel/konga
7FD5BPnWm3RNvFK



#创建服务
curl -i -X POST \
--url http://localhost:8001/services/ \
--data 'name=example-service' \
--data 'url=https://www.baidu.com'

#添加路由
curl -i -X POST \
--url http://localhost:8001/services/example-service/routes \
--data 'hosts[]=baidu'

#转发
curl -i -X GET \
--url http://localhost:8000/ \
--header 'Host: baidu'