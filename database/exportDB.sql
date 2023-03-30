-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: haircare
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'oriz1303','Nguyen123','oriz@gmail.com',0),(2,'quangdu','Quangdu123','quangdu@gmail.com',1);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_haircare`
--

DROP TABLE IF EXISTS `brand_haircare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_haircare` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_haircare`
--

LOCK TABLES `brand_haircare` WRITE;
/*!40000 ALTER TABLE `brand_haircare` DISABLE KEYS */;
INSERT INTO `brand_haircare` VALUES (1,'haircare_logo.png','Health Hair, Beauty Your');
/*!40000 ALTER TABLE `brand_haircare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipments`
--

DROP TABLE IF EXISTS `equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `equipments` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipments`
--

LOCK TABLES `equipments` WRITE;
/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `euquipments_detail`
--

DROP TABLE IF EXISTS `euquipments_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `euquipments_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` varchar(45) DEFAULT NULL,
  `description` text NOT NULL,
  `equipments_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_equipments_id_equipments_detail_idx` (`equipments_id`),
  CONSTRAINT `FK_equipments_id_equipments_detail` FOREIGN KEY (`equipments_id`) REFERENCES `equipments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `euquipments_detail`
--

LOCK TABLES `euquipments_detail` WRITE;
/*!40000 ALTER TABLE `euquipments_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `euquipments_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `euquipments_images`
--

DROP TABLE IF EXISTS `euquipments_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `euquipments_images` (
  `id` int NOT NULL,
  `url` varchar(255) NOT NULL,
  `equipments_detail_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_equipments_detail_id_equipments_images_idx` (`equipments_detail_id`),
  CONSTRAINT `FK_equipments_detail_id_equipments_images` FOREIGN KEY (`equipments_detail_id`) REFERENCES `euquipments_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `euquipments_images`
--

LOCK TABLES `euquipments_images` WRITE;
/*!40000 ALTER TABLE `euquipments_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `euquipments_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `information_products`
--

DROP TABLE IF EXISTS `information_products`;
/*!50001 DROP VIEW IF EXISTS `information_products`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `information_products` AS SELECT 
 1 AS `name`,
 1 AS `price`,
 1 AS `title`,
 1 AS `url`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `posts_categories`
--

DROP TABLE IF EXISTS `posts_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_UNIQUE` (`categories`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_categories`
--

LOCK TABLES `posts_categories` WRITE;
/*!40000 ALTER TABLE `posts_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_content`
--

DROP TABLE IF EXISTS `posts_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `posts_title_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_posts_title_id_posts_images_idx` (`posts_title_id`),
  CONSTRAINT `FK_posts_title_id_posts_description` FOREIGN KEY (`posts_title_id`) REFERENCES `posts_title` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_content`
--

LOCK TABLES `posts_content` WRITE;
/*!40000 ALTER TABLE `posts_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_images`
--

DROP TABLE IF EXISTS `posts_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_images` (
  `id` int NOT NULL,
  `url` varchar(255) NOT NULL,
  `posts_title_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_posts_title_id_posts_images_idx` (`posts_title_id`),
  CONSTRAINT `FK_posts_title_id_posts_images` FOREIGN KEY (`posts_title_id`) REFERENCES `posts_title` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_images`
--

LOCK TABLES `posts_images` WRITE;
/*!40000 ALTER TABLE `posts_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_title`
--

DROP TABLE IF EXISTS `posts_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_title` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titles` varchar(200) NOT NULL,
  `posts_topics_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_posts_topics_id_posts_title_idx` (`posts_topics_id`),
  CONSTRAINT `FK_posts_topics_id_posts_title` FOREIGN KEY (`posts_topics_id`) REFERENCES `posts_topics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_title`
--

LOCK TABLES `posts_title` WRITE;
/*!40000 ALTER TABLE `posts_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_topics`
--

DROP TABLE IF EXISTS `posts_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_topics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topics` varchar(255) DEFAULT NULL,
  `categories_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_categories_id_posts_topics_idx` (`categories_id`),
  CONSTRAINT `FK_categories_id_posts_topics` FOREIGN KEY (`categories_id`) REFERENCES `posts_categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_topics`
--

LOCK TABLES `posts_topics` WRITE;
/*!40000 ALTER TABLE `posts_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `products` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Cream Dove'),(2,'Cream LOreal'),(3,'Cream Ellips'),(4,'Cream Organist'),(5,'Shampoo Cocoon'),(6,'Shampoo Selsun'),(7,'Shampoo TRESemme'),(8,'Shampoo Tsubaki'),(9,'Mask BNBG'),(10,'Mask Caryophy'),(11,'Mask Klaris'),(12,'Mask Naruko'),(13,'Serum Beauty Labo'),(14,'Serum Cocoon'),(15,'Serum TRESemme'),(16,'Serum Ellips'),(17,'Hairspays Double Rich'),(18,'Hairspays Haire Busrt'),(19,'Hairspays TRESemme'),(20,'Hairspays Tsubaki'),(21,'Oils Double Rich'),(22,'Oils LOreal'),(23,'Oils Some By Mi'),(24,'Oils Tsubaki');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_detail`
--

DROP TABLE IF EXISTS `products_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` varchar(255) DEFAULT NULL,
  `description` text,
  `products_id` int NOT NULL,
  `guide` text,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_products_id_products_detail_idx` (`products_id`),
  CONSTRAINT `FK_products_id-products_detail` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_detail`
--

LOCK TABLES `products_detail` WRITE;
/*!40000 ALTER TABLE `products_detail` DISABLE KEYS */;
INSERT INTO `products_detail` VALUES (1,'12.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',1,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Hair cream'),(2,'9.89','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',2,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Hair cream'),(3,'45.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',3,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Hair cream'),(4,'18.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',4,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Hair cream'),(5,'5.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',5,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Professional Sampoo'),(6,'22.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',6,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Professional Sampoo'),(7,'23.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',7,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Professional Sampoo'),(8,'21.49','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',8,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Professional Sampoo'),(9,'40.29','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',9,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Masks High-class'),(10,'12.69','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',10,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Masks High-class'),(11,'14.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',11,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Masks High-class'),(12,'11.89','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',12,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Masks High-class'),(13,'90.19','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',13,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Serums from Angula'),(14,'12.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',14,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Serums from North Korea'),(15,'14.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',15,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Serums from Vietnamese'),(16,'15.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',16,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Serums from United of Empires'),(17,'16.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',17,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Hair Sprays Good'),(18,'15.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',18,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Hair Sprays Good'),(19,'23.89','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',19,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Hair Sprays Good'),(20,'26.39','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',20,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Hair Sprays Good'),(21,'27.19','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',21,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Varios hair oils'),(22,'51.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',22,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Varios hair oils'),(23,'54.89','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',23,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Varios hair oils'),(24,'53.59','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.',24,'<h5>User manual<h5><br>\n<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>\n<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>\n<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>','Varios hair oils');
/*!40000 ALTER TABLE `products_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_images`
--

DROP TABLE IF EXISTS `products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `products_detail_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_products_detail_id_products_images_idx` (`products_detail_id`),
  CONSTRAINT `FK_products_detail_id_products_images` FOREIGN KEY (`products_detail_id`) REFERENCES `products_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_images`
--

LOCK TABLES `products_images` WRITE;
/*!40000 ALTER TABLE `products_images` DISABLE KEYS */;
INSERT INTO `products_images` VALUES (1,'duongtoc-dove.jpg',1),(2,'duongtoc-loreal.jpg',2),(3,'duongtoc-ellips.jpg',3),(4,'duongtoc-organist.jpg',4),(5,'daugoi-cocoon.png',5),(6,'daugoi-selsun.jpg',6),(7,'daugoi-tresemme.jpg',7),(8,'daugoi-tsubaki-cool.jpg',8),(9,'matna-bnbg-combo10.jpg',9),(10,'matna-caryophy.jpg',10),(11,'matna-klaris.jpg',11),(12,'matna-naruko.jpg',12),(13,'serum-beauty-labo.jpg',13),(14,'serum-cocoon.jpg',14),(15,'serum-tresemme.jpg',15),(16,'serum-ellips-box.jpg',16),(17,'xittoc-double-rich.png',17),(18,'xittoc-hairburst.jpg',18),(19,'xittoc-tresemme.jpg',19),(20,'xittoc-tsubaki.jpg',20),(21,'dauduong-doublerich.png',21),(22,'dauduong-l-oreal.jpg',22),(23,'dauduong-some-by-mi.jpg',23),(24,'dauduong-tsubaki.jpg',24);
/*!40000 ALTER TABLE `products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `information_products`
--

/*!50001 DROP VIEW IF EXISTS `information_products`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`oriz`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `information_products` AS select `products`.`products` AS `name`,`products_detail`.`price` AS `price`,`products_detail`.`name` AS `title`,`products_images`.`url` AS `url` from (`products_images` left join (`products` join `products_detail` on((`products`.`id` = `products_detail`.`products_id`))) on((`products_images`.`products_detail_id` = `products_detail`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-30 23:13:34
