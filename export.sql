-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: db_proj
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `friend_requests_list`
--

DROP TABLE IF EXISTS `friend_requests_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend_requests_list` (
  `id_request` int(11) NOT NULL AUTO_INCREMENT,
  `id_from` int(11) NOT NULL,
  `id_to` int(11) NOT NULL,
  PRIMARY KEY (`id_request`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests_list`
--

LOCK TABLES `friend_requests_list` WRITE;
/*!40000 ALTER TABLE `friend_requests_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `friend_requests_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `importance_list`
--

DROP TABLE IF EXISTS `importance_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `importance_list` (
  `id_importance` int(11) NOT NULL AUTO_INCREMENT,
  `importance_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_importance`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `importance_list`
--

LOCK TABLES `importance_list` WRITE;
/*!40000 ALTER TABLE `importance_list` DISABLE KEYS */;
INSERT INTO `importance_list` VALUES (1,'не очень важно'),(2,'важно'),(3,'очень важно');
/*!40000 ALTER TABLE `importance_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_list`
--

DROP TABLE IF EXISTS `status_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_list` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_list`
--

LOCK TABLES `status_list` WRITE;
/*!40000 ALTER TABLE `status_list` DISABLE KEYS */;
INSERT INTO `status_list` VALUES (1,'не начато'),(2,'в процессе'),(3,'закончено');
/*!40000 ALTER TABLE `status_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_list`
--

DROP TABLE IF EXISTS `tasks_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks_list` (
  `id_task` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_list`
--

LOCK TABLES `tasks_list` WRITE;
/*!40000 ALTER TABLE `tasks_list` DISABLE KEYS */;
INSERT INTO `tasks_list` VALUES (1,'помыть посуду'),(2,'сделать домашку'),(3,'приготовить ужин'),(4,'записаться к стоматологу'),(5,'вырезать снежинку'),(6,'Отметить день рожденья'),(7,'Защитить проект'),(8,'написать письмо научнику'),(9,'вылечиться'),(10,'связать шарф'),(11,'посадить 7 розовых кустов'),(12,'перебрать 5 мешков фасоли'),(13,'намолоть кофе на 7 недель'),(14,'выбелить кухню'),(15,'познать самое себя'),(16,'выполоть грядки'),(17,'вымыть окна'),(18,'натереть полы');
/*!40000 ALTER TABLE `tasks_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_relations`
--

DROP TABLE IF EXISTS `user_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_relations` (
  `id_user_relation` int(11) NOT NULL AUTO_INCREMENT,
  `id1` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  PRIMARY KEY (`id_user_relation`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_relations`
--

LOCK TABLES `user_relations` WRITE;
/*!40000 ALTER TABLE `user_relations` DISABLE KEYS */;
INSERT INTO `user_relations` VALUES (1,1,2),(2,2,1),(3,3,1),(4,1,3),(5,2,3),(6,3,2),(7,2,4),(8,4,2),(9,4,5),(10,5,4),(11,3,5),(12,5,3);
/*!40000 ALTER TABLE `user_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tasks`
--

DROP TABLE IF EXISTS `user_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tasks` (
  `id_user_task` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `id_importance` int(11) NOT NULL,
  PRIMARY KEY (`id_user_task`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tasks`
--

LOCK TABLES `user_tasks` WRITE;
/*!40000 ALTER TABLE `user_tasks` DISABLE KEYS */;
INSERT INTO `user_tasks` VALUES (1,1,5,2,3),(2,2,5,3,3),(3,3,6,3,3),(4,1,7,2,3),(6,4,8,1,2),(7,2,7,2,3),(8,1,9,1,3),(9,1,10,3,1),(10,5,11,2,3),(11,5,12,1,3),(12,5,13,1,1),(13,5,14,3,3),(14,5,15,2,1),(15,5,16,3,2),(16,5,17,1,3),(17,5,18,3,2);
/*!40000 ALTER TABLE `user_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_list`
--

DROP TABLE IF EXISTS `users_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_list` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `friend_requests` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_list`
--

LOCK TABLES `users_list` WRITE;
/*!40000 ALTER TABLE `users_list` DISABLE KEYS */;
INSERT INTO `users_list` VALUES (1,'fishowl','йцукен',0),(2,'mcqueen','фывапро',0),(3,'ejouny','янееммясо',0),(4,'mashasu','галилеофигаро',0),(5,'cinderella','prince',0);
/*!40000 ALTER TABLE `users_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-26 16:08:54
