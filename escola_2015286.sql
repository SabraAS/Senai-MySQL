-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: escola_2015286
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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `Matricula` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `Telefone` varchar(11) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Mateus','21598746321','QR','mase@email.com'),(2,'Lucas','21487963147','WR','luse@email.com'),(3,'Mariah','21440963147','ER','mhse@email.com'),(4,'Isaac','21940963147','RR','isse@email.com'),(5,'Joao Pedro','21940463177','TR','jpse@email.com'),(6,'Eduardo','21928463177','YR','edse@email.com'),(7,'Amanda','21926463157','UR','amse@email.com'),(8,'Daniel','22826463157','IR','dase@email.com'),(9,'Joao Marcelo','2282642157','OR','jmse@email.com'),(10,'Pedro Santos','2281642197','PR','psse@email.com');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `Codigo_curso` int(11) NOT NULL,
  `Nome` varchar(20) DEFAULT NULL,
  `Carga_Horaria` int(4) DEFAULT NULL,
  `Preco` float DEFAULT NULL,
  `Pre_Requisito` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Codigo_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1001,'mangahigh',180,600,NULL),(1002,'TI',200,600,'ensino medio');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico` (
  `Codigo_historico` int(11) NOT NULL,
  `Nota` float DEFAULT NULL,
  `Frequencia` int(4) DEFAULT NULL,
  `Codigo_Turma` int(11) DEFAULT NULL,
  `Matricula` int(11) DEFAULT NULL,
  PRIMARY KEY (`Codigo_historico`),
  KEY `Codigo_Turma` (`Codigo_Turma`),
  KEY `Matricula` (`Matricula`),
  CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`Codigo_Turma`) REFERENCES `turma` (`Codigo_Turma`),
  CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`Matricula`) REFERENCES `aluno` (`Matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrutores`
--

DROP TABLE IF EXISTS `instrutores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrutores` (
  `Codigo_instrutor` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Telefone` varchar(11) DEFAULT NULL,
  `Data_Admissao` date DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Codigo_instrutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrutores`
--

LOCK TABLES `instrutores` WRITE;
/*!40000 ALTER TABLE `instrutores` DISABLE KEYS */;
INSERT INTO `instrutores` VALUES (952,'Nilson','21958746321','2014-01-26',NULL),(953,'Heusa','21958746347','2014-02-26','hase@email.com'),(954,'Elaine','21978746347','2014-02-12','else@email.com'),(955,'Giovanni','21978046347','2014-01-02','gise@email.com');
/*!40000 ALTER TABLE `instrutores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turma` (
  `Codigo_Turma` int(11) NOT NULL,
  `Data_Inicio` date DEFAULT NULL,
  `Data_Fim` date DEFAULT NULL,
  `Codigo_curso` int(11) DEFAULT NULL,
  `Codigo_instrutor` int(11) DEFAULT NULL,
  PRIMARY KEY (`Codigo_Turma`),
  KEY `Codigo_curso` (`Codigo_curso`),
  KEY `Codigo_instrutor` (`Codigo_instrutor`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`Codigo_curso`) REFERENCES `cursos` (`Codigo_curso`),
  CONSTRAINT `turma_ibfk_2` FOREIGN KEY (`Codigo_instrutor`) REFERENCES `instrutores` (`Codigo_instrutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-19 16:53:37
