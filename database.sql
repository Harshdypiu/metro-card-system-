CREATE DATABASE  IF NOT EXISTS `metro_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `metro_system`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: metro_system
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Dumping data for table `journeys`
--

LOCK TABLES `journeys` WRITE;
/*!40000 ALTER TABLE `journeys` DISABLE KEYS */;
INSERT INTO `journeys` VALUES (1,1,23,37,35,52),(2,1,23,37,35,52),(3,1,23,37,35,52);
/*!40000 ALTER TABLE `journeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `metro_cards`
--

LOCK TABLES `metro_cards` WRITE;
/*!40000 ALTER TABLE `metro_cards` DISABLE KEYS */;
INSERT INTO `metro_cards` VALUES (1,'DL12345601',290.00,'Amit Sharma'),(2,'DL12345602',300.00,'Priya Verma'),(3,'DL12345603',450.00,'Rajesh Kumar'),(4,'DL12345604',600.00,'Sneha Gupta'),(5,'DL12345605',200.00,'Vikram Singh'),(6,'DL12345606',350.00,'Anjali Mehta'),(7,'DL12345607',400.00,'Rohit Joshi'),(8,'DL12345608',550.00,'Neha Patel'),(9,'DL12345609',250.00,'Suresh Yadav'),(10,'DL12345610',300.00,'Pooja Sinha'),(11,'DL12345611',150.00,'Kunal Bansal'),(12,'DL12345612',450.00,'Manisha Rao'),(13,'DL12345613',600.00,'Ravi Reddy'),(14,'DL12345614',500.00,'Aishwarya Nair'),(15,'DL12345615',400.00,'Deepak Desai'),(16,'DL12345616',550.00,'Meera Shetty'),(17,'DL12345617',200.00,'Nikhil Thakur'),(18,'DL12345618',350.00,'Swati Kulkarni'),(19,'DL12345619',300.00,'Rahul Pandey'),(20,'DL12345620',450.00,'Divya Iyer'),(21,'DL12345621',400.00,'Sandeep Ghosh'),(22,'DL12345622',600.00,'Bhavna Singh'),(23,'DL12345623',250.00,'Arjun Chawla'),(24,'DL12345624',350.00,'Lakshmi Menon'),(25,'DL12345625',500.00,'Vivek Agarwal'),(26,'DL12345626',300.00,'Rekha Bhardwaj'),(27,'DL12345627',450.00,'Rohini Mishra'),(28,'DL12345628',150.00,'Rishi Jain'),(29,'DL12345629',500.00,'Ishita Malhotra'),(30,'DL12345630',350.00,'Ankit Saxena'),(31,'DL12345631',300.00,'Pallavi Sen'),(32,'DL12345632',400.00,'Gaurav Kapoor'),(33,'DL12345633',550.00,'Snehal Deshmukh'),(34,'DL12345634',200.00,'Kiran Chauhan'),(35,'DL12345635',450.00,'Harshita Dubey'),(36,'DL12345636',600.00,'Siddharth Shukla'),(37,'DL12345637',500.00,'Neeraj Malviya'),(38,'DL12345638',350.00,'Ritika Tiwari'),(39,'DL12345639',300.00,'Tarun Kohli'),(40,'DL12345640',550.00,'Alok Varma');
/*!40000 ALTER TABLE `metro_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `station_travel_times`
--

LOCK TABLES `station_travel_times` WRITE;
/*!40000 ALTER TABLE `station_travel_times` DISABLE KEYS */;
INSERT INTO `station_travel_times` VALUES (1,2,3),(2,1,3),(2,3,2),(3,2,2),(3,4,3),(4,3,3),(4,5,4),(5,4,4),(5,6,3),(6,5,3),(6,7,2),(7,6,2),(7,8,3),(8,7,3),(8,9,4),(9,8,4),(9,10,5),(10,9,5),(10,11,3),(11,10,3),(11,12,4),(12,11,4),(12,13,2),(13,12,2),(13,14,3),(14,13,3),(14,15,2),(15,14,2),(15,16,4),(16,15,4),(16,17,3),(17,16,3),(17,18,2),(18,17,2),(18,19,4),(19,18,4),(19,20,3),(20,19,3),(20,21,4),(21,20,4),(21,22,3),(22,21,3),(22,23,2),(23,22,2),(23,24,4),(24,23,4),(24,25,3),(25,24,3),(25,26,5),(26,25,5),(26,27,3),(27,26,3),(27,28,4),(28,27,4),(28,29,5),(29,28,5),(29,30,4),(30,29,4),(30,31,3),(31,30,3),(31,32,4),(32,31,4),(32,33,3),(33,32,3),(33,34,2),(34,33,2),(34,35,3),(35,34,3),(35,36,4),(36,35,4),(36,37,5),(37,36,5);
/*!40000 ALTER TABLE `station_travel_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (5,'Adarsh Nagar'),(23,'AIIMS'),(32,'Arjangarh'),(6,'Azadpur'),(18,'Central Secretariat'),(13,'Chandni Chowk'),(14,'Chawri Bazar'),(29,'Chhatarpur'),(11,'Civil Lines'),(31,'Ghitorni'),(24,'Green Park'),(8,'GTB Nagar'),(33,'Guru Dronacharya'),(3,'Haiderpur Badli Mor'),(25,'Hauz Khas'),(37,'HUDA City Centre'),(36,'IFFCO Chowk'),(22,'INA'),(4,'Jahangirpuri'),(21,'Jor Bagh'),(12,'Kashmere Gate'),(20,'Lok Kalyan Marg'),(26,'Malviya Nagar'),(35,'MG Road'),(7,'Model Town'),(15,'New Delhi'),(17,'Patel Chowk'),(28,'Qutab Minar'),(16,'Rajiv Chowk'),(2,'Rohini Sector 18'),(27,'Saket'),(1,'Samaypur Badli'),(34,'Sikandarpur'),(30,'Sultanpur'),(19,'Udyog Bhawan'),(10,'Vidhan Sabha'),(9,'Vishwavidyalaya');
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-11  0:31:55
