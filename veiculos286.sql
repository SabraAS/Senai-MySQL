-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: veiculos
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
-- Table structure for table `cor`
--

DROP TABLE IF EXISTS `cor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cor` (
  `codCor` int(5) NOT NULL,
  `nomeCor` varchar(80) NOT NULL,
  PRIMARY KEY (`codCor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cor`
--

LOCK TABLES `cor` WRITE;
/*!40000 ALTER TABLE `cor` DISABLE KEYS */;
INSERT INTO `cor` VALUES (1,'Preto'),(2,'Branco'),(3,'Prata'),(4,'Vermelho'),(5,'Azul');
/*!40000 ALTER TABLE `cor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `codEndereco` int(5) NOT NULL,
  `logradouro` varchar(60) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `complemento` varchar(80) DEFAULT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` char(9) NOT NULL,
  `cpf` char(15) NOT NULL,
  PRIMARY KEY (`codEndereco`),
  KEY `fkecpf` (`cpf`),
  CONSTRAINT `fkecpf` FOREIGN KEY (`cpf`) REFERENCES `responsavel` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (401,'R. Visconde de Abaete','108','bl01/ap201','Vila Isabel','Rio de Janeiro','RJ','28661080','096.928.714-36'),(402,'R. Visconde de Abaete','108','bl02/ap307','Vila Isabel','Rio de Janeiro','RJ','28661080','111.170.214-40'),(403,'R. Visconde de Abaete','108','bl01/ap608','Vila Isabel','Rio de Janeiro','RJ','28661080','125.987.548-21'),(404,'R. Visconde de Abaete','108','bl02/ap108','Vila Isabel','Rio de Janeiro','RJ','28661080','139.221.887-02'),(405,'R. Visconde de Abaete','108','bl01/ap504','Vila Isabel','Rio de Janeiro','RJ','28661080','155.224.602-70'),(406,'R. Visconde de Abaete','108','bl02/ap309','Vila Isabel','Rio de Janeiro','RJ','28661080','212.479.014-87'),(407,'R. Visconde de Abaete','108','bl01/ap702','Vila Isabel','Rio de Janeiro','RJ','28661080','244.550.027-31'),(408,'R. Visconde de Abaete','108','bl02/ap1005','Vila Isabel','Rio de Janeiro','RJ','28661080','262.000.423-51'),(409,'R. Visconde de Abaete','108','bl01/ap802','Vila Isabel','Rio de Janeiro','RJ','28661080','435.850.329-23'),(410,'R. Visconde de Abaete','108','bl02/ap901','Vila Isabel','Rio de Janeiro','RJ','28661080','512.659.014-87'),(411,'R. Visconde de Abaete','108','bl01/ap205','Vila Isabel','Rio de Janeiro','RJ','28661080','678.147.047-65'),(412,'R. São Francisco Xavier','1007',NULL,'Vila Isabel','Rio de Janeiro','RJ','8473471','842.659.014-87');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante`
--

DROP TABLE IF EXISTS `fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricante` (
  `codFabricante` int(5) NOT NULL,
  `nomeFabricante` varchar(50) NOT NULL,
  `nacionalidade` varchar(30) NOT NULL,
  PRIMARY KEY (`codFabricante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante`
--

LOCK TABLES `fabricante` WRITE;
/*!40000 ALTER TABLE `fabricante` DISABLE KEYS */;
INSERT INTO `fabricante` VALUES (11,'VW','Alema'),(12,'Fiat','Italiana'),(13,'Ford','Estado unidense'),(14,'Chevrolet','Estado unidense');
/*!40000 ALTER TABLE `fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pertence`
--

DROP TABLE IF EXISTS `pertence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pertence` (
  `idPertence` int(10) NOT NULL,
  `dataAquisicao` date NOT NULL,
  `cpf` char(15) NOT NULL,
  `placa` char(7) NOT NULL,
  PRIMARY KEY (`idPertence`),
  KEY `fkpcpf` (`cpf`),
  KEY `fkpplaca` (`placa`),
  CONSTRAINT `fkpcpf` FOREIGN KEY (`cpf`) REFERENCES `responsavel` (`cpf`),
  CONSTRAINT `fkpplaca` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pertence`
--

LOCK TABLES `pertence` WRITE;
/*!40000 ALTER TABLE `pertence` DISABLE KEYS */;
INSERT INTO `pertence` VALUES (301,'2009-06-20','096.928.714-36','DVT3258'),(302,'2010-04-02','111.170.214-40','KRT0971'),(303,'2016-04-02','125.987.548-21','NJH4250'),(304,'2013-04-02','139.221.887-02','NUR5417'),(305,'2011-10-20','155.224.602-70','NUR5870'),(306,'2009-03-20','212.479.014-87','PRC3078'),(307,'2014-11-16','244.550.027-31','QRE2341'),(308,'2015-03-24','262.000.423-51','TMI5217'),(309,'2013-02-28','435.850.329-23','TVG4810'),(310,'2017-10-18','512.659.014-87','URA4849'),(311,'2014-04-24','678.147.047-65','WBG6873'),(312,'2008-08-21','842.659.014-87','WXL0341');
/*!40000 ALTER TABLE `pertence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsavel`
--

DROP TABLE IF EXISTS `responsavel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsavel` (
  `cpf` char(15) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `habilitacao` char(20) NOT NULL,
  `dataNascimento` date NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsavel`
--

LOCK TABLES `responsavel` WRITE;
/*!40000 ALTER TABLE `responsavel` DISABLE KEYS */;
INSERT INTO `responsavel` VALUES ('096.928.714-36','Brendon Otosos','4781241892rj56470214','1988-12-22'),('111.170.214-40','Jorge Nogueira','2184265892rj14540214','1987-08-16'),('125.987.548-21','Mateus Penheiros','4875123697uf35412687','1992-06-21'),('139.221.887-02','Matheus Amaral','2184525892rj74540214','1987-05-15'),('155.224.602-70','Breno Pasos','4781236547rj56471234','1988-12-24'),('212.479.014-87','Claudia Prata','6421156140rj98215895','1986-04-25'),('244.550.027-31','Fabio Pinto','2184265839rj14540265','1987-09-04'),('262.000.423-51','Natham Teixeira','2184015892rj89540214','1987-04-20'),('435.850.329-23','Giovanni Martins','2187241892rj74270214','1988-05-15'),('512.659.014-87','Claudio Pinto','3140156140uf47345895','1987-10-10'),('678.147.047-65','João Leite','4875123147uf35874687','1999-02-28'),('842.659.014-87','Lucas Marapodi','3184123140uf47874695','1989-11-08');
/*!40000 ALTER TABLE `responsavel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone` (
  `codTelefone` int(5) NOT NULL,
  `ddd` char(2) NOT NULL,
  `numero` char(10) NOT NULL,
  `operadora` varchar(30) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `cpf` char(15) NOT NULL,
  PRIMARY KEY (`codTelefone`),
  KEY `fktcpf` (`cpf`),
  CONSTRAINT `fktcpf` FOREIGN KEY (`cpf`) REFERENCES `responsavel` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (201,'21','8741-9854','Claro','Casa','096.928.714-36'),(202,'21','98741-9854','Claro','Celular','096.928.714-36'),(203,'21','4789-1204','Tim','Casa','111.170.214-40'),(204,'21','94789-1204','Tim','Celular','111.170.214-40'),(205,'21','5461-8513','Oi','Casa','125.987.548-21'),(206,'21','95461-8513','Oi','Celular','125.987.548-21'),(207,'21','92179-0147','Nextel','Celular','139.221.887-02'),(208,'21','2179-0147','Nextel','Casa','139.221.887-02'),(209,'21','1765-6408','Claro','Casa','155.224.602-70'),(210,'21','91765-6408','Claro','Celular','155.224.602-70'),(211,'21','94617-3470','Tim','Celular','212.479.014-87'),(212,'21','4617-3470','Tim','Casa','212.479.014-87'),(213,'21','5781-2471','Oi','Casa','244.550.027-31'),(214,'21','95781-2471','Oi','Celular','244.550.027-31'),(215,'21','90134-7314','Nextel','Celular','262.000.423-51'),(216,'21','0134-7314','Nextel','Casa','262.000.423-51'),(217,'21','5471-9781','Claro','Casa','435.850.329-23'),(218,'21','95471-9781','Claro','Celular','435.850.329-23'),(219,'21','97816-5173','Tim','Celular','512.659.014-87'),(220,'21','7816-5173','Tim','Casa','512.659.014-87'),(221,'21','9423-2340','Oi','Casa','678.147.047-65'),(222,'21','99423-2340','Oi','Celular','678.147.047-65'),(223,'21','97452-3471','Claro','Celular','842.659.014-87'),(224,'21','7452-3471','Claro','Casa','842.659.014-87');
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculo` (
  `placa` char(7) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `ano` int(4) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `codFabricante` int(5) NOT NULL,
  `codCor` int(5) NOT NULL,
  PRIMARY KEY (`placa`),
  KEY `fkcodfa` (`codFabricante`),
  KEY `fkcodco` (`codCor`),
  CONSTRAINT `fkcodco` FOREIGN KEY (`codCor`) REFERENCES `cor` (`codCor`),
  CONSTRAINT `fkcodfa` FOREIGN KEY (`codFabricante`) REFERENCES `fabricante` (`codFabricante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES ('DVT3258','Cobalt',2008,'Sedan',14,5),('KRT0971','Siena',2007,'Suv',12,2),('NJH4250','Onix',2014,'Intermediate',14,3),('NUR5417','Fiesta',2009,'Suv',13,2),('NUR5870','Palio',2010,'Minivan',12,3),('PRC3078','Fox',2008,'Compact',11,1),('QRE2341','Focus',2011,'Station Wagon',13,1),('TMI5217','Gol',2011,'Economy',11,4),('TVG4810','Saveiro',2010,'Pick-up',11,2),('URA4849','Uno',2011,'Sedan',12,4),('WBG6873','Vectra',2010,'Suv',14,5),('WXL0341','Ecosport',2007,'Intermediate Suv',13,4);
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-10 16:40:23
