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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (4,'Ролевая','2023-04-19 10:45:54','2023-04-29 10:14:31'),(6,'Шутер от первого лица','2023-04-22 09:34:35','2023-04-22 09:34:35'),(7,'Экшен','2023-04-22 09:36:38','2023-04-22 09:36:38'),(8,'Гонки','2023-04-22 09:36:44','2023-04-22 09:36:44'),(9,'Стелс','2023-04-22 09:36:50','2023-04-22 09:36:50'),(10,'Хоррор','2023-04-27 17:46:08','2023-04-29 10:14:44'),(11,'Инди','2023-05-09 15:25:01','2023-05-09 15:25:01'),(12,'Приключения','2023-05-09 15:25:09','2023-05-09 15:25:09'),(13,'RPG','2023-05-22 17:30:39','2023-05-22 17:30:39'),(14,'Стратегия','2023-05-22 17:30:51','2023-05-22 17:30:51'),(15,'Симулятор','2023-05-22 17:31:00','2023-05-22 17:31:00');
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
  CONSTRAINT `color_products_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `platforms` (`id`),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_04_15_141120_create_categories_table',1),(6,'2023_04_18_193251_create_tags_table',2),(7,'2023_04_19_111110_create_colors_table',3),(9,'2023_04_19_162236_add_login_name_address_number_to_user_table',4),(10,'2023_04_20_181540_create_products_table',5),(17,'2023_04_20_182547_create_color_products_table',6),(18,'2023_04_20_182613_create_product_tags_table',6),(20,'2023_04_23_121716_create_product_images_table',7),(21,'2023_05_05_190726_create_orders_table',8),(22,'2023_05_12_083406_add_is_admin_to_users_table',9),(23,'2014_10_12_100000_create_password_resets_table',10),(27,'2023_05_21_204856_rename_table_colors',11),(28,'2023_05_23_145610_create_reviews_table',11),(29,'2023_05_27_204020_rename_field_users',11),(30,'2023_05_28_152404_add_product_id_in_reviews',11),(31,'2023_05_29_110124_product_platforms',12);
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
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (10,6,'[{\"id\":5,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg\",\"title\":\"Grand Theft Auto V\",\"price\":1499,\"qty\":2},{\"id\":3,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":26},{\"id\":2,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":34},{\"id\":4,\"image_url\":\"http:\\/\\/market\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":12}]',204726,1,'2023-05-06 13:59:45','2023-05-06 13:59:45'),(65,13,'[{\"id\":4,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":1},{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":9}]',25390,1,'2023-05-22 05:12:15','2023-05-22 05:12:15'),(66,13,'[{\"id\":4,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":3}]',8697,1,'2023-05-22 09:40:23','2023-05-22 09:40:23'),(67,13,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":3}]',7497,1,'2023-05-22 09:46:58','2023-05-22 09:46:58'),(68,32,'[{\"id\":2,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":3}]',8997,1,'2023-05-22 09:54:23','2023-05-22 09:54:23'),(69,33,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":1},{\"id\":2,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":1}]',5498,1,'2023-05-22 10:00:15','2023-05-22 10:00:15'),(75,34,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":2}]',4998,1,'2023-05-22 13:50:12','2023-05-22 13:50:12'),(76,34,'[{\"id\":8,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/qb8ef4cmTGYfTUJSLPsb11a54BYDUMDWi5s9KGw3.png\",\"title\":\"FEAR 3\",\"price\":499,\"qty\":14}]',6986,1,'2023-05-22 13:59:20','2023-05-22 13:59:20'),(77,34,'[{\"id\":11,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/AEoIw38Q1O6JUY39ur8Y1IVeIAFigRGBjsO5twOy.jpg\",\"title\":\"7 Days to Die\",\"price\":449,\"qty\":4},{\"id\":2,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":17}]',52779,1,'2023-05-22 14:07:27','2023-05-22 14:07:27'),(80,13,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":1},{\"id\":4,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":1}]',5398,1,'2023-05-22 15:22:41','2023-05-22 15:22:41'),(81,13,'[{\"id\":4,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":2}]',5798,1,'2023-05-22 15:40:23','2023-05-22 15:40:23'),(82,13,'[{\"id\":4,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":2}]',5798,1,'2023-05-23 17:03:47','2023-05-23 17:03:47'),(83,36,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":3},{\"id\":4,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":1},{\"id\":2,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":1},{\"id\":5,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg\",\"title\":\"Grand Theft Auto V\",\"price\":1499,\"qty\":2}]',16393,1,'2023-05-24 00:42:17','2023-05-24 00:42:17'),(84,37,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":6},{\"id\":4,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":2}]',20792,1,'2023-05-24 02:16:56','2023-05-24 02:16:56'),(85,43,'[{\"id\":2,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"qty\":12},{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":12}]',65976,1,'2023-05-30 11:54:10','2023-05-30 11:54:10'),(86,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":11873,\"count\":6}]',29670627,1,'2023-06-02 08:29:01','2023-06-02 08:29:01'),(87,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":11873,\"count\":6}]',29670627,1,'2023-06-02 08:29:22','2023-06-02 08:29:22'),(88,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":11873,\"count\":6}]',29670627,1,'2023-06-02 08:29:49','2023-06-02 08:29:49'),(89,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":11873,\"count\":6}]',29670627,1,'2023-06-02 08:30:49','2023-06-02 08:30:49'),(90,13,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":19,\"count\":6},{\"id\":4,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":12}]',82269,1,'2023-06-02 08:32:14','2023-06-02 08:32:14'),(91,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":11873,\"count\":6}]',29670627,1,'2023-06-02 08:32:30','2023-06-02 08:32:30'),(92,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":11872,\"count\":6}]',29668128,1,'2023-06-02 08:32:43','2023-06-02 08:32:43'),(93,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":11567,\"count\":6}]',28905933,1,'2023-06-02 08:33:26','2023-06-02 08:33:26'),(94,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":9498,\"count\":6}]',23735502,1,'2023-06-02 08:33:55','2023-06-02 08:33:55'),(95,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":9498,\"count\":6}]',23735502,1,'2023-06-02 08:34:12','2023-06-02 08:34:12'),(96,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":9498,\"count\":6}]',23735502,1,'2023-06-02 08:34:24','2023-06-02 08:34:24'),(97,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":9498,\"count\":6}]',23735502,1,'2023-06-02 08:34:43','2023-06-02 08:34:43'),(98,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":9493,\"count\":6}]',23723007,1,'2023-06-02 08:35:05','2023-06-02 08:35:05'),(99,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":9493,\"count\":6}]',23723007,1,'2023-06-02 08:36:41','2023-06-02 08:36:41'),(100,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":1}]',2499,1,'2023-06-02 08:37:04','2023-06-02 08:37:04'),(101,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":1}]',2499,1,'2023-06-02 08:37:15','2023-06-02 08:37:15'),(102,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":1}]',2499,1,'2023-06-02 08:37:23','2023-06-02 08:37:23'),(103,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":1}]',2499,1,'2023-06-02 08:37:50','2023-06-02 08:37:50'),(104,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":1},{\"id\":4,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":1}]',5398,1,'2023-06-02 08:39:21','2023-06-02 08:39:21'),(105,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":1},{\"id\":4,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":1}]',5398,1,'2023-06-02 08:42:42','2023-06-02 08:42:42'),(106,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":1},{\"id\":4,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":1}]',5398,1,'2023-06-02 08:45:28','2023-06-02 08:45:28'),(107,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":1},{\"id\":4,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":1}]',5398,1,'2023-06-02 08:47:10','2023-06-02 08:47:10'),(108,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":1},{\"id\":4,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg\",\"title\":\"Call of Duty: Modern Warfare 3\",\"price\":2899,\"qty\":1}]',5398,1,'2023-06-02 08:49:20','2023-06-02 08:49:20'),(109,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":3059}]',7644441,1,'2023-06-02 08:51:14','2023-06-02 08:51:14'),(110,40,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":3059}]',7644441,1,'2023-06-02 08:51:54','2023-06-02 08:51:54'),(111,43,'[{\"id\":8,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/qb8ef4cmTGYfTUJSLPsb11a54BYDUMDWi5s9KGw3.png\",\"title\":\"FEAR 3\",\"price\":499,\"qty\":43},{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":7,\"count\":6},{\"id\":19,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/qL5Nusvnd4ge65fQPifT9ZAwMf1TCzqVAjlqR0fV.jpg\",\"title\":\"TEKKEN 7\",\"price\":189,\"qty\":132}]',63898,1,'2023-06-05 09:02:07','2023-06-05 09:02:07'),(112,43,'[{\"id\":5,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg\",\"title\":\"Grand Theft Auto V\",\"price\":1499,\"qty\":300}]',449700,1,'2023-06-05 09:06:26','2023-06-05 09:06:26'),(113,46,'[{\"id\":2,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg\",\"title\":\"Forza Horizon 5\",\"price\":2999,\"count\":6,\"qty\":37171}]',111475829,1,'2023-06-05 11:26:25','2023-06-05 11:26:25'),(114,43,'[{\"id\":3,\"image_url\":\"https:\\/\\/109.191.89.254:4433\\/storage\\/images\\/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png\",\"title\":\"Call of Duty: Modern Warfare 2\",\"price\":2499,\"qty\":300,\"count\":6}]',749700,1,'2023-06-05 11:28:56','2023-06-05 11:28:56');
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
INSERT INTO `password_reset_tokens` VALUES ('nacof59626@goflipa.com','$2y$10$VZToQRPQl.YlzYfoilcCoOWrY9UBS1WkU60rUP3R40ZK7obRFlSKG','2023-05-28 18:35:59');
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
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
-- Table structure for table `platforms`
--

DROP TABLE IF EXISTS `platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platforms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforms`
--

LOCK TABLES `platforms` WRITE;
/*!40000 ALTER TABLE `platforms` DISABLE KEYS */;
INSERT INTO `platforms` VALUES (6,'PC','2023-05-21 17:56:50','2023-05-21 17:56:50'),(7,'Xbox 360','2023-05-21 17:57:04','2023-05-21 17:57:04'),(8,'PS 4','2023-05-21 17:57:11','2023-05-21 17:57:11'),(9,'PS 5','2023-05-21 17:57:19','2023-05-21 17:57:19'),(10,'PS 3','2023-05-21 17:57:28','2023-05-21 17:57:28'),(11,'XBOX ONE','2023-05-21 17:57:39','2023-05-21 17:57:39'),(12,'PS 4 PRO','2023-05-29 09:07:47','2023-05-29 09:07:47'),(13,'PS 4 SLIM','2023-05-29 09:07:54','2023-05-29 09:07:54'),(14,'XBOX ONE S','2023-05-29 09:08:01','2023-05-29 09:08:01'),(15,'XBOX ONE X','2023-05-29 09:08:27','2023-05-29 09:08:27'),(16,'XBOX SERIES X','2023-05-29 09:09:02','2023-05-29 09:09:02'),(17,'XBOX SERIES S','2023-05-29 09:09:09','2023-05-29 09:09:09');
/*!40000 ALTER TABLE `platforms` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'images/He7drdtvYOYDG63ATW7FFXsIQaXGx9Lz6un5cP2s.jpg',2,'2023-05-06 10:48:06','2023-05-06 10:48:06'),(2,'images/n6UQzNGXeBTEOl0y0Ap1N8HjT0ePNLwWBO4KjNK4.jpg',2,'2023-05-06 10:48:06','2023-05-06 10:48:06'),(3,'images/3kIfpJa9Sy0BxeiMZ5kMrLbwcymDBLRrxD4xIbx4.jpg',3,'2023-05-06 12:03:57','2023-05-06 12:03:57'),(4,'images/6p84stk7oBwdRBzEhjBC9tVCAO0ykZ13sXxyunhK.jpg',3,'2023-05-06 12:03:57','2023-05-06 12:03:57'),(5,'images/p0yE7ZhiOIIRjADTqz6YvXY2pIjG6dhcEhxxgmnw.jpg',4,'2023-05-06 12:04:35','2023-05-06 12:05:46'),(6,'images/Cw6ciXqQiVoGdAF1Ig3MzTZkbPN9HyijeGypS3q1.jpg',4,'2023-05-06 12:04:35','2023-05-06 12:05:46'),(7,'images/JduIyBvzLFOlAtlIBdjiRXDTK9hwLjOxGi0XkB6w.jpg',5,'2023-05-06 12:06:55','2023-05-06 12:06:55'),(8,'images/Khg6Av6G7zv1Xq9gne3wBexSZFWEfNwLY03GSkFe.jpg',5,'2023-05-06 12:06:55','2023-05-06 12:06:55'),(11,'images/kl4GZeYKZtXK4tKSL1XeI6bIV7KqTybcw3X5TxTH.jpg',10,'2023-05-06 12:07:38','2023-05-06 12:07:38'),(12,'images/y1uV6lvemu2skaJLSfaGfsIO36TV2PiXeNfqQxGg.jpg',10,'2023-05-06 12:07:38','2023-05-06 12:07:38'),(13,'images/nVIgcyJpWsVQpnXdVdtzkHwg6dM3SqVUF93eFSMH.jpg',11,'2023-05-09 15:21:19','2023-05-09 15:21:19'),(14,'images/L71VALiDSyNWhW4R8YwM95dDBuauDAMuCtFlFsvW.jpg',11,'2023-05-09 15:21:19','2023-05-09 15:21:19'),(15,'images/uTCToLy6dIw6lrMgou5gcZZzHhLSC74a97N2EJHr.png',13,'2023-05-22 17:19:38','2023-05-22 17:19:38'),(16,'images/VK7ES1I4MsIj8x3BPM9qjJOweLp0UlNQAgkvA7xf.png',13,'2023-05-22 17:19:38','2023-05-22 17:19:38'),(17,'images/Qb4zNHcOV38GKcyLYywzrPaLpFmRtfEpQmCAQj2M.png',14,'2023-05-22 17:26:56','2023-05-22 17:26:56'),(18,'images/iBkPIbtm5H3SFMiWHOrJ010DJ4GjBt6brhue3I52.png',14,'2023-05-22 17:26:56','2023-05-22 17:26:56'),(19,'images/MOaxLKHp5T8Bb5MfgzWVlMm7blihyo4ZVVd0r3Pp.png',15,'2023-05-22 17:30:24','2023-05-22 17:30:24'),(20,'images/KaegRlsoKK6LY20nMF00NRor150mPHOggvkgAJDE.png',15,'2023-05-22 17:30:24','2023-05-22 17:30:24'),(21,'images/nO9vaCCPn8JQGpD8ANvS8IDxS1MAgmuQCAG5qsQV.png',16,'2023-05-22 18:05:08','2023-05-22 18:05:08'),(22,'images/Ee3nRJ7HVFu2y3Cyt8pdPzl1U0m4txru4EMWswqx.png',16,'2023-05-22 18:05:08','2023-05-22 18:05:08'),(23,'images/gOXgEt1pVHTqyhelb0KHeXapR7CGCf1BgNIDngd6.png',17,'2023-05-22 18:09:03','2023-05-22 18:09:03'),(24,'images/02rUy0TRivDredmkqtXocrLpW4roLlCuxUZ0Afj7.png',17,'2023-05-22 18:09:03','2023-05-22 18:09:03'),(25,'images/HNlsI3lnS7sa8jcrSVLJPg9Kb9BmECz9RreTlkAA.png',18,'2023-05-22 18:15:42','2023-05-22 18:15:42'),(26,'images/8r8exiYClOWW6xq2SeeWQF0nv4PJyXRVQsDubw6V.png',18,'2023-05-22 18:15:42','2023-05-22 18:15:42'),(27,'images/6OPncR3fXBewQI6DbAmUpncmNfyBTzwYcGVZhwtG.png',19,'2023-05-22 18:17:41','2023-05-22 18:17:41'),(28,'images/4ZksdmVJ5qgi8woBAj8DHFFC80hnKcdWAX7xX7St.png',19,'2023-05-22 18:17:41','2023-05-22 18:17:41'),(29,'images/eTTEdLgqv1b4Z1cQ90mrBt0BaiJxCKV1PuutMj37.png',20,'2023-05-22 18:19:40','2023-05-22 18:19:40'),(30,'images/cHhtLpAQLlYxVCwCGBIWtsruujEwn3GewqgX9f5l.png',20,'2023-05-22 18:19:40','2023-05-22 18:19:40'),(31,'images/rY4sT1kSb9ICe6hVhya8k383J6MEcW8m919VrwiK.png',21,'2023-05-22 18:21:19','2023-05-22 18:21:19'),(32,'images/WZ23BuBdTMMN4SqOCBdoQfQ04TqhUS6bmMxHJI3x.png',21,'2023-05-22 18:21:19','2023-05-22 18:21:19'),(33,'images/bRtLh1rwUDjo2bEIAPSW0VqZ9nkAOYGuPojjiJi7.png',22,'2023-05-22 18:25:16','2023-05-22 18:25:16'),(34,'images/zyDUEJBsSalcsV1IYdCo9fZPQA5VM7xolYpRKvPy.png',22,'2023-05-22 18:25:16','2023-05-22 18:25:16'),(35,'images/OfYCA4Lu7I0PoyWZ6K7n3aSv0pP4zNz3IRHTMiDp.png',23,'2023-05-22 18:27:06','2023-05-22 18:27:06'),(36,'images/DMPCHROKpXVoFTV5PFTs8Ji6lj11y6S4Rktrj6ur.png',23,'2023-05-22 18:27:06','2023-05-22 18:27:06'),(37,'images/xh72QDa4bsWBVDUseHCfMBKciuPj59u9K0tc1alb.png',24,'2023-05-22 18:28:50','2023-05-22 18:28:50'),(38,'images/LT66jEdDtA6MlLKfnN77ZDoRJ1E0k5NSe5ELJxXz.png',24,'2023-05-22 18:28:50','2023-05-22 18:28:50'),(39,'images/s5rmxPV9xMvpwGwXLP9tuusnYI6CQ2FwTqBTqoxv.png',25,'2023-05-22 18:30:40','2023-05-22 18:30:40'),(40,'images/T25iylaEclDBzdDDlwBGJYuQDlTbu6WDw05d3lDC.png',25,'2023-05-22 18:30:40','2023-05-22 18:30:40'),(47,'images/KgdJPmzrt8DFDeRMk7fIQfcHXaGyMAF0cpEL3WK6.png',8,'2023-05-28 23:22:01','2023-05-28 23:22:01'),(48,'images/fKAA5mMXtIg2oBr3cm12D1hPJ1Aa7HTcroAermKh.jpg',8,'2023-05-28 23:22:01','2023-05-28 23:22:01'),(49,'images/ePwhGxejZznGg556sovhAlhu5lAWNYuv8sGa5zJW.jpg',8,'2023-05-28 23:22:01','2023-05-28 23:22:01'),(50,'images/APsNjR4rHQCJ9odlDWJzxWD3BB4DWc0XwOPj2j8C.jpg',18,'2023-05-30 07:14:50','2023-05-30 07:14:50'),(51,'images/OVmh9SOCR1Y2RrLUYPEveewHQEwCYkrFUGt5pktD.jpg',18,'2023-05-30 07:14:50','2023-05-30 07:14:50'),(52,'images/zWWt9GG9wIrdZjx8CCmHNoqhtpmXKuBRHERAMj4f.jpg',18,'2023-05-30 07:14:50','2023-05-30 07:14:50'),(53,'images/ulFDjuyPFB0wS2pMcJIZofD1zoUejPxGebCC2Jfg.jpg',18,'2023-05-30 07:14:50','2023-05-30 07:14:50');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_platforms`
--

