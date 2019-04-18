-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: empresa286
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `tel` char(13) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `nascimento` date NOT NULL,
  `cpf` char(14) DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Ayrton Bueno','(21)8511-9876','abueno@gmail.com','1990-10-25','123.487.984-15'),(2,'Inofensivo','(21)8511-9876','fofinho@gmail.com','1992-03-24','123.487.173-15'),(3,'Maria Eduarda','(21)1234-5678','dudacoutinho15@gmail.com','2001-02-15','123.487.173-20'),(4,'Maria Eduarda','(21)5678-1234','dudssilva@gmail.com','1993-03-14','123.597.173-20'),(5,'Jorge','(21)3333-2222',NULL,'2001-02-15','415.597.173-20'),(6,'Melissa','(21)2218-3970',NULL,'2011-05-12','415.201.173-20'),(7,'Ana',NULL,'aninha@gmail.com','1993-11-06','415.201.651-20'),(8,'Caio',NULL,'caiot@gmail.com','2001-12-31','415.201.691-20'),(9,'Toddy','(21)9999-2222','toddinho@gmail.com','2002-04-29','415.942.691-20'),(10,'Jeff','(21)8989-6464','jeffthekiller@gmail.com','1990-11-20','415.942.741-20'),(11,'Cristina','(21)1502-6969','Cris@gmail.com','1954-05-28','786.942.741-20'),(12,'Thaís','(21)5763-9435','tata@gmail.com','1996-01-17','786.942.747-47'),(13,'Janete','(21)6459-3267','jane@gmail.com','1937-06-22','786.513.747-47'),(14,'Isabella','(21)6767-8282','bela@gmail.com','1947-06-26','207.513.747-47'),(15,'Rosa','(21)7878-2929','florrosa@gmail.com','1965-07-21','207.513.747-56'),(16,'Rosemary','(21)5858-9784','rose@gmail.com','2012-03-23','207.513.950-56'),(17,'Paulo','(21)6967-6154','paulinho@gmail.com','1977-08-18','580.513.950-56');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `codFun` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(40) NOT NULL,
  `Depto` char(2) NOT NULL,
  `Funcao` char(20) NOT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  `Admissao` date DEFAULT NULL,
  PRIMARY KEY (`codFun`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (2,'joao','ad','programador',12100.00,'2003-07-13'),(3,'Guilherme','ad','programador',12100.00,'2007-10-20'),(4,'Maria','vd','gerente',23100.00,'2004-02-10'),(5,'Claudio','vd','gerente',23100.00,'2003-08-25'),(6,'Luan','vd','gerente',23100.00,'2002-12-05'),(7,'Eduarda','bc','analista',34100.00,'2012-09-05'),(8,'Eduarda','bc','programador',34100.00,'2001-02-15'),(9,'Beatriz','bc','programador',34100.00,'2000-03-21'),(11,'Leonardo Correia','ac','analista',34320.00,'1964-05-03'),(12,'Amanda Motta','ac','Web design',27500.00,'1970-11-17'),(14,'Amanda Araújo','bc','Supervisor',2750.00,'1970-01-27');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `morto`
--

DROP TABLE IF EXISTS `morto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `morto` (
  `codFun` int(11) NOT NULL,
  `Nome` varchar(40) DEFAULT NULL,
  `Depto` char(2) DEFAULT NULL,
  `Funcao` char(20) DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  `Admissao` date DEFAULT NULL,
  PRIMARY KEY (`codFun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `morto`
--

LOCK TABLES `morto` WRITE;
/*!40000 ALTER TABLE `morto` DISABLE KEYS */;
INSERT INTO `morto` VALUES (10,'Brendon Motta','ac','analista',22550.00,'1960-06-23');
/*!40000 ALTER TABLE `morto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-26 15:49:16
