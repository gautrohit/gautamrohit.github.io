# MySQL-Front 5.1  (Build 1.5)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: assignment2
# ------------------------------------------------------
# Server version 5.0.22-community-nt

#
# Source for table department
#

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `DeptNo` varchar(255) NOT NULL default '',
  `deptName` varchar(255) default NULL,
  `Location` varchar(255) default NULL,
  PRIMARY KEY  (`DeptNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table department
#
LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;

INSERT INTO `department` VALUES ('1','Management','Pune');
INSERT INTO `department` VALUES ('2','HR','Mumbai');
INSERT INTO `department` VALUES ('3','Engineering','Pune');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table employee
#

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `EmpNo` varchar(255) default NULL,
  `Ename` varchar(255) default NULL,
  `Job` varchar(255) default NULL,
  `MGR` varchar(255) default NULL,
  `HiredDate` date default NULL,
  `Salary` double default NULL,
  `DeptNo` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table employee
#
LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;

INSERT INTO `employee` VALUES ('101','Minal Choudhari','Chief Human Resources Officer','Karan R. Sahu','2017-03-03',50000,'2');
INSERT INTO `employee` VALUES ('102','Shweta Chavan','Category Manager','Kedar S. Chandure','2016-05-01',200000,'2');
INSERT INTO `employee` VALUES ('103','Aniket Chavan','Sales Manager ','Chetan P. Magdum','2016-04-02',45000,'1');
INSERT INTO `employee` VALUES ('104','Ketan Ingale','Mechanical Engineer','Pradnya T. Ghat','2015-03-01',200000,'3');
INSERT INTO `employee` VALUES ('105','Nupur Sonawane','Contract Recruiter','Tejas P. Jain','2013-04-01',346000,'2');
INSERT INTO `employee` VALUES ('106','Abhijit Nanaware','Assistant manager','Pooja A.Patil','2013-12-30',3500000,'1');
INSERT INTO `employee` VALUES ('106','Ankit Choudhari','Software Engineer','Rahul J. Chougule','2017-12-30',40000,'3');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
