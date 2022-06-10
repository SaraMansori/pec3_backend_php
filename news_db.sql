-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: news
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

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
-- Table structure for table `article_category`
--

DROP TABLE IF EXISTS `article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_category` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `article_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_category_category_id_foreign` (`category_id`),
  KEY `article_category_article_id_foreign` (`article_id`),
  CONSTRAINT `article_category_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `article_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_category`
--

LOCK TABLES `article_category` WRITE;
/*!40000 ALTER TABLE `article_category` DISABLE KEYS */;
INSERT INTO `article_category` VALUES (1,1,1,NULL,NULL),(2,2,1,NULL,NULL),(3,3,2,NULL,NULL),(4,2,3,NULL,NULL),(5,3,3,NULL,NULL),(6,2,4,NULL,NULL),(7,2,5,NULL,NULL),(8,3,5,NULL,NULL),(9,2,6,NULL,NULL),(10,1,7,NULL,NULL),(11,2,7,NULL,NULL),(12,3,7,NULL,NULL),(13,1,8,NULL,NULL),(14,3,9,NULL,NULL),(15,1,10,NULL,NULL),(16,1,11,NULL,NULL),(17,2,11,NULL,NULL),(18,3,11,NULL,NULL),(19,1,12,NULL,NULL),(20,2,12,NULL,NULL),(21,3,12,NULL,NULL),(22,1,13,NULL,NULL),(23,2,13,NULL,NULL),(24,3,13,NULL,NULL),(25,1,14,NULL,NULL),(26,2,14,NULL,NULL),(27,1,15,NULL,NULL),(28,3,15,NULL,NULL),(29,1,16,NULL,NULL),(30,2,16,NULL,NULL),(31,3,16,NULL,NULL),(32,1,17,NULL,NULL),(33,2,17,NULL,NULL),(34,3,17,NULL,NULL),(35,1,18,NULL,NULL),(36,3,18,NULL,NULL),(37,1,19,NULL,NULL),(38,2,19,NULL,NULL),(39,3,19,NULL,NULL),(40,1,20,NULL,NULL),(41,2,20,NULL,NULL),(42,1,21,NULL,NULL),(43,2,21,NULL,NULL),(44,3,21,NULL,NULL),(45,1,22,NULL,NULL),(46,2,22,NULL,NULL),(47,3,22,NULL,NULL),(48,3,23,NULL,NULL),(49,2,24,NULL,NULL),(50,1,25,NULL,NULL),(51,1,26,NULL,NULL),(52,2,26,NULL,NULL),(53,3,26,NULL,NULL),(54,1,27,NULL,NULL),(55,2,27,NULL,NULL),(56,3,27,NULL,NULL),(57,1,28,NULL,NULL),(58,1,29,NULL,NULL),(59,2,29,NULL,NULL),(60,1,30,NULL,NULL),(61,2,30,NULL,NULL),(62,3,30,NULL,NULL),(63,1,31,NULL,NULL),(64,2,31,NULL,NULL),(65,3,31,NULL,NULL),(66,1,32,NULL,NULL),(67,2,32,NULL,NULL),(68,1,33,NULL,NULL),(69,2,33,NULL,NULL),(70,2,34,NULL,NULL),(71,3,34,NULL,NULL),(72,1,35,NULL,NULL),(73,2,35,NULL,NULL),(74,2,36,NULL,NULL),(75,3,36,NULL,NULL),(76,1,37,NULL,NULL),(77,2,37,NULL,NULL),(78,1,38,NULL,NULL),(79,3,38,NULL,NULL),(80,1,39,NULL,NULL),(81,3,39,NULL,NULL),(82,2,40,NULL,NULL),(83,1,41,NULL,NULL),(84,2,41,NULL,NULL),(85,1,42,NULL,NULL),(86,2,42,NULL,NULL),(87,3,42,NULL,NULL),(88,2,43,NULL,NULL),(89,3,43,NULL,NULL),(90,1,44,NULL,NULL),(91,2,44,NULL,NULL),(92,3,44,NULL,NULL),(93,1,45,NULL,NULL),(94,3,45,NULL,NULL),(95,2,46,NULL,NULL),(96,2,47,NULL,NULL),(97,3,47,NULL,NULL),(98,1,48,NULL,NULL),(99,2,48,NULL,NULL),(100,1,49,NULL,NULL),(101,2,50,NULL,NULL),(102,1,51,NULL,NULL),(103,3,51,NULL,NULL),(104,1,52,NULL,NULL),(105,2,52,NULL,NULL),(106,3,52,NULL,NULL),(107,1,53,NULL,NULL),(108,2,53,NULL,NULL),(109,1,54,NULL,NULL),(110,3,54,NULL,NULL),(111,3,55,NULL,NULL),(112,1,56,NULL,NULL),(113,3,56,NULL,NULL),(114,1,57,NULL,NULL),(115,2,57,NULL,NULL),(116,3,57,NULL,NULL),(117,1,58,NULL,NULL),(118,2,58,NULL,NULL),(119,3,58,NULL,NULL),(120,1,59,NULL,NULL),(121,2,59,NULL,NULL),(122,3,59,NULL,NULL),(123,1,60,NULL,NULL),(124,3,60,NULL,NULL),(125,1,61,NULL,NULL),(126,3,61,NULL,NULL),(127,1,62,NULL,NULL),(128,2,62,NULL,NULL),(129,3,62,NULL,NULL),(130,1,63,NULL,NULL),(131,2,63,NULL,NULL),(132,3,64,NULL,NULL),(133,1,65,NULL,NULL),(134,3,65,NULL,NULL),(135,2,66,NULL,NULL),(136,1,67,NULL,NULL),(137,2,67,NULL,NULL),(138,3,67,NULL,NULL),(139,2,68,NULL,NULL),(140,1,69,NULL,NULL),(141,2,69,NULL,NULL),(142,3,69,NULL,NULL),(143,1,70,NULL,NULL),(144,3,70,NULL,NULL),(145,3,71,NULL,NULL),(146,1,72,NULL,NULL),(147,2,72,NULL,NULL),(148,3,72,NULL,NULL),(149,1,73,NULL,NULL),(150,2,73,NULL,NULL),(151,2,74,NULL,NULL),(152,3,74,NULL,NULL),(153,3,75,NULL,NULL),(154,1,76,NULL,NULL),(155,3,76,NULL,NULL),(156,3,77,NULL,NULL),(157,1,78,NULL,NULL),(158,3,78,NULL,NULL),(159,1,79,NULL,NULL),(160,3,79,NULL,NULL),(161,2,80,NULL,NULL),(162,3,80,NULL,NULL),(163,2,81,NULL,NULL),(164,3,81,NULL,NULL),(165,1,82,NULL,NULL),(166,2,82,NULL,NULL),(167,2,83,NULL,NULL),(168,1,84,NULL,NULL),(169,2,84,NULL,NULL),(170,3,84,NULL,NULL),(171,3,85,NULL,NULL),(172,1,86,NULL,NULL),(173,2,86,NULL,NULL),(174,3,86,NULL,NULL),(175,2,87,NULL,NULL),(176,1,88,NULL,NULL),(177,2,88,NULL,NULL),(178,3,88,NULL,NULL),(179,1,89,NULL,NULL),(180,2,89,NULL,NULL),(181,3,89,NULL,NULL),(182,1,90,NULL,NULL),(183,2,90,NULL,NULL),(184,1,91,NULL,NULL),(185,2,91,NULL,NULL),(186,3,91,NULL,NULL),(187,3,92,NULL,NULL),(188,1,93,NULL,NULL),(189,2,93,NULL,NULL),(190,3,93,NULL,NULL),(191,1,94,NULL,NULL),(192,2,94,NULL,NULL),(193,3,94,NULL,NULL),(194,1,95,NULL,NULL),(195,2,95,NULL,NULL),(196,3,95,NULL,NULL),(197,2,96,NULL,NULL),(198,1,97,NULL,NULL),(199,2,97,NULL,NULL),(200,3,97,NULL,NULL),(201,1,98,NULL,NULL),(202,3,98,NULL,NULL),(203,2,99,NULL,NULL),(204,1,100,NULL,NULL);
/*!40000 ALTER TABLE `article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Accusamus aliquid quaerat omnis illo eveniet.','Annabel Windler','https://picsum.photos/600/300?random=75','1985-09-22 23:34:18','<p>Sequi nisi quisquam et est. Error asperiores qui fugit facilis voluptatem ut. Laboriosam dolorem et possimus praesentium. Quaerat ut sit libero aspernatur quaerat.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(2,'Sunt laudantium laboriosam quo doloremque velit atque.','Arvel Wolf','https://picsum.photos/600/300?random=77','2002-10-26 06:02:56','<p>Vel molestiae officiis repellendus quaerat. Et sunt explicabo omnis animi atque quae. Ipsum hic repudiandae aliquid qui et. Vitae quisquam at ipsa aspernatur autem voluptates inventore.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(3,'Voluptatem temporibus et debitis aspernatur ullam reprehenderit.','Randal Goldner III','https://picsum.photos/600/300?random=20','2020-02-07 14:11:51','<p>Cum illum quam ut. Fugit molestiae aut eligendi optio. Omnis quod eum quia est ipsum. Aut libero et quis suscipit autem.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(4,'Velit quasi et corrupti sit commodi fugit qui.','Matilda Abbott','https://picsum.photos/600/300?random=96','1983-06-24 23:04:00','<p>Recusandae quo qui nihil quasi dolorem. Voluptatem adipisci iste quia adipisci magnam natus veniam consequatur. Odio consectetur aut quia minima est voluptatem debitis.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(5,'Sed qui et sed est.','Kendrick Strosin DDS','https://picsum.photos/600/300?random=81','1975-08-23 20:46:02','<p>Molestias voluptas labore quam nihil esse. Ipsam voluptatibus fugit est modi molestiae in et. Illo dolore repellat sint. Est ex pariatur delectus eum sit ad.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(6,'Voluptatum ex error nam.','Frank Schultz','https://picsum.photos/600/300?random=5','2018-11-16 18:04:09','<p>Rerum porro eos totam et quam iusto. In recusandae vitae quae et unde in hic. Sapiente aut architecto et voluptatem hic aut. Voluptatem consectetur tempora excepturi sint et maxime.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(7,'Voluptas perspiciatis molestiae hic.','Dr. Jovanny Stamm','https://picsum.photos/600/300?random=46','1984-10-21 13:30:33','<p>Qui animi quae sed voluptatem. Enim id assumenda hic blanditiis quos deserunt. Qui dolor autem laudantium ea labore.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(8,'Est sed amet provident rerum officia.','Raquel Spinka','https://picsum.photos/600/300?random=11','2000-06-27 15:45:15','<p>Eos dolor corrupti voluptas aut sunt sed est. Porro numquam voluptatem illo mollitia sint tempore ipsum. Vitae optio aut velit sint sapiente.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(9,'Eos illo suscipit rem.','Syble Vandervort PhD','https://picsum.photos/600/300?random=38','1997-01-13 00:44:49','<p>Debitis dolores sint hic ullam rerum est. Omnis animi odio numquam amet voluptatem non qui.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(10,'Temporibus in facilis et alias et sequi accusantium.','Brandon Armstrong','https://picsum.photos/600/300?random=34','1997-09-29 15:05:49','<p>Nihil ut voluptas libero voluptas sint nemo autem. Ut voluptatem quia doloribus vitae soluta blanditiis. Eum eum deleniti illo sit aut laudantium asperiores ut. Libero officiis illo nisi ea.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(11,'Officia qui excepturi consequatur commodi ipsa qui.','Anne Hirthe','https://picsum.photos/600/300?random=76','1970-03-02 05:48:24','<p>Quisquam consequatur eveniet iure aut eum. Ea corrupti optio est nisi molestiae labore et. Quia doloribus voluptatum quas. Magni sapiente commodi est ipsam aspernatur aperiam.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(12,'Suscipit odit nisi vel natus minus ut.','Randal Rau','https://picsum.photos/600/300?random=58','1992-06-24 16:53:08','<p>Omnis ea rerum voluptate aut rerum quisquam impedit voluptatem. Veritatis maiores facere ut et. Aliquam eum nam beatae sit.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(13,'Dicta aperiam quisquam recusandae laborum facere mollitia amet nihil.','Armani Purdy','https://picsum.photos/600/300?random=85','2002-12-06 03:33:00','<p>Qui rerum et et ea incidunt est. Adipisci impedit laboriosam dolorem voluptatibus eveniet molestias. Et a minus omnis molestiae aperiam.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(14,'Quo delectus aut nostrum et.','Rebecca Goyette','https://picsum.photos/600/300?random=44','2021-02-03 11:48:27','<p>Sed labore nostrum nulla iste ea. Veniam quas id debitis et inventore. Labore officia ab natus ducimus mollitia. Odit architecto ut voluptatibus molestiae et quae porro qui.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(15,'Tempore omnis recusandae ea.','Ebony Huel','https://picsum.photos/600/300?random=22','1973-03-26 22:22:46','<p>Quidem doloremque non sequi. Eos suscipit magnam voluptatum nulla officia quae. Et sapiente autem minus officia molestiae enim.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(16,'Ut tempore omnis nihil veritatis vel.','Pearl Skiles DDS','https://picsum.photos/600/300?random=2','2009-05-11 05:11:08','<p>Fugit aliquam inventore unde aut est alias autem aut. Ut dignissimos asperiores laborum deserunt id consectetur tempore.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(17,'A maiores quia vitae id quo.','Major Waters','https://picsum.photos/600/300?random=68','2001-02-08 01:50:00','<p>Repellat deserunt itaque nostrum. Consequatur quae voluptatem porro odit dolor ea consequatur.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(18,'Est aperiam dolore necessitatibus exercitationem eligendi adipisci.','Floyd Bauch III','https://picsum.photos/600/300?random=10','2014-06-25 11:58:52','<p>Deserunt quo atque sapiente. Ut voluptas et dicta. Iure nemo ut facere culpa minus non velit sint.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(19,'Placeat molestias et dolores cumque quas veniam.','Helmer Boehm','https://picsum.photos/600/300?random=68','2004-06-23 17:32:34','<p>Culpa a voluptates aut natus totam. Consequatur enim iure accusantium unde incidunt nulla tempora. Ipsa optio ea assumenda perferendis facere in. Cum eos dolores tempora optio.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(20,'Similique temporibus asperiores voluptatem quo consequatur assumenda veritatis.','Annamae Turcotte II','https://picsum.photos/600/300?random=85','1998-08-25 10:22:18','<p>Hic natus omnis neque dolores. Porro deserunt quo non rerum. Quia deleniti et et vel quibusdam. Aperiam numquam ducimus incidunt distinctio dolores. Commodi aperiam est et est sit vel incidunt.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(21,'Autem quaerat accusantium nostrum quam.','Gilda Zemlak','https://picsum.photos/600/300?random=27','1999-07-12 19:56:26','<p>Eum est omnis optio aut ad deserunt. Aliquam eos accusantium aspernatur quas vel rerum.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(22,'Id ducimus ipsa esse qui voluptatem fuga consequuntur optio.','Esta Nolan','https://picsum.photos/600/300?random=43','1988-12-03 16:14:00','<p>Tenetur placeat ullam est. Consequatur facere laudantium voluptas et eaque. Error necessitatibus culpa ratione.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(23,'Et dolore eaque aliquam nemo.','Colin Runte','https://picsum.photos/600/300?random=78','2014-09-25 08:04:08','<p>Soluta cupiditate alias maiores ducimus ut non ut. Ipsum enim vero corporis quo sint. Aut dolor et veritatis dolore.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(24,'In ut velit iusto ipsa.','Leonel Bayer','https://picsum.photos/600/300?random=69','1989-10-29 04:59:03','<p>Molestias officia cupiditate unde minus ab similique esse. Libero quia accusantium asperiores mollitia fuga dicta itaque asperiores. At nihil velit ut laboriosam repellendus.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(25,'Velit accusamus tempore eveniet vel quisquam veniam omnis.','Dr. Noe Marks PhD','https://picsum.photos/600/300?random=62','2019-01-14 18:04:48','<p>Neque quia enim ut voluptatem. Natus et porro molestias asperiores quis doloremque. Eum aspernatur quisquam excepturi et. Et aperiam omnis aliquam minima mollitia dolores.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(26,'Hic commodi qui laboriosam ut et voluptatem saepe.','Raegan Rogahn','https://picsum.photos/600/300?random=79','2010-10-19 10:15:29','<p>Commodi dolore molestiae et tenetur possimus qui. Autem quia eos facilis est.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(27,'Ipsum voluptas dignissimos dicta temporibus atque veritatis suscipit.','Emilia Boyer','https://picsum.photos/600/300?random=70','2007-12-28 06:25:14','<p>Nihil nam eos magni facere dicta doloribus. Nobis veniam porro perferendis laborum odio voluptatum et. Iste illum doloremque quod est id impedit ex. Blanditiis quia pariatur itaque.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(28,'Eum eius id dolor soluta id.','Prof. Darrell Franecki','https://picsum.photos/600/300?random=62','2004-03-03 06:36:54','<p>Voluptas consectetur nisi est sint mollitia et repellat. Illum fugit cupiditate quia distinctio iure rem. Est est enim et est.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(29,'Et reiciendis officiis provident eaque ut magnam repellat.','Brown Bechtelar','https://picsum.photos/600/300?random=16','1982-02-16 07:06:47','<p>Magnam modi rerum cupiditate veritatis dolores. Autem dolorem corrupti illo sint vero sunt nobis. Quia reiciendis eos voluptatem provident consequuntur sit placeat.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(30,'Nesciunt dolor nihil dolorem aperiam inventore et porro neque.','Dr. Doug Jaskolski','https://picsum.photos/600/300?random=11','1993-08-22 08:10:50','<p>Aut eos fuga quibusdam minus mollitia tempore non. Rerum autem et rem. Praesentium est vel placeat accusantium. Accusamus iste beatae in neque.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(31,'Molestiae explicabo voluptatem ab est quibusdam.','Devin Jacobs','https://picsum.photos/600/300?random=23','2012-09-03 11:42:50','<p>Ab sunt similique enim consequatur amet. Accusamus quos ad quasi voluptatem. Sunt qui id odit enim perspiciatis. Atque sunt illum modi distinctio et.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(32,'Provident magni in molestias provident.','Lonie Boehm','https://picsum.photos/600/300?random=9','2004-10-12 11:14:49','<p>Nemo placeat quibusdam recusandae aliquid. Dolores minus consectetur sit dolor. Quia nostrum provident et. Id et omnis voluptas vel quia.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(33,'Ut dicta cum a porro aliquam.','Ebony Hackett','https://picsum.photos/600/300?random=96','2005-10-28 20:53:58','<p>Nulla sequi dolores ducimus voluptatibus eum. Enim similique voluptatem at maiores corrupti aut. Omnis fuga aut aperiam aut quam. Quia inventore voluptatibus sunt natus ut.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(34,'Eaque eum voluptas sed dolorem.','Lempi Hintz V','https://picsum.photos/600/300?random=97','1977-03-17 09:27:21','<p>Aliquam ipsam sed facere quaerat. Quo autem ad ea ut voluptates maxime cupiditate. Odio quia quisquam nesciunt dolore. Reiciendis ea nemo minus rerum eveniet perspiciatis.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(35,'Harum et quos molestiae commodi.','Regan Nader','https://picsum.photos/600/300?random=83','1990-05-22 21:31:23','<p>Officiis quaerat iste esse deserunt blanditiis vel eaque. Facilis velit dolores aperiam iusto. Perferendis officiis corrupti dolores quasi.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(36,'Voluptas quo officiis incidunt occaecati dolores vitae doloribus.','Murl Wisozk','https://picsum.photos/600/300?random=95','2011-10-05 01:43:43','<p>Voluptatem reiciendis consequatur molestiae accusantium. Expedita architecto velit et illum fugit voluptas. Ut qui delectus illo perspiciatis repudiandae.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(37,'Cumque magnam fugiat vero aut repellat.','Reymundo Kessler','https://picsum.photos/600/300?random=37','2011-03-21 16:53:05','<p>Ipsum qui ipsam aperiam delectus illo nobis alias. Ut ut ad libero consequatur voluptas consequuntur. Quasi velit modi distinctio ea fugiat dicta. Minus omnis iure illum nesciunt architecto minus.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(38,'Labore consequuntur repudiandae minus sed placeat.','Mr. Hazel Kuphal PhD','https://picsum.photos/600/300?random=73','1976-06-25 03:26:56','<p>Voluptatem harum animi soluta et eum quasi possimus. Qui dolore asperiores est possimus. Blanditiis in cumque autem vel. Occaecati est doloribus id inventore deserunt quos et.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(39,'Odio eos officiis delectus ut.','Alden Rutherford','https://picsum.photos/600/300?random=4','1998-03-29 20:21:23','<p>Mollitia eos quod ex laboriosam tempore debitis dignissimos. Qui modi corrupti dolores rem facere tempore. Sint recusandae nulla temporibus eaque in tempora perferendis. Ut rem quasi est fugiat.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(40,'Labore adipisci aspernatur architecto ea harum sunt.','Juston Mann','https://picsum.photos/600/300?random=48','2000-11-12 06:17:51','<p>Dolorum ex qui et asperiores iste molestiae quo. Quidem sunt vel sed provident voluptatum maiores qui natus. Autem beatae dolore ipsum. Sed rerum voluptatibus non perspiciatis mollitia qui sint.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(41,'In quaerat eos ipsam vel id impedit.','Mr. Garret Morar','https://picsum.photos/600/300?random=27','1977-04-08 03:39:40','<p>Eum architecto qui omnis consequuntur autem dolor. Adipisci quos culpa dolorum neque qui natus est. Nostrum beatae occaecati ducimus commodi molestiae ipsam sed sed.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(42,'Et consequuntur autem veritatis qui et.','Mr. Tomas Rohan','https://picsum.photos/600/300?random=24','1999-05-23 22:22:19','<p>Sed eos quia et enim dolores. Nostrum dolor pariatur nihil non doloribus quia odit facere. Ex temporibus qui optio voluptatem quia sunt repellat.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(43,'Optio et atque voluptatem nemo exercitationem vel.','Beulah Lynch V','https://picsum.photos/600/300?random=87','2017-05-11 18:27:40','<p>Quis et odit porro nemo reiciendis. Accusantium veniam at officia fugit et porro. Rerum quae esse harum quo velit. Sit non rem sed ipsum. Soluta nam et voluptates.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(44,'Necessitatibus iusto rerum dignissimos officia qui consequatur blanditiis.','Bernadette Frami','https://picsum.photos/600/300?random=6','1979-08-20 18:35:55','<p>Velit earum occaecati enim modi cupiditate odit id. Illum animi ea doloribus dolore. Libero dolorem rerum accusamus nulla.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(45,'Beatae est numquam possimus facere facilis voluptas.','Dr. Pierce Rohan','https://picsum.photos/600/300?random=68','1987-08-23 17:15:55','<p>Quia qui dicta debitis occaecati. Natus illum et aut dignissimos voluptas et voluptas. Illo ut ullam omnis. Ducimus laborum est quibusdam nihil voluptatem quia rem.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(46,'Omnis consequatur aut et laudantium.','Prof. Zoey Schimmel II','https://picsum.photos/600/300?random=78','1984-03-29 03:30:59','<p>Sint in odit odio. Velit rem voluptatem est doloremque quia. Enim eos recusandae quia ipsam rerum.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(47,'Et dicta officia veritatis facilis alias aut.','Dr. Alexa Jenkins V','https://picsum.photos/600/300?random=12','1977-02-15 16:00:23','<p>Unde dolores fugiat dolores corporis. Id ullam repellendus tenetur aperiam ab repellat. Neque enim ipsum suscipit rem nihil. Aliquid minus voluptas eos non quo.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(48,'Omnis deleniti inventore exercitationem voluptatem alias consequuntur blanditiis.','Devyn Douglas V','https://picsum.photos/600/300?random=85','2002-05-17 00:39:37','<p>Harum eaque quisquam dolorem nesciunt aut ea. Qui nulla minus sit sapiente totam. Nulla alias blanditiis maxime qui quas illo laboriosam. Culpa enim et temporibus animi.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(49,'Iste enim atque sapiente commodi optio est.','Miss Eryn Hickle PhD','https://picsum.photos/600/300?random=92','1981-03-26 05:14:44','<p>Culpa consequatur atque quidem esse est. In eum sunt quis maiores nobis blanditiis laborum. Nemo et voluptatibus laboriosam. Sed sit distinctio sequi adipisci.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(50,'Totam rerum rerum ut cum dicta ullam aspernatur.','Prof. Reece Simonis','https://picsum.photos/600/300?random=5','2000-03-04 21:56:03','<p>Qui quo fuga ut aut magni eveniet. Molestiae optio autem culpa id nemo. Mollitia et libero est quo qui similique ab quasi. Cum hic aut adipisci saepe natus eaque.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(51,'Ipsam consequatur blanditiis et aspernatur natus molestias illo.','Birdie Ernser','https://picsum.photos/600/300?random=6','1987-09-25 18:40:30','<p>Voluptas officia reiciendis ullam omnis nobis. Odit reiciendis et quidem nam. Aut ut quas exercitationem.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(52,'Enim laboriosam minima vero praesentium est aut.','Sandrine Altenwerth','https://picsum.photos/600/300?random=67','1980-01-10 23:00:30','<p>Vel aut ducimus sunt dolores error qui. Corporis voluptatem et aliquam tempora reiciendis maxime.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(53,'Voluptatem temporibus ut iure et tempore eos quia.','Charity Ortiz DDS','https://picsum.photos/600/300?random=14','1978-02-19 16:47:12','<p>Quis dolor vero eum quod. Ducimus qui sint est voluptatem ut. Omnis dicta est omnis aperiam sequi consequatur voluptatem.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(54,'Consequatur eius omnis ab soluta eos praesentium.','Cole Howe DDS','https://picsum.photos/600/300?random=89','2014-05-04 13:14:58','<p>Repellendus inventore magnam ut qui officia. Commodi rerum itaque eum nisi cum tenetur cumque. Dolores est quia architecto et quisquam blanditiis sit.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(55,'Dolores enim quas commodi aut aperiam.','Prof. Carmelo Cummerata','https://picsum.photos/600/300?random=11','2002-08-22 11:02:28','<p>Qui tenetur reiciendis consequuntur aut. In voluptatem qui sint nisi. Velit sapiente quia eum.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(56,'Laboriosam labore nemo quia architecto asperiores occaecati similique expedita.','Mr. Brett Bednar PhD','https://picsum.photos/600/300?random=55','2002-07-24 11:47:06','<p>Qui quam a eius veritatis quam error. Voluptatem atque atque distinctio quis ut nihil. Quaerat delectus unde inventore voluptas dolorem impedit et tempora. Et nihil ut est vel.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(57,'Incidunt nihil doloribus quas eveniet debitis ut.','Belle Schulist','https://picsum.photos/600/300?random=83','2003-04-29 00:17:49','<p>Dolore delectus neque ipsum quasi quasi ut veritatis. Sit enim omnis neque nostrum distinctio quis. Hic error ullam saepe pariatur fuga nostrum.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(58,'Optio quia deleniti praesentium omnis qui.','Ivy Boyer','https://picsum.photos/600/300?random=0','1988-10-07 09:53:56','<p>Autem sed ut ut nostrum sed et occaecati. Cupiditate error impedit et ducimus dolor nemo. Eveniet pariatur voluptatem et quas. Aperiam voluptatum consectetur nihil excepturi est.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(59,'Ipsam quo recusandae quia aut.','Eve Metz IV','https://picsum.photos/600/300?random=50','1973-10-17 21:39:59','<p>Est qui enim exercitationem culpa. Suscipit magnam consectetur debitis at. Veniam rerum est odit et sed rerum.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(60,'Dolorum sit est ea.','Griffin Smith','https://picsum.photos/600/300?random=5','2004-03-03 16:48:26','<p>Consequatur quam cupiditate itaque voluptatum. Non aliquam ut at quaerat sed. Enim et molestiae consectetur tempora rerum perferendis molestiae et.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(61,'Ex nesciunt est quaerat tempora.','Prof. Jason Kub IV','https://picsum.photos/600/300?random=39','1981-02-11 18:57:44','<p>Doloremque impedit iste dolorem vel ea vitae laborum. Eum minima ducimus maiores voluptatem id nisi. Odio recusandae autem officia ex fuga vero.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(62,'Amet qui aut impedit molestiae incidunt et sint.','Dr. Horacio Roob','https://picsum.photos/600/300?random=14','1999-06-05 11:42:38','<p>Consectetur error nam qui fugiat autem ullam. Quaerat est ut vero aut perferendis facere ut. Magni quam ex aut ipsa nam at consequatur temporibus.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(63,'Vel et quos itaque rerum rerum.','Torey Cartwright','https://picsum.photos/600/300?random=39','2009-04-08 13:22:14','<p>Reiciendis sequi doloribus exercitationem. Cupiditate maiores ex dolorum alias minima corporis. Et dolorum possimus debitis.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(64,'Sunt ad nihil quia reprehenderit porro doloremque voluptatibus.','Trycia Parker','https://picsum.photos/600/300?random=88','2015-05-03 04:06:35','<p>Velit occaecati aliquid quia vitae autem porro. Molestias eligendi temporibus sint. Fugiat consequatur dolores voluptate at ex et sequi.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(65,'Modi voluptatibus debitis nihil autem unde eveniet.','Trevion Bechtelar','https://picsum.photos/600/300?random=71','1980-09-04 04:42:31','<p>Modi natus quis alias cum sed explicabo. Voluptatibus accusamus dicta consequatur qui nesciunt. Quia cupiditate iusto ratione aut accusamus minima. Ipsa dolore ut mollitia quia.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(66,'Consequatur aut facilis mollitia laudantium.','Cleo Abbott','https://picsum.photos/600/300?random=21','1976-07-14 06:17:34','<p>Dolorem est nulla quo ut et qui aspernatur. Tempore quod omnis esse aut. Tenetur ullam aliquid doloremque aut corrupti. Totam laborum est sapiente distinctio.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(67,'Nam iure ad sed aspernatur ad ut.','Merle Friesen','https://picsum.photos/600/300?random=87','2016-06-04 23:40:50','<p>Quia velit dolores et modi quisquam vero neque. Quis placeat totam ratione natus reprehenderit voluptas. Sit aut magni labore ducimus ut voluptatum debitis.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(68,'Ut mollitia sit consequatur asperiores accusamus vel.','Guadalupe Cummerata DVM','https://picsum.photos/600/300?random=32','1975-06-15 07:59:33','<p>Aspernatur error hic enim fugiat nam officia. Tenetur eligendi quidem et est voluptas sequi asperiores. Veritatis et quibusdam repellat quis. Enim cum facilis ipsam sint ipsum laboriosam beatae.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(69,'Est rerum dolores quia.','Emory DuBuque','https://picsum.photos/600/300?random=91','1995-09-16 07:13:47','<p>Earum voluptatem eaque sed ipsam quas velit fugiat. Amet ipsa quisquam maiores consequatur in ipsam praesentium. Esse debitis perferendis neque minima nobis et labore.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(70,'Omnis consectetur accusamus ipsa consequatur ullam.','Cleveland Kuphal','https://picsum.photos/600/300?random=49','1988-08-24 22:11:17','<p>Assumenda est facere consequatur est eius nam velit. Aliquid qui doloribus quasi repellat dolores vero. Ut aut dolores quia cum enim labore. Mollitia enim voluptatem et et nobis ducimus quis.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(71,'Aspernatur odit nihil ut consequatur aperiam explicabo.','Dolly Kessler','https://picsum.photos/600/300?random=40','1973-02-26 06:23:51','<p>Ut voluptas quasi repellendus ut voluptates. Qui animi minima eligendi. Sit ullam temporibus rem inventore et voluptas suscipit. Nulla ea vitae dolor qui at.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(72,'Placeat dolores ex aliquid iure eos repudiandae.','Buck Funk','https://picsum.photos/600/300?random=19','2007-01-27 22:47:12','<p>Molestias eum eum velit et eos ea. Voluptates ut quia aspernatur maxime provident. Et dolorem similique fuga rem. Sapiente quo id quo beatae.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(73,'Eveniet voluptatem vitae quis adipisci sint ea.','Dr. Rhiannon Bradtke','https://picsum.photos/600/300?random=44','1995-05-19 09:22:17','<p>Commodi culpa labore et non magnam dolor. Aut nobis et qui alias ipsa cupiditate. Officia nesciunt suscipit est sunt pariatur quae sunt. Voluptatem aut occaecati expedita tempora laudantium.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(74,'Voluptatem debitis nisi ea consequatur nihil.','Kaylee Wyman','https://picsum.photos/600/300?random=92','1971-07-10 13:44:39','<p>Quis sint velit et voluptas nemo et similique. Corrupti sit doloremque nam quisquam qui iusto sunt quasi. Possimus quia qui nemo.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(75,'Ut et ratione dolorum impedit.','Rogers Stehr','https://picsum.photos/600/300?random=80','1975-01-26 22:56:42','<p>Aut rem officiis deleniti id quam. Voluptatum sapiente laboriosam ex. Sint non ut sint dolore. Et impedit non repellendus quis.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(76,'Quia cupiditate accusamus necessitatibus quibusdam sed corporis.','Russ Batz','https://picsum.photos/600/300?random=53','2021-04-11 22:13:13','<p>Earum sed sit sit laudantium illum nihil. Sapiente perspiciatis aut qui ipsum modi quia. Quia rerum recusandae et quis repellat.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(77,'Dolor fugiat aut nemo magni dolorem.','Kenna Kertzmann','https://picsum.photos/600/300?random=77','1973-02-06 19:43:15','<p>Reiciendis eius aut sed et eos et. Necessitatibus tempore commodi dolores veniam amet temporibus. Exercitationem rem praesentium quo dolor totam dolore. Molestiae eum provident maiores quia.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(78,'Quia id aut error.','Orval Russel','https://picsum.photos/600/300?random=82','1997-01-03 05:45:10','<p>A sapiente deserunt sapiente repellat. Placeat iure asperiores voluptatum. Fugiat molestiae debitis ut possimus voluptatem rerum.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(79,'Beatae impedit pariatur corrupti.','Verlie Hayes','https://picsum.photos/600/300?random=49','1992-10-24 09:09:22','<p>Sunt ipsum praesentium consequatur quos assumenda. Aliquid eos et ducimus a nemo placeat cupiditate. Dolores qui possimus rerum eum eveniet rem voluptatibus hic.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(80,'Fugiat cumque est eum explicabo dolorum est.','Jerald Purdy','https://picsum.photos/600/300?random=74','1974-03-01 19:42:31','<p>Facilis est ullam consequatur non architecto esse. Deleniti fuga dolores eos voluptatem quam. Ut vitae numquam aut occaecati.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(81,'Non eos qui temporibus explicabo rerum repellendus nisi.','Constance Jakubowski','https://picsum.photos/600/300?random=89','1997-01-06 14:45:10','<p>Deserunt sunt corrupti vero consequuntur deleniti nisi et. Alias laboriosam rem vel id eius. Voluptatem possimus ea nihil perferendis ipsum vitae quo incidunt. Sed sapiente eaque ut iste impedit.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(82,'Delectus molestias qui nam iusto dolorum.','Juwan Lebsack','https://picsum.photos/600/300?random=78','1988-05-29 03:34:52','<p>Voluptatem possimus ipsam eveniet sapiente odio suscipit earum sequi. Quia tempore beatae ex unde. Veritatis tenetur voluptas sit sapiente cum omnis voluptate.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(83,'Ut harum cupiditate ut est.','Mathilde Swift','https://picsum.photos/600/300?random=9','1972-01-15 08:02:31','<p>Eius magni perferendis earum pariatur nesciunt vel. Accusantium autem quisquam eaque quis excepturi. Porro et alias aut ut.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(84,'Ut voluptates delectus provident ea placeat provident rem.','Emiliano Casper','https://picsum.photos/600/300?random=70','1988-04-19 12:58:57','<p>Quia tenetur tenetur ratione. Voluptas est velit ipsam ipsum. Sunt id officia quidem consequuntur est. Dolorem ipsum enim voluptas ut est voluptas aut.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(85,'Aperiam quo ut totam nemo neque fuga quidem debitis.','Lauriane Baumbach II','https://picsum.photos/600/300?random=92','2021-05-24 06:18:01','<p>Dolorum sed commodi sit omnis sunt. Neque animi temporibus ut possimus aperiam dolores culpa enim. Consequuntur qui sed sint iste corrupti. Nihil aut libero eos sit repudiandae.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(86,'Illo sint aperiam unde aut voluptas adipisci omnis non.','Herminia Bogisich','https://picsum.photos/600/300?random=66','1994-01-18 16:09:58','<p>Impedit aut necessitatibus qui maiores. Laboriosam libero saepe est exercitationem architecto et. Facilis ea eligendi et consequatur facilis. Qui rem dolorem veniam non.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(87,'Est quod et qui consequatur.','Savannah McCullough','https://picsum.photos/600/300?random=79','1975-01-16 07:56:12','<p>Ab corrupti dolorum ea numquam. Est iusto qui ad in a error et vero. Dicta accusamus modi repellat ipsam.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(88,'Dolor cum accusantium et unde eaque.','Seth Koch','https://picsum.photos/600/300?random=55','1978-09-21 14:14:20','<p>Impedit et eius eius aperiam atque delectus. Voluptatum quae quisquam totam at. Non voluptas perferendis quisquam velit repellendus voluptas vel.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(89,'Omnis eum quaerat error aut veritatis est.','Mr. Nicholas Muller','https://picsum.photos/600/300?random=74','1972-04-11 21:44:50','<p>Eaque occaecati velit consequuntur. Nemo vitae nesciunt consequatur dolorum. Nam libero enim pariatur. Qui magni maxime ullam.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(90,'Nihil aut architecto quis corrupti eveniet.','Yvonne Douglas','https://picsum.photos/600/300?random=86','1971-08-06 13:45:39','<p>Vero beatae sed soluta repudiandae. Autem voluptates rerum ut voluptatem et delectus incidunt totam. Autem id aut saepe ipsa praesentium.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(91,'Cum eaque ipsum omnis blanditiis nobis iure cum.','Dameon Ferry DVM','https://picsum.photos/600/300?random=26','2017-11-14 15:31:41','<p>Ex est dolores nam mollitia inventore temporibus. Non aliquid commodi est consequatur. Fugiat repellendus in ad possimus.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(92,'Similique magni porro quidem illum.','Logan Hintz','https://picsum.photos/600/300?random=43','2004-08-30 04:35:05','<p>Aut optio et inventore hic omnis. Est et ut consequatur commodi. Neque vitae nisi consequuntur reprehenderit est. Ex quis sed eum sit maiores.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(93,'Eveniet rem blanditiis et quidem amet sit quos non.','Zachary Dietrich V','https://picsum.photos/600/300?random=2','1987-04-07 00:15:28','<p>Qui error a similique iste. Sit accusamus delectus autem quam natus ipsa voluptates. Expedita quo suscipit maxime officiis dolorem aut quia. Similique qui rerum reiciendis.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(94,'Voluptatem quod debitis labore deserunt beatae eos consequuntur.','Favian Moore','https://picsum.photos/600/300?random=70','1981-07-27 01:10:25','<p>Possimus voluptas quae quasi fugit possimus in consequatur. Quod molestiae non tempore harum iste nobis magni. Modi voluptatibus tempore necessitatibus animi.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(95,'Omnis quo voluptatum perferendis officiis ut culpa.','Miss Pinkie Daugherty','https://picsum.photos/600/300?random=36','2020-09-12 10:28:42','<p>Nostrum cumque suscipit fugit suscipit sint dolorem minima delectus. Laboriosam veniam et officia et. Maxime rerum minus fugiat quas. Eum voluptatem sed quo quidem exercitationem.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(96,'Ullam labore quod voluptatibus odio sapiente ducimus.','Mr. Arno Tremblay','https://picsum.photos/600/300?random=58','2013-12-25 02:41:00','<p>Veniam eum odio numquam repellat aperiam enim amet. Autem dolorem aperiam sit nulla illo et. Tempora cum qui hic quibusdam ut omnis excepturi ratione. Ad voluptatibus voluptas aliquam sit.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(97,'Temporibus dolorum quidem fuga provident omnis veritatis quia dolor.','Mac Smith III','https://picsum.photos/600/300?random=34','1990-07-24 15:36:34','<p>Aliquam at aut tempora quia aut accusantium. Aliquid qui quis velit iure ratione dolorem. Aut veniam ut quo quo occaecati nulla.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(98,'Reprehenderit magnam consequatur enim ullam voluptatem repellat.','Prof. Conner Wiza','https://picsum.photos/600/300?random=96','1995-03-12 04:47:19','<p>A facere in minima sit occaecati quod. Consequuntur aliquid ratione beatae numquam quo. Cupiditate nobis nisi quibusdam qui iste repellendus.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(99,'Omnis consectetur qui molestiae molestiae eum qui.','Kirk Pfannerstill','https://picsum.photos/600/300?random=68','1988-04-22 17:13:24','<p>Molestiae voluptate maxime omnis qui. Sunt repellendus temporibus eius nam sint voluptatum. Aut quibusdam reprehenderit aut sequi ex quae dolorem.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13'),(100,'Quaerat qui praesentium quasi reprehenderit nesciunt vitae repudiandae.','Roderick Feil','https://picsum.photos/600/300?random=72','1971-02-07 16:44:44','<p>Ea nesciunt vero voluptatum ea dolores. Iusto ipsam vitae sint ea et occaecati ducimus assumenda. Sunt nesciunt et est harum sit quo.</p>','2022-06-10 06:47:13','2022-06-10 06:47:13');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Economy','economy','2022-06-10 06:47:13','2022-06-10 06:47:13'),(2,'Sports','sports','2022-06-10 06:47:13','2022-06-10 06:47:13'),(3,'Lifestyle','lifestyle','2022-06-10 06:47:13','2022-06-10 06:47:13');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_06_09_174126_create_categories_table',1),(6,'2022_06_09_174326_create_articles_table',1),(7,'2022_06_09_180512_create_article_category_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2022-06-10 21:06:02
