/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.6.16 : Database - project_monitoring
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `captcha` */

DROP TABLE IF EXISTS `captcha`;

CREATE TABLE `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=1276 DEFAULT CHARSET=latin1;

/*Data for the table `captcha` */

insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`,`created_at`,`updated_at`) values (1265,1397204353,'::1','Vb7Np','2014-04-11 16:19:13','2014-04-11 16:19:13');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`,`created_at`,`updated_at`) values (1266,1397204392,'::1','ksVS1','2014-04-11 16:19:51','2014-04-11 16:19:51');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`,`created_at`,`updated_at`) values (1267,1397204402,'::1','mMeEE','2014-04-11 16:20:02','2014-04-11 16:20:02');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`,`created_at`,`updated_at`) values (1268,1397204485,'::1','bP1','2014-04-11 16:21:24','2014-04-11 16:21:24');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`,`created_at`,`updated_at`) values (1269,1397204505,'::1','ftK','2014-04-11 16:21:45','2014-04-11 16:21:45');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`,`created_at`,`updated_at`) values (1270,1397204518,'::1','vJa6f','2014-04-11 16:21:58','2014-04-11 16:21:58');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`,`created_at`,`updated_at`) values (1271,1397204536,'::1','abp','2014-04-11 16:22:15','2014-04-11 16:22:15');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`,`created_at`,`updated_at`) values (1272,1397204536,'::1','L1rE','2014-04-11 16:22:15','2014-04-11 16:22:15');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`,`created_at`,`updated_at`) values (1273,1397204550,'::1','q3bYv','2014-04-11 16:22:29','2014-04-11 16:22:29');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`,`created_at`,`updated_at`) values (1274,1397205137,'::1','KFcVP','2014-04-11 16:32:17','2014-04-11 16:32:17');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`,`created_at`,`updated_at`) values (1275,1397205149,'::1','JjcA','2014-04-11 16:32:28','2014-04-11 16:32:28');

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `contact_person_tel` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `client` */

