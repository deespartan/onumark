/* Copyright @ onumark 2015. All rights reserved.

SQLyog Community v9.20 
MySQL - 5.5.13 : Database - onumark
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`onumark` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `onumark`;

/*Table structure for table `onumark_affiliates` */

DROP TABLE IF EXISTS `onumark_affiliates`;

CREATE TABLE `onumark_affiliates` (
  `Id` int(50) NOT NULL AUTO_INCREMENT,
  `affiliate_name` varchar(50) NOT NULL,
  `affiliate_url` varchar(200) DEFAULT NULL,
  `affiliate_image_locator` varchar(100) DEFAULT NULL,
  `onumark_affiliate_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`,`affiliate_name`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `onumark_offers` */

DROP TABLE IF EXISTS `onumark_offers`;

CREATE TABLE `onumark_offers` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `product_offer` varchar(100) NOT NULL,
  `affiliate_link` int(50) DEFAULT NULL,
  `isActivate` tinyint(1) DEFAULT NULL,
  `product_link` varchar(200) DEFAULT NULL,
  `offer_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`,`product_offer`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `Id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`,`username`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

