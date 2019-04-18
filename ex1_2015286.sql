-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ex1_2015286
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `dataNascimento` date NOT NULL,
  `telFixo` char(13) NOT NULL,
  `telCelular` char(13) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `num_Turma` int(11) DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Mariah Santos','1990-08-21','(21)9248-5478','(21)9561-7841','rua visconde de abaete',301),(2,'Leandro Martins','1989-05-12','(21)9750-5478','(21)9561-4713','rua perera nunes',301),(3,'Natham Basto','2000-05-10','(21)9710-0478','(21)9701-9712','vila da pequenina',103),(4,'Nivea Carvalho','1975-10-20','(21)3286-6112','(21)9516-0571','R. Heber de Bôscoli',103),(5,'Gabriela Rabelo','2001-01-29','(21)3781-6112','(21)9871-0571','R. Engenheiro Gama lobo',202),(6,'Victoria Mota','2000-02-19','(21)3781-6152','(21)9071-0571','R. Sousa Franco',201),(7,'Heusa Souza','2000-02-19','(21)5781-6152','(21)9091-0571','R. Sen. Nabuco',103),(8,'Matheus Cornelio','1999-09-15','(21)5781-9852','(21)9091-0741','R. Correa do Oliveira',102),(9,'Kurt Stofel','1999-10-25','(21)5541-9852','(21)9014-0741','R. Torres Homem',103),(10,'Rachel Balaciano','1999-04-08','(21)5541-1242','(21)9014-8741','R. Luis Barbosa',101);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `id_Curso` int(11) NOT NULL,
  `nome_Curso` varchar(50) NOT NULL,
  PRIMARY KEY (`id_Curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'TI'),(2,'CV'),(3,'Jogos');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `especializacao` varchar(50) NOT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Will Ribeiro','Tecnico em Informatica'),(2,'Lucas Dantas','Comunicacao Visual'),(3,'Claudio Leite','Tecnico em Informatica');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turma` (
  `num_Turma` int(11) NOT NULL,
  `id_Curso` int(11) NOT NULL,
  PRIMARY KEY (`num_Turma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (101,2),(102,1),(103,3),(201,2),(202,1),(301,2);
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

-- Dump completed on 2017-09-26 15:57:37
