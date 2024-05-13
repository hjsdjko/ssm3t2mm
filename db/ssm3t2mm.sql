/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm3t2mm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm3t2mm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm3t2mm`;

/*Table structure for table `bokewenzhang` */

DROP TABLE IF EXISTS `bokewenzhang`;

CREATE TABLE `bokewenzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) NOT NULL COMMENT '文章标题',
  `wenzhangfenlei` varchar(200) NOT NULL COMMENT '文章分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `wenzhangneirong` longtext COMMENT '文章内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `bozhuzhanghao` varchar(200) DEFAULT NULL COMMENT '博主账号',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618653481386 DEFAULT CHARSET=utf8 COMMENT='博客文章';

/*Data for the table `bokewenzhang` */

insert  into `bokewenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangfenlei`,`tupian`,`wenzhangneirong`,`faburiqi`,`bozhuzhanghao`,`nicheng`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (41,'2021-04-17 17:50:55','文章标题1','文章分类1','http://localhost:8080/ssm3t2mm/upload/bokewenzhang_tupian1.jpg','文章内容1','2021-04-17','博主账号1','昵称1',1,1,'2021-04-17 17:50:55',1),(42,'2021-04-17 17:50:55','文章标题2','文章分类2','http://localhost:8080/ssm3t2mm/upload/bokewenzhang_tupian2.jpg','文章内容2','2021-04-17','博主账号2','昵称2',2,2,'2021-04-17 17:50:55',2),(43,'2021-04-17 17:50:55','文章标题3','文章分类3','http://localhost:8080/ssm3t2mm/upload/bokewenzhang_tupian3.jpg','文章内容3','2021-04-17','博主账号3','昵称3',3,3,'2021-04-17 17:50:55',3),(44,'2021-04-17 17:50:55','文章标题4','文章分类4','http://localhost:8080/ssm3t2mm/upload/bokewenzhang_tupian4.jpg','文章内容4','2021-04-17','博主账号4','昵称4',4,4,'2021-04-17 17:50:55',4),(45,'2021-04-17 17:50:55','文章标题5','文章分类5','http://localhost:8080/ssm3t2mm/upload/bokewenzhang_tupian5.jpg','文章内容5','2021-04-17','博主账号5','昵称5',5,5,'2021-04-17 17:50:55',5),(46,'2021-04-17 17:50:55','文章标题6','文章分类6','http://localhost:8080/ssm3t2mm/upload/bokewenzhang_tupian6.jpg','文章内容6','2021-04-17','博主账号6','昵称6',6,6,'2021-04-17 17:50:55',6),(1618653481385,'2021-04-17 17:58:00','1','文章分类1','http://localhost:8080/ssm3t2mm/upload/1618653479780.jpg','<p>111</p>','2021-04-17','博主1','昵称1',0,0,'2021-04-17 17:58:41',4);

/*Table structure for table `bozhu` */

DROP TABLE IF EXISTS `bozhu`;

CREATE TABLE `bozhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bozhuzhanghao` varchar(200) NOT NULL COMMENT '博主账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `bozhuxingming` varchar(200) NOT NULL COMMENT '博主姓名',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bozhuzhanghao` (`bozhuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='博主';

/*Data for the table `bozhu` */

insert  into `bozhu`(`id`,`addtime`,`bozhuzhanghao`,`mima`,`bozhuxingming`,`nicheng`,`touxiang`,`xingbie`,`nianling`,`shouji`,`youxiang`) values (21,'2021-04-17 17:50:55','博主1','123456','博主姓名1','昵称1','http://localhost:8080/ssm3t2mm/upload/bozhu_touxiang1.jpg','男',1,'13823888881','773890001@qq.com'),(22,'2021-04-17 17:50:55','博主2','123456','博主姓名2','昵称2','http://localhost:8080/ssm3t2mm/upload/bozhu_touxiang2.jpg','男',2,'13823888882','773890002@qq.com'),(23,'2021-04-17 17:50:55','博主3','123456','博主姓名3','昵称3','http://localhost:8080/ssm3t2mm/upload/bozhu_touxiang3.jpg','男',3,'13823888883','773890003@qq.com'),(24,'2021-04-17 17:50:55','博主4','123456','博主姓名4','昵称4','http://localhost:8080/ssm3t2mm/upload/bozhu_touxiang4.jpg','男',4,'13823888884','773890004@qq.com'),(25,'2021-04-17 17:50:55','博主5','123456','博主姓名5','昵称5','http://localhost:8080/ssm3t2mm/upload/bozhu_touxiang5.jpg','男',5,'13823888885','773890005@qq.com'),(26,'2021-04-17 17:50:55','博主6','123456','博主姓名6','昵称6','http://localhost:8080/ssm3t2mm/upload/bozhu_touxiang6.jpg','男',6,'13823888886','773890006@qq.com');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm3t2mm/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm3t2mm/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm3t2mm/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussbokewenzhang` */

DROP TABLE IF EXISTS `discussbokewenzhang`;

CREATE TABLE `discussbokewenzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618653518001 DEFAULT CHARSET=utf8 COMMENT='博客文章评论表';

