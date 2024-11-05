/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - biyeshengjiuyeguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`biyeshengjiuyeguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `biyeshengjiuyeguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/biyeshengjiuyeguanli/upload/1618370660752.jpg'),(2,'轮播图2','http://localhost:8080/biyeshengjiuyeguanli/upload/1618370674338.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-14 10:51:27'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-14 10:51:27'),(3,'jiuye_types','是否就业类型名称',1,'就业',NULL,'2021-04-14 10:51:27'),(4,'jiuye_types','是否就业类型名称',2,'未就业',NULL,'2021-04-14 10:51:27'),(5,'jiuyezhidao_types','就业指导类型名称',1,'就业指导类型1',NULL,'2021-04-14 10:51:27'),(6,'jiuyezhidao_types','就业指导类型名称',2,'就业指导类型2',NULL,'2021-04-14 10:51:27'),(7,'jiuyezhidao_types','就业指导类型名称',3,'就业指导类型3',NULL,'2021-04-14 10:51:27'),(8,'jiuyezhidao_types','就业指导类型名称',4,'就业指导类型4',NULL,'2021-04-14 10:51:27'),(9,'zhengcefagui_types','政策法规类型名称',1,'政策法规类型一',NULL,'2021-04-14 10:51:27'),(10,'zhengcefagui_types','政策法规类型名称',2,'政策法规类型二',NULL,'2021-04-14 10:51:27'),(11,'zhengcefagui_types','政策法规类型名称',3,'政策法规类型三',NULL,'2021-04-14 10:51:27'),(12,'zhuanye_types','专业类型名称',1,'数学与应用数学',NULL,'2021-04-14 10:51:27'),(13,'zhuanye_types','专业类型名称',2,'信息与计算科学',NULL,'2021-04-14 10:51:27'),(14,'zhuanye_types','专业类型名称',3,'软件工程',NULL,'2021-04-14 10:51:27'),(15,'zhuanye_types','专业类型名称',4,'电气信息',NULL,'2021-04-14 10:51:27'),(16,'zhengcefagui_types','政策法规类型名称',4,'类型4',NULL,'2021-04-14 19:50:59');

/*Table structure for table `jiuyezhidao` */

DROP TABLE IF EXISTS `jiuyezhidao`;

CREATE TABLE `jiuyezhidao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiuyezhidao_name` varchar(200) DEFAULT NULL COMMENT '就业指导名称  Search111 ',
  `jiuyezhidao_types` int(11) DEFAULT NULL COMMENT '就业指导类型  Search111 ',
  `jiuyezhidao_photo` varchar(200) DEFAULT NULL COMMENT '就业指导图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `jiuyezhidao_content` text COMMENT '就业指导详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='就业指导';

/*Data for the table `jiuyezhidao` */

