CREATE DATABASE  IF NOT EXISTS `db_aula_revisao` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_aula_revisao`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: db_aula_revisao
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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `categoria_id` int NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `preco` double NOT NULL,
  `custo_unit` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Monitor LED 19,5\'\' Full HD HDMI',1,'DELL','MNT-DL-831923',2300,966),(2,'Monitor Curvo 24\'\' 144Hz HDMI',1,'SAMSUNG','MNT-SS-001939',2800,980),(3,'Webcam Full HD 1080p',1,'LOGITECH','WBC-LT-934GG4',450,90),(4,'Kit Teclado + Mouse sem fio Wireless',2,'DELL','KTM-DL-041039',350,129.5),(5,'Kit Teclado + Mouse Slim Bluetooth',2,'DELL','KTM-DL-111924',280,109.2),(6,'Cadeira Gamer reclinável Azul/Laranja',3,'ALTURA','CGM-AL-9N914J',1800,540),(7,'Cadeira Gamer PC Racer Vermelha',3,'ALTURA','CGM-AL-0147FI',3100,1395),(8,'Headphone Bluetooth 2000',4,'SONY','HDP-SN-194821',600,258),(9,'Fone de Ouvido Tune T5000',4,'JBL','HDP-JB-091934',780,327.6),(10,'Microfone Condensador MC1000',5,'AKG','MIC-AK-237591',1100,275),(11,'Microfone Condensador com Tripé',5,'BLUE','MIC-BL-819455',800,344),(12,'Microfone de mesa com fio condensador',5,'BLUE','MIC-BL-761411',650,214.5),(13,'Notebook LC2100 Intel Core i5 8GB',2,'SAMSUNG','NOT-SS-918457',3400,850),(14,'Notebook Inspiron 15 5000 4GB',2,'DELL','NOT-DL-000012',3100,1209),(15,'Notebook IdeaPad RF32000',2,'DELL','NOT-DL-77164I',4200,1176),(16,'Notebook Motion Ultra 2',2,'SAMSUNG','NOT-SS-13139U',2900,1160);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-09  9:05:37