DROP TABLE IF EXISTS `product_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_platforms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `platform_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_platforms_platform_id_foreign` (`platform_id`),
  KEY `product_platforms_product_id_foreign` (`product_id`),
  CONSTRAINT `product_platforms_platform_id_foreign` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`),
  CONSTRAINT `product_platforms_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_platforms`
--

LOCK TABLES `product_platforms` WRITE;
/*!40000 ALTER TABLE `product_platforms` DISABLE KEYS */;
INSERT INTO `product_platforms` VALUES (1,6,2,'2023-05-29 08:41:54','2023-05-29 08:41:54'),(2,9,2,'2023-05-29 08:41:54','2023-05-29 08:41:54'),(3,11,2,'2023-05-29 08:41:54','2023-05-29 08:41:54'),(4,7,3,'2023-05-29 08:43:07','2023-05-29 08:43:07'),(5,8,3,'2023-05-29 08:43:07','2023-05-29 08:43:07'),(6,10,3,'2023-05-29 08:43:07','2023-05-29 08:43:07'),(7,6,4,'2023-05-29 09:10:54','2023-05-29 09:10:54'),(8,7,4,'2023-05-29 09:10:54','2023-05-29 09:10:54'),(9,10,4,'2023-05-29 09:10:54','2023-05-29 09:10:54'),(10,6,5,'2023-05-29 09:11:14','2023-05-29 09:11:14'),(11,8,5,'2023-05-29 09:11:14','2023-05-29 09:11:14'),(12,9,5,'2023-05-29 09:11:14','2023-05-29 09:11:14'),(13,14,5,'2023-05-29 09:11:14','2023-05-29 09:11:14'),(14,15,5,'2023-05-29 09:11:14','2023-05-29 09:11:14'),(15,6,8,'2023-05-29 09:12:35','2023-05-29 09:12:35'),(16,7,8,'2023-05-29 09:12:35','2023-05-29 09:12:35'),(17,10,8,'2023-05-29 09:12:35','2023-05-29 09:12:35'),(18,6,10,'2023-05-29 09:12:44','2023-05-29 09:12:44'),(19,9,10,'2023-05-29 09:12:44','2023-05-29 09:12:44'),(20,6,11,'2023-05-29 09:13:51','2023-05-29 09:13:51'),(21,6,13,'2023-05-29 09:14:08','2023-05-29 09:14:08'),(22,8,13,'2023-05-29 09:14:08','2023-05-29 09:14:08'),(23,11,13,'2023-05-29 09:14:08','2023-05-29 09:14:08'),(24,12,13,'2023-05-29 09:14:08','2023-05-29 09:14:08'),(25,6,14,'2023-05-29 09:14:26','2023-05-29 09:14:26'),(26,9,14,'2023-05-29 09:14:26','2023-05-29 09:14:26'),(27,15,14,'2023-05-29 09:14:26','2023-05-29 09:14:26'),(28,6,15,'2023-05-29 09:14:33','2023-05-29 09:14:33'),(29,6,16,'2023-05-29 09:14:43','2023-05-29 09:14:43'),(30,7,16,'2023-05-29 09:14:43','2023-05-29 09:14:43'),(31,6,17,'2023-05-29 09:14:52','2023-05-29 09:14:52'),(32,9,17,'2023-05-29 09:14:52','2023-05-29 09:14:52'),(33,9,19,'2023-05-29 09:16:07','2023-05-29 09:16:07'),(34,16,19,'2023-05-29 09:16:07','2023-05-29 09:16:07'),(35,17,19,'2023-05-29 09:16:07','2023-05-29 09:16:07'),(36,7,18,'2023-05-29 09:16:21','2023-05-29 09:16:21'),(37,11,18,'2023-05-29 09:16:21','2023-05-29 09:16:21'),(38,8,20,'2023-05-29 09:16:56','2023-05-29 09:16:56'),(39,9,20,'2023-05-29 09:16:56','2023-05-29 09:16:56'),(40,12,20,'2023-05-29 09:16:56','2023-05-29 09:16:56'),(41,14,20,'2023-05-29 09:16:56','2023-05-29 09:16:56'),(42,6,21,'2023-05-29 09:17:19','2023-05-29 09:17:19'),(43,8,21,'2023-05-29 09:17:19','2023-05-29 09:17:19'),(44,9,21,'2023-05-29 09:17:19','2023-05-29 09:17:19'),(45,6,22,'2023-05-29 09:17:28','2023-05-29 09:17:28'),(46,6,23,'2023-05-29 09:17:50','2023-05-29 09:17:50'),(47,14,23,'2023-05-29 09:17:50','2023-05-29 09:17:50'),(48,6,24,'2023-05-29 09:18:15','2023-05-29 09:18:15'),(49,9,24,'2023-05-29 09:18:15','2023-05-29 09:18:15'),(50,16,24,'2023-05-29 09:18:15','2023-05-29 09:18:15'),(51,17,24,'2023-05-29 09:18:15','2023-05-29 09:18:15'),(52,6,25,'2023-05-29 09:18:36','2023-05-29 09:18:36'),(53,17,25,'2023-05-29 09:18:36','2023-05-29 09:18:36');
/*!40000 ALTER TABLE `product_platforms` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tags`
--

LOCK TABLES `product_tags` WRITE;
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
INSERT INTO `product_tags` VALUES (2,4,3,'2023-04-22 09:32:51','2023-04-22 09:32:51'),(3,2,4,'2023-04-22 09:38:37','2023-04-22 09:38:37'),(4,4,4,'2023-04-22 09:38:37','2023-04-22 09:38:37'),(5,6,4,'2023-04-22 09:38:37','2023-04-22 09:38:37'),(6,2,5,'2023-04-22 09:42:04','2023-04-22 09:42:04'),(7,4,5,'2023-04-22 09:42:05','2023-04-22 09:42:05'),(8,6,5,'2023-04-22 09:42:05','2023-04-22 09:42:05'),(11,4,8,'2023-04-23 10:35:51','2023-04-23 10:35:51'),(15,2,11,'2023-05-09 15:22:15','2023-05-09 15:22:15'),(16,1,15,'2023-05-22 17:35:19','2023-05-22 17:35:19'),(17,2,15,'2023-05-22 17:35:19','2023-05-22 17:35:19'),(18,6,15,'2023-05-22 17:35:19','2023-05-22 17:35:19'),(19,2,18,'2023-05-28 20:40:49','2023-05-28 20:40:49'),(20,2,8,'2023-05-29 00:11:11','2023-05-29 00:11:11'),(21,10,2,'2023-05-29 00:13:35','2023-05-29 00:13:35'),(22,12,2,'2023-05-29 00:13:35','2023-05-29 00:13:35'),(23,6,3,'2023-05-29 08:43:07','2023-05-29 08:43:07'),(24,7,3,'2023-05-29 08:43:07','2023-05-29 08:43:07'),(25,2,19,'2023-05-29 09:16:07','2023-05-29 09:16:07'),(26,4,19,'2023-05-29 09:16:07','2023-05-29 09:16:07'),(27,7,20,'2023-05-29 09:16:56','2023-05-29 09:16:56'),(28,10,20,'2023-05-29 09:16:56','2023-05-29 09:16:56'),(29,2,21,'2023-05-29 09:17:19','2023-05-29 09:17:19'),(30,8,21,'2023-05-29 09:17:19','2023-05-29 09:17:19'),(31,1,22,'2023-05-29 09:17:28','2023-05-29 09:17:28'),(32,4,22,'2023-05-29 09:17:28','2023-05-29 09:17:28'),(33,2,23,'2023-05-29 09:17:50','2023-05-29 09:17:50'),(34,4,23,'2023-05-29 09:17:50','2023-05-29 09:17:50'),(35,2,24,'2023-05-29 09:18:15','2023-05-29 09:18:15'),(36,4,24,'2023-05-29 09:18:15','2023-05-29 09:18:15'),(37,7,24,'2023-05-29 09:18:15','2023-05-29 09:18:15'),(38,8,24,'2023-05-29 09:18:15','2023-05-29 09:18:15'),(39,1,25,'2023-05-29 09:18:36','2023-05-29 09:18:36'),(40,4,25,'2023-05-29 09:18:36','2023-05-29 09:18:36'),(41,11,25,'2023-05-29 09:18:36','2023-05-29 09:18:36');
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
  `content` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `old_price` int(11) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Forza Horizon 5','Вас ждет незабываемое приключение в Horizon! Исследуйте яркие и постоянно меняющиеся ландшафты открытого мира Мексики с безграничным, увлекательным вождением на сотнях лучших в мире автомобилей.','<p>Возглавьте <b>захватывающие экспедиции</b> по ярким и постоянно меняющимся ландшафтам открытого мира Мексики, наслаждаясь безграничной и увлекательной ездой на сотнях лучших автомобилей мира. </p><p>Откройте для себя мир поразительных контрастов и красоты. Откройте для себя живые пустыни, пышные джунгли, исторические города, скрытые руины, нетронутые пляжи, обширные каньоны и высокий вулкан с заснеженной вершиной.</p>','images/rDMi67FVn6gqusOuNH3cUcOduuSQS7fX1nr0Qc5z.jpg',2999,3599,6,0,8,'2023-04-21 06:17:24','2023-06-02 08:54:12'),(3,'Call of Duty: Modern Warfare 2','Call of Duty: Modern Warfare 2 (или просто Modern Warfare 2) — шутер от первого лица, разработанный американской компанией Infinity Ward. Игра является шестой в серии Call of Duty. Проект официально анонсирован 11 февраля 2009 года. Сюжет игры является продолжением Call of Duty 4: Modern Warfare. Действие игры происходит в 2016 году, через 5 лет после событий в четвёртой части.','Как и в Call of Duty 4: Modern Warfare, игроку предстоят миссии за бойца спецподразделений западных стран (как и в предыдущих играх серии, будет несколько протагонистов). В игре присутствуют новые геймплейные элементы, например: подъём по обледенелому склону, бой на снегоходах, заплыв с аквалангами. В игре присутствуют элементы нелинейности, нехарактерные для серии Call of Duty. Также в первый раз в серии игрокам предоставлена возможность стрелять сразу из двух пистолетов (стиль акимбо), что особенно эффективно для заградительной стрельбы по врагам.','images/Dt2Zkql8mQ10UtkZj284C16GkqKjQKaHNHGhvBtg.png',2499,2899,6,1,7,'2023-04-22 09:32:51','2023-04-23 16:11:59'),(4,'Call of Duty: Modern Warfare 3','Call of Duty: Modern Warfare 3 — восьмая игра в серии Call of Duty, продолжение Modern Warfare 2, финальная часть трилогии Modern Warfare. Объявление о начале разработки было выпущено 9 апреля 2010 года. Официальный релиз на всех платформах состоялся 8 ноября 2011 года.','Третья мировая война продолжается. Планы Владимира Макарова вышли далеко за рамки планов Имрана Захаева. Владимир начал сотрудничать с многими командирами Африки, России и Ближнего Востока. Поэтому у него набралась солидная армия. Планы его заключались в захвате и оккупации Европы и Америки. И останавливаться он не намерен.','images/HwAGm5QO36UNds8yR4ZCoanFTn0VIO086MpErlMD.jpg',2899,0,8,1,6,'2023-04-22 09:38:37','2023-04-22 09:38:37'),(5,'Grand Theft Auto V','Grand Theft Auto V — компьютерная игра из серии Grand Theft Auto в жанре Action, разработанная компанией Rockstar North. Также известна как GTA 5 или GTA V. Это пятнадцатая игра в серии. Действия игры разворачиваются в городе Лос-Сантос, а также в сельской и пустынной местностях штата Сан-Андреас. Релиз игры на игровые приставки Xbox 360 и PS3 состоялся 16 сентября 2013 года. Выход на Xbox One и PS4 состоялся 18 ноября 2014 года. На ПК игра вышла 14 апреля 2015 года. Выход игры на консоли десятого поколения, а именно PlayStation 5 и Xbox Series X/S состоялся 15 марта 2022 года.','Исследуйте более 40 массивных обновлений, включающих обновление «Контракт», по ходу которого вам предстоит объединиться с Франклином Клинтоном и отправиться на поиски украденной музыки Доктора Дре; высокооктановые уличные гонки из обновления «Тюнинг в Лос-Сантосе»; ограбления на тропическом острове Кайо-Перико, ночные клубы и казино-отель Diamond; а также целый ряд всевозможных гонок, режимов, занятий и мест для встреч, которые могут быть доступны как для одиночной, так и многопользовательской игры – в том числе ночные и игровые клубы, вечеринки в пентхаусах, съезды автоклуба и многое другое.','images/pJASIm9KM8WuA9U82sQQ9HxK0EM9QTHawghvOA7q.jpg',1499,0,14,1,8,'2023-04-22 09:42:04','2023-04-27 04:27:42'),(8,'FEAR 3','Компьютерная игра в жанре шутера от первого лица с уклоном в хоррор, разработанная Day 1 Studios при содействии Monolith Productions. Игра является продолжением F.E.A.R. 2: Project Origin и третьей игрой в серии «F.E.A.R.». Издателем является Warner Bros. Interactive Entertainment. В России игру на PC издаёт Новый Диск, а на консолях Xbox 360 и PlayStation 3 игру издаёт 1C-SoftClub. Третья часть игры F.E.A.R была выпущена 21 июня 2011 года на персональные компьютеры и игровые консоли PlayStation 3 и Xbox 360. В России выпуск состоялся 23 июня 2011 года, а локализована игра была компанией «Новый Диск».','<b>Альма&nbsp;</b>в ожидании, и уровень страха возрастает, пока вы и ваш брат-каннибал сражаетесь с очередным кошмаром. Сражайтесь вместе или умирайте поодиночке на смертельных миссиях, чтобы противостоять вашей свихнувшейся матери. Игроки могут взять на себя роль Оперативника, генетически усовершенствованного солдата со сверхчеловеческими рефлексами и способностью манипулировать временем, или восставшим из мертвых духом его брата <b>Пакстона Феттела</b>, паранормальным существом, обладающим невероятной психической силой.','images/qb8ef4cmTGYfTUJSLPsb11a54BYDUMDWi5s9KGw3.png',499,899,6,1,10,'2023-04-23 10:35:51','2023-05-28 19:28:43'),(10,'Resident Evil 4','Resident Evil 4 — ремейк оригинальной игры Resident Evil 2005 4 года.  Переосмысление к 2023 году, чтобы принести современный ужас выживания.  Resident Evil 4 сохраняет суть оригинальной игры, представляя модернизированный игровой процесс, переосмысленную сюжетную линию и ярко детализированную графику, что делает ее последней игрой ужасов на выживание, в которой пересекаются жизнь и смерть, ужас и катарсис.','С момента биологической катастрофы в Раккун-Сити прошло 6 лет.\r\n\r\nЛеон С. Кеннеди, один из выживших в инциденте, был завербован в качестве агента,\r\nподчиняющегося непосредственно президенту Соединенных Штатов.\r\n\r\nИмея за плечами опыт нескольких миссий,\r\nЛеон отправляется спасать похищенную дочь президента.\r\n\r\nОн выслеживает ее в уединенной европейской деревне,\r\nгде с жителями деревни что-то ужасно не так.\r\n\r\nИ занавес поднимается над этой историей дерзкого спасения и изнурительного ужаса.','images/0qVdbyQajPXsUl3KnSwq2TSqbZdsergYn5HGFOnE.jpg',4299,0,6,1,7,'2023-04-24 03:05:03','2023-04-24 03:05:03'),(11,'7 Days to Die','Компьютерная игра в жанре survival horror и симулятора выживания с открытым миром, разрабатываемая компанией The Fun Pimps Entertainment. Игра была выпущена в раннем доступе в Steam в декабре 2013 года для операционных систем Windows и OS X. В июле 2016 года компания Telltale Publishing выпустила версии для игровых приставок PlayStation 4 и Xbox One. Действие 7 Days to Die происходит в процедурно генерируемом, полностью разрушаемом мире, охваченном зомби-апокалипсисом; чтобы сохранить жизнь своему персонажу, игрок должен обороняться от враждебных зомби, собирать различные ресурсы и строить здания.','Уже продано более 14 миллионов копий 7 Days, поэтому можно считать, что эта игра с ее уникальными возможностями для построения мира и создания предметов изменила жанр «выживание». Действие разворачивается в суровом постапокалиптическом мире, захваченном нежитью. 7 Days — это единственная в своем роде игра с открытым миром, сочетающая в себе элементы шутера от первого лица, хоррора на выживание, защиты замка и ролевой игры. В ней можно сражаться, создавать предметы, собирать трофеи, добывать ресурсы, исследовать мир и развивать персонажа: все эти возможности уже оценили фанаты по всему миру. Приобретите изменившую жанр RPG-песочницу с выживанием среди зомби, которая задала тон другим похожим играм. Вас ждет Невезган!','images/AEoIw38Q1O6JUY39ur8Y1IVeIAFigRGBjsO5twOy.jpg',449,799,1,1,7,'2023-05-06 06:38:10','2023-05-09 15:22:15'),(13,'MORTAL SHELL','Mortal Shell — это беспощадный и проработанный ролевой боевик, испытывающий ваши рассудок и стойкость в разрушенном мире. Пока остатки человечества увядают и гниют, фанатичные враги терзают руины. Они безжалостны, поэтому выживание требует высочайших настороженности, точности и инстинктов. Находите скрытые святилища фанатичных последователей и познайте своё истинное предназначение.','Эта истерзанная земля кишит мертвецами, но не все они безнадежны. Вам предстоит найти останки побеждённых воинов. Пробудите их смертные оболочки, захватите тела и существенно расширьте свои знания о различных способах ведения боя. Чем глубже становится ваша связь с каждой оболочкой, тем лучше вы овладеваете таящимися в ней талантами.\r\n\r\nОбдумывайте каждый шаг и стратегию в бою. Пускайте в бой свой клинок, только когда появляется возможность нанести удар. Рассчитывайте парирования, чтобы проводить разрушительные контратаки. Изготавливайте улучшения, протравливайте оружие с помощью кислоты, изучайте тёмные способности тайной магии, наделяющие ваши атаки сверхъестественной разрушительной силой.\r\n\r\nВаш путь усеян отчаянными противниками, поклоняющимися таинственным богам. Вы повстречаете жалких и гротескных созданий, но не позволяйте страху преградить вам путь. Наберитесь смелости и взгляните ему в глаза.','images/4buYB9dwa4JA7DgGeODQ3tuFniUqXcUpvy7AcDAn.jpg',245,NULL,22,1,7,'2023-05-22 17:19:38','2023-05-22 17:19:38'),(14,'HORIZON ZERO DAWN COMPLETE EDITION','Компьютерная игра в жанре action/RPG с открытым миром, разработанная нидерландской студией Guerrilla Games и изданная Sony Interactive Entertainment для игровой консоли PlayStation 4 в 2017 году; версия игры для Windows вышла 7 августа 2020 года. Действие Horizon Zero Dawn происходит в постапокалиптическом мире, захваченном роботами; малочисленные люди живут в первобытных племенах.','БОЛЬШЕ НЕ НАША ЗЕМЛЯ\r\n\r\nВместе с Элой отправляйтесь в путешествие по загадочному миру смертоносных машин.\r\n\r\nЮная охотница-изгой стремится узнать свое предназначение... и остановить катастрофу.\r\n\r\nИспользуйте сокрушительные атаки против уникальных машин и представителей враждебных племен, исследуя опасную дикую природу.\r\n\r\nПолное издание для ПК включает получившую множество наград ролевую игру Horizon Zero Dawn™ и дополнение The Frozen Wilds с новыми землями, умениями, оружием и машинами.','images/ZL0yUzY2DO8VEu6oLRR1DVQz5tU9w1heQuuYDtvX.jpg',1095,NULL,14,1,12,'2023-05-22 17:26:56','2023-05-22 17:26:56'),(15,'CRUSADER KINGS III: TOURS & TOURNAMENTS','Жизнь — это приключение! Напишите собственную эпическую историю с Crusader Kings III: Tours & Tournaments.  Исследуйте свое королевство, участвуйте в турнирах, устраивайте празднества. Но будьте начеку! Праздник — лучшее время для заговора.  Вас ждет мир подвигов, испытаний и приключений, а также крайне захватывающая история.','Жизнь — это приключение! Напишите собственную эпическую историю с Crusader Kings III: Tours & Tournaments.\r\n\r\nИсследуйте свое королевство, участвуйте в турнирах, устраивайте празднества. Но будьте начеку! Праздник — лучшее время для заговора.\r\n\r\nВас ждет мир подвигов, испытаний и приключений, а также крайне захватывающая история.','images/NEoPx2tXDEU1XatRVDJaZrJrwpR99CAlxOZ5BraA.jpg',1075,1100,16,1,4,'2023-05-22 17:30:24','2023-05-22 17:30:24'),(16,'DEAD ISLAND DEFINITIVE EDITION','Остров Баной стал очагом странной эпидемии. Гуляющий по его просторам вирус вызывает у людей жуткие мутации и в одночасье превращает их в бездушных бродячих мертвецов, жаждущих человеческой плоти.  Готовы купить Dead Island Definitive Edition на steampay.com и вступить в неравную борьбу с заполонившими цветущие земли чудовищами? Тогда действуйте! Толпы безумцев уже заждались вас.','Великолепный мир. Курортного типа остров, раскинувшийся среди океана, манит и завораживает природной красотой. Его можно и нужно исследовать, тем более что путешествие по его территории не будет ограничиваться игровым сценарием. Однако будьте осторожны! Неизведанные просторы не так гостеприимны, как кажутся.\r\nЧто в кустах? Райское местечко кишит зомби, которые мечтают о свежине и уже видят, как закусывают незваными гостями. Не доставьте им этого удовольствия в реальности!\r\nВот это вляпались! Вступить в противостояние с зомби вам придется с практически голыми руками, так что не стесняйтесь задействовать все, что окажется под рукой. Полезные предметы всегда можно модернизировать, превратив в действительно грозное оружие. Утыкайте биту гвоздями, и она смачно вопьется в разваливающуюся голову врага. А может, вы расстреляете атакующих воспламеняющимися патронами и насладитесь фаер-шоу?\r\nЗдесь все против вас. Осложнять борьбу за выживание будет изменчивая погода, так что постарайтесь адаптироваться к ее сюрпризам и обернуть их себе на пользу.\r\nЗащита или маниакальный синдром? Раскраивайте черепа, с хрустом ломайте кости, наносите иные страшные увечья противникам, чтобы получше рассмотреть, как они разваливаются по частям. Отменно налаженная система повреждений в подробностях продемонстрирует вам ход процесса.\r\nКооперативный режим. Отбиваться от лезущих изо всех щелей зомби в хорошей компании веселее, так что берите с собой друзей и за дело!','images/Dl2aCEbTZTKtSrq8rRN5XFgXL1m2X3qEbzJNE5s9.jpg',355,419,8,1,7,'2023-05-22 18:05:08','2023-05-22 18:05:08'),(17,'METRO EXODUS GOLD EDITION','Шутер от первого лица с элементами сурвайвал-хоррора и стелс-экшена, продолжение популярной игровой серии Metro от украинских разработчиков 4A Games.  Действие игры разворачивается сразу после событий Metro: Last Light. Главный герой с группой выживших ордена «Спарта» отправляется в путешествие на бронированном поезде «Аврора» далеко на восток, чтобы найти новое место для жизни в постапокалиптической России.','Прошло четверть века с тех пор, как ядерная война опустошила землю. Москва лежит в руинах, и несколько тысяч выживших вынуждены бороться за существование в тоннелях метро.\r\n\r\nИх не убила отравленная природа и мутировавшие чудовища, они пережили сверхъестественный кошмар и ужасы гражданской войны.\r\n\r\nТеперь в роли Артема вы должны покинуть метро и возглавить бойцов ордена \"Спарты\", чтобы отправиться в невероятное путешествие по постапокалиптическим землям России в поисках новой жизни на Востоке.\r\n\r\nMetro Exodus – это эффектный шутер от первого лица с захватывающим сюжетом. 4A Games отлично совместили напряженные сражения, исследования и пугающую атмосферу, создав один из самых убедительных игровых миров в истории.\r\n\r\nОтправляйтесь в путешествие по диким землям России. Вас ждут большие нелинейные уровни и захватывающая сюжетная линия. Испытайте на себе весну, лето, осень и ужасы ядерной зимы.\r\n\r\nСюжетная линия Metro Exodus, вдохновленная романами Дмитрия Глуховского, продолжает историю Артема в лучшем приключении в серии Metro.','images/E2asebB1m2TS0Q416lLUw47CjKiIfpKdf5nNpbKW.jpg',909,1599,16,1,7,'2023-05-22 18:09:03','2023-05-22 18:09:03'),(18,'MOUNT & BLADE II: BANNERLORD','Огромный мир этой великолепной ролевки стал песочницей для глобальнейших сражений средневековых армий. Кальрадийская Империя близка к краху, но у вас есть отличный шанс купить Mount & Blade II: Bannerlord на steampay.com и взять ее территории под свой контроль, раз и навсегда покончив с распрями.  В качестве кого выйти на поле брани – великого полководца, рыцаря или тылового стратега – решайте сами. Груз ответственности от этого меньше не станет!','<p>Особенности игры:\r\nМасштабный игровой мир. Действия развернутся в сеттинге Кальрадии, карта которого расширилась за счет присоединения восточных и южных областей. Открытые для исследований игровые просторы могут быть узнаваемы почитателями серии, однако они скрывают совсем другую историю.\r\n</p><ol><li><u><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\">Очки </font><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\">влияния</font></u>. Зарабатывайте эту своеобразную игровую валюту, верой и правдой служа королевству. Громите разбойничьи отряды, совершайте бравые набеги на вражеские тылы, захватывайте пленных – в общем, используйте любые доступные пути. Очки влияния очень пригодятся вам впоследствии!\r\n</li><li><u>Поумневшие враги</u>. Вырезать их толпы в одиночку уже не получится. Кроме того, что врагов стало больше, они перестали кучковаться и научились просчитывать ваши действия наперед. Адаптировавшись к стилю игрока, они могут доставить много неприятностей, так что готовьтесь к серьезному противостоянию.\r\n</li><li><u>Доработанная арена</u>. Теперь вышедшие на нее равны в своих шансах уцелеть. Все стартуют с идентичным оружием. Сражаться стало реально интереснее, но вот побеждать – в разы сложнее.\r\n</li><li><u>Грандиозный мультиплеер</u>. Сойдитесь стенка на стенку и снесите оппонентов с поля боя, атаковав их стоя плечом к плечу со своими верными солдатами.\r\n</li><li><u>Оставьте потомство</u>. Хотите играть вечно – позаботьтесь о продолжении рода. Тогда после гибели вы сможете продолжить участие в эпопее, выйдя на просторы игры в качестве сына или дочери главного героя.\r\n</li><li><u>Окно статистики</u>. Следите за собственным рейтингом в глазах союзников. Просматривайте портреты примкнувших к вам полководцев и отдавайте приказы на расстоянии.\r\n</li><li><u>Герои тоже устают</u>. Дайте отдохнуть протагонистам, поручив ведение осад и присмотр за своими деревнями компаньонам. Используйте тайм-аут для развлечений, которых в игре предостаточно.</li></ol>','images/DcqhNOHStixLsNv17u5FZUgenWVzziVGkZowqv7D.jpg',1619,1699,23,1,13,'2023-05-22 18:15:42','2023-05-28 21:01:23'),(19,'TEKKEN 7','Ревность, обида, подлость, месть, защита чести – серия TEKKEN дала четко понять, что у каждого своя причина для развязывания конфликта и открытой конфронтации. Дурные ли это мотивы или благие – это все равно путь, а его мы всегда выбираем сами. История воинствующего клана подходит (к логическому ли?) концу. Те, кто желает в последний раз окунуться в проблемы семейства Мисима, уже могут купить TEKKEN 7.  То, что расскажет ее сюжет, повергнет посвящённых в таинство происходящего в настоящий шок. Наконец-то раскроется истинная причина каждого противостояния! Но все же основное в TEKKEN – это далеко не история, пусть даже интригующая. Эта игра – для любителей зрелищных и напряженных поединков. Победа, безусловно, важна, но прежде всего бой ради самого боя. А уж боевая механика в новой серии будет на высоте! Она претерпела заметные изменения и позволит, накапливая специальную энергию, увеличивать урон от своих атак и получатьть доступ к непрерывным комбо. Бессмертным это вас, конечно, не сделает, но шансы на успех увеличит.','Особенности игры TEKKEN 7:\r\nКрасивейшая игра серии. Использование Unreal Engine 4 позволило представить поединки в сногсшибательном качестве. Эффектность приемов в сочетании с фотореалистичностью графики производят неизгладимое впечатление.\r\nИстория с сюжетом. С такого ракурса на клан Мисима вы еще не смотрели. Возможно, 7 глава игровой летописи радикально изменит ваше отношение к воинствующей касте. Так о чем же поведают кинематографические вставки, иллюстрирующие сюжетные битвы?\r\nВыбор персонажей. Он, как всегда в этой серии, на высоте. Среди трех десятков бойцов отыщутся как ветераны, так и новобранцы, ни разу не убивавшие врага. Это не мешает последним владеть массой полезных приемов, что дает игроку шанс выбрать свой стиль и тактику боя.\r\nКлассические поединки. Они снова актуальны, к тому же теперь будут еще разнообразнее и зрелищнее, так как основаны на новой механике. При этом техника проведения приемов упрощена, что позволит быстро втянуться в игру новичкам.\r\nВстречайте гостей. В трехмерный мир TEKKEN призван Акума, герой популярной Street Fighter. Чью бы сторону он не принял в конфликте, его фирменные приемы везде будут кстати.\r\nФинальный бой. Не пропустите возможности узнать, чем завершится почти двадцатилетнее противостояние клана Мисима. Спешите купить ключ TEKKEN 7, чтобы в последний раз понаблюдать за тем, как герои в кровавых боях добывают свое право управлять империей.','images/qL5Nusvnd4ge65fQPifT9ZAwMf1TCzqVAjlqR0fV.jpg',189,1199,18,1,7,'2023-05-22 18:17:41','2023-05-22 18:17:41'),(20,'MORTAL KOMBAT X','Кто на новенького? Кому не терпится разбросать свои кишки и конечности по боевым аренам? Вы действительно хотите это знать? Тогда предложение купить Mortal Kombat X на steampay.com прозвучало сейчас для вас!  Разработчики самого жестокого из файтингов породили нечто невероятное! Логическая развязка событий подана геймерам во всей их красе: с обилием впечатляющих маниакальностью катсцен и кровопролитных драк. Все происходящее с телами подается в подробной и реалистичной прорисовке, так что слабонервным лучше не ввязываться в происходящее, ну а остальным – удачи!','Особенности игры:\r\nПо-настоящему хардкордный мир. Разработчики не поскупились на мрачность пейзажей. Особый колорит происходящему придали за счет интерактивности и динамичности окружения.\r\n33 персонажа. Их основная часть отлично известна поклонникам серии, однако среди знакомых лиц мелькнут и новые. Каждый из них может быть одарен по-своему, так что подобрать героя под свою игру труда не составит.\r\nБоевые стили. В новой серии их предусмотрено три. Вы сможете повоевать издалека, держа противника на дистанции меткими выстрелами из винтовки, или подпустить его поближе и пустить в ход пистолет. А можете взять кинжал и ввязаться врукопашную. Тут уж, как говорится, кому что нравится.\r\nГде поразвлечься? Вас ждет чертова дюжина играбельных  арен, с бэкграундом которых впервые можно взаимодействовать, причем часть из них представлена в двух вариантах. Такое разнообразие полей сражений позволит получить неповторимое удовольствие от игры, причем как в прямом, так и в переносном смысле. Ни в одно противостояние дважды вступить не удастся, так что действуйте наверняка и сразу!\r\nЗахватывающий геймплей. Хоть механика игры претерпела всего лишь точечную корректировку, нововведений оказалось предостаточно. Групповые схватки сменили жесткие поединки, а к сюжетной кампании и мультиплееру добавились испытания. Чем заняться: разборками с десятком противников, лихо побеждая их одного за другим, или зависнуть в режиме бесконечной игры – решайте сами.','images/mBRcYGdUxIeKO19gD74OLhIie1Vbx8BW1WzfRCyb.jpg',299,699,16,1,7,'2023-05-22 18:19:40','2023-05-22 18:19:40'),(21,'DARK SOULS REMASTERED','Шедевр, покоривший игровой мир несколько лет назад, реинкарнировался. Он вернулся на мониторы в новом качестве и в компании с дополнением Artorias of the Abyss. Избранный мертвец уже готов отправиться в легендарный Лордран, где его ждут великие дела.  Фэнтезийная вселенная поражена проклятием. Чтобы зажечь угасающее пламя и вернуть в этот тускнеющий на глазах мир краски, придется купить Dark Souls: Remastered на steampay.com и хорошенько попотеть над поиском решений глобальных проблем.','Особенности игры:\r\nМрачная вселенная. Хорошо знакомый мир не стал добрее. Он по-прежнему полон страхов, тайн и надежд, но уже в новой интерпретации.\r\nОтсутствие локаций. Исследовать игровые просторы стало сложнее и опаснее для жизни, так как в игре работает бесшовная генерация. Запоминайте расположение знаковых объектов, иначе попасть на еще неизведанные территории не получится.\r\nРедактор персонажа. Им в ремейке компенсировали отсутствие новых гильдий. Гибкая ролевка позволяет миксовать между собой характеристики разных классовых представителей. Создайте универсального героя, управлять которым будет комфортно именно вам, и испробуйте его в деле.\r\nУсовершенствованные враги. В их полку не то чтобы прибыло, однако справиться с ними стало труднее. Даже простые копейщики могут выбить из колеи, о схватках же с эпичными же боссами вообще думать страшно!\r\nПроработанный мультиплеер. Теперь на арене сражений на специально выделенных серверах сходятся до 6 игроков. Режим пополнился флягой эстуса, позволяющей восполнять растраченное здоровье, и возможностью отключения глобального метчмейкинга. Уравнены шансы в боях с фантомами.\r\nСмерть обратима. Гибель в пылу сражения не выводит из строя навсегда. Вашего героя ждет возрождение в рандомном месте, так что внимательно следите за происходящим, чтобы динамично влиться в текущие события.\r\nБогатый геймплей. Проходить игру можно снова и снова, каждый раз вооружаясь новой комбинацией заклинаний и оружия, а также регулярно облачаясь в новые доспехи. Наработайте беспрецедентный игровой опыт, выработав личный игровой стиль, и игра покорится вам!','images/ppPCSsPuwsyRjuJg8mmSQKjlSsKMQ0FG4eOO7Fji.jpg',1195,1599,12,1,13,'2023-05-22 18:21:19','2023-05-22 18:21:19'),(22,'RESIDENT EVIL 2 / BIOHAZARD RE:2','Давненько не заглядывали в Раккун-сити? Не в курсе тамошних новостей? Тогда вам стоит купить Resident Evil 2 на steampay.com. Легендарная игра вернулась в новой графике, с удобным управлением, OTS-камерой, демонстрирующей вид из-за плеча героя и, конечно же, предлагает незабываемые приключения.  Сюжетная линия продолжена. Утечка Т-вируса, превратившего некогда цветущий город в настоящий ад, остановлена. Однако его улицы по-прежнему полны заматерелых бродячих мертвецов. Возьмите на себя миссию по радикальной зачистке территории, и пусть удача не оставит вас в этом архисложном деле!','Зашкаливающая хоррорность. Уровень насилия в игре – недетский. Все последствия перестрелок с зомби демонстрируются с ужасающей реальностью. Пулевые раны обильно кровоточат, отстреленные руки отваливаются, а головы, при попадании в них, просто рвутся в мелкие клочья. В общем, слабонервным лучше покурить в стороне и не ввязываться в происходящее!\r\nЗабудьте о благородстве. Вежливые зомби остались в прошлом. Нынешняя нежить потеряла страх и не брезгует атаковать всем скопом, нанося катастрофический урон. Будьте готовы ускориться и, как минимум, удвоить свои усилия в противостоянии с ними.\r\nСовершенствуйте оружие. Хоть арсенал и содержит всевозможные модели оружия, с простым огнестрелом наперевес из передряг выйти не удастся. Есть, конечно, кое-что потяжелей, но и дробовик не всегда способен выручить. Проблему решит возможность апгрейда боевых единиц, так что не упускайте возможность прокачать свои «аргументы».\r\nСложность. Выбирайте режим прохождения в соответствии со своими возможностями и не надейтесь, что наличие OTS-камеры упростит вам жизнь. Делать хэдшоты будет очень непросто!\r\nСтарые герои на новый лад. Обновленный дизайн Клэр и Леона вызывает неподдельный восторг и заставляет по-иному воспринимать полюбившихся персонажей.\r\nВсе на месте. Ремейк сохранил азартность сражений, необходимость исследования локаций, решения загадок и прохождения квестов для переходов на новые карты.','images/86jKeKYfmdSsnO7sW8WDtUi8LVAkft6m5l5WLcia.jpg',695,1599,14,1,7,'2023-05-22 18:25:16','2023-05-22 18:25:16'),(23,'MIDDLE-EARTH: SHADOW OF MORDOR GAME OF THE YEAR EDITION','Мечтали побывать в знаменитом Средиземье? Тогда поспешите купить Middle-Earth: Shadow of Mordor на steampay.com и станьте участником настоящей вендетты!  Под ваш контроль будет отдан потерявший семью и сумевший воскреснуть из мёртвых следопыт Талион. Поднявший его из могилы Дух отмщения дал несчастному сверхъестественные силы и направил его в лабиринты Мордора вершить правосудие. Но так ли уж бескорыстен благодетель и сможет ли герой вовремя распознать подвох?','Особенности игры:\r\nАдаптирующийся мир. Технология Nemesis позволила создать динамичное окружение. Оно способно не просто запомнить вас, а адекватно реагировать на все предпринимаемые вами шаги, молниеносно подстраиваясь под диктуемый стиль игры.\r\nКаждый враг – индивидуум. Противники неординарны и выглядят непобедимыми, поэтому, прежде чем ринуться в атаку, не поленитесь изучить их. Отыскать слабинки, которые можно было бы использовать себе во благо, будет непросто, но крайне необходимо. Без этого врага не уничтожить!\r\nОткрытая атака или стелс-ход? Как расправляться с врагом, решайте сами. Чувствуете силы лезть на рожон – пожалуйте в рукопашную стычку! Но оправдан ли риск? Возможно, лучше сработать исподтишка и стравить противников друг с другом, воздействовав на их психику?\r\nПрокачайтесь до совершенства. Стать опаснейшим существом в Мордоре помогут полученные награды и достижения. Они откроют доступ к новым навыкам и умениям, а также позволят усовершенствовать оружие.\r\nОпасайтесь мести. Расправляться с врагом надо беспощадно, так сказать, с гарантией. Иначе выжившие в схватке оправятся, прокачают свои навыки и вернутся за вашей жизнью.\r\nСделайте тайное явным. Разберитесь с произошедшим в промежутке между описанными в «Хоббите» и «Властелине колец» событиями. Это прольет свет на появление могущественных колец власти.','images/e5ZBKoREB8RDR9ybdnmsDjMrTuP844XR8W9fGdyz.jpg',395,899,18,1,12,'2023-05-22 18:27:06','2023-05-22 18:27:06'),(24,'DOOM ETERNAL','В поисках источников неисчерпаемой энергии люди забыли страх. Ученым, перед которыми поставлена задача отыскать их во что бы то ни стало, ничего не остается делать, как рыть носом землю. Причем на такую глубину, где и чертям жутко!  Шутки шутками, но шустрые ребята реально докопались до преисподней, что никого не порадовало. Адские врата распахнулись, и на Землю хлынули демонические легионы. Практически беззащитная планета на грани гибели. Готовы купить Doom Eternal на steampay.com и отправиться прямо в пекло перерабатывать на кровавый фарш всех, кто добровольно не вернется восвояси?','Особенности игры:\r\nНовый сеттинг. Основные события развернутся на Земле, хотя и Марс со своими спутниками не останется в стороне.\r\nВертикальный геймплей. Дробовик, модифицированный мощным крюком, позволяет творить чудеса. Карабкайтесь по уступам, цепляйтесь за демонов и валите их прямо в воздухе. Такой нежданчик точно выбьет противника из колеи!\r\nЗдравствуйте, гости! Принимайте обличье демона и отправляйтесь наводить шорох в чужую игру. К вам тоже могут заглянуть на огонек, причем не поодиночке, а целой группой. Так что если не готовы встречать гостей, отключайте функцию!\r\nОбилие врагов. Демоны плодятся в арифметической прогрессии, так что мясорубке крутиться и крутиться. В помощь новичкам в игру подтянутся и старые приятели: Манкубус, Думхантер, Мародер и иже с ними.\r\nНи минуты покоя. Ураганность экшена зашкаливает. Даже не мечтайте о спокойном уголке и нескольких секундах передыху. Вы – машина для убийств, потому бегите, скачите, крушите, нашпиговывайте демонов свинцом, и все это под чудную музычку.\r\nМодернизированный костюм. Никогда не знаешь, где повезет нарваться на демона, поэтому лучше быть во всеоружии. Именно потому ваш костюм был слегка усовершенствован. На левом плече установлена мини-пушка, стреляющая как огнем, так и разрывными гранатами, а в рукаве спрятан острый нож, которым можно разделать врага как черепаху!\r\nДополнительная жизнь. Получайте респаун без возвращения к последней точке сохранения. Это сэкономит время и позволит стартануть непосредственно с места смерти!','images/yTWeH76G82V4r1YUVqYoCjfYFgwv4RC0NJJs8fAW.jpg',995,1599,22,1,7,'2023-05-22 18:28:50','2023-05-22 18:28:50'),(25,'READY OR NOT','Ready or Not — это остросюжетный тактический шутер от первого лица, посвященный опасным будням бойца спецназа.','Главное — реализм\r\n\r\nВ VOID Interactive уделили большое внимание реализации правил проведения операций и созданию строгой, но справедливой системы оценки успехов игрока. Для консультаций привлекались сотрудники правоохранительных органов со всего мира. Всё, что касается стрельбы, выполнено на невиданном ранее уровне реализма: смоделированы баллистические характеристики, динамика рикошета, сопротивление кевлара и бронепластин, а также разрыв и импульс пуль.\r\n\r\nПроработанное и удобное управление\r\nСложная система перемещения и взаимодействия с оружием обеспечивает небывалый уровень контроля в любой ситуации. Элементы управления интуитивно понятны, так что запоминать десятки клавиш не придется!\r\n\r\nСистема планирования\r\nПрежде чем отправляться на задание, вам предстоит изучить схему здания, прослушать брифинг и разработать план операции, подобрать экипировку (баллистические щиты, тараны, тактические лестницы и многое другие) и при необходимости привлечь помощников, например снайперов или специалистов по ведению переговоров.\r\n\r\nРазнообразие режимов игры\r\nВосстановите порядок вместе с друзьями в совместном режиме, возглавьте первоклассную команду управляемых компьютером спецназовцев в одиночной сюжетной кампании или сразитесь с мятежной организацией в яростной сетевой битве.\r\n\r\nДетальная персонализация\r\nНа выбор предлагается более 60 уникальных предметов экипировки. Оптимальное сочетание оружейной оптики, дульных модификаций, магазинов и цевье дадут преимущество в бою и помогут одержать верх в любой ситуации. Если вы готовы пожертвовать мобильностью в угоду безопасности, загружайтесь бронепластинами и тяжелой броней. И не забудьте про уникальную униформу и командные нашивки!','images/TDk2YkT8MYXfw67a22ICsxz2999U8hamZ85JuXeB.jpg',1215,1299,14,1,12,'2023-05-22 18:30:40','2023-05-22 18:30:40');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_product_id_foreign` (`product_id`),
  CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (3,5,'Никитака','kasdasdkd@gmail.com','Супер!','Call of Duty: Modern Warfare 3 — восьмая игра в серии Call of Duty, продолжение Modern Warfare 2, финальная часть трилогии Modern Warfare. Объявление о начале разработки было выпущено 9 апреля 2010 года. Официальный релиз на всех платформах состоялся 8 ноября 2011 года.',4,'2023-05-28 16:16:12','2023-05-31 17:38:15'),(4,3,'Жанна','adaksdkas@mail.ru','Дорого!','Товар пришёл быстро, но стоит дорого!',4,'2023-05-28 16:36:28','2023-05-28 16:36:28'),(5,1,'Богдан','b-inozemtsev@list.ru','Так себе','Игра абсолютно ни о чём, ставлю 1 звезду на ностальгию!\n-реп',3,'2023-05-30 14:28:14','2023-05-30 14:28:14'),(6,4,'Rab1d','onetaphack@gmail.com','Хорошая игра','ностальгия наманая',3,'2023-06-01 09:01:01','2023-06-01 09:01:01');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'стратегия','2023-04-19 06:43:58','2023-04-19 06:43:58'),(2,'фантастика','2023-04-19 06:46:54','2023-04-19 06:46:54'),(4,'шутер','2023-04-19 07:27:50','2023-04-19 07:27:50'),(6,'стрелялки','2023-04-22 09:37:03','2023-04-22 09:37:03'),(7,'18+','2023-04-22 09:37:14','2023-04-22 09:37:14'),(8,'зомби','2023-05-09 15:25:19','2023-05-09 15:25:19'),(9,'выживалка','2023-05-09 15:25:26','2023-05-09 15:25:26'),(10,'спорт','2023-05-22 18:44:40','2023-05-22 18:44:40'),(11,'стелс','2023-05-22 18:44:50','2023-05-22 18:44:50'),(12,'симулятор','2023-05-22 18:45:01','2023-05-22 18:45:01');
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
  `login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Roben','','12345','Олегс','+7(878)788-78',0,'2023-04-19','2023-05-21'),(2,'Prover','','dsfsdf','Олегс','+7(878)788-78',0,'2023-04-20','2023-05-21'),(6,'Yurkaa','dadada@mail.ru','$2y$10$9Sbs5wPC3/IUgpJl2aXKZu2lWZgzVaWfuyeDD/PR3DMujqFibLQ76','Олегс','+7(878)788-78',0,'2023-05-06','2023-05-30'),(12,'Roben1','','karbon','Олегс','+7(878)788-78',0,'2023-05-13','2023-05-21'),(13,'Fallik','onetaphack@gmail.com','$2y$10$BIDz4GhGEvzdOHG2WQetre8AGDivhFV/ksvfOMo.Am0Ns.69tZ1Ya','Олег','+7(878)788-78-82',1,'2023-05-13','2023-05-30'),(15,'maxikvtoroi','','$2y$10$m.srrBxg6ginZOV8UYFZbuV51BFVUIOHQs2/G226yHpG4HcxBZdIu','Олегс','+7(878)788-78',0,'2023-05-13','2023-05-21'),(16,'User123','','$2y$10$MZqeDmQ8.OYk6RTp3VUUUeqFOF9.8E9pV/2qjIU.gWhNXGVzE8pfu','Олегс','+7(878)788-78',0,'2023-05-13','2023-05-21'),(17,'asda','','$2y$10$VnOxe7PUAA.rgGeUcQxbD.T7rizOQA7riRCYpBfnv.q45RY5xRAU6','Олегс','+7(878)788-78',0,'2023-05-13','2023-05-21'),(18,'sdfsdf','','$2y$10$qEYm98VnUiBQa.z0LQooAekCr5cbCV0IjIh4nSCE6uSH76.mNTahC','Олегс','+7(878)788-78',0,'2023-05-15','2023-05-21'),(19,'Vatka','','$2y$10$Sl.pRIsAvVPESVtoy71fmutaOFBnbUupiKdr2MzReEfeShqRoadbK','Олегс','+7(878)324-2342',0,'2023-05-15','2023-05-22'),(20,'MashkaPlashka','','$2y$10$VOsKg2ibmSMq/Oym9xeixu..n9bW4k3aay3KUTw8PUqgPMeINceR.','Олегс','+7(878)788-78',0,'2023-05-15','2023-05-21'),(22,'sasha','','$2y$10$FdFIcF9c9S8684fKMeJj.e4l6whtme6rmGu67F9Xw2bxQxAtnK6rG','Олегс','+7(878)788-78',0,'2023-05-15','2023-05-21'),(32,'tzjemcc961','','$2y$10$Hb6O7DI.7S/dLe2UkooQO./zKAfFeUEzsUL3eD.FO3u1bUJ6tXUX2','','+7(343)435-43-53',0,'2023-05-22','2023-05-22'),(33,'katrinstail','','$2y$10$V0aGSe9BxfwUqv3MdvgDSusC4aNDtEtF4guPiqIzwg22VCtLRAZHy','','+7(999)999-99-99',0,'2023-05-22','2023-05-22'),(34,'maksemen2281337','','$2y$10$vFQrThYrEgB2FL76hFUMYukgkHRynJZBi4b.Wyh24PIjQurMW8/b2','Maksemen','+7(908)936-34-14',0,'2023-05-22','2023-05-22'),(36,'sername','','$2y$10$w7Qx3TrbXQbU8D4ySDreVudcCIb44HRMqmY.0S1vjHxK3xJZt7WSy','Шуньгин','+7(908)983-83-88',0,'2023-05-24','2023-05-24'),(37,'dadada','','$2y$10$t6etFUqGLpU0v2e0Vg8T8uZCwv0OEDdQ7lcdYWab15z2waSADUzxu','фыфыф','+7(845)743-95-97',0,'2023-05-24','2023-05-24'),(38,'Dastanist','','$2y$10$CQ1NUwckqQgQwZfY7fTZD.U1CegLYsfaYK/KF/XYKNtrL1JuhArli','Dastan','+7(423)234-23-42',0,'2023-05-25','2023-05-25'),(39,'Blydok','nacof59626@goflipa.com','$2y$10$u6pm0Uc3Nq5pTjl7zl95MOZZRDgOJm8psrQtqaL5Ti6Bcu32PS7jS','Enisey','+7(324)324-23-42',0,'2023-05-28','2023-05-28'),(40,'Alexey','vifotim846@peogi.com','$2y$10$7eNfsbK5rbkQiT9YEoDKg.fnivY.z8Dep0b/mzCNLmNqdySHCMs6u','Nikola','+7(999)999-99',0,'2023-05-30','2023-06-05'),(43,'b-inozemtsev','b-inozemtsev@list.ru','$2y$10$mPNt.BvMYiHGS/QMsgeGVeaSGcYAvayUG6i7i8HhZUP3pRV0NvOGq','','+7(982)316-21-41',0,'2023-05-30','2023-05-30'),(45,'sdfsdfdsf','sdfsdfsd@mail.ru','$2y$10$IAvI/IUFMHindqVmRM2uNu6XyYSMLfhcYEyzB8c5ocxhNgYa7zYTW','sdfsdf','+7(324)234-23-42',0,'2023-06-02','2023-06-02'),(46,'mnllkjvmras','mnllkjvmras@internetkeno.com','$2y$10$uzJiShH5mIdiikn0mduvyOImu6QIW5X9K4WIZW3zxn7f.OqnfvFyK','','+7(999)999-99-99',0,'2023-06-05','2023-06-05');
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

-- Dump completed on 2023-06-07 23:19:41