insert  into `jiuyezhidao`(`id`,`jiuyezhidao_name`,`jiuyezhidao_types`,`jiuyezhidao_photo`,`insert_time`,`jiuyezhidao_content`,`create_time`) values (3,'面试指导',1,'http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618370629793.jpg','2021-04-14 11:24:07','面试小技巧1\r\n面试小技巧2\r\n面试小技巧3\r\n','2021-04-14 11:24:07'),(4,'工作相关指导',2,'http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618370976478.jpg','2021-04-14 11:30:22','工作认真完成\r\n逢人客气点\r\n勤快\r\n','2021-04-14 11:30:22');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名  Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号 Search111 ',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号  Search111 ',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`create_time`) values (1,'a11','123456','张11老师','17703786911','410224199610232011','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618369322369.jpg',2,'2021-04-14 11:02:04'),(2,'a22','123456','张22老师','17703786922','410224199610232022','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618370310535.jpg',2,'2021-04-14 11:18:33'),(3,'a33','123456','张33','17703786933','410224199610232033','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618370335221.jpg',1,'2021-04-14 11:18:57');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,12,'a2','yonghu','用户','xdnsgfmoxxr9eigyh4jrx2wtws0a4ed4','2021-04-14 20:06:50','2021-04-14 21:35:16'),(6,2,'a22','laoshi','老师','2luis18jiuivpb1tj3hfs4r7kccryaa0','2021-04-14 20:10:48','2021-04-14 21:10:49'),(7,6,'admin','users','管理员','ut5zxlfpxfh78r0qv8h1vama0c7tg8fe','2021-04-14 20:19:59','2021-04-14 21:20:00');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xuanjianghui` */

DROP TABLE IF EXISTS `xuanjianghui`;

CREATE TABLE `xuanjianghui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuanjianghui_name` varchar(200) DEFAULT NULL COMMENT '宣讲会名称  Search111 ',
  `xuanjianghui_photo` varchar(200) DEFAULT NULL COMMENT '宣讲会图片',
  `xuanjianghui_start_time` timestamp NULL DEFAULT NULL COMMENT '宣讲会开始时间 Search111 ',
  `xuanjianghui_end_time` timestamp NULL DEFAULT NULL COMMENT '宣讲会结束时间 Search111 ',
  `xuanjianghui_content` text COMMENT '宣讲会详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='宣讲会';

/*Data for the table `xuanjianghui` */

insert  into `xuanjianghui`(`id`,`xuanjianghui_name`,`xuanjianghui_photo`,`xuanjianghui_start_time`,`xuanjianghui_end_time`,`xuanjianghui_content`,`create_time`) values (1,'华为宣讲会','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618370737717.jpg','2021-04-14 00:00:00','2021-04-16 00:00:00','讲的是华为技术相关内容\r\n','2021-04-14 11:25:57'),(2,'小米开发者宣讲会','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618370833440.jpg','2021-04-16 00:00:00','2021-04-17 00:00:00','讲的是开发者相关内容\r\n','2021-04-14 11:27:30');

/*Table structure for table `xuanjianghui_collection` */

DROP TABLE IF EXISTS `xuanjianghui_collection`;

CREATE TABLE `xuanjianghui_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuanjianghui_id` int(11) DEFAULT NULL COMMENT '宣讲会',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='宣讲会收藏';

/*Data for the table `xuanjianghui_collection` */

insert  into `xuanjianghui_collection`(`id`,`xuanjianghui_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2021-04-14 16:36:23','2021-04-14 16:36:23'),(2,2,12,'2021-04-14 19:55:01','2021-04-14 19:55:01');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `ruxue_time` varchar(200) DEFAULT NULL COMMENT '入学时间 Search111 ',
  `jiuye_types` int(11) DEFAULT NULL COMMENT '是否就业 Search111 ',
  `zhuanye_types` int(11) DEFAULT NULL COMMENT '专业 Search111 ',
  `yonghu_gongsi` varchar(200) DEFAULT NULL COMMENT '就职公司  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`ruxue_time`,`jiuye_types`,`zhuanye_types`,`yonghu_gongsi`,`create_time`) values (1,'a1','123456','张1','17703786911','410224199610232001','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618368952372.jpg',1,'2018',1,1,'北京公司1','2021-04-14 10:56:33'),(11,'a1','123456','张1','17703786911','410224199610232001','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618368952372.jpg',2,'2018',1,2,'北京公司1','2021-04-14 10:56:33'),(12,'a2','123456','张2','17703786912','410224199610232002','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618368952372.jpg',2,'2017',1,4,'11122','2021-04-14 10:56:33'),(13,'a3','123456','张3','17703786913','410224199610232003','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618368952372.jpg',2,'2019',1,4,'北京公司3','2021-04-14 10:56:33'),(14,'a4','123456','张4','17703786914','410224199610232004','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618368952372.jpg',1,'2017',2,1,NULL,'2021-04-14 10:56:33'),(15,'a5','123456','张5','17703786915','410224199610232005','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618368952372.jpg',2,'2017',2,2,NULL,'2021-04-14 10:56:33'),(16,'a6','123456','张6','17703786916','410224199610232006','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618368952372.jpg',2,'2020',1,4,'北京公司4','2021-04-14 10:56:33'),(17,'a7','123456','张7','17703786917','410224199610232007','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618368952372.jpg',2,'2017',2,2,NULL,'2021-04-14 10:56:33'),(18,'a8','123456','张8','17703786918','410224199610232008','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618368952372.jpg',1,'2018',1,1,'北京公司5','2021-04-14 10:56:33'),(19,'a9','123456','张9','17703786919','410224199610232009','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618368952372.jpg',1,'2021',2,3,NULL,'2021-04-14 10:56:33');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '公司名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '公司图片',
  `zhaopin_start_time` timestamp NULL DEFAULT NULL COMMENT '招聘开始时间 Search111 ',
  `zhaopin_end_time` timestamp NULL DEFAULT NULL COMMENT '招聘结束时间 Search111 ',
  `zhaopin_content` text COMMENT '招聘详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='招聘';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`zhaopin_name`,`zhaopin_photo`,`zhaopin_start_time`,`zhaopin_end_time`,`zhaopin_content`,`create_time`) values (1,'华为','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618370862281.jpg','2021-04-15 00:00:00','2021-04-16 00:00:00','招聘内容:\r\n    java开发\r\n    人力资源经理\r\n    安卓调研人员\r\n\r\n','2021-04-14 11:28:30'),(2,'小米','http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618370918348.jpg','2021-04-17 00:00:00','2021-04-20 00:00:00','招聘技术好的开发人员,人事组长\r\n','2021-04-14 11:29:04');

