-- MySQL dump 10.13  Distrib 8.0.33, for macos13.3 (arm64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'ubah0hShmzfVZvl28KUIgWhDjSYi0Emh',1,'2023-09-16 07:34:26','2023-09-16 07:34:26','2023-09-16 07:34:26'),(2,2,'MuiJnRWXDftmlLuWxh9FrFoAAo3VFbEJ',1,'2023-09-16 07:34:26','2023-09-16 07:34:26','2023-09-16 07:34:26'),(3,3,'w9YgMH0w4Ov8jOhN8mXEG4VpFvKXY10q',1,'2023-09-16 07:34:26','2023-09-16 07:34:26','2023-09-16 07:34:26');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2028-09-16 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2023-09-16 07:34:28','2023-09-16 07:34:28',1),(2,'Top Slider Image 2','2028-09-16 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2023-09-16 07:34:28','2023-09-16 07:34:28',1),(3,'Homepage middle 1','2028-09-16 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2023-09-16 07:34:28','2023-09-16 07:34:28',1),(4,'Homepage middle 2','2028-09-16 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2023-09-16 07:34:28','2023-09-16 07:34:28',1),(5,'Homepage middle 3','2028-09-16 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2023-09-16 07:34:28','2023-09-16 07:34:28',1),(6,'Homepage big 1','2028-09-16 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2023-09-16 07:34:28','2023-09-16 07:34:28',1),(7,'Homepage bottom small','2028-09-16 00:00:00','not_set','7S8K9I9GIUJB','promotion/7.jpg','/products',0,7,'published','2023-09-16 07:34:28','2023-09-16 07:34:28',1),(8,'Product sidebar','2028-09-16 00:00:00','product-sidebar','E2UA2IRPRRXF','promotion/8.jpg','/products',0,8,'published','2023-09-16 07:34:28','2023-09-16 07:34:28',1),(9,'Homepage big 2','2028-09-16 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2023-09-16 07:34:28','2023-09-16 07:34:28',1);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Tenetur qui quisquam libero deleniti qui qui. Voluptatem maiores harum eveniet excepturi ut accusamus vitae. Explicabo eos nobis in deleniti libero velit.','published',2,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(2,'Fashion',0,'Maiores est dolorem accusantium enim. Sed dolores repellat dolorum et. Et ullam explicabo laborum libero illum deserunt et. Accusamus rem ipsam aperiam corporis.','published',2,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(3,'Electronic',0,'Quia et quis qui quas sed odio. Non dolor sunt sed dolorem. Quos cum minima aliquam pariatur.','published',2,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(4,'Commercial',0,'Aut ratione quae dignissimos asperiores et. Ut natus quis at qui magni saepe. Sequi ut voluptas laborum quia consequatur.','published',2,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-09-16 07:34:27','2023-09-16 07:34:27');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned NOT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Dr. Sydney Klocko DDS','wcronin@example.org','+1-262-236-9151','4706 Boyer Ports Apt. 866\nLake Erynborough, MO 67793','Modi sunt qui nulla minus aut.','Commodi delectus rerum sunt ipsa omnis. Soluta non facere doloremque quia in. Eaque tenetur deserunt tempora dignissimos. Odio nemo vitae et. Est labore sed et totam ad ut ut ratione. Necessitatibus et odio possimus optio aspernatur voluptatibus voluptatem. Eaque et et fugit rerum voluptas. Eum esse sint ipsam numquam nulla iste. Dolores aut qui autem ad at et ab.','read','2023-09-16 07:34:26','2023-09-16 07:34:26'),(2,'Mr. Ward Becker DDS','frenner@example.com','754-208-0092','500 Alanis Dale\nNew Laurianneburgh, NY 13118-3383','Sit cupiditate voluptatibus enim nisi.','Adipisci eius soluta amet atque quod. Qui quasi iusto adipisci non similique dolorem. Doloremque totam iste iusto eius id dolor. Enim natus vel id qui sunt laboriosam dolorem magni. Voluptatum culpa ducimus autem est voluptas eveniet. Accusamus omnis nulla natus suscipit eos velit tempora. Est impedit aut recusandae. Similique explicabo cum velit. Velit quibusdam odio blanditiis culpa facere nihil nisi. Iusto dolore dolores est architecto.','read','2023-09-16 07:34:26','2023-09-16 07:34:26'),(3,'Dr. Wilfred Kozey DVM','berneice.raynor@example.org','1-425-559-8415','614 Altenwerth Villages\nNew Caraburgh, WV 21719','In et consequatur quia minus quas dolorem.','Dolore alias ipsam sunt commodi ut est harum. Sint qui eos nihil officia voluptas maxime aliquam. Voluptates quasi dolore et vel inventore nisi nostrum. Praesentium impedit magni deserunt consequatur distinctio. Ut deserunt sunt cupiditate nesciunt beatae. Modi voluptas corporis et aut omnis qui. Aliquid odit nesciunt atque nesciunt blanditiis porro sint reprehenderit. A rem aspernatur necessitatibus odio dolores corrupti molestias.','unread','2023-09-16 07:34:26','2023-09-16 07:34:26'),(4,'Barney Satterfield','natasha86@example.net','+1.305.627.9052','9795 Bartoletti Burg Apt. 001\nMeaghanfort, SC 28230-6131','Veritatis repudiandae hic sunt alias molestiae.','Alias facilis eligendi in. Sit dolores possimus optio sunt in necessitatibus. Dolor quis voluptas modi vel. Sed enim eos omnis id. Ea possimus unde excepturi sit facere ea. Adipisci et assumenda esse amet cumque. Sunt quasi dicta animi possimus. Ipsa occaecati autem suscipit sunt dolorem et nostrum. Numquam ipsum nisi sit eveniet dolorem. Sit rerum accusamus amet minima incidunt ipsa dolores harum. Error nostrum nobis iste architecto culpa voluptas vel.','unread','2023-09-16 07:34:26','2023-09-16 07:34:26'),(5,'Geovanny Bins','armstrong.diamond@example.org','814.566.8399','38556 Schowalter Freeway\nWest Anjali, KY 36760-1375','Et eos nisi et.','Consequatur labore ullam possimus. Dignissimos a quod corporis qui ut. Ipsa explicabo atque tenetur enim quos et similique. Et et illum nulla nulla omnis. Ex ea tenetur repellat qui labore sunt. Incidunt earum dolorem omnis. Sapiente quo voluptatem temporibus consequatur accusamus iusto. Accusantium enim molestiae quod eligendi. Optio iusto et qui ut sequi ut et. Repellat eos ad expedita et. Dolores et fugiat officiis ipsum molestias aliquam. Nam perferendis sit velit nobis voluptatem odio.','read','2023-09-16 07:34:26','2023-09-16 07:34:26'),(6,'Mr. Edd Kling','katelynn.block@example.com','612-705-8247','2082 Erdman Extensions Suite 051\nNew Meaghan, UT 75620','Pariatur atque placeat qui deserunt fugiat eos.','Provident est cum autem quaerat. Itaque praesentium quas amet voluptatem ad. Itaque ea aut blanditiis neque amet ea in. Officia architecto possimus nostrum ratione et quidem quibusdam. Voluptatibus deleniti rerum perferendis quidem cum. Rerum dolores consequatur voluptate similique ullam qui. Aut commodi temporibus quam qui magnam totam reprehenderit error. Voluptatum iste possimus sequi qui qui debitis eveniet.','read','2023-09-16 07:34:26','2023-09-16 07:34:26'),(7,'Lois Grady','dooley.irving@example.org','+1.347.421.1413','574 Pagac Wells Apt. 845\nNorth Lessie, WV 66175-8947','Totam ut quibusdam error.','Tenetur labore repellat ut ullam dolores ad nobis. In incidunt impedit omnis dolorum. Laudantium assumenda ab ut. Officia nostrum blanditiis non quae odit. Officiis quia qui explicabo quibusdam odio quia. Dolorum error ducimus sed similique. Ipsam voluptatem odio qui. Reprehenderit et maiores quia enim et. Id et ipsam est numquam id praesentium dolor. Ut molestiae non fugiat porro sit ut accusantium.','read','2023-09-16 07:34:26','2023-09-16 07:34:26'),(8,'Anne Ebert','jared.hickle@example.net','+1-681-237-9652','93894 Lockman Streets\nPort Chasityshire, AK 91108-5766','Sed tempore quia consectetur excepturi amet quae.','Eum minima temporibus eum fuga optio voluptas. Perspiciatis et ut tempora non maxime nihil eligendi eligendi. Omnis ipsa doloribus itaque. Itaque vitae molestiae fugit quo atque. Ex repellat possimus harum soluta illo. Nihil itaque praesentium rerum placeat consequatur ipsum et. Quo non dolorem ex. Ex facere ut quia. Voluptas accusantium assumenda aut doloremque nihil in tempore.','unread','2023-09-16 07:34:26','2023-09-16 07:34:26'),(9,'Stefan Terry I','xswaniawski@example.net','(743) 429-9237','55832 Torp Forge\nWest Jeanette, VA 38428-1712','Deleniti excepturi quasi error ad.','Perspiciatis laborum sunt qui repellat nemo in ut. Quis nesciunt perferendis ea eveniet error ab dolore. Nostrum rerum ut consequatur voluptatem incidunt et facilis praesentium. Velit libero minima corporis. Similique aliquam dolorum laborum et suscipit. Labore aut voluptatem temporibus enim saepe. Non sed laborum illo atque soluta. Fugiat iure alias distinctio. Repellendus aut molestias maxime eos. Nemo qui sit sint iure expedita dolorum neque eum. Sunt nulla occaecati aut est fugit et.','unread','2023-09-16 07:34:26','2023-09-16 07:34:26'),(10,'Krystal Bins','mhowe@example.org','564-312-6658','438 Alivia Spurs Suite 452\nGiuseppemouth, RI 84782','Qui rerum est repellat suscipit veniam.','Dolor vero odio facilis vel est. Sapiente quaerat unde non in incidunt. Perferendis similique et iure cumque animi nihil qui. Ut incidunt eaque officiis cumque cum. Qui atque magni dolores. Delectus eligendi laborum inventore quibusdam autem. Accusantium eum illum sit nam deserunt. Deserunt dolores esse voluptas modi quidem laboriosam est.','read','2023-09-16 07:34:26','2023-09-16 07:34:26');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2023-09-16 07:34:18','2023-09-16 07:34:18'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2023-09-16 07:34:18','2023-09-16 07:34:18'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2023-09-16 07:34:18','2023-09-16 07:34:18'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2023-09-16 07:34:18','2023-09-16 07:34:18'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2023-09-16 07:34:18','2023-09-16 07:34:18'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2023-09-16 07:34:18','2023-09-16 07:34:18'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2023-09-16 07:34:18','2023-09-16 07:34:18');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-09-16 07:34:18','2023-09-16 07:34:18'),(2,'EUR','€',0,2,1,0,0.91,'2023-09-16 07:34:18','2023-09-16 07:34:18'),(3,'VND','₫',0,0,2,0,23717.5,'2023-09-16 07:34:18','2023-09-16 07:34:18');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Daija Smitham','customer@botble.com','+17574475790','UA','Vermont','Garlandmouth','8067 Duane Prairie Apt. 983',1,1,'2023-09-16 07:34:25','2023-09-16 07:34:25','05588'),(2,'Daija Smitham','customer@botble.com','+19799717389','MP','Idaho','Bernhardbury','830 Destany Highway Suite 154',1,0,'2023-09-16 07:34:25','2023-09-16 07:34:25','47354'),(3,'Dr. Hester Lind','vendor@botble.com','+19083518971','AO','West Virginia','Carlieshire','120 Audreanne Mews',2,1,'2023-09-16 07:34:25','2023-09-16 07:34:25','41427'),(4,'Dr. Hester Lind','vendor@botble.com','+14843172897','PW','Alaska','Murazikton','2912 Cassandra Harbors',2,0,'2023-09-16 07:34:25','2023-09-16 07:34:25','57552-9927'),(5,'Prof. Westley Rath I','cole88@example.com','+12156640596','KH','District of Columbia','Robelfurt','6989 Cole Manor',3,1,'2023-09-16 07:34:25','2023-09-16 07:34:25','55934-9250'),(6,'Shakira Lesch V','harris.koby@example.org','+13859085781','WS','Indiana','Brekkemouth','940 Bo Green Suite 483',4,1,'2023-09-16 07:34:25','2023-09-16 07:34:25','87373'),(7,'Emmitt Grimes DVM','jaqueline98@example.org','+15704619018','AR','New York','Prohaskamouth','49200 Olson Prairie Apt. 915',5,1,'2023-09-16 07:34:25','2023-09-16 07:34:25','94614-9337'),(8,'Annamae West Jr.','gboyer@example.net','+19493581652','BD','Oregon','Port Icietown','159 Tristian Trail',6,1,'2023-09-16 07:34:25','2023-09-16 07:34:25','08296-7161'),(9,'Mariah Conn','jimmy.gulgowski@example.org','+19498145586','CA','West Virginia','Port Ernesto','10521 Zechariah Coves',7,1,'2023-09-16 07:34:25','2023-09-16 07:34:25','48630-7637'),(10,'Mr. Jakob Johnston V','mccullough.moises@example.net','+14428992086','TL','Missouri','Murazikport','4676 Kertzmann Cliffs Suite 692',8,1,'2023-09-16 07:34:25','2023-09-16 07:34:25','54864'),(11,'Verona Schinner','hanna86@example.com','+19308201561','YT','Missouri','South Stefaniechester','71253 Bernie Brook Apt. 212',9,1,'2023-09-16 07:34:26','2023-09-16 07:34:26','78756-1371'),(12,'Angela Parisian','ndamore@example.com','+13646511744','MD','Idaho','Lake Marcellus','93093 Zieme Inlet',10,1,'2023-09-16 07:34:26','2023-09-16 07:34:26','42233');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Daija Smitham','customer@botble.com','$2y$10$D4ZqlGFgiwpYDejNbj4Yxu8hCHRF00kcLwQrR0.BrPIzrJPnobs6u','customers/1.jpg','1990-09-06','+19896775128',NULL,'2023-09-16 07:34:25','2023-09-16 07:34:25','2023-09-16 14:34:25',NULL,'activated',0,NULL),(2,'Dr. Hester Lind','vendor@botble.com','$2y$10$ZtQCKFo1FZ1dLfDNhNnhSuVcVPXB0jk64ZZXit40AyKggiVoe4ema','customers/5.jpg','1996-09-07','+17705025005',NULL,'2023-09-16 07:34:25','2023-09-16 07:34:29','2023-09-16 14:34:25',NULL,'activated',1,'2023-09-16 14:34:29'),(3,'Prof. Westley Rath I','cole88@example.com','$2y$10$0NcarrPaZCVICqATfKxUyOhupsODTmMA2TNbPC8oItZ66NjdYZcda','customers/1.jpg','1986-08-25','+15094007063',NULL,'2023-09-16 07:34:25','2023-09-16 07:34:25','2023-09-16 14:34:25',NULL,'activated',0,NULL),(4,'Shakira Lesch V','harris.koby@example.org','$2y$10$qQo7/7PoOj1rhbnjSXdM/.kGI8f23kZdyy66U4wda11iMyJfxCMlq','customers/2.jpg','2001-09-11','+13615696184',NULL,'2023-09-16 07:34:25','2023-09-16 07:34:29','2023-09-16 14:34:25',NULL,'activated',1,'2023-09-16 14:34:29'),(5,'Emmitt Grimes DVM','jaqueline98@example.org','$2y$10$dA52Q1Fi8a..MKAX3.FWJeIFGeKt2QtimZ4kIcjgVjphGlVXw4PNu','customers/3.jpg','1990-08-23','+14433122065',NULL,'2023-09-16 07:34:25','2023-09-16 07:34:29','2023-09-16 14:34:25',NULL,'activated',1,'2023-09-16 14:34:29'),(6,'Annamae West Jr.','gboyer@example.net','$2y$10$18RaqLimb8mmuSBiVBYV6eEwhQ5UhRV10o1Acp7lG78Jn3SkZNqri','customers/4.jpg','1975-08-27','+13313424468',NULL,'2023-09-16 07:34:25','2023-09-16 07:34:25','2023-09-16 14:34:25',NULL,'activated',0,NULL),(7,'Mariah Conn','jimmy.gulgowski@example.org','$2y$10$45IjHJ6oVOHq9XI9U7qyu.Am2H9GK8lgXMYu7PPxC6XWFM2OM4.Bm','customers/5.jpg','1975-08-23','+12528905368',NULL,'2023-09-16 07:34:25','2023-09-16 07:34:25','2023-09-16 14:34:25',NULL,'activated',0,NULL),(8,'Mr. Jakob Johnston V','mccullough.moises@example.net','$2y$10$nWtOQGxkf9F/zxgTidjNUesvGG2.xVBYVM5SC8G0PaTuUh9seMNe6','customers/6.jpg','1995-08-29','+19042136437',NULL,'2023-09-16 07:34:25','2023-09-16 07:34:29','2023-09-16 14:34:25',NULL,'activated',1,'2023-09-16 14:34:29'),(9,'Verona Schinner','hanna86@example.com','$2y$10$nE69SnTK2RtlE2Jidd8MC.vinI7EVv1ryZ/MAG7/Z7ks9CNRQRWJK','customers/7.jpg','1977-08-18','+16788579460',NULL,'2023-09-16 07:34:26','2023-09-16 07:34:29','2023-09-16 14:34:26',NULL,'activated',1,'2023-09-16 14:34:29'),(10,'Angela Parisian','ndamore@example.com','$2y$10$OI12ANm6wGPuptDJATp0POH1mSoiZUaAAjDMgBzp4PuQMztW2tXUK','customers/8.jpg','2000-09-14','+17543532074',NULL,'2023-09-16 07:34:26','2023-09-16 07:34:29','2023-09-16 14:34:26',NULL,'activated',1,'2023-09-16 14:34:29');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,25.68,8,4),(1,2,20.25,6,4),(1,3,11.2,14,1),(1,4,330.8214,8,4),(1,5,638.88,13,3),(1,6,286.65,13,5),(1,7,270,14,1),(1,8,648,9,5),(1,9,414,17,3),(1,10,515.37,14,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2023-10-16 00:00:00','published','2023-09-16 07:34:26','2023-09-16 07:34:26');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(1,2,'2 Year',10,9999,0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(1,3,'3 Year',20,9999,0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(2,4,'4GB',0,9999,0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(2,5,'8GB',10,9999,0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(2,6,'16GB',20,9999,0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(3,7,'Core i5',0,9999,0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(3,8,'Core i7',10,9999,0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(3,9,'Core i9',20,9999,0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(4,10,'128GB',0,9999,0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(4,11,'256GB',10,9999,0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(4,12,'512GB',20,9999,0,'2023-09-16 07:34:28','2023-09-16 07:34:28');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2023-09-16 07:34:28','2023-09-16 07:34:28');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',59,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',1,583.00,583.00,0.00,0.00,583.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(2,2,'Botble\\Ecommerce\\Models\\Product',71,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18-1.jpg',2,1213.00,2426.00,0.00,0.00,2426.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(3,3,'Botble\\Ecommerce\\Models\\Product',76,'MVMTH Classical Leather Watch In Black (Digital)',NULL,'products/21-1.jpg',1,767.00,767.00,0.00,0.00,767.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(4,4,'Botble\\Ecommerce\\Models\\Product',63,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,'products/15.jpg',1,530.00,530.00,0.00,0.00,530.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(5,5,'Botble\\Ecommerce\\Models\\Product',64,'Apple MacBook Air Retina 12-Inch Laptop',NULL,'products/16.jpg',2,516.00,1032.00,0.00,0.00,1032.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(6,6,'Botble\\Ecommerce\\Models\\Product',24,'Dual Camera 20MP (Digital)',NULL,'products/1.jpg',1,80.25,80.25,0.00,0.00,80.25,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(7,7,'Botble\\Ecommerce\\Models\\Product',59,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',1,583.00,583.00,0.00,0.00,583.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(8,8,'Botble\\Ecommerce\\Models\\Product',47,'Samsung Smart Phone (Digital)',NULL,'products/9-1.jpg',1,575.00,575.00,0.00,0.00,575.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(9,8,'Botble\\Ecommerce\\Models\\Product',69,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,'products/17.jpg',1,598.00,598.00,0.00,0.00,598.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(10,8,'Botble\\Ecommerce\\Models\\Product',74,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/20.jpg',2,983.00,1966.00,0.00,0.00,1966.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(11,9,'Botble\\Ecommerce\\Models\\Product',27,'Smart Watches',NULL,'products/2.jpg',2,40.50,81.00,0.00,0.00,81.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(12,10,'Botble\\Ecommerce\\Models\\Product',52,'Xbox One Wireless Controller Black Color',NULL,'products/11-1.jpg',3,1109.00,3327.00,0.00,0.00,3327.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(13,11,'Botble\\Ecommerce\\Models\\Product',76,'MVMTH Classical Leather Watch In Black (Digital)',NULL,'products/21-1.jpg',3,767.00,2301.00,0.00,0.00,2301.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(14,11,'Botble\\Ecommerce\\Models\\Product',79,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-1.jpg',2,597.00,1194.00,0.00,0.00,1194.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(15,12,'Botble\\Ecommerce\\Models\\Product',29,'Smart Watches',NULL,'products/2-2.jpg',1,40.50,40.50,0.00,0.00,40.50,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(16,13,'Botble\\Ecommerce\\Models\\Product',48,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10.jpg',2,1257.00,2514.00,0.00,0.00,2514.00,'[]','2023-09-16 07:34:30','2023-09-16 07:34:30'),(17,14,'Botble\\Ecommerce\\Models\\Product',70,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18.jpg',3,1213.00,3639.00,0.00,0.00,3639.00,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(18,14,'Botble\\Ecommerce\\Models\\Product',71,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18-1.jpg',1,1213.00,1213.00,0.00,0.00,1213.00,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(19,15,'Botble\\Ecommerce\\Models\\Product',79,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-1.jpg',2,597.00,1194.00,0.00,0.00,1194.00,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(20,16,'Botble\\Ecommerce\\Models\\Product',41,'Nikon HD camera',NULL,'products/6.jpg',3,455.00,1365.00,0.00,0.00,1365.00,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(21,17,'Botble\\Ecommerce\\Models\\Product',50,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10-2.jpg',2,1257.00,2514.00,0.00,0.00,2514.00,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(22,18,'Botble\\Ecommerce\\Models\\Product',80,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-2.jpg',2,597.00,1194.00,0.00,0.00,1194.00,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(23,19,'Botble\\Ecommerce\\Models\\Product',24,'Dual Camera 20MP (Digital)',NULL,'products/1.jpg',2,80.25,160.50,0.00,0.00,160.50,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(24,20,'Botble\\Ecommerce\\Models\\Product',34,'Red &amp; Black Headphone',NULL,'products/4-1.jpg',3,511.00,1533.00,0.00,0.00,1533.00,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(25,21,'Botble\\Ecommerce\\Models\\Product',42,'Audio Equipment',NULL,'products/7.jpg',1,540.00,540.00,0.00,0.00,540.00,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(26,22,'Botble\\Ecommerce\\Models\\Product',50,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10-2.jpg',1,1257.00,1257.00,0.00,0.00,1257.00,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(27,23,'Botble\\Ecommerce\\Models\\Product',40,'Nikon HD camera',NULL,'products/6.jpg',2,455.00,910.00,0.00,0.00,910.00,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(28,24,'Botble\\Ecommerce\\Models\\Product',53,'Xbox One Wireless Controller Black Color',NULL,'products/11-2.jpg',2,1109.00,2218.00,0.00,0.00,2218.00,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(29,25,'Botble\\Ecommerce\\Models\\Product',68,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,'products/17-3.jpg',2,598.00,1196.00,0.00,0.00,1196.00,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(30,26,'Botble\\Ecommerce\\Models\\Product',34,'Red &amp; Black Headphone',NULL,'products/4-1.jpg',3,511.00,1533.00,0.00,0.00,1533.00,'[]','2023-09-16 07:34:31','2023-09-16 07:34:31'),(31,27,'Botble\\Ecommerce\\Models\\Product',49,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10-1.jpg',3,1257.00,3771.00,0.00,0.00,3771.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(32,28,'Botble\\Ecommerce\\Models\\Product',64,'Apple MacBook Air Retina 12-Inch Laptop',NULL,'products/16.jpg',1,516.00,516.00,0.00,0.00,516.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(33,29,'Botble\\Ecommerce\\Models\\Product',67,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,'products/17-2.jpg',3,598.00,1794.00,0.00,0.00,1794.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(34,30,'Botble\\Ecommerce\\Models\\Product',37,'Smart Watch External (Digital)',NULL,'products/5-2.jpg',3,726.00,2178.00,0.00,0.00,2178.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(35,31,'Botble\\Ecommerce\\Models\\Product',47,'Samsung Smart Phone (Digital)',NULL,'products/9-1.jpg',2,575.00,1150.00,0.00,0.00,1150.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(36,32,'Botble\\Ecommerce\\Models\\Product',59,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',2,583.00,1166.00,0.00,0.00,1166.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(37,33,'Botble\\Ecommerce\\Models\\Product',29,'Smart Watches',NULL,'products/2-2.jpg',2,40.50,81.00,0.00,0.00,81.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(38,34,'Botble\\Ecommerce\\Models\\Product',80,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-2.jpg',3,597.00,1791.00,0.00,0.00,1791.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(39,35,'Botble\\Ecommerce\\Models\\Product',57,'Sound Intone I65 Earphone White Version (Digital)',NULL,'products/13-1.jpg',1,515.00,515.00,0.00,0.00,515.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(40,36,'Botble\\Ecommerce\\Models\\Product',66,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,'products/17-1.jpg',1,598.00,598.00,0.00,0.00,598.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(41,36,'Botble\\Ecommerce\\Models\\Product',71,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18-1.jpg',3,1213.00,3639.00,0.00,0.00,3639.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(42,37,'Botble\\Ecommerce\\Models\\Product',26,'Dual Camera 20MP (Digital)',NULL,'products/1.jpg',1,80.25,80.25,0.00,0.00,80.25,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(43,38,'Botble\\Ecommerce\\Models\\Product',34,'Red &amp; Black Headphone',NULL,'products/4-1.jpg',1,511.00,511.00,0.00,0.00,511.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(44,39,'Botble\\Ecommerce\\Models\\Product',40,'Nikon HD camera',NULL,'products/6.jpg',3,455.00,1365.00,0.00,0.00,1365.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(45,39,'Botble\\Ecommerce\\Models\\Product',59,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',1,583.00,583.00,0.00,0.00,583.00,'[]','2023-09-16 07:34:32','2023-09-16 07:34:32'),(46,40,'Botble\\Ecommerce\\Models\\Product',39,'Nikon HD camera',NULL,'products/6.jpg',2,455.00,910.00,0.00,0.00,910.00,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(47,41,'Botble\\Ecommerce\\Models\\Product',62,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,'products/15.jpg',3,530.00,1590.00,0.00,0.00,1590.00,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(48,41,'Botble\\Ecommerce\\Models\\Product',63,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,'products/15.jpg',1,530.00,530.00,0.00,0.00,530.00,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(49,42,'Botble\\Ecommerce\\Models\\Product',65,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,'products/17.jpg',2,598.00,1196.00,0.00,0.00,1196.00,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(50,43,'Botble\\Ecommerce\\Models\\Product',26,'Dual Camera 20MP (Digital)',NULL,'products/1.jpg',1,80.25,80.25,0.00,0.00,80.25,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(51,44,'Botble\\Ecommerce\\Models\\Product',74,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/20.jpg',3,983.00,2949.00,0.00,0.00,2949.00,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(52,45,'Botble\\Ecommerce\\Models\\Product',38,'Nikon HD camera',NULL,'products/6.jpg',1,455.00,455.00,0.00,0.00,455.00,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(53,45,'Botble\\Ecommerce\\Models\\Product',64,'Apple MacBook Air Retina 12-Inch Laptop',NULL,'products/16.jpg',2,516.00,1032.00,0.00,0.00,1032.00,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(54,46,'Botble\\Ecommerce\\Models\\Product',49,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10-1.jpg',2,1257.00,2514.00,0.00,0.00,2514.00,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(55,47,'Botble\\Ecommerce\\Models\\Product',76,'MVMTH Classical Leather Watch In Black (Digital)',NULL,'products/21-1.jpg',1,767.00,767.00,0.00,0.00,767.00,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(56,48,'Botble\\Ecommerce\\Models\\Product',28,'Smart Watches',NULL,'products/2-1.jpg',3,40.50,121.50,0.00,0.00,121.50,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(57,49,'Botble\\Ecommerce\\Models\\Product',42,'Audio Equipment',NULL,'products/7.jpg',2,540.00,1080.00,0.00,0.00,1080.00,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(58,50,'Botble\\Ecommerce\\Models\\Product',72,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/19.jpg',2,993.00,1986.00,0.00,0.00,1986.00,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(59,51,'Botble\\Ecommerce\\Models\\Product',30,'Beat Headphone',NULL,'products/3.jpg',3,20.00,60.00,0.00,0.00,60.00,'[]','2023-09-16 07:34:33','2023-09-16 07:34:33'),(60,52,'Botble\\Ecommerce\\Models\\Product',59,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',1,583.00,583.00,0.00,0.00,583.00,'[]','2023-09-16 07:34:34','2023-09-16 07:34:34'),(61,53,'Botble\\Ecommerce\\Models\\Product',80,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-2.jpg',3,597.00,1791.00,0.00,0.00,1791.00,'[]','2023-09-16 07:34:34','2023-09-16 07:34:34'),(62,54,'Botble\\Ecommerce\\Models\\Product',82,'Ciate Palemore Lipstick Bold Red Color',NULL,'products/23-1.jpg',1,867.00,867.00,0.00,0.00,867.00,'[]','2023-09-16 07:34:34','2023-09-16 07:34:34');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,583.00,0.00,0.00,0.00,'1','default',NULL,NULL,583.00,NULL,1,'pending',NULL,'2023-09-01 07:34:30','2023-09-16 07:34:30'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,2426.00,0.00,0.00,0.00,'1','default',NULL,NULL,2426.00,NULL,2,'completed','2023-09-16 07:34:30','2023-09-04 15:34:30','2023-09-16 07:34:30'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,767.00,0.00,0.00,0.00,NULL,'',NULL,NULL,767.00,NULL,3,'completed','2023-09-16 07:34:30','2023-09-07 23:34:30','2023-09-16 07:34:30'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Mariah Conn','',NULL,'jimmy.gulgowski@example.org','+19498145586','10521 Zechariah Coves, Port Ernesto, West Virginia, CA',NULL,530.00,0.00,0.00,0.00,'1','default',NULL,NULL,530.00,NULL,4,'completed','2023-09-16 07:34:30','2023-09-13 03:34:30','2023-09-16 07:34:30'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Mariah Conn','',NULL,'jimmy.gulgowski@example.org','+19498145586','10521 Zechariah Coves, Port Ernesto, West Virginia, CA',NULL,1032.00,0.00,0.00,0.00,'1','default',NULL,NULL,1032.00,NULL,5,'completed','2023-09-16 07:34:30','2023-09-09 23:34:30','2023-09-16 07:34:30'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Annamae West Jr.','',NULL,'gboyer@example.net','+19493581652','159 Tristian Trail, Port Icietown, Oregon, BD',NULL,80.25,0.00,0.00,0.00,NULL,'',NULL,NULL,80.25,NULL,6,'completed','2023-09-16 07:34:30','2023-09-14 19:34:30','2023-09-16 07:34:30'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Annamae West Jr.','',NULL,'gboyer@example.net','+19493581652','159 Tristian Trail, Port Icietown, Oregon, BD',NULL,583.00,0.00,0.00,0.00,'1','default',NULL,NULL,583.00,NULL,7,'completed','2023-09-16 07:34:30','2023-09-08 19:34:30','2023-09-16 07:34:30'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Daija Smitham','',NULL,'customer@botble.com','+17574475790','8067 Duane Prairie Apt. 983, Garlandmouth, Vermont, UA',NULL,3139.00,0.00,0.00,0.00,'1','default',NULL,NULL,3139.00,NULL,8,'completed','2023-09-16 07:34:30','2023-09-14 21:34:30','2023-09-16 07:34:30'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Mariah Conn','',NULL,'jimmy.gulgowski@example.org','+19498145586','10521 Zechariah Coves, Port Ernesto, West Virginia, CA',NULL,81.00,0.00,0.00,0.00,'1','default',NULL,NULL,81.00,NULL,9,'completed','2023-09-16 07:34:30','2023-09-06 23:34:30','2023-09-16 07:34:30'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Mariah Conn','',NULL,'jimmy.gulgowski@example.org','+19498145586','10521 Zechariah Coves, Port Ernesto, West Virginia, CA',NULL,3327.00,0.00,0.00,0.00,'1','default',NULL,NULL,3327.00,NULL,10,'completed','2023-09-16 07:34:30','2023-09-05 15:34:30','2023-09-16 07:34:30'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Mariah Conn','',NULL,'jimmy.gulgowski@example.org','+19498145586','10521 Zechariah Coves, Port Ernesto, West Virginia, CA',NULL,3495.00,0.00,0.00,0.00,'1','default',NULL,NULL,3495.00,NULL,11,'completed','2023-09-16 07:34:30','2023-09-13 15:34:30','2023-09-16 07:34:30'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,40.50,0.00,0.00,0.00,'1','default',NULL,NULL,40.50,NULL,12,'completed','2023-09-16 07:34:30','2023-09-03 19:34:30','2023-09-16 07:34:30'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,2514.00,0.00,0.00,0.00,'1','default',NULL,NULL,2514.00,NULL,13,'pending',NULL,'2023-09-10 01:34:30','2023-09-16 07:34:30'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Annamae West Jr.','',NULL,'gboyer@example.net','+19493581652','159 Tristian Trail, Port Icietown, Oregon, BD',NULL,4852.00,0.00,0.00,0.00,'1','default',NULL,NULL,4852.00,NULL,14,'completed','2023-09-16 07:34:30','2023-09-10 11:34:30','2023-09-16 07:34:30'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Annamae West Jr.','',NULL,'gboyer@example.net','+19493581652','159 Tristian Trail, Port Icietown, Oregon, BD',NULL,1194.00,0.00,0.00,0.00,'1','default',NULL,NULL,1194.00,NULL,15,'pending',NULL,'2023-09-05 19:34:31','2023-09-16 07:34:31'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,1365.00,0.00,0.00,0.00,'1','default',NULL,NULL,1365.00,NULL,16,'pending',NULL,'2023-09-07 15:34:31','2023-09-16 07:34:31'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,2514.00,0.00,0.00,0.00,'1','default',NULL,NULL,2514.00,NULL,17,'pending',NULL,'2023-09-11 23:34:31','2023-09-16 07:34:31'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,1194.00,0.00,0.00,0.00,'1','default',NULL,NULL,1194.00,NULL,18,'completed','2023-09-16 07:34:31','2023-09-13 01:34:31','2023-09-16 07:34:31'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,160.50,0.00,0.00,0.00,NULL,'',NULL,NULL,160.50,NULL,19,'pending',NULL,'2023-09-14 07:34:31','2023-09-16 07:34:31'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,1533.00,0.00,0.00,0.00,'1','default',NULL,NULL,1533.00,NULL,20,'completed','2023-09-16 07:34:31','2023-09-15 07:34:31','2023-09-16 07:34:31'),(21,'Botble\\Ecommerce\\Models\\Order',21,'INV-21','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,540.00,0.00,0.00,0.00,'1','default',NULL,NULL,540.00,NULL,21,'completed','2023-09-16 07:34:31','2023-09-14 07:34:31','2023-09-16 07:34:31'),(22,'Botble\\Ecommerce\\Models\\Order',22,'INV-22','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,1257.00,0.00,0.00,0.00,'1','default',NULL,NULL,1257.00,NULL,22,'pending',NULL,'2023-09-08 07:34:31','2023-09-16 07:34:31'),(23,'Botble\\Ecommerce\\Models\\Order',23,'INV-23','Annamae West Jr.','',NULL,'gboyer@example.net','+19493581652','159 Tristian Trail, Port Icietown, Oregon, BD',NULL,910.00,0.00,0.00,0.00,'1','default',NULL,NULL,910.00,NULL,23,'completed','2023-09-16 07:34:31','2023-09-15 09:34:31','2023-09-16 07:34:31'),(24,'Botble\\Ecommerce\\Models\\Order',24,'INV-24','Annamae West Jr.','',NULL,'gboyer@example.net','+19493581652','159 Tristian Trail, Port Icietown, Oregon, BD',NULL,2218.00,0.00,0.00,0.00,'1','default',NULL,NULL,2218.00,NULL,24,'completed','2023-09-16 07:34:31','2023-09-07 03:34:31','2023-09-16 07:34:31'),(25,'Botble\\Ecommerce\\Models\\Order',25,'INV-25','Annamae West Jr.','',NULL,'gboyer@example.net','+19493581652','159 Tristian Trail, Port Icietown, Oregon, BD',NULL,1196.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1196.00,NULL,25,'completed','2023-09-16 07:34:31','2023-09-10 19:34:31','2023-09-16 07:34:31'),(26,'Botble\\Ecommerce\\Models\\Order',26,'INV-26','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,1533.00,0.00,0.00,0.00,'1','default',NULL,NULL,1533.00,NULL,26,'completed','2023-09-16 07:34:31','2023-09-11 07:34:31','2023-09-16 07:34:31'),(27,'Botble\\Ecommerce\\Models\\Order',27,'INV-27','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,3771.00,0.00,0.00,0.00,'1','default',NULL,NULL,3771.00,NULL,27,'completed','2023-09-16 07:34:32','2023-09-12 03:34:31','2023-09-16 07:34:32'),(28,'Botble\\Ecommerce\\Models\\Order',28,'INV-28','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,516.00,0.00,0.00,0.00,'1','default',NULL,NULL,516.00,NULL,28,'completed','2023-09-16 07:34:32','2023-09-13 19:34:32','2023-09-16 07:34:32'),(29,'Botble\\Ecommerce\\Models\\Order',29,'INV-29','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,1794.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1794.00,NULL,29,'completed','2023-09-16 07:34:32','2023-09-12 23:34:32','2023-09-16 07:34:32'),(30,'Botble\\Ecommerce\\Models\\Order',30,'INV-30','Daija Smitham','',NULL,'customer@botble.com','+17574475790','8067 Duane Prairie Apt. 983, Garlandmouth, Vermont, UA',NULL,2178.00,0.00,0.00,0.00,NULL,'',NULL,NULL,2178.00,NULL,30,'pending',NULL,'2023-09-15 13:34:32','2023-09-16 07:34:32'),(31,'Botble\\Ecommerce\\Models\\Order',31,'INV-31','Daija Smitham','',NULL,'customer@botble.com','+17574475790','8067 Duane Prairie Apt. 983, Garlandmouth, Vermont, UA',NULL,1150.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1150.00,NULL,31,'completed','2023-09-16 07:34:32','2023-09-09 13:34:32','2023-09-16 07:34:32'),(32,'Botble\\Ecommerce\\Models\\Order',32,'INV-32','Daija Smitham','',NULL,'customer@botble.com','+17574475790','8067 Duane Prairie Apt. 983, Garlandmouth, Vermont, UA',NULL,1166.00,0.00,0.00,0.00,'1','default',NULL,NULL,1166.00,NULL,32,'completed','2023-09-16 07:34:32','2023-09-08 19:34:32','2023-09-16 07:34:32'),(33,'Botble\\Ecommerce\\Models\\Order',33,'INV-33','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,81.00,0.00,0.00,0.00,'1','default',NULL,NULL,81.00,NULL,33,'completed','2023-09-16 07:34:32','2023-09-10 23:34:32','2023-09-16 07:34:32'),(34,'Botble\\Ecommerce\\Models\\Order',34,'INV-34','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,1791.00,0.00,0.00,0.00,'1','default',NULL,NULL,1791.00,NULL,34,'pending',NULL,'2023-09-10 07:34:32','2023-09-16 07:34:32'),(35,'Botble\\Ecommerce\\Models\\Order',35,'INV-35','Daija Smitham','',NULL,'customer@botble.com','+17574475790','8067 Duane Prairie Apt. 983, Garlandmouth, Vermont, UA',NULL,515.00,0.00,0.00,0.00,NULL,'',NULL,NULL,515.00,NULL,35,'completed','2023-09-16 07:34:32','2023-09-12 05:34:32','2023-09-16 07:34:32'),(36,'Botble\\Ecommerce\\Models\\Order',36,'INV-36','Daija Smitham','',NULL,'customer@botble.com','+17574475790','8067 Duane Prairie Apt. 983, Garlandmouth, Vermont, UA',NULL,4237.00,0.00,0.00,0.00,'1','default',NULL,NULL,4237.00,NULL,36,'completed','2023-09-16 07:34:32','2023-09-12 05:34:32','2023-09-16 07:34:32'),(37,'Botble\\Ecommerce\\Models\\Order',37,'INV-37','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,80.25,0.00,0.00,0.00,NULL,'',NULL,NULL,80.25,NULL,37,'completed','2023-09-16 07:34:32','2023-09-14 07:34:32','2023-09-16 07:34:32'),(38,'Botble\\Ecommerce\\Models\\Order',38,'INV-38','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,511.00,0.00,0.00,0.00,'1','default',NULL,NULL,511.00,NULL,38,'completed','2023-09-16 07:34:32','2023-09-13 07:34:32','2023-09-16 07:34:32'),(39,'Botble\\Ecommerce\\Models\\Order',39,'INV-39','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,1948.00,0.00,0.00,0.00,'1','default',NULL,NULL,1948.00,NULL,39,'completed','2023-09-16 07:34:32','2023-09-12 07:34:32','2023-09-16 07:34:32'),(40,'Botble\\Ecommerce\\Models\\Order',40,'INV-40','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,910.00,0.00,0.00,0.00,'1','default',NULL,NULL,910.00,NULL,40,'completed','2023-09-16 07:34:33','2023-09-12 23:34:32','2023-09-16 07:34:33'),(41,'Botble\\Ecommerce\\Models\\Order',41,'INV-41','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,2120.00,0.00,0.00,0.00,'1','default',NULL,NULL,2120.00,NULL,41,'completed','2023-09-16 07:34:33','2023-09-14 05:34:33','2023-09-16 07:34:33'),(42,'Botble\\Ecommerce\\Models\\Order',42,'INV-42','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,1196.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1196.00,NULL,42,'completed','2023-09-16 07:34:33','2023-09-15 11:34:33','2023-09-16 07:34:33'),(43,'Botble\\Ecommerce\\Models\\Order',43,'INV-43','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,80.25,0.00,0.00,0.00,NULL,'',NULL,NULL,80.25,NULL,43,'completed','2023-09-16 07:34:33','2023-09-14 23:34:33','2023-09-16 07:34:33'),(44,'Botble\\Ecommerce\\Models\\Order',44,'INV-44','Prof. Westley Rath I','',NULL,'cole88@example.com','+12156640596','6989 Cole Manor, Robelfurt, District of Columbia, KH',NULL,2949.00,0.00,0.00,0.00,'1','default',NULL,NULL,2949.00,NULL,44,'completed','2023-09-16 07:34:33','2023-09-14 23:34:33','2023-09-16 07:34:33'),(45,'Botble\\Ecommerce\\Models\\Order',45,'INV-45','Mariah Conn','',NULL,'jimmy.gulgowski@example.org','+19498145586','10521 Zechariah Coves, Port Ernesto, West Virginia, CA',NULL,1487.00,0.00,0.00,0.00,'1','default',NULL,NULL,1487.00,NULL,45,'completed','2023-09-16 07:34:33','2023-09-15 19:34:33','2023-09-16 07:34:33'),(46,'Botble\\Ecommerce\\Models\\Order',46,'INV-46','Mariah Conn','',NULL,'jimmy.gulgowski@example.org','+19498145586','10521 Zechariah Coves, Port Ernesto, West Virginia, CA',NULL,2514.00,0.00,0.00,0.00,'1','default',NULL,NULL,2514.00,NULL,46,'completed','2023-09-16 07:34:33','2023-09-13 19:34:33','2023-09-16 07:34:33'),(47,'Botble\\Ecommerce\\Models\\Order',47,'INV-47','Mariah Conn','',NULL,'jimmy.gulgowski@example.org','+19498145586','10521 Zechariah Coves, Port Ernesto, West Virginia, CA',NULL,767.00,0.00,0.00,0.00,NULL,'',NULL,NULL,767.00,NULL,47,'completed','2023-09-16 07:34:33','2023-09-15 13:34:33','2023-09-16 07:34:33'),(48,'Botble\\Ecommerce\\Models\\Order',48,'INV-48','Mariah Conn','',NULL,'jimmy.gulgowski@example.org','+19498145586','10521 Zechariah Coves, Port Ernesto, West Virginia, CA',NULL,121.50,0.00,0.00,0.00,'1','default',NULL,NULL,121.50,NULL,48,'completed','2023-09-16 07:34:33','2023-09-16 03:34:33','2023-09-16 07:34:33'),(49,'Botble\\Ecommerce\\Models\\Order',49,'INV-49','Mariah Conn','',NULL,'jimmy.gulgowski@example.org','+19498145586','10521 Zechariah Coves, Port Ernesto, West Virginia, CA',NULL,1080.00,0.00,0.00,0.00,'1','default',NULL,NULL,1080.00,NULL,49,'completed','2023-09-16 07:34:33','2023-09-15 23:34:33','2023-09-16 07:34:33'),(50,'Botble\\Ecommerce\\Models\\Order',50,'INV-50','Mariah Conn','',NULL,'jimmy.gulgowski@example.org','+19498145586','10521 Zechariah Coves, Port Ernesto, West Virginia, CA',NULL,1986.00,0.00,0.00,0.00,'1','default',NULL,NULL,1986.00,NULL,50,'completed','2023-09-16 07:34:33','2023-09-15 11:34:33','2023-09-16 07:34:33'),(51,'Botble\\Ecommerce\\Models\\Order',51,'INV-51','Daija Smitham','',NULL,'customer@botble.com','+17574475790','8067 Duane Prairie Apt. 983, Garlandmouth, Vermont, UA',NULL,60.00,0.00,0.00,0.00,'1','default',NULL,NULL,60.00,NULL,51,'completed','2023-09-16 07:34:33','2023-09-16 01:34:33','2023-09-16 07:34:33'),(52,'Botble\\Ecommerce\\Models\\Order',52,'INV-52','Daija Smitham','',NULL,'customer@botble.com','+17574475790','8067 Duane Prairie Apt. 983, Garlandmouth, Vermont, UA',NULL,583.00,0.00,0.00,0.00,'1','default',NULL,NULL,583.00,NULL,52,'completed','2023-09-16 07:34:34','2023-09-16 01:34:34','2023-09-16 07:34:34'),(53,'Botble\\Ecommerce\\Models\\Order',53,'INV-53','Daija Smitham','',NULL,'customer@botble.com','+17574475790','8067 Duane Prairie Apt. 983, Garlandmouth, Vermont, UA',NULL,1791.00,0.00,0.00,0.00,'1','default',NULL,NULL,1791.00,NULL,53,'pending',NULL,'2023-09-16 03:34:34','2023-09-16 07:34:34'),(54,'Botble\\Ecommerce\\Models\\Order',54,'INV-54','Daija Smitham','',NULL,'customer@botble.com','+17574475790','8067 Duane Prairie Apt. 983, Garlandmouth, Vermont, UA',NULL,867.00,0.00,0.00,0.00,'1','default',NULL,NULL,867.00,NULL,54,'completed','2023-09-16 07:34:34','2023-09-15 11:34:34','2023-09-16 07:34:34');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',1,'55934-9250','shipping_address'),(2,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',2,'55934-9250','shipping_address'),(3,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',3,'55934-9250','shipping_address'),(4,'Mariah Conn','+19498145586','jimmy.gulgowski@example.org','CA','West Virginia','Port Ernesto','10521 Zechariah Coves',4,'48630-7637','shipping_address'),(5,'Mariah Conn','+19498145586','jimmy.gulgowski@example.org','CA','West Virginia','Port Ernesto','10521 Zechariah Coves',5,'48630-7637','shipping_address'),(6,'Annamae West Jr.','+19493581652','gboyer@example.net','BD','Oregon','Port Icietown','159 Tristian Trail',6,'08296-7161','shipping_address'),(7,'Annamae West Jr.','+19493581652','gboyer@example.net','BD','Oregon','Port Icietown','159 Tristian Trail',7,'08296-7161','shipping_address'),(8,'Daija Smitham','+17574475790','customer@botble.com','UA','Vermont','Garlandmouth','8067 Duane Prairie Apt. 983',8,'05588','shipping_address'),(9,'Mariah Conn','+19498145586','jimmy.gulgowski@example.org','CA','West Virginia','Port Ernesto','10521 Zechariah Coves',9,'48630-7637','shipping_address'),(10,'Mariah Conn','+19498145586','jimmy.gulgowski@example.org','CA','West Virginia','Port Ernesto','10521 Zechariah Coves',10,'48630-7637','shipping_address'),(11,'Mariah Conn','+19498145586','jimmy.gulgowski@example.org','CA','West Virginia','Port Ernesto','10521 Zechariah Coves',11,'48630-7637','shipping_address'),(12,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',12,'55934-9250','shipping_address'),(13,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',13,'55934-9250','shipping_address'),(14,'Annamae West Jr.','+19493581652','gboyer@example.net','BD','Oregon','Port Icietown','159 Tristian Trail',14,'08296-7161','shipping_address'),(15,'Annamae West Jr.','+19493581652','gboyer@example.net','BD','Oregon','Port Icietown','159 Tristian Trail',15,'08296-7161','shipping_address'),(16,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',16,'55934-9250','shipping_address'),(17,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',17,'55934-9250','shipping_address'),(18,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',18,'55934-9250','shipping_address'),(19,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',19,'55934-9250','shipping_address'),(20,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',20,'55934-9250','shipping_address'),(21,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',21,'55934-9250','shipping_address'),(22,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',22,'55934-9250','shipping_address'),(23,'Annamae West Jr.','+19493581652','gboyer@example.net','BD','Oregon','Port Icietown','159 Tristian Trail',23,'08296-7161','shipping_address'),(24,'Annamae West Jr.','+19493581652','gboyer@example.net','BD','Oregon','Port Icietown','159 Tristian Trail',24,'08296-7161','shipping_address'),(25,'Annamae West Jr.','+19493581652','gboyer@example.net','BD','Oregon','Port Icietown','159 Tristian Trail',25,'08296-7161','shipping_address'),(26,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',26,'55934-9250','shipping_address'),(27,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',27,'55934-9250','shipping_address'),(28,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',28,'55934-9250','shipping_address'),(29,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',29,'55934-9250','shipping_address'),(30,'Daija Smitham','+17574475790','customer@botble.com','UA','Vermont','Garlandmouth','8067 Duane Prairie Apt. 983',30,'05588','shipping_address'),(31,'Daija Smitham','+17574475790','customer@botble.com','UA','Vermont','Garlandmouth','8067 Duane Prairie Apt. 983',31,'05588','shipping_address'),(32,'Daija Smitham','+17574475790','customer@botble.com','UA','Vermont','Garlandmouth','8067 Duane Prairie Apt. 983',32,'05588','shipping_address'),(33,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',33,'55934-9250','shipping_address'),(34,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',34,'55934-9250','shipping_address'),(35,'Daija Smitham','+17574475790','customer@botble.com','UA','Vermont','Garlandmouth','8067 Duane Prairie Apt. 983',35,'05588','shipping_address'),(36,'Daija Smitham','+17574475790','customer@botble.com','UA','Vermont','Garlandmouth','8067 Duane Prairie Apt. 983',36,'05588','shipping_address'),(37,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',37,'55934-9250','shipping_address'),(38,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',38,'55934-9250','shipping_address'),(39,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',39,'55934-9250','shipping_address'),(40,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',40,'55934-9250','shipping_address'),(41,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',41,'55934-9250','shipping_address'),(42,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',42,'55934-9250','shipping_address'),(43,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',43,'55934-9250','shipping_address'),(44,'Prof. Westley Rath I','+12156640596','cole88@example.com','KH','District of Columbia','Robelfurt','6989 Cole Manor',44,'55934-9250','shipping_address'),(45,'Mariah Conn','+19498145586','jimmy.gulgowski@example.org','CA','West Virginia','Port Ernesto','10521 Zechariah Coves',45,'48630-7637','shipping_address'),(46,'Mariah Conn','+19498145586','jimmy.gulgowski@example.org','CA','West Virginia','Port Ernesto','10521 Zechariah Coves',46,'48630-7637','shipping_address'),(47,'Mariah Conn','+19498145586','jimmy.gulgowski@example.org','CA','West Virginia','Port Ernesto','10521 Zechariah Coves',47,'48630-7637','shipping_address'),(48,'Mariah Conn','+19498145586','jimmy.gulgowski@example.org','CA','West Virginia','Port Ernesto','10521 Zechariah Coves',48,'48630-7637','shipping_address'),(49,'Mariah Conn','+19498145586','jimmy.gulgowski@example.org','CA','West Virginia','Port Ernesto','10521 Zechariah Coves',49,'48630-7637','shipping_address'),(50,'Mariah Conn','+19498145586','jimmy.gulgowski@example.org','CA','West Virginia','Port Ernesto','10521 Zechariah Coves',50,'48630-7637','shipping_address'),(51,'Daija Smitham','+17574475790','customer@botble.com','UA','Vermont','Garlandmouth','8067 Duane Prairie Apt. 983',51,'05588','shipping_address'),(52,'Daija Smitham','+17574475790','customer@botble.com','UA','Vermont','Garlandmouth','8067 Duane Prairie Apt. 983',52,'05588','shipping_address'),(53,'Daija Smitham','+17574475790','customer@botble.com','UA','Vermont','Garlandmouth','8067 Duane Prairie Apt. 983',53,'05588','shipping_address'),(54,'Daija Smitham','+17574475790','customer@botble.com','UA','Vermont','Garlandmouth','8067 Duane Prairie Apt. 983',54,'05588','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2023-09-01 07:34:30','2023-09-01 07:34:30'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2023-09-01 07:34:30','2023-09-01 07:34:30'),(3,'create_shipment','Created shipment for order',0,1,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(4,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2023-09-04 15:34:30','2023-09-04 15:34:30'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2023-09-04 15:34:30','2023-09-04 15:34:30'),(7,'confirm_payment','Payment was confirmed (amount $2,426.00) by %user_name%',0,2,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2023-09-07 23:34:30','2023-09-07 23:34:30'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2023-09-07 23:34:30','2023-09-07 23:34:30'),(11,'confirm_payment','Payment was confirmed (amount $767.00) by %user_name%',0,3,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(12,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,3,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2023-09-13 03:34:30','2023-09-13 03:34:30'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2023-09-13 03:34:30','2023-09-13 03:34:30'),(15,'confirm_payment','Payment was confirmed (amount $530.00) by %user_name%',0,4,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(17,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2023-09-09 23:34:30','2023-09-09 23:34:30'),(18,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2023-09-09 23:34:30','2023-09-09 23:34:30'),(19,'confirm_payment','Payment was confirmed (amount $1,032.00) by %user_name%',0,5,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(20,'create_shipment','Created shipment for order',0,5,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(21,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2023-09-14 19:34:30','2023-09-14 19:34:30'),(22,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2023-09-14 19:34:30','2023-09-14 19:34:30'),(23,'confirm_payment','Payment was confirmed (amount $80.25) by %user_name%',0,6,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(24,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,6,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(25,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2023-09-08 19:34:30','2023-09-08 19:34:30'),(26,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2023-09-08 19:34:30','2023-09-08 19:34:30'),(27,'confirm_payment','Payment was confirmed (amount $583.00) by %user_name%',0,7,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(28,'create_shipment','Created shipment for order',0,7,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(29,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2023-09-14 21:34:30','2023-09-14 21:34:30'),(31,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2023-09-14 21:34:30','2023-09-14 21:34:30'),(32,'confirm_payment','Payment was confirmed (amount $3,139.00) by %user_name%',0,8,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(33,'create_shipment','Created shipment for order',0,8,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(34,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2023-09-06 23:34:30','2023-09-06 23:34:30'),(36,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2023-09-06 23:34:30','2023-09-06 23:34:30'),(37,'confirm_payment','Payment was confirmed (amount $81.00) by %user_name%',0,9,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(38,'create_shipment','Created shipment for order',0,9,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(39,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(40,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2023-09-05 15:34:30','2023-09-05 15:34:30'),(41,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2023-09-05 15:34:30','2023-09-05 15:34:30'),(42,'confirm_payment','Payment was confirmed (amount $3,327.00) by %user_name%',0,10,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(43,'create_shipment','Created shipment for order',0,10,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(44,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(45,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2023-09-13 15:34:30','2023-09-13 15:34:30'),(46,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2023-09-13 15:34:30','2023-09-13 15:34:30'),(47,'confirm_payment','Payment was confirmed (amount $3,495.00) by %user_name%',0,11,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(48,'create_shipment','Created shipment for order',0,11,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(49,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(50,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2023-09-03 19:34:30','2023-09-03 19:34:30'),(51,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2023-09-03 19:34:30','2023-09-03 19:34:30'),(52,'confirm_payment','Payment was confirmed (amount $40.50) by %user_name%',0,12,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(53,'create_shipment','Created shipment for order',0,12,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(54,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2023-09-10 01:34:30','2023-09-10 01:34:30'),(56,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2023-09-10 01:34:30','2023-09-10 01:34:30'),(57,'create_shipment','Created shipment for order',0,13,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(58,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2023-09-10 11:34:30','2023-09-10 11:34:30'),(59,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2023-09-10 11:34:30','2023-09-10 11:34:30'),(60,'confirm_payment','Payment was confirmed (amount $4,852.00) by %user_name%',0,14,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30'),(61,'create_shipment','Created shipment for order',0,14,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(62,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2023-09-05 19:34:31','2023-09-05 19:34:31'),(63,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2023-09-05 19:34:31','2023-09-05 19:34:31'),(64,'create_shipment','Created shipment for order',0,15,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(65,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2023-09-07 15:34:31','2023-09-07 15:34:31'),(66,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2023-09-07 15:34:31','2023-09-07 15:34:31'),(67,'create_shipment','Created shipment for order',0,16,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(68,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2023-09-11 23:34:31','2023-09-11 23:34:31'),(69,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2023-09-11 23:34:31','2023-09-11 23:34:31'),(70,'create_shipment','Created shipment for order',0,17,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(71,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(72,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2023-09-13 01:34:31','2023-09-13 01:34:31'),(73,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2023-09-13 01:34:31','2023-09-13 01:34:31'),(74,'confirm_payment','Payment was confirmed (amount $1,194.00) by %user_name%',0,18,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(75,'create_shipment','Created shipment for order',0,18,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(76,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(77,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2023-09-14 07:34:31','2023-09-14 07:34:31'),(78,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2023-09-14 07:34:31','2023-09-14 07:34:31'),(79,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2023-09-15 07:34:31','2023-09-15 07:34:31'),(80,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2023-09-15 07:34:31','2023-09-15 07:34:31'),(81,'confirm_payment','Payment was confirmed (amount $1,533.00) by %user_name%',0,20,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(82,'create_shipment','Created shipment for order',0,20,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(83,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(84,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2023-09-14 07:34:31','2023-09-14 07:34:31'),(85,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2023-09-14 07:34:31','2023-09-14 07:34:31'),(86,'confirm_payment','Payment was confirmed (amount $540.00) by %user_name%',0,21,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(87,'create_shipment','Created shipment for order',0,21,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(88,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2023-09-08 07:34:31','2023-09-08 07:34:31'),(89,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2023-09-08 07:34:31','2023-09-08 07:34:31'),(90,'create_shipment','Created shipment for order',0,22,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(91,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(92,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2023-09-15 09:34:31','2023-09-15 09:34:31'),(93,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2023-09-15 09:34:31','2023-09-15 09:34:31'),(94,'confirm_payment','Payment was confirmed (amount $910.00) by %user_name%',0,23,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(95,'create_shipment','Created shipment for order',0,23,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(96,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(97,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2023-09-07 03:34:31','2023-09-07 03:34:31'),(98,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2023-09-07 03:34:31','2023-09-07 03:34:31'),(99,'confirm_payment','Payment was confirmed (amount $2,218.00) by %user_name%',0,24,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(100,'create_shipment','Created shipment for order',0,24,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(101,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2023-09-10 19:34:31','2023-09-10 19:34:31'),(102,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2023-09-10 19:34:31','2023-09-10 19:34:31'),(103,'confirm_payment','Payment was confirmed (amount $1,196.00) by %user_name%',0,25,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(104,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,25,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(105,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2023-09-11 07:34:31','2023-09-11 07:34:31'),(106,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2023-09-11 07:34:31','2023-09-11 07:34:31'),(107,'confirm_payment','Payment was confirmed (amount $1,533.00) by %user_name%',0,26,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(108,'create_shipment','Created shipment for order',0,26,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(109,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31'),(110,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2023-09-12 03:34:31','2023-09-12 03:34:31'),(111,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2023-09-12 03:34:31','2023-09-12 03:34:31'),(112,'confirm_payment','Payment was confirmed (amount $3,771.00) by %user_name%',0,27,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(113,'create_shipment','Created shipment for order',0,27,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(114,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2023-09-13 19:34:32','2023-09-13 19:34:32'),(115,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2023-09-13 19:34:32','2023-09-13 19:34:32'),(116,'confirm_payment','Payment was confirmed (amount $516.00) by %user_name%',0,28,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(117,'create_shipment','Created shipment for order',0,28,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(118,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(119,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2023-09-12 23:34:32','2023-09-12 23:34:32'),(120,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2023-09-12 23:34:32','2023-09-12 23:34:32'),(121,'confirm_payment','Payment was confirmed (amount $1,794.00) by %user_name%',0,29,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(122,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,29,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(123,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2023-09-15 13:34:32','2023-09-15 13:34:32'),(124,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2023-09-15 13:34:32','2023-09-15 13:34:32'),(125,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2023-09-09 13:34:32','2023-09-09 13:34:32'),(126,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2023-09-09 13:34:32','2023-09-09 13:34:32'),(127,'confirm_payment','Payment was confirmed (amount $1,150.00) by %user_name%',0,31,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(128,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,31,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(129,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2023-09-08 19:34:32','2023-09-08 19:34:32'),(130,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2023-09-08 19:34:32','2023-09-08 19:34:32'),(131,'confirm_payment','Payment was confirmed (amount $1,166.00) by %user_name%',0,32,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(132,'create_shipment','Created shipment for order',0,32,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(133,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2023-09-10 23:34:32','2023-09-10 23:34:32'),(134,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2023-09-10 23:34:32','2023-09-10 23:34:32'),(135,'confirm_payment','Payment was confirmed (amount $81.00) by %user_name%',0,33,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(136,'create_shipment','Created shipment for order',0,33,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(137,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(138,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2023-09-10 07:34:32','2023-09-10 07:34:32'),(139,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2023-09-10 07:34:32','2023-09-10 07:34:32'),(140,'create_shipment','Created shipment for order',0,34,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(141,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(142,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2023-09-12 05:34:32','2023-09-12 05:34:32'),(143,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2023-09-12 05:34:32','2023-09-12 05:34:32'),(144,'confirm_payment','Payment was confirmed (amount $515.00) by %user_name%',0,35,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(145,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,35,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(146,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2023-09-12 05:34:32','2023-09-12 05:34:32'),(147,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2023-09-12 05:34:32','2023-09-12 05:34:32'),(148,'confirm_payment','Payment was confirmed (amount $4,237.00) by %user_name%',0,36,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(149,'create_shipment','Created shipment for order',0,36,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(150,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2023-09-14 07:34:32','2023-09-14 07:34:32'),(151,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2023-09-14 07:34:32','2023-09-14 07:34:32'),(152,'confirm_payment','Payment was confirmed (amount $80.25) by %user_name%',0,37,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(153,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,37,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(154,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2023-09-13 07:34:32','2023-09-13 07:34:32'),(155,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2023-09-13 07:34:32','2023-09-13 07:34:32'),(156,'confirm_payment','Payment was confirmed (amount $511.00) by %user_name%',0,38,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(157,'create_shipment','Created shipment for order',0,38,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(158,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(159,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2023-09-12 07:34:32','2023-09-12 07:34:32'),(160,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2023-09-12 07:34:32','2023-09-12 07:34:32'),(161,'confirm_payment','Payment was confirmed (amount $1,948.00) by %user_name%',0,39,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(162,'create_shipment','Created shipment for order',0,39,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(163,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32'),(164,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2023-09-12 23:34:32','2023-09-12 23:34:32'),(165,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2023-09-12 23:34:32','2023-09-12 23:34:32'),(166,'confirm_payment','Payment was confirmed (amount $910.00) by %user_name%',0,40,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(167,'create_shipment','Created shipment for order',0,40,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(168,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(169,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2023-09-14 05:34:33','2023-09-14 05:34:33'),(170,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2023-09-14 05:34:33','2023-09-14 05:34:33'),(171,'confirm_payment','Payment was confirmed (amount $2,120.00) by %user_name%',0,41,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(172,'create_shipment','Created shipment for order',0,41,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(173,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(174,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2023-09-15 11:34:33','2023-09-15 11:34:33'),(175,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2023-09-15 11:34:33','2023-09-15 11:34:33'),(176,'confirm_payment','Payment was confirmed (amount $1,196.00) by %user_name%',0,42,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(177,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,42,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(178,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2023-09-14 23:34:33','2023-09-14 23:34:33'),(179,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2023-09-14 23:34:33','2023-09-14 23:34:33'),(180,'confirm_payment','Payment was confirmed (amount $80.25) by %user_name%',0,43,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(181,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,43,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(182,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2023-09-14 23:34:33','2023-09-14 23:34:33'),(183,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2023-09-14 23:34:33','2023-09-14 23:34:33'),(184,'confirm_payment','Payment was confirmed (amount $2,949.00) by %user_name%',0,44,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(185,'create_shipment','Created shipment for order',0,44,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(186,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2023-09-15 19:34:33','2023-09-15 19:34:33'),(187,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2023-09-15 19:34:33','2023-09-15 19:34:33'),(188,'confirm_payment','Payment was confirmed (amount $1,487.00) by %user_name%',0,45,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(189,'create_shipment','Created shipment for order',0,45,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(190,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,45,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(191,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2023-09-13 19:34:33','2023-09-13 19:34:33'),(192,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2023-09-13 19:34:33','2023-09-13 19:34:33'),(193,'confirm_payment','Payment was confirmed (amount $2,514.00) by %user_name%',0,46,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(194,'create_shipment','Created shipment for order',0,46,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(195,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,46,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(196,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2023-09-15 13:34:33','2023-09-15 13:34:33'),(197,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2023-09-15 13:34:33','2023-09-15 13:34:33'),(198,'confirm_payment','Payment was confirmed (amount $767.00) by %user_name%',0,47,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(199,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,47,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(200,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2023-09-16 03:34:33','2023-09-16 03:34:33'),(201,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2023-09-16 03:34:33','2023-09-16 03:34:33'),(202,'confirm_payment','Payment was confirmed (amount $121.50) by %user_name%',0,48,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(203,'create_shipment','Created shipment for order',0,48,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(204,'create_order_from_seeder','Order is created from the checkout page',NULL,49,NULL,'2023-09-15 23:34:33','2023-09-15 23:34:33'),(205,'confirm_order','Order was verified by %user_name%',0,49,NULL,'2023-09-15 23:34:33','2023-09-15 23:34:33'),(206,'confirm_payment','Payment was confirmed (amount $1,080.00) by %user_name%',0,49,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(207,'create_shipment','Created shipment for order',0,49,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(208,'create_order_from_seeder','Order is created from the checkout page',NULL,50,NULL,'2023-09-15 11:34:33','2023-09-15 11:34:33'),(209,'confirm_order','Order was verified by %user_name%',0,50,NULL,'2023-09-15 11:34:33','2023-09-15 11:34:33'),(210,'confirm_payment','Payment was confirmed (amount $1,986.00) by %user_name%',0,50,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(211,'create_shipment','Created shipment for order',0,50,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(212,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,50,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(213,'create_order_from_seeder','Order is created from the checkout page',NULL,51,NULL,'2023-09-16 01:34:33','2023-09-16 01:34:33'),(214,'confirm_order','Order was verified by %user_name%',0,51,NULL,'2023-09-16 01:34:33','2023-09-16 01:34:33'),(215,'confirm_payment','Payment was confirmed (amount $60.00) by %user_name%',0,51,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(216,'create_shipment','Created shipment for order',0,51,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33'),(217,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,51,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34'),(218,'create_order_from_seeder','Order is created from the checkout page',NULL,52,NULL,'2023-09-16 01:34:34','2023-09-16 01:34:34'),(219,'confirm_order','Order was verified by %user_name%',0,52,NULL,'2023-09-16 01:34:34','2023-09-16 01:34:34'),(220,'confirm_payment','Payment was confirmed (amount $583.00) by %user_name%',0,52,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34'),(221,'create_shipment','Created shipment for order',0,52,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34'),(222,'create_order_from_seeder','Order is created from the checkout page',NULL,53,NULL,'2023-09-16 03:34:34','2023-09-16 03:34:34'),(223,'confirm_order','Order was verified by %user_name%',0,53,NULL,'2023-09-16 03:34:34','2023-09-16 03:34:34'),(224,'create_shipment','Created shipment for order',0,53,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34'),(225,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,53,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34'),(226,'create_order_from_seeder','Order is created from the checkout page',NULL,54,NULL,'2023-09-15 11:34:34','2023-09-15 11:34:34'),(227,'confirm_order','Order was verified by %user_name%',0,54,NULL,'2023-09-15 11:34:34','2023-09-15 11:34:34'),(228,'confirm_payment','Payment was confirmed (amount $867.00) by %user_name%',0,54,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34'),(229,'create_shipment','Created shipment for order',0,54,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34'),(230,'update_status','Order confirmed by %user_name%',0,7,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34'),(231,'update_status','Order confirmed by %user_name%',0,8,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34'),(232,'update_status','Order confirmed by %user_name%',0,9,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34'),(233,'update_status','Order confirmed by %user_name%',0,10,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34'),(234,'update_status','Order confirmed by %user_name%',0,11,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34'),(235,'update_status','Order confirmed by %user_name%',0,12,NULL,'2023-09-16 07:34:35','2023-09-16 07:34:35'),(236,'update_status','Order confirmed by %user_name%',0,18,NULL,'2023-09-16 07:34:35','2023-09-16 07:34:35'),(237,'update_status','Order confirmed by %user_name%',0,20,NULL,'2023-09-16 07:34:35','2023-09-16 07:34:35'),(238,'update_status','Order confirmed by %user_name%',0,23,NULL,'2023-09-16 07:34:35','2023-09-16 07:34:35'),(239,'update_status','Order confirmed by %user_name%',0,26,NULL,'2023-09-16 07:34:35','2023-09-16 07:34:35'),(240,'update_status','Order confirmed by %user_name%',0,28,NULL,'2023-09-16 07:34:35','2023-09-16 07:34:35'),(241,'update_status','Order confirmed by %user_name%',0,33,NULL,'2023-09-16 07:34:36','2023-09-16 07:34:36'),(242,'update_status','Order confirmed by %user_name%',0,38,NULL,'2023-09-16 07:34:36','2023-09-16 07:34:36'),(243,'update_status','Order confirmed by %user_name%',0,39,NULL,'2023-09-16 07:34:36','2023-09-16 07:34:36'),(244,'update_status','Order confirmed by %user_name%',0,40,NULL,'2023-09-16 07:34:36','2023-09-16 07:34:36'),(245,'update_status','Order confirmed by %user_name%',0,41,NULL,'2023-09-16 07:34:36','2023-09-16 07:34:36'),(246,'update_status','Order confirmed by %user_name%',0,45,NULL,'2023-09-16 07:34:36','2023-09-16 07:34:36'),(247,'update_status','Order confirmed by %user_name%',0,46,NULL,'2023-09-16 07:34:37','2023-09-16 07:34:37'),(248,'update_status','Order confirmed by %user_name%',0,50,NULL,'2023-09-16 07:34:37','2023-09-16 07:34:37'),(249,'update_status','Order confirmed by %user_name%',0,51,NULL,'2023-09-16 07:34:37','2023-09-16 07:34:37');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,583.00,0.00,'[]',NULL,59,'B&O Play Mini Bluetooth Speaker','products/14.jpg',623.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','physical',0,NULL),(2,2,2,1213.00,0.00,'[]',NULL,71,'Aveeno Moisturizing Body Shower 450ml','products/18-1.jpg',1482.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','physical',0,NULL),(3,3,1,767.00,0.00,'[]',NULL,76,'MVMTH Classical Leather Watch In Black (Digital)','products/21-1.jpg',871.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','digital',0,NULL),(4,4,1,530.00,0.00,'[]',NULL,63,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',665.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','physical',0,NULL),(5,5,2,516.00,0.00,'[]',NULL,64,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',1686.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','physical',0,NULL),(6,6,1,80.25,0.00,'[]',NULL,24,'Dual Camera 20MP (Digital)','products/1.jpg',587.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','digital',9,NULL),(7,7,1,583.00,0.00,'[]',NULL,59,'B&O Play Mini Bluetooth Speaker','products/14.jpg',623.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','physical',0,NULL),(8,8,1,575.00,0.00,'[]',NULL,47,'Samsung Smart Phone (Digital)','products/9-1.jpg',527.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','digital',8,NULL),(9,8,1,598.00,0.00,'[]',NULL,69,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17.jpg',839.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','digital',3,NULL),(10,8,2,983.00,0.00,'[]',NULL,74,'NYX Beauty Couton Pallete Makeup 12','products/20.jpg',1768.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','physical',0,NULL),(11,9,2,40.50,0.00,'[]',NULL,27,'Smart Watches','products/2.jpg',1206.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','physical',0,NULL),(12,10,3,1109.00,0.00,'[]',NULL,52,'Xbox One Wireless Controller Black Color','products/11-1.jpg',2289.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','physical',0,NULL),(13,11,3,767.00,0.00,'[]',NULL,76,'MVMTH Classical Leather Watch In Black (Digital)','products/21-1.jpg',2613.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','digital',2,NULL),(14,11,2,597.00,0.00,'[]',NULL,79,'Baxter Care Hair Kit For Bearded Mens','products/22-1.jpg',1164.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','physical',0,NULL),(15,12,1,40.50,0.00,'[]',NULL,29,'Smart Watches','products/2-2.jpg',603.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','physical',0,NULL),(16,13,2,1257.00,0.00,'[]',NULL,48,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',1552.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','physical',0,NULL),(17,14,3,1213.00,0.00,'[]',NULL,70,'Aveeno Moisturizing Body Shower 450ml','products/18.jpg',2223.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','physical',0,NULL),(18,14,1,1213.00,0.00,'[]',NULL,71,'Aveeno Moisturizing Body Shower 450ml','products/18-1.jpg',741.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','physical',0,NULL),(19,15,2,597.00,0.00,'[]',NULL,79,'Baxter Care Hair Kit For Bearded Mens','products/22-1.jpg',1164.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','physical',0,NULL),(20,16,3,455.00,0.00,'[]',NULL,41,'Nikon HD camera','products/6.jpg',1545.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','physical',0,NULL),(21,17,2,1257.00,0.00,'[]',NULL,50,'Herschel Leather Duffle Bag In Brown Color','products/10-2.jpg',1552.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','physical',0,NULL),(22,18,2,597.00,0.00,'[]',NULL,80,'Baxter Care Hair Kit For Bearded Mens','products/22-2.jpg',1164.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','physical',0,NULL),(23,19,2,80.25,0.00,'[]',NULL,24,'Dual Camera 20MP (Digital)','products/1.jpg',1174.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','digital',0,NULL),(24,20,3,511.00,0.00,'[]',NULL,34,'Red & Black Headphone','products/4-1.jpg',1866.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','physical',0,NULL),(25,21,1,540.00,0.00,'[]',NULL,42,'Audio Equipment','products/7.jpg',858.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','physical',0,NULL),(26,22,1,1257.00,0.00,'[]',NULL,50,'Herschel Leather Duffle Bag In Brown Color','products/10-2.jpg',776.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','physical',0,NULL),(27,23,2,455.00,0.00,'[]',NULL,40,'Nikon HD camera','products/6.jpg',1030.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','physical',0,NULL),(28,24,2,1109.00,0.00,'[]',NULL,53,'Xbox One Wireless Controller Black Color','products/11-2.jpg',1526.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','physical',0,NULL),(29,25,2,598.00,0.00,'[]',NULL,68,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17-3.jpg',1678.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','digital',4,NULL),(30,26,3,511.00,0.00,'[]',NULL,34,'Red & Black Headphone','products/4-1.jpg',1866.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','physical',0,NULL),(31,27,3,1257.00,0.00,'[]',NULL,49,'Herschel Leather Duffle Bag In Brown Color','products/10-1.jpg',2328.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','physical',0,NULL),(32,28,1,516.00,0.00,'[]',NULL,64,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',843.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','physical',0,NULL),(33,29,3,598.00,0.00,'[]',NULL,67,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17-2.jpg',2517.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','digital',5,NULL),(34,30,3,726.00,0.00,'[]',NULL,37,'Smart Watch External (Digital)','products/5-2.jpg',2550.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','digital',4,NULL),(35,31,2,575.00,0.00,'[]',NULL,47,'Samsung Smart Phone (Digital)','products/9-1.jpg',1054.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','digital',0,NULL),(36,32,2,583.00,0.00,'[]',NULL,59,'B&O Play Mini Bluetooth Speaker','products/14.jpg',1246.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','physical',0,NULL),(37,33,2,40.50,0.00,'[]',NULL,29,'Smart Watches','products/2-2.jpg',1206.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','physical',0,NULL),(38,34,3,597.00,0.00,'[]',NULL,80,'Baxter Care Hair Kit For Bearded Mens','products/22-2.jpg',1746.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','physical',0,NULL),(39,35,1,515.00,0.00,'[]',NULL,57,'Sound Intone I65 Earphone White Version (Digital)','products/13-1.jpg',565.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','digital',6,NULL),(40,36,1,598.00,0.00,'[]',NULL,66,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17-1.jpg',839.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','digital',7,NULL),(41,36,3,1213.00,0.00,'[]',NULL,71,'Aveeno Moisturizing Body Shower 450ml','products/18-1.jpg',2223.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','physical',0,NULL),(42,37,1,80.25,0.00,'[]',NULL,26,'Dual Camera 20MP (Digital)','products/1.jpg',587.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','digital',8,NULL),(43,38,1,511.00,0.00,'[]',NULL,34,'Red & Black Headphone','products/4-1.jpg',622.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','physical',0,NULL),(44,39,3,455.00,0.00,'[]',NULL,40,'Nikon HD camera','products/6.jpg',1545.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','physical',0,NULL),(45,39,1,583.00,0.00,'[]',NULL,59,'B&O Play Mini Bluetooth Speaker','products/14.jpg',623.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','physical',0,NULL),(46,40,2,455.00,0.00,'[]',NULL,39,'Nikon HD camera','products/6.jpg',1030.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','physical',0,NULL),(47,41,3,530.00,0.00,'[]',NULL,62,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',1995.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','physical',0,NULL),(48,41,1,530.00,0.00,'[]',NULL,63,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',665.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','physical',0,NULL),(49,42,2,598.00,0.00,'[]',NULL,65,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17.jpg',1678.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','digital',1,NULL),(50,43,1,80.25,0.00,'[]',NULL,26,'Dual Camera 20MP (Digital)','products/1.jpg',587.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','digital',0,NULL),(51,44,3,983.00,0.00,'[]',NULL,74,'NYX Beauty Couton Pallete Makeup 12','products/20.jpg',2652.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','physical',0,NULL),(52,45,1,455.00,0.00,'[]',NULL,38,'Nikon HD camera','products/6.jpg',515.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','physical',0,NULL),(53,45,2,516.00,0.00,'[]',NULL,64,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',1686.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','physical',0,NULL),(54,46,2,1257.00,0.00,'[]',NULL,49,'Herschel Leather Duffle Bag In Brown Color','products/10-1.jpg',1552.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','physical',0,NULL),(55,47,1,767.00,0.00,'[]',NULL,76,'MVMTH Classical Leather Watch In Black (Digital)','products/21-1.jpg',871.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','digital',7,NULL),(56,48,3,40.50,0.00,'[]',NULL,28,'Smart Watches','products/2-1.jpg',1809.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','physical',0,NULL),(57,49,2,540.00,0.00,'[]',NULL,42,'Audio Equipment','products/7.jpg',1716.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','physical',0,NULL),(58,50,2,993.00,0.00,'[]',NULL,72,'NYX Beauty Couton Pallete Makeup 12','products/19.jpg',1724.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','physical',0,NULL),(59,51,3,20.00,0.00,'[]',NULL,30,'Beat Headphone','products/3.jpg',2700.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','physical',0,NULL),(60,52,1,583.00,0.00,'[]',NULL,59,'B&O Play Mini Bluetooth Speaker','products/14.jpg',623.00,0,'2023-09-16 07:34:34','2023-09-16 07:34:34','physical',0,NULL),(61,53,3,597.00,0.00,'[]',NULL,80,'Baxter Care Hair Kit For Bearded Mens','products/22-2.jpg',1746.00,0,'2023-09-16 07:34:34','2023-09-16 07:34:34','physical',0,NULL),(62,54,1,867.00,0.00,'[]',NULL,82,'Ciate Palemore Lipstick Bold Red Color','products/23-1.jpg',691.00,0,'2023-09-16 07:34:34','2023-09-16 07:34:34','physical',0,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',3,'1','default','completed',583.00,0.00,0.00,NULL,NULL,0.00,583.00,1,NULL,1,'2023-09-16 07:34:30','p3muVV9MZyj8IR67iuk0Yxp4jYPDh',1,'2023-09-01 07:34:30','2023-09-16 07:34:30',4),(2,'#10000002',3,'1','default','pending',2426.00,0.00,0.00,NULL,NULL,0.00,2426.00,1,NULL,1,NULL,'TvddW8XRzDhaWjIagyjOrwxgsaBgp',2,'2023-09-04 15:34:30','2023-09-16 07:34:30',2),(3,'#10000003',3,NULL,'','completed',767.00,0.00,0.00,NULL,NULL,0.00,767.00,1,NULL,1,'2023-09-16 07:34:30','Nhs7Kg1hLaQmxYjUKP9rxIG6PowXw',3,'2023-09-07 23:34:30','2023-09-16 07:34:30',6),(4,'#10000004',7,'1','default','pending',530.00,0.00,0.00,NULL,NULL,0.00,530.00,1,NULL,1,NULL,'HfXq0O3BG1XwukHYqNTyJZ8Cabq2x',4,'2023-09-13 03:34:30','2023-09-16 07:34:30',6),(5,'#10000005',7,'1','default','pending',1032.00,0.00,0.00,NULL,NULL,0.00,1032.00,1,NULL,1,NULL,'qtcVmFDHDWphTsnFo4ltSo8g4eir0',5,'2023-09-09 23:34:30','2023-09-16 07:34:30',4),(6,'#10000006',6,NULL,'','completed',80.25,0.00,0.00,NULL,NULL,0.00,80.25,1,NULL,1,'2023-09-16 07:34:30','wD6B8s73XVCzaS4RHJLM0H4kteTLW',6,'2023-09-14 19:34:30','2023-09-16 07:34:30',5),(7,'#10000007',6,'1','default','completed',583.00,0.00,0.00,NULL,NULL,0.00,583.00,1,NULL,1,'2023-09-16 07:34:34','GQoVXlIEguBGeT9dADYxJNVKBNqcr',7,'2023-09-08 19:34:30','2023-09-16 07:34:34',4),(8,'#10000008',1,'1','default','completed',3139.00,0.00,0.00,NULL,NULL,0.00,3139.00,1,NULL,1,'2023-09-16 07:34:34','Ric8IJKYg3acJSRpZFsCQqw1KooQ9',8,'2023-09-14 21:34:30','2023-09-16 07:34:34',2),(9,'#10000009',7,'1','default','completed',81.00,0.00,0.00,NULL,NULL,0.00,81.00,1,NULL,1,'2023-09-16 07:34:34','G2TNmRAXV8BQG1JkAjK7vdyFPAV7h',9,'2023-09-06 23:34:30','2023-09-16 07:34:34',4),(10,'#10000010',7,'1','default','completed',3327.00,0.00,0.00,NULL,NULL,0.00,3327.00,1,NULL,1,'2023-09-16 07:34:34','4dX0UTSMWtwm2M8Vv3xha5C417CxU',10,'2023-09-05 15:34:30','2023-09-16 07:34:34',1),(11,'#10000011',7,'1','default','completed',3495.00,0.00,0.00,NULL,NULL,0.00,3495.00,1,NULL,1,'2023-09-16 07:34:34','P72d4SahnxcupfkwWm1JYoinfzGho',11,'2023-09-13 15:34:30','2023-09-16 07:34:34',6),(12,'#10000012',3,'1','default','completed',40.50,0.00,0.00,NULL,NULL,0.00,40.50,1,NULL,1,'2023-09-16 07:34:35','xHR7oxjfKlxt4zU7ahrkpAkVcNHB8',12,'2023-09-03 19:34:30','2023-09-16 07:34:35',4),(13,'#10000013',3,'1','default','pending',2514.00,0.00,0.00,NULL,NULL,0.00,2514.00,1,NULL,1,NULL,'EFegEGdAPSz5P0ZqvSAFeJNYE8AeV',13,'2023-09-10 01:34:30','2023-09-16 07:34:30',3),(14,'#10000014',6,'1','default','pending',4852.00,0.00,0.00,NULL,NULL,0.00,4852.00,1,NULL,1,NULL,'GA5NzqmQAEMH4sTomd8WbiPwtxH4F',14,'2023-09-10 11:34:30','2023-09-16 07:34:30',2),(15,'#10000015',6,'1','default','pending',1194.00,0.00,0.00,NULL,NULL,0.00,1194.00,1,NULL,1,NULL,'dRn9QnPjeolLj6IOfS4Vol5ZAPY1n',15,'2023-09-05 19:34:31','2023-09-16 07:34:31',6),(16,'#10000016',3,'1','default','pending',1365.00,0.00,0.00,NULL,NULL,0.00,1365.00,1,NULL,1,NULL,'PIg6VseXuO9cm1gwNFyegHmf0udWy',16,'2023-09-07 15:34:31','2023-09-16 07:34:31',4),(17,'#10000017',3,'1','default','completed',2514.00,0.00,0.00,NULL,NULL,0.00,2514.00,1,NULL,1,'2023-09-16 07:34:31','UIwdiUQmZxM89AtFBLDmLPWw7M67L',17,'2023-09-11 23:34:31','2023-09-16 07:34:31',3),(18,'#10000018',3,'1','default','completed',1194.00,0.00,0.00,NULL,NULL,0.00,1194.00,1,NULL,1,'2023-09-16 07:34:35','iUSeQqGzjo2BXTsu3jfgktnOPaXDX',18,'2023-09-13 01:34:31','2023-09-16 07:34:35',6),(19,'#10000019',3,NULL,'','pending',160.50,0.00,0.00,NULL,NULL,0.00,160.50,1,NULL,1,NULL,'0zogv8OhNHQwDz8N6vrpgQx0TmYzS',19,'2023-09-14 07:34:31','2023-09-16 07:34:31',5),(20,'#10000020',3,'1','default','completed',1533.00,0.00,0.00,NULL,NULL,0.00,1533.00,1,NULL,1,'2023-09-16 07:34:35','a4u0cfxKdKvwARIJajxYxOqHRlWEM',20,'2023-09-15 07:34:31','2023-09-16 07:34:35',1),(21,'#10000021',3,'1','default','pending',540.00,0.00,0.00,NULL,NULL,0.00,540.00,1,NULL,1,NULL,'5UDXG9YyoVeXmFY8PbP9PufzKUVFL',21,'2023-09-14 07:34:31','2023-09-16 07:34:31',2),(22,'#10000022',3,'1','default','completed',1257.00,0.00,0.00,NULL,NULL,0.00,1257.00,1,NULL,1,'2023-09-16 07:34:31','bk5zVGyIuo7tt50m1KM5F5zrmpYvE',22,'2023-09-08 07:34:31','2023-09-16 07:34:31',3),(23,'#10000023',6,'1','default','completed',910.00,0.00,0.00,NULL,NULL,0.00,910.00,1,NULL,1,'2023-09-16 07:34:35','5ouBaGfIsieEfgCnuW9yDicstShAk',23,'2023-09-15 09:34:31','2023-09-16 07:34:35',4),(24,'#10000024',6,'1','default','pending',2218.00,0.00,0.00,NULL,NULL,0.00,2218.00,1,NULL,1,NULL,'KNbm7FboQlT0czskTztz8Qr8EcYzq',24,'2023-09-07 03:34:31','2023-09-16 07:34:31',1),(25,'#10000025',6,NULL,'','completed',1196.00,0.00,0.00,NULL,NULL,0.00,1196.00,1,NULL,1,'2023-09-16 07:34:31','Pm1qLoTuTN23QF9SeeuVH7vNQwE55',25,'2023-09-10 19:34:31','2023-09-16 07:34:31',2),(26,'#10000026',3,'1','default','completed',1533.00,0.00,0.00,NULL,NULL,0.00,1533.00,1,NULL,1,'2023-09-16 07:34:35','R2v1rIfJVxXbh0hcDxmLjtxgVx3TT',26,'2023-09-11 07:34:31','2023-09-16 07:34:35',1),(27,'#10000027',3,'1','default','pending',3771.00,0.00,0.00,NULL,NULL,0.00,3771.00,1,NULL,1,NULL,'nildZuloos6jqhbprn9FITq3OaZbh',27,'2023-09-12 03:34:31','2023-09-16 07:34:32',3),(28,'#10000028',3,'1','default','completed',516.00,0.00,0.00,NULL,NULL,0.00,516.00,1,NULL,1,'2023-09-16 07:34:35','4TcOtAlMgbVmSnqHtBEFb9Q0sdbHz',28,'2023-09-13 19:34:32','2023-09-16 07:34:35',4),(29,'#10000029',3,NULL,'','completed',1794.00,0.00,0.00,NULL,NULL,0.00,1794.00,1,NULL,1,'2023-09-16 07:34:32','YnoX13aMt3T1veNA0wzhx9yhE2kN3',29,'2023-09-12 23:34:32','2023-09-16 07:34:32',2),(30,'#10000030',1,NULL,'','pending',2178.00,0.00,0.00,NULL,NULL,0.00,2178.00,1,NULL,1,NULL,'SwKa2zSfIyMOF3mG32kHdMFw6lixQ',30,'2023-09-15 13:34:32','2023-09-16 07:34:32',1),(31,'#10000031',1,NULL,'','completed',1150.00,0.00,0.00,NULL,NULL,0.00,1150.00,1,NULL,1,'2023-09-16 07:34:32','c50bzWNcENe29Hwa98vHm139xdq20',31,'2023-09-09 13:34:32','2023-09-16 07:34:32',2),(32,'#10000032',1,'1','default','pending',1166.00,0.00,0.00,NULL,NULL,0.00,1166.00,1,NULL,1,NULL,'KF7bMcmUTSwZ9xzfsEAf6d7RZxuTL',32,'2023-09-08 19:34:32','2023-09-16 07:34:32',4),(33,'#10000033',3,'1','default','completed',81.00,0.00,0.00,NULL,NULL,0.00,81.00,1,NULL,1,'2023-09-16 07:34:36','2oeMQbnbmvLRnwXoiuLOQA4E9PFhB',33,'2023-09-10 23:34:32','2023-09-16 07:34:36',4),(34,'#10000034',3,'1','default','completed',1791.00,0.00,0.00,NULL,NULL,0.00,1791.00,1,NULL,1,'2023-09-16 07:34:32','apxk9Yl8kbfcdhwBXfonI7g2pidY7',34,'2023-09-10 07:34:32','2023-09-16 07:34:32',6),(35,'#10000035',1,NULL,'','completed',515.00,0.00,0.00,NULL,NULL,0.00,515.00,1,NULL,1,'2023-09-16 07:34:32','HAZraQxFkFMaqWLgNtayETeuhrj3u',35,'2023-09-12 05:34:32','2023-09-16 07:34:32',3),(36,'#10000036',1,'1','default','pending',4237.00,0.00,0.00,NULL,NULL,0.00,4237.00,1,NULL,1,NULL,'5k61hXEWrAU7JZCaDgaDKW1yUczjj',36,'2023-09-12 05:34:32','2023-09-16 07:34:32',2),(37,'#10000037',3,NULL,'','completed',80.25,0.00,0.00,NULL,NULL,0.00,80.25,1,NULL,1,'2023-09-16 07:34:32','ubEmdULwnTFwsRq9RjOl5KL6kJ2VE',37,'2023-09-14 07:34:32','2023-09-16 07:34:32',5),(38,'#10000038',3,'1','default','completed',511.00,0.00,0.00,NULL,NULL,0.00,511.00,1,NULL,1,'2023-09-16 07:34:36','jmspIR20lNwNpi0uy0LMUC2EIUx3m',38,'2023-09-13 07:34:32','2023-09-16 07:34:36',1),(39,'#10000039',3,'1','default','completed',1948.00,0.00,0.00,NULL,NULL,0.00,1948.00,1,NULL,1,'2023-09-16 07:34:36','sqiyopVNnXBjGJRNjDURWk9kRT5i9',39,'2023-09-12 07:34:32','2023-09-16 07:34:36',4),(40,'#10000040',3,'1','default','completed',910.00,0.00,0.00,NULL,NULL,0.00,910.00,1,NULL,1,'2023-09-16 07:34:36','yXS4zTTpaSIgzINCx6z5TSDaJcftn',40,'2023-09-12 23:34:32','2023-09-16 07:34:36',4),(41,'#10000041',3,'1','default','completed',2120.00,0.00,0.00,NULL,NULL,0.00,2120.00,1,NULL,1,'2023-09-16 07:34:36','yFnewSI0JBltW65VybE0pCE1Cj3Wg',41,'2023-09-14 05:34:33','2023-09-16 07:34:36',6),(42,'#10000042',3,NULL,'','completed',1196.00,0.00,0.00,NULL,NULL,0.00,1196.00,1,NULL,1,'2023-09-16 07:34:33','G5cl9ii6DMKnrdGEwYTWhw1Nq6mhu',42,'2023-09-15 11:34:33','2023-09-16 07:34:33',2),(43,'#10000043',3,NULL,'','completed',80.25,0.00,0.00,NULL,NULL,0.00,80.25,1,NULL,1,'2023-09-16 07:34:33','efWMG3oMrXAGQFnuaVxqrFHm1WWOU',43,'2023-09-14 23:34:33','2023-09-16 07:34:33',5),(44,'#10000044',3,'1','default','pending',2949.00,0.00,0.00,NULL,NULL,0.00,2949.00,1,NULL,1,NULL,'ScKGIzl3rMl2OaojJVVBvt7DmAOHl',44,'2023-09-14 23:34:33','2023-09-16 07:34:33',2),(45,'#10000045',7,'1','default','completed',1487.00,0.00,0.00,NULL,NULL,0.00,1487.00,1,NULL,1,'2023-09-16 07:34:36','2wAE76wZ36XXE4LmhAWMdqk6YX65B',45,'2023-09-15 19:34:33','2023-09-16 07:34:36',4),(46,'#10000046',7,'1','default','completed',2514.00,0.00,0.00,NULL,NULL,0.00,2514.00,1,NULL,1,'2023-09-16 07:34:37','JvFsEsLGtAL1RkpWFwFiWEcuKLoUw',46,'2023-09-13 19:34:33','2023-09-16 07:34:37',3),(47,'#10000047',7,NULL,'','completed',767.00,0.00,0.00,NULL,NULL,0.00,767.00,1,NULL,1,'2023-09-16 07:34:33','ODNbQqEtRJcClXlFJIQg4EBvJzBHG',47,'2023-09-15 13:34:33','2023-09-16 07:34:33',6),(48,'#10000048',7,'1','default','pending',121.50,0.00,0.00,NULL,NULL,0.00,121.50,1,NULL,1,NULL,'XgccLIc9GT1dBTAKumKZ0oKZZuK6U',48,'2023-09-16 03:34:33','2023-09-16 07:34:33',4),(49,'#10000049',7,'1','default','pending',1080.00,0.00,0.00,NULL,NULL,0.00,1080.00,1,NULL,1,NULL,'CAjYIVncjL0TBIEu7Soq49IqsXR1l',49,'2023-09-15 23:34:33','2023-09-16 07:34:33',2),(50,'#10000050',7,'1','default','completed',1986.00,0.00,0.00,NULL,NULL,0.00,1986.00,1,NULL,1,'2023-09-16 07:34:37','bCkvLERUqNhs9orQoN8XGqCFiJTjn',50,'2023-09-15 11:34:33','2023-09-16 07:34:37',3),(51,'#10000051',1,'1','default','completed',60.00,0.00,0.00,NULL,NULL,0.00,60.00,1,NULL,1,'2023-09-16 07:34:37','4M4pZoPv6c8MY23QMQh52WrqLc32I',51,'2023-09-16 01:34:33','2023-09-16 07:34:37',1),(52,'#10000052',1,'1','default','pending',583.00,0.00,0.00,NULL,NULL,0.00,583.00,1,NULL,1,NULL,'U8K2dUOm1cIF2pvgn7DexqEgldtuy',52,'2023-09-16 01:34:34','2023-09-16 07:34:34',4),(53,'#10000053',1,'1','default','completed',1791.00,0.00,0.00,NULL,NULL,0.00,1791.00,1,NULL,1,'2023-09-16 07:34:34','tkP7JrdzCJZ78qRRPNCBbG3eSvodg',53,'2023-09-16 03:34:34','2023-09-16 07:34:34',6),(54,'#10000054',1,'1','default','pending',867.00,0.00,0.00,NULL,NULL,0.00,867.00,1,NULL,1,NULL,'QwKqnpZZBWLUHx0O33c2I2L1fGuko',54,'2023-09-15 11:34:34','2023-09-16 07:34:34',3);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2023-09-16 07:34:24','2023-09-16 07:34:24',0),(2,'Size','size','text',1,1,1,'published',1,'2023-09-16 07:34:24','2023-09-16 07:34:24',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2023-09-16 07:34:24','2023-09-16 07:34:24'),(2,1,'Blue','blue','#333333',NULL,0,2,'2023-09-16 07:34:24','2023-09-16 07:34:24'),(3,1,'Red','red','#DA323F',NULL,0,3,'2023-09-16 07:34:24','2023-09-16 07:34:24'),(4,1,'Black','back','#2F366C',NULL,0,4,'2023-09-16 07:34:24','2023-09-16 07:34:24'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2023-09-16 07:34:24','2023-09-16 07:34:24'),(6,2,'S','s',NULL,NULL,1,1,'2023-09-16 07:34:24','2023-09-16 07:34:24'),(7,2,'M','m',NULL,NULL,0,2,'2023-09-16 07:34:24','2023-09-16 07:34:24'),(8,2,'L','l',NULL,NULL,0,3,'2023-09-16 07:34:24','2023-09-16 07:34:24'),(9,2,'XL','xl',NULL,NULL,0,4,'2023-09-16 07:34:24','2023-09-16 07:34:24'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2023-09-16 07:34:24','2023-09-16 07:34:24');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(8,'Headphones',3,NULL,'published',4,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(9,'Videos games',3,NULL,'published',5,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(15,'Batteries',12,NULL,'published',2,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(20,'Laptop',18,NULL,'published',1,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(21,'Monitors',18,NULL,'published',2,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(23,'Networking',17,NULL,'published',1,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(27,'Accessories',23,NULL,'published',3,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19'),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2023-09-16 07:34:19','2023-09-16 07:34:19');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (2,22),(3,3),(3,20),(4,3),(4,21),(5,4),(5,10),(6,5),(6,18),(7,5),(7,12),(8,8),(8,11),(8,16),(9,11),(9,13),(9,18),(11,3),(11,5),(12,9),(12,16),(13,9),(13,12),(13,17),(13,19),(14,7),(14,14),(14,15),(15,4),(15,14),(15,19),(15,20),(16,8),(16,19),(16,20),(17,1),(17,19),(17,20),(17,21),(18,17),(18,18),(19,6),(19,12),(19,23),(20,1),(20,13),(20,17),(21,9),(22,1),(22,7),(22,13),(22,18),(22,21),(23,10),(23,15),(24,4),(25,6),(25,15),(26,2),(26,5),(26,14),(27,2),(27,14),(27,21),(28,6),(28,22),(29,2),(29,3),(30,4),(30,7),(30,9),(30,13),(31,16),(32,1),(32,10),(32,22),(33,8),(34,11),(34,22),(34,23),(35,8),(35,11),(35,16),(36,6),(36,7),(36,10),(36,15);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1),(1,2),(1,4),(1,9),(1,12),(1,15),(1,23),(2,3),(2,5),(2,8),(2,10),(2,11),(2,13),(2,14),(2,16),(2,17),(2,19),(3,6),(3,7),(3,18),(3,20),(3,21),(3,22);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2023-09-16 07:34:19','2023-09-16 07:34:19',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2023-09-16 07:34:19','2023-09-16 07:34:19',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2023-09-16 07:34:19','2023-09-16 07:34:19',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,3),(1,4),(1,6),(1,8),(1,15),(1,18),(2,15),(2,17),(2,18),(2,20),(3,1),(3,5),(3,6),(3,11),(3,13),(3,16),(3,19),(4,5),(4,9),(4,10),(4,12),(4,13),(4,15),(5,4),(5,12),(5,18),(5,19),(5,20),(6,1),(6,3),(6,5),(6,11),(6,13),(6,15),(6,20),(7,2),(7,14),(7,17),(7,18),(7,19),(8,1),(8,2),(8,3),(8,7),(8,12),(8,20),(9,2),(9,4),(9,5),(9,6),(9,8),(9,17),(10,7),(10,8),(10,9),(10,17),(10,19),(10,20),(11,7),(11,10),(11,12),(11,15),(11,18),(12,3),(12,4),(12,8),(12,9),(12,11),(12,13),(12,17),(13,1),(13,4),(13,7),(13,15),(13,16),(14,6),(14,10),(14,12),(14,13),(14,15),(14,18),(14,20),(15,3),(15,7),(15,8),(15,17),(15,18),(16,4),(16,5),(16,11),(16,13),(16,14),(16,15),(17,2),(17,4),(17,5),(17,10),(17,15),(17,16),(18,3),(18,6),(18,9),(18,12),(18,16),(18,17),(19,3),(19,7),(19,11),(19,13),(19,18),(19,20),(20,1),(20,2),(20,8),(20,9),(20,18),(21,4),(21,8),(21,10),(21,14),(21,15),(21,16),(21,18),(22,1),(22,2),(22,3),(22,7),(22,13),(22,17),(23,4),(23,5),(23,6),(23,7),(23,14),(23,18),(23,19);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,24,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(2,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(3,26,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(4,35,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(5,35,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(6,35,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(7,35,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(8,36,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(9,36,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(10,36,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(11,36,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(12,37,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(13,37,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(14,37,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(15,37,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:23\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-09-16 07:34:23','2023-09-16 07:34:23'),(16,46,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(17,46,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(18,46,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(19,47,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(20,47,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(21,47,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(22,56,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(23,56,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(24,57,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(25,57,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(26,65,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(27,65,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(28,65,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(29,65,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(30,66,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(31,66,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(32,66,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(33,66,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(34,67,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(35,67,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(36,67,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(37,67,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(38,68,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(39,68,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(40,68,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(41,68,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(42,69,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(43,69,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(44,69,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(45,69,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(46,75,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(47,75,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(48,75,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(49,76,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(50,76,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(51,76,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(52,77,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(53,77,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24'),(54,77,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-09-16 14:34:24\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-09-16 07:34:24','2023-09-16 07:34:24');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,18),(2,9),(2,12),(3,6),(3,15),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2023-09-16 07:34:19','2023-09-16 07:34:19'),(2,'New','#00c9a7','published','2023-09-16 07:34:19','2023-09-16 07:34:19'),(3,'Sale','#fe9931','published','2023-09-16 07:34:19','2023-09-16 07:34:19');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,5),(2,2),(2,3),(3,2),(3,3),(3,6),(4,2),(4,3),(4,6),(5,1),(5,4),(5,6),(6,3),(6,5),(7,2),(7,4),(7,5),(8,1),(8,3),(8,6),(9,3),(9,4),(9,6),(10,1),(10,2),(11,2),(11,4),(11,6),(12,2),(12,3),(13,3),(13,4),(13,5),(14,3),(14,6),(15,1),(15,3),(16,3),(16,5),(17,2),(17,3),(17,5),(18,2),(18,4),(18,6),(19,1),(19,3),(19,4),(20,2),(20,6),(21,2),(21,3),(21,4),(22,3),(22,6),(23,1),(23,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2023-09-16 07:34:26','2023-09-16 07:34:26'),(2,'Mobile',NULL,'published','2023-09-16 07:34:26','2023-09-16 07:34:26'),(3,'Iphone',NULL,'published','2023-09-16 07:34:26','2023-09-16 07:34:26'),(4,'Printer',NULL,'published','2023-09-16 07:34:26','2023-09-16 07:34:26'),(5,'Office',NULL,'published','2023-09-16 07:34:26','2023-09-16 07:34:26'),(6,'IT',NULL,'published','2023-09-16 07:34:26','2023-09-16 07:34:26');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(11,1,6),(25,1,13),(35,1,18),(41,1,21),(53,1,27),(59,1,30),(73,1,37),(89,1,45),(105,1,53),(113,1,57),(115,1,58),(19,2,10),(23,2,12),(29,2,15),(33,2,17),(51,2,26),(61,2,31),(81,2,41),(83,2,42),(93,2,47),(99,2,50),(101,2,51),(111,2,56),(3,3,2),(17,3,9),(31,3,16),(39,3,20),(45,3,23),(47,3,24),(57,3,29),(67,3,34),(75,3,38),(95,3,48),(117,3,59),(9,4,5),(13,4,7),(15,4,8),(37,4,19),(43,4,22),(49,4,25),(65,4,33),(69,4,35),(71,4,36),(87,4,44),(91,4,46),(109,4,55),(5,5,3),(7,5,4),(21,5,11),(27,5,14),(55,5,28),(63,5,32),(77,5,39),(79,5,40),(85,5,43),(97,5,49),(103,5,52),(107,5,54),(4,6,2),(14,6,7),(26,6,13),(46,6,23),(48,6,24),(50,6,25),(56,6,28),(72,6,36),(74,6,37),(82,6,41),(88,6,44),(96,6,48),(20,7,10),(32,7,16),(36,7,18),(38,7,19),(40,7,20),(44,7,22),(78,7,39),(110,7,55),(2,8,1),(8,8,4),(10,8,5),(18,8,9),(34,8,17),(42,8,21),(52,8,26),(62,8,31),(64,8,32),(86,8,43),(90,8,45),(92,8,46),(98,8,49),(104,8,52),(118,8,59),(6,9,3),(24,9,12),(28,9,14),(30,9,15),(60,9,30),(68,9,34),(80,9,40),(84,9,42),(106,9,53),(108,9,54),(114,9,57),(116,9,58),(12,10,6),(16,10,8),(22,10,11),(54,10,27),(58,10,29),(66,10,33),(70,10,35),(76,10,38),(94,10,47),(100,10,50),(102,10,51),(112,10,56);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,1,0),(4,27,2,1),(5,28,2,0),(6,29,2,0),(7,30,3,1),(8,31,3,0),(9,32,3,0),(10,33,4,1),(11,34,4,0),(12,35,5,1),(13,36,5,0),(14,37,5,0),(15,38,6,1),(16,39,6,0),(17,40,6,0),(18,41,6,0),(19,42,7,1),(20,43,7,0),(21,44,8,1),(22,45,8,0),(23,46,9,1),(24,47,9,0),(25,48,10,1),(26,49,10,0),(27,50,10,0),(28,51,11,1),(29,52,11,0),(30,53,11,0),(31,54,12,1),(32,55,12,0),(33,56,13,1),(34,57,13,0),(35,58,14,1),(36,59,14,0),(37,60,15,1),(38,61,15,0),(39,62,15,0),(40,63,15,0),(41,64,16,1),(42,65,17,1),(43,66,17,0),(44,67,17,0),(45,68,17,0),(46,69,17,0),(47,70,18,1),(48,71,18,0),(49,72,19,1),(50,73,19,0),(51,74,20,1),(52,75,21,1),(53,76,21,0),(54,77,21,0),(55,78,22,1),(56,79,22,0),(57,80,22,0),(58,81,23,1),(59,82,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2023-09-16',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-194-A0',0,15,0,1,1,5,0,0,80.25,NULL,NULL,NULL,17.00,12.00,12.00,587.00,NULL,123687,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,5,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-105-A0',0,20,0,1,1,1,0,0,40.5,NULL,NULL,NULL,11.00,15.00,14.00,603.00,NULL,67100,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-104-A0',0,14,0,1,1,2,0,0,20,NULL,NULL,NULL,10.00,11.00,15.00,900.00,NULL,45981,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(4,'Red &amp; Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-132-A0',0,18,0,1,1,5,0,0,511,398.58,NULL,NULL,12.00,19.00,20.00,622.00,NULL,76082,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(5,'Smart Watch External (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-104-A0',0,10,0,1,1,6,0,0,726,NULL,NULL,NULL,11.00,15.00,17.00,850.00,NULL,190330,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,1,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-148-A0',0,12,0,1,1,5,0,0,455,NULL,NULL,NULL,10.00,10.00,13.00,515.00,NULL,138712,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-138-A0',0,11,0,1,1,7,0,0,540,NULL,NULL,NULL,16.00,19.00,18.00,858.00,NULL,145573,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-170-A0',0,17,0,1,1,3,0,0,1250,900,NULL,NULL,12.00,18.00,13.00,859.00,NULL,94082,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(9,'Samsung Smart Phone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-110-A0',0,13,0,1,1,3,0,0,575,NULL,NULL,NULL,11.00,16.00,18.00,527.00,NULL,31013,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,2,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-112-A0',0,14,0,1,0,5,0,0,1257,NULL,NULL,NULL,12.00,11.00,19.00,776.00,NULL,47520,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-117-A0',0,18,0,1,0,5,0,0,1109,NULL,NULL,NULL,18.00,10.00,18.00,763.00,NULL,91698,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-130-A0',0,14,0,1,0,6,0,0,573,446.94,NULL,NULL,18.00,19.00,13.00,645.00,NULL,105379,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,5,0),(13,'Sound Intone I65 Earphone White Version (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-199-A0',0,20,0,1,0,1,0,0,515,NULL,NULL,NULL,15.00,19.00,14.00,565.00,NULL,162836,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,3,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-181-A0',0,18,0,1,0,2,0,0,583,NULL,NULL,NULL,16.00,18.00,12.00,623.00,NULL,62759,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-148-A0',0,12,0,1,0,4,0,0,530,NULL,NULL,NULL,17.00,19.00,10.00,665.00,NULL,1711,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,6,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-129-A0',0,17,0,1,0,7,0,0,516,387,NULL,NULL,19.00,16.00,16.00,843.00,NULL,88818,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(17,'Samsung Gear VR Virtual Reality Headset (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-133-A0',0,12,0,1,0,6,0,0,598,NULL,NULL,NULL,17.00,11.00,11.00,839.00,NULL,114734,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,2,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-155-A0',0,18,0,1,0,5,0,0,1213,NULL,NULL,NULL,13.00,10.00,14.00,741.00,NULL,188543,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-198-A0',0,17,0,1,0,7,0,0,993,NULL,NULL,NULL,16.00,19.00,20.00,862.00,NULL,4332,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-149-A0',0,18,0,1,0,7,0,0,983,874.87,NULL,NULL,17.00,18.00,13.00,884.00,NULL,178924,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(21,'MVMTH Classical Leather Watch In Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-197-A0',0,18,0,1,0,5,0,0,767,NULL,NULL,NULL,14.00,17.00,13.00,871.00,NULL,19546,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,6,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-115-A0',0,10,0,1,0,2,0,0,597,NULL,NULL,NULL,19.00,12.00,13.00,582.00,NULL,184146,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,6,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-137-A0',0,15,0,1,0,4,0,0,867,NULL,NULL,NULL,18.00,10.00,10.00,691.00,NULL,86941,'2023-09-16 07:34:23','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(24,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-194-A0',0,15,0,1,0,5,1,0,80.25,NULL,NULL,NULL,17.00,12.00,12.00,587.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(25,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-194-A0-A1',0,15,0,1,0,5,1,0,80.25,NULL,NULL,NULL,17.00,12.00,12.00,587.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(26,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-194-A0-A2',0,15,0,1,0,5,1,0,80.25,NULL,NULL,NULL,17.00,12.00,12.00,587.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-105-A0',0,20,0,1,0,1,1,0,40.5,NULL,NULL,NULL,11.00,15.00,14.00,603.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(28,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-105-A0-A1',0,20,0,1,0,1,1,0,40.5,NULL,NULL,NULL,11.00,15.00,14.00,603.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(29,'Smart Watches',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','SW-105-A0-A2',0,20,0,1,0,1,1,0,40.5,NULL,NULL,NULL,11.00,15.00,14.00,603.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(30,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-104-A0',0,14,0,1,0,2,1,0,20,NULL,NULL,NULL,10.00,11.00,15.00,900.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(31,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-104-A0-A1',0,14,0,1,0,2,1,0,20,NULL,NULL,NULL,10.00,11.00,15.00,900.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(32,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-104-A0-A2',0,14,0,1,0,2,1,0,20,NULL,NULL,NULL,10.00,11.00,15.00,900.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(33,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-132-A0',0,18,0,1,0,5,1,0,511,398.58,NULL,NULL,12.00,19.00,20.00,622.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(34,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-132-A0-A1',0,18,0,1,0,5,1,0,511,444.57,NULL,NULL,12.00,19.00,20.00,622.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(35,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-104-A0',0,10,0,1,0,6,1,0,726,NULL,NULL,NULL,11.00,15.00,17.00,850.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(36,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-104-A0-A1',0,10,0,1,0,6,1,0,726,NULL,NULL,NULL,11.00,15.00,17.00,850.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(37,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','SW-104-A0-A2',0,10,0,1,0,6,1,0,726,NULL,NULL,NULL,11.00,15.00,17.00,850.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(38,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-148-A0',0,12,0,1,0,5,1,0,455,NULL,NULL,NULL,10.00,10.00,13.00,515.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(39,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-148-A0-A1',0,12,0,1,0,5,1,0,455,NULL,NULL,NULL,10.00,10.00,13.00,515.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(40,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-148-A0-A2',0,12,0,1,0,5,1,0,455,NULL,NULL,NULL,10.00,10.00,13.00,515.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(41,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-148-A0-A3',0,12,0,1,0,5,1,0,455,NULL,NULL,NULL,10.00,10.00,13.00,515.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(42,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-138-A0',0,11,0,1,0,7,1,0,540,NULL,NULL,NULL,16.00,19.00,18.00,858.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(43,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-138-A0-A1',0,11,0,1,0,7,1,0,540,NULL,NULL,NULL,16.00,19.00,18.00,858.00,NULL,0,'2023-09-16 07:34:23','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(44,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-170-A0',0,17,0,1,0,3,1,0,1250,900,NULL,NULL,12.00,18.00,13.00,859.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(45,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-170-A0-A1',0,17,0,1,0,3,1,0,1250,1087.5,NULL,NULL,12.00,18.00,13.00,859.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(46,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-110-A0',0,13,0,1,0,3,1,0,575,NULL,NULL,NULL,11.00,16.00,18.00,527.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(47,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','SW-110-A0-A1',0,13,0,1,0,3,1,0,575,NULL,NULL,NULL,11.00,16.00,18.00,527.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(48,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-112-A0',0,14,0,1,0,5,1,0,1257,NULL,NULL,NULL,12.00,11.00,19.00,776.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(49,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-112-A0-A1',0,14,0,1,0,5,1,0,1257,NULL,NULL,NULL,12.00,11.00,19.00,776.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(50,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-2.jpg\"]','SW-112-A0-A2',0,14,0,1,0,5,1,0,1257,NULL,NULL,NULL,12.00,11.00,19.00,776.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(51,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-117-A0',0,18,0,1,0,5,1,0,1109,NULL,NULL,NULL,18.00,10.00,18.00,763.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(52,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-117-A0-A1',0,18,0,1,0,5,1,0,1109,NULL,NULL,NULL,18.00,10.00,18.00,763.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(53,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-2.jpg\"]','SW-117-A0-A2',0,18,0,1,0,5,1,0,1109,NULL,NULL,NULL,18.00,10.00,18.00,763.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(54,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-130-A0',0,14,0,1,0,6,1,0,573,446.94,NULL,NULL,18.00,19.00,13.00,645.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(55,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-130-A0-A1',0,14,0,1,0,6,1,0,573,487.05,NULL,NULL,18.00,19.00,13.00,645.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(56,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-199-A0',0,20,0,1,0,1,1,0,515,NULL,NULL,NULL,15.00,19.00,14.00,565.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(57,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-199-A0-A1',0,20,0,1,0,1,1,0,515,NULL,NULL,NULL,15.00,19.00,14.00,565.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(58,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-181-A0',0,18,0,1,0,2,1,0,583,NULL,NULL,NULL,16.00,18.00,12.00,623.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(59,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-181-A0-A1',0,18,0,1,0,2,1,0,583,NULL,NULL,NULL,16.00,18.00,12.00,623.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(60,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-148-A0',0,12,0,1,0,4,1,0,530,NULL,NULL,NULL,17.00,19.00,10.00,665.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(61,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','SW-148-A0-A1',0,12,0,1,0,4,1,0,530,NULL,NULL,NULL,17.00,19.00,10.00,665.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(62,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-148-A0-A2',0,12,0,1,0,4,1,0,530,NULL,NULL,NULL,17.00,19.00,10.00,665.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(63,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-148-A0-A3',0,12,0,1,0,4,1,0,530,NULL,NULL,NULL,17.00,19.00,10.00,665.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(64,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-129-A0',0,17,0,1,0,7,1,0,516,387,NULL,NULL,19.00,16.00,16.00,843.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(65,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-133-A0',0,12,0,1,0,6,1,0,598,NULL,NULL,NULL,17.00,11.00,11.00,839.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(66,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','SW-133-A0-A1',0,12,0,1,0,6,1,0,598,NULL,NULL,NULL,17.00,11.00,11.00,839.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(67,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-2.jpg\"]','SW-133-A0-A2',0,12,0,1,0,6,1,0,598,NULL,NULL,NULL,17.00,11.00,11.00,839.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(68,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-3.jpg\"]','SW-133-A0-A3',0,12,0,1,0,6,1,0,598,NULL,NULL,NULL,17.00,11.00,11.00,839.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(69,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-133-A0-A4',0,12,0,1,0,6,1,0,598,NULL,NULL,NULL,17.00,11.00,11.00,839.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(70,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-155-A0',0,18,0,1,0,5,1,0,1213,NULL,NULL,NULL,13.00,10.00,14.00,741.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(71,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-155-A0-A1',0,18,0,1,0,5,1,0,1213,NULL,NULL,NULL,13.00,10.00,14.00,741.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(72,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-198-A0',0,17,0,1,0,7,1,0,993,NULL,NULL,NULL,16.00,19.00,20.00,862.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(73,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-198-A0-A1',0,17,0,1,0,7,1,0,993,NULL,NULL,NULL,16.00,19.00,20.00,862.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(74,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-149-A0',0,18,0,1,0,7,1,0,983,874.87,NULL,NULL,17.00,18.00,13.00,884.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(75,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-197-A0',0,18,0,1,0,5,1,0,767,NULL,NULL,NULL,14.00,17.00,13.00,871.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(76,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','SW-197-A0-A1',0,18,0,1,0,5,1,0,767,NULL,NULL,NULL,14.00,17.00,13.00,871.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(77,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21-2.jpg\"]','SW-197-A0-A2',0,18,0,1,0,5,1,0,767,NULL,NULL,NULL,14.00,17.00,13.00,871.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(78,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-115-A0',0,10,0,1,0,2,1,0,597,NULL,NULL,NULL,19.00,12.00,13.00,582.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(79,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','SW-115-A0-A1',0,10,0,1,0,2,1,0,597,NULL,NULL,NULL,19.00,12.00,13.00,582.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(80,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-2.jpg\"]','SW-115-A0-A2',0,10,0,1,0,2,1,0,597,NULL,NULL,NULL,19.00,12.00,13.00,582.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(81,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-137-A0',0,15,0,1,0,4,1,0,867,NULL,NULL,NULL,18.00,10.00,10.00,691.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(82,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-137-A0-A1',0,15,0,1,0,4,1,0,867,NULL,NULL,NULL,18.00,10.00,10.00,691.00,NULL,0,'2023-09-16 07:34:24','2023-09-16 07:34:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,3,21,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(2,8,14,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(3,5,7,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(4,8,3,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/21.jpg\"}'),(5,9,14,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(6,7,1,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(8,9,21,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\"]'),(9,3,3,3.00,'Best ecommerce CMS online store!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(10,4,18,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(11,6,7,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(12,5,23,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\"]'),(13,9,13,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(14,1,3,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(15,1,11,5.00,'Best ecommerce CMS online store!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\"]'),(16,9,15,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/13.jpg\"]'),(17,5,22,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(18,8,18,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(19,10,9,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(21,3,14,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(22,4,16,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(23,7,3,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(24,9,17,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\"]'),(25,3,10,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(26,2,9,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\"]'),(27,1,16,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(28,10,20,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(29,10,3,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(30,4,9,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\"]'),(31,7,2,5.00,'Best ecommerce CMS online store!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(32,10,12,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(33,1,1,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(34,8,9,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(35,8,16,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(37,2,8,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/13.jpg\"]'),(38,1,12,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/18.jpg\"}'),(39,4,6,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(40,5,6,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\"]'),(41,4,17,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(42,10,6,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(43,2,1,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(44,10,10,2.00,'Clean & perfect source code','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),(45,1,7,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(46,8,19,1.00,'Clean & perfect source code','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(47,5,8,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(49,2,3,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/12.jpg\"]'),(50,7,16,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/19.jpg\"]'),(51,1,23,4.00,'Best ecommerce CMS online store!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/13.jpg\"]'),(52,7,23,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/23.jpg\"}'),(55,5,21,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(56,6,1,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-09-16 07:34:26','2023-09-16 07:34:26','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/22.jpg\"}'),(57,7,20,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(59,5,19,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(60,1,19,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(61,8,12,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(62,1,9,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(63,9,11,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(64,6,2,5.00,'Good app, good backup service and support. Good documentation.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(65,4,14,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(66,9,18,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/18.jpg\"]'),(67,2,18,5.00,'Best ecommerce CMS online store!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\"]'),(68,2,6,1.00,'Clean & perfect source code','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(70,10,22,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/23.jpg\"]'),(71,3,22,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\"]'),(72,4,12,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\"]'),(73,10,23,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(74,6,13,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(75,7,8,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\"]'),(76,8,23,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\"]'),(78,3,12,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(80,7,15,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(81,8,17,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\"]'),(82,8,22,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(83,3,4,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(84,10,18,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\"]'),(85,9,7,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/23.jpg\"]'),(86,7,10,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(87,4,11,2.00,'Best ecommerce CMS online store!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/4.jpg\"]'),(88,5,12,3.00,'Clean & perfect source code','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/2.jpg\"]'),(93,10,16,1.00,'Good app, good backup service and support. Good documentation.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(94,7,9,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-09-16 07:34:26','2023-09-16 07:34:26','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/15.jpg\"}'),(95,6,16,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/20.jpg\"]'),(98,6,3,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(99,5,11,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-09-16 07:34:26','2023-09-16 07:34:26','[\"products\\/1.jpg\",\"products\\/6.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2023-09-01 07:34:30','2023-09-01 07:34:30','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2023-09-14 15:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(3,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,1,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2023-09-04 15:34:30','2023-09-04 15:34:30','Botble\\ACL\\Models\\User'),(5,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2023-09-14 15:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,4,'2023-09-13 03:34:30','2023-09-13 03:34:30','Botble\\ACL\\Models\\User'),(7,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,4,'2023-09-14 17:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(8,'create_from_order','Shipping was created from order %order_id%',0,4,5,'2023-09-09 23:34:30','2023-09-09 23:34:30','Botble\\ACL\\Models\\User'),(9,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,5,'2023-09-14 17:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(10,'create_from_order','Shipping was created from order %order_id%',0,5,7,'2023-09-08 19:34:30','2023-09-08 19:34:30','Botble\\ACL\\Models\\User'),(11,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,7,'2023-09-14 19:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(12,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,7,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(13,'create_from_order','Shipping was created from order %order_id%',0,6,8,'2023-09-14 21:34:30','2023-09-14 21:34:30','Botble\\ACL\\Models\\User'),(14,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,8,'2023-09-14 21:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(15,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,8,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(16,'create_from_order','Shipping was created from order %order_id%',0,7,9,'2023-09-06 23:34:30','2023-09-06 23:34:30','Botble\\ACL\\Models\\User'),(17,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,9,'2023-09-14 23:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(18,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,9,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(19,'create_from_order','Shipping was created from order %order_id%',0,8,10,'2023-09-05 15:34:30','2023-09-05 15:34:30','Botble\\ACL\\Models\\User'),(20,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,10,'2023-09-14 23:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(21,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,10,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(22,'create_from_order','Shipping was created from order %order_id%',0,9,11,'2023-09-13 15:34:30','2023-09-13 15:34:30','Botble\\ACL\\Models\\User'),(23,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,11,'2023-09-14 23:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(24,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,11,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(25,'create_from_order','Shipping was created from order %order_id%',0,10,12,'2023-09-03 19:34:30','2023-09-03 19:34:30','Botble\\ACL\\Models\\User'),(26,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,12,'2023-09-15 01:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(27,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,12,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(28,'create_from_order','Shipping was created from order %order_id%',0,11,13,'2023-09-10 01:34:30','2023-09-10 01:34:30','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,13,'2023-09-15 01:34:30','2023-09-16 07:34:30','Botble\\ACL\\Models\\User'),(30,'create_from_order','Shipping was created from order %order_id%',0,12,14,'2023-09-10 11:34:30','2023-09-10 11:34:30','Botble\\ACL\\Models\\User'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,14,'2023-09-15 03:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(32,'create_from_order','Shipping was created from order %order_id%',0,13,15,'2023-09-05 19:34:31','2023-09-05 19:34:31','Botble\\ACL\\Models\\User'),(33,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,15,'2023-09-15 03:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(34,'create_from_order','Shipping was created from order %order_id%',0,14,16,'2023-09-07 15:34:31','2023-09-07 15:34:31','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,16,'2023-09-15 05:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(36,'create_from_order','Shipping was created from order %order_id%',0,15,17,'2023-09-11 23:34:31','2023-09-11 23:34:31','Botble\\ACL\\Models\\User'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,17,'2023-09-15 05:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(38,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,15,17,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(39,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,17,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(40,'create_from_order','Shipping was created from order %order_id%',0,16,18,'2023-09-13 01:34:31','2023-09-13 01:34:31','Botble\\ACL\\Models\\User'),(41,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,18,'2023-09-15 05:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(42,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,18,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(43,'create_from_order','Shipping was created from order %order_id%',0,17,20,'2023-09-15 07:34:31','2023-09-15 07:34:31','Botble\\ACL\\Models\\User'),(44,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,20,'2023-09-15 07:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(45,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,20,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(46,'create_from_order','Shipping was created from order %order_id%',0,18,21,'2023-09-14 07:34:31','2023-09-14 07:34:31','Botble\\ACL\\Models\\User'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,21,'2023-09-15 07:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(48,'create_from_order','Shipping was created from order %order_id%',0,19,22,'2023-09-08 07:34:31','2023-09-08 07:34:31','Botble\\ACL\\Models\\User'),(49,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,22,'2023-09-15 07:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(50,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,22,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(51,'create_from_order','Shipping was created from order %order_id%',0,20,23,'2023-09-15 09:34:31','2023-09-15 09:34:31','Botble\\ACL\\Models\\User'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,23,'2023-09-15 09:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(53,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,23,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(54,'create_from_order','Shipping was created from order %order_id%',0,21,24,'2023-09-07 03:34:31','2023-09-07 03:34:31','Botble\\ACL\\Models\\User'),(55,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,24,'2023-09-15 09:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(56,'create_from_order','Shipping was created from order %order_id%',0,22,26,'2023-09-11 07:34:31','2023-09-11 07:34:31','Botble\\ACL\\Models\\User'),(57,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,26,'2023-09-15 11:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(58,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,26,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\ACL\\Models\\User'),(59,'create_from_order','Shipping was created from order %order_id%',0,23,27,'2023-09-12 03:34:31','2023-09-12 03:34:31','Botble\\ACL\\Models\\User'),(60,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,27,'2023-09-15 11:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(61,'create_from_order','Shipping was created from order %order_id%',0,24,28,'2023-09-13 19:34:32','2023-09-13 19:34:32','Botble\\ACL\\Models\\User'),(62,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,28,'2023-09-15 11:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(63,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,28,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(64,'create_from_order','Shipping was created from order %order_id%',0,25,32,'2023-09-08 19:34:32','2023-09-08 19:34:32','Botble\\ACL\\Models\\User'),(65,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,32,'2023-09-15 13:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(66,'create_from_order','Shipping was created from order %order_id%',0,26,33,'2023-09-10 23:34:32','2023-09-10 23:34:32','Botble\\ACL\\Models\\User'),(67,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,33,'2023-09-15 15:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(68,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,33,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(69,'create_from_order','Shipping was created from order %order_id%',0,27,34,'2023-09-10 07:34:32','2023-09-10 07:34:32','Botble\\ACL\\Models\\User'),(70,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,34,'2023-09-15 15:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(71,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,27,34,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(72,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,34,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(73,'create_from_order','Shipping was created from order %order_id%',0,28,36,'2023-09-12 05:34:32','2023-09-12 05:34:32','Botble\\ACL\\Models\\User'),(74,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,36,'2023-09-15 17:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(75,'create_from_order','Shipping was created from order %order_id%',0,29,38,'2023-09-13 07:34:32','2023-09-13 07:34:32','Botble\\ACL\\Models\\User'),(76,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,38,'2023-09-15 19:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(77,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,38,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(78,'create_from_order','Shipping was created from order %order_id%',0,30,39,'2023-09-12 07:34:32','2023-09-12 07:34:32','Botble\\ACL\\Models\\User'),(79,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,39,'2023-09-15 19:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(80,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,39,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\ACL\\Models\\User'),(81,'create_from_order','Shipping was created from order %order_id%',0,31,40,'2023-09-12 23:34:32','2023-09-12 23:34:32','Botble\\ACL\\Models\\User'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,40,'2023-09-15 21:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(83,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,40,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(84,'create_from_order','Shipping was created from order %order_id%',0,32,41,'2023-09-14 05:34:33','2023-09-14 05:34:33','Botble\\ACL\\Models\\User'),(85,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,41,'2023-09-15 21:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(86,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,41,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(87,'create_from_order','Shipping was created from order %order_id%',0,33,44,'2023-09-14 23:34:33','2023-09-14 23:34:33','Botble\\ACL\\Models\\User'),(88,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,44,'2023-09-15 23:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(89,'create_from_order','Shipping was created from order %order_id%',0,34,45,'2023-09-15 19:34:33','2023-09-15 19:34:33','Botble\\ACL\\Models\\User'),(90,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,45,'2023-09-16 01:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(91,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,45,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(92,'create_from_order','Shipping was created from order %order_id%',0,35,46,'2023-09-13 19:34:33','2023-09-13 19:34:33','Botble\\ACL\\Models\\User'),(93,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,46,'2023-09-16 01:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(94,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,46,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(95,'create_from_order','Shipping was created from order %order_id%',0,36,48,'2023-09-16 03:34:33','2023-09-16 03:34:33','Botble\\ACL\\Models\\User'),(96,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,48,'2023-09-16 03:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(97,'create_from_order','Shipping was created from order %order_id%',0,37,49,'2023-09-15 23:34:33','2023-09-15 23:34:33','Botble\\ACL\\Models\\User'),(98,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,49,'2023-09-16 03:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(99,'create_from_order','Shipping was created from order %order_id%',0,38,50,'2023-09-15 11:34:33','2023-09-15 11:34:33','Botble\\ACL\\Models\\User'),(100,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,50,'2023-09-16 03:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(101,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,50,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(102,'create_from_order','Shipping was created from order %order_id%',0,39,51,'2023-09-16 01:34:33','2023-09-16 01:34:33','Botble\\ACL\\Models\\User'),(103,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,51,'2023-09-16 05:34:33','2023-09-16 07:34:33','Botble\\ACL\\Models\\User'),(104,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,51,'2023-09-16 07:34:34','2023-09-16 07:34:34','Botble\\ACL\\Models\\User'),(105,'create_from_order','Shipping was created from order %order_id%',0,40,52,'2023-09-16 01:34:34','2023-09-16 01:34:34','Botble\\ACL\\Models\\User'),(106,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,52,'2023-09-16 05:34:34','2023-09-16 07:34:34','Botble\\ACL\\Models\\User'),(107,'create_from_order','Shipping was created from order %order_id%',0,41,53,'2023-09-16 03:34:34','2023-09-16 03:34:34','Botble\\ACL\\Models\\User'),(108,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,53,'2023-09-16 05:34:34','2023-09-16 07:34:34','Botble\\ACL\\Models\\User'),(109,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,41,53,'2023-09-16 07:34:34','2023-09-16 07:34:34','Botble\\ACL\\Models\\User'),(110,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,53,'2023-09-16 07:34:34','2023-09-16 07:34:34','Botble\\ACL\\Models\\User'),(111,'create_from_order','Shipping was created from order %order_id%',0,42,54,'2023-09-15 11:34:34','2023-09-15 11:34:34','Botble\\ACL\\Models\\User'),(112,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,54,'2023-09-16 05:34:34','2023-09-16 07:34:34','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,623.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','JJD0045501584','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-23 14:34:30','2023-09-16 14:34:30',NULL,NULL),(2,2,NULL,1482.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','JJD0011284952','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-24 14:34:30',NULL,NULL,NULL),(3,4,NULL,665.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','JJD0056401974','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-23 14:34:30',NULL,NULL,NULL),(4,5,NULL,1686.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','JJD0082747753','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-25 14:34:30',NULL,NULL,NULL),(5,7,NULL,623.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','JJD0045551235','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-23 14:34:30','2023-09-16 14:34:30',NULL,NULL),(6,8,NULL,3134.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','JJD0022415956','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-19 14:34:30','2023-09-16 14:34:30',NULL,NULL),(7,9,NULL,1206.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','JJD0072826730','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-20 14:34:30','2023-09-16 14:34:30',NULL,NULL),(8,10,NULL,2289.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','JJD0099449914','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-21 14:34:30','2023-09-16 14:34:30',NULL,NULL),(9,11,NULL,3777.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','JJD0075603665','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-24 14:34:30','2023-09-16 14:34:30',NULL,NULL),(10,12,NULL,603.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','JJD0058971298','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-22 14:34:30','2023-09-16 14:34:30',NULL,NULL),(11,13,NULL,1552.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:30','2023-09-16 07:34:30','JJD0094552708','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-17 14:34:30',NULL,NULL,NULL),(12,14,NULL,2964.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','JJD0078689941','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-23 14:34:31',NULL,NULL,NULL),(13,15,NULL,1164.00,NULL,NULL,'','approved',1194.00,'pending','pending',0.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','JJD0026897350','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-22 14:34:31',NULL,NULL,NULL),(14,16,NULL,1545.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','JJD0046938198','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-17 14:34:31',NULL,NULL,NULL),(15,17,NULL,1552.00,NULL,NULL,'','delivered',2514.00,'completed','pending',0.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','JJD0068875807','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-19 14:34:31','2023-09-16 14:34:31',NULL,NULL),(16,18,NULL,1164.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','JJD0027926047','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-20 14:34:31','2023-09-16 14:34:31',NULL,NULL),(17,20,NULL,1866.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','JJD0045278197','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-17 14:34:31','2023-09-16 14:34:31',NULL,NULL),(18,21,NULL,858.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','JJD0042937865','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-18 14:34:31',NULL,NULL,NULL),(19,22,NULL,776.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','JJD0022976449','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-26 14:34:31','2023-09-16 14:34:31',NULL,NULL),(20,23,NULL,1030.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','JJD0030826765','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-24 14:34:31','2023-09-16 14:34:31',NULL,NULL),(21,24,NULL,1526.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','JJD0041396041','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-26 14:34:31',NULL,NULL,NULL),(22,26,NULL,1866.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:31','2023-09-16 07:34:31','JJD0060879676','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-20 14:34:31','2023-09-16 14:34:31',NULL,NULL),(23,27,NULL,2328.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','JJD0080356601','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-23 14:34:32',NULL,NULL,NULL),(24,28,NULL,843.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','JJD0083482441','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-24 14:34:32','2023-09-16 14:34:32',NULL,NULL),(25,32,NULL,1246.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','JJD0033157739','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-24 14:34:32',NULL,NULL,NULL),(26,33,NULL,1206.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','JJD0077563675','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-19 14:34:32','2023-09-16 14:34:32',NULL,NULL),(27,34,NULL,1746.00,NULL,NULL,'','delivered',1791.00,'completed','pending',0.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','JJD0031007502','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-21 14:34:32','2023-09-16 14:34:32',NULL,NULL),(28,36,NULL,3062.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','JJD0088698740','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-25 14:34:32',NULL,NULL,NULL),(29,38,NULL,622.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','JJD0014234120','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-24 14:34:32','2023-09-16 14:34:32',NULL,NULL),(30,39,NULL,2168.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:32','2023-09-16 07:34:32','JJD004967425','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-19 14:34:32','2023-09-16 14:34:32',NULL,NULL),(31,40,NULL,1030.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','JJD0037441499','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-22 14:34:33','2023-09-16 14:34:33',NULL,NULL),(32,41,NULL,2660.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','JJD0083791205','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-20 14:34:33','2023-09-16 14:34:33',NULL,NULL),(33,44,NULL,2652.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','JJD0023771103','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-22 14:34:33',NULL,NULL,NULL),(34,45,NULL,2201.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','JJD0027930952','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-17 14:34:33','2023-09-16 14:34:33',NULL,NULL),(35,46,NULL,1552.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','JJD0061075995','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-19 14:34:33','2023-09-16 14:34:33',NULL,NULL),(36,48,NULL,1809.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','JJD004909112','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-23 14:34:33',NULL,NULL,NULL),(37,49,NULL,1716.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','JJD0050607639','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-17 14:34:33',NULL,NULL,NULL),(38,50,NULL,1724.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','JJD0064427445','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-24 14:34:33','2023-09-16 14:34:33',NULL,NULL),(39,51,NULL,2700.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:33','2023-09-16 07:34:33','JJD001743083','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-18 14:34:33','2023-09-16 14:34:33',NULL,NULL),(40,52,NULL,623.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:34','2023-09-16 07:34:34','JJD0031326292','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-20 14:34:34',NULL,NULL,NULL),(41,53,NULL,1746.00,NULL,NULL,'','delivered',1791.00,'completed','pending',0.00,0,'2023-09-16 07:34:34','2023-09-16 07:34:34','JJD0059284655','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-24 14:34:34','2023-09-16 14:34:34',NULL,NULL),(42,54,NULL,691.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-09-16 07:34:34','2023-09-16 07:34:34','JJD0077184566','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-09-18 14:34:34',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2023-09-16 07:34:26','2023-09-16 07:34:26');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2023-09-16 07:34:26','2023-09-16 07:34:26');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2023-09-16 07:34:28','2023-09-16 07:34:28');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2023-09-16 07:34:26','2023-09-16 07:34:26'),(2,'None',0.000000,2,'published','2023-09-16 07:34:26','2023-09-16 07:34:26'),(3,'Import Tax',15.000000,3,'published','2023-09-16 07:34:26','2023-09-16 07:34:26');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(2,'PAYMENT',1,'published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(3,'ORDER &amp; RETURNS',2,'published','2023-09-16 07:34:28','2023-09-16 07:34:28');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2023-09-16 07:34:28','2023-09-16 07:34:28');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','b77fd40f4edb4b02ac5616727b77db48',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','cfc31f0c87c70cffcd5baf4917147b63',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','c551928473a6d4b3cdc19f6ef2e4577a',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','75bc335fba154d0216a0cee343d3bc8c',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','a1771a9c9eac9b58c4116b5886e409fb',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','69fabaa525b673fde054517ba4460670',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',916,'brands/1.jpg','[]','2023-09-16 07:34:18','2023-09-16 07:34:18',NULL),(2,0,'2','2',1,'image/jpeg',916,'brands/2.jpg','[]','2023-09-16 07:34:18','2023-09-16 07:34:18',NULL),(3,0,'3','3',1,'image/jpeg',916,'brands/3.jpg','[]','2023-09-16 07:34:18','2023-09-16 07:34:18',NULL),(4,0,'4','4',1,'image/jpeg',916,'brands/4.jpg','[]','2023-09-16 07:34:18','2023-09-16 07:34:18',NULL),(5,0,'5','5',1,'image/jpeg',916,'brands/5.jpg','[]','2023-09-16 07:34:18','2023-09-16 07:34:18',NULL),(6,0,'6','6',1,'image/jpeg',916,'brands/6.jpg','[]','2023-09-16 07:34:18','2023-09-16 07:34:18',NULL),(7,0,'7','7',1,'image/jpeg',916,'brands/7.jpg','[]','2023-09-16 07:34:18','2023-09-16 07:34:18',NULL),(8,0,'1','1',2,'image/jpeg',2165,'product-categories/1.jpg','[]','2023-09-16 07:34:18','2023-09-16 07:34:18',NULL),(9,0,'2','2',2,'image/jpeg',2165,'product-categories/2.jpg','[]','2023-09-16 07:34:18','2023-09-16 07:34:18',NULL),(10,0,'3','3',2,'image/jpeg',2165,'product-categories/3.jpg','[]','2023-09-16 07:34:18','2023-09-16 07:34:18',NULL),(11,0,'4','4',2,'image/jpeg',2165,'product-categories/4.jpg','[]','2023-09-16 07:34:18','2023-09-16 07:34:18',NULL),(12,0,'5','5',2,'image/jpeg',2165,'product-categories/5.jpg','[]','2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(13,0,'6','6',2,'image/jpeg',2165,'product-categories/6.jpg','[]','2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(14,0,'7','7',2,'image/jpeg',2165,'product-categories/7.jpg','[]','2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(15,0,'8','8',2,'image/jpeg',2165,'product-categories/8.jpg','[]','2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(16,0,'1','1',3,'image/jpeg',2165,'products/1.jpg','[]','2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(17,0,'10-1','10-1',3,'image/jpeg',2165,'products/10-1.jpg','[]','2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(18,0,'10-2','10-2',3,'image/jpeg',2165,'products/10-2.jpg','[]','2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(19,0,'10','10',3,'image/jpeg',2165,'products/10.jpg','[]','2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(20,0,'11-1','11-1',3,'image/jpeg',2165,'products/11-1.jpg','[]','2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(21,0,'11-2','11-2',3,'image/jpeg',2165,'products/11-2.jpg','[]','2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(22,0,'11-3','11-3',3,'image/jpeg',2165,'products/11-3.jpg','[]','2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(23,0,'11','11',3,'image/jpeg',2165,'products/11.jpg','[]','2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(24,0,'12-1','12-1',3,'image/jpeg',2165,'products/12-1.jpg','[]','2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(25,0,'12-2','12-2',3,'image/jpeg',2165,'products/12-2.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(26,0,'12-3','12-3',3,'image/jpeg',2165,'products/12-3.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(27,0,'12','12',3,'image/jpeg',2165,'products/12.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(28,0,'13-1','13-1',3,'image/jpeg',2165,'products/13-1.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(29,0,'13','13',3,'image/jpeg',2165,'products/13.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(30,0,'14','14',3,'image/jpeg',2165,'products/14.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(31,0,'15-1','15-1',3,'image/jpeg',2165,'products/15-1.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(32,0,'15','15',3,'image/jpeg',2165,'products/15.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(33,0,'16','16',3,'image/jpeg',2165,'products/16.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(34,0,'17-1','17-1',3,'image/jpeg',2165,'products/17-1.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(35,0,'17-2','17-2',3,'image/jpeg',2165,'products/17-2.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(36,0,'17-3','17-3',3,'image/jpeg',2165,'products/17-3.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(37,0,'17','17',3,'image/jpeg',2165,'products/17.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(38,0,'18-1','18-1',3,'image/jpeg',2165,'products/18-1.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(39,0,'18-2','18-2',3,'image/jpeg',2165,'products/18-2.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(40,0,'18-3','18-3',3,'image/jpeg',2165,'products/18-3.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(41,0,'18','18',3,'image/jpeg',2165,'products/18.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(42,0,'19-1','19-1',3,'image/jpeg',2165,'products/19-1.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(43,0,'19-2','19-2',3,'image/jpeg',2165,'products/19-2.jpg','[]','2023-09-16 07:34:20','2023-09-16 07:34:20',NULL),(44,0,'19-3','19-3',3,'image/jpeg',2165,'products/19-3.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(45,0,'19','19',3,'image/jpeg',2165,'products/19.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(46,0,'2-1','2-1',3,'image/jpeg',2165,'products/2-1.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(47,0,'2-2','2-2',3,'image/jpeg',2165,'products/2-2.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(48,0,'2-3','2-3',3,'image/jpeg',2165,'products/2-3.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(49,0,'2','2',3,'image/jpeg',2165,'products/2.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(50,0,'20-1','20-1',3,'image/jpeg',2165,'products/20-1.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(51,0,'20-2','20-2',3,'image/jpeg',2165,'products/20-2.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(52,0,'20-3','20-3',3,'image/jpeg',2165,'products/20-3.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(53,0,'20','20',3,'image/jpeg',2165,'products/20.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(54,0,'21-1','21-1',3,'image/jpeg',2165,'products/21-1.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(55,0,'21-2','21-2',3,'image/jpeg',2165,'products/21-2.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(56,0,'21','21',3,'image/jpeg',2165,'products/21.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(57,0,'22-1','22-1',3,'image/jpeg',2165,'products/22-1.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(58,0,'22-2','22-2',3,'image/jpeg',2165,'products/22-2.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(59,0,'22-3','22-3',3,'image/jpeg',2165,'products/22-3.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(60,0,'22','22',3,'image/jpeg',2165,'products/22.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(61,0,'23-1','23-1',3,'image/jpeg',2165,'products/23-1.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(62,0,'23-2','23-2',3,'image/jpeg',2165,'products/23-2.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(63,0,'23-3','23-3',3,'image/jpeg',2165,'products/23-3.jpg','[]','2023-09-16 07:34:21','2023-09-16 07:34:21',NULL),(64,0,'23','23',3,'image/jpeg',2165,'products/23.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(65,0,'3','3',3,'image/jpeg',2165,'products/3.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(66,0,'4-1','4-1',3,'image/jpeg',2165,'products/4-1.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(67,0,'4-2','4-2',3,'image/jpeg',2165,'products/4-2.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(68,0,'4-3','4-3',3,'image/jpeg',2165,'products/4-3.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(69,0,'4','4',3,'image/jpeg',2165,'products/4.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(70,0,'5-1','5-1',3,'image/jpeg',2165,'products/5-1.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(71,0,'5-2','5-2',3,'image/jpeg',2165,'products/5-2.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(72,0,'5-3','5-3',3,'image/jpeg',2165,'products/5-3.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(73,0,'5','5',3,'image/jpeg',2165,'products/5.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(74,0,'6','6',3,'image/jpeg',2165,'products/6.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(75,0,'7','7',3,'image/jpeg',2165,'products/7.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(76,0,'8-1','8-1',3,'image/jpeg',2165,'products/8-1.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(77,0,'8-2','8-2',3,'image/jpeg',2165,'products/8-2.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(78,0,'8-3','8-3',3,'image/jpeg',2165,'products/8-3.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(79,0,'8','8',3,'image/jpeg',2165,'products/8.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(80,0,'9-1','9-1',3,'image/jpeg',2165,'products/9-1.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(81,0,'9-2','9-2',3,'image/jpeg',2165,'products/9-2.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(82,0,'9','9',3,'image/jpeg',2165,'products/9.jpg','[]','2023-09-16 07:34:22','2023-09-16 07:34:22',NULL),(83,0,'1','1',4,'image/jpeg',2165,'customers/1.jpg','[]','2023-09-16 07:34:24','2023-09-16 07:34:24',NULL),(84,0,'10','10',4,'image/jpeg',2165,'customers/10.jpg','[]','2023-09-16 07:34:24','2023-09-16 07:34:24',NULL),(85,0,'2','2',4,'image/jpeg',2165,'customers/2.jpg','[]','2023-09-16 07:34:24','2023-09-16 07:34:24',NULL),(86,0,'3','3',4,'image/jpeg',2165,'customers/3.jpg','[]','2023-09-16 07:34:25','2023-09-16 07:34:25',NULL),(87,0,'4','4',4,'image/jpeg',2165,'customers/4.jpg','[]','2023-09-16 07:34:25','2023-09-16 07:34:25',NULL),(88,0,'5','5',4,'image/jpeg',2165,'customers/5.jpg','[]','2023-09-16 07:34:25','2023-09-16 07:34:25',NULL),(89,0,'6','6',4,'image/jpeg',2165,'customers/6.jpg','[]','2023-09-16 07:34:25','2023-09-16 07:34:25',NULL),(90,0,'7','7',4,'image/jpeg',2165,'customers/7.jpg','[]','2023-09-16 07:34:25','2023-09-16 07:34:25',NULL),(91,0,'8','8',4,'image/jpeg',2165,'customers/8.jpg','[]','2023-09-16 07:34:25','2023-09-16 07:34:25',NULL),(92,0,'9','9',4,'image/jpeg',2165,'customers/9.jpg','[]','2023-09-16 07:34:25','2023-09-16 07:34:25',NULL),(93,0,'1','1',5,'image/jpeg',2165,'news/1.jpg','[]','2023-09-16 07:34:26','2023-09-16 07:34:26',NULL),(94,0,'10','10',5,'image/jpeg',2165,'news/10.jpg','[]','2023-09-16 07:34:26','2023-09-16 07:34:26',NULL),(95,0,'11','11',5,'image/jpeg',2165,'news/11.jpg','[]','2023-09-16 07:34:26','2023-09-16 07:34:26',NULL),(96,0,'2','2',5,'image/jpeg',2165,'news/2.jpg','[]','2023-09-16 07:34:26','2023-09-16 07:34:26',NULL),(97,0,'3','3',5,'image/jpeg',2165,'news/3.jpg','[]','2023-09-16 07:34:26','2023-09-16 07:34:26',NULL),(98,0,'4','4',5,'image/jpeg',2165,'news/4.jpg','[]','2023-09-16 07:34:26','2023-09-16 07:34:26',NULL),(99,0,'5','5',5,'image/jpeg',2165,'news/5.jpg','[]','2023-09-16 07:34:26','2023-09-16 07:34:26',NULL),(100,0,'6','6',5,'image/jpeg',2165,'news/6.jpg','[]','2023-09-16 07:34:26','2023-09-16 07:34:26',NULL),(101,0,'7','7',5,'image/jpeg',2165,'news/7.jpg','[]','2023-09-16 07:34:26','2023-09-16 07:34:26',NULL),(102,0,'8','8',5,'image/jpeg',2165,'news/8.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(103,0,'9','9',5,'image/jpeg',2165,'news/9.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(104,0,'1-lg','1-lg',6,'image/jpeg',3852,'sliders/1-lg.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(105,0,'1-md','1-md',6,'image/jpeg',3852,'sliders/1-md.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(106,0,'1-sm','1-sm',6,'image/jpeg',3852,'sliders/1-sm.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(107,0,'2-lg','2-lg',6,'image/jpeg',3852,'sliders/2-lg.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(108,0,'2-md','2-md',6,'image/jpeg',3852,'sliders/2-md.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(109,0,'2-sm','2-sm',6,'image/jpeg',3852,'sliders/2-sm.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(110,0,'3-lg','3-lg',6,'image/jpeg',3852,'sliders/3-lg.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(111,0,'3-md','3-md',6,'image/jpeg',3852,'sliders/3-md.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(112,0,'3-sm','3-sm',6,'image/jpeg',3852,'sliders/3-sm.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(113,0,'1','1',7,'image/jpeg',1463,'promotion/1.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(114,0,'2','2',7,'image/jpeg',1463,'promotion/2.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(115,0,'3','3',7,'image/jpeg',2049,'promotion/3.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(116,0,'4','4',7,'image/jpeg',2049,'promotion/4.jpg','[]','2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(117,0,'5','5',7,'image/jpeg',2049,'promotion/5.jpg','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(118,0,'6','6',7,'image/jpeg',2049,'promotion/6.jpg','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(119,0,'7','7',7,'image/jpeg',2049,'promotion/7.jpg','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(120,0,'8','8',7,'image/jpeg',2049,'promotion/8.jpg','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(121,0,'9','9',7,'image/jpeg',2049,'promotion/9.jpg','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(122,0,'app','app',8,'image/png',1849,'general/app.png','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(123,0,'coming-soon','coming-soon',8,'image/jpeg',19900,'general/coming-soon.jpg','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(124,0,'favicon','favicon',8,'image/png',1925,'general/favicon.png','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(125,0,'logo-dark','logo-dark',8,'image/png',784,'general/logo-dark.png','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(126,0,'logo-light','logo-light',8,'image/png',783,'general/logo-light.png','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(127,0,'logo','logo',8,'image/png',793,'general/logo.png','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(128,0,'newsletter','newsletter',8,'image/jpeg',3316,'general/newsletter.jpg','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(129,0,'payment-method-1','payment-method-1',8,'image/jpeg',813,'general/payment-method-1.jpg','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(130,0,'payment-method-2','payment-method-2',8,'image/jpeg',878,'general/payment-method-2.jpg','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(131,0,'payment-method-3','payment-method-3',8,'image/jpeg',816,'general/payment-method-3.jpg','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(132,0,'payment-method-4','payment-method-4',8,'image/jpeg',638,'general/payment-method-4.jpg','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(133,0,'payment-method-5','payment-method-5',8,'image/jpeg',659,'general/payment-method-5.jpg','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(134,0,'1','1',9,'image/png',3482,'stores/1.png','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(135,0,'10','10',9,'image/png',1675,'stores/10.png','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(136,0,'11','11',9,'image/png',1857,'stores/11.png','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(137,0,'12','12',9,'image/png',2046,'stores/12.png','[]','2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(138,0,'13','13',9,'image/png',1597,'stores/13.png','[]','2023-09-16 07:34:29','2023-09-16 07:34:29',NULL),(139,0,'14','14',9,'image/png',1649,'stores/14.png','[]','2023-09-16 07:34:29','2023-09-16 07:34:29',NULL),(140,0,'15','15',9,'image/png',2120,'stores/15.png','[]','2023-09-16 07:34:29','2023-09-16 07:34:29',NULL),(141,0,'16','16',9,'image/png',2556,'stores/16.png','[]','2023-09-16 07:34:29','2023-09-16 07:34:29',NULL),(142,0,'17','17',9,'image/png',2631,'stores/17.png','[]','2023-09-16 07:34:29','2023-09-16 07:34:29',NULL),(143,0,'2','2',9,'image/png',3369,'stores/2.png','[]','2023-09-16 07:34:29','2023-09-16 07:34:29',NULL),(144,0,'3','3',9,'image/png',3044,'stores/3.png','[]','2023-09-16 07:34:29','2023-09-16 07:34:29',NULL),(145,0,'4','4',9,'image/png',3096,'stores/4.png','[]','2023-09-16 07:34:29','2023-09-16 07:34:29',NULL),(146,0,'5','5',9,'image/png',3607,'stores/5.png','[]','2023-09-16 07:34:29','2023-09-16 07:34:29',NULL),(147,0,'6','6',9,'image/png',3778,'stores/6.png','[]','2023-09-16 07:34:29','2023-09-16 07:34:29',NULL),(148,0,'7','7',9,'image/png',1566,'stores/7.png','[]','2023-09-16 07:34:29','2023-09-16 07:34:29',NULL),(149,0,'8','8',9,'image/png',1773,'stores/8.png','[]','2023-09-16 07:34:29','2023-09-16 07:34:29',NULL),(150,0,'9','9',9,'image/png',1671,'stores/9.png','[]','2023-09-16 07:34:29','2023-09-16 07:34:29',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2023-09-16 07:34:18','2023-09-16 07:34:18',NULL),(2,0,'product-categories','product-categories',0,'2023-09-16 07:34:18','2023-09-16 07:34:18',NULL),(3,0,'products','products',0,'2023-09-16 07:34:19','2023-09-16 07:34:19',NULL),(4,0,'customers','customers',0,'2023-09-16 07:34:24','2023-09-16 07:34:24',NULL),(5,0,'news','news',0,'2023-09-16 07:34:26','2023-09-16 07:34:26',NULL),(6,0,'sliders','sliders',0,'2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(7,0,'promotion','promotion',0,'2023-09-16 07:34:27','2023-09-16 07:34:27',NULL),(8,0,'general','general',0,'2023-09-16 07:34:28','2023-09-16 07:34:28',NULL),(9,0,'stores','stores',0,'2023-09-16 07:34:28','2023-09-16 07:34:28',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-09-16 07:34:28','2023-09-16 07:34:28');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2023-09-16 07:34:28','2023-09-16 07:34:28');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(2,'Quick links','quick-links','published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(3,'Company','company','published','2023-09-16 07:34:28','2023-09-16 07:34:28'),(4,'Business','business','published','2023-09-16 07:34:28','2023-09-16 07:34:28');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2023-09-16 07:34:19','2023-09-16 07:34:19'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2023-09-16 07:34:23','2023-09-16 07:34:23'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-09-16 07:34:27','2023-09-16 07:34:27'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-09-16 07:34:27','2023-09-16 07:34:27'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-09-16 07:34:27','2023-09-16 07:34:27'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-09-16 07:34:27','2023-09-16 07:34:27'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-09-16 07:34:27','2023-09-16 07:34:27'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-09-16 07:34:27','2023-09-16 07:34:27');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2020_11_18_150916_ads_create_ads_table',2),(32,'2021_12_02_035301_add_ads_translations_table',2),(33,'2023_04_17_062645_add_open_in_new_tab',2),(34,'2015_06_29_025744_create_audit_history',3),(35,'2015_06_18_033822_create_blog_table',4),(36,'2021_02_16_092633_remove_default_value_for_author_type',4),(37,'2021_12_03_030600_create_blog_translations',4),(38,'2022_04_19_113923_add_index_to_table_posts',4),(39,'2023_08_29_074620_make_column_author_id_nullable',4),(40,'2016_06_17_091537_create_contacts_table',5),(41,'2020_03_05_041139_create_ecommerce_tables',6),(42,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(43,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(44,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(45,'2021_02_18_073505_update_table_ec_reviews',6),(46,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(47,'2021_03_10_025153_change_column_tax_amount',6),(48,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(49,'2021_04_28_074008_ecommerce_create_product_label_table',6),(50,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(51,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(52,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(53,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(54,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(55,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(56,'2021_11_23_071403_correct_languages_for_product_variations',6),(57,'2021_11_28_031808_add_product_tags_translations',6),(58,'2021_12_01_031123_add_featured_image_to_ec_products',6),(59,'2022_01_01_033107_update_table_ec_shipments',6),(60,'2022_02_16_042457_improve_product_attribute_sets',6),(61,'2022_03_22_075758_correct_product_name',6),(62,'2022_04_19_113334_add_index_to_ec_products',6),(63,'2022_04_28_144405_remove_unused_table',6),(64,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(65,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(66,'2022_06_16_095633_add_index_to_some_tables',6),(67,'2022_06_30_035148_create_order_referrals_table',6),(68,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(69,'2022_08_14_032836_create_ec_order_returns_table',6),(70,'2022_08_14_033554_create_ec_order_return_items_table',6),(71,'2022_08_15_040324_add_billing_address',6),(72,'2022_08_30_091114_support_digital_products_table',6),(73,'2022_09_13_095744_create_options_table',6),(74,'2022_09_13_104347_create_option_value_table',6),(75,'2022_10_05_163518_alter_table_ec_order_product',6),(76,'2022_10_12_041517_create_invoices_table',6),(77,'2022_10_12_142226_update_orders_table',6),(78,'2022_10_13_024916_update_table_order_returns',6),(79,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(80,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(81,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(82,'2022_11_19_041643_add_ec_tax_product_table',6),(83,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(84,'2022_12_17_041532_fix_address_in_order_invoice',6),(85,'2022_12_26_070329_create_ec_product_views_table',6),(86,'2023_01_04_033051_fix_product_categories',6),(87,'2023_01_09_050400_add_ec_global_options_translations_table',6),(88,'2023_01_10_093754_add_missing_option_value_id',6),(89,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(90,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(91,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(92,'2023_02_27_095752_remove_duplicate_reviews',6),(93,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(94,'2023_04_21_082427_create_ec_product_categorizables_table',6),(95,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',6),(96,'2023_05_17_025812_fix_invoice_issue',6),(97,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',6),(98,'2023_05_27_144611_fix_exchange_rate_setting',6),(99,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',6),(100,'2023_06_30_042512_create_ec_order_tax_information_table',6),(101,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',6),(102,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',6),(103,'2023_08_15_064505_create_ec_tax_rules_table',6),(104,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',6),(105,'2023_08_22_094114_drop_unique_for_barcode',6),(106,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',6),(107,'2023_09_07_094312_add_index_to_product_sku_and_translations',6),(108,'2018_07_09_221238_create_faq_table',7),(109,'2021_12_03_082134_create_faq_translations',7),(110,'2016_10_03_032336_create_languages_table',8),(111,'2023_09_14_022423_add_index_for_language_table',8),(112,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(113,'2021_12_03_075608_create_page_translations',9),(114,'2023_07_06_011444_create_slug_translations_table',9),(115,'2019_11_18_061011_create_country_table',10),(116,'2021_12_03_084118_create_location_translations',10),(117,'2021_12_03_094518_migrate_old_location_data',11),(118,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(119,'2022_01_16_085908_improve_plugin_location',11),(120,'2022_08_04_052122_delete_location_backup_tables',11),(121,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(122,'2023_07_26_041451_add_more_columns_to_location_table',11),(123,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(124,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(125,'2021_07_06_030002_create_marketplace_table',12),(126,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',12),(127,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',12),(128,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',12),(129,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',12),(130,'2021_12_06_031304_update_table_mp_customer_revenues',12),(131,'2022_10_19_152916_add_columns_to_mp_stores_table',12),(132,'2022_10_20_062849_create_mp_category_sale_commissions_table',12),(133,'2022_11_02_071413_add_more_info_for_store',12),(134,'2022_11_02_080444_add_tax_info',12),(135,'2023_02_01_062030_add_store_translations',12),(136,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',12),(137,'2023_02_17_023648_fix_store_prefix',12),(138,'2017_10_24_154832_create_newsletter_table',13),(139,'2017_05_18_080441_create_payment_tables',14),(140,'2021_03_27_144913_add_customer_type_into_table_payments',14),(141,'2021_05_24_034720_make_column_currency_nullable',14),(142,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(143,'2021_10_19_020859_update_metadata_field',14),(144,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(145,'2022_07_07_153354_update_charge_id_in_table_payments',14),(146,'2017_07_11_140018_create_simple_slider_table',15),(147,'2016_10_07_193005_create_translations_table',16);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,8,7,583.00,0.00,583.00,0.00,'USD',NULL,'2023-09-15 15:34:34','2023-09-15 15:34:34',0,'add-amount'),(2,4,8,3139.00,0.00,3139.00,0.00,'USD',NULL,'2023-09-15 13:34:34','2023-09-15 13:34:34',0,'add-amount'),(3,8,9,81.00,0.00,81.00,583.00,'USD',NULL,'2023-09-14 15:34:34','2023-09-14 15:34:34',0,'add-amount'),(4,2,10,3327.00,0.00,3327.00,0.00,'USD',NULL,'2023-09-12 15:34:34','2023-09-12 15:34:34',0,'add-amount'),(5,10,11,3495.00,0.00,3495.00,0.00,'USD',NULL,'2023-09-11 07:34:34','2023-09-11 07:34:34',0,'add-amount'),(6,8,12,40.50,0.00,40.50,664.00,'USD',NULL,'2023-09-06 13:34:35','2023-09-06 13:34:35',0,'add-amount'),(7,10,18,1194.00,0.00,1194.00,3495.00,'USD',NULL,'2023-09-06 19:34:35','2023-09-06 19:34:35',0,'add-amount'),(8,2,20,1533.00,0.00,1533.00,3327.00,'USD',NULL,'2023-09-05 19:34:35','2023-09-05 19:34:35',0,'add-amount'),(9,8,23,910.00,0.00,910.00,704.50,'USD',NULL,'2023-09-02 07:34:35','2023-09-02 07:34:35',0,'add-amount'),(10,2,26,1533.00,0.00,1533.00,4860.00,'USD',NULL,'2023-08-29 07:34:35','2023-08-29 07:34:35',0,'add-amount'),(11,8,28,516.00,0.00,516.00,1614.50,'USD',NULL,'2023-09-09 01:34:35','2023-09-09 01:34:35',0,'add-amount'),(12,8,33,81.00,0.00,81.00,2130.50,'USD',NULL,'2023-08-18 23:34:36','2023-08-18 23:34:36',0,'add-amount'),(13,2,38,511.00,0.00,511.00,6393.00,'USD',NULL,'2023-08-27 19:34:36','2023-08-27 19:34:36',0,'add-amount'),(14,8,39,1948.00,0.00,1948.00,2211.50,'USD',NULL,'2023-08-13 23:34:36','2023-08-13 23:34:36',0,'add-amount'),(15,8,40,910.00,0.00,910.00,4159.50,'USD',NULL,'2023-08-16 13:34:36','2023-08-16 13:34:36',0,'add-amount'),(16,10,41,2120.00,0.00,2120.00,4689.00,'USD',NULL,'2023-08-15 19:34:36','2023-08-15 19:34:36',0,'add-amount'),(17,8,45,1487.00,0.00,1487.00,5069.50,'USD',NULL,'2023-08-31 23:34:36','2023-08-31 23:34:36',0,'add-amount'),(18,5,46,2514.00,0.00,2514.00,0.00,'USD',NULL,'2023-08-19 21:34:37','2023-08-19 21:34:37',0,'add-amount'),(19,5,50,1986.00,0.00,1986.00,2514.00,'USD',NULL,'2023-08-13 07:34:37','2023-08-13 07:34:37',0,'add-amount'),(20,2,51,60.00,0.00,60.00,6904.00,'USD',NULL,'2023-08-03 23:34:37','2023-08-03 23:34:37',0,'add-amount');
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,2270.00,6964.00,'USD','','{\"name\":\"Carlo Conroy\",\"number\":\"+14239941569\",\"full_name\":\"Dr. Winnifred Cartwright Jr.\",\"description\":\"Jeramie Wiegand\"}',NULL,0,'completed',NULL,'2023-09-16 07:34:37','2023-09-16 07:34:37',NULL),(2,2,0.00,447.00,4694.00,'USD','','{\"name\":\"Carlo Conroy\",\"number\":\"+14239941569\",\"full_name\":\"Dr. Winnifred Cartwright Jr.\",\"description\":\"Jeramie Wiegand\"}',NULL,0,'pending',NULL,'2023-09-16 07:34:37','2023-09-16 07:34:37',NULL),(3,2,0.00,1246.00,4247.00,'USD','','{\"name\":\"Carlo Conroy\",\"number\":\"+14239941569\",\"full_name\":\"Dr. Winnifred Cartwright Jr.\",\"description\":\"Jeramie Wiegand\"}',NULL,0,'processing',NULL,'2023-09-16 07:34:37','2023-09-16 07:34:37',NULL),(4,2,0.00,471.00,3001.00,'USD','','{\"name\":\"Carlo Conroy\",\"number\":\"+14239941569\",\"full_name\":\"Dr. Winnifred Cartwright Jr.\",\"description\":\"Jeramie Wiegand\"}',NULL,0,'completed',NULL,'2023-09-16 07:34:37','2023-09-16 07:34:37',NULL),(5,4,0.00,1030.00,3139.00,'USD','','{\"name\":\"Miss Asia Lemke\",\"number\":\"+15519384135\",\"full_name\":\"Prof. Elijah Wyman PhD\",\"description\":\"Natasha Ernser\"}',NULL,0,'pending',NULL,'2023-09-16 07:34:37','2023-09-16 07:34:37',NULL),(6,4,0.00,381.00,2109.00,'USD','','{\"name\":\"Miss Asia Lemke\",\"number\":\"+15519384135\",\"full_name\":\"Prof. Elijah Wyman PhD\",\"description\":\"Natasha Ernser\"}',NULL,0,'processing',NULL,'2023-09-16 07:34:38','2023-09-16 07:34:38',NULL),(7,4,0.00,307.00,1728.00,'USD','','{\"name\":\"Miss Asia Lemke\",\"number\":\"+15519384135\",\"full_name\":\"Prof. Elijah Wyman PhD\",\"description\":\"Natasha Ernser\"}',NULL,0,'processing',NULL,'2023-09-16 07:34:38','2023-09-16 07:34:38',NULL),(8,5,0.00,79.00,4500.00,'USD','','{\"name\":\"Enos Stokes\",\"number\":\"+17813956616\",\"full_name\":\"Noemi Reynolds\",\"description\":\"Lamont Hessel\"}',NULL,0,'processing',NULL,'2023-09-16 07:34:38','2023-09-16 07:34:38',NULL),(9,5,0.00,456.00,4421.00,'USD','','{\"name\":\"Enos Stokes\",\"number\":\"+17813956616\",\"full_name\":\"Noemi Reynolds\",\"description\":\"Lamont Hessel\"}',NULL,0,'processing',NULL,'2023-09-16 07:34:38','2023-09-16 07:34:38',NULL),(10,5,0.00,842.00,3965.00,'USD','','{\"name\":\"Enos Stokes\",\"number\":\"+17813956616\",\"full_name\":\"Noemi Reynolds\",\"description\":\"Lamont Hessel\"}',NULL,0,'completed',NULL,'2023-09-16 07:34:38','2023-09-16 07:34:38',NULL),(11,5,0.00,781.00,3123.00,'USD','','{\"name\":\"Enos Stokes\",\"number\":\"+17813956616\",\"full_name\":\"Noemi Reynolds\",\"description\":\"Lamont Hessel\"}',NULL,0,'processing',NULL,'2023-09-16 07:34:38','2023-09-16 07:34:38',NULL),(12,8,0.00,1925.00,6556.50,'USD','','{\"name\":\"Elizabeth Douglas DDS\",\"number\":\"+15598186154\",\"full_name\":\"Petra Lindgren V\",\"description\":\"Holly Gorczany\"}',NULL,0,'processing',NULL,'2023-09-16 07:34:38','2023-09-16 07:34:38',NULL),(13,8,0.00,1465.00,4631.50,'USD','','{\"name\":\"Elizabeth Douglas DDS\",\"number\":\"+15598186154\",\"full_name\":\"Petra Lindgren V\",\"description\":\"Holly Gorczany\"}',NULL,0,'pending',NULL,'2023-09-16 07:34:38','2023-09-16 07:34:38',NULL),(14,10,0.00,2061.00,6809.00,'USD','','{\"name\":\"Lavinia Parker V\",\"number\":\"+17409934927\",\"full_name\":\"Prof. Francesca Purdy\",\"description\":\"Cody Gorczany\"}',NULL,0,'completed',NULL,'2023-09-16 07:34:39','2023-09-16 07:34:39',NULL),(15,10,0.00,505.00,4748.00,'USD','','{\"name\":\"Lavinia Parker V\",\"number\":\"+17409934927\",\"full_name\":\"Prof. Francesca Purdy\",\"description\":\"Cody Gorczany\"}',NULL,0,'pending',NULL,'2023-09-16 07:34:39','2023-09-16 07:34:39',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','pzulauf@example.com','+15869081972','826 Vicenta Causeway Apt. 367','PW','Washington','West Winifredberg',2,'stores/1.png','Quia nisi facere sit et.','Sint ea quod officiis est aut et voluptatem dolorum. Tempore fugit ut debitis excepturi qui ipsum saepe. Quia a cupiditate quos qui.','published',NULL,'2023-09-16 07:34:29','2023-09-16 07:34:29',NULL,NULL),(2,'Global Office','vcrooks@example.com','+18458122620','33109 Harris Stream Apt. 596','MG','Arizona','North Dayna',4,'stores/2.png','Minima et qui ratione culpa voluptatem.','Fugit in provident quidem aut quidem consequatur. Sed labore repellat veniam ex et eius. Cumque quaerat incidunt amet et.','published',NULL,'2023-09-16 07:34:29','2023-09-16 07:34:29',NULL,NULL),(3,'Young Shop','oconner.mac@example.com','+14808616238','6221 Serenity Gateway Suite 272','ES','Tennessee','South Donnie',5,'stores/3.png','Dolores recusandae nobis ut nobis ex error.','Optio veniam quia ut quibusdam. Veritatis velit accusantium perferendis excepturi aliquid. Voluptas odio voluptas maxime sed optio.','published',NULL,'2023-09-16 07:34:29','2023-09-16 07:34:29',NULL,NULL),(4,'Global Store','dooley.jacinthe@example.com','+14423661640','48408 Romaguera Station','MS','Oklahoma','McLaughlinshire',8,'stores/4.png','Consectetur aut architecto et ullam aspernatur.','Quas iure in et tempora vitae in perferendis explicabo. Corporis ex quasi molestiae. Et sunt ex omnis aut doloremque aut.','published',NULL,'2023-09-16 07:34:29','2023-09-16 07:34:29',NULL,NULL),(5,'Robert’s Store','roob.zachery@example.net','+16317519790','8913 Dominique Ranch Apt. 227','MP','South Dakota','Tellyborough',9,'stores/5.png','Recusandae quis molestiae vero dolor aut fugit.','Facilis aut est consequatur ut et. Architecto deserunt est ab praesentium. Omnis sunt rerum aut assumenda.','published',NULL,'2023-09-16 07:34:29','2023-09-16 07:34:29',NULL,NULL),(6,'Stouffer','reichel.jaren@example.com','+15177453362','7096 Robert Forges Suite 080','GY','Mississippi','New Malachi',10,'stores/6.png','Rem aut et corrupti aut.','Voluptas officiis iste officiis ipsa. Dolor praesentium in illo quod voluptatum est.','published',NULL,'2023-09-16 07:34:29','2023-09-16 07:34:29',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,2530.00,0.00,6964.00,'$2y$10$G5XkBYhe77896YP.2dqxrOXUMqJ1RHBvOqk7zKy9sejmFbs5VbXcG','{\"name\":\"Carlo Conroy\",\"number\":\"+14239941569\",\"full_name\":\"Dr. Winnifred Cartwright Jr.\",\"description\":\"Jeramie Wiegand\"}','2023-09-16 07:34:29','2023-09-16 07:34:37','bank_transfer',NULL),(2,4,1421.00,0.00,3139.00,'$2y$10$w62X0eVv1koIAGxVguesLe.1LPkZUvbUyNy973Ng.o0zox3xvPo/q','{\"name\":\"Miss Asia Lemke\",\"number\":\"+15519384135\",\"full_name\":\"Prof. Elijah Wyman PhD\",\"description\":\"Natasha Ernser\"}','2023-09-16 07:34:29','2023-09-16 07:34:38','bank_transfer',NULL),(3,5,2342.00,0.00,4500.00,'$2y$10$CMzeiTA.jpvoEblYgMYN3.jR09BeSN/qr.J2IM1ad88ecDptbG7SG','{\"name\":\"Enos Stokes\",\"number\":\"+17813956616\",\"full_name\":\"Noemi Reynolds\",\"description\":\"Lamont Hessel\"}','2023-09-16 07:34:29','2023-09-16 07:34:38','bank_transfer',NULL),(4,8,3166.50,0.00,6556.50,'$2y$10$eI3aXAstPWpMJYp5q9RUn.4e1A7xFW145CEDYwRTFTdiiDw.3pvuy','{\"name\":\"Elizabeth Douglas DDS\",\"number\":\"+15598186154\",\"full_name\":\"Petra Lindgren V\",\"description\":\"Holly Gorczany\"}','2023-09-16 07:34:29','2023-09-16 07:34:39','bank_transfer',NULL),(5,9,0.00,0.00,0.00,'$2y$10$ZWwbtW8Jo7IS9vg2u0yWs.zZYmGh4u49bwQCmPl32twAW4KkKpFCW','{\"name\":\"Dr. Blake Conroy\",\"number\":\"+15204020875\",\"full_name\":\"Augustus McGlynn IV\",\"description\":\"Alec Haley\"}','2023-09-16 07:34:29','2023-09-16 07:34:29','bank_transfer',NULL),(6,10,4243.00,0.00,6809.00,'$2y$10$EXHahMZz7D34HnnnR280C.M11ZSUp53EptAod7NTYH/eZRo6kWCBi','{\"name\":\"Lavinia Parker V\",\"number\":\"+17409934927\",\"full_name\":\"Prof. Francesca Purdy\",\"description\":\"Cody Gorczany\"}','2023-09-16 07:34:29','2023-09-16 07:34:39','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(2,'About us','<p>Alice. \'Come on, then!\' roared the Queen, the royal children, and everybody else. \'Leave off that!\' screamed the Gryphon. \'We can do no more, whatever happens. What WILL become of it; and while she was nine feet high, and she heard a little startled when she had quite forgotten the Duchess to play with, and oh! ever so many out-of-the-way things had happened lately, that Alice quite hungry to look down and looked very anxiously into its face in some alarm. This time there were three little.</p><p>Pigeon went on, very much of a muchness\"--did you ever eat a bat?\' when suddenly, thump! thump! down she came suddenly upon an open place, with a large pigeon had flown into her eyes--and still as she spoke. (The unfortunate little Bill had left off sneezing by this time, and was just beginning to get out at all what had become of you? I gave her one, they gave him two, You gave us three or more; They all made a rush at the March Hare interrupted in a pleased tone. \'Pray don\'t trouble yourself.</p><p>In a little nervous about it in a game of play with a kind of rule, \'and vinegar that makes the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was a little nervous about this; \'for it might end, you know,\' said Alice, very loudly and decidedly, and there stood the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of sight, they were trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than.</p><p>And with that she was now only ten inches high, and her face brightened up at the Cat\'s head began fading away the time. Alice had got burnt, and eaten up by two guinea-pigs, who were all talking together: she made out that one of them at dinn--\' she checked herself hastily. \'I thought you did,\' said the King was the first to speak. \'What size do you want to go! Let me see--how IS it to be found: all she could see, when she heard was a dead silence. Alice was not an encouraging tone. Alice.</p>',1,NULL,'default',NULL,'published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(3,'Terms Of Use','<p>The rabbit-hole went straight on like a frog; and both creatures hid their faces in their mouths--and they\'re all over crumbs.\' \'You\'re wrong about the twentieth time that day. \'No, no!\' said the Caterpillar seemed to be treated with respect. \'Cheshire Puss,\' she began, in a solemn tone, only changing the order of the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow up again! Let me think: was I the same as.</p><p>The hedgehog was engaged in a great deal too flustered to tell him. \'A nice muddle their slates\'ll be in a soothing tone: \'don\'t be angry about it. And yet I don\'t put my arm round your waist,\' the Duchess was VERY ugly; and secondly, because they\'re making such VERY short remarks, and she went to school every day--\' \'I\'VE been to her, one on each side, and opened their eyes and mouths so VERY nearly at the stick, and held it out to the Knave was standing before them, in chains, with a.</p><p>And mentioned me to introduce some other subject of conversation. While she was walking hand in hand, in couples: they were lying on their slates, and she tried to fancy what the next moment she felt that she did not much larger than a rat-hole: she knelt down and began singing in its hurry to get rather sleepy, and went in. The door led right into a doze; but, on being pinched by the hedge!\' then silence, and then the puppy made another rush at Alice for some time without hearing anything.</p><p>QUITE as much right,\' said the King triumphantly, pointing to the Queen, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle replied in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, old fellow?\' The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'Now I can kick a little!\' She drew her foot as far down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em.</p>',1,NULL,'default',NULL,'published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(4,'Terms &amp; Conditions','<p>Classics master, though. He was an old Crab took the opportunity of showing off her unfortunate guests to execution--once more the pig-baby was sneezing on the breeze that followed them, the melancholy words:-- \'Soo--oop of the tale was something like this:-- \'Fury said to Alice. \'What IS the use of a muchness\"--did you ever eat a little snappishly. \'You\'re enough to try the first minute or two sobs choked his voice. \'Same as if nothing had happened. \'How am I to get in?\' she repeated, aloud.</p><p>Alice was soon submitted to by the English, who wanted leaders, and had to stoop to save her neck kept getting entangled among the trees, a little faster?\" said a timid voice at her rather inquisitively, and seemed to think this a very difficult game indeed. The players all played at once to eat or drink under the circumstances. There was a little quicker. \'What a curious dream!\' said Alice, \'but I must go and get ready for your interesting story,\' but she did not like to drop the jar for fear.</p><p>Alice noticed with some surprise that the best way to change the subject,\' the March Hare went \'Sh! sh!\' and the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, indeed!\' said Alice, and she drew herself up closer to Alice\'s great surprise, the.</p><p>King looked anxiously over his shoulder with some difficulty, as it turned a corner, \'Oh my ears and the second thing is to find her in the distance, screaming with passion. She had already heard her sentence three of the lefthand bit. * * * * * * * * * * * * * * * * * * * * * * * * * * \'What a curious feeling!\' said Alice; \'I daresay it\'s a French mouse, come over with diamonds, and walked off; the Dormouse went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen.</p>',1,NULL,'default',NULL,'published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(5,'Refund Policy','<p>The door led right into it. \'That\'s very curious!\' she thought. \'I must go by the hand, it hurried off, without waiting for the rest were quite silent, and looked at Two. Two began in a trembling voice:-- \'I passed by his face only, she would have this cat removed!\' The Queen had ordered. They very soon had to leave it behind?\' She said the Mock Turtle, \'Drive on, old fellow! Don\'t be all day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Mock Turtle.</p><p>The Queen\'s argument was, that anything that had fallen into the sky all the way out of the pack, she could remember about ravens and writing-desks, which wasn\'t much. The Hatter looked at it gloomily: then he dipped it into his cup of tea, and looked at the cook, to see if she were looking over their shoulders, that all the same, the next witness.\' And he added looking angrily at the end of the baby, the shriek of the players to be no use in the middle, being held up by two guinea-pigs, who.</p><p>CHAPTER VIII. The Queen\'s argument was, that you had been looking at the sides of the crowd below, and there stood the Queen said to the waving of the Nile On every golden scale! \'How cheerfully he seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not the smallest idea how to spell \'stupid,\' and that he had taken advantage of the jury eagerly wrote down on their hands and feet at the place of the window, I only knew the.</p><p>Alice had been looking over his shoulder as he spoke, and the Gryphon hastily. \'Go on with the Duchess, digging her sharp little chin into Alice\'s head. \'Is that the mouse to the seaside once in her hand, and made believe to worry it; then Alice put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon replied very solemnly. Alice was rather doubtful whether she ought to be true): If she should push the matter with it. There was nothing on it except a little more.</p>',1,NULL,'default',NULL,'published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(10,'Affiliate','<p>Alice. \'I\'ve tried the effect of lying down with one elbow against the roof of the cupboards as she added, to herself, and fanned herself with one eye; but to get rather sleepy, and went on: \'But why did they live at the sudden change, but she gained courage as she could do, lying down with one eye, How the Owl had the dish as its share of the court was in managing her flamingo: she succeeded in curving it down into a chrysalis--you will some day, you know--and then after that into a.</p><p>Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said nothing: she had quite a crowd of little birds and beasts, as well to introduce it.\' \'I don\'t like it, yer honour, at all, as the Lory positively refused to tell you--all I know is, something comes at me like that!\' By this time the Queen said--\' \'Get to your tea; it\'s getting late.\' So Alice got up very sulkily and crossed over to the company generally, \'You are all pardoned.\' \'Come, THAT\'S a good deal: this fireplace is narrow, to be.</p><p>Alice as it could go, and broke to pieces against one of the court. \'What do you call it sad?\' And she began nursing her child again, singing a sort of idea that they couldn\'t get them out again. The Mock Turtle\'s Story \'You can\'t think how glad I am very tired of sitting by her sister sat still just as the hall was very fond of pretending to be sure; but I think I must be collected at once and put it in large letters. It was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time.</p><p>So she swallowed one of the trees had a little scream, half of anger, and tried to beat time when I got up and ran till she fancied she heard a little sharp bark just over her head on her hand, watching the setting sun, and thinking of little animals and birds waiting outside. The poor little Lizard, Bill, was in the middle of one! There ought to be seen--everything seemed to think that proved it at all,\' said the King, and the great puzzle!\' And she began thinking over all the players, except.</p>',1,NULL,'default',NULL,'published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(11,'Career','<p>It was so much frightened to say it any longer than that,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said it to speak good English); \'now I\'m opening out like the right thing to nurse--and she\'s such a hurry to change the subject. \'Go on with the strange creatures of her knowledge. \'Just think of any good reason, and as the whole party swam to the croquet-ground. The other guests had taken his watch out of his pocket, and was going to turn into a.</p><p>Hatter went on, turning to Alice. \'Only a thimble,\' said Alice a good character, But said I could let you out, you know.\' \'Not at all,\' said Alice: \'three inches is such a curious dream, dear, certainly: but now run in to your places!\' shouted the Gryphon, and the poor child, \'for I never knew whether it was just in time to hear the words:-- \'I speak severely to my right size: the next witness.\' And he added in an undertone to the general conclusion, that wherever you go to on the OUTSIDE.\' He.</p><p>THIS size: why, I should be raving mad after all! I almost wish I\'d gone to see some meaning in it,\' but none of them with large round eyes, and half of fright and half of anger, and tried to get in at the number of executions the Queen said to herself; \'the March Hare said--\' \'I didn\'t!\' the March Hare, who had meanwhile been examining the roses. \'Off with her arms round it as you might catch a bad cold if she were saying lessons, and began smoking again. This time there could be NO mistake.</p><p>Gryphon. Alice did not quite sure whether it would be only rustling in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess by this time?\' she said these words her foot slipped, and in another moment that it was impossible to say \'I once tasted--\' but checked herself hastily, and said \'That\'s very important,\' the King and Queen of Hearts were seated on their slates, when the White Rabbit, who was peeping anxiously into.</p>',1,NULL,'default',NULL,'published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2022 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2023-09-16 07:34:27','2023-09-16 07:34:27');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'UNFB10YT6P','bank_transfer',NULL,583.00,1,'pending','confirm',3,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'UQVMVJGO3V','stripe',NULL,2426.00,2,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'DHRUOJ63QU','stripe',NULL,767.00,3,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'8VPZMXUEAE','paypal',NULL,530.00,4,'completed','confirm',7,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'NKCZYFP7ZL','paystack',NULL,1032.00,5,'completed','confirm',7,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'XUOGEZUHNF','razorpay',NULL,80.25,6,'completed','confirm',6,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'FPUPVMAQZJ','paypal',NULL,583.00,7,'completed','confirm',6,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'WTDATNCFJM','sslcommerz',NULL,3139.00,8,'completed','confirm',1,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'5VECVJLJUS','sslcommerz',NULL,81.00,9,'completed','confirm',7,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'K0EXFJEXCZ','paystack',NULL,3327.00,10,'completed','confirm',7,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'YRWLDQBGQB','stripe',NULL,3495.00,11,'completed','confirm',7,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'EVNXS4SNAY','sslcommerz',NULL,40.50,12,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'GA36BLLAWJ','bank_transfer',NULL,2514.00,13,'pending','confirm',3,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'A9IINMRNSY','sslcommerz',NULL,4852.00,14,'completed','confirm',6,NULL,NULL,'2023-09-16 07:34:30','2023-09-16 07:34:30','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'7RM1U0NMLV','cod',NULL,1194.00,15,'pending','confirm',6,NULL,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'9AXELBNQXE','bank_transfer',NULL,1365.00,16,'pending','confirm',3,NULL,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'EMK4AEVYHI','cod',NULL,2514.00,17,'pending','confirm',3,NULL,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'IMPBBXWRQI','paystack',NULL,1194.00,18,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'CZX8URCNJ7','bank_transfer',NULL,160.50,19,'pending','confirm',3,NULL,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'MSD55HC8ZT','paypal',NULL,1533.00,20,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'JKPNVKFRCN','razorpay',NULL,540.00,21,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'CU0PC7L26N','bank_transfer',NULL,1257.00,22,'pending','confirm',3,NULL,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'N7J3MERTYB','razorpay',NULL,910.00,23,'completed','confirm',6,NULL,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'5YXG1KE6HX','paypal',NULL,2218.00,24,'completed','confirm',6,NULL,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'QTK4X7KXMB','sslcommerz',NULL,1196.00,25,'completed','confirm',6,NULL,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'NEMUFDPDV7','paypal',NULL,1533.00,26,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:31','2023-09-16 07:34:31','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'JMGC9OT3KY','razorpay',NULL,3771.00,27,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'5RQYQ9FO6R','paypal',NULL,516.00,28,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'XLOJC2NJKQ','paypal',NULL,1794.00,29,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'WO45QAUCC6','cod',NULL,2178.00,30,'pending','confirm',1,NULL,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'EULOAK6OT5','paypal',NULL,1150.00,31,'completed','confirm',1,NULL,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'YCSIGREHZG','paypal',NULL,1166.00,32,'completed','confirm',1,NULL,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'NXQ73L4CKP','paystack',NULL,81.00,33,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'HE5JFLQE93','cod',NULL,1791.00,34,'pending','confirm',3,NULL,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'DRZ8OINO7S','paystack',NULL,515.00,35,'completed','confirm',1,NULL,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'MVIYV8WDOM','stripe',NULL,4237.00,36,'completed','confirm',1,NULL,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'VT6YPHQ8WS','stripe',NULL,80.25,37,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'DFADFM4M7Z','paypal',NULL,511.00,38,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'1U5RYIA6AF','sslcommerz',NULL,1948.00,39,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:32','2023-09-16 07:34:32','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'TPDV6U4URO','paystack',NULL,910.00,40,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'GJA2TW87ZL','paypal',NULL,2120.00,41,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'KTZKROCNGP','paypal',NULL,1196.00,42,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'DC96UV2WPC','stripe',NULL,80.25,43,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'K2X2PZDGAO','paypal',NULL,2949.00,44,'completed','confirm',3,NULL,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'ZRACOOVJBY','paypal',NULL,1487.00,45,'completed','confirm',7,NULL,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'KDSHPSZNPA','paystack',NULL,2514.00,46,'completed','confirm',7,NULL,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'ROG5AUV8PE','sslcommerz',NULL,767.00,47,'completed','confirm',7,NULL,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'VIX2CLVOFN','sslcommerz',NULL,121.50,48,'completed','confirm',7,NULL,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\Ecommerce\\Models\\Customer',NULL),(49,'USD',0,'QBHB7LYMWH','paystack',NULL,1080.00,49,'completed','confirm',7,NULL,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\Ecommerce\\Models\\Customer',NULL),(50,'USD',0,'ILB5LZZBVJ','sslcommerz',NULL,1986.00,50,'completed','confirm',7,NULL,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\Ecommerce\\Models\\Customer',NULL),(51,'USD',0,'D1GBL9YJ6R','sslcommerz',NULL,60.00,51,'completed','confirm',1,NULL,NULL,'2023-09-16 07:34:33','2023-09-16 07:34:33','Botble\\Ecommerce\\Models\\Customer',NULL),(52,'USD',0,'8LYQ8VNQMR','sslcommerz',NULL,583.00,52,'completed','confirm',1,NULL,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34','Botble\\Ecommerce\\Models\\Customer',NULL),(53,'USD',0,'Z5JMXCLNQB','cod',NULL,1791.00,53,'pending','confirm',1,NULL,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34','Botble\\Ecommerce\\Models\\Customer',NULL),(54,'USD',0,'U3PMVGT8D5','sslcommerz',NULL,867.00,54,'completed','confirm',1,NULL,NULL,'2023-09-16 07:34:34','2023-09-16 07:34:34','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(3,1),(2,2),(3,2),(2,3),(3,3),(2,4),(3,4),(2,5),(4,5),(1,6),(4,6),(2,7),(3,7),(1,8),(4,8),(2,9),(4,9),(2,10),(4,10),(1,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/1.jpg',164,NULL,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/2.jpg',2386,NULL,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2002,NULL,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/4.jpg',786,NULL,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1024,NULL,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1136,NULL,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/7.jpg',2229,NULL,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/8.jpg',840,NULL,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/9.jpg',116,NULL,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/10.jpg',2203,NULL,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',0,'news/11.jpg',2063,NULL,'2023-09-16 07:34:27','2023-09-16 07:34:27');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` VALUES (3,1,'2023-09-16 07:34:26','2023-09-16 07:34:26');
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2023-09-16 07:34:26','2023-09-16 07:34:26');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2023-09-16 07:34:28'),(5,'api_enabled','0',NULL,'2023-09-16 07:34:28'),(8,'language_hide_default','1',NULL,'2023-09-16 07:34:28'),(9,'language_switcher_display','dropdown',NULL,'2023-09-16 07:34:28'),(10,'language_display','all',NULL,'2023-09-16 07:34:28'),(11,'language_hide_languages','[]',NULL,'2023-09-16 07:34:28'),(12,'simple_slider_using_assets','0',NULL,NULL),(13,'payment_cod_status','1',NULL,'2023-09-16 07:34:28'),(14,'payment_bank_transfer_status','1',NULL,'2023-09-16 07:34:28'),(15,'media_random_hash','3829ab9ac99e4ddb0c9d66fb83d745e7',NULL,'2023-09-16 07:34:28'),(16,'show_admin_bar','1',NULL,'2023-09-16 07:34:28'),(17,'theme','martfury',NULL,'2023-09-16 07:34:28'),(18,'admin_favicon','general/favicon.png',NULL,'2023-09-16 07:34:28'),(19,'admin_logo','general/logo-light.png',NULL,'2023-09-16 07:34:28'),(20,'permalink-botble-blog-models-post','blog',NULL,'2023-09-16 07:34:28'),(21,'permalink-botble-blog-models-category','blog',NULL,'2023-09-16 07:34:28'),(22,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2023-09-16 07:34:28'),(23,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2023-09-16 07:34:28'),(24,'payment_stripe_payment_type','stripe_checkout',NULL,'2023-09-16 07:34:28'),(25,'plugins_ecommerce_customer_new_order_status','0',NULL,'2023-09-16 07:34:28'),(26,'plugins_ecommerce_admin_new_order_status','0',NULL,'2023-09-16 07:34:28'),(27,'ecommerce_is_enabled_support_digital_products','1',NULL,'2023-09-16 07:34:28'),(28,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2023-09-16 07:34:28'),(29,'ecommerce_store_name','Martfury',NULL,NULL),(30,'ecommerce_store_phone','1800979769',NULL,NULL),(31,'ecommerce_store_address','502 New Street',NULL,NULL),(32,'ecommerce_store_state','Brighton VIC',NULL,NULL),(33,'ecommerce_store_city','Brighton VIC',NULL,NULL),(34,'ecommerce_store_country','AU',NULL,NULL),(35,'theme-martfury-site_title','MartFury - Laravel Ecommerce system',NULL,NULL),(36,'theme-martfury-seo_description','MartFury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, MartFury will make your online store look more impressive and attractive to viewers.',NULL,NULL),(37,'theme-martfury-copyright','© 2023 MartFury. All Rights Reserved.',NULL,NULL),(38,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(39,'theme-martfury-logo','general/logo.png',NULL,NULL),(40,'theme-martfury-welcome_message','Welcome to MartFury Online Shopping Store!',NULL,NULL),(41,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(42,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(43,'theme-martfury-email','contact@martfury.co',NULL,NULL),(44,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(45,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(46,'theme-martfury-homepage_id','1',NULL,NULL),(47,'theme-martfury-blog_page_id','6',NULL,NULL),(48,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(49,'theme-martfury-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(50,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(51,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(52,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(53,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(54,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(55,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(56,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(57,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(58,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(59,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(60,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(61,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(62,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(63,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(64,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, South bank, Melbourne 10560, Australia',NULL,NULL),(65,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(66,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(67,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(68,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(69,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(70,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(71,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(72,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(73,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(74,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(75,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(76,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(77,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(78,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(79,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(80,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(81,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(82,'theme-martfury-primary_font','Work Sans',NULL,NULL),(83,'theme-martfury--social-name-1','Facebook',NULL,NULL),(84,'theme-martfury--social-url-1','https://www.facebook.com/',NULL,NULL),(85,'theme-martfury--social-icon-1','fa-facebook',NULL,NULL),(86,'theme-martfury--social-color-1','#3b5999',NULL,NULL),(87,'theme-martfury--social-name-2','Twitter',NULL,NULL),(88,'theme-martfury--social-url-2','https://www.twitter.com/',NULL,NULL),(89,'theme-martfury--social-icon-2','fa-twitter',NULL,NULL),(90,'theme-martfury--social-color-2','#55ACF9',NULL,NULL),(91,'theme-martfury--social-name-3','Instagram',NULL,NULL),(92,'theme-martfury--social-url-3','https://www.instagram.com/',NULL,NULL),(93,'theme-martfury--social-icon-3','fa-instagram',NULL,NULL),(94,'theme-martfury--social-color-3','#E1306C',NULL,NULL),(95,'theme-martfury--social-name-4','Youtube',NULL,NULL),(96,'theme-martfury--social-url-4','https://www.youtube.com/',NULL,NULL),(97,'theme-martfury--social-icon-4','fa-youtube',NULL,NULL),(98,'theme-martfury--social-color-4','#FF0000',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2023-09-16 07:34:27','2023-09-16 07:34:27'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2023-09-16 07:34:27','2023-09-16 07:34:27');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2023-09-16 07:34:27','2023-09-16 07:34:27');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2023-09-16 07:34:18','2023-09-16 07:34:18'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2023-09-16 07:34:18','2023-09-16 07:34:18'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2023-09-16 07:34:18','2023-09-16 07:34:18'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2023-09-16 07:34:18','2023-09-16 07:34:18'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2023-09-16 07:34:18','2023-09-16 07:34:18'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2023-09-16 07:34:18','2023-09-16 07:34:18'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2023-09-16 07:34:18','2023-09-16 07:34:18'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-09-16 07:34:19','2023-09-16 07:34:19'),(45,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(49,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(53,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(57,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(61,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(65,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2023-09-16 07:34:23','2023-09-16 07:34:23'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-09-16 07:34:26','2023-09-16 07:34:26'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-09-16 07:34:26','2023-09-16 07:34:26'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-09-16 07:34:26','2023-09-16 07:34:26'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-09-16 07:34:26','2023-09-16 07:34:26'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-09-16 07:34:26','2023-09-16 07:34:26'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-09-16 07:34:26','2023-09-16 07:34:26'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-09-16 07:34:27','2023-09-16 07:34:27'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-09-16 07:34:27','2023-09-16 07:34:27'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-09-16 07:34:27','2023-09-16 07:34:27'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-09-16 07:34:27','2023-09-16 07:34:27'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-09-16 07:34:27','2023-09-16 07:34:27'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2023-09-16 07:34:27','2023-09-16 07:34:28'),(94,'home',1,'Botble\\Page\\Models\\Page','','2023-09-16 07:34:27','2023-09-16 07:34:27'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2023-09-16 07:34:27','2023-09-16 07:34:27'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2023-09-16 07:34:27','2023-09-16 07:34:27'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2023-09-16 07:34:27','2023-09-16 07:34:27'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2023-09-16 07:34:27','2023-09-16 07:34:27'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2023-09-16 07:34:27','2023-09-16 07:34:27'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2023-09-16 07:34:27','2023-09-16 07:34:27'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2023-09-16 07:34:27','2023-09-16 07:34:27'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2023-09-16 07:34:27','2023-09-16 07:34:27'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2023-09-16 07:34:27','2023-09-16 07:34:27'),(104,'career',11,'Botble\\Page\\Models\\Page','','2023-09-16 07:34:27','2023-09-16 07:34:27'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2023-09-16 07:34:27','2023-09-16 07:34:27'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2023-09-16 07:34:29','2023-09-16 07:34:29'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2023-09-16 07:34:29','2023-09-16 07:34:29'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2023-09-16 07:34:29','2023-09-16 07:34:29'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2023-09-16 07:34:29','2023-09-16 07:34:29'),(110,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2023-09-16 07:34:29','2023-09-16 07:34:29'),(111,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2023-09-16 07:34:29','2023-09-16 07:34:29');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2023-09-16 07:34:27','2023-09-16 07:34:27'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2023-09-16 07:34:27','2023-09-16 07:34:27');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3458 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'super@botble.com',NULL,'$2y$10$tWHlwA6f03nN875TkyO7HesW7apcebFngZdQTdSH6zAtNsx3zZZcm',NULL,'2023-09-16 07:34:26','2023-09-16 07:34:26','Super','Admin','botble',NULL,1,1,NULL,NULL),(2,'admin@botble.com',NULL,'$2y$10$tpsgD8McikYcGXckzli7beIRR4/N6dxbfccJGIIc58tmydKXshksW',NULL,'2023-09-16 07:34:26','2023-09-16 07:34:26','John','Smith','admin',NULL,1,1,NULL,NULL),(3,'user@botble.com',NULL,'$2y$10$LpTtsTzQATXAP25X9qN6zOx50m.r6CbRsG6sQVTJqlfkcV1JxH3au',NULL,'2023-09-16 07:34:26','2023-09-16 07:34:26','Demon','Warlock','user',NULL,0,0,'{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2023-09-16 07:34:28','2023-09-16 07:34:28'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2023-09-16 07:34:28','2023-09-16 07:34:28'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2023-09-16 07:34:28','2023-09-16 07:34:28'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2023-09-16 07:34:28','2023-09-16 07:34:28'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2023-09-16 07:34:28','2023-09-16 07:34:28'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2023-09-16 07:34:28','2023-09-16 07:34:28'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2023-09-16 07:34:28','2023-09-16 07:34:28'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2023-09-16 07:34:28','2023-09-16 07:34:28'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2023-09-16 07:34:28','2023-09-16 07:34:28'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2023-09-16 07:34:28','2023-09-16 07:34:28'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2023-09-16 07:34:28','2023-09-16 07:34:28'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2023-09-16 07:34:28','2023-09-16 07:34:28');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-16 21:35:11