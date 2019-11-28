-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: codehacking
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Current Database: `codehacking`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `codehacking` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `codehacking`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'PHP',NULL,NULL),(2,'Laravel',NULL,NULL),(3,'Javascript',NULL,NULL),(4,'Bootstrap is sassy again',NULL,'2019-11-13 11:45:50');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (20,'2014_10_12_000000_create_users_table',1),(21,'2014_10_12_100000_create_password_resets_table',1),(22,'2019_08_19_000000_create_failed_jobs_table',1),(23,'2019_11_04_114456_create_roles_table',1),(24,'2019_11_07_091813_add_photo_id_to_users',1),(25,'2019_11_07_110228_create_photos_table',1),(26,'2019_11_11_111740_create_posts_table',2),(27,'2019_11_12_105431_create_categories_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'1573569402man5.jpg','2019-11-12 14:36:42','2019-11-12 14:36:42'),(2,'1573570496women5.jpg','2019-11-12 14:54:56','2019-11-12 14:54:56'),(3,'1573570537man2.jpg','2019-11-12 14:55:37','2019-11-12 14:55:37'),(4,'1573570558woman2.jpg','2019-11-12 14:55:58','2019-11-12 14:55:58'),(5,'1573570682man3.jpg','2019-11-12 14:58:02','2019-11-12 14:58:02'),(6,'1573570704women4.jpg','2019-11-12 14:58:24','2019-11-12 14:58:24'),(7,'1573571018man1.jpg','2019-11-12 15:03:38','2019-11-12 15:03:38'),(8,'1573571049women3.jpg','2019-11-12 15:04:09','2019-11-12 15:04:09'),(9,'1573571118women5.jpg','2019-11-12 15:05:18','2019-11-12 15:05:18'),(10,'1573571144women5.jpg','2019-11-12 15:05:44','2019-11-12 15:05:44'),(11,'1573571171woman2.jpg','2019-11-12 15:06:11','2019-11-12 15:06:11'),(13,'1573571269man4.jpg','2019-11-12 15:07:49','2019-11-12 15:07:49'),(14,'1573571457women3.jpg','2019-11-12 15:10:57','2019-11-12 15:10:57'),(15,'1573571491Pancake-recipe.jpg','2019-11-12 15:11:31','2019-11-12 15:11:31'),(16,'1573728741man4.jpg','2019-11-14 10:52:22','2019-11-14 10:52:22'),(17,'1573728807women6.jpg','2019-11-14 10:53:27','2019-11-14 10:53:27');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_index` (`user_id`),
  KEY `posts_category_id_index` (`category_id`),
  KEY `posts_photo_id_index` (`photo_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,2,'Example post','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id semper velit. Proin sapien neque, vulputate non vestibulum in, placerat varius diam. Vivamus egestas fringilla purus vel sagittis. Quisque elementum lorem eleifend, fermentum massa at, scelerisque nibh. Etiam sit amet dolor eget neque luctus ornare at vitae nisi. Etiam ultrices magna lacus, in ultrices sem varius nec. Fusce fermentum ex ut scelerisque venenatis. Sed auctor pellentesque nulla, sed condimentum metus auctor sit amet. Donec dictum ex arcu, vel imperdiet massa scelerisque et. Pellentesque id lorem arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut sed facilisis magna. Nunc id lorem at est sodales luctus. Praesent lacus dui, elementum eu egestas sed, vehicula sed nisl. Vestibulum sit amet est eget nibh aliquam hendrerit.','2019-11-12 14:54:56','2019-11-12 14:54:56'),(3,3,1,6,'Spring rolls','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id semper velit. Proin sapien neque, vulputate non vestibulum in, placerat varius diam. Vivamus egestas fringilla purus vel sagittis. Quisque elementum lorem eleifend, fermentum massa at, scelerisque nibh. Etiam sit amet dolor eget neque luctus ornare at vitae nisi. Etiam ultrices magna lacus, in ultrices sem varius nec. Fusce fermentum ex ut scelerisque venenatis. Sed auctor pellentesque nulla, sed condimentum metus auctor sit amet. Donec dictum ex arcu, vel imperdiet massa scelerisque et. Pellentesque id lorem arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut sed facilisis magna. Nunc id lorem at est sodales luctus. Praesent lacus dui, elementum eu egestas sed, vehicula sed nisl. Vestibulum sit amet est eget nibh aliquam hendrerit.','2019-11-12 14:58:24','2019-11-12 14:58:24'),(4,4,2,8,'Spring rolls','Aliquam congue nibh nec metus lacinia fermentum. Quisque non aliquet risus. Maecenas a mollis quam. Nullam dictum a risus quis consequat. Donec pharetra blandit tellus, feugiat congue libero. Vivamus viverra efficitur augue. Sed velit risus, molestie ut vestibulum et, pretium quis nibh. In eget erat urna. Fusce ornare odio quis diam sollicitudin convallis. Nulla eget eros aliquam quam molestie faucibus vitae non lacus. Proin sodales laoreet leo. Praesent euismod elit vitae vestibulum posuere. Donec quis est condimentum ante vestibulum fermentum. Suspendisse ornare erat ut eros faucibus rutrum.','2019-11-12 15:04:09','2019-11-12 15:04:09'),(5,5,4,11,'Apples','Pellentesque enim velit, hendrerit ac risus quis, ultricies convallis magna. Nulla velit erat, mollis vel sagittis in, blandit eu ligula. Donec dictum sapien libero, eu commodo ante maximus a. Vestibulum tempus diam at hendrerit sagittis. Nullam ut bibendum sapien. Maecenas rhoncus sed enim ut auctor. Curabitur sodales lorem vitae rutrum porttitor. Nullam pellentesque tempus nibh at laoreet. Pellentesque auctor dapibus dignissim. Sed nec velit turpis. Donec ut porta risus.','2019-11-12 15:06:11','2019-11-12 15:06:11'),(6,6,1,13,'Spring rolls','Etiam id ante vel leo pharetra tempus sit amet sit amet eros. Vestibulum vel tortor nibh. Phasellus in elit vitae erat euismod volutpat. Aliquam fringilla molestie felis, in condimentum metus malesuada dignissim. Phasellus et orci sagittis, auctor velit a, consequat neque. Cras viverra odio nec mauris porttitor mattis. Nam vitae pulvinar ante, id malesuada libero. Curabitur tristique ullamcorper ante in vestibulum.','2019-11-12 15:07:49','2019-11-12 15:07:49'),(7,7,3,15,'pancake','Morbi nec pharetra lorem, et molestie ex. Aenean lobortis lobortis lacinia. Donec eget tincidunt dui, non suscipit tortor. Nulla risus massa, blandit non pulvinar eget, ultrices id augue. Maecenas tristique lectus sit amet dolor maximus iaculis. Praesent malesuada turpis sed diam euismod, vel suscipit lectus congue. Sed at suscipit odio.','2019-11-12 15:11:31','2019-11-12 15:11:31');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'administrator',NULL,NULL),(2,'author',NULL,NULL),(3,'subscriber',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,1,'tash','tash@icb.com',NULL,'$2y$10$ya/ueJCBqDHMp3jEGRB3QuiPgtRzJv8WGiQiG1nirmS1o7q0iMcLy',NULL,'2019-11-12 14:33:52','2019-11-12 14:36:42','1'),(3,1,1,'Edwin Diaz','edwin@icb.com',NULL,'$2y$10$TrmdS5s.vLWQIWn7lb4MJeRgkxRZPK7pAa5PJfjxK7oJl2HYRMlq.',NULL,'2019-11-12 14:58:02','2019-11-12 14:58:02','5'),(4,2,1,'rico','rico@icb.com',NULL,'$2y$10$YaRNvRFht7NkxMTacidAZeaX51dCmPKHTtlT1QLjd9cAcuKed0O62',NULL,'2019-11-12 15:03:38','2019-11-12 15:03:38','7'),(5,1,1,'woodybuxx','kim@icb.com',NULL,'$2y$10$.CP2FUoor1sxs8Wdqu.x.e1At7SGIbBP6njxhZKJVS0ROTT3IUazC',NULL,'2019-11-12 15:05:18','2019-11-12 15:05:44','10'),(6,2,1,'angelBeater','angelBeater@icb.com',NULL,'$2y$10$eDTGVcK4MiNswWXKJUlRYOBxA/DvA74Qb9j52yJxlac5Rulo6SiK6',NULL,'2019-11-12 15:07:20','2019-11-12 15:07:20','12'),(7,1,1,'n00bmaster69','noobmaster69@icb.com',NULL,'$2y$10$yFhI2iNTPMVj6Rj7TDw1MuqScM3bntl96qJeJ2JjxuARWp7rWJCdi',NULL,'2019-11-12 15:10:57','2019-11-12 15:10:57','14');
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

-- Dump completed on 2019-11-14 12:08:32
