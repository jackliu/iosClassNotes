drop database IF EXISTS nailalldb;

create database nailalldb;

use nailalldb;

DROP TABLE IF EXISTS usertype;
DROP TABLE IF EXISTS userinfo;
DROP TABLE IF EXISTS year;
DROP TABLE IF EXISTS magazine;
DROP TABLE IF EXISTS periodical;
DROP TABLE IF EXISTS topic;
DROP TABLE IF EXISTS comment;


#用户类别表
CREATE TABLE usertype (
       id INT NOT NULL AUTO_INCREMENT
     , utype CHAR(30)
     , PRIMARY KEY (id)
);

#账户表
CREATE TABLE userinfo (
       id INT NOT NULL AUTO_INCREMENT
     , loginname VARCHAR(50)
     , loginpwd VARCHAR(50)
     , typeid INT
     , logintime DATETIME
     , logouttime DATETIME
     , realname VARCHAR(20)
     , PRIMARY KEY (id)
);

#杂志年份
CREATE TABLE year (
       id INT NOT NULL AUTO_INCREMENT
     , yearname CHAR(10)
     , statu INT
     , PRIMARY KEY (id)
);

#杂志总表
#column1 列作为杂志名称
CREATE TABLE magazine (
       id INT NOT NULL AUTO_INCREMENT
     , yearID INT
     , month CHAR(10)
     , periodicalnum INT
     , wholeperiodicanum CHAR(10)
     , title VARCHAR(50)
     , synopsis VARCHAR(800)
     , frontcover VARCHAR(200)
     , catalogcover VARCHAR(200)
     , ppath VARCHAR(500)
     , column1 VARCHAR(800)
     , column2 VARCHAR(500)
     , column3 VARCHAR(500)
     , column4 INT
     , PRIMARY KEY (id)
);

#月刊表
CREATE TABLE periodical (
       id INT NOT NULL AUTO_INCREMENT
     , coverpageName VARCHAR(100)
     , coverpageThunmbname VARCHAR(200)
     , coverPath VARCHAR(500)
     , catalogPagename VARCHAR(100)
     , catalogThumbname VARCHAR(200)
     , cataPath VARCHAR(500)
     , magazineID INT
     , column1 VARCHAR(500)
     , column2 VARCHAR(500)
     , column3 VARCHAR(500)
     , column4 INT
     , PRIMARY KEY (id)
);

#月刊主题表
CREATE TABLE topic (
       id INT NOT NULL AUTO_INCREMENT
     , topicName VARCHAR(100)
     , topicThumbname VARCHAR(500)
     , topicPath VARCHAR(800)
     , intro VARCHAR(800)
     , periodicalID INT
     , column1 VARCHAR(500)
     , column2 VARCHAR(500)
     , column3 VARCHAR(500)
     , column4 INT
     , PRIMARY KEY (id)
);

#月刊中每个主题图片的评论内容表
CREATE TABLE comment (
       id INT NOT NULL AUTO_INCREMENT
     , comment VARCHAR(990)
     , time CHAR(20)
     , statu INT
     , topicID INT
     , periodicalID INT
     , column1 VARCHAR(500)
     , column2 VARCHAR(500)
     , column3 VARCHAR(500)
     , column4 INT
     , PRIMARY KEY (id)
);


#用户分类
insert into usertype(utype) values('用户');
insert into usertype(utype) values('管理员');
#用户
insert into userinfo(loginname,loginpwd,realname,typeid,logintime,logouttime) values('aaa','aaa','王新刚',1,null,null);
insert into userinfo(loginname,loginpwd,realname,typeid,logintime,logouttime) values('admin','admin','刘立立',2,null,null);