/*Table structure for table `zhaopin_collection` */

DROP TABLE IF EXISTS `zhaopin_collection`;

CREATE TABLE `zhaopin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '招聘',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='招聘收藏';

/*Data for the table `zhaopin_collection` */

insert  into `zhaopin_collection`(`id`,`zhaopin_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,3,12,'2021-04-14 19:53:34','2021-04-14 19:53:34');

/*Table structure for table `zhengcefagui` */

DROP TABLE IF EXISTS `zhengcefagui`;

CREATE TABLE `zhengcefagui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhengcefagui_name` varchar(200) DEFAULT NULL COMMENT '政策法规名称  Search111 ',
  `zhengcefagui_types` int(11) DEFAULT NULL COMMENT '政策法规类型  Search111 ',
  `zhengcefagui_photo` varchar(200) DEFAULT NULL COMMENT '政策法规图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `zhengcefagui_content` text COMMENT '政策法规详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='政策法规';

/*Data for the table `zhengcefagui` */

insert  into `zhengcefagui`(`id`,`zhengcefagui_name`,`zhengcefagui_types`,`zhengcefagui_photo`,`insert_time`,`zhengcefagui_content`,`create_time`) values (3,'政策1',1,'http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618371040333.jpg','2021-04-14 11:30:49','政策法规详情\r\n','2021-04-14 11:30:49'),(4,'法规1',2,'http://localhost:8080/biyeshengjiuyeguanli/file/download?fileName=1618371074211.jpg','2021-04-14 11:31:19','法规1的详情\r\n','2021-04-14 11:31:19');

/*Table structure for table `zixun` */

DROP TABLE IF EXISTS `zixun`;

CREATE TABLE `zixun` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `zixun_content` text COMMENT '老师介绍详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='咨询';

/*Data for the table `zixun` */

insert  into `zixun`(`id`,`laoshi_id`,`zixun_content`,`create_time`) values (1,3,'老师是专门负责咨询人事管理这方面东西的\r\n','2021-04-14 11:21:13'),(2,2,'负责面试相关的资源\r\n','2021-04-14 11:22:36'),(3,1,'老师负责的地方\r\n','2021-04-14 19:49:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
