/*
SQLyog v10.2 
MySQL - 5.7.23-log : Database - rbac
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rbac` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `rbac`;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `inputUser_id` bigint(20) DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`id`,`name`,`age`,`gender`,`tel`,`qq`,`job_id`,`source_id`,`seller_id`,`inputUser_id`,`input_time`,`status`) values (1,'王五',22,0,'1370000000','10086',54,5,5,1,'2018-07-01 15:41:42',0),(2,'张三',18,0,'1570000000','10087',3,33,4,1,'2018-08-03 15:17:57',1),(3,'周粥',25,0,'1770000000','10088',2,34,5,1,'2018-08-03 15:56:30',3),(4,'李四',17,1,'1880000000','10089',2,34,6,1,'2018-08-03 16:24:09',4),(5,'大飞',1,1,'1600000000','11008',2,5,5,1,'2018-09-28 10:53:52',0),(6,'逍遥',10,1,'1340000000','11009',1,33,1,1,'2018-09-28 10:53:48',2),(7,'12',22,1,'12','12',2,5,3,1,'2019-02-01 15:44:20',3);

/*Table structure for table `customertracehistory` */

DROP TABLE IF EXISTS `customertracehistory`;

CREATE TABLE `customertracehistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `trace_time` date DEFAULT NULL,
  `trace_details` varchar(255) DEFAULT NULL,
  `trace_type_id` bigint(20) DEFAULT NULL,
  `trace_result` int(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `input_user_id` bigint(20) DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `type` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `customertracehistory` */

insert  into `customertracehistory`(`id`,`trace_time`,`trace_details`,`trace_type_id`,`trace_result`,`remark`,`customer_id`,`input_user_id`,`input_time`,`type`) values (1,'2018-08-02','无人接听电话，联系不上',67,2,'无人接听电话，联系不上',1,1,'2018-08-03 17:27:20',0),(2,'2018-08-04','考虑中',68,2,'考虑中',4,1,'2018-08-04 15:49:18',0),(3,'2018-08-04','了解使用感受',65,3,'了解使用感受                ',4,1,'2018-08-04 18:40:00',1),(4,'2018-08-04','暂无培训想法',65,3,'暂无培训想法',3,2,'2018-08-04 18:55:08',0),(5,'2018-09-27','电话接通就挂掉，待跟进中',65,3,'电话接通就挂掉，待跟进中',6,1,'2018-09-25 13:21:12',0),(6,'2018-09-19','表示不认识，打错了',65,2,'表示不认识，打错了',6,1,'2018-09-28 13:21:00',0),(7,'2019-02-11','222222',67,3,'222',1,1,'2019-02-01 15:07:01',0),(8,'2019-02-01','2',65,3,'22',7,1,'2019-02-01 15:45:07',0),(9,'2019-05-04','xxx',65,2,'                            ',1,1,'2019-05-04 15:36:50',0);

/*Table structure for table `customertransfer` */

DROP TABLE IF EXISTS `customertransfer`;

CREATE TABLE `customertransfer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) DEFAULT NULL,
  `operator_id` bigint(20) DEFAULT NULL,
  `operate_time` datetime DEFAULT NULL,
  `oldSeller_id` bigint(20) DEFAULT NULL,
  `newSeller_id` bigint(20) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `customertransfer` */

