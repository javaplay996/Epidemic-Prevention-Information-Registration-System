/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - fangyidengji
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fangyidengji` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fangyidengji`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-26 19:22:46'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-26 19:22:46'),(3,'shenti_types','身体状况类型名称',1,'正常',NULL,'2021-04-26 19:22:47'),(4,'shenti_types','身体状况类型名称',2,'感冒',NULL,'2021-04-26 19:22:47'),(5,'guowai_types','国内外类型',1,'国内',NULL,'2021-04-26 19:22:47'),(6,'guowai_types','国内外类型',2,'国外',NULL,'2021-04-26 19:22:47'),(7,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-04-26 19:22:47'),(8,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-04-26 19:22:47'),(9,'ganranzhe_types','是否是感染者类型名称',1,'感染者',NULL,'2021-04-26 19:22:47'),(10,'ganranzhe_types','是否是感染者类型名称',2,'非感染者',NULL,'2021-04-26 19:22:47'),(11,'diqu_types','行政区域类型名称',1,'河南省',NULL,'2021-04-26 19:22:47'),(12,'diqu_types','行政区域类型名称',2,'浙江省',NULL,'2021-04-26 19:22:47'),(13,'diqu_types','行政区域类型名称',3,'内蒙省',NULL,'2021-04-26 19:22:47'),(14,'fengxian_types','风险等级类型名称',1,'高',NULL,'2021-04-26 19:22:47'),(15,'fengxian_types','风险等级类型名称',2,'中',NULL,'2021-04-26 19:22:47'),(16,'fengxian_types','风险等级类型名称',3,'低',NULL,'2021-04-26 19:22:47'),(17,'diqu_types','行政区域类型名称',4,'河北省',NULL,'2021-04-26 20:55:00');

/*Table structure for table `diqu` */

DROP TABLE IF EXISTS `diqu`;

CREATE TABLE `diqu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `diqu_name` varchar(200) DEFAULT NULL COMMENT '地区名字 Search111 ',
  `diqu_types` int(11) DEFAULT NULL COMMENT '行政区域 Search111 ',
  `fengxian_types` int(11) DEFAULT NULL COMMENT '风险等级 Search111 ',
  `diqu_content` text COMMENT '备注信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='风险地区管理';

/*Data for the table `diqu` */

insert  into `diqu`(`id`,`diqu_name`,`diqu_types`,`fengxian_types`,`diqu_content`,`insert_time`,`create_time`) values (1,'地区1',2,3,'','2021-04-26 19:45:47','2021-04-26 19:45:47'),(2,'地区2',1,2,'还成\r\n','2021-04-26 19:46:03','2021-04-26 19:46:03'),(3,'地区3',2,1,'地区风险很高\r\n','2021-04-26 20:54:09','2021-04-26 20:54:09');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',1,'2021-04-26 19:44:31','公告1的详情\r\n','2021-04-26 19:44:31');

/*Table structure for table `qiandao` */

DROP TABLE IF EXISTS `qiandao`;

CREATE TABLE `qiandao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiandao_time` varchar(200) DEFAULT NULL COMMENT '签到日期 Search111 ',
  `shenti_types` int(11) DEFAULT NULL COMMENT '身体状况 Search111 ',
  `guowai_types` int(11) DEFAULT NULL COMMENT '国内外 Search111 ',
  `ganranzhe_types` int(11) DEFAULT NULL COMMENT '是否是感染者 Search111 ',
  `qiandao_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='签到';

/*Data for the table `qiandao` */

insert  into `qiandao`(`id`,`yonghu_id`,`qiandao_time`,`shenti_types`,`guowai_types`,`ganranzhe_types`,`qiandao_content`,`insert_time`,`create_time`) values (1,3,'2021-04-25',1,2,2,'','2021-04-26 20:03:31','2021-04-26 20:03:31'),(2,2,'2021-04-25',2,2,2,'','2021-04-26 20:03:49','2021-04-26 20:03:49'),(3,1,'2021-04-25',2,2,1,'','2021-04-26 20:04:04','2021-04-26 20:04:04'),(4,5,'2021-04-26',1,1,1,'无\r\n','2021-04-26 20:57:50','2021-04-26 20:57:50');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','73pzwwd7cqmtognbeo60syv76em4g1v9','2021-04-26 19:32:08','2021-04-26 21:58:22'),(2,5,'a5','yonghu','用户','izysfnljhqezxuv8ddda4q6ld55lbs2o','2021-04-26 20:56:01','2021-04-26 21:56:23');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `shenfenzheng_z_photo` varchar(200) DEFAULT NULL COMMENT '身份证正面',
  `shenfenzheng_F_photo` varchar(200) DEFAULT NULL COMMENT '身份证反面',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`yonghu_photo`,`shenfenzheng_z_photo`,`shenfenzheng_F_photo`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001',1,'http://localhost:8080/fangyidengji/file/download?fileName=1619437319965.jpg','http://localhost:8080/fangyidengji/file/download?fileName=1619437322265.jpg','http://localhost:8080/fangyidengji/file/download?fileName=1619437326904.jpg','2021-04-26 19:42:08'),(2,'a2','123456','张2','17703786902','410224199610232002',2,'http://localhost:8080/fangyidengji/file/download?fileName=1619437491796.jpg','http://localhost:8080/fangyidengji/file/download?fileName=1619437494419.jpg','http://localhost:8080/fangyidengji/file/download?fileName=1619437497185.jpg','2021-04-26 19:44:58'),(3,'a3','123456','张3','17703786903','410224199610232003',2,'http://localhost:8080/fangyidengji/file/download?fileName=1619437516128.jpg','http://localhost:8080/fangyidengji/file/download?fileName=1619437519979.jpg','http://localhost:8080/fangyidengji/file/download?fileName=1619437523588.jpg','2021-04-26 19:45:24'),(4,'a4','123456','张4','17703786904','410224199610232004',2,'http://localhost:8080/fangyidengji/file/download?fileName=1619441606960.jpg','http://localhost:8080/fangyidengji/file/download?fileName=1619441609794.jpg','http://localhost:8080/fangyidengji/file/download?fileName=1619441612967.jpg','2021-04-26 20:53:40'),(5,'a5','123456','张5','17703786905','410224199610232005',1,'http://localhost:8080/fangyidengji/file/download?fileName=1619441733613.jpg','http://localhost:8080/fangyidengji/file/download?fileName=1619441737326.jpg','http://localhost:8080/fangyidengji/file/download?fileName=1619441739808.jpg','2021-04-26 20:55:46');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
