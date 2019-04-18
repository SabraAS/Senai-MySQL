-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: cursojucabala
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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunos` (
  `matricula` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` char(14) NOT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'miguel','(21) 9958-9412','RL','migleka@email.com');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `codigo_curso` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `carga_horaria` char(5) NOT NULL,
  `preco` float NOT NULL,
  `pre_requisito` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historicos`
--

DROP TABLE IF EXISTS `historicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historicos` (
  `codigo_historico` int(11) NOT NULL,
  `nota` float NOT NULL,
  `frequencia` int(4) NOT NULL,
  `codigo_turma` int(11) NOT NULL,
  `matricula` int(11) NOT NULL,
  PRIMARY KEY (`codigo_historico`),
  KEY `fkhct` (`codigo_turma`),
  KEY `fkhm` (`matricula`),
  CONSTRAINT `fkhct` FOREIGN KEY (`codigo_turma`) REFERENCES `turmas` (`codigo_turma`),
  CONSTRAINT `fkhm` FOREIGN KEY (`matricula`) REFERENCES `alunos` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historicos`
--

LOCK TABLES `historicos` WRITE;
/*!40000 ALTER TABLE `historicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `historicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrutores`
--

DROP TABLE IF EXISTS `instrutores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrutores` (
  `codigo_instrutor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` char(14) NOT NULL,
  `data_admissao` date NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo_instrutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrutores`
--

LOCK TABLES `instrutores` WRITE;
/*!40000 ALTER TABLE `instrutores` DISABLE KEYS */;
/*!40000 ALTER TABLE `instrutores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turmas`
--

DROP TABLE IF EXISTS `turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turmas` (
  `codigo_turma` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `codigo_instrutor` int(11) NOT NULL,
  `codigo_curso` int(11) NOT NULL,
  PRIMARY KEY (`codigo_turma`),
  KEY `fktci` (`codigo_instrutor`),
  KEY `fktcs` (`codigo_curso`),
  CONSTRAINT `fktci` FOREIGN KEY (`codigo_instrutor`) REFERENCES `instrutores` (`codigo_instrutor`),
  CONSTRAINT `fktcs` FOREIGN KEY (`codigo_curso`) REFERENCES `cursos` (`codigo_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turmas`
--

LOCK TABLES `turmas` WRITE;
/*!40000 ALTER TABLE `turmas` DISABLE KEYS */;
/*!40000 ALTER TABLE `turmas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-05 16:51:57