insert  into `client`(`id`,`code`,`name`,`email`,`address`,`tel`,`contact_person`,`contact_person_tel`,`created_at`,`updated_at`,`is_active`) values (1,'UB','University of Baguio',NULL,'Baguio City','1321','Randy','321321',NULL,NULL,1);
insert  into `client`(`id`,`code`,`name`,`email`,`address`,`tel`,`contact_person`,`contact_person_tel`,`created_at`,`updated_at`,`is_active`) values (3,'YANGA','YANGA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
insert  into `client`(`id`,`code`,`name`,`email`,`address`,`tel`,`contact_person`,`contact_person_tel`,`created_at`,`updated_at`,`is_active`) values (4,'SM','SMALL WOLRD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
insert  into `client`(`id`,`code`,`name`,`email`,`address`,`tel`,`contact_person`,`contact_person_tel`,`created_at`,`updated_at`,`is_active`) values (5,'KCP','King College of the Philippines','kcp@gmail.com','L.T.B.','222222','gilbert','2222','2014-04-11 18:01:09','2014-04-11 18:13:41',1);

/*Table structure for table `companyinfo` */

DROP TABLE IF EXISTS `companyinfo`;

CREATE TABLE `companyinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `companyinfo` */

insert  into `companyinfo`(`id`,`name`,`address`,`tel`,`created_at`,`updated_at`,`email`,`logo`) values (1,'Go Cloud Asia','Baguio City','234334','0000-00-00 00:00:00','0000-00-00 00:00:00','gocloudasia@gmail.com','assets/images/logo/ub_logo.PNG');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empid` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `joining_date` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `martial_status` varchar(255) DEFAULT NULL,
  `no_children` int(11) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `spouse_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `teacher` tinyint(1) DEFAULT NULL,
  `registrar` tinyint(1) DEFAULT NULL,
  `finance` tinyint(1) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `sss_id_no` varchar(255) DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `citizenship` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `pagibig_no` varchar(255) DEFAULT NULL,
  `philhealth_no` varchar(255) DEFAULT NULL,
  `residential_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `driver_license_no` varchar(255) DEFAULT NULL,
  `tin` varchar(255) DEFAULT NULL,
  `cellphone` varchar(255) DEFAULT NULL,
  `spouse_last_name` varchar(255) DEFAULT NULL,
  `spouse_first_name` varchar(255) DEFAULT NULL,
  `spouse_middle_name` varchar(255) DEFAULT NULL,
  `spouse_occupation` varchar(255) DEFAULT NULL,
  `spouse_employer` varchar(255) DEFAULT NULL,
  `spouse_business_address` varchar(255) DEFAULT NULL,
  `spouse_telephone` varchar(255) DEFAULT NULL,
  `child1` varchar(255) DEFAULT NULL,
  `child1bday` varchar(255) DEFAULT NULL,
  `child2` varchar(255) DEFAULT NULL,
  `child2bday` varchar(255) DEFAULT NULL,
  `child3` varchar(255) DEFAULT NULL,
  `child3bday` varchar(255) DEFAULT NULL,
  `child4` varchar(255) DEFAULT NULL,
  `child4bday` varchar(255) DEFAULT NULL,
  `child5` varchar(255) DEFAULT NULL,
  `child5bday` varchar(255) DEFAULT NULL,
  `child6` varchar(255) DEFAULT NULL,
  `child6bday` varchar(255) DEFAULT NULL,
  `child7` varchar(255) DEFAULT NULL,
  `child7bday` varchar(255) DEFAULT NULL,
  `father_first_name` varchar(255) DEFAULT NULL,
  `father_middle_name` varchar(255) DEFAULT NULL,
  `father_last_name` varchar(255) DEFAULT NULL,
  `mother_last_name` varchar(255) DEFAULT NULL,
  `mother_first_name` varchar(255) DEFAULT NULL,
  `mother_middle_name` varchar(255) DEFAULT NULL,
  `elementary_name` varchar(255) DEFAULT NULL,
  `elementary_degree` varchar(255) DEFAULT NULL,
  `elementary_year` varchar(255) DEFAULT NULL,
  `secondary_name` varchar(255) DEFAULT NULL,
  `secondary_degree` varchar(255) DEFAULT NULL,
  `secondary_year` varchar(255) DEFAULT NULL,
  `vocational_name` varchar(255) DEFAULT NULL,
  `vocational_degree` varchar(255) DEFAULT NULL,
  `vocational_year` varchar(255) DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `college_degree` varchar(255) DEFAULT NULL,
  `college_year` varchar(255) DEFAULT NULL,
  `graduate_name` varchar(255) DEFAULT NULL,
  `graduate_degree` varchar(255) DEFAULT NULL,
  `graduate_year` varchar(255) DEFAULT NULL,
  `date_from1` varchar(255) DEFAULT NULL,
  `date_to1` varchar(255) DEFAULT NULL,
  `agency1` varchar(255) DEFAULT NULL,
  `comunity_tax` varchar(255) DEFAULT NULL,
  `issued_at` varchar(255) DEFAULT NULL,
  `issued_on` varchar(255) DEFAULT NULL,
  `community_tax` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `employee_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `employees` */

insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (1,'regisrar','Registrar','R','Registrar','2013-01-08','Female','1989-01-24',1,'Single',NULL,NULL,NULL,NULL,'2014-01-14 17:26:24','2014-02-21 15:21:29','',NULL,NULL,NULL,NULL,NULL,'registrar','','','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','Registrar',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (2,'finance','Finance','F','Finance','2007-03-15','Male','1985-06-04',1,'Single',NULL,NULL,NULL,NULL,'2014-01-14 17:50:05','2014-01-14 17:50:05','',NULL,NULL,NULL,NULL,NULL,'finance','','','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','Accounting',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (3,'registree','registree','registree','registree','registree','Male','registree',1,'Single',NULL,NULL,NULL,NULL,'2014-01-22 20:03:42','2014-01-22 20:03:42','registree',NULL,NULL,NULL,NULL,NULL,'registrar','registree','registree','registree','registree','registree','registree','registree','registree',NULL,'registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree','registree',NULL,NULL,NULL,NULL,'registree','registree','registree','registree',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (4,'registrar-1','Registrar','R','Registrar','2000-01-05','Female','1990-01-24',1,'Single',NULL,NULL,NULL,NULL,'2014-01-23 15:42:37','2014-01-23 15:42:37','',NULL,NULL,NULL,NULL,NULL,'registrar','','','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','registrar',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (5,'finance-1','Finance','F','Finance','2012-02-14','Female','1995-01-25',1,'Single',NULL,NULL,NULL,NULL,'2014-01-23 15:46:55','2014-01-23 15:46:55','',NULL,NULL,NULL,NULL,NULL,'finance','','','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','Finance',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (6,'dean-1','Dean','D','Dean','2005-06-14','Male','1985-11-04',1,'Single',NULL,NULL,NULL,NULL,'2014-01-23 15:48:42','2014-01-23 15:48:42','',NULL,NULL,NULL,NULL,NULL,'dean','','','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','Dean',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (7,'cashier-1','Cashier','C','Cahier','2010-04-14','Female','1990-02-19',1,'Single',NULL,NULL,NULL,NULL,'2014-01-23 15:50:23','2014-01-23 15:50:23','',NULL,NULL,NULL,NULL,NULL,'cashier','','','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','Accounting',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (8,'president-1','President','P','President','2005-01-20','Male','1985-11-06',1,'Single',NULL,NULL,NULL,NULL,'2014-01-23 15:53:15','2014-01-23 15:53:15','',NULL,NULL,NULL,NULL,NULL,'president','','Baguio City','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','Admin',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (9,'schooladmin-1','Admin','S','School','2011-01-05','Male','1986-05-21',1,'Single',NULL,NULL,NULL,NULL,'2014-01-23 15:55:11','2014-01-23 15:55:11','',NULL,NULL,NULL,NULL,NULL,'school_administrator','','','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','Admin',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (10,'teachermakiling','Maria','J','Makiling','2011-01-19','Female','1988-12-25',1,'Single',NULL,NULL,NULL,NULL,'2014-01-23 15:56:48','2014-01-23 15:56:48','',NULL,NULL,NULL,NULL,NULL,'teacher','','','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','Facultyr',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (11,'librarian-1','Librarian','L','Librarian','2013-01-02','Male','1990-03-20',1,'Single',NULL,NULL,NULL,NULL,'2014-01-23 15:58:51','2014-01-23 15:58:51','',NULL,NULL,NULL,NULL,NULL,'librarian','','','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','Library',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (12,'custodian-1','custodian','c','custodian','2012-05-09','Female','1993-01-20',1,'Single',NULL,NULL,NULL,NULL,'2014-01-23 16:00:25','2014-01-23 16:00:25','',NULL,NULL,NULL,NULL,NULL,'custodian','','','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','custodian',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (13,'guidance-1','guidance','g','guidance','2010-01-13','Male','1995-01-24',1,'Single',NULL,NULL,NULL,NULL,'2014-01-23 16:01:51','2014-01-23 16:01:51','',NULL,NULL,NULL,NULL,NULL,'guidance','','','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','guidance',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (14,'studentaffairs-1','affairs','S','student','2013-06-04','Female','1995-01-24',1,'Single',NULL,NULL,NULL,NULL,'2014-01-23 16:03:18','2014-01-23 16:03:18','',NULL,NULL,NULL,NULL,NULL,'student_affairs','','','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','student affairs',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (15,'Support1','Support','Support','Support','2014-01-24','Male','1990-01-24',1,'Single',NULL,NULL,NULL,NULL,'2014-01-24 12:45:51','2014-01-24 12:45:51','',NULL,NULL,NULL,NULL,NULL,'admin','','','','','','','','',NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,'','','','Support',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (16,'studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','Male','studentaffairs',1,'Single',NULL,NULL,NULL,NULL,'2014-01-27 17:40:38','2014-01-27 17:40:38','studentaffairs',NULL,NULL,NULL,NULL,NULL,'student_affairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs',NULL,'studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs','studentaffairs',NULL,NULL,NULL,NULL,'studentaffairs','studentaffairs','studentaffairs','studentaffairs',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (17,'admin2','admin2','admin2','admin2','admin2','Male','admin2',1,'Single',NULL,NULL,NULL,NULL,'2014-01-28 17:42:41','2014-01-28 17:42:41','admin2',NULL,NULL,NULL,NULL,NULL,'admin','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2',NULL,'admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2','admin2',NULL,NULL,NULL,NULL,'admin2','admin2','admin2','admin2',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (18,'test','test','test','test','test','Male','test',1,'Single',NULL,NULL,NULL,NULL,'2014-02-11 10:16:20','2014-02-11 10:16:20','test',NULL,NULL,NULL,NULL,NULL,'school_administrator','test','test','test','test','test','test','test','test',NULL,'test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test',NULL,NULL,NULL,NULL,'test','test','test','test',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (19,'teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','Male','teacher-1',1,'Single',NULL,NULL,NULL,NULL,'2014-02-11 15:10:33','2014-02-11 15:10:33','teacher-1',NULL,NULL,NULL,NULL,NULL,'teacher','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1',NULL,'teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1','teacher-1',NULL,NULL,NULL,NULL,'teacher-1','teacher-1','teacher-1','teacher-1',NULL);
insert  into `employees`(`id`,`empid`,`first_name`,`middle_name`,`last_name`,`joining_date`,`gender`,`dob`,`status`,`martial_status`,`no_children`,`father_name`,`mother_name`,`spouse_name`,`created_at`,`updated_at`,`email`,`name`,`admin`,`teacher`,`registrar`,`finance`,`role`,`sss_id_no`,`place_of_birth`,`citizenship`,`religion`,`pagibig_no`,`philhealth_no`,`residential_address`,`permanent_address`,`driver_license_no`,`tin`,`cellphone`,`spouse_last_name`,`spouse_first_name`,`spouse_middle_name`,`spouse_occupation`,`spouse_employer`,`spouse_business_address`,`spouse_telephone`,`child1`,`child1bday`,`child2`,`child2bday`,`child3`,`child3bday`,`child4`,`child4bday`,`child5`,`child5bday`,`child6`,`child6bday`,`child7`,`child7bday`,`father_first_name`,`father_middle_name`,`father_last_name`,`mother_last_name`,`mother_first_name`,`mother_middle_name`,`elementary_name`,`elementary_degree`,`elementary_year`,`secondary_name`,`secondary_degree`,`secondary_year`,`vocational_name`,`vocational_degree`,`vocational_year`,`college_name`,`college_degree`,`college_year`,`graduate_name`,`graduate_degree`,`graduate_year`,`date_from1`,`date_to1`,`agency1`,`comunity_tax`,`issued_at`,`issued_on`,`community_tax`,`department`,`employee_status`) values (20,'finance-2','finance-2','finance-2','finance-2','finance-2','Male','finance-2',1,'Single',NULL,NULL,NULL,NULL,'2014-02-21 14:33:03','2014-02-21 14:33:03','finance-2',NULL,NULL,NULL,NULL,NULL,'finance','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2',NULL,'finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2','finance-2',NULL,NULL,NULL,NULL,'finance-2','finance-2','finance-2','finance-2',NULL);

/*Table structure for table `modules` */

DROP TABLE IF EXISTS `modules`;

CREATE TABLE `modules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`module`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `modules` */

insert  into `modules`(`id`,`module`,`created_at`,`updated_at`) values (1,'School Online Programming',NULL,NULL);
insert  into `modules`(`id`,`module`,`created_at`,`updated_at`) values (2,'Hotel Online Programming',NULL,NULL);
insert  into `modules`(`id`,`module`,`created_at`,`updated_at`) values (3,'Fix And Debugging','2014-04-11 19:01:31','2014-04-11 19:04:34');

/*Table structure for table `monitoring` */

DROP TABLE IF EXISTS `monitoring`;

CREATE TABLE `monitoring` (
  `id` bigint(20) unsigned NOT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `empid` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `module_id` bigint(20) NOT NULL,
  `hour` float NOT NULL,
  `task` tinytext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`date`,`project_id`,`client_id`,`module_id`,`hour`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `monitoring` */

insert  into `monitoring`(`id`,`userid`,`empid`,`date`,`project_id`,`client_id`,`module_id`,`hour`,`task`,`created_at`,`updated_at`) values (0,12,'registrar-1','2014-04-08 00:00:00',1,1,1,23,'asdfasdf','2014-04-11 16:23:03','2014-04-11 16:23:03');
insert  into `monitoring`(`id`,`userid`,`empid`,`date`,`project_id`,`client_id`,`module_id`,`hour`,`task`,`created_at`,`updated_at`) values (0,12,'registrar-1','2014-04-10 00:00:00',1,1,1,2,'asdfasdf','2014-04-11 16:22:45','2014-04-11 16:22:45');
insert  into `monitoring`(`id`,`userid`,`empid`,`date`,`project_id`,`client_id`,`module_id`,`hour`,`task`,`created_at`,`updated_at`) values (0,4,'finance','2014-04-11 00:00:00',1,1,1,2,'asdfasdfasdfasdf','2014-04-11 14:45:02','2014-04-11 14:45:02');
insert  into `monitoring`(`id`,`userid`,`empid`,`date`,`project_id`,`client_id`,`module_id`,`hour`,`task`,`created_at`,`updated_at`) values (0,4,'finance','2014-04-11 00:00:00',1,1,1,3,'asdfasdf','2014-04-11 16:18:00','2014-04-11 16:18:00');
insert  into `monitoring`(`id`,`userid`,`empid`,`date`,`project_id`,`client_id`,`module_id`,`hour`,`task`,`created_at`,`updated_at`) values (0,4,'finance','2014-04-11 00:00:00',2,3,1,2,'asdfasdf','2014-04-11 15:46:10','2014-04-11 15:46:10');
insert  into `monitoring`(`id`,`userid`,`empid`,`date`,`project_id`,`client_id`,`module_id`,`hour`,`task`,`created_at`,`updated_at`) values (0,4,'finance','2014-04-11 00:00:00',3,4,1,2,'sadfasd','2014-04-11 15:47:18','2014-04-11 15:47:18');
insert  into `monitoring`(`id`,`userid`,`empid`,`date`,`project_id`,`client_id`,`module_id`,`hour`,`task`,`created_at`,`updated_at`) values (0,12,'registrar-1','2014-04-18 00:00:00',1,1,2,2,'asdfasdf','2014-04-11 16:27:52','2014-04-11 16:27:52');

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `date_started` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `is_done` tinyint(1) DEFAULT '0',
  `man_hour` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `project` */

insert  into `project`(`id`,`code`,`name`,`date_started`,`date_end`,`is_done`,`man_hour`,`created_at`,`updated_at`,`is_active`) values (1,'UBK12','University of Baguio (K12)','2014-01-01 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2014-04-11 18:44:59',1);
insert  into `project`(`id`,`code`,`name`,`date_started`,`date_end`,`is_done`,`man_hour`,`created_at`,`updated_at`,`is_active`) values (2,'YANGAK12','YANGA (K12)',NULL,NULL,0,0,NULL,NULL,1);
insert  into `project`(`id`,`code`,`name`,`date_started`,`date_end`,`is_done`,`man_hour`,`created_at`,`updated_at`,`is_active`) values (3,'SWK12','Small World',NULL,NULL,0,0,NULL,NULL,1);
insert  into `project`(`id`,`code`,`name`,`date_started`,`date_end`,`is_done`,`man_hour`,`created_at`,`updated_at`,`is_active`) values (5,'UBCOL','University of Baguio (College)','2014-01-03 00:00:00','0000-00-00 00:00:00',0,0,'2014-04-11 18:44:25','2014-04-11 18:44:25',1);

/*Table structure for table `sys_par` */

DROP TABLE IF EXISTS `sys_par`;

CREATE TABLE `sys_par` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bootstrap_theme` set('AMELIA','CURELEAN','DEFAULT','FLATLY','JOURNAL','LUMEN','READABLE','SIMPLEX','SLATE','SPACELAB','SUPERHERO','UNITED','YETI','UB') DEFAULT 'DEFAULT',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `sys_par` */

insert  into `sys_par`(`id`,`bootstrap_theme`) values (1,'YETI');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) DEFAULT NULL,
  `login` varchar(40) DEFAULT NULL,
  `name` varchar(100) DEFAULT '',
  `email` varchar(100) DEFAULT NULL,
  `crypted_password` varchar(40) DEFAULT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (1,NULL,'support','admin','support@gmail.com','7b2212787a2af21f6239fc579f6975f75a809a35','4f4298e32eb2adebc3fffb6a952420070ee4834f','2011-04-08 07:53:40','2013-11-17 17:53:04',1,1);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (2,NULL,'hrd','Human Resources','hrd@gmail.com','534be876e5bcce565b58e01f49af6881652c59ef','ed6038fe4bfe2d9f921cebcaa97ee48022a41294','2011-04-12 06:55:25','2012-03-07 01:57:53',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (3,NULL,'regisrar','Registrar R Registrar','','4eb929467a483859bee9266838b9fde58f31a4a9','dae0c09586196169a256828b3c532399171e3d48','2014-01-14 17:26:24','2014-02-21 15:21:29',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (4,NULL,'finance','Finance F Finance','','af2497e90a3dd7293fcaf0949eb37170259f779d','a5a412331f0e3ebc2e8923e8641b961965bd8643','2014-01-14 17:50:05','2014-01-14 17:50:05',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (5,NULL,'test2','test2, test2 test2','test2','e9f7cc5843ac625b4ed6ecde280132a133533681','ae453700d0fd8c193379880a1bfe5427ac6808fd','2014-01-14 18:32:24','2014-01-14 18:32:24',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (6,NULL,'20142478','Raven, Mark I','','1888cddc7a6f8e02ac397ff5467b136f5b9496f8','9e6d621e7039baddffa34b404deea8fa348dbf1c','2014-01-14 18:35:57','2014-01-14 18:35:57',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (7,NULL,'registree','registree registree registree','registree','6a9be6429c376186b8ebc75e5d7a1237eeec94f8','0343d4c6d5293a6ee4e3fca007596cf3059c3f1c','2014-01-22 20:03:42','2014-01-22 20:03:42',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (8,NULL,'000001','Cruz, John Llyod','','a6a296dac8ec85f74987456399d0296138c9936f','2301829817fdf4f37926593f03adf63e55e0aa52','2014-01-23 12:32:51','2014-01-23 12:32:51',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (9,NULL,'000002','Alonzo, Bea Ana','','f0a3e53096c4f1d4df9875f7a40510ac54c04fbe','c1ca59139b2ba46adf72647dcba7ce47d4b44a42','2014-01-23 13:56:49','2014-01-23 13:56:49',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (10,NULL,'000003','Locsin, Angel Lee','','ea5370eb2b0485901f11cfc900823bf73b28351b','7257f5bfe2d3d345bb8a5fe9c1232ce9830cb168','2014-01-23 14:15:53','2014-01-23 14:15:53',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (11,NULL,'000004','Cruz, John Lloyd','','1b3388cf07362f3dbd4eef773bf0ae06a17a5b2e','e4a929372913ef896d8e2b0d17ab55478fb9f2e3','2014-01-23 14:29:11','2014-01-23 14:29:11',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (12,NULL,'registrar-1','Registrar R Registrar','','640ae8ff373817feee6a41505bc09e06d8498f86','cfda122cc28d80ad8d3673bc7a9f6c7206e2b64e','2014-01-23 15:42:37','2014-01-23 15:42:37',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (13,NULL,'finance-1','Finance F Finance','','1a51dac45fadfbfcfcc2c067bf8248edee221154','cf563ebe825f84f1838f8894a2c513e37752de22','2014-01-23 15:46:55','2014-01-23 15:46:55',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (14,NULL,'dean-1','Dean D Dean','','8f6865df99660f8e58d29ab029f5f96dd5b8774b','5ffe09ecaafd8a001076464d375b5ac57b808c9b','2014-01-23 15:48:42','2014-01-23 15:48:42',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (15,NULL,'cashier-1','Cashier C Cahier','','4bf4a5235416045ac959b7345bc47fa4e8aa2e04','c756b7243212688e71dbb6649f94af2ddf204af0','2014-01-23 15:50:23','2014-02-16 00:37:03',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (16,NULL,'president-1','President P President','','5ad6dd658206addc8bff6b4ae32eb33a26883e45','419d8adcb535cf4718eeba8d3f47ff24a7586460','2014-01-23 15:53:15','2014-01-23 15:53:15',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (17,NULL,'schooladmin-1','Admin S School','','1ed27f0a644828932a0571edf9364b895fcdabe1','80e56747474c705cb68daaf244bdd4b182e94d7a','2014-01-23 15:55:11','2014-01-23 15:55:11',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (18,NULL,'teachermakiling','Maria J Makiling','','14a7a237446c8d8fe2cd070bae83bb4ba2c9367d','e41a68ed6198981a42396f95a76e479ae41f18d8','2014-01-23 15:56:48','2014-01-23 15:56:48',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (19,NULL,'librarian-1','Librarian L Librarian','','a890e32b20cf306818cdd67134d49792f20c5b56','cd040c99a838301c236557a0d85be9787afd75a5','2014-01-23 15:58:51','2014-01-23 15:58:51',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (20,NULL,'custodian-1','custodian c custodian','','82a1d6b71d03926cfd65b5a78b9072a0336336e4','0029a9100af35017978d8b297192b55747435e49','2014-01-23 16:00:25','2014-01-23 16:00:25',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (21,NULL,'guidance-1','guidance g guidance','','f387131be971e8e1aec331713b23024265164572','1c4e0bf87a35e5ca690bc9fc7656761aca192a2a','2014-01-23 16:01:51','2014-01-23 16:01:51',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (22,NULL,'studentaffairs-1','affairs S student','','5a2fa25b10d997627c0e650a38e70e142f959a55','04b4e7c287d42c2be2e611c6c8f66357ea67fa83','2014-01-23 16:03:18','2014-01-23 16:03:18',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (23,NULL,'123456789','Polo, Marco C','','0bdad13f0157bd9e866b60128d607c65a5a7b48e','440c4f9d48710efe2251351bd93347af9046ff86','2014-01-23 16:36:07','2014-01-23 16:36:07',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (24,NULL,'12345612','genove, christine manzano','','24ea2440f87b8b2fd9ea97c0a4d5c44c35a0f466','84aa5f2463b6fc2311fd66cc7b45618989e29125','2014-01-24 09:33:04','2014-01-24 09:33:04',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (25,NULL,'Support1','Support Support Support','','032ef70dc8b509e2d7bbacc814c49aecb101ab16','aefa5ab722e66e582ae58265e5d80b1250e0abf3','2014-01-24 12:45:51','2014-01-24 12:45:51',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (26,NULL,'00000001','sly, sly sly','sly','c83bb6d1f5188a31f5da6b57accd1be51b4712d7','2aaa5f5be6ae5fe4ccb32f4cf03bebc5c65a0dda','2014-01-24 12:52:49','2014-01-24 12:52:49',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (27,NULL,'studentaffairs','studentaffairs studentaffairs studentaffairs','studentaffairs','236cdb1ebe7c0eefe5ddc827133fea1499e74a73','ad143118188d1bb2cd4f083ad6e7d5d557c63fc1','2014-01-27 17:40:40','2014-01-27 17:40:40',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (28,NULL,'00000002','foreign, foreign foreign','foreign','372ddc8b20ebf298d0e5af2dfde5a844d407d34f','55fa284a2fe490f697b53c9bdc71ce2aa9c9c86b','2014-01-28 14:07:08','2014-01-28 14:07:08',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (29,NULL,'00000003','american, american american','american','405234fe26fdb20f19d6f2f53118ff091a2c6bfd','163a0018badab72cd9514846b193128d8f33b512','2014-01-28 14:08:17','2014-01-28 14:08:17',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (30,NULL,'admin2','admin2 admin2 admin2','admin2','37f615e1fb1358b344584dd6b9a74077eb0f4c48','d507ff653e40f9aeb8f79da3deec078bc50cf71c','2014-01-28 17:42:43','2014-01-28 17:42:43',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (31,NULL,'00000004','ER-00000016, ER-00000016 ER-00000016','ER-00000016','ba9d7090273d0f2b1a30932712af3d17f8fcc9f5','e5c6c4b77c22c889325e0ffcc50ad254bccbf6f1','2014-01-28 21:46:33','2014-01-28 21:46:33',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (32,NULL,'00000005','ER-00000019, ER-00000019 ER-00000019','ER-00000019','6b25aec445c5ba42f48042adc225df66cbbd651c','dd86e53b7687c4b15f74650f53f9fa84699d3860','2014-01-28 22:04:19','2014-02-04 10:41:19',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (33,NULL,'00000006','ER-00000020, ER-00000020 ER-00000020','ER-00000020','0cfc09ed41b2aa51701e8fbccff5924db13b0f6b','83e521f1a13c56a26e60b9695f72279f14e4178e','2014-01-28 22:05:05','2014-01-28 22:05:05',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (34,NULL,'00000007','ER-00000021, ER-00000021 ER-00000021','ER-00000021','9046ba9586fe06abd5e014db4819c7cb933377b5','80fbaae93e2f68a37a30b5771f8e2be586f784a8','2014-01-28 22:14:22','2014-01-28 22:14:22',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (35,NULL,'00000008','ER-00000022, ER-00000022 ER-00000022','ER-00000022','5451acb0592e5a4f7ef152606c56194f5b3ee6aa','65f7031fe5c277b826f91fc1345206e95651a8ca','2014-01-28 22:15:38','2014-01-28 22:15:38',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (36,NULL,'00000009','secondyear, secondyear secondyear','secondyear','f77c5e50d86ee83f47adbc504b454e810613219f','49159bf2ce586da09a4b8032c06da34a5e844ecf','2014-02-03 10:48:57','2014-02-03 10:48:57',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (37,NULL,'00000010','thirdyear, thirdyear thirdyear','thirdyear','0695723539f73757f846ce0fc36071067cf6f5bc','525ae07cd0cd1ad372a2cf8fe465028edc452889','2014-02-03 10:49:57','2014-02-03 10:49:57',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (38,NULL,'00000011','fourthyear, fourthyear fourthyear','fourthyear','2b13d4bd7e902bf917b6c8033629167c38488fee','a9f3112f8b450ed196664464fc6cb946ea60599b','2014-02-03 10:50:53','2014-02-03 10:50:53',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (39,NULL,'00000012','elvies, elvies elvies','elvies','d64cea3cd2019dd687faaf011bf115e9c5676f1d','a7d2277c69e2e7f950fd07ac0b17fef5626055f7','2014-02-04 10:38:44','2014-02-04 10:38:44',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (40,NULL,'test','test test test','test','5c35899c70dbf39a392e946e42cd75fe324c25e3','c3fa38b3a4f87533650ee854a54d1f2eca387d43','2014-02-11 10:16:23','2014-02-11 10:16:23',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (41,NULL,'teacher-1','teacher-1 teacher-1 teacher-1','teacher-1','a3ac84fcfc9a1c5a27e02a22e2b87994d08d6483','641e72229d92776c03cd0d0b328777d60c055db5','2014-02-11 15:10:36','2014-02-11 15:10:36',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (42,NULL,'finance-2','finance-2 finance-2 finance-2','finance-2','e92d2e7ad996daaef9d8cb2dc20b1d2ee152e299','3230755a6ceffdd22a5db8a063e386d6d1439ff7','2014-02-21 14:33:06','2014-02-21 14:33:06',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (43,NULL,'00000014','Gilbert, Gilbert Gilbert','Gilbert','4b12c1762668be4985f507f6f3af684077e582bd','a47244a124a0058859667f7c345a3d2ab0e9b353','2014-03-18 18:35:06','2014-03-18 18:35:06',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (44,NULL,'00000015','Tomrex, Tomrex Tomrex','Tomrex','7a3de1ed97fd0b967a38dd7098c2b08cad9ac740','2b725e2dc07b85bb77f70fb203cd01fb1c638223','2014-03-18 18:41:26','2014-03-18 18:42:30',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (45,NULL,'00000016','gongong, gongong gongong','gongong','16537c4fd1a8c0e2c90bb0d45c267d5d6927f442','4236e47eb49f4e66e8f923d4de3bb2751bb53ee4','2014-03-18 18:46:10','2014-03-18 18:47:13',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (46,NULL,'00000017','lovelove, lovelove lovelove','lovelove','95d0621a6def265b394cb33e59f6e1c7bd32de88','cfb7491c7c92402903d28885f8f35935900def99','2014-03-18 18:48:19','2014-03-18 18:57:50',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (47,NULL,'00000018','huhu, huhu huhu','huhu','c56f92ca290db99547bea54ca6f3bc78a8774b51','7a90be97864ace64fb33788a3aafb968ec724d23','2014-03-18 19:02:24','2014-03-18 19:02:49',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (48,NULL,'00000019','july, july july','july','b27899674bc9f691ba94b29e5a0d0c72934e51c4','da0c6e0332b278cf75bd9141d6b0389251fa6dd1','2014-03-20 09:57:42','2014-03-20 09:57:42',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (49,NULL,'00000021','december, december december','december','2522f8ef1f014b45f8a78d3374cf0f55cf7f7256','e814c90d9409b223400421322d2d2f539c640887','2014-03-21 10:44:35','2014-03-21 10:51:29',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (50,NULL,'00000022','Finfin, Finfin Finfin','Finfin','2ff51e239955eb31daaaa8c14a4b1ca24e164760','32a52deda56047c89bc6904238ad3efdb4d98509','2014-03-21 11:05:12','2014-03-21 11:05:12',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (51,NULL,'00000023','sylver, sylver sylver','sylver','498a7e875e3fe736e04e5a14a1e62a7fc44c464c','2af3f33015b11f63308537fbf2db25771a61058e','2014-03-21 12:52:12','2014-03-21 12:52:12',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (52,NULL,'00000024','Ruby, Ruby Ruby','Ruby','85808c8e03426a5b3a6ce6efe4e23657bf7481d5','88addadae68f663d1bf59a93f67ef217790e0a43','2014-03-25 10:04:59','2014-03-25 10:04:59',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (53,NULL,'00000025','Test_22, Test_22 Test_22','Test_22','3485695f0b4caa0973a6c8b923481f433a4bd2aa','510b786b90b8e8712d6e215a56566bf497214506','2014-03-25 11:30:36','2014-03-25 11:30:36',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (54,NULL,'00000026','Dude_22, Dude_22 Dude_22','Dude_22','6ce95660e649eddade7a07cecbe6b43c31b8a22d','efcaf490d4d9eb2a4af19ce6368461c53fe64fed','2014-03-25 11:34:10','2014-03-25 11:34:10',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (55,NULL,'00000027','Sum_22, Sum_22 Sum_22','Sum_22','fba8650a26324850920b302f1f265693e604a9f6','74dd73b2f6508f0533c0ad12379a86be4e66e8f9','2014-03-25 13:50:40','2014-03-25 13:53:40',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (56,NULL,'00000028','Sum_22, Sum_22 Sum_22','Sum_22','94bee65f810618f655250a69ac7dc5a81ba09322','5939f692c868d4cd71c0f6744b9637e8049f4552','2014-03-25 13:55:32','2014-03-25 13:55:55',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (57,NULL,'00000029','Sum_22, Sum_22 Sum_22','Sum_22','d0b982210f6f9dc43c2a625e6b1ef244ecdf6b04','b16d71ef9c4ef65d2f192a62c7aceea6271ed10c','2014-03-25 13:56:36','2014-03-25 13:56:36',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (58,NULL,'00000030','Sum_22, Sum_22 Sum_22','Sum_22','44d86a4847d7adb6fd981b792c475cf950e5d651','c16218387ac1ea035cf598a8277565b1123312e4','2014-03-25 13:58:19','2014-03-25 13:58:19',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (59,NULL,'00000031','Sum_22, Sum_22 Sum_22','Sum_22','8f82e2f11bd5a7a9634f7db94b16385dab0428a4','26765d6465503b4301a412fa453f310c0bb56c3e','2014-03-25 14:01:45','2014-03-25 14:01:45',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (60,NULL,'00000032','Sum_22, Sum_22 Sum_22','Sum_22','07089ed3c480325dd8ba9832a90e557304bb1222','d460c35b9038eea4a4f087ca3d642ecacf09a8e9','2014-03-25 14:02:36','2014-03-25 14:02:36',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (61,NULL,'00000033','Sum_22, Sum_22 Sum_22','Sum_22','f59cc883e1624648cd6014b183987d06d0d571e6','faecf68e238db98c8334e4b7fac98a22ac8075a4','2014-03-25 14:04:13','2014-03-25 14:04:13',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (62,NULL,'00000034','Sum_22, Sum_22 Sum_22','Sum_22','1f22db762220c4383b822696b81856cb4672dd3b','44f10351e046d5426b85cebaa980684724dd0e95','2014-03-25 14:06:29','2014-03-25 14:06:29',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (63,NULL,'00000035','atom, atom atom','atom','9c7060a232af47d242e56b834d1739fcc01041f2','9b5029120125178dca22bdb9d9a1f9ca0a5dbc55','2014-03-25 15:15:46','2014-03-25 15:15:46',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (64,NULL,'00000036','genius, genius genius','genius','218518305af7fd101d9970fb97da95c28f07dda6','30c21fb84d8b38274677ffc12ba5e45337ef0a6b','2014-03-25 16:22:14','2014-03-25 16:22:14',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (65,NULL,'00000037','citycamp, citycamp citycamp','citycamp','8c6738c6ee74a0f227d1ec02715ee8d5d0c9c21e','0d938e300157465457afe702e09f7c2730959e84','2014-03-26 11:34:17','2014-03-26 11:34:17',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (66,NULL,'00000038','citydom, citydom citydom','citydom','44869be3c653d4331fed7c6f6586ca7a4f0c10f5','ed4c6d8f356d60bc34d1d0c80429b3094396f29b','2014-03-26 11:38:16','2014-03-26 11:38:16',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (67,NULL,'00000039','baguio, baguio baguio','baguio','fdb9aa9bcfc365ccd587da5af1104868e5df82f9','3a17052823ca3f604770cb7efbc736d9f45052c0','2014-03-26 19:00:58','2014-03-26 19:00:58',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (68,NULL,'00000040','jery, jery jery','jery','1faecc29b612ab074f687debe6dab7bc111a141c','59152e30dc7230a02b71f37cb6d79f30fac8f689','2014-03-27 14:49:07','2014-03-27 14:49:07',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (69,NULL,'00000041','jon, jon jon','jon','8455fdcbf952a814e02efc306be9b236ec8c393e','89f0e765e643fc8f543ff162d653c3c1165abb9d','2014-03-28 15:54:25','2014-03-28 15:54:25',1,0);
insert  into `users`(`id`,`employee_id`,`login`,`name`,`email`,`crypted_password`,`salt`,`created_at`,`updated_at`,`is_active`,`admin`) values (70,NULL,'00000042','songo, songo songo','songo','504b6715903bf386f0ddc9de15919c8e10d7b27d','936d10175af1e12266707d7d39c4b9b4f702c980','2014-03-28 19:05:58','2014-03-28 19:05:58',1,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