/*Data for the table `discussbokewenzhang` */

insert  into `discussbokewenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-17 17:50:55',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-17 17:50:55',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-17 17:50:55',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-17 17:50:55',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-17 17:50:55',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-17 17:50:55',6,6,'用户名6','评论内容6','回复内容6'),(1618653518000,'2021-04-17 17:58:37',1618653481385,21,'博主1','SFDRYGTRY',NULL);

/*Table structure for table `discussredianxinwen` */

DROP TABLE IF EXISTS `discussredianxinwen`;

CREATE TABLE `discussredianxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='热点新闻评论表';

/*Data for the table `discussredianxinwen` */

insert  into `discussredianxinwen`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-17 17:50:55',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-17 17:50:55',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-17 17:50:55',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-17 17:50:55',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-17 17:50:55',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-17 17:50:55',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussshipinxinxi` */

DROP TABLE IF EXISTS `discussshipinxinxi`;

CREATE TABLE `discussshipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='视频信息评论表';

/*Data for the table `discussshipinxinxi` */

insert  into `discussshipinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-17 17:50:55',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-17 17:50:55',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-17 17:50:55',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-17 17:50:55',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-17 17:50:55',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-17 17:50:55',6,6,'用户名6','评论内容6','回复内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2021-04-17 17:50:55',1,'用户名1','留言内容1','回复内容1'),(92,'2021-04-17 17:50:55',2,'用户名2','留言内容2','回复内容2'),(93,'2021-04-17 17:50:55',3,'用户名3','留言内容3','回复内容3'),(94,'2021-04-17 17:50:55',4,'用户名4','留言内容4','回复内容4'),(95,'2021-04-17 17:50:55',5,'用户名5','留言内容5','回复内容5'),(96,'2021-04-17 17:50:55',6,'用户名6','留言内容6','回复内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='系统公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-04-17 17:50:55','标题1','简介1','http://localhost:8080/ssm3t2mm/upload/news_picture1.jpg','内容1'),(82,'2021-04-17 17:50:55','标题2','简介2','http://localhost:8080/ssm3t2mm/upload/news_picture2.jpg','内容2'),(83,'2021-04-17 17:50:55','标题3','简介3','http://localhost:8080/ssm3t2mm/upload/news_picture3.jpg','内容3'),(84,'2021-04-17 17:50:55','标题4','简介4','http://localhost:8080/ssm3t2mm/upload/news_picture4.jpg','内容4'),(85,'2021-04-17 17:50:55','标题5','简介5','http://localhost:8080/ssm3t2mm/upload/news_picture5.jpg','内容5'),(86,'2021-04-17 17:50:55','标题6','简介6','http://localhost:8080/ssm3t2mm/upload/news_picture6.jpg','内容6');

/*Table structure for table `redianxinwen` */

DROP TABLE IF EXISTS `redianxinwen`;

CREATE TABLE `redianxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='热点新闻';

/*Data for the table `redianxinwen` */

insert  into `redianxinwen`(`id`,`addtime`,`biaoti`,`leixing`,`tupian`,`neirong`,`faburiqi`) values (11,'2021-04-17 17:50:55','标题1','类型1','http://localhost:8080/ssm3t2mm/upload/redianxinwen_tupian1.jpg','内容1','2021-04-17'),(12,'2021-04-17 17:50:55','标题2','类型2','http://localhost:8080/ssm3t2mm/upload/redianxinwen_tupian2.jpg','内容2','2021-04-17'),(13,'2021-04-17 17:50:55','标题3','类型3','http://localhost:8080/ssm3t2mm/upload/redianxinwen_tupian3.jpg','内容3','2021-04-17'),(14,'2021-04-17 17:50:55','标题4','类型4','http://localhost:8080/ssm3t2mm/upload/redianxinwen_tupian4.jpg','内容4','2021-04-17'),(15,'2021-04-17 17:50:55','标题5','类型5','http://localhost:8080/ssm3t2mm/upload/redianxinwen_tupian5.jpg','内容5','2021-04-17'),(16,'2021-04-17 17:50:55','标题6','类型6','http://localhost:8080/ssm3t2mm/upload/redianxinwen_tupian6.jpg','内容6','2021-04-17');

/*Table structure for table `shipinfenlei` */

