-- MariaDB dump 10.19  Distrib 10.6.7-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: market
-- ------------------------------------------------------
-- Server version	10.6.7-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (4,'Ролевая','2023-04-19 10:45:54','2023-04-29 10:14:31'),(6,'Шутер от первого лица','2023-04-22 09:34:35','2023-04-22 09:34:35'),(7,'Экшен','2023-04-22 09:36:38','2023-04-22 09:36:38'),(8,'Гонки','2023-04-22 09:36:44','2023-04-22 09:36:44'),(9,'Стелс','2023-04-22 09:36:50','2023-04-22 09:36:50'),(10,'Хоррор','2023-04-27 17:46:08','2023-04-29 10:14:44'),(11,'Инди','2023-05-09 15:25:01','2023-05-09 15:25:01'),(12,'Приключения','2023-05-09 15:25:09','2023-05-09 15:25:09');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color_products`
--

DROP TABLE IF EXISTS `color_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `color_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `color_products_color_id_foreign` (`color_id`),
  KEY `color_products_product_id_foreign` (`product_id`),
  CONSTRAINT `color_products_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  CONSTRAINT `color_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_products`
--

LOCK TABLES `color_products` WRITE;
/*!40000 ALTER TABLE `color_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `color_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'000',NULL,NULL),(2,'b3b3b3','2023-04-19 12:37:25','2023-04-19 12:38:43'),(3,'282828','2023-04-19 12:56:16','2023-04-19 12:56:16'),(4,'464646','2023-04-19 12:56:57','2023-04-19 12:56:57'),(5,'343434','2023-04-23 10:16:27','2023-04-23 10:16:27');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_04_15_141120_create_categories_table',1),(6,'2023_04_18_193251_create_tags_table',2),(7,'2023_04_19_111110_create_colors_table',3),(9,'2023_04_19_162236_add_login_name_address_number_to_user_table',4),(10,'2023_04_20_181540_create_products_table',5),(17,'2023_04_20_182547_create_color_products_table',6),(18,'2023_04_20_182613_create_product_tags_table',6),(20,'2023_04_23_121716_create_product_images_table',7),(21,'2023_05_05_190726_create_orders_table',8);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`products`)),
  `total_price` int(11) NOT NULL,
  `payment_status` smallint(5) unsigned NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_index` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,3,'[{\"id\":5,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg\",\"title\":\"Grand Theft Auto V\",\"price\":1499,\"qty\":2},{\"id\":3,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":26},{\"id\":2,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":33},{\"id\":4,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":12}]',201727,1,'2023-05-05 17:04:12','2023-05-05 17:04:12'),(2,4,'[{\"id\":5,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg\",\"title\":\"Grand Theft Auto V\",\"price\":1499,\"qty\":2},{\"id\":3,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":26},{\"id\":2,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":33},{\"id\":4,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":12}]',201727,1,'2023-05-05 17:06:24','2023-05-05 17:06:24'),(3,4,'[{\"id\":5,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg\",\"title\":\"Grand Theft Auto V\",\"price\":1499,\"qty\":2},{\"id\":3,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":26},{\"id\":2,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":33},{\"id\":4,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":12}]',201727,1,'2023-05-05 17:09:44','2023-05-05 17:09:44'),(4,4,'[{\"id\":5,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg\",\"title\":\"Grand Theft Auto V\",\"price\":1499,\"qty\":2},{\"id\":3,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":26},{\"id\":2,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":33},{\"id\":4,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":12}]',201727,1,'2023-05-05 17:13:06','2023-05-05 17:13:06'),(5,5,'[{\"id\":5,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg\",\"title\":\"Grand Theft Auto V\",\"price\":1499,\"qty\":2},{\"id\":3,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":26},{\"id\":2,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":33},{\"id\":4,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":12}]',201727,1,'2023-05-05 17:15:12','2023-05-05 17:15:12'),(6,5,'[{\"id\":5,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg\",\"title\":\"Grand Theft Auto V\",\"price\":1499,\"qty\":2},{\"id\":3,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":26},{\"id\":2,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":33},{\"id\":4,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":12}]',201727,1,'2023-05-05 17:20:44','2023-05-05 17:20:44'),(7,5,'[{\"id\":5,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg\",\"title\":\"Grand Theft Auto V\",\"price\":1499,\"qty\":2},{\"id\":3,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":26},{\"id\":2,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":33},{\"id\":4,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":12}]',201727,1,'2023-05-05 17:25:49','2023-05-05 17:25:49'),(8,5,'[{\"id\":5,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg\",\"title\":\"Grand Theft Auto V\",\"price\":1499,\"qty\":2},{\"id\":3,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":26},{\"id\":2,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":33},{\"id\":4,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":12}]',201727,1,'2023-05-05 17:27:18','2023-05-05 17:27:18'),(9,5,'[{\"id\":5,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg\",\"title\":\"Grand Theft Auto V\",\"price\":1499,\"qty\":2},{\"id\":3,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":26},{\"id\":2,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":33},{\"id\":4,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":12}]',201727,1,'2023-05-05 17:28:27','2023-05-05 17:28:27'),(10,6,'[{\"id\":5,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg\",\"title\":\"Grand Theft Auto V\",\"price\":1499,\"qty\":2},{\"id\":3,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":26},{\"id\":2,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":34},{\"id\":4,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":12}]',204726,1,'2023-05-06 13:59:45','2023-05-06 13:59:45');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_index` (`product_id`),
  CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'images/He7drdtvYOYDG63ATW7FFXsIQaXGx9Lz6un5cP2s.jpg',2,'2023-05-06 10:48:06','2023-05-06 10:48:06'),(2,'images/n6UQzNGXeBTEOl0y0Ap1N8HjT0ePNLwWBO4KjNK4.jpg',2,'2023-05-06 10:48:06','2023-05-06 10:48:06'),(3,'images/3kIfpJa9Sy0BxeiMZ5kMrLbwcymDBLRrxD4xIbx4.jpg',3,'2023-05-06 12:03:57','2023-05-06 12:03:57'),(4,'images/6p84stk7oBwdRBzEhjBC9tVCAO0ykZ13sXxyunhK.jpg',3,'2023-05-06 12:03:57','2023-05-06 12:03:57'),(5,'images/p0yE7ZhiOIIRjADTqz6YvXY2pIjG6dhcEhxxgmnw.jpg',4,'2023-05-06 12:04:35','2023-05-06 12:05:46'),(6,'images/Cw6ciXqQiVoGdAF1Ig3MzTZkbPN9HyijeGypS3q1.jpg',4,'2023-05-06 12:04:35','2023-05-06 12:05:46'),(7,'images/JduIyBvzLFOlAtlIBdjiRXDTK9hwLjOxGi0XkB6w.jpg',5,'2023-05-06 12:06:55','2023-05-06 12:06:55'),(8,'images/Khg6Av6G7zv1Xq9gne3wBexSZFWEfNwLY03GSkFe.jpg',5,'2023-05-06 12:06:55','2023-05-06 12:06:55'),(9,'images/5bvvlJkU7yglxFMWiZeNQiBg8ttEsqpO6X66YOuD.jpg',8,'2023-05-06 12:07:15','2023-05-06 12:07:15'),(10,'images/YZavAVocjnAO9oJEPXRJ43W1iO2wCCvjkWrBpMsL.jpg',8,'2023-05-06 12:07:15','2023-05-06 12:07:15'),(11,'images/kl4GZeYKZtXK4tKSL1XeI6bIV7KqTybcw3X5TxTH.jpg',10,'2023-05-06 12:07:38','2023-05-06 12:07:38'),(12,'images/y1uV6lvemu2skaJLSfaGfsIO36TV2PiXeNfqQxGg.jpg',10,'2023-05-06 12:07:38','2023-05-06 12:07:38'),(13,'images/nVIgcyJpWsVQpnXdVdtzkHwg6dM3SqVUF93eFSMH.jpg',11,'2023-05-09 15:21:19','2023-05-09 15:21:19'),(14,'images/L71VALiDSyNWhW4R8YwM95dDBuauDAMuCtFlFsvW.jpg',11,'2023-05-09 15:21:19','2023-05-09 15:21:19');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_tags_tag_id_foreign` (`tag_id`),
  KEY `product_tags_product_id_foreign` (`product_id`),
  CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tags`
--

LOCK TABLES `product_tags` WRITE;
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
INSERT INTO `product_tags` VALUES (1,4,2,'2023-04-21 06:17:24','2023-04-21 06:17:24'),(2,4,3,'2023-04-22 09:32:51','2023-04-22 09:32:51'),(3,2,4,'2023-04-22 09:38:37','2023-04-22 09:38:37'),(4,4,4,'2023-04-22 09:38:37','2023-04-22 09:38:37'),(5,6,4,'2023-04-22 09:38:37','2023-04-22 09:38:37'),(6,2,5,'2023-04-22 09:42:04','2023-04-22 09:42:04'),(7,4,5,'2023-04-22 09:42:05','2023-04-22 09:42:05'),(8,6,5,'2023-04-22 09:42:05','2023-04-22 09:42:05'),(11,4,8,'2023-04-23 10:35:51','2023-04-23 10:35:51'),(15,2,11,'2023-05-09 15:22:15','2023-05-09 15:22:15');
/*!40000 ALTER TABLE `product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `old_price` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Forza Horizon 5','Вас ждет незабываемое приключение в Horizon! Исследуйте яркие и постоянно меняющиеся ландшафты открытого мира Мексики с безграничным, увлекательным вождением на сотнях лучших в мире автомобилей.','Возглавьте захватывающие экспедиции по ярким и постоянно меняющимся ландшафтам открытого мира Мексики, наслаждаясь безграничной и увлекательной ездой на сотнях лучших автомобилей мира. Откройте для себя мир поразительных контрастов и красоты. Откройте для себя живые пустыни, пышные джунгли, исторические города, скрытые руины, нетронутые пляжи, обширные каньоны и высокий вулкан с заснеженной вершиной.','images/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg',2999,3599,6,1,8,'2023-04-21 06:17:24','2023-04-27 17:32:01'),(3,'Call of Duty: Modern Warfare 2','Call of Duty: Modern Warfare 2 (или просто Modern Warfare 2) — шутер от первого лица, разработанный американской компанией Infinity Ward. Игра является шестой в серии Call of Duty. Проект официально анонсирован 11 февраля 2009 года. Сюжет игры является продолжением Call of Duty 4: Modern Warfare. Действие игры происходит в 2016 году, через 5 лет после событий в четвёртой части.','Как и в Call of Duty 4: Modern Warfare, игроку предстоят миссии за бойца спецподразделений западных стран (как и в предыдущих играх серии, будет несколько протагонистов). В игре присутствуют новые геймплейные элементы, например: подъём по обледенелому склону, бой на снегоходах, заплыв с аквалангами. В игре присутствуют элементы нелинейности, нехарактерные для серии Call of Duty. Также в первый раз в серии игрокам предоставлена возможность стрелять сразу из двух пистолетов (стиль акимбо), что особенно эффективно для заградительной стрельбы по врагам.','images/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png',2499,2899,6,1,7,'2023-04-22 09:32:51','2023-04-23 16:11:59'),(4,'Call of Duty: Modern Warfare 3','Call of Duty: Modern Warfare 3 — восьмая игра в серии Call of Duty, продолжение Modern Warfare 2, финальная часть трилогии Modern Warfare. Объявление о начале разработки было выпущено 9 апреля 2010 года. Официальный релиз на всех платформах состоялся 8 ноября 2011 года.','Третья мировая война продолжается. Планы Владимира Макарова вышли далеко за рамки планов Имрана Захаева. Владимир начал сотрудничать с многими командирами Африки, России и Ближнего Востока. Поэтому у него набралась солидная армия. Планы его заключались в захвате и оккупации Европы и Америки. И останавливаться он не намерен.','images/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg',2899,0,8,1,6,'2023-04-22 09:38:37','2023-04-22 09:38:37'),(5,'Grand Theft Auto V','Grand Theft Auto V — компьютерная игра из серии Grand Theft Auto в жанре Action, разработанная компанией Rockstar North. Также известна как GTA 5 или GTA V. Это пятнадцатая игра в серии. Действия игры разворачиваются в городе Лос-Сантос, а также в сельской и пустынной местностях штата Сан-Андреас. Релиз игры на игровые приставки Xbox 360 и PS3 состоялся 16 сентября 2013 года. Выход на Xbox One и PS4 состоялся 18 ноября 2014 года. На ПК игра вышла 14 апреля 2015 года. Выход игры на консоли десятого поколения, а именно PlayStation 5 и Xbox Series X/S состоялся 15 марта 2022 года.','Исследуйте более 40 массивных обновлений, включающих обновление «Контракт», по ходу которого вам предстоит объединиться с Франклином Клинтоном и отправиться на поиски украденной музыки Доктора Дре; высокооктановые уличные гонки из обновления «Тюнинг в Лос-Сантосе»; ограбления на тропическом острове Кайо-Перико, ночные клубы и казино-отель Diamond; а также целый ряд всевозможных гонок, режимов, занятий и мест для встреч, которые могут быть доступны как для одиночной, так и многопользовательской игры – в том числе ночные и игровые клубы, вечеринки в пентхаусах, съезды автоклуба и многое другое.','images/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg',1499,0,14,1,8,'2023-04-22 09:42:04','2023-04-27 04:27:42'),(8,'FEAR 3','Компьютерная игра в жанре шутера от первого лица с уклоном в хоррор, разработанная Day 1 Studios при содействии Monolith Productions. Игра является продолжением F.E.A.R. 2: Project Origin и третьей игрой в серии «F.E.A.R.». Издателем является Warner Bros. Interactive Entertainment. В России игру на PC издаёт Новый Диск, а на консолях Xbox 360 и PlayStation 3 игру издаёт 1C-SoftClub. Третья часть игры F.E.A.R была выпущена 21 июня 2011 года на персональные компьютеры и игровые консоли PlayStation 3 и Xbox 360. В России выпуск состоялся 23 июня 2011 года, а локализована игра была компанией «Новый Диск».','Альма в ожидании, и уровень страха возрастает, пока вы и ваш брат-каннибал сражаетесь с очередным кошмаром. Сражайтесь вместе или умирайте поодиночке на смертельных миссиях, чтобы противостоять вашей свихнувшейся матери. Игроки могут взять на себя роль Оперативника, генетически усовершенствованного солдата со сверхчеловеческими рефлексами и способностью манипулировать временем, или восставшим из мертвых духом его брата Пакстона Феттела, паранормальным существом, обладающим невероятной психической силой.','images/qb8ef4cmTGYfTUJSLPsb11a54BYDUMDWi5s9KGw3.png',499,899,6,1,10,'2023-04-23 10:35:51','2023-04-27 17:46:20'),(10,'Resident Evil 4','Resident Evil 4 — ремейк оригинальной игры Resident Evil 2005 4 года.  Переосмысление к 2023 году, чтобы принести современный ужас выживания.  Resident Evil 4 сохраняет суть оригинальной игры, представляя модернизированный игровой процесс, переосмысленную сюжетную линию и ярко детализированную графику, что делает ее последней игрой ужасов на выживание, в которой пересекаются жизнь и смерть, ужас и катарсис.','С момента биологической катастрофы в Раккун-Сити прошло 6 лет.\r\n\r\nЛеон С. Кеннеди, один из выживших в инциденте, был завербован в качестве агента,\r\nподчиняющегося непосредственно президенту Соединенных Штатов.\r\n\r\nИмея за плечами опыт нескольких миссий,\r\nЛеон отправляется спасать похищенную дочь президента.\r\n\r\nОн выслеживает ее в уединенной европейской деревне,\r\nгде с жителями деревни что-то ужасно не так.\r\n\r\nИ занавес поднимается над этой историей дерзкого спасения и изнурительного ужаса.','images/0qVdbyQajPXsUl3KnSwq2TSqbZdsergYn5HGFOnE.jpg',4299,0,6,1,7,'2023-04-24 03:05:03','2023-04-24 03:05:03'),(11,'7 Days to Die','Компьютерная игра в жанре survival horror и симулятора выживания с открытым миром, разрабатываемая компанией The Fun Pimps Entertainment. Игра была выпущена в раннем доступе в Steam в декабре 2013 года для операционных систем Windows и OS X. В июле 2016 года компания Telltale Publishing выпустила версии для игровых приставок PlayStation 4 и Xbox One. Действие 7 Days to Die происходит в процедурно генерируемом, полностью разрушаемом мире, охваченном зомби-апокалипсисом; чтобы сохранить жизнь своему персонажу, игрок должен обороняться от враждебных зомби, собирать различные ресурсы и строить здания.','Уже продано более 14 миллионов копий 7 Days, поэтому можно считать, что эта игра с ее уникальными возможностями для построения мира и создания предметов изменила жанр «выживание». Действие разворачивается в суровом постапокалиптическом мире, захваченном нежитью. 7 Days — это единственная в своем роде игра с открытым миром, сочетающая в себе элементы шутера от первого лица, хоррора на выживание, защиты замка и ролевой игры. В ней можно сражаться, создавать предметы, собирать трофеи, добывать ресурсы, исследовать мир и развивать персонажа: все эти возможности уже оценили фанаты по всему миру. Приобретите изменившую жанр RPG-песочницу с выживанием среди зомби, которая задала тон другим похожим играм. Вас ждет Невезган!','images/AEoIw38Q1O6JUY39ur8Y1IVeIAFigRGBjsO5twOy.jpg',449,799,1,1,7,'2023-05-06 06:38:10','2023-05-09 15:22:15');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'стратегия','2023-04-19 06:43:58','2023-04-19 06:43:58'),(2,'фантастика','2023-04-19 06:46:54','2023-04-19 06:46:54'),(4,'шутер','2023-04-19 07:27:50','2023-04-19 07:27:50'),(6,'стрелялки','2023-04-22 09:37:03','2023-04-22 09:37:03'),(7,'18+','2023-04-22 09:37:14','2023-04-22 09:37:14'),(8,'зомби','2023-05-09 15:25:19','2023-05-09 15:25:19'),(9,'выживалка','2023-05-09 15:25:26','2023-05-09 15:25:26');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'12345','Roben','Dima','robengood@mail.ru',123213,'2023-04-19','2023-04-19'),(2,'dsfsdf','Prover','Kasar','prover@inbox.com',324,'2023-04-20','2023-04-20'),(3,'$2y$10$QHMa6tBpezZ.9cEODx2HFuv1WDJOlhTXEm.iGApkF2eH2JOma4rsi','fdgdfg','fdgdfg','dfgdfg@mail.ru',NULL,'2023-05-05','2023-05-05'),(4,'$2y$10$Belru2BN4yiH3maaTZmElORvdV/BwxUdPQYE6qk.U29rkp8F2LhGa','asd','asd','asd',12321,'2023-05-05','2023-05-05'),(5,'$2y$10$VuWvUiU9siKbZOadaD7mv.asU86.8c2H4ZQmsz0RjWfr7MMj5jaP2','cgf','cgf','dfg',12321,'2023-05-05','2023-05-05'),(6,'$2y$10$9Sbs5wPC3/IUgpJl2aXKZu2lWZgzVaWfuyeDD/PR3DMujqFibLQ76','Yurkaa','Yurkaa','kamial@gmail.com',43256742,'2023-05-06','2023-05-06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-12 13:00:23
