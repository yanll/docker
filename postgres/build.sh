docker run --name postgres_db -e POSTGRES_PASSWORD=root -p 5432:5432 -d postgres
sudo docker exec -it cid /bin/bash
#本地登陆
psql -U postgres -W postgres
#创建用户
create user impgusr with password 'impgpwd';
#创建数据库并授予用户
CREATE DATABASE impgdb owner impgusr;
#授权
GRANT ALL PRIVILEGES ON DATABASE impgdb TO impgusr;
#GRANT ALL PRIVILEGES ON TABLE 表名  TO 用户名;




SELECT * FROM pg_database;
SELECT usename FROM pg_user;


su - postgres

select version();

adduser kong;



admin_listen = 0.0.0.0:8001, 0.0.0.0:8444 ssl
database = postgres
pg_host = 127.0.0.1
pg_port = 5432
pg_timeout = 5000
pg_user = impgusr
pg_password = impgpwd
pg_database = impgdb
pg_schema = impgschm
