-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: floricultura286
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `almoxarifado`
--

DROP TABLE IF EXISTS `almoxarifado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almoxarifado` (
  `codAlmoxarifado` int(11) NOT NULL,
  `local` varchar(80) NOT NULL,
  `descricao` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`codAlmoxarifado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almoxarifado`
--

LOCK TABLES `almoxarifado` WRITE;
/*!40000 ALTER TABLE `almoxarifado` DISABLE KEYS */;
/*!40000 ALTER TABLE `almoxarifado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `codCliente` int(11) NOT NULL,
  `nomeCliente` varchar(80) NOT NULL,
  `cpf` bigint(20) NOT NULL,
  PRIMARY KEY (`codCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estocado`
--

DROP TABLE IF EXISTS `estocado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estocado` (
  `idEstocado` int(11) NOT NULL,
  `codAlmoxarifado` int(11) NOT NULL,
  `codProduto` int(11) NOT NULL,
  PRIMARY KEY (`idEstocado`),
  KEY `fkcodAlmo` (`codAlmoxarifado`),
  KEY `fkcodProd` (`codProduto`),
  CONSTRAINT `fkcodAlmo` FOREIGN KEY (`codAlmoxarifado`) REFERENCES `almoxarifado` (`codAlmoxarifado`),
  CONSTRAINT `fkcodProd` FOREIGN KEY (`codProduto`) REFERENCES `produto` (`codProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estocado`
--

LOCK TABLES `estocado` WRITE;
/*!40000 ALTER TABLE `estocado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estocado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornece`
--

DROP TABLE IF EXISTS `fornece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornece` (
  `numeroNFEntrada` int(11) NOT NULL,
  `data` date NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `codProduto` int(11) DEFAULT NULL,
  `cnpj` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`numeroNFEntrada`),
  KEY `fkcodProdF` (`codProduto`),
  KEY `fkcodCnF` (`cnpj`),
  CONSTRAINT `fkcodCnF` FOREIGN KEY (`cnpj`) REFERENCES `fornecedor` (`cnpj`),
  CONSTRAINT `fkcodProdF` FOREIGN KEY (`codProduto`) REFERENCES `produto` (`codProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornece`
--

LOCK TABLES `fornece` WRITE;
/*!40000 ALTER TABLE `fornece` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `cnpj` bigint(20) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  PRIMARY KEY (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `codProduto` int(11) NOT NULL,
  `nomeProduto` varchar(80) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venda` (
  `numeroNFSaida` int(11) NOT NULL,
  `data` date NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `codProduto` int(11) DEFAULT NULL,
  `codCliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`numeroNFSaida`),
  KEY `fkcodProdV` (`codProduto`),
  KEY `fkcodCliV` (`codCliente`),
  CONSTRAINT `fkcodCliV` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`codCliente`),
  CONSTRAINT `fkcodProdV` FOREIGN KEY (`codProduto`) REFERENCES `produto` (`codProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-31 14:24:46
