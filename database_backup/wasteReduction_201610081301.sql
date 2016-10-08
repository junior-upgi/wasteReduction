CREATE DATABASE  IF NOT EXISTS `wasteReduction` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `wasteReduction`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 192.168.168.86    Database: wasteReduction
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

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
-- Temporary view structure for view `dataOverdue`
--

DROP TABLE IF EXISTS `dataOverdue`;
/*!50001 DROP VIEW IF EXISTS `dataOverdue`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dataOverdue` AS SELECT 
 1 AS `departmentTitle`,
 1 AS `year`,
 1 AS `month`,
 1 AS `reduction`,
 1 AS `title`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `divisionID` int(11) DEFAULT NULL,
  `principle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_department_division_idx` (`divisionID`),
  CONSTRAINT `fk_department_division` FOREIGN KEY (`divisionID`) REFERENCES `division` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (0,'採購資材課',0,'陳逸樺'),(1,'倉儲課',1,'楊玉華'),(2,'業務課',1,'趙婉伶'),(3,'CNC課',2,'林易辰'),(4,'設計課-製成品組',2,'林宜如'),(5,'檢瓶課',3,'李淑華'),(6,'模具維修課',3,'林明崑'),(7,'製造課',3,'陳志如'),(8,'充填組立課',4,'林川洲'),(9,'加工課-印刷組',4,'侯孟均'),(10,'加工課-噴漆組',4,'洪銘聰'),(11,'塑化課',4,'潘宗裕'),(12,'工電務課-工務',4,'連証民'),(13,'人事總務課',5,'吳孟宗'),(14,'品管課',5,'陳毓馨'),(15,'委外加工課',5,'莊文君'),(16,'財會課',6,'張慧雯'),(17,'工電務課-電務',4,'馮智政'),(18,'窯爐課',3,'張高榮'),(19,'環安室',5,'張建富'),(20,'設計課-塑蓋組',2,'沈昌言'),(21,'總經理室',0,NULL),(22,'管理部共同分攤',5,NULL),(23,'生管課',3,'翁世玲');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `principle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (0,'總經理室','高英傑'),(1,'業務部','趙婉伶'),(2,'研發部','許峻旗'),(3,'生產一部','林建睿'),(4,'生產二部','陳雨利'),(5,'管理部','許可慶'),(6,'財務部','吳宏裕');
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `expenseChart_department_annual`
--

DROP TABLE IF EXISTS `expenseChart_department_annual`;
/*!50001 DROP VIEW IF EXISTS `expenseChart_department_annual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseChart_department_annual` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `year`,
 1 AS `period`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expenseChart_department_semiannual`
--

DROP TABLE IF EXISTS `expenseChart_department_semiannual`;
/*!50001 DROP VIEW IF EXISTS `expenseChart_department_semiannual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseChart_department_semiannual` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `year`,
 1 AS `period`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expenseChart_division_annual`
--

DROP TABLE IF EXISTS `expenseChart_division_annual`;
/*!50001 DROP VIEW IF EXISTS `expenseChart_division_annual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseChart_division_annual` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `year`,
 1 AS `period`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expenseChart_division_semiannual`
--

DROP TABLE IF EXISTS `expenseChart_division_semiannual`;
/*!50001 DROP VIEW IF EXISTS `expenseChart_division_semiannual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseChart_division_semiannual` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `year`,
 1 AS `period`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expenseChart_overall_annual`
--

DROP TABLE IF EXISTS `expenseChart_overall_annual`;
/*!50001 DROP VIEW IF EXISTS `expenseChart_overall_annual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseChart_overall_annual` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `year`,
 1 AS `period`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expenseComparison_department_2016_annual`
--

DROP TABLE IF EXISTS `expenseComparison_department_2016_annual`;
/*!50001 DROP VIEW IF EXISTS `expenseComparison_department_2016_annual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseComparison_department_2016_annual` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `year`,
 1 AS `period`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expenseComparison_division_2016_annual`
--

DROP TABLE IF EXISTS `expenseComparison_division_2016_annual`;
/*!50001 DROP VIEW IF EXISTS `expenseComparison_division_2016_annual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseComparison_division_2016_annual` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `year`,
 1 AS `period`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expenseComparison_overall_2016_annual`
--

DROP TABLE IF EXISTS `expenseComparison_overall_2016_annual`;
/*!50001 DROP VIEW IF EXISTS `expenseComparison_overall_2016_annual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseComparison_overall_2016_annual` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `year`,
 1 AS `period`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expenseDifference_department_2016_annual`
--

DROP TABLE IF EXISTS `expenseDifference_department_2016_annual`;
/*!50001 DROP VIEW IF EXISTS `expenseDifference_department_2016_annual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseDifference_department_2016_annual` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `year`,
 1 AS `period`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expenseDifference_division_2016_annual`
--

DROP TABLE IF EXISTS `expenseDifference_division_2016_annual`;
/*!50001 DROP VIEW IF EXISTS `expenseDifference_division_2016_annual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseDifference_division_2016_annual` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `year`,
 1 AS `period`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expenseDifference_overall_2016_annual`
--

DROP TABLE IF EXISTS `expenseDifference_overall_2016_annual`;
/*!50001 DROP VIEW IF EXISTS `expenseDifference_overall_2016_annual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseDifference_overall_2016_annual` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `year`,
 1 AS `period`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expenseList_department`
--

DROP TABLE IF EXISTS `expenseList_department`;
/*!50001 DROP VIEW IF EXISTS `expenseList_department`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseList_department` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `year`,
 1 AS `month`,
 1 AS `amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expenseList_division`
--

DROP TABLE IF EXISTS `expenseList_division`;
/*!50001 DROP VIEW IF EXISTS `expenseList_division`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseList_division` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `year`,
 1 AS `month`,
 1 AS `amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `expenseList_overall`
--

DROP TABLE IF EXISTS `expenseList_overall`;
/*!50001 DROP VIEW IF EXISTS `expenseList_overall`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `expenseList_overall` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `year`,
 1 AS `month`,
 1 AS `amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `itemData`
--

DROP TABLE IF EXISTS `itemData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemData` (
  `id` int(11) NOT NULL,
  `objectiveID` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `measureUnit` varchar(255) DEFAULT NULL,
  `unitCost` decimal(11,2) DEFAULT NULL,
  `recycleCost` int(11) DEFAULT NULL,
  `referenceQuantity` decimal(11,2) DEFAULT NULL,
  `referenceAmount` int(11) DEFAULT NULL,
  `referencePeriod` int(11) DEFAULT NULL,
  `officialData` tinyint(4) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`objectiveID`),
  KEY `fk_listItem_objective_idx` (`objectiveID`),
  CONSTRAINT `fk_itemData_objective` FOREIGN KEY (`objectiveID`) REFERENCES `objective` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemData`
--

LOCK TABLES `itemData` WRITE;
/*!40000 ALTER TABLE `itemData` DISABLE KEYS */;
INSERT INTO `itemData` VALUES (0,0,'熱A棧板','個',270.00,0,NULL,NULL,NULL,1,NULL),(1,1,'貨車運費','趟',600.00,NULL,420.00,NULL,12,1,NULL),(2,8,'去漬油','箱',1000.00,NULL,84.00,NULL,12,1,NULL),(3,8,'柴油','公升',16.50,NULL,0.00,NULL,12,1,NULL),(4,8,'桶裝鋯珠','桶',10000.00,NULL,73.00,NULL,12,1,NULL),(5,27,'SG磚棒夾頭','組',5000.00,2000,NULL,NULL,NULL,1,NULL),(6,28,'DG磚棒夾頭','組',15000.00,4000,NULL,NULL,NULL,1,NULL),(7,29,'傳遞系統塗料','組',1680.00,NULL,160.00,NULL,12,1,NULL),(8,39,'(停用) 吹風頭','只',650.00,NULL,NULL,NULL,NULL,0,'(500+800)/2'),(9,39,'(停用) 初模連底','組',9850.00,NULL,NULL,NULL,NULL,0,'(4700+13000+500+1500)/2'),(10,39,'(停用) 成模連底','組',14300.00,NULL,NULL,NULL,NULL,0,'(5000+19000+1300+3300)/2'),(11,39,'(停用) 漏斗','只',925.00,NULL,NULL,NULL,NULL,0,'(850+1000)/2'),(12,39,'(停用) 口模','組',1850.00,NULL,NULL,NULL,NULL,0,'(1700+2000)/2'),(13,39,'(停用) 心棒','支',650.00,NULL,NULL,NULL,NULL,0,'(500+800)/2'),(14,39,'(停用) 瓶夾','組',850.00,NULL,NULL,NULL,NULL,0,'(750+950)/2'),(15,39,'(停用) 整套模具','套',169050.00,NULL,NULL,NULL,NULL,0,'停用 ((4700+13000+500+1500)/2+(5000+19000+1300+3300)/2)*7'),(16,39,'(停用) 單組試模模具','組',25075.00,NULL,NULL,NULL,NULL,0,'停用 (4700+13000+500+1500)/2+(5000+19000+1300+3300)/2+(850+1000)/2'),(17,31,'契約容量罰款','月',NULL,NULL,NULL,685011,10,1,NULL),(18,41,'宿舍水電費','月',NULL,NULL,NULL,228000,12,1,NULL),(19,43,'廢棄物處理費','月',NULL,NULL,NULL,22500,12,1,NULL),(20,46,'加班費','月',NULL,NULL,NULL,378130,10,1,NULL),(21,60,'塑膠模修費','月',NULL,NULL,NULL,420000,12,1,NULL),(22,20,'印刷品報廢','月',NULL,NULL,NULL,920000,12,1,NULL),(23,23,'噴漆品報廢','月',NULL,NULL,NULL,2383949,12,1,NULL),(24,25,'委外品報廢','月',NULL,NULL,NULL,4050000,12,1,NULL),(25,5,'翻箱人工','小時',125.00,NULL,1110.00,NULL,12,1,NULL),(26,14,'重檢人工','小時',111.00,NULL,2072.00,NULL,12,1,NULL),(27,15,'翻箱人工','小時',111.00,NULL,396.00,NULL,12,1,NULL),(28,19,'重檢人工','小時',103.00,NULL,720.00,NULL,12,1,NULL),(29,21,'(停用) 噴漆運行成本','小時',4300.00,NULL,462.00,NULL,10,1,NULL),(30,26,'玻璃製造成本','分鐘',107.00,NULL,1368.00,NULL,12,1,NULL),(31,30,'玻璃製造成本','分鐘',107.00,NULL,6408.00,NULL,12,1,NULL),(32,2,'拖櫃費','趟',-4850.00,NULL,0.00,NULL,12,1,NULL),(33,10,'庫存出口杯','只',500.00,0,NULL,NULL,NULL,1,NULL),(34,49,'配件延誤損失','次',8000.00,NULL,24.00,NULL,12,1,NULL),(35,50,'紙箱退貨損失','次',8000.00,NULL,12.00,NULL,12,1,NULL),(36,51,'紙箱延誤損失','次',8000.00,NULL,12.00,NULL,12,1,NULL),(37,59,'射出機製造成本','小時',283.00,NULL,1571.18,NULL,12,1,NULL),(38,61,'駐警衛服務費','月',NULL,NULL,NULL,1183608,12,1,NULL),(39,11,'瓦斯','立方米',11.00,NULL,20805.00,NULL,12,1,'</pre>平均用量預估方式：57m^3*365天=20,805m^3年用量</pre><pre>單價以2016 1~5月份平均計</pre>'),(40,0,'紅A棧板','個',160.00,0,NULL,NULL,NULL,1,NULL),(41,0,'歐規棧板','個',240.00,0,NULL,NULL,NULL,1,NULL),(42,0,'美熱棧板','個',325.00,0,NULL,NULL,NULL,1,NULL),(43,39,'(停用) 心棒冷卻管','支',500.00,NULL,NULL,NULL,NULL,0,NULL),(44,62,'成模連底','組',14300.00,NULL,NULL,NULL,NULL,1,'(5000+19000+1300+3300)/2'),(45,62,'初模連底','組',9850.00,NULL,NULL,NULL,NULL,1,'(4700+13000+500+1500)/2'),(46,62,'漏斗','只',925.00,NULL,NULL,NULL,NULL,1,'(850+1000)/2'),(47,62,'口模+內套環','組',1850.00,NULL,NULL,NULL,NULL,1,'(1700+2000)/2'),(48,62,'心棒','只',650.00,NULL,NULL,NULL,NULL,1,'(500+800)/2'),(49,62,'心棒冷卻管','只',500.00,NULL,NULL,NULL,NULL,1,NULL),(50,62,'吹風頭','只',650.00,NULL,NULL,NULL,NULL,1,'(500+800)/2'),(51,62,'瓶夾','組',850.00,NULL,NULL,NULL,NULL,1,'(750+950)/2'),(52,62,'吹氣管','只',350.00,NULL,NULL,NULL,NULL,1,NULL),(53,63,'噴漆運行成本','小時',4300.00,NULL,469.94,NULL,12,1,NULL);
/*!40000 ALTER TABLE `itemData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthlyExpense`
--

DROP TABLE IF EXISTS `monthlyExpense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthlyExpense` (
  `departmentID` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `officialData` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`departmentID`,`year`,`month`),
  CONSTRAINT `fk_monthlyExpense_department` FOREIGN KEY (`departmentID`) REFERENCES `department` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthlyExpense`
--

LOCK TABLES `monthlyExpense` WRITE;
/*!40000 ALTER TABLE `monthlyExpense` DISABLE KEYS */;
INSERT INTO `monthlyExpense` VALUES (0,2015,1,352821,NULL,1),(0,2015,2,358165,NULL,1),(0,2015,3,387880,NULL,1),(0,2015,4,322471,NULL,1),(0,2015,5,382635,NULL,1),(0,2015,6,359063,NULL,1),(0,2015,7,334955,NULL,1),(0,2015,8,385373,NULL,1),(0,2015,9,373206,NULL,1),(0,2015,10,384476,NULL,1),(0,2015,11,359747,NULL,1),(0,2015,12,187842,NULL,1),(0,2016,1,453178,NULL,1),(0,2016,2,464291,NULL,1),(0,2016,3,355758,NULL,1),(0,2016,4,355848,NULL,1),(0,2016,5,327506,NULL,1),(0,2016,6,356890,NULL,1),(0,2016,7,344203,NULL,1),(0,2016,8,337849,NULL,1),(0,2016,9,NULL,NULL,0),(0,2016,10,NULL,NULL,0),(0,2016,11,NULL,NULL,0),(0,2016,12,NULL,NULL,0),(1,2015,1,2540886,NULL,1),(1,2015,2,3175262,NULL,1),(1,2015,3,4169512,NULL,1),(1,2015,4,3514291,NULL,1),(1,2015,5,2397485,NULL,1),(1,2015,6,2464183,NULL,1),(1,2015,7,3460749,NULL,1),(1,2015,8,2590267,NULL,1),(1,2015,9,2352402,NULL,1),(1,2015,10,2158647,NULL,1),(1,2015,11,1916855,NULL,1),(1,2015,12,2379786,NULL,1),(1,2016,1,2242278,NULL,1),(1,2016,2,1782772,NULL,1),(1,2016,3,2293855,NULL,1),(1,2016,4,2001951,NULL,1),(1,2016,5,2261102,NULL,1),(1,2016,6,1796841,NULL,1),(1,2016,7,2054070,NULL,1),(1,2016,8,5572666,NULL,1),(1,2016,9,NULL,NULL,0),(1,2016,10,NULL,NULL,0),(1,2016,11,NULL,NULL,0),(1,2016,12,NULL,NULL,0),(2,2015,1,13107598,NULL,1),(2,2015,2,6744221,NULL,1),(2,2015,3,5963843,NULL,1),(2,2015,4,13912615,NULL,1),(2,2015,5,7578403,NULL,1),(2,2015,6,6433911,NULL,1),(2,2015,7,9679169,NULL,1),(2,2015,8,10549327,NULL,1),(2,2015,9,8218118,NULL,1),(2,2015,10,22507377,NULL,1),(2,2015,11,5453587,NULL,1),(2,2015,12,8541762,NULL,1),(2,2016,1,5330769,NULL,1),(2,2016,2,3857846,NULL,1),(2,2016,3,4749365,NULL,1),(2,2016,4,5432912,NULL,1),(2,2016,5,2521483,NULL,1),(2,2016,6,4812561,NULL,1),(2,2016,7,4356066,NULL,1),(2,2016,8,1879036,NULL,1),(2,2016,9,NULL,NULL,0),(2,2016,10,NULL,NULL,0),(2,2016,11,NULL,NULL,0),(2,2016,12,NULL,NULL,0),(3,2015,1,320053,'因組織結構異動，此為推算值',1),(3,2015,2,316135,'因組織結構異動，此為推算值',1),(3,2015,3,326506,'因組織結構異動，此為推算值',1),(3,2015,4,319225,'因組織結構異動，此為推算值',1),(3,2015,5,332325,'因組織結構異動，此為推算值',1),(3,2015,6,319870,'因組織結構異動，此為推算值',1),(3,2015,7,320384,'因組織結構異動，此為推算值',1),(3,2015,8,323515,'因組織結構異動，此為推算值',1),(3,2015,9,309113,'因組織結構異動，此為推算值',1),(3,2015,10,289845,'因組織結構異動，此為推算值',1),(3,2015,11,388831,'因組織結構異動，此為推算值',1),(3,2015,12,297180,'因組織結構異動，此為推算值',1),(3,2016,1,276170,NULL,1),(3,2016,2,283906,NULL,1),(3,2016,3,275159,NULL,1),(3,2016,4,274780,NULL,1),(3,2016,5,288456,NULL,1),(3,2016,6,285576,NULL,1),(3,2016,7,420066,NULL,1),(3,2016,8,303898,NULL,1),(3,2016,9,NULL,NULL,0),(3,2016,10,NULL,NULL,0),(3,2016,11,NULL,NULL,0),(3,2016,12,NULL,NULL,0),(4,2015,1,427271,NULL,1),(4,2015,2,388719,NULL,1),(4,2015,3,437940,NULL,1),(4,2015,4,396916,NULL,1),(4,2015,5,502786,NULL,1),(4,2015,6,418427,NULL,1),(4,2015,7,444362,NULL,1),(4,2015,8,443290,NULL,1),(4,2015,9,450217,NULL,1),(4,2015,10,516830,NULL,1),(4,2015,11,457394,NULL,1),(4,2015,12,209138,NULL,1),(4,2016,1,472671,NULL,1),(4,2016,2,477710,NULL,1),(4,2016,3,499306,NULL,1),(4,2016,4,475282,NULL,1),(4,2016,5,470712,NULL,1),(4,2016,6,475202,NULL,1),(4,2016,7,552470,NULL,1),(4,2016,8,489521,NULL,1),(4,2016,9,NULL,NULL,0),(4,2016,10,NULL,NULL,0),(4,2016,11,NULL,NULL,0),(4,2016,12,NULL,NULL,0),(5,2015,1,4399575,NULL,1),(5,2015,2,4728224,NULL,1),(5,2015,3,4241255,NULL,1),(5,2015,4,4196864,NULL,1),(5,2015,5,3574374,NULL,1),(5,2015,6,3940357,NULL,1),(5,2015,7,3573059,NULL,1),(5,2015,8,4105648,NULL,1),(5,2015,9,4009281,NULL,1),(5,2015,10,3801867,NULL,1),(5,2015,11,4127475,NULL,1),(5,2015,12,3210751,NULL,1),(5,2016,1,3167757,NULL,1),(5,2016,2,3181382,NULL,1),(5,2016,3,3189825,NULL,1),(5,2016,4,3409329,NULL,1),(5,2016,5,3567268,NULL,1),(5,2016,6,3843423,NULL,1),(5,2016,7,3594878,NULL,1),(5,2016,8,3463995,NULL,1),(5,2016,9,NULL,NULL,0),(5,2016,10,NULL,NULL,0),(5,2016,11,NULL,NULL,0),(5,2016,12,NULL,NULL,0),(6,2015,1,2417925,'因組織結構異動，此為推算值',1),(6,2015,2,2388326,'因組織結構異動，此為推算值',1),(6,2015,3,2466684,'因組織結構異動，此為推算值',1),(6,2015,4,2411674,'因組織結構異動，此為推算值',1),(6,2015,5,2510642,'因組織結構異動，此為推算值',1),(6,2015,6,2416544,'因組織結構異動，此為推算值',1),(6,2015,7,2420430,'因組織結構異動，此為推算值',1),(6,2015,8,2444081,'因組織結構異動，此為推算值',1),(6,2015,9,2335278,'因組織結構異動，此為推算值',1),(6,2015,10,2189717,'因組織結構異動，此為推算值',1),(6,2015,11,2937529,'因組織結構異動，此為推算值',1),(6,2015,12,2245128,'因組織結構異動，此為推算值',1),(6,2016,1,2081644,NULL,1),(6,2016,2,2139598,NULL,1),(6,2016,3,2052358,NULL,1),(6,2016,4,2149181,NULL,1),(6,2016,5,2143466,NULL,1),(6,2016,6,2115520,NULL,1),(6,2016,7,2069458,NULL,1),(6,2016,8,2162623,NULL,1),(6,2016,9,NULL,NULL,0),(6,2016,10,NULL,NULL,0),(6,2016,11,NULL,NULL,0),(6,2016,12,NULL,NULL,0),(7,2015,1,8625233,NULL,1),(7,2015,2,8021395,NULL,1),(7,2015,3,8947496,NULL,1),(7,2015,4,7772569,NULL,1),(7,2015,5,8144892,NULL,1),(7,2015,6,8511326,NULL,1),(7,2015,7,8411978,NULL,1),(7,2015,8,8627938,NULL,1),(7,2015,9,8531945,NULL,1),(7,2015,10,8260908,NULL,1),(7,2015,11,8266457,NULL,1),(7,2015,12,6732136,NULL,1),(7,2016,1,6391967,NULL,1),(7,2016,2,6495078,NULL,1),(7,2016,3,6540044,NULL,1),(7,2016,4,6003958,NULL,1),(7,2016,5,6137700,NULL,1),(7,2016,6,6453818,NULL,1),(7,2016,7,6511622,NULL,1),(7,2016,8,6565536,NULL,1),(7,2016,9,NULL,NULL,0),(7,2016,10,NULL,NULL,0),(7,2016,11,NULL,NULL,0),(7,2016,12,NULL,NULL,0),(8,2015,1,2768185,NULL,1),(8,2015,2,2455573,NULL,1),(8,2015,3,2847632,NULL,1),(8,2015,4,2822102,NULL,1),(8,2015,5,2642766,NULL,1),(8,2015,6,2285299,NULL,1),(8,2015,7,2809277,NULL,1),(8,2015,8,4194274,NULL,1),(8,2015,9,3531022,NULL,1),(8,2015,10,2780946,NULL,1),(8,2015,11,2108530,NULL,1),(8,2015,12,1502124,NULL,1),(8,2016,1,1758069,NULL,1),(8,2016,2,770598,NULL,1),(8,2016,3,1131818,NULL,1),(8,2016,4,1494558,NULL,1),(8,2016,5,1309106,NULL,1),(8,2016,6,1316030,NULL,1),(8,2016,7,795998,NULL,1),(8,2016,8,1167859,NULL,1),(8,2016,9,NULL,NULL,0),(8,2016,10,NULL,NULL,0),(8,2016,11,NULL,NULL,0),(8,2016,12,NULL,NULL,0),(9,2015,1,1227923,'因組織結構異動，此為推算值',1),(9,2015,2,1133084,'因組織結構異動，此為推算值',1),(9,2015,3,1870417,'因組織結構異動，此為推算值',1),(9,2015,4,1662370,'因組織結構異動，此為推算值',1),(9,2015,5,1701324,'因組織結構異動，此為推算值',1),(9,2015,6,1621927,'因組織結構異動，此為推算值',1),(9,2015,7,1691029,'因組織結構異動，此為推算值',1),(9,2015,8,1568322,'因組織結構異動，此為推算值',1),(9,2015,9,1529512,'因組織結構異動，此為推算值',1),(9,2015,10,1465741,'因組織結構異動，此為推算值',1),(9,2015,11,941634,'因組織結構異動，此為推算值',1),(9,2015,12,678326,'因組織結構異動，此為推算值',1),(9,2016,1,788186,NULL,1),(9,2016,2,687520,NULL,1),(9,2016,3,756440,NULL,1),(9,2016,4,858318,NULL,1),(9,2016,5,1125311,NULL,1),(9,2016,6,1241219,NULL,1),(9,2016,7,1010692,NULL,1),(9,2016,8,1326524,NULL,1),(9,2016,9,NULL,NULL,0),(9,2016,10,NULL,NULL,0),(9,2016,11,NULL,NULL,0),(9,2016,12,NULL,NULL,0),(10,2015,1,2492021,'因組織結構異動，此為推算值',1),(10,2015,2,2299548,'因組織結構異動，此為推算值',1),(10,2015,3,3795935,'因組織結構異動，此為推算值',1),(10,2015,4,3373713,'因組織結構異動，此為推算值',1),(10,2015,5,3452770,'因組織結構異動，此為推算值',1),(10,2015,6,3291635,'因組織結構異動，此為推算值',1),(10,2015,7,3431876,'因組織結構異動，此為推算值',1),(10,2015,8,3182847,'因組織結構異動，此為推算值',1),(10,2015,9,3104083,'因組織結構異動，此為推算值',1),(10,2015,10,2974663,'因組織結構異動，此為推算值',1),(10,2015,11,1911008,'因組織結構異動，此為推算值',1),(10,2015,12,1376636,'因組織結構異動，此為推算值',1),(10,2016,1,1454380,NULL,1),(10,2016,2,1568523,NULL,1),(10,2016,3,1761354,NULL,1),(10,2016,4,1809466,NULL,1),(10,2016,5,1911125,NULL,1),(10,2016,6,1841364,NULL,1),(10,2016,7,4921223,NULL,1),(10,2016,8,4718916,NULL,1),(10,2016,9,NULL,NULL,0),(10,2016,10,NULL,NULL,0),(10,2016,11,NULL,NULL,0),(10,2016,12,NULL,NULL,0),(11,2015,1,2153597,NULL,1),(11,2015,2,2167573,NULL,1),(11,2015,3,2134112,NULL,1),(11,2015,4,2045238,NULL,1),(11,2015,5,1995154,NULL,1),(11,2015,6,1903568,NULL,1),(11,2015,7,1856434,NULL,1),(11,2015,8,1909844,NULL,1),(11,2015,9,1955216,NULL,1),(11,2015,10,2057992,NULL,1),(11,2015,11,3983364,NULL,1),(11,2015,12,3839520,NULL,1),(11,2016,1,618162,NULL,1),(11,2016,2,437168,NULL,1),(11,2016,3,811284,NULL,1),(11,2016,4,810529,NULL,1),(11,2016,5,1010407,NULL,1),(11,2016,6,1057014,NULL,1),(11,2016,7,1220075,NULL,1),(11,2016,8,1271216,NULL,1),(11,2016,9,NULL,NULL,0),(11,2016,10,NULL,NULL,0),(11,2016,11,NULL,NULL,0),(11,2016,12,NULL,NULL,0),(12,2015,1,905678,NULL,1),(12,2015,2,543607,NULL,1),(12,2015,3,523578,NULL,1),(12,2015,4,611217,NULL,1),(12,2015,5,614508,NULL,1),(12,2015,6,534773,NULL,1),(12,2015,7,600323,NULL,1),(12,2015,8,573093,NULL,1),(12,2015,9,519156,NULL,1),(12,2015,10,541784,NULL,1),(12,2015,11,487132,NULL,1),(12,2015,12,219393,NULL,1),(12,2016,1,510930,NULL,1),(12,2016,2,559373,NULL,1),(12,2016,3,452263,NULL,1),(12,2016,4,416121,NULL,1),(12,2016,5,455504,NULL,1),(12,2016,6,474722,NULL,1),(12,2016,7,531171,NULL,1),(12,2016,8,469736,NULL,1),(12,2016,9,NULL,NULL,0),(12,2016,10,NULL,NULL,0),(12,2016,11,NULL,NULL,0),(12,2016,12,NULL,NULL,0),(13,2015,1,762528,NULL,1),(13,2015,2,702637,NULL,1),(13,2015,3,701777,NULL,1),(13,2015,4,731906,NULL,1),(13,2015,5,749584,NULL,1),(13,2015,6,747628,NULL,1),(13,2015,7,815107,NULL,1),(13,2015,8,841644,NULL,1),(13,2015,9,942498,NULL,1),(13,2015,10,851136,NULL,1),(13,2015,11,830185,NULL,1),(13,2015,12,796775,NULL,1),(13,2016,1,781537,NULL,1),(13,2016,2,709085,NULL,1),(13,2016,3,762002,NULL,1),(13,2016,4,655022,NULL,1),(13,2016,5,823855,NULL,1),(13,2016,6,803360,NULL,1),(13,2016,7,729871,NULL,1),(13,2016,8,721188,NULL,1),(13,2016,9,NULL,NULL,0),(13,2016,10,NULL,NULL,0),(13,2016,11,NULL,NULL,0),(13,2016,12,NULL,NULL,0),(14,2015,1,449204,'因組織結構異動，此為推算值',1),(14,2015,2,463006,'因組織結構異動，此為推算值',1),(14,2015,3,911135,'因組織結構異動，此為推算值',1),(14,2015,4,869885,'因組織結構異動，此為推算值',1),(14,2015,5,998501,'因組織結構異動，此為推算值',1),(14,2015,6,927296,'因組織結構異動，此為推算值',1),(14,2015,7,909783,'因組織結構異動，此為推算值',1),(14,2015,8,1037375,'因組織結構異動，此為推算值',1),(14,2015,9,959873,'因組織結構異動，此為推算值',1),(14,2015,10,626475,'因組織結構異動，此為推算值',1),(14,2015,11,570893,'因組織結構異動，此為推算值',1),(14,2015,12,241639,'因組織結構異動，此為推算值',1),(14,2016,1,457830,NULL,1),(14,2016,2,505909,NULL,1),(14,2016,3,474970,NULL,1),(14,2016,4,486671,NULL,1),(14,2016,5,559741,NULL,1),(14,2016,6,588066,NULL,1),(14,2016,7,543405,NULL,1),(14,2016,8,560030,NULL,1),(14,2016,9,NULL,NULL,0),(14,2016,10,NULL,NULL,0),(14,2016,11,NULL,NULL,0),(14,2016,12,NULL,NULL,0),(15,2015,1,3220478,'因組織結構異動，此為推算值',1),(15,2015,2,2971743,'因組織結構異動，此為推算值',1),(15,2015,3,4905547,'因組織結構異動，此為推算值',1),(15,2015,4,4359903,'因組織結構異動，此為推算值',1),(15,2015,5,4462069,'因組織結構異動，此為推算值',1),(15,2015,6,4253832,'因組織結構異動，此為推算值',1),(15,2015,7,4435068,'因組織結構異動，此為推算值',1),(15,2015,8,4113243,'因組織結構異動，此為推算值',1),(15,2015,9,4011456,'因組織結構異動，此為推算值',1),(15,2015,10,3844204,'因組織結構異動，此為推算值',1),(15,2015,11,2469626,'因組織結構異動，此為推算值',1),(15,2015,12,1779048,'因組織結構異動，此為推算值',1),(15,2016,1,1242504,NULL,1),(15,2016,2,1299006,NULL,1),(15,2016,3,3194054,NULL,1),(15,2016,4,2872865,NULL,1),(15,2016,5,3295588,NULL,1),(15,2016,6,4826117,NULL,1),(15,2016,7,448593,NULL,1),(15,2016,8,528022,NULL,1),(15,2016,9,NULL,NULL,0),(15,2016,10,NULL,NULL,0),(15,2016,11,NULL,NULL,0),(15,2016,12,NULL,NULL,0),(16,2015,1,320603,NULL,1),(16,2015,2,313290,NULL,1),(16,2015,3,364701,NULL,1),(16,2015,4,254262,NULL,1),(16,2015,5,409185,NULL,1),(16,2015,6,453244,NULL,1),(16,2015,7,468671,NULL,1),(16,2015,8,449737,NULL,1),(16,2015,9,365981,NULL,1),(16,2015,10,392760,NULL,1),(16,2015,11,476388,NULL,1),(16,2015,12,262280,NULL,1),(16,2016,1,375607,NULL,1),(16,2016,2,330652,NULL,1),(16,2016,3,356924,NULL,1),(16,2016,4,399801,NULL,1),(16,2016,5,476979,NULL,1),(16,2016,6,470614,NULL,1),(16,2016,7,523107,NULL,1),(16,2016,8,612539,NULL,1),(16,2016,9,NULL,NULL,0),(16,2016,10,NULL,NULL,0),(16,2016,11,NULL,NULL,0),(16,2016,12,NULL,NULL,0),(17,2015,1,437489,NULL,1),(17,2015,2,560071,NULL,1),(17,2015,3,605468,NULL,1),(17,2015,4,479705,NULL,1),(17,2015,5,596600,NULL,1),(17,2015,6,635341,NULL,1),(17,2015,7,596919,NULL,1),(17,2015,8,542785,NULL,1),(17,2015,9,596391,NULL,1),(17,2015,10,818048,NULL,1),(17,2015,11,694746,NULL,1),(17,2015,12,256185,NULL,1),(17,2016,1,714104,NULL,1),(17,2016,2,600556,NULL,1),(17,2016,3,693652,NULL,1),(17,2016,4,512701,NULL,1),(17,2016,5,528944,NULL,1),(17,2016,6,649880,NULL,1),(17,2016,7,600839,NULL,1),(17,2016,8,663732,NULL,1),(17,2016,9,NULL,NULL,0),(17,2016,10,NULL,NULL,0),(17,2016,11,NULL,NULL,0),(17,2016,12,NULL,NULL,0),(18,2015,1,5406487,NULL,1),(18,2015,2,4888915,NULL,1),(18,2015,3,5175613,NULL,1),(18,2015,4,4865424,NULL,1),(18,2015,5,5023946,NULL,1),(18,2015,6,5450738,NULL,1),(18,2015,7,5523195,NULL,1),(18,2015,8,5555881,NULL,1),(18,2015,9,5473405,NULL,1),(18,2015,10,4899716,NULL,1),(18,2015,11,4712727,NULL,1),(18,2015,12,4366535,NULL,1),(18,2016,1,5842390,NULL,1),(18,2016,2,5439690,NULL,1),(18,2016,3,5848701,NULL,1),(18,2016,4,5406960,NULL,1),(18,2016,5,5617677,NULL,1),(18,2016,6,5977757,NULL,1),(18,2016,7,6243163,NULL,1),(18,2016,8,6405981,NULL,1),(18,2016,9,NULL,NULL,0),(18,2016,10,NULL,NULL,0),(18,2016,11,NULL,NULL,0),(18,2016,12,NULL,NULL,0),(19,2015,1,100011,NULL,1),(19,2015,2,106396,NULL,1),(19,2015,3,128931,NULL,1),(19,2015,4,121807,NULL,1),(19,2015,5,99557,NULL,1),(19,2015,6,107476,NULL,1),(19,2015,7,111862,NULL,1),(19,2015,8,109746,NULL,1),(19,2015,9,108540,NULL,1),(19,2015,10,106501,NULL,1),(19,2015,11,113549,NULL,1),(19,2015,12,37737,NULL,1),(19,2016,1,111372,NULL,1),(19,2016,2,106129,NULL,1),(19,2016,3,105127,NULL,1),(19,2016,4,106797,NULL,1),(19,2016,5,107191,NULL,1),(19,2016,6,139209,NULL,1),(19,2016,7,111003,NULL,1),(19,2016,8,110678,NULL,1),(19,2016,9,NULL,NULL,0),(19,2016,10,NULL,NULL,0),(19,2016,11,NULL,NULL,0),(19,2016,12,NULL,NULL,0),(20,2015,1,113511,NULL,1),(20,2015,2,120217,NULL,1),(20,2015,3,131933,NULL,1),(20,2015,4,107832,NULL,1),(20,2015,5,121738,NULL,1),(20,2015,6,121075,NULL,1),(20,2015,7,128091,NULL,1),(20,2015,8,135536,NULL,1),(20,2015,9,135045,NULL,1),(20,2015,10,137983,NULL,1),(20,2015,11,93617,NULL,1),(20,2015,12,7406,NULL,1),(20,2016,1,56223,NULL,1),(20,2016,2,59144,NULL,1),(20,2016,3,71653,NULL,1),(20,2016,4,86128,NULL,1),(20,2016,5,69595,NULL,1),(20,2016,6,66778,NULL,1),(20,2016,7,64991,NULL,1),(20,2016,8,65130,NULL,1),(20,2016,9,NULL,NULL,0),(20,2016,10,NULL,NULL,0),(20,2016,11,NULL,NULL,0),(20,2016,12,NULL,NULL,0),(21,2015,1,757048,NULL,1),(21,2015,2,721042,NULL,1),(21,2015,3,764522,NULL,1),(21,2015,4,85370,NULL,1),(21,2015,5,791198,NULL,1),(21,2015,6,733317,NULL,1),(21,2015,7,732203,NULL,1),(21,2015,8,792997,NULL,1),(21,2015,9,787403,NULL,1),(21,2015,10,800673,NULL,1),(21,2015,11,709101,NULL,1),(21,2015,12,345478,NULL,1),(21,2016,1,746218,NULL,1),(21,2016,2,748230,NULL,1),(21,2016,3,147259,NULL,1),(21,2016,4,287527,NULL,1),(21,2016,5,310616,NULL,1),(21,2016,6,309424,NULL,1),(21,2016,7,338676,NULL,1),(21,2016,8,342809,NULL,1),(21,2016,9,NULL,NULL,0),(21,2016,10,NULL,NULL,0),(21,2016,11,NULL,NULL,0),(21,2016,12,NULL,NULL,0),(22,2015,1,45461,NULL,1),(22,2015,2,0,NULL,1),(22,2015,3,83294,NULL,1),(22,2015,4,0,NULL,1),(22,2015,5,0,NULL,1),(22,2015,6,15071,NULL,1),(22,2015,7,0,NULL,1),(22,2015,8,0,NULL,1),(22,2015,9,0,NULL,1),(22,2015,10,0,NULL,1),(22,2015,11,22451,NULL,1),(22,2015,12,128058,NULL,1),(22,2016,1,2117,NULL,1),(22,2016,2,0,NULL,1),(22,2016,3,125617,NULL,1),(22,2016,4,476187,NULL,1),(22,2016,5,328908,NULL,1),(22,2016,6,300805,NULL,1),(22,2016,7,264997,NULL,1),(22,2016,8,269312,NULL,1),(22,2016,9,NULL,NULL,0),(22,2016,10,NULL,NULL,0),(22,2016,11,NULL,NULL,0),(22,2016,12,NULL,NULL,0),(23,2015,1,101779,'因組織結構異動，此為推算值',1),(23,2015,2,104907,'因組織結構異動，此為推算值',1),(23,2015,3,206443,'因組織結構異動，此為推算值',1),(23,2015,4,197097,'因組織結構異動，此為推算值',1),(23,2015,5,226238,'因組織結構異動，此為推算值',1),(23,2015,6,210105,'因組織結構異動，此為推算值',1),(23,2015,7,206136,'因組織結構異動，此為推算值',1),(23,2015,8,235046,'因組織結構異動，此為推算值',1),(23,2015,9,217486,'因組織結構異動，此為推算值',1),(23,2015,10,141945,'因組織結構異動，此為推算值',1),(23,2015,11,129352,'因組織結構異動，此為推算值',1),(23,2015,12,54750,'因組織結構異動，此為推算值',1),(23,2016,1,110237,NULL,1),(23,2016,2,113948,NULL,1),(23,2016,3,110681,NULL,1),(23,2016,4,114067,NULL,1),(23,2016,5,112108,NULL,1),(23,2016,6,120543,NULL,1),(23,2016,7,116598,NULL,1),(23,2016,8,118463,NULL,1),(23,2016,9,NULL,NULL,0),(23,2016,10,NULL,NULL,0),(23,2016,11,NULL,NULL,0),(23,2016,12,NULL,NULL,0);
/*!40000 ALTER TABLE `monthlyExpense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objective`
--

DROP TABLE IF EXISTS `objective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objective` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `annualReductionTarget` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `targetDescription` varchar(255) DEFAULT NULL,
  `evaluationMethod` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `issue` varchar(255) DEFAULT NULL,
  `wasteType` varchar(255) DEFAULT NULL,
  `process` varchar(255) DEFAULT NULL,
  `description` longtext,
  `analysis` varchar(255) DEFAULT NULL,
  `correctiveAction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_objective_department_idx` (`departmentID`),
  CONSTRAINT `fk_objective_department` FOREIGN KEY (`departmentID`) REFERENCES `department` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objective`
--

LOCK TABLES `objective` WRITE;
/*!40000 ALTER TABLE `objective` DISABLE KEYS */;
INSERT INTO `objective` VALUES (0,'物料成本節省 - 棧板修繕',1,168000,'material','<pre>目標: 280x2.5塊x5天x4週x12個月=168,000元(年)</pre>','<pre>[熱A棧板單價]*[<mark>當月修繕熱A棧板數量</mark>]</pre><pre>     +[紅A棧板單價]*[<mark>當月修繕紅A棧板數量</mark>]</pre><pre>     +[歐規棧板單價]*[<mark>當月修繕歐規棧板數量</mark>]</pre>','ready',NULL,'品質缺陷','<pre>棧板使用</pre>','<pre>之前: 節省7600/月 x 12個月 = 91,200元 目標: 280x2.5塊x5天x4週x12個月=168,000元(年)</pre>','<pre>包材的一些不良品(如：棧板)</pre>','<pre>1.東西進廠後，若使用發現瑕疵,反應給採購，如有嚴重缺點時先暫停使用。 2.安排人員在工作空閒時修理壞損棧板。  </pre>'),(1,'運輸成本節省 - 減少輸送車次',1,36000,'frequency','<pre>2015年度花費$252,000，2016目標降至每月30趟x12個月=216.000元</pre><pre>     計劃節省36,000元</pre>','<pre>[單次車趟運費]*([2015年統計月平均車趟]-[<mark>當月入貨車次</mark>])</pre>','ready',NULL,'搬運的浪費\n(運輸)','<pre>貨品進廠作業</pre>','<pre>之前:600*35趟*12個月=252,000 目標600 x 30趟x12個月=216.000元 預計 一年節省36,000元</pre>','<pre>貨物進廠時無法一次到位,需移動數次。 </pre>','<pre>1.貨物進廠前先了解它的相關訊息,進廠後在依它的品項來入倉,避免做搬運的重覆動作。 2.了解生產排程、客戶屬性、貨物是否後續加工，專屬區域控管。 </pre>'),(2,'運輸成本節省 - 減少換櫃次數',1,320100,'frequency','<pre>每月平均避免5.5次換櫃狀況，以每次節省$4,850計算。</pre>','<pre>[平均拖櫃價格]*[<mark>當月不換櫃次數</mark>]</pre>','ready','<pre>已納入正式作業，建議改追蹤去年/今年發生換櫃次數的降低</pre>','等待的浪費','<pre>貨櫃調度流程</pre>','<pre>落實貨櫃調度流程，每年預計可節省300,000元 4850元/趟 ;每月約5-6趟</pre>','<pre>因貨品尚未齊全，或同時幾個櫃子待出貨，而未做好調度</pre>','<pre>1.重新制定貨櫃調度流程。  2.內部先做好貨品進度追蹤及理貨。 3.要求拖櫃行需於要求時間內抵達，貨櫃組進行等裝。</pre>'),(3,'人事成本節省 - 人事精簡',1,1184400,'severance','<pre>人力縮編3員本籍員工:薪資+勞健保+年終獎金</pre>','<pre>[外勞平均薪資]*([初始外勞人數]-[<mark>當月外勞人數</mark>])</pre><pre>     +[本勞平均薪資]*([初始本勞人數]-[<mark>當月本勞人數</mark>])</pre><pre>     -[<mark>當月支出資遣費用</mark>]</pre>','ready','<pre>確認資遣費</pre>','成本的浪費','<pre>人力縮編</pre>','<pre>本籍員工:薪資+勞健保+年終獎金 </pre>','<pre>產線縮減 人員精減</pre>','<pre>人力縮編3員</pre>'),(4,NULL,2,2640000,NULL,NULL,NULL,'closed','<pre>非例行性作業</pre>','處理的浪費','<pre>佣金費用</pre>','<pre>264萬/年</pre>','<pre>1、法國辦公室營運費用 2、代理商Gilbert合約佣金</pre>','<pre>1、停止承租巴黎辦公室，可節省$70,000/月 2、結束與Gilbert合約佣金，止付佣金，節省$150,000/月</pre>'),(5,'作業成本節省 - 降低翻箱時數',5,27750,'record_operation','<pre>2015年調單翻箱  $125 * 1110 hr = $138,750 元，</pre><pre>     計劃降低 20%</pre>','<pre>[平均時薪]*([2015年月平均翻箱工時]-[<mark>當月翻箱工時</mark>])</pre>','ready',NULL,'動作的浪費\n','<pre>翻箱</pre>','<pre>今年降低20%翻箱費用</pre>','<pre>1.調單 2.紙箱來不及進廠  (104年調單翻箱  1110H*125=138750元)</pre>','<pre>減少調單</pre>'),(6,'人事成本節省 - 人事精簡',5,3091046,'record_severance','<pre>外籍13位、台籍3位薪資+勞健保+年終</pre>','<pre>[外勞平均薪資]*([初始外勞人數]-[<mark>當月外勞人數</mark>])</pre><pre>     +[本勞平均薪資]*([初始本勞人數]-[<mark>當月本勞人數</mark>])</pre><pre>     -[<mark>當月支出資遣費用</mark>]</pre>','ready','<pre>確認資遣費</pre>','成本的浪費','<pre>人力縮編</pre>','<pre>外籍13位、台籍3位薪資+勞健保+年終</pre>','<pre>白瓶生產線別縮減 (原8條生產線，減少為6條生產線)</pre>','<pre>人力縮編16員</pre>'),(7,'製造成本節省 - 調整管制標準',5,480000,'salvage','<pre>40,000元/月 (允收品項單價*允收數量)</pre>','<pre>[<mark>允收品項A製造成本</mark>]*[<mark>當月放寬允收數量</mark>]</pre><pre>     +[<mark>允收品項B製造成本</mark>]*[<mark>當月放寬允收數量</mark>]</pre><pre>     +[<mark>允收品項C製造成本</mark>]*[<mark>當月放寬允收數量</mark>]+...</pre>','ready',NULL,'品質缺陷','<pre>以限度樣本及客戶級別區分允收標準</pre>','<pre>40,000元/月 (允收品項單價*允收數量)</pre>','<pre>1.無限度樣本，線上允收但客戶不接受→客訴。 2.無限度樣本，線上允收但加工無法作業→重檢。</pre>','<pre>1.依各品項需求建立限度樣本。 2.依客戶級別區分允收標準。 3.若無功能性考量則彈性放寬允收標準。</pre>'),(8,'物料成本節省 - 模具清潔材料',6,278060,'record_materialUsage','<pre>($10K*73桶+$1K*84箱)</pre><pre>     -($10K*53桶+$0-$16.5*30L*12個月)</pre>','<pre>([每桶鋯珠單價]*([2015平均月用量])-[<mark>當月領用桶數</mark>]))</pre><pre>     +([每箱去漬油單價]*([2015平均月用量]-[<mark>當月領用箱數</mark>]))</pre><pre>     -([每公升柴油單價]*[<mark>當月柴油使用公升數</mark>])</pre>','ready',NULL,'加工的浪費\n(處理的浪費)','<pre>節省品項：</pre><pre>1.硞珠</pre><pre>2.去漬油</pre>','<pre>1.領用硞珠時間由5天一次改為7天一次，每月可以減少2桶(25kg/桶)的使用量，因自去年9月即開始實施，故今年與去年使用量比約可節省14桶，約可節省140,000。 2.全面停止去漬油的使用，每7箱/月，1年可減少84箱的使用, 費用為84,000，但又增加柴油費用16.5(公升)*30(30公升/月*12(月)=5940，故總減少費用為78,060。</pre>','<pre>1.洗模用硞珠，因傾倒次數頻繁，進而增加費用的支出，目前使用頻率為5天/桶。2.使用去漬油清洗模具，因容易揮發，而常增加傾倒量，使用頻率為7箱/月。</pre>','<pre>1.延長硃珠的領用時間，進而降低費用的支出。  2.改用柴油清洗，並搭配破布的擦拭，來清潔模具表面的油漬。</pre>'),(9,'人事成本節省 - 人事精簡',6,1283217,'record_severance','<pre>模具課每月平均人事費用約32,903元 32,903*3員=98,709/月</pre><pre>     98,709*13=1,283,217/年</pre>','<pre>[外勞平均薪資]*([初始外勞人數]-[<mark>當月外勞人數</mark>])</pre><pre>     +[本勞平均薪資]*([初始本勞人數]-[<mark>當月本勞人數</mark>])</pre><pre>     -[<mark>當月支出資遣費用</mark>]</pre>','ready','<pre>確認資遣費</pre>','成本的浪費','<pre>人力縮編</pre>','<pre>模具課每月平均人事費用約32,903元 32,903*3員=98,709/月 98,709*13=1,283,217/年  </pre>','<pre>白瓶生產線別縮減 (原8條生產線，減少為5條生產線)</pre>','<pre>人力縮編，原有20員，縮減至目前17員</pre>'),(10,'物料成本節省 - 庫存出口杯使用',7,150000,'material','<pre>出口杯平均單價為500元,</pre><pre>     目標車削修改300個滯留出口杯庫存。平均12,500元/月</pre>','<pre>[出口杯平均單價]*[<mark>當月使用庫存數量</mark>]</pre>','ready',NULL,'耗材的浪費','<pre>依產品結構生產品項更換</pre>','<pre>依2014年度請購兩次,2015年可以減少前半年不請購出口杯，平均單價為500元,目標車削修改300個。平均25,000元/月</pre>','<pre>降低安全庫存量</pre>','<pre>依廠內現有出口杯較少生產的尺寸，車削目前產品結構比較常用的尺寸</pre>'),(11,'製造成本節省 - 降低瓦斯用量',7,181916,'material','<pre>依2013年瓦斯平均單價21元,</pre><pre>     與2014年瓦斯1-10月份平均單價14.5元,兩者平均加總17.8元。</pre><pre>      57m3/日X17.8元=1,014.6元/日，1,014.6元/日X365天=370,329元，</pre><pre>     預計減半: 28m3/日x17.8元=498.4元/日，498.4元/日x365天=181,916元。</pre><pre>     平均15,159元/月</pre>','<pre>[平均瓦斯單價]*([2015平均瓦斯月用量]-[<mark>當月瓦斯用量</mark>])</pre>','ready',NULL,'成本的浪費','<pre>小型預熱爐</pre>','<pre>依2013年瓦斯平均單價21元,與2014年瓦斯1-10月份平均單價14.5元,兩者平均加總17.8元。 57m3/日X17.8元=1,014.6元/日，1,014.6元/日X365天=370,329元， 預計減半: 28m3/日x17.8元=498.4元/日，498.4元/日x365天=181,916元。平均15,159元/月</pre>','<pre>減少瓦斯使用量</pre>','<pre>僅用於試模</pre>'),(12,'人事成本節省 - 人事精簡',7,1307160,'severance','<pre>外籍員工基本薪資:</pre><pre>     $21,786 21,786*5員*12月=$1,307,160</pre>','<pre>[外勞平均薪資]*([初始外勞人數]-[<mark>當月外勞人數</mark>])</pre><pre>     +[本勞平均薪資]*([初始本勞人數]-[<mark>當月本勞人數</mark>])</pre><pre>     -[<mark>當月支出資遣費用</mark>]</pre>','ready','<pre>確認資遣費</pre>','成本的浪費','<pre>IS機台操作</pre>','<pre>外籍員工基本薪資:$21,786 21,786*5員*12月=$1,307,160</pre>','<pre>產線縮減 人員精減</pre>','<pre>資遣 (調動)</pre>'),(13,NULL,8,0,NULL,NULL,NULL,'closed','<pre>目標為零，且客訴金額大小難以客觀定量</pre>','不良品的浪費\n(品質缺陷)','<pre>客訴</pre>','<pre>105年度客訴件數:0件</pre>','<pre>104年客訴案件:1件 (貼標錯誤)</pre>','<pre>1.作業區域的區隔 2.裝箱人員的再教育</pre>'),(14,'作業成本節省 - 降低重檢時數',8,45954,'time','<pre>104年時數為2,071.5hr。計劃105年總時數減少20%，</pre><pre>     換算節省工時小時414.3小時</pre>','<pre>[平均時薪]*([2015年月平均重檢工時]-[<mark>當月重檢工時</mark>])</pre>','ready',NULL,'不良品的浪費\n(品質缺陷)','<pre>重檢</pre>','<pre>105年總時數減少20%，換算節省工時小時414.3小時</pre>','<pre>104年時數為2,071.5hr， 原因為1.人員未教導2.新置程新品項的允拒收樣本未確立 3.操作員疏忽</pre>','<pre>1.教育訓練 2.允拒收樣本建立 3.線上QC抽驗</pre>'),(15,'作業成本節省 - 降低翻箱時數',8,8784,'time','<pre>105年總時數減少20%，換算節省工時79.2小時</pre>','<pre>[平均時薪]*([2015年月平均翻箱工時]-[<mark>當月翻箱工時</mark>])</pre>','ready',NULL,'動作的浪費\n','<pre>翻箱</pre>','<pre>105年總時數減少20%，換算節省工時79.2小時</pre>','<pre>1.人員未教導 2.操作員與QC疏忽錯誤</pre>','<pre>1.執行前訓練 2.線上QC巡檢</pre>'),(16,NULL,8,188888,NULL,NULL,NULL,'closed','<pre>營業額與工時非直接性關聯，難以量化</pre>','動作的浪費\n','<pre>組立工作</pre>','<pre>2016年組立營業額3300萬，總工時需減少5%，換算節省工時1,702.92小時</pre>','<pre>1.人員流動率高，熟練度低。 2.作業變動性高</pre>','<pre>1.執行前教育 2.工作手法教導 3.人員適合度挑選 4.允拒收樣本輔助 5.線上作業時幹部教導</pre>'),(17,NULL,8,30882,NULL,NULL,NULL,'closed','<pre>營業額與工時非直接性關聯，難以量化</pre>','動作的浪費\n','<pre>充填包裝相關工作</pre>','<pre>2016年充填營業額300萬，總工時需減少5%，換算節省工時278.42小時</pre>','<pre>1.作業順暢度需改善 2.機械效能可再調整</pre>','<pre>1.充填機械的改善 2.工站流程的再設計 3.人員適合度挑選 4.工作手法的教導</pre>'),(18,NULL,9,9324,NULL,NULL,NULL,'closed','<pre>已納入正式作業，部主管同意不須再追蹤</pre>','等待的浪費','<pre>燒花爐收瓶</pre>','<pre>每日1人提前半小時上班,須支付成本為1*0.5*21*146=1,533元</pre><pre>     可節省2*0.5*21*110=2,310元每月約可省2310-1533=777元,</pre><pre>     1-12月預計可節省9,324元</pre>','<pre>後端收瓶人員待瓶時間</pre>','<pre>前端開爐提前上班以減少收瓶人員待瓶時間</pre>'),(19,'作業成本節省 - 降低重檢時數',9,29664,'time','<pre>2015年平均每月重檢60H/人，2016年目標降為36H。</pre><pre>     重檢36小時/月，減少重檢時數24*103*12=29664元,</pre><pre>     1-12月預計可達29,664元</pre>','<pre>[平均時薪]*([2015年月平均重檢工時]-[<mark>當月重檢工時</mark>])</pre>','ready',NULL,'加工的浪費\n(處理的浪費)','<pre>成品驗退</pre>','<pre>2015年平均每月重檢60H/人，2016年目標降為36H。重檢36小時/月，減少重檢時數24*103*12=29664元,1-12月預計可達29,664元</pre>','<pre>印刷時不良品未剔除,以致成品檢驗時被退貨造成重檢</pre>','<pre>建立QC人員定時巡檢及作業人員自主檢查制度,將印刷不良品於線上檢出,避免發生成品重檢</pre>'),(20,'製造成本節省 - 減少報廢',9,200000,'scrap','<pre>1.提升生產良率0.5%，2015年平均生產良率98.06%，2016年度目標定為98.5%</pre><pre>2. 2015年報廢金額為92萬，2016年報廢金額目標減少20萬，</pre><pre>     每月管控報廢金額為6萬元內</pre>','<pre>[2015報廢金額月平均]-(</pre><pre>     [<mark>當月報廢項目A單位製造成本</mark>]*[<mark>當月報廢項目A數量</mark>]</pre><pre>     +[<mark>當月報廢項目B單位製造成本</mark>]*[<mark>當月報廢項目B數量</mark>]</pre><pre>     +[<mark>當月報廢項目C單位製造成本</mark>]*[<mark>當月報廢項目C數量</mark>]+...)</pre>','ready',NULL,'不良品的浪費\n(品質缺陷)','<pre>不良品報廢</pre>','<pre>1.提升生產良率0.5%，2015年平均生產良率98.06%，2016年度目標定為98.5%。2. 2015年報廢金額為92萬，2016年報廢金額目標減少20萬，每月管控報廢金額為6萬元內。</pre>','<pre>不良品比例偏高，報廢金額多</pre>','<pre>印刷作業前處理及作業檢點管控</pre>'),(21,'製造成本節省 - 降低停機時間',10,118680,'time','<pre>2015年1-10月架機、故障停機總時數為461.688H，每月平均46.17H。</pre><pre>     設定每月減少5%架機停機時數為2.3H/月，機台運轉成本4,300元/H計算，</pre><pre>     2016年節省目標金額為,300x2.3x12 =118,680元 每月9,890元</pre>','<pre>[噴漆線每小時平均運行成本]*([統計平均每月架/停機時數]-[<mark>當月架/停機時數</mark>])</pre>','closed','<pre>原始設定目標與實際數據基準不符</pre><pre>將此取消重新設定目標另外追蹤</pre>','等待的浪費','<pre>進行噴漆生產架機作業時間較長</pre>','<pre>2015年1-10月架機、故障停機總時數為461.688H，每月平均46.17H。設定每月減少5%架機停機時數為2.3H/月，機台運轉成本4,300元/H計算，2016年節省目標金額為,300x2.3x12 =118,680元 每月9,890元。</pre>','<pre>1.機器設備異常故障造成機械運轉成本損失。2.架機時間過長，造成人員閒置。</pre>','<pre>1.上線前顏色必須校對清楚，並減少架機時間。2.定時工檢，制定工檢表讓機台人員定時巡檢，提早發現問題，提早改善。</pre>'),(22,NULL,10,196128,NULL,NULL,NULL,'closed','<pre>運行時間與毛利成長關聯性並非直接關聯</pre>','等待的浪費','<pre>提升淨動時數，機台升溫達可生產烘烤及收瓶之時間</pre>','<pre>人工成本：160元/hr，機台運轉成本：4,300元/日。設定每日一員提早0.5小時上班，</pre><pre>     每月平均24天，人工成本：160x24x0.5=1,920元/月，機台運轉成本</pre><pre>     4,300x24x0.5=51,600元/月，年度運轉成本 (51,600-1,920)x0.5x12 =298,080元/年。</pre><pre>     設定每日加班(延後)1hr，年度運轉成本(51,600-30,720)x12 =682,560元/年。</pre><pre>     每年增加毛利(298,080+682,560)*20%=196,128元/年</pre>','<pre>因等待機台升溫達170度才可生產，造成機台運轉成本產生。從放瓶至收瓶須運轉1hr，少1hr產出。</pre>','<pre>安排人員每日提早0.5小時上班開機升溫，延後放瓶時間至23:20(收瓶加班1hr)，提升淨動時數以提升產能。</pre>'),(23,'製造成本節省 - 減少報廢',10,476790,'record_scrap','<pre>1.提升生產良率1%，2015年平均生產良率94.9%，2016年度目標定為96%</pre><pre>2.減少報廢金額20%，2015年度報廢金額為2,383,949元，</pre><pre>     2016年度報廢金額目標減少476,790元</pre>','<pre>[2015報廢金額月平均]-(</pre><pre>     [<mark>當月報廢項目A單位製造成本</mark>]*[<mark>當月報廢項目A數量</mark>]</pre><pre>     +[<mark>當月報廢項目B單位製造成本</mark>]*[<mark>當月報廢項目B數量</mark>]</pre><pre>     +[<mark>當月報廢項目C單位製造成本</mark>]*[<mark>當月報廢項目C數量</mark>]+...)</pre>','ready',NULL,'不良品的浪費\n(品質缺陷)','<pre>不良品報廢</pre>','<pre>1.提升生產良率1%，2015年平均生產良率94.9%，2016年度目標定為96%。2.減少報廢金額20%，2015年度報廢金額為2,383,949元，2016年度報廢金額目標減少476,790元。</pre>','<pre>不良品比例偏高，報廢金額多</pre>','<pre>噴漆作業前處理及作業檢點管控</pre>'),(24,'人事成本節省 - 人事精簡',10,784296,'record_severance','<pre>外籍作業人員人事成本約21536*12*3+9000=784,296元/年</pre>','<pre>[外勞平均薪資]*([初始外勞人數]-[<mark>當月外勞人數</mark>])</pre><pre>     +[本勞平均薪資]*([初始本勞人數]-[<mark>當月本勞人數</mark>])</pre><pre>     -[<mark>當月支出資遣費用</mark>]</pre>','ready','<pre>確認資遣費</pre>','','<pre>預備訓練三班人力培訓人員</pre>','<pre>外籍作業人員人事成本約21536*12*3+9000=784,296元/年</pre>','<pre>原規劃三班作業:培訓人員</pre>','<pre>修正作業規畫:以兩班生產作業;縮減三名外籍作業人員</pre>'),(25,'製造成本節省 - 減少報廢',15,2000000,'scrap','<pre>2015年OEM不良品報廢金額約405萬，</pre><pre>     設定2016年度目標減少報廢金額50%為200萬內，需還原白瓶不良之損失</pre>','<pre>[2015報廢金額月平均]-(</pre><pre>     [<mark>當月報廢項目A單位製造成本</mark>]*[<mark>當月報廢項目A數量</mark>]</pre><pre>     +[<mark>當月報廢項目B單位製造成本</mark>]*[<mark>當月報廢項目B數量</mark>]</pre><pre>     +[<mark>當月報廢項目C單位製造成本</mark>]*[<mark>當月報廢項目C數量</mark>]+...)</pre>','ready',NULL,'不良品的浪費\n(品質缺陷)','<pre>不良品報廢</pre>','<pre>2015年OEM不良品報廢金額約405萬，設定2016年度目標減少報廢金額50%為200萬內，需還原白瓶不良之損失。</pre>','<pre>不良品比例偏高，報廢金額多</pre>','<pre>1.加強宣導OEM線上作業人員QC觀念 2.加強半成品QC人員後端檢驗，減少不良品再製 3.管控白瓶補破損率在3%內，超出比例須向OEM扣款處理</pre>'),(26,'製造成本節省 - 機械故障停機',12,7704,'time','<pre>依2011~2015年(10月)停機總時數平均114分鐘,每月停機維修(-5%)</pre><pre>     平均108分為目標,每月停機成本支出6*107=642元/月</pre>','<pre>[IS每分鐘製造成本]*([統計IS故障停機月平均分鐘數]-[<mark>當月機械故障停機分鐘數</mark>])</pre>','ready',NULL,'等待的浪費','<pre>機械設備異常維修</pre>','<pre>依2011~2015年(10月)停機總時數平均114分鐘,每月停機維修(-5%)平均108分為目標,每月停機成本支出6*107=642元/月</pre>','<pre>設備長期連續運轉設備保養外突發異常,維修立即處理</pre>','<pre>1.加強日常檢查保養核對保養、 維修紀錄、更換時間等次數採購 備品數量控管並安排換模時間保養維修 2.加強人員教育訓練</pre>'),(27,'物料成本節省 - SG磚棒夾頭',12,30000,'material','<pre>製作10組，原廠商售價15000元/組 , </pre><pre>     台製成本5000元/組 製作成本2000元/組</pre><pre>     5000-2000*10組=30000元/年 30000/12=2500元/月</pre>','<pre>([外購單價]-[自製成本])*[<mark>當月製作數量</mark>]</pre>','ready',NULL,'處理的浪費','<pre>SG磚棒夾頭</pre>','<pre>製作10組，原廠商售價15000元/組 , 台製成本5000元/組 製作成本2000元/組 5000-2000*10組=30000元/年 30000/12=2500元/月 </pre>','<pre>原廠零件成本過高</pre>','<pre>利用報廢模具 自製SG磚棒夾頭 </pre>'),(28,'物料成本節省 - DG磚棒夾頭',12,55000,'material','<pre>製作5組，大陸廠商售價15000元/組 , 製作成本4000元/組</pre><pre>     15000-4000*5組=55000元/年 55000/12=4583元/月</pre>','<pre>([外購單價]-[自製成本])*[<mark>當月製作數量</mark>]</pre>','ready',NULL,'處理的浪費','<pre>DG磚棒夾頭</pre>','<pre>製作5組，大陸廠商售價15000元/組 , 製作成本4000元/組 15000-4000*5組=55000元/年 55000/12=4583元/月 </pre>','<pre>原廠零件成本過高</pre>','<pre>自製DG磚棒夾頭</pre>'),(29,'物料成本節省 - 減少塗料用量',12,67200,'material','<pre>歷年使用量160組降25% 年使用量為120組,</pre><pre>     平均10組/月,成本1680*40=67200元/年</pre><pre>     67200/12=5600元/月</pre>','<pre>[塗料單價]*([2015年平均月用量]-[<mark>當月使用塗料組數</mark>])</pre>','ready',NULL,'加工的浪費\n(處理的浪費)','<pre>瓶胎傳遞系統塗料</pre>','<pre>歷年使用量160組降25% 年使用量為120組,平均10組/月,成本1680*40=67200元/年 67200/12=5600元/月 </pre>','<pre>下線傳遞系統採全部擦拭 ,整理過於浪費</pre>','<pre>依磨損處整理後上線使用 , 不影響生產</pre>'),(30,'製造成本節省 - 電控故障停機',17,34668,'time','<pre>延伸1999年平均目標停機時數534分 , 每月停機維修(-5%)平均507分為目標</pre><pre>     ,製造成本107元/分, 每月停機成本27*107=2889元</pre>','<pre>[IS每分鐘製造成本]*([統計IS故障停機月平均分鐘數]-[<mark>當月電控故障停機分鐘數</mark>])</pre>','ready',NULL,'等待的浪費','<pre>電控設備故障維護</pre>','<pre>延伸1999年平均目標停機時數534分 , 每月停機維修(-5%)平均507分為目標 ,製造成本107元/分, 每月停機成本27*107=2889元</pre>','<pre>設備長期連續運轉 設備點檢外突發異常 , 立即處理維修 </pre>','<pre>1.加強日常檢查保養 ,發現異常備料視狀況 ,安排換模時間保養維修 2.加強人員教育訓練 </pre>'),(31,'作業成本節省 - 用電控管',17,548004,'expense','<pre>依2015年(1-10月)超約金額 685011元-80% = 548001元 ,</pre><pre>     每月節省金額45667元/月</pre>','<pre>([2015年統計期間的用電量超約費用]/[統計期])-[<mark>當月用電量超約費用</mark>]</pre>','ready',NULL,'處理的浪費','<pre>用電需量</pre>','<pre>依2015年(1-10月)超約金額 685011元-80% = 548001元 ,每月節省金額45667元/月</pre>','<pre>設備啟動未調控作業習慣未明定 ,造成瞬間使用電力過大 ,超過契約容量</pre>','<pre>管理各單位用電需量 ,大電力設備啟動時 ,須調配時間 ,減少超約金</pre>'),(32,'人事成本節省 - 人事精簡',12,881116,'severance','<pre>工電務課人員兩名:人事成本(含勞退金與年終、健保)</pre><pre>     為33,889*13個月*2名=881,116元/年</pre>','<pre>[外勞平均薪資]*([初始外勞人數]-[<mark>當月外勞人數</mark>])</pre><pre>     +[本勞平均薪資]*([初始本勞人數]-[<mark>當月本勞人數</mark>])</pre><pre>     -[<mark>當月支出資遣費用</mark>]</pre>','ready','<pre>確認資遣費</pre>','等待的浪費','<pre>人力縮編</pre>','<pre>工電務課人員兩名:人事成本(含勞退金與年終、健保)為33,889*13個月*2名=881,116元/年</pre>','<pre>配合白瓶生產線縮減(8條線調減為5條線)</pre>','<pre>人力配合縮減:原18名縮減為16名</pre>'),(33,NULL,3,50000,NULL,NULL,NULL,'closed','<pre>節省計算方式客觀性有待商確</pre>','加工的浪費\n(處理的浪費)','<pre>IS機台配件</pre>','<pre>50000</pre>','<pre>1.依廠內生產條件需求客制化製作配件 2.IS機台配件損耗維修</pre>','<pre>廠內自行設計，加工以節省成本及時效性</pre>'),(34,NULL,3,786000,NULL,NULL,NULL,'closed','<pre>節省計算方式客觀性有待商確</pre>','加工的浪費\n(處理的浪費)','<pre>模具修改，維修</pre>','<pre>786000</pre>','<pre>1.大陸模具送往大陸修改需增加運費且時間過長 2.模具磨損修補委外維修需增加運費且時間過長 </pre>','<pre>廠內自行修改以節省成本及時效性</pre>'),(35,NULL,3,76000,NULL,NULL,NULL,'closed','<pre>節省計算方式客觀性有待商確</pre>','加工的浪費\n(處理的浪費)','<pre>印刷，噴漆，充填組立治具</pre>','<pre>76000</pre>','<pre>1.瓶型多樣化，制式治具難以滿足需求 2.治具外包加工無法滿足廠內時程及客製化需求 3.治具模具費用</pre>','<pre>廠內自行設計，加工以節省成本及時效性</pre>'),(36,NULL,3,165000,NULL,NULL,NULL,'closed','<pre>節省計算方式客觀性有待商確</pre>','加工的浪費\n(處理的浪費)','<pre>模型加工</pre>','<pre>165000</pre>','<pre>1.因應開發需求</pre>','<pre>廠內自行設計，加工以節省成本及時效性</pre>'),(37,NULL,3,20000,NULL,NULL,NULL,'closed','<pre>節省計算方式客觀性有待商確</pre>','加工的浪費\n(處理的浪費)','<pre>檢具</pre>','<pre>20000</pre>','<pre>1.因應生產需求</pre>','<pre>廠內自行設計，加工以節省成本及時效性</pre>'),(38,NULL,4,0,NULL,NULL,NULL,'closed','<pre>目標難以客觀量化且改善方案並非提出單位能夠掌握</pre>','等待的浪費','<pre>開模作業</pre>','<pre>0</pre>','<pre>1.圖面確認後模具製作中修改，產生模具設計及修圖時間浪費及模具加工費用資出。2.試模後修改或停止開發，產生模具設計與修改圖面時間浪費及生產試模時間浪費。 3.量產模具開發後未生產，產生時間及模具費用浪費。 </pre>','<pre>須請業務跟客戶聯繫圖面確認及模具處理。</pre>'),(39,'物料成本節省 - 模具費',4,2000000,'UnitCost','<pre>節省目標設定於$200萬元</pre>','<pre>([台製項目A平均價]-[<mark>項目A實際單價</mark>])*[<mark>A項目採購組數</mark>]</pre><pre>     +([台製項目B平均價]-[<mark>項目B實際單價</mark>])*[<mark>B項目採購組數</mark>]</pre><pre>     +([台製項目C平均價]-[<mark>項目C實際單價</mark>])*[<mark>C項目採購組數</mark>]+...</pre>','closed','<pre>內部供應資料整理耗時，重新設定計算方式，另外設立目標進行追蹤</pre>','加工的浪費\n(處理的浪費)','<pre>降低玻璃模具製作成本</pre>','<pre>2000000</pre>','<pre>模具價格差異</pre>','<pre>補充模具及開模選擇於大陸製模</pre>'),(40,NULL,4,0,NULL,NULL,NULL,'closed','<pre>目標難以客觀量化</pre>','加工的浪費\n(處理的浪費)','<pre>製圖浪費</pre>','<pre>0</pre>','<pre>1. 資料不齊全： 2. 資料相互衝突： 3. 圖面繪製後修改 4.依照草圖或類似開發： 5. 圖面繪製後客戶停止或暫緩：</pre>','<pre>目前已進行開發前置作業評估,能夠更了解客戶需求,降低制圖浪費及減少等待和重複性工作,並避免溝通等待時間</pre>'),(41,'事務成本節省 - 宿舍水電費用',13,108000,'record_expense','<pre>本籍二位員工住宿四維二倉，每月水電費平均約19,000元。</pre><pre>     調整後之水電費平均為$10,000元/月</pre>','<pre>[往年每月相關此項目之費用]-[<mark>當月宿舍水電費用</mark>]</pre>','ready',NULL,'動作的浪費\n','<pre>本國籍員工住宿作業</pre>','<pre>108,000元 （9,000*12)</pre>','<pre>本籍二位員工住宿四維二倉，每月水電費平均約19,000元。</pre>','<pre>1、詢問在外租屋意願及告知公司政策 2、依員工在外租屋補助辦法補助</pre>'),(42,'人事成本節省 - 人事精簡',13,451416,'record_severance','<pre>451,416元 [35,118*12]+30,000年終</pre>','<pre>[外勞平均薪資]*([初始外勞人數]-[<mark>當月外勞人數</mark>])</pre><pre>     +[本勞平均薪資]*([初始本勞人數]-[<mark>當月本勞人數</mark>])</pre><pre>     -[<mark>當月支出資遣費用</mark>]</pre>','ready','<pre>確認資遣費</pre>','動作的浪費\n','<pre>人力盤點作業</pre>','<pre>451,416元 [35,118*12]+30,000年終</pre>','<pre>人資3員作業內容關聯性高。</pre>','<pre>1、資遣一員 2、請財會人員協助資料統計及計算薪資</pre>'),(43,'事務成本節省 - 廢棄物處理費',13,11250,'record_expense','<pre>降低處理費50%，22,500/2=11,250元</pre>','<pre>([2015年廢棄物處理費用]/[統計期])-[<mark>當月廢棄物處理費用</mark>]</pre>','ready',NULL,'搬運的浪費','<pre>無法焚化之一般事業廢棄物委外非法清除</pre>','<pre>降低處理費50%，22,500/2=11,250元</pre>','<pre>103年度非法委外清除9車 （9車次*2,500=22,500元)</pre>','<pre>採平均分散方式以一般事業廢棄物處置 （垃圾車清運)。</pre>'),(44,NULL,13,80000,NULL,NULL,NULL,'closed','<pre>單一事件性質，部主管同意不須再追蹤</pre>','處理的浪費','<pre>內部教育訓練</pre>','<pre>105年度設定職訓局補助費用： NT$:80,000元，平均每月收入約7,000元。</pre>','<pre>沒通過勞動部TTQS人才發展品質管理評核。</pre>','<pre>爭取政府教育訓練經費補助。（以各單位年度規劃之外訓課程及管理部所規劃之幹部訓練課程為主) </pre>'),(45,NULL,13,0,NULL,NULL,NULL,'closed','<pre>沒有可量化目標，部主管同意不須再追蹤</pre>','處理的浪費','<pre>a、公司屬傳統3K製造業，因生產環境不佳，加上勞工法令之變遷，</pre><pre>     於生產作業、日常管理上往往應變不足，以致容易發生勞資協調問題。</pre><pre>b.104年度無發生勞資糾紛</pre>','<pre>105年度勞資糾紛 0件。</pre>','<pre>為有效作事前預防，人事總務課將密切關注法令修訂狀況，即時提出與人資顧問進行討論及因應，期在機關介入前解除狀況。</pre>','<pre>105年度將加強預防勞資糾紛，遇新法令將提前思考應對措施，避免因法令問題發生勞資糾紛，降低機關介入的機率。</pre>'),(46,'作業成本節省 - 控管加班',14,90756,'expense','<pre>104年1-10月加班費(註)合計378,130元，平均37,813元/月，</pre><pre>     105年目標平均30,250元/月 預計節省20%</pre>','<pre>([2015年統計期間的加班費用]/[統計期])-[<mark>當月加班費用</mark>]</pre>','ready',NULL,'動作浪費','<pre>抽驗重檢作業</pre>','<pre>104年1-10月加班費(註)合計378,130元，平均37,813元/月，105年目標平均30,250元/月 預計節省20%</pre>','<pre>抽驗判定驗退後，待生產單位重檢完後再重新抽驗。</pre>','<pre>要求生產品質管制要穩定</pre>'),(47,NULL,16,74421,NULL,NULL,NULL,'closed','<pre>非例行事項，部主管同意不須再追蹤</pre>','處理的浪費','<pre>103年度營所稅核定事宜</pre>','<pre>補繳營所稅額為0</pre>','<pre>費用遭到剔除，而補繳營所稅</pre>','<pre>完善憑證確保費用的合理性，避免遭到剔除</pre>'),(48,NULL,16,291000,NULL,NULL,NULL,'closed','<pre>單一事件，部主管同意不須再追蹤</pre>','處理的浪費','<pre>禾富退稅事宜</pre>','<pre>預計可退回2,600,000</pre>','<pre>透過禾富出口 預支付三聯式發票稅額5%</pre>','<pre>向國稅局申請退稅事宜</pre>'),(49,'作業成本節省 - 減少配件延誤',0,192000,'frequency','<pre>降低發生率: 2件/月以下，</pre><pre>      年可節省 $8,000 * 2 件 * 12 個月 = $192,000</pre>','<pre>[配件延誤預估損失費用]*([2015同期發生次數]-[<mark>當月發生次數</mark>])</pre>','ready','<pre>目標基於非必然發生項目，難以量化</pre>','等待的浪費',NULL,'<pre>降低發生率: 2件/月以下， 年省8000*2*12 =192,000</pre>','<pre>配件來不及進廠，生產線停工</pre>','<pre>1.確實跟催進廠時間 2.提早確認需求規格與交期 3依訂單需求時間準時供貨</pre>'),(50,'作業成本節省 - 減少紙箱退貨',0,96000,'frequency','<pre>降低不良率: 1件/月以下，</pre><pre>     年可節省 $8,000 * 1 件 * 12 個月= $96,000</pre>','<pre>[紙箱不良預估損失費用]*([2015同期發生次數]-[<mark>當月發生次數</mark>])</pre>','ready','<pre>目標基於非必然發生項目，難以量化</pre>','不良品的浪費\n(品質缺陷)',NULL,'<pre>降低不良率:1件/月以下，年可節省8000*1*12 =96,000</pre>','<pre>紙箱品質不良，造成需事後翻箱</pre>','<pre>1.嚴格執行不良品驗退機制。 2.請購時確認需求品質。 3.依訂單規格要求品質供貨。</pre>'),(51,'作業成本節省 - 減少紙箱延誤',0,96000,'frequency','<pre>降低錯誤率: 1件/月以下，</pre><pre>     年可節省 $8,000 * 1 件*12 個月= $96,000</pre>','<pre>[紙箱延誤預估損失費用]*([2015同期發生次數]-[<mark>當月發生次數</mark>])</pre>','ready','<pre>目標基於非必然發生項目，難以量化</pre>','加工的浪費\n(處理的浪費)',NULL,'<pre>降低錯誤率:1件/月以下，年可節省8000*1*12 =96,000</pre>','<pre>紙箱尺寸錯誤，造成凸板需重工堆疊</pre>','<pre>1.嚴格執行規格不符驗退機制。 2.請購時確認尺寸規格。 3.依訂單規格要求品質供貨。</pre>'),(52,NULL,0,0,NULL,NULL,NULL,'closed','<pre>無目標設定。建議目標設定應基於現有</pre><pre>    庫存清除所減少的空間占用， 部主管同意不再追蹤</pre>','庫存的浪費',NULL,'<pre>每半年檢視一次 節省:X</pre>','<pre>未定期檢視，舊品占用庫存空間</pre>','<pre>雙方每半年檢視一次資材倉庫中之庫存品項</pre>'),(53,NULL,0,0,NULL,NULL,NULL,'closed','<pre>目標無量化基準<br>部主管同意不再追蹤</pre>','過度生產\n(製造過多的浪費)',NULL,'<pre>需求當日可進貨之物品:零庫存</pre>','<pre>購買過多備品數量，積壓庫存資金</pre>','<pre>與請購單位討論，訂定安全庫存量並嚴格執行</pre>'),(54,NULL,0,-110000,NULL,NULL,NULL,'closed','<pre>單位表示原物料費用無法掌握</pre><pre>     部主管同意不再追蹤</pre>','原物料調漲影響金額',NULL,'<pre>-110000</pre>','<pre>白雲石粉/石灰石粉</pre>','<pre>與請購單位討論是否可調降使用量</pre>'),(55,NULL,0,300000,NULL,NULL,NULL,'closed','<pre>單位表示原物料費用無法掌握</pre><pre>     部主管同意不再追蹤</pre>','原物料調漲影響金額',NULL,'<pre>300000</pre>','<pre>芒硝/紙箱等…</pre>','<pre></pre>'),(56,NULL,11,0,NULL,NULL,NULL,'closed','<pre>客訴金額難以定量</pre>','不良品的浪費\n(品質缺陷)','<pre>OEM廠商生產製程</pre>','<pre>依據2015年塑蓋客訴成立共6件。 故2016年度設定客訴案件成立1件為目標。</pre>','<pre>塑蓋品質未符合客戶需求，而產生客訴。</pre>','<pre>1.教育OEM廠商對產品品質的正確觀念 2.修訂檢驗標準作業規範 。</pre>'),(57,'製造成本節省 - 模修費用',11,210000,'expense','<pre>根據2015年度因模具損耗維修費用為42萬元整。</pre><pre>     設定以減少50%的維修費用，則年度維修費用21萬元整/年,</pre><pre>     則17,500元/月為目標。</pre><pre>     另蓋模因設計變更及已達入模數強制維修的費用不在此目標內。</pre>','<pre>[2015年統計模修費用月平均]-[<mark>當月模修支出費用</mark>]</pre>','closed','<pre>目標重新設定。</pre><pre>     將原始項目停用，重新建立追蹤項目</pre>','不良品的浪費\n(品質缺陷)','<pre>蓋模異常維修</pre>','<pre>根據2015年度因模具損耗維修費用為42萬元整。設定以減少50%的維修費用</pre><pre>     ，則年度維修費用21萬元整/年,則17,500元/月為目標。</pre><pre>     另蓋模因設計變更及已達入模數強制維修的費用不在此目標內。</pre>','<pre>蓋模未達入模數者因成品異常,而衍生修繕費用。</pre>','<pre>1.教育OEM廠商落實蓋模定期檢查整理保養作業及線上維護，減少蓋模異常問題。</pre>'),(58,NULL,11,0,NULL,NULL,NULL,'closed','<pre>無目標金額且難以量化</pre>','不良品的浪費\n(品質缺陷)','<pre>塑蓋入貨QA檢驗</pre>','<pre>依據2015年8-11月判退共12件，平均每月3件。故2016年度設定判退案例2件/月，24件/年。</pre>','<pre>塑蓋品質無法通過QA之AQL檢驗而判退者。</pre>','<pre>1.落實巡檢OEM廠商的產品製程品質。 2.修訂檢驗標準作業規範 。 3.制訂品質標準規範。</pre>'),(59,'製造成本節省 - 降低停機時數',11,44487,'record_operation','<pre>根據2015度總故障停機時數為1571.18hr/年，130.93hr/月。</pre><pre>     故設定年度減少10%停機時數，1414.07hr/年、117.83hr/月為目標。</pre><pre>     故130.93-117.83=13.1hr，停機成本283元/hr計算，</pre><pre>     節省費用3,707元/月，44,487元/年。</pre>','<pre>[射出機每小時製造成本]*([統計故障停機月平均時數]-[<mark>當月機械故障停機時數</mark>])</pre>','ready','<pre>目標內容待單位負責人修正</pre>','等待浪費','<pre>進行生產作業</pre>','<pre>根據2015度總故障停機時數為1571.18hr/年，130.93hr/月。故設定年度減少10%停機時數，1414.07hr/年、117.83hr/月為目標。故130.93-117.83=13.1hr，停機成本283元/hr計算，節省費用3,707元/月，44,487元/年。</pre>','<pre>1.機器設備異常故障造成停機生產成本損失 2.成品品質異常造成停機處理成本損失。</pre>','<pre>1.機器設備定時巡檢與保養作業(含委外)。2.加強成品線上品質巡檢。</pre>'),(60,'製造成本節省 - 模修費用 (II)',11,210000,'record_expense','<pre>根據2015年度因模具損耗維修費用為42萬元整。設定以減少50%的維修費用，</pre><pre>     則年度維修費用21萬元整/年,則17,500元/月為目標。</pre><pre>     另蓋模因設計變更及已達入模數強制維修的費用不在此目標內。</pre>','<pre>[2015年統計模修費用月平均]-[<mark>當月模修支出費用</mark>]</pre>','ready','<pre>目標內容待單位負責人修正</pre>','品質缺陷','<pre>蓋模異常時維修</pre>','<pre>根據2015年度因模具損耗維修費用為42萬元整。設定以減少50%的維修費用，</pre><pre>     則年度維修費用21萬元整/年,則17,500元/月為目標。</pre><pre>     另蓋模因設計變更及已達入模數強制維修的費用不在此目標內。</pre>','<pre>蓋模異常時需委外維修,造成修繕費用的衍生。</pre>','<pre>1.落實蓋模定期檢查整理保養作業，減少蓋模異常問題。2.培育人員基本的維修技術。</pre>'),(61,'事務成本節省 - 駐衛警服務費',13,45000,'record_expense','<pre>2016 四月份重新簽約 (98,634元/月↓93,000元/月)</pre>','<pre>[原始每月服務費率]-[議價後服務費率]</pre><pre><mark>固定費率，自動計算不須再提供</mark></pre>','ready',NULL,'處理浪費','<pre>新工廠駐衛警服務費</pre>','<pre>5,000元/月</pre>','<pre>降低每月駐衛警服務費</pre>','<pre><pre>1. 與萬安保全議價鑒共體時艱</pre><pre>2. 四月份重新簽約 (98,634元/月↓93,000元/月)</pre></pre>'),(62,'物料成本節省 - 提高陸製比例',4,2000000,'unitCost','<pre>節省目標設定於$200萬元</pre>','<pre>([台製模具項目A預估單價]*[當月項目A由大陸進口組數]</pre><pre>     +[台製模具項目B預估單價]*[當月項目B由大陸進口組數]</pre><pre>     +[台製模具項目C預估單價]*[當月項目C由大陸進口組數])</pre><pre>     -[當月大陸進口模具相關總費用]</pre>','ready','<pre>單位提供之數據無法使用</pre>',NULL,NULL,NULL,NULL,NULL),(63,'製造成本節省 - 降低架機時間',10,202057,'record_operation','<pre>2015年換線架機時數合計469.94小時，每月平均39.16小時。</pre><pre>     設定換線架機時間降低10%-為46.99小時，</pre><pre>     機台運轉成本4,300元/小時計算，2016年節省目標金額為</pre><pre>     $4,300/小時x46.99小時=202,057元，每月$16,838</pre>','<pre>[噴漆線每小時平均運行成本]*([統計平均每月架機時數]-[<mark>當月架機時數</mark>])</pre>','ready',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `objective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `objectiveList_detail_closed`
--

DROP TABLE IF EXISTS `objectiveList_detail_closed`;
/*!50001 DROP VIEW IF EXISTS `objectiveList_detail_closed`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `objectiveList_detail_closed` AS SELECT 
 1 AS `objectiveID`,
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `annualReductionTarget`,
 1 AS `issue`,
 1 AS `originalContent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `objectiveList_detail_pending`
--

DROP TABLE IF EXISTS `objectiveList_detail_pending`;
/*!50001 DROP VIEW IF EXISTS `objectiveList_detail_pending`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `objectiveList_detail_pending` AS SELECT 
 1 AS `objectiveID`,
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `annualReductionTarget`,
 1 AS `issue`,
 1 AS `originalContent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `objectiveList_detail_ready`
--

DROP TABLE IF EXISTS `objectiveList_detail_ready`;
/*!50001 DROP VIEW IF EXISTS `objectiveList_detail_ready`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `objectiveList_detail_ready` AS SELECT 
 1 AS `objectiveID`,
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `year`,
 1 AS `objectiveTitle`,
 1 AS `annualReductionTarget`,
 1 AS `targetDescription`,
 1 AS `evaluationMethod`,
 1 AS `cumulativeProgress`,
 1 AS `achieveRate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `organizationStructure`
--

DROP TABLE IF EXISTS `organizationStructure`;
/*!50001 DROP VIEW IF EXISTS `organizationStructure`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `organizationStructure` AS SELECT 
 1 AS `divisionID`,
 1 AS `divisionTitle`,
 1 AS `divisionPrinciple`,
 1 AS `departmentID`,
 1 AS `departmentTitle`,
 1 AS `departmentPrinciple`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `overview_department`
--

DROP TABLE IF EXISTS `overview_department`;
/*!50001 DROP VIEW IF EXISTS `overview_department`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `overview_department` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `divisionPrinciple`,
 1 AS `departmentTitle`,
 1 AS `departmentPrinciple`,
 1 AS `year`,
 1 AS `validObjectiveCount`,
 1 AS `annualReductionTarget`,
 1 AS `cumulativeProgress`,
 1 AS `achieveRate`,
 1 AS `currentCumulativeExpense`,
 1 AS `priorCumulativeExpense`,
 1 AS `expenseDifference`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `overview_division`
--

DROP TABLE IF EXISTS `overview_division`;
/*!50001 DROP VIEW IF EXISTS `overview_division`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `overview_division` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `divisionPrinciple`,
 1 AS `departmentTitle`,
 1 AS `departmentPrinciple`,
 1 AS `year`,
 1 AS `validObjectiveCount`,
 1 AS `annualReductionTarget`,
 1 AS `cumulativeProgress`,
 1 AS `achieveRate`,
 1 AS `currentCumulativeExpense`,
 1 AS `priorCumulativeExpense`,
 1 AS `expenseDifference`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `overview_overall`
--

DROP TABLE IF EXISTS `overview_overall`;
/*!50001 DROP VIEW IF EXISTS `overview_overall`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `overview_overall` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `divisionTitle`,
 1 AS `divisionPrinciple`,
 1 AS `departmentTitle`,
 1 AS `departmentPrinciple`,
 1 AS `year`,
 1 AS `validObjectiveCount`,
 1 AS `annualReductionTarget`,
 1 AS `cumulativeProgress`,
 1 AS `achieveRate`,
 1 AS `currentCumulativeExpense`,
 1 AS `priorCumulativeExpense`,
 1 AS `expenseDifference`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `performanceChart_department`
--

DROP TABLE IF EXISTS `performanceChart_department`;
/*!50001 DROP VIEW IF EXISTS `performanceChart_department`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `performanceChart_department` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `annualReductionTarget`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`,
 1 AS `cumulativeProgress`,
 1 AS `achieveRate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `performanceChart_detail`
--

DROP TABLE IF EXISTS `performanceChart_detail`;
/*!50001 DROP VIEW IF EXISTS `performanceChart_detail`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `performanceChart_detail` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `annualReductionTarget`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`,
 1 AS `cumulativeProgress`,
 1 AS `achieveRate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `performanceChart_division`
--

DROP TABLE IF EXISTS `performanceChart_division`;
/*!50001 DROP VIEW IF EXISTS `performanceChart_division`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `performanceChart_division` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `annualReductionTarget`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`,
 1 AS `cumulativeProgress`,
 1 AS `achieveRate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `performanceChart_overall`
--

DROP TABLE IF EXISTS `performanceChart_overall`;
/*!50001 DROP VIEW IF EXISTS `performanceChart_overall`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `performanceChart_overall` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `annualReductionTarget`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`,
 1 AS `cumulativeProgress`,
 1 AS `achieveRate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `record_acceptance`
--

DROP TABLE IF EXISTS `record_acceptance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_acceptance` (
  `objectiveID` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `itemizeIndex` int(11) NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  `productReference` varchar(255) DEFAULT NULL,
  `productionCost` decimal(6,3) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `officialData` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`objectiveID`,`year`,`month`,`itemizeIndex`),
  CONSTRAINT `fk_record_acceptance_objective` FOREIGN KEY (`objectiveID`) REFERENCES `objective` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_acceptance`
--

LOCK TABLES `record_acceptance` WRITE;
/*!40000 ALTER TABLE `record_acceptance` DISABLE KEYS */;
INSERT INTO `record_acceptance` VALUES (7,2016,1,0,'2016-01-25 00:00:00','10018',4.330,2840,NULL,1),(7,2016,1,1,'2016-01-15 00:00:00','10149',3.430,500,NULL,1),(7,2016,1,2,'2016-01-01 00:00:00','11081',3.910,5690,NULL,1),(7,2016,1,3,'2016-01-01 00:00:00','14116',4.820,600,NULL,1),(7,2016,1,4,'2016-01-24 00:00:00','15153',5.870,650,NULL,1),(7,2016,1,5,'2016-01-13 00:00:00','15160',5.080,425,NULL,1),(7,2016,1,6,'2016-01-15 00:00:00','16057',6.440,594,NULL,1),(7,2016,1,7,'2016-01-05 00:00:00','17137',5.350,880,NULL,1),(7,2016,1,8,'2016-01-15 00:00:00','18043',8.470,600,NULL,1),(7,2016,1,9,'2016-01-14 00:00:00','18043',8.470,504,NULL,1),(7,2016,1,10,'2016-01-08 00:00:00','18119',4.500,525,NULL,1),(7,2016,1,11,'2016-01-08 00:00:00','20066',6.300,350,NULL,1),(7,2016,2,0,'2016-02-26 00:00:00','18071',6.330,520,NULL,1),(7,2016,2,1,'2016-02-24 00:00:00','23022',7.050,720,NULL,1),(7,2016,2,2,'2016-02-22 00:00:00','13051P',3.300,400,NULL,1),(7,2016,3,0,'2016-03-18 00:00:00','14110',4.960,280,NULL,1),(7,2016,3,1,'2016-03-15 00:00:00','14143',13.680,400,NULL,1),(7,2016,3,2,'2016-03-17 00:00:00','15155',5.600,234,NULL,1),(7,2016,3,3,'2016-03-08 00:00:00','15172',4.340,154,NULL,1),(7,2016,3,4,'2016-03-15 00:00:00','19033',9.010,1540,NULL,1),(7,2016,4,0,'2016-04-16 00:00:00','04075',1.540,470,NULL,1),(7,2016,4,1,'2016-04-05 00:00:00','04096',5.240,960,NULL,1),(7,2016,4,2,'2016-04-16 00:00:00','12059',3.730,320,NULL,1),(7,2016,4,3,'2016-04-15 00:00:00','12059',3.730,1800,NULL,1),(7,2016,5,0,'2016-05-01 00:00:00',NULL,0.000,0,'本月無放行項目',1),(7,2016,6,0,'2016-06-01 00:00:00','26008',7.010,1020,NULL,1),(7,2016,7,0,'2016-07-01 00:00:00',NULL,0.000,0,'本月無放行項目',1),(7,2016,8,0,'2016-08-01 00:00:00',NULL,0.000,0,'本月無放行項目',1),(7,2016,9,0,'2016-09-01 00:00:00',NULL,NULL,NULL,NULL,0),(7,2016,10,0,'2016-10-01 00:00:00',NULL,NULL,NULL,NULL,0),(7,2016,11,0,'2016-11-01 00:00:00',NULL,NULL,NULL,NULL,0),(7,2016,12,0,'2016-12-01 00:00:00',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `record_acceptance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_chineseMould`
--

DROP TABLE IF EXISTS `record_chineseMould`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_chineseMould` (
  `objectiveID` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `officialData` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`objectiveID`,`year`,`month`,`itemID`),
  KEY `fk_record_chineseMould_itemData_idx` (`objectiveID`,`itemID`),
  CONSTRAINT `fk_record_chineseMould_itemData` FOREIGN KEY (`objectiveID`, `itemID`) REFERENCES `itemData` (`objectiveID`, `id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_chineseMould`
--

LOCK TABLES `record_chineseMould` WRITE;
/*!40000 ALTER TABLE `record_chineseMould` DISABLE KEYS */;
INSERT INTO `record_chineseMould` VALUES (62,2016,1,44,0,'144',1),(62,2016,1,45,0,'162',1),(62,2016,1,46,0,'123',1),(62,2016,1,47,100,'223',1),(62,2016,1,48,0,'72',1),(62,2016,1,49,0,'16',1),(62,2016,1,50,0,'38',1),(62,2016,1,51,0,'14',1),(62,2016,1,52,0,'8',1),(62,2016,2,44,0,'63',1),(62,2016,2,45,0,'58',1),(62,2016,2,46,0,'47',1),(62,2016,2,47,15,'128',1),(62,2016,2,48,10,'3',1),(62,2016,2,49,0,'1',1),(62,2016,2,50,10,'14',1),(62,2016,2,51,0,'19',1),(62,2016,2,52,0,'2',1),(62,2016,3,44,10,'187',1),(62,2016,3,45,10,'186',1),(62,2016,3,46,8,'110',1),(62,2016,3,47,20,'266',1),(62,2016,3,48,0,'72',1),(62,2016,3,49,0,'11',1),(62,2016,3,50,0,'61',1),(62,2016,3,51,0,'16',1),(62,2016,3,52,0,'8',1),(62,2016,4,44,0,'151',1),(62,2016,4,45,0,'167',1),(62,2016,4,46,0,'126',1),(62,2016,4,47,35,'63',1),(62,2016,4,48,0,'16',1),(62,2016,4,49,0,'0',1),(62,2016,4,50,0,'19',1),(62,2016,4,51,10,'1',1),(62,2016,4,52,0,'0',1),(62,2016,5,44,23,'178',1),(62,2016,5,45,24,'181',1),(62,2016,5,46,0,'113',1),(62,2016,5,47,27,'122',1),(62,2016,5,48,0,'52',1),(62,2016,5,49,0,'8',1),(62,2016,5,50,0,'48',1),(62,2016,5,51,0,'22',1),(62,2016,5,52,0,'0',1),(62,2016,6,44,0,'140',1),(62,2016,6,45,0,'143',1),(62,2016,6,46,0,'86',1),(62,2016,6,47,15,'233',1),(62,2016,6,48,0,'66',1),(62,2016,6,49,0,'20',1),(62,2016,6,50,0,'30',1),(62,2016,6,51,10,'33',1),(62,2016,6,52,0,'0',1),(62,2016,7,44,0,NULL,0),(62,2016,7,45,0,NULL,0),(62,2016,7,46,0,NULL,0),(62,2016,7,47,0,NULL,0),(62,2016,7,48,0,NULL,0),(62,2016,7,49,0,NULL,0),(62,2016,7,50,0,NULL,0),(62,2016,7,51,0,NULL,0),(62,2016,7,52,0,NULL,0),(62,2016,8,44,0,NULL,0),(62,2016,8,45,0,NULL,0),(62,2016,8,46,0,NULL,0),(62,2016,8,47,0,NULL,0),(62,2016,8,48,0,NULL,0),(62,2016,8,49,0,NULL,0),(62,2016,8,50,0,NULL,0),(62,2016,8,51,0,NULL,0),(62,2016,8,52,0,NULL,0),(62,2016,9,44,0,NULL,0),(62,2016,9,45,0,NULL,0),(62,2016,9,46,0,NULL,0),(62,2016,9,47,0,NULL,0),(62,2016,9,48,0,NULL,0),(62,2016,9,49,0,NULL,0),(62,2016,9,50,0,NULL,0),(62,2016,9,51,0,NULL,0),(62,2016,9,52,0,NULL,0),(62,2016,10,44,0,NULL,0),(62,2016,10,45,0,NULL,0),(62,2016,10,46,0,NULL,0),(62,2016,10,47,0,NULL,0),(62,2016,10,48,0,NULL,0),(62,2016,10,49,0,NULL,0),(62,2016,10,50,0,NULL,0),(62,2016,10,51,0,NULL,0),(62,2016,10,52,0,NULL,0),(62,2016,11,44,0,NULL,0),(62,2016,11,45,0,NULL,0),(62,2016,11,46,0,NULL,0),(62,2016,11,47,0,NULL,0),(62,2016,11,48,0,NULL,0),(62,2016,11,49,0,NULL,0),(62,2016,11,50,0,NULL,0),(62,2016,11,51,0,NULL,0),(62,2016,11,52,0,NULL,0),(62,2016,12,44,0,NULL,0),(62,2016,12,45,0,NULL,0),(62,2016,12,46,0,NULL,0),(62,2016,12,47,0,NULL,0),(62,2016,12,48,0,NULL,0),(62,2016,12,49,0,NULL,0),(62,2016,12,50,0,NULL,0),(62,2016,12,51,0,NULL,0),(62,2016,12,52,0,NULL,0);
/*!40000 ALTER TABLE `record_chineseMould` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_chineseMould_temp`
--

DROP TABLE IF EXISTS `record_chineseMould_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_chineseMould_temp` (
  `recordCount` int(11) NOT NULL,
  `objectiveID` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `itemID` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordCount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_chineseMould_temp`
--

LOCK TABLES `record_chineseMould_temp` WRITE;
/*!40000 ALTER TABLE `record_chineseMould_temp` DISABLE KEYS */;
INSERT INTO `record_chineseMould_temp` VALUES (1,62,2016,1,44,2),(2,62,2016,1,45,2),(3,62,2016,1,46,2),(4,62,2016,1,47,2),(5,62,2016,1,48,2),(6,62,2016,1,50,2),(7,62,2016,1,51,2),(8,62,2016,1,44,10),(9,62,2016,1,45,10),(10,62,2016,1,46,8),(11,62,2016,1,47,25),(12,62,2016,1,48,12),(13,62,2016,1,44,10),(14,62,2016,1,45,10),(15,62,2016,1,46,8),(16,62,2016,1,47,22),(17,62,2016,1,48,10),(18,62,2016,1,50,8),(19,62,2016,1,51,10),(20,62,2016,1,44,1),(21,62,2016,1,45,1),(22,62,2016,1,46,1),(23,62,2016,1,50,1),(24,62,2016,1,44,1),(25,62,2016,1,45,1),(26,62,2016,1,46,1),(27,62,2016,1,44,2),(28,62,2016,1,45,2),(29,62,2016,1,46,2),(30,62,2016,1,47,2),(31,62,2016,1,48,2),(32,62,2016,1,50,2),(33,62,2016,1,44,10),(34,62,2016,1,45,10),(35,62,2016,1,46,8),(36,62,2016,1,47,22),(37,62,2016,1,48,8),(38,62,2016,1,50,8),(39,62,2016,1,44,9),(40,62,2016,1,45,9),(41,62,2016,1,46,7),(42,62,2016,1,45,9),(43,62,2016,1,46,7),(44,62,2016,1,44,6),(45,62,2016,1,45,7),(46,62,2016,1,46,5),(47,62,2016,1,44,7),(48,62,2016,1,45,7),(49,62,2016,1,46,4),(50,62,2016,1,44,3),(51,62,2016,1,45,3),(52,62,2016,1,46,3),(53,62,2016,1,44,3),(54,62,2016,1,45,3),(55,62,2016,1,46,3),(56,62,2016,1,44,12),(57,62,2016,1,45,12),(58,62,2016,1,47,23),(59,62,2016,1,48,12),(60,62,2016,1,49,12),(61,62,2016,1,47,30),(62,62,2016,1,44,1),(63,62,2016,1,45,1),(64,62,2016,1,46,1),(65,62,2016,2,44,8),(66,62,2016,2,45,8),(67,62,2016,2,46,6),(68,62,2016,2,44,9),(69,62,2016,2,44,2),(70,62,2016,2,45,2),(71,62,2016,2,46,2),(72,62,2016,2,44,2),(73,62,2016,2,45,2),(74,62,2016,2,46,2),(75,62,2016,2,44,1),(76,62,2016,2,45,1),(77,62,2016,2,46,1),(78,62,2016,2,51,10),(79,62,2016,2,44,1),(80,62,2016,2,45,1),(81,62,2016,2,46,1),(82,62,2016,2,44,2),(83,62,2016,2,45,2),(84,62,2016,2,46,2),(85,62,2016,2,44,2),(86,62,2016,2,45,2),(87,62,2016,2,46,2),(88,62,2016,2,47,3),(89,62,2016,2,48,2),(90,62,2016,2,50,4),(91,62,2016,3,44,7),(92,62,2016,3,45,8),(93,62,2016,3,46,5),(94,62,2016,3,44,8),(95,62,2016,3,45,8),(96,62,2016,3,46,6),(97,62,2016,3,44,7),(98,62,2016,3,45,6),(99,62,2016,3,46,4),(100,62,2016,3,51,5),(101,62,2016,3,44,2),(102,62,2016,3,45,2),(103,62,2016,3,46,2),(104,62,2016,3,47,3),(105,62,2016,3,48,2),(106,62,2016,3,50,2),(107,62,2016,3,44,1),(108,62,2016,3,45,1),(109,62,2016,3,46,1),(110,62,2016,3,47,2),(111,62,2016,3,48,1),(112,62,2016,3,50,1),(113,62,2016,3,49,1),(114,62,2016,3,51,1),(115,62,2016,3,44,8),(116,62,2016,3,45,10),(117,62,2016,3,46,8),(118,62,2016,3,47,19),(119,62,2016,3,48,10),(120,62,2016,3,50,8),(121,62,2016,3,44,10),(122,62,2016,3,45,10),(123,62,2016,3,46,10),(124,62,2016,3,47,23),(125,62,2016,3,48,8),(126,62,2016,3,50,8),(127,62,2016,3,51,10),(128,62,2016,3,47,20),(129,62,2016,3,44,8),(130,62,2016,3,45,8),(131,62,2016,3,46,6),(132,62,2016,3,44,10),(133,62,2016,3,45,10),(134,62,2016,3,47,23),(135,62,2016,3,48,12),(136,62,2016,3,50,10),(137,62,2016,3,44,2),(138,62,2016,3,45,2),(139,62,2016,3,47,3),(140,62,2016,3,48,2),(141,62,2016,3,50,2),(142,62,2016,3,44,2),(143,62,2016,3,45,2),(144,62,2016,3,46,2),(145,62,2016,3,44,2),(146,62,2016,3,45,2),(147,62,2016,3,44,1),(148,62,2016,3,45,1),(149,62,2016,3,46,1),(150,62,2016,3,44,1),(151,62,2016,3,45,1),(152,62,2016,3,44,1),(153,62,2016,3,45,1),(154,62,2016,3,46,1),(155,62,2016,3,44,2),(156,62,2016,3,45,2),(157,62,2016,3,46,2),(158,62,2016,3,47,3),(159,62,2016,3,48,2),(160,62,2016,3,44,1),(161,62,2016,3,45,1),(162,62,2016,3,46,1),(163,62,2016,3,47,2),(164,62,2016,3,48,1),(165,62,2016,3,50,1),(166,62,2016,4,44,7),(167,62,2016,4,45,7),(168,62,2016,4,46,6),(169,62,2016,4,44,9),(170,62,2016,4,45,9),(171,62,2016,4,46,7),(172,62,2016,4,50,7),(173,62,2016,4,44,1),(174,62,2016,4,45,1),(175,62,2016,4,46,1),(176,62,2016,4,44,10),(177,62,2016,4,45,10),(178,62,2016,4,46,8),(179,62,2016,4,50,8),(180,62,2016,4,44,1),(181,62,2016,4,45,1),(182,62,2016,4,46,1),(183,62,2016,4,44,2),(184,62,2016,4,45,2),(185,62,2016,4,46,2),(186,62,2016,4,44,10),(187,62,2016,4,45,10),(188,62,2016,4,46,8),(189,62,2016,4,44,9),(190,62,2016,4,45,9),(191,62,2016,4,46,7),(192,62,2016,4,44,7),(193,62,2016,4,45,7),(194,62,2016,4,46,5),(195,62,2016,5,44,10),(196,62,2016,5,45,10),(197,62,2016,5,46,8),(198,62,2016,5,47,25),(199,62,2016,5,48,10),(200,62,2016,5,50,10),(201,62,2016,5,50,8),(202,62,2016,5,44,5),(203,62,2016,5,45,5),(204,62,2016,5,46,5),(205,62,2016,5,47,16),(206,62,2016,5,48,5),(207,62,2016,5,50,5),(208,62,2016,5,49,5),(209,62,2016,5,51,5),(210,62,2016,5,44,8),(211,62,2016,5,45,7),(212,62,2016,5,46,5),(213,62,2016,5,44,10),(214,62,2016,5,45,10),(215,62,2016,5,46,8),(216,62,2016,5,44,2),(217,62,2016,5,45,2),(218,62,2016,5,46,2),(219,62,2016,5,47,3),(220,62,2016,5,48,2),(221,62,2016,5,50,2),(222,62,2016,5,51,2),(223,62,2016,5,44,1),(224,62,2016,5,45,1),(225,62,2016,5,44,1),(226,62,2016,5,45,1),(227,62,2016,5,46,1),(228,62,2016,5,44,2),(229,62,2016,5,45,2),(230,62,2016,5,46,2),(231,62,2016,5,47,3),(232,62,2016,5,48,2),(233,62,2016,5,50,2),(234,62,2016,5,49,2),(235,62,2016,5,51,2),(236,62,2016,5,44,1),(237,62,2016,5,45,1),(238,62,2016,5,46,1),(239,62,2016,5,47,2),(240,62,2016,5,48,1),(241,62,2016,5,49,1),(242,62,2016,5,44,9),(243,62,2016,5,45,9),(244,62,2016,5,46,7),(245,62,2016,5,44,10),(246,62,2016,5,45,10),(247,62,2016,5,46,8),(248,62,2016,5,44,10),(249,62,2016,5,45,10),(250,62,2016,5,46,8),(251,62,2016,5,44,10),(252,62,2016,5,45,10),(253,62,2016,5,47,20),(254,62,2016,5,48,10),(255,62,2016,5,50,8),(256,62,2016,5,44,8),(257,62,2016,5,45,8),(258,62,2016,5,44,1),(259,62,2016,5,45,1),(260,62,2016,5,46,1),(261,62,2016,5,47,2),(262,62,2016,5,48,1),(263,62,2016,5,50,1),(264,62,2016,5,51,1),(265,62,2016,5,44,10),(266,62,2016,5,45,12),(267,62,2016,5,46,8),(268,62,2016,5,44,5),(269,62,2016,5,45,5),(270,62,2016,5,46,4),(271,62,2016,5,47,15),(272,62,2016,5,48,10),(273,62,2016,6,44,5),(274,62,2016,6,45,5),(275,62,2016,6,46,4),(276,62,2016,6,47,12),(277,62,2016,6,44,7),(278,62,2016,6,45,7),(279,62,2016,6,46,6),(280,62,2016,6,44,10),(281,62,2016,6,45,10),(282,62,2016,6,46,7),(283,62,2016,6,47,30),(284,62,2016,6,44,12),(285,62,2016,6,45,12),(286,62,2016,6,44,2),(287,62,2016,6,45,2),(288,62,2016,6,46,2),(289,62,2016,6,47,3),(290,62,2016,6,48,2),(291,62,2016,6,50,2),(292,62,2016,1,44,12),(293,62,2016,1,45,14),(294,62,2016,1,46,10),(295,62,2016,1,44,10),(296,62,2016,1,45,10),(297,62,2016,1,46,8),(298,62,2016,1,47,25),(299,62,2016,1,48,12),(300,62,2016,1,50,8),(301,62,2016,1,52,8),(302,62,2016,1,47,19),(303,62,2016,1,48,10),(304,62,2016,1,44,9),(305,62,2016,1,45,11),(306,62,2016,1,46,7),(307,62,2016,1,50,7),(308,62,2016,1,49,2),(309,62,2016,1,44,2),(310,62,2016,1,45,2),(311,62,2016,1,46,2),(312,62,2016,1,47,3),(313,62,2016,1,48,2),(314,62,2016,1,50,2),(315,62,2016,1,51,2),(316,62,2016,1,49,2),(317,62,2016,1,44,8),(318,62,2016,1,45,8),(319,62,2016,1,46,8),(320,62,2016,1,44,8),(321,62,2016,1,45,8),(322,62,2016,1,46,8),(323,62,2016,1,44,8),(324,62,2016,1,45,10),(325,62,2016,1,46,10),(326,62,2016,1,48,2),(327,62,2016,1,44,10),(328,62,2016,1,45,12),(329,62,2016,1,46,10),(330,62,2016,1,47,50),(331,62,2016,2,44,1),(332,62,2016,2,45,1),(333,62,2016,2,46,1),(334,62,2016,2,44,5),(335,62,2016,2,45,7),(336,62,2016,2,46,4),(337,62,2016,2,44,7),(338,62,2016,2,45,7),(339,62,2016,2,47,100),(340,62,2016,2,45,2),(341,62,2016,2,44,1),(342,62,2016,2,45,1),(343,62,2016,2,46,1),(344,62,2016,2,44,1),(345,62,2016,2,45,1),(346,62,2016,2,46,1),(347,62,2016,2,44,1),(348,62,2016,2,45,1),(349,62,2016,2,46,1),(350,62,2016,2,44,1),(351,62,2016,2,45,1),(352,62,2016,2,46,1),(353,62,2016,2,46,8),(354,62,2016,2,50,8),(355,62,2016,2,51,8),(356,62,2016,2,44,2),(357,62,2016,2,45,2),(358,62,2016,2,46,2),(359,62,2016,2,47,3),(360,62,2016,2,44,2),(361,62,2016,2,45,2),(362,62,2016,2,46,2),(363,62,2016,2,44,2),(364,62,2016,2,45,2),(365,62,2016,2,46,2),(366,62,2016,2,44,2),(367,62,2016,2,45,2),(368,62,2016,2,46,2),(369,62,2016,2,50,2),(370,62,2016,2,52,2),(371,62,2016,2,44,2),(372,62,2016,2,45,2),(373,62,2016,2,44,1),(374,62,2016,2,45,1),(375,62,2016,2,47,2),(376,62,2016,2,48,1),(377,62,2016,2,51,1),(378,62,2016,2,49,1),(379,62,2016,2,44,8),(380,62,2016,2,45,8),(381,62,2016,2,46,6),(382,62,2016,2,47,20),(383,62,2016,3,47,26),(384,62,2016,3,47,20),(385,62,2016,3,47,20),(386,62,2016,3,47,20),(387,62,2016,3,47,20),(388,62,2016,3,44,1),(389,62,2016,3,45,1),(390,62,2016,3,46,1),(391,62,2016,3,47,2),(392,62,2016,3,48,1),(393,62,2016,3,50,1),(394,62,2016,3,44,10),(395,62,2016,3,45,10),(396,62,2016,3,46,8),(397,62,2016,3,44,8),(398,62,2016,3,45,8),(399,62,2016,3,46,6),(400,62,2016,3,44,10),(401,62,2016,3,45,8),(402,62,2016,3,47,20),(403,62,2016,3,48,10),(404,62,2016,3,49,10),(405,62,2016,3,44,8),(406,62,2016,3,45,8),(407,62,2016,3,44,1),(408,62,2016,3,45,1),(409,62,2016,3,46,1),(410,62,2016,3,47,15),(411,62,2016,3,48,10),(412,62,2016,3,50,10),(413,62,2016,3,44,2),(414,62,2016,3,45,2),(415,62,2016,3,46,2),(416,62,2016,3,47,3),(417,62,2016,3,48,2),(418,62,2016,3,44,8),(419,62,2016,3,45,8),(420,62,2016,3,46,6),(421,62,2016,3,44,7),(422,62,2016,3,45,7),(423,62,2016,3,46,5),(424,62,2016,3,50,8),(425,62,2016,3,44,1),(426,62,2016,3,45,1),(427,62,2016,3,46,1),(428,62,2016,3,44,2),(429,62,2016,3,45,2),(430,62,2016,3,46,2),(431,62,2016,3,44,2),(432,62,2016,3,45,2),(433,62,2016,3,46,2),(434,62,2016,3,44,1),(435,62,2016,3,45,1),(436,62,2016,3,46,1),(437,62,2016,3,44,8),(438,62,2016,3,45,8),(439,62,2016,3,46,8),(440,62,2016,3,44,1),(441,62,2016,3,45,1),(442,62,2016,3,46,1),(443,62,2016,3,44,1),(444,62,2016,3,45,1),(445,62,2016,3,46,1),(446,62,2016,3,44,1),(447,62,2016,3,45,1),(448,62,2016,3,46,1),(449,62,2016,3,44,8),(450,62,2016,3,45,8),(451,62,2016,3,46,6),(452,62,2016,3,44,7),(453,62,2016,3,45,7),(454,62,2016,3,46,5),(455,62,2016,3,44,1),(456,62,2016,3,45,1),(457,62,2016,3,46,1),(458,62,2016,3,44,1),(459,62,2016,3,45,1),(460,62,2016,3,46,1),(461,62,2016,3,44,1),(462,62,2016,3,44,10),(463,62,2016,3,45,10),(464,62,2016,3,47,20),(465,62,2016,3,48,10),(466,62,2016,3,50,8),(467,62,2016,3,52,8),(468,62,2016,3,44,12),(469,62,2016,3,45,12),(470,62,2016,3,44,1),(471,62,2016,3,45,1),(472,62,2016,3,46,1),(473,62,2016,3,50,1),(474,62,2016,3,44,1),(475,62,2016,3,45,1),(476,62,2016,3,46,1),(477,62,2016,3,47,2),(478,62,2016,3,48,1),(479,62,2016,3,50,1),(480,62,2016,4,44,1),(481,62,2016,4,45,1),(482,62,2016,4,46,1),(483,62,2016,4,45,12),(484,62,2016,4,44,1),(485,62,2016,4,45,1),(486,62,2016,4,46,1),(487,62,2016,4,44,2),(488,62,2016,4,45,2),(489,62,2016,4,46,2),(490,62,2016,4,44,12),(491,62,2016,4,45,14),(492,62,2016,4,46,12),(493,62,2016,4,47,20),(494,62,2016,4,44,12),(495,62,2016,4,45,12),(496,62,2016,4,46,10),(497,62,2016,4,44,1),(498,62,2016,4,45,1),(499,62,2016,4,46,1),(500,62,2016,4,44,12),(501,62,2016,4,45,14),(502,62,2016,4,46,10),(503,62,2016,4,47,36),(504,62,2016,4,48,12),(505,62,2016,4,44,10),(506,62,2016,4,45,10),(507,62,2016,4,46,8),(508,62,2016,4,44,10),(509,62,2016,4,45,10),(510,62,2016,4,46,8),(511,62,2016,4,44,8),(512,62,2016,4,45,8),(513,62,2016,4,46,5),(514,62,2016,4,44,2),(515,62,2016,4,45,2),(516,62,2016,4,46,2),(517,62,2016,4,44,8),(518,62,2016,4,45,8),(519,62,2016,4,46,8),(520,62,2016,4,44,8),(521,62,2016,4,45,8),(522,62,2016,4,46,6),(523,62,2016,4,44,1),(524,62,2016,4,45,1),(525,62,2016,4,46,1),(526,62,2016,4,44,1),(527,62,2016,4,45,1),(528,62,2016,4,46,1),(529,62,2016,4,44,1),(530,62,2016,4,45,1),(531,62,2016,4,46,1),(532,62,2016,4,47,2),(533,62,2016,4,48,1),(534,62,2016,4,50,1),(535,62,2016,4,44,2),(536,62,2016,4,45,2),(537,62,2016,4,46,2),(538,62,2016,4,47,3),(539,62,2016,4,48,2),(540,62,2016,4,50,2),(541,62,2016,4,44,1),(542,62,2016,4,45,1),(543,62,2016,4,46,1),(544,62,2016,4,44,1),(545,62,2016,4,45,1),(546,62,2016,4,47,2),(547,62,2016,4,48,1),(548,62,2016,4,50,1),(549,62,2016,4,51,1),(550,62,2016,4,44,1),(551,62,2016,4,45,1),(552,62,2016,4,46,1),(553,62,2016,5,44,12),(554,62,2016,5,45,12),(555,62,2016,5,44,8),(556,62,2016,5,45,9),(557,62,2016,5,46,6),(558,62,2016,5,47,18),(559,62,2016,5,48,9),(560,62,2016,5,50,8),(561,62,2016,5,44,1),(562,62,2016,5,45,1),(563,62,2016,5,46,1),(564,62,2016,5,44,2),(565,62,2016,5,45,2),(566,62,2016,5,45,1),(567,62,2016,5,44,1),(568,62,2016,5,50,1),(569,62,2016,5,50,1),(570,62,2016,5,44,9),(571,62,2016,5,45,10),(572,62,2016,5,46,8),(573,62,2016,5,44,4),(574,62,2016,5,45,4),(575,62,2016,5,46,4),(576,62,2016,5,44,2),(577,62,2016,5,45,2),(578,62,2016,5,46,2),(579,62,2016,5,47,3),(580,62,2016,5,48,2),(581,62,2016,5,50,2),(582,62,2016,5,51,2),(583,62,2016,5,44,1),(584,62,2016,5,45,1),(585,62,2016,5,46,1),(586,62,2016,5,44,2),(587,62,2016,5,45,2),(588,62,2016,5,44,1),(589,62,2016,5,45,1),(590,62,2016,5,44,2),(591,62,2016,5,45,2),(592,62,2016,5,46,2),(593,62,2016,5,44,1),(594,62,2016,5,45,1),(595,62,2016,5,46,1),(596,62,2016,5,44,8),(597,62,2016,5,45,10),(598,62,2016,5,46,6),(599,62,2016,5,47,15),(600,62,2016,5,44,2),(601,62,2016,5,44,8),(602,62,2016,5,45,8),(603,62,2016,5,46,5),(604,62,2016,5,44,10),(605,62,2016,5,45,10),(606,62,2016,5,46,8),(607,62,2016,5,51,10),(608,62,2016,5,44,1),(609,62,2016,5,45,1),(610,62,2016,5,46,1),(611,62,2016,6,44,8),(612,62,2016,6,45,10),(613,62,2016,6,47,23),(614,62,2016,6,48,11),(615,62,2016,6,50,9),(616,62,2016,6,51,9),(617,62,2016,6,44,8),(618,62,2016,6,45,8),(619,62,2016,6,46,8),(620,62,2016,6,47,20),(621,62,2016,6,44,3),(622,62,2016,6,45,1),(623,62,2016,6,44,1),(624,62,2016,6,45,1),(625,62,2016,6,46,1),(626,62,2016,6,44,1),(627,62,2016,6,45,1),(628,62,2016,6,46,1),(629,62,2016,6,44,8),(630,62,2016,6,45,9),(631,62,2016,6,46,7),(632,62,2016,6,47,20),(633,62,2016,6,48,7),(634,62,2016,6,50,7),(635,62,2016,6,44,2),(636,62,2016,6,45,2),(637,62,2016,6,46,2),(638,62,2016,6,47,3),(639,62,2016,6,48,2),(640,62,2016,6,50,2),(641,62,2016,6,51,2),(642,62,2016,6,44,2),(643,62,2016,6,45,2),(644,62,2016,6,46,2),(645,62,2016,6,47,3),(646,62,2016,6,48,2),(647,62,2016,6,51,2),(648,62,2016,6,44,2),(649,62,2016,6,45,2),(650,62,2016,6,46,2),(651,62,2016,6,48,12),(652,62,2016,6,44,10),(653,62,2016,6,45,10),(654,62,2016,6,46,10),(655,62,2016,6,47,20),(656,62,2016,6,48,10),(657,62,2016,6,47,29),(658,62,2016,6,51,10),(659,62,2016,6,44,1),(660,62,2016,6,44,9),(661,62,2016,6,45,10),(662,62,2016,6,44,10),(663,62,2016,6,45,10),(664,62,2016,6,46,8),(665,62,2016,6,44,7),(666,62,2016,6,45,7),(667,62,2016,6,46,6),(668,62,2016,6,44,1),(669,62,2016,6,45,1),(670,62,2016,6,46,1),(671,62,2016,6,44,2),(672,62,2016,6,45,2),(673,62,2016,6,46,2),(674,62,2016,6,47,20),(675,62,2016,6,44,9),(676,62,2016,6,45,9),(677,62,2016,6,46,7),(678,62,2016,6,44,9),(679,62,2016,6,44,11),(680,62,2016,6,45,12),(681,62,2016,6,47,30),(682,62,2016,6,48,10),(683,62,2016,6,50,10),(684,62,2016,6,49,10),(685,62,2016,6,45,10),(686,62,2016,6,46,10),(687,62,2016,6,47,20),(688,62,2016,6,48,10),(689,62,2016,6,49,10),(690,62,2016,6,51,10);
/*!40000 ALTER TABLE `record_chineseMould_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_chineseToolingCost`
--

DROP TABLE IF EXISTS `record_chineseToolingCost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_chineseToolingCost` (
  `objectiveID` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `officialData` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`objectiveID`,`year`,`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_chineseToolingCost`
--

LOCK TABLES `record_chineseToolingCost` WRITE;
/*!40000 ALTER TABLE `record_chineseToolingCost` DISABLE KEYS */;
INSERT INTO `record_chineseToolingCost` VALUES (62,2016,1,178886,'卡波爾/瑞峰 $2,578,750/$223,041',1),(62,2016,2,34768,'卡波爾/瑞峰 $1,159,825/$44,492',1),(62,2016,3,199594,'卡波爾/瑞峰 $3,192,597/$232,268',1),(62,2016,4,66582,'卡波爾/瑞峰 $2,362,575/$133,308',1),(62,2016,5,273996,'卡波爾/瑞峰 $2,739,967/$332,096',1),(62,2016,6,40490,'卡波爾/瑞峰 $2,553,329/$69,260',1),(62,2016,7,NULL,NULL,0),(62,2016,8,NULL,NULL,0),(62,2016,9,NULL,NULL,0),(62,2016,10,NULL,NULL,0),(62,2016,11,NULL,NULL,0),(62,2016,12,NULL,NULL,0);
/*!40000 ALTER TABLE `record_chineseToolingCost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_expense`
--

DROP TABLE IF EXISTS `record_expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_expense` (
  `objectiveID` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `officialData` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`objectiveID`,`year`,`month`),
  CONSTRAINT `fk_record_expense_objective` FOREIGN KEY (`objectiveID`) REFERENCES `objective` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_expense`
--

LOCK TABLES `record_expense` WRITE;
/*!40000 ALTER TABLE `record_expense` DISABLE KEYS */;
INSERT INTO `record_expense` VALUES (31,2016,1,0,NULL,1),(31,2016,2,0,NULL,1),(31,2016,3,0,NULL,1),(31,2016,4,0,NULL,1),(31,2016,5,75526,NULL,1),(31,2016,6,74235,NULL,1),(31,2016,7,91968,NULL,1),(31,2016,8,106433,NULL,1),(31,2016,9,NULL,NULL,0),(31,2016,10,NULL,NULL,0),(31,2016,11,NULL,NULL,0),(31,2016,12,NULL,NULL,0),(41,2016,1,14109,NULL,1),(41,2016,2,14109,NULL,1),(41,2016,3,12087,NULL,1),(41,2016,4,13430,NULL,1),(41,2016,5,12545,NULL,1),(41,2016,6,16742,NULL,1),(41,2016,7,15038,NULL,1),(41,2016,8,16742,NULL,1),(41,2016,9,NULL,NULL,0),(41,2016,10,NULL,NULL,0),(41,2016,11,NULL,NULL,0),(41,2016,12,NULL,NULL,0),(43,2016,1,0,NULL,1),(43,2016,2,0,NULL,1),(43,2016,3,2100,NULL,1),(43,2016,4,0,NULL,1),(43,2016,5,2100,NULL,1),(43,2016,6,2100,NULL,1),(43,2016,7,0,NULL,1),(43,2016,8,0,NULL,1),(43,2016,9,NULL,NULL,0),(43,2016,10,NULL,NULL,0),(43,2016,11,NULL,NULL,0),(43,2016,12,NULL,NULL,0),(46,2016,1,16024,NULL,1),(46,2016,2,27846,NULL,1),(46,2016,3,25772,NULL,1),(46,2016,4,36616,NULL,1),(46,2016,5,37071,NULL,1),(46,2016,6,34157,NULL,1),(46,2016,7,36007,NULL,1),(46,2016,8,26808,NULL,1),(46,2016,9,NULL,NULL,0),(46,2016,10,NULL,NULL,0),(46,2016,11,NULL,NULL,0),(46,2016,12,NULL,NULL,0),(60,2016,1,NULL,'未開機作業無資料',1),(60,2016,2,NULL,'未開機作業無資料',1),(60,2016,3,0,NULL,1),(60,2016,4,104800,NULL,1),(60,2016,5,4200,NULL,1),(60,2016,6,0,NULL,1),(60,2016,7,10000,NULL,1),(60,2016,8,0,NULL,1),(60,2016,9,NULL,NULL,0),(60,2016,10,NULL,NULL,0),(60,2016,11,NULL,NULL,0),(60,2016,12,NULL,NULL,0),(61,2016,1,98634,NULL,1),(61,2016,2,98634,NULL,1),(61,2016,3,98634,NULL,1),(61,2016,4,93000,'服務費合約修正時間',1),(61,2016,5,93000,NULL,1),(61,2016,6,93000,NULL,1),(61,2016,7,93000,NULL,1),(61,2016,8,93000,NULL,1),(61,2016,9,NULL,NULL,0),(61,2016,10,NULL,NULL,0),(61,2016,11,NULL,NULL,0),(61,2016,12,NULL,NULL,0);
/*!40000 ALTER TABLE `record_expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_frequency`
--

DROP TABLE IF EXISTS `record_frequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_frequency` (
  `objectiveID` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `officialData` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`objectiveID`,`year`,`month`,`itemID`),
  CONSTRAINT `fk_record_transportation_objective` FOREIGN KEY (`objectiveID`) REFERENCES `objective` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_frequency`
--

LOCK TABLES `record_frequency` WRITE;
/*!40000 ALTER TABLE `record_frequency` DISABLE KEYS */;
INSERT INTO `record_frequency` VALUES (1,2016,1,1,32,NULL,1),(1,2016,2,1,27,NULL,1),(1,2016,3,1,4,NULL,1),(1,2016,4,1,25,NULL,1),(1,2016,5,1,7,NULL,1),(1,2016,6,1,7,NULL,1),(1,2016,7,1,17,'太空包',1),(1,2016,8,1,10,NULL,1),(1,2016,9,1,NULL,NULL,0),(1,2016,10,1,NULL,NULL,0),(1,2016,11,1,NULL,NULL,0),(1,2016,12,1,NULL,NULL,0),(2,2015,1,32,2,NULL,1),(2,2015,2,32,1,NULL,1),(2,2015,3,32,2,NULL,1),(2,2015,4,32,3,NULL,1),(2,2015,5,32,4,NULL,1),(2,2015,6,32,7,NULL,1),(2,2015,7,32,7,NULL,1),(2,2015,8,32,9,NULL,1),(2,2015,9,32,10,NULL,1),(2,2015,10,32,9,NULL,1),(2,2015,11,32,5,NULL,1),(2,2015,12,32,1,NULL,1),(2,2016,1,32,5,NULL,1),(2,2016,2,32,3,NULL,1),(2,2016,3,32,13,NULL,1),(2,2016,4,32,9,NULL,1),(2,2016,5,32,7,NULL,1),(2,2016,6,32,14,NULL,1),(2,2016,7,32,10,NULL,1),(2,2016,8,32,9,NULL,1),(2,2016,9,32,NULL,NULL,0),(2,2016,10,32,NULL,NULL,0),(2,2016,11,32,NULL,NULL,0),(2,2016,12,32,NULL,NULL,0),(49,2016,1,34,0,NULL,1),(49,2016,2,34,0,NULL,1),(49,2016,3,34,0,NULL,1),(49,2016,4,34,0,NULL,1),(49,2016,5,34,0,NULL,1),(49,2016,6,34,0,NULL,1),(49,2016,7,34,0,NULL,1),(49,2016,8,34,0,NULL,1),(49,2016,9,34,NULL,NULL,0),(49,2016,10,34,NULL,NULL,0),(49,2016,11,34,NULL,NULL,0),(49,2016,12,34,NULL,NULL,0),(50,2016,1,35,0,NULL,1),(50,2016,2,35,0,NULL,1),(50,2016,3,35,0,NULL,1),(50,2016,4,35,0,NULL,1),(50,2016,5,35,0,NULL,1),(50,2016,6,35,0,NULL,1),(50,2016,7,35,0,NULL,1),(50,2016,8,35,0,NULL,1),(50,2016,9,35,NULL,NULL,0),(50,2016,10,35,NULL,NULL,0),(50,2016,11,35,NULL,NULL,0),(50,2016,12,35,NULL,NULL,0),(51,2016,1,36,0,NULL,1),(51,2016,2,36,0,NULL,1),(51,2016,3,36,0,NULL,1),(51,2016,4,36,0,NULL,1),(51,2016,5,36,0,NULL,1),(51,2016,6,36,0,NULL,1),(51,2016,7,36,0,NULL,1),(51,2016,8,36,0,NULL,1),(51,2016,9,36,NULL,NULL,0),(51,2016,10,36,NULL,NULL,0),(51,2016,11,36,NULL,NULL,0),(51,2016,12,36,NULL,NULL,0);
/*!40000 ALTER TABLE `record_frequency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_materialUsage`
--

DROP TABLE IF EXISTS `record_materialUsage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_materialUsage` (
  `objectiveID` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `unitCount` decimal(11,2) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `officialData` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`objectiveID`,`year`,`month`,`itemID`),
  KEY `fk_record_materialUsage_itemData_idx` (`itemID`),
  CONSTRAINT `fk_record_materialUsage_itemData` FOREIGN KEY (`itemID`) REFERENCES `itemData` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_record_materialUsage_objective` FOREIGN KEY (`objectiveID`) REFERENCES `objective` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_materialUsage`
--

LOCK TABLES `record_materialUsage` WRITE;
/*!40000 ALTER TABLE `record_materialUsage` DISABLE KEYS */;
INSERT INTO `record_materialUsage` VALUES (8,2016,1,2,0.00,NULL,1),(8,2016,1,3,30.00,NULL,1),(8,2016,1,4,4.00,NULL,1),(8,2016,2,2,0.00,NULL,1),(8,2016,2,3,30.00,NULL,1),(8,2016,2,4,5.00,NULL,1),(8,2016,3,2,0.00,NULL,1),(8,2016,3,3,30.00,NULL,1),(8,2016,3,4,4.00,NULL,1),(8,2016,4,2,0.00,NULL,1),(8,2016,4,3,30.00,NULL,1),(8,2016,4,4,4.00,NULL,1),(8,2016,5,2,0.00,NULL,1),(8,2016,5,3,30.00,NULL,1),(8,2016,5,4,5.00,NULL,1),(8,2016,6,2,0.00,NULL,1),(8,2016,6,3,30.00,NULL,1),(8,2016,6,4,4.00,NULL,1),(8,2016,7,2,0.00,NULL,1),(8,2016,7,3,30.00,NULL,1),(8,2016,7,4,4.00,NULL,1),(8,2016,8,2,0.00,NULL,1),(8,2016,8,3,30.00,NULL,1),(8,2016,8,4,5.00,NULL,1),(8,2016,9,2,NULL,NULL,0),(8,2016,9,3,NULL,NULL,0),(8,2016,9,4,NULL,NULL,0),(8,2016,10,2,NULL,NULL,0),(8,2016,10,3,NULL,NULL,0),(8,2016,10,4,NULL,NULL,0),(8,2016,11,2,NULL,NULL,0),(8,2016,11,3,NULL,NULL,0),(8,2016,11,4,NULL,NULL,0),(8,2016,12,2,NULL,NULL,0),(8,2016,12,3,NULL,NULL,0),(8,2016,12,4,NULL,NULL,0),(11,2016,1,39,777.60,'推算方式：2016-06-28 得知 101 hrs 之內，固定流量 32L/min 之下，共使用 3,413 分鐘，得 109.216 m^3。故還原推算整月份用量達 777.6 m^3',1),(11,2016,2,39,777.60,'推算方式：2016-06-28 得知 101 hrs 之內，固定流量 32L/min 之下，共使用 3,413 分鐘，得 109.216 m^3。故還原推算整月份用量達 777.6 m^3',1),(11,2016,3,39,777.60,'推算方式：2016-06-28 得知 101 hrs 之內，固定流量 32L/min 之下，共使用 3,413 分鐘，得 109.216 m^3。故還原推算整月份用量達 777.6 m^3',1),(11,2016,4,39,777.60,'推算方式：2016-06-28 得知 101 hrs 之內，固定流量 32L/min 之下，共使用 3,413 分鐘，得 109.216 m^3。故還原推算整月份用量達 777.6 m^3',1),(11,2016,5,39,777.60,'推算方式：2016-06-28 得知 101 hrs 之內，固定流量 32L/min 之下，共使用 3,413 分鐘，得 109.216 m^3。故還原推算整月份用量達 777.6 m^3',1),(11,2016,6,39,777.60,'推算方式：2016-06-28 得知 101 hrs 之內，固定流量 32L/min 之下，共使用 3,413 分鐘，得 109.216 m^3。故還原推算整月份用量達 777.6 m^3',1),(11,2016,7,39,631.78,'記錄時間: 2016-07-06 13:00 ~ 2016-08-06 13:00 (32 L/min * 19,743 min / 1,000 L/M^3)',1),(11,2016,8,39,1350.62,'記錄時間: 2016-08-06 13:00 ~ 2016-09-06 13:00 (32 L/min * 42,207 min / 1,000 L/M^3)',1),(11,2016,9,39,NULL,NULL,0),(11,2016,10,39,NULL,NULL,0),(11,2016,11,39,NULL,NULL,0),(11,2016,12,39,NULL,NULL,0),(29,2016,1,7,6.00,NULL,1),(29,2016,2,7,2.00,NULL,1),(29,2016,3,7,2.00,NULL,1),(29,2016,4,7,1.00,NULL,1),(29,2016,5,7,6.00,NULL,1),(29,2016,6,7,0.00,NULL,1),(29,2016,7,7,2.00,NULL,1),(29,2016,8,7,0.00,NULL,1),(29,2016,9,7,NULL,NULL,0),(29,2016,10,7,NULL,NULL,0),(29,2016,11,7,NULL,NULL,0),(29,2016,12,7,NULL,NULL,0);
/*!40000 ALTER TABLE `record_materialUsage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_mouldTooling`
--

DROP TABLE IF EXISTS `record_mouldTooling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_mouldTooling` (
  `objectiveID` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `itemizeIndex` int(11) NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  `productReference` varchar(255) DEFAULT NULL,
  `itemID` int(11) DEFAULT NULL,
  `cost` decimal(11,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `officialData` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`objectiveID`,`year`,`month`,`itemizeIndex`),
  KEY `fk_toolingRecord_itemList_idx` (`itemID`),
  CONSTRAINT `fk_record_mouldTooling_itemList` FOREIGN KEY (`itemID`) REFERENCES `itemData` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_record_mouldTooling_objective` FOREIGN KEY (`objectiveID`) REFERENCES `objective` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_mouldTooling`
--

LOCK TABLES `record_mouldTooling` WRITE;
/*!40000 ALTER TABLE `record_mouldTooling` DISABLE KEYS */;
INSERT INTO `record_mouldTooling` VALUES (39,2016,1,0,'2016-01-01 00:00:00',NULL,NULL,NULL,NULL,'資料尚未提供',1),(39,2016,2,0,'2016-02-01 00:00:00',NULL,NULL,NULL,NULL,'資料尚未提供',1),(39,2016,3,0,'2016-03-01 00:00:00',NULL,NULL,NULL,NULL,'資料尚未提供',1),(39,2016,4,0,'2016-04-01 00:00:00',NULL,NULL,NULL,NULL,'資料尚未提供',1),(39,2016,5,0,'2016-05-01 00:00:00',NULL,NULL,NULL,NULL,'資料尚未提供',1),(39,2016,6,0,'2016-06-01 00:00:00',NULL,NULL,NULL,NULL,'資料尚未提供',1),(39,2016,7,0,'2016-07-01 00:00:00',NULL,NULL,NULL,NULL,NULL,0),(39,2016,8,0,'2016-08-01 00:00:00',NULL,NULL,NULL,NULL,NULL,0),(39,2016,9,0,'2016-09-01 00:00:00',NULL,NULL,NULL,NULL,NULL,0),(39,2016,10,0,'2016-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,0),(39,2016,11,0,'2016-11-01 00:00:00',NULL,NULL,NULL,NULL,NULL,0),(39,2016,12,0,'2016-12-01 00:00:00',NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `record_mouldTooling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_operation`
--

DROP TABLE IF EXISTS `record_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_operation` (
  `objectiveID` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `timeSpent` decimal(6,2) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `officialData` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`objectiveID`,`year`,`month`),
  CONSTRAINT `fk_record_operation_objective` FOREIGN KEY (`objectiveID`) REFERENCES `objective` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_operation`
--

LOCK TABLES `record_operation` WRITE;
/*!40000 ALTER TABLE `record_operation` DISABLE KEYS */;
INSERT INTO `record_operation` VALUES (5,2016,1,57.00,'部分紙箱來不及',1),(5,2016,2,92.00,'部分紙箱來不及',1),(5,2016,3,265.00,'部分紙箱來不及.調單',1),(5,2016,4,597.00,'部分紙箱來不及',1),(5,2016,5,42.00,'庫存',1),(5,2016,6,346.00,'部分紙箱來不及.調單',1),(5,2016,7,174.00,'部分紙箱來不及.調單',1),(5,2016,8,125.00,'調單造成翻箱',1),(5,2016,9,140.00,NULL,1),(5,2016,10,NULL,NULL,0),(5,2016,11,NULL,NULL,0),(5,2016,12,NULL,NULL,0),(14,2016,1,32.00,NULL,1),(14,2016,2,55.00,NULL,1),(14,2016,3,0.00,NULL,1),(14,2016,4,16.00,NULL,1),(14,2016,5,14.00,NULL,1),(14,2016,6,10.00,NULL,1),(14,2016,7,0.50,NULL,1),(14,2016,8,0.00,NULL,1),(14,2016,9,NULL,NULL,0),(14,2016,10,NULL,NULL,0),(14,2016,11,NULL,NULL,0),(14,2016,12,NULL,NULL,0),(15,2016,1,0.00,NULL,1),(15,2016,2,0.00,NULL,1),(15,2016,3,0.00,NULL,1),(15,2016,4,0.00,NULL,1),(15,2016,5,0.00,NULL,1),(15,2016,6,0.00,NULL,1),(15,2016,7,0.00,NULL,1),(15,2016,8,0.00,NULL,1),(15,2016,9,NULL,NULL,0),(15,2016,10,NULL,NULL,0),(15,2016,11,NULL,NULL,0),(15,2016,12,NULL,NULL,0),(19,2016,1,127.50,NULL,1),(19,2016,2,81.54,NULL,1),(19,2016,3,51.95,NULL,1),(19,2016,4,17.39,NULL,1),(19,2016,5,42.45,NULL,1),(19,2016,6,129.90,NULL,1),(19,2016,7,150.07,NULL,1),(19,2016,8,38.63,NULL,1),(19,2016,9,NULL,NULL,0),(19,2016,10,NULL,NULL,0),(19,2016,11,NULL,NULL,0),(19,2016,12,NULL,NULL,0),(21,2016,1,66.43,'設定變更，由objID63取代',0),(21,2016,2,65.99,'設定變更，由objID63取代',0),(21,2016,3,82.62,'設定變更，由objID63取代',0),(21,2016,4,64.86,'設定變更，由objID63取代',0),(21,2016,5,72.60,'設定變更，由objID63取代',0),(21,2016,6,42.72,'設定變更，由objID63取代',0),(21,2016,7,NULL,'設定變更，由objID63取代',0),(21,2016,8,NULL,'設定變更，由objID63取代',0),(21,2016,9,NULL,'設定變更，由objID63取代',0),(21,2016,10,NULL,'設定變更，由objID63取代',0),(21,2016,11,NULL,'設定變更，由objID63取代',0),(21,2016,12,NULL,'設定變更，由objID63取代',0),(26,2016,1,93.00,NULL,1),(26,2016,2,36.00,NULL,1),(26,2016,3,98.00,NULL,1),(26,2016,4,20.00,NULL,1),(26,2016,5,58.00,NULL,1),(26,2016,6,0.00,NULL,1),(26,2016,7,35.00,NULL,1),(26,2016,8,15.00,NULL,1),(26,2016,9,NULL,NULL,0),(26,2016,10,NULL,NULL,0),(26,2016,11,NULL,NULL,0),(26,2016,12,NULL,NULL,0),(30,2016,1,145.00,NULL,1),(30,2016,2,231.00,NULL,1),(30,2016,3,637.00,NULL,1),(30,2016,4,28.00,NULL,1),(30,2016,5,101.00,NULL,1),(30,2016,6,121.00,NULL,1),(30,2016,7,320.00,NULL,1),(30,2016,8,445.00,NULL,1),(30,2016,9,NULL,NULL,0),(30,2016,10,NULL,NULL,0),(30,2016,11,NULL,NULL,0),(30,2016,12,NULL,NULL,0),(59,2016,1,NULL,'未開機作業無資料',1),(59,2016,2,NULL,'未開機作業無資料',1),(59,2016,3,51.75,NULL,1),(59,2016,4,15.30,NULL,1),(59,2016,5,205.00,NULL,1),(59,2016,6,99.78,NULL,1),(59,2016,7,95.57,NULL,1),(59,2016,8,147.44,NULL,1),(59,2016,9,NULL,NULL,0),(59,2016,10,NULL,NULL,0),(59,2016,11,NULL,NULL,0),(59,2016,12,NULL,NULL,0),(63,2015,1,27.58,NULL,1),(63,2015,2,14.58,NULL,1),(63,2015,3,45.50,NULL,1),(63,2015,4,53.17,NULL,1),(63,2015,5,54.41,NULL,1),(63,2015,6,37.60,NULL,1),(63,2015,7,36.10,NULL,1),(63,2015,8,29.32,NULL,1),(63,2015,9,41.30,NULL,1),(63,2015,10,19.99,NULL,1),(63,2015,11,59.92,NULL,1),(63,2015,12,50.47,NULL,1),(63,2016,1,35.60,NULL,1),(63,2016,2,22.37,NULL,1),(63,2016,3,51.26,NULL,1),(63,2016,4,33.51,NULL,1),(63,2016,5,32.02,NULL,1),(63,2016,6,13.97,NULL,1),(63,2016,7,20.32,NULL,1),(63,2016,8,21.25,NULL,1),(63,2016,9,NULL,NULL,0),(63,2016,10,NULL,NULL,0),(63,2016,11,NULL,NULL,0),(63,2016,12,NULL,NULL,0);
/*!40000 ALTER TABLE `record_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_recycle`
--

DROP TABLE IF EXISTS `record_recycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_recycle` (
  `objectiveID` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `unitCount` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `officialData` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`objectiveID`,`year`,`month`,`itemID`),
  KEY `fk_record_recycle_itemData_idx` (`itemID`),
  CONSTRAINT `fk_record_recycle_itemData` FOREIGN KEY (`itemID`) REFERENCES `itemData` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_record_recycle_objective` FOREIGN KEY (`objectiveID`) REFERENCES `objective` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_recycle`
--

LOCK TABLES `record_recycle` WRITE;
/*!40000 ALTER TABLE `record_recycle` DISABLE KEYS */;
INSERT INTO `record_recycle` VALUES (0,2016,1,0,27,NULL,1),(0,2016,1,40,25,NULL,1),(0,2016,1,41,12,NULL,1),(0,2016,1,42,0,NULL,1),(0,2016,2,0,20,NULL,1),(0,2016,2,40,19,NULL,1),(0,2016,2,41,8,NULL,1),(0,2016,2,42,0,NULL,1),(0,2016,3,0,27,NULL,1),(0,2016,3,40,21,NULL,1),(0,2016,3,41,9,NULL,1),(0,2016,3,42,0,NULL,1),(0,2016,4,0,29,NULL,1),(0,2016,4,40,20,NULL,1),(0,2016,4,41,10,NULL,1),(0,2016,4,42,0,NULL,1),(0,2016,5,0,27,NULL,1),(0,2016,5,40,16,NULL,1),(0,2016,5,41,13,NULL,1),(0,2016,5,42,0,NULL,1),(0,2016,6,0,28,NULL,1),(0,2016,6,40,18,NULL,1),(0,2016,6,41,8,NULL,1),(0,2016,6,42,2,NULL,1),(0,2016,7,0,26,NULL,1),(0,2016,7,40,17,NULL,1),(0,2016,7,41,10,NULL,1),(0,2016,7,42,0,NULL,1),(0,2016,8,0,28,NULL,1),(0,2016,8,40,15,NULL,1),(0,2016,8,41,10,NULL,1),(0,2016,8,42,2,NULL,1),(0,2016,9,0,NULL,NULL,0),(0,2016,9,40,NULL,NULL,0),(0,2016,9,41,NULL,NULL,0),(0,2016,9,42,NULL,NULL,0),(0,2016,10,0,NULL,NULL,0),(0,2016,10,40,NULL,NULL,0),(0,2016,10,41,NULL,NULL,0),(0,2016,10,42,NULL,NULL,0),(0,2016,11,0,NULL,NULL,0),(0,2016,11,40,NULL,NULL,0),(0,2016,11,41,NULL,NULL,0),(0,2016,11,42,NULL,NULL,0),(0,2016,12,0,NULL,NULL,0),(0,2016,12,40,NULL,NULL,0),(0,2016,12,41,NULL,NULL,0),(0,2016,12,42,NULL,NULL,0),(10,2016,1,33,70,NULL,1),(10,2016,2,33,30,NULL,1),(10,2016,3,33,50,NULL,1),(10,2016,4,33,50,NULL,1),(10,2016,5,33,50,NULL,1),(10,2016,6,33,30,NULL,1),(10,2016,7,33,23,NULL,1),(10,2016,8,33,0,NULL,1),(10,2016,9,33,NULL,NULL,0),(10,2016,10,33,NULL,NULL,0),(10,2016,11,33,NULL,NULL,0),(10,2016,12,33,NULL,NULL,0),(27,2016,1,5,1,NULL,1),(27,2016,2,5,2,NULL,1),(27,2016,3,5,1,NULL,1),(27,2016,4,5,6,NULL,1),(27,2016,5,5,0,NULL,1),(27,2016,6,5,0,NULL,1),(27,2016,7,5,2,NULL,1),(27,2016,8,5,2,NULL,1),(27,2016,9,5,NULL,NULL,0),(27,2016,10,5,NULL,NULL,0),(27,2016,11,5,NULL,NULL,0),(27,2016,12,5,NULL,NULL,0),(28,2016,1,6,0,NULL,1),(28,2016,2,6,0,NULL,1),(28,2016,3,6,0,NULL,1),(28,2016,4,6,0,NULL,1),(28,2016,5,6,0,NULL,1),(28,2016,6,6,2,NULL,1),(28,2016,7,6,0,NULL,1),(28,2016,8,6,0,NULL,1),(28,2016,9,6,NULL,NULL,0),(28,2016,10,6,NULL,NULL,0),(28,2016,11,6,NULL,NULL,0),(28,2016,12,6,NULL,NULL,0);
/*!40000 ALTER TABLE `record_recycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_scrap`
--

DROP TABLE IF EXISTS `record_scrap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_scrap` (
  `objectiveID` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `itemizeIndex` int(11) NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  `productReference` varchar(255) DEFAULT NULL,
  `productionCost` decimal(8,5) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `officialData` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`objectiveID`,`year`,`month`,`itemizeIndex`),
  CONSTRAINT `fk_record_scrap_objective` FOREIGN KEY (`objectiveID`) REFERENCES `objective` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_scrap`
--

LOCK TABLES `record_scrap` WRITE;
/*!40000 ALTER TABLE `record_scrap` DISABLE KEYS */;
INSERT INTO `record_scrap` VALUES (20,2016,1,0,'2016-02-01 00:00:00','04079',5.00000,1,NULL,1),(20,2016,1,1,'2016-02-01 00:00:00','04081',5.87975,1264,NULL,1),(20,2016,1,2,'2016-02-01 00:00:00','11123',10.00000,13,NULL,1),(20,2016,1,3,'2016-02-01 00:00:00','11123',10.00000,223,NULL,1),(20,2016,1,4,'2016-02-01 00:00:00','12100',14.66667,3,NULL,1),(20,2016,1,5,'2016-02-01 00:00:00','12100',14.69474,760,NULL,1),(20,2016,1,6,'2016-02-01 00:00:00','15172',13.00000,1,NULL,1),(20,2016,1,7,'2016-02-01 00:00:00','15172',13.61214,5716,NULL,1),(20,2016,1,8,'2016-02-01 00:00:00','20009',11.00000,3,NULL,1),(20,2016,1,9,'2016-02-01 00:00:00','20009',11.14685,143,NULL,1),(20,2016,1,10,'2016-02-01 00:00:00','20009',6.50000,10,NULL,1),(20,2016,2,0,'2016-03-01 00:00:00','15104',6.66667,3,NULL,1),(20,2016,2,1,'2016-03-01 00:00:00','15104',6.50000,14,NULL,1),(20,2016,2,2,'2016-03-01 00:00:00','15104',6.66667,3,NULL,1),(20,2016,2,3,'2016-03-01 00:00:00','15152',6.20000,5,NULL,1),(20,2016,2,4,'2016-03-01 00:00:00','16057',8.00000,1,NULL,1),(20,2016,2,5,'2016-03-01 00:00:00','16057',8.00000,1,NULL,1),(20,2016,2,6,'2016-03-01 00:00:00','16118',3.66667,3,NULL,1),(20,2016,2,7,'2016-03-01 00:00:00','16118',4.00000,1,NULL,1),(20,2016,2,8,'2016-03-01 00:00:00','16118',3.58824,17,NULL,1),(20,2016,2,9,'2016-03-01 00:00:00','18102',30.00000,1,NULL,1),(20,2016,2,10,'2016-03-01 00:00:00','21011',6.10000,20,NULL,1),(20,2016,3,0,'2016-04-01 00:00:00','04073N0',9.48000,25,NULL,1),(20,2016,3,1,'2016-04-01 00:00:00','04073N0',5.25725,517,NULL,1),(20,2016,3,2,'2016-04-01 00:00:00','09148',5.23636,165,NULL,1),(20,2016,3,3,'2016-04-01 00:00:00','10151',32.70000,420,NULL,1),(20,2016,3,4,'2016-04-01 00:00:00','16152',56.98201,278,NULL,1),(20,2016,3,5,'2016-04-01 00:00:00','16152',63.30392,204,NULL,1),(20,2016,3,6,'2016-04-01 00:00:00','18043',10.61538,65,NULL,1),(20,2016,3,7,'2016-04-01 00:00:00','20058',22.07237,152,NULL,1),(20,2016,3,8,'2016-04-01 00:00:00','20058',20.86503,163,NULL,1),(20,2016,4,0,'2016-05-01 00:00:00','12100',0.04499,3512,NULL,1),(20,2016,4,1,'2016-05-01 00:00:00','12100',0.04495,1891,NULL,1),(20,2016,4,2,'2016-05-01 00:00:00','12100',0.04497,1023,NULL,1),(20,2016,4,3,'2016-05-01 00:00:00','13103',0.10336,387,NULL,1),(20,2016,4,4,'2016-05-01 00:00:00','13103',0.10317,378,NULL,1),(20,2016,4,5,'2016-05-01 00:00:00','13103',0.10294,136,NULL,1),(20,2016,4,6,'2016-05-01 00:00:00','13103',0.10351,599,NULL,1),(20,2016,4,7,'2016-05-01 00:00:00','13103',0.10345,928,NULL,1),(20,2016,4,8,'2016-05-01 00:00:00','18043',0.08313,4006,NULL,1),(20,2016,4,9,'2016-05-01 00:00:00','18043',0.04815,3074,NULL,1),(20,2016,4,10,'2016-05-01 00:00:00','20009',0.08918,2108,NULL,1),(20,2016,4,11,'2016-05-01 00:00:00','20039',0.07345,38242,NULL,1),(20,2016,4,12,'2016-05-01 00:00:00','21053',0.09091,22,NULL,1),(20,2016,5,0,'2016-06-01 00:00:00','06083',3.94828,58,NULL,1),(20,2016,5,1,'2016-06-01 00:00:00','06083',3.79365,126,NULL,1),(20,2016,5,2,'2016-06-01 00:00:00','06083',3.57000,100,NULL,1),(20,2016,5,3,'2016-06-01 00:00:00','09082',4.03681,163,NULL,1),(20,2016,5,4,'2016-06-01 00:00:00','10144',13.02449,2368,NULL,1),(20,2016,5,5,'2016-06-01 00:00:00','14126',6.33333,6,NULL,1),(20,2016,5,6,'2016-06-01 00:00:00','14126',6.68399,731,NULL,1),(20,2016,5,7,'2016-06-01 00:00:00','14126',6.85714,7,NULL,1),(20,2016,5,8,'2016-06-01 00:00:00','18039',13.35484,155,NULL,1),(20,2016,5,9,'2016-06-01 00:00:00','18039',13.35714,182,NULL,1),(20,2016,5,10,'2016-06-01 00:00:00','18043',20.03448,87,NULL,1),(20,2016,5,11,'2016-06-01 00:00:00','23031',13.14151,212,NULL,1),(20,2016,6,0,'2016-07-01 00:00:00','10144',5.63173,9721,NULL,1),(20,2016,6,1,'2016-07-01 00:00:00','15147',11.06436,1445,NULL,1),(20,2016,6,2,'2016-07-01 00:00:00','15147',10.32857,70,NULL,1),(20,2016,6,3,'2016-07-01 00:00:00','17099',6.90580,414,NULL,1),(20,2016,6,4,'2016-07-01 00:00:00','20045',41.70028,1438,NULL,1),(20,2016,6,5,'2016-07-01 00:00:00','20045',41.68421,38,NULL,1),(20,2016,6,6,'2016-07-01 00:00:00','20056',8.09552,8281,NULL,1),(20,2016,6,7,'2016-07-01 00:00:00','21012',14.12903,186,NULL,1),(20,2016,7,0,'2016-08-01 00:00:00','08117',4.65000,20,NULL,1),(20,2016,7,1,'2016-08-01 00:00:00','09148',4.35849,53,NULL,1),(20,2016,7,2,'2016-08-01 00:00:00','11113',9.82436,427,NULL,1),(20,2016,7,3,'2016-08-01 00:00:00','14126',4.96825,63,NULL,1),(20,2016,7,4,'2016-08-01 00:00:00','14126',5.75000,16,NULL,1),(20,2016,7,5,'2016-08-01 00:00:00','15147玻璃瓶',10.34750,541,NULL,1),(20,2016,7,6,'2016-08-01 00:00:00','20056',11.94824,1333,NULL,1),(20,2016,7,7,'2016-08-01 00:00:00','21012',14.33333,81,NULL,1),(20,2016,7,8,'2016-08-01 00:00:00','23031',24.79288,618,NULL,1),(20,2016,7,9,'2016-08-01 00:00:00','28010',12.20747,776,NULL,1),(20,2016,7,10,'2016-08-01 00:00:00','30017',22.29970,337,NULL,1),(20,2016,7,11,'2016-08-01 00:00:00','30017',22.30882,68,NULL,1),(20,2016,8,0,'2016-09-01 00:00:00','09082',4.13333,120,NULL,1),(20,2016,8,1,'2016-09-01 00:00:00','11128',10.05128,351,NULL,1),(20,2016,8,2,'2016-09-01 00:00:00','11128',10.04762,84,NULL,1),(20,2016,8,3,'2016-09-01 00:00:00','12092',5.50000,16,NULL,1),(20,2016,8,4,'2016-09-01 00:00:00','15147',10.34750,541,NULL,1),(20,2016,8,5,'2016-09-01 00:00:00','15147',10.16541,399,NULL,1),(20,2016,8,6,'2016-09-01 00:00:00','15147',9.77934,213,NULL,1),(20,2016,8,7,'2016-09-01 00:00:00','16129',8.89179,268,NULL,1),(20,2016,8,8,'2016-09-01 00:00:00','16152',56.05145,311,NULL,1),(20,2016,8,9,'2016-09-01 00:00:00','17146',36.11538,26,NULL,1),(20,2016,8,10,'2016-09-01 00:00:00','20039',12.52033,836,NULL,1),(20,2016,8,11,'2016-09-01 00:00:00','23033',16.41176,17,NULL,1),(20,2016,8,12,'2016-09-01 00:00:00','26011',14.54167,24,NULL,1),(20,2016,8,13,'2016-09-01 00:00:00','28010',12.21005,776,NULL,1),(20,2016,9,0,NULL,NULL,NULL,NULL,NULL,0),(20,2016,10,0,NULL,NULL,NULL,NULL,NULL,0),(20,2016,11,0,NULL,NULL,NULL,NULL,NULL,0),(20,2016,12,0,NULL,NULL,NULL,NULL,NULL,0),(23,2016,1,0,'2016-01-01 00:00:00','06101 IC',4.55090,367,NULL,1),(23,2016,1,1,'2016-01-01 00:00:00','09155 IC',8.02074,366,NULL,1),(23,2016,1,2,'2016-01-01 00:00:00','14116 IC',6.58405,1008,NULL,1),(23,2016,1,3,'2016-01-01 00:00:00','15147 BICHPBWIC',3.70957,341,NULL,1),(23,2016,1,4,'2016-01-01 00:00:00','15147 CIPHSIC',4.65123,106,NULL,1),(23,2016,1,5,'2016-01-01 00:00:00','25024 IC',6.10822,1115,NULL,1),(23,2016,1,6,'2016-01-01 00:00:00','25024 IC',6.11000,497,NULL,1),(23,2016,2,0,'2016-02-01 00:00:00','15153 IC',3.82030,1112,NULL,1),(23,2016,2,1,'2016-02-01 00:00:00','16152 BIC',14.68244,344,NULL,1),(23,2016,2,2,'2016-02-01 00:00:00','16172 IC',10.14441,88,NULL,1),(23,2016,2,3,'2016-02-01 00:00:00','18098 IC',3.63954,2936,NULL,1),(23,2016,2,4,'2016-02-01 00:00:00','18098 IC',5.80602,10466,NULL,1),(23,2016,2,5,'2016-02-01 00:00:00','18098 ICIC',5.41553,756,NULL,1),(23,2016,2,6,'2016-02-01 00:00:00','20058 IC',8.52471,240,NULL,1),(23,2016,2,7,'2016-02-01 00:00:00','21012 IC',1.29682,2255,NULL,1),(23,2016,2,8,'2016-02-01 00:00:00','21018 IC',9.28011,2139,NULL,1),(23,2016,3,0,'2016-03-01 00:00:00','無',0.00000,0,'本月無報廢項目',1),(23,2016,4,0,'2016-04-01 00:00:00','09155 IC',18.12618,151,NULL,1),(23,2016,4,1,'2016-04-01 00:00:00','13103 IC',3.49733,149,NULL,1),(23,2016,4,2,'2016-04-01 00:00:00','13103 IC',6.07564,1009,NULL,1),(23,2016,4,3,'2016-04-01 00:00:00','18039 IC',4.59144,846,NULL,1),(23,2016,4,4,'2016-04-01 00:00:00','18043 IC',10.40693,308,NULL,1),(23,2016,4,5,'2016-04-01 00:00:00','20039 IC',4.12006,1841,NULL,1),(23,2016,4,6,'2016-04-01 00:00:00','22026 IC',4.42515,218,NULL,1),(23,2016,4,7,'2016-04-01 00:00:00','22031 IC',4.08012,163,NULL,1),(23,2016,4,8,'2016-04-01 00:00:00','25030 IC',6.16594,599,NULL,1),(23,2016,5,0,'2016-05-01 00:00:00','10144 IC',8.44800,355,NULL,1),(23,2016,5,1,'2016-05-01 00:00:00','10144 IC',5.74011,163,NULL,1),(23,2016,5,2,'2016-05-01 00:00:00','13103 IC',4.23678,3067,NULL,1),(23,2016,5,3,'2016-05-01 00:00:00','15147 IC',4.13272,140,NULL,1),(23,2016,5,4,'2016-05-01 00:00:00','18043 IC',7.21481,127,NULL,1),(23,2016,5,5,'2016-05-01 00:00:00','22031 IC',4.00857,466,NULL,1),(23,2016,5,6,'2016-05-01 00:00:00','28015 IC',5.14333,1107,NULL,1),(23,2016,5,7,'2016-05-01 00:00:00','28015 IC',5.13297,915,NULL,1),(23,2016,6,0,'2016-06-01 00:00:00','08110 IC',3.65919,785,NULL,1),(23,2016,6,1,'2016-06-01 00:00:00','11113 IC',2.64377,1446,NULL,1),(23,2016,6,2,'2016-06-01 00:00:00','14105 IC',3.40117,269,NULL,1),(23,2016,6,3,'2016-06-01 00:00:00','19051 IC',3.08664,518,NULL,1),(23,2016,6,4,'2016-06-01 00:00:00','20056 IC',4.22639,201,NULL,1),(23,2016,6,5,'2016-06-01 00:00:00','22036 IC',4.15328,1174,NULL,1),(23,2016,7,0,'2016-08-17 00:00:00','15147 IC',3.18962,2327,NULL,1),(23,2016,7,1,'2016-08-17 00:00:00','19054 IC',3.72019,720,NULL,1),(23,2016,7,2,'2016-08-17 00:00:00','20039 IC',4.07882,2742,NULL,1),(23,2016,7,3,'2016-08-17 00:00:00','20056 ICIPHSIC',3.67493,122,NULL,1),(23,2016,7,4,'2016-08-17 00:00:00','25024 IC',5.52365,21,NULL,1),(23,2016,7,5,'2016-08-17 00:00:00','25024 IC',5.52365,27,NULL,1),(23,2016,7,6,'2016-08-17 00:00:00','25024 IC',5.52050,391,NULL,1),(23,2016,7,7,'2016-08-17 00:00:00','30017 IC',4.66786,1728,NULL,1),(23,2016,8,0,'2016-09-14 00:00:00','02220 IC',2.70190,130,NULL,1),(23,2016,8,1,'2016-09-14 00:00:00','08110 IC',3.30685,147,NULL,1),(23,2016,8,2,'2016-09-14 00:00:00','10144 IC',3.90408,874,NULL,1),(23,2016,8,3,'2016-09-14 00:00:00','10150 IC-黑',3.00184,296,NULL,1),(23,2016,8,4,'2016-09-14 00:00:00','10150 IC-粉紅',3.00185,278,NULL,1),(23,2016,8,5,'2016-09-14 00:00:00','11128 IC-透藍',3.78115,904,NULL,1),(23,2016,8,6,'2016-09-14 00:00:00','11128 IC-透咖啡',3.78264,382,NULL,1),(23,2016,8,7,'2016-09-14 00:00:00','15147 IC',3.29671,1318,NULL,1),(23,2016,8,8,'2016-09-14 00:00:00','16152 BBIC',10.22325,107,NULL,1),(23,2016,8,9,'2016-09-14 00:00:00','18125 IC-透藍',2.94055,2089,NULL,1),(23,2016,8,10,'2016-09-14 00:00:00','18125 IC-透咖啡',2.95750,639,NULL,1),(23,2016,8,11,'2016-09-14 00:00:00','21050 IC-黑',3.33000,95,NULL,1),(23,2016,8,12,'2016-09-14 00:00:00','21050 IC-粉紅',3.33000,66,NULL,1),(23,2016,8,13,'2016-09-14 00:00:00','22026 IC-亮黑',3.85740,104,NULL,1),(23,2016,8,14,'2016-09-14 00:00:00','22026 IC-霧黑',3.85440,27,NULL,1),(23,2016,8,15,'2016-09-14 00:00:00','22031 IC-亮黑',3.69496,674,NULL,1),(23,2016,8,16,'2016-09-14 00:00:00','22031 IC-霧白',3.69695,644,NULL,1),(23,2016,8,17,'2016-09-14 00:00:00','25023 IC',3.85618,203,NULL,1),(23,2016,9,0,NULL,NULL,NULL,NULL,NULL,0),(23,2016,10,0,NULL,NULL,NULL,NULL,NULL,0),(23,2016,11,0,NULL,NULL,NULL,NULL,NULL,0),(23,2016,12,0,NULL,NULL,NULL,NULL,NULL,0),(25,2016,1,0,'2016-01-01 00:00:00','04079 0000',2.75000,4,NULL,1),(25,2016,1,1,'2016-01-01 00:00:00','08110 0000',4.17333,75,NULL,1),(25,2016,1,2,'2016-01-01 00:00:00','08110 FOP',6.14286,7,NULL,1),(25,2016,1,3,'2016-01-01 00:00:00','08110 FOP',6.00000,2,NULL,1),(25,2016,1,4,'2016-01-01 00:00:00','09139 0000',20.51923,52,NULL,1),(25,2016,1,5,'2016-01-01 00:00:00','09139 FOP',22.50000,2,NULL,1),(25,2016,1,6,'2016-01-01 00:00:00','09139 FOP',22.50000,2,NULL,1),(25,2016,1,7,'2016-01-01 00:00:00','09139 FOP',21.00000,1,NULL,1),(25,2016,1,8,'2016-01-01 00:00:00','10018 0000',2.48674,1056,NULL,1),(25,2016,1,9,'2016-01-01 00:00:00','10018 FOP',4.08333,12,NULL,1),(25,2016,1,10,'2016-01-01 00:00:00','10018 FOP',4.00000,3,NULL,1),(25,2016,1,11,'2016-01-01 00:00:00','10018 FOP',4.12500,8,NULL,1),(25,2016,1,12,'2016-01-01 00:00:00','10018 FOP',4.25000,4,NULL,1),(25,2016,1,13,'2016-01-01 00:00:00','10149 F',4.93750,16,NULL,1),(25,2016,1,14,'2016-01-01 00:00:00','10149 F',5.00000,9,NULL,1),(25,2016,1,15,'2016-01-01 00:00:00','10149 F',5.00000,4,NULL,1),(25,2016,1,16,'2016-01-01 00:00:00','11112 0000',2.68978,1067,NULL,1),(25,2016,1,17,'2016-01-01 00:00:00','11112 F',4.40000,5,NULL,1),(25,2016,1,18,'2016-01-01 00:00:00','12117 0000',3.91407,1315,NULL,1),(25,2016,1,19,'2016-01-01 00:00:00','12117 F',5.40000,5,NULL,1),(25,2016,1,20,'2016-01-01 00:00:00','14107 0000',2.73469,49,NULL,1),(25,2016,1,21,'2016-01-01 00:00:00','14107 F',3.00000,2,NULL,1),(25,2016,1,22,'2016-01-01 00:00:00','14107 F',3.33333,9,NULL,1),(25,2016,1,23,'2016-01-01 00:00:00','14138 FOP',6.60000,10,NULL,1),(25,2016,1,24,'2016-01-01 00:00:00','15105 F',3.83333,6,NULL,1),(25,2016,1,25,'2016-01-01 00:00:00','15147 BICHPB',15.81818,77,NULL,1),(25,2016,1,26,'2016-01-01 00:00:00','16057 OP',7.50000,4,NULL,1),(25,2016,1,27,'2016-01-01 00:00:00','16118 F',3.40000,5,NULL,1),(25,2016,1,28,'2016-01-01 00:00:00','18092 OPB',12.20000,5,NULL,1),(25,2016,1,29,'2016-01-01 00:00:00','18092 OPB',12.20000,5,NULL,1),(25,2016,1,30,'2016-01-01 00:00:00','18102 FOP',30.16667,6,NULL,1),(25,2016,1,31,'2016-01-01 00:00:00','20009 IC',8.85143,350,NULL,1),(25,2016,1,32,'2016-01-01 00:00:00','20009 ICHS',11.21053,19,NULL,1),(25,2016,1,33,'2016-01-01 00:00:00','20066 0000',6.30130,2685,NULL,1),(25,2016,1,34,'2016-01-01 00:00:00','20066 F',7.53846,13,NULL,1),(25,2016,1,35,'2016-01-01 00:00:00','25024 IC',13.50000,2,NULL,1),(25,2016,2,0,'2016-02-01 00:00:00','09155 0000',5.70068,147,NULL,1),(25,2016,2,1,'2016-02-01 00:00:00','09155 IC',13.66667,30,NULL,1),(25,2016,2,2,'2016-02-01 00:00:00','10149 0000',3.43214,560,NULL,1),(25,2016,2,3,'2016-02-01 00:00:00','14113 0000',2.80000,35,NULL,1),(25,2016,2,4,'2016-02-01 00:00:00','15147 BICHPBWIC',20.12500,40,NULL,1),(25,2016,2,5,'2016-02-01 00:00:00','15153 IC',9.92050,1849,NULL,1),(25,2016,2,6,'2016-02-01 00:00:00','16057 0000',6.44828,29,NULL,1),(25,2016,2,7,'2016-02-01 00:00:00','18092 0000',9.11594,138,NULL,1),(25,2016,2,8,'2016-02-01 00:00:00','18102 0000',28.09048,210,NULL,1),(25,2016,2,9,'2016-02-01 00:00:00','04064 F',2.50000,12,NULL,1),(25,2016,2,10,'2016-02-01 00:00:00','04064 F',2.40000,5,NULL,1),(25,2016,2,11,'2016-02-01 00:00:00','05096 OP',2.33333,3,NULL,1),(25,2016,2,12,'2016-02-01 00:00:00','05096 OP',2.62500,8,NULL,1),(25,2016,2,13,'2016-02-01 00:00:00','05096 OP',2.80000,5,NULL,1),(25,2016,2,14,'2016-02-01 00:00:00','08089 F',3.66667,6,NULL,1),(25,2016,2,15,'2016-02-01 00:00:00','08089 F',3.44444,9,NULL,1),(25,2016,2,16,'2016-02-01 00:00:00','08110 FOP',5.60000,5,NULL,1),(25,2016,2,17,'2016-02-01 00:00:00','09155 OP',6.00000,2,NULL,1),(25,2016,2,18,'2016-02-01 00:00:00','10018 FOP',4.00000,1,NULL,1),(25,2016,2,19,'2016-02-01 00:00:00','10018 FOP',4.42857,7,NULL,1),(25,2016,2,20,'2016-02-01 00:00:00','10018 FOP',4.37500,8,NULL,1),(25,2016,2,21,'2016-02-01 00:00:00','10149 F',5.00000,2,NULL,1),(25,2016,2,22,'2016-02-01 00:00:00','14113 F',3.43478,23,NULL,1),(25,2016,2,23,'2016-02-01 00:00:00','14113 F',3.40000,5,NULL,1),(25,2016,2,24,'2016-02-01 00:00:00','14113 F',3.40000,5,NULL,1),(25,2016,2,25,'2016-02-01 00:00:00','14113 F',3.42857,7,NULL,1),(25,2016,2,26,'2016-02-01 00:00:00','14113 F',3.00000,1,NULL,1),(25,2016,2,27,'2016-02-01 00:00:00','14113 F',3.40000,5,NULL,1),(25,2016,2,28,'2016-02-01 00:00:00','14138 FOP',6.33333,3,NULL,1),(25,2016,2,29,'2016-02-01 00:00:00','14138 FOP',6.33333,3,NULL,1),(25,2016,2,30,'2016-02-01 00:00:00','15104 OP',6.75000,4,NULL,1),(25,2016,2,31,'2016-02-01 00:00:00','15104 OP',6.00000,2,NULL,1),(25,2016,2,32,'2016-02-01 00:00:00','15104 OP',6.66667,3,NULL,1),(25,2016,2,33,'2016-02-01 00:00:00','15104 OP',6.50000,14,NULL,1),(25,2016,2,34,'2016-02-01 00:00:00','15104 OP',6.66667,3,NULL,1),(25,2016,2,35,'2016-02-01 00:00:00','15152 F',6.20000,5,NULL,1),(25,2016,2,36,'2016-02-01 00:00:00','16057 OP',8.00000,1,NULL,1),(25,2016,2,37,'2016-02-01 00:00:00','16057 OP',8.00000,1,NULL,1),(25,2016,2,38,'2016-02-01 00:00:00','16118 F',3.66667,3,NULL,1),(25,2016,2,39,'2016-02-01 00:00:00','16118 F',4.00000,1,NULL,1),(25,2016,2,40,'2016-02-01 00:00:00','16118 F',3.58824,17,NULL,1),(25,2016,2,41,'2016-02-01 00:00:00','18102 FOP',30.00000,1,NULL,1),(25,2016,2,42,'2016-02-01 00:00:00','21011 F',6.10000,20,NULL,1),(25,2016,3,0,'2016-03-01 00:00:00','04073N0 0000',4.34400,625,NULL,1),(25,2016,3,1,'2016-03-01 00:00:00','04073N0 0000',4.33714,350,NULL,1),(25,2016,3,2,'2016-03-01 00:00:00','05095 0000',3.48663,5460,NULL,1),(25,2016,3,3,'2016-03-01 00:00:00','08089 0000',2.96033,605,NULL,1),(25,2016,3,4,'2016-03-01 00:00:00','08110 0000',3.71637,1918,NULL,1),(25,2016,3,5,'2016-03-01 00:00:00','08112 0000',4.28571,35,NULL,1),(25,2016,3,6,'2016-03-01 00:00:00','09155 0000',5.66667,9,NULL,1),(25,2016,3,7,'2016-03-01 00:00:00','09155 IC',22.90909,11,NULL,1),(25,2016,3,8,'2016-03-01 00:00:00','10151 0000',11.18557,194,NULL,1),(25,2016,3,9,'2016-03-01 00:00:00','12123 0000',4.95735,680,NULL,1),(25,2016,3,10,'2016-03-01 00:00:00','13138 0000',7.20325,123,NULL,1),(25,2016,3,11,'2016-03-01 00:00:00','14138 0000',4.73170,2363,NULL,1),(25,2016,3,12,'2016-03-01 00:00:00','14143 0000',13.68367,294,NULL,1),(25,2016,3,13,'2016-03-01 00:00:00','15104 0000',6.23810,84,NULL,1),(25,2016,3,14,'2016-03-01 00:00:00','15152 0000',5.14437,1510,NULL,1),(25,2016,3,15,'2016-03-01 00:00:00','15152 F',7.00000,1,NULL,1),(25,2016,3,16,'2016-03-01 00:00:00','16129 0000',7.10606,66,NULL,1),(25,2016,3,17,'2016-03-01 00:00:00','16172 IC',17.66667,18,NULL,1),(25,2016,3,18,'2016-03-01 00:00:00','18098 IC',11.33426,359,NULL,1),(25,2016,3,19,'2016-03-01 00:00:00','18098 ICIP',13.12500,8,NULL,1),(25,2016,3,20,'2016-03-01 00:00:00','18098 ICOP',12.35000,20,NULL,1),(25,2016,3,21,'2016-03-01 00:00:00','21011 0000',5.08063,3510,NULL,1),(25,2016,3,22,'2016-03-01 00:00:00','22031 IC',8.84699,183,NULL,1),(25,2016,3,23,'2016-03-01 00:00:00','25029 0000',6.84848,165,NULL,1),(25,2016,4,0,'2016-04-01 00:00:00','05068 0000',2.31379,290,NULL,1),(25,2016,4,1,'2016-04-01 00:00:00','05095 OP',4.58333,72,NULL,1),(25,2016,4,2,'2016-04-01 00:00:00','05096 0000',2.28245,18350,NULL,1),(25,2016,4,3,'2016-04-01 00:00:00','06071 0000',1.73626,2184,NULL,1),(25,2016,4,4,'2016-04-01 00:00:00','08112 IC',7.77966,59,NULL,1),(25,2016,4,5,'2016-04-01 00:00:00','18030 0000',7.30058,346,NULL,1),(25,2016,4,6,'2016-04-01 00:00:00','18043 0000',8.50000,12,NULL,1),(25,2016,4,7,'2016-04-01 00:00:00','19056 0000',5.75174,576,NULL,1),(25,2016,4,8,'2016-04-01 00:00:00','20009 0000',5.29771,393,NULL,1),(25,2016,4,9,'2016-04-01 00:00:00','20009 IC',9.21739,575,NULL,1),(25,2016,4,10,'2016-04-01 00:00:00','21053 0000',7.83333,66,NULL,1),(25,2016,4,11,'2016-04-01 00:00:00','21053 IC',13.78936,451,NULL,1),(25,2016,4,12,'2016-04-01 00:00:00','22026 IC',10.70149,67,NULL,1),(25,2016,4,13,'2016-04-01 00:00:00','25030 0000',11.51269,394,NULL,1),(25,2016,4,14,'2016-04-01 00:00:00','25030 IC',17.67797,59,NULL,1),(25,2016,4,15,'2016-04-01 00:00:00','27008 0000',6.47826,345,NULL,1),(25,2016,5,0,'2016-05-01 00:00:00','03188 0000',10.12121,990,NULL,1),(25,2016,5,1,'2016-05-01 00:00:00','03188 F',10.85714,35,NULL,1),(25,2016,5,2,'2016-05-01 00:00:00','05068 0000',2.31183,1690,NULL,1),(25,2016,5,3,'2016-05-01 00:00:00','05068 FOP',3.77778,18,NULL,1),(25,2016,5,4,'2016-05-01 00:00:00','05068 FOP',3.77778,9,NULL,1),(25,2016,5,5,'2016-05-01 00:00:00','05068 FOP',3.77778,9,NULL,1),(25,2016,5,6,'2016-05-01 00:00:00','05096 OP',3.11111,9,NULL,1),(25,2016,5,7,'2016-05-01 00:00:00','05096 OP',3.00000,11,NULL,1),(25,2016,5,8,'2016-05-01 00:00:00','05096 OP',3.12500,8,NULL,1),(25,2016,5,9,'2016-05-01 00:00:00','05096 OP',2.94737,19,NULL,1),(25,2016,5,10,'2016-05-01 00:00:00','05096 OP',3.00000,3,NULL,1),(25,2016,5,11,'2016-05-01 00:00:00','06083 OPA',3.00000,1,NULL,1),(25,2016,5,12,'2016-05-01 00:00:00','06103 HR',4.76923,13,NULL,1),(25,2016,5,13,'2016-05-01 00:00:00','08110 FOP',5.80000,5,NULL,1),(25,2016,5,14,'2016-05-01 00:00:00','09082 0000',3.09978,461,NULL,1),(25,2016,5,15,'2016-05-01 00:00:00','09082 FOP',4.33333,3,NULL,1),(25,2016,5,16,'2016-05-01 00:00:00','09082 FOP',4.58333,12,NULL,1),(25,2016,5,17,'2016-05-01 00:00:00','09082 FOP',4.37500,8,NULL,1),(25,2016,5,18,'2016-05-01 00:00:00','09082 FOP',4.60000,5,NULL,1),(25,2016,5,19,'2016-05-01 00:00:00','09082 FOP',4.55556,9,NULL,1),(25,2016,5,20,'2016-05-01 00:00:00','09082 FOP',4.37500,8,NULL,1),(25,2016,5,21,'2016-05-01 00:00:00','09139 0000',4.48289,263,NULL,1),(25,2016,5,22,'2016-05-01 00:00:00','09139 FOP',6.27273,11,NULL,1),(25,2016,5,23,'2016-05-01 00:00:00','09139 FOP',6.33333,12,NULL,1),(25,2016,5,24,'2016-05-01 00:00:00','09139 OP',5.66667,15,NULL,1),(25,2016,5,25,'2016-05-01 00:00:00','09155 IC',24.96327,953,NULL,1),(25,2016,5,26,'2016-05-01 00:00:00','10008N0 F',4.75000,4,NULL,1),(25,2016,5,27,'2016-05-01 00:00:00','10008N0 F',4.40000,10,NULL,1),(25,2016,5,28,'2016-05-01 00:00:00','10083 0000',3.82353,34,NULL,1),(25,2016,5,29,'2016-05-01 00:00:00','11113 ICOP',10.50000,8,NULL,1),(25,2016,5,30,'2016-05-01 00:00:00','11113 ICOP',10.50000,14,NULL,1),(25,2016,5,31,'2016-05-01 00:00:00','11113 ICOP',10.44444,18,NULL,1),(25,2016,5,32,'2016-05-01 00:00:00','12059 0000',3.75000,8,NULL,1),(25,2016,5,33,'2016-05-01 00:00:00','12059 OP',4.50000,18,NULL,1),(25,2016,5,34,'2016-05-01 00:00:00','13115 0000',4.27546,432,NULL,1),(25,2016,5,35,'2016-05-01 00:00:00','13125 0000',6.00000,30,NULL,1),(25,2016,5,36,'2016-05-01 00:00:00','14113 0000',2.76531,98,NULL,1),(25,2016,5,37,'2016-05-01 00:00:00','14113 F',3.38462,13,NULL,1),(25,2016,5,38,'2016-05-01 00:00:00','14113 F',3.00000,1,NULL,1),(25,2016,5,39,'2016-05-01 00:00:00','14113 F',3.33333,3,NULL,1),(25,2016,5,40,'2016-05-01 00:00:00','14113 F',3.50000,6,NULL,1),(25,2016,5,41,'2016-05-01 00:00:00','14113 F',3.60000,5,NULL,1),(25,2016,5,42,'2016-05-01 00:00:00','14138 FOP',6.92308,13,NULL,1),(25,2016,5,43,'2016-05-01 00:00:00','14138 FOP',7.00000,9,NULL,1),(25,2016,5,44,'2016-05-01 00:00:00','14138 FOP',6.91667,12,NULL,1),(25,2016,5,45,'2016-05-01 00:00:00','15142 OP',5.42857,14,NULL,1),(25,2016,5,46,'2016-05-01 00:00:00','15147玻璃瓶 IC',8.59557,1716,NULL,1),(25,2016,5,47,'2016-05-01 00:00:00','15147玻璃瓶 ICB',9.13223,121,NULL,1),(25,2016,5,48,'2016-05-01 00:00:00','15152N0 0000',5.24733,3275,NULL,1),(25,2016,5,49,'2016-05-01 00:00:00','15152N0 F',6.00000,2,NULL,1),(25,2016,5,50,'2016-05-01 00:00:00','15152N0 F',6.25000,36,NULL,1),(25,2016,5,51,'2016-05-01 00:00:00','15152N0 F',6.23529,17,NULL,1),(25,2016,5,52,'2016-05-01 00:00:00','16083 0000',4.49726,911,NULL,1),(25,2016,5,53,'2016-05-01 00:00:00','16083 C',7.00000,9,NULL,1),(25,2016,5,54,'2016-05-01 00:00:00','16083 C',7.00000,4,NULL,1),(25,2016,5,55,'2016-05-01 00:00:00','16118 0000',2.98592,71,NULL,1),(25,2016,5,56,'2016-05-01 00:00:00','16129 0000',7.09582,407,NULL,1),(25,2016,5,57,'2016-05-01 00:00:00','16129 OP',8.00000,4,NULL,1),(25,2016,5,58,'2016-05-01 00:00:00','16129 OP',8.12500,8,NULL,1),(25,2016,5,59,'2016-05-01 00:00:00','16129 OP',8.07692,13,NULL,1),(25,2016,5,60,'2016-05-01 00:00:00','16129 OP',8.08333,12,NULL,1),(25,2016,5,61,'2016-05-01 00:00:00','16129 OP',8.12500,8,NULL,1),(25,2016,5,62,'2016-05-01 00:00:00','16129 OP',8.12500,8,NULL,1),(25,2016,5,63,'2016-05-01 00:00:00','16174 HR',7.28571,14,NULL,1),(25,2016,5,64,'2016-05-01 00:00:00','18058 0000',5.36420,324,NULL,1),(25,2016,5,65,'2016-05-01 00:00:00','18058 HS',7.69231,13,NULL,1),(25,2016,5,66,'2016-05-01 00:00:00','18058 HS',7.40000,5,NULL,1),(25,2016,5,67,'2016-05-01 00:00:00','18101 0000',4.93651,13860,NULL,1),(25,2016,5,68,'2016-05-01 00:00:00','20036 0000',4.50000,8,NULL,1),(25,2016,5,69,'2016-05-01 00:00:00','20039 IC',9.51651,1847,NULL,1),(25,2016,5,70,'2016-05-01 00:00:00','20039 IC',8.82055,613,NULL,1),(25,2016,5,71,'2016-05-01 00:00:00','20039 ICHS',12.66667,15,NULL,1),(25,2016,5,72,'2016-05-01 00:00:00','20039 ICHS',12.60870,23,NULL,1),(25,2016,5,73,'2016-05-01 00:00:00','20039 ICHS',12.55556,9,NULL,1),(25,2016,5,74,'2016-05-01 00:00:00','20039 ICHS',12.70000,10,NULL,1),(25,2016,5,75,'2016-05-01 00:00:00','20039 ICHS',12.55556,9,NULL,1),(25,2016,5,76,'2016-05-01 00:00:00','20039 ICHS',12.63636,11,NULL,1),(25,2016,5,77,'2016-05-01 00:00:00','20039 ICHS',12.55556,9,NULL,1),(25,2016,5,78,'2016-05-01 00:00:00','20039 ICICHS',41.26667,15,NULL,1),(25,2016,5,79,'2016-05-01 00:00:00','20039 ICOP',11.18182,11,NULL,1),(25,2016,5,80,'2016-05-01 00:00:00','20056 HS',9.11111,9,NULL,1),(25,2016,5,81,'2016-05-01 00:00:00','20056 HS',9.50000,2,NULL,1),(25,2016,5,82,'2016-05-01 00:00:00','20056 HS',9.00000,16,NULL,1),(25,2016,5,83,'2016-05-01 00:00:00','20056 HS',9.00000,5,NULL,1),(25,2016,5,84,'2016-05-01 00:00:00','20056 HS',9.00000,37,NULL,1),(25,2016,5,85,'2016-05-01 00:00:00','20056 HS',8.93103,29,NULL,1),(25,2016,5,86,'2016-05-01 00:00:00','20056 HS',8.96774,31,NULL,1),(25,2016,5,87,'2016-05-01 00:00:00','20056 HS',8.90909,11,NULL,1),(25,2016,5,88,'2016-05-01 00:00:00','20056 HS',8.97826,46,NULL,1),(25,2016,5,89,'2016-05-01 00:00:00','20056 OP',6.33333,6,NULL,1),(25,2016,5,90,'2016-05-01 00:00:00','20056 OP',6.25000,12,NULL,1),(25,2016,5,91,'2016-05-01 00:00:00','21012 IC',12.51852,27,NULL,1),(25,2016,5,92,'2016-05-01 00:00:00','21012 ICOP',13.50000,12,NULL,1),(25,2016,5,93,'2016-05-01 00:00:00','21012 ICOP',13.50000,10,NULL,1),(25,2016,5,94,'2016-05-01 00:00:00','21012 ICOP',13.45455,11,NULL,1),(25,2016,5,95,'2016-05-01 00:00:00','21018 ICOP',17.25000,12,NULL,1),(25,2016,5,96,'2016-05-01 00:00:00','21018 ICOP',17.40000,5,NULL,1),(25,2016,5,97,'2016-05-01 00:00:00','21018 ICOP',17.37500,8,NULL,1),(25,2016,5,98,'2016-05-01 00:00:00','21018 ICOP',17.20000,10,NULL,1),(25,2016,5,99,'2016-05-01 00:00:00','22026 IC',10.69420,448,NULL,1),(25,2016,5,100,'2016-05-01 00:00:00','22026 ICHS',13.23077,13,NULL,1),(25,2016,5,101,'2016-05-01 00:00:00','22026 ICHS',13.22222,9,NULL,1),(25,2016,5,102,'2016-05-01 00:00:00','22026 ICHS',13.50000,6,NULL,1),(25,2016,5,103,'2016-05-01 00:00:00','22031 ICH',11.55556,18,NULL,1),(25,2016,5,104,'2016-05-01 00:00:00','22031 ICH',11.66667,9,NULL,1),(25,2016,5,105,'2016-05-01 00:00:00','22031 ICH',11.50000,8,NULL,1),(25,2016,5,106,'2016-05-01 00:00:00','22031 ICHS',11.57143,7,NULL,1),(25,2016,5,107,'2016-05-01 00:00:00','22031 ICHS',11.66667,18,NULL,1),(25,2016,5,108,'2016-05-01 00:00:00','22031 ICHS',11.54545,11,NULL,1),(25,2016,5,109,'2016-05-01 00:00:00','22031 ICHS',11.66667,9,NULL,1),(25,2016,5,110,'2016-05-01 00:00:00','22031 ICHS',11.66667,9,NULL,1),(25,2016,5,111,'2016-05-01 00:00:00','22031 ICHS',11.66667,12,NULL,1),(25,2016,5,112,'2016-05-01 00:00:00','23030 0000',8.01400,500,NULL,1),(25,2016,5,113,'2016-05-01 00:00:00','23030 0000',8.01523,197,NULL,1),(25,2016,5,114,'2016-05-01 00:00:00','23030 H',10.50000,14,NULL,1),(25,2016,5,115,'2016-05-01 00:00:00','24003 ICH',15.80000,15,NULL,1),(25,2016,5,116,'2016-05-01 00:00:00','24003 ICH',15.76923,13,NULL,1),(25,2016,6,0,'2016-06-01 00:00:00','04064 0000',1.34801,477,NULL,1),(25,2016,6,1,'2016-06-01 00:00:00','04064 F',1.85714,7,NULL,1),(25,2016,6,2,'2016-06-01 00:00:00','04064 F',2.00000,1,NULL,1),(25,2016,6,3,'2016-06-01 00:00:00','04073N0 0000',4.33333,360,NULL,1),(25,2016,6,4,'2016-06-01 00:00:00','05096 OP',2.66667,6,NULL,1),(25,2016,6,5,'2016-06-01 00:00:00','05096 OP',2.66667,6,NULL,1),(25,2016,6,6,'2016-06-01 00:00:00','05096 OP',2.66667,3,NULL,1),(25,2016,6,7,'2016-06-01 00:00:00','05096 OP',2.66667,6,NULL,1),(25,2016,6,8,'2016-06-01 00:00:00','05096 OP',2.66667,6,NULL,1),(25,2016,6,9,'2016-06-01 00:00:00','05096 OP',2.75000,4,NULL,1),(25,2016,6,10,'2016-06-01 00:00:00','05096 OP',2.75000,4,NULL,1),(25,2016,6,11,'2016-06-01 00:00:00','05096 OP',2.75000,12,NULL,1),(25,2016,6,12,'2016-06-01 00:00:00','05096 OP',2.66667,3,NULL,1),(25,2016,6,13,'2016-06-01 00:00:00','06083 OPA',5.00000,2,NULL,1),(25,2016,6,14,'2016-06-01 00:00:00','06103 HR',4.75000,12,NULL,1),(25,2016,6,15,'2016-06-01 00:00:00','06103 HR',5.00000,7,NULL,1),(25,2016,6,16,'2016-06-01 00:00:00','06103 HR',4.75000,4,NULL,1),(25,2016,6,17,'2016-06-01 00:00:00','06104 0000',1.97917,96,NULL,1),(25,2016,6,18,'2016-06-01 00:00:00','06104 F',2.72727,11,NULL,1),(25,2016,6,19,'2016-06-01 00:00:00','08089 0000',2.00000,1127,NULL,1),(25,2016,6,20,'2016-06-01 00:00:00','08089 F',2.00000,1,NULL,1),(25,2016,6,21,'2016-06-01 00:00:00','08089 F',2.00000,1,NULL,1),(25,2016,6,22,'2016-06-01 00:00:00','08089 F',2.60000,5,NULL,1),(25,2016,6,23,'2016-06-01 00:00:00','08110 0000',3.73521,1065,NULL,1),(25,2016,6,24,'2016-06-01 00:00:00','08110 FOP',5.54167,24,NULL,1),(25,2016,6,25,'2016-06-01 00:00:00','08110 FOP',5.25000,4,NULL,1),(25,2016,6,26,'2016-06-01 00:00:00','08110 FOP',5.66667,6,NULL,1),(25,2016,6,27,'2016-06-01 00:00:00','09129 0000',3.07002,1314,NULL,1),(25,2016,6,28,'2016-06-01 00:00:00','09129 F',3.81818,11,NULL,1),(25,2016,6,29,'2016-06-01 00:00:00','09156 HR',5.25000,16,NULL,1),(25,2016,6,30,'2016-06-01 00:00:00','10018 0000',3.76587,11861,NULL,1),(25,2016,6,31,'2016-06-01 00:00:00','10117 0000',3.54375,480,NULL,1),(25,2016,6,32,'2016-06-01 00:00:00','10117 C',6.06173,81,NULL,1),(25,2016,6,33,'2016-06-01 00:00:00','10117 COP',7.07692,13,NULL,1),(25,2016,6,34,'2016-06-01 00:00:00','10117 COP',6.75000,4,NULL,1),(25,2016,6,35,'2016-06-01 00:00:00','11113 IC',7.05710,1839,NULL,1),(25,2016,6,36,'2016-06-01 00:00:00','11113 ICOP',10.18750,16,NULL,1),(25,2016,6,37,'2016-06-01 00:00:00','11113 ICOP',10.26667,15,NULL,1),(25,2016,6,38,'2016-06-01 00:00:00','11113 ICOP',10.50000,4,NULL,1),(25,2016,6,39,'2016-06-01 00:00:00','11113 ICOP',10.20000,5,NULL,1),(25,2016,6,40,'2016-06-01 00:00:00','12109 0000',5.91667,120,NULL,1),(25,2016,6,41,'2016-06-01 00:00:00','12109 COP',10.00000,13,NULL,1),(25,2016,6,42,'2016-06-01 00:00:00','12109 COP',9.66667,3,NULL,1),(25,2016,6,43,'2016-06-01 00:00:00','13082 0000',4.60155,773,NULL,1),(25,2016,6,44,'2016-06-01 00:00:00','13082 F',5.32609,46,NULL,1),(25,2016,6,45,'2016-06-01 00:00:00','13082 F',5.40000,5,NULL,1),(25,2016,6,46,'2016-06-01 00:00:00','13103 IC',8.06250,32,NULL,1),(25,2016,6,47,'2016-06-01 00:00:00','13103 ICOP',8.91667,12,NULL,1),(25,2016,6,48,'2016-06-01 00:00:00','13103 ICOP',8.80000,20,NULL,1),(25,2016,6,49,'2016-06-01 00:00:00','13103 ICOP',8.83333,6,NULL,1),(25,2016,6,50,'2016-06-01 00:00:00','13137 0000',7.63636,11,NULL,1),(25,2016,6,51,'2016-06-01 00:00:00','13137 OP',10.23077,13,NULL,1),(25,2016,6,52,'2016-06-01 00:00:00','14105 ICOP',9.33333,6,NULL,1),(25,2016,6,53,'2016-06-01 00:00:00','14138 0000',4.58168,1365,NULL,1),(25,2016,6,54,'2016-06-01 00:00:00','15173 OP',6.37500,8,NULL,1),(25,2016,6,55,'2016-06-01 00:00:00','15173 OP',6.66667,3,NULL,1),(25,2016,6,56,'2016-06-01 00:00:00','15173 OP',6.57143,7,NULL,1),(25,2016,6,57,'2016-06-01 00:00:00','15173 OP',6.38462,13,NULL,1),(25,2016,6,58,'2016-06-01 00:00:00','15173 OP',6.75000,4,NULL,1),(25,2016,6,59,'2016-06-01 00:00:00','16101 SOPA',12.50000,14,NULL,1),(25,2016,6,60,'2016-06-01 00:00:00','16101 SOPA',12.50000,4,NULL,1),(25,2016,6,61,'2016-06-01 00:00:00','16129 0000',7.09565,115,NULL,1),(25,2016,6,62,'2016-06-01 00:00:00','16129 FOP',9.00000,13,NULL,1),(25,2016,6,63,'2016-06-01 00:00:00','16129 FOP',9.07143,14,NULL,1),(25,2016,6,64,'2016-06-01 00:00:00','16174 0000',4.89539,803,NULL,1),(25,2016,6,65,'2016-06-01 00:00:00','16174 HR',7.27500,40,NULL,1),(25,2016,6,66,'2016-06-01 00:00:00','18058 CHS',10.14286,7,NULL,1),(25,2016,6,67,'2016-06-01 00:00:00','18058 CHS',10.27273,11,NULL,1),(25,2016,6,68,'2016-06-01 00:00:00','18058 CHS',10.33333,6,NULL,1),(25,2016,6,69,'2016-06-01 00:00:00','18058 HS',7.75000,4,NULL,1),(25,2016,6,70,'2016-06-01 00:00:00','19056 0000',5.82488,2307,NULL,1),(25,2016,6,71,'2016-06-01 00:00:00','19056 F',6.66667,3,NULL,1),(25,2016,6,72,'2016-06-01 00:00:00','20039 ICHS',12.00000,15,NULL,1),(25,2016,6,73,'2016-06-01 00:00:00','20039 ICHS',12.00000,5,NULL,1),(25,2016,6,74,'2016-06-01 00:00:00','20039 ICHS',12.00000,4,NULL,1),(25,2016,6,75,'2016-06-01 00:00:00','20039 ICHS',12.00000,3,NULL,1),(25,2016,6,76,'2016-06-01 00:00:00','20039 ICHS',11.83333,6,NULL,1),(25,2016,6,77,'2016-06-01 00:00:00','20039 ICOP',10.72727,11,NULL,1),(25,2016,6,78,'2016-06-01 00:00:00','20039 ICOP',10.60000,5,NULL,1),(25,2016,6,79,'2016-06-01 00:00:00','20056 0000',5.17940,2330,NULL,1),(25,2016,6,80,'2016-06-01 00:00:00','20056 0000',5.18910,936,NULL,1),(25,2016,6,81,'2016-06-01 00:00:00','20056 CHS',11.00000,5,NULL,1),(25,2016,6,82,'2016-06-01 00:00:00','20056 CHS',11.12500,8,NULL,1),(25,2016,6,83,'2016-06-01 00:00:00','20056 CHS',11.00000,10,NULL,1),(25,2016,6,84,'2016-06-01 00:00:00','20056 CHS',11.00000,5,NULL,1),(25,2016,6,85,'2016-06-01 00:00:00','20056 CHS',11.00000,10,NULL,1),(25,2016,6,86,'2016-06-01 00:00:00','20056 CHS',11.06667,15,NULL,1),(25,2016,6,87,'2016-06-01 00:00:00','20056 CHS',11.16667,6,NULL,1),(25,2016,6,88,'2016-06-01 00:00:00','20056 CHS',11.11111,9,NULL,1),(25,2016,6,89,'2016-06-01 00:00:00','20056 CHS',11.05556,18,NULL,1),(25,2016,6,90,'2016-06-01 00:00:00','20056 CHS',11.00000,5,NULL,1),(25,2016,6,91,'2016-06-01 00:00:00','20056 CHS',11.00000,3,NULL,1),(25,2016,6,92,'2016-06-01 00:00:00','20056 CHS',11.16667,6,NULL,1),(25,2016,6,93,'2016-06-01 00:00:00','20056 CHS',11.02857,35,NULL,1),(25,2016,6,94,'2016-06-01 00:00:00','20056 CHS',11.00000,4,NULL,1),(25,2016,6,95,'2016-06-01 00:00:00','20056 CHS',11.12500,8,NULL,1),(25,2016,6,96,'2016-06-01 00:00:00','20056 CHS',11.00000,4,NULL,1),(25,2016,6,97,'2016-06-01 00:00:00','20056 CHS',11.00000,11,NULL,1),(25,2016,6,98,'2016-06-01 00:00:00','20056 CHS',11.00000,10,NULL,1),(25,2016,6,99,'2016-06-01 00:00:00','20056 CHS',11.16667,6,NULL,1),(25,2016,6,100,'2016-06-01 00:00:00','20056 HS',9.00000,10,NULL,1),(25,2016,6,101,'2016-06-01 00:00:00','20056 ICHS',12.33333,6,NULL,1),(25,2016,6,102,'2016-06-01 00:00:00','21011 0000',5.07143,112,NULL,1),(25,2016,6,103,'2016-06-01 00:00:00','21011 F',6.00000,2,NULL,1),(25,2016,6,104,'2016-06-01 00:00:00','21011 F',6.14286,7,NULL,1),(25,2016,6,105,'2016-06-01 00:00:00','21011 F',6.00000,4,NULL,1),(25,2016,6,106,'2016-06-01 00:00:00','21011 F',6.00000,1,NULL,1),(25,2016,6,107,'2016-06-01 00:00:00','21018 IC',16.27536,69,NULL,1),(25,2016,6,108,'2016-06-01 00:00:00','21018 ICOP',17.40000,5,NULL,1),(25,2016,6,109,'2016-06-01 00:00:00','21018 ICOP',17.25000,12,NULL,1),(25,2016,6,110,'2016-06-01 00:00:00','22031 IC',9.37294,1212,NULL,1),(25,2016,6,111,'2016-06-01 00:00:00','22031 ICHS',11.57143,7,NULL,1),(25,2016,6,112,'2016-06-01 00:00:00','22031 ICHS',11.00000,1,NULL,1),(25,2016,6,113,'2016-06-01 00:00:00','23030 0000',8.01802,333,NULL,1),(25,2016,6,114,'2016-06-01 00:00:00','23030 C',11.03922,153,NULL,1),(25,2016,6,115,'2016-06-01 00:00:00','23030 CHS',13.50000,14,NULL,1),(25,2016,6,116,'2016-06-01 00:00:00','23030 CHS',13.54545,11,NULL,1),(25,2016,6,117,'2016-06-01 00:00:00','23030 H',10.33333,6,NULL,1),(25,2016,6,118,'2016-06-01 00:00:00','23030 H',10.25000,4,NULL,1),(25,2016,6,119,'2016-06-01 00:00:00','24003 IC',13.46763,695,NULL,1),(25,2016,6,120,'2016-06-01 00:00:00','24003 ICH',15.69231,13,NULL,1),(25,2016,6,121,'2016-06-01 00:00:00','28020 0000',12.13690,1008,NULL,1),(25,2016,6,122,'2016-06-01 00:00:00','28020 C',16.91667,12,NULL,1),(25,2016,6,123,'2016-06-01 00:00:00','30016 0000',11.08000,25,NULL,1),(25,2016,6,124,'2016-06-01 00:00:00','30016 OP',13.28571,7,NULL,1),(25,2016,6,125,'2016-06-01 00:00:00','30016 OP',13.00000,4,NULL,1),(25,2016,6,126,'2016-06-01 00:00:00','30016 OP',13.66667,3,NULL,1),(25,2016,6,127,'2016-06-01 00:00:00','30016 OP',13.66667,3,NULL,1),(25,2016,6,128,'2016-06-01 00:00:00','30016 OP',13.60000,5,NULL,1),(25,2016,7,0,'2016-07-01 00:00:00','02197 0000',1.00374,2940,NULL,1),(25,2016,7,1,'2016-07-01 00:00:00','02197 F',1.52941,17,NULL,1),(25,2016,7,2,'2016-07-01 00:00:00','04089 0000',3.84211,19,NULL,1),(25,2016,7,3,'2016-07-01 00:00:00','04089 0000',3.00000,1,NULL,1),(25,2016,7,4,'2016-07-01 00:00:00','04089 FOP',6.33333,3,NULL,1),(25,2016,7,5,'2016-07-01 00:00:00','04089 OP',4.86667,15,NULL,1),(25,2016,7,6,'2016-07-01 00:00:00','05096 0000',1.67037,270,NULL,1),(25,2016,7,7,'2016-07-01 00:00:00','05096 0000',1.72471,2728,NULL,1),(25,2016,7,8,'2016-07-01 00:00:00','05096 OP',2.66667,3,NULL,1),(25,2016,7,9,'2016-07-01 00:00:00','05096 OP',2.60000,5,NULL,1),(25,2016,7,10,'2016-07-01 00:00:00','05096 OP',2.66667,3,NULL,1),(25,2016,7,11,'2016-07-01 00:00:00','05096 OP',2.75000,4,NULL,1),(25,2016,7,12,'2016-07-01 00:00:00','05096 OP',2.66667,3,NULL,1),(25,2016,7,13,'2016-07-01 00:00:00','05096 OP',2.60000,5,NULL,1),(25,2016,7,14,'2016-07-01 00:00:00','05096 OP',2.66667,3,NULL,1),(25,2016,7,15,'2016-07-01 00:00:00','05096 OP',2.75000,4,NULL,1),(25,2016,7,16,'2016-07-01 00:00:00','05096 OP',2.66667,3,NULL,1),(25,2016,7,17,'2016-07-01 00:00:00','06103 0000',2.34248,4120,NULL,1),(25,2016,7,18,'2016-07-01 00:00:00','06103 HR',4.66667,3,NULL,1),(25,2016,7,19,'2016-07-01 00:00:00','08110 ICH',12.38462,13,NULL,1),(25,2016,7,20,'2016-07-01 00:00:00','08110 ICH',12.33333,6,NULL,1),(25,2016,7,21,'2016-07-01 00:00:00','08110 ICH',12.60000,5,NULL,1),(25,2016,7,22,'2016-07-01 00:00:00','08110 ICH',12.66667,3,NULL,1),(25,2016,7,23,'2016-07-01 00:00:00','09139 0000',6.06000,50,NULL,1),(25,2016,7,24,'2016-07-01 00:00:00','09139 FOP',7.83333,6,NULL,1),(25,2016,7,25,'2016-07-01 00:00:00','09156 0000',3.53690,8916,NULL,1),(25,2016,7,26,'2016-07-01 00:00:00','09156 HR',4.57143,7,NULL,1),(25,2016,7,27,'2016-07-01 00:00:00','09156 HR',4.45455,11,NULL,1),(25,2016,7,28,'2016-07-01 00:00:00','10018 FOP',4.80000,20,NULL,1),(25,2016,7,29,'2016-07-01 00:00:00','10018 FOP',4.80000,5,NULL,1),(25,2016,7,30,'2016-07-01 00:00:00','10018 FOP',4.75000,8,NULL,1),(25,2016,7,31,'2016-07-01 00:00:00','10018 FOP',4.66667,3,NULL,1),(25,2016,7,32,'2016-07-01 00:00:00','11112 0000',2.70513,1638,NULL,1),(25,2016,7,33,'2016-07-01 00:00:00','11112 F',4.20000,10,NULL,1),(25,2016,7,34,'2016-07-01 00:00:00','11112 F',4.40000,5,NULL,1),(25,2016,7,35,'2016-07-01 00:00:00','11113 ICOP',10.11111,9,NULL,1),(25,2016,7,36,'2016-07-01 00:00:00','11113 ICOP',10.12500,8,NULL,1),(25,2016,7,37,'2016-07-01 00:00:00','11113 ICOP',10.11111,9,NULL,1),(25,2016,7,38,'2016-07-01 00:00:00','11113 ICOP',10.00000,3,NULL,1),(25,2016,7,39,'2016-07-01 00:00:00','11113 ICOP',10.20000,5,NULL,1),(25,2016,7,40,'2016-07-01 00:00:00','11113 ICOP',10.00000,3,NULL,1),(25,2016,7,41,'2016-07-01 00:00:00','11113 ICOP',10.00000,3,NULL,1),(25,2016,7,42,'2016-07-01 00:00:00','12109 C',8.91392,395,NULL,1),(25,2016,7,43,'2016-07-01 00:00:00','12109 COP',10.14286,7,NULL,1),(25,2016,7,44,'2016-07-01 00:00:00','12109 COP',10.16667,6,NULL,1),(25,2016,7,45,'2016-07-01 00:00:00','14075 F',5.22222,9,NULL,1),(25,2016,7,46,'2016-07-01 00:00:00','14105 IC',8.24893,233,NULL,1),(25,2016,7,47,'2016-07-01 00:00:00','14116 0000',3.95364,1898,NULL,1),(25,2016,7,48,'2016-07-01 00:00:00','14116 C',6.63889,36,NULL,1),(25,2016,7,49,'2016-07-01 00:00:00','14116 C',6.75000,4,NULL,1),(25,2016,7,50,'2016-07-01 00:00:00','14138 0000',4.58263,357,NULL,1),(25,2016,7,51,'2016-07-01 00:00:00','14138 FOP',6.44444,9,NULL,1),(25,2016,7,52,'2016-07-01 00:00:00','14138 FOP',6.66667,6,NULL,1),(25,2016,7,53,'2016-07-01 00:00:00','14138 FOP',6.75000,4,NULL,1),(25,2016,7,54,'2016-07-01 00:00:00','14138 FOP',6.50000,2,NULL,1),(25,2016,7,55,'2016-07-01 00:00:00','14138 FOP',6.33333,3,NULL,1),(25,2016,7,56,'2016-07-01 00:00:00','14138 FOP',6.75000,4,NULL,1),(25,2016,7,57,'2016-07-01 00:00:00','14138 FOP',6.66667,6,NULL,1),(25,2016,7,58,'2016-07-01 00:00:00','15172 F',6.00000,1,NULL,1),(25,2016,7,59,'2016-07-01 00:00:00','15172 FH',10.23077,13,NULL,1),(25,2016,7,60,'2016-07-01 00:00:00','15172 FH',9.50000,2,NULL,1),(25,2016,7,61,'2016-07-01 00:00:00','15172 FH',11.00000,1,NULL,1),(25,2016,7,62,'2016-07-01 00:00:00','15173 0000',5.06502,323,NULL,1),(25,2016,7,63,'2016-07-01 00:00:00','15173 OP',6.66667,3,NULL,1),(25,2016,7,64,'2016-07-01 00:00:00','15173 OP',6.75000,4,NULL,1),(25,2016,7,65,'2016-07-01 00:00:00','16079 0000',5.72897,642,NULL,1),(25,2016,7,66,'2016-07-01 00:00:00','16079 FOP',7.33333,6,NULL,1),(25,2016,7,67,'2016-07-01 00:00:00','16101 SOPA',12.50000,2,NULL,1),(25,2016,7,68,'2016-07-01 00:00:00','16101 SOPA',12.60000,10,NULL,1),(25,2016,7,69,'2016-07-01 00:00:00','16129 FOP',9.00000,12,NULL,1),(25,2016,7,70,'2016-07-01 00:00:00','16129 FOP',9.00000,3,NULL,1),(25,2016,7,71,'2016-07-01 00:00:00','16174 0000',5.09626,20371,NULL,1),(25,2016,7,72,'2016-07-01 00:00:00','16174 HR',5.31250,16,NULL,1),(25,2016,7,73,'2016-07-01 00:00:00','16174 HR',5.25000,12,NULL,1),(25,2016,7,74,'2016-07-01 00:00:00','17146 0000',18.54545,11,NULL,1),(25,2016,7,75,'2016-07-01 00:00:00','18058 C',7.96498,1656,NULL,1),(25,2016,7,76,'2016-07-01 00:00:00','18092 0000',8.63636,275,NULL,1),(25,2016,7,77,'2016-07-01 00:00:00','18092 OPB',11.50000,2,NULL,1),(25,2016,7,78,'2016-07-01 00:00:00','19031 0000',4.78689,61,NULL,1),(25,2016,7,79,'2016-07-01 00:00:00','19031 OP',6.33333,3,NULL,1),(25,2016,7,80,'2016-07-01 00:00:00','19031 OP',6.33333,3,NULL,1),(25,2016,7,81,'2016-07-01 00:00:00','19031 OP',5.91667,12,NULL,1),(25,2016,7,82,'2016-07-01 00:00:00','19054 ICOP',11.90909,11,NULL,1),(25,2016,7,83,'2016-07-01 00:00:00','19054 ICOP',11.75000,4,NULL,1),(25,2016,7,84,'2016-07-01 00:00:00','19054 ICOP',11.60000,5,NULL,1),(25,2016,7,85,'2016-07-01 00:00:00','19054 OPB',10.00000,2,NULL,1),(25,2016,7,86,'2016-07-01 00:00:00','19054 OPB',10.00000,2,NULL,1),(25,2016,7,87,'2016-07-01 00:00:00','20039 ICHS',13.00000,7,NULL,1),(25,2016,7,88,'2016-07-01 00:00:00','20039 ICHS',13.33333,3,NULL,1),(25,2016,7,89,'2016-07-01 00:00:00','20039 ICHS',13.00000,4,NULL,1),(25,2016,7,90,'2016-07-01 00:00:00','20039 ICHS',12.50000,2,NULL,1),(25,2016,7,91,'2016-07-01 00:00:00','20039 ICOP',10.70000,10,NULL,1),(25,2016,7,92,'2016-07-01 00:00:00','20039 ICOP',10.75000,4,NULL,1),(25,2016,7,93,'2016-07-01 00:00:00','20039 ICOP',11.00000,3,NULL,1),(25,2016,7,94,'2016-07-01 00:00:00','20056 C',7.90542,3965,NULL,1),(25,2016,7,95,'2016-07-01 00:00:00','20056 CHS',11.00000,4,NULL,1),(25,2016,7,96,'2016-07-01 00:00:00','20056 CHS',11.00000,11,NULL,1),(25,2016,7,97,'2016-07-01 00:00:00','20056 ICHS',12.38462,13,NULL,1),(25,2016,7,98,'2016-07-01 00:00:00','20056 ICHS',12.50000,4,NULL,1),(25,2016,7,99,'2016-07-01 00:00:00','20056 ICHS',12.37500,8,NULL,1),(25,2016,7,100,'2016-07-01 00:00:00','20056 ICHS',12.38462,13,NULL,1),(25,2016,7,101,'2016-07-01 00:00:00','20056 ICHS',12.38462,13,NULL,1),(25,2016,7,102,'2016-07-01 00:00:00','25012 0000',7.59091,22,NULL,1),(25,2016,7,103,'2016-07-01 00:00:00','28010 OP',11.83333,6,NULL,1),(25,2016,7,104,'2016-07-01 00:00:00','28010 OP',11.83333,6,NULL,1),(25,2016,7,105,'2016-07-01 00:00:00','28010 OP',11.85714,7,NULL,1),(25,2016,7,106,'2016-07-01 00:00:00','28010 OP',12.00000,2,NULL,1),(25,2016,8,0,'2016-08-01 00:00:00','04073N0 0000',5.00000,7,NULL,1),(25,2016,8,1,'2016-08-01 00:00:00','04073N0 0000',4.94872,39,NULL,1),(25,2016,8,2,'2016-08-01 00:00:00','04073N0 0000',4.94937,79,NULL,1),(25,2016,8,3,'2016-08-01 00:00:00','04073N0 C',8.86000,50,NULL,1),(25,2016,8,4,'2016-08-01 00:00:00','04073N0 COP',9.92857,14,NULL,1),(25,2016,8,5,'2016-08-01 00:00:00','04073N0 COP',9.92308,13,NULL,1),(25,2016,8,6,'2016-08-01 00:00:00','04073N0 OP',5.91667,12,NULL,1),(25,2016,8,7,'2016-08-01 00:00:00','04073N0 OP',6.00000,8,NULL,1),(25,2016,8,8,'2016-08-01 00:00:00','05068 0000',2.12635,277,NULL,1),(25,2016,8,9,'2016-08-01 00:00:00','05068 OP',3.00000,8,NULL,1),(25,2016,8,10,'2016-08-01 00:00:00','05068 OP',3.00000,4,NULL,1),(25,2016,8,11,'2016-08-01 00:00:00','05068 OP',3.14286,7,NULL,1),(25,2016,8,12,'2016-08-01 00:00:00','05068 OP',2.80000,5,NULL,1),(25,2016,8,13,'2016-08-01 00:00:00','05068 OP',2.66667,3,NULL,1),(25,2016,8,14,'2016-08-01 00:00:00','05068 OP',2.66667,3,NULL,1),(25,2016,8,15,'2016-08-01 00:00:00','05068 OP',3.00000,12,NULL,1),(25,2016,8,16,'2016-08-01 00:00:00','05068 OP',3.00000,4,NULL,1),(25,2016,8,17,'2016-08-01 00:00:00','05068 OP',3.14286,7,NULL,1),(25,2016,8,18,'2016-08-01 00:00:00','05068 OP',3.00000,6,NULL,1),(25,2016,8,19,'2016-08-01 00:00:00','05068 OP',3.00000,6,NULL,1),(25,2016,8,20,'2016-08-01 00:00:00','05096 OP',3.00000,8,NULL,1),(25,2016,8,21,'2016-08-01 00:00:00','05096 OP',3.00000,3,NULL,1),(25,2016,8,22,'2016-08-01 00:00:00','05096 OP',3.00000,5,NULL,1),(25,2016,8,23,'2016-08-01 00:00:00','05096 OP',3.00000,5,NULL,1),(25,2016,8,24,'2016-08-01 00:00:00','05096 OP',3.00000,5,NULL,1),(25,2016,8,25,'2016-08-01 00:00:00','06071 0000',1.62553,235,NULL,1),(25,2016,8,26,'2016-08-01 00:00:00','06071 F',2.27273,11,NULL,1),(25,2016,8,27,'2016-08-01 00:00:00','06071 F',2.00000,1,NULL,1),(25,2016,8,28,'2016-08-01 00:00:00','06083 0000',2.21305,1901,NULL,1),(25,2016,8,29,'2016-08-01 00:00:00','06083 OPA',3.00000,1,NULL,1),(25,2016,8,30,'2016-08-01 00:00:00','06083 OPA',4.33333,3,NULL,1),(25,2016,8,31,'2016-08-01 00:00:00','07107 F',8.00000,1,NULL,1),(25,2016,8,32,'2016-08-01 00:00:00','08110 ICH',12.33333,3,NULL,1),(25,2016,8,33,'2016-08-01 00:00:00','08127N 0000',4.98148,54,NULL,1),(25,2016,8,34,'2016-08-01 00:00:00','08127N F',5.50000,2,NULL,1),(25,2016,8,35,'2016-08-01 00:00:00','08127N F',5.33333,3,NULL,1),(25,2016,8,36,'2016-08-01 00:00:00','09082 0000',2.87115,877,NULL,1),(25,2016,8,37,'2016-08-01 00:00:00','09082 FOP',4.41667,12,NULL,1),(25,2016,8,38,'2016-08-01 00:00:00','09082 FOP',4.33333,3,NULL,1),(25,2016,8,39,'2016-08-01 00:00:00','09139 0000',6.05000,20,NULL,1),(25,2016,8,40,'2016-08-01 00:00:00','09139 FOP',7.93333,15,NULL,1),(25,2016,8,41,'2016-08-01 00:00:00','09139 FOP',8.00000,7,NULL,1),(25,2016,8,42,'2016-08-01 00:00:00','09139 FOP',8.00000,3,NULL,1),(25,2016,8,43,'2016-08-01 00:00:00','09139 FOP',8.00000,4,NULL,1),(25,2016,8,44,'2016-08-01 00:00:00','10018 FOP',4.83333,6,NULL,1),(25,2016,8,45,'2016-08-01 00:00:00','10018 FOP',4.75000,4,NULL,1),(25,2016,8,46,'2016-08-01 00:00:00','10018 FOP',4.66667,3,NULL,1),(25,2016,8,47,'2016-08-01 00:00:00','10018 FOP',4.66667,3,NULL,1),(25,2016,8,48,'2016-08-01 00:00:00','10144 ICHS',10.41667,12,NULL,1),(25,2016,8,49,'2016-08-01 00:00:00','10144 ICHS',10.25000,4,NULL,1),(25,2016,8,50,'2016-08-01 00:00:00','11113 IC',7.05651,584,NULL,1),(25,2016,8,51,'2016-08-01 00:00:00','11113 IC',7.05660,106,NULL,1),(25,2016,8,52,'2016-08-01 00:00:00','11113 ICOP',10.00000,6,NULL,1),(25,2016,8,53,'2016-08-01 00:00:00','11113 ICOP',10.12500,8,NULL,1),(25,2016,8,54,'2016-08-01 00:00:00','11113 ICOP',10.00000,7,NULL,1),(25,2016,8,55,'2016-08-01 00:00:00','11113 ICOP',10.00000,3,NULL,1),(25,2016,8,56,'2016-08-01 00:00:00','11113 ICOP',10.00000,3,NULL,1),(25,2016,8,57,'2016-08-01 00:00:00','12126 0000',4.57143,7,NULL,1),(25,2016,8,58,'2016-08-01 00:00:00','13115 0000',4.27273,165,NULL,1),(25,2016,8,59,'2016-08-01 00:00:00','13115 C',6.87586,145,NULL,1),(25,2016,8,60,'2016-08-01 00:00:00','13115 COP',8.00000,13,NULL,1),(25,2016,8,61,'2016-08-01 00:00:00','13115 FOP',6.40000,5,NULL,1),(25,2016,8,62,'2016-08-01 00:00:00','13133 0000',4.23661,224,NULL,1),(25,2016,8,63,'2016-08-01 00:00:00','13133 OP',5.75000,8,NULL,1),(25,2016,8,64,'2016-08-01 00:00:00','14075 0000',4.31441,229,NULL,1),(25,2016,8,65,'2016-08-01 00:00:00','14075 F',6.00000,1,NULL,1),(25,2016,8,66,'2016-08-01 00:00:00','14133 FOP',5.88889,9,NULL,1),(25,2016,8,67,'2016-08-01 00:00:00','14133 FOP',6.00000,3,NULL,1),(25,2016,8,68,'2016-08-01 00:00:00','14138 FOP',6.55556,9,NULL,1),(25,2016,8,69,'2016-08-01 00:00:00','14138 FOP',7.00000,4,NULL,1),(25,2016,8,70,'2016-08-01 00:00:00','15113 S',10.00607,494,NULL,1),(25,2016,8,71,'2016-08-01 00:00:00','15113 SOPA',12.66667,3,NULL,1),(25,2016,8,72,'2016-08-01 00:00:00','15113 SOPA',12.25000,4,NULL,1),(25,2016,8,73,'2016-08-01 00:00:00','15113 SOPA',12.33333,6,NULL,1),(25,2016,8,74,'2016-08-01 00:00:00','15113 SOPA',13.00000,1,NULL,1),(25,2016,8,75,'2016-08-01 00:00:00','15147玻璃瓶 IC',8.10377,424,NULL,1),(25,2016,8,76,'2016-08-01 00:00:00','15172 0000',4.77358,7517,NULL,1),(25,2016,8,77,'2016-08-01 00:00:00','15172 F',5.70000,120,NULL,1),(25,2016,8,78,'2016-08-01 00:00:00','15172 FH',10.23077,13,NULL,1),(25,2016,8,79,'2016-08-01 00:00:00','15172 FH',10.66667,3,NULL,1),(25,2016,8,80,'2016-08-01 00:00:00','15178 OP',8.33333,12,NULL,1),(25,2016,8,81,'2016-08-01 00:00:00','15178 OP',8.37500,8,NULL,1),(25,2016,8,82,'2016-08-01 00:00:00','15178 OP',8.50000,4,NULL,1),(25,2016,8,83,'2016-08-01 00:00:00','16101 S',10.06667,135,NULL,1),(25,2016,8,84,'2016-08-01 00:00:00','16101 SOPA',12.00000,1,NULL,1),(25,2016,8,85,'2016-08-01 00:00:00','16101 SOPA',12.66667,3,NULL,1),(25,2016,8,86,'2016-08-01 00:00:00','16101 SOPA',12.50000,2,NULL,1),(25,2016,8,87,'2016-08-01 00:00:00','16117 0000',5.61538,26,NULL,1),(25,2016,8,88,'2016-08-01 00:00:00','16117 OP',6.46667,15,NULL,1),(25,2016,8,89,'2016-08-01 00:00:00','16117 OP',6.33333,6,NULL,1),(25,2016,8,90,'2016-08-01 00:00:00','16117 OP',6.40000,5,NULL,1),(25,2016,8,91,'2016-08-01 00:00:00','16117 OP',6.25000,4,NULL,1),(25,2016,8,92,'2016-08-01 00:00:00','16119W 0000',5.35281,462,NULL,1),(25,2016,8,93,'2016-08-01 00:00:00','16119W C',8.41176,17,NULL,1),(25,2016,8,94,'2016-08-01 00:00:00','16129 0000',7.09644,1265,NULL,1),(25,2016,8,95,'2016-08-01 00:00:00','16129 FOP',9.07143,14,NULL,1),(25,2016,8,96,'2016-08-01 00:00:00','16129 FOP',9.00000,13,NULL,1),(25,2016,8,97,'2016-08-01 00:00:00','17033 0000',5.61576,203,NULL,1),(25,2016,8,98,'2016-08-01 00:00:00','17033 F',6.33333,3,NULL,1),(25,2016,8,99,'2016-08-01 00:00:00','17033 F',6.40000,15,NULL,1),(25,2016,8,100,'2016-08-01 00:00:00','17146 F',20.17130,216,NULL,1),(25,2016,8,101,'2016-08-01 00:00:00','18102 FOP',7.91667,12,NULL,1),(25,2016,8,102,'2016-08-01 00:00:00','18125 IC',10.69459,573,NULL,1),(25,2016,8,103,'2016-08-01 00:00:00','18125 ICH',13.13333,15,NULL,1),(25,2016,8,104,'2016-08-01 00:00:00','18125 ICH',13.15385,13,NULL,1),(25,2016,8,105,'2016-08-01 00:00:00','18125 ICH',13.33333,3,NULL,1),(25,2016,8,106,'2016-08-01 00:00:00','18125 ICH',13.33333,3,NULL,1),(25,2016,8,107,'2016-08-01 00:00:00','18125 ICH',13.28571,7,NULL,1),(25,2016,8,108,'2016-08-01 00:00:00','18125 ICH',13.00000,6,NULL,1),(25,2016,8,109,'2016-08-01 00:00:00','19054 0000',6.10598,1104,NULL,1),(25,2016,8,110,'2016-08-01 00:00:00','19054 IC',9.82573,482,NULL,1),(25,2016,8,111,'2016-08-01 00:00:00','19054 ICOP',11.75000,4,NULL,1),(25,2016,8,112,'2016-08-01 00:00:00','19054 ICOP',12.00000,3,NULL,1),(25,2016,8,113,'2016-08-01 00:00:00','19054 ICOP',12.00000,3,NULL,1),(25,2016,8,114,'2016-08-01 00:00:00','19054 ICOP',12.00000,3,NULL,1),(25,2016,8,115,'2016-08-01 00:00:00','20039 IC',9.01650,2182,NULL,1),(25,2016,8,116,'2016-08-01 00:00:00','20039 ICOP',10.75000,4,NULL,1),(25,2016,8,117,'2016-08-01 00:00:00','20039 ICOP',11.00000,3,NULL,1),(25,2016,8,118,'2016-08-01 00:00:00','20039 ICOP',11.00000,3,NULL,1),(25,2016,8,119,'2016-08-01 00:00:00','20039 ICOP',11.00000,3,NULL,1),(25,2016,8,120,'2016-08-01 00:00:00','20056 C',7.90238,3145,NULL,1),(25,2016,8,121,'2016-08-01 00:00:00','20056 CHS',11.00000,1,NULL,1),(25,2016,8,122,'2016-08-01 00:00:00','21011 F',6.12500,8,NULL,1),(25,2016,8,123,'2016-08-01 00:00:00','21011 F',6.28571,7,NULL,1),(25,2016,8,124,'2016-08-01 00:00:00','22026 ICHS',12.69231,13,NULL,1),(25,2016,8,125,'2016-08-01 00:00:00','22026 ICHS',12.71429,7,NULL,1),(25,2016,8,126,'2016-08-01 00:00:00','22026 ICHS',12.75000,4,NULL,1),(25,2016,8,127,'2016-08-01 00:00:00','22026 ICHS',12.33333,3,NULL,1),(25,2016,8,128,'2016-08-01 00:00:00','22026 ICHS',12.75000,4,NULL,1),(25,2016,8,129,'2016-08-01 00:00:00','22026 ICHS',12.75000,12,NULL,1),(25,2016,8,130,'2016-08-01 00:00:00','27008 0000',6.57031,128,NULL,1),(25,2016,8,131,'2016-08-01 00:00:00','28010 0000',9.84241,349,NULL,1),(25,2016,8,132,'2016-08-01 00:00:00','28010 OP',12.00000,2,NULL,1),(25,2016,9,0,NULL,NULL,NULL,NULL,NULL,0),(25,2016,10,0,NULL,NULL,NULL,NULL,NULL,0),(25,2016,11,0,NULL,NULL,NULL,NULL,NULL,0),(25,2016,12,0,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `record_scrap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_severance`
--

DROP TABLE IF EXISTS `record_severance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_severance` (
  `objectiveID` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `foreignStatus` tinyint(1) NOT NULL,
  `staffCount` int(11) DEFAULT NULL,
  `severanceCost` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `officialData` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`objectiveID`,`foreignStatus`,`year`,`month`),
  CONSTRAINT `fk_record_severance_objective` FOREIGN KEY (`objectiveID`) REFERENCES `objective` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_severance`
--

LOCK TABLES `record_severance` WRITE;
/*!40000 ALTER TABLE `record_severance` DISABLE KEYS */;
INSERT INTO `record_severance` VALUES (3,2016,1,0,14,184238,NULL,1),(3,2016,2,0,13,0,NULL,1),(3,2016,3,0,13,0,'退休金支出 $1,066,880',1),(3,2016,4,0,13,0,NULL,1),(3,2016,5,0,13,0,NULL,1),(3,2016,6,0,13,0,NULL,1),(3,2016,7,0,13,0,NULL,1),(3,2016,8,0,13,0,NULL,1),(3,2016,9,0,NULL,NULL,NULL,0),(3,2016,10,0,NULL,NULL,NULL,0),(3,2016,11,0,NULL,NULL,NULL,0),(3,2016,12,0,NULL,NULL,NULL,0),(3,2016,1,1,2,0,NULL,1),(3,2016,2,1,2,0,NULL,1),(3,2016,3,1,2,0,NULL,1),(3,2016,4,1,2,0,NULL,1),(3,2016,5,1,2,0,NULL,1),(3,2016,6,1,2,0,NULL,1),(3,2016,7,1,2,0,NULL,1),(3,2016,8,1,2,0,NULL,1),(3,2016,9,1,NULL,NULL,NULL,0),(3,2016,10,1,NULL,NULL,NULL,0),(3,2016,11,1,NULL,NULL,NULL,0),(3,2016,12,1,NULL,NULL,NULL,0),(6,2016,1,0,26,0,NULL,1),(6,2016,2,0,26,0,NULL,1),(6,2016,3,0,26,0,NULL,1),(6,2016,4,0,25,0,NULL,1),(6,2016,5,0,26,0,NULL,1),(6,2016,6,0,25,0,NULL,1),(6,2016,7,0,26,0,NULL,1),(6,2016,8,0,25,0,NULL,1),(6,2016,9,0,24,0,NULL,1),(6,2016,10,0,NULL,NULL,NULL,0),(6,2016,11,0,NULL,NULL,NULL,0),(6,2016,12,0,NULL,NULL,NULL,0),(6,2016,1,1,58,257587,NULL,1),(6,2016,2,1,56,0,NULL,1),(6,2016,3,1,52,0,NULL,1),(6,2016,4,1,50,0,NULL,1),(6,2016,5,1,52,0,NULL,1),(6,2016,6,1,51,0,NULL,1),(6,2016,7,1,52,0,NULL,1),(6,2016,8,1,52,0,NULL,1),(6,2016,9,1,53,0,NULL,1),(6,2016,10,1,NULL,NULL,NULL,0),(6,2016,11,1,NULL,NULL,NULL,0),(6,2016,12,1,NULL,NULL,NULL,0),(9,2016,1,0,17,0,NULL,1),(9,2016,2,0,14,0,NULL,1),(9,2016,3,0,14,0,NULL,1),(9,2016,4,0,14,0,NULL,1),(9,2016,5,0,14,0,NULL,1),(9,2016,6,0,14,0,NULL,1),(9,2016,7,0,13,0,NULL,1),(9,2016,8,0,13,0,NULL,1),(9,2016,9,0,NULL,NULL,NULL,0),(9,2016,10,0,NULL,NULL,NULL,0),(9,2016,11,0,NULL,NULL,NULL,0),(9,2016,12,0,NULL,NULL,NULL,0),(9,2016,1,1,0,0,'無外籍員工',1),(9,2016,2,1,0,0,'無外籍員工',1),(9,2016,3,1,0,0,'無外籍員工',1),(9,2016,4,1,0,0,'無外籍員工',1),(9,2016,5,1,0,0,'無外籍員工',1),(9,2016,6,1,0,0,'無外籍員工',1),(9,2016,7,1,0,0,'無外籍員工',1),(9,2016,8,1,0,0,'無外籍員工',1),(9,2016,9,1,NULL,NULL,NULL,0),(9,2016,10,1,NULL,NULL,NULL,0),(9,2016,11,1,NULL,NULL,NULL,0),(9,2016,12,1,NULL,NULL,NULL,0),(12,2016,1,0,21,0,NULL,1),(12,2016,2,0,21,0,NULL,1),(12,2016,3,0,21,0,NULL,1),(12,2016,4,0,21,0,NULL,1),(12,2016,5,0,21,0,NULL,1),(12,2016,6,0,20,0,NULL,1),(12,2016,7,0,21,0,NULL,1),(12,2016,8,0,23,0,NULL,1),(12,2016,9,0,NULL,NULL,NULL,0),(12,2016,10,0,NULL,NULL,NULL,0),(12,2016,11,0,NULL,NULL,NULL,0),(12,2016,12,0,NULL,NULL,NULL,0),(12,2016,1,1,17,0,NULL,1),(12,2016,2,1,17,0,NULL,1),(12,2016,3,1,17,0,NULL,1),(12,2016,4,1,17,0,NULL,1),(12,2016,5,1,17,0,NULL,1),(12,2016,6,1,17,0,NULL,1),(12,2016,7,1,17,0,NULL,1),(12,2016,8,1,19,0,NULL,1),(12,2016,9,1,NULL,NULL,NULL,0),(12,2016,10,1,NULL,NULL,NULL,0),(12,2016,11,1,NULL,NULL,NULL,0),(12,2016,12,1,NULL,NULL,NULL,0),(24,2016,1,0,21,0,NULL,1),(24,2016,2,0,21,0,NULL,1),(24,2016,3,0,18,0,NULL,1),(24,2016,4,0,18,0,NULL,1),(24,2016,5,0,18,0,NULL,1),(24,2016,6,0,17,0,NULL,1),(24,2016,7,0,16,0,NULL,1),(24,2016,8,0,16,0,NULL,1),(24,2016,9,0,NULL,NULL,NULL,0),(24,2016,10,0,NULL,NULL,NULL,0),(24,2016,11,0,NULL,NULL,NULL,0),(24,2016,12,0,NULL,NULL,NULL,0),(24,2016,1,1,0,0,NULL,1),(24,2016,2,1,0,0,NULL,1),(24,2016,3,1,3,0,NULL,1),(24,2016,4,1,3,0,NULL,1),(24,2016,5,1,2,0,NULL,1),(24,2016,6,1,2,0,NULL,1),(24,2016,7,1,1,0,NULL,1),(24,2016,8,1,1,0,NULL,1),(24,2016,9,1,NULL,NULL,NULL,0),(24,2016,10,1,NULL,NULL,NULL,0),(24,2016,11,1,NULL,NULL,NULL,0),(24,2016,12,1,NULL,NULL,NULL,0),(32,2016,1,0,17,0,NULL,1),(32,2016,2,0,17,0,NULL,1),(32,2016,3,0,17,0,NULL,1),(32,2016,4,0,16,0,NULL,1),(32,2016,5,0,16,0,NULL,1),(32,2016,6,0,17,0,NULL,1),(32,2016,7,0,17,0,NULL,1),(32,2016,8,0,17,0,NULL,1),(32,2016,9,0,NULL,NULL,NULL,0),(32,2016,10,0,NULL,NULL,NULL,0),(32,2016,11,0,NULL,NULL,NULL,0),(32,2016,12,0,NULL,NULL,NULL,0),(32,2016,1,1,0,0,NULL,1),(32,2016,2,1,0,0,NULL,1),(32,2016,3,1,0,0,NULL,1),(32,2016,4,1,0,0,NULL,1),(32,2016,5,1,0,0,NULL,1),(32,2016,6,1,0,0,NULL,1),(32,2016,7,1,0,0,NULL,1),(32,2016,8,1,0,0,NULL,1),(32,2016,9,1,NULL,NULL,NULL,0),(32,2016,10,1,NULL,NULL,NULL,0),(32,2016,11,1,NULL,NULL,NULL,0),(32,2016,12,1,NULL,NULL,NULL,0),(42,2016,1,0,7,92083,NULL,1),(42,2016,2,0,7,0,NULL,1),(42,2016,3,0,7,0,NULL,1),(42,2016,4,0,7,0,NULL,1),(42,2016,5,0,7,0,NULL,1),(42,2016,6,0,7,0,NULL,1),(42,2016,7,0,7,0,NULL,1),(42,2016,8,0,NULL,NULL,NULL,0),(42,2016,9,0,NULL,NULL,NULL,0),(42,2016,10,0,NULL,NULL,NULL,0),(42,2016,11,0,NULL,NULL,NULL,0),(42,2016,12,0,NULL,NULL,NULL,0),(42,2016,1,1,2,0,NULL,1),(42,2016,2,1,2,0,NULL,1),(42,2016,3,1,2,0,NULL,1),(42,2016,4,1,2,0,NULL,1),(42,2016,5,1,2,0,NULL,1),(42,2016,6,1,2,0,NULL,1),(42,2016,7,1,2,0,NULL,1),(42,2016,8,1,NULL,NULL,NULL,0),(42,2016,9,1,NULL,NULL,NULL,0),(42,2016,10,1,NULL,NULL,NULL,0),(42,2016,11,1,NULL,NULL,NULL,0),(42,2016,12,1,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `record_severance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `reductionChart_detail`
--

DROP TABLE IF EXISTS `reductionChart_detail`;
/*!50001 DROP VIEW IF EXISTS `reductionChart_detail`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reductionChart_detail` AS SELECT 
 1 AS `objectiveID`,
 1 AS `year`,
 1 AS `1`,
 1 AS `2`,
 1 AS `3`,
 1 AS `4`,
 1 AS `5`,
 1 AS `6`,
 1 AS `7`,
 1 AS `8`,
 1 AS `9`,
 1 AS `10`,
 1 AS `11`,
 1 AS `12`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reductionList_acceptance`
--

DROP TABLE IF EXISTS `reductionList_acceptance`;
/*!50001 DROP VIEW IF EXISTS `reductionList_acceptance`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reductionList_acceptance` AS SELECT 
 1 AS `objectiveID`,
 1 AS `year`,
 1 AS `month`,
 1 AS `reduction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reductionList_detail`
--

DROP TABLE IF EXISTS `reductionList_detail`;
/*!50001 DROP VIEW IF EXISTS `reductionList_detail`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reductionList_detail` AS SELECT 
 1 AS `objectiveID`,
 1 AS `year`,
 1 AS `month`,
 1 AS `reduction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reductionList_expense`
--

DROP TABLE IF EXISTS `reductionList_expense`;
/*!50001 DROP VIEW IF EXISTS `reductionList_expense`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reductionList_expense` AS SELECT 
 1 AS `objectiveID`,
 1 AS `year`,
 1 AS `month`,
 1 AS `reduction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reductionList_frequency`
--

DROP TABLE IF EXISTS `reductionList_frequency`;
/*!50001 DROP VIEW IF EXISTS `reductionList_frequency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reductionList_frequency` AS SELECT 
 1 AS `objectiveID`,
 1 AS `year`,
 1 AS `month`,
 1 AS `reduction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reductionList_materialUsage`
--

DROP TABLE IF EXISTS `reductionList_materialUsage`;
/*!50001 DROP VIEW IF EXISTS `reductionList_materialUsage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reductionList_materialUsage` AS SELECT 
 1 AS `objectiveID`,
 1 AS `year`,
 1 AS `month`,
 1 AS `reduction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reductionList_mouldTooling`
--

DROP TABLE IF EXISTS `reductionList_mouldTooling`;
/*!50001 DROP VIEW IF EXISTS `reductionList_mouldTooling`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reductionList_mouldTooling` AS SELECT 
 1 AS `objectiveID`,
 1 AS `year`,
 1 AS `month`,
 1 AS `reduction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reductionList_operation`
--

DROP TABLE IF EXISTS `reductionList_operation`;
/*!50001 DROP VIEW IF EXISTS `reductionList_operation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reductionList_operation` AS SELECT 
 1 AS `objectiveID`,
 1 AS `year`,
 1 AS `month`,
 1 AS `reduction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reductionList_recycle`
--

DROP TABLE IF EXISTS `reductionList_recycle`;
/*!50001 DROP VIEW IF EXISTS `reductionList_recycle`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reductionList_recycle` AS SELECT 
 1 AS `objectiveID`,
 1 AS `year`,
 1 AS `month`,
 1 AS `reduction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reductionList_scrap`
--

DROP TABLE IF EXISTS `reductionList_scrap`;
/*!50001 DROP VIEW IF EXISTS `reductionList_scrap`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reductionList_scrap` AS SELECT 
 1 AS `objectiveID`,
 1 AS `year`,
 1 AS `month`,
 1 AS `reduction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reductionList_severance`
--

DROP TABLE IF EXISTS `reductionList_severance`;
/*!50001 DROP VIEW IF EXISTS `reductionList_severance`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reductionList_severance` AS SELECT 
 1 AS `objectiveID`,
 1 AS `year`,
 1 AS `month`,
 1 AS `reduction`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `staffInfo`
--

DROP TABLE IF EXISTS `staffInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffInfo` (
  `departmentID` int(11) NOT NULL,
  `foreignStatus` tinyint(1) NOT NULL,
  `initialCount` int(11) DEFAULT NULL,
  `averageWage` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`departmentID`,`foreignStatus`),
  CONSTRAINT `fk_staffInfo_department` FOREIGN KEY (`departmentID`) REFERENCES `department` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffInfo`
--

LOCK TABLES `staffInfo` WRITE;
/*!40000 ALTER TABLE `staffInfo` DISABLE KEYS */;
INSERT INTO `staffInfo` VALUES (1,0,16,30636,'2015年12月平均台籍薪資'),(1,1,2,24309,'2015年12月平均外籍薪資'),(5,0,29,29997,'2015年12月平均台籍薪資'),(5,1,71,25985,'2015年12月平均外籍薪資'),(6,0,17,33934,'2015年12月平均台籍薪資'),(6,1,0,0,'無外籍員工'),(7,0,24,41353,'2015年12月平均台籍薪資'),(7,1,19,26832,'2015年12月平均外籍薪資'),(10,0,21,25803,'2015年12月平均台籍薪資'),(10,1,3,21489,'10506年平均薪資'),(12,0,17,33059,'2015年12月平均台籍薪資'),(12,1,0,0,'無外籍員工'),(13,0,8,36043,'2015年12月平均台籍薪資'),(13,1,2,29189,'2015年12月平均外籍薪資');
/*!40000 ALTER TABLE `staffInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `verification_acceptance`
--

DROP TABLE IF EXISTS `verification_acceptance`;
/*!50001 DROP VIEW IF EXISTS `verification_acceptance`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `verification_acceptance` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `month`,
 1 AS `evaluationMethod`,
 1 AS `quantity`,
 1 AS `reduction`,
 1 AS `monthlyReductionTarget`,
 1 AS `achieveRate`,
 1 AS `note`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `verification_acceptance_itemize`
--

DROP TABLE IF EXISTS `verification_acceptance_itemize`;
/*!50001 DROP VIEW IF EXISTS `verification_acceptance_itemize`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `verification_acceptance_itemize` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `month`,
 1 AS `evaluationMethod`,
 1 AS `recordDate`,
 1 AS `itemizeIndex`,
 1 AS `productReference`,
 1 AS `productionCost`,
 1 AS `quantity`,
 1 AS `reduction`,
 1 AS `note`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `verification_expense`
--

DROP TABLE IF EXISTS `verification_expense`;
/*!50001 DROP VIEW IF EXISTS `verification_expense`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `verification_expense` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `month`,
 1 AS `itemTitle`,
 1 AS `evaluationMethod`,
 1 AS `historicalExpense`,
 1 AS `expense`,
 1 AS `reduction`,
 1 AS `monthlyReductionTarget`,
 1 AS `achieveRate`,
 1 AS `note`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `verification_frequency`
--

DROP TABLE IF EXISTS `verification_frequency`;
/*!50001 DROP VIEW IF EXISTS `verification_frequency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `verification_frequency` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `itemID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `month`,
 1 AS `itemTitle`,
 1 AS `evaluationMethod`,
 1 AS `unitCost`,
 1 AS `averageCount`,
 1 AS `count`,
 1 AS `reduction`,
 1 AS `monthlyReductionTarget`,
 1 AS `achieveRate`,
 1 AS `note`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `verification_materialUsage`
--

DROP TABLE IF EXISTS `verification_materialUsage`;
/*!50001 DROP VIEW IF EXISTS `verification_materialUsage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `verification_materialUsage` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `itemID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `month`,
 1 AS `itemTitle`,
 1 AS `evaluationMethod`,
 1 AS `unitCost`,
 1 AS `averageQuantity`,
 1 AS `quantity`,
 1 AS `measureUnit`,
 1 AS `reduction`,
 1 AS `monthlyReductionTarget`,
 1 AS `achieveRate`,
 1 AS `note`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `verification_mouldTooling`
--

DROP TABLE IF EXISTS `verification_mouldTooling`;
/*!50001 DROP VIEW IF EXISTS `verification_mouldTooling`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `verification_mouldTooling` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `month`,
 1 AS `evaluationMethod`,
 1 AS `costMIT`,
 1 AS `costChina`,
 1 AS `reduction`,
 1 AS `monthlyReductionTarget`,
 1 AS `achieveRate`,
 1 AS `note`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `verification_mouldTooling_itemize`
--

DROP TABLE IF EXISTS `verification_mouldTooling_itemize`;
/*!50001 DROP VIEW IF EXISTS `verification_mouldTooling_itemize`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `verification_mouldTooling_itemize` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `itemID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `month`,
 1 AS `evaluationMethod`,
 1 AS `itemTitle`,
 1 AS `unitCostMIT`,
 1 AS `quantity`,
 1 AS `measureUnit`,
 1 AS `costMIT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `verification_operation`
--

DROP TABLE IF EXISTS `verification_operation`;
/*!50001 DROP VIEW IF EXISTS `verification_operation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `verification_operation` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `month`,
 1 AS `itemTitle`,
 1 AS `evaluationMethod`,
 1 AS `unitCost`,
 1 AS `averageTimeSpent`,
 1 AS `timeSpent`,
 1 AS `reduction`,
 1 AS `monthlyReductionTarget`,
 1 AS `achieveRate`,
 1 AS `note`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `verification_recycle`
--

DROP TABLE IF EXISTS `verification_recycle`;
/*!50001 DROP VIEW IF EXISTS `verification_recycle`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `verification_recycle` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `itemID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `month`,
 1 AS `itemTitle`,
 1 AS `evaluationMethod`,
 1 AS `unitCost`,
 1 AS `recycleCost`,
 1 AS `quantity`,
 1 AS `reduction`,
 1 AS `monthlyReductionTarget`,
 1 AS `achieveRate`,
 1 AS `note`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `verification_scrap`
--

DROP TABLE IF EXISTS `verification_scrap`;
/*!50001 DROP VIEW IF EXISTS `verification_scrap`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `verification_scrap` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `month`,
 1 AS `evaluationMethod`,
 1 AS `quantity`,
 1 AS `averageScrapCost`,
 1 AS `scrapCost`,
 1 AS `reduction`,
 1 AS `monthlyReductionTarget`,
 1 AS `achieveRate`,
 1 AS `note`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `verification_scrap_itemize`
--

DROP TABLE IF EXISTS `verification_scrap_itemize`;
/*!50001 DROP VIEW IF EXISTS `verification_scrap_itemize`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `verification_scrap_itemize` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `month`,
 1 AS `evaluationMethod`,
 1 AS `recordDate`,
 1 AS `itemizeIndex`,
 1 AS `productReference`,
 1 AS `productionCost`,
 1 AS `quantity`,
 1 AS `scrapCost`,
 1 AS `note`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `verification_severance`
--

DROP TABLE IF EXISTS `verification_severance`;
/*!50001 DROP VIEW IF EXISTS `verification_severance`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `verification_severance` AS SELECT 
 1 AS `divisionID`,
 1 AS `departmentID`,
 1 AS `objectiveID`,
 1 AS `divisionTitle`,
 1 AS `departmentTitle`,
 1 AS `objectiveTitle`,
 1 AS `year`,
 1 AS `month`,
 1 AS `evaluationMethod`,
 1 AS `averageLocalWorkerWage`,
 1 AS `initialLocalWorkerCount`,
 1 AS `localWorkerCount`,
 1 AS `averageForeignWorkerWage`,
 1 AS `initialForeignWorkerCount`,
 1 AS `foreignWorkerCount`,
 1 AS `severanceCost`,
 1 AS `reduction`,
 1 AS `monthlyReductionTarget`,
 1 AS `achieveRate`,
 1 AS `note`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'wasteReduction'
--

--
-- Dumping routines for database 'wasteReduction'
--
/*!50003 DROP PROCEDURE IF EXISTS `updateMonthlyExpense` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateMonthlyExpense`(departmentID int,year int,month int,amount int)
BEGIN
UPDATE wasteReduction.monthlyExpense a SET a.amount=amount WHERE a.departmentID=departmentID AND a.year=year AND a.month=month;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `dataOverdue`
--

/*!50001 DROP VIEW IF EXISTS `dataOverdue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dataOverdue` AS select `c`.`departmentTitle` AS `departmentTitle`,`a`.`year` AS `year`,`a`.`month` AS `month`,`a`.`reduction` AS `reduction`,`b`.`title` AS `title` from ((`wasteReduction`.`reductionList_detail` `a` left join `wasteReduction`.`objective` `b` on((`a`.`objectiveID` = `b`.`id`))) left join `wasteReduction`.`organizationStructure` `c` on((`b`.`departmentID` = `c`.`departmentID`))) where ((`a`.`year` <= year(now())) and (`a`.`month` <= (month(now()) - 1)) and (`b`.`status` = 'ready') and isnull(`a`.`reduction`)) order by `b`.`departmentID`,`a`.`objectiveID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseChart_department_annual`
--

/*!50001 DROP VIEW IF EXISTS `expenseChart_department_annual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseChart_department_annual` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`year` AS `year`,'年度' AS `period`,`b`.`amount` AS `1`,`c`.`amount` AS `2`,`d`.`amount` AS `3`,`e`.`amount` AS `4`,`f`.`amount` AS `5`,`g`.`amount` AS `6`,`h`.`amount` AS `7`,`i`.`amount` AS `8`,`j`.`amount` AS `9`,`k`.`amount` AS `10`,`l`.`amount` AS `11`,`m`.`amount` AS `12` from ((((((((((((`organizationStructure` `a` left join `expenseList_department` `b` on(((`a`.`divisionID` = `b`.`divisionID`) and (`a`.`departmentID` = `b`.`departmentID`) and (`b`.`month` = 1)))) left join `expenseList_department` `c` on(((`a`.`divisionID` = `c`.`divisionID`) and (`a`.`departmentID` = `c`.`departmentID`) and (`b`.`year` = `c`.`year`) and (`c`.`month` = 2)))) left join `expenseList_department` `d` on(((`a`.`divisionID` = `d`.`divisionID`) and (`a`.`departmentID` = `d`.`departmentID`) and (`b`.`year` = `d`.`year`) and (`d`.`month` = 3)))) left join `expenseList_department` `e` on(((`a`.`divisionID` = `e`.`divisionID`) and (`a`.`departmentID` = `e`.`departmentID`) and (`b`.`year` = `e`.`year`) and (`e`.`month` = 4)))) left join `expenseList_department` `f` on(((`a`.`divisionID` = `f`.`divisionID`) and (`a`.`departmentID` = `f`.`departmentID`) and (`b`.`year` = `f`.`year`) and (`f`.`month` = 5)))) left join `expenseList_department` `g` on(((`a`.`divisionID` = `g`.`divisionID`) and (`a`.`departmentID` = `g`.`departmentID`) and (`b`.`year` = `g`.`year`) and (`g`.`month` = 6)))) left join `expenseList_department` `h` on(((`a`.`divisionID` = `h`.`divisionID`) and (`a`.`departmentID` = `h`.`departmentID`) and (`b`.`year` = `h`.`year`) and (`h`.`month` = 7)))) left join `expenseList_department` `i` on(((`a`.`divisionID` = `i`.`divisionID`) and (`a`.`departmentID` = `i`.`departmentID`) and (`b`.`year` = `i`.`year`) and (`i`.`month` = 8)))) left join `expenseList_department` `j` on(((`a`.`divisionID` = `j`.`divisionID`) and (`a`.`departmentID` = `j`.`departmentID`) and (`b`.`year` = `j`.`year`) and (`j`.`month` = 9)))) left join `expenseList_department` `k` on(((`a`.`divisionID` = `k`.`divisionID`) and (`a`.`departmentID` = `k`.`departmentID`) and (`b`.`year` = `k`.`year`) and (`k`.`month` = 10)))) left join `expenseList_department` `l` on(((`a`.`divisionID` = `l`.`divisionID`) and (`a`.`departmentID` = `l`.`departmentID`) and (`b`.`year` = `l`.`year`) and (`l`.`month` = 11)))) left join `expenseList_department` `m` on(((`a`.`divisionID` = `m`.`divisionID`) and (`a`.`departmentID` = `m`.`departmentID`) and (`b`.`year` = `m`.`year`) and (`m`.`month` = 12)))) order by `a`.`divisionID`,`a`.`departmentID`,`b`.`year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseChart_department_semiannual`
--

/*!50001 DROP VIEW IF EXISTS `expenseChart_department_semiannual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseChart_department_semiannual` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`year` AS `year`,'上半年度' AS `period`,`a`.`1` AS `1`,`b`.`2` AS `2`,`c`.`3` AS `3`,`d`.`4` AS `4`,`e`.`5` AS `5`,`f`.`6` AS `6` from (((((((select `expenseChart_department_annual`.`divisionID` AS `divisionID`,`expenseChart_department_annual`.`departmentID` AS `departmentID`,`expenseChart_department_annual`.`year` AS `year`,`expenseChart_department_annual`.`period` AS `period`,`expenseChart_department_annual`.`1` AS `1` from `wasteReduction`.`expenseChart_department_annual`)) `a` left join (select `expenseChart_department_annual`.`divisionID` AS `divisionID`,`expenseChart_department_annual`.`departmentID` AS `departmentID`,`expenseChart_department_annual`.`year` AS `year`,`expenseChart_department_annual`.`period` AS `period`,`expenseChart_department_annual`.`2` AS `2` from `wasteReduction`.`expenseChart_department_annual`) `b` on(((`a`.`divisionID` = `b`.`divisionID`) and (`a`.`departmentID` = `b`.`departmentID`) and (`a`.`year` = `b`.`year`)))) left join (select `expenseChart_department_annual`.`divisionID` AS `divisionID`,`expenseChart_department_annual`.`departmentID` AS `departmentID`,`expenseChart_department_annual`.`year` AS `year`,`expenseChart_department_annual`.`period` AS `period`,`expenseChart_department_annual`.`3` AS `3` from `wasteReduction`.`expenseChart_department_annual`) `c` on(((`a`.`divisionID` = `c`.`divisionID`) and (`a`.`departmentID` = `c`.`departmentID`) and (`a`.`year` = `c`.`year`)))) left join (select `expenseChart_department_annual`.`divisionID` AS `divisionID`,`expenseChart_department_annual`.`departmentID` AS `departmentID`,`expenseChart_department_annual`.`year` AS `year`,`expenseChart_department_annual`.`period` AS `period`,`expenseChart_department_annual`.`4` AS `4` from `wasteReduction`.`expenseChart_department_annual`) `d` on(((`a`.`divisionID` = `d`.`divisionID`) and (`a`.`departmentID` = `d`.`departmentID`) and (`a`.`year` = `d`.`year`)))) left join (select `expenseChart_department_annual`.`divisionID` AS `divisionID`,`expenseChart_department_annual`.`departmentID` AS `departmentID`,`expenseChart_department_annual`.`year` AS `year`,`expenseChart_department_annual`.`period` AS `period`,`expenseChart_department_annual`.`5` AS `5` from `wasteReduction`.`expenseChart_department_annual`) `e` on(((`a`.`divisionID` = `e`.`divisionID`) and (`a`.`departmentID` = `e`.`departmentID`) and (`a`.`year` = `e`.`year`)))) left join (select `expenseChart_department_annual`.`divisionID` AS `divisionID`,`expenseChart_department_annual`.`departmentID` AS `departmentID`,`expenseChart_department_annual`.`year` AS `year`,`expenseChart_department_annual`.`period` AS `period`,`expenseChart_department_annual`.`6` AS `6` from `wasteReduction`.`expenseChart_department_annual`) `f` on(((`a`.`divisionID` = `f`.`divisionID`) and (`a`.`departmentID` = `f`.`departmentID`) and (`a`.`year` = `f`.`year`)))) union select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`year` AS `year`,'下半年度' AS `period`,`a`.`7` AS `1`,`b`.`8` AS `2`,`c`.`9` AS `3`,`d`.`10` AS `4`,`e`.`11` AS `5`,`f`.`12` AS `6` from (((((((select `expenseChart_department_annual`.`divisionID` AS `divisionID`,`expenseChart_department_annual`.`departmentID` AS `departmentID`,`expenseChart_department_annual`.`year` AS `year`,`expenseChart_department_annual`.`period` AS `period`,`expenseChart_department_annual`.`7` AS `7` from `wasteReduction`.`expenseChart_department_annual`)) `a` left join (select `expenseChart_department_annual`.`divisionID` AS `divisionID`,`expenseChart_department_annual`.`departmentID` AS `departmentID`,`expenseChart_department_annual`.`year` AS `year`,`expenseChart_department_annual`.`period` AS `period`,`expenseChart_department_annual`.`8` AS `8` from `wasteReduction`.`expenseChart_department_annual`) `b` on(((`a`.`divisionID` = `b`.`divisionID`) and (`a`.`departmentID` = `b`.`departmentID`) and (`a`.`year` = `b`.`year`)))) left join (select `expenseChart_department_annual`.`divisionID` AS `divisionID`,`expenseChart_department_annual`.`departmentID` AS `departmentID`,`expenseChart_department_annual`.`year` AS `year`,`expenseChart_department_annual`.`period` AS `period`,`expenseChart_department_annual`.`9` AS `9` from `wasteReduction`.`expenseChart_department_annual`) `c` on(((`a`.`divisionID` = `c`.`divisionID`) and (`a`.`departmentID` = `c`.`departmentID`) and (`a`.`year` = `c`.`year`)))) left join (select `expenseChart_department_annual`.`divisionID` AS `divisionID`,`expenseChart_department_annual`.`departmentID` AS `departmentID`,`expenseChart_department_annual`.`year` AS `year`,`expenseChart_department_annual`.`period` AS `period`,`expenseChart_department_annual`.`10` AS `10` from `wasteReduction`.`expenseChart_department_annual`) `d` on(((`a`.`divisionID` = `d`.`divisionID`) and (`a`.`departmentID` = `d`.`departmentID`) and (`a`.`year` = `d`.`year`)))) left join (select `expenseChart_department_annual`.`divisionID` AS `divisionID`,`expenseChart_department_annual`.`departmentID` AS `departmentID`,`expenseChart_department_annual`.`year` AS `year`,`expenseChart_department_annual`.`period` AS `period`,`expenseChart_department_annual`.`11` AS `11` from `wasteReduction`.`expenseChart_department_annual`) `e` on(((`a`.`divisionID` = `e`.`divisionID`) and (`a`.`departmentID` = `e`.`departmentID`) and (`a`.`year` = `e`.`year`)))) left join (select `expenseChart_department_annual`.`divisionID` AS `divisionID`,`expenseChart_department_annual`.`departmentID` AS `departmentID`,`expenseChart_department_annual`.`year` AS `year`,`expenseChart_department_annual`.`period` AS `period`,`expenseChart_department_annual`.`12` AS `12` from `wasteReduction`.`expenseChart_department_annual`) `f` on(((`a`.`divisionID` = `f`.`divisionID`) and (`a`.`departmentID` = `f`.`departmentID`) and (`a`.`year` = `f`.`year`)))) order by `divisionID`,`departmentID`,`period`,`year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseChart_division_annual`
--

/*!50001 DROP VIEW IF EXISTS `expenseChart_division_annual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseChart_division_annual` AS select `a`.`divisionID` AS `divisionID`,NULL AS `departmentID`,`a`.`divisionTitle` AS `divisionTitle`,NULL AS `departmentTitle`,`b`.`year` AS `year`,'年度' AS `period`,`b`.`amount` AS `1`,`c`.`amount` AS `2`,`d`.`amount` AS `3`,`e`.`amount` AS `4`,`f`.`amount` AS `5`,`g`.`amount` AS `6`,`h`.`amount` AS `7`,`i`.`amount` AS `8`,`j`.`amount` AS `9`,`k`.`amount` AS `10`,`l`.`amount` AS `11`,`m`.`amount` AS `12` from ((((((((((((((select distinct `organizationStructure`.`divisionID` AS `divisionID`,`organizationStructure`.`divisionTitle` AS `divisionTitle` from `wasteReduction`.`organizationStructure`)) `a` left join `wasteReduction`.`expenseList_division` `b` on(((`a`.`divisionID` = `b`.`divisionID`) and (`b`.`month` = 1)))) left join `wasteReduction`.`expenseList_division` `c` on(((`a`.`divisionID` = `c`.`divisionID`) and (`b`.`year` = `c`.`year`) and (`c`.`month` = 2)))) left join `wasteReduction`.`expenseList_division` `d` on(((`a`.`divisionID` = `d`.`divisionID`) and (`b`.`year` = `d`.`year`) and (`d`.`month` = 3)))) left join `wasteReduction`.`expenseList_division` `e` on(((`a`.`divisionID` = `e`.`divisionID`) and (`b`.`year` = `e`.`year`) and (`e`.`month` = 4)))) left join `wasteReduction`.`expenseList_division` `f` on(((`a`.`divisionID` = `f`.`divisionID`) and (`b`.`year` = `f`.`year`) and (`f`.`month` = 5)))) left join `wasteReduction`.`expenseList_division` `g` on(((`a`.`divisionID` = `g`.`divisionID`) and (`b`.`year` = `g`.`year`) and (`g`.`month` = 6)))) left join `wasteReduction`.`expenseList_division` `h` on(((`a`.`divisionID` = `h`.`divisionID`) and (`b`.`year` = `h`.`year`) and (`h`.`month` = 7)))) left join `wasteReduction`.`expenseList_division` `i` on(((`a`.`divisionID` = `i`.`divisionID`) and (`b`.`year` = `i`.`year`) and (`i`.`month` = 8)))) left join `wasteReduction`.`expenseList_division` `j` on(((`a`.`divisionID` = `j`.`divisionID`) and (`b`.`year` = `j`.`year`) and (`j`.`month` = 9)))) left join `wasteReduction`.`expenseList_division` `k` on(((`a`.`divisionID` = `k`.`divisionID`) and (`b`.`year` = `k`.`year`) and (`k`.`month` = 10)))) left join `wasteReduction`.`expenseList_division` `l` on(((`a`.`divisionID` = `l`.`divisionID`) and (`b`.`year` = `l`.`year`) and (`l`.`month` = 11)))) left join `wasteReduction`.`expenseList_division` `m` on(((`a`.`divisionID` = `m`.`divisionID`) and (`b`.`year` = `m`.`year`) and (`m`.`month` = 12)))) order by `a`.`divisionID`,`b`.`year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseChart_division_semiannual`
--

/*!50001 DROP VIEW IF EXISTS `expenseChart_division_semiannual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseChart_division_semiannual` AS select `a`.`divisionID` AS `divisionID`,NULL AS `departmentID`,`a`.`year` AS `year`,'上半年度' AS `period`,`a`.`1` AS `1`,`b`.`2` AS `2`,`c`.`3` AS `3`,`d`.`4` AS `4`,`e`.`5` AS `5`,`f`.`6` AS `6` from (((((((select `expenseChart_division_annual`.`divisionID` AS `divisionID`,`expenseChart_division_annual`.`year` AS `year`,`expenseChart_division_annual`.`period` AS `period`,`expenseChart_division_annual`.`1` AS `1` from `wasteReduction`.`expenseChart_division_annual`)) `a` left join (select `expenseChart_division_annual`.`divisionID` AS `divisionID`,`expenseChart_division_annual`.`year` AS `year`,`expenseChart_division_annual`.`period` AS `period`,`expenseChart_division_annual`.`2` AS `2` from `wasteReduction`.`expenseChart_division_annual`) `b` on(((`a`.`divisionID` = `b`.`divisionID`) and (`a`.`year` = `b`.`year`)))) left join (select `expenseChart_division_annual`.`divisionID` AS `divisionID`,`expenseChart_division_annual`.`year` AS `year`,`expenseChart_division_annual`.`period` AS `period`,`expenseChart_division_annual`.`3` AS `3` from `wasteReduction`.`expenseChart_division_annual`) `c` on(((`a`.`divisionID` = `c`.`divisionID`) and (`a`.`year` = `c`.`year`)))) left join (select `expenseChart_division_annual`.`divisionID` AS `divisionID`,`expenseChart_division_annual`.`year` AS `year`,`expenseChart_division_annual`.`period` AS `period`,`expenseChart_division_annual`.`4` AS `4` from `wasteReduction`.`expenseChart_division_annual`) `d` on(((`a`.`divisionID` = `d`.`divisionID`) and (`a`.`year` = `d`.`year`)))) left join (select `expenseChart_division_annual`.`divisionID` AS `divisionID`,`expenseChart_division_annual`.`year` AS `year`,`expenseChart_division_annual`.`period` AS `period`,`expenseChart_division_annual`.`5` AS `5` from `wasteReduction`.`expenseChart_division_annual`) `e` on(((`a`.`divisionID` = `e`.`divisionID`) and (`a`.`year` = `e`.`year`)))) left join (select `expenseChart_division_annual`.`divisionID` AS `divisionID`,`expenseChart_division_annual`.`year` AS `year`,`expenseChart_division_annual`.`period` AS `period`,`expenseChart_division_annual`.`6` AS `6` from `wasteReduction`.`expenseChart_division_annual`) `f` on(((`a`.`divisionID` = `f`.`divisionID`) and (`a`.`year` = `f`.`year`)))) union select `a`.`divisionID` AS `divisionID`,NULL AS `departmentID`,`a`.`year` AS `year`,'下半年度' AS `period`,`a`.`7` AS `1`,`b`.`8` AS `2`,`c`.`9` AS `3`,`d`.`10` AS `4`,`e`.`11` AS `5`,`f`.`12` AS `6` from (((((((select `expenseChart_division_annual`.`divisionID` AS `divisionID`,`expenseChart_division_annual`.`year` AS `year`,`expenseChart_division_annual`.`period` AS `period`,`expenseChart_division_annual`.`7` AS `7` from `wasteReduction`.`expenseChart_division_annual`)) `a` left join (select `expenseChart_division_annual`.`divisionID` AS `divisionID`,`expenseChart_division_annual`.`year` AS `year`,`expenseChart_division_annual`.`period` AS `period`,`expenseChart_division_annual`.`8` AS `8` from `wasteReduction`.`expenseChart_division_annual`) `b` on(((`a`.`divisionID` = `b`.`divisionID`) and (`a`.`year` = `b`.`year`)))) left join (select `expenseChart_division_annual`.`divisionID` AS `divisionID`,`expenseChart_division_annual`.`year` AS `year`,`expenseChart_division_annual`.`period` AS `period`,`expenseChart_division_annual`.`9` AS `9` from `wasteReduction`.`expenseChart_division_annual`) `c` on(((`a`.`divisionID` = `c`.`divisionID`) and (`a`.`year` = `c`.`year`)))) left join (select `expenseChart_division_annual`.`divisionID` AS `divisionID`,`expenseChart_division_annual`.`year` AS `year`,`expenseChart_division_annual`.`period` AS `period`,`expenseChart_division_annual`.`10` AS `10` from `wasteReduction`.`expenseChart_division_annual`) `d` on(((`a`.`divisionID` = `d`.`divisionID`) and (`a`.`year` = `d`.`year`)))) left join (select `expenseChart_division_annual`.`divisionID` AS `divisionID`,`expenseChart_division_annual`.`year` AS `year`,`expenseChart_division_annual`.`period` AS `period`,`expenseChart_division_annual`.`11` AS `11` from `wasteReduction`.`expenseChart_division_annual`) `e` on(((`a`.`divisionID` = `e`.`divisionID`) and (`a`.`year` = `e`.`year`)))) left join (select `expenseChart_division_annual`.`divisionID` AS `divisionID`,`expenseChart_division_annual`.`year` AS `year`,`expenseChart_division_annual`.`period` AS `period`,`expenseChart_division_annual`.`12` AS `12` from `wasteReduction`.`expenseChart_division_annual`) `f` on(((`a`.`divisionID` = `f`.`divisionID`) and (`a`.`year` = `f`.`year`)))) order by `divisionID`,`period`,`year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseChart_overall_annual`
--

/*!50001 DROP VIEW IF EXISTS `expenseChart_overall_annual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseChart_overall_annual` AS select NULL AS `divisionID`,NULL AS `departmentID`,'整體' AS `divisionTitle`,NULL AS `departmentTitle`,`a`.`year` AS `year`,'年度' AS `period`,`a`.`amount` AS `1`,`b`.`amount` AS `2`,`c`.`amount` AS `3`,`d`.`amount` AS `4`,`e`.`amount` AS `5`,`f`.`amount` AS `6`,`g`.`amount` AS `7`,`h`.`amount` AS `8`,`i`.`amount` AS `9`,`j`.`amount` AS `10`,`k`.`amount` AS `11`,`l`.`amount` AS `12` from (((((((((((((select `expenseList_overall`.`divisionID` AS `divisionID`,`expenseList_overall`.`departmentID` AS `departmentID`,`expenseList_overall`.`year` AS `year`,`expenseList_overall`.`month` AS `month`,`expenseList_overall`.`amount` AS `amount` from `wasteReduction`.`expenseList_overall` where (`expenseList_overall`.`month` = 1))) `a` left join `wasteReduction`.`expenseList_overall` `b` on(((`a`.`year` = `b`.`year`) and (`b`.`month` = 2)))) left join `wasteReduction`.`expenseList_overall` `c` on(((`a`.`year` = `c`.`year`) and (`c`.`month` = 3)))) left join `wasteReduction`.`expenseList_overall` `d` on(((`a`.`year` = `d`.`year`) and (`d`.`month` = 4)))) left join `wasteReduction`.`expenseList_overall` `e` on(((`a`.`year` = `e`.`year`) and (`e`.`month` = 5)))) left join `wasteReduction`.`expenseList_overall` `f` on(((`a`.`year` = `f`.`year`) and (`f`.`month` = 6)))) left join `wasteReduction`.`expenseList_overall` `g` on(((`a`.`year` = `g`.`year`) and (`g`.`month` = 7)))) left join `wasteReduction`.`expenseList_overall` `h` on(((`a`.`year` = `h`.`year`) and (`h`.`month` = 8)))) left join `wasteReduction`.`expenseList_overall` `i` on(((`a`.`year` = `i`.`year`) and (`i`.`month` = 9)))) left join `wasteReduction`.`expenseList_overall` `j` on(((`a`.`year` = `j`.`year`) and (`j`.`month` = 10)))) left join `wasteReduction`.`expenseList_overall` `k` on(((`a`.`year` = `k`.`year`) and (`k`.`month` = 11)))) left join `wasteReduction`.`expenseList_overall` `l` on(((`a`.`year` = `l`.`year`) and (`l`.`month` = 12)))) order by `b`.`year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseComparison_department_2016_annual`
--

/*!50001 DROP VIEW IF EXISTS `expenseComparison_department_2016_annual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseComparison_department_2016_annual` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`a`.`year` AS `year`,`a`.`period` AS `period`,`a`.`1` AS `1`,`a`.`2` AS `2`,`a`.`3` AS `3`,`a`.`4` AS `4`,`a`.`5` AS `5`,`a`.`6` AS `6`,`a`.`7` AS `7`,`a`.`8` AS `8`,`a`.`9` AS `9`,`a`.`10` AS `10`,`a`.`11` AS `11`,`a`.`12` AS `12`,`a`.`total` AS `total` from (((select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`a`.`year` AS `year`,`a`.`period` AS `period`,`a`.`1` AS `1`,`a`.`2` AS `2`,`a`.`3` AS `3`,`a`.`4` AS `4`,`a`.`5` AS `5`,`a`.`6` AS `6`,`a`.`7` AS `7`,`a`.`8` AS `8`,`a`.`9` AS `9`,`a`.`10` AS `10`,`a`.`11` AS `11`,`a`.`12` AS `12`,(((((((((((ifnull(`a`.`1`,0) + ifnull(`a`.`2`,0)) + ifnull(`a`.`3`,0)) + ifnull(`a`.`4`,0)) + ifnull(`a`.`5`,0)) + ifnull(`a`.`6`,0)) + ifnull(`a`.`7`,0)) + ifnull(`a`.`8`,0)) + ifnull(`a`.`9`,0)) + ifnull(`a`.`10`,0)) + ifnull(`a`.`11`,0)) + ifnull(`a`.`12`,0)) AS `total` from (select `expenseChart_department_annual`.`divisionID` AS `divisionID`,`expenseChart_department_annual`.`departmentID` AS `departmentID`,`expenseChart_department_annual`.`divisionTitle` AS `divisionTitle`,`expenseChart_department_annual`.`departmentTitle` AS `departmentTitle`,`expenseChart_department_annual`.`year` AS `year`,`expenseChart_department_annual`.`period` AS `period`,`expenseChart_department_annual`.`1` AS `1`,`expenseChart_department_annual`.`2` AS `2`,`expenseChart_department_annual`.`3` AS `3`,`expenseChart_department_annual`.`4` AS `4`,`expenseChart_department_annual`.`5` AS `5`,`expenseChart_department_annual`.`6` AS `6`,`expenseChart_department_annual`.`7` AS `7`,`expenseChart_department_annual`.`8` AS `8`,`expenseChart_department_annual`.`9` AS `9`,`expenseChart_department_annual`.`10` AS `10`,`expenseChart_department_annual`.`11` AS `11`,`expenseChart_department_annual`.`12` AS `12` from `wasteReduction`.`expenseChart_department_annual` union select `expenseDifference_department_2016_annual`.`divisionID` AS `divisionID`,`expenseDifference_department_2016_annual`.`departmentID` AS `departmentID`,`expenseDifference_department_2016_annual`.`divisionTitle` AS `divisionTitle`,`expenseDifference_department_2016_annual`.`departmentTitle` AS `departmentTitle`,`expenseDifference_department_2016_annual`.`year` AS `year`,`expenseDifference_department_2016_annual`.`period` AS `period`,`expenseDifference_department_2016_annual`.`1` AS `1`,`expenseDifference_department_2016_annual`.`2` AS `2`,`expenseDifference_department_2016_annual`.`3` AS `3`,`expenseDifference_department_2016_annual`.`4` AS `4`,`expenseDifference_department_2016_annual`.`5` AS `5`,`expenseDifference_department_2016_annual`.`6` AS `6`,`expenseDifference_department_2016_annual`.`7` AS `7`,`expenseDifference_department_2016_annual`.`8` AS `8`,`expenseDifference_department_2016_annual`.`9` AS `9`,`expenseDifference_department_2016_annual`.`10` AS `10`,`expenseDifference_department_2016_annual`.`11` AS `11`,`expenseDifference_department_2016_annual`.`12` AS `12` from `wasteReduction`.`expenseDifference_department_2016_annual`) `a`)) `a` join (select `objectiveList_detail_ready`.`divisionID` AS `divisionID`,`objectiveList_detail_ready`.`departmentID` AS `departmentID` from `wasteReduction`.`objectiveList_detail_ready` group by `objectiveList_detail_ready`.`divisionID`,`objectiveList_detail_ready`.`departmentID`) `b` on(((`a`.`divisionID` = `b`.`divisionID`) and (`a`.`departmentID` = `b`.`departmentID`)))) order by `a`.`divisionID`,`a`.`departmentID`,`a`.`period` desc,`a`.`year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseComparison_division_2016_annual`
--

/*!50001 DROP VIEW IF EXISTS `expenseComparison_division_2016_annual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseComparison_division_2016_annual` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`a`.`year` AS `year`,`a`.`period` AS `period`,`a`.`1` AS `1`,`a`.`2` AS `2`,`a`.`3` AS `3`,`a`.`4` AS `4`,`a`.`5` AS `5`,`a`.`6` AS `6`,`a`.`7` AS `7`,`a`.`8` AS `8`,`a`.`9` AS `9`,`a`.`10` AS `10`,`a`.`11` AS `11`,`a`.`12` AS `12`,(((((((((((ifnull(`a`.`1`,0) + ifnull(`a`.`2`,0)) + ifnull(`a`.`3`,0)) + ifnull(`a`.`4`,0)) + ifnull(`a`.`5`,0)) + ifnull(`a`.`6`,0)) + ifnull(`a`.`7`,0)) + ifnull(`a`.`8`,0)) + ifnull(`a`.`9`,0)) + ifnull(`a`.`10`,0)) + ifnull(`a`.`11`,0)) + ifnull(`a`.`12`,0)) AS `total` from (select `expenseChart_division_annual`.`divisionID` AS `divisionID`,`expenseChart_division_annual`.`departmentID` AS `departmentID`,`expenseChart_division_annual`.`divisionTitle` AS `divisionTitle`,`expenseChart_division_annual`.`departmentTitle` AS `departmentTitle`,`expenseChart_division_annual`.`year` AS `year`,`expenseChart_division_annual`.`period` AS `period`,`expenseChart_division_annual`.`1` AS `1`,`expenseChart_division_annual`.`2` AS `2`,`expenseChart_division_annual`.`3` AS `3`,`expenseChart_division_annual`.`4` AS `4`,`expenseChart_division_annual`.`5` AS `5`,`expenseChart_division_annual`.`6` AS `6`,`expenseChart_division_annual`.`7` AS `7`,`expenseChart_division_annual`.`8` AS `8`,`expenseChart_division_annual`.`9` AS `9`,`expenseChart_division_annual`.`10` AS `10`,`expenseChart_division_annual`.`11` AS `11`,`expenseChart_division_annual`.`12` AS `12` from `wasteReduction`.`expenseChart_division_annual` union select `expenseDifference_division_2016_annual`.`divisionID` AS `divisionID`,`expenseDifference_division_2016_annual`.`departmentID` AS `departmentID`,`expenseDifference_division_2016_annual`.`divisionTitle` AS `divisionTitle`,`expenseDifference_division_2016_annual`.`departmentTitle` AS `departmentTitle`,`expenseDifference_division_2016_annual`.`year` AS `year`,`expenseDifference_division_2016_annual`.`period` AS `period`,`expenseDifference_division_2016_annual`.`1` AS `1`,`expenseDifference_division_2016_annual`.`2` AS `2`,`expenseDifference_division_2016_annual`.`3` AS `3`,`expenseDifference_division_2016_annual`.`4` AS `4`,`expenseDifference_division_2016_annual`.`5` AS `5`,`expenseDifference_division_2016_annual`.`6` AS `6`,`expenseDifference_division_2016_annual`.`7` AS `7`,`expenseDifference_division_2016_annual`.`8` AS `8`,`expenseDifference_division_2016_annual`.`9` AS `9`,`expenseDifference_division_2016_annual`.`10` AS `10`,`expenseDifference_division_2016_annual`.`11` AS `11`,`expenseDifference_division_2016_annual`.`12` AS `12` from `wasteReduction`.`expenseDifference_division_2016_annual`) `a` order by `a`.`divisionID`,`a`.`departmentID`,`a`.`year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseComparison_overall_2016_annual`
--

/*!50001 DROP VIEW IF EXISTS `expenseComparison_overall_2016_annual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseComparison_overall_2016_annual` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`a`.`year` AS `year`,`a`.`period` AS `period`,`a`.`1` AS `1`,`a`.`2` AS `2`,`a`.`3` AS `3`,`a`.`4` AS `4`,`a`.`5` AS `5`,`a`.`6` AS `6`,`a`.`7` AS `7`,`a`.`8` AS `8`,`a`.`9` AS `9`,`a`.`10` AS `10`,`a`.`11` AS `11`,`a`.`12` AS `12`,(((((((((((ifnull(`a`.`1`,0) + ifnull(`a`.`2`,0)) + ifnull(`a`.`3`,0)) + ifnull(`a`.`4`,0)) + ifnull(`a`.`5`,0)) + ifnull(`a`.`6`,0)) + ifnull(`a`.`7`,0)) + ifnull(`a`.`8`,0)) + ifnull(`a`.`9`,0)) + ifnull(`a`.`10`,0)) + ifnull(`a`.`11`,0)) + ifnull(`a`.`12`,0)) AS `total` from (select `expenseChart_overall_annual`.`divisionID` AS `divisionID`,`expenseChart_overall_annual`.`departmentID` AS `departmentID`,`expenseChart_overall_annual`.`divisionTitle` AS `divisionTitle`,`expenseChart_overall_annual`.`departmentTitle` AS `departmentTitle`,`expenseChart_overall_annual`.`year` AS `year`,`expenseChart_overall_annual`.`period` AS `period`,`expenseChart_overall_annual`.`1` AS `1`,`expenseChart_overall_annual`.`2` AS `2`,`expenseChart_overall_annual`.`3` AS `3`,`expenseChart_overall_annual`.`4` AS `4`,`expenseChart_overall_annual`.`5` AS `5`,`expenseChart_overall_annual`.`6` AS `6`,`expenseChart_overall_annual`.`7` AS `7`,`expenseChart_overall_annual`.`8` AS `8`,`expenseChart_overall_annual`.`9` AS `9`,`expenseChart_overall_annual`.`10` AS `10`,`expenseChart_overall_annual`.`11` AS `11`,`expenseChart_overall_annual`.`12` AS `12` from `wasteReduction`.`expenseChart_overall_annual` union select `expenseDifference_overall_2016_annual`.`divisionID` AS `divisionID`,`expenseDifference_overall_2016_annual`.`departmentID` AS `departmentID`,`expenseDifference_overall_2016_annual`.`divisionTitle` AS `divisionTitle`,`expenseDifference_overall_2016_annual`.`departmentTitle` AS `departmentTitle`,`expenseDifference_overall_2016_annual`.`year` AS `year`,`expenseDifference_overall_2016_annual`.`period` AS `period`,`expenseDifference_overall_2016_annual`.`1` AS `1`,`expenseDifference_overall_2016_annual`.`2` AS `2`,`expenseDifference_overall_2016_annual`.`3` AS `3`,`expenseDifference_overall_2016_annual`.`4` AS `4`,`expenseDifference_overall_2016_annual`.`5` AS `5`,`expenseDifference_overall_2016_annual`.`6` AS `6`,`expenseDifference_overall_2016_annual`.`7` AS `7`,`expenseDifference_overall_2016_annual`.`8` AS `8`,`expenseDifference_overall_2016_annual`.`9` AS `9`,`expenseDifference_overall_2016_annual`.`10` AS `10`,`expenseDifference_overall_2016_annual`.`11` AS `11`,`expenseDifference_overall_2016_annual`.`12` AS `12` from `wasteReduction`.`expenseDifference_overall_2016_annual`) `a` order by `a`.`divisionID`,`a`.`departmentID`,`a`.`year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseDifference_department_2016_annual`
--

/*!50001 DROP VIEW IF EXISTS `expenseDifference_department_2016_annual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseDifference_department_2016_annual` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,'2015/2016' AS `year`,'同期差異' AS `period`,(`c`.`1` - `b`.`1`) AS `1`,(`c`.`2` - `b`.`2`) AS `2`,(`c`.`3` - `b`.`3`) AS `3`,(`c`.`4` - `b`.`4`) AS `4`,(`c`.`5` - `b`.`5`) AS `5`,(`c`.`6` - `b`.`6`) AS `6`,(`c`.`7` - `b`.`7`) AS `7`,(`c`.`8` - `b`.`8`) AS `8`,(`c`.`9` - `b`.`9`) AS `9`,(`c`.`10` - `b`.`10`) AS `10`,(`c`.`11` - `b`.`11`) AS `11`,(`c`.`12` - `b`.`12`) AS `12` from ((`organizationStructure` `a` left join `expenseChart_department_annual` `b` on(((`a`.`divisionID` = `b`.`divisionID`) and (`a`.`departmentID` = `b`.`departmentID`) and (`b`.`year` = 2015)))) left join `expenseChart_department_annual` `c` on(((`a`.`divisionID` = `c`.`divisionID`) and (`a`.`departmentID` = `c`.`departmentID`) and (`c`.`year` = 2016)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseDifference_division_2016_annual`
--

/*!50001 DROP VIEW IF EXISTS `expenseDifference_division_2016_annual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseDifference_division_2016_annual` AS select `a`.`divisionID` AS `divisionID`,999 AS `departmentID`,`a`.`divisionTitle` AS `divisionTitle`,NULL AS `departmentTitle`,'2015/2016' AS `year`,'同期差異' AS `period`,(`c`.`1` - `b`.`1`) AS `1`,(`c`.`2` - `b`.`2`) AS `2`,(`c`.`3` - `b`.`3`) AS `3`,(`c`.`4` - `b`.`4`) AS `4`,(`c`.`5` - `b`.`5`) AS `5`,(`c`.`6` - `b`.`6`) AS `6`,(`c`.`7` - `b`.`7`) AS `7`,(`c`.`8` - `b`.`8`) AS `8`,(`c`.`9` - `b`.`9`) AS `9`,(`c`.`10` - `b`.`10`) AS `10`,(`c`.`11` - `b`.`11`) AS `11`,(`c`.`12` - `b`.`12`) AS `12` from ((((select distinct `organizationStructure`.`divisionID` AS `divisionID`,`organizationStructure`.`divisionTitle` AS `divisionTitle` from `wasteReduction`.`organizationStructure`)) `a` left join `wasteReduction`.`expenseChart_division_annual` `b` on(((`a`.`divisionID` = `b`.`divisionID`) and (`b`.`year` = 2015)))) left join `wasteReduction`.`expenseChart_division_annual` `c` on(((`a`.`divisionID` = `c`.`divisionID`) and (`c`.`year` = 2016)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseDifference_overall_2016_annual`
--

/*!50001 DROP VIEW IF EXISTS `expenseDifference_overall_2016_annual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseDifference_overall_2016_annual` AS select 999 AS `divisionID`,999 AS `departmentID`,'整體' AS `divisionTitle`,NULL AS `departmentTitle`,'2015/2016' AS `year`,'同期差異' AS `period`,(`b`.`1` - `a`.`1`) AS `1`,(`b`.`2` - `a`.`2`) AS `2`,(`b`.`3` - `a`.`3`) AS `3`,(`b`.`4` - `a`.`4`) AS `4`,(`b`.`5` - `a`.`5`) AS `5`,(`b`.`6` - `a`.`6`) AS `6`,(`b`.`7` - `a`.`7`) AS `7`,(`b`.`8` - `a`.`8`) AS `8`,(`b`.`9` - `a`.`9`) AS `9`,(`b`.`10` - `a`.`10`) AS `10`,(`b`.`11` - `a`.`11`) AS `11`,(`b`.`12` - `a`.`12`) AS `12` from (((select `expenseChart_overall_annual`.`divisionID` AS `divisionID`,`expenseChart_overall_annual`.`departmentID` AS `departmentID`,`expenseChart_overall_annual`.`divisionTitle` AS `divisionTitle`,`expenseChart_overall_annual`.`departmentTitle` AS `departmentTitle`,`expenseChart_overall_annual`.`year` AS `year`,`expenseChart_overall_annual`.`period` AS `period`,`expenseChart_overall_annual`.`1` AS `1`,`expenseChart_overall_annual`.`2` AS `2`,`expenseChart_overall_annual`.`3` AS `3`,`expenseChart_overall_annual`.`4` AS `4`,`expenseChart_overall_annual`.`5` AS `5`,`expenseChart_overall_annual`.`6` AS `6`,`expenseChart_overall_annual`.`7` AS `7`,`expenseChart_overall_annual`.`8` AS `8`,`expenseChart_overall_annual`.`9` AS `9`,`expenseChart_overall_annual`.`10` AS `10`,`expenseChart_overall_annual`.`11` AS `11`,`expenseChart_overall_annual`.`12` AS `12` from `wasteReduction`.`expenseChart_overall_annual` where (`expenseChart_overall_annual`.`year` = 2015))) `a` join (select `expenseChart_overall_annual`.`divisionID` AS `divisionID`,`expenseChart_overall_annual`.`departmentID` AS `departmentID`,`expenseChart_overall_annual`.`divisionTitle` AS `divisionTitle`,`expenseChart_overall_annual`.`departmentTitle` AS `departmentTitle`,`expenseChart_overall_annual`.`year` AS `year`,`expenseChart_overall_annual`.`period` AS `period`,`expenseChart_overall_annual`.`1` AS `1`,`expenseChart_overall_annual`.`2` AS `2`,`expenseChart_overall_annual`.`3` AS `3`,`expenseChart_overall_annual`.`4` AS `4`,`expenseChart_overall_annual`.`5` AS `5`,`expenseChart_overall_annual`.`6` AS `6`,`expenseChart_overall_annual`.`7` AS `7`,`expenseChart_overall_annual`.`8` AS `8`,`expenseChart_overall_annual`.`9` AS `9`,`expenseChart_overall_annual`.`10` AS `10`,`expenseChart_overall_annual`.`11` AS `11`,`expenseChart_overall_annual`.`12` AS `12` from `wasteReduction`.`expenseChart_overall_annual` where (`expenseChart_overall_annual`.`year` = 2016)) `b`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseList_department`
--

/*!50001 DROP VIEW IF EXISTS `expenseList_department`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseList_department` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`year` AS `year`,`b`.`month` AS `month`,`b`.`amount` AS `amount` from (`organizationStructure` `a` left join `monthlyExpense` `b` on((`a`.`departmentID` = `b`.`departmentID`))) where (`b`.`officialData` = 1) order by `a`.`divisionID`,`a`.`departmentID`,`b`.`year`,`b`.`month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseList_division`
--

/*!50001 DROP VIEW IF EXISTS `expenseList_division`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseList_division` AS select `a`.`divisionID` AS `divisionID`,NULL AS `departmentID`,`b`.`year` AS `year`,`b`.`month` AS `month`,sum(ifnull(`b`.`amount`,NULL)) AS `amount` from (`organizationStructure` `a` left join `monthlyExpense` `b` on((`a`.`departmentID` = `b`.`departmentID`))) where (`b`.`officialData` = 1) group by `a`.`divisionID`,`b`.`year`,`b`.`month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expenseList_overall`
--

/*!50001 DROP VIEW IF EXISTS `expenseList_overall`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expenseList_overall` AS select NULL AS `divisionID`,NULL AS `departmentID`,`b`.`year` AS `year`,`b`.`month` AS `month`,sum(`b`.`amount`) AS `amount` from (`organizationStructure` `a` left join `monthlyExpense` `b` on((`a`.`departmentID` = `b`.`departmentID`))) where (`b`.`officialData` = 1) group by `b`.`year`,`b`.`month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `objectiveList_detail_closed`
--

/*!50001 DROP VIEW IF EXISTS `objectiveList_detail_closed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `objectiveList_detail_closed` AS select `b`.`id` AS `objectiveID`,`a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`annualReductionTarget` AS `annualReductionTarget`,`b`.`issue` AS `issue`,concat('浪費項目： ',`b`.`wasteType`,'<br>','作業內容： ',`b`.`process`,'<br>','設定目標： ',`b`.`description`,'<br>','原因分析： ',`b`.`analysis`,'<br>','改善對策： ',`b`.`correctiveAction`) AS `originalContent` from (`organizationStructure` `a` join `objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) where (`b`.`status` = 'closed') order by `a`.`divisionID`,`a`.`departmentID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `objectiveList_detail_pending`
--

/*!50001 DROP VIEW IF EXISTS `objectiveList_detail_pending`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `objectiveList_detail_pending` AS select `b`.`id` AS `objectiveID`,`a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`annualReductionTarget` AS `annualReductionTarget`,`b`.`issue` AS `issue`,concat('浪費項目： ',`b`.`wasteType`,'<br>','作業內容： ',`b`.`process`,'<br>','設定目標： ',`b`.`description`,'<br>','原因分析： ',`b`.`analysis`,'<br>','改善對策： ',`b`.`correctiveAction`) AS `originalContent` from (`organizationStructure` `a` join `objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) where (`b`.`status` = 'pending') order by `a`.`divisionID`,`a`.`departmentID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `objectiveList_detail_ready`
--

/*!50001 DROP VIEW IF EXISTS `objectiveList_detail_ready`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `objectiveList_detail_ready` AS select `b`.`id` AS `objectiveID`,`a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`c`.`year` AS `year`,`b`.`title` AS `objectiveTitle`,`b`.`annualReductionTarget` AS `annualReductionTarget`,`b`.`targetDescription` AS `targetDescription`,`b`.`evaluationMethod` AS `evaluationMethod`,`c`.`cumulativeProgress` AS `cumulativeProgress`,`c`.`achieveRate` AS `achieveRate` from ((`wasteReduction`.`organizationStructure` `a` join `wasteReduction`.`objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) join `wasteReduction`.`performanceChart_detail` `c` on((`b`.`id` = `c`.`objectiveID`))) where (`b`.`status` = 'ready') order by `a`.`divisionID`,`a`.`departmentID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `organizationStructure`
--

/*!50001 DROP VIEW IF EXISTS `organizationStructure`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `organizationStructure` AS select `a`.`id` AS `divisionID`,`a`.`title` AS `divisionTitle`,`a`.`principle` AS `divisionPrinciple`,`b`.`id` AS `departmentID`,`b`.`title` AS `departmentTitle`,`b`.`principle` AS `departmentPrinciple` from (`division` `a` join `department` `b` on((`a`.`id` = `b`.`divisionID`))) order by `a`.`id`,`b`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `overview_department`
--

/*!50001 DROP VIEW IF EXISTS `overview_department`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `overview_department` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`divisionPrinciple` AS `divisionPrinciple`,`a`.`departmentTitle` AS `departmentTitle`,`a`.`departmentPrinciple` AS `departmentPrinciple`,`c`.`year` AS `year`,`b`.`validObjectiveCount` AS `validObjectiveCount`,`d`.`annualReductionTarget` AS `annualReductionTarget`,`d`.`cumulativeProgress` AS `cumulativeProgress`,`d`.`achieveRate` AS `achieveRate`,`c`.`currentCumulativeExpense` AS `currentCumulativeExpense`,`c`.`priorCumulativeExpense` AS `priorCumulativeExpense`,(`c`.`currentCumulativeExpense` - `c`.`priorCumulativeExpense`) AS `expenseDifference` from (((((select `organizationStructure`.`divisionID` AS `divisionID`,`organizationStructure`.`divisionTitle` AS `divisionTitle`,`organizationStructure`.`divisionPrinciple` AS `divisionPrinciple`,`organizationStructure`.`departmentID` AS `departmentID`,`organizationStructure`.`departmentTitle` AS `departmentTitle`,`organizationStructure`.`departmentPrinciple` AS `departmentPrinciple` from `wasteReduction`.`organizationStructure`)) `a` left join (select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`year` AS `year`,`a`.`currentCumulativeExpense` AS `currentCumulativeExpense`,sum(`b`.`amount`) AS `priorCumulativeExpense` from (((select `expenseList_department`.`divisionID` AS `divisionID`,`expenseList_department`.`departmentID` AS `departmentID`,`expenseList_department`.`year` AS `year`,sum(`expenseList_department`.`amount`) AS `currentCumulativeExpense`,max(`expenseList_department`.`month`) AS `cumulativePeriod` from `wasteReduction`.`expenseList_department` group by `expenseList_department`.`divisionID`,`expenseList_department`.`departmentID`,`expenseList_department`.`year`)) `a` join `wasteReduction`.`expenseList_department` `b` on(((`a`.`divisionID` = `b`.`divisionID`) and (`a`.`departmentID` = `b`.`departmentID`) and (`a`.`year` = (`b`.`year` + 1)) and (`a`.`cumulativePeriod` >= `b`.`month`)))) group by `a`.`divisionID`,`a`.`departmentID`,`a`.`year`) `c` on(((`a`.`divisionID` = `c`.`divisionID`) and (`a`.`departmentID` = `c`.`departmentID`)))) left join (select `objectiveList_detail_ready`.`divisionID` AS `divisionID`,`objectiveList_detail_ready`.`departmentID` AS `departmentID`,`objectiveList_detail_ready`.`year` AS `year`,count(0) AS `validObjectiveCount` from `wasteReduction`.`objectiveList_detail_ready` group by `objectiveList_detail_ready`.`divisionID`,`objectiveList_detail_ready`.`departmentID`,`objectiveList_detail_ready`.`year`) `b` on(((`a`.`divisionID` = `b`.`divisionID`) and (`a`.`departmentID` = `b`.`departmentID`) and (`c`.`year` = `b`.`year`)))) left join (select `performanceChart_department`.`divisionID` AS `divisionID`,`performanceChart_department`.`departmentID` AS `departmentID`,`performanceChart_department`.`year` AS `year`,`performanceChart_department`.`annualReductionTarget` AS `annualReductionTarget`,`performanceChart_department`.`cumulativeProgress` AS `cumulativeProgress`,`performanceChart_department`.`achieveRate` AS `achieveRate` from `wasteReduction`.`performanceChart_department`) `d` on(((`a`.`divisionID` = `d`.`divisionID`) and (`a`.`departmentID` = `d`.`departmentID`) and (`c`.`year` = `d`.`year`)))) where (`b`.`validObjectiveCount` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `overview_division`
--

/*!50001 DROP VIEW IF EXISTS `overview_division`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `overview_division` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`divisionPrinciple` AS `divisionPrinciple`,`a`.`departmentTitle` AS `departmentTitle`,`a`.`departmentPrinciple` AS `departmentPrinciple`,`c`.`year` AS `year`,`b`.`validObjectiveCount` AS `validObjectiveCount`,`d`.`annualReductionTarget` AS `annualReductionTarget`,`d`.`cumulativeProgress` AS `cumulativeProgress`,`d`.`achieveRate` AS `achieveRate`,`c`.`currentCumulativeExpense` AS `currentCumulativeExpense`,`c`.`priorCumulativeExpense` AS `priorCumulativeExpense`,(`c`.`currentCumulativeExpense` - `c`.`priorCumulativeExpense`) AS `expenseDifference` from (((((select distinct `organizationStructure`.`divisionID` AS `divisionID`,`organizationStructure`.`divisionTitle` AS `divisionTitle`,`organizationStructure`.`divisionPrinciple` AS `divisionPrinciple`,NULL AS `departmentID`,NULL AS `departmentTitle`,NULL AS `departmentPrinciple` from `wasteReduction`.`organizationStructure`)) `a` left join (select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`year` AS `year`,`a`.`currentCumulativeExpense` AS `currentCumulativeExpense`,sum(`b`.`amount`) AS `priorCumulativeExpense` from (((select `expenseList_division`.`divisionID` AS `divisionID`,`expenseList_division`.`departmentID` AS `departmentID`,`expenseList_division`.`year` AS `year`,sum(`expenseList_division`.`amount`) AS `currentCumulativeExpense`,max(`expenseList_division`.`month`) AS `cumulativePeriod` from `wasteReduction`.`expenseList_division` group by `expenseList_division`.`divisionID`,`expenseList_division`.`year`)) `a` join `wasteReduction`.`expenseList_division` `b` on(((`a`.`divisionID` = `b`.`divisionID`) and (`a`.`year` = (`b`.`year` + 1)) and (`a`.`cumulativePeriod` >= `b`.`month`)))) group by `a`.`divisionID`,`a`.`year`) `c` on((`a`.`divisionID` = `c`.`divisionID`))) left join (select `objectiveList_detail_ready`.`divisionID` AS `divisionID`,`objectiveList_detail_ready`.`year` AS `year`,count(0) AS `validObjectiveCount` from `wasteReduction`.`objectiveList_detail_ready` group by `objectiveList_detail_ready`.`divisionID`,`objectiveList_detail_ready`.`year`) `b` on(((`a`.`divisionID` = `b`.`divisionID`) and (`c`.`year` = `b`.`year`)))) left join (select `performanceChart_division`.`divisionID` AS `divisionID`,`performanceChart_division`.`year` AS `year`,`performanceChart_division`.`annualReductionTarget` AS `annualReductionTarget`,`performanceChart_division`.`cumulativeProgress` AS `cumulativeProgress`,`performanceChart_division`.`achieveRate` AS `achieveRate` from `wasteReduction`.`performanceChart_division`) `d` on(((`a`.`divisionID` = `d`.`divisionID`) and (`c`.`year` = `d`.`year`)))) order by `a`.`divisionID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `overview_overall`
--

/*!50001 DROP VIEW IF EXISTS `overview_overall`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `overview_overall` AS select NULL AS `divisionID`,NULL AS `departmentID`,'整體合計' AS `divisionTitle`,NULL AS `divisionPrinciple`,NULL AS `departmentTitle`,NULL AS `departmentPrinciple`,`b`.`year` AS `year`,`a`.`validObjectiveCount` AS `validObjectiveCount`,`c`.`annualReductionTarget` AS `annualReductionTarget`,`c`.`cumulativeProgress` AS `cumulativeProgress`,`c`.`achieveRate` AS `achieveRate`,`b`.`currentCumulativeExpense` AS `currentCumulativeExpense`,`b`.`priorCumulativeExpense` AS `priorCumulativeExpense`,(`b`.`currentCumulativeExpense` - `b`.`priorCumulativeExpense`) AS `expenseDifference` from (((select count(0) AS `validObjectiveCount` from `wasteReduction`.`objective` where (`wasteReduction`.`objective`.`status` = 'ready'))) `a` join (((select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`a`.`year` AS `year`,`a`.`currentCumulativeExpense` AS `currentCumulativeExpense`,sum(`b`.`amount`) AS `priorCumulativeExpense` from (((select `expenseList_overall`.`divisionID` AS `divisionID`,`expenseList_overall`.`departmentID` AS `departmentID`,`expenseList_overall`.`year` AS `year`,sum(`expenseList_overall`.`amount`) AS `currentCumulativeExpense`,max(`expenseList_overall`.`month`) AS `cumulativePeriod` from `wasteReduction`.`expenseList_overall` group by `expenseList_overall`.`year`)) `a` join `wasteReduction`.`expenseList_overall` `b` on(((`a`.`year` = (`b`.`year` + 1)) and (`a`.`cumulativePeriod` >= `b`.`month`)))) group by `a`.`year`)) `b` join (select `performanceChart_overall`.`divisionID` AS `divisionID`,`performanceChart_overall`.`year` AS `year`,`performanceChart_overall`.`annualReductionTarget` AS `annualReductionTarget`,`performanceChart_overall`.`cumulativeProgress` AS `cumulativeProgress`,`performanceChart_overall`.`achieveRate` AS `achieveRate` from `wasteReduction`.`performanceChart_overall`) `c` on((`b`.`year` = `c`.`year`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `performanceChart_department`
--

/*!50001 DROP VIEW IF EXISTS `performanceChart_department`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `performanceChart_department` AS select `performanceChart_detail`.`divisionID` AS `divisionID`,`performanceChart_detail`.`departmentID` AS `departmentID`,NULL AS `objectiveID`,`performanceChart_detail`.`divisionTitle` AS `divisionTitle`,`performanceChart_detail`.`departmentTitle` AS `departmentTitle`,NULL AS `objectiveTitle`,`performanceChart_detail`.`year` AS `year`,sum(`performanceChart_detail`.`annualReductionTarget`) AS `annualReductionTarget`,sum(ifnull(`performanceChart_detail`.`1`,0)) AS `1`,sum(ifnull(`performanceChart_detail`.`2`,0)) AS `2`,sum(ifnull(`performanceChart_detail`.`3`,0)) AS `3`,sum(ifnull(`performanceChart_detail`.`4`,0)) AS `4`,sum(ifnull(`performanceChart_detail`.`5`,0)) AS `5`,sum(ifnull(`performanceChart_detail`.`6`,0)) AS `6`,sum(ifnull(`performanceChart_detail`.`7`,0)) AS `7`,sum(ifnull(`performanceChart_detail`.`8`,0)) AS `8`,sum(ifnull(`performanceChart_detail`.`9`,0)) AS `9`,sum(ifnull(`performanceChart_detail`.`10`,0)) AS `10`,sum(ifnull(`performanceChart_detail`.`11`,0)) AS `11`,sum(ifnull(`performanceChart_detail`.`12`,0)) AS `12`,sum((((((((((((ifnull(`performanceChart_detail`.`1`,0) + ifnull(`performanceChart_detail`.`2`,0)) + ifnull(`performanceChart_detail`.`3`,0)) + ifnull(`performanceChart_detail`.`4`,0)) + ifnull(`performanceChart_detail`.`5`,0)) + ifnull(`performanceChart_detail`.`6`,0)) + ifnull(`performanceChart_detail`.`7`,0)) + ifnull(`performanceChart_detail`.`8`,0)) + ifnull(`performanceChart_detail`.`9`,0)) + ifnull(`performanceChart_detail`.`10`,0)) + ifnull(`performanceChart_detail`.`11`,0)) + ifnull(`performanceChart_detail`.`12`,0))) AS `cumulativeProgress`,(sum((((((((((((ifnull(`performanceChart_detail`.`1`,0) + ifnull(`performanceChart_detail`.`2`,0)) + ifnull(`performanceChart_detail`.`3`,0)) + ifnull(`performanceChart_detail`.`4`,0)) + ifnull(`performanceChart_detail`.`5`,0)) + ifnull(`performanceChart_detail`.`6`,0)) + ifnull(`performanceChart_detail`.`7`,0)) + ifnull(`performanceChart_detail`.`8`,0)) + ifnull(`performanceChart_detail`.`9`,0)) + ifnull(`performanceChart_detail`.`10`,0)) + ifnull(`performanceChart_detail`.`11`,0)) + ifnull(`performanceChart_detail`.`12`,0))) / sum(`performanceChart_detail`.`annualReductionTarget`)) AS `achieveRate` from `wasteReduction`.`performanceChart_detail` group by `performanceChart_detail`.`divisionID`,`performanceChart_detail`.`departmentID`,`performanceChart_detail`.`year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `performanceChart_detail`
--

/*!50001 DROP VIEW IF EXISTS `performanceChart_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `performanceChart_detail` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`id` AS `objectiveID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`title` AS `objectiveTitle`,`c`.`year` AS `year`,`b`.`annualReductionTarget` AS `annualReductionTarget`,`c`.`1` AS `1`,`c`.`2` AS `2`,`c`.`3` AS `3`,`c`.`4` AS `4`,`c`.`5` AS `5`,`c`.`6` AS `6`,`c`.`7` AS `7`,`c`.`8` AS `8`,`c`.`9` AS `9`,`c`.`10` AS `10`,`c`.`11` AS `11`,`c`.`12` AS `12`,(((((((((((ifnull(`c`.`1`,0) + ifnull(`c`.`2`,0)) + ifnull(`c`.`3`,0)) + ifnull(`c`.`4`,0)) + ifnull(`c`.`5`,0)) + ifnull(`c`.`6`,0)) + ifnull(`c`.`7`,0)) + ifnull(`c`.`8`,0)) + ifnull(`c`.`9`,0)) + ifnull(`c`.`10`,0)) + ifnull(`c`.`11`,0)) + ifnull(`c`.`12`,0)) AS `cumulativeProgress`,((((((((((((ifnull(`c`.`1`,0) + ifnull(`c`.`2`,0)) + ifnull(`c`.`3`,0)) + ifnull(`c`.`4`,0)) + ifnull(`c`.`5`,0)) + ifnull(`c`.`6`,0)) + ifnull(`c`.`7`,0)) + ifnull(`c`.`8`,0)) + ifnull(`c`.`9`,0)) + ifnull(`c`.`10`,0)) + ifnull(`c`.`11`,0)) + ifnull(`c`.`12`,0)) / `b`.`annualReductionTarget`) AS `achieveRate` from ((`wasteReduction`.`organizationStructure` `a` join `wasteReduction`.`objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) left join `wasteReduction`.`reductionChart_detail` `c` on((`b`.`id` = `c`.`objectiveID`))) where (`b`.`status` = 'ready') order by `a`.`divisionID`,`a`.`departmentID`,`b`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `performanceChart_division`
--

/*!50001 DROP VIEW IF EXISTS `performanceChart_division`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `performanceChart_division` AS select `performanceChart_detail`.`divisionID` AS `divisionID`,NULL AS `departmentID`,NULL AS `objectiveID`,`performanceChart_detail`.`divisionTitle` AS `divisionTitle`,NULL AS `departmentTitle`,NULL AS `objectiveTitle`,`performanceChart_detail`.`year` AS `year`,sum(`performanceChart_detail`.`annualReductionTarget`) AS `annualReductionTarget`,sum(ifnull(`performanceChart_detail`.`1`,0)) AS `1`,sum(ifnull(`performanceChart_detail`.`2`,0)) AS `2`,sum(ifnull(`performanceChart_detail`.`3`,0)) AS `3`,sum(ifnull(`performanceChart_detail`.`4`,0)) AS `4`,sum(ifnull(`performanceChart_detail`.`5`,0)) AS `5`,sum(ifnull(`performanceChart_detail`.`6`,0)) AS `6`,sum(ifnull(`performanceChart_detail`.`7`,0)) AS `7`,sum(ifnull(`performanceChart_detail`.`8`,0)) AS `8`,sum(ifnull(`performanceChart_detail`.`9`,0)) AS `9`,sum(ifnull(`performanceChart_detail`.`10`,0)) AS `10`,sum(ifnull(`performanceChart_detail`.`11`,0)) AS `11`,sum(ifnull(`performanceChart_detail`.`12`,0)) AS `12`,sum((((((((((((ifnull(`performanceChart_detail`.`1`,0) + ifnull(`performanceChart_detail`.`2`,0)) + ifnull(`performanceChart_detail`.`3`,0)) + ifnull(`performanceChart_detail`.`4`,0)) + ifnull(`performanceChart_detail`.`5`,0)) + ifnull(`performanceChart_detail`.`6`,0)) + ifnull(`performanceChart_detail`.`7`,0)) + ifnull(`performanceChart_detail`.`8`,0)) + ifnull(`performanceChart_detail`.`9`,0)) + ifnull(`performanceChart_detail`.`10`,0)) + ifnull(`performanceChart_detail`.`11`,0)) + ifnull(`performanceChart_detail`.`12`,0))) AS `cumulativeProgress`,(sum((((((((((((ifnull(`performanceChart_detail`.`1`,0) + ifnull(`performanceChart_detail`.`2`,0)) + ifnull(`performanceChart_detail`.`3`,0)) + ifnull(`performanceChart_detail`.`4`,0)) + ifnull(`performanceChart_detail`.`5`,0)) + ifnull(`performanceChart_detail`.`6`,0)) + ifnull(`performanceChart_detail`.`7`,0)) + ifnull(`performanceChart_detail`.`8`,0)) + ifnull(`performanceChart_detail`.`9`,0)) + ifnull(`performanceChart_detail`.`10`,0)) + ifnull(`performanceChart_detail`.`11`,0)) + ifnull(`performanceChart_detail`.`12`,0))) / sum(`performanceChart_detail`.`annualReductionTarget`)) AS `achieveRate` from `wasteReduction`.`performanceChart_detail` group by `performanceChart_detail`.`divisionID`,`performanceChart_detail`.`year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `performanceChart_overall`
--

/*!50001 DROP VIEW IF EXISTS `performanceChart_overall`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `performanceChart_overall` AS select NULL AS `divisionID`,NULL AS `departmentID`,NULL AS `objectiveID`,'整體合計' AS `divisionTitle`,NULL AS `departmentTitle`,NULL AS `objectiveTitle`,`performanceChart_detail`.`year` AS `year`,sum(`performanceChart_detail`.`annualReductionTarget`) AS `annualReductionTarget`,sum(ifnull(`performanceChart_detail`.`1`,0)) AS `1`,sum(ifnull(`performanceChart_detail`.`2`,0)) AS `2`,sum(ifnull(`performanceChart_detail`.`3`,0)) AS `3`,sum(ifnull(`performanceChart_detail`.`4`,0)) AS `4`,sum(ifnull(`performanceChart_detail`.`5`,0)) AS `5`,sum(ifnull(`performanceChart_detail`.`6`,0)) AS `6`,sum(ifnull(`performanceChart_detail`.`7`,0)) AS `7`,sum(ifnull(`performanceChart_detail`.`8`,0)) AS `8`,sum(ifnull(`performanceChart_detail`.`9`,0)) AS `9`,sum(ifnull(`performanceChart_detail`.`10`,0)) AS `10`,sum(ifnull(`performanceChart_detail`.`11`,0)) AS `11`,sum(ifnull(`performanceChart_detail`.`12`,0)) AS `12`,sum((((((((((((ifnull(`performanceChart_detail`.`1`,0) + ifnull(`performanceChart_detail`.`2`,0)) + ifnull(`performanceChart_detail`.`3`,0)) + ifnull(`performanceChart_detail`.`4`,0)) + ifnull(`performanceChart_detail`.`5`,0)) + ifnull(`performanceChart_detail`.`6`,0)) + ifnull(`performanceChart_detail`.`7`,0)) + ifnull(`performanceChart_detail`.`8`,0)) + ifnull(`performanceChart_detail`.`9`,0)) + ifnull(`performanceChart_detail`.`10`,0)) + ifnull(`performanceChart_detail`.`11`,0)) + ifnull(`performanceChart_detail`.`12`,0))) AS `cumulativeProgress`,(sum((((((((((((ifnull(`performanceChart_detail`.`1`,0) + ifnull(`performanceChart_detail`.`2`,0)) + ifnull(`performanceChart_detail`.`3`,0)) + ifnull(`performanceChart_detail`.`4`,0)) + ifnull(`performanceChart_detail`.`5`,0)) + ifnull(`performanceChart_detail`.`6`,0)) + ifnull(`performanceChart_detail`.`7`,0)) + ifnull(`performanceChart_detail`.`8`,0)) + ifnull(`performanceChart_detail`.`9`,0)) + ifnull(`performanceChart_detail`.`10`,0)) + ifnull(`performanceChart_detail`.`11`,0)) + ifnull(`performanceChart_detail`.`12`,0))) / sum(`performanceChart_detail`.`annualReductionTarget`)) AS `achieveRate` from `wasteReduction`.`performanceChart_detail` group by `performanceChart_detail`.`year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reductionChart_detail`
--

/*!50001 DROP VIEW IF EXISTS `reductionChart_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reductionChart_detail` AS select `jan`.`objectiveID` AS `objectiveID`,`jan`.`year` AS `year`,`jan`.`reduction` AS `1`,`feb`.`reduction` AS `2`,`mar`.`reduction` AS `3`,`apr`.`reduction` AS `4`,`may`.`reduction` AS `5`,`jun`.`reduction` AS `6`,`jul`.`reduction` AS `7`,`aug`.`reduction` AS `8`,`sep`.`reduction` AS `9`,`oct`.`reduction` AS `10`,`nov`.`reduction` AS `11`,`dec`.`reduction` AS `12` from (((((((((((((select `reductionList_detail`.`objectiveID` AS `objectiveID`,`reductionList_detail`.`year` AS `year`,`reductionList_detail`.`month` AS `month`,`reductionList_detail`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_detail` where (`reductionList_detail`.`month` = 1))) `jan` left join (select `reductionList_detail`.`objectiveID` AS `objectiveID`,`reductionList_detail`.`year` AS `year`,`reductionList_detail`.`month` AS `month`,`reductionList_detail`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_detail` where (`reductionList_detail`.`month` = 2)) `feb` on(((`jan`.`objectiveID` = `feb`.`objectiveID`) and (`jan`.`year` = `feb`.`year`)))) left join (select `reductionList_detail`.`objectiveID` AS `objectiveID`,`reductionList_detail`.`year` AS `year`,`reductionList_detail`.`month` AS `month`,`reductionList_detail`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_detail` where (`reductionList_detail`.`month` = 3)) `mar` on(((`jan`.`objectiveID` = `mar`.`objectiveID`) and (`jan`.`year` = `mar`.`year`)))) left join (select `reductionList_detail`.`objectiveID` AS `objectiveID`,`reductionList_detail`.`year` AS `year`,`reductionList_detail`.`month` AS `month`,`reductionList_detail`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_detail` where (`reductionList_detail`.`month` = 4)) `apr` on(((`jan`.`objectiveID` = `apr`.`objectiveID`) and (`jan`.`year` = `apr`.`year`)))) left join (select `reductionList_detail`.`objectiveID` AS `objectiveID`,`reductionList_detail`.`year` AS `year`,`reductionList_detail`.`month` AS `month`,`reductionList_detail`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_detail` where (`reductionList_detail`.`month` = 5)) `may` on(((`jan`.`objectiveID` = `may`.`objectiveID`) and (`jan`.`year` = `may`.`year`)))) left join (select `reductionList_detail`.`objectiveID` AS `objectiveID`,`reductionList_detail`.`year` AS `year`,`reductionList_detail`.`month` AS `month`,`reductionList_detail`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_detail` where (`reductionList_detail`.`month` = 6)) `jun` on(((`jan`.`objectiveID` = `jun`.`objectiveID`) and (`jan`.`year` = `jun`.`year`)))) left join (select `reductionList_detail`.`objectiveID` AS `objectiveID`,`reductionList_detail`.`year` AS `year`,`reductionList_detail`.`month` AS `month`,`reductionList_detail`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_detail` where (`reductionList_detail`.`month` = 7)) `jul` on(((`jan`.`objectiveID` = `jul`.`objectiveID`) and (`jan`.`year` = `jul`.`year`)))) left join (select `reductionList_detail`.`objectiveID` AS `objectiveID`,`reductionList_detail`.`year` AS `year`,`reductionList_detail`.`month` AS `month`,`reductionList_detail`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_detail` where (`reductionList_detail`.`month` = 8)) `aug` on(((`jan`.`objectiveID` = `aug`.`objectiveID`) and (`jan`.`year` = `aug`.`year`)))) left join (select `reductionList_detail`.`objectiveID` AS `objectiveID`,`reductionList_detail`.`year` AS `year`,`reductionList_detail`.`month` AS `month`,`reductionList_detail`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_detail` where (`reductionList_detail`.`month` = 9)) `sep` on(((`jan`.`objectiveID` = `sep`.`objectiveID`) and (`jan`.`year` = `sep`.`year`)))) left join (select `reductionList_detail`.`objectiveID` AS `objectiveID`,`reductionList_detail`.`year` AS `year`,`reductionList_detail`.`month` AS `month`,`reductionList_detail`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_detail` where (`reductionList_detail`.`month` = 10)) `oct` on(((`jan`.`objectiveID` = `oct`.`objectiveID`) and (`jan`.`year` = `oct`.`year`)))) left join (select `reductionList_detail`.`objectiveID` AS `objectiveID`,`reductionList_detail`.`year` AS `year`,`reductionList_detail`.`month` AS `month`,`reductionList_detail`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_detail` where (`reductionList_detail`.`month` = 11)) `nov` on(((`jan`.`objectiveID` = `nov`.`objectiveID`) and (`jan`.`year` = `nov`.`year`)))) left join (select `reductionList_detail`.`objectiveID` AS `objectiveID`,`reductionList_detail`.`year` AS `year`,`reductionList_detail`.`month` AS `month`,`reductionList_detail`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_detail` where (`reductionList_detail`.`month` = 12)) `dec` on(((`jan`.`objectiveID` = `dec`.`objectiveID`) and (`jan`.`year` = `dec`.`year`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reductionList_acceptance`
--

/*!50001 DROP VIEW IF EXISTS `reductionList_acceptance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reductionList_acceptance` AS select `record_acceptance`.`objectiveID` AS `objectiveID`,`record_acceptance`.`year` AS `year`,`record_acceptance`.`month` AS `month`,sum(ceiling((`record_acceptance`.`productionCost` * `record_acceptance`.`quantity`))) AS `reduction` from `record_acceptance` group by `record_acceptance`.`objectiveID`,`record_acceptance`.`year`,`record_acceptance`.`month` order by `record_acceptance`.`objectiveID`,`record_acceptance`.`year`,`record_acceptance`.`month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reductionList_detail`
--

/*!50001 DROP VIEW IF EXISTS `reductionList_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reductionList_detail` AS select `reductionList_acceptance`.`objectiveID` AS `objectiveID`,`reductionList_acceptance`.`year` AS `year`,`reductionList_acceptance`.`month` AS `month`,`reductionList_acceptance`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_acceptance` union select `reductionList_expense`.`objectiveID` AS `objectiveID`,`reductionList_expense`.`year` AS `year`,`reductionList_expense`.`month` AS `month`,`reductionList_expense`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_expense` union select `reductionList_frequency`.`objectiveID` AS `objectiveID`,`reductionList_frequency`.`year` AS `year`,`reductionList_frequency`.`month` AS `month`,`reductionList_frequency`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_frequency` union select `reductionList_materialUsage`.`objectiveID` AS `objectiveID`,`reductionList_materialUsage`.`year` AS `year`,`reductionList_materialUsage`.`month` AS `month`,`reductionList_materialUsage`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_materialUsage` union select `reductionList_mouldTooling`.`objectiveID` AS `objectiveID`,`reductionList_mouldTooling`.`year` AS `year`,`reductionList_mouldTooling`.`month` AS `month`,`reductionList_mouldTooling`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_mouldTooling` union select `reductionList_operation`.`objectiveID` AS `objectiveID`,`reductionList_operation`.`year` AS `year`,`reductionList_operation`.`month` AS `month`,`reductionList_operation`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_operation` union select `reductionList_recycle`.`objectiveID` AS `objectiveID`,`reductionList_recycle`.`year` AS `year`,`reductionList_recycle`.`month` AS `month`,`reductionList_recycle`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_recycle` union select `reductionList_scrap`.`objectiveID` AS `objectiveID`,`reductionList_scrap`.`year` AS `year`,`reductionList_scrap`.`month` AS `month`,`reductionList_scrap`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_scrap` union select `reductionList_severance`.`objectiveID` AS `objectiveID`,`reductionList_severance`.`year` AS `year`,`reductionList_severance`.`month` AS `month`,`reductionList_severance`.`reduction` AS `reduction` from `wasteReduction`.`reductionList_severance` order by `objectiveID`,`year`,`month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reductionList_expense`
--

/*!50001 DROP VIEW IF EXISTS `reductionList_expense`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reductionList_expense` AS select `a`.`objectiveID` AS `objectiveID`,`a`.`year` AS `year`,`a`.`month` AS `month`,(ceiling((`b`.`referenceAmount` / `b`.`referencePeriod`)) - `a`.`amount`) AS `reduction` from (`record_expense` `a` join `itemData` `b` on((`a`.`objectiveID` = `b`.`objectiveID`))) order by `a`.`objectiveID`,`a`.`year`,`a`.`month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reductionList_frequency`
--

/*!50001 DROP VIEW IF EXISTS `reductionList_frequency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reductionList_frequency` AS select `a`.`objectiveID` AS `objectiveID`,`a`.`year` AS `year`,`a`.`month` AS `month`,sum(ceiling((`b`.`unitCost` * ((`b`.`referenceQuantity` / `b`.`referencePeriod`) - `a`.`count`)))) AS `reduction` from (`record_frequency` `a` join `itemData` `b` on((`a`.`itemID` = `b`.`id`))) group by `a`.`objectiveID`,`a`.`year`,`a`.`month` order by `a`.`objectiveID`,`a`.`year`,`a`.`month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reductionList_materialUsage`
--

/*!50001 DROP VIEW IF EXISTS `reductionList_materialUsage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reductionList_materialUsage` AS select `a`.`objectiveID` AS `objectiveID`,`a`.`year` AS `year`,`a`.`month` AS `month`,sum(ceiling((`b`.`unitCost` * ((`b`.`referenceQuantity` / `b`.`referencePeriod`) - `a`.`unitCount`)))) AS `reduction` from (`record_materialUsage` `a` join `itemData` `b` on(((`a`.`objectiveID` = `b`.`objectiveID`) and (`a`.`itemID` = `b`.`id`)))) group by `a`.`objectiveID`,`a`.`year`,`a`.`month` order by `a`.`objectiveID`,`a`.`year`,`a`.`month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reductionList_mouldTooling`
--

/*!50001 DROP VIEW IF EXISTS `reductionList_mouldTooling`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reductionList_mouldTooling` AS select `a`.`objectiveID` AS `objectiveID`,`a`.`year` AS `year`,`a`.`month` AS `month`,(`a`.`costMIT` - `b`.`amount`) AS `reduction` from (((select `a`.`objectiveID` AS `objectiveID`,`a`.`year` AS `year`,`a`.`month` AS `month`,round(sum((`b`.`unitCost` * `a`.`quantity`)),0) AS `costMIT` from (`wasteReduction`.`record_chineseMould` `a` join `wasteReduction`.`itemData` `b` on(((`a`.`objectiveID` = `b`.`objectiveID`) and (`a`.`itemID` = `b`.`id`)))) group by `a`.`objectiveID`,`a`.`year`,`a`.`month`)) `a` join `wasteReduction`.`record_chineseToolingCost` `b` on(((`a`.`objectiveID` = `b`.`objectiveID`) and (`a`.`year` = `b`.`year`) and (`a`.`month` = `b`.`month`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reductionList_operation`
--

/*!50001 DROP VIEW IF EXISTS `reductionList_operation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reductionList_operation` AS select `record_operation`.`objectiveID` AS `objectiveID`,`record_operation`.`year` AS `year`,`record_operation`.`month` AS `month`,ceiling((`itemData`.`unitCost` * ((`itemData`.`referenceQuantity` / `itemData`.`referencePeriod`) - `record_operation`.`timeSpent`))) AS `reduction` from (`record_operation` join `itemData` on((`record_operation`.`objectiveID` = `itemData`.`objectiveID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reductionList_recycle`
--

/*!50001 DROP VIEW IF EXISTS `reductionList_recycle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reductionList_recycle` AS select `a`.`objectiveID` AS `objectiveID`,`a`.`year` AS `year`,`a`.`month` AS `month`,sum(ceiling(((`b`.`unitCost` - `b`.`recycleCost`) * `a`.`unitCount`))) AS `reduction` from (`record_recycle` `a` join `itemData` `b` on(((`a`.`objectiveID` = `b`.`objectiveID`) and (`a`.`itemID` = `b`.`id`)))) group by `a`.`objectiveID`,`a`.`year`,`a`.`month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reductionList_scrap`
--

/*!50001 DROP VIEW IF EXISTS `reductionList_scrap`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reductionList_scrap` AS select `a`.`objectiveID` AS `objectiveID`,`a`.`year` AS `year`,`a`.`month` AS `month`,(ceiling(round((`b`.`referenceAmount` / `b`.`referencePeriod`),0)) - `a`.`scrapValue`) AS `reduction` from (((select `wasteReduction`.`record_scrap`.`objectiveID` AS `objectiveID`,`wasteReduction`.`record_scrap`.`year` AS `year`,`wasteReduction`.`record_scrap`.`month` AS `month`,ceiling(sum((`wasteReduction`.`record_scrap`.`productionCost` * `wasteReduction`.`record_scrap`.`quantity`))) AS `scrapValue` from `wasteReduction`.`record_scrap` group by `wasteReduction`.`record_scrap`.`objectiveID`,`wasteReduction`.`record_scrap`.`year`,`wasteReduction`.`record_scrap`.`month`)) `a` join `wasteReduction`.`itemData` `b` on((`a`.`objectiveID` = `b`.`objectiveID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reductionList_severance`
--

/*!50001 DROP VIEW IF EXISTS `reductionList_severance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reductionList_severance` AS select `record_severance`.`objectiveID` AS `objectiveID`,`record_severance`.`year` AS `year`,`record_severance`.`month` AS `month`,sum(((`staffInfo`.`averageWage` * (`staffInfo`.`initialCount` - `record_severance`.`staffCount`)) - `record_severance`.`severanceCost`)) AS `reduction` from ((`record_severance` join `objective` on((`record_severance`.`objectiveID` = `objective`.`id`))) join `staffInfo` on(((`objective`.`departmentID` = `staffInfo`.`departmentID`) and (`record_severance`.`foreignStatus` = `staffInfo`.`foreignStatus`)))) group by `record_severance`.`objectiveID`,`record_severance`.`year`,`record_severance`.`month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verification_acceptance`
--

/*!50001 DROP VIEW IF EXISTS `verification_acceptance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verification_acceptance` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`id` AS `objectiveID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`title` AS `objectiveTitle`,`c`.`year` AS `year`,`c`.`month` AS `month`,`b`.`evaluationMethod` AS `evaluationMethod`,`c`.`quantity` AS `quantity`,`c`.`reduction` AS `reduction`,round((`b`.`annualReductionTarget` / 12),0) AS `monthlyReductionTarget`,(`c`.`reduction` / round((`b`.`annualReductionTarget` / 12),0)) AS `achieveRate`,if((`c`.`quantity` = 0),'本月無放行項目',concat('本月共計 ',`c`.`recordCount`,' 種允收放行項目')) AS `note` from ((`wasteReduction`.`organizationStructure` `a` left join `wasteReduction`.`objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) join (select `wasteReduction`.`record_acceptance`.`objectiveID` AS `objectiveID`,`wasteReduction`.`record_acceptance`.`year` AS `year`,`wasteReduction`.`record_acceptance`.`month` AS `month`,sum(`wasteReduction`.`record_acceptance`.`quantity`) AS `quantity`,sum(round((`wasteReduction`.`record_acceptance`.`productionCost` * `wasteReduction`.`record_acceptance`.`quantity`),0)) AS `reduction`,count(0) AS `recordCount`,`wasteReduction`.`record_acceptance`.`officialData` AS `officialData` from `wasteReduction`.`record_acceptance` where (`wasteReduction`.`record_acceptance`.`officialData` = 1) group by `wasteReduction`.`record_acceptance`.`objectiveID`,`wasteReduction`.`record_acceptance`.`year`,`wasteReduction`.`record_acceptance`.`month`) `c` on((`b`.`id` = `c`.`objectiveID`))) where (`c`.`officialData` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verification_acceptance_itemize`
--

/*!50001 DROP VIEW IF EXISTS `verification_acceptance_itemize`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verification_acceptance_itemize` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`id` AS `objectiveID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`title` AS `objectiveTitle`,`c`.`year` AS `year`,`c`.`month` AS `month`,`b`.`evaluationMethod` AS `evaluationMethod`,cast(`c`.`recordDate` as date) AS `recordDate`,`c`.`itemizeIndex` AS `itemizeIndex`,`c`.`productReference` AS `productReference`,`c`.`productionCost` AS `productionCost`,`c`.`quantity` AS `quantity`,round((`c`.`productionCost` * `c`.`quantity`),0) AS `reduction`,`c`.`note` AS `note` from ((`organizationStructure` `a` left join `objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) join `record_acceptance` `c` on((`b`.`id` = `c`.`objectiveID`))) where (`c`.`officialData` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verification_expense`
--

/*!50001 DROP VIEW IF EXISTS `verification_expense`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verification_expense` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`id` AS `objectiveID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`title` AS `objectiveTitle`,`c`.`year` AS `year`,`c`.`month` AS `month`,`d`.`title` AS `itemTitle`,`b`.`evaluationMethod` AS `evaluationMethod`,round((`d`.`referenceAmount` / `d`.`referencePeriod`),0) AS `historicalExpense`,`c`.`amount` AS `expense`,(round((`d`.`referenceAmount` / `d`.`referencePeriod`),0) - `c`.`amount`) AS `reduction`,round((`b`.`annualReductionTarget` / 12),0) AS `monthlyReductionTarget`,((round((`d`.`referenceAmount` / `d`.`referencePeriod`),0) - `c`.`amount`) / round((`b`.`annualReductionTarget` / 12),0)) AS `achieveRate`,`c`.`note` AS `note` from (((`organizationStructure` `a` left join `objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) join `record_expense` `c` on((`b`.`id` = `c`.`objectiveID`))) join `itemData` `d` on((`b`.`id` = `d`.`objectiveID`))) where (`c`.`officialData` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verification_frequency`
--

/*!50001 DROP VIEW IF EXISTS `verification_frequency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verification_frequency` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`id` AS `objectiveID`,`d`.`id` AS `itemID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`title` AS `objectiveTitle`,`c`.`year` AS `year`,`c`.`month` AS `month`,`d`.`title` AS `itemTitle`,`b`.`evaluationMethod` AS `evaluationMethod`,`d`.`unitCost` AS `unitCost`,round((`d`.`referenceQuantity` / `d`.`referencePeriod`),2) AS `averageCount`,`c`.`count` AS `count`,round((`d`.`unitCost` * (round((`d`.`referenceQuantity` / `d`.`referencePeriod`),2) - `c`.`count`)),0) AS `reduction`,round((`b`.`annualReductionTarget` / 12),0) AS `monthlyReductionTarget`,(round((`d`.`unitCost` * (round((`d`.`referenceQuantity` / `d`.`referencePeriod`),2) - `c`.`count`)),0) / round((`b`.`annualReductionTarget` / 12),0)) AS `achieveRate`,`c`.`note` AS `note` from (((`organizationStructure` `a` left join `objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) join `record_frequency` `c` on((`b`.`id` = `c`.`objectiveID`))) join `itemData` `d` on((`b`.`id` = `d`.`objectiveID`))) where (`c`.`officialData` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verification_materialUsage`
--

/*!50001 DROP VIEW IF EXISTS `verification_materialUsage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verification_materialUsage` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`id` AS `objectiveID`,`c`.`itemID` AS `itemID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`title` AS `objectiveTitle`,`c`.`year` AS `year`,`c`.`month` AS `month`,`d`.`title` AS `itemTitle`,`b`.`evaluationMethod` AS `evaluationMethod`,`d`.`unitCost` AS `unitCost`,round((`d`.`referenceQuantity` / `d`.`referencePeriod`),2) AS `averageQuantity`,`c`.`unitCount` AS `quantity`,`d`.`measureUnit` AS `measureUnit`,round((`d`.`unitCost` * (round((`d`.`referenceQuantity` / `d`.`referencePeriod`),2) - `c`.`unitCount`)),0) AS `reduction`,round((`b`.`annualReductionTarget` / 12),0) AS `monthlyReductionTarget`,(round((`d`.`unitCost` * (round((`d`.`referenceQuantity` / `d`.`referencePeriod`),2) - `c`.`unitCount`)),0) / round((`b`.`annualReductionTarget` / 12),0)) AS `achieveRate`,`c`.`note` AS `note` from (((`organizationStructure` `a` left join `objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) join `record_materialUsage` `c` on((`b`.`id` = `c`.`objectiveID`))) join `itemData` `d` on(((`b`.`id` = `d`.`objectiveID`) and (`c`.`itemID` = `d`.`id`)))) where (`c`.`officialData` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verification_mouldTooling`
--

/*!50001 DROP VIEW IF EXISTS `verification_mouldTooling`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verification_mouldTooling` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`id` AS `objectiveID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`title` AS `objectiveTitle`,`d`.`year` AS `year`,`c`.`month` AS `month`,`b`.`evaluationMethod` AS `evaluationMethod`,`c`.`costMIT` AS `costMIT`,`d`.`amount` AS `costChina`,(`c`.`costMIT` - `d`.`amount`) AS `reduction`,round((`b`.`annualReductionTarget` / 12),0) AS `monthlyReductionTarget`,((`c`.`costMIT` - `d`.`amount`) / round((`b`.`annualReductionTarget` / 12),0)) AS `achieveRate`,if((`c`.`quantity` = 0),'本月未由大陸進口模具',concat('本月共由大陸進口 ',`c`.`quantity`,' 項模具組件')) AS `note` from (((`wasteReduction`.`organizationStructure` `a` left join `wasteReduction`.`objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) join (select `a`.`objectiveID` AS `objectiveID`,`a`.`year` AS `year`,`a`.`month` AS `month`,round(sum((`b`.`unitCost` * `a`.`quantity`)),0) AS `costMIT`,sum(`a`.`quantity`) AS `quantity`,1 AS `officialData` from (`wasteReduction`.`record_chineseMould` `a` join `wasteReduction`.`itemData` `b` on(((`a`.`objectiveID` = `b`.`objectiveID`) and (`a`.`itemID` = `b`.`id`)))) where (`a`.`officialData` = 1) group by `a`.`objectiveID`,`a`.`year`,`a`.`month`) `c` on((`b`.`id` = `c`.`objectiveID`))) join `wasteReduction`.`record_chineseToolingCost` `d` on(((`b`.`id` = `d`.`objectiveID`) and (`c`.`year` = `d`.`year`) and (`c`.`month` = `d`.`month`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verification_mouldTooling_itemize`
--

/*!50001 DROP VIEW IF EXISTS `verification_mouldTooling_itemize`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verification_mouldTooling_itemize` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`id` AS `objectiveID`,`c`.`itemID` AS `itemID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`title` AS `objectiveTitle`,`c`.`year` AS `year`,`c`.`month` AS `month`,`b`.`evaluationMethod` AS `evaluationMethod`,`d`.`title` AS `itemTitle`,round(`d`.`unitCost`,0) AS `unitCostMIT`,`c`.`quantity` AS `quantity`,`d`.`measureUnit` AS `measureUnit`,round((`d`.`unitCost` * `c`.`quantity`),0) AS `costMIT` from (((`organizationStructure` `a` left join `objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) join `record_chineseMould` `c` on((`b`.`id` = `c`.`objectiveID`))) join `itemData` `d` on(((`c`.`objectiveID` = `d`.`objectiveID`) and (`c`.`itemID` = `d`.`id`)))) where (`c`.`officialData` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verification_operation`
--

/*!50001 DROP VIEW IF EXISTS `verification_operation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verification_operation` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`id` AS `objectiveID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`title` AS `objectiveTitle`,`c`.`year` AS `year`,`c`.`month` AS `month`,`d`.`title` AS `itemTitle`,`b`.`evaluationMethod` AS `evaluationMethod`,`d`.`unitCost` AS `unitCost`,(`d`.`referenceQuantity` / `d`.`referencePeriod`) AS `averageTimeSpent`,`c`.`timeSpent` AS `timeSpent`,round((`d`.`unitCost` * ((`d`.`referenceQuantity` / `d`.`referencePeriod`) - `c`.`timeSpent`)),0) AS `reduction`,round((`b`.`annualReductionTarget` / 12),0) AS `monthlyReductionTarget`,(round((`d`.`unitCost` * ((`d`.`referenceQuantity` / `d`.`referencePeriod`) - `c`.`timeSpent`)),0) / round((`b`.`annualReductionTarget` / 12),0)) AS `achieveRate`,`c`.`note` AS `note` from (((`organizationStructure` `a` left join `objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) join `record_operation` `c` on((`b`.`id` = `c`.`objectiveID`))) join `itemData` `d` on((`b`.`id` = `d`.`objectiveID`))) where (`c`.`officialData` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verification_recycle`
--

/*!50001 DROP VIEW IF EXISTS `verification_recycle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verification_recycle` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`id` AS `objectiveID`,`c`.`itemID` AS `itemID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`title` AS `objectiveTitle`,`c`.`year` AS `year`,`c`.`month` AS `month`,`d`.`title` AS `itemTitle`,`b`.`evaluationMethod` AS `evaluationMethod`,`d`.`unitCost` AS `unitCost`,`d`.`recycleCost` AS `recycleCost`,`c`.`unitCount` AS `quantity`,round(((`d`.`unitCost` - `d`.`recycleCost`) * `c`.`unitCount`),0) AS `reduction`,round((`b`.`annualReductionTarget` / 12),0) AS `monthlyReductionTarget`,(round(((`d`.`unitCost` - `d`.`recycleCost`) * `c`.`unitCount`),0) / round((`b`.`annualReductionTarget` / 12),0)) AS `achieveRate`,`c`.`note` AS `note` from (((`organizationStructure` `a` left join `objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) join `record_recycle` `c` on((`b`.`id` = `c`.`objectiveID`))) join `itemData` `d` on(((`b`.`id` = `d`.`objectiveID`) and (`c`.`itemID` = `d`.`id`)))) where (`c`.`officialData` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verification_scrap`
--

/*!50001 DROP VIEW IF EXISTS `verification_scrap`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verification_scrap` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`id` AS `objectiveID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`title` AS `objectiveTitle`,`c`.`year` AS `year`,`c`.`month` AS `month`,`b`.`evaluationMethod` AS `evaluationMethod`,`c`.`quantity` AS `quantity`,round((`d`.`referenceAmount` / `d`.`referencePeriod`),0) AS `averageScrapCost`,`c`.`scrapCost` AS `scrapCost`,(round((`d`.`referenceAmount` / `d`.`referencePeriod`),0) - `c`.`scrapCost`) AS `reduction`,round((`b`.`annualReductionTarget` / 12),0) AS `monthlyReductionTarget`,((round((`d`.`referenceAmount` / `d`.`referencePeriod`),0) - `c`.`scrapCost`) / round((`b`.`annualReductionTarget` / 12),0)) AS `achieveRate`,concat('本月共計 ',`c`.`recordCount`,' 筆報廢記錄') AS `note` from (((`wasteReduction`.`organizationStructure` `a` left join `wasteReduction`.`objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) join (select `wasteReduction`.`record_scrap`.`objectiveID` AS `objectiveID`,`wasteReduction`.`record_scrap`.`year` AS `year`,`wasteReduction`.`record_scrap`.`month` AS `month`,sum(`wasteReduction`.`record_scrap`.`quantity`) AS `quantity`,sum(round((`wasteReduction`.`record_scrap`.`productionCost` * `wasteReduction`.`record_scrap`.`quantity`),0)) AS `scrapCost`,count(0) AS `recordCount`,`wasteReduction`.`record_scrap`.`officialData` AS `officialData` from `wasteReduction`.`record_scrap` where (`wasteReduction`.`record_scrap`.`officialData` = 1) group by `wasteReduction`.`record_scrap`.`objectiveID`,`wasteReduction`.`record_scrap`.`year`,`wasteReduction`.`record_scrap`.`month`) `c` on((`b`.`id` = `c`.`objectiveID`))) join `wasteReduction`.`itemData` `d` on((`b`.`id` = `d`.`objectiveID`))) where (`c`.`officialData` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verification_scrap_itemize`
--

/*!50001 DROP VIEW IF EXISTS `verification_scrap_itemize`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verification_scrap_itemize` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`id` AS `objectiveID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`title` AS `objectiveTitle`,`c`.`year` AS `year`,`c`.`month` AS `month`,`b`.`evaluationMethod` AS `evaluationMethod`,cast(`c`.`recordDate` as date) AS `recordDate`,`c`.`itemizeIndex` AS `itemizeIndex`,`c`.`productReference` AS `productReference`,`c`.`productionCost` AS `productionCost`,`c`.`quantity` AS `quantity`,round((`c`.`productionCost` * `c`.`quantity`),0) AS `scrapCost`,`c`.`note` AS `note` from ((`organizationStructure` `a` left join `objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) join `record_scrap` `c` on((`b`.`id` = `c`.`objectiveID`))) where (`c`.`officialData` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verification_severance`
--

/*!50001 DROP VIEW IF EXISTS `verification_severance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verification_severance` AS select `a`.`divisionID` AS `divisionID`,`a`.`departmentID` AS `departmentID`,`b`.`id` AS `objectiveID`,`a`.`divisionTitle` AS `divisionTitle`,`a`.`departmentTitle` AS `departmentTitle`,`b`.`title` AS `objectiveTitle`,`c`.`year` AS `year`,`c`.`month` AS `month`,`b`.`evaluationMethod` AS `evaluationMethod`,`d`.`averageWage` AS `averageLocalWorkerWage`,`d`.`initialCount` AS `initialLocalWorkerCount`,`c`.`staffCount` AS `localWorkerCount`,`f`.`averageWage` AS `averageForeignWorkerWage`,`f`.`initialCount` AS `initialForeignWorkerCount`,`e`.`staffCount` AS `foreignWorkerCount`,(`c`.`severanceCost` + `e`.`severanceCost`) AS `severanceCost`,((((`d`.`averageWage` * (`d`.`initialCount` - `c`.`staffCount`)) + (`f`.`averageWage` * (`f`.`initialCount` - `e`.`staffCount`))) - `c`.`severanceCost`) - `e`.`severanceCost`) AS `reduction`,round((`b`.`annualReductionTarget` / 12),0) AS `monthlyReductionTarget`,(((((`d`.`averageWage` * (`d`.`initialCount` - `c`.`staffCount`)) + (`f`.`averageWage` * (`f`.`initialCount` - `e`.`staffCount`))) - `c`.`severanceCost`) - `e`.`severanceCost`) / round((`b`.`annualReductionTarget` / 12),0)) AS `achieveRate`,if((isnull(`c`.`note`) and isnull(`e`.`note`)),NULL,if(((`c`.`note` is not null) and isnull(`e`.`note`)),`c`.`note`,if((isnull(`c`.`note`) and (`e`.`note` is not null)),`e`.`note`,concat('<pre>',`c`.`note`,'</pre>','<pre>',`e`.`note`,'</pre>')))) AS `note` from (((((`organizationStructure` `a` left join `objective` `b` on((`a`.`departmentID` = `b`.`departmentID`))) join `record_severance` `c` on(((`b`.`id` = `c`.`objectiveID`) and (`c`.`foreignStatus` = 0) and (`c`.`officialData` = 1)))) join `staffInfo` `d` on(((`a`.`departmentID` = `d`.`departmentID`) and (`d`.`foreignStatus` = 0)))) left join `record_severance` `e` on(((`b`.`id` = `e`.`objectiveID`) and (`c`.`year` = `e`.`year`) and (`c`.`month` = `e`.`month`) and (`e`.`foreignStatus` = 1) and (`c`.`officialData` = 1)))) left join `staffInfo` `f` on(((`a`.`departmentID` = `f`.`departmentID`) and (`f`.`foreignStatus` = 1)))) where (`c`.`officialData` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-08 12:45:58
