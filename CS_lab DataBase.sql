-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: CS_lab
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `Book`
--

DROP TABLE IF EXISTS `Book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Book` (
  `bookid` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `emplid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book`
--

LOCK TABLES `Book` WRITE;
/*!40000 ALTER TABLE `Book` DISABLE KEYS */;
INSERT INTO `Book` VALUES ('1342','war and peace','3643353'),('135322','of mice and men','3643353'),('135553','1984','33523342'),('23523','bible','352353'),('2423525','macbeth','2333333');
/*!40000 ALTER TABLE `Book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Book_Authors`
--

DROP TABLE IF EXISTS `Book_Authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Book_Authors` (
  `bookid` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book_Authors`
--

LOCK TABLES `Book_Authors` WRITE;
/*!40000 ALTER TABLE `Book_Authors` DISABLE KEYS */;
INSERT INTO `Book_Authors` VALUES ('235343','Ray bradbury'),('2434','Leo tolstoy'),('252323','james Joyce'),('254324','George orwell'),('353235','Cormac Mcarthy');
/*!40000 ALTER TABLE `Book_Authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course` (
  `course_name` varchar(255) NOT NULL,
  `tile` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `cred` int DEFAULT NULL,
  `hours` int DEFAULT NULL,
  `course_tutor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES ('biology','ecology','study of ecosystems',4,16,'1323455'),('chemistry','physical chemistry','physics + chemistry',4,16,'1323425'),('computer science','mobile programming','intro to android studio or Xcode',4,16,'1323425'),('mathematics','precalculus','all the trig you forgot in highschool + limits',4,16,'1323425'),('philosophy','intro to western philosophy','a class mostly about plato',3,12,'1324325');
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `emplid` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `doh` varchar(255) DEFAULT NULL,
  `h_rate` varchar(255) DEFAULT NULL,
  `week_h` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`emplid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (123453,'mary','jane','f','123_oak_street','01-02-90','02-03-22','20.00',40,'coordinator','1234fegmail.com'),(123455,'mandy','jane','f','124_oak_street','01-02-89','02-03-20','22.00',40,'tutor','12345fegmail.com'),(132425,'mickey','jameson','m','124_pine_street','01-02-85','02-03-15','25.00',40,'tutor','r23rdf33gmail.com'),(243455,'moe','mason','m','124_cherry_street','01-02-80','02-03-19','28.00',40,'coordinator','12wfeffw3gmail.com'),(1354632,'mark','knight','m','124_lime_street','01-02-84','02-03-21','23.00',40,'coordinator','1efjakfgmail.com');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student` (
  `emplid` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tutor_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`emplid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (13252,'jenny','ramos','343 liberty street','234-432-4632','dwelkfnfwlgmail.com','2435253552'),(1345323,'jack','wells','353 independence street','234-432-2575','ewlfkjgmail.com','346534252'),(12235252,'jimmy','cash','343 oak street','123-432-4326','fewefwwnfrgmail.com','22252324252'),(12352345,'jonathan','hale','353 edge street','234-444-4326','flr23rfrgmail.com','235252343'),(12424235,'john','doe','343 maple street','234-432-4326','flewgnfrgmail.com','242534252');
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Visit`
--

DROP TABLE IF EXISTS `Visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Visit` (
  `St_id` varchar(255) NOT NULL,
  `course` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `t_in` int DEFAULT NULL,
  `t_out` int DEFAULT NULL,
  `dov` varchar(255) DEFAULT NULL,
  `R_visit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`St_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Visit`
--

LOCK TABLES `Visit` WRITE;
/*!40000 ALTER TABLE `Visit` DISABLE KEYS */;
INSERT INTO `Visit` VALUES ('3235232','sociology','social concepts',3,6,'12-30-17','project review'),('3242352','precalculus','math prior to calculus',2,4,'12-30-22','get someone to teach me everything b4 test'),('3323426','intro to psychology','Freud and other psychologists',1,3,'12-30-18','midterm review'),('335555552','Creative writing','writing techniques',4,5,'12-30-19','essay review'),('338572','physics','classical mechanics',1,4,'4-30-22','help for homework');
/*!40000 ALTER TABLE `Visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptop`
--

DROP TABLE IF EXISTS `laptop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptop` (
  `serial_number` int NOT NULL,
  `L_name` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `Lease_emplid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop`
--

LOCK TABLES `laptop` WRITE;
/*!40000 ALTER TABLE `laptop` DISABLE KEYS */;
INSERT INTO `laptop` VALUES (245323,'mark','lenovo','24352342'),(2344647,'mike','toshiba','2435235223'),(2442443,'mary','dell','24444232'),(24353223,'ted','acer','2446346'),(235232423,'melissa','apple','24434552');
/*!40000 ALTER TABLE `laptop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  8:43:42
