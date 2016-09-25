CREATE DATABASE  IF NOT EXISTS `summerbreeze` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `summerbreeze`;
-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: summerbreeze
-- ------------------------------------------------------
-- Server version	5.7.9

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `CountryID` int(11) NOT NULL AUTO_INCREMENT,
  `CountryAbbr` varchar(3) NOT NULL,
  `CountryName` varchar(30) NOT NULL,
  PRIMARY KEY (`CountryID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'CAN','Canada'),(2,'USA','United States of America'),(3,'MEX','Mexico'),(4,'UK','United Kingdom');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(40) NOT NULL,
  `CustomerTitle` varchar(30) DEFAULT NULL,
  `Address1` varchar(60) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `StateID` int(11) NOT NULL,
  `CountryID` int(11) NOT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Email` varchar(60) NOT NULL,
  `IsActive` bit(1) NOT NULL,
  `ModifyBy` varchar(30) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CustomerID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (7,'Tom','Mr','1205 University Avenue','COLUMBIA',1,2,'65201','gokulnippani@gmail.com','','','2016-08-29 13:50:52','','2016-08-29 13:50:52'),(6,'Gokuuuuuuulllllll','Mr','1205 University Avenue','col',2,1,'65201','gokulnippani@gmail.com','','','2016-08-28 16:49:47','Gokul','2016-08-28 16:49:47'),(5,'Badrinath Chagalamarri Nippani','Mr','1205 University Avenue','1',1,3,'65201','gokulnippani@gmail.com','\0','Gokul','2016-08-28 16:48:31','Gokul','2016-08-28 16:48:31'),(8,'David','Mr','1205 University Avenue','COLUMBIA',3,2,'65201','gokulnippani@gmail.com','','','2016-08-29 13:51:53','','2016-08-29 13:51:53'),(9,'Gokul Chagalamarri Nippani','','1205 University Avenue','COLUMBIA',2,2,'65201','gokulnippani@gmail.com','\0','','2016-08-29 14:48:46','','2016-08-29 14:48:46'),(10,'Nippaniii','Mr','1205 University Avenue','COLUMBIA',2,3,'65201','gokulnippani@gmail.com','','','2016-08-29 14:49:33','','2016-08-29 14:49:33'),(11,'Gokul Chagalamarri Nippani','Mr','1205 University Avenue','COLUMBIA',2,3,'65201','gokulnippani@gmail.com','\0','','2016-08-29 19:57:17','','2016-08-29 19:57:17'),(12,'Shashank','Mr','1205 University Avenue','COLUMBIA',1,3,'65201','gcg@nckc.bc','\0','','2016-08-29 21:28:24','','2016-08-29 21:28:24'),(13,'Gokul Chagalamarri Nippani','Mr','22-975/5,Kameswar nagar','COLUMBIA',1,2,'517001','gokulnippani@gmail.com','','','2016-08-30 09:29:42','','2016-08-30 09:29:42'),(14,'Gokul Chagalamarri Nippani','Mr','1205 University Avenue','1',3,2,'65201','gokulnippani@gmail.com','','Gokul','2016-08-30 09:31:33','','2016-08-30 09:31:33'),(15,'Chris','Mr','St. Chaarles','COLUMBIA',1,4,'65201','ggg@mail.miss.edu','','Gokul','2016-08-30 09:36:13','Gokul','2016-08-30 09:36:13'),(16,'RRobert','Mr','1205 University Avenue','CHITTOOR',3,3,'65201','gokulnippani@gmail.com','','Gokul','2016-08-30 09:44:15','Gokul','2016-08-30 09:44:15'),(17,'Tim','Mr','10111	Rd Carmen','Cupertino',3,2,'95014','tinkuakshaykumar@gmail.com','','Gokul','2016-08-30 09:45:40','Gokul','2016-08-30 09:45:40'),(18,'Gokul Chagalamarri Nippani','Mr','1205 University Avenue','CHITTOOR',4,2,'65201','gokulnippani@gmail.com','','gokul','2016-08-30 10:29:17','gokul','2016-08-30 10:29:17');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `StateID` int(11) NOT NULL AUTO_INCREMENT,
  `StateName` varchar(40) NOT NULL,
  `StateAbbr` varchar(2) NOT NULL,
  PRIMARY KEY (`StateID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Alberta','AB'),(2,'Alaska','AK'),(3,'Alabama','AL'),(4,'Arkansas','AR'),(5,'Arizona','AZ');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-20 16:46:25
