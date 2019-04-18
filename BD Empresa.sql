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
  `nome` varchar(60) NOT NULL,
  `telefone` char(13) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `nascimento` date NOT NULL,
  `cpf` char(14) DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Arnaldo Bueno','(21)8511-9876','abueno@email.com','1990-10-25','141.926.634-12'),(2,'Jeferspm Brandão','(21)2571-9876','jef@email.com','1990-03-05',NULL),(3,'Lucas Lixo','(21)2571-8716','luclixo@email.com','2000-05-12',NULL),(4,'João chato','(22)9971-9716','joaoc@email.com','2000-09-24',NULL),(5,'Gilberto Lueno',NULL,'natbueno@email.com','2000-10-01',NULL),(6,'John Cena','(21)8716-3617','jcena@email.com','1990-10-01',NULL),(7,'Jaime treze','(21)8720-9717','jtreze@email.com','1985-11-21',NULL),(8,'Magnus Chase','(22)8720-9717','mchase@email.com','2001-08-21',NULL),(9,'Carter Kane','(21)1220-9717','carterk@email.com','1999-08-21',NULL),(10,'Natham Bueno','(21)7314-9206','natbueno@email.com','2000-10-01',NULL),(11,'Lando Xar',NULL,'joaoc@email.com','2000-09-24',NULL),(12,'Leandro Santos','(22)1220-5417','leansan@email.com','1982-12-01',NULL),(13,'Jorge Linco','(21)5710-5417',NULL,'2010-02-09',NULL),(14,'Ayrton Bueno','(21)5710-5417','ayrtonbuen@email.com','2010-02-09',NULL),(15,'Chuck Norris','(21)5710-5417',NULL,'2010-02-09',NULL),(16,'Chico Aluro','(21)5780-0517','chliro@email.com','2012-05-16',NULL),(17,'Gabriel Sueno','(21)5782-0517','chlira@email.com','2012-05-16',NULL),(18,'Giovanni Balaciano','(21)6257-0577','balgi@email.com','1999-02-18',NULL),(19,'Pedro laciano','(21)6257-0207','alpe@email.com','1999-12-21',NULL),(20,'Urameshi Yusuke','(22)1847-9417','yuyu@email.com','1980-06-26',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `Codfun` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(40) NOT NULL,
  `Depto` char(2) NOT NULL,
  `Funcao` char(20) DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  `Admissao` date DEFAULT NULL,
  PRIMARY KEY (`Codfun`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Mateus Martins','IR','Administrador',1100.00,'2007-01-26'),(3,'João Pedro','TI','Adminstrador',1045.00,'2002-04-16'),(4,'Lucas Aiva','TI','Programador',1155.00,'2009-10-30'),(5,'Brendon Torres','TI','Criador BD',1099.99,'2004-12-30'),(6,'Giovanni Martins','TI','Analista de Sistema',2200.00,'2008-12-30'),(7,'Pedro Santos','IR','Editor',1045.00,'2007-12-30'),(8,'Pedro Gonsalves','IR','Gerente',2464.55,'2010-12-30'),(9,'João Marcelo','IR','Estagiario',660.55,'2001-12-30'),(10,'Natham Araujo','OW','Gerente',3300.00,'2000-12-30'),(11,'Felipe Simoes','OW','Desenhista',330.00,'2005-12-30'),(12,'Matheus Rocha','OW','Estagiario',220.00,'2006-12-30'),(13,'Jorge Junior','NS','Gerente',1661.00,'2006-06-25'),(14,'Rafael Augusto','NS','Estagiario',110.00,'2006-06-23'),(15,'Gabriel Stofel','NS','Contador',2200.00,'2006-08-23');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-17 16:37:41
