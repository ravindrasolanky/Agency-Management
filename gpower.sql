/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - gpower
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`gpower` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `gpower`;

/*Table structure for table `dealer` */

DROP TABLE IF EXISTS `dealer`;

CREATE TABLE `dealer` (
  `id` int(10) NOT NULL auto_increment,
  `company` varchar(100) NOT NULL,
  `city` varchar(20) default NULL,
  `salesman` varchar(30) default NULL,
  `mobile` varchar(10) default NULL,
  `address` varchar(120) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `dealer` */

insert  into `dealer`(`id`,`company`,`city`,`salesman`,`mobile`,`address`) values (1,'radheraj',NULL,NULL,NULL,NULL),(2,'savain ele',NULL,NULL,NULL,NULL),(3,'rj','jalore','raj','8233023384','godiji'),(4,'sanmati parbatsar',NULL,NULL,NULL,NULL);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `userid` int(10) NOT NULL auto_increment,
  `username` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`userid`,`username`,`password`) values (1,'rks2827','rks2827'),(2,'kab89','kab456'),(3,'ravi','ravi'),(4,'ravi123','ravi123'),(6,'crb','crb123'),(7,'raj12','r234'),(8,'rocky123','r1234'),(9,'samir123','s1231'),(10,'crb123','c123'),(11,'raj','2345'),(12,'parbat123','pk123'),(13,'ravi900','tjki'),(14,'moti34','2345');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `productId` int(20) NOT NULL,
  `name` varchar(100) default NULL,
  `company` varchar(100) default NULL,
  `other` varchar(150) default NULL,
  `quantity` int(10) default NULL,
  `price` float default NULL,
  PRIMARY KEY  (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`productId`,`name`,`company`,`other`,`quantity`,`price`) values (6982841,'bulb','kc kundan','',73,20);

/*Table structure for table `purchase` */

DROP TABLE IF EXISTS `purchase`;

CREATE TABLE `purchase` (
  `productId` int(10) NOT NULL,
  `name` varchar(100) default NULL,
  `company` varchar(100) default NULL,
  `other` varchar(100) default NULL,
  `quantity` int(20) default NULL,
  `price` double default NULL,
  `seller` varchar(100) default NULL,
  `total amount` double default NULL,
  `date` varchar(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchase` */

insert  into `purchase`(`productId`,`name`,`company`,`other`,`quantity`,`price`,`seller`,`total amount`,`date`) values (6982841,'bulb','kc kundan','',12,210,'dj',NULL,NULL),(6982841,'bulb','kc kundan','',10,20,'kc ',NULL,NULL),(6982841,'bulb','kc kundan','',15,300,'kc ',0,NULL),(6982841,'bulb','kc kundan','',20,110,'rj electric',0,NULL),(6982841,'bulb','kc kundan','',18,48.5,'rj electric',873,NULL),(6982841,'bulb','kc kundan','',5,8,'sparks Seller',40,'Tue Sep 30 23:23:28 IST 2014');

/*Table structure for table `sales` */

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `productId` int(10) NOT NULL,
  `name` varchar(100) default NULL,
  `company` varchar(100) default NULL,
  `other` varchar(100) default NULL,
  `quantity` int(20) default NULL,
  `price` float default NULL,
  `dealer` varchar(100) default NULL,
  `total amount` float default NULL,
  `discount` float default NULL,
  `payment` float default NULL,
  `date` varchar(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sales` */

insert  into `sales`(`productId`,`name`,`company`,`other`,`quantity`,`price`,`dealer`,`total amount`,`discount`,`payment`,`date`) values (6982841,'bulb','kc kundan','',12,210,'dj',NULL,NULL,NULL,NULL),(6982841,'bulb','kc kundan','',10,20,'kc ',NULL,NULL,NULL,NULL),(6982841,'bulb','kc kundan','',15,300,'kc ',0,NULL,NULL,NULL),(6982841,'bulb','kc kundan','',20,110,'rj electric',0,NULL,NULL,NULL),(6982841,'bulb','kc kundan','',18,48.5,'rj electric',873,NULL,NULL,NULL),(6982841,'bulb','kc kundan','',13,50.5,'radheraj',656.5,NULL,NULL,NULL),(6982841,'bulb','kc kundan','',8,120,'radheraj',960,0,916.8,NULL),(6982841,'bulb','kc kundan','',5,120,'radheraj',600,2,588,NULL),(6982841,'bulb','kc kundan','',5,20,'radheraj',100,5,95,'Tue Sep 30 23:30:02 IST 2014');

/*Table structure for table `seller` */

DROP TABLE IF EXISTS `seller`;

CREATE TABLE `seller` (
  `id` int(10) NOT NULL auto_increment,
  `company` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `seller` */

insert  into `seller`(`id`,`company`) values (1,'kc '),(2,'rj electric'),(3,'dj'),(4,'sparks Seller');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
