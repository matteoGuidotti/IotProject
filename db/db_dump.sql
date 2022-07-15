-- MySQL dump 10.13  Distrib 5.7.38, for Linux (x86_64)
--
-- Host: localhost    Database: db_ceramicKiln
-- ------------------------------------------------------
-- Server version	5.7.38-0ubuntu0.18.04.1

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
-- Table structure for table `fire_alarm`
--

DROP TABLE IF EXISTS `fire_alarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fire_alarm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `alarm` tinyint(1) NOT NULL,
  `fire_index` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fire_alarm`
--

LOCK TABLES `fire_alarm` WRITE;
/*!40000 ALTER TABLE `fire_alarm` DISABLE KEYS */;
INSERT INTO `fire_alarm` VALUES (1,'2022-07-15 10:23:01',1,0),(2,'2022-07-15 10:24:01',1,1),(3,'2022-07-15 10:25:01',1,2),(4,'2022-07-15 10:26:01',1,3),(5,'2022-07-15 10:27:01',1,4),(6,'2022-07-15 10:28:01',1,5),(7,'2022-07-15 10:29:01',1,6),(8,'2022-07-15 10:30:02',1,7),(9,'2022-07-15 10:31:02',1,8),(10,'2022-07-15 10:32:02',1,9),(11,'2022-07-15 10:33:02',1,10),(12,'2022-07-15 10:34:02',1,11),(13,'2022-07-15 10:35:02',1,12);
/*!40000 ALTER TABLE `fire_alarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oxygen`
--

DROP TABLE IF EXISTS `oxygen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oxygen` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `oxygen` double NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=778 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oxygen`
--

LOCK TABLES `oxygen` WRITE;
/*!40000 ALTER TABLE `oxygen` DISABLE KEYS */;
INSERT INTO `oxygen` VALUES (1,'2022-07-15 09:49:10',21),(2,'2022-07-15 09:49:11',20.9),(3,'2022-07-15 09:49:12',20.8),(4,'2022-07-15 09:49:13',20.7),(5,'2022-07-15 09:49:14',20.6),(6,'2022-07-15 09:49:15',20.5),(7,'2022-07-15 09:49:16',20.4),(8,'2022-07-15 09:49:17',20.3),(9,'2022-07-15 09:49:18',20.2),(10,'2022-07-15 09:49:19',20.1),(11,'2022-07-15 09:49:20',20),(12,'2022-07-15 09:49:21',19.9),(13,'2022-07-15 09:49:22',19.8),(14,'2022-07-15 09:49:23',19.7),(15,'2022-07-15 09:49:24',19.6),(16,'2022-07-15 09:49:25',19.5),(17,'2022-07-15 09:49:26',19.4),(18,'2022-07-15 09:49:27',19.3),(19,'2022-07-15 09:49:28',19.2),(20,'2022-07-15 09:49:29',19.1),(21,'2022-07-15 09:49:30',19),(22,'2022-07-15 09:49:31',18.9),(23,'2022-07-15 09:49:32',18.8),(24,'2022-07-15 09:49:33',18.7),(25,'2022-07-15 09:49:34',18.6),(26,'2022-07-15 09:49:35',18.5),(27,'2022-07-15 09:49:36',18.4),(28,'2022-07-15 09:49:37',18.3),(29,'2022-07-15 09:49:38',18.2),(30,'2022-07-15 09:49:39',18.1),(31,'2022-07-15 09:49:40',18),(32,'2022-07-15 09:49:41',17.9),(33,'2022-07-15 09:49:42',17.8),(34,'2022-07-15 09:49:43',17.7),(35,'2022-07-15 09:49:44',17.6),(36,'2022-07-15 09:49:45',17.5),(37,'2022-07-15 09:49:46',17.4),(38,'2022-07-15 09:49:47',17.3),(39,'2022-07-15 09:49:48',17.2),(40,'2022-07-15 09:49:49',17.1),(41,'2022-07-15 09:49:50',17),(42,'2022-07-15 09:49:51',16.9),(43,'2022-07-15 09:49:52',16.8),(44,'2022-07-15 09:49:53',16.7),(45,'2022-07-15 09:49:54',16.6),(46,'2022-07-15 09:49:55',16.5),(47,'2022-07-15 09:49:56',16.4),(48,'2022-07-15 09:49:57',16.3),(49,'2022-07-15 09:49:58',16.2),(50,'2022-07-15 09:49:59',16.1),(51,'2022-07-15 09:50:00',16),(52,'2022-07-15 09:50:01',15.9),(53,'2022-07-15 09:50:02',15.8),(54,'2022-07-15 09:50:03',15.7),(55,'2022-07-15 09:50:04',15.6),(56,'2022-07-15 09:50:05',15.5),(57,'2022-07-15 09:50:06',15.4),(58,'2022-07-15 09:50:07',15.3),(59,'2022-07-15 09:50:08',15.2),(60,'2022-07-15 09:50:09',15.1),(61,'2022-07-15 09:50:10',15),(62,'2022-07-15 09:50:26',14.7),(63,'2022-07-15 09:50:30',14.6),(64,'2022-07-15 09:50:36',14.5),(65,'2022-07-15 09:50:37',14.3),(66,'2022-07-15 09:50:41',14),(67,'2022-07-15 09:50:43',13.7),(68,'2022-07-15 09:50:44',13.8),(69,'2022-07-15 09:50:45',13.9),(70,'2022-07-15 09:50:46',14),(71,'2022-07-15 09:50:47',14.1),(72,'2022-07-15 09:50:48',14.2),(73,'2022-07-15 09:50:49',14.3),(74,'2022-07-15 09:50:50',14.4),(75,'2022-07-15 09:50:51',14.5),(76,'2022-07-15 09:50:52',14.6),(77,'2022-07-15 09:50:53',14.7),(78,'2022-07-15 09:50:54',14.8),(79,'2022-07-15 09:50:55',14.9),(80,'2022-07-15 09:50:56',15),(81,'2022-07-15 09:51:10',14.7),(82,'2022-07-15 09:51:11',14.4),(83,'2022-07-15 09:51:13',14.1),(84,'2022-07-15 09:51:16',13.8),(85,'2022-07-15 09:51:17',13.9),(86,'2022-07-15 09:51:18',14),(87,'2022-07-15 09:51:19',14.1),(88,'2022-07-15 09:51:20',14.2),(89,'2022-07-15 09:51:21',14.3),(90,'2022-07-15 09:51:22',14.4),(91,'2022-07-15 09:51:23',14.5),(92,'2022-07-15 09:51:24',14.6),(93,'2022-07-15 09:51:25',14.7),(94,'2022-07-15 09:51:26',14.8),(95,'2022-07-15 09:51:27',14.9),(96,'2022-07-15 09:51:28',15),(97,'2022-07-15 09:51:33',14.9),(98,'2022-07-15 09:52:19',14.8),(99,'2022-07-15 09:52:34',14.4),(100,'2022-07-15 09:53:10',14),(101,'2022-07-15 09:53:12',13.9),(102,'2022-07-15 09:53:13',14),(103,'2022-07-15 09:53:14',14.1),(104,'2022-07-15 09:53:15',14.2),(105,'2022-07-15 09:53:16',14.3),(106,'2022-07-15 09:53:17',14.4),(107,'2022-07-15 09:53:18',14.5),(108,'2022-07-15 09:53:19',14.6),(109,'2022-07-15 09:53:20',14.7),(110,'2022-07-15 09:53:21',14.8),(111,'2022-07-15 09:53:22',14.9),(112,'2022-07-15 09:53:23',15),(113,'2022-07-15 09:53:24',14.6),(114,'2022-07-15 09:53:55',14.5),(115,'2022-07-15 09:54:01',14.4),(116,'2022-07-15 09:54:15',14.2),(117,'2022-07-15 09:54:17',14.1),(118,'2022-07-15 09:54:29',13.8),(119,'2022-07-15 09:54:30',13.9),(120,'2022-07-15 09:54:31',14),(121,'2022-07-15 09:54:32',14.1),(122,'2022-07-15 09:54:33',14.2),(123,'2022-07-15 09:54:34',14.3),(124,'2022-07-15 09:54:35',14.4),(125,'2022-07-15 09:54:36',14.5),(126,'2022-07-15 09:54:37',14.6),(127,'2022-07-15 09:54:38',14.7),(128,'2022-07-15 09:54:39',14.8),(129,'2022-07-15 09:54:40',14.9),(130,'2022-07-15 09:54:41',15),(131,'2022-07-15 09:54:53',14.9),(132,'2022-07-15 09:54:54',14.6),(133,'2022-07-15 09:55:19',14.5),(134,'2022-07-15 09:55:26',14.2),(135,'2022-07-15 09:55:29',14.5),(136,'2022-07-15 09:55:31',14.3),(137,'2022-07-15 09:55:35',14.2),(138,'2022-07-15 09:55:39',13.9),(139,'2022-07-15 09:55:40',14),(140,'2022-07-15 09:55:40',14.1),(141,'2022-07-15 09:55:42',14.2),(142,'2022-07-15 09:55:43',14.3),(143,'2022-07-15 09:55:43',14.4),(144,'2022-07-15 09:55:45',14.5),(145,'2022-07-15 09:55:46',14.6),(146,'2022-07-15 09:55:47',14.7),(147,'2022-07-15 09:55:48',14.8),(148,'2022-07-15 09:55:49',14.9),(149,'2022-07-15 09:55:50',15),(150,'2022-07-15 09:55:59',14.7),(151,'2022-07-15 09:56:11',14.6),(152,'2022-07-15 09:56:15',14.3),(153,'2022-07-15 09:56:20',14),(154,'2022-07-15 09:56:30',13.8),(155,'2022-07-15 09:56:31',13.9),(156,'2022-07-15 09:56:32',14),(157,'2022-07-15 09:56:33',14.1),(158,'2022-07-15 09:56:34',14.2),(159,'2022-07-15 09:56:35',14.3),(160,'2022-07-15 09:56:36',14.4),(161,'2022-07-15 09:56:37',14.5),(162,'2022-07-15 09:56:38',14.6),(163,'2022-07-15 09:56:39',14.7),(164,'2022-07-15 09:56:40',14.8),(165,'2022-07-15 09:56:41',14.9),(166,'2022-07-15 09:56:42',15),(167,'2022-07-15 09:56:45',14.8),(168,'2022-07-15 09:57:47',14.8),(169,'2022-07-15 10:22:48',21),(170,'2022-07-15 10:22:49',21.1),(171,'2022-07-15 10:22:50',21.2),(172,'2022-07-15 10:22:51',21.3),(173,'2022-07-15 10:22:52',21.4),(174,'2022-07-15 10:22:53',21.5),(175,'2022-07-15 10:22:54',21.6),(176,'2022-07-15 10:22:55',21.7),(177,'2022-07-15 10:22:56',21.8),(178,'2022-07-15 10:22:57',21.9),(179,'2022-07-15 10:22:58',22),(180,'2022-07-15 10:22:59',22.1),(181,'2022-07-15 10:23:00',22.2),(182,'2022-07-15 10:23:01',22.3),(183,'2022-07-15 10:23:02',21.8),(184,'2022-07-15 10:23:03',21.3),(185,'2022-07-15 10:23:04',20.8),(186,'2022-07-15 10:23:05',20.3),(187,'2022-07-15 10:23:06',19.8),(188,'2022-07-15 10:23:07',19.3),(189,'2022-07-15 10:23:08',18.8),(190,'2022-07-15 10:23:09',18.3),(191,'2022-07-15 10:23:10',17.8),(192,'2022-07-15 10:23:11',17.3),(193,'2022-07-15 10:23:12',16.8),(194,'2022-07-15 10:23:13',16.3),(195,'2022-07-15 10:23:14',15.8),(196,'2022-07-15 10:23:15',15.3),(197,'2022-07-15 10:23:16',14.8),(198,'2022-07-15 10:23:17',14.3),(199,'2022-07-15 10:23:18',13.8),(200,'2022-07-15 10:23:19',13.3),(201,'2022-07-15 10:23:20',12.8),(202,'2022-07-15 10:23:21',12.3),(203,'2022-07-15 10:23:22',11.8),(204,'2022-07-15 10:23:23',11.3),(205,'2022-07-15 10:23:24',10.8),(206,'2022-07-15 10:23:25',10.3),(207,'2022-07-15 10:23:26',9.8),(208,'2022-07-15 10:23:27',9.9),(209,'2022-07-15 10:23:28',10),(210,'2022-07-15 10:23:29',10.1),(211,'2022-07-15 10:23:30',10.2),(212,'2022-07-15 10:23:31',10.3),(213,'2022-07-15 10:23:32',10.4),(214,'2022-07-15 10:23:33',10.5),(215,'2022-07-15 10:23:34',10.6),(216,'2022-07-15 10:23:35',10.7),(217,'2022-07-15 10:23:36',10.8),(218,'2022-07-15 10:23:37',10.9),(219,'2022-07-15 10:23:38',11),(220,'2022-07-15 10:23:39',11.1),(221,'2022-07-15 10:23:40',11.2),(222,'2022-07-15 10:23:41',11.3),(223,'2022-07-15 10:23:42',11.4),(224,'2022-07-15 10:23:43',11.5),(225,'2022-07-15 10:23:44',11.6),(226,'2022-07-15 10:23:45',11.7),(227,'2022-07-15 10:23:46',11.8),(228,'2022-07-15 10:23:47',11.9),(229,'2022-07-15 10:23:48',12),(230,'2022-07-15 10:23:49',12.1),(231,'2022-07-15 10:23:50',12.2),(232,'2022-07-15 10:23:51',12.3),(233,'2022-07-15 10:23:52',12.4),(234,'2022-07-15 10:23:53',12.5),(235,'2022-07-15 10:23:54',12.6),(236,'2022-07-15 10:23:55',12.7),(237,'2022-07-15 10:23:56',12.8),(238,'2022-07-15 10:23:57',12.9),(239,'2022-07-15 10:23:58',13),(240,'2022-07-15 10:23:59',13.1),(241,'2022-07-15 10:24:00',13.2),(242,'2022-07-15 10:24:01',13.3),(243,'2022-07-15 10:24:02',12.8),(244,'2022-07-15 10:24:03',12.3),(245,'2022-07-15 10:24:04',11.8),(246,'2022-07-15 10:24:05',11.3),(247,'2022-07-15 10:24:06',10.8),(248,'2022-07-15 10:24:07',10.3),(249,'2022-07-15 10:24:08',9.8),(250,'2022-07-15 10:24:09',9.9),(251,'2022-07-15 10:24:10',10),(252,'2022-07-15 10:24:11',10.1),(253,'2022-07-15 10:24:12',10.2),(254,'2022-07-15 10:24:13',10.3),(255,'2022-07-15 10:24:14',10.4),(256,'2022-07-15 10:24:15',10.5),(257,'2022-07-15 10:24:16',10.6),(258,'2022-07-15 10:24:17',10.7),(259,'2022-07-15 10:24:18',10.8),(260,'2022-07-15 10:24:19',10.9),(261,'2022-07-15 10:24:20',11),(262,'2022-07-15 10:24:21',11.1),(263,'2022-07-15 10:24:22',11.2),(264,'2022-07-15 10:24:23',11.3),(265,'2022-07-15 10:24:24',11.4),(266,'2022-07-15 10:24:25',11.5),(267,'2022-07-15 10:24:26',11.6),(268,'2022-07-15 10:24:27',11.7),(269,'2022-07-15 10:24:28',11.8),(270,'2022-07-15 10:24:29',11.9),(271,'2022-07-15 10:24:30',12),(272,'2022-07-15 10:24:31',12.1),(273,'2022-07-15 10:24:32',12.2),(274,'2022-07-15 10:24:33',12.3),(275,'2022-07-15 10:24:34',12.4),(276,'2022-07-15 10:24:35',12.5),(277,'2022-07-15 10:24:36',12.6),(278,'2022-07-15 10:24:37',12.7),(279,'2022-07-15 10:24:38',12.8),(280,'2022-07-15 10:24:39',12.9),(281,'2022-07-15 10:24:40',13),(282,'2022-07-15 10:24:41',13.1),(283,'2022-07-15 10:24:42',13.2),(284,'2022-07-15 10:24:43',13.3),(285,'2022-07-15 10:24:44',13.4),(286,'2022-07-15 10:24:45',13.5),(287,'2022-07-15 10:24:46',13.6),(288,'2022-07-15 10:24:47',13.7),(289,'2022-07-15 10:24:48',13.8),(290,'2022-07-15 10:24:49',13.9),(291,'2022-07-15 10:24:50',14),(292,'2022-07-15 10:24:51',14.1),(293,'2022-07-15 10:24:52',14.2),(294,'2022-07-15 10:24:53',14.3),(295,'2022-07-15 10:24:54',14.4),(296,'2022-07-15 10:24:55',14.5),(297,'2022-07-15 10:24:56',14.6),(298,'2022-07-15 10:24:57',14.7),(299,'2022-07-15 10:24:58',14.8),(300,'2022-07-15 10:24:59',14.9),(301,'2022-07-15 10:25:00',15),(302,'2022-07-15 10:25:01',15.1),(303,'2022-07-15 10:25:02',14.6),(304,'2022-07-15 10:25:03',14.1),(305,'2022-07-15 10:25:04',13.6),(306,'2022-07-15 10:25:05',13.1),(307,'2022-07-15 10:25:06',12.6),(308,'2022-07-15 10:25:07',12.1),(309,'2022-07-15 10:25:08',11.6),(310,'2022-07-15 10:25:09',11.1),(311,'2022-07-15 10:25:10',10.6),(312,'2022-07-15 10:25:11',10.1),(313,'2022-07-15 10:25:12',9.6),(314,'2022-07-15 10:25:13',9.7),(315,'2022-07-15 10:25:14',9.8),(316,'2022-07-15 10:25:15',9.9),(317,'2022-07-15 10:25:16',10),(318,'2022-07-15 10:25:17',10.1),(319,'2022-07-15 10:25:18',10.2),(320,'2022-07-15 10:25:19',10.3),(321,'2022-07-15 10:25:20',10.4),(322,'2022-07-15 10:25:21',10.5),(323,'2022-07-15 10:25:22',10.6),(324,'2022-07-15 10:25:23',10.7),(325,'2022-07-15 10:25:24',10.8),(326,'2022-07-15 10:25:25',10.9),(327,'2022-07-15 10:25:26',11),(328,'2022-07-15 10:25:27',11.1),(329,'2022-07-15 10:25:28',11.2),(330,'2022-07-15 10:25:29',11.3),(331,'2022-07-15 10:25:30',11.4),(332,'2022-07-15 10:25:31',11.5),(333,'2022-07-15 10:25:32',11.6),(334,'2022-07-15 10:25:33',11.7),(335,'2022-07-15 10:25:34',11.8),(336,'2022-07-15 10:25:35',11.9),(337,'2022-07-15 10:25:36',12),(338,'2022-07-15 10:25:37',12.1),(339,'2022-07-15 10:25:38',12.2),(340,'2022-07-15 10:25:39',12.3),(341,'2022-07-15 10:25:40',12.4),(342,'2022-07-15 10:25:41',12.5),(343,'2022-07-15 10:25:42',12.6),(344,'2022-07-15 10:25:43',12.7),(345,'2022-07-15 10:25:44',12.8),(346,'2022-07-15 10:25:45',12.9),(347,'2022-07-15 10:25:46',13),(348,'2022-07-15 10:25:47',13.1),(349,'2022-07-15 10:25:48',13.2),(350,'2022-07-15 10:25:49',13.3),(351,'2022-07-15 10:25:50',13.4),(352,'2022-07-15 10:25:51',13.5),(353,'2022-07-15 10:25:52',13.6),(354,'2022-07-15 10:25:53',13.7),(355,'2022-07-15 10:25:54',13.8),(356,'2022-07-15 10:25:55',13.9),(357,'2022-07-15 10:25:56',14),(358,'2022-07-15 10:25:57',14.1),(359,'2022-07-15 10:25:58',14.2),(360,'2022-07-15 10:25:59',14.3),(361,'2022-07-15 10:26:00',14.4),(362,'2022-07-15 10:26:01',14.5),(363,'2022-07-15 10:26:02',14),(364,'2022-07-15 10:26:03',13.5),(365,'2022-07-15 10:26:04',13),(366,'2022-07-15 10:26:05',12.5),(367,'2022-07-15 10:26:06',12),(368,'2022-07-15 10:26:07',11.5),(369,'2022-07-15 10:26:08',11),(370,'2022-07-15 10:26:09',10.5),(371,'2022-07-15 10:26:10',10),(372,'2022-07-15 10:26:11',10.1),(373,'2022-07-15 10:26:12',10.2),(374,'2022-07-15 10:26:13',10.3),(375,'2022-07-15 10:26:14',10.4),(376,'2022-07-15 10:26:15',10.5),(377,'2022-07-15 10:26:16',10.6),(378,'2022-07-15 10:26:17',10.7),(379,'2022-07-15 10:26:18',10.8),(380,'2022-07-15 10:26:19',10.9),(381,'2022-07-15 10:26:20',11),(382,'2022-07-15 10:26:21',11.1),(383,'2022-07-15 10:26:22',11.2),(384,'2022-07-15 10:26:23',11.3),(385,'2022-07-15 10:26:24',11.4),(386,'2022-07-15 10:26:25',11.5),(387,'2022-07-15 10:26:26',11.6),(388,'2022-07-15 10:26:27',11.7),(389,'2022-07-15 10:26:28',11.8),(390,'2022-07-15 10:26:29',11.9),(391,'2022-07-15 10:26:30',12),(392,'2022-07-15 10:26:31',12.1),(393,'2022-07-15 10:26:32',12.2),(394,'2022-07-15 10:26:33',12.3),(395,'2022-07-15 10:26:34',12.4),(396,'2022-07-15 10:26:35',12.5),(397,'2022-07-15 10:26:36',12.6),(398,'2022-07-15 10:26:37',12.7),(399,'2022-07-15 10:26:38',12.8),(400,'2022-07-15 10:26:39',12.9),(401,'2022-07-15 10:26:40',13),(402,'2022-07-15 10:26:41',13.1),(403,'2022-07-15 10:26:42',13.2),(404,'2022-07-15 10:26:43',13.3),(405,'2022-07-15 10:26:44',13.4),(406,'2022-07-15 10:26:45',13.5),(407,'2022-07-15 10:26:46',13.6),(408,'2022-07-15 10:26:47',13.7),(409,'2022-07-15 10:26:48',13.8),(410,'2022-07-15 10:26:49',13.9),(411,'2022-07-15 10:26:50',14),(412,'2022-07-15 10:26:51',14.1),(413,'2022-07-15 10:26:52',14.2),(414,'2022-07-15 10:26:53',14.3),(415,'2022-07-15 10:26:54',14.4),(416,'2022-07-15 10:26:55',14.5),(417,'2022-07-15 10:26:56',14.6),(418,'2022-07-15 10:26:57',14.7),(419,'2022-07-15 10:26:58',14.8),(420,'2022-07-15 10:26:59',14.9),(421,'2022-07-15 10:27:00',15),(422,'2022-07-15 10:27:01',15.1),(423,'2022-07-15 10:27:02',14.6),(424,'2022-07-15 10:27:03',14.1),(425,'2022-07-15 10:27:04',13.6),(426,'2022-07-15 10:27:05',13.1),(427,'2022-07-15 10:27:06',12.6),(428,'2022-07-15 10:27:07',12.1),(429,'2022-07-15 10:27:08',11.6),(430,'2022-07-15 10:27:09',11.1),(431,'2022-07-15 10:27:10',10.6),(432,'2022-07-15 10:27:11',10.1),(433,'2022-07-15 10:27:12',9.6),(434,'2022-07-15 10:27:13',9.7),(435,'2022-07-15 10:27:14',9.8),(436,'2022-07-15 10:27:15',9.9),(437,'2022-07-15 10:27:16',10),(438,'2022-07-15 10:27:17',10.1),(439,'2022-07-15 10:27:18',10.2),(440,'2022-07-15 10:27:19',10.3),(441,'2022-07-15 10:27:20',10.4),(442,'2022-07-15 10:27:21',10.5),(443,'2022-07-15 10:27:22',10.6),(444,'2022-07-15 10:27:23',10.7),(445,'2022-07-15 10:27:24',10.8),(446,'2022-07-15 10:27:25',10.9),(447,'2022-07-15 10:27:26',11),(448,'2022-07-15 10:27:27',11.1),(449,'2022-07-15 10:27:28',11.2),(450,'2022-07-15 10:27:29',11.3),(451,'2022-07-15 10:27:30',11.4),(452,'2022-07-15 10:27:31',11.5),(453,'2022-07-15 10:27:32',11.6),(454,'2022-07-15 10:27:33',11.7),(455,'2022-07-15 10:27:34',11.8),(456,'2022-07-15 10:27:35',11.9),(457,'2022-07-15 10:27:36',12),(458,'2022-07-15 10:27:37',12.1),(459,'2022-07-15 10:27:38',12.2),(460,'2022-07-15 10:27:39',12.3),(461,'2022-07-15 10:27:40',12.4),(462,'2022-07-15 10:27:41',12.5),(463,'2022-07-15 10:27:42',12.6),(464,'2022-07-15 10:27:43',12.7),(465,'2022-07-15 10:27:44',12.8),(466,'2022-07-15 10:27:45',12.9),(467,'2022-07-15 10:27:46',13),(468,'2022-07-15 10:27:47',13.1),(469,'2022-07-15 10:27:48',13.2),(470,'2022-07-15 10:27:49',13.3),(471,'2022-07-15 10:27:50',13.4),(472,'2022-07-15 10:27:51',13.5),(473,'2022-07-15 10:27:52',13.6),(474,'2022-07-15 10:27:53',13.7),(475,'2022-07-15 10:27:54',13.8),(476,'2022-07-15 10:27:55',13.9),(477,'2022-07-15 10:27:56',14),(478,'2022-07-15 10:27:57',14.1),(479,'2022-07-15 10:27:58',14.2),(480,'2022-07-15 10:27:59',14.3),(481,'2022-07-15 10:28:00',14.4),(482,'2022-07-15 10:28:01',14.5),(483,'2022-07-15 10:28:02',14),(484,'2022-07-15 10:28:03',13.5),(485,'2022-07-15 10:28:04',13),(486,'2022-07-15 10:28:05',12.5),(487,'2022-07-15 10:28:06',12),(488,'2022-07-15 10:28:07',11.5),(489,'2022-07-15 10:28:08',11),(490,'2022-07-15 10:28:09',10.5),(491,'2022-07-15 10:28:10',10),(492,'2022-07-15 10:28:11',10.1),(493,'2022-07-15 10:28:12',10.2),(494,'2022-07-15 10:28:13',10.3),(495,'2022-07-15 10:28:14',10.4),(496,'2022-07-15 10:28:15',10.5),(497,'2022-07-15 10:28:16',10.6),(498,'2022-07-15 10:28:17',10.7),(499,'2022-07-15 10:28:18',10.8),(500,'2022-07-15 10:28:19',10.9),(501,'2022-07-15 10:28:20',11),(502,'2022-07-15 10:28:21',11.1),(503,'2022-07-15 10:28:22',11.2),(504,'2022-07-15 10:28:23',11.3),(505,'2022-07-15 10:28:24',11.4),(506,'2022-07-15 10:28:25',11.5),(507,'2022-07-15 10:28:26',11.6),(508,'2022-07-15 10:28:27',11.7),(509,'2022-07-15 10:28:28',11.8),(510,'2022-07-15 10:28:29',11.9),(511,'2022-07-15 10:28:30',12),(512,'2022-07-15 10:28:31',12.1),(513,'2022-07-15 10:28:32',12.2),(514,'2022-07-15 10:28:33',12.3),(515,'2022-07-15 10:28:34',12.4),(516,'2022-07-15 10:28:35',12.5),(517,'2022-07-15 10:28:36',12.6),(518,'2022-07-15 10:28:37',12.7),(519,'2022-07-15 10:28:38',12.8),(520,'2022-07-15 10:28:39',12.9),(521,'2022-07-15 10:28:40',13),(522,'2022-07-15 10:28:41',13.1),(523,'2022-07-15 10:28:42',13.2),(524,'2022-07-15 10:28:43',13.3),(525,'2022-07-15 10:28:44',13.4),(526,'2022-07-15 10:28:45',13.5),(527,'2022-07-15 10:28:46',13.6),(528,'2022-07-15 10:28:47',13.7),(529,'2022-07-15 10:28:48',13.8),(530,'2022-07-15 10:28:49',13.9),(531,'2022-07-15 10:28:50',14),(532,'2022-07-15 10:28:51',14.1),(533,'2022-07-15 10:28:52',14.2),(534,'2022-07-15 10:28:53',14.3),(535,'2022-07-15 10:28:54',14.4),(536,'2022-07-15 10:28:55',14.5),(537,'2022-07-15 10:28:56',14.6),(538,'2022-07-15 10:28:57',14.7),(539,'2022-07-15 10:28:58',14.8),(540,'2022-07-15 10:28:59',14.9),(541,'2022-07-15 10:29:00',15),(542,'2022-07-15 10:29:01',15.1),(543,'2022-07-15 10:29:02',14.6),(544,'2022-07-15 10:29:03',14.1),(545,'2022-07-15 10:29:04',13.6),(546,'2022-07-15 10:29:05',13.1),(547,'2022-07-15 10:29:06',12.6),(548,'2022-07-15 10:29:07',12.1),(549,'2022-07-15 10:29:08',11.6),(550,'2022-07-15 10:29:09',11.1),(551,'2022-07-15 10:29:10',10.6),(552,'2022-07-15 10:29:11',10.1),(553,'2022-07-15 10:29:12',9.6),(554,'2022-07-15 10:29:13',9.7),(555,'2022-07-15 10:29:14',9.8),(556,'2022-07-15 10:29:15',9.9),(557,'2022-07-15 10:29:16',10),(558,'2022-07-15 10:29:17',10.1),(559,'2022-07-15 10:29:18',10.2),(560,'2022-07-15 10:29:19',10.3),(561,'2022-07-15 10:29:20',10.4),(562,'2022-07-15 10:29:21',10.5),(563,'2022-07-15 10:29:22',10.6),(564,'2022-07-15 10:29:23',10.7),(565,'2022-07-15 10:29:24',10.8),(566,'2022-07-15 10:29:25',10.9),(567,'2022-07-15 10:29:26',11),(568,'2022-07-15 10:29:27',11.1),(569,'2022-07-15 10:29:28',11.2),(570,'2022-07-15 10:29:29',11.3),(571,'2022-07-15 10:29:30',11.4),(572,'2022-07-15 10:29:31',11.5),(573,'2022-07-15 10:29:32',11.6),(574,'2022-07-15 10:29:33',11.7),(575,'2022-07-15 10:29:34',11.8),(576,'2022-07-15 10:29:35',11.9),(577,'2022-07-15 10:29:36',12),(578,'2022-07-15 10:29:37',12.1),(579,'2022-07-15 10:29:38',12.2),(580,'2022-07-15 10:29:39',12.3),(581,'2022-07-15 10:29:40',12.4),(582,'2022-07-15 10:29:41',12.5),(583,'2022-07-15 10:29:42',12.6),(584,'2022-07-15 10:29:43',12.7),(585,'2022-07-15 10:29:44',12.8),(586,'2022-07-15 10:29:45',12.9),(587,'2022-07-15 10:29:46',13),(588,'2022-07-15 10:29:47',13.1),(589,'2022-07-15 10:29:48',13.2),(590,'2022-07-15 10:29:49',13.3),(591,'2022-07-15 10:29:50',13.4),(592,'2022-07-15 10:29:51',13.5),(593,'2022-07-15 10:29:52',13.6),(594,'2022-07-15 10:29:53',13.7),(595,'2022-07-15 10:29:54',13.8),(596,'2022-07-15 10:29:55',13.9),(597,'2022-07-15 10:29:56',14),(598,'2022-07-15 10:29:57',14.1),(599,'2022-07-15 10:29:58',14),(600,'2022-07-15 10:29:59',13.9),(601,'2022-07-15 10:30:00',13.8),(602,'2022-07-15 10:30:01',13.7),(603,'2022-07-15 10:30:02',13.2),(604,'2022-07-15 10:30:03',12.7),(605,'2022-07-15 10:30:04',12.2),(606,'2022-07-15 10:30:05',11.7),(607,'2022-07-15 10:30:06',11.2),(608,'2022-07-15 10:30:07',10.7),(609,'2022-07-15 10:30:08',10.2),(610,'2022-07-15 10:30:09',9.7),(611,'2022-07-15 10:30:10',9.8),(612,'2022-07-15 10:30:11',9.9),(613,'2022-07-15 10:30:12',10),(614,'2022-07-15 10:30:13',10.1),(615,'2022-07-15 10:30:14',10.2),(616,'2022-07-15 10:30:15',10.3),(617,'2022-07-15 10:30:16',10.4),(618,'2022-07-15 10:30:17',10.5),(619,'2022-07-15 10:30:18',10.6),(620,'2022-07-15 10:30:19',10.7),(621,'2022-07-15 10:30:21',10.8),(622,'2022-07-15 10:30:21',10.9),(623,'2022-07-15 10:30:22',11),(624,'2022-07-15 10:30:23',11.1),(625,'2022-07-15 10:30:24',11.2),(626,'2022-07-15 10:30:25',11.3),(627,'2022-07-15 10:30:26',11.4),(628,'2022-07-15 10:30:27',11.5),(629,'2022-07-15 10:30:28',11.6),(630,'2022-07-15 10:30:30',11.7),(631,'2022-07-15 10:30:30',11.8),(632,'2022-07-15 10:30:31',11.9),(633,'2022-07-15 10:30:32',12),(634,'2022-07-15 10:31:02',11.5),(635,'2022-07-15 10:31:03',11),(636,'2022-07-15 10:31:04',10.5),(637,'2022-07-15 10:31:05',10),(638,'2022-07-15 10:31:07',9.8),(639,'2022-07-15 10:31:08',9.9),(640,'2022-07-15 10:31:10',10),(641,'2022-07-15 10:31:10',10.1),(642,'2022-07-15 10:31:11',10.2),(643,'2022-07-15 10:31:12',10.3),(644,'2022-07-15 10:31:13',10.4),(645,'2022-07-15 10:31:14',10.5),(646,'2022-07-15 10:31:15',10.6),(647,'2022-07-15 10:31:16',10.7),(648,'2022-07-15 10:31:17',10.8),(649,'2022-07-15 10:31:18',10.9),(650,'2022-07-15 10:31:20',11),(651,'2022-07-15 10:31:20',11.1),(652,'2022-07-15 10:31:21',11.2),(653,'2022-07-15 10:31:22',11.3),(654,'2022-07-15 10:31:23',11.4),(655,'2022-07-15 10:31:25',11.5),(656,'2022-07-15 10:31:25',11.6),(657,'2022-07-15 10:31:27',11.7),(658,'2022-07-15 10:31:27',11.8),(659,'2022-07-15 10:31:28',11.9),(660,'2022-07-15 10:31:29',12),(661,'2022-07-15 10:31:53',12.2),(662,'2022-07-15 10:31:53',12.1),(663,'2022-07-15 10:31:54',12),(664,'2022-07-15 10:32:03',11.5),(665,'2022-07-15 10:32:04',11),(666,'2022-07-15 10:32:04',10.5),(667,'2022-07-15 10:32:06',10),(668,'2022-07-15 10:32:10',9.9),(669,'2022-07-15 10:32:11',10),(670,'2022-07-15 10:32:12',10.1),(671,'2022-07-15 10:32:13',10.2),(672,'2022-07-15 10:32:14',10.3),(673,'2022-07-15 10:32:15',10.4),(674,'2022-07-15 10:32:16',10.5),(675,'2022-07-15 10:32:17',10.6),(676,'2022-07-15 10:32:18',10.7),(677,'2022-07-15 10:32:19',10.8),(678,'2022-07-15 10:32:20',10.9),(679,'2022-07-15 10:32:21',11),(680,'2022-07-15 10:32:22',11.1),(681,'2022-07-15 10:32:23',11.2),(682,'2022-07-15 10:32:24',11.3),(683,'2022-07-15 10:32:25',11.4),(684,'2022-07-15 10:32:26',11.5),(685,'2022-07-15 10:32:27',11.6),(686,'2022-07-15 10:32:28',11.7),(687,'2022-07-15 10:32:29',11.8),(688,'2022-07-15 10:32:30',11.9),(689,'2022-07-15 10:32:31',12),(690,'2022-07-15 10:32:37',11.8),(691,'2022-07-15 10:32:38',11.9),(692,'2022-07-15 10:32:39',12),(693,'2022-07-15 10:32:50',11.7),(694,'2022-07-15 10:32:51',11.8),(695,'2022-07-15 10:32:52',11.9),(696,'2022-07-15 10:32:53',12),(697,'2022-07-15 10:33:03',11.5),(698,'2022-07-15 10:33:04',11),(699,'2022-07-15 10:33:05',10.5),(700,'2022-07-15 10:33:06',10),(701,'2022-07-15 10:33:12',10.1),(702,'2022-07-15 10:33:13',10.2),(703,'2022-07-15 10:33:14',10.3),(704,'2022-07-15 10:33:15',10.4),(705,'2022-07-15 10:33:16',10.5),(706,'2022-07-15 10:33:17',10.6),(707,'2022-07-15 10:33:18',10.7),(708,'2022-07-15 10:33:19',10.8),(709,'2022-07-15 10:33:20',10.9),(710,'2022-07-15 10:33:21',11),(711,'2022-07-15 10:33:22',11.1),(712,'2022-07-15 10:33:23',11.2),(713,'2022-07-15 10:33:24',11.3),(714,'2022-07-15 10:33:25',11.4),(715,'2022-07-15 10:33:26',11.5),(716,'2022-07-15 10:33:27',11.6),(717,'2022-07-15 10:33:28',11.7),(718,'2022-07-15 10:33:29',11.8),(719,'2022-07-15 10:33:30',11.9),(720,'2022-07-15 10:33:31',12),(721,'2022-07-15 10:33:39',12.4),(722,'2022-07-15 10:33:40',12.3),(723,'2022-07-15 10:33:41',12.2),(724,'2022-07-15 10:33:42',12.1),(725,'2022-07-15 10:33:43',12),(726,'2022-07-15 10:33:45',11.6),(727,'2022-07-15 10:33:46',11.7),(728,'2022-07-15 10:33:47',11.8),(729,'2022-07-15 10:33:48',11.9),(730,'2022-07-15 10:33:49',12),(731,'2022-07-15 10:33:58',11.8),(732,'2022-07-15 10:33:59',11.9),(733,'2022-07-15 10:34:00',12),(734,'2022-07-15 10:34:03',11.5),(735,'2022-07-15 10:34:04',11),(736,'2022-07-15 10:34:05',10.5),(737,'2022-07-15 10:34:06',10),(738,'2022-07-15 10:34:19',9.6),(739,'2022-07-15 10:34:20',9.7),(740,'2022-07-15 10:34:21',9.8),(741,'2022-07-15 10:34:22',9.9),(742,'2022-07-15 10:34:23',10),(743,'2022-07-15 10:34:24',10.1),(744,'2022-07-15 10:34:25',10.2),(745,'2022-07-15 10:34:26',10.3),(746,'2022-07-15 10:34:27',10.4),(747,'2022-07-15 10:34:28',10.5),(748,'2022-07-15 10:34:29',10.6),(749,'2022-07-15 10:34:30',10.7),(750,'2022-07-15 10:34:31',10.8),(751,'2022-07-15 10:34:32',10.9),(752,'2022-07-15 10:34:33',11),(753,'2022-07-15 10:34:34',11.1),(754,'2022-07-15 10:34:35',11.2),(755,'2022-07-15 10:34:36',11.3),(756,'2022-07-15 10:34:37',11.4),(757,'2022-07-15 10:34:38',11.5),(758,'2022-07-15 10:34:39',11.6),(759,'2022-07-15 10:34:40',11.7),(760,'2022-07-15 10:34:41',11.8),(761,'2022-07-15 10:34:42',11.9),(762,'2022-07-15 10:34:43',12),(763,'2022-07-15 10:34:55',11.7),(764,'2022-07-15 10:34:56',11.8),(765,'2022-07-15 10:34:57',11.9),(766,'2022-07-15 10:34:58',12),(767,'2022-07-15 10:35:03',11.5),(768,'2022-07-15 10:35:04',11),(769,'2022-07-15 10:35:05',10.5),(770,'2022-07-15 10:35:06',10),(771,'2022-07-15 10:35:15',9.7),(772,'2022-07-15 10:35:16',9.8),(773,'2022-07-15 10:35:17',9.9),(774,'2022-07-15 10:35:18',10),(775,'2022-07-15 10:35:19',10.1),(776,'2022-07-15 10:35:20',10.2),(777,'2022-07-15 10:35:21',10.3);
/*!40000 ALTER TABLE `oxygen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temperature`
--

DROP TABLE IF EXISTS `temperature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temperature` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `temperature` double NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temperature`
--

LOCK TABLES `temperature` WRITE;
/*!40000 ALTER TABLE `temperature` DISABLE KEYS */;
INSERT INTO `temperature` VALUES (1,'2022-07-15 09:40:26',10),(2,'2022-07-15 09:50:14',10),(3,'2022-07-15 09:50:44',10.5),(4,'2022-07-15 09:51:14',11.5),(5,'2022-07-15 09:51:45',12.5),(6,'2022-07-15 09:52:15',13.5),(7,'2022-07-15 09:52:45',14.5),(8,'2022-07-15 09:53:15',15.5),(9,'2022-07-15 09:53:45',16.5),(10,'2022-07-15 09:54:15',17.5),(11,'2022-07-15 09:54:45',18.5),(12,'2022-07-15 09:55:16',19.5),(13,'2022-07-15 09:55:46',20),(14,'2022-07-15 09:56:17',21),(15,'2022-07-15 09:56:47',21),(16,'2022-07-15 09:57:17',20.5),(17,'2022-07-15 09:57:47',20.5),(18,'2022-07-15 10:23:39',10),(19,'2022-07-15 10:24:09',10.5),(20,'2022-07-15 10:24:39',11.5),(21,'2022-07-15 10:25:09',12),(22,'2022-07-15 10:25:39',13),(23,'2022-07-15 10:26:10',14),(24,'2022-07-15 10:26:40',15),(25,'2022-07-15 10:27:10',16),(26,'2022-07-15 10:27:40',17),(27,'2022-07-15 10:28:10',17),(28,'2022-07-15 10:28:40',17),(29,'2022-07-15 10:29:10',16.5),(30,'2022-07-15 10:29:40',16),(31,'2022-07-15 10:30:10',16),(32,'2022-07-15 10:30:40',15.5),(33,'2022-07-15 10:31:10',15),(34,'2022-07-15 10:31:40',14.5),(35,'2022-07-15 10:32:10',14),(36,'2022-07-15 10:32:40',14),(37,'2022-07-15 10:33:10',13),(38,'2022-07-15 10:33:40',14),(39,'2022-07-15 10:34:10',14.5),(40,'2022-07-15 10:34:40',15.5),(41,'2022-07-15 10:35:10',16);
/*!40000 ALTER TABLE `temperature` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-15  8:49:43
