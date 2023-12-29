-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: disciplines
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `disciplines`
--

DROP TABLE IF EXISTS `disciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplines` (
  `discipline_id` int NOT NULL,
  `discipline_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hours` int DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `instructor_id` int DEFAULT NULL,
  `semester` int DEFAULT NULL,
  `obligation` tinyint(1) DEFAULT NULL,
  `specialty_id` int DEFAULT NULL,
  `program_id` int DEFAULT NULL,
  `distance_resource` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`discipline_id`),
  KEY `department_id` (`department_id`),
  KEY `instructor_id` (`instructor_id`),
  KEY `specialty_id` (`specialty_id`),
  KEY `program_id` (`program_id`),
  CONSTRAINT `disciplines_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`),
  CONSTRAINT `disciplines_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`instructor_id`),
  CONSTRAINT `disciplines_ibfk_3` FOREIGN KEY (`specialty_id`) REFERENCES `specialties` (`specialty_id`),
  CONSTRAINT `disciplines_ibfk_4` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplines`
--

LOCK TABLES `disciplines` WRITE;
/*!40000 ALTER TABLE `disciplines` DISABLE KEYS */;
INSERT INTO `disciplines` VALUES (1,'Англ?йська ф?лолог?я','Основи англ?йської мови та л?тератури',90,41,401,1,1,35,1,1),(2,'Методика викладання н?мецької мови','Педагог?чн? аспекти викладання н?мецької мови',60,42,402,3,1,35,1,0),(3,'Педагог?ка','Основи педагог?чної теор?ї',75,12,103,3,1,14,2,1),(4,'Психолог?я навчання','Вивчення основ психолог?ї навчання',45,12,104,2,0,14,2,1),(5,'Теоретична ф?зика','Основи теоретичної ф?зики',120,21,201,3,1,104,3,0),(6,'Квантова механ?ка','Основи квантової теор?ї',105,22,203,1,1,105,4,1),(7,'Статистична ф?зика','Статистичн? методи в ф?зиц?',75,21,204,3,0,105,4,0),(8,'Введення в матер?алознавство','Огляд основних понять та концепц?й',60,22,203,1,1,132,5,0),(9,'Електрон?ка та м?кросхемотехн?ка','Проекц?я та виробництво м?кросхем',90,22,202,2,0,171,6,0),(10,'Математичний анал?з','Диференц?альне та ?нтегральне числення',105,31,301,1,1,111,7,1),(11,'Диференц?альн? р?вняння','Основи теор?ї диференц?альних р?внянь',90,31,302,2,0,113,8,0),(12,'Геометр?я','Основи геометричних концепц?й',60,32,303,1,1,113,8,0),(13,'Об?єктно-ор?єнтоване програмування','Основи об?єктно-ор?єнтованого програмування',75,31,302,2,1,122,9,1),(14,'Бази даних','Основи роботи з базами даних',90,32,303,2,1,126,10,1),(15,'Веб-розробка','Створення веб-додатк?в',120,32,304,1,1,126,10,1),(16,'Основи тестування програмного забезпечення','Методи та засоби тестування ПЗ',90,51,501,2,1,121,11,1),(17,'Арх?тектура програмного забезпечення','Проектування арх?тектури ПЗ',120,52,502,1,1,121,11,1);
/*!40000 ALTER TABLE `disciplines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-29 16:02:37