insert  into `customertransfer`(`id`,`customer_id`,`operator_id`,`operate_time`,`oldSeller_id`,`newSeller_id`,`reason`) values (1,1,1,'2018-08-04 16:44:11',2,1,'离职资源移交'),(2,1,1,'2018-08-04 17:13:38',2,1,'休产假移交'),(3,1,1,'2018-08-04 17:19:54',2,1,'离职资源移交'),(4,1,1,'2018-08-04 17:45:38',1,1,'调岗移交'),(5,1,1,'2018-08-04 17:53:03',1,1,'离职资源移交'),(6,1,1,'2018-08-04 17:54:58',1,1,'离职资源移交'),(7,2,1,'2018-08-04 18:41:51',1,1,'工作调配移交'),(8,6,1,'2018-09-28 14:36:46',5,3,'离职资源移交'),(9,5,1,'2018-09-28 14:37:08',3,5,'工作调配移交'),(10,5,1,'2018-09-28 14:41:39',5,3,'离职资源移交'),(16,6,1,'2018-09-28 16:21:30',3,1,'工作调配移交'),(17,5,1,'2018-09-29 09:47:15',3,1,'离职资源移交'),(18,5,1,'2018-09-29 09:47:30',1,5,'调岗移交'),(19,1,1,'2019-02-01 15:06:00',3,3,''),(20,1,1,'2019-02-01 15:06:06',3,3,'1'),(21,7,1,'2019-02-01 15:45:21',5,3,'22'),(25,1,1,'2019-05-04 16:28:48',3,5,'');

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`id`,`name`,`sn`) values (7,'777','777'),(3,'采购部','Order Department'),(4,'仓储部','Warehousing Department'),(6,'技术部','Technolog Department '),(1,'111','111'),(2,'222','222'),(5,'555','555');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `admin` bit(1) DEFAULT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`id`,`name`,`password`,`email`,`age`,`admin`,`dept_id`) values (1,'admin','1','admin@abc.com',20,'',2),(31,'123','123','1233',12,'\0',7),(3,'赵一','c4ca4238a0b923820dcc509a6f75849b','zhaoym@wolfcode.cn',33,'\0',7),(4,'钱总','c4ca4238a0b923820dcc509a6f75849b','qianz@wolfcode.cn',35,'\0',7),(5,'钱二明','c4ca4238a0b923820dcc509a6f75849b','qianem@wolfcode.cn',25,'\0',7),(6,'孙总','c4ca4238a0b923820dcc509a6f75849b','sunz@wolfcode.cn',35,'\0',3),(7,'孙三明','c4ca4238a0b923820dcc509a6f75849b','sunsm@wolfcode.cn',25,'\0',3),(9,'李四明','c4ca4238a0b923820dcc509a6f75849b','lism@wolfcode.cn',25,'\0',4),(10,'周总','c4ca4238a0b923820dcc509a6f75849b','zhouz@wolfcode.cn',35,'\0',5),(11,'周五明','c4ca4238a0b923820dcc509a6f75849b','zhouwm@wolfcode.cn',25,'\0',5),(12,'吴总','c4ca4238a0b923820dcc509a6f75849b','wuz@wolfcode.cn',35,'\0',6),(13,'吴六明','c4ca4238a0b923820dcc509a6f75849b','wulm@wolfcode.cn',25,'\0',7),(14,'郑总','c4ca4238a0b923820dcc509a6f75849b','zhengz@wolfcode.cn',35,'\0',7),(15,'郑七明','c4ca4238a0b923820dcc509a6f75849b','zhengqm@wolfcode.cn',25,'\0',7),(16,'孙四明','c4ca4238a0b923820dcc509a6f75849b','sunsim@wolfcode.cn',25,'\0',3),(17,'孙五明2','c4ca4238a0b923820dcc509a6f75849b','sunwm@wolfcode.cn',25,'\0',1),(18,'李五明','c4ca4238a0b923820dcc509a6f75849b','liwm@wolfcode.cn',25,'\0',4),(19,'李六明','c4ca4238a0b923820dcc509a6f75849b','lilm@wolfcode.cn',25,'\0',4),(2,'2','2','2',2,'\0',2),(28,'asd','asd','asd',20,'\0',7);

/*Table structure for table `employee_role` */

DROP TABLE IF EXISTS `employee_role`;

CREATE TABLE `employee_role` (
  `employee_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `employee_role` */

insert  into `employee_role`(`employee_id`,`role_id`) values (2,1),(3,12),(5,11),(13,4),(13,15),(13,2),(13,3),(5,12),(4,12),(1,1),(1,2),(1,3),(1,4),(1,11),(17,12),(17,13),(13,11),(13,12),(31,28),(28,29),(28,27),(31,1),(31,5),(31,27),(31,12),(31,3),(31,4),(31,11),(31,2);

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `expression` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

/*Data for the table `permission` */

insert  into `permission`(`id`,`name`,`expression`) values (56,'部门列表权限','cn.web.controller.DepartmentController.list'),(57,'部门删除权限','cn.web.controller.DepartmentController.delete'),(58,'部门插入/更新表达链接权限','cn.web.controller.DepartmentController.input'),(59,'部门插入/更新权限','cn.web.controller.DepartmentController.saveOrUpdate'),(60,'员工列表权限','cn.web.controller.EmployeeController.list'),(61,'员工删除权限','cn.web.controller.EmployeeController.delete'),(62,'员工添加/编辑链接权限','cn.web.controller.EmployeeController.input'),(63,'员工添加/编辑权限','cn.web.controller.EmployeeController.saveOrUpdate'),(64,'权限列表权限','cn.web.controller.PermissionController.list'),(65,'权限删除权限','cn.web.controller.PermissionController.delete'),(66,'权限重载权限','cn.web.controller.PermissionController.reload'),(67,'角色列表权限','cn.web.controller.RoleController.list'),(68,'角色删除权限','cn.web.controller.RoleController.delete'),(69,'角色添加/删除链接权限','cn.web.controller.RoleController.input'),(70,'角色添加/删除权限','cn.web.controller.RoleController.saveOrUpdate');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`,`sn`) values (29,'角色管理','zzz'),(2,'采购管理','ORDER_MGR'),(3,'仓储管理','WAREHOUSING_MGR'),(4,'行政部管理','Admin_MGR'),(11,'市场经理','Market_Manager'),(12,'市场专员','Market'),(27,'部门管理','zzz'),(5,'5','5'),(1,'1','1'),(28,'员工管理','zzz');

