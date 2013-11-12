#连接一个数据库
#如果数据库存在，连接；不存在，创建新库
# aaa.db 文件保存在 document 文件目录
document$>sqlite3 aaa.db

#创建一个新的数据库 SQL DDL 数据库声明语句
#表的第一个属性，肯定是 integer  id 主键，
#使用主键便于查找，防止重复，与另一个表关联
#create table 新建一个表
#city(cid,cname)  表名是 city ，两个属性 cid,cname
#(cid integer,cname text)  属性必须声明类型
#cid primary key  声明这个列是主键
create table city(cid integer primary key,cname text);

#列出现有的表
.table
.tables

#往表中插入数据 SQL DML (数据库操作语言)
insert into city(cid,cname) values(1,'上海');
insert into city(cid,cname) values(2,'北京');
insert into city(cid,cname) values(3,'杭州');
insert into city(cid,cname) values(4,'重庆');
insert into city(cid,cname) values(5,'武汉');
insert into city(cid,cname) values(6,'广州');
insert into city(cid,cname) values(7,'深圳');
insert into city(cid,cname) values(8,'厦门');

#查询所有数据
#指定显示的输出格式，按列输出，显示表头属性名
.mode column
.headers on
select * from city;
select cname from city;
select * from city where cid=2;
select * from city where cname = '重庆';
select * from city where cname like '上%';

#更新表中数据
update city set cname='上饶' where cid=1;

#删除表中数据
delete from city where cid=3;

#删除整个表
drop table city;

#SQLite 常用指令
#查询表名
.tables
#查询表结构
.schema
#退出表
.exit













