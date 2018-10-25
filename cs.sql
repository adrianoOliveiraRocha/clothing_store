-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: clothing_store
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Category 1'),(2,'Category 2'),(3,'Category 3'),(4,'Category 4'),(5,'Category 5'),(6,'Category 6'),(7,'Category 7'),(8,'Category 8'),(9,'Category 9'),(10,'Category 10'),(11,'Category 11'),(12,'Category 12'),(13,'Category 13'),(14,'Category 14');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `hd` varchar(50) NOT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `fontcolor` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'AliceBlue','#F0F8FF','Azul Alice','#000000'),(2,'AntiqueWhite','#FAEBD7','Branco Antigo','#000000'),(3,'Aqua','#00FFFF','Aqua','#000000'),(4,'Aquamarine','#7FFFD4','Aquamarine','#000000'),(5,'Azure','#F0FFFF','Azure','#000000'),(6,'Beige','#F5F5DC','Bege','#000000'),(7,'Bisque','#FFE4C4','Bisque','#000000'),(8,'Black','#000000','Preto','#ffffffff'),(9,'BlanchedAlmond','#FFEBCD','BlanchedAlmond','#000000'),(10,'Blue','#0000FF','Azul','#ffffff'),(11,'BlueViolet','#8A2BE2','Azul Violeta','#ffffff'),(12,'Brown','#A52A2A','Castanho','#ffffff'),(13,'BurlyWood','#DEB887','BurlyWood','#000000'),(14,'CadetBlue','#5F9EA0','Azul Cadete','#ffffff'),(15,'Chartreuse','#7FFF00','Chartreuse','#000000'),(16,'Chocolate','#D2691E','Chocolate','#ffffff'),(17,'Coral','#FF7F50','Coral','#ffffff'),(18,'CornflowerBlue','#6495ED','CornflowerBlue','#ffffff'),(19,'Cornsilk','#FFF8DC','Cornsilk','#000000'),(20,'Crimson','#DC143C','Carmesim','#ffffff'),(21,'Cyan','#00FFFF','Ciano','#000000'),(22,'DarkBlue','#00008B','Azul Escuro','#ffffff'),(23,'DarkCyan','#008B8B','Ciano Escuro','#ffffff'),(24,'DarkGoldenRod','#B8860B','Dourado Escuro','#ffffff'),(25,'DarkGray','#A9A9A9','Cinza escuro','#000000'),(26,'DarkGreen','#006400','Verde Escuro','#000000'),(27,'DarkKhaki','#BDB76B','Caqui Escuro','#ffffff'),(28,'DarkMagenta','#8B008B','Magento Escuro','#ffffff'),(29,'DarkOliveGreen','#556B2F','Verde Oliva Escuro','#ffffff'),(30,'DarkOrange','#FF8C00','Laranja Escuro','#ffffff'),(31,'DarkOrchid','#9932CC','Orquídea Escuro','#ffffff'),(32,'DarkRed','#8B0000','Vermelho Escuro','#ffffff'),(33,'DarkSalmon','#E9967A','Salmão Escuro','#ffffff'),(34,'DarkSeaGreen','#8FBC8F','Verde Oceano Escuro','#ffffff'),(35,'DarkSlateBlue','#483D8B','Azul Ardódsia Escuro','#ffffff'),(36,'DarkSlateGray','#2F4F4F','Verde Ardódsia Escuro','#ffffff'),(37,'DarkTurquoise','#00CED1','Turquesa Escuro','#ffffff'),(38,'DarkViolet','#9400D3','Violeta Escuro','#ffffff'),(39,'DeepPink','#FF1493','Rosa Escuro','#ffffff'),(40,'DeepSkyBlue','#00BFFF','Azul Céu Escuro','#ffffff'),(41,'DimGray','#696969','Cinza Escuro','#ffffff'),(42,'DodgerBlue','#1E90FF','Cinza Escuro','#ffffff'),(43,'FireBrick','#B22222','FireBrick','#ffffff'),(44,'FloralWhite','#FFFAF0','Branco Floral','#000000'),(45,'ForestGreen','#228B22','Verde Floresta','#ffffff'),(46,'Fuchsia','#FF00FF','Fúcsia','#ffffff'),(47,'Gainsboro','#DCDCDC','Gainsboro','#000000'),(48,'GhostWhite','#F8F8FF','Branco Fantasma','#000000'),(49,'Gold','#FFD700','Dourado','#000000'),(50,'Gray','#808080','Cinza','#ffffff'),(51,'Green','#008000','Verde','#ffffff'),(52,'GreenYellow','#ADFF2F','Verde Amarelado','#000000'),(53,'HoneyDew','#F0FFF0','HoneyDew','#000000'),(54,'HotPink','#FF69B4','Rosa','#ffffff'),(55,'IndianRed','#CD5C5C','Vermelho Indiano','#ffffff'),(56,'Ivory','#FFFFF0','Marfim','#000000'),(57,'Khaki','#F0E68C','Caqui','#000000'),(58,'Lavender','#E6E6FA','Lavanda','#000000'),(59,'LavenderBlush','#FFF0F5','Lavanda Escuro','#000000'),(60,'LawnGreen','#7CFC00','Verde Grama','#000000'),(61,'LemonChiffon','#FFFACD','Verde Limão','#000000'),(62,'LightBlue','#ADD8E6','Azul Claro','#000000'),(63,'LightCoral','#F08080','Coral Claro','#000000'),(64,'LightCyan','#E0FFFF','Ciano Claro','#000000'),(65,'LightGoldenRodYellow','#FAFAD2','Dourado Claro','#000000'),(66,'LightGray','#D3D3D3','Cinza Claro','#000000'),(67,'LightGreen','#90EE90','Verde Claro','#000000'),(68,'LightPink','#FFB6C1','Rosa Claro','#000000'),(69,'LightSalmon','#FFA07A','Salmão Claro','#000000'),(70,'LightSeaGreen','#20B2AA','Verde Oceano Claro','#000000'),(71,'LightSkyBlue','#87CEFA','Azul Oceano Claro','#000000'),(72,'LightSlateGray','#778899','Cinza Claro','#000000'),(73,'LightSteelBlue','#B0C4DE','Azul Ardósia Claro','#000000'),(74,'LightYellow','#FFFFE0','Amarelo Claro','#000000'),(75,'Lime','#00FF00','Verde Limão','#ffffff'),(76,'LimeGreen','#32CD32','Verde Limão','#ffffff'),(77,'Fuchsia','#FF00FF','Fuchsia','#000000'),(78,'Maroon','#800000','Marrom','#ffffff'),(79,'MediumAquaMarine','#66CDAA','Azul Marinho Médio','#000000'),(80,'MediumBlue','#0000CD','Azul Médio','#ffffff'),(81,'MediumOrchid','#BA55D3','Orquídea Médio','#ffffff'),(82,'MediumPurple','#9370DB','Roxo Médio','#ffffff'),(83,'MediumSeaGreen','#3CB371','Verde Oceano Médio','#ffffff'),(84,'MediumSlateBlue','#7B68EE','Azul Ardósia Médio','#ffffff'),(85,'MediumSpringGreen','#00FA9A','Verde Primavera Médio','#000000'),(86,'MediumTurquoise','#48D1CC','Azul Turquesa Médio','#000000'),(87,'MediumVioletRed','#C71585','Vermelho Violeta Médio','#ffffff'),(88,'MidnightBlue','#191970','Azul Meia Noite','#ffffff'),(89,'MintCream','#F5FFFA','Creme de Menta','#000000'),(90,'MistyRose','#FFE4E1','Rosa Escuro','#000000'),(91,'Moccasin','#FFE4B5','Rosa Escuro','#000000'),(92,'NavajoWhite','#FFDEAD','Branco Navajo','#000000'),(93,'Navy','#000080','Azul Marinho','#ffffff'),(94,'OldLace','#FDF5E6','OldLace','#000000'),(95,'Olive','#808000','Oliva','#ffffff'),(96,'OliveDrab','#6B8E23','Oliva Pesado','#ffffff'),(97,'Orange','#FFA500','Laranja','#ffffff'),(98,'OrangeRed','#FF4500','Vermelho Laranja','#ffffff'),(99,'Orchid','#DA70D6','Orquídea','#ffffff'),(100,'PaleGoldenRod','#EEE8AA','Dourado Pálido','#000000'),(101,'PaleGreen','#98FB98','Verde Pálido','#000000'),(102,'PaleTurquoise','#AFEEEE','Azul Turquesa Pálido','#000000'),(103,'PaleVioletRed','#DB7093','Vermelho Violeta Pálido','#ffffff'),(104,'PapayaWhip','#FFEFD5','Mamão','#000000'),(105,'PeachPuff','#FFDAB9','Pêssego','#000000'),(106,'Peru','#CD853F','Peru','#ffffff'),(107,'Pink','#FFC0CB','Rosa','#000000'),(108,'Plum','#DDA0DD','Ameixa','#000000'),(109,'PowderBlue','#DDA0DD','Azul','#000000'),(110,'Purple','#800080','Roxo','#ffffff'),(111,'RebeccaPurple','#663399','Roxo Rebecca','#ffffff'),(112,'Red','#FF0000','Vermelho','#ffffff'),(113,'Red','#BC8F8F','Rosado Marrom','#ffffff'),(114,'SaddleBrown','#8B4513','Marrom Sela','#ffffff'),(115,'Salmon','#FA8072','Salmão','#ffffff'),(116,'SandyBrown','#F4A460','Marrom Areia','#ffffff'),(117,'SeaGreen','#2E8B57','Verde Oceano','#ffffff'),(118,'RoyalBlue','#4169E1','Azul Real','#ffffff'),(119,'SeaShell','#FFF5EE','Concha Marinha','#000000'),(120,'Sienna','#A0522D','Sienna','#ffffff'),(121,'Silver','#C0C0C0','Prata','#ffffff'),(122,'SkyBlue','#87CEEB','Azul Céu','#ffffff'),(123,'SlateBlue','#6A5ACD','Azul Ardósia','#ffffff'),(124,'SlateGray','#708090','Verde Ardósia','#ffffff'),(125,'Snow','#FFFAFA','Neve','#000000'),(126,'SpringGreen','#00FF7F','Verde Primavera','#000000'),(127,'SteelBlue','#4682B4','Azul Aço','#ffffff'),(128,'Tan','#D2B48C','Bronzeado','#000000'),(129,'Teal','#008080','Verde Azulado','#ffffff'),(130,'Thistle','#D8BFD8','Cardo','#000000'),(131,'Tomato','#FF6347','Tomate','#ffffff'),(132,'Turquoise','#40E0D0','Turquesa','#ffffff'),(133,'Violet','#EE82EE','Violeta','#ffffff'),(134,'Wheat','#F5DEB3','Trigo','#000000'),(135,'White','#FFFFFF','Branco','#000000'),(136,'WhiteSmoke','#F5F5F5','Branco Fumaça','#000000'),(137,'Yellow','#FFFF00','Amarelo','#000000'),(138,'YellowGreen','#9ACD32','Amarelo Esverdeado','#000000');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titule` varchar(100) DEFAULT NULL,
  `description` text,
  `price` float NOT NULL,
  `promotional_price` float DEFAULT NULL,
  `color` char(10) DEFAULT NULL,
  `size` char(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `delivery_free` tinyint(4) DEFAULT '0',
  `likes` int(11) DEFAULT NULL,
  `img1` varchar(1000) DEFAULT NULL,
  `img2` varchar(1000) DEFAULT NULL,
  `img3` varchar(1000) DEFAULT NULL,
  `imgDesc1` varchar(1000) DEFAULT NULL,
  `imgDesc2` varchar(1000) DEFAULT NULL,
  `imgDesc3` varchar(1000) DEFAULT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('96SKJlYfJjNGlWeW9jfZPlyyn-iYRT0h',1540558670,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"loged\":true,\"user\":{\"id\":4,\"name\":\"Adriano Oliveira \",\"email\":\"admin@admin.com\",\"password\":\"ad123\",\"cpf\":\"85215856320\",\"public_place\":\"Street Projected 2\",\"number\":\"110\",\"cep\":\"61880000\",\"complement\":\"Near of the church\",\"neighborhood\":\"my neighborhood\",\"city\":\"Meireles\",\"state\":\"Ceará\",\"is_staff\":1,\"is_active\":1,\"date_joined\":null},\"message\":\"\"}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `public_place` varchar(100) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `complement` varchar(200) DEFAULT NULL,
  `neighborhood` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `date_joined` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,NULL,'fulano@fulano.com','fu123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL),(4,'Adriano Oliveira ','admin@admin.com','ad123','85215856320','Street Projected 2','110','61880000','Near of the church','my neighborhood','Meireles','Ceará',1,1,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-25 16:26:12
