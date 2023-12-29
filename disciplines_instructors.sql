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
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructors` (
  `instructor_id` int NOT NULL,
  `instructor_name` varchar(255) DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`instructor_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `instructors_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES (103,'Сидорова Мар?я Петр?вна',555112233,'sidorova@example.com',12),(104,'Коваленко Олександр Васильович',111223344,'kovalenko@example.com',12),(201,'Б?лова Натал?я Олекс?ївна',444556677,'bilova@example.com',21),(202,'Кравець Олег Миколайович',111223344,'kravets@example.com',22),(203,'Жуков Михайло Андр?йович',777889900,'zhukov@example.com',21),(204,'Лисенко Людмила Серг?ївна',999001122,'lysenko@example.com',21),(301,'Марчук Анна Олег?вна',222334455,'marchuk@example.com',31),(302,'Козак Стан?слав ?горович',333445566,'kozak@example.com',31),(303,'Соловйов Серг?й Олександрович',555667788,'solovyov@example.com',32),(304,'Гриценко Галина Миколаївна',987654321,'gricenko@example.com',32),(401,'?ванов ?ван ?ванович',123456789,'ivanov@example.com',41),(402,'Петров Петро Петрович',987654321,'petrov@example.com',42),(501,'Петренко Пол?на ?гор?вна',999001122,'petrenko@example.com',51),(502,'Мельник Олесь Ярославович',112233445,'melnik@example.com',52);
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
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
