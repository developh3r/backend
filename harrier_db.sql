-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.36-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema harrier_db
--

CREATE DATABASE IF NOT EXISTS harrier_db;
USE harrier_db;

--
-- Definition of table `tbllogin`
--

DROP TABLE IF EXISTS `tbllogin`;
CREATE TABLE `tbllogin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogin`
--

/*!40000 ALTER TABLE `tbllogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllogin` ENABLE KEYS */;


--
-- Definition of table `tbllogs`
--

DROP TABLE IF EXISTS `tbllogs`;
CREATE TABLE `tbllogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `phrase_id` int(10) unsigned NOT NULL,
  `notes` text NOT NULL,
  `emotions` varchar(100) NOT NULL,
  `accuracy` float NOT NULL,
  `datetime` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogs`
--

/*!40000 ALTER TABLE `tbllogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllogs` ENABLE KEYS */;


--
-- Definition of table `tblphrase`
--

DROP TABLE IF EXISTS `tblphrase`;
CREATE TABLE `tblphrase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phrase` varchar(100) NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblphrase`
--

/*!40000 ALTER TABLE `tblphrase` DISABLE KEYS */;
INSERT INTO `tblphrase` (`id`,`phrase`,`category`) VALUES 
 (1,'I love me!',''),
 (2,'I am Ok!',''),
 (3,'I am enough!',''),
 (4,'I can do it!',''),
 (5,'I love my body!',''),
 (6,'I am perfect the way I am!',''),
 (7,'I am strong!',''),
 (8,'With the body I have, I can experience joy and happiness. ',''),
 (9,'I am pretty!',''),
 (10,'I am special!',''),
 (11,'I respect myself!',''),
 (12,'I am kind!',''),
 (13,'I am sexy!',''),
 (14,'I am proud of myself!',''),
 (15,'I am valuable and worthy!',''),
 (16,'I make a difference to this world!',''),
 (17,'This too shall pass!',''),
 (18,'Everything will be OK in the end. If it’s not OK, it’s not the end!',''),
 (19,'I am grateful!',''),
 (20,'Do not settle for less.',''),
 (21,'I am born extraordinary',''),
 (22,'You are blessed.',''),
 (23,'Be yourself.',''),
 (24,'I look good today!',''),
 (25,'I can handle this.',''),
 (26,'I am amazing.',''),
 (27,'I am thankful to be alive.',''),
 (28,'Every day I get more and more confident in myself and my abilities.',''),
 (29,'I accept myself for who I am.',''),
 (30,'I am confident in what life has planned for me.',''),
 (31,'I\'m proud of who I am.',''),
 (32,'I trust myself.',''),
 (33,'I am deserving','');
/*!40000 ALTER TABLE `tblphrase` ENABLE KEYS */;


--
-- Definition of table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE `tbluser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
