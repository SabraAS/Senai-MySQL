CREATE DATABASE  IF NOT EXISTS `empresa` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `empresa`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: empresa
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
  `nome` varchar(60) DEFAULT NULL,
  `tel` char(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `nascimento` date NOT NULL,
  `CPF` char(14) DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Caio Cesar','(21)6969-6969','taldobrabo@email.com','2000-06-01','123456789-10'),(14,'Caio Cesar','(21)6996-6996','obrabo@email.com','2000-06-01',NULL),(15,'Paolo Guerrero',NULL,'elhombre@email.com','1999-09-09',NULL),(16,'Diego Ribas',NULL,'homao@email.com','1999-10-10',NULL),(17,'Mano Brown','(11)1570-1510','vidaloka@email.com','1999-01-02',NULL),(18,'Naruto Uzumaki','(1)9999-8888',NULL,'2000-06-01',NULL),(21,'Sasuke Uchiha','(2)1111-2222',NULL,'1998-02-03',NULL),(22,'KL Jay','(11)1570-9991','vidaloka2@email.co','1979-11-22',NULL),(23,'Ivete Sangalo','(11)1870-9921','arere@email.co','1999-11-22',NULL),(24,'Rennan da Penha','(11)7777-9921','passin@email.co','2000-11-22',NULL),(25,'FP do Trem Bala','(11)7227-9921','gostozin@email.co','2000-11-25',NULL),(26,'Claudia Leite','(99)9890-7642','oxente@email.com','1999-04-02',NULL),(27,'Rick Sanchez','(01)8547-9072','wabalub@email.com','1959-07-05',NULL),(28,'Morty Sanchez','(01)3547-9572','dalubalub@email.com','2002-02-08',NULL),(29,'Baco Blues','(99)0999-0999','disgraca@email.com','2017-04-07',NULL),(30,'Diomedes Chinaski','(88)0888-0888','aprendiz@email.com','2017-04-08',NULL),(31,'Abebe Bikila','(21)7770-0777','flow@email.com','2017-07-07',NULL),(32,'Flow Zidane','(77)7770-0777','nectar@email.com','2017-07-17',NULL),(33,'Jonas Chagas','(77)7770-7770','profeta@email.com','2016-07-19',NULL),(34,'Clara Lima','(77)7770-7779','originalge@email.com','2016-07-20',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `codfun` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `depto` char(2) NOT NULL,
  `funcao` char(20) NOT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `admissao` date DEFAULT NULL,
  PRIMARY KEY (`codfun`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Luana Lisboa','A1','Gerente',14850.50,'2006-01-21'),(2,'Suelen Barbosa','A1','Pedagoga',7700.00,'2007-01-21'),(3,'Andrei Gomes','A1','Tec Educação',3520.00,'2007-02-21'),(6,'Adelaide','A3','Analista Adm',4400.00,'2008-08-11'),(7,'Jair','A3','Porteiro',1650.00,'2012-04-11'),(8,'Jorge','A3','Porteiro',1650.00,'2010-09-11'),(9,'Ferreira','A3','Porteiro',1650.00,'2015-08-11'),(11,'carlos','B1','Impressor',2750.00,'2017-10-17'),(12,'carlos','B1','Tec Offset',3080.00,'2009-10-17'),(13,'Norberto','B2','Contador',6160.00,'2016-10-17'),(14,'Agnalda','B1','Supervisor',9020.00,'2014-09-10'),(15,'Clarice','A1','Aux Administrativo',2420.00,'2014-09-10');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `morto`
--

DROP TABLE IF EXISTS `morto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `morto` (
  `codfun` int(11) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `depto` char(2) DEFAULT NULL,
  `funcao` char(20) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `admissao` date DEFAULT NULL,
  PRIMARY KEY (`codfun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `morto`
--

LOCK TABLES `morto` WRITE;
/*!40000 ALTER TABLE `morto` DISABLE KEYS */;
INSERT INTO `morto` VALUES (10,'Bernardo','B1','Chefe',8800.00,'2015-08-11');
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

-- Dump completed on 2017-10-24 16:29:15
