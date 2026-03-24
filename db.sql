/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm913sv
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm913sv` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm913sv`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619885951617 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-05-02 00:10:08',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-05-02 00:10:08',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-05-02 00:10:08',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-05-02 00:10:08',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-05-02 00:10:08',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-05-02 00:10:08',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619885951616,'2021-05-02 00:19:11',1619885739537,'高汉烤鱼','11','11112222111','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619885860662 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619885999702 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (51,'2021-05-02 00:10:08',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (52,'2021-05-02 00:10:08',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (53,'2021-05-02 00:10:08',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (54,'2021-05-02 00:10:08',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (55,'2021-05-02 00:10:08',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (56,'2021-05-02 00:10:08',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619885991932,'2021-05-02 00:19:51',1619885739537,NULL,'地方电饭锅地方',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619885999701,'2021-05-02 00:19:59',1619885739537,1,NULL,' 电饭锅电饭锅地方给对方广电',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm913sv/upload/1619885692636.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm913sv/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm913sv/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619885845370 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-05-02 00:10:08',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-05-02 00:10:08',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-05-02 00:10:08',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-05-02 00:10:08',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-05-02 00:10:08',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-05-02 00:10:08',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619885845369,'2021-05-02 00:17:25',25,1619885739537,'11','水电费删掉发送到水电费','');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619885927133 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-05-02 00:10:08',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (112,'2021-05-02 00:10:08',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (113,'2021-05-02 00:10:08',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (114,'2021-05-02 00:10:08',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (115,'2021-05-02 00:10:08',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (116,'2021-05-02 00:10:08',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1619885927132,'2021-05-02 00:18:47',1619885739537,'11',' 发的鬼地方鬼地方个地方','发电饭锅地方5555555555555');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619885680806 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-05-02 00:10:08','标题1','简介1','http://localhost:8080/ssm913sv/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-05-02 00:10:08','标题2','简介2','http://localhost:8080/ssm913sv/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-05-02 00:10:08','标题3','简介3','http://localhost:8080/ssm913sv/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-05-02 00:10:08','标题4','简介4','http://localhost:8080/ssm913sv/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-05-02 00:10:08','标题5','简介5','http://localhost:8080/ssm913sv/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-05-02 00:10:08','标题6','简介6','http://localhost:8080/ssm913sv/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619885680805,'2021-05-02 00:14:40','需需想地方鬼地方个电饭锅地方','发短信给对方给地方地方地方跟发短信给对方给地方地方地方跟发短信给对方给地方地方地方跟','http://localhost:8080/ssm913sv/upload/1619885672285.png','<p>发短信给对方给地方地方地方跟发短信给对方给地方地方地方跟发短信给对方给地方地方地方跟发短信给对方给地方地方地方跟</p><p><img src=\"http://localhost:8080/ssm913sv/upload/1619885679019.png\"></p><p><br></p><p><br></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619885955809 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619885955808,'2021-05-02 00:19:15','202152018039971876','shangpinxinxi',1619885739537,1619885650218,'是的发生的','http://localhost:8080/ssm913sv/upload/1619885635979.jpg',5,44,44,220,220,1,'已完成','高汉烤鱼','11112222111','11');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619885620869 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (31,'2021-05-02 00:10:08','商品分类1');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (32,'2021-05-02 00:10:08','商品分类2');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (33,'2021-05-02 00:10:08','商品分类3');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (34,'2021-05-02 00:10:08','商品分类4');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (35,'2021-05-02 00:10:08','商品分类5');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (36,'2021-05-02 00:10:08','商品分类6');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (1619885620868,'2021-05-02 00:13:40','数码');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619885650219 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (21,'2021-05-02 00:10:08','商品名称1','商品分类1','规格1','http://localhost:8080/ssm913sv/upload/shangpinxinxi_tupian1.jpg','商品介绍1','2021-05-02 00:16:46',6,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (22,'2021-05-02 00:10:08','商品名称2','商品分类2','规格2','http://localhost:8080/ssm913sv/upload/shangpinxinxi_tupian2.jpg','商品介绍2','2021-05-02 00:10:08',2,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (23,'2021-05-02 00:10:08','商品名称3','商品分类3','规格3','http://localhost:8080/ssm913sv/upload/shangpinxinxi_tupian3.jpg','商品介绍3','2021-05-02 00:10:08',3,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (24,'2021-05-02 00:10:08','商品名称4','商品分类4','规格4','http://localhost:8080/ssm913sv/upload/shangpinxinxi_tupian4.jpg','商品介绍4','2021-05-02 00:10:08',4,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (25,'2021-05-02 00:10:08','商品名称5','商品分类5','规格5','http://localhost:8080/ssm913sv/upload/shangpinxinxi_tupian5.jpg','商品介绍5','2021-05-02 00:20:43',10,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (26,'2021-05-02 00:10:08','商品名称6','商品分类6','规格6','http://localhost:8080/ssm913sv/upload/shangpinxinxi_tupian6.jpg','商品介绍6','2021-05-02 00:10:08',6,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (1619885650218,'2021-05-02 00:14:09','是的发生的','数码','水电费','http://localhost:8080/ssm913sv/upload/1619885635979.jpg','<p>发短信给对方给地方地方地方跟发短信给对方给地方地方地方跟发短信给对方给地方地方地方跟发短信给对方给地方地方地方跟发短信给对方给地方地方地方跟发短信给对方给地方地方地方跟</p><p><img src=\"http://localhost:8080/ssm913sv/upload/1619885645536.jpg\"></p><p><br></p><p><br></p><p><img src=\"http://localhost:8080/ssm913sv/upload/1619885648003.jpg\"></p><p><br></p><p><br></p>','2021-05-02 00:19:00',6,44);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619885858565 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619885842766,'2021-05-02 00:17:22',1619885739537,25,'shangpinxinxi','商品名称5','http://localhost:8080/ssm913sv/upload/shangpinxinxi_tupian5.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619885858564,'2021-05-02 00:17:38',1619885739537,1619885650218,'shangpinxinxi','是的发生的','http://localhost:8080/ssm913sv/upload/1619885635979.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','gs1ji7j34mpydkvkm0yueflsm5j72v6c','2021-05-02 00:12:48','2021-05-02 01:19:34');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619885739537,'11','yonghu','用户','l9yv3k16u1vqruqhi9l8zo3f8gkz3fbj','2021-05-02 00:15:45','2021-05-02 01:20:16');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-02 00:10:08');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619885739538 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (12,'2021-05-02 00:10:08','用户2','123456','姓名2','年龄2','男','13823888882','http://localhost:8080/ssm913sv/upload/yonghu_zhaopian2.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (13,'2021-05-02 00:10:08','用户3','123456','姓名3','年龄3','男','13823888883','http://localhost:8080/ssm913sv/upload/yonghu_zhaopian3.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (14,'2021-05-02 00:10:08','用户4','123456','姓名4','年龄4','男','13823888884','http://localhost:8080/ssm913sv/upload/yonghu_zhaopian4.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (15,'2021-05-02 00:10:08','用户5','123456','姓名5','年龄5','男','13823888885','http://localhost:8080/ssm913sv/upload/yonghu_zhaopian5.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (16,'2021-05-02 00:10:08','用户6','123456','姓名6','年龄6','男','13823888886','http://localhost:8080/ssm913sv/upload/yonghu_zhaopian6.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (1619885739537,'2021-05-02 00:15:39','11','11','阿达','11','男','11122211111','http://localhost:8080/ssm913sv/upload/1619885867877.jpg',4780);

/*Table structure for table `yonghupingjia` */

DROP TABLE IF EXISTS `yonghupingjia`;

CREATE TABLE `yonghupingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pingjiabianhao` varchar(200) DEFAULT NULL COMMENT '评价编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinzhiliang` varchar(200) DEFAULT NULL COMMENT '商品质量',
  `fuwutaidu` varchar(200) DEFAULT NULL COMMENT '服务态度',
  `manyidu` varchar(200) DEFAULT NULL COMMENT '满意度',
  `pingyu` longtext COMMENT '评语',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pingjiabianhao` (`pingjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619885914948 DEFAULT CHARSET=utf8 COMMENT='用户评价';

/*Data for the table `yonghupingjia` */

insert  into `yonghupingjia`(`id`,`addtime`,`pingjiabianhao`,`shangpinmingcheng`,`shangpinzhiliang`,`fuwutaidu`,`manyidu`,`pingyu`,`pingjiashijian`,`zhanghao`,`xingming`,`zhaopian`,`userid`) values (41,'2021-05-02 00:10:08','评价编号1','商品名称1','★','★','满意','评语1','2021-05-02 00:10:08','账号1','姓名1','http://localhost:8080/ssm913sv/upload/yonghupingjia_zhaopian1.jpg',1);
insert  into `yonghupingjia`(`id`,`addtime`,`pingjiabianhao`,`shangpinmingcheng`,`shangpinzhiliang`,`fuwutaidu`,`manyidu`,`pingyu`,`pingjiashijian`,`zhanghao`,`xingming`,`zhaopian`,`userid`) values (42,'2021-05-02 00:10:08','评价编号2','商品名称2','★','★','满意','评语2','2021-05-02 00:10:08','账号2','姓名2','http://localhost:8080/ssm913sv/upload/yonghupingjia_zhaopian2.jpg',2);
insert  into `yonghupingjia`(`id`,`addtime`,`pingjiabianhao`,`shangpinmingcheng`,`shangpinzhiliang`,`fuwutaidu`,`manyidu`,`pingyu`,`pingjiashijian`,`zhanghao`,`xingming`,`zhaopian`,`userid`) values (43,'2021-05-02 00:10:08','评价编号3','商品名称3','★','★','满意','评语3','2021-05-02 00:10:08','账号3','姓名3','http://localhost:8080/ssm913sv/upload/yonghupingjia_zhaopian3.jpg',3);
insert  into `yonghupingjia`(`id`,`addtime`,`pingjiabianhao`,`shangpinmingcheng`,`shangpinzhiliang`,`fuwutaidu`,`manyidu`,`pingyu`,`pingjiashijian`,`zhanghao`,`xingming`,`zhaopian`,`userid`) values (44,'2021-05-02 00:10:08','评价编号4','商品名称4','★','★','满意','评语4','2021-05-02 00:10:08','账号4','姓名4','http://localhost:8080/ssm913sv/upload/yonghupingjia_zhaopian4.jpg',4);
insert  into `yonghupingjia`(`id`,`addtime`,`pingjiabianhao`,`shangpinmingcheng`,`shangpinzhiliang`,`fuwutaidu`,`manyidu`,`pingyu`,`pingjiashijian`,`zhanghao`,`xingming`,`zhaopian`,`userid`) values (45,'2021-05-02 00:10:08','评价编号5','商品名称5','★','★','满意','评语5','2021-05-02 00:10:08','账号5','姓名5','http://localhost:8080/ssm913sv/upload/yonghupingjia_zhaopian5.jpg',5);
insert  into `yonghupingjia`(`id`,`addtime`,`pingjiabianhao`,`shangpinmingcheng`,`shangpinzhiliang`,`fuwutaidu`,`manyidu`,`pingyu`,`pingjiashijian`,`zhanghao`,`xingming`,`zhaopian`,`userid`) values (46,'2021-05-02 00:10:08','评价编号6','商品名称6','★','★','满意','评语6','2021-05-02 00:10:08','账号6','姓名6','http://localhost:8080/ssm913sv/upload/yonghupingjia_zhaopian6.jpg',6);
insert  into `yonghupingjia`(`id`,`addtime`,`pingjiabianhao`,`shangpinmingcheng`,`shangpinzhiliang`,`fuwutaidu`,`manyidu`,`pingyu`,`pingjiashijian`,`zhanghao`,`xingming`,`zhaopian`,`userid`) values (1619885914947,'2021-05-02 00:18:34','1619885809920','地方水电费','★★★★★','★★★★★','不满意','地方是的发生的发送到发地方是的发生的发送到发送到 ','2021-05-02 00:16:49','11','阿达','http://localhost:8080/ssm913sv/upload/1619885867877.jpg',1619885739537);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