/*Table structure for table `role_permission` */

DROP TABLE IF EXISTS `role_permission`;

CREATE TABLE `role_permission` (
  `role_id` bigint(20) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `role_permission` */

insert  into `role_permission`(`role_id`,`permission_id`) values (1,5),(2,52),(3,7),(4,8),(5,11),(29,54),(29,53),(29,52),(27,46),(27,45),(27,44),(2,55),(2,54),(2,53),(24,48),(24,47),(24,46),(23,54),(23,53),(23,52),(23,51),(22,49),(22,48),(22,47),(22,46),(22,45),(22,44),(29,55),(28,51),(28,50),(28,49),(28,48),(27,47);

/*Table structure for table `seller` */

DROP TABLE IF EXISTS `seller`;

CREATE TABLE `seller` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `seller` */

insert  into `seller`(`id`,`name`) values (1,'销售员1'),(2,'销售员2'),(3,'销售员3'),(4,'销售员4'),(5,'销售员5'),(6,'销售员6'),(33,'销售员33'),(34,'销售员34');

/*Table structure for table `systemdictionary` */

DROP TABLE IF EXISTS `systemdictionary`;

CREATE TABLE `systemdictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Data for the table `systemdictionary` */

insert  into `systemdictionary`(`id`,`sn`,`title`,`intro`) values (1,'job','职业','客户职业'),(2,'source','来源','客户来源渠道'),(3,'intentionDegree','意向程度','客户意向，用★表示'),(4,'subject','学科','学科分类'),(5,'size','收款类型','学费收款方式'),(6,'property','办学性质','公办/民办'),(7,'importance','客户重要程度',''),(14,'foreignLangLevel','外语水平','各类考证'),(15,'clientType','客户类型',''),(16,'source','客户来源',''),(19,'education','学历','学校的办学层次'),(26,'communicationMethod','交流方式','跟踪潜在学员的方式'),(27,'tracePurpose','跟进目的','营销要达到目标'),(28,'wantedLevel','意向程度','客户意向，用★表示'),(31,'score','评分','客户跟踪评审分数'),(32,'113','113','113');

/*Table structure for table `systemdictionaryitem` */

DROP TABLE IF EXISTS `systemdictionaryitem`;

CREATE TABLE `systemdictionaryitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sequence` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

/*Data for the table `systemdictionaryitem` */

insert  into `systemdictionaryitem`(`id`,`parent_id`,`title`,`sequence`) values (1,1,'老师',2),(2,1,'司机',1),(3,1,'老板',1),(4,2,'自身途径',1),(5,2,'营销广告',4),(6,2,'老学员推荐',1),(7,3,'★',1),(9,3,'★★',1),(13,4,'java',1),(14,4,'ios',1),(15,4,'c#',1),(16,5,'信用卡',1),(17,5,'贷款',1),(18,5,'银行卡',1),(19,5,'支付宝',1),(20,6,'公办',1),(21,6,'民办',1),(22,6,'独立院校',1),(23,6,'其他',1),(28,14,'CET4',1),(29,14,'CET6',1),(30,14,'专八',1),(31,15,'线上',1),(32,15,'线下',1),(33,16,'QQ',1),(34,16,'微信',1),(35,17,'广州校区',1),(36,17,'西安校区',1),(37,17,'上海校区',1),(38,17,'北京校区',1),(39,17,'深圳校区',1),(40,7,'★',1),(41,7,'★★',1),(42,7,'★★★',1),(43,7,'★★★★',1),(44,7,'★★★★★',1),(45,7,'★★★★★★',1),(46,7,'★★★★★★★',1),(47,3,'★★★',1),(48,3,'★★★★',1),(49,3,'★★★★★',1),(50,19,'高中',1),(51,19,'大专',1),(52,19,'本科',1),(53,19,'研究生',1),(54,1,'学生',1),(55,20,'高中',1),(56,20,'大专',1),(57,20,'本科',1),(58,20,'研究生',1),(59,24,'正常',1),(60,24,'正式学员',1),(61,25,'java学院',1),(62,25,'IOS学院',1),(63,25,'UI学院',1),(64,25,'Python学院',1),(65,26,'营销QQ',1),(66,26,'来电咨询',1),(67,26,'去电跟踪',1),(68,26,'短信',1),(69,27,'潜在客户跟进',1),(70,27,'常规跟进',1),(71,27,'正式客户跟进',1),(72,27,'其他',1),(73,28,'★',1),(74,28,'★★',1),(75,28,'★★★',1),(76,29,'高中',1),(77,29,'大专',1),(78,29,'本科',1),(79,31,'差',1),(80,31,'良',1),(81,31,'优',1),(82,1,'秘书',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
