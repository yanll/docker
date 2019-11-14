docker run --name postgres_db -e POSTGRES_PASSWORD=root -p 5432:5432 -d postgres:10.7
sudo docker exec -it cid /bin/bash
#本地登陆
psql -U postgres;
#创建用户
create user hbgateway_usr with password 'hbgateway_pwd';
#创建数据库并授予用户
CREATE DATABASE hbgateway_db owner hbgateway_usr;
#授权
GRANT ALL PRIVILEGES ON DATABASE hbgateway_db TO hbgateway_usr;

psql -U hbgateway_usr -d hbgateway_db;

CREATE schema hbgateway_sch;


#GRANT USAGE ON SCHEMA hbgateway_sch TO hbgateway_usr;


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
