-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: proj1
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `jpreg`
--

DROP TABLE IF EXISTS `jpreg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jpreg` (
  `userid` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phoneno` varchar(45) DEFAULT NULL,
  `mobileno` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `emailid` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `chouseno` varchar(45) DEFAULT NULL,
  `cstreetname` varchar(45) DEFAULT NULL,
  `ccity` varchar(45) DEFAULT NULL,
  `cstate` varchar(45) DEFAULT NULL,
  `ccountry` varchar(45) DEFAULT NULL,
  `cpincode` varchar(45) DEFAULT NULL,
  `phouseno` varchar(45) DEFAULT NULL,
  `pstreetname` varchar(45) DEFAULT NULL,
  `pcity` varchar(45) DEFAULT NULL,
  `pstate` varchar(45) DEFAULT NULL,
  `pcountry` varchar(45) DEFAULT NULL,
  `ppincode` varchar(45) DEFAULT NULL,
  `Trno` int(11) DEFAULT NULL,
  `vehiclecolor` varchar(45) DEFAULT NULL,
  `typeofvehicle` varchar(45) DEFAULT NULL,
  `vehiclemake` varchar(45) DEFAULT NULL,
  `typeofusc` varchar(45) DEFAULT NULL,
  `chasisno` int(11) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpreg`
--

LOCK TABLES `jpreg` WRITE;
/*!40000 ALTER TABLE `jpreg` DISABLE KEYS */;
INSERT INTO `jpreg` VALUES (143,'MANOJ','143','8767890','6789','2018-11-09','manojr@gmail.com',20,'male','12','raghu','blore','karn','india','560062','12','raghu','blore','karn','india','560062',1111,'blue','maruthi','sicliaa','scdew',143,NULL),(1111,'harry','1234','08330973372','8444','2020-04-04','hari@gmail.com',20,'male','87',' madhava Nagar','Kurnool','Andhra Pradesh','India','518002','4224','blore','Kurnool','Andhra Pradesh','India','518002',1332,'blue','scoda','metal','scdew',1231,NULL),(1212,'hi','123','8330973372','83309','2018-11-15','hari@gmail.com',20,'male','90','raghu','blore','karn','india','518002','90','raghu','blore','karn','india','518002',111,'blue','scoda','metal','tyui',6789,'blore'),(1232,'hari','','08330973372','8330973','2020-03-03','hari@gmail.com',20,'male','87',' madhava Nagar','Kurnool','Andhra Pradesh','India','518002','4224','blore','Kurnool','Andhra Pradesh','India','518002',4,'blue','scoda','metal','scdew',1231,NULL),(1233,'harry','1234',NULL,NULL,'2020-04-04','hari@gmail.com',NULL,'male','87',' madhava Nagar','Kurnool','Andhra Pradesh','India','518002','4224','blore','Kurnool','Andhra Pradesh','India','518002',1332,NULL,NULL,NULL,NULL,1231,NULL),(5454,'harry','1234',NULL,NULL,'2020-04-04','hari@gmail.com',NULL,'male','87',' madhava Nagar','Kurnool','Andhra Pradesh','India','518002','4224','blore','Kurnool','Andhra Pradesh','India','518002',1332,NULL,NULL,NULL,NULL,1231,NULL),(8080,'hi','123','78832679','1234','2018-11-14','hari@gmail.com',20,'male','87','raghu','blore','karn','india','518002','4224','raghu','blore','karn','india','518002',121,'blue','maruthi','metal','scdew',1231,'banglore'),(8888,'hiee','123','8330973372','8330','2018-11-08','hari@gmail.com',20,'male','87','raghuvanahalli','blore','karn','india','560062','87','raghuvanahalli','blore','karn','india','560062',111,'green','innov','steel','8765',98723,'blore');
/*!40000 ALTER TABLE `jpreg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-06 10:53:29
