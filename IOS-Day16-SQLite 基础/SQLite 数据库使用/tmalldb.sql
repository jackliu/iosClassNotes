-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 11 月 12 日 08:15
-- 服务器版本: 5.5.31
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- 数据库: `tmalldb`
--
CREATE DATABASE IF NOT EXISTS `tmalldb` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
-- 切换到 要操作的数据库中
USE `tmalldb`;

-- --------------------------------------------------------

--
-- 表的结构 `category` DDL
-- PRIMARY KEY (`id`) 设置  id 列为当前表的主键列
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL,
  `name` varchar(200)  NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- 转存表中的数据 `category` DML
--

INSERT INTO category (id, name) VALUES
(1, '手机');
INSERT INTO category (id, name) VALUES
(2, '笔记本电脑');


-- 查出所有的手机类别
select id,name from category;
select name  from category;
select * from category;





-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `brand` varchar(200)  NOT NULL,
  `size` varchar(300)  NOT NULL,
  `os` varchar(200)  NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ;


INSERT INTO product(id, brand, size, os, category_id) VALUES (1,'苹果','640*1136','iOS',1);
INSERT INTO product(id, brand, size, os, category_id) VALUES (2,'三星','1240*1136','Android',1);

--查询数据
select * from product;

select brand,os from product;

Select * from student where SNAME=‘李明’

-- 模糊查询  % 通配符
select * from student where sname like '李%' and age>20;
select * from student where sname like '李%',age>20;

-- 使用别名,只针对当前 SQL 查询结果显示的表有效
-- 对列、对表都可以使用别名
select brand as '品牌' ,os as '系统' from product;


-- 多表关联查询
-- 查询 类别名(category)、品牌名、系统名(product)
select name,brand,os from category,product;

select p.id,c.name,p.brand,p.os from category as c,product as p where c.id=p.category_id;

-- order by 列名 asc|desc 对查询结果进行排序
select p.id,c.name,p.brand,p.os from category as c,product as p where c.id=p.category_id   order by p.id desc;



--修改数据
update product set brand='三星Note3',size='1920*1080' where id=2;

delete from product where id=2;



