-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: netflix_senac
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `assinatura`
--

DROP TABLE IF EXISTS `assinatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assinatura` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) NOT NULL,
  `preco_mensal` decimal(10,2) NOT NULL,
  `num_dispositivos` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assinatura`
--

LOCK TABLES `assinatura` WRITE;
/*!40000 ALTER TABLE `assinatura` DISABLE KEYS */;
INSERT INTO `assinatura` VALUES (1,'Básico',9.99,1),(2,'Padrão',14.99,2),(3,'Premium',19.99,4);
/*!40000 ALTER TABLE `assinatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estrelas` int DEFAULT NULL,
  `comentario` text,
  `usuario_id` int DEFAULT NULL,
  `filme_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `filme_id` (`filme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
INSERT INTO `avaliacao` VALUES (1,5,'Ótimo filme!',1,1),(2,4,'Gostei, mas poderia ser melhor.',2,2),(3,5,'Incrível!',3,3),(4,3,'Não foi tão bom quanto esperava.',4,4),(5,5,'Recomendo a todos!',5,5),(6,4,'Interessante.',6,6),(7,5,'Muito bom!',7,7),(8,4,'Gostei da trama.',8,8),(9,3,'Poderia ter mais ação.',9,9),(10,5,'Adorei!',10,10);
/*!40000 ALTER TABLE `avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Ação'),(2,'Comédia'),(3,'Drama'),(4,'Ficção Científica'),(5,'Romance');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descricao` text,
  `duracao` int DEFAULT NULL,
  `data_lancamento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,'Filme 1','Descrição do Filme 1',120,'2022-01-01'),(2,'Filme 2','Descrição do Filme 2',90,'2022-02-05'),(3,'Filme 3','Descrição do Filme 3',110,'2022-03-10'),(4,'Filme 4','Descrição do Filme 4',105,'2022-04-15'),(5,'Filme 5','Descrição do Filme 5',95,'2022-05-20'),(6,'Filme 6','Descrição do Filme 6',130,'2022-06-25'),(7,'Filme 7','Descrição do Filme 7',100,'2022-07-30'),(8,'Filme 8','Descrição do Filme 8',115,'2022-08-04'),(9,'Filme 9','Descrição do Filme 9',88,'2022-09-09'),(10,'Filme 10','Descrição do Filme 10',125,'2022-10-14');
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmecategoria`
--

DROP TABLE IF EXISTS `filmecategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmecategoria` (
  `filme_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  PRIMARY KEY (`filme_id`,`categoria_id`),
  KEY `categoria_id` (`categoria_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmecategoria`
--

LOCK TABLES `filmecategoria` WRITE;
/*!40000 ALTER TABLE `filmecategoria` DISABLE KEYS */;
INSERT INTO `filmecategoria` VALUES (1,1),(1,2),(2,2),(2,3),(3,3),(3,4),(4,4),(4,5),(5,1),(5,5),(6,1),(7,2),(8,3),(9,4),(10,5);
/*!40000 ALTER TABLE `filmecategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historicoassistidos`
--

DROP TABLE IF EXISTS `historicoassistidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historicoassistidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `filme_id` int DEFAULT NULL,
  `data_assistido` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `filme_id` (`filme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historicoassistidos`
--

LOCK TABLES `historicoassistidos` WRITE;
/*!40000 ALTER TABLE `historicoassistidos` DISABLE KEYS */;
INSERT INTO `historicoassistidos` VALUES (1,1,1,'2023-01-02'),(2,2,2,'2023-02-06'),(3,3,3,'2023-03-11'),(4,4,4,'2023-04-16'),(5,5,5,'2023-05-21'),(6,6,6,'2023-06-26'),(7,7,7,'2023-07-31'),(8,8,8,'2023-08-05'),(9,9,9,'2023-09-10'),(10,10,10,'2023-10-15');
/*!40000 ALTER TABLE `historicoassistidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_cadastro` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'USUARIO 01','U01@email.com','senha123','2023-01-01'),(2,'USUARIO 02','U02@email.com','senha456','2023-02-05'),(3,'USUARIO 03','U03@email.com','senha789','2023-03-10'),(4,'USUARIO 04','U04@email.com','senhaabc','2023-03-15'),(5,'USUARIO 05','U05@email.com','senhaxyz','2023-05-20'),(6,'USUARIO 06','U06@email.com','senha456','2023-06-25'),(7,'USUARIO 07','U07@email.com','senha123','2023-07-30'),(8,'USUARIO 08','U08@email.com','senhaxyz','2023-07-04'),(9,'USUARIO 09','U09@email.com','senha789','2023-02-09'),(10,'USUARIO 10','U10@email.com','senhaabc','2023-01-14');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarioassinatura`
--

DROP TABLE IF EXISTS `usuarioassinatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarioassinatura` (
  `usuario_id` int NOT NULL,
  `assinatura_id` int NOT NULL,
  PRIMARY KEY (`usuario_id`,`assinatura_id`),
  KEY `assinatura_id` (`assinatura_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarioassinatura`
--

LOCK TABLES `usuarioassinatura` WRITE;
/*!40000 ALTER TABLE `usuarioassinatura` DISABLE KEYS */;
INSERT INTO `usuarioassinatura` VALUES (1,1),(2,2),(3,3),(4,1),(5,2),(6,3),(7,1),(8,2),(9,3),(10,1);
/*!40000 ALTER TABLE `usuarioassinatura` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 17:52:42