DROP TABLE IF EXISTS `shipinfenlei`;

CREATE TABLE `shipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinfenlei` varchar(200) NOT NULL COMMENT '视频分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shipinfenlei` (`shipinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='视频分类';

/*Data for the table `shipinfenlei` */

insert  into `shipinfenlei`(`id`,`addtime`,`shipinfenlei`) values (51,'2021-04-17 17:50:55','视频分类1'),(52,'2021-04-17 17:50:55','视频分类2'),(53,'2021-04-17 17:50:55','视频分类3'),(54,'2021-04-17 17:50:55','视频分类4'),(55,'2021-04-17 17:50:55','视频分类5'),(56,'2021-04-17 17:50:55','视频分类6');

/*Table structure for table `shipinxinxi` */

DROP TABLE IF EXISTS `shipinxinxi`;

CREATE TABLE `shipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinbiaoti` varchar(200) NOT NULL COMMENT '视频标题',
  `shipinfenlei` varchar(200) NOT NULL COMMENT '视频分类',
  `shipinfengmian` varchar(200) DEFAULT NULL COMMENT '视频封面',
  `shipinbofang` varchar(200) DEFAULT NULL COMMENT '视频播放',
  `shipinjieshao` longtext COMMENT '视频介绍',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `bozhuzhanghao` varchar(200) DEFAULT NULL COMMENT '博主账号',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='视频信息';

/*Data for the table `shipinxinxi` */

insert  into `shipinxinxi`(`id`,`addtime`,`shipinbiaoti`,`shipinfenlei`,`shipinfengmian`,`shipinbofang`,`shipinjieshao`,`faburiqi`,`bozhuzhanghao`,`nicheng`,`thumbsupnum`,`crazilynum`) values (61,'2021-04-17 17:50:55','视频标题1','视频分类1','http://localhost:8080/ssm3t2mm/upload/shipinxinxi_shipinfengmian1.jpg','','视频介绍1','2021-04-17','博主账号1','昵称1',1,1),(62,'2021-04-17 17:50:55','视频标题2','视频分类2','http://localhost:8080/ssm3t2mm/upload/shipinxinxi_shipinfengmian2.jpg','','视频介绍2','2021-04-17','博主账号2','昵称2',2,2),(63,'2021-04-17 17:50:55','视频标题3','视频分类3','http://localhost:8080/ssm3t2mm/upload/shipinxinxi_shipinfengmian3.jpg','','视频介绍3','2021-04-17','博主账号3','昵称3',3,3),(64,'2021-04-17 17:50:55','视频标题4','视频分类4','http://localhost:8080/ssm3t2mm/upload/shipinxinxi_shipinfengmian4.jpg','','视频介绍4','2021-04-17','博主账号4','昵称4',4,4),(65,'2021-04-17 17:50:55','视频标题5','视频分类5','http://localhost:8080/ssm3t2mm/upload/shipinxinxi_shipinfengmian5.jpg','','视频介绍5','2021-04-17','博主账号5','昵称5',5,5),(66,'2021-04-17 17:50:55','视频标题6','视频分类6','http://localhost:8080/ssm3t2mm/upload/shipinxinxi_shipinfengmian6.jpg','http://localhost:8080/ssm3t2mm/upload/1618653341712.mp4','视频介绍6','2021-04-17','博主账号6','昵称6',6,6);

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
) ENGINE=InnoDB AUTO_INCREMENT=1618653512297 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618653512296,'2021-04-17 17:58:31',21,1618653481385,'bokewenzhang','1','http://localhost:8080/ssm3t2mm/upload/1618653479780.jpg');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','t6ysq9rpcxbybmki4dnywta5gvyzz8dh','2021-04-17 17:55:19','2021-04-17 18:55:19'),(2,21,'博主1','bozhu','博主','hyjj17nuypbq5lhsdn4j02d4pr0cz8oc','2021-04-17 17:57:00','2021-04-17 18:58:52');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-17 17:50:55');

/*Table structure for table `wenzhangfenlei` */

DROP TABLE IF EXISTS `wenzhangfenlei`;

CREATE TABLE `wenzhangfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangfenlei` varchar(200) NOT NULL COMMENT '文章分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wenzhangfenlei` (`wenzhangfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='文章分类';

/*Data for the table `wenzhangfenlei` */

insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (31,'2021-04-17 17:50:55','文章分类1'),(32,'2021-04-17 17:50:55','文章分类2'),(33,'2021-04-17 17:50:55','文章分类3'),(34,'2021-04-17 17:50:55','文章分类4'),(35,'2021-04-17 17:50:55','文章分类5'),(36,'2021-04-17 17:50:55','文章分类6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
