-- MySQL dump 10.11
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.0.95

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
-- Table structure for table `Accountant`
--

DROP TABLE IF EXISTS `Accountant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accountant` (
  `Name` varchar(20) default NULL,
  `Ssn` char(5) NOT NULL default '',
  `Address` varchar(30) default NULL,
  `Fees` int(11) default NULL,
  `Username` varchar(30) default NULL,
  `Password` varchar(20) default NULL,
  PRIMARY KEY  (`Ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accountant`
--

LOCK TABLES `Accountant` WRITE;
/*!40000 ALTER TABLE `Accountant` DISABLE KEYS */;
INSERT INTO `Accountant` VALUES ('hi','12345','fgdsgsd',213,'hi','hi');
/*!40000 ALTER TABLE `Accountant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Admin`
--

DROP TABLE IF EXISTS `Admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Admin` (
  `Username` varchar(40) default NULL,
  `Password` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin`
--

LOCK TABLES `Admin` WRITE;
/*!40000 ALTER TABLE `Admin` DISABLE KEYS */;
INSERT INTO `Admin` VALUES ('mahavir','mahavir');
/*!40000 ALTER TABLE `Admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BANK`
--

DROP TABLE IF EXISTS `BANK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BANK` (
  `Bank_Code` varchar(10) NOT NULL default '',
  `Name` varchar(30) default NULL,
  `Branch` varchar(30) default NULL,
  PRIMARY KEY  (`Bank_Code`),
  KEY `BANK` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BANK`
--

LOCK TABLES `BANK` WRITE;
/*!40000 ALTER TABLE `BANK` DISABLE KEYS */;
INSERT INTO `BANK` VALUES ('1','P.N.B','Bhoora'),('10','UCO BANK','Shamli'),('11','P.N.B','Kairana'),('12','S.B.I','Kairana'),('1234','kapil1','kapil1'),('13','Kenara','Kairana'),('14','INDIAN BANK','Kairana'),('15','UCO BANK','Kairana'),('16','P.N.B','Babri'),('17','S.B.I','Babri'),('18','Kenara','Babri'),('19','INDIAN BANK','Babri'),('2','S.B.I','Bhoora'),('20','UCO BANK','Babri'),('21','P.N.B','Kandhla'),('2112','kapilp2','ka'),('22','S.B.I','Kandhla'),('23','Kenara','Kandhla'),('24','INDIAN BANK','Kandhla'),('25','UCO BANK','Kandhla'),('26','Allahabad Bank','Shamli'),('3','Kenara','Bhoora'),('4','INDIAN BANK','Bhoora'),('5','UCO BANK','Bhoora'),('6','P.N.B','Shamli'),('7','S.B.I','Shamli'),('8','Kenara','Shamli'),('9','INDIAN BANK','Shamli');
/*!40000 ALTER TABLE `BANK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Booking`
--

DROP TABLE IF EXISTS `Booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Booking` (
  `user` int(11) NOT NULL,
  `confirmedBy` int(11) NOT NULL,
  `madeAt` time NOT NULL,
  `madeOn` date NOT NULL,
  `roomId` int(11) NOT NULL,
  `status` int(11) NOT NULL default '0',
  `description` varchar(300) default NULL,
  `Start_Date` date NOT NULL default '0000-00-00',
  `End_Date` date NOT NULL default '0000-00-00',
  `Start_Time` time NOT NULL default '00:00:00',
  `End_Time` time NOT NULL default '00:00:00',
  `Repeat_Type` char(9) NOT NULL default 'None',
  `booking_id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`booking_id`),
  UNIQUE KEY `booking_id` (`booking_id`),
  KEY `user` (`user`),
  KEY `confirmedBy` (`confirmedBy`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Booking`
--

LOCK TABLES `Booking` WRITE;
/*!40000 ALTER TABLE `Booking` DISABLE KEYS */;
INSERT INTO `Booking` VALUES (2,2,'23:57:43','2011-11-17',1,1,'to delete others bookign','2011-11-18','2011-11-20','00:00:00','07:00:00','DAILY',8),(1,1,'17:34:41','2011-11-19',1,1,'dumb c','2011-11-19','2011-11-19','23:00:00','24:00:00','DAILY',11),(1,2,'00:03:56','2011-11-18',6,1,'adslfaf','2011-11-18','2011-11-18','08:00:00','09:30:00','DAILY',9),(9,5,'16:19:50','2011-11-22',1,0,'Exam.','2011-11-23','2011-11-30','16:00:00','19:00:00','DAILY',34),(1,1,'17:35:26','2011-11-19',1,1,'dumb c','2011-11-19','2011-11-19','23:00:00','24:00:00','DAILY',12),(1,1,'14:37:42','2011-11-20',5,1,'adf','2011-11-20','2011-11-20','21:00:00','23:30:00','DAILY',13),(1,1,'14:41:40','2011-11-20',11,1,'fff','2011-11-20','2011-11-20','21:30:00','23:00:00','DAILY',14),(1,2,'19:50:35','2011-11-20',1,0,'first ','2011-11-21','2011-11-21','05:00:00','05:30:00','DAILY',17),(2,2,'20:31:04','2011-11-20',1,1,'second','2011-11-21','2011-11-21','07:30:00','08:00:00','DAILY',18),(2,2,'20:31:41','2011-11-20',1,0,'morini','2011-11-21','2011-11-21','00:00:00','01:30:00','DAILY',19),(2,2,'20:32:29','2011-11-20',1,1,'colide','2011-11-21','2011-11-21','05:30:00','06:00:00','DAILY',20),(2,2,'20:32:54','2011-11-20',1,1,'asf','2011-11-21','2011-11-21','21:30:00','24:00:00','DAILY',21),(1,2,'02:45:31','2011-11-21',5,0,'sfasf','2011-11-21','2011-11-21','06:30:00','09:00:00','DAILY',22),(1,2,'02:48:08','2011-11-21',1,0,'asf;lakf','2011-11-21','2011-11-21','15:30:00','17:30:00','DAILY',23),(1,2,'07:13:15','2011-11-21',1,0,'asdf','2011-11-21','2011-11-21','08:00:00','15:30:00','DAILY',24),(1,2,'02:43:03','2011-11-22',6,0,'asdf','2011-11-22','2011-11-22','14:30:00','23:59:59','DAILY',25),(1,2,'02:44:42','2011-11-22',8,0,'ff','2011-11-26','2011-11-28','06:30:00','09:00:00','DAILY',26),(1,2,'02:50:06','2011-11-22',1,0,'fff','2011-11-22','2011-11-22','07:00:00','08:30:00','DAILY',27),(1,5,'14:30:22','2011-11-22',1,0,'Elocution Competition.','2011-11-22','2011-11-22','19:00:00','22:30:00','DAILY',28),(1,5,'15:59:19','2011-11-24',1,0,'DISCO PARTY','2011-11-25','2011-11-25','16:00:00','17:30:00','DAILY',38),(1,2,'00:00:00','0000-00-00',5,0,'asdfj','2011-11-18','2011-11-18','09:00:00','09:30:00','DAILY',30),(1,2,'00:00:00','0000-00-00',5,0,'asdfj','2011-11-20','2011-11-20','09:00:00','09:30:00','DAILY',31),(1,5,'16:41:32','2011-11-22',5,0,'Tute','2011-11-22','2011-11-22','17:30:00','22:00:00','WEEKLY',35),(1,5,'16:42:37','2011-11-22',1,0,'Algorithm Tute','2011-11-23','2011-11-24','15:00:00','18:00:00','DAILY',36),(1,5,'16:42:37','2011-11-22',1,0,'Algorithm Tute','2011-11-27','2011-11-30','15:00:00','18:00:00','DAILY',37),(1,7,'06:55:26','2012-04-25',1,0,'kjhkl','2012-04-26','2012-04-28','08:00:00','08:30:00','DAILY',39),(1,8,'08:28:59','2012-04-26',5,0,'sport','2012-04-28','2012-04-30','09:00:00','16:00:00','DAILY',40),(1,5,'00:02:51','2012-08-28',5,0,'xyz','2012-08-28','2012-08-28','09:00:00','11:00:00','DAILY',41);
/*!40000 ALTER TABLE `Booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Building`
--

DROP TABLE IF EXISTS `Building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Building` (
  `buildId` int(11) NOT NULL auto_increment,
  `buildingName` varchar(30) default NULL,
  PRIMARY KEY  (`buildId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Building`
--

LOCK TABLES `Building` WRITE;
/*!40000 ALTER TABLE `Building` DISABLE KEYS */;
INSERT INTO `Building` VALUES (1,'Nilgiri'),(2,'Vindhya'),(3,'Himalayas'),(4,'AnkushJain');
/*!40000 ALTER TABLE `Building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CENTER`
--

DROP TABLE IF EXISTS `CENTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CENTER` (
  `Center_Code` varchar(10) NOT NULL default '',
  `Name` varchar(30) default NULL,
  PRIMARY KEY  (`Center_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CENTER`
--

LOCK TABLES `CENTER` WRITE;
/*!40000 ALTER TABLE `CENTER` DISABLE KEYS */;
INSERT INTO `CENTER` VALUES ('11','Mill Gate'),('13','Jasala'),('15','Kairana'),('21','Malak Pur5'),('28','Bhainswal'),('35','Taprana'),('37','Jhinjhana'),('42','Mayapuri'),('4251','kapilKUAM'),('43','Razad'),('45','Odri Jainpur'),('52','Jalalpur'),('55','Sikka'),('63','Lakh'),('76','Peerkheda'),('78','Kishorepur'),('89091aassa','kapil1aassa');
/*!40000 ALTER TABLE `CENTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `catId` int(11) NOT NULL auto_increment,
  `catName` varchar(30) NOT NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`catId`),
  UNIQUE KEY `catName` (`catName`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'Projector_Room',NULL),(2,'AC',NULL),(3,'Teach_lab',NULL),(6,'Public Addressing System','Speakers'),(7,'',''),(8,'Mosquitos','Buuz buuz');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DaySlots`
--

DROP TABLE IF EXISTS `DaySlots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DaySlots` (
  `slot` varchar(20) NOT NULL,
  `starttime` varchar(10) NOT NULL,
  `endtime` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DaySlots`
--

LOCK TABLES `DaySlots` WRITE;
/*!40000 ALTER TABLE `DaySlots` DISABLE KEYS */;
INSERT INTO `DaySlots` VALUES ('MORNING','08:00:00','13:00:00'),('AFTERNOON','14:00:00','18:00:00'),('EVENING','18:00:00','22:00:00');
/*!40000 ALTER TABLE `DaySlots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Department` (
  `Dept_id` int(11) NOT NULL default '0',
  `Dept_number` int(11) default NULL,
  `Dept_name` varchar(20) default NULL,
  `Hod_ssn` char(5) default NULL,
  PRIMARY KEY  (`Dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES (12,32,'him','12345'),(13,123,'blood','23456');
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Doctor` (
  `Name` varchar(30) default NULL,
  `Salary` int(11) default NULL,
  `Age` int(11) default NULL,
  `Sex` varchar(6) default NULL,
  `Ssn` char(5) NOT NULL default '',
  `Address` varchar(30) default NULL,
  `Speciality` varchar(20) default NULL,
  `Dept` int(11) default NULL,
  `Patients_ssn` char(5) default NULL,
  `Username` varchar(40) default NULL,
  `Password` varchar(20) default NULL,
  PRIMARY KEY  (`Ssn`),
  KEY `Dept` (`Dept`),
  CONSTRAINT `Doctor_ibfk_1` FOREIGN KEY (`Dept`) REFERENCES `Department` (`Dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
INSERT INTO `Doctor` VALUES ('him',121,122,'male','12321','nvdslvmfdl','heart',12,'NULL','him','him'),('raju',1,12,'male','22345','nlknll','heart',13,'NULL','raju','raju'),('sumol',1323,12,'male','34567','nvioenrbkl','nvoinr',12,'NULL','sum','sum');
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ESTIMATE`
--

DROP TABLE IF EXISTS `ESTIMATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ESTIMATE` (
  `Farmer_Name` varchar(30) NOT NULL default '',
  `Farmer_Code` varchar(10) NOT NULL default '',
  `Estimate_Qty` varchar(25) default NULL,
  PRIMARY KEY  (`Farmer_Code`),
  KEY `Farmer_Name` (`Farmer_Name`),
  CONSTRAINT `ESTIMATE_ibfk_1` FOREIGN KEY (`Farmer_Code`) REFERENCES `FARMER` (`Farmer_Code`) ON UPDATE CASCADE,
  CONSTRAINT `ESTIMATE_ibfk_2` FOREIGN KEY (`Farmer_Name`) REFERENCES `FARMER` (`Name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ESTIMATE`
--

LOCK TABLES `ESTIMATE` WRITE;
/*!40000 ALTER TABLE `ESTIMATE` DISABLE KEYS */;
INSERT INTO `ESTIMATE` VALUES ('PITAM','10','410.891'),('VEER SINGHW','102','4500'),('KISHANA','11','300'),('AJAB SINGH','12','260'),('CHHOTE SINGH','13','310'),('ILAM CHAND','14','150'),('NAHAR SINGH','15','324.98'),('SUNDU','16','120.67'),('DHARAM PAL','17','190'),('OM PRAKASH','18','230'),('BARU2','19','800'),('BIJENDRA','2','200'),('ABHEY RAM','3','600.56'),('DHARA','4','400.67'),('DESH PAL','5','210.9'),('RAM PAL','6','450.657'),('LALCHAND','7','134'),('CHANDRA VEER','8','270.23'),('HUKMA','9','200');
/*!40000 ALTER TABLE `ESTIMATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `Username` varchar(40) default NULL,
  `Password` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES ('mach18','mach18');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Expenditure`
--

DROP TABLE IF EXISTS `Expenditure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Expenditure` (
  `Exp_id` int(11) NOT NULL default '0',
  `Amount` int(11) default NULL,
  `Exp_type` varchar(10) default NULL,
  PRIMARY KEY  (`Exp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Expenditure`
--

LOCK TABLES `Expenditure` WRITE;
/*!40000 ALTER TABLE `Expenditure` DISABLE KEYS */;
/*!40000 ALTER TABLE `Expenditure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FARMER`
--

DROP TABLE IF EXISTS `FARMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FARMER` (
  `Bank_Code` varchar(10) default NULL,
  `Name` varchar(30) default NULL,
  `Father_Name` varchar(30) default NULL,
  `Center_Code` varchar(10) default NULL,
  `Village_Code` varchar(10) default NULL,
  `Bank_Account_No` varchar(20) default NULL,
  `Farmer_Code` varchar(10) NOT NULL default '',
  `Phone_Number` varchar(20) NOT NULL,
  PRIMARY KEY  (`Farmer_Code`),
  KEY `Center_Code` (`Center_Code`),
  KEY `Village_Code` (`Village_Code`),
  KEY `Bank_Code` (`Bank_Code`),
  KEY `Phone_Number` (`Phone_Number`),
  KEY `Name` (`Name`),
  KEY `Bank_Account_No` (`Bank_Account_No`),
  CONSTRAINT `FARMER_ibfk_1` FOREIGN KEY (`Center_Code`) REFERENCES `CENTER` (`Center_Code`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FARMER_ibfk_2` FOREIGN KEY (`Village_Code`) REFERENCES `VILLAGE` (`Village_Code`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FARMER_ibfk_3` FOREIGN KEY (`Bank_Code`) REFERENCES `BANK` (`Bank_Code`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FARMER`
--

LOCK TABLES `FARMER` WRITE;
/*!40000 ALTER TABLE `FARMER` DISABLE KEYS */;
INSERT INTO `FARMER` VALUES ('13','PITAM','TIRKHA','37','1131','1822000100300180','10','09548684697'),('3','VEER SINGHW','DHARMA12','11','1103','1822000100300089','102','09358640898'),('12','KISHANA','AASHA','37','1139','0424000300157437','11','09411033824'),('25','AJAB SINGH','AASHA RAM','78','1122','1822000100300223','12','09837850694'),('11','CHHOTE SINGH','KHASA RAM','37','1137','1822000100300269','13','01398256020'),('25','ILAM CHAND','BAKSI','37','1123','1822000100300287','14','09219113512'),('15','NAHAR SINGH','MALKHAN','52','1142','1822000100300311','15','01398259552'),('8','SUNDU','DALIP','43','1122','1822000100300320','16','09259107173'),('1','DHARAM PAL','UMARAO','78','1130','1822000100300357','17','09837845342'),('5','OM PRAKASH','BHAVAR SINGH','52','1128','1822000100300436','18','09457133258'),('12','BARU2','KALU','63','1139','1822000100300427','19','09760666544'),('3','BIJENDRA','NARAYAN','13','1103','1822000100300029','2','09411813910'),('7','ABHEY RAM','MANGU','35','1129','1822000100300038','3','09548684697'),('13','DHARA','HARGYAN','78','1154','1822000100300047','4','09639739259'),('12','DESH PAL','NIRANJAN','78','1130','1822000100300056','5','09012360057'),('8','RAM PAL','BRAHAM SINGH','76','1123','1822000100300065','6','01398259703'),('10','LALCHAND','BALLA','37','1129','1822000100300065','7','09927628661'),('8','CHANDRA VEER','PITAM SINGH','37','1130','1822000100300083','8','01398256020'),('18','HUKMA','CHAJJU','42','1108','1822000100300092','9','09837445456');
/*!40000 ALTER TABLE `FARMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Feedback_Form`
--

DROP TABLE IF EXISTS `Feedback_Form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Feedback_Form` (
  `Name` char(50) default NULL,
  `Email_id` varchar(50) default NULL,
  `Comment` varchar(200) default NULL,
  `Time` timestamp NOT NULL default CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Feedback_Form`
--

LOCK TABLES `Feedback_Form` WRITE;
/*!40000 ALTER TABLE `Feedback_Form` DISABLE KEYS */;
INSERT INTO `Feedback_Form` VALUES ('kapil','','Gud','2012-11-09 16:30:26'),('Nehal','','Rocks\r\n','2012-11-09 16:31:13'),('Ankush','','Partner','2012-11-09 16:51:00'),('alkjsa','','jkashdsaj\r\n','2012-11-09 16:51:12'),('asdsaasd','','sdasda','2012-11-09 16:51:16'),('wqewqw','','wqeewq','2012-11-09 16:51:20'),('wqewqwe','','qwewqe','2012-11-09 16:51:26'),('adsadasas','','asddsa','2012-11-09 16:51:47'),('aadsjsah','','kjhads','2012-11-09 16:51:54'),('oqwpowi','','OIuiuio\r\n','2012-11-09 16:52:16'),('fwe','','rwere','2012-11-09 16:52:27');
/*!40000 ALTER TABLE `Feedback_Form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `groupName` varchar(200) default NULL,
  `level` int(2) NOT NULL,
  PRIMARY KEY  (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES ('Student',0),('Parliament',1),('Acad Office',2),('SLC Chair',3),('Dean Academics',4),('Manager (Admin)',5),('TA',6),('Faculty',7);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Income`
--

DROP TABLE IF EXISTS `Income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Income` (
  `Income_id` int(11) NOT NULL default '0',
  `Amount` int(11) default NULL,
  `Income_type` varchar(10) default NULL,
  PRIMARY KEY  (`Income_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Income`
--

LOCK TABLES `Income` WRITE;
/*!40000 ALTER TABLE `Income` DISABLE KEYS */;
INSERT INTO `Income` VALUES (0,323,''),(1212,22321,'donation');
/*!40000 ALTER TABLE `Income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Instances`
--

DROP TABLE IF EXISTS `Instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Instances` (
  `reqNo` int(11) NOT NULL default '0',
  `hash` varchar(100) default NULL,
  `creator` varchar(25) default NULL,
  `creatorEmail` varchar(50) default NULL,
  `creatorPhone` varchar(15) default NULL,
  `concernedPName` varchar(15) default NULL,
  `concernedPEmail` varchar(50) default NULL,
  `concernedPPhone` varchar(15) default NULL,
  `appStatus` varchar(25) default 'Accepted',
  `reqGId` int(10) default NULL,
  `reqDate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `eventStartDate` date default NULL,
  `eventEndDate` date default NULL,
  `eventStartTime` time default NULL,
  `eventEndTime` time default NULL,
  `eventTitle` varchar(40) default NULL,
  `eventDesc` varchar(1000) default NULL,
  `eventDays` varchar(50) default NULL,
  `concernedAdmin` int(2) default NULL,
  `room` varchar(10) default NULL,
  `reqType` varchar(10) default 'One Time'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Instances`
--

LOCK TABLES `Instances` WRITE;
/*!40000 ALTER TABLE `Instances` DISABLE KEYS */;
INSERT INTO `Instances` VALUES (27,'717c2e46342d7d989c8343495a506f394616365e','Doppleganger','ankush.jain@students.iiit.ac.in','8106853163','Doppleganger','ankush.jain@students.iiit.ac.in','8106853163','Accepted',0,'2012-10-16 16:12:19','2012-10-16','2012-10-16','18:00:00','19:00:00','Something','Blah blah','3',1,'N301','One Time'),(35,'60344bf9bd8c664b0f956979fbe321f8fa24be62','Nehal','nehajw.wani@students.iiit.ac.in','9090909090','Nehal','nehal.wani@stduents.iiit.ac.in','9090909090','Accepted',0,'2012-10-17 10:29:32','2012-11-17','2012-11-17','08:30:00','09:00:00','Test','Test','7',3,'N301','One Time'),(39,'830f0e198d56c8db6b81e783628bfef29199bede','Test2','test@test.com','1','Test2','test@test.com','1','Accepted',0,'2012-11-10 22:15:40','2012-11-13','2012-11-13','05:30:00','06:30:00','TUTS','Tut','3',1,'N301','One Time'),(42,'31c6d589a8ff1a3309d25b1dcef4cd124d2027b3','Ankush Jain','ankush.jain@students.iiit.ac.in','1122334455','Ankush Jain','ankush.jain@students.iiit.ac.in','1122334455','Accepted',0,'2012-11-10 22:42:12','2012-11-20','2012-11-20','09:00:00','09:30:00','TUTS','Fachon ko C nahi aati','3',1,'SH1','One Time'),(41,'02eb19235798b8d98bfb194cb06eab06c0635dbd','Ankush Jain','ankush.jain@students.iiit.ac.in','1122334455','Ankush Jain','ankush.jain@students.iiit.ac.in','1122334455','Accepted',0,'2012-11-10 22:39:14','2012-11-14','2012-11-14','06:30:00','07:00:00','CULT','Break a leg','4',1,'TL1','One Time'),(45,'af66529e0abf8a68a9d6f93e11223e5b0b456b0d','Test4','test@test.com','1122334455','Test4','test@test.com','1122334455','Accepted',0,'2012-11-10 23:14:03','2012-11-13','2012-11-13','06:30:00','07:30:00','TUTS','Testing with Javascript','3',1,'N301','One Time');
/*!40000 ALTER TABLE `Instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MODE`
--

DROP TABLE IF EXISTS `MODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MODE` (
  `Mode_Name` varchar(30) default NULL,
  `Weight` varchar(20) default NULL,
  `Mode_Code` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`Mode_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MODE`
--

LOCK TABLES `MODE` WRITE;
/*!40000 ALTER TABLE `MODE` DISABLE KEYS */;
INSERT INTO `MODE` VALUES ('Truck','200','1'),('Trolley 4W','60','2'),('Trolley 2W','30','3'),('Cart','20','4'),('SANGAL lal','60','9001');
/*!40000 ALTER TABLE `MODE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medicine`
--

DROP TABLE IF EXISTS `Medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Medicine` (
  `Name` varchar(20) NOT NULL default '',
  `Rate` int(11) default NULL,
  `Sample_number` int(11) default NULL,
  `Expiry_date` date default NULL,
  PRIMARY KEY  (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medicine`
--

LOCK TABLES `Medicine` WRITE;
/*!40000 ALTER TABLE `Medicine` DISABLE KEYS */;
INSERT INTO `Medicine` VALUES ('him',123,21321,'1919-03-12'),('ji',2312,32131,'0000-00-00');
/*!40000 ALTER TABLE `Medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAYMENT`
--

DROP TABLE IF EXISTS `PAYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAYMENT` (
  `Farmer_Account_No` varchar(20) NOT NULL default '',
  `Amount` varchar(20) default NULL,
  PRIMARY KEY  (`Farmer_Account_No`),
  KEY `Farmer_Account_No` (`Farmer_Account_No`),
  CONSTRAINT `PAYMENT_ibfk_1` FOREIGN KEY (`Farmer_Account_No`) REFERENCES `FARMER` (`Bank_Account_No`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAYMENT`
--

LOCK TABLES `PAYMENT` WRITE;
/*!40000 ALTER TABLE `PAYMENT` DISABLE KEYS */;
INSERT INTO `PAYMENT` VALUES ('0424000300157437','4684.815'),('1822000100300029','4111.2'),('1822000100300038','5047.2'),('1822000100300047','5004'),('1822000100300056','5150.4'),('1822000100300065','5071.2'),('1822000100300083','5047.2'),('1822000100300089','4228.8'),('1822000100300092','5208'),('1822000100300180','5378.4'),('1822000100300223','3720'),('1822000100300269','4629.6'),('1822000100300287','4082.4'),('1822000100300311','4514.4'),('1822000100300320','4281.6'),('1822000100300357','4190.4'),('1822000100300427','4082.4'),('1822000100300436','4418.4');
/*!40000 ALTER TABLE `PAYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCTION`
--

DROP TABLE IF EXISTS `PRODUCTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCTION` (
  `Mode` varchar(10) default NULL,
  `Cultivate_Area` varchar(20) default NULL,
  `Cane_Area` varchar(20) default NULL,
  `Production` varchar(25) default NULL,
  `Variety_Code` varchar(10) default NULL,
  `Purchase` varchar(25) default NULL,
  `Farmer_Code` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`Farmer_Code`),
  KEY `Mode` (`Mode`),
  KEY `Variety_Code` (`Variety_Code`),
  CONSTRAINT `PRODUCTION_ibfk_1` FOREIGN KEY (`Mode`) REFERENCES `MODE` (`Mode_Code`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `PRODUCTION_ibfk_2` FOREIGN KEY (`Variety_Code`) REFERENCES `VARIETY` (`Variety_Code`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `PRODUCTION_ibfk_3` FOREIGN KEY (`Farmer_Code`) REFERENCES `FARMER` (`Farmer_Code`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTION`
--

LOCK TABLES `PRODUCTION` WRITE;
/*!40000 ALTER TABLE `PRODUCTION` DISABLE KEYS */;
INSERT INTO `PRODUCTION` VALUES ('2','0.9891','0.8441','527.501','51','356.461','10'),('4','0.774','0.573','483.75','51','316.21','102'),('2','0.827','0.508','317.50','23','298.85','11'),('3','0.543','0.444','277.50','21','265.39','12'),('4','1.218','0.573','358.13','25','300','13'),('1','2.027','1.001','100.56','21','198.89','14'),('2','0.456','0.456','483.75','19','270.58','15'),('1','0.183','0.160','114.38','16','204.15','16'),('3','1.250','1.05','114','53','200','17'),('4','0.369','0.160','230.63','19','245.54','18'),('4','2.450','1.260','787.50','15','1,245.24','19'),('1','2.000','0.827','230','21','205','2'),('4','0.984','0.708','640.04','53','615.00','3'),('3','1.863','0.698','436.25','24','660','4'),('1','1.961','0.380','237.50','23','200','5'),('1','1.018','0.645','490.00','52','403.13','6'),('2','0.612','0.435','295.27','11','271.88','8'),('3','0.907','0.324','202.50','21','186.87','9');
/*!40000 ALTER TABLE `PRODUCTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pathology_test`
--

DROP TABLE IF EXISTS `Pathology_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pathology_test` (
  `Test_id` int(11) NOT NULL default '0',
  `Patient_ssn` char(5) default NULL,
  `Test_fees` int(11) default NULL,
  `Ecg` varchar(5) default NULL,
  `X_ray` varchar(5) default NULL,
  `Urine_test` varchar(5) default NULL,
  `Blood_test` varchar(5) default NULL,
  PRIMARY KEY  (`Test_id`),
  KEY `Patient_ssn` (`Patient_ssn`),
  CONSTRAINT `Pathology_test_ibfk_1` FOREIGN KEY (`Patient_ssn`) REFERENCES `Patient` (`Ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pathology_test`
--

LOCK TABLES `Pathology_test` WRITE;
/*!40000 ALTER TABLE `Pathology_test` DISABLE KEYS */;
INSERT INTO `Pathology_test` VALUES (1,'34567',2345,'ecg','x_ray','urine','blood'),(12,'12345',12134,'ecg','x_ray','','');
/*!40000 ALTER TABLE `Pathology_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Patient` (
  `Name` varchar(20) default NULL,
  `Sex` varchar(6) default NULL,
  `Ssn` char(5) NOT NULL default '',
  `Age` int(11) default NULL,
  `Address` varchar(30) default NULL,
  `Username` varchar(26) default NULL,
  `Password` varchar(29) default NULL,
  PRIMARY KEY  (`Ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES ('sam','male','12345',12,'df','sam','sam'),('hi','male','34567',123,'nvlkds','hi','hi');
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RIDE_SAFE_LOG`
--

DROP TABLE IF EXISTS `RIDE_SAFE_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RIDE_SAFE_LOG` (
  `Customer_Id` varchar(20) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `Time` varchar(20) NOT NULL,
  `Violation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RIDE_SAFE_LOG`
--

LOCK TABLES `RIDE_SAFE_LOG` WRITE;
/*!40000 ALTER TABLE `RIDE_SAFE_LOG` DISABLE KEYS */;
INSERT INTO `RIDE_SAFE_LOG` VALUES ('driver1','2012/10/12','19:43:04','Rash Driving.'),('driver1','2012/10/12','19:43:14','Over Speeding.'),('driver1','2012/10/12','19:44:04','Rash Driving.'),('driver1','2012/10/12','19:43:04','Over Speeding'),('driver1','2012/10/12','19:46:04','Rash Driving.'),('driver1','2012/10/12','19:53:24','Over Speeding.'),('driver1','2012/10/12','19:56:12','Negligent Driving.'),('driver1','2012/10/12','19:57:04','Rash Driving.'),('driver1','2012/10/12','19:58:04','Over Speeding.');
/*!40000 ALTER TABLE `RIDE_SAFE_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Receipt`
--

DROP TABLE IF EXISTS `Receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Receipt` (
  `Receipt_id` int(11) NOT NULL default '0',
  `Patient_ssn` char(5) default NULL,
  `Doctor_ssn` char(5) default NULL,
  `Ward_number` int(11) default NULL,
  `Test_id` int(11) default NULL,
  `Total_fees` int(11) default NULL,
  PRIMARY KEY  (`Receipt_id`),
  KEY `Patient_ssn` (`Patient_ssn`),
  KEY `Doctor_ssn` (`Doctor_ssn`),
  KEY `Test_id` (`Test_id`),
  KEY `Ward_number` (`Ward_number`),
  CONSTRAINT `Receipt_ibfk_1` FOREIGN KEY (`Patient_ssn`) REFERENCES `Patient` (`Ssn`),
  CONSTRAINT `Receipt_ibfk_2` FOREIGN KEY (`Doctor_ssn`) REFERENCES `Doctor` (`Ssn`),
  CONSTRAINT `Receipt_ibfk_3` FOREIGN KEY (`Test_id`) REFERENCES `Pathology_test` (`Test_id`),
  CONSTRAINT `Receipt_ibfk_4` FOREIGN KEY (`Ward_number`) REFERENCES `Ward` (`Ward_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Receipt`
--

LOCK TABLES `Receipt` WRITE;
/*!40000 ALTER TABLE `Receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `Receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Requests`
--

DROP TABLE IF EXISTS `Requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Requests` (
  `reqNo` int(11) NOT NULL auto_increment,
  `hash` varchar(100) default NULL,
  `creator` varchar(25) default NULL,
  `creatorEmail` varchar(50) default NULL,
  `creatorPhone` varchar(15) default NULL,
  `concernedPName` varchar(15) default NULL,
  `concernedPEmail` varchar(50) default NULL,
  `concernedPPhone` varchar(15) default NULL,
  `appStatus` varchar(25) default 'Pending',
  `reqGId` int(10) default NULL,
  `reqDate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `eventStartDate` date default NULL,
  `eventEndDate` date default NULL,
  `eventStartTime` time default NULL,
  `eventEndTime` time default NULL,
  `eventTitle` varchar(40) default NULL,
  `eventDesc` varchar(1000) default NULL,
  `eventDays` varchar(50) default NULL,
  `concernedAdmin` int(2) default NULL,
  `room` varchar(10) default NULL,
  `reqType` varchar(10) default 'One Time',
  `reqRejectReason` varchar(1000) default 'Your request is pending! :)',
  PRIMARY KEY  (`reqNo`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Requests`
--

LOCK TABLES `Requests` WRITE;
/*!40000 ALTER TABLE `Requests` DISABLE KEYS */;
INSERT INTO `Requests` VALUES (1,'6598c37665dc0b70b0fe44a6a315011a8b3a636f','Nehal','nehal.wani@students','9052480529','Ayush Chug','ayush.chug@students.iiit.','9052400628','Accepted',0,'2012-10-14 13:23:32','2012-11-01','2012-10-10','08:30:00','00:20:10','CProTute','Fachcho Ko C Nahi Ati','1',1,'SH2','One Time','Specify a reason for rejection (optional)'),(2,'6598c17665dc0b70b0fe44a6a315011a8b3a636f','Amish','amish.wani@students','9052480529','Ankush Jain','ankush.jain@students.iiit','9052401628','Pending',0,'0000-00-00 00:00:00','2012-01-01','2011-10-10','09:30:00','00:00:00','CProTute','Fachcho Ko C Nahi Ati','1',1,'SH2','Weekly','Your request is pending! :)'),(3,'3f9487b2c99ae49c8a665b093b83d25e87916eb9','Amish','amish.wani@students.iiit.','9988619407','Nehal','nehal.wani@students.iiit.','9052480529','Pending',0,'2012-10-14 14:30:23','2012-01-02','2012-10-10','06:00:00','00:20:06','CPro','Game!','1',0,'SH2','Daily','Your request is pending! :)'),(4,'f45bd55bbe34ceadb71ce14a9afc853f52bef30f','Amish','amish.wani@students.iiit.ac.in','9988619407','Nehal','nehal.wani@students.iiit.','9052480529','Pending',0,'2012-10-14 14:32:57','2012-01-02','2012-10-10','06:00:00','00:20:06','CPro','Game!','1',0,'SH2','Daily','A request conflicting with your request was accepted.'),(5,'d29cb78e88cd34425bc8563bcb90c66e13002263','Mayank','mayank.g@students.iiit.ac.in','9911223399','Kapil','kapil.kumar@students.iiit.ac.in','9052400628','Pending',0,'2012-10-14 19:32:20','2012-11-02','2012-10-12','09:00:00','09:00:00','ITWS','To Teach!','1',0,'SH1','Daily','Your request is pending! :)'),(6,'1485eb3521ca2fea36f1be6022bcacac941822cf','Nehal','','9988619407','Nehal','','9988619407','Pending',0,'2012-10-15 06:27:06','2012-12-16','2012-09-15','01:30:00','01:30:00','Event','Bla!','1',3,'N301','Daily','Your request is pending! :)'),(7,'4b37d590af37224f63bd3eba0adb46c952a54d43','Nehal','','9988619407','Nehal','','9988619407','Pending',0,'2012-10-15 06:34:23','2012-12-16','2012-09-15','01:30:00','01:30:00','Event','Bla!','1',3,'N301','Daily','Your request is pending! :)'),(8,'fde760e161b1ccf07237aa2827a9e2613902c12a','Nehal','','9988619407','Nehal','','9988619407','Pending',0,'2012-10-15 06:34:32','2012-12-16','2012-09-15','01:30:00','01:30:00','Event','Bla!','1',3,'N301','One Time','Your request is pending! :)'),(12,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-10-15','2012-12-20','09:00:00','09:30:00','Felicity','Organize!','1',1,'N301','Multiple','Your request is pending! :)'),(13,'2ce15a4e57c715fc38083fed0418c1c243376df3','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Pending',0,'2012-10-15 16:11:32','2012-10-20','2012-12-15','08:00:00','08:30:00','Math 3 Tut','Facho ko maths nah ati','1',3,'302_NIL','Multiple','Your request is pending! :)'),(14,'b8589f501416b19c3d210ba86fbb11ffb64ccb8d','Ankus','ankush.jain@students.iiit.ac.in','9988619407','Ankus','ankush.jain@students.iiit.ac.in','9988619407','Pending',0,'2012-10-15 18:56:30','2012-10-16','2012-10-15','23:00:00','23:30:00','Kush','Tem Job!','',1,'N301','One Time','Your request is pending! :)'),(15,'fef52615422c7f74147a8e21be8b3b4bdf522fee','Ankus','ankush.jain@students.iiit.ac.in','9988619407','Ankus','ankush.jain@students.iiit.ac.in','9988619407','Pending',0,'2012-10-15 19:16:33','2012-10-16','2012-10-15','23:00:00','23:30:00','Kush','Tem Job!','',1,'N301','One Time','Your request is pending! :)'),(16,'da3a4adbc923a9961c963cf70e682693dbe8686a','Kapil','kapil.kuam@students.iiit.ac.in','9988619407','Kapil','kapil.kuam@students.iiit.ac.in','9988619407','Pending',0,'2012-10-15 19:25:27','2012-10-16','2012-12-15','23:00:00','23:30:00','Kush','Tem Job!','',1,'N301','Multiple','Your request is pending! :)'),(17,'205f91a4e0cfd26d8c1c5a64a49a0dc565be3eea','Kapil','kapil.kuam@students.iiit.ac.in','9988619407','Kapil','kapil.kuam@students.iiit.ac.in','9988619407','Pending',0,'2012-10-15 19:26:26','2012-10-16','2012-12-15','23:00:00','23:30:00','Kush','Tem Job!','1,7,',1,'N301','Multiple','Your request is pending! :)'),(18,'e8e505c4c56405411487df22a81e3fcdc7937915','Kapil','temp@u.com','9988619407','Kapil','temp@u.com','9988619407','Pending',0,'2012-10-15 19:30:22','2012-10-02','2012-10-02','23:00:00','23:30:00','Kush','Tem Job!','1,7,',1,'TS','One Time','Your request is pending! :)'),(19,'2fdb703bd5e7b263515c71a2b172d76e5fa02074','Kapil','temp@u.com','9988619407','Kapil','temp@u.com','9988619407','Pending',0,'2012-10-15 20:05:38','2012-10-02','2012-10-02','23:00:00','23:30:00','Kush','Tem Job!','1,7,',1,'TS','One Time','Your request is pending! :)'),(20,'ed11c8cf06a2d37b3d113027183b1ad56f46bbb2','Nehal','nehalwani@gmail.com','9012990129','Kisna','kisna@iit.ac.in','9196781230','Pending',0,'2012-10-15 23:57:01','2012-10-02','2012-10-02','23:00:00','23:30:00','Felicity','Live!','',1,'TS','One Time','Your request is pending! :)'),(21,'72f5c31574611242822bb7fe25c32a0fb775b8f4','Nehal','nehalwani@gmai.cpm','9012990129','Kisna','kisna@gmail.com','9196781230','Pending',0,'2012-10-16 00:24:46','2012-10-02','2012-10-02','23:00:00','23:30:00','Felicity','Live!','3',1,'TS','One Time','A request conflicting with your request was accepted.'),(22,'8dfc4a54602c80f097387bf6f12e9327a6d53467','Nehal','nehalwani@gmai.cpm','9012990129','Kisna','kisna@gmail.com','9196781230','Pending',0,'2012-10-16 00:25:22','2012-10-02','2012-10-02','23:00:00','23:30:00','Felicity','Live!','3',1,'TS','One Time','A request conflicting with your request was accepted.'),(23,'a54409ea7f17627a638f92afe63201637c9c8491','Deepsh Jain','deepesh.jain@iit.ac.in','9012990129','Anisa','anish@snig.com','9052480529','Pending',0,'2012-10-16 08:49:57','2012-10-16','2012-10-16','08:00:00','08:30:00','Science Tute','Masti!','3',1,'TS','One Time','A request conflicting with your request was accepted.'),(24,'e66f0f0d493ed61d5ff51665cfdb27a4d7cbbe8c','Deepsh','jain@gmail.com','9012990129','Deepsh','jain@gmail.com','9012990129','Pending',0,'2012-10-16 08:50:33','2012-10-16','2012-10-16','08:00:00','09:00:00','Science Tute','Masti!','3',1,'TS','One Time','A request conflicting with your request was accepted.'),(25,'11fa046ab5284948b7b7121be0b185a2213f6126','Deepsh','jain@gmail.com','9012990129','Deepsh','jain@gmail.com','9012990129','Pending',0,'2012-10-16 09:06:00','2012-10-16','2012-10-16','08:00:00','09:00:00','Science Tute','Masti!','3',2,'TS','One Time','A request conflicting with your request was accepted.'),(26,'564f5d0b763458b465ab7bc13e849de06c8e2832','Ankush Jain','ankush.jain@students.iiit.ac.in','8106853163','Ankush Jain','ankush.jain@students.iiit.ac.in','8106853163','Pending',0,'2012-10-16 16:07:26','2012-10-14','2012-10-20','18:30:00','19:00:00','Boo blah','THe qukck brown fox jpumed over teh lazy dog','2,3,4,',1,'TL1','Multiple','Typos!!'),(27,'717c2e46342d7d989c8343495a506f394616365e','Doppleganger','ankush.jain@students.iiit.ac.in','8106853163','Doppleganger','ankush.jain@students.iiit.ac.in','8106853163','Pending',0,'2012-10-16 16:12:19','2012-10-16','2012-10-16','18:00:00','19:00:00','Something','Blah blah','3',1,'N301','One Time','A request conflicting with your request was accepted.'),(28,'0894d1c4a9bcf2024e663fbb362af2813142c6fd','kkiddu','ankush.jain@students.iiit.ac.in','8404546554','kkiddu','ankush.jain@students.iiit.ac.in','8404546554','Pending',0,'2012-10-16 16:14:39','2012-10-14','2012-10-20','17:30:00','18:30:00','New event','Boo boo boo','2,3,4,',1,'N301','Multiple','A request conflicting with your request was accepted.'),(29,'816c1bc01c9d56066879432d9e0cc63483898bc2','Albus Percival Wulfric Br','dumy@hogwarts.com','1800112233','Albus Percival ','dumy@hogwarts.com','1800112233','Pending',0,'2012-10-16 16:19:20','2012-10-18','2012-10-18','08:30:00','09:00:00','Orientation','New fachas at Hogwarts','5',3,'Team18','One Time','Your request is pending! :)'),(30,'10c2dc007d4f8f7b7300a077b562c89fb36c701a','Albus Percival Wulfric Br','','1800112233','Albus Percival ','','1800112233','Pending',0,'2012-10-16 16:20:30','2012-10-16','2012-10-16','17:00:00','20:00:00','Orientation','New fachas at Hogwarts','3',3,'N301','One Time','A request conflicting with your request was accepted.'),(32,'2dfc055913f9206ac1a3a4039c40d7678ddb3871','Jawani','nehal.wani@students.iiit.ac.in','9012990129','Digital','ankush.jain@students.iiit.ac.in','9052400628','Pending',0,'2012-10-16 18:12:17','2012-08-20','2012-12-16','04:00:00','04:30:00','SSAD Tutorial','2nd years dont know about design','7,',2,'SH2','Multiple','You are too intelligent for this!'),(33,'3ac4abf28d0cb3970fa10a655951660c7db001a6','Shubham','shubham.sangal@students.iiit.ac.in','9090909090','Kapil','kapil.kumar@students.iiit.ac.in','9090909090','Pending',0,'2012-10-17 10:22:35','2012-09-17','2012-12-10','03:30:00','04:30:00','Math 1 Tute','Test','6,7,',1,'302_NIL','Multiple','Your request is pending! :)'),(34,'a0b0729e7f5d71b609f3e5b14bf08a2e04aca611','Ankush','ankush.jain@students.iiit.ac.in','9090909090','Anisa','anirudh.goyal@students.iiit.ac.in','9090909090','Pending',0,'2012-10-17 10:26:34','2012-10-17','2012-11-17','08:30:00','09:00:00','Speech By Anisa','Tada!','4,5,',1,'N301','Multiple','Your request is pending! :)'),(35,'60344bf9bd8c664b0f956979fbe321f8fa24be62','Nehal','nehajw.wani@students.iiit.ac.in','9090909090','Nehal','nehal.wani@stduents.iiit.ac.in','9090909090','Pending',0,'2012-10-17 10:29:32','2012-11-17','2012-11-17','08:30:00','09:00:00','Test','Test','7',3,'N301','One Time','Your request is pending! :)'),(36,'6b11669d0dec1ab48734613d9e668121c852d1bd','','','','','','','Pending',0,'2012-11-09 05:00:31','0000-00-00','0000-00-00','00:00:00','00:00:00','','','5',0,'','','Your request is pending! :)'),(38,'f3d248b7555a199e1adc2fc94cf49dde6332c93e','Test1','temp@temp.com','1','Test1','temp@temp.com','1','Rejected',0,'2012-11-10 22:14:37','2012-11-13','2012-11-13','05:00:00','06:00:00','TUTS','Tut','1,2,3,4,',1,'N301','One Time','A request conflicting with your request was accepted.'),(39,'830f0e198d56c8db6b81e783628bfef29199bede','Test2','test@test.com','1','Test2','test@test.com','1','Accepted',0,'2012-11-10 22:15:40','2012-11-13','2012-11-13','05:30:00','06:30:00','TUTS','Tut','3',1,'N301','One Time','A request conflicting with your request was accepted.'),(40,'bdccba96b16fd41ec281869521b3dcd685126fd0','Test3','test@test.com','1','Test3','test@test.com','1','Rejected',0,'2012-11-10 22:16:24','2012-11-13','2012-11-13','06:00:00','07:00:00','TUTS','Tut','3',1,'N301','One Time','A request conflicting with your request was accepted.'),(41,'02eb19235798b8d98bfb194cb06eab06c0635dbd','Ankush Jain','ankush.jain@students.iiit.ac.in','1122334455','Ankush Jain','ankush.jain@students.iiit.ac.in','1122334455','Accepted',0,'2012-11-10 22:39:14','2012-11-14','2012-11-14','06:30:00','07:00:00','CULT','Break a leg','4',1,'TL1','One Time','Your request is pending! :)'),(42,'31c6d589a8ff1a3309d25b1dcef4cd124d2027b3','Ankush Jain','ankush.jain@students.iiit.ac.in','1122334455','Ankush Jain','ankush.jain@students.iiit.ac.in','1122334455','Accepted',0,'2012-11-10 22:42:12','2012-11-20','2012-11-20','09:00:00','09:30:00','TUTS','Fachon ko C nahi aati','3',1,'SH1','One Time','Your request is pending! :)'),(44,'4f744b0196461da2f960f2c0b3b1d49f80481ff2','Kal El','ankush.jain@students.iiit.ac.in','1122334455','Kal El','ankush.jain@students.iiit.ac.in','1122334455','Pending',0,'2012-11-10 23:13:26','2012-11-11','2012-11-11','00:00:00','00:00:00','LABS','Testing with Javascript','1',1,'SH1','One Time','Your request is pending! :)'),(45,'af66529e0abf8a68a9d6f93e11223e5b0b456b0d','Test4','test@test.com','1122334455','Test4','test@test.com','1122334455','Accepted',0,'2012-11-10 23:14:03','2012-11-13','2012-11-13','06:30:00','07:30:00','TUTS','Testing with Javascript','3',1,'N301','One Time','Your request is pending! :)'),(46,'903d4ac29ec32c0d2c1160c0d8bfada55c9e8b97','Kal El','ankush.jain@students.iiit.ac.in','1122334455','Kal El','ankush.jain@students.iiit.ac.in','1122334455','Pending',0,'2012-11-10 23:16:08','2012-11-11','2012-11-11','00:00:00','00:00:00','LABS','Testing with Javascript','1',1,'SH1','One Time','Your request is pending! :)'),(47,'2de0a685d36e324b78efca0c592573f5aff2dde1','Kal El','ankush.jain@students.iiit.ac.in','1122334455','Kal El','ankush.jain@students.iiit.ac.in','1122334455','Pending',0,'2012-11-10 23:18:51','2012-11-11','2012-11-11','00:00:00','00:00:00','LABS','Testing with Javascript','1',1,'SH1','One Time','Your request is pending! :)');
/*!40000 ALTER TABLE `Requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Room`
--

DROP TABLE IF EXISTS `Room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Room` (
  `roomId` int(11) NOT NULL auto_increment,
  `roomName` varchar(8) NOT NULL,
  `buildingName` int(11) NOT NULL,
  `blockName` int(11) NOT NULL,
  `description` varchar(255) default NULL,
  `capacity` int(11) NOT NULL default '0',
  PRIMARY KEY  (`roomId`),
  UNIQUE KEY `roomName` (`roomName`),
  KEY `building` (`buildingName`),
  KEY `block` (`blockName`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room`
--

LOCK TABLES `Room` WRITE;
/*!40000 ALTER TABLE `Room` DISABLE KEYS */;
INSERT INTO `Room` VALUES (1,'N301',1,0,'EMPTY',100),(2,'302_NIL',1,0,NULL,100),(3,'TL1',1,0,NULL,0),(4,'TL2',1,0,NULL,0),(5,'SH1',2,0,NULL,250),(6,'SH2',2,0,NULL,250),(10,'305_NIL',1,0,NULL,100),(8,'CR1',2,0,NULL,0),(9,'CR2',2,0,NULL,0),(11,'TS',3,0,NULL,0),(12,'Team18',4,0,'Boo',100);
/*!40000 ALTER TABLE `Room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Room_Cat`
--

DROP TABLE IF EXISTS `Room_Cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Room_Cat` (
  `roomId` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  PRIMARY KEY  (`roomId`,`catId`),
  KEY `catId` (`catId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room_Cat`
--

LOCK TABLES `Room_Cat` WRITE;
/*!40000 ALTER TABLE `Room_Cat` DISABLE KEYS */;
INSERT INTO `Room_Cat` VALUES (1,1),(2,1),(3,3),(4,3),(5,1),(5,2),(6,1),(6,2),(8,1),(9,1),(12,1),(12,2);
/*!40000 ALTER TABLE `Room_Cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SMS`
--

DROP TABLE IF EXISTS `SMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SMS` (
  `Mobile_Number` varchar(20) NOT NULL default '',
  `Send_Date` varchar(40) default NULL,
  `Send_Time` varchar(40) default NULL,
  `Description` varchar(300) default NULL,
  PRIMARY KEY  (`Mobile_Number`),
  CONSTRAINT `SMS_ibfk_1` FOREIGN KEY (`Mobile_Number`) REFERENCES `FARMER` (`Phone_Number`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SMS`
--

LOCK TABLES `SMS` WRITE;
/*!40000 ALTER TABLE `SMS` DISABLE KEYS */;
INSERT INTO `SMS` VALUES ('09219113512','28-Feb-2112','12:15','1302 / 9 Mill Purchi no. 15100825 Dt. 27-02-2012 VAR GENERAL Net Weight 19.96 against Indent Slip 115847'),('09259107173','28-Feb-2012','11:58','1101 / 80 Mill Purchi no. 35040578 Dt. 27-02-2012 VAR GENERAL Net Weight 58.90 against Indent Slip 543973'),('09358640898','27-Feb-2012','16:08','1103/  87 purchi no 529796 fort/col 5/5 , MILLGATE , TROLLEY 2 WH ,29-02-2012 ke liye jari kar di gayi hai,apna ganna nirdharit date per dale.'),('09411033824','27-Feb-2012','16:08','1103/ 100 purchi no 118010 fort/col 7/12 , MILLGATE , CART ,29-02-2012 ke liye jari kar di gayi hai,apna ganna nirdharit date per dale.'),('09411813910','27-Feb-2012','16:18','1103/  25 purchi no 118007 fort/col 7/12 , MILLGATE , CART ,29-02-2012 ke liye jari kar di gayi hai,apna ganna nirdharit date per dale.'),('09457133258','27-Feb-2012','14:52','1103 / 26 Mill Purchi no. 15100325 Dt. 27-02-2012 VAR GENERAL Net Weight 16.99 against Indent Slip 116971'),('09548684697','27-Feb-2012','16:23','1101/  74 purchi no 113100 fort/col 4/12 , MILLGATE , CART ,29-02-2012 ke liye jari kar di gayi hai,apna ganna nirdharit date per dale.'),('09639739259','27-Feb-2012','14:23','1103 / 62 Mill Purchi no. 15100291 Dt. 27-02-2012 VAR GENERAL Net Weight 23.38 against Indent Slip 116974'),('09760666544','27-Feb-2012','13:51','1103 / 64 Mill Purchi no. 15100099 Dt. 27-02-2012 VAR GENERAL Net Weight 16.81 against Indent Slip 115892'),('09837445456','27-Feb-2012','12:43','1102 / 92 Mill Purchi no. 35040211 Dt. 27-02-2012 VAR GENERAL Net Weight 52.07 against Indent Slip 544839'),('09837845342','27-Feb-2012','11:38','1102 / 66 Mill Purchi no. 12001271 Dt. 26-02-2012 VAR EARLY Net Weight 17.23 against Indent Slip 114824'),('09837850694','26-Feb-2012','17:48','1102 / 69 Mill Purchi no. 35040023 Dt. 26-02-2012 VAR GENERAL Net Weight 57.96 against Indent Slip 536414'),('09927628661','26-Feb-2012','17:16','1102 / 74 Mill Purchi no. 15099608 Dt. 26-02-2012 VAR GENERAL Net Weight 18.97 against Indent Slip 115850');
/*!40000 ALTER TABLE `SMS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SOCIETY`
--

DROP TABLE IF EXISTS `SOCIETY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SOCIETY` (
  `Location` varchar(30) default NULL,
  `Society_Code` varchar(10) NOT NULL default '',
  `Name` varchar(50) default NULL,
  PRIMARY KEY  (`Society_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SOCIETY`
--

LOCK TABLES `SOCIETY` WRITE;
/*!40000 ALTER TABLE `SOCIETY` DISABLE KEYS */;
INSERT INTO `SOCIETY` VALUES ('Shamli','1','COOPERATIVE CANE DEVP UNION LTD SHAMLI'),('Unn','2','COOPERATIVE CANE DEVP UNION LTD OON'),('ThanaBhawan','3','COOPEARATIVE CANE DEVP UNION LTD THANA B'),('Ramala','4','COOPERATIVE CANE DEVP UNION LTD RAMALA'),('Test Location','99','TEST SOCIETY');
/*!40000 ALTER TABLE `SOCIETY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERS`
--

DROP TABLE IF EXISTS `USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERS` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `BANK` tinyint(4) default '0',
  `BANK_GROUP` tinyint(4) default '0',
  `CENTER` tinyint(4) default '0',
  `ESTIMATE` tinyint(4) default '0',
  `FARMER` tinyint(4) default '0',
  `MODE` tinyint(4) default '0',
  `PAYMENT` tinyint(4) default '0',
  `PRODUCTION` tinyint(4) default '0',
  `SMS` tinyint(4) default '0',
  `SOCIETY` tinyint(4) default '0',
  `USERS` tinyint(4) default '0',
  `VARIETY` tinyint(4) default '0',
  `VILLAGE` tinyint(4) default '0',
  `WORKER` tinyint(4) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` VALUES (1,'admin','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'sameer','sameer',2,1,2,3,5,5,2,3,0,0,0,0,0,0),(3,'KAPIL','KPAIL',0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,'vinil','vinil',0,0,0,0,0,0,0,0,0,0,0,0,0,0),(5,'vish','vish',0,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,'krish','krish',0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Updates`
--

DROP TABLE IF EXISTS `Updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Updates` (
  `description` varchar(500) NOT NULL,
  `up_time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Updates`
--

LOCK TABLES `Updates` WRITE;
/*!40000 ALTER TABLE `Updates` DISABLE KEYS */;
INSERT INTO `Updates` VALUES ('user requested for 301_NIL for dates 2011-11-19 to 2011-11-19 from 23:00:00 to 24:00:00. Description of activity : dumb c','838:59:59'),('user requested for Room TS for dates 2011-11-20 to 2011-11-20 from Hrs.21:30:00 to 23:00:00.<br/> Description of activity : fff','838:59:59'),('parag requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.05:00:00 to 05:30:00.<br/> Description of activity : dance','00:00:00'),('abhay requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.05:00:00 to 05:30:00.<br/> Description of activity : colli','00:00:00'),('parag requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.05:00:00 to 05:30:00.<br/> Description of activity : first ','00:00:00'),('abhay requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.07:30:00 to 08:00:00.<br/> Description of activity : second','00:00:00'),('abhay requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.00:00:00 to 01:30:00.<br/> Description of activity : morini','838:59:59'),('abhay requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.05:30:00 to 06:00:00.<br/> Description of activity : colide','838:59:59'),('abhay requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.21:30:00 to 24:00:00.<br/> Description of activity : asf','00:00:00'),('parag requested for Room SH1 for dates 2011-11-21 to 2011-11-21 from Hrs.06:30:00 to 09:00:00.<br/> Description of activity : sfasf','838:59:59'),('parag requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.15:30:00 to 17:30:00.<br/> Description of activity : asf;lakf','00:00:00'),('parag requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.08:00:00 to 15:30:00.<br/> Description of activity : asdf','00:00:00'),('parag requested for Room SH2 for dates 2011-11-22 to 2011-11-22 from Hrs.14:30:00 to 23:59:59.<br/> Description of activity : asdf','00:00:00'),('parag requested for Room CR1 for dates 2011-11-26 to 2011-11-28 from Hrs.06:30:00 to 09:00:00.<br/> Description of activity : ff','00:00:00'),('parag requested for Room 301_NIL for dates 2011-11-22 to 2011-11-22 from Hrs.07:00:00 to 08:30:00.<br/> Description of activity : fff','838:59:59'),('parag requested for Room 301_NIL for dates 2011-11-22 to 2011-11-22 from Hrs.19:00:00 to 22:30:00.<br/> Description of activity : Elocution Competition.','838:59:59'),('parag requested for Room 301_NIL for dates 2011-11-23 to 2011-11-23 from Hrs.17:00:00 to 18:30:00.<br/> Description of activity : Yoga activities.','838:59:59'),('anshul requested for Room 301_NIL for dates 2011-11-23 to 2011-12-22 from Hrs.15:30:00 to 18:00:00.<br/> Description of activity : Dance Club','00:00:00'),('parag requested for Room 301_NIL for dates 2011-11-23 to 2011-11-30 from Hrs.15:00:00 to 18:00:00.<br/> Description of activity : Algorithm Tute','00:00:00'),('anshul requested for Room 301_NIL for dates 2011-11-23 to 2011-11-30 from Hrs.16:00:00 to 19:00:00.<br/> Description of activity : Exam.','00:00:00'),('parag requested for Room SH1 for dates 2011-11-22 to 2011-11-22 from Hrs.17:30:00 to 22:00:00.<br/> Description of activity : Tute','00:00:00'),('parag requested for Room 301_NIL for dates 2011-11-25 to 2011-11-25 from Hrs.16:00:00 to 17:30:00.<br/> Description of activity : DISCO PARTY','838:59:59'),('user1 requested for Room 301_NIL for dates 2012-04-26 to 2012-04-28 from Hrs.08:00:00 to 08:30:00.<br/> Description of activity : kjhkl','00:00:00'),('user1 requested for Room SH1 for dates 2012-04-28 to 2012-04-30 from Hrs.09:00:00 to 16:00:00.<br/> Description of activity : sport','00:00:00'),('user1 requested for Room SH1 for dates 2012-08-28 to 2012-08-28 from Hrs.09:00:00 to 11:00:00.<br/> Description of activity : xyz','00:00:00');
/*!40000 ALTER TABLE `Updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `userId` int(11) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` int(11) NOT NULL default '0',
  PRIMARY KEY  (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (16,'Acad Office','iiit123','nehal.wani@students.iiit.ac.in',2),(17,'SLC Chair','iiit123','nehal.wani@students.iiit.ac.in',3),(18,'Dean Academics','iiit123','nehal.wani@students.iiit.ac.in',4),(19,'Manager (Admin)','iiit123','nehal.wani@students.iiit.ac.in',5),(14,'Student','iiit123','nehal.wani@students.iiit.ac.in',0),(15,'Parliament','iiit123','nehal.wani@students.iiit.ac.in',1),(20,'TA','iiit123','nehal.wani@students.iiit.ac.in',6),(21,'Faculty','iiit123','nehal.wani@students.iiit.ac.in',7);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VARIETY`
--

DROP TABLE IF EXISTS `VARIETY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VARIETY` (
  `Variety_Code` varchar(10) NOT NULL default '',
  `Name` varchar(30) default NULL,
  PRIMARY KEY  (`Variety_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VARIETY`
--

LOCK TABLES `VARIETY` WRITE;
/*!40000 ALTER TABLE `VARIETY` DISABLE KEYS */;
INSERT INTO `VARIETY` VALUES ('11','COJ-64'),('12','COS-88230'),('13','COSE-98231'),('14','CO-0118'),('15','CO-0238'),('16','COS 8436'),('17','COS 96268'),('18','Early Other'),('19','CO-89003'),('21','COS-767'),('22','COS-8432'),('23','COSE 92423'),('24','COP-84212'),('25','Gen Other'),('30','Rejected 1'),('51','COSE-01235'),('52','COSE-3234'),('53','CO-1148'),('54','COSE-01434'),('57','COS-96725'),('72','COSE-1424'),('99','Burnt Cane');
/*!40000 ALTER TABLE `VARIETY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VILLAGE`
--

DROP TABLE IF EXISTS `VILLAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VILLAGE` (
  `Name` varchar(30) default NULL,
  `Society_Code` varchar(10) default NULL,
  `Village_Code` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`Village_Code`),
  KEY `Society_Code` (`Society_Code`),
  CONSTRAINT `VILLAGE_ibfk_1` FOREIGN KEY (`Society_Code`) REFERENCES `SOCIETY` (`Society_Code`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VILLAGE`
--

LOCK TABLES `VILLAGE` WRITE;
/*!40000 ALTER TABLE `VILLAGE` DISABLE KEYS */;
INSERT INTO `VILLAGE` VALUES ('Shamli','1','1101'),('Khedi Karmu','1','1103'),('Titoli','1','1104'),('Simbhalka','1','1108'),('Lilon','1','1111'),('Butradi','1','1119'),('Kaserva','3','1122'),('Kandela','3','1123'),('Bamnoli','4','1128'),('Banat','4','1129'),('Jalalpur','1','1130'),('Rasoolpur','1','1131'),('Goharpur','1','1134'),('Hasanpur','1','1137'),('Gajipur','1','1139'),('Jamalpur','1','1142'),('Lakh','4','1152'),('Banti Kheda','1','1154'),('Dargahpur','2','1161'),('Singra','2','3901');
/*!40000 ALTER TABLE `VILLAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WORKER`
--

DROP TABLE IF EXISTS `WORKER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WORKER` (
  `Worker_Code` varchar(10) NOT NULL default '',
  `Name` varchar(30) default NULL,
  `Society_Code` varchar(10) default NULL,
  PRIMARY KEY  (`Worker_Code`),
  KEY `Society_Code` (`Society_Code`),
  CONSTRAINT `WORKER_ibfk_1` FOREIGN KEY (`Society_Code`) REFERENCES `SOCIETY` (`Society_Code`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WORKER`
--

LOCK TABLES `WORKER` WRITE;
/*!40000 ALTER TABLE `WORKER` DISABLE KEYS */;
INSERT INTO `WORKER` VALUES ('S1840','ILAM SINGH','1'),('S2976','MANMOHAN SHARMA','4'),('S3278','MAHEK SINGH','4'),('S3281','DHIRAJ SINGH','3'),('S3286','KRISHAN PAL SINGH','4'),('S3329','BHOPAL SINGH','2'),('S3366','RAJ KUMAR','3'),('S3379','SATISH KUMAR','1'),('S3380','PRATAP SINGH','4'),('S3398','DEVENDRA/KIRAN SINGH','1'),('S3399','JITENDER/MAHVIR','3'),('S3400','JITENDER /BRIJ RAJ','3'),('S3402','MANGLOO SHARMA','4'),('S3421','BIJENDRA VERMA','2'),('S3427','RAVINDRA/MAHAVEER','1'),('S3451','KALYAN SINGH','3'),('S3452','BHISHAM SINGH','2'),('S3454','ARVIND KUMAR','1'),('S3456','KARAMVIR SINGH','3'),('S3480','DHARMENDRA KUMAR','2');
/*!40000 ALTER TABLE `WORKER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ward`
--

DROP TABLE IF EXISTS `Ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ward` (
  `Ward_number` int(11) NOT NULL default '0',
  `Ward_charges` int(11) default NULL,
  `Patient_ssn` char(5) default NULL,
  `Ward_status` varchar(10) default NULL,
  PRIMARY KEY  (`Ward_number`),
  KEY `Patient_ssn` (`Patient_ssn`),
  CONSTRAINT `Ward_ibfk_1` FOREIGN KEY (`Patient_ssn`) REFERENCES `Patient` (`Ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ward`
--

LOCK TABLES `Ward` WRITE;
/*!40000 ALTER TABLE `Ward` DISABLE KEYS */;
INSERT INTO `Ward` VALUES (2,322,'34567','empty'),(1232,123,'12345','Full');
/*!40000 ALTER TABLE `Ward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Working_staff`
--

DROP TABLE IF EXISTS `Working_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Working_staff` (
  `Name` varchar(30) default NULL,
  `Salary` int(11) default NULL,
  `Age` int(11) default NULL,
  `Sex` varchar(6) default NULL,
  `Ssn` char(5) NOT NULL default '',
  `Address` varchar(30) default NULL,
  `Dept` int(11) default NULL,
  `Username` varchar(40) default NULL,
  `Password` varchar(20) default NULL,
  PRIMARY KEY  (`Ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Working_staff`
--

LOCK TABLES `Working_staff` WRITE;
/*!40000 ALTER TABLE `Working_staff` DISABLE KEYS */;
INSERT INTO `Working_staff` VALUES ('raju',12,13,'male','12356','ff',1,'raju','raju');
/*!40000 ALTER TABLE `Working_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` varchar(100) NOT NULL,
  PRIMARY KEY  (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('mahaver.chopra@students.iiit.ac.in'),('parin.porecha@students.iiit.ac.in'),('yash.shah@students.iiit.ac.in');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `room_no` varchar(20) NOT NULL,
  `guest_name` varchar(20) default NULL,
  `booked_from` date default NULL,
  `booked_till` date default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('','Borkar','2012-12-14','2012-12-23'),('301','Mahavir','2012-12-12','2012-12-23'),('314','Yash','2012-12-12','2012-12-25'),('','Yash','2012-11-13','2012-12-19'),('301','Yash','2012-11-20','2012-12-05'),('314','Mahavir','2012-11-16','2012-12-24'),('301','Singla','2012-12-14','2012-12-26'),('','mahavir','2012-11-11','2012-11-14'),('301','mach18','2012-11-11','2012-11-14'),('','Pallav','2012-01-04','2012-01-08'),('314','Japneet','0000-00-00','2012-12-01'),('302','Arpit','0000-00-00','2012-12-05'),('302','Abhishek','2012-11-12','2012-12-15'),('302','Sachin','2012-11-18','2012-12-19'),('303','Ramesh','2012-11-18','2012-12-29'),('303','Mahesh','2012-12-30','2013-01-01'),('303','Gaurav','2013-01-12','2013-01-18');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch1`
--

DROP TABLE IF EXISTS `branch1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch1` (
  `uid` int(11) default NULL,
  `manager` varchar(20) default NULL,
  `revenue` int(11) default NULL,
  `address` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch1`
--

LOCK TABLES `branch1` WRITE;
/*!40000 ALTER TABLE `branch1` DISABLE KEYS */;
INSERT INTO `branch1` VALUES (1,'manager',10,'add'),(0,'',0,''),(121,'qwerty',678,'trewq');
/*!40000 ALTER TABLE `branch1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch2`
--

DROP TABLE IF EXISTS `branch2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch2` (
  `uid` int(11) default NULL,
  `item` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch2`
--

LOCK TABLES `branch2` WRITE;
/*!40000 ALTER TABLE `branch2` DISABLE KEYS */;
INSERT INTO `branch2` VALUES (1,'0'),(2,'truck');
/*!40000 ALTER TABLE `branch2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar_events`
--

DROP TABLE IF EXISTS `calendar_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar_events` (
  `id` int(11) NOT NULL,
  `event_title` text NOT NULL,
  `event_shortdesc` text NOT NULL,
  `start` datetime NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar_events`
--

LOCK TABLES `calendar_events` WRITE;
/*!40000 ALTER TABLE `calendar_events` DISABLE KEYS */;
INSERT INTO `calendar_events` VALUES (0,'\n			test','haha','0000-00-00 00:00:00',''),(0,'\n			anshul','','0000-00-00 00:00:00',''),(0,'\n			hie','','0000-00-00 00:00:00',''),(0,'\n			hie','','0000-00-00 00:00:00',''),(0,'\n			hie','','0000-00-00 00:00:00',''),(0,'\n			hie','','0000-00-00 00:00:00',''),(0,'\n			hie','','0000-00-00 00:00:00',''),(0,'\n			hie','','0000-00-00 00:00:00',''),(0,'\n			hie','','0000-00-00 00:00:00',''),(0,'\n			hie','','0000-00-00 00:00:00',''),(0,'\n			hie','','0000-00-00 00:00:00',''),(0,'\n			hie','','0000-00-00 00:00:00',''),(0,'\n			hie','','0000-00-00 00:00:00',''),(0,'\n			wrong','','0000-00-00 00:00:00',''),(0,'\n			wrong','','0000-00-00 00:00:00',''),(0,'\n			ma ki','chuti','0000-00-00 00:00:00',''),(0,'\n			ma ki','chuti','2012-08-02 01:45:00',''),(0,'\n			kya h','chal ja','2012-08-02 01:45:00',''),(0,'\n			kya h','chal ja','2012-08-02 01:45:00',''),(0,'\n			kya h','chal ja','2012-08-02 01:45:00',''),(0,'\n			kya h','chal ja','2012-08-02 01:45:00',''),(0,'\n			kya h','chal ja','2012-08-02 01:45:00',''),(0,'\n			fake','test','2012-08-02 01:00:00',''),(0,'\n			timepass','hehe','2012-08-02 01:00:00',''),(0,'\n			test','lol','2012-08-02 01:00:00',''),(0,'\n			','','2012-08-02 19:00:00',''),(0,'\n			as','','2012-08-02 20:00:00',''),(0,'\n			timepass22','lol','2012-08-02 12:00:00',''),(0,'\n			sd','','2012-08-02 01:00:00',''),(0,'\n			timepass222','','2012-08-02 01:00:00',''),(0,'\n			timepass222','','2012-08-02 01:00:00',''),(0,'\n			timepass222','','2012-08-02 01:00:00',''),(0,'\n			ansh3','','0000-00-00 00:00:00',''),(0,'\n			ansh3','','0000-00-00 00:00:00',''),(0,'\n			tt','','2012-08-28 01:00:00',''),(0,'\n			title1','','2012-08-28 01:00:00',''),(0,'\n			titl2','','2012-08-28 09:00:00',''),(0,'\n			titl3','','2012-08-28 04:00:00',''),(0,'\n			titlbla','','2012-08-28 15:00:00',''),(0,'\n			test on a new date','','2012-08-28 01:00:00',''),(0,'\n			','','2012-08-28 01:00:00',''),(0,'\n			','','2012-08-28 01:00:00',''),(0,'\n			','','2012-08-28 01:00:00',''),(0,'\n			','','2012-08-29 01:00:00',''),(0,'\n			','','2012-08-29 01:00:00',''),(0,'\n			','','2012-08-29 01:00:00',''),(0,'\n			','','2012-08-29 01:00:00',''),(0,'\n			test on a new date2','','2012-08-28 01:00:00',''),(0,'\n			test on a new date','','0000-00-00 00:00:00',''),(0,'\n			test on a new date2','it will b fun ','0000-00-00 00:00:00',''),(0,'\n			test on a new date2','it will b fun ','0000-00-00 00:00:00',''),(0,'\n			','','0000-00-00 00:00:00',''),(0,'\n			','','2012-02-11 01:00:00',''),(0,'\n			hey','haha','2012-09-02 01:00:00',''),(0,'\n			ahan!!','','2012-09-02 01:00:00',''),(0,'\n			ahan!!','','2012-09-02 01:00:00',''),(0,'\n			acchu','','2012-09-02 01:00:00',''),(0,'\n			haha','','2012-09-02 01:00:00',''),(0,'\n			HEY!!','','0000-00-00 00:00:00',''),(0,'\n			HEY!!','','0000-00-00 00:00:00',''),(0,'\n			helo','','0000-00-00 00:00:00',''),(0,'\n			helo heki','','0000-00-00 00:00:00',''),(0,'\n			helo heki','','0000-00-00 00:00:00',''),(0,'\n			helo heki','','0000-00-00 00:00:00',''),(0,'\n			helo heki','','0000-00-00 00:00:00',''),(0,'\n			helo heki','','0000-00-00 00:00:00',''),(0,'\n			new_year','','2012-01-01 01:00:00',''),(0,'\n			Site_launch','','2012-09-14 18:00:00',''),(0,'\n			checking','this is testing','2012-09-05 04:15:00','');
/*!40000 ALTER TABLE `calendar_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccPerson`
--

DROP TABLE IF EXISTS `ccPerson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccPerson` (
  `reqNo` int(11) default NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccPerson`
--

LOCK TABLES `ccPerson` WRITE;
/*!40000 ALTER TABLE `ccPerson` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccPerson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaints` (
  `complain_id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `complaint_type` varchar(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `place` varchar(100) default NULL,
  `complaint_date` date default NULL,
  `complaint_time` time default NULL,
  `date_resolved` date default NULL,
  `time_resolved` time default NULL,
  `status` varchar(20) default NULL,
  PRIMARY KEY  (`complain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
INSERT INTO `complaints` VALUES (1,201203003,'Carpenter','this is a complaint','Room','2012-11-10','21:19:37',NULL,NULL,'False'),(2,201203003,'Carpenter','jhdyj','Room','2012-11-10','21:19:46','2012-11-15','02:59:56','True'),(3,201203003,'Carpenter','htrth','Room','2012-11-10','21:19:51',NULL,NULL,'False'),(4,201203003,'Carpenter','feeafsf','Room','2012-11-10','21:20:20',NULL,NULL,'False'),(5,0,'Plumber','Yes1','Room','2012-11-11','12:21:11',NULL,NULL,'False'),(6,0,'Carpenter','Hahahaha\r\n','Room','2012-11-11','12:23:20',NULL,NULL,'False'),(7,0,'Carpenter','yes3','Room','2012-11-11','12:25:21',NULL,NULL,'False'),(8,0,'Electritian','This is the way do to','Other','2012-11-11','13:21:38',NULL,NULL,'False'),(9,201203003,'Carpenter','This is the way','Room','2012-11-11','13:36:51',NULL,NULL,'False'),(10,201203003,'Carpenter','Datta Style','Room','2012-11-11','13:38:46',NULL,NULL,'False'),(11,201203003,'Carpenter','Datta Style 2','Room','2012-11-11','13:40:39',NULL,NULL,'False'),(12,201203003,'Plumber','Datta Style 3','Room','2012-11-11','13:42:39',NULL,NULL,'False'),(13,201203003,'Carpenter','Datta Style 4','Room','2012-11-11','13:43:54',NULL,NULL,'False'),(14,201101055,'Plumber','Hey wass up ?','Room','2012-11-11','14:42:30',NULL,NULL,'False'),(15,201203003,'Plumber','kjhkjhkjhkjhkjhkj','Lobby','2012-11-11','14:49:51',NULL,NULL,'False'),(16,201201047,'Carpenter','door broken','Room','2012-11-11','16:06:05',NULL,NULL,'False'),(17,201201047,'Electritian','Tubeligh Broken','Lobby','2012-11-11','16:15:09',NULL,NULL,'False'),(18,201203003,'Plumber','kjhkjhkjh','Room','2012-11-14','20:21:35',NULL,NULL,'False'),(19,201203003,'Other','Change Room','Other','2012-11-14','20:31:09','2012-11-15','16:42:09','True'),(20,201101055,'HouseKeeping','Porecha is kutta','Room','2012-11-14','20:44:55','2012-11-15','03:00:07','True'),(21,201101055,'Electritian','Fire in my room','Room','2012-11-14','20:48:00',NULL,NULL,'False'),(22,201101055,'Plumber','Flood in my room','Room','2012-11-14','20:49:51','2012-11-15','03:00:03','True'),(23,201101011,'HouseKeeping','complaint','Room','2012-11-15','05:22:11',NULL,NULL,'False'),(24,201101055,'HouseKeeping','Ground floor lobby not cleaned since 12-11-2012','Lobby','2012-11-15','15:41:22','2012-11-15','16:25:34','True'),(25,201101055,'Plumber','Taps in washroom not working','Lobby','2012-11-15','16:26:15','2012-11-15','16:26:46','True'),(26,201101055,'Plumber','Taps in washroom not working','Lobby','2012-11-15','16:27:02',NULL,NULL,'False'),(27,201203003,'Carpenter','complaint registered by mahavir','Room','2012-11-15','16:29:05','2012-11-15','16:30:01','True'),(28,201101055,'Electritian','Fan not working','Room','2012-11-15','16:32:42',NULL,NULL,'False'),(29,201101055,'Electrician','Tubelight broken','Room','2012-11-15','16:35:30',NULL,NULL,'False'),(30,201101011,'Carpenter','Chair armrest broken','Room','2012-11-15','16:40:25',NULL,NULL,'False'),(31,201101011,'Other','Facing lot of noise due to others continuously playing table tennis','Lobby','2012-11-15','16:42:01',NULL,NULL,'False'),(32,201203003,'Electrician','Lobby tubelights not working','Lobby','2012-11-15','16:44:13',NULL,NULL,'False'),(33,201101127,'Carpenter','Cupboard door and handle broken','Room','2012-11-15','16:44:20',NULL,NULL,'False'),(34,201203003,'Electrician','electric port near table not working. Please fix it immediately','Room','2012-11-15','16:45:42',NULL,NULL,'False'),(35,201203006,'HouseKeeping','Water Coolers are not cleaned','Room','2012-11-15','17:29:21',NULL,NULL,'False');
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `eid` int(11) NOT NULL auto_increment,
  `admin_id` varchar(100) NOT NULL,
  `description` varchar(1000) default NULL,
  `time_posted` time default NULL,
  `date_posted` date default NULL,
  PRIMARY KEY  (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventTitle`
--

DROP TABLE IF EXISTS `eventTitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventTitle` (
  `title` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventTitle`
--

LOCK TABLES `eventTitle` WRITE;
/*!40000 ALTER TABLE `eventTitle` DISABLE KEYS */;
INSERT INTO `eventTitle` VALUES ('TUTS'),('LABS'),('D LECT.'),('FAC.TALKS'),('CULT'),('WORKSHOP'),('SEMINAR');
/*!40000 ALTER TABLE `eventTitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example`
--

DROP TABLE IF EXISTS `example`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `example` (
  `id` int(11) default NULL,
  `data` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example`
--

LOCK TABLES `example` WRITE;
/*!40000 ALTER TABLE `example` DISABLE KEYS */;
/*!40000 ALTER TABLE `example` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farmers`
--

DROP TABLE IF EXISTS `farmers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `farmers` (
  `uid` int(10) NOT NULL default '0',
  `name` varchar(30) default NULL,
  `sex` varchar(1) default NULL,
  `village` varchar(30) default NULL,
  `rateperlt` int(11) default NULL,
  `supplyperlt` int(11) default NULL,
  `address` varchar(30) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmers`
--

LOCK TABLES `farmers` WRITE;
/*!40000 ALTER TABLE `farmers` DISABLE KEYS */;
INSERT INTO `farmers` VALUES (0,'k;l','m','j;l',0,0,';lj'),(3,'kisanno.3','m','rau',18,18,'rau'),(8,'gbkj','m','hk',0,0,'Hhlh'),(11,'mkl','f','mkl',89,89,'mkl1'),(18,'mach','m','vil',0,0,'address'),(45,'hkj','m','hkjg',8,709,'hlkh'),(123,'asd','m','asdio',12,13,'asd');
/*!40000 ALTER TABLE `farmers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `itemid` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'satisified .nice portal',2),(2,'item was of bad quality.',2),(28,'good',2),(28,'fdkgdf',30);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gj`
--

DROP TABLE IF EXISTS `gj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gj` (
  `name` char(35) default NULL,
  `r` int(11) NOT NULL default '0',
  PRIMARY KEY  (`r`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gj`
--

LOCK TABLES `gj` WRITE;
/*!40000 ALTER TABLE `gj` DISABLE KEYS */;
/*!40000 ALTER TABLE `gj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest` (
  `guest_no` int(11) NOT NULL auto_increment,
  `room_no` varchar(20) default NULL,
  `booked_from` date default NULL,
  `booked_till` date default NULL,
  `contact_no` varchar(20) default NULL,
  PRIMARY KEY  (`guest_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_room`
--

DROP TABLE IF EXISTS `guest_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_room` (
  `room_no` varchar(20) NOT NULL,
  `floor` varchar(20) NOT NULL,
  `capacity` int(10) NOT NULL,
  `ac` tinyint(1) default '0',
  PRIMARY KEY  (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_room`
--

LOCK TABLES `guest_room` WRITE;
/*!40000 ALTER TABLE `guest_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestroom`
--

DROP TABLE IF EXISTS `guestroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestroom` (
  `guest_no` int(11) NOT NULL,
  `guest_name` varchar(20) NOT NULL,
  `room_no` varchar(20) NOT NULL,
  `floor` varchar(20) default NULL,
  `capacity` int(10) default NULL,
  `current` int(20) default NULL,
  `ac` tinyint(1) default NULL,
  `booked_from` date default NULL,
  `booked_till` date default NULL,
  `contact_no` int(12) default NULL,
  PRIMARY KEY  (`room_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestroom`
--

LOCK TABLES `guestroom` WRITE;
/*!40000 ALTER TABLE `guestroom` DISABLE KEYS */;
INSERT INTO `guestroom` VALUES (1,'Ram','301','3',2,2,1,'2012-11-13','2012-03-17',986754321),(2,'Aditya','314','3',3,2,1,'2012-11-15','2012-11-21',983451298),(3,'Prateek','302','3',3,2,1,'2012-11-16','2012-11-28',983254221),(4,'kunj','303','3',3,3,1,'2012-12-01','2012-12-11',984554532),(5,'Mohit','306','3',3,3,1,'2012-11-18','2012-11-22',902342423),(6,'Abhishek','307','3',3,2,1,'2012-11-08','2012-11-26',902121022),(7,'Yash','308','3',3,3,1,'2012-12-04','2012-12-08',904955565),(8,'Sanchit','309','3',2,2,0,'2012-11-25','2012-11-27',906590540),(9,'Anjali','310','3',2,2,0,'2012-11-19','2012-11-22',892342394),(10,'Bharat','311','3',2,2,0,'2012-11-16','2012-11-17',892494439),(11,'Kapil','312','3',2,2,0,'2012-11-30','2012-12-01',812334034),(12,'','313','3',2,0,1,'0000-00-00','0000-00-00',0),(13,'','315','3',2,0,1,'0000-00-00','0000-00-00',0),(14,'','316','3',2,0,1,'0000-00-00','0000-00-00',0),(15,'','317','3',2,0,1,'0000-00-00','0000-00-00',0),(16,'','318','3',3,0,0,'0000-00-00','0000-00-00',0),(17,'','319','3',3,0,0,'0000-00-00','0000-00-00',0),(18,'','320','3',3,0,0,'0000-00-00','0000-00-00',0),(19,'','321','3',3,0,0,'0000-00-00','0000-00-00',0),(20,'','322','3',3,0,0,'0000-00-00','0000-00-00',0),(21,'','323','3',3,0,0,'0000-00-00','0000-00-00',0),(22,'','324','3',3,0,0,'0000-00-00','0000-00-00',0),(23,'Pallav','304','3',3,3,0,'2012-11-16','2012-11-29',992342335),(24,'Arpit','305','3',3,2,1,'0000-00-00','2012-12-04',993435343);
/*!40000 ALTER TABLE `guestroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hit`
--

DROP TABLE IF EXISTS `hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hit` (
  `hit` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hit`
--

LOCK TABLES `hit` WRITE;
/*!40000 ALTER TABLE `hit` DISABLE KEYS */;
INSERT INTO `hit` VALUES (2172);
/*!40000 ALTER TABLE `hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `Description` text,
  `type` tinyint(1) NOT NULL,
  `state` tinyint(1) NOT NULL default '0',
  `userid` int(11) NOT NULL,
  `buyerid` int(11) default NULL,
  `bid` int(6) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `name` (`name`,`Description`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Razer Controller','Compatible with xbox and pc.Use for gaming.2 month old in good condition with no scratches.',1,1,1,30,5001,1350852106),(2,'wwe\'12','new cs. works on ps3',1,1,2,3,1799,1350853106),(3,'Watch','Casio watch...1 year old.\r\n2 years of warranty left\r\nin good condition...one small scratch1',0,1,3,36,1000,1352914608),(4,'samsung galaxy','very old....many scratches',1,1,1,NULL,1500,1350851106),(29,'p','fdkgj',1,0,30,NULL,300,1353277145),(30,'pandaa','ppp',0,0,30,NULL,400,1353279455),(31,'science notes','bekarr',1,0,36,36,15,1353002833);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mytable`
--

DROP TABLE IF EXISTS `mytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mytable` (
  `name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytable`
--

LOCK TABLES `mytable` WRITE;
/*!40000 ALTER TABLE `mytable` DISABLE KEYS */;
/*!40000 ALTER TABLE `mytable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsfeed`
--

DROP TABLE IF EXISTS `newsfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsfeed` (
  `description` varchar(1000) NOT NULL,
  `start_date` date default NULL,
  `finish_date` date default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsfeed`
--

LOCK TABLES `newsfeed` WRITE;
/*!40000 ALTER TABLE `newsfeed` DISABLE KEYS */;
INSERT INTO `newsfeed` VALUES ('This is Diwali','2012-11-15','2012-11-20'),('End sem from monday','2012-11-15','2012-11-21'),('Electricity will not be available today from 10:00 am to 4:00 pm','2012-11-15','2012-11-17'),('Internet problem','2012-11-15','2012-11-18'),('New mess menu applicable from 2012-11-17','2012-11-15','2012-11-20');
/*!40000 ALTER TABLE `newsfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rent` (
  `occupancy_type` varchar(20) NOT NULL default '',
  `ac` tinyint(1) NOT NULL default '0',
  `rent` varchar(20) default NULL,
  PRIMARY KEY  (`occupancy_type`,`ac`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES ('2',0,'500'),('2',1,'1000'),('3',0,'750'),('3',1,'1200');
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bdate` date default NULL,
  `sex` char(1) default NULL,
  `responsibility` varchar(100) default NULL,
  `job` varchar(100) NOT NULL,
  `address` varchar(200) default NULL,
  `contact_no` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('1','Sanchit','1972-03-01','M','cleaning','cleaning','Hyderabad,India','323423'),('13','petric','1994-03-03','M','cleaning','cleaning','hyderabad','23223'),('14','mohit','1990-12-12','F','cleaning','cleaning','delhi','678685'),('2','Anique','1991-01-01','M','ground floor','cleaning','Banglore','92341'),('23','bhavshuk','1988-11-19','M','cleaning','cleaning','hyd,andhra','42342'),('25','vishal','1983-03-09','M','cleaning','cleaning','Andhra','22323'),('26','hurdygurdy','1990-12-19','M','cleaning','cleaning','hyd','9546945'),('4','Divyanshu','1990-12-13','M','claning','cleaning','Gantur','923443'),('9','suresh','1991-11-12','M','cleaning','cleaning','hyd','23223');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_room`
--

DROP TABLE IF EXISTS `student_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_room` (
  `room_no` varchar(20) NOT NULL,
  `floor` varchar(20) NOT NULL,
  `capacity` int(11) NOT NULL,
  `occupancy_status` int(11) default '0',
  `student1` int(11) default NULL,
  `student2` int(11) default NULL,
  `student3` int(11) default NULL,
  PRIMARY KEY  (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_room`
--

LOCK TABLES `student_room` WRITE;
/*!40000 ALTER TABLE `student_room` DISABLE KEYS */;
INSERT INTO `student_room` VALUES ('1','0',2,2,201101127,201101198,NULL),('10','0',2,2,201102128,201101124,NULL),('101','1',3,0,NULL,NULL,NULL),('102','1',3,0,NULL,NULL,NULL),('103','1',3,0,NULL,NULL,NULL),('104','1',3,0,NULL,NULL,NULL),('105','1',3,0,NULL,NULL,NULL),('106','1',3,0,NULL,NULL,NULL),('107','1',3,0,NULL,NULL,NULL),('108','1',3,0,NULL,NULL,NULL),('109','1',3,0,NULL,NULL,NULL),('11','0',3,3,201101012,201102341,201102134),('110','1',3,0,NULL,NULL,NULL),('111','1',3,0,NULL,NULL,NULL),('112','1',3,0,NULL,NULL,NULL),('113','1',3,0,NULL,NULL,NULL),('114','1',3,0,NULL,NULL,NULL),('115','1',3,0,NULL,NULL,NULL),('116','1',3,0,NULL,NULL,NULL),('117','1',3,0,NULL,NULL,NULL),('118','1',3,0,NULL,NULL,NULL),('119','1',3,0,NULL,NULL,NULL),('12','0',3,3,201101324,201101325,201101139),('120','1',3,0,NULL,NULL,NULL),('13','0',3,2,201101098,201101096,NULL),('14','0',3,2,201101034,201101145,NULL),('15','0',3,1,201101169,NULL,NULL),('16','0',3,1,201203006,NULL,NULL),('17','0',3,0,NULL,NULL,NULL),('18','0',3,0,NULL,NULL,NULL),('19','0',3,0,NULL,NULL,NULL),('2','0',2,2,201101185,201101195,NULL),('20','0',3,0,NULL,NULL,NULL),('201','2',3,0,NULL,NULL,NULL),('202','2',3,0,NULL,NULL,NULL),('203','2',3,0,NULL,NULL,NULL),('204','2',3,0,NULL,NULL,NULL),('205','2',3,0,NULL,NULL,NULL),('206','2',3,0,NULL,NULL,NULL),('207','2',3,0,NULL,NULL,NULL),('208','2',3,0,NULL,NULL,NULL),('209','2',3,0,NULL,NULL,NULL),('210','2',3,0,NULL,NULL,NULL),('211','2',3,0,NULL,NULL,NULL),('212','2',3,0,NULL,NULL,NULL),('213','2',3,0,NULL,NULL,NULL),('214','2',3,0,NULL,NULL,NULL),('215','2',3,0,NULL,NULL,NULL),('216','2',3,0,NULL,NULL,NULL),('217','2',3,0,NULL,NULL,NULL),('218','2',3,0,NULL,NULL,NULL),('219','2',3,0,NULL,NULL,NULL),('220','2',3,0,NULL,NULL,NULL),('3','0',2,2,20111012,201101126,NULL),('4','0',2,2,201101112,201101011,NULL),('5','0',2,2,201203003,201101055,NULL),('6','0',2,1,201203002,NULL,NULL),('7','0',2,2,201101111,201101258,NULL),('8','0',2,2,201102345,201102334,NULL),('9','0',2,2,201101132,201101148,NULL);
/*!40000 ALTER TABLE `student_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `roll_no` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` char(1) default NULL,
  `bdate` date default NULL,
  `email_id` varchar(100) NOT NULL,
  `bloodgroup` varchar(5) default NULL,
  `allergy` varchar(100) default NULL,
  `address` varchar(1000) default NULL,
  `contact_no` varchar(20) default NULL,
  `guardian_name` varchar(100) default NULL,
  `guardian_contact_no` varchar(20) default NULL,
  PRIMARY KEY  (`roll_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (201101011,'Mahaver','m','0000-00-00','mahaver.chopra@students.iiit.ac.in','B+ve','none','1, rajpath, delhi','7702646897','Chopra','9425318907'),(201101055,'Parin','m','0000-00-00','parin.porecha@students.iiit.ac.in','B+ve','None','address','9573589405','asf',''),(201101127,'Yash','m','0000-00-00','yash.shah@students.iiit.ac.in','A pos','none','ahd,india','953985','abcd','92842429'),(201203002,'rahul','m','0000-00-00','rahul.anand@students.iiit.ac.in','B-ve','none','56, nehru nagar, bhopal','7496557445','anand','7899874567'),(201203003,'ayush','m','0000-00-00','ayush.datta@students.iiit.ac.in','AB+','none','d block hyderabad','9245634211','fathers name','9090987656'),(201203006,'prateek','m','0000-00-00','prateek.mehta@students.iiit.ac.in','a+','none','fugw,jfgy, delhi','0989765432','yogesh','0987654321');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tablename`
--

DROP TABLE IF EXISTS `tablename`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tablename` (
  `name` varchar(40) default NULL,
  `content` varchar(100) default NULL,
  `status` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablename`
--

LOCK TABLES `tablename` WRITE;
/*!40000 ALTER TABLE `tablename` DISABLE KEYS */;
INSERT INTO `tablename` VALUES ('mahavir','just joined',1),('ass','just joined',1),('ass','<img src=../photos/smiley/like.jpeg alt=\"!\" >',1),('ass','<img src=../photos/smiley/troll.jpeg alt=\"!\" >',1),('ass','kya haal?',1),('ass','just joined',1),('nice','just joined',1),('nice','<img src=../photos/smiley/like.jpeg alt=\"!\" >',1),('ass','hi',1),('ass','yeh ass kya pata lon hai',1),('nice','mai hu ass ! ',1),('ass','sahi bata!!!',1),('ass','<img src=../photos/smiley/tounge.jpeg alt=\":p\" >',1),('ass','tue to <img src=../photos/smiley/troll.jpeg alt=\"!\" > kar dia be',1),('mahavir','just joined',1),('mahavir','hi',1),('mahavir','<img src=../photos/smiley/troll.jpeg alt=\"!\" >',1),('!','just joined',1),('mahavir','just joined',1),('akshay','just joined',1),('mahavir','hi',1),('akshay','hi',1),('mahavir','just joined',1),('mahavir','aur kaisa hai',1),('mahavir','mast hai na yeh',1),('mahavir','bhiaooo',1),('mahavir','<img src=../photos/smiley/tounge.jpeg alt=\":p\" >',1),('akshay','<img src=../photos/smiley/like.jpeg alt=\"!\" >',1),('pooo','just joined',1),('pooo','<img src=../photos/smiley/like.jpeg alt=\"!\" >',1),('pooo','<img src=../photos/smiley/troll.jpeg alt=\"!\" >',1),('pooo','BEWAKOOF MAHAVER !',1),('pooo','<img src=../photos/smiley/bigrin.jpeg alt=\":D\" >',1),('!','just joined',1),('mahavir','just joined',1),('mahavir','hi',1),('saksham','just joined',1),('mahavir','aur kaisa hai',1),('mahavir','bund',1),('saksham','m mast hun',1),('saksham','baaki log kaun h',1),('mahavir','<img src=../photos/smiley/like.jpeg alt=\"!\" >',1),('mahavir','nyc dekh raha hai faad vale',1),('saksham','(y)',1),('mahavir','are sab abhi bethe hua nahi hai',1),('mahavir','nam static hai',1),('saksham','acha',1),('mahavir','jo bhi ata hai add ho jata hai',1),('saksham','tu tu bhi kar raha h yeh toh',1),('mahavir','tu smiley to try kar',1),('mahavir','<img src=../photos/smiley/troll.jpeg alt=\"!\" >',1),('saksham','<img src=../photos/smiley/bigrin.jpeg alt=\":D\" >',1),('mahavir','yeh',1),('mahavir','kya baat',1),('mahavir','<img src=../photos/smiley/tounge.jpeg alt=\":p\" >',1),('saksham','naaice.....',1),('mahavir','<img src=../photos/smiley/like.jpeg alt=\"!\" >',1),('saksham','8)',1),('mahavir','kya hai be yeh',1),('mahavir','8)',1),('saksham','B|',1),('mahavir','yeh kya hai',1),('mahavir','limited dalihai bas niche vali',1),('saksham','saare smileys nahi chal rahe',1),('mahavir','haan tho sare hardcode karna padte hai',1),('mahavir','nahi kare',1),('saksham','^_^',1),('mahavir','are yar',1),('mahavir','tu manega nahi',1),('mahavir','sab chalake dekhega',1),('saksham',':P',1),('mahavir','small p',1),('mahavir','dal gandu',1),('saksham',':P toh chalna chaiye',1),('saksham','tune abhi dala tha',1),('mahavir','<img src=../photos/smiley/tounge.jpeg alt=\":p\" >',1),('saksham','<img src=../photos/smiley/tounge.jpeg alt=\":p\" >',1),('mahavir','yeh bund',1),('saksham','ohh',1),('mahavir','sikh gaya',1),('mahavir','kya baat',1),('mahavir','fb par dono bade chote p chalte hai',1),('mahavir','bye',1),('mahavir','just joined',1),('!','just joined',1),('!','just joined',1),('!','hi',1),('!','just joined',1),('!','hi',1),('!','just joined',1),('!','just joined',1),('!','hi',1),('!','just joined',1),('!','hi',1),('!','gdl ]',1),('!','jhg',1),('!','hbkdgh',1),('!','just joined',1),('!','just joined',1),('!','hi',1),('prateek','just joined',1),('prateek','hi',1),('prateek','just joined',1),('ayush','just joined',1),('prateek','hi',1),('ayush','hi',1),('prateek','aur kaisa hai',1),('ayush','hi',1);
/*!40000 ALTER TABLE `tablename` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `ID` int(11) NOT NULL auto_increment,
  `FIRST_NAME` varchar(20) default NULL,
  `MIDDLE_NAME` varchar(20) default NULL,
  `LAST_NAME` varchar(20) default NULL,
  `ROLLNO` int(11) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `ROLLNO` (`ROLLNO`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` VALUES (1,'Vivek',NULL,'Prakash',200501110),(2,'Vivek',NULL,'Prakash',200907026);
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) default NULL,
  `name` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'False'),(2,'True');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testc`
--

DROP TABLE IF EXISTS `testc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testc` (
  `url` varchar(150) NOT NULL,
  `unique1` varchar(250) NOT NULL,
  `last_updated` varchar(30) NOT NULL,
  `postive_comment` varchar(60) NOT NULL,
  `negative_comment` varchar(60) NOT NULL,
  `positive_score` varchar(10) NOT NULL,
  `negative_score` varchar(10) NOT NULL,
  `rating` varchar(10) NOT NULL,
  PRIMARY KEY  (`unique1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testc`
--

LOCK TABLES `testc` WRITE;
/*!40000 ALTER TABLE `testc` DISABLE KEYS */;
/*!40000 ALTER TABLE `testc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` bigint(12) NOT NULL,
  `count` int(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'hello','Bali','aaa',9573589405,0,'taradheesh.bali@students.iiit.ac.in'),(2,'ayush','lodha','e-9',7702317037,0,'ayush.lodha@students.iiit.ac.in'),(4,'raveesh','motlani','E 11',9703248000,0,'raveesh.motlani@students.iiit.ac.in'),(5,'ashutosh','singla','E-2',9642538425,0,'ashutosh.single@students.iiit.ac.in'),(6,'nehal','wani','E-6',9052480529,0,'nehal.jwani@students.iiit.ac.in'),(7,'ankita','kumari','gh-326',111111111,0,'ankita.kumari@students.iiit.ac.in'),(8,'meenal','goyal','gh-122344',88881111,0,'meenal.goyal@students.iiit.ac.in'),(31,'achira ','maloo','gh-143',38573975,0,'achira.maloo@students.iiit.ac.in'),(36,'pankhuri','goyal','gh-146',999100019,0,'pankhuri.goyal@students.iiit.ac.in');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_rool`
--

DROP TABLE IF EXISTS `user_rool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_rool` (
  `roll_no` int(11) default NULL,
  `username` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_rool`
--

LOCK TABLES `user_rool` WRITE;
/*!40000 ALTER TABLE `user_rool` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_rool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(30) default NULL,
  `password` varchar(30) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `village`
--

DROP TABLE IF EXISTS `village`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `village` (
  `uid` int(10) default NULL,
  `name` varchar(30) default NULL,
  `village` varchar(30) default NULL,
  `rateperlt` int(11) default NULL,
  `supplyperlt` int(11) default NULL,
  `address` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `village`
--

LOCK TABLES `village` WRITE;
/*!40000 ALTER TABLE `village` DISABLE KEYS */;
INSERT INTO `village` VALUES (12,'kissan89','village',78,89,'add');
/*!40000 ALTER TABLE `village` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-15 17:41:37
