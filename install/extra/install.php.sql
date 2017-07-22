-- MySQL dump 10.13  Distrib 5.7.18-15, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: temp
-- ------------------------------------------------------
-- Server version	5.7.18-15

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
/*!50717 SET @rocksdb_bulk_load_var_name='rocksdb_bulk_load' */;
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=?', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s USING @rocksdb_bulk_load_var_name */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Table structure for table `ach_bonus`
--

DROP TABLE IF EXISTS `ach_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ach_bonus` (
  `bonus_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_desc` mediumtext COLLATE utf8mb4_unicode_ci,
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `bonus_do` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`bonus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ach_bonus`
--

LOCK TABLES `ach_bonus` WRITE;
/*!40000 ALTER TABLE `ach_bonus` DISABLE KEYS */;
INSERT INTO `ach_bonus` VALUES (1,'Subtract 10GB From Your Download.',1,'10737418240'),(2,'Subtract 1GB From Your Download.',1,'1073741824'),(3,'Subtract 3GB From Your Download.',1,'3221225472'),(4,'Subtract 5GB From Your Download.',1,'5368709120'),(5,'Subtract 100MB From Your Download.',1,'107374182'),(6,'Subtract 300MB From Your Download.',1,'322122547'),(7,'Subtract 500MB From Your Download.',1,'536870910'),(8,'Subtract 1MB From Your Download.',1,'1073741'),(9,'Add 1GB to your Upload.',2,'1073741824'),(10,'Add 10GB to your Upload.',2,'10737418240'),(11,'Add 3GB to your Upload.',2,'3221225472'),(12,'Add 5GB to your Upload.',2,'5368709120'),(13,'Add 100MB to your Upload.',2,'107374182'),(14,'Add 300MB to your Upload.',2,'322122547'),(15,'Add 500MB to your Upload.',2,'536870910'),(16,'Add 1MB to your Upload.',2,'1073741'),(17,'Add 1 Invite.',3,'1'),(18,'Add 2 Invites.',3,'2'),(19,'Add 100 Bonus Points to your Total.',4,'100'),(20,'Add 200 Bonus Points to your Total.',4,'200'),(21,'Add 500 Bonus Points to your Total.',4,'500'),(22,'Add 750 Bonus Points to your Total.',4,'750'),(23,'Add 1000 Bonus Points to your Total.',4,'1000'),(24,'Add 50 Bonus Points to your Total.',4,'50'),(25,'Add 25 Bonus Points to your Total.',4,'25'),(26,'Add 75 Bonus Points to your Total.',4,'75'),(27,'Add 10 Bonus Points to your Total.',4,'10'),(28,'Nothing',5,'0'),(29,'Nothing',5,'0'),(30,'Nothing',5,'0'),(31,'Nothing',5,'0'),(32,'Nothing',5,'0');
/*!40000 ALTER TABLE `ach_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achievementist`
--

DROP TABLE IF EXISTS `achievementist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievementist` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `achievname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clienticon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `hostname` (`achievname`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievementist`
--

LOCK TABLES `achievementist` WRITE;
/*!40000 ALTER TABLE `achievementist` DISABLE KEYS */;
INSERT INTO `achievementist` VALUES (1,'First Birthday','Been a member for at least 1 year.','birthday1.png'),(2,'Second Birthday','Been a member for a period of at least 2 years.','birthday2.png'),(5,'Third Birthday','Been a member for a period of at least 3 years.','birthday3.png'),(6,'Fourth Birthday','Been a member for a period of at least 4 years.','birthday4.png'),(7,'Fifth Birthday','Been a member for a period of at least 5 years.','birthday5.png'),(8,'Uploader LVL1','Uploaded at least 1 torrent to the site.','ul1.png'),(9,'Uploader LVL2','Uploaded at least 50 torrents to the site.','ul2.png'),(10,'Uploader LVL3','Uploaded at least 100 torrents to the site.','ul3.png'),(11,'Uploader LVL4','Uploaded at least 200 torrents to the site.','ul4.png'),(12,'Uploader LVL5','Uploaded at least 300 torrents to the site.','ul5.png'),(13,'Uploader LVL6','Uploaded at least 500 torrents to the site.','ul6.png'),(14,'Uploader LVL7','Uploaded at least 800 torrents to the site.','ul7.png'),(15,'Uploader LVL8','Uploaded at least 1000 torrents to the site.','ul8.png'),(16,'Uploader LVL9','Uploaded at least 1500 torrents to the site.','ul9.png'),(17,'Uploader LVL10','Uploaded at least 2000 torrents to the site.','ul10.png'),(18,'Inviter LVL1','Invited at least 1 new user to the site.','invite1.png'),(19,'Inviter LVL2','Invited at least 2 new users to the site.','invite2.png'),(20,'Inviter LVL3','Invited at least 3 new users to the site.','invite3.png'),(21,'Inviter LVL4','Invited at least 5 new users to the site.','invite4.png'),(22,'Inviter LVL5','Invited at least 10 new users to the site.','invite5.png'),(23,'Forum Poster LVL1','Made at least 1 post in the forums.','fpost1.png'),(24,'Forum Poster LVL2','Made at least 25 posts in the forums.','fpost2.png'),(25,'Forum Poster LVL3','Made at least 50 posts in the forums.','fpost3.png'),(26,'Forum Poster LVL4','Made at least 100 posts in the forums.','fpost4.png'),(27,'Forum Poster LVL5','Made at least 250 posts in the forums.','fpost5.png'),(28,'Avatar Setter','User has successfully set an avatar on profile settings.','piratesheep.png'),(29,'Old Virginia','At the age of 25 still remains a virgin.  (Custom Achievement.)','virgin.png'),(30,'Forum Poster LVL6','Made at least 500 posts in the forums.','fpost6.png'),(31,'Stick Em Up LVL1','Uploading at least 1 sticky torrent to the site.','sticky1.png'),(32,'Stick Em Up LVL2','Uploading at least 5 sticky torrents to the site.','sticky2.png'),(33,'Stick Em Up LVL3','Uploading at least 10 sticky torrents.','sticky3.png'),(34,'Stick EM Up LVL4','Uploading at least 25 sticky torrents.','sticky4.png'),(35,'Stick EM Up LVL5','Uploading at least 50 sticky torrents.','sticky5.png'),(36,'Gag Da B1tch','Getting gagged like he\'s Adams Man!','gagged.png'),(37,'Signature Setter','User has successfully set a signature on profile settings.','signature.png'),(38,'Corruption Counts','Transferred at least 1 byte of corrupt data incoming.','corrupt.png'),(40,'7 Day Seeder','Seeded a snatched torrent for a total of at least 7 days.','7dayseed.png'),(41,'14 Day Seeder','Seeded a snatched torrent for a total of at least 14 days.','14dayseed.png'),(42,'21 Day Seeder','Seeded a snatched torrent for a total of at least 21 days.','21dayseed.png'),(43,'28 Day Seeder','Seeded a snatched torrent for a total of at least 28 days.','28dayseed.png'),(44,'45 Day Seeder','Seeded a snatched torrent for a total of at least 45 days.','45dayseed.png'),(45,'60 Day Seeder','Seeded a snatched torrent for a total of at least 60 days.','60dayseed.png'),(46,'90 Day Seeder','Seeded a snatched torrent for a total of at least 90 days.','90dayseed.png'),(47,'120 Day Seeder','Seeded a snatched torrent for a total of at least 120 days.','120dayseed.png'),(48,'200 Day Seeder','Seeded a snatched torrent for a total of at least 200 days.','200dayseed.png'),(49,'1 Year Seeder','Seeded a snatched torrent for a total of at least 1 Year.','365dayseed.png'),(50,'Sheep Fondler','User has been caught touching the sheep at least 1 time.','sheepfondler.png'),(51,'Forum Topic Starter LVL1','Started at least 1 topic in the forums.','ftopic1.png'),(52,'Forum Topic Starter LVL2','Started at least 10 topics in the forums.','ftopic2.png'),(53,'Forum Topic Starter LVL3','Started at least 25 topics in the forums.','ftopic3.png'),(55,'Forum Topic Starter LVL4','Started at least 50 topics in the forums.','ftopic4.png'),(57,'Forum Topic Starter LVL5','Started at least 75 topics in the forums.','ftopic5.png'),(58,'Bonus Banker LVL1','Earned at least 1 bonus point.','bonus1.png'),(60,'Bonus Banker LVL2','Earned at least 100 bonus points.','bonus2.png'),(61,'Bonus Banker LVL3','Earned at least 500 bonus points.','bonus3.png'),(63,'Bonus Banker LVL4','Earned at least 1000 bonus points.','bonus4.png'),(65,'Bonus Banker LVL5','Earned at least 2000 bonus points.','bonus5.png'),(66,'Bonus Banker LVL6','Earned at least 5000 bonus points.','bonus6.png'),(68,'Bonus Banker LVL7','Earned at least 10000 bonus points.','bonus7.png'),(70,'Bonus Banker LVL8','Earned at least 30000 bonus points.','bonus9.png'),(71,'Bonus Banker LVL9','Earned at least 70000 bonus points.','bonus10.png'),(72,'Bonus Banker LVL10','Earned at least 100000 bonus points.','bonus8.png'),(73,'Bonus Banker LVL11','Earned at least 1000000 bonus points.','bonus11.png'),(74,'Christmas Achievement','User has found the Christmas Achievement in the advent calendar page.','christmas.png'),(75,'Advent Playa','Played the Advent Calendar all 25 days straight.','xmasdays.png'),(76,'Request Filler LVL1','Filled at least 1 request from the request page.','reqfiller1.png'),(77,'Request Filler LVL2','Filled at least 5 requests from the request page.','reqfiller2.png'),(78,'Request Filler LVL3','Filled at least 10 requests from the request page.','reqfiller3.png'),(79,'Request Filler LVL4','Filled at least 25 requests from the request page.','reqfiller4.png'),(80,'Request Filler LVL5','Filled at least 50 requests from the request page.','reqfiller5.png'),(81,'Adam Punker','Officially Punked Adam in the proper forum thread.','adampnkr.png'),(82,'Shout Spammer LVL1','Made at least 10 posts to the shoutbox today.','spam1.png'),(83,'Shout Spammer LVL2','Made at least 25 posts to the shoutbox today.','spam2.png'),(84,'Shout Spammer LVL3','Made at least 50 posts to the shoutbox today.','spam3.png'),(85,'Shout Spammer LVL4','Made at least 75 posts to the shoutbox today.','spam4.png'),(86,'Shout Spammer LVL5','Made at least 100 posts to the shoutbox today.','spam5.png');
/*!40000 ALTER TABLE `achievementist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievements` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(5) NOT NULL DEFAULT '0',
  `achievement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievementid` int(5) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_main`
--

DROP TABLE IF EXISTS `announcement_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement_main` (
  `main_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) NOT NULL DEFAULT '0',
  `sql_query` mediumtext COLLATE utf8mb4_unicode_ci,
  `subject` mediumtext COLLATE utf8mb4_unicode_ci,
  `body` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`main_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_main`
--

LOCK TABLES `announcement_main` WRITE;
/*!40000 ALTER TABLE `announcement_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_process`
--

DROP TABLE IF EXISTS `announcement_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement_process` (
  `process_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `main_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`process_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_process`
--

LOCK TABLES `announcement_process` WRITE;
/*!40000 ALTER TABLE `announcement_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added` int(11) NOT NULL DEFAULT '0',
  `extension` enum('zip','rar') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'zip',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `times_downloaded` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avps`
--

DROP TABLE IF EXISTS `avps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avps` (
  `arg` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value_s` mediumtext COLLATE utf8mb4_unicode_ci,
  `value_i` int(11) NOT NULL DEFAULT '0',
  `value_u` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avps`
--

LOCK TABLES `avps` WRITE;
/*!40000 ALTER TABLE `avps` DISABLE KEYS */;
INSERT INTO `avps` VALUES ('bestfilmofweek','0',1402495922,20),('inactivemail','1',1341778326,1),('last24','0',50,1303875421),('loadlimit','0.39-1404324894',0,0),('sitepot','0',0,1359295634);
/*!40000 ALTER TABLE `avps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bannedemails`
--

DROP TABLE IF EXISTS `bannedemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bannedemails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` int(11) NOT NULL,
  `addedby` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bannedemails`
--

LOCK TABLES `bannedemails` WRITE;
/*!40000 ALTER TABLE `bannedemails` DISABLE KEYS */;
INSERT INTO `bannedemails` VALUES (1,1282299331,1,'Fake provider','*@emailias.com'),(2,1282299331,1,'Fake provider','*@e4ward.com'),(3,1282299331,1,'Fake provider','*@dumpmail.de'),(4,1282299331,1,'Fake provider','*@dontreg.com'),(5,1282299331,1,'Fake provider','*@disposeamail.com'),(6,1282299331,1,'Fake provider','*@antispam24.de'),(7,1282299331,1,'Fake provider','*@trash-mail.de'),(8,1282299331,1,'Fake provider','*@spambog.de'),(9,1282299331,1,'Fake provider','*@spambog.com'),(10,1282299331,1,'Fake provider','*@discardmail.com'),(11,1282299331,1,'Fake provider','*@discardmail.de'),(12,1282299331,1,'Fake provider','*@mailinator.com'),(13,1282299331,1,'Fake provider','*@wuzup.net'),(14,1282299331,1,'Fake provider','*@junkmail.com'),(15,1282299331,1,'Fake provider','*@clarkgriswald.net'),(16,1282299331,1,'Fake provider','*@2prong.com'),(17,1282299331,1,'Fake provider','*@jrwilcox.com'),(18,1282299331,1,'Fake provider','*@10minutemail.com'),(19,1282299331,1,'Fake provider','*@pookmail.com'),(20,1282299331,1,'Fake provider','*@golfilla.info'),(21,1282299331,1,'Fake provider','*@afrobacon.com'),(22,1282299331,1,'Fake provider','*@senseless-entertainment.com'),(23,1282299331,1,'Fake provider','*@put2.net'),(24,1282299331,1,'Fake provider','*@temporaryinbox.com'),(25,1282299331,1,'Fake provider','*@slaskpost.se'),(26,1282299331,1,'Fake provider','*@haltospam.com'),(27,1282299331,1,'Fake provider','*@h8s.org'),(28,1282299331,1,'Fake provider','*@ipoo.org'),(29,1282299331,1,'Fake provider','*@oopi.org'),(30,1282299331,1,'Fake provider','*@poofy.org'),(31,1282299331,1,'Fake provider','*@jetable.org'),(32,1282299331,1,'Fake provider','*@kasmail.com'),(33,1282299331,1,'Fake provider','*@mail-filter.com'),(34,1282299331,1,'Fake provider','*@maileater.com'),(35,1282299331,1,'Fake provider','*@mailexpire.com'),(36,1282299331,1,'Fake provider','*@mailnull.com'),(37,1282299331,1,'Fake provider','*@mailshell.com'),(38,1282299331,1,'Fake provider','*@mymailoasis.com'),(39,1282299331,1,'Fake provider','*@mytrashmail.com'),(40,1282299331,1,'Fake provider','*@mytrashmail.net'),(41,1282299331,1,'Fake provider','*@shortmail.net'),(42,1282299331,1,'Fake provider','*@sneakemail.com'),(43,1282299331,1,'Fake provider','*@sofort-mail.de'),(44,1282299331,1,'Fake provider','*@spamcon.org'),(45,1282299331,1,'Fake provider','*@spamday.com'),(46,1282299331,1,'fake provider','*@spamex.com'),(47,1282299307,1,'fake provider','*@spamgourmet.com'),(48,1282299289,1,'fake provider','*@spamhole.com'),(49,1282299331,1,'Fake provider','*@spammotel.com'),(50,1282299331,1,'Fake provider','*@tempemail.net'),(51,1282299331,1,'Fake provider','*@tempinbox.com'),(52,1282299331,1,'Fake provider','*@throwaway.de'),(53,1282299331,1,'Fake provider','*@woodyland.org'),(54,1282299331,1,'Fake provider','*@trbvm.com');
/*!40000 ALTER TABLE `bannedemails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` int(11) NOT NULL,
  `addedby` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first` bigint(11) DEFAULT '0',
  `last` bigint(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `first_last` (`first`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bans`
--

LOCK TABLES `bans` WRITE;
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blackjack`
--

DROP TABLE IF EXISTS `blackjack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blackjack` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `status` enum('playing','waiting') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'playing',
  `cards` mediumtext COLLATE utf8mb4_unicode_ci,
  `date` int(11) DEFAULT '0',
  `gameover` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blackjack`
--

LOCK TABLES `blackjack` WRITE;
/*!40000 ALTER TABLE `blackjack` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackjack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blackjack1`
--

DROP TABLE IF EXISTS `blackjack1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blackjack1` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `status` enum('playing','waiting') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'playing',
  `cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dealer_cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) DEFAULT '0',
  `gameover` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `ddown` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`userid`),
  KEY `status_gameover_date` (`status`,`gameover`,`date`),
  KEY `status` (`status`),
  KEY `date` (`date`),
  KEY `ddown` (`ddown`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blackjack1`
--

LOCK TABLES `blackjack1` WRITE;
/*!40000 ALTER TABLE `blackjack1` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackjack1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blackjack2`
--

DROP TABLE IF EXISTS `blackjack2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blackjack2` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `status` enum('playing','waiting') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'playing',
  `cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dealer_cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) DEFAULT '0',
  `gameover` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `ddown` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`userid`),
  KEY `status_gameover_date` (`status`,`gameover`,`date`),
  KEY `status` (`status`),
  KEY `date` (`date`),
  KEY `ddown` (`ddown`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blackjack2`
--

LOCK TABLES `blackjack2` WRITE;
/*!40000 ALTER TABLE `blackjack2` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackjack2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blackjack3`
--

DROP TABLE IF EXISTS `blackjack3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blackjack3` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `status` enum('playing','waiting') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'playing',
  `cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dealer_cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) DEFAULT '0',
  `gameover` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `ddown` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`userid`),
  KEY `status_gameover_date` (`status`,`gameover`,`date`),
  KEY `status` (`status`),
  KEY `date` (`date`),
  KEY `ddown` (`ddown`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blackjack3`
--

LOCK TABLES `blackjack3` WRITE;
/*!40000 ALTER TABLE `blackjack3` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackjack3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blackjack4`
--

DROP TABLE IF EXISTS `blackjack4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blackjack4` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `status` enum('playing','waiting') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'playing',
  `cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dealer_cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) DEFAULT '0',
  `gameover` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `ddown` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`userid`),
  KEY `status_gameover_date` (`status`,`gameover`,`date`),
  KEY `status` (`status`),
  KEY `date` (`date`),
  KEY `ddown` (`ddown`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blackjack4`
--

LOCK TABLES `blackjack4` WRITE;
/*!40000 ALTER TABLE `blackjack4` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackjack4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blackjack5`
--

DROP TABLE IF EXISTS `blackjack5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blackjack5` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `status` enum('playing','waiting') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'playing',
  `cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dealer_cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) DEFAULT '0',
  `gameover` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `ddown` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`userid`),
  KEY `status_gameover_date` (`status`,`gameover`,`date`),
  KEY `status` (`status`),
  KEY `date` (`date`),
  KEY `ddown` (`ddown`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blackjack5`
--

LOCK TABLES `blackjack5` WRITE;
/*!40000 ALTER TABLE `blackjack5` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackjack5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blackjack6`
--

DROP TABLE IF EXISTS `blackjack6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blackjack6` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `status` enum('playing','waiting') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'playing',
  `cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dealer_cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) DEFAULT '0',
  `gameover` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `ddown` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`userid`),
  KEY `status_gameover_date` (`status`,`gameover`,`date`),
  KEY `status` (`status`),
  KEY `date` (`date`),
  KEY `ddown` (`ddown`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blackjack6`
--

LOCK TABLES `blackjack6` WRITE;
/*!40000 ALTER TABLE `blackjack6` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackjack6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blackjack7`
--

DROP TABLE IF EXISTS `blackjack7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blackjack7` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `status` enum('playing','waiting') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'playing',
  `cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dealer_cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) DEFAULT '0',
  `gameover` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `ddown` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`userid`),
  KEY `status_gameover_date` (`status`,`gameover`,`date`),
  KEY `status` (`status`),
  KEY `date` (`date`),
  KEY `ddown` (`ddown`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blackjack7`
--

LOCK TABLES `blackjack7` WRITE;
/*!40000 ALTER TABLE `blackjack7` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackjack7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blackjack8`
--

DROP TABLE IF EXISTS `blackjack8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blackjack8` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `status` enum('playing','waiting') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'playing',
  `cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dealer_cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) DEFAULT '0',
  `gameover` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `ddown` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`userid`),
  KEY `status_gameover_date` (`status`,`gameover`,`date`),
  KEY `status` (`status`),
  KEY `date` (`date`),
  KEY `ddown` (`ddown`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blackjack8`
--

LOCK TABLES `blackjack8` WRITE;
/*!40000 ALTER TABLE `blackjack8` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackjack8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blackjack_history`
--

DROP TABLE IF EXISTS `blackjack_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blackjack_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(11) DEFAULT '0',
  `game` int(11) NOT NULL DEFAULT '0',
  `player1_userid` int(11) NOT NULL DEFAULT '0',
  `player1_points` int(11) NOT NULL DEFAULT '0',
  `player1_cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `player2_points` int(11) NOT NULL DEFAULT '0',
  `player2_userid` int(11) NOT NULL DEFAULT '0',
  `player2_cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game` (`game`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blackjack_history`
--

LOCK TABLES `blackjack_history` WRITE;
/*!40000 ALTER TABLE `blackjack_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackjack_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `blockid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonus`
--

DROP TABLE IF EXISTS `bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonus` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `bonusname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` decimal(10,1) NOT NULL DEFAULT '0.0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `art` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menge` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pointspool` decimal(10,1) NOT NULL DEFAULT '1.0',
  `enabled` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'This will determined a switch if the bonus is enabled or not! enabled by default',
  `minpoints` decimal(10,1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonus`
--

LOCK TABLES `bonus` WRITE;
/*!40000 ALTER TABLE `bonus` DISABLE KEYS */;
INSERT INTO `bonus` VALUES (1,'1.0GB Uploaded',275.0,'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.','traffic',1073741824,1.0,'yes',275.0),(2,'2.5GB Uploaded',350.0,'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.','traffic',2684354560,1.0,'yes',350.0),(3,'5GB Uploaded',550.0,'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.','traffic',5368709120,1.0,'yes',550.0),(4,'3 Invites',650.0,'With enough bonus points acquired, you are able to exchange them for a few invites. The points are then removed from your Bonus Bank and the invitations are added to your invites amount.','invite',3,1.0,'yes',650.0),(5,'Custom Title!',50.0,'For only 50.0 Karma Bonus Points you can buy yourself a custom title. the only restrictions are no foul or offensive language or userclass can be entered. The points are then removed from your Bonus Bank and your special title is changed to the title of your choice','title',1,1.0,'yes',50.0),(6,'VIP Status',5000.0,'With enough bonus points acquired, you can buy yourself VIP status for one month. The points are then removed from your Bonus Bank and your status is changed.','class',1,1.0,'yes',5000.0),(7,'Give A Karma Gift',100.0,'Well perhaps you dont need the upload credit, but you know somebody that could use the Karma boost! You are now able to give your Karma credits as a gift! The points are then removed from your Bonus Bank and added to the account of a user of your choice!\r\n\r\nAnd they recieve a PM with all the info as well as who it came from...','gift_1',1073741824,1.0,'yes',100.0),(8,'Custom Smilies',300.0,'With enough bonus points acquired, you can buy yourself a set of custom smilies for one month! The points are then removed from your Bonus Bank and with a click of a link, your new smilies are available whenever you post or comment!','smile',1,1.0,'yes',300.0),(9,'Remove Warning',1000.0,'With enough bonus points acquired... So you have been naughty... tsk tsk :P Yep now for the Low Low price of only 1000 points you can have that warning taken away lol.!','warning',1,1.0,'yes',1000.0),(10,'Ratio Fix',500.0,'With enough bonus points acquired, you can bring the ratio of one torrent to a 1 to 1 ratio! The points are then removed from your Bonus Bank and your status is changed.','ratio',1,1.0,'yes',500.0),(11,'FreeLeech',30000.0,'The Ultimate exchange if you have over 30000 Points - Make the tracker freeleech for everyone for 3 days: Upload will count but no download.\r\nIf you dont have enough points you can donate certain amount of your points until it accumulates. Everybodys karma counts!','freeleech',1,5000.0,'yes',1.0),(12,'Doubleupload',30000.0,'The ultimate exchange if you have over 30000 points - Make the tracker double upload for everyone for 3 days: Upload will count double.\r\nIf you dont have enough points you can donate certain amount of your points until it accumulates. Everybodys karma counts!','doubleup',1,1000.0,'yes',1.0),(13,'Halfdownload',30000.0,'The ultimate exchange if you have over 30000 points - Make the tracker Half Download for everyone for 3 days: Download will count only half.\r\nIf you dont have enough points you can donate certain amount of your points until it accumulates. Everybodys karma counts!','halfdown',1,1000.0,'yes',1.0),(14,'1.0GB Download Removal',150.0,'With enough bonus points acquired, you are able to exchange them for a Download Credit Removal. The points are then removed from your Bonus Bank and the download credit is removed from your total downloaded amount.','traffic2',1073741824,1.0,'yes',150.0),(15,'2.5GB Download Removal',300.0,'With enough bonus points acquired, you are able to exchange them for a Download Credit Removal. The points are then removed from your Bonus Bank and the download credit is removed from your total downloaded amount.','traffic2',2684354560,1.0,'yes',300.0),(16,'5GB Download Removal',500.0,'With enough bonus points acquired, you are able to exchange them for a Download Credit Removal. The points are then removed from your Bonus Bank and the download credit is removed from your total downloaded amount.','traffic2',5368709120,1.0,'yes',500.0),(17,'Anonymous Profile',750.0,'With enough bonus points acquired, you are able to exchange them for Anonymous profile for 14 days. The points are then removed from your Bonus Bank and the Anonymous switch will show on your profile.','anonymous',1,1.0,'yes',750.0),(18,'Freeleech for 1 Year',80000.0,'With enough bonus points acquired, you are able to exchange them for Freelech for one year for yourself. The points are then removed from your Bonus Bank and the freeleech will be enabled on your account.','freeyear',1,1.0,'yes',80000.0),(19,'3 Freeleech Slots',1000.0,'With enough bonus points acquired, you are able to exchange them for some Freeleech Slots. The points are then removed from your Bonus Bank and the slots are added to your free slots amount.','freeslots',3,0.0,'yes',1000.0),(20,'200 Bonus Points - Invite trade-in',1.0,'If you have 1 invite and dont use them click the button to trade them in for 200 Bonus Points.','itrade',200,0.0,'yes',0.0),(21,'Freeslots - Invite trade-in',1.0,'If you have 1 invite and dont use them click the button to trade them in for 2 Free Slots.','itrade2',2,0.0,'yes',0.0),(22,'Pirate Rank for 2 weeks',50000.0,'With enough bonus points acquired, you are able to exchange them for Pirates status and Freeleech for 2 weeks. The points are then removed from your Bonus Bank and the Pirate icon will be displayed throughout, freeleech will then be enabled on your account.','pirate',1,1.0,'yes',50000.0),(23,'King Rank for 1 month',70000.0,'With enough bonus points acquired, you are able to exchange them for Kings status and Freeleech for 1 month. The points are then removed from your Bonus Bank and the King icon will be displayed throughout,  freeleech will then be enabled on your account.','king',1,1.0,'yes',70000.0),(24,'10GB Uploaded',1000.0,'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.','traffic',10737418240,0.0,'yes',1000.0),(25,'25GB Uploaded',2000.0,'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.','traffic',26843545600,0.0,'yes',2000.0),(26,'50GB Uploaded',4000.0,'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.','traffic',53687091200,0.0,'yes',4000.0),(27,'100GB Uploaded',8000.0,'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.','traffic',107374182400,0.0,'yes',8000.0),(28,'520GB Uploaded',40000.0,'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.','traffic',558345748480,0.0,'yes',40000.0),(29,'1TB Uploaded',80000.0,'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.','traffic',1099511627776,0.0,'yes',80000.0),(30,'Parked Profile',75000.0,'With enough bonus points acquired, you are able to unlock the parked option within your profile which will ensure your account will be safe. The points are then removed from your Bonus Bank and the parked switch will show on your profile.','parked',1,1.0,'yes',75000.0),(31,'Pirates bounty',50000.0,'With enough bonus points acquired, you are able to exchange them for Pirates bounty which will select random users and deduct random amount of reputation points from them. The points are removed from your Bonus Bank and the reputation points will be deducted from the selected users then credited to you.','bounty',1,1.0,'yes',50000.0),(32,'100 Reputation points',40000.0,'With enough bonus points acquired, you are able to exchange them for some reputation points. The points are then removed from your Bonus Bank and the rep is added to your total reputation amount.','reputation',100,0.0,'yes',40000.0),(33,'Userblocks',50000.0,'With enough bonus points acquired and a minimum of 50 reputation points, you are able to exchange them for userblocks access. The points are then removed from your Bonus Bank and the user blocks configuration link will appear on your menu.','userblocks',0,0.0,'yes',50000.0),(34,'Bump a Torrent!',5000.0,'With enough bonus points acquired, you can Bump a torrent back to page 1 of the torrents page, bringing it back to life! \r\nThe torrent will then appear on page 1 again! The points are then removed from your Bonus Bank and the torrent is Bumped!\r\n** note there is an option to either view Bumped torrents or not.','bump',1,0.0,'yes',5000.0),(35,'Immunity',150000.0,'With enough bonus points acquired, you are able to exchange them for immunity for one year. The points are then removed from your Bonus Bank and the immunity switch is enabled on your account.','immunity',1,0.0,'yes',150000.0),(36,'User Unlocks',500.0,'With enough bonus points acquired and a minimum of 50 reputation points, you are able to exchange them for bonus locked moods. The points are then removed from your Bonus Bank and the user unlocks configuration link will appear on your menu.','userunlock',1,0.0,'yes',500.0);
/*!40000 ALTER TABLE `bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonuslog`
--

DROP TABLE IF EXISTS `bonuslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonuslog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `donation` decimal(10,1) NOT NULL,
  `type` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_at` int(11) NOT NULL,
  KEY `id` (`id`),
  KEY `added_at` (`added_at`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='log of contributors towards freeleech etc...';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonuslog`
--

LOCK TABLES `bonuslog` WRITE;
/*!40000 ALTER TABLE `bonuslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonuslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmarks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `torrentid` int(10) unsigned NOT NULL DEFAULT '0',
  `private` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarks`
--

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sender` int(10) NOT NULL DEFAULT '0',
  `added` int(12) NOT NULL DEFAULT '0',
  `priority` enum('low','high','veryhigh') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'low',
  `problem` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` enum('fixed','ignored','na') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'na',
  `staff` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `points` int(11) NOT NULL DEFAULT '0',
  `pic` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (1,2,'2p.bmp'),(2,3,'3p.bmp'),(3,4,'4p.bmp'),(4,5,'5p.bmp'),(5,6,'6p.bmp'),(6,7,'7p.bmp'),(7,8,'8p.bmp'),(8,9,'9p.bmp'),(9,10,'10p.bmp'),(10,10,'vp.bmp'),(11,10,'dp.bmp'),(12,10,'kp.bmp'),(13,1,'tp.bmp'),(14,2,'2b.bmp'),(15,3,'3b.bmp'),(16,4,'4b.bmp'),(17,5,'5b.bmp'),(18,6,'6b.bmp'),(19,7,'7b.bmp'),(20,8,'8b.bmp'),(21,9,'9b.bmp'),(22,10,'10b.bmp'),(23,10,'vb.bmp'),(24,10,'db.bmp'),(25,10,'kb.bmp'),(26,1,'tb.bmp'),(27,2,'2k.bmp'),(28,3,'3k.bmp'),(29,4,'4k.bmp'),(30,5,'5k.bmp'),(31,6,'6k.bmp'),(32,7,'7k.bmp'),(33,8,'8k.bmp'),(34,9,'9k.bmp'),(35,10,'10k.bmp'),(36,10,'vk.bmp'),(37,10,'dk.bmp'),(38,10,'kk.bmp'),(39,1,'tk.bmp'),(40,2,'2c.bmp'),(41,3,'3c.bmp'),(42,4,'4c.bmp'),(43,5,'5c.bmp'),(44,6,'6c.bmp'),(45,7,'7c.bmp'),(46,8,'8c.bmp'),(47,9,'9c.bmp'),(48,10,'10c.bmp'),(49,10,'vc.bmp'),(50,10,'dc.bmp'),(51,10,'kc.bmp'),(52,1,'tc.bmp');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casino`
--

DROP TABLE IF EXISTS `casino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casino` (
  `userid` int(10) NOT NULL DEFAULT '0',
  `win` bigint(20) NOT NULL DEFAULT '0',
  `lost` bigint(20) NOT NULL DEFAULT '0',
  `trys` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0',
  `enableplay` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `deposit` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casino`
--

LOCK TABLES `casino` WRITE;
/*!40000 ALTER TABLE `casino` DISABLE KEYS */;
/*!40000 ALTER TABLE `casino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casino_bets`
--

DROP TABLE IF EXISTS `casino_bets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casino_bets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT '0',
  `proposed` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `challenged` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` bigint(20) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `winner` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casino_bets`
--

LOCK TABLES `casino_bets` WRITE;
/*!40000 ALTER TABLE `casino_bets` DISABLE KEYS */;
/*!40000 ALTER TABLE `casino_bets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` mediumint(5) NOT NULL DEFAULT '-1',
  `tabletype` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Apps','cat_appz.png','No Description',13,3),(2,'Games','cat_games.png','No Description',-1,1),(3,'Movies','cat_dvd.png','No Description',-1,2),(4,'Music','cat_music.png','No Description',-1,4),(5,'Episodes','cat_tveps.png','No Description',3,2),(6,'XXX','cat_xxx.png','No Description',3,2),(7,'Games/PSP','cat_psp.png','No Description',2,1),(8,'Games/PS2','cat_ps2.png','No Description',2,1),(9,'Anime','cat_anime.png','No Description',3,2),(10,'Movies/XviD','cat_xvid.png','No Description',3,2),(11,'Movies/HDTV','cat_hdtv.png','No Description',3,2),(12,'Games/PC Rips','cat_pcrips.png','No Description',2,1),(13,'Apps','cat_misc.png','No Description',-1,3),(14,'Music','cat_music.png','No Description',4,4);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheaters`
--

DROP TABLE IF EXISTS `cheaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheaters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` int(11) NOT NULL,
  `userid` int(10) NOT NULL DEFAULT '0',
  `torrentid` int(10) NOT NULL DEFAULT '0',
  `client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beforeup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upthis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timediff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheaters`
--

LOCK TABLES `cheaters` WRITE;
/*!40000 ALTER TABLE `cheaters` DISABLE KEYS */;
/*!40000 ALTER TABLE `cheaters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_config`
--

DROP TABLE IF EXISTS `class_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_config` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int(3) DEFAULT NULL,
  `classname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classcolor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classpic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_config`
--

LOCK TABLES `class_config` WRITE;
/*!40000 ALTER TABLE `class_config` DISABLE KEYS */;
INSERT INTO `class_config` VALUES (1,'UC_USER',0,'USER','8e35ef','user.gif'),(2,'UC_POWER_USER',1,'POWER USER','f9a200','power.gif'),(3,'UC_VIP',2,'VIP','009f00','vip.gif'),(4,'UC_UPLOADER',3,'UPLOADER','0000ff','uploader.gif'),(5,'UC_MODERATOR',4,'MODERATOR','fe2e2e','moderator.gif'),(6,'UC_ADMINISTRATOR',5,'ADMINISTRATOR','b000b0','administrator.gif'),(7,'UC_SYSOP',6,'SYS0P','0c27e4','sysop.gif'),(8,'UC_MIN',0,'','',''),(9,'UC_MAX',6,'','',''),(10,'UC_STAFF',4,'','','');
/*!40000 ALTER TABLE `class_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_promo`
--

DROP TABLE IF EXISTS `class_promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_promo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_ratio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `uploaded` bigint(20) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `low_ratio` decimal(10,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_promo`
--

LOCK TABLES `class_promo` WRITE;
/*!40000 ALTER TABLE `class_promo` DISABLE KEYS */;
INSERT INTO `class_promo` VALUES (6,'1',1.20,50,20,0.85);
/*!40000 ALTER TABLE `class_promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cleanup`
--

DROP TABLE IF EXISTS `cleanup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cleanup` (
  `clean_id` int(10) NOT NULL AUTO_INCREMENT,
  `clean_title` char(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `clean_file` char(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `clean_time` int(11) NOT NULL DEFAULT '0',
  `clean_increment` int(11) NOT NULL DEFAULT '0',
  `clean_cron_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `clean_log` tinyint(1) NOT NULL DEFAULT '0',
  `clean_desc` mediumtext COLLATE utf8mb4_unicode_ci,
  `clean_on` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`clean_id`),
  KEY `clean_time` (`clean_time`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cleanup`
--

LOCK TABLES `cleanup` WRITE;
/*!40000 ALTER TABLE `cleanup` DISABLE KEYS */;
INSERT INTO `cleanup` VALUES (4,'Lottery Autoclean','lotteryclean.php',1359812894,86400,'d6704d582b136ea1ed13635bb9059f57',1,'Lottery Autoclean - Lottery clean up here every X days',0),(5,'Optimze Db Auto','optimizedb.php',1405715247,172800,'d6704d582b136ea1ed13635bb9059f57',1,'Auto Optimize - Runs every 2 days',1),(6,'Auto Backup Db','backupdb.php',1405742261,86400,'d6704d582b136ea1ed13635bb9059f57',1,'Auto Backup - Runs every 1 day',1),(8,'Irc bonus','irc_update.php',1405717294,1800,'c06a074cd6403bcc1f292ce864c3cdd5',1,'Irc idle bonus update',1),(9,'Statistics','sitestats_update.php',1405722386,3600,'2a2afb82d82cc4ddcb6ff1753a40dfe9',1,'SIte statistics update',1),(10,'Karma Bonus','karma_update.php',1405717612,1800,'d0df8a38cfba26ece2c285189a656ad0',0,'Seedbonus award update',1),(11,'Forums','forum_update.php',1405721151,900,'c9c58a0d43b02cd5358115673bc04c9e',0,'Forum online and count update',1),(12,'Torrents','torrents_update.php',1394919050,900,'81875d0e7b63771ae2a59f2a48755da4',1,'Torrents update',0),(13,'Normalize','torrents_normalize.php',1394919677,900,'1274dd2d9ffd203e6d489db25d0f28fe',1,'File, comment, torrent update',0),(14,'Ips','ip_update.php',1405725772,86400,'0b4f34774259b5069d220c485aa10eba',1,'Ip clean',1),(15,'Signups','expired_signup_update.php',1405801239,259200,'bdde41096f769d1a01251813cc2c1353',1,'Expired signups update',1),(16,'Peers','peer_update.php',1394919107,900,'72181fc6214ddc556d71066df031d424',1,'Peers update',0),(17,'Visible','visible_update.php',1405719080,900,'77c523eab12be5d0342e4606188cd2ca',0,'Torrents visible update',1),(18,'Announcements','announcement_update.php',1405770206,86400,'b73c139b4defbc031e201b91fef29a4c',1,'Old announcement updates',1),(19,'Readposts','readpost_update.php',1405793882,86400,'3e0c8bc6b6e6cc61fdfe8b26f8268b77',1,'Old Readposts updates',1),(20,'Happyhour','happyhour_update.php',1396565647,43200,'a7c422bc9f17b3fba5dab2d0129acd32',1,'HappyHour Updates',0),(21,'Customsmilies','customsmilie_update.php',1405720147,86400,'9e8a41be2b0a56d83e0d0c0b00639f66',1,'Custom Smilie Update',1),(22,'Karma Vips','karmavip_update.php',1405794046,86400,'c444f13b95998c98a851714673ff6b84',1,'Karma VIp Updates',1),(23,'Anonymous Profile','anonymous_update.php',1405804463,86400,'25146aec76a7b163ac6955685ff667d9',1,'Anonymous Profile Updates',1),(24,'Delete Torrents','delete_torrents_update.php',1395005525,86400,'52f8e3c9fd438d4a86062f88f1146098',1,'Delete Old Torrents Update',0),(25,'Funds','funds_update.php',1405806713,86400,'5f50f43a9e640cd6203e1964c17361ba',1,'Funds And Donation Updates',1),(26,'Leechwarns','leechwarn_update.php',1405715844,86400,'0303a05302fadf30fc18f987d2a5b285',1,'Leechwarnings Update',1),(27,'Auto Invite','autoinvite_update.php',1405718135,86400,'48839ced75a612d41d9278718075dbb2',1,'Auto Invite Updates',1),(28,'Hit And Run','hitrun_update.php',1394921211,3600,'3ab445bbff84f87e8dc5a16489d7ca31',1,'Hit And Run Updates',0),(29,'Freeslots Update','freeslot_update.php',1395005532,86400,'63db6b0519eccbfe0b06d87b8f0bcaad',1,'Freeslots Stuffs Update',0),(30,'Backup Clean','backup_update.php',1405719881,86400,'2c0d1a9ffa04937255344b97e2c9706f',1,'Backups Clean Update',1),(31,'Inactive Clean','inactive_update.php',1405794146,86400,'a401de097e031315b751b992ee40d733',1,'Inactive Users Update',1),(32,'Shout Clean','shout_update.php',1405761109,172800,'13515c22103b5b916c3d86023220cd61',1,'Shoutbox Clean Update',1),(33,'Power User Clean','pu_update.php',1405721579,86400,'4751425b1c765360a5f8bab14c6b9a47',1,'Power User Clean Updates',1),(34,'Power User Demote Clean','pu_demote_update.php',1405722059,86400,'e9249b5f653f03ed425d68947155056b',1,'Power User Demote Clean Updates',1),(35,'Bugs Clean','bugs_update.php',1405774783,1209600,'1e9734cdf50408a7739b7b03272aeab3',1,'Bugs Update Clean',1),(36,'Sitepot Clean','sitepot_update.php',1396628641,86400,'29dae941216f1bdb81f69dce807b3501',1,'Sitepot Update Clean',0),(37,'Userhits Clean','userhits_update.php',1405794345,86400,'d0cec8e7adb50290db6cf911a5c74339',1,'Userhits Clean Updates',1),(38,'Process Kill','processkill_update.php',1405795280,86400,'b7c0f14c9482a14e9f5cb0d467dfd7c6',1,'Mysql Process KIll Updates',1),(39,'Cleanup Log','cleanlog_update.php',1405796149,86400,'7dc0b72fc8c12b264fad1613fbea2489',1,'Cleanup Log Updates',1),(40,'Pirate Cleanup','pirate_update.php',1405799774,86400,'e5f20d43425832e9397841be6bc92be2',1,'Pirate Stuffs Update',1),(41,'King Cleanup','king_update.php',1405800001,86400,'12b5c6c9f9919ca09816225c29fddaeb',1,'King Stuffs Update',1),(42,'Free User Cleanup','freeuser_update.php',1396565083,3900,'37f9de0443159bf284a1c7a703e96cf9',1,'Free User Stuffs Update',0),(43,'Download Possible Cleanup','downloadpos_update.php',1405804020,86400,'e20bcc6d07c6ec493e106adb8d2a8227',1,'Download Possible Stuffs Update',1),(44,'Upload Possible Cleanup','uploadpos_update.php',1405807913,86400,'fd1110b750af878faccaf672fe53876d',1,'Upload Possible Stuffs Update',1),(45,'Free Torrents Cleanup','freetorrents_update.php',1396566633,3600,'20390090ac784fee830d19bd708cfcad',1,'Free Torrents Stuffs Update',0),(46,'Chatpost Cleanup','chatpost_update.php',1405804100,86400,'bab6f1de36dc97dff02745051e076a39',1,'Chatpost Stuffs Update',1),(47,'Immunity Cleanup','immunity_update.php',1405715322,86400,'11bf6f41c659b9f49f6ccdfa616e9f82',1,'Immunity Stuffs Update',1),(48,'Warned Cleanup','warned_update.php',1405716859,86400,'6e558b89ac60454eaa3a45243347c977',1,'Warned Stuffs Update',1),(49,'Games Update','gameaccess_update.php',1405722654,86400,'33704fd97f8840ff08ef4e6ff236b3e4',1,'Games Stuffs Updates',1),(50,'Pm Update','sendpmpos_update.php',1405724044,86400,'32784b9c2891f022a91d5007f068f7d9',1,'Pm Stuffs Updates',1),(51,'Avatar Update','avatarpos_update.php',1405799877,86400,'f257794129ee772f5cfe00b33b363100',1,'Avatar Stuffs Updates',1),(52,'Birthday Pms','birthday_update.php',1405800457,86400,'1fd167bf236ea5e74e835224d1cc36e9',1,'Pm all members with birthdays.',1),(53,'Movie of the week','mow_update.php',1406138137,604800,'716274782f2f7229d960a6661fb06b60',1,'Updates movie of the week',1),(54,'Silver torrents','silvertorrents_update.php',1396563248,3600,'3e1aab005271870d69934ebe37e28819',1,'Clean expired silver',0),(55,'Failed Logins','failedlogin_update.php',1405718159,86400,'c90f0f030d7914db6ae1263de1730541',1,'Delete expired failed logins',1),(56,'Christmas Gift Rest','gift_update.php',1435256312,31556926,'4bdd6190a0ba3420d21b50b79945c06b',1,'Reset all users yearly xmas gift',1),(58,'Achievements Update','achievement_avatar_update.php',1405799732,86400,'0c5889bab74e7ff8f920ec524423f627',1,'Updates user avatar achievements',1),(59,'Achievements Update','achievement_bday_update.php',1405718380,86400,'2b95ff34a27d540f61ceca3ee1424216',1,'Updates user birthday achievements',1),(60,'Achievements Update','achievement_corrupt_update.php',1405724125,86400,'afefaecc0e31e412c28dbab154e43f9d',1,'Updates user corrupt achievements',1),(61,'Achievements Update','achievement_fpost_update.php',1405726185,86400,'f466ff2246e7e84bc60210aa947185da',1,'Updates user forum post achievements',1),(62,'Achievements Update','achievement_ftopics_update.php',1405727610,86400,'825f6cac5fa992f505ceea3992db5483',1,'Updates user forum topic achievements',1),(63,'Achievements Update','achievement_invite_update.php',1405733242,86400,'02e56c3aeba0b1e3e4bcca11699f23eb',1,'Updates user invite achievements',1),(64,'Achievements Update','achievement_karma_update.php',1405734309,86400,'3827839629ade62f03a9fccbacb8402a',1,'Updates user Karma achievements',1),(65,'Achievements Update','achievement_request_update.php',1405736075,86400,'48ec70ecc00c88b37977e2743d294888',1,'Updates user request achievements',1),(66,'Achievements Update','achievement_seedtime_update.php',1405736690,86400,'158fb134b7a1487bdda67d42544693fc',1,'Updates user seedtime achievements',1),(67,'Achievements Update','achievement_sheep_update.php',1405736867,86400,'97c3919a5947e00952bf82d1dc6f5c58',1,'Updates user sheep achievements',1),(68,'Achievements Update','achievement_shouts_update.php',1405738701,86400,'b07151b274bb6d568ab1bc3b3364cb6c',1,'Updates user shout achievements',1),(69,'Achievements Update','achievement_sig_update.php',1405740740,86400,'82c3ff41b8e45a96bcd1582345d6dca9',1,'Updates user signature achievements',1),(70,'Achievements Update','achievement_sreset_update.php',1405770945,86400,'b51582111414701c0bd512fd2b4f0507',1,'Updates user achievements - Reset shouts',1),(71,'Achievements Update','achievement_sticky_update.php',1405728108,86400,'00aaf60d3806924a42e95e64ee00c5fb',1,'Updates user sticky torrents achievements',1),(72,'Achievements Update','achievement_up_update.php',1405794142,86400,'b0feb2e2c22dbf9f1575c798a5d1560d',1,'Updates user uploader achievements',1),(73,'Referrer cleans','referrer_update.php',1398091653,86400,'36bc2469228c1e0c8269ee9d309be37f',1,'Referrer Autoclean - Removes expired referrer entrys',0),(74,'Snatch list admin','snatchclean_update.php',1396631629,86400,'cfb8afef5b7a1c41e047dc791b0f1de0',1,'Clean old dead data',0),(76,'Normalize XBT','torrents_normalize_xbt.php',1405720207,900,'bd4f4ae7d7499aefbce82971a3b1cbbd',1,'XBT normalize query updates',1),(77,'Delete torrents','delete_torrents_xbt_update.php',1405731392,86400,'2d47cfeddfd61ed4529e0d4a25ca0d12',1,'Delete torrent xbt update',1),(78,'XBT Torrents','torrents_update_xbt.php',1405721775,900,'79e243cf24e92a13441b381d033d03a9',1,'XBT Torrents update',1),(79,'XBT Peers','peer_update_xbt.php',1403459321,900,'3a0245bc43e2cad94ac7966bb3fe75f3',1,'XBT Peers update - Not required',0),(80,'XBT hit and run system','hitrun_xbt_update.php',1405444631,3600,'a6804b0f6d5ce68ac390d4d261a82d85',1,'XBT hit and run detection',0),(81,'Clean cheater data','cheatclean_update.php',1408382495,86400,'9b0112ad44b0135220ef539804447d49',1,'Clean abnormal upload speed entrys',1),(82,'Trivia Cleanup','trivia_update.php',1500681600,300,'936cde05931085f7f3a1454b183c4522',1,'Trivia Questions Cleanup',1),(83,'Trivia Bonus Points','trivia_points_update.php',1500681600,86400,'62c3968205f2c1080b2253f90aeb31ef',1,'Trivia Bonus Points',1);
/*!40000 ALTER TABLE `cleanup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cleanup_log`
--

DROP TABLE IF EXISTS `cleanup_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cleanup_log` (
  `clog_id` int(10) NOT NULL AUTO_INCREMENT,
  `clog_event` char(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `clog_time` int(11) NOT NULL DEFAULT '0',
  `clog_ip` char(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `clog_desc` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`clog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cleanup_log`
--

LOCK TABLES `cleanup_log` WRITE;
/*!40000 ALTER TABLE `cleanup_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cleanup_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coins`
--

DROP TABLE IF EXISTS `coins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `torrentid` int(10) unsigned NOT NULL DEFAULT '0',
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `torrentid` (`torrentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coins`
--

LOCK TABLES `coins` WRITE;
/*!40000 ALTER TABLE `coins` DISABLE KEYS */;
/*!40000 ALTER TABLE `coins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `torrent` int(10) unsigned NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL,
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `ori_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `editedby` int(10) unsigned NOT NULL DEFAULT '0',
  `editedat` int(11) NOT NULL,
  `anonymous` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `request` int(10) unsigned NOT NULL DEFAULT '0',
  `offer` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_likes` mediumtext COLLATE utf8mb4_unicode_ci,
  `checked_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checked_when` int(11) NOT NULL,
  `checked` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `torrent` (`torrent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flagpic` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Sweden','sweden.gif'),(2,'United States of America','usa.gif'),(3,'Russia','russia.gif'),(4,'Finland','finland.gif'),(5,'Canada','canada.gif'),(6,'France','france.gif'),(7,'Germany','germany.gif'),(8,'China','china.gif'),(9,'Italy','italy.gif'),(10,'Denmark','denmark.gif'),(11,'Norway','norway.gif'),(12,'United Kingdom','uk.gif'),(13,'Ireland','ireland.gif'),(14,'Poland','poland.gif'),(15,'Netherlands','netherlands.gif'),(16,'Belgium','belgium.gif'),(17,'Japan','japan.gif'),(18,'Brazil','brazil.gif'),(19,'Argentina','argentina.gif'),(20,'Australia','australia.gif'),(21,'New Zealand','newzealand.gif'),(22,'Spain','spain.gif'),(23,'Portugal','portugal.gif'),(24,'Mexico','mexico.gif'),(25,'Singapore','singapore.gif'),(26,'South Africa','southafrica.gif'),(27,'South Korea','southkorea.gif'),(28,'Jamaica','jamaica.gif'),(29,'Luxembourg','luxembourg.gif'),(30,'Hong Kong','hongkong.gif'),(31,'Belize','belize.gif'),(32,'Algeria','algeria.gif'),(33,'Angola','angola.gif'),(34,'Austria','austria.gif'),(35,'Yugoslavia','yugoslavia.gif'),(36,'Western Samoa','westernsamoa.gif'),(37,'Malaysia','malaysia.gif'),(38,'Dominican Republic','dominicanrep.gif'),(39,'Greece','greece.gif'),(40,'Guatemala','guatemala.gif'),(41,'Israel','israel.gif'),(42,'Pakistan','pakistan.gif'),(43,'Czech Republic','czechrep.gif'),(44,'Serbia','serbia.gif'),(45,'Seychelles','seychelles.gif'),(46,'Taiwan','taiwan.gif'),(47,'Puerto Rico','puertorico.gif'),(48,'Chile','chile.gif'),(49,'Cuba','cuba.gif'),(50,'Congo','congo.gif'),(51,'Afghanistan','afghanistan.gif'),(52,'Turkey','turkey.gif'),(53,'Uzbekistan','uzbekistan.gif'),(54,'Switzerland','switzerland.gif'),(55,'Kiribati','kiribati.gif'),(56,'Philippines','philippines.gif'),(57,'Burkina Faso','burkinafaso.gif'),(58,'Nigeria','nigeria.gif'),(59,'Iceland','iceland.gif'),(60,'Nauru','nauru.gif'),(61,'Slovenia','slovenia.gif'),(62,'Albania','albania.gif'),(63,'Turkmenistan','turkmenistan.gif'),(64,'Bosnia Herzegovina','bosniaherzegovina.gif'),(65,'Andorra','andorra.gif'),(66,'Lithuania','lithuania.gif'),(67,'India','india.gif'),(68,'Netherlands Antilles','nethantilles.gif'),(69,'Ukraine','ukraine.gif'),(70,'Venezuela','venezuela.gif'),(71,'Hungary','hungary.gif'),(72,'Romania','romania.gif'),(73,'Vanuatu','vanuatu.gif'),(74,'Vietnam','vietnam.gif'),(75,'Trinidad & Tobago','trinidadandtobago.gif'),(76,'Honduras','honduras.gif'),(77,'Kyrgyzstan','kyrgyzstan.gif'),(78,'Ecuador','ecuador.gif'),(79,'Bahamas','bahamas.gif'),(80,'Peru','peru.gif'),(81,'Cambodia','cambodia.gif'),(82,'Barbados','barbados.gif'),(83,'Bangladesh','bangladesh.gif'),(84,'Laos','laos.gif'),(85,'Uruguay','uruguay.gif'),(86,'Antigua Barbuda','antiguabarbuda.gif'),(87,'Paraguay','paraguay.gif'),(88,'Union of Soviet Socialist Republics','ussr.gif'),(89,'Thailand','thailand.gif'),(90,'Senegal','senegal.gif'),(91,'Togo','togo.gif'),(92,'North Korea','northkorea.gif'),(93,'Croatia','croatia.gif'),(94,'Estonia','estonia.gif'),(95,'Colombia','colombia.gif'),(96,'Lebanon','lebanon.gif'),(97,'Latvia','latvia.gif'),(98,'Costa Rica','costarica.gif'),(99,'Egypt','egypt.gif'),(100,'Bulgaria','bulgaria.gif'),(101,'Scotland','scotland.gif'),(102,'United Arab Emirates','uae.gif'),(103,'Slovakia','slovakia.gif');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbbackup`
--

DROP TABLE IF EXISTS `dbbackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbbackup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbbackup`
--

LOCK TABLES `dbbackup` WRITE;
/*!40000 ALTER TABLE `dbbackup` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbbackup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deathrow`
--

DROP TABLE IF EXISTS `deathrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deathrow` (
  `uid` int(10) NOT NULL,
  `username` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tid` int(10) NOT NULL,
  `torrent_name` char(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` tinyint(1) NOT NULL,
  `notify` tinyint(1) unsigned NOT NULL DEFAULT '1',
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deathrow`
--

LOCK TABLES `deathrow` WRITE;
/*!40000 ALTER TABLE `deathrow` DISABLE KEYS */;
/*!40000 ALTER TABLE `deathrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decks`
--

DROP TABLE IF EXISTS `decks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `decks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) unsigned NOT NULL,
  `cards` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `shuffled` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gameid` (`gameid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decks`
--

LOCK TABLES `decks` WRITE;
/*!40000 ALTER TABLE `decks` DISABLE KEYS */;
/*!40000 ALTER TABLE `decks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `startTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL,
  `overlayText` mediumtext COLLATE utf8mb4_unicode_ci,
  `displayDates` tinyint(1) NOT NULL,
  `freeleechEnabled` tinyint(1) NOT NULL,
  `duploadEnabled` tinyint(1) NOT NULL,
  `hdownEnabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `startTime` (`startTime`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,1371323531,1371582731,'HalfDownload [ON]',1,0,0,1);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failedlogins`
--

DROP TABLE IF EXISTS `failedlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failedlogins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added` int(11) NOT NULL,
  `banned` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `attempts` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failedlogins`
--

LOCK TABLES `failedlogins` WRITE;
/*!40000 ALTER TABLE `failedlogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `failedlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `torrent` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `torrent` (`torrent`),
  KEY `filename` (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_config`
--

DROP TABLE IF EXISTS `forum_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_config` (
  `id` smallint(1) NOT NULL DEFAULT '1',
  `delete_for_real` smallint(6) NOT NULL DEFAULT '0',
  `min_delete_view_class` smallint(2) unsigned NOT NULL DEFAULT '7',
  `readpost_expiry` smallint(3) NOT NULL DEFAULT '14',
  `min_upload_class` smallint(2) unsigned NOT NULL DEFAULT '2',
  `accepted_file_extension` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted_file_types` varchar(280) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_file_size` int(10) unsigned NOT NULL DEFAULT '2097152',
  `upload_folder` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`readpost_expiry`),
  KEY `delete_for_real` (`delete_for_real`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_config`
--

LOCK TABLES `forum_config` WRITE;
/*!40000 ALTER TABLE `forum_config` DISABLE KEYS */;
INSERT INTO `forum_config` VALUES (13,1,4,7,6,'a:3:{i:0;s:3:\"zip\";i:1;s:3:\"rar\";i:2;s:0:\"\";}','a:3:{i:0;s:15:\"application/zip\";i:1;s:15:\"application/rar\";i:2;s:0:\"\";}',2097152,'/var/www/uploads');
/*!40000 ALTER TABLE `forum_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_poll`
--

DROP TABLE IF EXISTS `forum_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_poll` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `question` varchar(280) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poll_answers` mediumtext COLLATE utf8mb4_unicode_ci,
  `number_of_options` smallint(2) unsigned NOT NULL DEFAULT '0',
  `poll_starts` int(11) NOT NULL DEFAULT '0',
  `poll_ends` int(11) NOT NULL DEFAULT '0',
  `change_vote` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `multi_options` smallint(2) unsigned NOT NULL DEFAULT '1',
  `poll_closed` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_poll`
--

LOCK TABLES `forum_poll` WRITE;
/*!40000 ALTER TABLE `forum_poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_poll_votes`
--

DROP TABLE IF EXISTS `forum_poll_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_poll_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `option` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_poll_votes`
--

LOCK TABLES `forum_poll_votes` WRITE;
/*!40000 ALTER TABLE `forum_poll_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_poll_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forums` (
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_class_read` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_class_write` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `post_count` int(10) unsigned NOT NULL DEFAULT '0',
  `topic_count` int(10) unsigned NOT NULL DEFAULT '0',
  `min_class_create` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_forum` tinyint(4) NOT NULL DEFAULT '0',
  `forum_id` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums`
--

LOCK TABLES `forums` WRITE;
/*!40000 ALTER TABLE `forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freeleech`
--

DROP TABLE IF EXISTS `freeleech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `freeleech` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `var` int(10) NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freeleech`
--

LOCK TABLES `freeleech` WRITE;
/*!40000 ALTER TABLE `freeleech` DISABLE KEYS */;
INSERT INTO `freeleech` VALUES (1,'Contribute 1 to Site Countdown Pot',1,'Donate 1 coin and 1 minute will be removed from the Countdown.','contribute',60),(2,'Contribute 5 to Site Countdown Pot',5,'Donate 5 coins and 5 minutes will be removed from the Countdown.','contribute',300),(3,'Contribute 10 to Site Countdown Pot',10,'Donate 10 coins and 10 minutes will be removed from the Countdown.','contribute',600),(4,'Contribute 25 to Site Countdown Pot',25,'Donate 25 coins and 25 minutes will be removed from the Countdown.','contribute',1500),(5,'Contribute 50 to Site Countdown Pot',50,'Donate 50 coins and 50 minutes will be removed from the Countdown.','contribute',3000),(6,'Contribute 100 to Site Countdown Pot',100,'Donate 100 coins and 1 hour and 40 minutes will be removed from the Countdown.','contribute',6000),(7,'Contribute 500 to Site Countdown Pot',500,'Donate 500 coins and 8 hours and 20 minutes will be removed from the Countdown.','contribute',30000),(8,'Contribute 1000 to Site Countdown Pot',1000,'Donate 1000 coins and 16 hours and 40 minutes will be removed from the Countdown.','contribute',60000),(9,'Contribute to Site Countdown Pot',0,'Enter a custom amount to donate. ','contribut3',0),(10,'Freeleech',0,'Freeleech Sunday is enabled','countdown',1362355200),(11,'Sitewide Freeleech',0,'set by','manual',0),(12,'Sitewide Doubleseed',0,'set by ','manual',0),(13,'Sitewide Freeleech and Doubleseed',0,'set by','manual',0),(15,'Crazy Hour',1395007265,'Freeleech and Double Upload credit for 24 Hours','crazyhour',0);
/*!40000 ALTER TABLE `freeleech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freeslots`
--

DROP TABLE IF EXISTS `freeslots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `freeslots` (
  `torrentid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `doubleup` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `free` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `addedup` int(11) NOT NULL DEFAULT '0',
  `addedfree` int(11) NOT NULL DEFAULT '0',
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freeslots`
--

LOCK TABLES `freeslots` WRITE;
/*!40000 ALTER TABLE `freeslots` DISABLE KEYS */;
/*!40000 ALTER TABLE `freeslots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `friendid` int(10) unsigned NOT NULL DEFAULT '0',
  `confirmed` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funds`
--

DROP TABLE IF EXISTS `funds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cash` decimal(8,2) NOT NULL DEFAULT '0.00',
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funds`
--

LOCK TABLES `funds` WRITE;
/*!40000 ALTER TABLE `funds` DISABLE KEYS */;
/*!40000 ALTER TABLE `funds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happyhour`
--

DROP TABLE IF EXISTS `happyhour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `happyhour` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT '0',
  `torrentid` int(10) NOT NULL DEFAULT '0',
  `multiplier` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happyhour`
--

LOCK TABLES `happyhour` WRITE;
/*!40000 ALTER TABLE `happyhour` DISABLE KEYS */;
/*!40000 ALTER TABLE `happyhour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happylog`
--

DROP TABLE IF EXISTS `happylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `happylog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT '0',
  `torrentid` int(10) NOT NULL DEFAULT '0',
  `multi` float NOT NULL DEFAULT '0',
  `date` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happylog`
--

LOCK TABLES `happylog` WRITE;
/*!40000 ALTER TABLE `happylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `happylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hit_and_run_settings`
--

DROP TABLE IF EXISTS `hit_and_run_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hit_and_run_settings` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hit_and_run_settings`
--

LOCK TABLES `hit_and_run_settings` WRITE;
/*!40000 ALTER TABLE `hit_and_run_settings` DISABLE KEYS */;
INSERT INTO `hit_and_run_settings` VALUES ('firstclass','UC_POWER_USER'),('secondclass','UC_VIP'),('thirdclass','UC_MODERATOR'),('_3day_first','48'),('_14day_first','30'),('_14day_over_first','18'),('_3day_second','48'),('_14day_second','30'),('_14day_over_second','18'),('_3day_third','48'),('_14day_third','30'),('_14day_over_third','18'),('torrentage1','1'),('torrentage2','7'),('torrentage3','7'),('cainallowed','3'),('caindays','0.5'),('hnr_online','1');
/*!40000 ALTER TABLE `hit_and_run_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infolog`
--

DROP TABLE IF EXISTS `infolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infolog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` int(11) DEFAULT '0',
  `txt` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infolog`
--

LOCK TABLES `infolog` WRITE;
/*!40000 ALTER TABLE `infolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `infolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invite_codes`
--

DROP TABLE IF EXISTS `invite_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invite_codes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invite_added` int(10) NOT NULL,
  `status` enum('Pending','Confirmed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `email` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sender` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invite_codes`
--

LOCK TABLES `invite_codes` WRITE;
/*!40000 ALTER TABLE `invite_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `invite_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ips`
--

DROP TABLE IF EXISTS `ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(10) DEFAULT NULL,
  `type` enum('login','announce','browse','like') COLLATE utf8mb4_unicode_ci NOT NULL,
  `seedbox` tinyint(1) NOT NULL DEFAULT '0',
  `lastbrowse` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `lastannounce` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ips`
--

LOCK TABLES `ips` WRITE;
/*!40000 ALTER TABLE `ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `likes` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `userip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lottery_config`
--

DROP TABLE IF EXISTS `lottery_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lottery_config` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lottery_config`
--

LOCK TABLES `lottery_config` WRITE;
/*!40000 ALTER TABLE `lottery_config` DISABLE KEYS */;
INSERT INTO `lottery_config` VALUES ('ticket_amount','10000'),('ticket_amount_type','seedbonus'),('user_tickets','10'),('class_allowed','0|1|2|3|4|5|6'),('total_winners','5'),('prize_fund','10000000'),('start_date','1328458121'),('end_date','1328542721'),('use_prize_fund','1'),('enable','0'),('lottery_winners',''),('lottery_winners_amount','2000000'),('lottery_winners_time','1334782914');
/*!40000 ALTER TABLE `lottery_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_likes`
--

DROP TABLE IF EXISTS `manage_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manage_likes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `disabled_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_likes`
--

LOCK TABLES `manage_likes` WRITE;
/*!40000 ALTER TABLE `manage_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL,
  `subject` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg` mediumtext COLLATE utf8mb4_unicode_ci,
  `unread` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `poster` bigint(20) unsigned NOT NULL DEFAULT '0',
  `location` smallint(6) NOT NULL DEFAULT '1',
  `saved` enum('no','yes') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `urgent` enum('no','yes') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `draft` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `staff_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modscredits`
--

DROP TABLE IF EXISTS `modscredits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modscredits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` enum('Addon','Forum','Message/Email','Display/Style','Staff/Tools','Browse/Torrent/Details','Misc') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Misc',
  `status` enum('Complete','In-Progress') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Complete',
  `u232lnk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modscredits`
--

LOCK TABLES `modscredits` WRITE;
/*!40000 ALTER TABLE `modscredits` DISABLE KEYS */;
INSERT INTO `modscredits` VALUES (1,'Ratio Free','Addon','Complete','https://forum.u-232.com/index.php/topic,1060.0.html','Mindless','V3 Ratio free modification; A true ratio free system =]');
/*!40000 ALTER TABLE `modscredits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moods`
--

DROP TABLE IF EXISTS `moods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonus` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moods`
--

LOCK TABLES `moods` WRITE;
/*!40000 ALTER TABLE `moods` DISABLE KEYS */;
INSERT INTO `moods` VALUES (1,'is feeling neutral','noexpression.gif',0),(2,'is feeling bad','wall.gif',0),(3,'is feeling good','grin.gif',0),(4,'is feeling tired','yawn.gif',0),(5,'is feeling angry','angry.gif',0),(6,'in wub','wub.gif',0),(7,'is feeling sad','wavecry.gif',0),(8,'is feeling silly','clown.gif',0),(9,'in love','love.gif',0),(10,'is a pirate','pirate.gif',0),(11,'is feeling like ranting','rant.gif',0),(12,'is feeling devilish','devil.gif',0),(13,'is feeling yucky','yucky.gif',0),(14,'yarrr matey','pirate2.gif',0),(15,'is feeling happy','smile1.gif',0),(16,'is feeling like a tease','tease.gif',0),(17,'is feeling awesome','w00t.gif',0),(18,'is feeling bananas','bananadance.gif',0),(19,'is drinking with friends','beer2.gif',0),(20,'is drinking','beer.gif',0),(21,'is feeling like an angel','angel.gif',0),(22,'is feeling bossy','cigar.gif',0),(23,'needs coffee','cuppa.gif',0),(24,'is feeling like crying','cry.gif',0),(25,'is dancing','mml.gif',0),(26,'is feeling crazy','crazy.gif',0),(27,'is drunk','drunk.gif',0),(28,'has gone fishing','fishing.gif',0),(29,'is having fun','fun.gif',0),(30,'is feeling like a winner','hooray.gif',0),(31,'is feeling innocent','innocent.gif',0),(32,'is laughing out loud','laugh.gif',0),(33,'is feeling like kissing','kissing2.gif',0),(34,'is feeling lazy','smoke2.gif',0),(35,'is feeling like a king','king.gif',0),(36,'is into the music','music.gif',0),(37,'is a ninja','ninja.gif',0),(38,'is feeling old','oldtimer.gif',0),(39,'is feeling like a pimp','pimp.gif',0),(40,'is feeling like shit','shit.gif',0),(41,'is feeling sly','sly.gif',0),(42,'is feeling smart','smart.gif',0),(43,'is stoned','smokin.gif',0),(44,'is feeling weird','weirdo.gif',0),(45,'is in shock','sheesh.gif',0),(46,'is bored','tumbleweed.gif',0),(47,'is taz!','taz.gif',1),(48,'is spidey','spidey.gif',0),(49,'is hitting the bong','bong.gif',1),(50,'is drinking cola','pepsi.gif',1),(51,'is bouncing','trampoline.gif',1),(52,'is feeling super','super.gif',1),(53,'is feeling lucky','clover.gif',1),(54,'is kenny','kenny.gif',0),(55,'is in bed','sleeping.gif',0),(56,'Is old','oldman.gif',0),(57,'is pissed drunk','drinks.gif',0),(58,'is telling a story','talk2.gif',0),(59,'is having a cig','cigar.gif',0),(60,'is eating cookies','cookies.gif',0),(61,'is feeling Good!','good.gif',0),(62,'is feeling artistic','graffiti.gif',0),(63,'is farting','fart3.gif',0),(64,'is hard at work','elektrik.gif',0),(65,'is grooving to the music','music.gif',0),(66,'is headbanging','punk.gif',0),(67,'is a slurpee ninja','ninja.gif',1),(100,'is dead','wink_skull.gif',0),(101,'is crabby','evilmad.gif',0),(102,'woof woof!','pish.gif',0),(103,'is feeling like an angel','angeldevil.gif',0),(104,'is headbanging','mini4.gif',0),(105,'Is banned','banned.gif',0),(106,'is teasing','blum.gif',0),(107,'is crazy','crazy.gif',0),(108,'is da bomb','bomb.gif',0),(121,'is smiling','smile2.gif',0),(122,'is cheerful','clapper1.gif',0),(123,'hitting the bhong','bhong.gif',0),(131,'is a wizard','wizard.gif',0),(132,'is a pissed off','soapbox1.gif',0),(133,'is wanted','wanted.gif',0),(202,'devil','devil.gif',0),(203,'is wacko','wacko.gif',0);
/*!40000 ALTER TABLE `moods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL DEFAULT '0',
  `body` mediumtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sticky` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `anonymous` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notconnectablepmlog`
--

DROP TABLE IF EXISTS `notconnectablepmlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notconnectablepmlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notconnectablepmlog`
--

LOCK TABLES `notconnectablepmlog` WRITE;
/*!40000 ALTER TABLE `notconnectablepmlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `notconnectablepmlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `now_viewing`
--

DROP TABLE IF EXISTS `now_viewing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `now_viewing` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_id` int(10) unsigned NOT NULL DEFAULT '0',
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `now_viewing`
--

LOCK TABLES `now_viewing` WRITE;
/*!40000 ALTER TABLE `now_viewing` DISABLE KEYS */;
/*!40000 ALTER TABLE `now_viewing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer_votes`
--

DROP TABLE IF EXISTS `offer_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offer_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `offer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `vote` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `user_offer` (`offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer_votes`
--

LOCK TABLES `offer_votes` WRITE;
/*!40000 ALTER TABLE `offer_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `offer_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `offer_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `category` int(10) unsigned NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL DEFAULT '0',
  `offered_by_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `filled_torrent_id` int(10) NOT NULL DEFAULT '0',
  `vote_yes_count` int(10) unsigned NOT NULL DEFAULT '0',
  `vote_no_count` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `link` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('approved','pending','denied') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`),
  KEY `id_added` (`id`),
  KEY `offered_by_name` (`offer_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `over_forums`
--

DROP TABLE IF EXISTS `over_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `over_forums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_class_view` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `over_forums`
--

LOCK TABLES `over_forums` WRITE;
/*!40000 ALTER TABLE `over_forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `over_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_config`
--

DROP TABLE IF EXISTS `paypal_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_config` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_config`
--

LOCK TABLES `paypal_config` WRITE;
/*!40000 ALTER TABLE `paypal_config` DISABLE KEYS */;
INSERT INTO `paypal_config` VALUES ('email',''),('gb','3'),('weeks','4'),('invites','1'),('enable','1'),('freeslots','5'),('freeleech','1'),('immunity','1'),('seedbonus','100'),('reputation','100'),('multiplier','5'),('currency','\'GBP\''),('staff','1'),('sandbox',''),('gb_donated_1','2'),('gb_donated_2','4'),('gb_donated_3','7'),('gb_donated_4','13'),('gb_donated_5','20'),('gb_donated_6','40'),('vip_dur_1','1'),('donor_dur_1','1'),('free_dur_1','1'),('up_amt_1','1'),('kp_amt_1','200'),('vip_dur_2','2'),('donor_dur_2','2'),('free_dur_2','2'),('up_amt_2','2'),('kp_amt_2','400'),('vip_dur_3','4'),('donor_dur_3','4'),('free_dur_3','4'),('up_amt_3','5'),('kp_amt_3','600'),('vip_dur_4','8'),('donor_dur_4','8'),('free_dur_4','9'),('up_amt_4','9'),('kp_amt_4','900'),('vip_dur_5','12'),('donor_dur_5','12'),('free_dur_5','12'),('up_amt_5','350'),('kp_amt_5','3000'),('vip_dur_6','24'),('donor_dur_6','24'),('free_dur_6','24'),('up_amt_6','450'),('kp_amt_6','4000'),('duntil_dur_1','1'),('imm_dur_1','1'),('duntil_dur_2','2'),('imm_dur_2','2'),('duntil_dur_3','4'),('imm_dur_3','4'),('duntil_dur_4','8'),('imm_dur_4','8'),('duntil_dur_5','12'),('imm_dur_5','12'),('duntil_dur_6','24'),('imm_dur_6','24'),('inv_amt_1','1'),('inv_amt_2','2'),('inv_amt_3','3'),('inv_amt_4','4'),('inv_amt_5','5'),('inv_amt_6','6');
/*!40000 ALTER TABLE `paypal_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peers`
--

DROP TABLE IF EXISTS `peers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `torrent` int(10) unsigned NOT NULL DEFAULT '0',
  `torrent_pass` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `peer_id` binary(20) NOT NULL,
  `ip` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `port` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `to_go` bigint(20) unsigned NOT NULL DEFAULT '0',
  `seeder` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `started` int(11) NOT NULL,
  `last_action` int(11) NOT NULL,
  `prev_action` int(11) NOT NULL,
  `connectable` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `agent` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `finishedat` int(10) unsigned NOT NULL DEFAULT '0',
  `downloadoffset` bigint(20) unsigned NOT NULL DEFAULT '0',
  `uploadoffset` bigint(20) unsigned NOT NULL DEFAULT '0',
  `corrupt` int(10) NOT NULL DEFAULT '0',
  `compact` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `torrent_peer_id` (`torrent`,`peer_id`,`ip`),
  KEY `torrent` (`torrent`),
  KEY `last_action` (`last_action`),
  KEY `connectable` (`connectable`),
  KEY `userid` (`userid`),
  KEY `torrent_pass` (`torrent_pass`),
  KEY `torrent_connect` (`torrent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peers`
--

LOCK TABLES `peers` WRITE;
/*!40000 ALTER TABLE `peers` DISABLE KEYS */;
/*!40000 ALTER TABLE `peers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmboxes`
--

DROP TABLE IF EXISTS `pmboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `boxnumber` tinyint(4) NOT NULL DEFAULT '2',
  `name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmboxes`
--

LOCK TABLES `pmboxes` WRITE;
/*!40000 ALTER TABLE `pmboxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pmboxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll`
--

DROP TABLE IF EXISTS `poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question` varchar(320) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answers` mediumtext COLLATE utf8mb4_unicode_ci,
  `votes` int(5) NOT NULL DEFAULT '0',
  `multi` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll`
--

LOCK TABLES `poll` WRITE;
/*!40000 ALTER TABLE `poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_voters`
--

DROP TABLE IF EXISTS `poll_voters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_voters` (
  `vid` int(10) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vote_date` int(10) NOT NULL DEFAULT '0',
  `poll_id` int(10) NOT NULL DEFAULT '0',
  `user_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `poll_id` (`poll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_voters`
--

LOCK TABLES `poll_voters` WRITE;
/*!40000 ALTER TABLE `poll_voters` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_voters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls`
--

DROP TABLE IF EXISTS `polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls` (
  `pid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `start_date` int(10) DEFAULT NULL,
  `choices` longtext COLLATE utf8mb4_unicode_ci,
  `starter_id` mediumint(8) NOT NULL DEFAULT '0',
  `starter_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `votes` smallint(5) NOT NULL DEFAULT '0',
  `poll_question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls`
--

LOCK TABLES `polls` WRITE;
/*!40000 ALTER TABLE `polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL DEFAULT '0',
  `body` mediumtext COLLATE utf8mb4_unicode_ci,
  `edited_by` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bbcode` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `post_history` mediumtext COLLATE utf8mb4_unicode_ci,
  `edit_reason` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('deleted','recycled','postlocked','ok') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ok',
  `staff_lock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `anonymous` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `topicid` (`topic_id`),
  KEY `userid` (`user_id`),
  KEY `body` (`post_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added` int(10) NOT NULL DEFAULT '0',
  `days_valid` int(2) NOT NULL DEFAULT '0',
  `accounts_made` int(3) NOT NULL DEFAULT '0',
  `max_users` int(3) NOT NULL DEFAULT '0',
  `link` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` int(10) NOT NULL DEFAULT '0',
  `users` mediumtext COLLATE utf8mb4_unicode_ci,
  `bonus_upload` bigint(10) NOT NULL DEFAULT '0',
  `bonus_invites` int(2) NOT NULL DEFAULT '0',
  `bonus_karma` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo`
--

LOCK TABLES `promo` WRITE;
/*!40000 ALTER TABLE `promo` DISABLE KEYS */;
/*!40000 ALTER TABLE `promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `topic` int(10) NOT NULL DEFAULT '0',
  `torrent` int(10) NOT NULL DEFAULT '0',
  `rating` int(1) NOT NULL DEFAULT '0',
  `user` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_posts`
--

DROP TABLE IF EXISTS `read_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `read_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_post_read` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_posts`
--

LOCK TABLES `read_posts` WRITE;
/*!40000 ALTER TABLE `read_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `read_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referrers`
--

DROP TABLE IF EXISTS `referrers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referrers` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `browser` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referrers`
--

LOCK TABLES `referrers` WRITE;
/*!40000 ALTER TABLE `referrers` DISABLE KEYS */;
/*!40000 ALTER TABLE `referrers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reported_by` int(10) unsigned NOT NULL DEFAULT '0',
  `reporting_what` int(10) unsigned NOT NULL DEFAULT '0',
  `reporting_type` enum('User','Comment','Request_Comment','Offer_Comment','Request','Offer','Torrent','Hit_And_Run','Post') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Torrent',
  `reason` mediumtext COLLATE utf8mb4_unicode_ci,
  `who_delt_with_it` int(10) unsigned NOT NULL DEFAULT '0',
  `delt_with` tinyint(1) NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL DEFAULT '0',
  `how_delt_with` mediumtext COLLATE utf8mb4_unicode_ci,
  `2nd_value` int(10) unsigned NOT NULL DEFAULT '0',
  `when_delt_with` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `delt_with` (`delt_with`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reputation`
--

DROP TABLE IF EXISTS `reputation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reputation` (
  `reputationid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `reputation` int(10) NOT NULL DEFAULT '0',
  `whoadded` int(10) NOT NULL DEFAULT '0',
  `reason` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateadd` int(10) NOT NULL DEFAULT '0',
  `locale` enum('posts','comments','torrents','users') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'posts',
  `postid` int(10) NOT NULL DEFAULT '0',
  `userid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reputationid`),
  KEY `userid` (`userid`),
  KEY `whoadded` (`whoadded`),
  KEY `multi` (`postid`),
  KEY `dateadd` (`dateadd`),
  KEY `locale` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reputation`
--

LOCK TABLES `reputation` WRITE;
/*!40000 ALTER TABLE `reputation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reputation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reputationlevel`
--

DROP TABLE IF EXISTS `reputationlevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reputationlevel` (
  `reputationlevelid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `minimumreputation` int(10) NOT NULL DEFAULT '0',
  `level` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`reputationlevelid`),
  KEY `reputationlevel` (`minimumreputation`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reputationlevel`
--

LOCK TABLES `reputationlevel` WRITE;
/*!40000 ALTER TABLE `reputationlevel` DISABLE KEYS */;
INSERT INTO `reputationlevel` VALUES (1,-999999,'is infamous around these parts'),(2,-50,'can only hope to improve'),(3,-10,'has a little shameless behaviour in the past'),(4,0,'is an unknown quantity at this point'),(5,15,'is on a distinguished road'),(6,50,'will become famous soon enough'),(7,250,'has a spectacular aura about'),(8,150,'is a jewel in the rough'),(9,350,'is just really nice'),(10,450,'is a glorious beacon of light'),(11,550,'is a name known to all'),(12,650,'is a splendid one to behold'),(13,1000,'has much to be proud of'),(14,1500,'has a brilliant future'),(15,2000,'has a reputation beyond repute');
/*!40000 ALTER TABLE `reputationlevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_votes`
--

DROP TABLE IF EXISTS `request_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `vote` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `user_request` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_votes`
--

LOCK TABLES `request_votes` WRITE;
/*!40000 ALTER TABLE `request_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `category` int(10) unsigned NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL DEFAULT '0',
  `requested_by_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `filled_by_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `filled_torrent_id` int(10) NOT NULL DEFAULT '0',
  `vote_yes_count` int(10) unsigned NOT NULL DEFAULT '0',
  `vote_no_count` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `link` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_added` (`id`),
  KEY `requested_by_name` (`request_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searchcloud`
--

DROP TABLE IF EXISTS `searchcloud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searchcloud` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `searchedfor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `howmuch` int(10) NOT NULL,
  `ip` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `searchedfor` (`searchedfor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searchcloud`
--

LOCK TABLES `searchcloud` WRITE;
/*!40000 ALTER TABLE `searchcloud` DISABLE KEYS */;
INSERT INTO `searchcloud` VALUES (1,'Testing',1,'');
/*!40000 ALTER TABLE `searchcloud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shit_list`
--

DROP TABLE IF EXISTS `shit_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shit_list` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `suspect` int(10) unsigned NOT NULL DEFAULT '0',
  `shittyness` int(2) unsigned NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL DEFAULT '0',
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shit_list`
--

LOCK TABLES `shit_list` WRITE;
/*!40000 ALTER TABLE `shit_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `shit_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoutbox`
--

DROP TABLE IF EXISTS `shoutbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoutbox` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `userid` bigint(6) NOT NULL DEFAULT '0',
  `to_user` int(10) NOT NULL DEFAULT '0',
  `username` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` int(11) NOT NULL DEFAULT '0',
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `text_parsed` mediumtext COLLATE utf8mb4_unicode_ci,
  `staff_shout` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `for` (`to_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoutbox`
--

LOCK TABLES `shoutbox` WRITE;
/*!40000 ALTER TABLE `shoutbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoutbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_config`
--

DROP TABLE IF EXISTS `site_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_config` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_config`
--

LOCK TABLES `site_config` WRITE;
/*!40000 ALTER TABLE `site_config` DISABLE KEYS */;
INSERT INTO `site_config` VALUES ('site_online','1'),('autoshout_on','1'),('seedbonus_on','1'),('openreg','true'),('forums_online','0'),('maxusers','10000'),('invites','5000'),('openreg_invites','true'),('failedlogins','5'),('ratio_free','false'),('captcha_on','true'),('dupeip_check_on','true'),('totalneeded','60'),('bonus_per_duration','0.225'),('bonus_per_download','20'),('bonus_per_comment','3'),('bonus_per_upload','15'),('bonus_per_rating','5'),('bonus_per_topic','8'),('bonus_per_post','5'),('bonus_per_delete','15'),('bonus_per_thanks','5');
/*!40000 ALTER TABLE `site_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitelog`
--

DROP TABLE IF EXISTS `sitelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitelog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` int(11) NOT NULL DEFAULT '0',
  `txt` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitelog`
--

LOCK TABLES `sitelog` WRITE;
/*!40000 ALTER TABLE `sitelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snatched`
--

DROP TABLE IF EXISTS `snatched`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snatched` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `torrentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` smallint(5) unsigned NOT NULL DEFAULT '0',
  `connectable` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `agent` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `peer_id` binary(20) NOT NULL,
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `upspeed` bigint(20) NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downspeed` bigint(20) NOT NULL DEFAULT '0',
  `to_go` bigint(20) unsigned NOT NULL DEFAULT '0',
  `seeder` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `seedtime` int(11) unsigned NOT NULL DEFAULT '0',
  `leechtime` int(11) unsigned NOT NULL DEFAULT '0',
  `start_date` int(11) NOT NULL DEFAULT '0',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `complete_date` int(11) NOT NULL DEFAULT '0',
  `timesann` int(10) unsigned NOT NULL DEFAULT '0',
  `hit_and_run` int(11) NOT NULL DEFAULT '0',
  `mark_of_cain` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `finished` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `tr_usr` (`torrentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snatched`
--

LOCK TABLES `snatched` WRITE;
/*!40000 ALTER TABLE `snatched` DISABLE KEYS */;
/*!40000 ALTER TABLE `snatched` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffmessages`
--

DROP TABLE IF EXISTS `staffmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffmessages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL DEFAULT '0',
  `added` int(11) DEFAULT '0',
  `msg` mediumtext COLLATE utf8mb4_unicode_ci,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answeredby` int(10) unsigned NOT NULL DEFAULT '0',
  `answered` int(1) NOT NULL DEFAULT '0',
  `answer` mediumtext COLLATE utf8mb4_unicode_ci,
  `new` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `answeredby` (`answeredby`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffmessages`
--

LOCK TABLES `staffmessages` WRITE;
/*!40000 ALTER TABLE `staffmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffmessages_answers`
--

DROP TABLE IF EXISTS `staffmessages_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffmessages_answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `staff_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0',
  `answeredby` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` mediumtext COLLATE utf8mb4_unicode_ci,
  `added` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffmessages_answers`
--

LOCK TABLES `staffmessages_answers` WRITE;
/*!40000 ALTER TABLE `staffmessages_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffmessages_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffpanel`
--

DROP TABLE IF EXISTS `staffpanel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffpanel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('user','settings','stats','other') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `av_class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `added_by` int(10) unsigned NOT NULL DEFAULT '0',
  `added` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_name` (`file_name`),
  KEY `av_class` (`av_class`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffpanel`
--

LOCK TABLES `staffpanel` WRITE;
/*!40000 ALTER TABLE `staffpanel` DISABLE KEYS */;
INSERT INTO `staffpanel` VALUES (1,'Flood Control','staffpanel.php?tool=floodlimit','Manage flood limits','settings',5,1,1277910147),(2,'Coders Log','staffpanel.php?tool=editlog','Coders site file edit log','other',6,1,1277909868),(3,'Bonus Manager','staffpanel.php?tool=bonusmanage','Site karma bonus manager','settings',5,1,1277910813),(4,'Non Connectables','staffpanel.php?tool=findnotconnectable','Find - Pm non-connectable users','user',4,1,1277911274),(5,'Staff Shout History','staffpanel.php?tool=staff_shistory','View staff shoutbox history','other',4,1,1328723553),(6,'Edit Events','staffpanel.php?tool=events','Edit - Add Freeleech/doubleseed/halfdownload events','settings',6,1,1277911847),(7,'Site Log','staffpanel.php?tool=log','View site log','other',4,1,1277912694),(8,'Poll Manager','staffpanel.php?tool=polls_manager','Add - Edit site polls','settings',5,1,1277912814),(9,'Ban Ips','staffpanel.php?tool=bans','Cached ip ban manager','user',5,1,1277912935),(10,'Add user','staffpanel.php?tool=adduser','Add new users from site','user',5,1,1277912999),(11,'Extra Stats','staffpanel.php?tool=stats_extra','View graphs of site stats','stats',4,1,1277913051),(12,'Template Manager','staffpanel.php?tool=themes','Manage themes','settings',6,1,1339372213),(13,'Tracker Stats','staffpanel.php?tool=stats','View uploader and category activity','stats',4,1,1277913435),(14,'Shoutbox History','staffpanel.php?tool=shistory','View shout history','other',4,1,1277913521),(15,'Backup Db','staffpanel.php?tool=backup','Manual Mysql Database Back Up','other',6,1,1277913720),(16,'Usersearch','staffpanel.php?tool=usersearch','Announcement system + Usersearch','user',4,1,1277913916),(17,'Mysql Stats','staffpanel.php?tool=mysql_stats','Mysql server stats','other',4,1,1277914654),(18,'Failed Logins','staffpanel.php?tool=failedlogins','Clear Failed Logins','user',4,1,1277914881),(19,'Uploader Applications','staffpanel.php?tool=uploadapps&action=app','Manage Uploader Applications','user',4,1,1325807155),(20,'Inactive Users','staffpanel.php?tool=inactive','Manage inactive users','user',5,1,1277915991),(21,'Reset Passwords','staffpanel.php?tool=reset','Reset lost passwords','user',6,1,1277916104),(22,'Forum Manager','staffpanel.php?tool=forum_manage','Forum admin and management','settings',6,1,1277916172),(23,'Overforum Manager','staffpanel.php?tool=over_forums','Over Forum admin and management','settings',6,1,1277916240),(24,'Edit Categories','staffpanel.php?tool=categories','Manage site categories','settings',6,1,1277916351),(25,'Reputation Admin','staffpanel.php?tool=reputation_ad','Reputation system admin','settings',6,1,1277916398),(26,'Reputation Settings','staffpanel.php?tool=reputation_settings','Manage reputation settings','settings',6,1,1277916443),(27,'News Admin','staffpanel.php?tool=news&mode=news','Add - Edit site news','settings',4,1,1277916501),(28,'Freeleech Manage','staffpanel.php?tool=freeleech','Manage site wide freeleech','settings',5,1,1277916603),(29,'Freeleech Users','staffpanel.php?tool=freeusers','View freeleech users','stats',4,1,1277916636),(30,'Site Donations','staffpanel.php?tool=donations','View all/current site donations','stats',6,1,1277916690),(31,'View Reports','staffpanel.php?tool=reports','Respond to site reports','other',4,1,1278323407),(32,'Delete','staffpanel.php?tool=delacct','Delete user accounts','user',4,1,1278456787),(33,'Username change','staffpanel.php?tool=namechanger','Change usernames here.','user',4,1,1278886954),(34,'Blacklist','staffpanel.php?tool=nameblacklist','Control username blacklist.','settings',5,1,1279054005),(35,'System Overview','staffpanel.php?tool=system_view','Monitor load averages and view phpinfo','other',6,1,1277910147),(36,'Snatched Overview','staffpanel.php?tool=snatched_torrents','View all snatched torrents','stats',4,1,1277910147),(37,'Banned emails.','staffpanel.php?tool=bannedemails','Manage banned emails.','settings',4,1,1333817312),(38,'Data Reset','staffpanel.php?tool=datareset','Reset download stats for nuked torrents','user',5,1,1277910147),(39,'Dupe Ip Check','staffpanel.php?tool=ipcheck','Check duplicate ips','stats',4,1,1277910147),(40,'Lottery','lottery.php','Configure lottery','settings',5,1,1282824272),(41,'Group Pm','staffpanel.php?tool=grouppm','Send grouped pms','user',4,1,1282838663),(42,'Client Ids','staffpanel.php?tool=allagents','View all client id','stats',4,1,1283592994),(43,'Forum Config','staffpanel.php?tool=forum_config','Configure forums','settings',6,1,1284303053),(44,'Sysop log','staffpanel.php?tool=sysoplog','View staff actions','other',6,1,1284686084),(45,'Server Load','staffpanel.php?tool=load','View current server load','other',4,1,1284900585),(46,'Promotions','promo.php','Add new signup promotions','settings',5,1,1286231384),(47,'Account Manage','staffpanel.php?tool=acpmanage','Account manager - Conifrm pending users','stats',5,1,1289950651),(48,'Block Manager','staffpanel.php?tool=block.settings','Manage Global site block settings','settings',4,1,1292185077),(49,'Advanced Mega Search','staffpanel.php?tool=mega_search','Search by ip, invite code, username','user',4,1,1292333576),(50,'Warnings','staffpanel.php?tool=warn&mode=warn','Warning Management','stats',4,1,1294788655),(51,'Leech Warnings','staffpanel.php?tool=leechwarn','Leech Warning Management','stats',4,1,1294794876),(52,'Hnr Warnings','staffpanel.php?tool=hnrwarn','Hit And Run Warning Management','stats',5,1,1294794904),(53,'Site Peers','staffpanel.php?tool=view_peers','Site Peers Overview','stats',4,1,1296099600),(54,'Top Uploaders','staffpanel.php?tool=uploader_info','View site top uploaders','stats',4,1,1297907345),(55,'Watched User','staffpanel.php?tool=watched_users','Manage all watched users here','user',4,1,1321020749),(56,'Paypal Settings','staffpanel.php?tool=paypal_settings','Adjust global paypal settings here','settings',6,1,1304288197),(57,'Update staff arrays - *Member must be offline*','staffpanel.php?tool=staff_config','Hit once to update allowed staff arrays after member promotion','settings',6,1,1330807776),(58,'Site Settings','staffpanel.php?tool=site_settings','Adjust site settings here','settings',6,1,1304422497),(59,'Hit and run manager','staffpanel.php?tool=hit_and_run_settings','Manage all hit and run settings here','settings',6,1,1373110790),(60,'Opcode Manage','staffpanel.php?tool=op','View Opcode manager','other',6,1,1305728681),(61,'Memcache Manage','staffpanel.php?tool=memcache','View memcache manager','other',6,1,1305728711),(62,'Edit Moods','staffpanel.php?tool=edit_moods','Edit site usermoods here','user',4,1,1308914441),(63,'Search Cloud Manage','staffpanel.php?tool=cloudview','Manage searchcloud entries','settings',4,1,1311359588),(64,'Mass Bonus Manager','staffpanel.php?tool=mass_bonus_for_members','MassUpload, MassSeedbonus, MassFreeslot, MassInvite','settings',6,1,1311882635),(65,'Hit And Runs','staffpanel.php?tool=hit_and_run','View All Hit And Runs','stats',4,1,1312682819),(66,'View Possible Cheats','staffpanel.php?tool=cheaters','View All Cheat Information','stats',4,1,1312682871),(67,'Cleanup Manager','staffpanel.php?tool=cleanup_manager','Clean up interval manager','settings',6,1,1315001255),(68,'Deathrow','staffpanel.php?tool=deathrow','Torrents on Deathrow','user',4,1,1394313792),(69,'Referrers','staffpanel.php?tool=referrers','View referals here','stats',4,1,1362000677),(70,'Class Configurations','staffpanel.php?tool=class_config','Configure site user groups','settings',6,1,1366566489),(71,'Class Promotions','staffpanel.php?tool=class_promo','Set Promotion Critera','settings',6,1,1396513263),(72,'Comment viewer','staffpanel.php?tool=comments','Comment overview page','user',4,1,1403735418),(73,'Moderated torrents','staffpanel.php?tool=modded_torrents','Manage moderated torrents here','other',4,1,1406722110);
/*!40000 ALTER TABLE `staffpanel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regusers` int(10) unsigned NOT NULL DEFAULT '0',
  `unconusers` int(10) unsigned NOT NULL DEFAULT '0',
  `torrents` int(10) unsigned NOT NULL DEFAULT '0',
  `seeders` int(10) unsigned NOT NULL DEFAULT '0',
  `leechers` int(10) unsigned NOT NULL DEFAULT '0',
  `torrentstoday` int(10) unsigned NOT NULL DEFAULT '0',
  `donors` int(10) unsigned NOT NULL DEFAULT '0',
  `unconnectables` int(10) unsigned NOT NULL DEFAULT '0',
  `forumtopics` int(10) unsigned NOT NULL DEFAULT '0',
  `forumposts` int(10) unsigned NOT NULL DEFAULT '0',
  `numactive` int(10) unsigned NOT NULL DEFAULT '0',
  `torrentsmonth` int(10) unsigned NOT NULL DEFAULT '0',
  `gender_na` int(10) unsigned NOT NULL DEFAULT '1',
  `gender_male` int(10) unsigned NOT NULL DEFAULT '1',
  `gender_female` int(10) unsigned NOT NULL DEFAULT '1',
  `powerusers` int(10) unsigned NOT NULL DEFAULT '1',
  `disabled` int(10) unsigned NOT NULL DEFAULT '1',
  `uploaders` int(10) unsigned NOT NULL DEFAULT '1',
  `moderators` int(10) unsigned NOT NULL DEFAULT '1',
  `administrators` int(10) unsigned NOT NULL DEFAULT '1',
  `sysops` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
INSERT INTO `stats` VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylesheets`
--

DROP TABLE IF EXISTS `stylesheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stylesheets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stylesheets`
--

LOCK TABLES `stylesheets` WRITE;
/*!40000 ALTER TABLE `stylesheets` DISABLE KEYS */;
INSERT INTO `stylesheets` VALUES (1,'1.css','V3 Default');
/*!40000 ALTER TABLE `stylesheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtitles`
--

DROP TABLE IF EXISTS `subtitles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subtitles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imdb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `fps` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cds` int(3) NOT NULL DEFAULT '0',
  `hits` int(10) NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL DEFAULT '0',
  `owner` int(10) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtitles`
--

LOCK TABLES `subtitles` WRITE;
/*!40000 ALTER TABLE `subtitles` DISABLE KEYS */;
/*!40000 ALTER TABLE `subtitles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thanks`
--

DROP TABLE IF EXISTS `thanks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thanks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `torrentid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thanks`
--

LOCK TABLES `thanks` WRITE;
/*!40000 ALTER TABLE `thanks` DISABLE KEYS */;
/*!40000 ALTER TABLE `thanks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thankyou`
--

DROP TABLE IF EXISTS `thankyou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thankyou` (
  `tid` bigint(10) NOT NULL AUTO_INCREMENT,
  `uid` bigint(10) NOT NULL DEFAULT '0',
  `torid` bigint(10) NOT NULL DEFAULT '0',
  `thank_date` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thankyou`
--

LOCK TABLES `thankyou` WRITE;
/*!40000 ALTER TABLE `thankyou` DISABLE KEYS */;
/*!40000 ALTER TABLE `thankyou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbsup`
--

DROP TABLE IF EXISTS `thumbsup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thumbsup` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('torrents','posts','comments','users') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'torrents',
  `torrentid` int(10) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `commentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbsup`
--

LOCK TABLES `thumbsup` WRITE;
/*!40000 ALTER TABLE `thumbsup` DISABLE KEYS */;
/*!40000 ALTER TABLE `thumbsup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `topic_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locked` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `forum_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_post` int(10) unsigned NOT NULL DEFAULT '0',
  `sticky` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0',
  `num_ratings` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `topic_desc` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_count` int(10) unsigned NOT NULL DEFAULT '0',
  `first_post` int(10) unsigned NOT NULL DEFAULT '0',
  `status` enum('deleted','recycled','ok') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ok',
  `main_forum_id` int(10) unsigned NOT NULL DEFAULT '0',
  `anonymous` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `userid` (`user_id`),
  KEY `subject` (`topic_name`),
  KEY `lastpost` (`last_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `torrents`
--

DROP TABLE IF EXISTS `torrents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `info_hash` binary(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `save_as` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `descr` mediumtext COLLATE utf8mb4_unicode_ci,
  `ori_descr` mediumtext COLLATE utf8mb4_unicode_ci,
  `category` int(10) unsigned NOT NULL DEFAULT '0',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL DEFAULT '0',
  `type` enum('single','multi') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'single',
  `numfiles` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `times_completed` int(10) unsigned NOT NULL DEFAULT '0',
  `leechers` int(10) unsigned NOT NULL DEFAULT '0',
  `seeders` int(10) unsigned NOT NULL DEFAULT '0',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `visible` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `banned` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `num_ratings` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `nfo` mediumtext COLLATE utf8mb4_unicode_ci,
  `client_created_by` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unknown',
  `free` int(11) unsigned NOT NULL DEFAULT '0',
  `sticky` enum('yes','fly','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `anonymous` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `url` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checked_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` int(10) NOT NULL DEFAULT '0',
  `allow_comments` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nuked` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `nukereason` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_reseed` int(11) NOT NULL DEFAULT '0',
  `release_group` enum('scene','p2p','none') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `subs` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vip` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `newgenre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pretime` int(11) NOT NULL DEFAULT '0',
  `bump` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `request` int(10) unsigned NOT NULL DEFAULT '0',
  `offer` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thanks` int(10) NOT NULL DEFAULT '0',
  `description` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8mb4_unicode_ci,
  `recommended` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `silver` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_when` int(11) NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `ctime` int(11) NOT NULL DEFAULT '0',
  `freetorrent` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `info_hash` (`info_hash`),
  KEY `owner` (`owner`),
  KEY `visible` (`visible`),
  KEY `category_visible` (`category`),
  KEY `newgenre` (`newgenre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torrents`
--

LOCK TABLES `torrents` WRITE;
/*!40000 ALTER TABLE `torrents` DISABLE KEYS */;
/*!40000 ALTER TABLE `torrents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triviaq`
--

DROP TABLE IF EXISTS `triviaq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `triviaq` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `canswer` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asked` tinyint(1) NOT NULL DEFAULT '0',
  `current` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=3245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triviaq`
--

LOCK TABLES `triviaq` WRITE;
/*!40000 ALTER TABLE `triviaq` DISABLE KEYS */;
INSERT INTO `triviaq` VALUES (1,'What is in the Statue of Liberty&#039;s hand?','Torch','Basketball','Baseball','','','answer1',1,0),(2,'What planet is the brightest object in the sky, after the sun and moon?','Mars','Venus','Saturn','Jupiter','','answer2',1,0),(3,'Another Canadian breed, this short-coated dog comes in black, chocolate, and yellow. For many years he was the number one owned breed in North America.','Retriever, Golden','Retriever, Labrador','Retriever, Flat Coated','Retriever, Chesapeake Bay','','answer2',0,0),(4,'In which battle was the Executor, Darth Vader&#039;s personal Super Star Destroyer, involved?','Battle of Yavin (&quot;Episode IV&quot;)','Battle of Endor (&quot;Episode VI&quot;)','Battle of Coruscant (&quot;Episode III&quot;)','Battle of Naboo (&quot;Episode I&quot;)','','answer2',0,0),(5,'_____ has executed more prisoners in the past 25 years than any other state.','New York','California','North Dakota',' Texas','Tennessee','answer4',0,0),(6,'What U.S. state has the most unemployed dancers?','New York','Nevada','California','New Jersey','','answer2',0,0),(7,'How many notes are there in a musical chromatic scale?','7','12','6','','','answer2',0,0),(8,'What president who was in the White House from 1913-1921 had a cat named Puffins? ','Calvin Coolidge ','John F. Kennedy ','Woodrow Wilson ','Abraham Lincoln ','','answer3',0,0),(9,'Suppose you were a Viking and were afraid of giants and thunder. Suppose that you would like to see a woman with hair made of gold; that you&#039;d like to have a hammer which, when thrown at a target, returned magically to you; or that you&#039;d like to ride a chariot drawn by goats. You would call to the &quot;slayer of giants&quot;. What god would answer your pleas?','Bragi','Thor','Tyr','Baldr','','answer2',0,0),(10,'If Johnny mows one lawn a day and gets paid 10 to mow one lawn how much money will he make in one week if he mows one lawn per day?, ','140','10','70','','','answer3',0,0),(11,'What are chunks of rocks of varied size in space called?','asteroids','stars','comets','shooting stars','','answer1',0,0),(12,'Sudoku puzzles are normally created using the numbers 1-9. What other symbol(s) can be used to make a Sudoku-like puzzle?','Letters of the alphabet','Colors','Any of these can be used.','Chinese characters','','answer3',0,0),(13,'I played the top gun and I complete impossible missions. My first leading role was in &quot;Risky Business&quot; (1983) in which I danced in my underwear, socks and shirt. I also played Claus von Stauffenberg and Ron Kovic. Who do you think I am?','Anthony Hopkins','Will Smith','Tom Cruise','Morgan Freeman','','answer3',0,0),(14,'How many matches are in a standard pack?','50','100','20','','','answer3',0,0),(15,'At the worst depths of the Great Depression, _____ percent of the nation’s work force was unemployed.','5','10','15','25','50','answer4',0,0),(16,'What two U.S. states went to court in 1996 over ownership of historic Ellis Island?','New York and Connecticut','New York and New Jersey','New Yiork and Rhode Island','New York and Maryland','','answer2',0,0),(17,'Where did the 2008 Summer Olympics occur?','Tokyo, Japan','Paris, France','Beijing, China','','','answer3',0,0),(18,'Which character from Star Wars did Harrison Ford play?','Chewbacca','Han Solo','Luke Skywalker','','','answer2',0,0),(19,'The next big advance was to impose some kind of order on the particle zoo. Murray Gell-Man was equal to the task with his 1961 Eightfold Way. What shape did this &quot;Periodic Table of Particles&quot; take?','a rectangle','three pentagons',' two hexagons and a triangle','an octagon','','answer3',0,0),(20,'Isobars are lines on a weather map. What do they represent?','Equal temperature','Equal Precipitation','Equal Pressure','Equal elevation','','answer3',0,0),(21,'What do English speakers commonly call the Netherlands, but actually is the name of only part of the country?','Holland','Belgium','Germany','the Low Countries','','answer1',0,0),(22,'What optical aids was nearsighted model Grace Robin the first to show off in 1930?','Trifocals','Bifocals','Cat&#039;s Eye Glasses','Contact Lenses','','answer4',0,0),(23,'What British group were very successful in the 1980s, had three members with the surname Taylor (who weren&#039;t related) and were famous for their expensive music videos which often looked like travelogues?','Depeche Mode','Japan','Spandau Ballet','Duran Duran','','answer4',0,0),(24,'Firmly believing that liberating women would also liberate men, this journalist was a leader of the women&#039;s movement in the 70s. She popularised the phrase, &quot;A woman needs a man like a fish needs a bicycle.&quot;','Margaret Mitchell','Dorthy Parker','Hannah Arendt','Gloria Steinem','','answer4',0,0),(25,'Well, about this geology field trip, one student had been wanting really badly to go, but couldn&#039;t &quot;mafic.&quot; Why not?','Olivine got him','Because he felsic',' It didn&#039;t a pyroxene likely','He had plagioclased a paper','','answer2',0,0),(26,'Who had the British hit version of &quot;The Battle of New Orleans&quot;?','Lonnie Donegan','Joe Brown','Tommy Steele','Wee Willie Harris','','answer1',0,0),(27,'What is the national tree of the USA?','Redwood','Liquid Amber','Oak','','','answer3',0,0),(28,'How many growth rings does one tree make in a year?','I don&#039;t know','1','9','','','answer2',0,0),(29,'What type of whale can dive over 2,000 feet?','Blue','Killer','Sperm','Gray','','answer3',0,0),(30,'A rating of &#039;10&#039; is perfect. Who starred in the movie of that name?','Brigitte Bardot','Raquel Welch','Bo Derek','Marilyn Monroe','','answer3',0,0),(31,'Vostok, Antarctica holds record for the coldest temperature on Earth. How cold was it? ','-64 degrees F','-97 degrees F','-127 degrees F','-156 degrees F','','answer3',0,0),(32,'Which city is farthest west - San Diego, Reno, or Los Angeles.','San Diego','Los Angeles','Los Vegas','Reno','','answer4',0,0),(33,'Which key is on the right of the letter A?','S','3','Enter','','','answer1',0,0),(34,'Where is the Everglades National Park?','Louisiana','Texas','Florida','Mexico','','answer3',0,0),(35,'In the name Thomas Jefferson, which letter is silent?','T ','H','J ','S','','answer2',0,0),(36,'You have a square and a circle and the perimeter of the square is equal to the circumference of the circle. Which of the two figures covers a bigger area?','The square','The circle','Both cover the same are ','',' ','answer2',0,0),(37,'What causes ocean currents to curve to the right in the northern hemisphere and to the left in the southern hemisphere and hurricanes to rotate counter-clockwise in the northern hemisphere and clockwise in the southern?','Gravity','Coriolis effect','Stubborness','Viscosity Shear ','The curve of the earth','answer2',0,0),(38,'What do you do when you mud up?','Take a mud bath.','Have the last drink before the campfire goes out.','Get everyone involved in a mud fight.','Put mud on beesting','','answer2',0,0),(39,'The amount of space a car takes up is called its:','mass','volume','weight','density','','answer2',0,0),(40,'According to a Nursery Rhyme, it&#039;s falling down all the time.','Tower Hill','Royal Oak','London Bridge','Swiss Cottage','','answer3',0,0),(41,'Oh dear, Johnny Green did a very cruel thing when he put a cat into a well, but, fortunately, a kind lad came to the rescue and pulled her out. Who was this helpful boy?','Tommy Stout','Timmy Trout','Billy Sprout','Mickey Grout','','answer1',0,0),(42,'Who said “Middle Age is when your age starts to show around your middle”?','George Burns','Jack Nicklaus','Ronald Reagan','Bob Hope','','answer4',0,0),(43,'&#039;Lost but never forgotten&#039;. Which famous aviator was lost on July 2, 1937?','Amelia Earhart','&#039;Wrong Way&#039; Corrigan','Charles Lindbergh','Alcock and Brown','','answer1',0,0),(44,'The artist is Tina Turner. The title is &#039;We Don&#039;t Need Another _____&#039;.','airline','school day','hero','homework assignment','','answer3',0,0),(46,'What &quot;tasty&quot; entertainer was born in 1890&#039;s New Orleans and was known for his blues and ragtime works?','Johnny the Cabbage James','Jelly Roll Morton','Lemon Larry Harrison','Craig Olive Sandhurst','','answer2',0,0),(47,'How many degrees does the Earth turn in one day? ','90','180','270','360','','answer4',0,0),(48,'Which type of scientist studies and forecasts the weather?','Astronomer','Meteorologist','Biologist','','','answer2',0,0),(49,'What U.S. state do Knickerbockers knock around in?','Pennsylvania','Connecticut','New York','New Jersey','','answer3',0,0),(50,'What do you fear if you have Blennophobia? Something gross, I would say!! I guess if you&#039;ll probably never watch the movie &quot;Flubber&quot; ever again!','slime','insanity','worms','poison','','answer1',0,0),(51,'What is your mummy bag?','A sleeping bag tapered at the ends to reduce air space and to conserve heat.','A bag mummies were kept in.','A bag your mom used for camping laundry.','','','answer1',0,0),(52,'The game&#039;s over. You&#039;ve just &quot;put on a clinic&quot;. What have you done?','Got beaten badly','Beaten the opposing team badly','Had a close call','Lost a close game','','answer2',0,0),(53,'3 is what kind of a number?','Prime number',' Even number','is not a number','','','answer1',0,0),(54,'Kunta Kinte is a character from which novel written in 1976, later turned into a mini-series? ','Malcolm X ','Attica ','Mississippi Burning ','Roots:The Saga Of An American Family ','','answer4',0,0),(55,'What is the greatest amount of children born to one woman?','20','42','69','','','answer3',0,0),(56,'Who won the Football World Cup in 1982?','Brazil','Argentina','Germany','Italy','','answer4',0,0),(57,'Let&#039;s move all the way to 1984. This singer/songwriter had a hit with the song &quot;Purple Rain&quot;. Who gave us this hit?','The Hollies','Prince','Tori Amos','The Waterboys','','answer2',0,0),(58,'An old potter was selling pots.  Once, a woman came and bought a pot for its sticker price.  She had to pay 1 plus half its price.  What was the price?','1','0.5','2','','','answer3',0,0),(59,'How long is the total shoreline of the USA?','22680m','22680cm','22680km','','','answer3',0,0),(60,'What breed was responsible for two-thirds of U.S. dog bite deaths in the 1980s?','Pit bull','German Shepard','Labrador Retriever','Bull Terrier','','answer1',0,0),(61,'When were the 29th Olympic Games held?','2007','2009','2008','','','answer3',0,0),(62,'In what Disney film can you hear the song &quot;Higitus Figitus&quot;?','Cinderella','The Little Mermaid','The Sword in the Stone','Summer Magic','','answer3',0,0),(63,'Who changes places with a pauper in The Prince and the Pauper?','Edward III','Edward VI','Charles II','George IV','','answer2',0,0),(64,'What kind of grooming requirements do Rat Terriers have?','Low maintenance- Light brushing here and there, bath every now and then.','They clean themselves.','Frequent haircuts and brushing everyday','No grooming required at all!','','answer1',0,0),(65,'What does a herpetologist study?','Sexual Deseases','Insects','Birds','Reptiles','','answer4',0,0),(66,'What was Marilyn Monroe’s name at the time of her birth?','Norma Jeane Mortensen','Marlene Dietrich','Jane Seymour','Jill Dando','','answer1',0,0),(67,'Where is Emperor Akbar’s tomb?','Delhi','Amarkot','Agra','Sikandra','','answer4',0,0),(68,'The numbers &quot;__&quot; can be found on the back of the US 5 dollar bill, in the bushes at the base of the, Lincoln Memorial.','172','5','100','','','answer1',0,0),(69,'Which story first brought fame to Mark Twain?','The Adventures of Huckleberry Finn','The Innocents Abroad','The Celebrated Jumping Frog of Calavaras County','David Copperfield','','answer3',0,0),(70,'Which of these magazines with two-letter names is similar to &quot;People&quot; magazine? ','MS ','US ','CQ ','MRS ','All of these ','answer2',0,0),(71,'What U.S. state has the highest percentage of residents born in other countries?','Texas','New York','Florida','California','','answer4',0,0),(72,'Andrew Jackson was considered one of the leading candidates in the U.S. presidential election of 1824. What was Jackson&#039;s popular nickname? ','The King ','Smokey ','Old Hickory ','The Tiger ','','answer3',0,0),(73,'How long did Leonardo da Vinci spend painting the Mona Lisa&#039;s lips?','8 months','12 years','10 weeks','2 years','','answer2',0,0),(74,'The ___ Arrows are the Royal Air Force&#039;s world famous aerobatic display team.','Red','Blue','Green','Polka','','answer1',0,0),(75,'This gun was invented in 1947 and is one of the most recognisable in the world normally with a curved magazine  More have been produced than all other assault rifles combined  Legendarily rugged, it lasts in active service between 20 and 40 years.','Uzi','The M1 Garand','AK 47','',' ','answer3',0,0),(76,'Which is the longest river in Canada?','St. Lawrence','MacKenzie','Nelson','Fraser','','answer2',0,0),(77,'What branch in biology includes the study of potential life beyond Earth?','Astrobiology','Anatomy','Taxonomy','','','answer1',0,0),(78,'The Godfather of Soul and &quot;the hardest working man in show business&quot; are just two of the titles this performer has earned since he began singing and dancing (some others are &quot;Soul Brother #1&quot; and &quot;the King of Funk&quot;). Who is he? ','James Brown ','George Clinton ','Bootsie Collins ','Donnie Osmond ','','answer1',0,0),(79,'The story of Scotsman William Wallace who unites the Scots in a battle against England.','Braveheart','You Can&#039;t Take it with You','Wallace','The Story of the 13th Century','','answer1',0,0),(80,' When does the eye color set in an infant?','6-9 months','4-5 months','2-4 weeks','','','answer1',0,0),(81,'How many years are there in a decade?','10','100','5','','','answer1',0,0),(82,'Which is the capital of Norway?','Bergen','Oslo','Stavanger','Trondheim','','answer2',0,0),(83,'Which term is given to lizard-hipped dinosaurs?','Saurischians','Lizischians','Ornithiscians','mammiscians','','answer1',0,0),(84,'What South Asian city is the planet&#039;s biggest feature film producer?','Delhi','Dhaka','Bombay','Karachi','','answer3',0,0),(85,'What African river did Henry Stanley prove was not connected to the Nile?','Zambezi','Niger','Senegal','Congo','','answer4',0,0),(86,'Which two European countries lead the world in wine consumption per capita?','France and Spain','France and Italy','Italy and Spain','France and Switzerland','','answer2',0,0),(87,'What&#039;s the world&#039;s highest island mountain?','Gran Canaria','Micronesia','Mauna','Malaita','','answer3',0,0),(88,'Where did Tolstoy come from?','The USA','Russia','Turkey','','','answer2',0,0),(89,'Which of the following is actually the name of a musical instrument?','ron ron','john john','tom tom','bill bill','','answer3',0,0),(90,'Melissa is taller than Ashley.  Bill is taller than Ted and Melissa., Fred is shorter than Ashley but taller than Ted.  Who is the shortest?','Melissa ','Ashley ','Ted','','','answer3',0,0),(91,'Who directed ‘Halloween’(1978), ‘The Thing’(1982) and ‘Prince of Darkness’(1978)?','Steven Spielberg','Joe Dante','Wes Craven','John Carpenter','','answer4',0,0),(92,'What&#039;s the southernmost state capital among the 48 contiguous states?','Pheonix','Baten Rouge','Austin','Jacksonville','','answer3',0,0),(93,'When did Aristotle live?','384-322 BC','428-348 BC','4 BC – 65 AD','121-180 AD','','answer1',0,0),(94,'Increasing reliance on the use of _____ has raised questions about the future of telephone polling.','faxes','email','cell phones','instant messaging','blogs','answer3',0,0),(95,'This candy bar is unusual in that it is mostly purchased online. It consists of peanut butter and toasted coconut. What&#039;s this candy?','Zephyr','Blossom','Tastetations','Zagnut','','answer4',0,0),(96,'On June 17, 1932, the Congress of the United States passed the Lindbergh Law. To what did it pertain?','Kidnapping','Antisemitism','Trans-Atantic flight','Air mail','','answer1',0,0),(97,'Who was the original voice of Mickey Mouse?','Burl Ives','Walt Disney','Roy Disney','Dan Dailey','','answer2',0,0),(98,'Which of the following nations has neither separation of powers nor judicial review?','France','Mexico','Canada','Great Britain','Japan','answer4',0,0),(99,'Which of the following is the Illinois state fossil?','Arthropoda','Trilobite','Ammonoid','Tully Monster','','answer4',0,0),(100,'Which of the following is the longest river on Earth?','Mississippi','Nile','Amazon','Congo','','answer2',0,0),(101,'What character sung about by Simon and Garfunkel and featured in the movie &quot;The Graduate&quot; was told that &quot;Jesus loves you more than you will know&quot;?','Mr. Robinson','None of These','Miss Robinson','Mrs. Robinson','','answer4',0,0),(102,'Gas, solid, and liquid are known in chemistry as the:','Formula of precipitation','Three basic states',' Flow of all things','','','answer2',0,0),(103,'Where does sound travel the fastest?','Water','Air','Solid','','','answer3',0,0),(104,'The bow used to play a violin contains hairs from what animal?','Cat','Bear','Goat','Horse','','answer4',0,0),(105,'This vegetable is also known as the snow cabbage. What is this called?','Bon Choa','Blo Chue','Bran Chii','Bok Choy','','answer4',0,0),(106,'I was a famous actor (mostly in Westerns) known as &quot;The Duke&quot;.','John Wayne','John West','Johnny Cash','John of West Point','','answer1',0,0),(107,'What island boasts Mount Fuji?','Honshu','Hokkaido','Kyushu','Shikoku','','answer1',0,0),(108,'What do we call a scientist who studies fossils from dinosaurs? ','Geologist','Archeologist','A dead Beat','Paleontologist','','answer4',0,0),(109,'In the movie “October Sky” only one teacher understands his special students could actually win what?','An Athletic Scholarship','The National Science Fair (and a college scholarship)','A Seat in the New York Philharmonic','A Lead Role in a Play on Broadway','','answer2',1,0),(110,'What country boasts the world&#039;s oldest active brewery, dating back to 1040 A.D,.?','Japan','China','Austria','Germany','','answer4',0,0),(111,'What film has a snake called Kaa in it?','101 Dalmatians','Beauty and the Beast','The Jungle Book','Toy Story','','answer3',0,0),(112,'Would a strong acid have a pH closer to: ','1','5','9','13','','answer1',0,0),(113,'In oil painting, why shouldn&#039;t you dry your paintings in the dark?','You can&#039;t see when it&#039;s dry.','This may cause a thin film of oil to rise to the surface, yellowing it.','Paint needs sunlight to dry.','It will stay wet and eventually go mouldy. ','','answer2',0,0),(114,'Originally United Nations had five official languages. Which language was made the sixth official language of United Nations?','Arabic','English','French','Spanish','','answer1',0,0),(115,'A man recently discharged from the Army after a war somewhere in Asia is recruited to recover the Egg of the Phoenix. Which author wrote this?','Herbert','Heinlein','None of these authors','Aldiss','','answer2',0,0),(116,'Six is the number of one of God&#039;s created beings. Which one is represented by SIX?','Man','Lucifer','Angel','Animal','','answer1',0,0),(117,'How many squares on a chess board?','23','64','45','','','answer2',0,0),(118,'What color is a NYC taxi?','Red','Black','Yellow','','','answer3',0,0),(119,'What country calls its expressways autostrada?','Germany','Austria','Poland','Italy','','answer4',0,0),(120,'What former Playboy Bunny was a spokeswoman for a popular diet pill?','Dana Plato','Anna Nicole Smith','Vida Guerrera','','','answer2',0,0),(121,'Which gland in the human body is called the master gland?','Pancreas','Thyroid','Pituitary','Spleen','','answer3',0,0),(122,'Who is the Greek Goddess of Victory?','Aegle','Nike','Adidas','','','answer2',0,0),(123,'What is the longest word in the English language with all the letters in alphabetical order?','Almost','Egg','Aegilops','','','answer3',0,0),(124,'In boxing what do the letters K.O. stand for?','Kick out','Knock over','Knock out','',' ','answer3',0,0),(125,'Author Graham Greene wrote which of the following books? ','Blackpool Rock ','Plymouth Rock ','Brighton Rock ','Windsor Rock ','','answer3',0,0),(126,'Who is the author of Pride and Prejudice?','Jane Austen','Agatha Christie','William Shakespeare','Bernard Shaw','','answer1',0,0),(127,'The U.S. Post Office handles  ___percent of the world&#039;s mail?','10','90','46','','','answer3',0,0),(128,'What type of animal, named Laika, was inside Sputnik 2 when launched into orbit in 1957?','Monkey','Dog','Cat','','','answer2',0,0),(129,'Menolly is abused both mentally and physically by her parents and other members of their small community, once her beloved mentor Petiron dies. Although she is incredibly good at something usually highly prized in her world, &quot;everyone&quot; knows that &quot;girls cannot be...&quot;; what can girls not be?','Astrogators','Administrators-in-Chief','Harpers','Spellsingers','','answer3',0,0),(130,'What U.S. senator resigned shortly after the Ethics Committee recommended he be expelled for sexual misconduct?','Byron Dorgan','John Ensign','Bob Packwood','Chris Dodd','','answer3',0,0),(131,'What Harry Callahan line did Ronald Reagan invoke to &quot;tax increasers&quot;?','Go ahead, make my day','You want me, sucker','Just give me a reason','You and what army','','answer1',0,0),(132,'What does our Earth revolve around? ','The Moon ','Our Earth does not revolve around anything','The sun','','','answer3',0,0),(133,'In which city were the &quot;Chariots OF Fire&quot; Olympic Games?','Paris','Moscow','Los Angeles','Salt Lake City','','answer1',0,0),(134,'What 4,588-mile dune-laden expanse did Choi Jong-yul say he walked across &quot;because it was there&quot;?','The Sahara Desert','The Gobi Desert','The Mojavy Desert','The kalahari Desert','','answer1',0,0),(135,'What country&#039;s farthest southern and northern points are Land&#039;s End and John o&#039; Groats, respectively?','Ireland','France','Britian','Scotland','','answer3',0,0),(136,'What group released the album Sticky Fingers?',' Led Zepplin','Rolling Stones','Grand Funk','Jefferson Airplane','','answer2',0,0),(137,'What Mississippi town name provides the answer to the Arizona town of Why?','Why Not','Because','I Said So','Who Cares','','answer1',0,0),(138,'The word fossil comes from the Latin word “fodere”. What does it mean? ','Buried in the Dirt','Anchient Feature','Old Relic','To Dig Up','','answer4',0,0),(139,'  Which fictional character appears in &#039;Alice in Wonderland&#039;?','A dragonfly','Puff the magic dragon','the Cheshire cat','The dragon from &#039;Pete&#039;s Dragon&#039;','','answer3',0,0),(140,'You hear your stage manager talking about &quot;preset.&quot; What are they referring to?','Making sure that all of the audience members have seats','A small set that sits in front of the curtain','The process of checking that set pieces, props and costumes are in the right place before a show','A type of ironing starch to stiffen costumes','','answer3',0,0),(141,'How long is the wingspan of the largest bat, the flying foxes of Asia?','1 foot','3 feet','6 feet','8 feet','','answer3',0,0),(142,'To &#039;put the cat among the pigeons&#039; means to','start a new life','cause trouble by acting suddenly','endanger innocent people','','','answer2',0,0),(143,'Which outrageously funny history of England, published in 1930, describes itself as &quot;comprising all the parts you can remember, including 103 Good Things, 5 Bad Kings and 2 Genuine Dates&quot;?',' &#039;A History of the English-Speaking Peoples&#039;',' &#039;Horrible Histories&#039;',' &#039;1066 and All That&#039;','&#039;England&#039;s History in a Nutshell&#039;','','answer3',0,0),(144,'What was Harry Houdini’s role in the film The Grim Game?','John Dawson','Matthew Perry','Peter Pan','Harvey Hanford','','answer4',0,0),(145,'What is the sum of degrees of the interior angles of a rectangle?','1000','360','180','','','answer2',0,0),(146,'What is the name of the device used to measure time, where sand falls from the upper bulb to the lower?','hourglass','stopwatch','sundial','atomic clock','','answer1',0,0),(147,'The often-heard &#039;capeesh&#039; is a distortion of &#039;capisci&#039;, meaning:','you hungry?','ready to go?','you need to go potty?','you understand?','','answer4',0,0),(148,'Who is considered the father of geometry?','Pythagoras','Socrates','Alexander','Euclid','','answer4',0,0),(149,'What strife-torn African nation boasts a world high of 8.3 births per female?','Rwanda','Nigeria','Cameroon','Congo','','answer1',0,0),(150,'What family of tentacled horrors includes the world&#039;s most venomous animal?','Octopus','Squid','Anemone','Jellyfish','','answer4',0,0),(151,'What is in the centre of Canada’s flag?','Two swords','Sun','Cross','Maple leaf','','answer4',0,0),(152,'This is a game that is often played during indoor recess when the teacher wants to keep the class quiet but still entertained.','Red Rover, Red Rover','Dodge Ball','7-Up','Kickball','','answer3',0,0),(153,'What&#039;s a water moccasin often called, due to the white inside its mouth?','Whitemouth','White Death','Cottonmouth','Cottonjaw','','answer3',0,0),(154,'&quot;The boys are back, The boys are back, The boys are back...gonna do it again, Gonna wake up the neighborhood.&quot; are the lyrics to which song?','The Boys Are Back','We&#039;re All in This Together (Graduation Mix)','A Night to Remember','Walk Away','','answer1',0,0),(155,'What was the name of the fox who told Pinocchio that he should be an actor?','Gipetto','Lampwick','Honest John ','None of the above','','answer3',0,0),(156,'Who was the voice of Mr. Magoo?',' Jim Backus','Bob Denver','Phil Silvers','Tim Allen','','answer1',0,0),(157,'How many floors are there in the Empire State Building?','102','50','900','','','answer1',0,0),(158,'You have just finished writing the great American novel. What type of writing is it?','exposition','narrative','description','argumentation','','answer2',0,0),(159,'What is the national drink of Greece? ','Red Wine ','Dry Martini ','White Wine ','Ouzo ','','answer4',0,0),(160,'What are painted bright yellow and left out for public use on the streets of Portland, Oregon?','Bicycles','Trash Containers','Travel Guides','Rain Coats','','answer1',0,0),(161,'In the film ‘Batman Forever’, who plays Batman?','Michael Keaton','Val Kilmer','Adam West','Adam Sandler','','answer2',0,0),(162,'Which is the first 24 hours news channel?','CNN','Disney','Star News','NBC','','answer1',0,0),(163,'What is longer a foot or a yard?, same ','yard','same ','Football','','','answer1',0,0),(164,'Which movie title starring Sir Alec Guinness is derived from a 1842 Tennyson poem called &#039;Lady Clara Vere de Vere&#039;? ','Kind Hearts and Coronets (1949) ','The Ladykillers (1955) ','The Lavender Hill Mob (1951) ','Great Expectations (1946) ','','answer1',0,0),(165,'Who is Norway’s most famous writer?','Edvard Munch','Edvard Greig','Henrik Ibsen','Christian Krogh','','answer3',0,0),(166,'This city was founded in 969 by the Fatimid caliphs of Egypt, as a royal residence, near their actual capital city, Fustat.','Cairo','Tripoli','Alexandria','Baghdad','','answer1',0,0),(167,'Which music group sang the song &quot;Baby Love?&quot;','The Supremes ','Abba ','The Carpenters','','','answer1',0,0),(168,'How many seeds are there in a cocoa pod?','25-40','40-60','60-100','too many to count','','answer1',0,0),(169,'When born, what size is the baby&#039;s head in relation to the rest of his/her body?','one half the size of the body ',' one quarter the size of the body','one eighteenth the size of the body','','','answer2',0,0),(170,'What jukebox musical that opened at the Minskoff Theater, features music by The Bee Gees?','Lennon','Mamma Mia!','We Will Rock You','Saturday Night Fever','','answer4',0,0),(171,'Which of the following was a dwelling place in ancient Ireland?','Fulacht fiadh','Crannog','Quern','Souterrain','','answer2',0,0),(172,'  Three of the four listed movie characters share a common trait. They either have blades instead of hands, or hands with blades attached . Which movie character is the odd one out?','Freddy Krueger','Wolverine','Edward Scissorhands','Spider-man','','answer4',0,0),(173,'On a bright morning of 1877, the first Test match in cricket history was played. Here, a player playing for Australia scored the first-ever century of Test cricket. He went on to score 165* and this was the highest individual Test score from 1877-1882. Who was this batsman?','Bill Murdoch','Charles Bannerman','Mark Pettini','W. G. Grace','','answer2',0,0),(174,'Different volcanos produce lava of different viscosities. This is the main reason some volcanos erupt explosively, and some just spread runny lava over a large area. To give you an idea of how the difference in viscosities of different types of magma, consider the following experiment. You have two swimming pools, one filled with basaltic lava (think Hawaii), and one filled with rhyolitic lava (think Mount St. Helens). You drop a steel ball in the basaltic lava. It takes about eight hours to sink to the bottom. You drop a steel ball in the rhyolitic lava. About how long does it take to sink to the bottom this time?','24 hours','Eight months','One week','900 years','','answer4',0,0),(175,'In the 1958 movie ‘Cat on a Hot Tin Roof’, what is Elizabeth Taylor’s response to Paul Newman’s question, “What is the victory of a cat on a hot tin roof?”?','“I guess I don’t know, is it really a victory?”','Its her choice to be there”','“Just staying on it, I guess. Long as she can”','“She can jump off, anytime she wants”','','answer3',0,0),(176,'Which rays does the Earth release after turning the ray from the sun into heat energy?','Infrared rays','Ultraviolet rays ','Both','','','answer1',0,0),(177,'How many pairs of legs does the crab have?','5','2','1','','','answer1',0,0),(178,'What does NASA stand for?','National Astronomic and Space Administration','National Aeronautics and Space Administration','National Aeronautics and Space Association','','','answer2',0,0),(179,'F is for a town in Suffolk where the largest container port in the UK sits alongside Languard Fort. The actor Sir John Mills was born here and Wallis Simpson stayed in the town during the abdication crisis. Where are we?','Felixstowe','Fressingfield','Framlingham','Freston','','answer1',0,0),(180,'Why does a whip make a cracking sound?','It doesn&#039;t make a sound ','Because  its tip moves  faster  than the speed of sound','Because its tip hits something in the air','','','answer2',0,0),(181,'What&#039;s short for &quot;light amplification by stimulated emission of radiation&quot;?','Laser','Phaser','Taser','Razer','','answer1',0,0),(182,'Who used a flask with a curved neck to prove that spontaneous generation did not occur in a broth?','Spallanzani','Redi','Darwin','Pasteur','','answer4',0,0),(183,'George Clooney is the captain of a fishing boat which runs into some bad weather, while Diane Lane waits for the crew to return.','Deep Blue Sea','The Perfect Storm','Captains Courageous','Lost at Sea','','answer2',0,0),(184,'Who is the patron saint of music?','St. Agnes','St. Cecilia','St. Jerome','St. Augustine','','answer2',0,0),(185,'What&#039;s the acronym for the South Western Townships near Johannesburg?','SWT','SoWeTo','SWeT','SLUM','','answer2',0,0),(186,'What is the longest word that can be made usi?ng the letters only on one row of the keyboard?','Overrated','Typewriter','Unbelievable','','','answer2',0,0),(187,'What hide was first used to cover baseballs in 1975?','pig hide','cow hide','buffalo hide','horse hide','','answer2',0,0),(188,'Which of these words matches the definition: self government for Ireland but no control of foreign policy?','Unionism','Home Rule','Republicanism','Federalism','','answer2',0,0),(189,'What does &#039;E&#039; represent in E = MC2?','Energy',' Einstein','EBay','','','answer1',0,0),(190,'When truck drivers talk about green stamps what are they referring to?','Money','Traffic Lights ','Wheels','',' ','answer1',0,0),(191,'Which battle did not take place simultaneously with a lightsaber fight?','Battle of Naboo (Episode I)','Battle of Yavin (Episode IV)','Battle of Coruscant (Episode III)','Battle of Endor (Episode VI)','','answer2',1,0),(192,'What Nepalese city name means &quot;wooden temples&quot;?','Dharan','Katmandu','Janakpur','Ratnanagar','','answer2',0,0),(193,'Shakespeare&#039;s fair Juliet could not live without her Romeo so she committed suicide. How?','She drank poison.','She jumped from her balcony.','She slit her wrists.','She stabbed herself with Romeo&#039;s dagger.','','answer4',0,0),(194,'  Which word connects a dog breed, a pugilist and an uprising?','Dalmatian','Boxer','Pointer','Terrier','','answer2',0,0),(195,'If you were looking at castles in Fussen, where would you be?','Bavaria, Germany','Birmingham, England','Perth, Australia','Reims, France','','answer1',0,0),(196,'In what Disney film can you hear Sean Connery sing?','Rob Roy, the Highland Rogue','Darby O&#039;Gill and the Little People','Kidnapped','The Sword and the Rose','','answer2',0,0),(197,'Which of the following items was not invented or first developed in China?','Silk','Hourglass','Moveable type','Chopsticks','','answer2',0,0),(198,'  Pixar is a movie studio known for its computer graphic animated films. What is the first Pixar movie to include live action footage?','M-O','BURN-E','WALL-E','EVE','','answer3',0,0),(199,'The space rocket engine has to supply its own oxygen because:','They don&#039;t have to supply its own oxygen','There&#039;s no oxygen  in outer space for its fuel to burn','More oxygen makes the rocket go faster ','',' ','answer2',0,0),(200,'What body part does bulbar polio attack?','Lungs','Heart','Muscles','Kidney','','answer1',0,0),(201,'  What name, also the name of a colour and of a verb meaning &quot;to abandon on a desert island&quot;, was given to runaway slaves who formed independent communities in the Americas in the 17th and 18th centuries?','Yellow','Taupe','Maroon','Ochre','','answer3',0,0),(202,'Which of the following celebrities named their baby Phinnaeus? ','Angelina Jolie','Julia Roberts','Courtney Cox','Barbra Walters','','answer2',0,0),(203,'How many seconds are in an hour?','2000','193','3600','','','answer3',0,0),(204,'Cult film director Peter Jackson utilised which country&#039;s locations for filming &#039;Lord of the Rings : The Fellowship of the Ring&#039;?','Canada','New Zealand','Papua New Guinea','Easter Island','','answer2',0,0),(205,'What was Esther also known as?','Ruth','Hadassah','Rebecka','Madria','','answer2',0,0),(206,'What now extinct fowl was originally named &quot;disgusting bird&quot; by its Dutch discoverers?','Passenger Pigeon','Dodo','Northern Sea Puffin','Grey Bellied Albatross','','answer2',0,0),(207,'What is the Square of 13?','169','199','283','','','answer1',0,0),(208,'Which residing U.S. President watched along with the world, the selling of Babe Ruth to the Yankees after the 1919 season?','Woodrow Wilson','James Buchanan','James Monroe','Herbert Hoover','','answer1',0,0),(209,'What do cows drink?','Milk','Wine','Water','','','answer3',0,0),(210,'What Star sign are you if born November 11th?','Scorpio','Leo','Cancer','','','answer1',0,0),(211,'If the scale on a map is 1:10000 how long in metres will a 5cm road be in real life?','500m','10000m','5m','',' ','answer1',0,0),(212,'What was the first product of H.J. Heinz?','Ketchup','Horseradish','Barbecue sauce','Heinz 57','','answer2',0,0),(213,'Where did Harry Houdini die?','Belgrade','Detroit','Skopje','New York','','answer2',0,0),(214,'On a map, are the lines that run parallel to the equator called: ','latitude lines','longitude lines','contour lines','railroad lines','','answer1',0,0),(215,'Sicily: The Airborne Forces had a terrible entry into Sicily. They were dropped all over the place! What was the cause of the poor drop?','No radar pathfinders','All of these','Gale force winds','Poorly trained airwing (52nd Troop Carrier)','','answer2',0,0),(216,'What British Commonwealth nation has the most people driving on the right side of the road?','Austrailia','India','Canada','South Africa','','answer3',0,0),(217,'In the Hawaiian language, what word can mean either &quot;hello&quot;, &quot;goodbye&quot;, or &quot;love&quot;? ','wahine ','kane ','aloha ','lanai ','puki ','answer3',0,0),(218,'Everybody likes this thing because it is beautiful and precious. The reasons why women and men worship it tend to be different. It can help you to become important, attractive or rich. Vikings called it &quot;Freya&#039;s tears&quot;, &quot;Sif&#039;s hair&quot; or &quot;a serpent&#039;s lair&quot;. What is it that I wouldn&#039;t mind getting?','brilliant','sapphire','silver','gold','','answer4',0,0),(219,'Which of the following colours does not appear on the South African flag?','Purple','Red','Green','Yellow','','answer1',0,0),(220,'What&#039;s the small flap in the back of your throat called?','The Tonsils','The Uvula','The Tongue','The Esophagus','','answer2',0,0),(221,'What is it called when therapists use art to help clients deal with emotional issues?','Crazy Art','Art Therapy','Angel Painting','Self-Portrait','','answer2',0,0),(222,'What baking ingredient, sprayed at high pressure, did the U.S. Air Force replace its toxic paint stripper with?','Flour','Baking Powder','Baking Soda','Shortening','','answer3',0,0),(223,'American physicist Carl Anderson&#039;s 1932 discovered the first known example of antimatter. Examining photographs of a cloud chamber bombarded by cosmic rays, Anderson noticed the track of what antiparticle of an electron?','pi meson','muon','positron','electron neutrino','','answer3',0,0),(224,'The river that carries the highest quantity of water into the sea is the..?','Chang Jiang ','Amazon  River','Nile','','','answer2',0,0),(225,'When the French munitions ship Mont Blanc collided with the Belgian relief ship Imo on December 6, 1917, it was the largest man made explosion prior to the atomic bomb. Where did this take place?','Victoria, British Columbia','Charlottetown, Prince Edward Island','St. Johns, Newfoundland','Halifax, Nova Scotia ','','answer4',0,0),(226,'What U.S. state boasts a town called Captain Cook?','Alaska','Washington','California','Hawaii','','answer4',0,0),(227,'What milk product did the U.S  Agriculture Department propose as a substitute for meat in school lunches in 1996?,','Yogurt','Tofu','Eggs','','','answer1',0,0),(228,'Who painted The Last Supper?','Andrea Mantegna','Picasso','Da Vinci','',' ','answer3',0,0),(229,'Which book is about a little girl from Kansas?','Sisterhood of the Traveling Pants','The Wizard of Oz','Clifford, the Big Red Dog','The Outsiders','','answer2',0,0),(230,'What is the feminine of gander?','Glider','Goat','Goose','Grout','','answer3',0,0),(231,'Solid fragmented material transported and deposited that forms in layers of loose, unconsolidated material.','Lithification','Sediment','Magma','Metamorphic Rock','','answer2',0,0),(232,'His son is called A.J. and is also working in the music industry. This Jim sings legendary songs like: &#039;Time In A Bottle&#039; and &#039;Bad Bad Leroy Brown&#039;. What is his name?','Jim Troce','Jim Groce','Jim Croce','Jim Kloce','','answer3',0,0),(233,'What Australian city boasts the largest Greek population in the world outside of Greece?','Sidney','Cessnock','Victor Harbor','Melbourne','','answer4',0,0),(234,'Italian composer; violinist; musician','Otto Lilienthal','Samuel Cunard','Niccolo Paganini','Dylan Thomas','','answer3',0,0),(235,'In the video game &quot;Mass Effect 2&quot; - What is the name of the band that intrigues Morinth?','Elcor Forta','Afterlife','Hallex','Expel 10','','answer4',0,0),(236,'What year was the Playboy magazine first published?','1021','1953','1999','','','answer2',0,0),(237,'Speaking in tongues. &quot;But in the church I would rather ____________ than [speak] ten thousand words in a tongue.&quot; (1 Corinthians 14 v. 19) Which words have been omitted? ','Get a lucky ducky badge ','Speak five intelligible words to instruct others ','Spend a night in Hades ','Speak a million words in a tongue ','','answer2',0,0),(238,'What city did Sigmund Freud call home?','Rome','Berlin','Vienna','Paris','','answer3',0,0),(239,'Which is the largest planet in our solar system? ','Earth','Mars','Jupiter','Saturn','','answer3',0,0),(240,'Which piece in a single move moves one square straight and another square diagonally in chess?','Knight','King','Bishop','Rook','','answer1',0,0),(241,'Which poem by Edgar Allan Poe begins “Dim vales- and shadowy floods- And cloudy-looking woods,”?','Dreamland','Fairy Land','Eldorado','The Haunted Palace','','answer2',0,0),(242,'What is the hottest planet in our solar system?','Venus','Mars','Mercury','','','answer1',0,0),(243,'This shape has three sides and three angles.','Heart','Triangle','Square','','','answer2',0,0),(244,'In which year was Magna Carta signed?','1214','1066','1707','1215','','answer4',0,0),(245,'In politics, if you want anything said, ask a man. If you want anything done, ask a woman. ','Cynthia Nelms ','Sydney J. Harris ','Edward Estlin Cummings ','Margaret Thatcher ','','answer4',0,0),(246,'Which country is the top car producing country in the world?','Italy','Japan','Germany','','','answer2',0,0),(247,'The average hen will lay _____ eggs a year','155','196','227','296','','answer3',0,0),(248,'Which capital city does the river Han flow through?','Tokyo','Beijing','Seoul','','','answer3',0,0),(249,'&quot;Nothing is particularly hard if you divide it into small jobs.&quot; (Henry Ford): What was the title given to an assistant to a thatcher?','yatman','yowler','yagger','yeagerman','','answer2',0,0),(250,'When did the Continental congress first issue currency to finance the Revolutionary War?','1778','1988','1723','','','answer1',0,0),(251,'Which of the following animals can&#039;t vomit?','Rats and horses','Dogs and horses','Rats and dogs','','','answer1',0,0),(252,'The largest hailstone on record was 17.5 inches in circumference. How much did it weigh?','2 pounds','4 pounds','6 pounds','8 pounds','','answer1',0,0),(253,'Which was invented first?','Telephone','Microwave Oven','Light Bulb ','Internal Combustion Engine','','answer4',0,0),(254,'What is Donald Duck&#039;s middle name? ','Faunterloy ','Walter ','Hewey ','He didn&#039;t have one ','','answer1',0,0),(255,'Are molecules packed most tightly together in a:','solid','liquid','gas','plasma','','answer1',0,0),(256,'What bean provides the colored inks used in most U.S. daily newspapers?','Coffee Beans','Cocoa Beans','Soy Beans','Kidney Beans','','answer3',0,0),(257,'As mountains get older, mountains gradually change shape. How much does a mountain lose every 1000 years?','3.5 inches','1.5 feet','105 feet','1,005 feet','','answer1',0,0),(258,'A caldera is a large depression found in the center of what geographical feature? ','volcano ','glacier ','waterfall ','dyke ','','answer1',0,0),(259,'Which Ocean is on west coast of Canada?','The Pacific Ocean','The Indian Ocean','The Arctic Ocean','','','answer1',0,0),(260,'Which currency is used in the European Union?','Euro','Yen','Pound sterling','','','answer1',0,0),(261,'Which is not one of the 5 sense&#039;s?','Hating','Seeing','Hearing','','','answer1',0,0),(262,'In what corner of Pennsylvania is Pittsburgh located? ','southeast ','northwest ','southwest ','northeast ','midwest ','answer3',0,0),(263,'on the new hundred dollar bill the time on the clock tower of Independence hall is  ',', 1:20 ','4:10','7:30','','','answer2',0,0),(264,'What are the two ingredients of a screwdriver cocktail?','Vodka and apple juice','Gin and apple juice','Vodka and orange juice','','','answer3',0,0),(265,'Who invented popcorn?','French ','Chinese ','Native Americans','','','answer3',0,0),(266,'How many books are in the Harry Potter series?','5','2','7','','','answer3',0,0),(267,'Which one is part of the Christmas tradition?','Turkey','Pumpkin','Decorative Lights','','','answer3',0,0),(268,'Rene is taller than Casey., David is shorter than Casey and Rene., Aaron is shorter than David., Who is the second tallest?','Rene ','David','Casey','','','answer3',0,0),(269,'What blood type is the Universal Donor?','Type A','Type O','Type B','Type AB','','answer2',0,0),(270,'What country was Berlin part of when it passed one million in population?','Brunswick','Saxony','Bavaria','Prussia','','answer4',0,0),(271,'Lake Baikal in Siberia is the deepest lake in the world and has been declared a World Heritage Site. It is located in a rift valley. Rift valleys are formed due to plate tectonics.','TRUE','FALSE','','','','answer1',0,0),(272,'Written for younger readers, and first published in 1973, which post apocalyptic book tells the story of Ann Burden and Mr. Loomis?','Z for Zachariah','Children of the Dust','Shade&#039;s Children','The Crystal Drop','','answer1',0,0),(273,'Which one is not a vehicle?','Car','Airplane','Sofa','','','answer3',0,0),(274,'What&#039;s the least expensive and most popular fruit?','Orange','Apple','Banana','Grape','','answer3',0,0),(275,'What three planets in our solar system show signs of oxygen in their atmospheres?','Earth, Mars, Jupiter','Venus, Earth, Mars','Venus, Earth, Jupiter','Earth, Mars, Saturn','','answer2',0,0),(276,'Marty Wilde had a hit with which Phil Phillips song?','Sea of Heartaches','Sea of Trouble','Sea of Loneliness','Sea of Love','','answer4',0,0),(277,'I don&#039;t speak, I cannot hear but I always tell the truth.','Old granny ','The watch','The Mirror','',' ','answer3',0,0),(278,'What planet represents woman?','Earth','Mars','Venus','','','answer3',0,0),(279,'  What was the stage name of Louis Burton Lindley, Jr., who had prominent roles in &quot;Dr. Strangelove&quot; (1964) and &quot;Blazing Saddles&quot; (1974)?','Gary Cooper','Slim Pickens','W. C. Fields','Marilyn Monroe','','answer2',0,0),(280,'What&#039;s the itchy skin condition tinea pedis better known as?','Hives','Psoriosus','Athletes Foot','Poison Ivy','','answer3',0,0),(281,'What arachnid attacks its prey with the stinger at the end of its tail?','The Wasp','The Honey Bee','The Black Widow Spider','The Scorpion','','answer4',0,0),(282,'What country would you find the city of Beijing?','Japan','India','China','','','answer3',0,0),(283,'What do you call the branch of science that deals with fungi?','gnoalactics','fungiology','mycology','truffleology','','answer3',0,0),(284,'What is the shortest word in the English language to contain A  , B  , C  , D  , E  , and F?','Fabedc','Feedback','Aecbdf','','','answer2',0,0),(285,'What country does the company that makes TLBB call home?','Greece','China','Germany','','','answer2',0,0),(286,'What is number of white pawns in chess?','4','2','6','8','','answer4',0,0),(287,'Arizona, Kentucky, Northwestern, and Northern Michigan, shared the nickname of?','Lightning','Jackalopes','Wildcats','Kangaroos','','answer3',0,0),(288,'What is the world&#039;s largest Lizard? ','Komodo Drago','Bearded Dragon','Water Dragon','','','answer1',0,0),(289,'In the video game &quot;Mass Effect 2&quot; - Do you have to kill the Thresher Maw in Grunt&#039;s loyalty mission?','Yes','No','','','','answer2',0,0),(290,'What Spanish port city was founded by Carthaginian general Hamilcar Barca?','Malaga','Barcelona','Valencia','Hamilonia','','answer2',0,0),(291,'During each week of the PGA Tour season, a day or two before the actual tournament starts, many of the pros play a round with local amateurs, for a nice fee, of course. What is this round usually called? ','the pro-am ','the pay-and-play ','the am-pro ','the medal round ','the first rounds ','answer1',0,0),(292,'When/where do we see TIE Bombers?','In the asteroid field (Episode V)','Battle of Coruscant (Episode III)','Battle of Yavin (Episode IV)','Battle of Naboo (Episode I)','','answer1',0,0),(293,'which animal most resembles man?','Elephant','Chimpanzee','Panda','','','answer2',0,0),(294,'  Which mountain went from being 9677 feet in height to 8365 feet in height in 1980?','Mt. Ararat','Mt. Rushmore','Mt. Kilimanjaro','Mt. St. Helens','','answer4',0,0),(295,'In which board game would you find a top hat, a boot, a flat iron, and a car?','Chess','Monopoly ','Scrabble','','','answer2',0,0),(296,'How many eyelids do camels have to protect themselves from blowing sand?','3','2','1','','','answer1',0,0),(297,'The winner of the “Strong Man” award for insects goes to the Leaf Beetle. How much weight can it pull?','13 times its body weight','23 times its body weight','43 times its body weight','63 times its body weight','','answer3',0,0),(298,'Which super-hero was played by Michael Keaton, Val Kilmer & George Clooney?','Robin','Spiderman','Batman','Superman','','answer3',0,0),(299,'Charles Goodyear was famous for his vulcanization process that he discovered accidentally in 1839. He was surprised to find that when rubber was mixed with a special element in powder form, the rubber produced had better properties than the common rubber, namely more elastic and durable. What was this special element?','Phosphorous','Sulfer','Nitrogen','Chlorine','','answer2',0,0),(300,'Congress made Native Americans official citizens of the United States in','1789','1828','1865','1924','1963','answer4',0,0),(301,'Shaft was a 1971 motion picture that had a successful theme song. Who wrote and recorded it?','Isaac Hayes','Sam and Dave','Jimmy Ruffin','Stevie Wonder','','answer1',0,0),(302,'How many squares are on a chess board?','72','12','32','64','','answer4',0,0),(303,'Mark Twain is a river term. What does it mean?','Likely to rain','Waterfall ahead','Storm is brewing','Safe to navigate','','answer4',0,0),(304,'Paul is hoping to visit Philemon and requests that which of the following be prepared for him?','A room','A map','A set of accounts','An armed escort','','answer1',0,0),(305,'What astrological star sign covers July 24 - August 23?','Cancer','Virgo','Leo','','','answer3',0,0),(306,'You remember the main characters in the &#039;60&#039;s TV show, &#039;Bewitched,&#039; with Samantha Stephens, the modern witch who tries to fit in as a suburban housewife. What is the name of her husband, Darrin&#039;s, boss? ','Frank Stephens ','Larry Tate ','Ted Baxter ','Roger Healey ','','answer2',0,0),(307,'He was know as &quot;the father of canning&quot;. To prove the abilities of his methodologies, what did he once can to preserve it?','A sheep','A giraffe','A horse','A monkey','','answer1',0,0),(308,'What is the name of the fun-loving teacher who takes her class on wacky field trips aboard a very unusual school bus?','Miss Wade','Miss. Frizzle','Miss Gerber','Miss Wisenewski','','answer2',0,0),(309,'The U.S. Bill of Rights was enacted in  ','1776','1781','1786','1791','','answer4',0,0),(310,'Under the U.S. Constitution, members of the U.S. House of Representatives have a _____ term, members of the U.S. Senate have a _____ term, and the president has a _____ term.','2 year; 6 year; 4 year','2 year; 4 year; 6 year','4 year; 4 year; 4 year','2 year; 8 year; 4 year','','answer1',0,0),(311,'What continent&#039;s macro zamia tree lives for 7,000 years?','Africa','Asia','Austrailia','South America','','answer3',0,0),(312,'Which location has the highest normal annual rainfall?','Yakutat, Alaska','Blue Canyon, California','Tallahassee, Florida','Seatle, Washington','','answer1',0,0),(313,'Who said that &quot;Necessity is the mother of invention&quot;?','Socrates','Descartes','Plato','',' ','answer3',0,0),(314,'Which mammal lives in the water?','Crocodile','Whale','Shark','','','answer2',0,0),(315,'What Berlin landmark had lost over 60 tons in shipments to the U.S. by 1990?','Olympiastadion','The Berlin Wall','Charlottenburg Palace','Victory Column','','answer2',0,0),(316,'What Scandinavian country are you in if you&#039;re vacationing in Hell?','Norway','Sweden','Finland','Denmark','','answer1',0,0),(317,'You are on a ship and over the side hangs a rope ladder with one foot rungs  The tide rises a one foot per hour  At the end of five hours, how much of the ladder will remain above the water assuming that 12 rungs were above the water when the tide began.','12','7','5','','','answer1',0,0),(318,'Does a balloon create a sonic boom when it pops?','No','Sometimes','Yes','','','answer3',0,0),(319,'It&#039;s plain to see that this is the most popular ice cream flavor. What is it?','Chocolate','Vanilla','Strawberry','Cookie dough','','answer2',0,0),(320,'What year did the National Lottery start in Britain?','2008','1994','1432','','','answer2',0,0),(321,'There was a fad called the Swiss Army Diet in the 1970s.','TRUE','FALSE','Maybe','I wish','','answer2',0,0),(322,'About how long does it take Pluto to orbit the sun:','52 years','108 years','248 years','516 years','','answer3',0,0),(323,'What percentage does water expand when frozen?','100%','1%','-11%','','','answer3',0,0),(324,'The Customs department of new Zeeland is believed to be the oldest government department. When was it established ?','August 1843',' January 1841','January 1840','August 1842','','answer3',0,0),(325,'In a standard game of Poker what card ranks between a Jack & a King?','10','12','Queen','','','answer3',0,0),(326,'I&#039;ll bet you didn&#039;t know this, but Shakespeare&#039;s Richard III was really a geologist! What did he *really* run around yelling in the last scene?','My kingdom be graben from me!','These fools cleavage me from life!','Limestone shall I under earth!','A horst, a horst, my kingdom for a horst!','','answer4',0,0),(327,'According to a 2007 report, __ out of 5 dollar bills show traces of cocaine.','4','2','1','','','answer1',0,0),(328,'When is the Feast Day of St. John the Baptist?','3/19/2011','6/24/2011','7/19/2011','8/15/2011','','answer2',0,0),(329,'In a typical deck of playing cards which suits are red?,',' Hearts and Diamonds','Hearts and Spades','Diamonds and Clubs','','','answer1',0,0),(330,' &quot;Breaking Dawn&quot;: What is Bella Cullen&#039;s &#039;gift&#039;?','Mind reading','Mental shield','Seeing the future','Controlling emotions','','answer2',0,0),(331,'What nation of over 7,000 islands has two-thirds of its population living on Luzon and Mindanao?','The Philippines','New Guinea','Timor-Leste','Indonesia','','answer1',0,0),(332,'What is the longest word in the English language with just one vowel?','Untouchable','Strengths','Bananas','','','answer2',0,0),(333,'Which philosopher was Aristotle’s master?','Socrates','Heraclitus','Diogenes','Plato','','answer4',0,0),(334,'1cm= ___mm','10','100','1000','',' ','answer1',0,0),(335,'When the recipe calls for zest of a lemon, it means to __','Cut the lemon in half and cook in the pot with the meat','Grate the lemon peel to release the zest and oils for an enhanced flavor','Place the seeds of a lemon in the stock for poaching','All of these','','answer2',0,0),(336,'In what position do adult horses normally sleep?','Sitting','Standing','They don&#039;t sleep','','','answer2',0,0),(337,'Which anniversary is celebrated after 25 years of marriage?','Silver','Gold','Diamond','','','answer1',0,0),(338,'In &quot;Sleepaway Camp&quot;, how did Angela&#039;s dad die?','Angela&#039;s dad was killed by a machete.','Angela&#039;s dad didn&#039;t die.','Angela&#039;s dad is killed in a hunting accident..','Angela&#039;s dad was killed in a boating accident.','','answer4',0,0),(339,'What is the number of states in USA?','24','50','60','49','','answer2',0,0),(340,'What city has been the center of the U.S. oil industry since 1901?','New Orleans','Dallas','Bakersfield','Houston','','answer4',0,0),(341,'What kind of party do people expecting a new baby throw?','Baby Blessings','Baby Boomers','Baby Showers','','','answer3',0,0),(342,'Who was president of the U.S. when Uncle Sam first got a beard?','Thomas Jefferson','Andrew Jackson','Abraham Lincoln','John Quincy Adams','','answer3',0,0),(343,'At -40 degrees Centigrade a person loses about 14.4 calories per hour by doing what?','Breathing','Running','Doing push-ups','','','answer1',0,0),(344,'More American workers (18%) call sick on Friday than any other day of the week. When&#039;s the lowest percent of absenteeism (11%)?','Tuesday','Monday ','Thursday ','',' ','answer1',0,0),(345,'Which was Patrick Swayze’s first notable film?','The Outsiders','Blind Date','Runaway Bride','First Blood','','answer1',0,0),(346,'A crude version of which of these devices was in use in China in the 2nd century A.D.?','Seismograph','Vacuum cleaner','Printer','Chromatograph','','answer1',0,0),(347,'Help me, help me, help me. I’ve just escaped from being murdered. He’s in the house. He’s murdered the Nanny! The words of a bloodied woman on November 7, 1974 in the Plumbers Arms in Belgravia, London, UK. Her husband, the suspected murderer she referr ','Lord Lucan ','Lord Snooty ','Little Lord Fauntleroy ','Lord Haw-Haw ','','answer1',0,0),(348,'What is the Chemical Symbol for Iron?','Fe','Ir','Io','','','answer1',0,0),(349,'Which of the following animals did Diane Fossey spend her life protecting?','Bengal Tigers','Mountain Gorillas','Koalas','Komodo Dragons','','answer2',0,0),(350,'The pancreas is part of the digestive system. What other system is it part of?','the immunolymphatic system','the respiratory system','the skeletal system','the endocrine system','','answer4',0,0),(351,'During World War Two and the Korean War, a certain American GI was often the first combatant or occupier at every battle site. This (likely fictional) GI was always peering over a wall, with googly eyes and an elongated nose.','Kilroy','Lorenzo','Fitzgerald','Wuzherr','','answer1',0,0),(352,'The snowiest winter on record for Peoria, IL was in 1978 - 1979. How much snow did Peoria receive?','52 inches','65 inches','76 inches','110 inches','','answer1',0,0),(353,'This lead actor dances and sings about Jennifer Grey.','Keanu Reeves','Cory Hart','Anthony Michael Hall','Patrick Swayze','','answer4',0,0),(354,'If you are planning on acquiring a purebred dog, which of the following should you do? ','Verify test results online ','Do research on what genetic conditions the breed may have ','All of these ','Ask to see genetic test results of parents and pups ','','answer3',0,0),(355,'A Hematologist is a doctor who specializes in the study of what?','Blood','Animals','Trees','','','answer1',0,0),(356,'The blanket of air that envelops the earth is called:','Lithosphere','Hydrosphere','Atmosphere','','','answer3',0,0),(357,'What animal does Pinocchio turn into?','Horse','Donkey','Frog','Dog','','answer2',0,0),(358,'Who won the Pulitzer Prize in 1969 for ‘The Armies of the Night’?','Truman Capote','Arthur Miller','William Faulkner','Norman Mailer','','answer4',0,0),(359,'In what year did the Norman Conquest take place?','1086','1065','1166','1066','','answer4',0,0),(360,'According to research at the Harvard School of Public Health Americans believe there&#039;s a 50% chance they&#039;ll be involved in a serious accident  In reality, do they have:','A 5% chance','10% chance','15% chance ','',' ','answer1',0,0),(361,'Who led the Million Man March on Washington?','Jesse Jackson','Martin Luther King Jr.','Louis Farrakhan','Malcom X','','answer3',0,0),(362,'Portugal lies east of which ocean?','Pacific','Indian','Arctic','Atlantic','','answer4',0,0),(363,'In Cockney Rhyming Slang, your &quot;boat&quot; refers to your what?','hair',' bottom','face','stomach','','answer3',0,0),(364,'If it is 2:00 pm in New York City, New York, what time is it in Los Angeles, California? ','10:00:00','11:00:00','noon','13:00:00','','answer2',0,0),(365,'Keith Richards rocks on in which super group?','Aerosmith','Van Halen','Rolling Stones','The Who','','answer3',0,0),(366,'What large northern member of the weasel family has jaws strong enough to crush bones, is apparently capable of bringing down a deer or caribou, and can even make a cougar back away from its kill? ','Mink ','Wolverine ','Skunk ','Marten ','','answer2',0,0),(367,'In chess when is the only time you may move two pieces during one turn?','Castling','Checkmate','Cheating','','','answer1',0,0),(368,'What M-word did Texas citizens choose as a town name that would attract folks?','Money','More','Myspace','magnet','','answer4',0,0),(369,'For his role in which film did Charlton Heston get Academy Award?','El Cid','Ben-Hur','The Ten Commandments','The Big Country','','answer2',0,0),(370,'Alex is taller than Tom and Cara. Angela is shorter than Alex, but taller than Tom.  Maddie is shorter than Tom, but taller than Cara.  Who is in the middle?','Alex','Tom','Cara','','','answer2',0,0),(371,'What is the better known singular name of a female entertainer born in Spain as María Rosario Pilar Martínez Molina Baeza with a trademark exclamation of &quot;Cuchi! Cuchi!&quot;?','Cher','Selena','Madonna','Charo','','answer4',0,0),(372,'If 3 cats eat 3 mice in 1.5 hour that means that 1 cat eats 1 mice for the same time. Therefore 10 cats will eat 10 mice in 1.5 hour. So 10 cats will eat 20 mice (twice as much) in 3 hours (twice as much).','2 hrs ','1.5 hrs ','3 hrs','',' ','answer3',0,0),(373,'This cigar smoking comedian was born in New York City in 1893. He was known to his family as Julius. He was quoted as saying &quot;Anyone who says he can see through women is missing a lot.&quot; You Bet Your Life! Who was he? ','Jackie Gleason ','George Burns ','Groucho Marx ','Jack Benny ','','answer3',0,0),(374,'  In which film does an African bushman travel &quot;to the end of the Earth&quot; to dispose of a Coca-Cola bottle?','Dingaka','Funny People','The Gods Must Be Crazy','Animals Are Beautiful People','','answer3',0,0),(375,'Where are 95% of the world&#039;s opals used in jewelry mined? ','Argentina ','Nevada ','Australia ','Colombia ','','answer3',0,0),(376,'How were Aristotle’s students known?','Peripatetics','Scholastics','Stoics','Epicureans','','answer1',0,0),(377,'Darth Vader first appeared in which film?','The Sorcerer&#039;s Apprentice','Starship Troopers','Dogma','Star Wars','','answer4',0,0),(378,'Which candy&#039;s slogan is &quot;Taste the Rainbow&quot;?','Mentos','Starbursts','Skittles','Life Savers','','answer3',0,0),(379,'What is sodium chloride?','Pepper','Ginger','Salt','Onion','','answer3',0,0),(380,'In which country did the spirit Tequila originate?','Spain','Brazil','Mexico','','','answer3',0,0),(381,'What distant planet circles the sun every 84 years?','Jupiter','Neptune','Uranus','Saturn','','answer3',0,0),(382,'What South American country was home to the early human &#039;Patagonian giants&quot;?','Brazil','Chile','Argentina','Columbia','','answer3',0,0),(383,'What U.S. state gets raked by the most tornadoes annually?','Texas','Oklahoma','Kansas','Iowa','','answer1',0,0),(384,'Which one is an electrical appliance?','Lamp','Glasses','Pen','','','answer1',0,0),(385,'Which city in the world has the largest population (not measured by metropolitan area)?','Tokyo','New York City','Mexico City','','','answer2',0,0),(386,'In ‘The Magnificent Seven Ride!’ (1972), who took over the role made famous by Yul Brynner?','Lee Marvin','Charles Bronson','Lee Van Cleef','Steve McQueen','','answer3',0,0),(387,'“Friends” is set in New York, a city in the United States of America. Which of the following is a popular nickname for New York?','The Big Apple','The Big Grape','The Big Pear','The Big Pomegranate','','answer1',0,0),(388,'There are lots of ways to travel down Main Street U.S.A. in style. Which of these is NOT one of them?','Horse-drawn streetcar','Vintage auto','Fire engine','Trolley','','answer4',0,0),(389,'&quot;If one synchronised swimmer drowns, do all the rest have to drown too?&quot; Who said this?','Steve Martin','Jerry Springer','Jimmy Durante','Steven Wright','','answer4',0,0),(390,'How many feet are there in 1/2 mile ?','500 ft ','2000 ft ','2640 ft','','','answer3',0,0),(391,'Which disaster took place in Kobe Japan in 1995?','Nothing happened','Earthquake',' Hurricane','',' ','answer2',0,0),(392,'If your mouth was completely dry, which of the following statements is true?','You would no be able to distinguish the taste of anything','You wouldn&#039;t be able to swallow anything ','You would die','',' ','answer1',0,0),(393,'Who directed &quot;Close Encounters of the Third Kind&quot;?','Steven Spielberg','David Lean','George Lucas','Rob Reiner','','answer1',0,0),(394,'What bird can&#039;t fly but can swim?','Penguin','Duck','Chicken','','','answer1',0,0),(395,'What gas do plant absorb from the atmosphere?','NO3','CO2','O2','','','answer2',0,0),(396,'Which film is in Aramaic and Latin?','The Ten Commandments','Ben Hur','Apocalypto','The Passion of the Christ','','answer4',0,0),(397,'Who wrote “All modern American literature comes from one book by Mark Twain called Huckleberry Finn…”?','Aldous Huxley','Julian Huxley','P. G. Wodehouse','Ernest Hemingway','','answer4',0,0),(398,'Ants are believed to make up what percentage of the total weight of all the animals in the world?','0.05','0.1','0.15','0.2','','answer2',0,0),(399,'What is the fundamental belief in the existence of a &#039;God&#039; or &#039;gods&#039; or &#039;the divine&#039; called?','Atheism','Theism','Agnosticism','Logical Empiricism','','answer2',0,0),(400,'Which of these is the hottest?','The Sun','A campfire','Lava','','','answer1',0,0),(401,'Born on Dec. 24, 1971, he&#039;ll make you &#039;shake your bon-bon&#039; over to the end of the page to check your answers!','Ricky Martin','JC','Justin Timberlake','Bill Clinton','','answer1',0,0),(402,'What&#039;s the third-largest continent in square miles?','South America','Austrailia','Africa','North America','','answer4',0,0),(403,'How many bones make up normal human skull?','22','25','34','','','answer1',0,0),(404,'Which of these game show hosts was born in Canada? ','all of them ','Monty Hall ','Alex Trebek ','Howie Mandel ','','answer1',0,0),(405,'What organization is Jennie Garth a part of, for animal rights?','TAPE','PATE','PETA','PEAT','','answer3',0,0),(406,'What Benjamin Holt invention was good news to farmers in 1900?','Combine','Hay Bailer','Tractor','Furrow','','answer3',0,0),(407,'Who said &quot;People who don&#039;t think probably don&#039;t have brains; rather, they have grey fluff that&#039;s blown into their heads by mistake&quot;?','Winnie the Pooh','Margaret Thatcher','Albert Einstein','Ozzy Osbourne','','answer1',0,0),(408,'Why is it important to portect eyes from ultraviolet radiation?','Ultraviolet radiation can lead to the development of cataract','It irritates the eyes',' It makes it hard to see when you go inside ','','','answer1',0,0),(409,'What body of water is approximately nine times saltier than ocean water?','The Great Salt Lake','The Sargasso Sea','The Dead Sea','The Baltic Sea','','answer3',0,0),(410,'How many furlongs is one mile?','Six','Eight','Four','Twelve','','answer2',0,0),(411,'Where did Cujo get bitten?','nose','neck','ear','paw','','answer1',0,0),(412,'What percent of the Earth&#039;s water is locked in ice caps and glaciers.','2','10','15','',' ','answer1',0,0),(413,'Which band included Phil Collins and Peter Gabriel?','Led Zepplin','Queen','Genesis','The Eagles','','answer3',0,0),(414,'What&#039;s the only Central American country without a coastline on the Caribbean?','Costa Rica','El Salvadore','Guatemala','Nicaragua','','answer2',0,0),(415,'Which of these is impossible for you to lick?','Your elbow','Your knee','Your finger','','','answer1',0,0),(416,'Which of the following is an example of a palindrome? ','Building ','Cheese ','Facetious ','Rotor ','','answer4',0,0),(417,'Who was the candidate in the Presidential Election of 1992, who did not belong to Republican or Democratic Party?','Hugh Ross Perot','Jack Anderson','Patrick Buchanan','Walter Mondale','','answer1',0,0),(418,'We all know that &quot;Spam&quot; is now regarded as unwanted or junk e-mail, however spam was originally what type of food? ','Chopped beef ','Chopped pork ','Chopped chicken ','Chopped lamb ','','answer2',0,0),(419,'What continent are you on if you&#039;re lost in the eastern tip of Egypt?','Europe','Africa','Austrailia','Asia','','answer2',0,0),(420,'An ostrich&#039;s eye and its brain which one is bigger?','Its brain','Same size ','Its eye','',' ','answer3',0,0),(421,'Jim went to the movies and paid 49.00 for one movie. How much money would Jim have to pay if he went to 7 movies?','313','343','35,643.00','',' ','answer2',0,0),(422,'What nation is prowled by 60 percent of the world&#039;s tigers?','Siberia','India','Thailand','China','','answer2',0,0),(423,'A fantastic feat was performed by a cow when she jumped over the moon - and without the aid of a space suit!  What did a little dog do when he witnessed this marvellous antic?','cried','barked','howled','laughed','','answer4',0,0),(424,'What religion has the most adherents?','Budism','Christianity','Islam','Jewism','','answer2',0,0),(425,'What Spanish islands are Gomera, Hierro and Lanzarote a part of?','The Canary Islands','The Mopion Islands','The Grenedines','Isla de Margarita','','answer1',0,0),(426,'1, 3, 5, 7, x:  ','9','11','13','','','answer1',0,0),(427,'After decades, this one-time assistant stepped into the leadership position and led the Israelites through additional hurdles. Who was this faithful servant of not only God, but also the Israelite nation? ','Joshua','Ehud','Caleb','Obed','','answer1',0,0),(428,'Which was Elizabeth Taylor’s first film?','Lassie Come Home','Father of the Bride','There’s One Born Every Minute','Courage of Lassie','','answer3',0,0),(429,'Which is the official Ferrari racing color?','Black','Pink','Red','','','answer3',0,0),(430,'Keanu Reeves starred in the 1994 smash hit &quot;Speed&quot; with what actress?','Dennis Hopper','Carrie-Anne Moss','Sandra Bullock','Julia Roberts','','answer3',0,0),(431,'What is the nickname Harvey Dent got when he worked internal affairs in The Dark Knight?','Riddler','Two-Face','Joker','','','answer2',0,0),(432,'Beretta&#039;s cockatoo&#039;s name was?','Fred','Seinfefld','Birdie','Mac','','answer1',0,0),(433,'What is the largest city in Australia?','Queanbeyan','Sydney','Albury','','','answer2',0,0),(434,'Total volume of blood in a normal adult human being is','5-6 liters','3-4 liters','8-10 liters','10-12 liters','','answer1',0,0),(435,'Which country has the highest per capita consumption of cheese?','Greece','America','Japan','','','answer1',0,0),(436,'Follow my long axis, and I point the way the glacier moved.','Crevasse','Drumlin','Meander','Cirque','','answer2',0,0),(437,'What is a tarp for camping?','A type of fish you caught while camping.','Waterproof canvas or laminated material.','An instrument used round the campfire.','A type of camping stove','','answer2',0,0),(438,'What Scottish-born American tycoon made a fortune in the steel industry and has a dinosaur, among other things, named after him?','Henry Clay Frick','John Roll McLean','J.P. Morgan','Andrew Carnegie','','answer4',0,0),(439,'Traditional Italian pesto is made from basil, olive oil and which nut?','walnut ','pine nut ','almond','','','answer2',0,0),(440,'Where can you get a Burrito Supreme? ','Del Taco ','Carl&#039;s Jr. ','Jack in the Box ','Taco Bell ','','answer4',0,0),(441,'Legal entity created by a government to exercise some of the powers of the government is the:','Private sector','Government-owned corporation','Public Sector Undertaking','','','answer2',0,0),(442,'What future Soviet dictator was training to be a priest when he got turned on to Marxism?','Groucho Marx','Jospeh Stalin','Lennin','Frederick Malchovich','','answer2',0,0),(443,'What body part becomes infected if you contract cholera?','The Intestine','The Kidney','The Gallbladder','The Stomach','','answer1',0,0),(444,'Black-eyed peas are not peas.  What are they?','Beans','Chick-peas','lentils','soybeans','','answer1',0,0),(445,'What was the only TV show of the 1970s to have its theme top Billboard&#039;s Hot 100?','Welcome Back Kotter','One Day at a Time','Sanford & Son','Brady Bunch','','answer1',0,0),(446,'Albert Einstein was a scientist famous for his work on physics. Where was he born?','Germany','United States','France','Poland','','answer1',0,0),(447,'This art term, describing an outlined image of a solid figure and having the appearance of a &#039;shadow&#039;, was named for a finance minister in the government of French King Louis XV. What is the name of this shadowy art form?','Blotter','Poster','Silhouette','Modern','','answer3',0,0),(448,'In which country was Pasternak&#039;s Dr. Zhivago first published?','Italy','Russia','Germany','Poland','','answer1',0,0),(449,'What will fall off of the Great Sphinx in 200 years due to pollution and erosion, according to scholar Chikaosa Tanimoto?','His nose','His tail','His head','His leg','','answer3',0,0),(450,'How many minutes in 2.5 hours?','300','150','120','','','answer2',0,0),(451,'The symbol of the God Zeus and the scar on Harry&#039;s forehead are both in what shape?','Star','Circle','Bird','Lightning bolt','','answer4',0,0),(452,'How many athletes in an Olympic relay race?','2','4','8','','','answer2',0,0),(453,'What angle is formed by the hands of a clock at 4 o&#039;clock?','120','180','182','','','answer1',0,0),(454,'What did Aristotle call metaphysics?','Cosmology','First philosophy','Psychology','Geology','','answer2',0,0),(455,'When magma cools and hardens, it forms:','igneous rock','sedimentary rock','metamorphic rock','gypsum','','answer1',0,0),(456,'According to a saying, what is it that speaks louder than words?','Movies','Actions','Pictures','','','answer2',0,0),(457,'Movies: An abused beagle runs away from home, where he meets a young boy who takes him in against his father&#039;s wishes. What is the name of the dog, which is also the title of this 1996 film?','Shiloh','Duke','Blackie','Marmalade','','answer1',0,0),(458,'Why are sunglasses important to wear?','So no one knows who you are','To protect the eyes from ultraviolet radiation','To be fashionable','','','answer2',0,0),(459,'Which insect is honored with a statue in Enterprise, Alabama?','Boll Weevil','Praying Mantis','Grasshopper','Butterfly','','answer1',0,0),(460,'What are there 88 of in the night sky, according to the international Astronomical Union?','Constellations','Nebula','Galaxies','Red Dwarf Stars','','answer1',0,0),(461,'The 12 Days of Christmas -- (Song) On the eleventh day of Christmas my true love sent to me eleven _________ __________.','Pumpkin pies','Pipers piping','Kids kissing','Silver statues','','answer2',0,0),(462,'Which female science fiction character describes herself thus? &quot;I am thirty-three years old. I have brown hair. I stand five seven without shoes&quot;.','Lessa','Offred','Anita Blake','Éowyn','','answer2',0,0),(463,'What baseball announcer said Pope Paul VI&#039;s death &quot;puts a damper on even a Yankees win&quot;?','Marv Albert','Joe Garagiola, Sr.','Phil Rizzuto','Howard Cosell','','answer3',0,0),(464,'Who has a friend named Baloo and a foe named Shere Khan?','Natty Bumppo','Pigling Bland','Uriah Heep','Mowgli','','answer4',0,0),(465,'Russian microbiologist; won the Nobel Prize in Medicine','Claude Debussy','Moshe Dayan','Ilya Ilyich Mechnikov','W. H. Auden','','answer3',0,0),(466,'Please name the singer who had a 1980 U.S. number one hit with these lyrics: &quot;Hot funk, cool punk, even if it&#039;s old junk It&#039;s still rock and roll to me...&quot; ','Stevie Wonder ','Tom Petty ','Billy Preston ','Billy Joel ','','answer4',0,0),(467,'What&#039;s the purpose in why my cat &quot;kneads&quot;?','a sign of well-being or contentment','a sign of aggressiveness','a sign of feeling sad','a sign of fear','','answer1',0,0),(468,'What Canadian city&#039;s name means &quot;muddy water&quot;?','Toronto','Wetaskiwin','Winnipeg','Miramichi','','answer3',0,0),(469,'What state is San Francisco located in?','New York','California','Texas','','','answer2',0,0),(470,'What&#039;s the more common term for herpes zoster?','Venerial Desease','Shingles','Gout','Hives','','answer2',0,0),(471,'How much did it cost to buy the FIRST box of Crayola crayons when they were first sold in 1903?','Five Cents','Ten Cents','Fifteen Cents','A Quarter','','answer1',0,0),(472,'Which of these holidays is the equivalent of Halloween?','Yule','Imbolc','Samhain','Beltaine','','answer3',0,0),(473,'Which of these animals is not a fish?','Blenny','Bunting','Bream','Barracuda','','answer2',0,0),(474,'Who said, &quot;I was thrown out of college for cheating on the metaphysics exam. I looked into the soul of the boy next to me&quot;?','Steve Martin','Bill Murray','Woody Allen','Dean Martin','','answer3',0,0),(475,'Which animal is not halobios?','Whale','Crocodile','Shark','','','answer2',0,0),(476,'Which pupil of Aristotle became a conqueror?','Callisthenes','Theophrastus','Alexander','Julius Caesar','','answer3',0,0),(477,'What color is the cross on the flag of Finland?','Red','Green','Blue','','','answer3',0,0),(478,'In the Country and Western song &#039;I&#039;m So Lonesome I Could ________&#039;','Call','Fight','Drink','Cry','','answer4',0,0),(479,'What was an official language in 87 nations and territories, by 1994?','English','French','Spanish','German','','answer1',0,0),(480,'Which of these is the Latin version of the name for the goddess of the moon and hunt?','Diana','Demeter','Phaedra','Thetis','','answer1',0,0),(481,' Match the definition to one of these words: Hitler&#039;s invasion of the USSR (Russia).','Operation Barbarossa','Operation Sea Lion','Operation Market Garden','Operation Torch','','answer1',0,0),(482,'They call me San Andreas and monitor me around the clock. What am I?','A normal fault','A strike-slip fault','A reverse fault','A thrust fault','','answer2',0,0),(483,'Which city is also called Motor City?','San Francisco','Detroit','Santiago','','','answer2',0,0),(484,'What U.S. state boasts the towns of Gulf Stream, Lakebreeze and Frostproof?','Georgia','Mississippi','Florida','Alabama','','answer3',0,0),(485,'Can you fill in the blank? I walk this empty street on the __________ of ________ ________.','boulevard, broken dreams','avenue, shallow hearts','street, painful thoughts','rue, rueful hands','','answer1',0,0),(486,'During his entire life Vincent Van Gogh sold how many paintings?','211','39','1','',' ','answer3',0,0),(487,'What is the sacred river in India?','The Yellow River','The Gan','The Ganges','','','answer3',0,0),(488,'Which ocean is located on the west coast of the USA?','The Arctic Ocean','The Pacific Ocean','The Indian Ocean','','','answer2',0,0),(489,'What star sign are you if born August 26th?','Leo','Virgo','Taurus','','','answer2',0,0),(490,'With which 20th century art movement were Salvador Dali, René Magritte, and André Breton associated?','Surrealism','Dadaism','Post-Impressionism','Outsider','','answer1',0,0),(491,'Simon and Garfunkel ushered in 1966 with a chart topping song on January 1, 1966. Which song was their premier number one?','Eve of Destruction','The Sounds of Silence ','Turn! Turn! Turn!','Red Rubber Ball','','answer2',0,0),(492,'Ancient Northern men were passionate and didn&#039;t have to find a pretext to kiss a girl. Meanwhile, modern victims of civilization have to look forward to celebrating Christmas and use &quot;Baldur&#039;s bane&quot; to snog. What will help you kiss?','holly','amaryllis','ivy','mistletoe','','answer4',0,0),(493,'What is the name of 0 degrees latitude?','Equator','North Pole','South Pole','','','answer1',0,0),(494,'The island of Fiji can be found in which ocean?','Indian Ocean','Pacific Ocean','Atlantic Ocean','Arctic Ocean','','answer2',0,0),(495,'What state grew to become the second most populous in the U.S. , by 1994?','California','Florida','Arizona','Texas','','answer4',0,0),(496,'What planet represents woman ?','Mars','Venus','Earth','','','answer2',0,0),(497,'A baby is born with all the following reflexes, except...','The ability to swim','Understanding foreign language','Sucking ','Grasping a finger','','answer2',0,0),(498,'Which of these horror movies was the first to see a release date?','Halloween','Black Christmas','Friday the 13th','Carrie','','answer2',0,0),(499,'The American Bill of Rights was enacted in  ','1776','1781','1791','1789','','answer3',0,0),(500,'In which of these sports will you find a green?','Boxing','Golf','Darts','Rowing','','answer2',0,0),(501,'What U.K. principality has its capital in Cardiff?','Wales','Gwynedd','Marcher','Sealand','','answer1',0,0),(502,'  Which word links the following: a shoe repairer, a fish, and a delicious baked dessert from America?','Smithy','Cobbler','Pavlova','Barramundi','','answer2',0,0),(503,'Olympus Mons is a volcano almost three times as tall as Mount Everest. Is it found on: ','Earth','Venus','Mars','Titan','','answer3',0,0),(504,'How many years elapsed between DH Lawrence&#039;s writing of Lady Chatterley&#039;s Lover and the book&#039;s publication?','32','33','34','35','','answer1',0,0),(505,'Which planet is closest to the sun?','Venus','Mars','Mercury','Earth','','answer3',0,0),(506,'Who was told “Beware the Ides of March.”?','Julius Caesar','Augustus Caesar','Mark Antony','Cleopatra','','answer1',0,0),(507,'People on Long Island, New York, USA, build their communities on me. My origin is from the north and a colder climate.','Wave-built terrace','Anticline','Tuff','End moraine','','answer4',0,0),(508,'How many wives can a man legally have in the United States?','2','10','1','',' ','answer3',0,0),(509,'What is the diameter of a golf hole?','2 inches','4 1/4 inches','8 inches','','','answer2',0,0),(510,'Who said, &quot;Baseball is 90 percent mental. The other half is physical&quot;?','Tommy Lasorda','Yogi Berra','Babe Ruth','Ty Cobb','','answer2',0,0),(511,'Which of the following is called “a thunderstorm’s worst killer”? ','Rain','Lightning','Tornadoes','Hailstones','','answer2',0,0),(512,'Which is the largest gland in the human body?','thyroid','liver','pancreas','none of these','','answer2',0,0),(513,'It occurs once in a minute twice in a week and once in a year','The letter &quot;e&quot;','Sunset','Tornado','',' ','answer1',0,0),(514,'When did Apollo arrive on the moon?','1969','Never','it was a hoax','',' ','answer1',0,0),(515,'Which 19th-century artist inspired the American Congress to create the National Park System?','Vincent van Gogh','Albert Bierstadt','Ansel Adams','Winslow Homer','','answer2',0,0),(516,'Where is Wall Street?','Paris','New York','San Francisco','','','answer2',0,0),(517,'In Germany she is Veronique, in The Netherlands she is Ravian, and in Denmark, Norway and Sweden she is Linda. This 11th century French peasant girl was transported through time, trained as a &quot;Spatio-Temporal Agent&quot; and assigned to be the partner of Valerian. Like J.M. Barrie&#039;s Wendy, her original name was made up for her character by the authors; who is she?','Laurana','Laureline','Calanthe','Clodine','','answer2',0,0),(518,'What capital has a name meaning &quot;city of Islam&quot;?','Amman','Islamabad','Ar Riyad','Manama','','answer2',0,0),(519,'In Aristocats, What kind of cat is Thomas O&#039;Malley?','Scatty Cat','Alley Cat','Posh Cat','House Cat','','answer2',0,0),(520,'What year did the Beverly Hills Diet become a bestseller in the United States?','1987','1983','1981','1985','','answer3',0,0),(521,'In what direction does the sun set?','South','West','East','','','answer2',1,0),(522,'Whom does Superman love?','Jane Grey','Shannon Kent','Lois Lane','Fiona Smith','','answer3',0,0),(523,'What peppery spice shares its name with the capital of French Guiana?','Cayenne','Habanero','Jalapeno','Tobasco','','answer1',0,0),(524,'As well as constructive and destructive plate margins, there are also less common types. One of these is a conservative plate margin, which can lead to earthquakes. What movement occurs with conservative plate margins?','Plates moving away from each other','Oceanic plates moving towards each other','No plate movement at all','Two plates moving past each other','','answer4',0,0),(525,'By the time you are 75 years old, how many years will you have spent sleeping:','17','23','37','42','','answer2',0,0),(526,'Which Western philosopher declared in a political tract from 1690 that all individuals have certain natural rights, including those of life, liberty, and property?','Thomas Hobbes','John Locke','Jean Jacques Rousseau','Thomas Jefferson','','answer2',0,0),(527,'What transport machine has forks gears and a chainwheel?','A Car','A boat','A Bicycle','',' ','answer3',0,0),(528,'When did Napoleon die?','In 2008','In 1999','In 1821','','','answer3',0,0),(529,'In the music group The Beatles which instrument did Paul play?','guitars','bass','drums','','','answer2',0,0),(530,'Where is the Golden Gate Bridge located?','NYC','New Jersey','San Francisco','','','answer3',0,0),(531,'How many digits in a Visa Card number?','15','16','12','','','answer2',0,0),(532,'Where is the best place to keep tomatoes? ',' in the fridge ','at room temperature ','under your bed','','','answer2',0,0),(533,'Henri Victor Regnault was a French thermodynamicist who was noted for the discovery of PVC. The incident took place in 1835 when he accidentally left a flask of colorless solution under sunlight. He returned several hours later, only to find that there was white solid formed in the flask. The solid was none other than the ever-useful PVC. What does PVC stand for?','Polyvinyl chloride','Polyvanadium chloride','Polyvinyl chromate','Polyvanadium chromate','','answer1',0,0),(534,'Which northwestern state borders only two other states?','Oregon','Washington','Idaho','Montana','','answer2',0,0),(535,'Tom Jones had a 1966 hit with &quot;The Green Green Grass of Home&quot;. Which of the following had NOT recorded it before then?','Porter Waggoner','Merle Haggard','Jerry Lee Lewis','Bobby Bare','','answer2',0,0),(536,'A matron of honour is traditionally what?','The mother of the bride','A nurse','A married woman','A family member','','answer3',0,0),(537,'What&#039;s the third-largest continent in square miles?','Austrailia','Affrica','South America','North America','','answer4',0,0),(538,'What is the Square of 4?','19','16','18','','','answer2',0,0),(539,'Which person is on the US 50 dollar bill?','Ulysses S. Grant ','Theodore Rosevelt  ','John Muir','','','answer1',0,0),(540,'How many different species (kinds) of insects are there?','100000','250000','500000','1000000','','answer4',0,0),(541,'It had been 86 years since the Red Sox won the World Series. What team remains as having the longest span since a World Series title?','Chicago Cubs (National League)','Chicago White Sox (American League)','Cleveland Indians (American League)','San Francisco Giants (National League)','','answer1',1,0),(542,'Who said, in reply to a reporter`s sleeze allegations, “If I’d had as many affairs as you fellows claim, I`d be speaking to you from a jar in the Harvard Medical School.”?','Warren Beatty','Frank Sinatra','Bill Clinton','Errol Flynn','','answer2',0,0),(543,'Which following animal lives in the sea?','Whale  ','Kangaroo','Lion','','','answer1',0,0),(544,'What&#039;s the main mode of transport for the nomads who make up half of Somalia&#039;s population?','Camel','Horse','Jeep','Foot','','answer1',0,0),(545,'What is the name of the fruity toucan bird on &quot;Froot Loops&quot;?','Sam','Dom','Dan','Pam','','answer1',0,0),(546,'What do residents of Bunyol, Spain, throw at each other during the LA Tomatina Festival?','Cow intestines','Cactus Flowers','Water Soaked Foam Balls','Tomatoes','','answer4',0,0),(547,'  With what kind of transport would you associate the names Heathrow, Gatwick and Stansted?','Driving','Rail','Flying','Sailing','','answer3',0,0),(548,'What regional accent did Americans deem sexiest, most liked and most recognizable?','Southern','Eastern','Midwestern','Southwestern','','answer1',0,0),(549,'What&#039;s the only U.S. state to share a border with one of Canada&#039;s Maritime Provinces?','Washington','Vermont','Maine','Alaska','','answer3',0,0),(550,'Who is credited with the discovery of penicillin?','Dr. Charles Drew','Dr. Edward Jenner','Sir Alexander Fleming','Dr. Joseph Penic','','answer3',0,0),(551,'What Alpine country&#039;s women got the right to vote in 1971?','Switzerland','Austria','Germany','Italy','','answer1',0,0),(552,'What is the feminine of peacock?','Peahen','Peanut','Pierce','Peak','','answer1',0,0),(553,'Which scientist would study rocks and minerals?','Meteorologist','Chemist','Botanist','Geologist','','answer4',0,0),(554,'What barnyard animal utterance is known in France as groin groin?','Moo-Moo','Oink-Oink.','Baa-Baa','Quack-Quack','','answer2',0,0),(555,'What would you be watching if you were in the stands at Wrigley Field?','A basketball game','A tennis match','A horse race','A baseball game','','answer4',0,0),(556,'Usually when people walk, do thier left arms swing with their right or left legs?','Left','Both','Right','',' ','answer3',0,0),(557,'  What artist associated with the Moulin Rouge was portrayed on film in 1952 by Jose Ferrer and again nearly fifty years later by John Leguizamo?','Claude Monet','Henri de Toulouse-Lautrec','Jan Vermeer','Pablo Picasso','','answer2',0,0),(558,'How long is three Mile Island?','2.5 miles','3 miles','1 mile ','','','answer1',0,0),(559,'  Which movie is NOT about a beauty contest?','Miss Congeniality','Miss Potter','Little Miss Sunshine','Miss All-American Beauty','','answer2',0,0),(560,'Which person is on the US 1 dollar bill?','George Washington','Obama','John F. Kennedy','',' ','answer1',0,0),(561,'This kind of number is divisible by only one and itself. The first few examples are 2, 3, 5, 7, and 11.','Rational','Prime','Deficient','Mersenne','','answer2',0,0),(562,'What country is bordered on the west by Germany and on the est by Ukraine and Belarus?','Poland','Denmark','Czech Republic','Slovakia','','answer1',0,0),(563,'Where is the secretariat of United Nations?','Geneva','London','New York','Paris','','answer3',0,0),(564,'What kind of dogs are white with black spots all over them?','Poodles','Bulldogs','Dalmatians','','','answer3',0,0),(565,'What is the feminine of horse?','Hearse','Hear','Heart  ','Mare','','answer4',0,0),(566,'Thomas Jefferson counted the founding of which university to be among his   greatest accomplishments?','the College of William and Mary','University of Virginia','Harvard','Yale','','answer2',0,0),(567,'Which state of matter has neither a definite shape nor a definite volume?','solid','liquid','gas','plasma','','answer3',0,0),(568,'How many eyes are there on a pack of 52 cards?','42','13','33','','','answer1',0,0),(569,'Hockey is, of course, Canada&#039;s national winter sport, but this C sport is hugely popular with Canadians of all ages and genders.','Crabbing','Curling','Coldwater rafting','Clipping coupons','','answer2',0,0),(570,'What does the term Prima Donna mean in Opera ?','The Leading Female Singer','Diva ','Superstar','','','answer1',0,0),(571,'What English-speaking Caribbean island has a Spanish name meaning &quot;Bearded&quot;?','Basseterra','Antigua','Barbados','Barbuda','','answer3',0,0),(572,'Who was the high priest who accused Jesus of blasphemy, after Jesus answered that he was, &quot;...the Christ, the Son of God.&quot;?','Caiaphas','Chuza','Cleophas','Coz','','answer1',0,0),(573,'  What part of an elephant is estimated to have over 40,000 muscles?','Legs','Ears','Trunk','Torso','','answer3',0,0),(574,'Where was the main center of public life in Pompeii?','The Civic Forum','Vetti&#039;s House','The Odeon Gymnasium','The Villa of Mysteries','','answer1',0,0),(575,'What body of water lies to the west of Sierra Leone?','the Pacific Ocean','the Mediterranean Sea','the Indian Ocean','the Atlantic Ocean','','answer4',0,0),(576,'What is the name of both the river that runs through Galway city and the lake in County Galway?','Liffey','Clare','Corrib','Neagh','','answer3',0,0),(577,'In which country was greenpeace founded?','America','France','Canada','','','answer3',0,0),(578,'In the racing series known as NASCAR, what is a Polish victory lap?','Driving in the opposite direction','Walking the track after winning','Waving a Polish flag after winning','Buying a Kielbasa for everyone','','answer1',0,0),(579,'If you could pile up all the food you’ll eat in a lifetime, how many tons would it weigh:','10','100','1000','10000','','answer2',0,0),(580,'The largest butterfly, the Queen Alexandra of New Guinea, has a wingspan of how many inches?','6','11','16','21','','answer2',0,0),(581,'Harry Potter Spell: I want to unlock a door - what do I say?','Open Sesame','Alohomora','abrir','Aloha','','answer2',0,0),(582,'What organ of a buffalo did Plains Indians use to make yellow paint?','Kidney','Stomach','Gallbladder','Spleen','','answer3',0,0),(583,'What was the first commercially manufactured breakfast cereal?','Cheerios','Corn Flakes','Shredded Wheat','Grape Nuts','','answer3',0,0),(584,'As a river term how deep is Mark Twain?','One fathom (6 feet)','Two fathoms (12 feet)','Three fathoms (18 feet)','Four fathoms (24 feet)','','answer2',0,0),(585,'Which side of your body is your left hand on when you are looking in a mirror?','Left','Both','Right','',' ','answer3',0,0),(586,'This American singer and actress played Evita(Eva) Peron in the film &#039;Evita&#039; (1996) and during 1985-1991 she was married to Sean Penn:','Andrea Corr','Laura Pallas','Victoria Principal','Madonna','','answer4',0,0),(587,'What is the main ingredient of stargazey pie? ','Pilchards ','Salmon ','Starfish ','Peanuts ','','answer1',0,0),(588,'During which era did dinosaurs rule the land?','Precambrian','Paleozoic','Mesozoic','Cenozoic','','answer3',0,0),(589,'Which is Norway’s highest peak?','Besshoi','Leirhoi','Galdho','Rondeslottet','','answer3',0,0),(590,'If you are increasing in latitude in the Northern Hemisphere, are you traveling:','North','South','East','West','','answer1',0,0),(591,'Which of the following animals can&#039;t fly?','Rat','Eagle','Swan','','','answer1',0,0),(592,'In ‘Snow White and the Seven Dwarves’ which of her dwarf friends wear glasses?','Dopey','Doc','Grumpy','Bashful','','answer2',0,0),(593,'The Latin word for a dragon, draco actually means:','Donosaur','Eel','Snake','',' ','answer3',0,0),(594,'What percentage of babies actually arrive on their due date? ','80-81%','24-25%','3-4% ','','','answer3',0,0),(595,'Which State of USA was once part of Mexico?','Texas','Maryland','New York','Alaska','','answer1',0,0),(596,'What other invention of the late 1880s greatly enhanced bicycle safety?','Battery-powered lights','Glow-in-the-dark clothing','Hand brakes','Chain locks','','answer3',0,0),(597,'What is a diaper called in South Africa?','Nappy','Dispenser','Disposable','','','answer3',0,0),(598,'In which city is the United Nations headquarters?','New York','Tokyo','Paris','','','answer1',0,0),(599,'What best describes where the Blessed Virgin&#039;s great power of intercession with God originates? ','from being a saint','from being Queen of Angels','from her assumption into Heaven','Her Immaculate Conception and from being mother of Jesus and from her holy life','','answer4',0,0),(600,'Whose book, ‘Profiles of Courage’(1956), won a Pulitzer Prize in 1957? ','Earnest Hemingway','Douglas MacArthur','John F. Kennedy','Arthur Miller','','answer3',0,0),(601,'Light year is related to  ',' Energy','Distance ','Speed','',' ','answer2',0,0),(602,'What type of Music included composers such as Bach and Beethoven?','Hip-Hop','Pop','Classical','','','answer3',0,0),(603,'The first bird domesticated by humans was the…','Duck','Chickens','Goose','Swan','','answer3',0,0),(604,'What Italian city had the Roman name Mediolanum?','Milan','Rome','Firenze','Calabria','','answer1',0,0),(605,'Who&#039;s Murphy Brown&#039;s favorite soul singer?','Al Green','Aretha Franklin','Aaron Neville','Ray Charles','','answer2',0,0),(606,'Which book of the Bible tells the story of Adam and Eve?','Deuteronomy','Adam','Genesis','Eve','','answer3',0,0),(607,'What New England state would be home if you laid down roots in Bald Head?','Vermont','New Hampshire','Maine','Massechusettes','','answer3',0,0),(608,'(2003) Hugh Grant plays Britain&#039;s newest Prime Minister and Alan Rickman plays his brother-in-law, in this series of vignettes about the love lives of loosely inter-connected couples (or singles), all looking not to be lonely during the Christmas season.','Intolerable Cruelty','Love Actually','Two Weeks Notice','Down With Love','','answer2',0,0),(609,'The Romans used the abacus for counting purposes. What were the beads running along the wires of an abacus called?','Additae','Ferculi','Calculi','Computae','','answer3',0,0),(610,'What is the minimum distance between Earth and Mars?','25 million miles','35 million miles','50 million miles','60 million miles','','answer2',0,0),(611,'Which team won Super Bowl XX after making a Super Bowl video?','Pittsburgh Steelers','Miami Dolphins','Washington Redskins','Chicago Bears','','answer4',0,0),(612,'Why was Michael Jordan called &quot;Air Jordan&quot; or &quot;His Airness&quot;?','Because  he can jump very high/far','Because he shot many air-balls','Because he invented wings.','','','answer1',0,0),(613,'What creature goes through a period where it gains 10 pounds an hour?','Elephant','Bison','Blue Whale','Rhinocerus','','answer3',0,0),(614,'If two typists can type two pages in two minutes, how many typists will it take to type 18 pages in six minutes?','6','1700','34','',' ','answer1',0,0),(615,'“You have the right to remain silent...Anything you say can and will be used against you in a court of law...You have the right to an attorney.” This is called the _____ warning.','Miranda','Escobedo','Gideon','Mapp','Dickerson','answer1',0,0),(616,'which state is the largest producer of wines in the US?','New York ','Texas ','California','','','answer3',0,0),(617,'What mountains are home to the entertainment world&#039;s Borscht Belt?','The Urals','The Catskills','The Appalacian','The Rockies','','answer2',0,0),(618,'What culture is credited with producing the first ceramics?','The Egyptians','The Aztecs','The Chinese','The Japanese','','answer4',0,0),(619,'What percent of the people on Earth live north of the Equator? ','0.2','0.4','0.6','0.8','','answer4',0,0),(620,'On what continent is the chimpanzee&#039;s natural habitat?','South America','Africa','Asia','','','answer2',0,0),(621,'Which part of your eye receives no blood at all:','Cornea','Iris','retina','optic nerve','','answer1',0,0),(622,'What U.S. age group more than doubled in size between 1960 and 1990?','under 25','25-55','55-75','Over 85','','answer4',0,0),(623,'Who can make more vocal sounds a cat or dog?','Dogs','Same','Cats','',' ','answer3',0,0),(624,'What happened to Alice after she drank from a bottle labeled &quot;Drink Me&quot;?','She threw up','She shrank','She grew two extra legs','','','answer2',0,0),(625,'Whom did Harry Houdini marry?','Elsie Wright','Wilhelmia Rahner','Frances Griffiths','Estelle Roberts','','answer2',0,0),(626,'What suntan lotion was developed by Dr. Ben Green in 1944 to protect pilots who bailed out over the Pacific?','Hawaiian Tropic','Coppertone','Sun Worshiper','Blue Lizard','','answer2',0,0),(627,'What country did Greek historian Herodotus dub &quot;the gift of the Nile&quot;?','Saudi Arabia','Jordan','Egypt','Syria','','answer3',0,0),(628,'Maria Montessori was the first woman in Italy to be awarded a degree in which subject?','History','Geography','Medicine','English','','answer3',0,0),(629,'Which of the following is musician Conway Twitty&#039;s real name? ','Charlie Chaplin Jenkins ','Stan Laurel Jenkins ','Buster Keaton Jenkins ','Harold Lloyd Jenkins ','','answer4',0,0),(630,'Which is Michael Jackson&#039;s middle name?','Joseph',' Martin','Michael','','','answer1',0,0),(631,'Norway. Some of the world&#039;s longest and deepest fjords are found here. Which process led to their formation?','Volcanism','Sub-aerial processes','Plate tectonics','Glaciation','','answer4',0,0),(632,'What food is the leading source of salmonella poisoning?','Eggs','Spinach','Pork','Chicken','','answer4',0,0),(633,'Who is the oldest?','Madonna','Olsen Twins combined age','David Copperfield ','Daryl Hannah','','answer3',0,0),(634,'What long-beaked bird needs 1,600 blossoms to get its daily diet of nectar?','Finch','Whippoorwill','Sandpiper','Hummingbird','','answer4',0,0),(635,'Of the 26 orders of insects, how many have appeared on postage stamps?','14','18','22','24','','answer1',0,0),(636,'What was Michael Jackson&#039;s best selling album?','Dangerous','Thriller','History','','','answer2',0,0),(637,'The correct formula for calculating density is: ','mass x volume','mass + volume','mass - volume','mass/volume','','answer4',0,0),(638,'Which is the southernmost US state?','Texas','Hawaii','California','','','answer2',0,0),(639,'What interstate highway connects Boston and Seattle?','I-94','I-90','I-80','Route 66','','answer2',0,0),(640,'This city was founded in 753 B.C by the twin brothers Romulus and Remus on the seven hills overlooking the Tiber River.','Rome','Marseille','Naples','Algiers','','answer1',0,0),(641,'What was the very first published novel by Agatha Christie, which also introduced the much beloved Belgian detective, Hercule Poirot?','Murder on the Orient Express',' The Mysterious Affair at Styles','The Murder of Roger Ackroyd','Murder at the Vicarage','','answer2',0,0),(642,'What Florida city&#039;s name translates to &quot;mouth of the rat&quot; because of it&#039;s toothy inlet?','Biscayne','Sarasota','Bradenton','Boca Raton','','answer4',0,0),(643,'What is the missing date in the following, very-famous rhyme?  &#039;Remember, remember the ___ of November:  Gunpowder, treason and plot.  I see no reason why gunpowder, treason should ever be forgot!&#039;','fifth','sixth','first','tenth','','answer1',0,0),(644,'Which team is incorrectly matched with their nickname? ','Detroit Motorcycles (NHL) ','San Diego Padres (MLB) ','Toronto Raptors (NBA) ','Arizona Cardinals (NFL) ','','answer1',0,0),(645,'What is the Roman numeral for 50?','X','V ','L','','','answer3',0,0),(646,'What town name did residents of a Florida retirement community switch to because they found Sunset Depressing?\n','Sunshine','Sunrise','Sunnydale','Hope','','answer2',1,0),(647,'The strongest winds ever recorded were: ','127 mph','318 mph','231 mph','254 mph','','answer3',0,0),(648,'In Federalist No. 10, James Madison warns against the dangers of ','factions.','states’ rights.','judicial review.','an all-powerful president.','','answer1',0,0),(649,'Who is the director of the movie Star Wars?','YiMou Zhang','Gump','George Lucas','','','answer3',0,0),(650,'Which film released in the forties was NOT a Disney production?','Pinocchio','Fantasia','Bluebeard','Dumbo','','answer3',0,0),(651,'British-born novelist; former actress; sister of Joan','Emmeline Pankhurst','Anna Pavlova','Edith Cavell','Jackie Collins','','answer4',0,0),(652,'Can horses vomit?','Yes','It depends on its age','No','','','answer3',0,0),(653,'The mid-autumn festival is a famous Chinese traditional festival  Which food do Chinese eat that day?','Bread','Beef','Moon cake','','','answer3',0,0),(654,'Who wrote the trilogy covering people coping with the various seasons on their planet, where each season lasts for several hundred years?','Herbert','Heinlein','None of these authors','Aldiss','','answer4',0,0),(655,'When you divide by zero, the answer is  ___:','1','You can&#039;t divide by zero','0','','','answer2',0,0),(656,'Louisville and MLBs St. Louis&#039; names are the same. What is Louisville&#039;s name?','Cardinals','Quilters','Purple Aces','Roughriders','','answer1',0,0),(657,'What San Francisco fixture is a favorite jumping-off point for an average of 14 people a year?','The Golden Gate Bridge','Coit Tower on Telegraph Hill','Pier 39','Fisherman&#039;s Wharf ','','answer1',0,0),(658,'What people were the first to adopt a solar year, after noticing spring holidays were beginning to occur in winter?','Greeks','Romans','Jews','Egyptians','','answer4',0,0),(659,'When your uvula vibrates are you: ','snoring','coughing','burping','talking','','answer1',0,0),(660,'Who painted the Mona Lisa ?','Leonardo Da Vinci','Rudy Gay ','James Worthy','','','answer1',0,0),(661,'In the video game &quot;Mass Effect 2&quot; - What physical appears increases intensity as you become more of a Renegade?','Red Eyes','Fangs','Devil Horns','No change','','answer1',0,0),(662,'What was Charlton Heston‘s role in the film “The Ten Commandments”?','Aaron','Moses','Ramses II','Joshua','','answer2',0,0),(663,'What&#039;s the common term for epinephrine?','Adrenaline','Lactic Acid','Morphene','Saline','','answer1',0,0),(664,'What author wrote &#039;Of Mice and Men&#039;?','Ken Kesey','Leo Tolstoy','John Steinbeck','J.D. Salinger','','answer3',0,0),(665,'This entertainer had a broadcast show for twenty years, painted clowns and other circus memories of his teenage years, wrote short stories and composed many pieces of background music. Who was he?','Richard &quot;Red&quot; Skelton','Julius &quot;Groucho&quot; Marx','Jackie &quot;The Great One&quot; Gleason','Steve &quot;Steverino&quot; Allen','','answer1',0,0),(666,'Who proposed the law of motion that for every action there is an equal and opposite reaction? ','Albert Einstein','Tresani','Isaac Newton','Galileo','','answer3',0,0),(667,'  In this 2002 Victorian-era comedy, based on an Oscar Wilde play, Colin Firth (as Jack Worthing) tries to win the hand of his love and learns &quot;The Importance of Being&quot; this. What word completes the title?','Frank','Earnest','Honest','Cordial','','answer2',0,0),(668,'Who was the main creator of Windows?','Steve Jobs','Bill Gates','Ryoji Chubachi','Hiroshi Yamauchi','','answer2',0,0),(669,'Eric Clapton released his first solo album in 1970 after leaving what band?','Milk and Honey','The Birds','Cream  ','Buffalo Springfield','','answer3',0,0),(670,'Who was the famed teacher of Alexander the Great?','Plato','Aristotle','Socrates','Euripides','','answer2',0,0),(671,'Who destroyed the droid control ship in &quot;Episode I - The Phantom Menace&quot;?','Han Solo','Luke Skywalker','Anakin Skywalker','Obi-Wan Kenobi','','answer3',0,0),(672,'Red blood corpuscles are formed in the ','liver','bone marrow','kidneys','heart','','answer2',0,0),(673,'How many carats is pure gold?','24','12','18','','','answer1',0,0),(674,'What product do Girl Scouts sell to raise money?','Cookies','Cars','Popcorn','','','answer1',0,0),(675,'Which of these races is supported by the NAACP?','African-American','Hispanic','Asian','Caucasian','','answer1',0,0),(676,'What is the capital of Sudan? ','Cairo ','Casablanca ','New Delhi ','Khartoum ','','answer4',0,0),(677,'What are the names of Toronto&#039;s four major sports teams?','Argonauts, Canadiens, Blue Jays, Raptors','Maple Leafs, Expos, Raptors, Tigercats','Maple Leafs, Raptors, Blue Jays, Argonauts','Mavericks, Maple Leafs, Mets, Argonauts','','answer3',0,0),(678,'Who said, &quot;Aren&#039;t we forgetting the true meaning of Christmas? You know, the birth of Santa?&quot;','Ebeneezer Scrooge','Donald Trump','Paris Hilton','Bart Simpson','','answer4',0,0),(679,'What activity was banned on Canadian domestic flights in 1988? ','drinking any alcoholic beverage ','sleeping ','eating ','smoking ','','answer4',0,0),(680,'How many planets orbit our sun?','6','8','10','12','','answer2',0,0),(681,'What is the last letter of the Greek alphabet?','Sigma','Omega','Alpha','','','answer2',0,0),(682,'A group of geese on the ground is gaggle.  What is a group of geese in the air','Formation','Flock','Troop','Skein','','answer4',0,0),(683,'What is Houston more known for?','Dairy Farming','NASA - Aerospace','Winemaking','','','answer2',0,0),(684,'Dino Paul Crocetti and Joseph Levitch made us all laugh in dozens of movies including &quot;At War with the Army&quot; (1950), and &quot;The Caddy&quot; (1953). By what names were this duo better known?','Dean Martin & Jerry Lewis','Dino Kartsonakis & Kirk Douglas','Jim Croce & Joseph Levitt','Paul Hartman & Joe E. Brown','','answer1',0,0),(685,'In which two events did Mildred &quot;Babe&quot; Didrikson win gold at the 1932 L A Olympics?','10k run and pole vault','Long jump and Javelin','Hurdles and long jump','Hurdles and javelin','','answer4',0,0),(686,'In the Alex Haley book `Roots`, who were the parents of Chicken George? ','Tom and Irene','Kizzy and Tom Kea','Kunta Kinte and Bell','Cynthia and Will Palmer','','answer2',0,0),(687,'This game has a timer that looks like a clapper board and word cards and is played like charades.','Guesstures','Operation','Simon Says','Don&#039;t Wake Daddy','','answer1',0,0),(688,'What is the length of a year of Venus?','365.2425 days','243.1087 days','224.701 days','164.321 days','','answer3',0,0),(689,'What is 10 Squared?','100','109','110','','','answer1',0,0),(690,'What is the largest gland in the human body?','Liver','Kidneys','Lungs','','','answer1',0,0),(691,'Lob, love and deuce are the terms of what sport?','swimming','football (soccer)','skiing','tennis','','answer4',0,0),(692,'How many books of the Bible are named for women?','4','8','3','2','','answer4',0,0),(693,'Paris is the star of a reality show that premiered in 2003. What is it?','Chantelle&#039;s Dream Dates','Princess NIkki','My Super Sweet 16th','Simple Life','','answer4',0,0),(694,' What are scotch eggs? ','eggs laid by Scotch hens ','eggs covered in sausagemeat and breadcrumbs ','eggs fried with haggis','','','answer2',0,0),(695,'What is the capital of Lithuania?','Valmiera','Taurage','Vilnius','Riga','','answer3',0,0),(696,'What is the resulting flavour when chocolate is added to coffee?','cocoa','mocha','latte','','','answer2',0,0),(697,'What&#039;s the groundnut better known as?','Walnut','Peanut','Coconut','Chestnut','','answer2',0,0),(698,'Now that our meats are covered, let&#039;s move on to vegetables. There are usually four different vegetables to pick from or to mix and match. One is this tasty starch (carbohydrate). It can be candied, baked or even fried. What vegetable is it?','irish potato','zucchini squash','yellow squash','sweet potato','','answer4',0,0),(699,'Who is the host of Show Me the Money?','Regis Philbin ','Alex Trebek','Paul Reubens','William Shatner','','answer4',0,0),(700,'The dot on top of the letter &#039;i&#039; is called a (n)  ','Point','Dot','Tittle','','','answer3',0,0),(701,'Which king is the only king without a moustache in poker ?','King of spades ','King of hearts','King of diamonds','','','answer2',0,0),(702,'What do Americans call the Huang Ho, China&#039;s second-longest river?','The Yangtze River','The Red River','The Mekong River','The Yellow River','','answer4',0,0),(703,'Elephants only sleep for  _______hours each day.','Two','Ten','Twenty','','','answer1',0,0),(704,'What sea laps the shores of Kazakhstan and Uzbekistan?','The Mediteranean Sea','The Aral Sea','The Black Sea','The Dead Sea','','answer2',0,0),(705,'What was Friedrich Serturner the first to extract from opium and use as a pain reliever?','Morphine','Acetylsalicitic Acid','Codiene','Acetomenophen','','answer1',0,0),(706,'How many planets are closer to the sun than earth?','1','2','3','4','','answer2',0,0),(707,'Is a Spider an insect?','No','Yes','Depends on what kind of spider','','','answer1',0,0),(708,'What is the abbreviation for Major League Baseball?','ABP','MLB','USBA','','','answer2',0,0),(709,'Which branch of science deals with the study of motion, forces, & energy? ','Physics','Chemistry','Astronomy','Geology','','answer1',0,0),(710,' This short story was written by American horror writer H.P Lovecraft in 1926. It was about a sane man going very insane while investigating an unknown underwater creature. The creature was worshipped as a god that slept in death only to awaken soon to devour all of humanity. What was the name of this book?','The Call of Cthulhu','The Dunwich Horror','The Lurking Fear','The Other Gods','','answer1',0,0),(711,'What happens when the ball goes off the side of the field in soccer?','A kick in by one team','A throw in by one team','A coin toss','The linesman kicks it back in','','answer2',0,0),(712,'To &#039;let the cat out of the bag&#039; means to','cause trouble','reveal the truth','endanger other people unnecessarily','','','answer2',0,0),(713,'What&#039;s the only U.S. state to border Maine?','Vermont','Connecticut','Massechusetts','New Hampshire','','answer4',0,0),(714,'What is the baptismal name of Pope John XXIII?','Albino Luciani','Angelo Roncalli','Aldo Moro','Sandro Pertini','','answer2',0,0),(715,'How old would someone be if he was a quarter of a century old?','100','25','50','','','answer2',0,0),(716,'Where is the country Chad located?','Africa','South America','North America','Asia','','answer1',0,0),(717,'Norwegian artist (1863-1944). He was a pioneer for a lot of other Norwegian, German and Czech artists. His best known painting is &#039;The Scream&#039; (1893). In Oslo there is a museum in tribute to him.','Johann Christian Dahl','Edvard Munch','Christian Krohg','Gustav Klimt','','answer2',0,0),(718,'  Which charitable organization was founded by London minister, William Booth, for the destitute, the hungry, the homeless, and the poor?','The Samaritan Army','United Way','The Salvation Army','UNICEF','','answer3',0,0),(719,'How many seconds are there in a day?','94','853','84,000','86,400','','answer4',0,0),(720,'What is a single unit of quanta called?','Quark','Quantum','Quant','Quait','','answer2',0,0),(721,'Which Western philosopher declared in a political tract from 1690 that all individuals have certain natural rights, including those of life, liberty, and property?','Thomas Hobbes',' John Locke','Jean Jacques Rousseau','Thomas Jefferson','James Madison','answer2',0,0),(722,'What is the official state insect for Illinois? ','Ladybug','Honney Bee','Firefly','Monarch butterfly','','answer4',0,0),(723,'What letter is on the right of a B on a keyboard?','C','Shift','N','','','answer3',0,0),(724,'The buildup of which common gas is affecting global warming?','CO2','O2','SO4','','','answer1',0,0),(725,'“Sue”, the most preserved T-Rex fossil ever found, was uncovered in 1990 and is on display at the Field Museum. Where was it found?','South Dakota','Wyoming','Illinois','Washington','','answer1',0,0),(726,'Which country has never invaded any country in her last 10000 years of history?','India','China','Egypt','',' ','answer1',0,0),(727,'The War of 1812, which lasted from 1812 to 1815, took a great number of casualties. Perhaps the most well-known among them is the death of Major General Sir Isaac Brock. During which battle of the War of 1812 did Brock lose his life? ','Battle of Beaverdams, June 24, 1813 ','Battle of Queenston Heights, October 13, 1812 ','Battle of Lundy&#039;s Lane, July 25, 1814 ','Battle of Chippewa, July 5, 1814 ','','answer2',0,0),(728,'What weight is the lightest in Amateur Boxing?','Ultra Light Weight ','Light Flyweight','Light Weight','','','answer2',0,0),(729,'Mark Twain wrote about which of these characters?','Little Boy Blue','Tom Sawyer','Red Riding Hood','Dennis the Menace','','answer2',0,0),(730,'Who wrote the book Alice In Wonderland?','Lewis Carroll ','J.K. Rowling','C. L. Lewis','','','answer1',0,0),(731,'Which one has been the president of the USA?','Washington','Guileless Du ','Master Chow','','','answer1',0,0),(732,'Where is the seat of International Court of Justice?','Amsterdam','Rotterdam','The Hague','Brussels','','answer3',0,0),(733,'The blood of mammals is red, the blood of insects is yellow, and the blood of lobsters is ?','Yellow','Blue','Red','','','answer2',0,0),(734,'When did Harry Houdini die?','January 18, 1946','June 3, 1928','July 7, 1940','October 31, 1926','','answer4',0,0),(735,'Thomas Jefferson counted the founding of which university to be among his   greatest accomplishments?',' the College of William and Mary','University of Virginia','Harvard','Yale','Princeton','answer2',0,0),(736,'Science and Technology: The Beagle Crater can be found on which of the following celestial bodies?','The Moon','Mars','Mercury','Venus','','answer2',0,0),(737,'In 1993 students from Purdue University created crayons that were NOT made out of petroleum-based paraffin wax (the commonly used substance). What did they make their crayons from?','Soybean Oil','Fungi','Rhubarb Stalks','Pumpkin Seeds','','answer1',0,0),(738,'Which of the following people was not a famous scientist?','Isaac Newton','Albert Einstein','Lebron James','','','answer3',0,0),(739,'NASA launched a series of missions in the 1960s and early 70s which achieved the first fly-by and became the first artificial orbiting satellite of Mars. What were these missions called?','Mars','Milstar','Messenger','Mariner','','answer4',0,0),(740,'How much liquid does the average human bladder hold?','8 ounces','12 ounces','16 ounces','20 ounces','','answer3',0,0),(741,'What outfit, after investing 20 years and $20 million, stopped using psychics to gather info?','CIA','FBI','NCIS','CGIS','','answer1',0,0),(742,'The Baby Ruth candy bar was created in 1920 by Curtiss Candy Co. The candy bar is named after the baseball player Babe Ruth.','TRUE','FALSE','','','','answer2',0,0),(743,'The first Three Musketeers bar orignailly sold for how much?','3 cents','5 cents','10 cents','one cent','','answer2',0,0),(744,'You can survive about a month without food. How many days can you survive without water?','1 to 2 days ','14 to 30 days ','5 to 7 days','','','answer3',0,0),(745,'Each Summer Olympic Games (or each Winter Olympics) are held how many years apart?','4','5','10','','','answer1',0,0),(746,'What is the name given to a substance which speeds up a chemical reaction?','Catalyst','Protein','Fat','','','answer1',0,0),(747,'Who played the title role in the 1982 film adaptation of &#039;Annie&#039;?','Lana Turner','Carol Burnett','Doris Day','Aileen Quinn','','answer4',0,0),(748,'Which legendary bird rises from ashes to be born again?','Wyatt','Madi','Phoenix','','','answer3',0,0),(749,'Which Canadian-born artist was the biggest-selling singles artist tin the UK in 1991?','Celine Dion','Bryan Adams','Alannis Morrisette','KD Lang','','answer2',0,0),(750,'What was the approximate weight of the heaviest hailstones recorded in history?','.5 lbs','2.25 lbs','1.5 lbs','','','answer2',0,0),(751,'What country&#039;s auto identification letters are KWT?','Kazakhstan','Kenya','Kiribati','Kuwait','','answer4',0,0),(752,'What two trees did Ponce de Leon introduce to Florida in 1513?','Orange & Grapefruit','Grapefruit & Lemon','Mango & Orange','Orange & Lemon','','answer4',0,0),(753,'Catnip has relaxing properties for humans too! How is it most commonly consumed ?','pizza topping','soup','tea','ravioli filling','','answer3',0,0),(754,'What&#039;s the world&#039;s second largest archipelago?','The Philippines','Surinam','Indonesia','Japan','','answer1',0,0),(755,'What island was Abel Tasman the first European to land on, in 1642?','Tasmania','New Zeeland','Austrailia','Tiawan','','answer1',0,0),(756,'Which extends further North?','Japan','North Korea','Turkey','Afghanistan','','answer1',0,0),(757,'Which currency is used in the USA?','Dollar','Yen','Euro','','','answer1',0,0),(758,'The Wave is a rock formation found on the slopes of the Coyote Buttes, Arizona, U.S.A.. What rock is it made up of?','Limestone','Sandstone','Marble','Basalt','','answer2',0,0),(759,'How many equal angles are there in an Isosceles Triangle?','1','2','3','','','answer2',0,0),(760,'In Islamic law how many wives is a man allowed to have?','10','4','1','','','answer2',0,0),(761,'What is the best option to dealing with your trash while camping?','Seal it up in a bag for when you are able to properly dispose of it.','Feed it to the wild life.','Bury it in the woods or burn it in the campfire.','Place it for birds to use in nests','','answer1',0,0),(762,'Who was born on August 15, 1769?','Winston Churchill','Queen Victoria','Napoleon Bonaparte','George V','','answer3',0,0),(763,'What animal can live for a few days after their head has been cut off?','Chicken','Pig','Cockroaches','','','answer3',0,0),(764,'Where&#039;s a shrimp&#039;s heart?','In their head','In their tail','In their body','','','answer1',0,0),(765,'What city, founded in 1550 by Sweden&#039;s King Gustav Vasa, was first called Helsingfors?','Stockholm','Oslo','Helsinki','Bergen','','answer3',0,0),(766,'Italian painter; architect; rebuilt St. Peter&#039;s','Alberto Santos-Dumont','Raphael','Victorien Sardou','Franz Lehar','','answer2',0,0),(767,'Where does Bill Gates come from?','Scotland','The USA','Canada','','','answer2',0,0),(768,'What does the rose symbolize?','Humor','Love','Hate','','','answer2',0,0),(769,'Where in the world is the most active volcano on earth?','Korea','Greece','Hawaii','Peru','Kenya','answer3',0,0),(770,'His was a story of a man transported to the penal colonies of early Australia for a crime of which he was innocent. Written by Marcus Clarke, it described in vivid details the horrors of life at the time within that system, and the hero&#039;s undying love for a woman which was interwound throughout the story right up to its tragic conclusion.','Australia Felix','The Sentimental Bloke','Robbery Under Arms','For the Term of His Natural Life','','answer4',0,0),(771,'What Arab city has a name derived from a word meaning &quot;sanctuary&quot;?','Kuait','Amman','','Mecca','','answer4',0,0),(772,'The fastest running insect is a(n):','army ant','stag Beetle','blister Beetle','Cockroach','','answer4',0,0),(773,'Flemish is an official language of which country?','Belgium','Germany','Switzerland','Lichtenstein','','answer1',0,0),(774,'In which month did the attack on Pearl Harbor take place?','January','April','July','December','','answer4',0,0),(775,'Superman can not see through what?','Rocks','Clothes','Metals ','Lead','','answer4',0,0),(776,'Which are the official languages of Canada?','English and Spanish','Spanish and French','French and Russian','English and French','','answer4',0,0),(777,'What did Oscar Wilde define as a man who knows the price of everything and the value of nothing? ','An estate agent (realtor) ','A lawyer ','A cynic ','A numbskull ','An idiot ','answer3',0,0),(778,'What are Albert Park in Melbourne, Spa-Francorchamps in Belgium and Suzuka in Japan ?','Theme parks','Championship golf courses','National parks','Motor Racing circuits','','answer4',0,0),(779,'What so-called &quot;war&quot; spawned the dueling slogans &quot;Better Dead Than RED&quot; and &quot;Better Red Than Dead&quot; in the 1950&#039;s?','The Cold War','The Korean War','World War 2','French & Indian War','','answer1',0,0),(780,'What is the name of the hottest desert in the world?','The Mohave Desert ','The Sahara Desert ','The Kalahari Desert','','','answer2',0,0),(781,'Charles Rolls of Rolls Royce fame died in what type of vehicle?','Boat','Car','Train','Airplane','','answer4',0,0),(782,'Destructive process by which rocks are changed on exposure to atmospheric agents at or near the Earth&#039;s surface with little or no transport of loosened or altered material.','Deposition','Weathering','Exhumation','Erosion','','answer2',0,0),(783,'Which veteran comedy actor played the pink-clad uncle in the 1995 movie ‘Arizona Dream’?','Walter Matthau','Sid Caesar','Jack Lemmon','Jerry Lewis','','answer4',0,0),(784,'This place is supposedly haunted. The residents of Hogsmeade can hear ghosts wailing in the night. There is a passage through the Whomping Willow from Hogwarts to here. What is the name of this place?','Haunted House','Honeydukes','The Shrieking Shack','Hog&#039;s Head','','answer3',0,0),(785,'What southwestern U.S. state has the highest percentage of non-English speakers?','Texas','Arizona','New mexico','Nevada','','answer3',0,0),(786,'What fish is called &quot;finnan haddie&quot; when smoked in Scotland?','Tuna','Cod','Swordfish','Haddock','','answer4',0,0),(787,'Which existing franchise used to share a team &#039;nickname&#039; with another CFL team for more than 50 years?','Montreal Alouettes','Saskatchewan Roughriders','Montreal Concorde','Edmonton Eskimos','','answer2',0,0),(788,'  What is the capital of Burundi?','Rome','Cairo','Bujumbura','Jerusalem','','answer3',0,0),(789,'What Pacific atoll got its name from its location between the Americas and Asia?','Bikini','Pacifica','Midway','Middleton Reef','','answer3',0,0),(790,'This thing is absolutely essential if you want to live. You can make somebody&#039;s &quot;sweat of sword&quot; boil. If you are a nobleman, you can say that your &quot;wound-weeping&quot; is blue and cold. It is also possible to have a &quot;sweat of ravens&quot; brother. Tell me, please, what I am driving at?','blood','money','water','health','','answer1',0,0),(791,'What is the feminine of lamb?','Lumber ','Ewe','Limb','Lob','','answer2',0,0),(792,'What is the state capital of California, USA?','Cupertino','Sacramento','Los Angeles','','','answer2',0,0),(793,'In the video game &quot;Mass Effect 2&quot; - What was Tali&#039;s new name in &quot;Mass Effect 2&quot;? (When you FIRST meet her on Freedom&#039;s Progress)','Tali&#039;Zorah vas Normandy','Tali&#039;Zorah vas Neema','Tali&#039;Zorah nar Rayya','Tali&#039;Zorah vas Rayya','','answer2',0,0),(794,'What is the English name for &#039;agurk&#039;?','cucumber','lettuce','tomatoe','onion','','answer1',0,0),(795,'What 120,000-square-mile African desert is almost completely covered by woods and grass?','The Kalahari','The Sahara','The Nubian','The Nabib','','answer1',0,0),(796,'In Alice in Wonderland, what color were the cards painting the roses? ','yellow','black','white','red ','','answer4',0,0),(797,'What Central American country has its capital in Tegucigalpa?','Nicaragua','Costa Rico','Honduras','Panama','','answer3',0,0),(798,'What do people call the number 1 followed by 12 zeros?','One million','One trillion','One billion','','','answer2',0,0),(799,'Which is the capital of Afghanistan?','Teheran','Baghdad','Kabul','Tashkent','','answer3',0,0),(800,'Theoretical physicists were examining antimatter and neutrinos at about the same time. The antiparticles of charged particles have the opposite charge, but the situation for neutral particles is not so clear! The neutron has a distinct antiparticle, but the photon is its own antiparticle. So debate raged over antineutrinos. Are neutrinos their own antiparticles?','YES','NO','','','','answer2',0,0),(801,'  What colour is an octopus&#039; blood? (when it&#039;s oxygenated)','Mauve','Plaid','Blue','Striped','','answer3',0,0),(802,'Explain and show the correct way to wear a life jacket?','Watercraft','Photographer','Fishing','Skater','','answer1',0,0),(803,'A substance that allows heat or electricity to pass through is called:','Conductor','Acid','Alcohol','','','answer1',0,0),(804,'Who was the Prime Minister of Norway when it was under German occupation during World War II?','Kjell Magne Bondevik','Jens Stoltenberg','Olaf Haraldsson','Vidkun Quisling','','answer4',1,0),(805,'Let&#039;s see you batting this one over the boundary: In what sport would you see bails, googlies, chinamen, yorkers, and ducks? ','Yachting ','Lacrosse ','Croquet ','Cricket ','','answer4',0,0),(806,'What were the names of the four Warner Brothers of Warner Brothers Studio fame?','Moe, Larry, Curly and Ed','Douglas, Joseph, Arnold and Robert','Manny, Moe, Jack and Harry','Sam, Albert Jack and Harry','','answer4',0,0),(807,'What country receives 26 percent of all Saudi Exports?','Brazil','Germany','China','The U.S.','','answer4',0,0),(808,'Which scandal hit sportsman was described by wife Monica in 1998 as &quot;kind of shy?&quot;','Coby Bryant','Magic Johnson','Mike Tyson','OJ Simpson','','answer3',0,0),(809,'What treaty for the protection of the ozone layer includes in its title the name of a Canadian city? ','Montreal Protocol ','Ottawa Treaty ','Geneva Convention ','Treaty of Ghent ','','answer1',0,0),(810,'What action by the British in 1930 caused Mahatma Gandhi to lead thousands of his followers on a march to the sea?','They had threatened to deport several of his relatives','They had put a tax on salt','They had imposed a severe curfew throughout parts of India','They had refused to enter talks on independence','','answer2',0,0),(811,'Before becoming king, what was David&#039;s profession?','Shepherd','Fisherman','Tent maker','Carpenter','','answer1',0,0),(812,'What desert did David Livingstone have to cross to reach Lake Ngami?','The Kalahari','The Sahara','The Gobi','The Arabian','','answer1',0,0),(813,'When a smile is done as an involuntary expression of anxiety what is it called?','Grimace','Smirk','Snort ','',' ','answer1',0,0),(814,'Which of the following is the chemical symbol for lead?','Li','Le','Ld','Pb','','answer4',0,0),(815,'How  many U.S. states are named after a president?','one','two','three','four','','answer1',1,0),(816,'What New York City landmark is the largest movie theater in the U.S.?','Radio City Music Hall','The Apollo Theater','Palace Theater','Royale Theatre','','answer1',0,0),(817,'What&#039;s the most intelligent mammal after man?','The Chimpanzee','The Bottle-Nosed Dolphin','The Orca','The Golden Retriever','','answer1',0,0),(818,'What mountains do the Ganges, Brahmaputra and Indus rivers begin in?','The Andes','The Urals','The Rocky&#039;s','The Himalayas','','answer4',0,0),(819,'When did Mark Twain become a licensed river pilot?','1839','1844','1858','1870','','answer3',0,0),(820,'Are Europe and North America drifting closer together or farther apart?','closer','farther','','','','answer2',0,0),(821,'The formula for carbon dioxide is CO2. How many atoms of oxygen are in one molecule?','1','2','3','4','','answer2',0,0),(822,'Which spacecraft first visited Venus?','Pioneer 3','Mariner 2','Ulysses','Mariner 4','','answer2',0,0),(823,'What color are the 5 Olympic Rings?','Green Red Pink Blue White','Yellow Pink Red Blue Brown','Black Blue Red Green Yellow','','','answer3',0,0),(824,'In 1935, what was Bugs Bunny originally called?','Funny Bunny ','Doc','Wuzz Up','Happy Rabbit','','answer4',0,0),(825,'What was dedicated in 1982 when veteran Ian Scruggs said: &quot;Thank you America...for finally remembering us&quot;?','The WWII Memorial','The Korean War Memorial','The Vietnam Veterans Memorial','','','answer3',0,0),(826,'How many sonnets did William Shakespeare write?','167','154','108','','','answer2',0,0),(827,'What East African country&#039;s annual four percent population growth rate is the world&#039;s highest?','Tanzania','Kenya','Ruwanda','Burundi','','answer2',0,0),(828,'Who said “Good luck, Mr Gorsky”?','Neil Armstrong','John F.Kennedy','Karin Carpenter','Woody Allen','','answer1',0,0),(829,'What do the letters DNA stand for?','Deoxyribonucleic Acid','Dumb Narcotic Apricots','Do No Apathy','Do Not Oblige','','answer1',0,0),(830,'John has 16 nickels and 2 dimes.  Jenny has 3 quarters and 2 dimes.  Who has more money?','John','Jenny ','They have equal','','','answer1',0,0),(831,'What is the cube root of 8?','2','3','4','','','answer1',1,0),(832,'Alexandra Cymboliak Zuck was born April 23, 1942 in Bayonne, New Jersey USA. This actress had roles in &quot;A Summer Place&quot;, &quot;Imitation of Life&quot; and &quot;Tammy and the Doctor&quot; and married that guy who sang &quot;Mack the Knife&quot;. What was her name? ','Connie Francis ','Dolores Hart ','Andrea Yeager ','Sandra Dee ','','answer4',0,0),(833,'Mary&#039;s whole world consists of her enclosed village, protected from the zombie hordes outside the fence by Guardians, and all under the control of the Sisterhood. There is a path leading to the village and away again but nobody seems to know where, if anywhere, it leads. Which book is this?','The Forest of Hands and Teeth','The Sunrise Lands','Lirael','Ashes, ashes','','answer1',0,0),(834,'About how long does it take sunlight to reach the Earth:','8 seconds','8 minutes','8 hours','8 days','','answer2',0,0),(835,'What is the number of squares on a chess board?','72','64','32','48','','answer2',0,0),(836,'Which of the Great Lkes does not lap Canadian shores?','Lake Superior','Lake Erie','Lake Michigan','Lake Huron','','answer3',0,0),(837,'The islands Hokkaido, Honshu, Shikoku and Kyushu are part of which country?','Philippines','S. Korea','Japan','Vietnam','','answer3',0,0),(838,'Under the U.S. Constitution, members of the U.S. House of Representatives have a _____ term, members of the U.S. Senate have a _____ term, and the president has a _____ term.','2 year; 6 year; 4 year','2 year; 4 year; 6 year','4 year; 4 year; 4 year','2 year; 8 year; 4 year','','answer1',0,0),(839,'What year did the Dow Jones Industrial Average break both the 4000 and 5000 marks?','1990','1995','1997','2000','','answer2',0,0),(840,'Which city do the Rockets call home?','Houston','Austin','Chicago','','','answer1',0,0),(841,'Who said “I guess it was because we were so completely unlike in every way, but, like bacon and eggs, we seemed to be about perfect together - but not so good apart”?\n','Oliver Hardy','Dean Martin','Richard Burton','Lou Costello','','answer2',0,0),(842,'How many took part in the Last Supper?','13','2','100','','','answer1',0,0),(843,'What is the all time best selling book in the world?','The Bible','Harry Potter','Twilight','','','answer1',0,0),(844,'What is the largest dinosaur known to man?','Tyrannosaurus','Brontosaurus','Meglodon','Amphicoelias','','answer4',0,0),(845,'Which is larger ? ','Pacific Ocean','Atlantic Ocean','Eurasian Continent','North and South American continents','','answer1',0,0),(846,'The spell is used by Professor McGonagall to get the suits of armor to help in the Battle at Hogwarts, in the seventh book, &quot;The Deathly Hallows&quot;.','Come do my bidding','Locomotor Mortis','Piertotum Locomotor','Animate','','answer3',1,0),(847,'What country provides Cuba with most of its new cars and computers in exchange for sugar?','Korea','Japan','U.S.','Germany','','answer2',0,0),(848,'&quot;The Murders in the Rue Morgue&quot; first appeared in an 1841 magazine as a short story. Who wrote it?','Charles Dickens','Edgar Allan Poe','Wilkie Collins','Alexandre Dumas','','answer2',0,0),(849,'This organ is responsible for removing the waste chemicals and water from the blood?','Bladder','Kidney','Urethra','','','answer2',0,0),(850,'How many players can be on the field for each team in American Football?','Ten','twelve','Eleven','','','answer3',0,0),(851,'223*232*303*239*94*133*0*31+23*3*0*32*3+1=?','1','0','9.25E+14','','','answer1',0,0),(852,'What is the name of Pinocchio&#039;s creator?','Mostro','Geppetto','Stromboli','Jiminy','','answer2',0,0),(853,'How many reindeer were pulling the sleigh in &quot;Twas the Night before Christmas?&quot;','7','11','9','8','','answer4',0,0),(854,'What was the nationality of the jet shot down in Russian air space in 1983?','Korean','Chinese','American','English','','answer1',0,0),(855,'10% of all the people living in a certain town in Georgia have unlisted phone numbers.  If you selected 100 names at random from the town&#039;s phone book, on average, how many of these people would have unlisted phone numbers?','10','90','0','','','answer3',1,0),(856,'What Aussie cover girl put on 20 pounds to play a 19th-century artist&#039;s model in Sirens?','Tallulah Morton','Elle MacPherson','Miranda Kerr','Abbey Lee Kershaw ','','answer2',0,0),(857,'_____ is a written attack on a person’s reputation.','Libel','Slander','Obscenity','All of the answers are correct.','','answer1',0,0),(858,'&#039;Let Your Fingers do the Walking&#039;','Nike','Yellow Pages','Avis','Century 21','','answer2',0,0),(859,'What bulb has been dubbed &quot;the stinking rose&quot;?','Onion','Tulip','Garlic','','','answer3',0,0),(860,'Which of the five senses is sharpened by a radial keratotomy?','hearing','touch','taste','sight','smell','answer4',0,0),(861,'What is Rambo&#039;s first name?','James','John','Jason','','','answer2',0,0),(862,'Which city was known as New Amsterdam?','New Orleans','Los Angeles','Seattle','New York','','answer4',0,0),(863,'What New Orleans soup has a name derived from the Bantu word for okra?','Jambalaya','Gumbo','Creole','Roux','','answer2',0,0),(864,'What is the only rock that floats?','Granite','Basalt','Pumice','Obsidian','','answer3',0,0),(865,'Which of the following is NOT a quote from the 1942 film Casablanca?','&quot;Here&#039;s lookin&#039; at you, kid.&quot;','&amp;ldquo;Of all the gin joints, in all the towns, in all the world, she walks into mine&amp;hellip;&amp;rdquo;','&quot;Round up the usual suspects.&quot;','&quot;Frankly, my dear, I don&#039;t give a damn.&quot;','','answer4',0,0),(866,'Which city is the capital of the United States of America?','Albany','Seattle','Los Angeles','Washington D.C','','answer4',0,0),(867,'The HTML5 standard was published in 2014.','True','False','','','','answer1',0,0),(868,'In which city, is the Big Nickel located in Canada?','Calgary, Alberta','Victoria, British Columbia','Sudbury, Ontario','Halifax, Nova Scotia','','answer3',0,0),(869,'What tool lends it&#039;s name to a last-stone advantage in an end in Curling?','Screwdriver','Hammer','Wrench','Drill','','answer2',0,0),(870,'What cricketing term denotes a batsman being dismissed with a score of zero?','Carry','Bye','Duck','Beamer','','answer3',0,0),(871,'Which of these bones is hardest to break?','Humerus','Tibia','Femur','Cranium','','answer3',0,0),(872,'Which band had hits in 1975 with the songs, &#039;One Of These Nights&#039; &amp; &#039;Lyin Eyes&#039;?','The Doobie Brothers','Fools Gold','Fleetwood Mac','The Eagles','','answer4',0,0),(873,'Which Elton John hit starts with the line &#039;When are you gonna come down&#039;?','Bennie and the Jets','Crocodile Rock','Goodbye Yellow Brick Road','Rocket Man','','answer3',0,0),(874,'The Spitfire L.F. Mk IX had what engine?','Merlin X','Griffon 65','Merlin 50','Merlin 66','','answer4',0,0),(875,'In what engine was Titanfall made in?','Unreal Engine','Cryengine','Source Engine','Frostbite 3','','answer3',0,0),(876,'How many scoring zones are there on a conventional dart board?','82','102','62','42','','answer1',0,0),(877,'Which popular rock band has a one-armed drummer?','Foreigner','Lynyrd Skynyrd','Def Leppard','The Beatles','','answer3',0,0),(878,'What geometric shape is generally used for stop signs?','Circle','Triangle','Octagon','Hexagon','','answer3',0,0),(879,'Shrimp can swim backwards.','False','True','','','','answer2',0,0),(880,'Which of the following Inuit languages was the FIRST to use a unique writing system not based on the Latin alphabet?','Greenlandic','Inuktitut','Inupiat','Inuinnaqtun','','answer2',0,0),(881,'Which nation hosted the FIFA World Cup in 2006?','United Kingdom','Germany','South Africa','Brazil','','answer2',0,0),(882,'Vincent van Gogh cut off one of his ears.','False','True','','','','answer2',0,0),(883,'In the Animal Crossing series, which flower is erroneously called the &quot;Jacob&#039;s Ladder&quot;?','Lily of the Valley','Yarrow','Hydrangea','Harebell','','answer1',0,0),(884,'The United States was a member of the League of Nations.','True','False','','','','answer2',0,0),(885,'In the 2002 video game &quot;Kingdom Hearts&quot;, how many Keyblades are usable?','18','13','16','15','','answer1',0,0),(886,'In the game &quot;Cave Story,&quot; what is the character Balrog&#039;s catchphrase?','Nyeh heh heh!','Oh yeeaaah!','Whoa there!','Huzzah!','','answer4',0,0),(887,'Kissing someone for one minute burns about 2 calories.','True','False','','','','answer1',0,0),(888,'The Japanese god Izanagi successfully returned his wife Izanami from the Underworld.','True','False','','','','answer2',0,0),(889,'In 1720, England was in massive debt, and became in involved in the South Sea Bubble. Who was the main mastermind behind it?','John Blunt','Daniel Defoe','John Churchill','Robert Harley','','answer1',0,0),(890,'Which supercar company is from Sweden?','McLaren','Bugatti','Koenigsegg','Lamborghini','','answer3',0,0),(891,'In Need For Speed: Most Wanted (2005), how many people are there to defeat on the blacklist?','15','5','10','20','','answer1',0,0),(892,'Which of these is NOT a Humongous Entertainment game franchise?','Freddi Fish','Pajama Sam','Putt-Putt','Commander Keen','','answer4',0,0),(893,'The capital of the US State Ohio is the city of Chillicothe.','False','True','','','','answer1',0,0),(894,'The names of Tom Nook&#039;s cousins in the Animal Crossing franchise are named &quot;Timmy&quot; and &quot;Jimmy&quot;.','True','False','','','','answer2',0,0),(895,'In Macbeth, the eyes of what animals were used in the Witches&#039; cauldron?','Humans','Newts','Squids','Sharks','','answer2',0,0),(896,'On what medium was &quot;Clannad&quot; first created?','Light novel','Anime','Visual novel','Manga','','answer3',0,0),(897,'How many calories are in a 355 ml can of Pepsi Cola?','150','155','100','200','','answer1',0,0),(898,'The last Windows operating system to be based on the Windows 9x kernel was Windows 98.','False','True','','','','answer1',0,0),(899,'In the Pok&amp;eacute;mon series, what is Palkia&#039;s hidden ability?','Water Bubble','Pressure','Hydration','Telepathy','','answer4',0,0),(900,'Who won Big Brother 2014 UK?','Pavandeep &quot;Pav&quot; Paul','Christopher Hall','Helen Wood','Pauline Bennett','','answer3',0,0),(901,'In the 1992 film &quot;Army of Darkness&quot;, what name does Ash give to his double-barreled shotgun?','Boomstick','Bloomstick','Blastbranch','2-Pump Chump','','answer1',0,0),(902,'What year was Super Mario Bros. released?','1986','1985','1987','1983','','answer2',0,0),(903,'How many seasons did the TV show &quot;Donkey Kong Country&quot; last?','5','1','4','2','','answer4',0,0),(904,'What is the symbol for Displacement?','Dp','&amp;Delta;r','r','dr','','answer2',0,0),(905,'Who is the main character in most of the games of the YS series?','Estelle Bright','Roger Wilco','Adol Christin','Character doesn&#039;t have a name','','answer3',0,0),(906,'What color is the &quot;Ex&quot; in FedEx Ground?','Green','Light Blue','Red','Orange','','answer1',0,0),(907,'The LS7 engine is how many cubic inches?','376','346','427','364','','answer3',0,0),(908,'Satella in &quot;Re:Zero&quot; is the witch of what?','Wrath','Envy','Pride','Sloth','','answer2',0,0),(909,'In &quot;Overwatch&quot;, how much health does Roadhog&#039;s &quot;Take a Breather&quot; ability recover?','100','400','300','200','','answer3',0,0),(910,'According to Fair Works Australia, how long do you have to work to get Long Service Leave?','7 years','6 months','8 years','2 years','','answer1',0,0),(911,'In &quot;Star Trek&quot;, what sauce is commonly used by Klingons on bregit lung?','Grapok sauce','Sweet chili sauce','Gazorpazorp pudding','Grapork sauce','','answer1',0,0),(912,'When did the online streaming service &quot;Mixer&quot; launch?','2016','2009','2011','2013','','answer1',0,0),(913,'What was the aim of the &quot;Umbrella Revolution&quot; in Hong Kong in 2014?','Genuine universal suffrage','Gaining Independence','Lower taxes','Go back under British Rule','','answer1',0,0),(914,'In &quot;Starbound&quot;, according to the asset files, the description of the &quot;Erchius Ghost&quot; is the same as which other assets?','Trictus','Petricub','Spookit','Pyromantle','','answer3',0,0),(915,'What is the derivative of Acceleration with respect to time?','Bump','Jerk','Slide','Shift','','answer2',0,0),(916,'What is the approximate value of mathematical constant e?','3.14','1.62','2.72','1.41','','answer3',0,0),(917,'Who had a 1969 top 5 hit with the song,  &#039;A Boy Named Sue&#039;?','Bob Dylan','Johnny Cash','Willie Nelson','Kris Kristofferson','','answer2',0,0),(918,'The humerus, paired radius, and ulna come together to form what joint?','Elbow','Sholder','Ankle','Knee','','answer1',0,0),(919,'Which president erased the national debt of the United States?','Ronald Reagan','Franklin Roosevelt','Andrew Jackson','John F. Kennedy','','answer3',0,0),(920,'Which of these is NOT a player class in Team Fortress 2?','Demoman','Healer','Pyro','Spy','','answer2',0,0),(921,'The very first recorded computer &quot;bug&quot; was a moth found inside a Harvard Mark II computer.','False','True','','','','answer2',0,0),(922,'Who was the original drummer for The Beatles?','Ringo Starr','Tommy Moore','Stuart Sutcliffe','Pete Best','','answer2',0,0),(923,'In the original Star Trek TV series, what was Captain James T. Kirk&#039;s middle name?','Trevor','Travis','Tyrone','Tiberius','','answer4',0,0),(924,'The original Planetside was released in North America on...','June 17, 2001','May 20, 2003','September 29, 2003','January 14, 2005','','answer2',0,0),(925,'How many federal states does Germany have?','16','13','32','25','','answer1',0,0),(926,'What is the name of one of the Neo-Aramaic languages spoken by the Jewish population from Northwestern Iraq?','Lishana Deni','Lishan Didan','Hulaul&amp;aacute;','Chaldean Neo-Aramaic','','answer1',0,0),(927,'Alaska is the largest state in the United States.','True','False','','','','answer1',0,0),(928,'In which order do you need to hit some Deku Scrubs to open the first boss door in &quot;Ocarina of Time&quot;?','1, 3, 2','2, 3, 1','1, 2, 3','2, 1, 3','','answer2',0,0),(929,'Russia passed a law in 2013 which outlaws telling children that homosexuals exist.','False','True','','','','answer2',0,0),(930,'The manga JoJo&#039;s Bizarre Adventure is split into how many parts?','3','8','4','6','','answer2',0,0),(931,'In the show, Doctor Who, what does T.A.R.D.I.S stand for?','Toilet Aid Rope Dog Is Soup','Time And Relative Dimensions In Style','Time And Resting Dimensions In Space','Time And Relative Dimensions In Space','','answer4',0,0),(932,'What was another suggested name for, the 1985 film, Back to the Future?','Hill Valley Time Travelers','Spaceman From Pluto','The Lucky Man','The Time Travelers','','answer2',0,0),(933,'What does film maker Dan Bell typically focus his films on?','Historic Landmarks','Action Films','Documentaries','Abandoned Buildings and Dead Malls','','answer4',0,0),(934,'Which country does the power metal band &quot;Sabaton&quot; originate from?','Finland','Sweden','United States','Germany','','answer2',0,0),(935,'Who co-founded the YouTube Let&#039;s Play channel &quot;Game Grumps&quot; alongside Newgrounds animator Egoraptor?','Markiplier','Pewdiepie','Tobuscus','JonTron','','answer4',0,0),(936,'According to Toby Fox, what was the method to creating the initial tune for Megalovania?','Listened to birds at the park','Singing into a Microphone','Using a Composer Software','Playing a Piano','','answer2',0,0),(937,'Which one of these songs did the group &quot;Men At Work&quot; NOT make?','Safety Dance','Down Under','It&#039;s a Mistake','Who Can It Be Now?','','answer1',0,0),(938,'When was Final Fantasy XV released?','October 25th, 2016','November 29th, 2016','December 31th, 2016','November 30th, 2016','','answer2',0,0),(939,'In Counter Strike: Global Offensive, what is the code implanted onto the C4 as the Terrorists plant the bomb?','7890728','7256380','7355608','7726354','','answer3',1,0),(940,'In the original DOOM games, which of the following demons is a recolor of the Baron of Hell, but is weaker than the Baron?','Hell Knight','Pinky','Mancubus','Arch-Vile','','answer1',0,0),(941,'What was Genghis Khan&#039;s real name?','Tem&amp;uuml;r','Tem&amp;uuml;jin','&amp;Ouml;gedei','M&amp;ouml;ngke','','answer2',0,0),(942,'In what year was Hearthstone released?','2011','2014','2013','2012','','answer2',0,0),(943,'In the video game &quot;League of Legends&quot; which character is known as &quot;The Sinister Blade&quot;?','Akali','Zed','Katarina','Shaco','','answer3',0,0),(944,'Which male player won the gold medal of table tennis singles in 2016 Olympics Games?','Jun Mizutani (Japan)','Zhang Jike (China)','Ma Long (China)','Vladimir Samsonov (Belarus)','','answer3',0,0),(945,'According to the United States Constitution, how old must a person be to be elected President of the United States?','35','45','40','30','','answer1',0,0),(946,'According to Greek Mythology, Atlas was an Olympian God.','False','True','','','','answer1',0,0),(947,'Who is the lead singer of Green Day?','Sean Hughes','Billie Joe Armstrong','Tr&amp;eacute; Cool','Mike Dirnt','','answer2',0,0),(948,'In the 2012 animated film &quot;Wolf Children&quot;, what are the names of the wolf children?','Ame &amp; Hana','Ame &amp; Yuki','Hana &amp; Yuki','Chuck &amp; Anna','','answer2',0,0),(949,'What is the capital of India?','Montreal','Tithi','Bejing','New Delhi','','answer4',0,0),(950,'What was Mountain Dew&#039;s original slogan?','Do The Dew','Give Me A Dew','Yahoo! Mountain Dew... It&#039;ll tickle your innards!','Get&#039; that barefoot feelin&#039; drinkin&#039; Mountain Dew','','answer3',0,0),(951,'Who created &quot;RWBY&quot;?','Shane Newville','Miles Luna','Kerry Shawcross','Monty Oum','','answer4',0,0),(952,'What is the name of the gang that Ponyboy is a part of in the book, The Outsiders?','The Mafia','The Outsiders','The Socs','The Greasers','','answer4',0,0),(953,'What video game engine does the videogame Quake 2 run in?','iD Tech 3','iD Tech 1','iD Tech 2','Unreal Engine','','answer3',0,0),(954,'Scatman John&#039;s real name was John Paul Larkin.','True','False','','','','answer1',0,0),(955,'Watch_Dogs 2 is a prequel.','False','True','','','','answer1',0,0),(956,'Which Kirby game first introduced Copy Abilities?','Kirby&#039;s Dream Land 2','Kirby&#039;s Dream Land','Kirby&#039;s Adventure','Kirby Super Star','','answer3',0,0),(957,'In the game Pok&amp;eacute;mon Conquest, which warlord is able to bond with Zekrom and a shiny Rayquazza?','Hideyoshi','Nobunaga','The Player','Oichi','','answer2',0,0),(958,'Klingons respect William Shakespeare, they even suspect him having a Klingon lineage.','True','False','','','','answer1',0,0),(959,'In &quot;Overwatch&quot;, how much health does Roadhog&#039;s &quot;Take a Breather&quot; ability recover?','200','100','300','400','','answer3',0,0),(960,'Which of these games was NOT a Nintendo Switch launch title in the United States?','Just Dance 2017','Snipperclips','Voez','Fast RMX','','answer3',0,0),(961,'How many aces can be shot down through the entirety of &quot;Ace Combat Zero: The Belkan War&quot;?','245','132','100','169','','answer4',0,0),(962,'The ADAM collecters in the Bioshock series are known as Little Sisters.','True','False','','','','answer1',0,0),(963,'In &quot;Hunter x Hunter&quot;, what are members in Killua&#039;s family known for being?','Ninjas','Assassins','Bandits','Hunters','','answer2',0,0),(964,'Who is Batman?','Clark Kent','Bruce Wayne','Barry Allen','Tony Stark','','answer2',0,0),(965,'Amazon acquired Twitch in August 2014 for $970 million dollars.','True','False','','','','answer1',0,0),(966,'What year did the television company BBC officially launch the channel BBC One?','1948','1932','1955','1936','','answer4',0,0),(967,'The Great Wall of China is visible from the moon.','False','True','','','','answer1',0,0),(968,'FLAC stands for &quot;Free Lossless Audio Condenser&quot;&#039;','True','False','','','','answer2',0,0),(969,'The movie &quot;The Nightmare before Christmas&quot; was all done with physical objects.','False','True','','','','answer2',0,0),(970,'Which of these is NOT an album released by The Beatles?','Abbey Road','The Wall','Magical Mystery Tour','Revolver','','answer2',0,0),(971,'The Tiananmen Square protests of 1989 were held in Hong Kong.','False','True','','','','answer1',0,0),(972,'Gumbo is a stew that originated in Louisiana.','False','True','','','','answer2',0,0),(973,'On the Beaufort Scale of wind force, what wind name is given to number 8?','Hurricane','Gale','Storm','Breeze','','answer2',0,0),(974,'What country is the Hussarya supercar, made by the car manufacturer &quot;Arrinera&quot;, assembled in?','China','Poland','Italy','Sweden','','answer2',0,0),(975,'What is the first Mersenne prime over 1000?','2203','1279','1009','1069','','answer2',0,0),(976,'Which student in Yandere Simulator is known for asking irritating and stupid questions?','Kokona Hruka','Oka Ruto','Midori Gurin','Pipi Osu','','answer3',0,0),(977,'The Ace Attorney trilogy was suppose to end with &quot;Phoenix Wright: Ace Attorney &amp;minus; Trials and Tribulations&quot; as its final game.','False','True','','','','answer2',0,0),(978,'Which of these is NOT a team available in the game Pok&amp;eacute;mon Go?','Team Mystic','Team Valor','Team Instinct','Team Rocket','','answer4',0,0),(979,'Donkey Kong was originally set to be a Popeye arcade game.','False','True','','','','answer2',0,0),(980,'What is the primary addictive substance found in tobacco?','Glaucine','Ephedrine','Nicotine','Cathinone','','answer3',0,0),(981,'What name was historically used for the Turkish city currently known as Istanbul?','S&amp;ouml;ğ&amp;uuml;t','Adrianople','H&amp;uuml;davendigar','Constaninople','','answer4',0,0),(982,'What did the first moving picture depict?','A woman in a dress','A galloping horse','A man walking','A crackling fire','','answer2',0,0),(983,'What is the title of song on the main menu in Halo?','Opening Suite','Shadows','Suite Autumn','Halo','','answer4',0,0),(984,'What are rhino&#039;s horn made of?','Keratin','Ivory','Skin','Bone','','answer1',0,0),(985,'Which of the following collision avoidance systems helps airplanes avoid colliding with each other?','TCAS','OCAS','GPWS','TAWS','','answer1',0,0),(986,'The Xenomorph from the science fiction film &quot;Alien&quot; has acidic blood.','False','True','','','','answer2',0,0),(987,'In Left 4 Dead, what is the name of the Special Infected that is unplayable in Versus mode?','The Smoker','The Spitter','The Tank','The Witch','','answer4',0,0),(988,'In the game &quot;Cave Story,&quot; what is the character Balrog&#039;s catchphrase?','Whoa there!','Huzzah!','Nyeh heh heh!','Oh yeeaaah!','','answer2',0,0),(989,'Which one of these rulers did not belong to the Habsburg dynasty?','Philip II','Charles V','Philip V','Francis Joseph','','answer3',0,0),(990,'The main antagonist of the second part of JoJo&#039;s Bizarre Adventure is which of the following?','Erina Joestar','Santana','Kars','Wired Beck','','answer3',0,0),(991,'In the 2010 Nightmare on Elm Street reboot, who played Freddy Kruger?','Jackie Earle Haley','Derek Mears','Gunnar Hansen','Tyler Mane','','answer1',0,0),(992,'What is the capital of Senegal?','Monrovia','Nouakchott','Dakar','Conakry','','answer3',0,0),(993,'The novel &quot;Of Mice And Men&quot; was written by what author?','John Steinbeck','Mark Twain','Harper Lee','George Orwell','','answer1',0,0),(994,'Toronto is the capital city of the North American country of Canada.','True','False','','','','answer2',0,0),(995,'What was the first PlayStation game to require the use of the DualShock controller?','Tekken','Tomba 2!','Ape Escape','Metal Gear','','answer3',0,0),(996,'The song &quot;Feel Good Inc.&quot; by British band Gorillaz features which hip hop group?','OutKast','Public Enemy','De La Soul','Cypress Hill','','answer3',0,0),(997,'Which one of these paintings is not by Caspar David Friedrich?','The Monk by the Sea','The Black Sea','Wanderer above the Sea of Fog','The Sea of Ice','','answer2',0,0),(998,'What song plays in the ending credits of the anime &quot;Ergo Proxy&quot;?','Mad World','Bittersweet Symphony','Paranoid Android','Sadistic Summer','','answer3',0,0),(999,'What was the first movie to ever use a Wilhelm Scream?','The Charge at Feather River','Treasure of the Sierra Madre','Distant Drums','Indiana Jones','','answer3',0,0),(1000,'In the year 1818, novelist Mary Shelly is credited with writing a fiction novel and creating this infamous character.','The Invisible Man','Frankenstein&#039;s monster','The Thing','Dracula','','answer2',0,0),(1001,'What is the name of the main character from the music video of &quot;Shelter&quot; by Porter Robinson and A-1 Studios?','Rem','Rin','Ren','Ram','','answer2',0,0),(1002,'Which song in Drake&#039;s &quot;Views&quot; features Future?','Faithful','Grammys','Too Good','Pop Style','','answer2',0,0),(1003,'&quot;Drink the Sea&quot; is an album by which electronic music artist?','Flux Pavilion','Avicii','XXYYXX','The Glitch Mob','','answer4',0,0),(1004,'Which historical conflict killed the most people?','World War II','Three Kingdoms War','Taiping Rebellion','Mongol conquests','','answer1',0,0),(1005,'In Riot Games &quot;League of Legends&quot; the name of Halloween event is called &quot;The Reckoning&quot;.','True','False','','','','answer2',0,0),(1006,'When was Hubba Bubba first introduced?','1979','1972','1984','1980','','answer1',0,0),(1007,'According to the Egyptian Myth of Osiris, who murdered Osiris?','Set','Anhur','Horus','Ra','','answer1',0,0),(1008,'Scatman John&#039;s real name was John Paul Larkin.','True','False','','','','answer1',0,0),(1009,'What color is the &quot;Ex&quot; in FedEx Ground?','Red','Orange','Green','Light Blue','','answer3',0,0),(1010,'In &quot;Star Trek&quot;, Klingons are aliens.','True','False','','','','answer1',0,0),(1011,'Sugar contains fat.','False','True','','','','answer1',0,0),(1012,'Which of these songs is not on the &quot;untitled&quot; album by Led Zeppelin?','Rock and Roll','Black Dog','Celebration Day','Stairway to Heaven','','answer3',0,0),(1013,'What was the punishment for Sysiphus&#039;s craftiness?','Standing in a lake filled with water he could not drink.','Cursed to roll a boulder up a hill for eternity.','To fell a tree that regenerated after every axe swing.','Tied to a boulder for eternity, being pecked by birds.','','answer2',0,0),(1014,'The Neanderthals were a direct ancestor of modern humans.','False','True','','','','answer1',0,0),(1015,'What was the code name given to Sonic the Hedgehog 4 during its development?','Project Darksphere','Project Bluespike','Project Roboegg','Project Needlemouse','','answer4',0,0),(1016,'The ancient roman god of war was commonly known as...','Mars','Ares','Juno','Jupiter','','answer1',0,0),(1017,'Which of the following liquids is least viscous? Assume temperature is 25&amp;deg;C.','Acetone','Mercury','Benzene','Water','','answer1',0,0),(1018,'Which singer was featured in Jack &amp;Uuml; (Skrillex &amp; Diplo)&#039;s 2015 song &#039;Where Are &amp;Uuml; Now&#039;?','Selena Gomez','Ellie Goulding','Justin Bieber','The Weeknd','','answer3',0,0),(1019,'Moore&#039;s law originally stated that the number of transistors on a microprocessor chip would double every...','Two Years','Eight Years','Four Years','Year','','answer4',0,0),(1020,'Coca-Cola&#039;s original colour was green.','False','True','','','','answer1',0,0),(1021,'Which artist&amp;rsquo;s studio was known as &#039;The Factory&#039;?','Peter Blake','Roy Lichtenstein','Andy Warhol','David Hockney','','answer3',0,0),(1022,'Cashmere is the wool from which kind of animal?','Llama','Camel','Goat','Sheep','','answer3',0,0),(1023,'In a game of snooker, what colour ball is worth 3 points?','Yellow','Green','Brown','Blue','','answer2',0,0),(1024,'Which anime heavily features music from the genre &quot;Eurobeat&quot;?','Wangan Midnight','Cowboy Bebop','Kino no Tabi','Initial D','','answer4',0,0),(1025,'This movie contains the quote, &quot;Houston, we have a problem.&quot;','Apollo 13','Capricorn One','Marooned','The Right Stuff','','answer1',0,0),(1026,'Which Russian oblast forms a border with Poland?','Kaliningrad','Omsk','Nizhny Novgorod','Samara','','answer1',0,0),(1027,'There is a city called Rome in every continent on Earth.','False','True','','','','answer1',0,0),(1028,'Which one of the following actors did not voice a character in &quot;Saints Row: The Third&quot;?','Sasha Grey','Hulk Hogan','Burt Reynolds','Ron Jeremy','','answer4',0,0),(1029,'Luigi is taller than Mario?','False','True','','','','answer2',0,0),(1030,'How many points is the Z tile worth in Scrabble?','10','6','5','8','','answer1',0,0),(1031,'What is the nickname of the US state of California?','Treasure State','Golden State','Bay State','Sunshine State','','answer2',0,0),(1032,'In Avatar: The Last Airbender, which element does Aang begin to learn after being defrosted?','Earth','Water','Fire','Air','','answer2',0,0),(1033,'An atom contains a nucleus.','True','False','','','','answer1',0,0),(1034,'Which of the following is NOT a real element?','Vitrainium','Hassium','Praseodymium','Lutetium','','answer1',1,0),(1035,'On average, Americans consume 100 pounds of what per second?','Chocolate','Potatoes','Donuts','Cocaine','','answer1',0,0),(1036,'Who is the main character with yellow hair in the anime Naruto?','Kakashi','Sasuke','Naruto','Ten Ten','','answer3',0,0),(1037,'Rocket League is a game which features..','Planes','Helicopters','Submarines','Cars','','answer4',0,0),(1038,'Which Beatles album does NOT feature any of the band members on it&#039;s cover?','The Beatles (White Album)','Abbey Road','Magical Mystery Tour','Rubber Soul','','answer1',0,0),(1039,'Centripedal force is an apparent force that acts outward on a body moving around a center, arising from the body&#039;s inertia.','False','True','','','','answer1',0,0),(1040,'Which band released songs suchs as &quot;Rio&quot;, &quot;Girls on Film&quot;, and &quot;The Reflex&quot;?','The Cure','Duran Duran','Depeche Mode','New Order','','answer2',0,0),(1041,'Which buzzword did Apple Inc. use to describe their removal of the headphone jack?','Bravery','Innovation','Courage','Revolution','','answer3',0,0),(1042,'The greek god Poseidon was the god of what?','Fire','Sun','War','The Sea','','answer4',0,0),(1043,'In the game &quot;Subnautica&quot;, a &quot;Cave Crawler&quot; will attack you.','False','True','','','','answer2',0,0),(1044,'&quot;Twenty One Pilots&quot; made the song &quot;The Motion&quot; featuring Sampha.','True','False','','','','answer2',0,0),(1045,'In Greek mythology, who is the god of wine?','Hephaestus','Demeter','Apollo','Dionysus','','answer4',0,0),(1046,'Deuterium is an isotope of which element?','Nitrogen','Helium','Neon','Hydrogen','','answer4',0,0),(1047,'What is the maximum HP in Terraria?','1000','500','100','400','','answer2',0,0),(1048,'Which album was released by Kanye West in 2013?','Yeezus','The Life of Pablo','My Beautiful Dark Twisted Fantasy','Watch the Throne','','answer1',0,0),(1049,'A Saxophone is a brass instrument.','True','False','','','','answer2',0,0),(1050,'Oxford University is older than the Aztec Empire.','True','False','','','','answer1',0,0),(1051,'&quot;The first rule is: you don&#039;t talk about it&quot; is a reference to which movie?','The Island','Unthinkable','American Pie','Fight Club','','answer4',0,0),(1052,'The song &quot;Caramelldansen&quot; is commonly mistaken as a Japanese song, what language is the song actually sung in?','Hungarian','Chinese','Swedish','Finnish','','answer3',0,0),(1053,'In the 2012 film, &quot;The Lorax&quot;, who is the antagonist?','The Once-Ler','Aloysius O&#039;Hare','Grammy Norma','Ted Wiggins','','answer2',0,0),(1054,'In the show &quot;Steven Universe&quot;, who are the main two employees of The Big Donut?','Erik and Julie','Steven and James','Bob and May','Sadie and Lars','','answer4',0,0),(1055,'Which U.S. president took part in the Potsdam Conference, where the Allies reached a peace settlement with Germany?','Harry S. Truman','Franklin D. Roosevelt','Herbert Hoover','Dwight D. Eisenhower','','answer1',0,0),(1056,'In the movie &quot;Blade Runner&quot;, what is the term used for human-like androids ?','Skinjobs','Cylons','Synthetics','Replicants','','answer4',1,0),(1057,'Adolf Hitler was accepted into the Vienna Academy of Fine Arts.','True','False','','','','answer2',0,0),(1058,'The State of Queensland, Australia voted NO to a referendum for daylight savings in 1992.','True','False','','','','answer1',0,0),(1059,'Tokyo is the capital of Japan.','False','True','','','','answer2',0,0),(1060,'In &quot;JoJo&#039;s Bizarre Adventure&quot;, Father Enrico Pucchi uses a total of 3 stands in Part 6: Stone Ocean.','False','True','','','','answer2',0,0),(1061,'In &quot;JoJo&#039;s Bizarre Adventure&quot;, which of the following Stands does NOT have a time-based ability?','The World','20th Century Boy','Star Platinum','Made in Heaven','','answer2',0,0),(1062,'In the webcomic &quot;Ava&#039;s Demon&quot;, what sin is &quot;Nevy Nervine&quot; based off of?','Envy','Sloth','Wrath','Lust','','answer1',0,0),(1063,'What was the punishment for Sysiphus&#039;s craftiness?','To fell a tree that regenerated after every axe swing.','Cursed to roll a boulder up a hill for eternity.','Tied to a boulder for eternity, being pecked by birds.','Standing in a lake filled with water he could not drink.','','answer2',0,0),(1064,'During the Mongolian invasions of Japan, what were the Mongol boats mostly stopped by?','Typhoons','Tornados','Samurai','Economic depression','','answer1',0,0),(1065,'Who had a 1983 hit with the song &#039;Africa&#039;?','Foreigner','Toto','Journey','Steely Dan','','answer2',0,0),(1066,'Rolex is a company that specializes in what type of product?','Cars','Watches','Computers','Sports equipment','','answer2',0,0),(1067,'What is the largest non-continental island in the world?','Madagascar','New Guinea','Borneo','Greenland','','answer4',0,0),(1068,'Which one of these tanks was designed and operated by the United Kingdom?','T-34','Tog II','M4 Sherman','Tiger H1','','answer2',0,0),(1069,'According to a Beatles song, who kept her face in a jar by the door?','Eleanor Rigby','Molly Jones','Lady Madonna','Loretta Martin','','answer1',0,0),(1070,'What is the fourth book of the Old Testament?','Leviticus','Exodus','Genesis','Numbers','','answer4',0,0),(1071,'Which singer was featured in Swedish producer Avicii&#039;s song &quot;Wake Me Up&quot;?','Pharrell Williams','John Legend','Aloe Blacc','CeeLo Green','','answer3',0,0),(1072,'What is the shape of the toy invented by Hungarian professor Ernő Rubik?','Sphere','Cylinder','Pyramid','Cube','','answer4',0,0),(1073,'Excluding their instructor, how many members of Class VII are there in the game &quot;Legend of Heroes: Trails of Cold Steel&quot;?','10','9','6','3','','answer2',0,0),(1074,'The Ace Attorney trilogy was suppose to end with &quot;Phoenix Wright: Ace Attorney &amp;minus; Trials and Tribulations&quot; as its final game.','True','False','','','','answer1',0,0),(1075,'Which of these artists was NOT a member of the electronic music supergroup Swedish House Mafia, which split up in 2013?','Alesso','Sebastian Ingrosso','Axwell','Steve Angello','','answer1',0,0),(1076,'Madonna&#039;s song &quot;Hung Up&quot; includes a piece from which popular 70s song?','Gimmie! Gimmie! Gimme! (A Man After Midnight)','Staying Alive','The Chain','Night Fever','','answer1',0,0),(1077,'Peyton Manning retired after winning Super Bowl XLIX.','False','True','','','','answer1',0,0),(1078,'Which of the following is not another name for the eggplant?','Melongene','Guinea Squash','Potimarron','Brinjal','','answer3',0,0),(1079,'Which country will host the 2020 Summer Olympics?','Germany','Australia','Japan','China','','answer3',0,0),(1080,'What is isobutylphenylpropanoic acid more commonly known as?','Ibuprofen','Ketamine','Aspirin','Morphine','','answer1',0,0),(1081,'Which part of the body does glaucoma affect?','Blood','Stomach','Throat','Eyes','','answer4',0,0),(1082,'When did Canada leave the confederation to become their own nation?','July 1st, 1832','July 1st, 1902','July 1st, 1763','July 1st, 1867','','answer4',0,0),(1083,'In the game Dark Souls, what is the name of the region you&#039;re in for the majority of the game?','Drangleic','Lordran','Catarina','Oolacile','','answer2',0,0),(1084,'Bill Cipher in the show &quot;Gravity Falls&quot; is the good guy.','False','True','','','','answer1',0,0),(1085,'The average lifespan of a wildcat is only around 5-6 years.','False','True','','','','answer1',0,0),(1086,'What is a dead mall?','A mall after business hours','A mall with no stores','A mall with high vacancy rates or low consumer foot traffic','A mall that has been condemed','','answer3',0,0),(1087,'When was Google founded?','December 12, 1989','October 9, 1997','September 4, 1998','Feburary 7th, 2000','','answer3',1,1),(1088,'The asteroid belt is located between which two planets?','Jupiter and Saturn','Mars and Jupiter','Earth and Mars','Mercury and Venus','','answer2',0,0),(1089,'Pluto is a planet.','True','False','','','','answer2',0,0),(1090,'Which one of these is not a real game in the Dungeons &amp; Dragons series?','Extreme Dungeons &amp; Dragons','Dungeons &amp; Dragons 3.5th edition','Advanced Dungeons &amp; Dragons 2nd edition','Advanced Dungeons &amp; Dragons','','answer1',0,0),(1091,'During the Spanish Civil War (1936), Francisco Franco fought for which political faction?','Republican Spain','Nationalist Spain','Popular Front','Papal State','','answer2',0,0),(1092,'Which actor plays Obi-Wan Kenobi in Star Wars Episodes I-lll?','Hayden Christensen','Liam Neeson','Alec Guinness','Ewan McGregor','','answer4',0,0),(1093,'In what year was &quot;Antichamber&quot; released?','2014','2013','2012','2011','','answer2',0,0),(1094,'EDM label Monstercat signs tracks instead of artists.','True','False','','','','answer1',0,0),(1095,'What element on the periodic table has 92 electrons?','Sulfur','Iron','Hydrogen','Uranium','','answer4',0,0),(1096,'What is the Polish city known to Germans as Danzig?','Poznań','Warsaw','Gdańsk','Zakopane','','answer3',0,0),(1097,'What nucleotide pairs with guanine?','Thymine','Adenine','Cytosine','Uracil','','answer3',0,0),(1098,'Which of the following is not a Flintstones character?','The Great Gazoo','Rockhead Slate','Lord Rockingham IX','Barney Rubble','','answer3',0,0),(1099,'What is the oldest team in Major League Baseball?','Cincinnati Reds','Chicago Cubs','Atlanta Braves','St. Louis Cardinals','','answer3',0,0),(1100,'Bugatti was an Italian car manufacturer.','False','True','','','','answer1',0,0),(1101,'In Chess, the Queen has the combined movement of which two pieces?','Rook and King','King and Knight','Bishop and Rook','Knight and Bishop','','answer3',0,0),(1102,'In what year were screenshots added to Steam?','2008','2009','2011','2010','','answer3',0,0),(1103,'What was the unofficial name for Germany between 1919 and 1933?','Federal Republic of Germany','German Democratic Republic','Oesterreich','Weimar Republic','','answer4',0,0),(1104,'What was Mountain Dew&#039;s original slogan?','Yahoo! Mountain Dew... It&#039;ll tickle your innards!','Give Me A Dew','Get&#039; that barefoot feelin&#039; drinkin&#039; Mountain Dew','Do The Dew','','answer1',0,0),(1105,'Which of these Disney shows is classified as an anime?','Stitch!','Cory in the House','The Emperor&#039;s New School','Hannah Montana','','answer1',0,0),(1106,'In the TV Show &quot;Donkey Kong Country&quot;, which episode did the song &quot;Eddie, Let Me Go Back To My Home&quot; play in?','It&#039;s a Wonderful Life','Message In A Bottle Show','To The Moon Baboon','Ape-Nesia','','answer1',0,0),(1107,'The characters of &quot;Log Horizon&quot; are trapped in what game?','Yggdrasil','Elder Tale','Tower Unite','Sword Art Online','','answer2',0,0),(1108,'In &quot;Star Trek&quot;, what sauce is commonly used by Klingons on bregit lung?','Gazorpazorp pudding','Grapok sauce','Sweet chili sauce','Grapork sauce','','answer2',0,0),(1109,'Who is the main protagonist of &quot;Ace Combat Zero: The Belkan War&quot;?','Mobius 1','Blaze','Cipher','Pixy','','answer3',0,0),(1110,'In the  Rossini opera, what was the name of &#039;The Barber of Seville&#039;?','Angelo','Dave','Figaro','Fernando','','answer3',0,0),(1111,'Which &#039;Family Guy&#039; character got his own spin-off show in 2009?','Glenn Quagmire','The Greased-up Deaf Guy','Cleveland Brown','Joe Swanson','','answer3',0,0),(1112,'Which of these countries is NOT a part of the Asian continent?','Singapore','Suriname','Russia','Georgia','','answer2',0,0),(1113,'Which movie contains the quote, &quot;Say hello to my little friend!&quot;?','Heat','Reservoir Dogs','Goodfellas','Scarface','','answer4',0,0),(1114,'Who is Sonic&#039;s sidekick?','Tails','Shadow','Knuckles','Amy','','answer1',0,0),(1115,'Which of these is NOT a city in India?','Hyderabad','Ahmedabad','Islamabad','Ghaziabad','','answer3',0,0),(1116,'Which of these songs was released in 1996?','James Blunt - &quot;1973&quot;','David Bowie - &quot;1984&quot;','The Smashing Pumpkins - &quot;1979&quot;','Prince - &quot;1999&quot;','','answer3',0,0),(1117,'What does AD stand for in relation to Windows Operating Systems?','Active Directory','Automated Database','Alternative Drive','Active Department','','answer1',0,0),(1118,'What nationality was the surrealist painter Salvador Dali?','Italian','French','Portuguese','Spanish','','answer4',0,0),(1119,'What is the name of the capital of Turkey?','Izmir','Bursa','Istanbul','Ankara','','answer4',0,0),(1120,'Which singer was featured in Swedish producer Avicii&#039;s song &quot;Wake Me Up&quot;?','Aloe Blacc','John Legend','CeeLo Green','Pharrell Williams','','answer1',0,0),(1121,'Which of the following battles is often considered as marking the beginning of the fall of the Western Roman Empire?','Battle of Thessalonica','Battle of Adrianople','Battle of Constantinople','Battle of Pollentia','','answer2',0,0),(1122,'Which of these Bojack Horseman characters is a human?','Tom Jumbo-Grumbo','Lennie Turtletaub','Todd Chavez','Princess Carolyn','','answer3',0,0),(1123,'Furby was released in 1998.','False','True','','','','answer2',0,0),(1124,'The &quot;Tibia&quot; is found in which part of the body?','Head','Leg','Hand','Arm','','answer2',0,0),(1125,'Who won the 2015 Formula 1 World Championship?','Jenson Button','Lewis Hamilton','Sebastian Vettel','Nico Rosberg','','answer2',0,0),(1126,'Tony Hawk&#039;s Pro Skater was released in 1999.','True','False','','','','answer1',0,0),(1127,'Who is the chemical element Curium named after?','Marie &amp; Pierre Curie','Stephen Curry','The Curiosity Rover','Curious George','','answer1',0,0),(1128,'Brian May was the guitarist for which band?','The Doors','Pink Floyd','Queen','Rolling Stones','','answer3',0,0),(1129,'According to Greek Mythology, Zeus can control lightning.','True','False','','','','answer1',0,0),(1130,'What is Gabe Newell&#039;s favorite class in Team Fortress 2?','Spy','Medic','Pyro','Heavy','','answer1',0,0),(1131,'According to the United States&#039; CDC, one in how many Americans die annually due to smoking?','Ten','One hundred','Twenty','Five','','answer4',0,0),(1132,'Deadpool&#039;s identity is Slade Wilson.','True','False','','','','answer2',0,0),(1133,'The French word to travel is &quot;Travail&quot;','True','False','','','','answer2',0,0),(1134,'Which one is NOT the function of engine oil in car engines?','Cooling','Reduce corrosion','Lubrication','Combustion','','answer4',0,0),(1135,'Which of these is NOT a name of an album released by American rapper Pitbull?','Global Warming','Armando','Dale','Welcome to Miami','','answer4',0,0),(1136,'What country is Cory in the House set in?','Canada','England','Venezuala','The United States of America','','answer4',0,0),(1137,'Who is the frontman of Muse?','Dominic Howard','Jonny Greenwood','Thom Yorke','Matt Bellamy','','answer4',0,0),(1138,'The French word for &quot;glass&quot; is &quot;glace&quot;.','True','False','','','','answer2',0,0),(1139,'What was the first game ever released that ran on the Source engine?','Garry&#039;s Mod','Counter-Strike: Source','Half-Life 2','Team Fortress 2','','answer2',1,0),(1140,'The board game Monopoly takes its street names from which real American city?','Atlantic City, New Jersey','Las Vegas, Nevada','Duluth, Minnesota','Charleston, South Carolina','','answer1',0,0),(1141,'Which figure from Greek mythology traveled to the underworld to return his wife Eurydice to the land of the living?','Daedalus','Hercules','Perseus','Orpheus','','answer4',0,0),(1142,'Nidhogg is a mythical creature from what mythology?','Hindu','Greek','Egyptian','Norse','','answer4',0,0),(1143,'In Pok&amp;eacute;mon Sun and Moon, a male Salandit can evolve to a Salazzle.','False','True','','','','answer1',0,0),(1144,'&quot;All the Boys&quot; by Panic! At the Disco was released as a bonus track on what album?','Vices &amp; Virtues','Too Weird To Live, Too Rare To Die!','A Fever You Can&#039;t Sweat Out','Death Of A Bachelor','','answer2',0,0),(1145,'What is the capital of British Columbia, Canada?','Hope','Kelowna','Victoria','Vancouver','','answer3',0,0),(1146,'What is the last song on the first Panic! At the Disco album?','Build God, Then We&#039;ll Talk','I Write Sins Not Tragedies','Nails for Breakfast, Tacks for Snacks','Lying Is The Most Fun A Girl Can Have Without Taking Her Clothes Off','','answer1',0,0),(1147,'What year was Apple Inc. founded?','1976','1980','1978','1974','','answer1',0,0),(1148,'Which of the following is not a real Pok&amp;eacute;mon?','Mandibuzz','Luminid','Dragalge','Araquanid','','answer2',0,0),(1149,'In Super Smash Bros. for Nintendo 3DS and Nintendo Wii U, who was the sixth fighter to be added to the game post-launch?','Corrin','Bayonnetta','Cloud','Ryu','','answer1',0,0),(1150,'What are the cylinder-like parts that pump up and down within the engine?','ABS','Pistons','Radiators','Leaf Springs','','answer2',0,0),(1151,'Which one of the following is not made by Ford?','Fusion','F-150','Camry','Model A','','answer3',0,0),(1152,'Which team won the &quot;Tom Clancy&#039;s Rainbow Six Siege&quot; Invitational Event February 2017 in the PC Category?','GIFU','eRa Eternity','Santos Dexterity','Continuum','','answer4',0,0),(1153,'Which of the following card games revolves around numbers and basic math?','Uno','Munchkin','Twister','Go Fish','','answer1',0,0),(1154,'Which product did Nokia, the telecommunications company, originally sell?','Phones','Paper','Processors','Computers','','answer2',0,0),(1155,'What is the make and model of the tour vehicles in &quot;Jurassic Park&quot;?','1992 Ford Explorer XLT','Mercedes M-Class','1992 Jeep Wrangler YJ Sahar','1992 Toyota Land Cruiser','','answer4',0,0),(1156,'With which team did Michael Schumacher make his Formula One debut at the 1991 Belgian Grand Prix?','Benetton','Jordan','Ferrari','Mercedes','','answer2',0,0),(1157,'In South Park, what is Stan&#039;s surname?','Tweak','Marsh','Stotch','Broflovski','','answer2',0,0),(1158,'What does a milliner make and sell?','Shirts','Belts','Hats','Shoes','','answer3',0,0),(1159,'When was the Declaration of Independence approved by the Second Continental Congress?','July 2, 1776','July 4, 1776','June 4, 1776','May 4, 1776','','answer1',0,0),(1160,'Who had a 1969 top 5 hit with the song,  &#039;A Boy Named Sue&#039;?','Kris Kristofferson','Bob Dylan','Johnny Cash','Willie Nelson','','answer3',0,0),(1161,'What was the last Aphex Twin album released before his decade-long hiatus?','Collected Ambient Works 85-92','Drukqs','Windowlicker','Syro','','answer2',0,0),(1162,'Which of the following is the world&#039;s best-selling book?','The Little Prince','The Lord of the Rings','Harry Potter and the Philosopher&#039;s Stone','The Da Vinci Code','','answer2',0,0),(1163,'How many legs is it biologically impossible for a centipede to have?','100','50','26','74','','answer1',0,0),(1164,'What is the airspeed velocity of an unladen swallow?','200 MPH','20 MPH','24 MPH','15 MPH','','answer3',0,0),(1165,'In which country&#039;s version of Half-Life are the HECU Marines replaced with robots?','Japan','Germany','China','France','','answer2',0,0),(1166,'Who is the creator of the comic series &quot;The Walking Dead&quot;?','Malcolm Wheeler-Nicholson','Stan Lee','Robert Crumb','Robert Kirkman','','answer4',0,0),(1167,'How many pieces are there on the board at the start of a game of chess?','36','16','32','20','','answer3',0,0),(1168,'Au on the Periodic Table refers to which element?','Oxygen','Gold','Nickel','Silver','','answer2',0,0),(1169,'The Japanese Shinkansen beat the French TGV&#039;s speed record for fastest electric rail train.','False','True','','','','answer1',0,0),(1170,'In 2012 the German-speaking microstate &quot;Liechtenstein&quot; in Central Europe had a population of how many inhabitants?','90,000','2,400','36,600','323,400','','answer3',0,0),(1171,'Faust is a playable character in &quot;Guilty Gear Xrd Revelator&quot;.','False','True','','','','answer2',0,0),(1172,'When was &quot;The Gadget&quot;, the first nuclear device to be detonated, tested?','June 22, 1945','July 16, 1945','August 6, 1945','April 5, 1945','','answer2',0,0),(1173,'The internet domain .fm is the country-code top-level domain for which Pacific Ocean island nation?','Fiji','Marshall Islands','Tuvalu','Micronesia','','answer4',0,0),(1174,'MacOS is based on Linux.','True','False','','','','answer2',0,0),(1175,'In what Disney movie can you spot the character &quot;Pac-Man&quot; in if you look closely enough in some scenes?','Big Hero 6','Tron','Monsters, Inc.','Fantasia','','answer2',1,0),(1176,'Who voice acted the character Hiccup in the movie &quot;How to Train Your Dragon&quot;?','Jack Brauchel','John Powell','Gerard Butler','Jay Baruchel','','answer4',0,0),(1177,'In JoJo&#039;s Bizarre Adventure, winch character is able to accelerate time?','Kujo Jotaro','Jotaro Kujo','Enrico Pucci','Jolyne Cujoh','','answer3',1,0),(1178,'Which of these names was an actual codename for a cancelled Microsoft project?','Saturn','Enceladus','Neptune','Pollux','','answer3',0,0),(1179,'Which company made the Japanese RPG &quot;Dragon Quest&quot;?','Capcom','Blizzard','Square Enix','Konami','','answer3',0,0),(1180,'Who is the leader of Team Valor in Pok&amp;eacute;mon Go?','Candela','Willow','Spark','Blanche','','answer1',0,0),(1181,'What was the cause of Marilyn Monroes suicide?','Knife Attack','Gunshot','Drug Overdose','House Fire','','answer3',0,0),(1182,'What stage of development do the majority of eukaryotic cells remain in for most of their life?','Interphase','Stasis','Telophase','Prophase','','answer1',0,0),(1183,'In Halo 2, how many rounds does the M6C hold in a single magazine?','18','36','12','6','','answer3',0,0),(1184,'Which of these is not the name of a city in the Grand Theft Auto series?','San Andreas','Vice City','Las Venturas','San Fierro','','answer1',0,0),(1185,'Which Overwatch character says the line &quot;Heroes never die!&quot;?','Ana','Sonic','Reaper','Mercy','','answer4',0,0),(1186,'Which of these bands is the oldest?','Pink Floyd','AC/DC','Red Hot Chili Peppers','Metallica','','answer1',0,0),(1187,'Darth Vader&#039;s famous reveal to Luke is iconic. But which of these is the right one?','&quot;No. I am your father.&quot;','&quot;The truth is that I am your father.&quot;','&quot;You&#039;re wrong. I am your father.&quot;','&quot;Luke, I am your father.&quot;','','answer1',0,0),(1188,'What is the oldest team in the NFL?','Arizona Cardinals','New York Giants','Green Bay Packers','Chicago Bears','','answer1',0,0),(1189,'In the movie Gremlins, after what time of day should you not feed Mogwai?','Afternoon','Evening','Midnight','Morning','','answer3',0,0),(1190,'Which song on Daft Punk&#039;s &quot;Random Access Memories&quot; features Pharrell Williams?','Doin&#039; It Right','Instant Crush','The Game of Love','Get Lucky','','answer4',0,0),(1191,'According to Overwatch&#039;s lore, who was once a member of the Deadlock Gang?','Soldier 76','Roadhog','McCree','Junkrat','','answer3',0,0),(1192,'When was the game &quot;Roblox&quot; released?','2002','2006','2007','2003','','answer2',0,0),(1193,'&quot;The first rule is: you don&#039;t talk about it&quot; is a reference to which movie?','American Pie','The Island','Fight Club','Unthinkable','','answer3',0,0),(1194,'Which restaurant&#039;s mascot is a clown?','McDonald&#039;s','Sonic','Burger King','Whataburger','','answer1',0,0),(1195,'Who plays the character of Po in the Kung Fu Panda movies?','Mirana Jonnes','Jim Petersson','Jack Black','McConahey Ramses','','answer3',0,0),(1196,'In which movie does Robin Williams&#039; character have to disguise themselves into a woman?','Awakenings','Mrs. Doubtfire','Old Dogs','Jumanji','','answer2',0,0),(1197,'What was the total length of the Titanic?','1042 ft | 317.6 m','825 ft | 251.5 m','882 ft | 268.8 m','759 ft | 231.3 m','','answer3',0,0),(1198,'What nickname was given to Air Canada Flight 143 after it ran out of fuel and glided to safety in 1983?','Gimli Superb','Gimli Microlight','Gimli Chaser','Gimli Glider','','answer4',0,0),(1199,'Medaka Kurokami from &quot;Medaka Box&quot; has what abnormality?','Sandbox','Fairness','The End','Perfection','','answer3',0,0),(1200,'AMC&#039;s &#039;The Walking Dead&#039;, Rick, Carl, Daryl, Morgan, Carol and Maggie were introduced to us in Season 1.','False','True','','','','answer1',0,0),(1201,'What was the name of the Ethiopian Wolf before they knew it was related to wolves?','Simien Jackel','Amharic Fox','Ethiopian Coyote','Canis Simiensis','','answer1',0,0),(1202,'The retail disc of Tony Hawk&#039;s Pro Skater 5 only comes with the tutorial.','True','False','','','','answer1',0,0),(1203,'At which bridge does the annual Oxford and Cambridge boat race start?','Putney','Vauxhall','Hammersmith','Battersea','','answer1',0,0),(1204,'Who was the British Prime Minister at the outbreak of the Second World War?','Stanley Baldwin','Winston Churchill','Clement Attlee','Neville Chamberlain','','answer4',0,0),(1205,'What is the capital of Peru?','Buenos Aires','Santiago','Lima','Montevideo','','answer3',0,0),(1206,'The Ceratosaurus, a dinosaur known for having a horn on the top of its nose, is also known to be a decendent of the Tyrannosaurus Rex.','False','True','','','','answer1',0,0),(1207,'DragonForce&#039;s &#039;Through the Fire and Flames&#039; is widely considered to be the hardest song in the Guitar Hero series.','False','True','','','','answer2',0,0),(1208,'The music video to The Buggle&#039;s &quot;Video Killed the Radio Star&quot; was the first music video to broadcast on MTV.','False','True','','','','answer2',0,0),(1209,'What is the Roman numeral for 500?','X','L','D','C','','answer3',0,0),(1210,'In &quot;Super Mario 64&quot;, collecting 100 coins on a level will give you a 1-UP.','False','True','','','','answer1',0,0),(1211,'In the anime &quot;Mr. Osomatsu&quot;, how many brothers does Osomatsu-san have?','4','6','5','7','','answer3',0,0),(1212,'The Battle of the Somme in World War I took place in which country?','Italy','Germany','France','Austria','','answer3',0,0),(1213,'In the &quot;Harry Potter&quot; series, what is Headmaster Dumbledore&#039;s full name?','Albus Valencium Horatio Kul Dumbledore','Albus James Lunae Otto Dumbledore','Albus Percival Wulfric Brian Dumbledore','Albus Valum Jetta Mobius Dumbledore','','answer3',0,0),(1214,'Which Native American tribe/nation requires at least one half blood quantum (equivalent to one parent) to be eligible for membership?','Standing Rock Sioux Tribe','Pawnee Nation of Oklahoma','Yomba Shoshone Tribe','Kiowa Tribe of Oklahoma','','answer3',0,0),(1215,'What African country has Portuguese as its official language?','Mozambique','Botswana','Gabon','Togo','','answer1',0,0),(1216,'The &#039;Squaring the Circle&#039; problem is solvable.','True','False','','','','answer2',0,0),(1217,'What is the name of the assassin in the first &quot;Hellboy&quot; movie?','Ilsa Haupstein','Grigori Efimovich Rasputin','Karl Ruprecht Kroenen','Klaus Werner von Krupt','','answer3',0,0),(1218,'What is the name of the first &quot;Star Wars&quot; film by release order?','The Phantom Menace','The Force Awakens','Revenge of the Sith','A New Hope','','answer4',0,0),(1219,'The first &quot;Metal Gear&quot; game was released for the PlayStation 1.','False','True','','','','answer1',0,0),(1220,'In &quot;Super Mario Bros.&quot;, the clouds and bushes have the same artwork and are just different colors.','False','True','','','','answer2',0,0),(1221,'On which day did the World Wide Web go online?','December 17, 1996','November 24, 1995','November 12, 1990','December 20, 1990','','answer4',0,0),(1222,'How long are all the cutscenes from Metal Gear Solid 4 (PS3, 2008) combined?','8 hours','5 hours','12 hours','4 hours','','answer1',0,0),(1223,'Which of these is NOT an island that is part of the Philippines?','Luzon','Palawan','Java','Mindanao','','answer3',0,0),(1224,'Who voices for Ruby in the animated series RWBY?','Tara Strong','Lindsay Jones','Hayden Panettiere','Jessica Nigri','','answer2',0,0),(1225,'What are rhino&#039;s horn made of?','Bone','Ivory','Skin','Keratin','','answer4',0,0),(1226,'Which of these Starbound races has a Wild West culture?','Hylotl','Avian','Novakid','Human','','answer3',0,0),(1227,'&quot;Ananas&quot; is mostly used as the word for Pineapple in other languages.','False','True','','','','answer2',0,0),(1228,'Which animal was part of an Russian domestication experiment in 1959?','Bears','Pigeons','Foxes','Alligators','','answer3',0,0),(1229,'The main antagonist of the second part of JoJo&#039;s Bizarre Adventure is which of the following?','Santana','Wired Beck','Kars','Erina Joestar','','answer3',0,0),(1230,'In Dota 2, Wraith King was previously known as...','Skeleton King','Skull King','Reaper King','Hell King','','answer1',0,0),(1231,'What is the default alias that Princess Garnet goes by in Final Fantasy IX?','Dagger','Garnet','Quina','Dirk','','answer1',0,0),(1232,'The decimal number 31 in hexadecimal would be what?','1B','3D','2E','1F','','answer4',0,0),(1233,'In the game &quot;Subnautica&quot;, which feature was removed due to performance issues in 2016?','Crafting','Terraforming','Multiplayer','Building','','answer2',0,0),(1234,'What engine is in the Lexus SC400?','7M-GTE','2JZ-GTE','5M-GE','1UZ-FE','','answer4',0,0),(1235,'Internet Protocol Version 4 (IPv4) is what bit addressing?','128-bit','32-bit','16-bit','64-bit','','answer2',0,0),(1236,'In Pre-Super Genesis universe of &quot;Sonic the Hedgehog&quot; comic, what was the name of  Sally Acorn&#039;s brother?','Frederick Acorn','Alexis Acorn','Maximillian Acorn','Elias Acorn','','answer4',0,0),(1237,'What was Genghis Khan&#039;s real name?','Tem&amp;uuml;jin','Tem&amp;uuml;r','&amp;Ouml;gedei','M&amp;ouml;ngke','','answer1',0,0),(1238,'The IBM PC used an Intel 8008 microprocessor clocked at 4.77 MHz and 8 kilobytes of memory.','False','True','','','','answer1',0,0),(1239,'Joko Widodo has appeared in the cover of a TIME magazine.','False','True','','','','answer2',0,0),(1240,'In the first Left 4 Dead, you can play as either of these four characters.','Coach, Ellis, Nick, and Rochelle','Francis, Bill, Zoey, and Louis','Bender, Andrew, Allison, and Brian','Harry, Ron, Hermione and Dumbledore','','answer2',0,0),(1241,'71% of the Earth&#039;s surface is made up of','Forests','Water','Deserts','Continents','','answer2',0,0),(1242,'What is the name of rocky region that spans most of eastern Canada?','Rocky Mountains','Appalachian Mountains','Canadian Shield','Himalayas','','answer3',0,0),(1243,'What is Canada&#039;s largest island?','Newfoundland','Vancouver Island','Prince Edward Island','Baffin Island','','answer4',0,0),(1244,'Which of the following is not a real Pok&amp;eacute;mon?','Araquanid','Dragalge','Luminid','Mandibuzz','','answer3',0,0),(1245,'In association football, or soccer, a corner kick is when the game restarts after someone scores a goal.','True','False','','','','answer2',0,0),(1246,'&quot;Gimmick!&quot; is a Japanese Famicom game that uses a sound chip expansion in the cartridge. What is it called?','MMC5','FME-7','VRC7','VRC6','','answer2',0,0),(1247,'&quot;The Singing Cowboy&quot; Gene Autry is credited with the first recording for all but which classic Christmas jingle?','White Christmas','Rudolph the Red-Nosed Reindeer','Frosty the Snowman','Here Comes Santa Claus','','answer1',0,0),(1248,'In the 1995 film &quot;Balto&quot;, who are Steele&#039;s accomplices?','Nuk, Yak, and Sumac','Kaltag, Nikki, and Star','Jenna, Sylvie, and Dixie','Dusty, Kirby, and Ralph','','answer2',0,0),(1249,'In which year was Constantinople conquered by the Turks?','1435','1440','1453','1454','','answer3',0,0),(1250,'Which company developed the video game &quot;Borderlands&quot;?','Rockstar Games','Activision','Gearbox Software','2K Games','','answer3',0,0),(1251,'What French artist/band is known for playing on the midi instrument &quot;Launchpad&quot;?','Madeon','Disclosure','David Guetta','Daft Punk','','answer1',0,0),(1252,'What town was &quot;Springfield&quot; from &quot;The Simpsons&quot; originally named after?','Springfield, Oregon','Springfield, Illinois','Springfield, Massachusetts','Springfield, Missouri','','answer1',0,0),(1253,'The idea of Socialism was articulated and advanced by whom?','Vladimir Putin','Karl Marx','Vladimir Lenin','Joseph Stalin','','answer2',0,0),(1254,'What is Doug Walker&#039;s YouTube name?','The Angry Video Game Nerd','AngryJoeShow','The Nostalgia Critic','The Cinema Snob','','answer3',0,0),(1255,'What is the name of the robot in the 1951 science fiction film classic &#039;The Day the Earth Stood Still&#039;?','Box','Colossus','Robby','Gort','','answer4',0,0),(1256,'Which of his six wives was Henry VIII married to the longest?','Jane Seymour','Catherine of Aragon','Catherine Parr','Anne Boleyn','','answer2',0,0),(1257,'What is the name of the main healing item in Dark Souls?','Estus Flask','Orange Juice','Ashen Flask','Health Potion','','answer1',0,0),(1258,'&quot;Undertale&quot; is an RPG created by Toby Fox and released in 2015.','False','True','','','','answer2',0,0),(1259,'The words &quot;bungalow&quot; and &quot;shampoo&quot; originate from the languages of which country?','Papua New Guinea','China','Ethiopia','India','','answer4',0,0),(1260,'Which of these of NOT an official game in Nintendo&#039;s Super Smash Bros. series?','Super Smash Bros. for Nintendo 3DS and Wii U','Super Smash Bros. Crusade','Super Smash Bros. Brawl','Super Smash Bros. Melee','','answer2',0,0),(1261,'How many planets make up our Solar System?','9','7','6','8','','answer4',0,0),(1262,'Who is the villain company in &quot;Stardew Valley&quot;?','Ronin','Robotnik Industry&#039;s','Empire','Joja Co','','answer4',0,0),(1263,'The derisive acronym &quot;PIIGS&quot; refers to which of the following European countries and their economic statuses?','Portugal, Ireland, Italy, Greece, Spain','Poland, Iceland, Italy, Greenland, Spain','Portugal, Iceland, Ireland, Greece, Serbia','Poland, Iceland, Italy, Greece, Serbia','','answer1',0,0),(1264,'Enzo Ferrari was originally an auto racer for what manufacturer before founding his own car company?','Bentley','Auto Union','Alfa Romeo','Mercedes Benz','','answer3',0,0),(1265,'111,111,111 x 111,111,111 = 12,345,678,987,654,321','False','True','','','','answer2',0,0),(1266,'Who composed the soundtrack for the game VVVVVV?','Joel Zimmerman','Magnus P&amp;aring;lsson','Terry Cavanagh','Danny Baranowsky','','answer2',0,0),(1267,'The World Health Organization headquarters is located in which European country?','United Kingdom','Switzerland','Belgium','France','','answer2',0,0),(1268,'What was the first interactive movie video game?','Cube Quest','M.A.C.H. 3','Dragon&#039;s Lair','Astron Belt','','answer4',0,0),(1269,'Who wrote the award winning musical &quot;In The Heights&quot;?','Lin-Manuel Miranda','Steven Sondheim','John Phillips Sousa','Francis Scott Key','','answer1',0,0),(1270,'Where did the dog breed &quot;Chihuahua&quot; originate?','Spain','Russia','France','Mexico','','answer4',0,0),(1271,'What was the nickname given to the Hughes H-4 Hercules, a heavy transport flying boat which achieved flight in 1947?','Trojan Horse','Fat Man','Noah&#039;s Ark','Spruce Goose','','answer4',0,0),(1272,'In which year did the First World War begin?','1930','1939','1917','1914','','answer4',0,0),(1273,'In the game Dark Souls, what is the name of the region you&#039;re in for the majority of the game?','Catarina','Oolacile','Drangleic','Lordran','','answer4',0,0),(1274,'Which car company is the only Japanese company which won the 24 Hours of Le Mans?','Toyota','Mazda','Subaru','Nissan','','answer2',0,0),(1275,'In Team Fortress 2, being disguised as a scout or medic results in a speed boost.','True','False','','','','answer2',0,0),(1276,'Guy&#039;s Grocery Games is hosted by which presenter?','Guy Fieri','Guy Martin','Ainsley Harriott','Guy Ritchie','','answer1',0,0),(1277,'The Touhou Project series of games is often associated with which genre?','Shoot &#039;em up','Casual','Strategy','FPS','','answer1',0,0),(1278,'What is the Gray Wolf&#039;s scientific name?','Canis Lupus Lycaon','Canis Aureus','Canis Lupus','Canis Latrans','','answer3',0,0),(1279,'Which of these does Charlie NOT read in The Perks of Being a Wallflower?','Peter Pan','Hamlet','The Great Gatsby','The Grapes of Wrath','','answer4',0,0),(1280,'Which was the first M-rated video game developed by Squaresoft/Square Enix?','Front Mission','Vagrant Story','Parasite Eve','Final Fantasy VIII','','answer3',0,0),(1281,'In the movie &quot;Scream&quot; who is Ghost Face?','Archie Prescott and Philip Marv','Billy Loomis and Stu Macher','Dewey Riley','Sidney Prescott','','answer2',0,0),(1282,'What is the real name of the famous spanish humorist, El Risitas?','Gabriel Garcia Marquez','Ernesto Guevara','Jesus Quintero','Juan Joya Borga','','answer4',0,0),(1283,'Which animated film did Steven Lisberger direct in 1980 before going on to direct Tron?','The Great Mouse Detecive','The Black Cauldron','Animalympics','The Fox and the Hound','','answer3',0,0),(1284,'The land mass of modern day Turkey is called what?','Ottoma','Ismuth of Anatolia','Anatolia','Ismuth of Ottoma','','answer3',0,0),(1285,'In the Pok&amp;eacute;mon series, what is Palkia&#039;s hidden ability?','Hydration','Telepathy','Water Bubble','Pressure','','answer2',0,0),(1286,'Who is the lead singer of The Lumineers?','Jay Van Dyke','Wesley Schultz','Neyla Pekarek','Jeremiah Fraites','','answer2',0,0),(1287,'What was the name of Marilyn Monroe&#039;s first husband?','Kirk Douglas','Joe Dimaggio','Arthur Miller','James Dougherty','','answer4',0,0),(1288,'Who played the Cenobite called &quot;Pinhead&quot; in the original Hellraiser films?','Doug Benson','Doug Bradley','Doug Jones','Doug Savant','','answer2',0,0),(1289,'What is radiation measured in?','Decibel','Kelvin','Watt','Gray','','answer4',0,0),(1290,'In the 1992 film &quot;Army of Darkness&quot;, what name does Ash give to his double-barreled shotgun?','Blastbranch','Bloomstick','2-Pump Chump','Boomstick','','answer4',0,0),(1291,'In &quot;Star Trek&quot;, what sauce is commonly used by Klingons on bregit lung?','Gazorpazorp pudding','Sweet chili sauce','Grapok sauce','Grapork sauce','','answer3',0,0),(1292,'What was Bank of America originally established as?','Bank of Long Island','Bank of Italy','Bank of Charlotte','Bank of Pennsylvania','','answer2',0,0),(1293,'In the &quot;Devil May Cry&quot; franchise, which game is chronologically first?','Devil May Cry 4','Devil May Cry 3: Dante&#039;s Awakening','Devil May Cry','Devil May Cry 2','','answer2',0,0),(1294,'What is the name of &quot;Team Fortress 2&quot; update, in which it became Free-to-play?','Mann-Conomy Update','&amp;Uuml;ber Update','Pyromania Update','Engineer Update','','answer2',0,0),(1295,'Daniel Radcliffe became a global star in the film industry due to his performance in which film franchise?','Harry Potter','Spy Kids','Ted','Pirates of the Caribbean','','answer1',0,0),(1296,'In the movie &amp;ldquo;The Iron Giant,&amp;rdquo; this character is the protagonist.','Hogarth Hughes','Dean McCoppin','Annie Hughes','Kent Mansley','','answer1',0,0),(1297,'X-3=12 (Solve for x)','16','15','12','13','','answer2',0,0),(1298,'Who was the mascot of SEGA mascot before &quot;Sonic the Hedgehog&quot;?','Alex Kidd','Ristar','Opa Opa','NiGHTS','','answer1',0,0),(1299,'Leonardo DiCaprio won an Oscar for Best Actor in 2004&#039;s &quot;The Aviator&quot;.','True','False','','','','answer2',0,0),(1300,'Along with Gabe Newell, who co-founded Valve?','Robin Walker','Stephen Bahl','Mike Harrington','Marc Laidlaw','','answer3',0,0),(1301,'Who is the lead singer of the band Coldplay?','Chris Wallace','Chris Connelly','Chris Isaak','Chris Martin','','answer4',0,0),(1302,'On a standard Monopoly board, which square is diagonally opposite &#039;Go&#039;?','Go to Jail','The Electric Company','Jail','Free Parking','','answer4',0,0),(1303,'Which of these features was added in the 1994 game &quot;Heretic&quot; that the original &quot;DOOM&quot; could not add due to limitations?','Highly-detailed textures','Increased room sizes','Looking up and down','Unlimited weapons','','answer3',0,0),(1304,'Norwegian producer Kygo released a remix of the song &quot;Sexual Healing&quot; by Marvin Gaye.','True','False','','','','answer1',0,0),(1305,'Kangaroos keep food in their pouches next to their children.','False','True','','','','answer1',0,0),(1306,'Which of the following car models has been badge-engineered (rebadged) the most?','Chevy Camaro','Isuzu Trooper','Holden Monaro','Suzuki Swift','','answer2',0,0),(1307,'&quot;Rollercoaster Tycoon&quot; was programmed mostly entirely in...','C','ALGOL','C++','x86 Assembly','','answer4',0,0),(1308,'What year did radio icon Howard Stern start a job at radio station WNBC?','1984','1995','1982','1985','','answer3',0,0),(1309,'What is the name of the main character in the video game VA-11 HALL-A: Cyberpunk Bartender Action?','Jill','Dana','Alma','Anna','','answer1',0,0),(1310,'When was the SS or Schutzstaffel established?','March 8th, 1935','February 21st, 1926','April 4th, 1925','September 1st, 1941','','answer3',0,0),(1311,'How many people are in the U.S. House of Representatives?','435','260','50','415','','answer1',0,0),(1312,'Shaquille O&#039;Neal appeared in the 1997 film &quot;Space Jam&quot;.','False','True','','','','answer1',0,0),(1313,'Meryl Silverburgh, a video game character from the Metal Gear series, was originally a character in which game?','Gradius','Policenauts','Castlevania: Symphony of the Night','Contra','','answer2',0,0),(1314,'Deadpool&#039;s identity is Slade Wilson.','False','True','','','','answer1',0,0),(1315,'No Game No Life first aired in 2014.','True','False','','','','answer1',0,0),(1316,'TF2: What code does Soldier put into the door keypad in &quot;Meet the Spy&quot;?','1432','1111','1337','No code','','answer2',0,0),(1317,'What is the Capital of the United States?','Los Angelas, CA','New York City, NY','Houston, TX','Washington, D.C.','','answer4',0,0),(1318,'What name does the little headcrab in &quot;Half Life 2&quot; have?','Lamarr','Jumperr','Drett','Jerry','','answer1',0,0),(1319,'What company develops the Rock Band series of rhythm games?','Harmonix','Electronic Arts','Activision','Konami','','answer1',0,0),(1320,'What is the official language of Bhutan?','Ladakhi','Karen','Dzongkha','Groma','','answer3',0,0),(1321,'This Marvel superhero is often called &quot;The man without fear&quot;.','Hulk','Thor','Daredevil','Wolverine','','answer3',0,0),(1322,'What is the title of the first Sherlock Holmes book by Arthur Conan Doyle?','The Sign of the Four','A Case of Identity','The Doings of Raffles Haw','A Study in Scarlet','','answer4',0,0),(1323,'In the video game &quot;League of Legends&quot; which character is known as &quot;The Sinister Blade&quot;?','Akali','Katarina','Zed','Shaco','','answer2',0,0),(1324,'Who voices the infamous Citadel Station A.I known as S.H.O.D.A.N, in the System Shock games?','Jenn Taylor','Terri Brosius','Lori Alan','Jennifer Hale','','answer2',0,0),(1325,'Which team won 2014 FIFA World Cup in Brazil?','Netherlands','Germany','Brazil','Argentina','','answer2',0,0),(1326,'What city is known as the Rose Capital of the World?','Miami, Florida','Anaheim, California','Tyler, Texas','San Diego, California','','answer3',0,0),(1327,'In the movie The Revenant, DiCaprio&#039;s character hunts down the killer of his son.','False','True','','','','answer2',0,0),(1328,'In which year did the first Monster Hunter game get released?','2005','2002','2006','2004','','answer4',0,0),(1329,'How many women joined the United States Armed Services during World War II?','350,000','100,000','225,000','500,000','','answer1',0,0),(1330,'&quot;Doctor Who&quot; star David Tennant performed in a rendition of which Shakespearean play?','The Tempest','Othello','Hamlet','The Taming of the Shrew','','answer3',0,0),(1331,'Which team won the &quot;Tom Clancy&#039;s Rainbow Six Siege&quot; Invitational Event February 2017 in the PC Category?','Continuum','GIFU','Santos Dexterity','eRa Eternity','','answer1',0,0),(1332,'Which of these is not a key value of Agile software development?','Customer collaboration','Responding to change','Individuals and interactions','Comprehensive documentation','','answer4',0,0),(1333,'What was the soft drink Pepsi originally introduced as?','Pepsin Pop','Pepsin Syrup','Carolina Cola','Brad&#039;s Drink','','answer4',0,0),(1334,'Danganronpa Another Episode: Ultra Despair Girls is set after which Danganronpa game?','Danganronpa 3: The End of Hope&#039;s Peak High School','Danganronpa V3: Killing Harmony','Danganronpa: Trigger Happy Havoc','Danganronpa 2: Goodbye Despair','','answer3',0,0),(1335,'Which variant of the MP5 is depicted in Counter-Strike 1.6?','MP5K','MP5N','MP5RAS','MP5SD','','answer2',0,0),(1336,'In &quot;Final Fantasy VI&quot;, what is the name of (summoned) Gilgamesh&#039;s weakest attack?','Excalibore','Excalisore','Excalisnore','Excalipoor','','answer4',0,0),(1337,'In the &quot;Dragon Ball&quot; franchise, what is the name of Goku&#039;s brother?','Vegeta','Gohan','Raditz','Bardock','','answer3',0,0),(1338,'In &quot;JoJo&#039;s Bizarre Adventure&quot;, Father Enrico Pucchi uses a total of 3 stands in Part 6: Stone Ocean.','False','True','','','','answer2',0,0),(1339,'What was the first company to use the term &quot;Golden Master&quot;?','Google','IBM','Apple','Microsoft','','answer3',0,0),(1340,'When did the website &quot;Facebook&quot; launch?','2004','2003','2006','2005','','answer1',0,0),(1341,'What is considered the rarist form of color blindness?','Red','Blue','Green','Purple','','answer2',0,0),(1342,'Which of the following liquids is least viscous? Assume temperature is 25&amp;deg;C.','Mercury','Acetone','Water','Benzene','','answer2',0,0),(1343,'In the Nintendo DS game &#039;Ghost Trick: Phantom Detective&#039;, what is the name of the hitman seen at the start of the game?','Cabanela','Nearsighted Jeego','Missile','One Step Ahead Tengo','','answer2',0,0),(1344,'What is Solid Snake&#039;s real name?','Huey','John','Solid Snake','David','','answer4',0,0),(1345,'Which of these countries is &quot;doubly landlocked&quot; (surrounded entirely by one or more landlocked countries)?','Ethiopia','Switzerland','Bolivia','Uzbekistan','','answer4',0,0),(1346,'Just Cause 2 was mainly set in what fictional Southeast Asian island country?','Palau','Panau','Macau','Davao','','answer2',0,0),(1347,'Whistler was the codename of this Microsoft Operating System.','Windows 2000','Windows XP','Windows 95','Windows 7','','answer2',0,0),(1348,'Who was the only president to not be in office in Washington D.C?','Abraham Lincoln','George Washington','Thomas Jefferson','Richard Nixon','','answer2',0,0),(1349,'What are the first 6 digits of the number &quot;Pi&quot;?','3.14159','3.25812','3.12423','3.14169','','answer1',0,0),(1350,'The Red Hot Chili Pepper song &quot;Give It Away&quot; is from what album?','By the Way','Blood Sugar Sex Magik','One Hot Minute','Stadium Arcadium','','answer2',0,0),(1351,'Which video game earned music composer Mike Morasky the most awards for his work?','Team Fortress 2','Left 4 Dead 2','Counter-Strike: Global Offensive','Portal 2','','answer4',0,0),(1352,'Which artist&amp;rsquo;s studio was known as &#039;The Factory&#039;?','Roy Lichtenstein','Andy Warhol','David Hockney','Peter Blake','','answer2',0,0),(1353,'A universal set, or a set that contains all sets, exists.','False','True','','','','answer1',0,0),(1354,'What was the name of the Secret Organization in the Hotline Miami series?','50 Blessings','50 Saints','American Blessings','USSR&#039;s Blessings','','answer1',0,0),(1355,'In the 2002 video game &quot;Kingdom Hearts&quot;, how many Keyblades are usable?','16','13','15','18','','answer4',0,0),(1356,'A bear does NOT defecate during hibernation.','True','False','','','','answer1',0,0),(1357,'Who is the main character in the VHS tape included in the board game Nightmare?','The Gatekeeper','The Nightmare','The Kryptkeeper','The Monster','','answer1',0,0),(1358,'The anime &quot;Lucky Star&quot; follows the story of one girl who is unaware she is God.','True','False','','','','answer2',0,0),(1359,'Which modern day country is the region that was known as Phrygia in ancient times?','Egypt','Turkey','Greece','Syria','','answer2',0,0),(1360,'What&#039;s the Team Fortress 2 Scout&#039;s city of origin?','Sydney','Detroit','New York','Boston','','answer4',0,0),(1361,'In &quot;Team Fortress 2&quot;, the &quot;Bill&#039;s Hat&quot; is a reference to the game &quot;Dota 2&quot;.','True','False','','','','answer2',0,0),(1362,'In what year was the video game company Electronic Arts founded?','1981','1999','1982','2005','','answer3',0,0),(1363,'Which one of these actors is said to be cut from the film &#039;E.T. the Extra-Terrestrial&#039;?','Michael J. Fox','Harrison Ford','Andy Kaufman','Arnold Schwarzenegger','','answer2',0,0),(1364,'What year was the game Dishonored released?','2008','2012','2013','2011','','answer2',0,0),(1365,'Rannamaari was a sea demon that haunted the people of the Maldives and had to be appeased monthly with the sacrifice of a virgin girl.','False','True','','','','answer2',0,0),(1366,'How long did it take the motorized window washers of the original World Trade Center to clean the entire exterior of the building?','1 Week','3 Weeks','1 Month','2 Months','','answer3',0,0),(1367,'What play is the quote &quot;Hell is other people&quot; from?','The Devil and the Good Lord','No Exit','The Flies','The Condemned of Altona','','answer2',0,0),(1368,'How much horsepower is produced by the SD40-2 Locomotive?','2,578','2,190','3,000','3,200','','answer3',0,0),(1369,'What is the molecular formula of Ozone?','SO4','O3','C6H2O6','N2O','','answer2',0,0),(1370,'&quot;Cube&quot;, &quot;Cube 2: Hypercube&quot; and &quot;Cube Zero&quot; were directed by the same person.','True','False','','','','answer2',0,0),(1371,'In Pokemon Red &amp; Blue, what is the name of HM05?','Fly','Strength','Flash','Cut','','answer3',0,0),(1372,'Which soccer team won the Copa Am&amp;eacute;rica 2015 Championship ?','Chile','Brazil','Argentina','Paraguay','','answer1',0,0),(1373,'Which Game Development company made No Man&#039;s Sky?','Dovetail Games','Blizzard Entertainment','Valve','Hello Games','','answer4',0,0),(1374,'Which survivor in Left 4 Dead sacrificed themself to save the other survivors?','Bill','Louis','Zoey','Francis','','answer1',0,0),(1375,'The NVidia GTX 1080 gets its name because it can only render at a 1920x1080 screen resolution.','False','True','','','','answer1',0,0),(1376,'In the movie The Revenant, DiCaprio&#039;s character hunts down the killer of his son.','False','True','','','','answer2',1,0),(1377,'What is the capital of Seychelles?','Victoria','N&#039;Djamena','Luanda','Tripoli','','answer1',0,0),(1378,'In 2014, over 6 million General Motors vehicles were recalled due to what critical flaw?','Faulty brake pads','Malfunctioning gas pedal','Breaking fuel lines','Faulty ignition switch','','answer4',0,0),(1379,'A &#039;Millinillion&#039; is a real number.','True','False','','','','answer1',0,0),(1380,'The Klingon home planet is Qo&#039;noS.','True','False','','','','answer1',0,0),(1381,'Which of these stages is not playable in &quot;Super Smash Bros. for Wii U&quot;?','Bridge of Eldin','Fountain of Dreams','Miiverse','75m','','answer2',0,0),(1382,'Who voices the character &quot;Vernon Cherry&quot; in &quot;Red Dead Redemption&quot;?','Rob Wiethoff','Troy Baker','Tara Strong','Casey Mongillo','','answer4',0,0),(1383,'Actor Tommy Chong served prison time.','True','False','','','','answer1',0,0),(1384,'Carcassonne is based on which French town?','Paris','Marseille','Carcassonne','Clermont-Ferrand','','answer3',0,0),(1385,'When was Star Wars: Battlefront II released?','November 21, 2006','September 9, 2007','December 18, 2004','October 31, 2005','','answer4',0,0),(1386,'Which time signature is commonly known as &amp;ldquo;Cut Time?&amp;rdquo;','4/4','6/8','2/2','3/4','','answer3',0,0),(1387,'Which animal features on the logo for Abarth, the motorsport division of Fiat?','Scorpion','Snake','Horse','Bull','','answer1',0,0),(1388,'What was the name of Captain Nemo&#039;s submarine in &quot;20,000 Leagues Under the Sea&quot;?','The Poseidon','The Neptune','The Atlantis','The Nautilus','','answer4',0,0),(1389,'America&#039;s Strategic Defense System during the Cold War was nicknamed after this famous movie.','Jaws','Alien','Blade Runner','Star Wars','','answer4',0,0),(1390,'Who wrote the 1967 horror novel &quot;Rosemary&#039;s Baby&quot;?','Mary Shelley','Ira Levin','Robert Bloch','Stephen King','','answer2',0,0),(1391,'How would one say goodbye in Spanish?','Au Revoir','Hola','Salir','Adi&amp;oacute;s','','answer4',0,0),(1392,'Paul McCartney has always used his middle name. What is his real first name?','Jack','Justin','John','James','','answer4',0,0),(1393,'Blinky, Pinky, Inky and Clyde are characters from which classic video game?','Gauntlet','Street Fighter','Pac-Man','Space Invaders','','answer3',0,0),(1394,'Which country has the international vehicle registration letter &#039;A&#039;?','Armenia','Austria','Afghanistan','Australia','','answer2',0,0),(1395,'Which country is singer Kyary Pamyu Pamyu from?','China','Japan','Vietnam','South Korea','','answer2',1,0),(1396,'In the fighting game &quot;Skullgirls,&quot; which character utilizes a folding chair called the &quot;Hurting&quot; as a weapon?','Squigly','Cerebella','Beowulf','Big Band','','answer3',0,0),(1397,'Madonna&#039;s song &quot;Hung Up&quot; includes a piece from which popular 70s song?','Gimmie! Gimmie! Gimme! (A Man After Midnight)','Night Fever','Staying Alive','The Chain','','answer1',0,0),(1398,'What is the main theme song of &quot;Sonic Adventure 2&quot;?','His World','Can You Feel the Sunshine?','Live and Learn','Open Your Heart','','answer3',0,0),(1399,'In the original script of &quot;The Matrix&quot;, the machines used humans as additional computing power instead of batteries.','False','True','','','','answer2',0,0),(1400,'Which Apollo mission was the last one in NASA&#039;s Apollo program?','Apollo 11','Apollo 17','Apollo 13','Apollo 15','','answer2',0,0),(1401,'Which of the following films was Don Bluth both the writer, director, and producer for?','Titan A.E.','All Dogs Go To Heaven','The Land Before Time','Anastasia','','answer2',0,0),(1402,'What does the acronym CDN stand for in terms of networking?','Computational Data Network','Content Distribution Network','Content Delivery Network','Compressed Data Network','','answer3',0,0),(1403,'What is the French word for &quot;hat&quot;?','Bonnet','Chapeau','&amp;Eacute;charpe','Casque','','answer2',0,0),(1404,'The 2005 video game &quot;Call of Duty 2: Big Red One&quot; is not available on PC.','True','False','','','','answer1',0,0),(1405,'The Second Boer War in 1899 was fought where?','Bulgaria','Nepal','Argentina','South Africa','','answer4',0,0),(1406,'The &quot;Psycho&quot; series of videos on YouTube was created by which of the following?','Dan Bell','VeganGainz','RiDGiD STUDiOS','Billy Familia','','answer3',0,0),(1407,'What is the nickname for the US state Delaware?','The First State','The Fiftieth State','The Second State','The Sixteenth State','','answer1',0,0),(1408,'Which universe crossover was introduced in the &quot;Sonic the Hedgehog&quot; comic issue #247?','Alex Kidd','Super Monkey Ball','Super Mario Brothers','Mega Man','','answer4',0,0),(1409,'Which building was set aflame on August 24th, 1812?','The White House','Parliament Building','Grand National Assembly Building','Palace of the Nation','','answer1',0,0),(1410,'What is the name of the final villain in the manga series &quot;Bleach&quot;?','Juhabach','Juha Bach','Yuhabah','Yhwach','','answer4',0,0),(1411,'How many chromosomes are in your body cells?','24','22','21','23','','answer4',0,0),(1412,'Which Elite Four member from the first generation of Pok&amp;eacute;mon became the champion in the next generation?','Lance','Lorelei','Agatha','Bruno','','answer1',0,0),(1413,'Liechtenstein does not have an airport.','True','False','','','','answer1',0,0),(1414,'&quot;Yes, America Can!&quot; was this United States politician&#039;s de facto campaign slogan in 2004.','George W. Bush','Barack Obama','Al Gore','John Kerry','','answer1',0,0),(1415,'How was Socrates executed?','Poison','Crucifixion','Decapitation','Firing squad','','answer1',0,0),(1416,'Which day in &quot;Papers, Please&quot; does the man in red appear?','Day 15','Day 23','Day 17','Day 20','','answer2',0,0),(1417,'What is the correct spelling of the protagonist of the book in The NeverEnding Story (1984)?','Atreyu','Atraiyu','Atrayu','Atraeyu','','answer1',0,0),(1418,'Who stars in Brutal Legend?','Jack Black','Ozzy Osbourne','Kanye West','Lemmy','','answer1',0,0),(1419,'In &quot;Fallout 4&quot;, what is the name of the dog you find at Red Rocket truck stop?','Chop','Dogmeat','Quazar','Sparky','','answer2',0,0),(1420,'&quot;The Potato Sack&quot; was a collection of indie games released on Steam in 2011 as a promotion for which game?','Portal 2','Left 4 Dead 2','Dota 2','Half-Life 3','','answer1',0,0),(1421,'This mobile OS held the largest market share in 2012.','BlackBerry','Symbian','Android','iOS','','answer4',0,0),(1422,'The character Plum from &quot;No Game No Life&quot; is of what race?','Seiren','Imanity','Dhampir','Fl&amp;uuml;gel','','answer3',0,0),(1423,'Klingons respect their disabled comrades, and those who are old, injuried, and helpless.','True','False','','','','answer2',0,0),(1424,'What year did the Chevrolet LUV mini truck make its debut?','1982','1975','1972','1973','','answer3',0,0),(1425,'Waylon Smithers from &quot;The Simpsons&quot; was originally black when he first appeared in the series.','False','True','','','','answer2',0,0),(1426,'Who voices &quot;Shou Suzuki&quot; in the English dub of &quot;Mob Psycho 100&quot;?','Chris Niosi','Ben Diskin','Casey Mongillo','David Naughton','','answer3',0,0),(1427,'In the 1988 film &quot;Akira&quot;, Tetsuo ends up destroying Tokyo.','True','False','','','','answer1',0,0),(1428,'What type of dog is &#039;Handsome Dan&#039;, the mascot of Yale University?','Bulldog','Yorkshire Terrier','Boxer','Pug','','answer1',0,0),(1429,'The song &#039;Little April Shower&#039; features in which Disney cartoon film?','Bambi','Pinocchio','The Jungle Book','Cinderella','','answer1',0,0),(1430,'Ringo Starr of The Beatles mainly played what instrument?','Bass','Guitar','Piano','Drums','','answer4',0,0),(1431,'Who is the frontman of the band 30 Seconds to Mars?','Mike Shinoda','Jared Leto','Matthew Bellamy','Gerard Way','','answer2',0,0),(1432,'Which artist&amp;rsquo;s studio was known as &#039;The Factory&#039;?','Roy Lichtenstein','Peter Blake','Andy Warhol','David Hockney','','answer3',0,0),(1433,'Linus Torvalds created Linux and Git.','False','True','','','','answer2',0,0),(1434,'What year was Canada founded in?','1859','1798','1668','1867','','answer4',0,0),(1435,'A defibrillator is used to start up a heartbeat once a heart has stopped beating.','False','True','','','','answer1',0,0),(1436,'In the Gamecube Version of &quot;Resident Evil&quot; what text document is open on the monitor of the computer in the Visual Data Room?','Text Document on Herbs','A GDC Document','Document on B.O.Ws','Nothing','','answer2',0,0),(1437,'&quot;Metal Gear Solid 3: Snake Eater&quot; takes place on Shadow Moses Island.','False','True','','','','answer1',0,0),(1438,'Which of these actors/actresses is NOT a part of the cast for the 2016 movie &quot;Suicide Squad&quot;?','Jared Leto','Scarlett Johansson','Margot Robbie','Will Smith','','answer2',0,0),(1439,'Vietnam is the only country in the world that starts with V.','True','False','','','','answer2',0,0),(1440,'Which Mario spin-off game did Waluigi make his debut?','Mario Golf: Toadstool Tour','Mario Tennis','Mario Kart: Double Dash!!','Mario Party 3','','answer2',0,0),(1441,'The term &quot;scientist&quot; was coined in which year?','1796','1833','1933','1942','','answer2',0,0),(1442,'How many times was Albert Einstein married in his lifetime?','Five','Twice','Once','Thrice','','answer2',0,0),(1443,'During the Roman Triumvirate of 42 BCE, what region of the Roman Republic was given to Lepidus?','Gallia','Italia','Hispania','Asia','','answer3',0,0),(1444,'The Day of Defeat games take place during:','World War II','World War I','Vietnam War','Iraq War','','answer1',0,0),(1445,'Joseph Stalin had a criminal past doing what?','Robbing trains','Identity Fraud','Tax evation','Pedophilia','','answer1',0,0),(1446,'In &quot;Fallout 4&quot; which faction is not present in the game?','The Enclave','The Institute','The Minutemen','The Brotherhood of Steel','','answer1',0,0),(1447,'Which of these is NOT a playable character in &quot;Left 4 Dead&quot;?','Louis','Nick','Bill','Zoey','','answer2',0,0),(1448,'The name of Junko Enoshima&#039;s imposter at the beginning of Danganronpa: Trigger Happy Havoc is?','Ultimate Imposter','Ryota Mitarai','Komaru Naegi','Mukuro Ikusaba','','answer4',0,0),(1449,'Which company did Bethesda purchase the Fallout Series from?','Capcom','Interplay Entertainment','Nintendo','Blizzard Entertainment','','answer2',0,0),(1450,'What is Grumpy Cat&#039;s real name?','Sauce','Broccoli','Minnie','Tardar Sauce','','answer4',0,0),(1451,'How many keys are there are on a full-sized piano?','60','88','54','72','','answer2',0,0),(1452,'When did Norway get its constitution?','1854','1932','1905','1814','','answer4',0,0),(1453,'Who designed the album cover for True Romance, an album by Estelle?','Ian Jones Quartey','Ben Leven','Rebecca Sugar','Matt Burnett','','answer3',0,0),(1454,'Who is the original author of the realtime physics engine called PhysX?','Ageia','Nvidia','NovodeX','AMD','','answer3',0,0),(1455,'What sport is being played in the Anime Eyeshield 21?','Baseball','American Football','Basketball','Football','','answer2',0,0),(1456,'What is the name of the song by Beyonc&amp;eacute; and Alejandro Fern&amp;aacute;ndez released in 2007?','Amor Gitano','Hasta Dondes Estes','Rocket','La ultima vez','','answer1',0,0),(1457,'Who voiced Metalbeard in &quot;The Lego Movie&quot;?','Will Arnet','Liam Neeson','Morgan Freeman','Nick Offerman','','answer4',0,0),(1458,'How many timezones does Russia have?','24','16','11','6','','answer3',0,0),(1459,'In &quot;Undertale&quot;, the main character of the game is Sans.','False','True','','','','answer1',0,0),(1460,'What is the capital of Spain?','Toledo','Barcelona','Sevilla','Madrid','','answer4',0,0),(1461,'In what year was &quot;Super Mario Sunshine&quot; released?','2002','2003','2004','2000','','answer1',0,0),(1462,'Nikki Diamond portrayed which Gladiator in the 1992 TV show &quot;Gladiators&quot;?','Falcon','Jet','Nightshade','Scorpio','','answer4',0,0),(1463,'In the &quot;Archie&quot; comics, who was Jughead&#039;s first girlfriend?','Ethel','Joani','Debbi','Margret','','answer2',0,0),(1464,'What is the unit of electrical inductance?','Mho','Henry','Weber','Coulomb','','answer2',0,0),(1465,'Laserjet and inkjet printers are both examples of what type of printer?','Impact printer','Daisywheel printer','Dot matrix printer','Non-impact printer','','answer4',0,0),(1466,'What was the aim of the &quot;Umbrella Revolution&quot; in Hong Kong in 2014?','Go back under British Rule','Gaining Independence','Lower taxes','Genuine universal suffrage','','answer4',0,0),(1467,'Which of these stages is not playable in &quot;Super Smash Bros. for Wii U&quot;?','Miiverse','Bridge of Eldin','75m','Fountain of Dreams','','answer4',0,0),(1468,'What is the name of the creature that the main character befriends in &quot;The Last Guardian&quot;?','Andazi','Nico','Wolf','Trico','','answer4',0,0),(1469,'Whose 2016 presidential campaign slogan was &quot;Make America Great Again&quot;?','Bernie Sanders','Donald Trump','Ted Cruz','Marco Rubio','','answer2',0,0),(1470,'Which &#039;Family Guy&#039; character got his own spin-off show in 2009?','Joe Swanson','Cleveland Brown','Glenn Quagmire','The Greased-up Deaf Guy','','answer2',0,0),(1471,'What&#039;s the famous line Vaas says in &quot;Far Cry 3&quot;?','Have I failed to entertain you?','You&#039;re my b*tch!','Maybe your best course...would be to tread lightly.','Did I ever tell you the definition of Insanity?','','answer4',0,0),(1472,'What was the title of ABBA`s first UK hit single?','Fernando','Waterloo','Dancing Queen','Mamma Mia','','answer2',0,0),(1473,'Rapper Snoop Dogg&#039;s real name is &#039;Cordozar Calvin Broadus, Jr.&#039;.','False','True','','','','answer2',0,0),(1474,'How many studio albums have the duo Daft Punk released?','2','4','5','1','','answer2',0,0),(1475,'What was the first living creature in space?','Monkey','Dog','Mouse','Fruit Flies','','answer4',0,0),(1476,'Pointers were not used in the original C programming language; they were added later on in C++.','False','True','','','','answer1',0,0),(1477,'What is the name of the first &quot;Star Wars&quot; film by release order?','The Force Awakens','Revenge of the Sith','The Phantom Menace','A New Hope','','answer4',0,0),(1478,'In what year was &quot;Metal Gear Solid&quot; released in North America?','2001','1987','2004','1998','','answer4',0,0),(1479,'When was the first episode of Soul Eater released?','2003','2005','2011','2008','','answer4',0,0),(1480,'In which Shakespearean play will you find the suicide of Ophelia?','King Lear','Hamlet','Othello','Macbeth','','answer2',0,0),(1481,'For what reason would a spotted hyena &quot;laugh&quot;?','Nervousness','Exhaustion','Excitement','Aggression','','answer1',0,0),(1482,'In the Pixar film, &quot;Toy Story&quot; what was the name of the child who owned the toys?','Edward','Matt','Andy','Danny','','answer3',0,0),(1483,'Which iconic character is featured in movies such as &quot;The Enforcer&quot;, &quot;Sudden Impact&quot;, and &quot;The Dead Pool&quot;?','Indiana Jones','Dirty Harry','James Bond','Harry Potter','','answer2',0,0),(1484,'Scientists accidentally killed the once known world&#039;s oldest living creature, a mollusc, known to be aged as 507 years old.','True','False','','','','answer1',0,0),(1485,'In what year were achivements added to Steam?','2007','2008','2006','2009','','answer1',0,0),(1486,'In the web-comic Homestuck, what is the name of the game the 4 kids play?','Husslie','Hiveswap','Homesick','Sburb','','answer4',0,0),(1487,'In the TV series Red Dwarf, Kryten&#039;s full name is Kryten 2X4B-523P.','True','False','','','','answer1',0,0),(1488,'A comet&#039;s gaseous envelope (which creates the tail) is called what?','The backwash','The wake','The coma','The ablative','','answer3',0,0),(1489,'Which of the following is NOT a summon in the game &quot;South Park: The Stick of Truth&quot;?','Jesus','Mr. Slave','Mr. Hankey','Towelie','','answer4',0,0),(1490,'Which one of these songs did the group &quot;Men At Work&quot; NOT make?','Safety Dance','It&#039;s a Mistake','Down Under','Who Can It Be Now?','','answer1',0,0),(1491,'There is a Donald Trump Board Game, which was made in 1989.','False','True','','','','answer2',0,0),(1492,'In the game Battleblock Theater, what was the name of the voice actor who voiced the narrator?','Will Stamper','Steve Blum','Richard Epcar','Yuri Lowenthal','','answer1',0,0),(1493,'Which one of these is not a real game in the Dungeons &amp; Dragons series?','Extreme Dungeons &amp; Dragons','Advanced Dungeons &amp; Dragons','Advanced Dungeons &amp; Dragons 2nd edition','Dungeons &amp; Dragons 3.5th edition','','answer1',0,0),(1494,'&quot;Cube&quot;, &quot;Cube 2: Hypercube&quot; and &quot;Cube Zero&quot; were directed by the same person.','True','False','','','','answer2',0,0),(1495,'Early RAM was directly seated onto the motherboard and could not be easily removed.','False','True','','','','answer2',0,0),(1496,'Roger Federer is a famous soccer player.','True','False','','','','answer2',0,0),(1497,'Which water-type Pok&amp;eacute;mon starter was introduced in the 4th generation of the series?','Totodile','Oshawott','Piplup','Mudkip','','answer3',0,0),(1498,'Who is the Egyptian god of reproduction and lettuce?','Min','Mut','Meret','Menu','','answer1',0,0),(1499,'According to The Hitchhiker&#039;s Guide to the Galaxy book, the answer to life, the universe and everything else is...','Death','Loving everyone around you','Chocolate','42','','answer4',0,0),(1500,'The Hundred Years&#039; War was fought for more than a hundred years.','True','False','','','','answer1',0,0),(1501,'What is the first track on Kanye West&#039;s 808s &amp; Heartbreak?','Heartless','Street Lights','Say You Will','Welcome to Heartbreak','','answer3',0,0),(1502,'How many trophies are there in &quot;Super Smash Bros. for Nintendo 3DS&quot;?','685','716','1360','1155','','answer1',0,0),(1503,'Who played the Cenobite called &quot;Pinhead&quot; in the original Hellraiser films?','Doug Savant','Doug Jones','Doug Benson','Doug Bradley','','answer4',0,0),(1504,'In RuneScape, one must complete the &quot;Dragon Slayer&quot; quest before equipping Rune Platelegs.','False','True','','','','answer1',0,0),(1505,'How long did World War II last?','7 years','4 years','5 years','6 years','','answer4',0,0),(1506,'What was Mountain Dew&#039;s original slogan?','Do The Dew','Yahoo! Mountain Dew... It&#039;ll tickle your innards!','Give Me A Dew','Get&#039; that barefoot feelin&#039; drinkin&#039; Mountain Dew','','answer2',0,0),(1507,'Which team won the &quot;Tom Clancy&#039;s Rainbow Six Siege&quot; Invitational Event February 2017 in the PC Category?','GIFU','Santos Dexterity','Continuum','eRa Eternity','','answer3',0,0),(1508,'Kiznaiver is an adaptation of a manga.','False','True','','','','answer1',0,0),(1509,'Who built the first laser?','Jack Kilby','Theodore Harold Maiman','Edith Clarke','Nikola Tesla','','answer2',0,0),(1510,'Where are the cars of the brand &#039;Ferrari&#039; manufactured?','Romania','Germany','Russia','Italy','','answer4',0,0),(1511,'What was the punishment for Sysiphus&#039;s craftiness?','To fell a tree that regenerated after every axe swing.','Tied to a boulder for eternity, being pecked by birds.','Standing in a lake filled with water he could not drink.','Cursed to roll a boulder up a hill for eternity.','','answer4',0,0),(1512,'What is the most common surname Wales?','Davies','Evans','Jones','Williams','','answer3',0,0),(1513,'Clefairy was intended to be Ash&#039;s starting Pok&amp;eacute;mon in the pilot episode of the cartoon.','True','False','','','','answer1',0,0),(1514,'Which king was killed at the Battle of Bosworth Field in 1485?','Richard III','James I','Edward V','Henry VII','','answer1',0,0),(1515,'Which English guitarist has the nickname &quot;Slowhand&quot;?','Eric Clapton','Jimmy Page','Mark Knopfler','Jeff Beck','','answer1',0,0),(1516,'This element, when overcome with extreme heat and pressure, creates diamonds.','Carbon','Hydrogen','Nitrogen','Oxygen','','answer1',0,0),(1517,'The Red Hot Chili Pepper song &quot;Give It Away&quot; is from what album?','Blood Sugar Sex Magik','One Hot Minute','By the Way','Stadium Arcadium','','answer1',0,0),(1518,'Butters Stotch, Pip Pirrup, and Wendy Testaburger are all characters in which long running animated TV series?','Bob&#039;s Burgers','The Simpsons','Family Guy','South Park','','answer4',0,0),(1519,'A stimpmeter measures the speed of a ball over what surface?','Golf Putting Green','Pinball Table','Cricket Outfield','Football Pitch','','answer1',0,0),(1520,'This movie contains the quote, &quot;Houston, we have a problem.&quot;','Apollo 13','The Right Stuff','Capricorn One','Marooned','','answer1',0,0),(1521,'Kuala Lumpur is the capital of which country?','Thailand','Singapore','Malaysia','Indonesia','','answer3',0,0),(1522,'Which of these is NOT a Disney cartoon character?','Donald Duck','Scrooge McDuck','Daffy Duck','Daisy Duck','','answer3',0,0),(1523,'&quot;I disapprove of what you say, but I will defend to the death your right to say it&quot; is a quote from French philosopher Voltaire.','True','False','','','','answer2',0,0),(1524,'Who was the King of Gods in Ancient Greek mythology?','Apollo','Poseidon','Zeus','Hermes','','answer3',0,0),(1525,'How many members are there in the idol group &quot;&amp;micro;&#039;s&quot;?','9','3','6','48','','answer1',0,0),(1526,'In the anime series &quot;Full Metal Alchemist&quot;, what do Alchemists consider the greatest taboo?','Preforming Without A Permit','Using Alchemy For Crime','Human Transmutation','Transmuting Lead Into Gold','','answer3',0,0),(1527,'Which of these actors/actresses is NOT a part of the cast for the 2016 movie &quot;Suicide Squad&quot;?','Will Smith','Scarlett Johansson','Jared Leto','Margot Robbie','','answer2',0,0),(1528,'What year was the Disney film &quot;A Goofy Movie&quot; released?','1995','1999','1997','2001','','answer1',0,0),(1529,'Which movie includes a giant bunny-like spirit who has magic powers including growing trees?','Rise of the Guardians','Alice in Wonderland','My Neighbor Totoro','Hop','','answer3',0,0),(1530,'In what prison was Adolf Hitler held in 1924?','Ebrach Abbey','Spandau Prison','Hohenasperg','Landsberg Prison','','answer4',0,0),(1531,'In &quot;Team Fortress 2&quot;, the &quot;Bill&#039;s Hat&quot; is a reference to the game &quot;Dota 2&quot;.','False','True','','','','answer1',0,0),(1532,'United States President John F. Kennedy was assassinated during his presidential motorcade in Atlanta, Georgia on November 22nd, 1963.','True','False','','','','answer2',0,0),(1533,'In the 1979 British film &quot;Quadrophenia&quot; what is the name of the seaside city the mods are visiting?','Mousehole','Eastbourne','Brighton','Bridlington','','answer3',0,0),(1534,'In &quot;It&#039;s Always Sunny in Philadelphia&quot; what was the name of Frank&#039;s wrestling persona?','Day Man','The Trash Man','Bird of War','The Maniac','','answer2',0,0),(1535,'What character was once considered to be the 27th letter of the alphabet?','Pilcrow','Ampersand','Interrobang','Tilde','','answer2',0,0),(1536,'In which game does a character say, &quot;Sometimes, I dream about cheese&quot;?','Dark Souls','Team Fortress 2','Serious Sam: The Second Encounter','Half Life 2','','answer4',0,0),(1537,'Which one of these is not a typical European sword design?','Flamberge','Ulfberht','Scimitar','Falchion','','answer3',0,0),(1538,'Which of these are the name of a famous marker brand?','Copic','Cofix','Dopix','Marx','','answer1',0,0),(1539,'What type of creature is a Bonobo?','Ape','Wildcat','Lion','Parrot','','answer1',0,0),(1540,'Which of the following characters is NOT a female marriage candidate in the game Stardew Valley?','Haley','Abigail','Caroline','Leah','','answer3',0,0),(1541,'In the 1999 movie Fight Club, which of these is not a rule of the &quot;fight club&quot;?','Fights will go on as long as they have to','Always wear a shirt','Only two guys to a fight','You do not talk about FIGHT CLUB','','answer2',0,0),(1542,'When does Finland celebrate their independence day?','January 2nd','November 12th','February 8th','December 6th','','answer4',0,0),(1543,'Which day in &quot;Papers, Please&quot; does the man in red appear?','Day 17','Day 23','Day 20','Day 15','','answer2',0,0),(1544,'Krusty is the guild master of which guild in &quot;Log Horizon&quot;?','Silver Sword','West Wind Brigade','Oceanic Systems (Marine Agency)','D. D. D','','answer4',0,0),(1545,'When did the CD begin to appear on the consumer market?','1982','1992','1972','1962','','answer1',0,0),(1546,'In &quot;JoJo&#039;s Bizarre Adventure&quot;, which of the following Stands does NOT have a time-based ability?','20th Century Boy','The World','Star Platinum','Made in Heaven','','answer1',0,0),(1547,'In &quot;Gravity Falls&quot;, the character Bill Cipher remarks that &quot;the universe is what?&quot;','a hologram','corrupting','an illusion','a simulation','','answer1',0,0),(1548,'Peter Molyneux was the founder of Bullfrog Productions.','False','True','','','','answer2',0,0),(1549,'Whose 2016 presidential campaign slogan was &quot;Make America Great Again&quot;?','Donald Trump','Marco Rubio','Bernie Sanders','Ted Cruz','','answer1',0,0),(1550,'Which character was played by Dustin Diamond in the sitcom &#039;Saved by the Bell&#039;?','Mr. Belding','A.C. Slater','Screech','Zack','','answer3',0,0),(1551,'Which 1958 movie starred Kirk Douglas and Tony Curtis as half-brothers Einar and Eric?','Prince Valiant','The Vikings','Spartacus','The Long Ships','','answer2',0,0),(1552,'What is the name of Team Fortress 2&#039;s Heavy Weapons Guy&#039;s minigun?','Anna','Sasha','Betty','Diana','','answer2',0,0),(1553,'In aeronautics, flaps and slats are used to control what on an aircraft?','Lift','Thrust','Drag','Weight','','answer1',0,0),(1554,'Greenland is almost as big as Africa.','False','True','','','','answer1',0,0),(1555,'In the original Doctor Who series (1963), fourth doctor Tom Baker&#039;s scarf was how long?','2 Meters','7 Meters','5 Meters','10 Meters','','answer2',0,0),(1556,'Which country does the band Rammstein hail from?','Armenia','Belgium','Austria','Germany','','answer4',0,0),(1557,'What is the capital of Denmark?','Aalborg','Aarhus','Odense','Copenhagen','','answer4',0,0),(1558,'An organic compound is considered an alcohol if it has what functional group?','Carbonyl','Alkyl','Aldehyde','Hydroxyl','','answer4',1,0),(1559,'What country is the Hussarya supercar, made by the car manufacturer &quot;Arrinera&quot;, assembled in?','Poland','Sweden','China','Italy','','answer1',0,0),(1560,'Which of the following is NOT classified as a Semetic language?','Sumerian','Akkadian','Mandaic','Maltese','','answer1',0,0),(1561,'Which of the following countries has officially banned the civilian use of dash cams in cars?','Czechia','Austria','United States','South Korea','','answer2',0,0),(1562,'According to scholarly estimates, what percentage of the world population at the time died due to Tamerlane&#039;s conquests?','3%','5%','&lt;1%','1%','','answer2',0,0),(1563,'The creator of the Enigma Cypher and Machine was of what nationality?','American','British','German','Polish','','answer3',0,0),(1564,'Which of these languages was NOT included in the 2016 song &quot;Don&#039;t Mind&quot; by Kent Jones?','Japanese','Portuguese','French','Spanish','','answer2',0,0),(1565,'Brezhnev was the 5th leader of the USSR.','False','True','','','','answer2',0,0),(1566,'Which Queen song was covered by Brittany Murphy in the 2006 film &quot;Happy Feet&quot;?','Somebody to Love','Flash','Bohemian Rhapsody','Under Pressure','','answer1',0,0),(1567,'In the War of the Pacific (1879 - 1883), Bolivia lost its access to the Pacific Ocean after being defeated by which South American country?','Argentina','Chile','Brazil','Peru','','answer2',0,0),(1568,'Cucumbers are usually more than 90% water.','True','False','','','','answer1',0,0),(1569,'Who is the musical director for the award winning musical &quot;Hamilton&quot;?','Renee Elise-Goldberry','Lin-Manuel Miranda','Alex Lacamoire','Leslie Odom Jr.','','answer3',0,0),(1570,'Which team was the 2015-2016 NBA Champions?','Toronto Raptors','Golden State Warriors','Oklahoma City Thunders','Cleveland Cavaliers','','answer4',0,0),(1571,'Anatomy considers the forms of macroscopic structures such as organs and organ systems.','True','False','','','','answer1',0,0),(1572,'Which of these characters is the mascot of the video game company SEGA?','Dynamite Headdy','Alex Kidd','Opa-Opa','Sonic the Hedgehog','','answer4',0,0),(1573,'In Undertale, having a &quot;Fun Value&quot; set to 56-57 will play the &quot;Wrong Number Song Call&quot;.','False','True','','','','answer1',0,0),(1574,'Which of these songs by artist Eminem contain the lyric &quot;Nice to meet you. Hi, my name is... I forgot my name!&quot;?','Square Dance','Without Me','Rain Man','Kim','','answer3',0,0),(1575,'Which of these anime have over 7,500 episodes?','Sazae-san','One Piece','Chibi Maruko-chan','Naruto','','answer1',0,0),(1576,'In the game &quot;Subnautica&quot;, which feature was removed due to performance issues in 2016?','Terraforming','Multiplayer','Crafting','Building','','answer1',0,0),(1577,'Which of the following languages does NOT use gender as a part of its grammar?','Turkish','German','Danish','Polish','','answer1',0,0),(1578,'Gwyneth Paltrow has a daughter named...?','Dakota','French','Lily','Apple','','answer4',0,0),(1579,'Which American civilization is the source of the belief that the world would end or drastically change on December 21st, 2012?','The Mayans','The Incas','The Aztecs','The Navajos','','answer1',0,0),(1580,'In the Half-Life franchise, what is the real name of the &quot;gravity gun&quot;?','Isaac Newton&#039;s Theory Disprover','Universal Gravity Manipulation Device','Quantum Energy Displacement Modifier','Zero-Point Energy Field Manipulator','','answer4',0,0),(1581,'The book &quot;The Little Prince&quot; was written by...','Jane Austen','F. Scott Fitzgerald','Antoine de Saint-Exup&amp;eacute;ry','Miguel de Cervantes Saavedra','','answer3',0,0),(1582,'On what medium was &quot;Clannad&quot; first created?','Manga','Anime','Visual novel','Light novel','','answer3',0,0),(1583,'In Terraria, what does the Wall of Flesh not drop upon defeat?','Laser Rifle','Pwnhammer','Breaker Blade','Picksaw','','answer4',0,0),(1584,'In Formula 1, the Virtual Safety Car was introduced following the fatal crash of which driver?','Gilles Villeneuve','Jules Bianchi','Ayrton Senna','Ronald Ratzenberger','','answer2',0,0),(1585,'Who is the lead singer of Bastille?','Kyle Simmons','Dan Smith','Chris Wood','Will Farquarson','','answer2',0,0),(1586,'Who performed &quot;I Took A Pill In Ibiza&quot;?','Avicii','Robbie Williams','Mike Posner','Harry Styles','','answer3',0,0),(1587,'Which British writer wrote for both Doctor Who and Sherlock?','Steven Moffatt','Russell T Davies','Phil Ford','Toby Whithouse','','answer1',0,0),(1588,'In &quot;Fallout 4&quot;, what is the name of the dog you find at Red Rocket truck stop?','Chop','Quazar','Dogmeat','Sparky','','answer3',0,0),(1589,'Which iconic Disneyland attraction was closed in 2017 to be remodeled as a &quot;Guardians of the Galaxy&quot; themed ride?','Pirates of the Caribbean','The Haunted Mansion','Peter Pan&#039;s Flight','Twilight Zone Tower of Terror','','answer4',0,0),(1590,'What is the main CPU is the Sega Mega Drive / Sega Genesis?','Intel 8088','Motorola 68000','Yamaha YM2612','Zilog Z80','','answer2',0,0),(1591,'The Roman god &quot;Jupiter&quot; was first known as &quot;Zeus&quot; to the Greeks.','True','False','','','','answer1',0,0),(1592,'Which monster in &quot;Monster Hunter Tri&quot; was causing earthquakes in Moga Village?','Rathalos','Ceadeus','Alatreon','Lagiacrus','','answer2',0,0),(1593,'How much did the indie game &quot;Cave Story&quot; cost when it was first released in 2004?','$0 USD','$15 USD','$10 USD','$5 USD','','answer1',0,0),(1594,'Which of the following did not feature in the cartoon &#039;Wacky Races&#039;?','The Bouldermobile','The Compact Pussycat','The Dragon Wagon','The Crimson Haybailer','','answer3',0,0),(1595,'Who is the main antagonist in the Portal franchise?','Wheatley','Rick','GLaDOS','Chell','','answer3',0,0),(1596,'The cover of The Beatles album &quot;Abbey Road&quot; featured a Volkswagen Beetle in the background.','True','False','','','','answer1',0,0),(1597,'What is Pikachu&#039;s National Pok&amp;eacute;Dex Number?','#031','#025','#001','#109','','answer2',0,0),(1598,'What is Ron Weasley&#039;s middle name?','Bilius','Dominic','Arthur','John','','answer1',0,0),(1599,'When was the programming language &quot;C#&quot; released?','2001','2000','1998','1999','','answer2',0,0),(1600,'What amount of bits commonly equals one byte?','8','2','1','64','','answer1',0,0),(1601,'In which English county is Stonehenge?','Herefordshire','Wiltshire','Cumbria','Somerset','','answer2',0,0),(1602,'In &quot;Mario Kart 64&quot;, Waluigi is a playable character.','True','False','','','','answer2',0,0),(1603,'Who played Batman in the 1997 film &quot;Batman and Robin&quot;?','Christian Bale','Val Kilmer','George Clooney','Michael Keaton','','answer3',0,0),(1604,'In the game &quot;Racko&quot; you may pick up ANY card from the discard pile.','False','True','','','','answer1',0,0),(1605,'Which of the following Pacific Islander countries is ruled by a constitutional monarchy?','Kiribati','Tonga','Palau','Fiji','','answer2',0,0),(1606,'Jaguar Cars was previously owned by which car manfacturer?','Chrysler','Ford','Fiat','General Motors','','answer2',0,0),(1607,'Where is the area commonly known as the Bermuda Triangle?','In the Caribbean Sea','North Pacific Ocean, between Japan and the USA','North Atlantic Ocean, between Florida and Puerto Rico','South Pacific Ocean, far off Chile','','answer3',0,0),(1608,'How many time zones does China have?','4','3','1','2','','answer3',0,0),(1609,'Who is a co-founder of music streaming service Spotify?','Felix Miller','Daniel Ek','Sean Parker','Michael Breidenbruecker','','answer2',0,0),(1610,'Which of these is NOT the name of an album released by Miami-based producer DJ Khaled?','Suffering From Success','I Changed A Lot','Major Key','Don&#039;t Ever Play Yourself','','answer4',0,0),(1611,'Which CS:GO eSports team won the major event ESL One Cologne 2016?','Virtus.pro','SK Gaming','Team Liquid','Fnatic','','answer2',0,0),(1612,'What is the Spanish word for &quot;donkey&quot;?','Perro','Burro','Toro','Caballo','','answer2',0,0),(1613,'What device allows Tracer to manipulate her own time in the game &quot;Overwatch&quot;?','B.L.I.N.K','Spacial Displacement Manipulator','Chronal Accelerator','TMD (Time Manipulation Device)','','answer3',0,0),(1614,'How many countries border Kyrgyzstan?','6','4','3','1','','answer2',0,0),(1615,'Sitting for more than three hours a day can cut two years off a person&#039;s life expectancy.','False','True','','','','answer2',0,0),(1616,'What is the oldest Disney film?','Snow White and the Seven Dwarfs','Fantasia','Pinocchio','Dumbo','','answer1',0,0),(1617,'What was George Bizet&#039;s last opera?','Gris&amp;eacute;lidis','Les p&amp;ecirc;cheurs de perles','Carmen','Don Rodrigue','','answer3',0,0),(1618,'In JoJo&#039;s Bizarre Adventure, winch character is able to accelerate time?','Kujo Jotaro','Jotaro Kujo','Enrico Pucci','Jolyne Cujoh','','answer3',0,0),(1619,'Which one of these actors is said to be cut from the film &#039;E.T. the Extra-Terrestrial&#039;?','Andy Kaufman','Michael J. Fox','Harrison Ford','Arnold Schwarzenegger','','answer3',0,0),(1620,'In Les Mis&amp;eacute;rables, who is Prison Code 24601?','Javert','Marius Pontmercy','Jean Claude Van Damme','Jean Valjean','','answer4',0,0),(1621,'Which Greek &amp; Roman god was known as the god of music, truth and prophecy, healing, the sun and light, plague, poetry, and more?','Athena','Apollo','Artemis','Aphrodite','','answer2',0,0),(1622,'In Greek Mythology, who killed Achilles?','Helen','Pericles','Paris','Hector','','answer3',0,0),(1623,'Kanye West at 2009 VMA&#039;s interrupted which celebrity?','Taylor Swift','Beyonce','MF DOOM','Beck','','answer1',0,0),(1624,'Adolf Hitler was born in Australia.','True','False','','','','answer2',0,0),(1625,'This album, now considered to be one of the greatest of all time, was a commercial failure when it was released.','Led Zeppelin IV','The Velvet Underground and Nico','Pet Sounds','Abbey Road','','answer2',0,0),(1626,'Volkswagen&#039;s legendary VR6 engine has cylinders positioned at what degree angle?','45 Degree','30 Degree','15 Degree','90 Degree','','answer3',0,0),(1627,'Which Game Development company made No Man&#039;s Sky?','Valve','Dovetail Games','Hello Games','Blizzard Entertainment','','answer3',0,0),(1628,'When Christopher Columbus sailed to America, what was the first region he arrived in?','Nicaragua','Florida','Isthmus of Panama','The Bahamas Archipelago','','answer4',0,0),(1629,'Which artist&#039;s style was to use small different colored dots to create a picture?','Georges Seurat','Henri Rousseau','Paul C&amp;eacute;zanne','Vincent Van Gogh','','answer1',0,0),(1630,'When was the game &quot;Roblox&quot; released?','2003','2007','2006','2002','','answer3',0,0),(1631,'Who was the leader of the Communist Party of Yugoslavia ?','Josip Broz Tito','Karadjordje Petrovic','Aleskandar Petrovic','Milos Obilic','','answer1',0,0),(1632,'In &quot;Breaking Bad&quot;, Walter White is a high school teacher diagnosed with which form of cancer?','Brain Cancer','Testicular Cancer','Lung Cancer','Prostate Cancer','','answer3',0,0),(1633,'What is the smallest country in the world?','Monaco','Vatican City','Malta','Maldives','','answer2',0,0),(1634,'Krusty is the guild master of which guild in &quot;Log Horizon&quot;?','West Wind Brigade','D. D. D','Oceanic Systems (Marine Agency)','Silver Sword','','answer2',0,0),(1635,'When did Tame Impala release their second album?','2015','1967','2012','2010','','answer3',0,0),(1636,'Which of the following United States senators is known for performing a 24-hour long filibuster?','Chuck Schumer','Strom Thurmond','John Barrasso','Roy Blunt','','answer2',0,0),(1637,'AMC&#039;s &#039;The Walking Dead&#039;, Rick, Carl, Daryl, Morgan, Carol and Maggie were introduced to us in Season 1.','True','False','','','','answer2',0,0),(1638,'What is not a wind instrument?','Duduk','Trombone','Viola','Oboe','','answer3',0,0),(1639,'When did the French Revolution begin?','1799','1756','1823','1789','','answer4',0,0),(1640,'In a standard set of playing cards, which is the only king without a moustache?','Diamonds','Clubs','Hearts','Spades','','answer3',0,0),(1641,'How many Chaos Emeralds can you collect in the first Sonic The Hedgehog?','Eight','Five','Six','Seven','','answer3',0,0),(1642,'In the  Rossini opera, what was the name of &#039;The Barber of Seville&#039;?','Fernando','Angelo','Figaro','Dave','','answer3',0,0),(1643,'Which French duo had UK hits in 1998 with the songs &#039;Sexy Boy&#039;, &#039;Kelly Watch The Stars&#039; &amp; &#039;All I Need&#039;?','Air','Fire','Water','Earth','','answer1',0,0),(1644,'Soulja Boy&#039;s &#039;Crank That&#039; won a Grammy for Best Rap Song in 2007.','True','False','','','','answer2',0,0),(1645,'Which one of the following titles by Valve is not based on a Community Mod?','Alien Swarm','Ricochet','Counter-Strike','Day of Defeat','','answer2',0,0),(1646,'Who in Greek mythology, who led the Argonauts in search of the Golden Fleece?','Odysseus','Daedalus','Jason','Castor','','answer3',0,0),(1647,'What mineral has the lowest number on the Mohs scale?','Quartz','Talc','Gypsum','Diamond','','answer2',0,0),(1648,'Which famous spy novelist wrote the childrens&#039; story &quot;Chitty-Chitty-Bang-Bang&quot;?','John Buchan','Graham Greene','Ian Fleming','Joseph Conrad','','answer3',0,0),(1649,'What is the standard SI unit for temperature?','Kelvin','Celsius','Fahrenheit','Rankine','','answer1',0,0),(1650,'Which country had an &quot;Orange Revolution&quot; between 2004 and 2005?','Lithuania','Belarus','Ukraine','Latvia','','answer3',0,0),(1651,'According to scholarly estimates, what percentage of the world population at the time died due to Tamerlane&#039;s conquests?','&lt;1%','5%','1%','3%','','answer2',0,0),(1652,'On which day did ARPANET suffer a 4 hour long network crash?','December 9, 1991','November 21, 1969','October 27, 1980','October 29, 1969','','answer3',0,0),(1653,'Due to the Nagoya Resolution, China agreed to allow Taiwan to compete separately in international sporting events under what name?','Republic of Taipei','Republic of Taiwan','Chinese Taiwan','Chinese Taipei','','answer4',0,0),(1654,'What is the standard frame rate for animation?','12 FPS','60 FPS','30 FPS','24 FPS','','answer4',0,0),(1655,'In the anime, &quot;Super Sonicio&quot;, what is Super Sonico&#039;s favorite food?','Macroons','Pizza','Chips','Ice Cream','','answer1',0,0),(1656,'Which of the following buildings is example of a structure primarily built in the Art Deco architectural style?','Westendstrasse 1','Niagara Mohawk Building','One Detroit Center','Taipei 101','','answer2',0,0),(1657,'&quot;Ananas&quot; is mostly used as the word for Pineapple in other languages.','True','False','','','','answer1',0,0),(1658,'AMD created the first consumer 64-bit processor.','False','True','','','','answer2',0,0),(1659,'In PROTOTYPE 2, which of the following abilities/weapons is NOT obtained by an Evolved?','Pack Leader','Tendrils','Bio-Bomb','Blade','','answer2',0,0),(1660,'What port does HTTP run on?','80','23','443','53','','answer1',0,0),(1661,'What Greek letter is used to signify summation?','Alpha','Delta','Omega','Sigma','','answer4',0,0),(1662,'Which car did not appear in the 2002 Lego Game: Drome Racers?','Wasp','Hornet','Behemoth','Raptor','','answer1',0,0),(1663,'In the original Star Wars trilogy, Alec Guinness provided the voice for Darth Vader.','True','False','','','','answer2',0,0),(1664,'Who are the original creators of Rachet &amp; Clank?','Bethesda','Rare','Insomniac Games','PixelTail Games','','answer3',0,0),(1665,'In what year was the movie &quot;Police Academy&quot; released?','1985','1984','1983','1986','','answer2',0,0),(1666,'Volkswagen&#039;s legendary VR6 engine has cylinders positioned at what degree angle?','45 Degree','90 Degree','30 Degree','15 Degree','','answer4',0,0),(1667,'Which Disney character sings the song &quot;A Dream is a Wish Your Heart Makes&quot;?','Pocahontas','Cinderella','Snow White','Belle','','answer2',0,0),(1668,'What caused the titular mascot of Yo-Kai Watch, Jibanyan, to become a yokai?','Through a magical ritual','Being run over by a truck','Ate one too many chocobars','When he put on the harmaki','','answer2',0,0),(1669,'When did The Beatles release the LP &quot;Please Please Me&quot;?','1960','1963','1969','1970','','answer2',0,0),(1670,'Amsterdam Centraal station is twinned with what station?','London Liverpool Street','Brussels Midi','Paris Gare du Nord','Frankfurt (Main) Hauptbahnhof','','answer1',0,0),(1671,'Which of these is not an Ed Sheeran album?','-','+','&amp;divide;','X','','answer1',0,0),(1672,'The book &quot;The Little Prince&quot; was written by...','Miguel de Cervantes Saavedra','F. Scott Fitzgerald','Antoine de Saint-Exup&amp;eacute;ry','Jane Austen','','answer3',0,0),(1673,'Albert Einstein had trouble with mathematics when he was in school.','False','True','','','','answer1',0,0),(1674,'What is lost in Hawaiian and is also the name of a little girl in a 2002 film which features a alien named &quot;Stitch&quot;?','Lucy','Lilo','Lolo','Lulu','','answer2',0,0),(1675,'In what year was McDonald&#039;s founded?','1955','1951','1947','1964','','answer1',0,0),(1676,'In &quot;The Amazing World of Gumball&quot;, who is the principal of Elmore Junior High?','Principal Brown','Principal Simeon','Principal Brawn','Principal Small','','answer1',0,0),(1677,'The LS1 engine is how many cubic inches?','350','360','355','346','','answer4',0,0),(1678,'In &quot;A Certain Magical Index,&quot; what is Accelerator able to control?','Quantums','Vectors','Wormholes','Velocity','','answer2',0,0),(1679,'In the &quot;Devil May Cry&quot; franchise, which game is chronologically first?','Devil May Cry 4','Devil May Cry','Devil May Cry 2','Devil May Cry 3: Dante&#039;s Awakening','','answer4',0,0),(1680,'Waylon Smithers from &quot;The Simpsons&quot; was originally black when he first appeared in the series.','False','True','','','','answer2',0,0),(1681,'Who was the only god from Greece who did not get a name change in Rome?','Zeus','Demeter','Apollo','Athena','','answer3',0,0),(1682,'Who had a US and UK number 1 hit in 1962 with the instrumental, &#039;Telstar&#039;?','The Ventures','The Spotnicks','The Tornados','The Tremeloes','','answer3',0,0),(1683,'Which Shakespeare play inspired the musical &#039;West Side Story&#039;?','Romeo &amp; Juliet','Othello','Hamlet','Macbeth','','answer1',0,0),(1684,'What is the scientific name for modern day humans?','Homo Erectus','Homo Sapiens','Homo Ergaster','Homo Neanderthalensis','','answer2',0,0),(1685,'Which species of Brown Bear is not extinct?','Syrian Brown Bear','Mexican Grizzly Bear','Atlas Bear','California Grizzly Bear','','answer1',0,0),(1686,'If a &quot;360 no-scope&quot; is one full rotation before shooting, how many rotations would a &quot;1080 no-scope&quot; be?','4','5','3','2','','answer3',0,0),(1687,'What&#039;s the square root of 49?','4','7','9','12','','answer2',0,0),(1688,'What genre of EDM is the Dutch DJ, musician, and remixer Armin van Buuren most well-known for?','Trance','Dubstep','Drum and Bass','House','','answer1',0,0),(1689,'In Forza Motorsport 6, which of these track-exclusive cars was NOT featured in the game, either originally with the game or added as DLC?','McLaren P1 GTR','Ferrari FXX-K','Lotus E23','Aston Martin Vulcan','','answer4',0,0),(1690,'Which of the following languages does NOT use the Latin alphabet?','Vietnamese','Georgian','Turkish','Swahili','','answer2',0,0),(1691,'When did the last episode of &quot;Futurama&quot; air?','March 28, 1999','September 4, 2013','December 25, 2010','On Going','','answer2',0,0),(1692,'If you planted the seeds of Quercus robur what would grow?','Flowers','Trees','Grains','Vegtables','','answer2',0,0),(1693,'In 2013 how much money was lost by Nigerian scams?','$95 Million','$12.7 Billion','$956 Million','$2.7 Billion','','answer2',0,0),(1694,'What is the name the location-based augmented reality game developed by Niantic before Pok&amp;eacute;mon GO?','Regress','Digress','Aggress','Ingress','','answer4',0,0),(1695,'What year was the Disney film &quot;A Goofy Movie&quot; released?','1995','2001','1997','1999','','answer1',0,0),(1696,'What scientific family does the Aardwolf belong to?','Eupleridae','Canidae','Hyaenidae','Felidae','','answer3',0,0),(1697,'What do you call a baby bat?','Cub','Kid','Pup','Chick','','answer3',0,0),(1698,'What is Gabe Newell&#039;s favorite class in Team Fortress 2?','Heavy','Medic','Spy','Pyro','','answer3',0,0),(1699,'Which of the following countries does &quot;JoJo&#039;s Bizarre Adventure: Stardust Crusaders&quot; not take place in?','India','Pakistan','Egypt','Philippines','','answer4',0,0),(1700,'In &quot;Super Mario 3D World&quot;, the Double Cherry power-up originated from a developer accidentally making two characters controllable.','True','False','','','','answer1',0,0),(1701,'Former United States Presidents John Adams and Thomas Jefferson died within hours of each other.','False','True','','','','answer2',0,0),(1702,'Which one of these Rammstein songs has two official music videos?','Du Hast','Benzin','Mein Teil','Du Riechst So Gut','','answer4',0,0),(1703,'The television show Doctor Who first aired in 1963.','True','False','','','','answer1',0,0),(1704,'How long was the World Record Speed Run of Valve Software&#039;s &quot;Half-Life&quot; that was done in 2014.','20 Minutes, 41 Seconds','45 Minutes, 32 Seconds','5 Minutes, 50 Seconds','12 Minutes, 59 Seconds','','answer1',0,0),(1705,'The Sonoran Desert is located in eastern Africa.','True','False','','','','answer2',0,0),(1706,'DHCP stands for Dynamic Host Configuration Port.','False','True','','','','answer1',0,0),(1707,'What do the letters in the GMT time zone stand for?','General Median Time','Greenwich Mean Time','Global Meridian Time','Glasgow Man Time','','answer2',0,0),(1708,'Who created the pump &quot;F.L.U.D.D.&quot; Mario uses in Super Mario Sunshine?','Nirona','Crygor','Robert Fludd','Elvin Gadd','','answer4',0,0),(1709,'When was Nintendo founded?','December 27th, 1894','October 19th, 1891','March 4th, 1887','September 23rd, 1889','','answer4',0,0),(1710,'Which American-owned brewery led the country in sales by volume in 2015?','Boston Beer Company','D. G. Yuengling and Son, Inc','Anheuser Busch','Miller Coors','','answer2',0,0),(1711,'In the &quot;Toaru Majutsu no Index&quot; anime, Touma Kamijou is a level 0 esper that has the ability to do what?','Dispell any esper or magical powers','Teleport','Make telepathic communications','Create electricity from his own body','','answer1',0,0),(1712,'In what year was the game &quot;Eliminator&quot; released?','1998','1999','2000','2001','','answer1',0,0),(1713,'An exothermic reaction is a chemical reaction that releases energy by radiating electricity.','False','True','','','','answer1',0,0),(1714,'What was the first .hack game?','.hack//Sign','.hack//Zero','.hack//Liminality','.hack//Infection','','answer4',0,0),(1715,'Who won the 2016 Formula 1 World Driver&#039;s Championship?','Nico Rosberg','Kimi Raikkonen','Lewis Hamilton','Max Verstappen','','answer1',0,0),(1716,'What is the name of the &quot;Flash&quot; and &quot;Arrow&quot; spinoff featuring a team of characters that have appeared on both shows?','Heroes of Tomorrow','Legends of Tomorrow','The Justice Society','The Justice Society of America','','answer2',0,0),(1717,'What is the first Studio Album to be released on the Internet with a &quot;Pay-What-You-Want&quot; price?','The Help Album','Blackstar','Skrillex and Diplo Present Jack &amp;Uuml;','In Rainbows','','answer4',0,0),(1718,'What type of cheese, loved by Wallace and Gromit, had it&#039;s sale prices rise after their successful short films?','Moon Cheese','Edam','Wensleydale','Cheddar','','answer3',0,0),(1719,'What was Mountain Dew&#039;s original slogan?','Do The Dew','Yahoo! Mountain Dew... It&#039;ll tickle your innards!','Give Me A Dew','Get&#039; that barefoot feelin&#039; drinkin&#039; Mountain Dew','','answer2',0,0),(1720,'&quot;Doctor Who&quot; star David Tennant performed in a rendition of which Shakespearean play?','Hamlet','The Taming of the Shrew','The Tempest','Othello','','answer1',0,0),(1721,'Who is the main protagonist in Danganronpa 2: Goodbye Despair?','Hajime Hinata','Makoto Naegi','Nagito Komaeda','Junko Enoshima','','answer1',0,0),(1722,'Who is the director of the 1991 film &quot;Silence of the Lambs&quot;?','Frank Darabont','Stanley Kubrick','Jonathan Demme','Michael Bay','','answer3',0,0),(1723,'What does the Latin phrase &quot;Veni, vidi, vici&quot; translate into English?','Life, liberty, and happiness','I came, I saw, I conquered','Past, present, and future','See no evil, hear no evil, speak no evil','','answer2',0,0),(1724,'What breed of dog was &#039;Marley&#039; in the film &#039;Marley &amp; Me&#039;?','Shiba Inu','Dalmatian','Labrador Retriever','Golden Retriever','','answer3',0,0),(1725,'Who&#039;s the creator of Geometry Dash?','Adam Engels','Scott Cawthon','Andrew Spinks','Robert Topala','','answer4',0,0),(1726,'How many counties in the Republic of Ireland.','30','32','28','26','','answer4',0,0),(1727,'Which of these is NOT an Australian state or territory?','Alberta','New South Wales','Queensland','Victoria','','answer1',0,0),(1728,'Who is the writer of the game &quot;Half-Life&quot;?','Gabe Newell','Robin Walker','Marc Laidlaw','Chet Faliszek','','answer3',0,0),(1729,'What is the powerhouse of the cell?','Ribosome','Redbull','Nucleus','Mitochondria','','answer4',0,0),(1730,'Grant Gustin plays which superhero on the CW show of the same name?','Black Canary','The Arrow','The Flash','Daredevil','','answer3',0,0),(1731,'The logo for Snapchat is a Bell.','True','False','','','','answer2',0,0),(1732,'Complete the following analogy: Audi is to Volkswagen as Infiniti is to ?','Honda','Subaru','Hyundai','Nissan','','answer4',0,0),(1733,'How much does the &#039;AWP&#039; cost in Counter-Strike: Global Offensive?','$4650','$4750','$5000','$4500','','answer2',0,0),(1734,'In web design, what does CSS stand for?','Cascading Style Sheet','Computer Style Sheet','Corrective Style Sheet','Counter Strike: Source','','answer1',0,0),(1735,'How many Chaos Emeralds are there in the &quot;Sonic the Hedgehog&quot; universe?','6','7','8','14','','answer2',0,0),(1736,'Pac-Man was invented by the designer Toru Iwatani while he was eating pizza.','True','False','','','','answer1',0,0),(1737,'In the original script of &quot;The Matrix&quot;, the machines used humans as additional computing power instead of batteries.','False','True','','','','answer2',0,0),(1738,'Who voices Max Payne in the 2001 game &quot;Max Payne&quot;?','Troy Baker','Sam Lake','Hideo Kojima','James McCaffrey','','answer4',0,0),(1739,'What is the code name for the mobile operating system Android 7.0?','Ice Cream Sandwich','Jelly Bean','Marshmallow','Nougat','','answer4',0,0),(1740,'How many known living species of hyenas are there?','6','2','4','8','','answer3',0,0),(1741,'Which is not a type of neuron?','Motor Neuron','Perceptual Neuron','Interneuron','Sensory Neuron','','answer2',0,0),(1742,'Which Italian automobile manufacturer gained majority control of U.S. automobile manufacturer Chrysler in 2011?','Fiat','Ferrari','Maserati','Alfa Romeo','','answer1',0,0),(1743,'What is the French word for &quot;hat&quot;?','&amp;Eacute;charpe','Casque','Chapeau','Bonnet','','answer3',0,0),(1744,'Who is the protagonist of the videogame &quot;Dead Rising 2&quot;?','Katie Greene','Frank West','Chuck Greene','Nick Ramos','','answer3',0,0),(1745,'In &quot;Metal Gear Solid 2&quot;, you will see through the eyes of Psycho Mantis if you go first person during his boss fight.','True','False','','','','answer1',0,0),(1746,'Who created the 2011 Video Game &quot;Minecraft&quot;?','Carl Manneh','Jens Bergensten','Markus Persson','Daniel Rosenfeld','','answer3',0,0),(1747,'What was George Bizet&#039;s last opera?','Gris&amp;eacute;lidis','Don Rodrigue','Carmen','Les p&amp;ecirc;cheurs de perles','','answer3',0,0),(1748,'The 1939 movie &quot;The Wizard of Oz&quot; contained a horse that changed color, what material did they use to achieve this effect?','Paint','Dye','Gelatin','CGI Effect','','answer3',0,0),(1749,'When was Chapter 1 of the Source Engine mod &quot;Underhell&quot; released?','March 3rd, 2011','October 2nd, 2012','September 12th, 2013','September 1st, 2013','','answer4',0,0),(1750,'In the Netflix show, Stranger Things, what song would Will sing to himself as he was missing?','Should I Stay or Should I Go?','Africa','This Charming Man','Love Will Tear Us Apart','','answer1',0,0),(1751,'The names of Tom Nook&#039;s cousins in the Animal Crossing franchise are named &quot;Timmy&quot; and &quot;Jimmy&quot;.','True','False','','','','answer2',0,0),(1752,'In the periodic table, Potassium&#039;s symbol is the letter K.','False','True','','','','answer2',0,0),(1753,'Which of these characters was almost added into Super Smash Bros. Melee, but not included as the game was too far in development?','Pit','Meta Knight','Solid Snake','R.O.B.','','answer3',0,0),(1754,'.rs is the top-level domain for what country?','Russia','Romania','Rwanda','Serbia','','answer4',0,0),(1755,'When was the city of Rome, Italy founded?','697 BCE','753 BCE','902 BCE','524 BCE','','answer2',0,0),(1756,'Which of the following has Jennifer Taylor NOT voiced?','Sarah Kerrigan','Zoey','Princess Peach','Cortana','','answer1',0,0),(1757,'In &quot;The Amazing World of Gumball&quot;, who is the principal of Elmore Junior High?','Principal Small','Principal Simeon','Principal Brown','Principal Brawn','','answer3',0,0),(1758,'Which restaurant&#039;s mascot is a clown?','Whataburger','McDonald&#039;s','Sonic','Burger King','','answer2',0,0),(1759,'When was Gangnam Style uploaded to YouTube?','2012','2013','2011','2014','','answer1',0,0),(1760,'Satella in &quot;Re:Zero&quot; is the witch of what?','Sloth','Wrath','Envy','Pride','','answer3',0,0),(1761,'Which of the following is NOT a work done by Shakespeare?','Measure For Measure','Trial of Temperance','Titus Andronicus','Cymbeline','','answer2',0,0),(1762,'What game was used to advertise Steam?','Half-Life','Team Fortress','Half-Life 2','Counter-Strike 1.6','','answer4',0,0),(1763,'In &quot;Jurassic World&quot;, which company purchases InGen and creates Jurassic World?','International Genetics Incorporated','Biology Synthetics Technologies','Masrani Global Corporation','International Genetic Technologies','','answer3',0,0),(1764,'Rhinoplasty is a surgical procedure on what part of the human body?','Chin','Ears','Nose','Neck','','answer3',0,0),(1765,'The Tsar Bomba, the most powerful nuclear bomb ever tested, had a yield of 50 megatons but theoretically had a maximum yield of how much?','150 Megatons','200 Megatons','100 Megatons','75 Megatons','','answer3',0,0),(1766,'Arcade Fire&#039;s &#039;The Suburbs&#039; won the Album of the Year award in the 2011 Grammys.','False','True','','','','answer2',0,0),(1767,'Which city is the capital of Switzerland?','Wien','Z&amp;uuml;rich','Frankfurt','Bern','','answer4',0,0),(1768,'Scotch whisky and Drambuie make up which cocktail?','Rusty Nail','Screwdriver','Manhattan','Sex on the Beach','','answer1',0,0),(1769,'In what year was the famous 45 foot tall Hollywood sign first erected?','1933','1923','1913','1903','','answer2',0,0),(1770,'In &quot;Clash Royale&quot; what is Arena 4 called?','Barbarian Bowl','P.E.K.K.A&#039;s Playhouse','Royal Arena','Spell Valley','','answer2',0,0),(1771,'In the anime series &quot;Full Metal Alchemist&quot;, what do Alchemists consider the greatest taboo?','Preforming Without A Permit','Human Transmutation','Transmuting Lead Into Gold','Using Alchemy For Crime','','answer2',0,0),(1772,'Which eSports team came first place in The International Dota 2 Championship 2016?','Fnatic','Digital Chaos','Evil Geniuses','Wings Gaming','','answer4',0,0),(1773,'In Kingdom Hearts the Paopu fruit is said to intertwine the destinies for two people forever.','True','False','','','','answer1',0,0),(1774,'Which of the following Pok&amp;eacute;mon games released first?','Pok&amp;eacute;mon FireRed','Pok&amp;eacute;mon Crystal','Pok&amp;eacute;mon Platinum','Pok&amp;eacute;mon Black','','answer2',0,0),(1775,'The 1952 musical composition 4&#039;33&quot;, composed by prolific American composer John Cage, is mainly comprised of what sound?','Farts','Cricket chirps','People talking','Silence','','answer4',0,0),(1776,'What was the name of Ross&#039; pet monkey on &quot;Friends&quot;?','George','Champ','Jojo','Marcel','','answer4',0,0),(1777,'What animal is featured on the cover of English electronic music group The Prodigy&#039;s album, &quot;The Fat of the Land&quot;?','Elephant','Crab','Tiger','Fox','','answer2',0,0),(1778,'What was the final score of the Germany vs. Brazil 2014 FIFA World Cup match?','3 - 4','16 - 0','7 - 1','0 - 1','','answer3',0,0),(1779,'Ottawa is the capital of Canada.','True','False','','','','answer1',0,0),(1780,'In World of Warcraft lore, who organized the creation of the Paladins?','Uther the Lightbringer','Alonsus Faol','Sargeras, The Daemon Lord','Alexandros Mograine','','answer2',0,0),(1781,'In what year did the North American Video Game Crash occur?','1970','1993','1982','1983','','answer4',0,0),(1782,'Scientists can grow teeth from urine.','True','False','','','','answer1',0,0),(1783,'What Cartoon Network show aired its first episode on November 4th, 2013?','The Amazing World of Gumball','Regular Show','Adventure Time','Steven Universe','','answer4',0,0),(1784,'Ewan McGregor did not know the name of the second prequel film of Star Wars during and after filming.','False','True','','','','answer2',0,0),(1785,'Samuel L. Jackson had the words, &#039;Bad Motherf*cker&#039; in-scripted on his lightsaber during the filming of Star Wars.','False','True','','','','answer2',0,0),(1786,'In Mean Girls, who has breasts that tell when it&#039;s raining?','Cady Heron','Karen Smith','Gretchen Weiners','Janice Ian','','answer2',0,0),(1787,'Who was the Prime Minister of Japan when Japan declared war on the US?','Isoroku Yamamoto','Hideki Tojo','Michinomiya Hirohito','Fumimaro Konoe','','answer2',0,0),(1788,'What is the alphanumeric representation of the imaginary number?','n','x','e','i','','answer4',0,0),(1789,'In Cook, Serve, Delicious!, which food is NOT included in the game?','Pie','Hamburger','Lasagna','Shish Kabob','','answer1',0,0),(1790,'Rebecca Chambers does not appear in any Resident Evil except for the original Resident Evil and the Gamecube remake.','True','False','','','','answer2',0,0),(1791,'What is the full name of the protagonist from the SNES game Clock Tower?','Jennifer Maxwell','Jennifer Simpson','Jennifer Cartwright','Jennifer Barrows','','answer2',0,0),(1792,'The song &quot;Mystery Train&quot; was released by artist &quot;Little Junior&#039;s Blue Flames&quot; in 1953.','False','True','','','','answer2',0,0),(1793,'The name of the attack &quot;Kamehameha&quot; in Dragon Ball Z was named after a famous king of Hawaii.','False','True','','','','answer2',0,0),(1794,'Which day in &quot;Papers, Please&quot; does the man in red appear?','Day 17','Day 15','Day 23','Day 20','','answer3',0,0),(1795,'In World War ll, Great Britian used inflatable tanks on the ports of Great Britain to divert Hitler away from Normandy/D-day landing.','False','True','','','','answer2',0,0),(1796,'In the re-imagined science fiction show Battlestar Galactica, Cylons were created by man as cybernetic workers and soldiers.','True','False','','','','answer1',0,0),(1797,'Which of the following countries was not an axis power during World War II?','Italy','Soviet Union','Germany','Japan','','answer2',0,0),(1798,'What color is the &quot;Ex&quot; in FedEx Ground?','Orange','Green','Red','Light Blue','','answer2',1,0),(1799,'Without enchantments, which pickaxe in minecraft mines blocks the quickest.','Diamond','Iron','Obsidian','Golden','','answer4',0,0),(1800,'How many sides does a heptagon have?','8','5','6','7','','answer4',0,0),(1801,'Krusty is the guild master of which guild in &quot;Log Horizon&quot;?','West Wind Brigade','D. D. D','Silver Sword','Oceanic Systems (Marine Agency)','','answer2',0,0),(1802,'What is the Portuguese word for &quot;Brazil&quot;?','Bras&amp;iacute;l','Brazil','Brasilia','Brasil','','answer4',0,0),(1803,'Which portuguese island is soccer player Cristiano Ronaldo from?','Porto Santo','Terceira','Santa Maria','Madeira','','answer4',0,0),(1804,'In &quot;Hunter x Hunter&quot;, what are members in Killua&#039;s family known for being?','Hunters','Ninjas','Bandits','Assassins','','answer4',0,0),(1805,'In which year did &quot;Caravan Palace&quot; release their first album?','2004','2000','2015','2008','','answer4',0,0),(1806,'What is the name of the supercomputer located in the control room in &quot;Jurassic Park&quot;?','Cray X-MP','IBM Blue Gene/Q','Thinking Machines CM-5','Cray XK7','','answer3',0,0),(1807,'What was the punishment for Sysiphus&#039;s craftiness?','Tied to a boulder for eternity, being pecked by birds.','To fell a tree that regenerated after every axe swing.','Standing in a lake filled with water he could not drink.','Cursed to roll a boulder up a hill for eternity.','','answer4',0,0),(1808,'What country is not a part of Scandinavia?','Finland','Norway','Sweden','Denmark','','answer1',0,0),(1809,'In the movie &amp;ldquo;The Iron Giant,&amp;rdquo; this character is the protagonist.','Dean McCoppin','Annie Hughes','Hogarth Hughes','Kent Mansley','','answer3',0,0),(1810,'In &quot;The Sims&quot; series, the most members in a household you can have is 8.','False','True','','','','answer2',0,0),(1811,'What town was &quot;Springfield&quot; from &quot;The Simpsons&quot; originally named after?','Springfield, Missouri','Springfield, Massachusetts','Springfield, Illinois','Springfield, Oregon','','answer4',0,0),(1812,'Video streaming website YouTube was purchased in it&#039;s entirety by Facebook for US$1.65 billion in stock.','True','False','','','','answer2',0,0),(1813,'What is the name of the main character of the anime &quot;One-Punch Man&quot;?','King','Saitama','Sonic','Genos','','answer2',0,0),(1814,'Which movie contains the quote, &quot;Say hello to my little friend!&quot;?','Scarface','Heat','Goodfellas','Reservoir Dogs','','answer1',0,0),(1815,'How many members are there in the band Nirvana?','Five','Two','Four','Three','','answer4',0,0),(1816,'Who directed the 2015 movie &quot;The Revenant&quot;?','Wes Anderson','Alejandro G. I&amp;ntilde;&amp;aacute;rritu','David Fincher','Christopher Nolan','','answer2',0,0),(1817,'What are the four corner states of the US?','Kansas, Oklahoma, Arkansas, Louisiana','Oregon, Idaho, Nevada, Utah','South Dakota, Minnesota, Nebraska, Iowa','Utah, Colorado, Arizona, New Mexico','','answer4',0,0),(1818,'How many copies of the notorious E.T. game for the Atari 2600 did Atari end up selling?','Less than 250 Thousand','1 Million','250 Thousand','1.5 Million','','answer4',0,0),(1819,'What is the name of the Artificial Intelligence system in the 1983 film, &quot;WarGames&quot;?','Master Control Program','Self Evolving Thought Helix','War Operation Plan Response','West Campus Analog Computer','','answer3',0,0),(1820,'In the anime, &quot;Super Sonicio&quot;, what is Super Sonico&#039;s favorite food?','Pizza','Ice Cream','Chips','Macroons','','answer4',0,0),(1821,'In Portal 2, how did CEO of Aperture Science, Cave Johnson, presumably die?','Slipped in the shower','Moon Rock Poisoning','Accidentally sending a portal to the Moon','Asbestos Poisoning','','answer2',0,0),(1822,'In which Mario game did the Mega Mushroom make its debut?','Mario Party 4','Super Mario 3D World','Mario Kart Wii','New Super Mario Bros.','','answer1',0,0),(1823,'Which of the following countries does &quot;JoJo&#039;s Bizarre Adventure: Stardust Crusaders&quot; not take place in?','Egypt','India','Pakistan','Philippines','','answer4',0,0),(1824,'When was Minecraft first released to the public?','October 7th, 2011','November 18th, 2011','September 17th, 2009','May 17th, 2009','','answer4',0,0),(1825,'Sitting for more than three hours a day can cut two years off a person&#039;s life expectancy.','False','True','','','','answer2',0,0),(1826,'In JoJo&#039;s Bizarre Adventure, winch character is able to accelerate time?','Jotaro Kujo','Kujo Jotaro','Jolyne Cujoh','Enrico Pucci','','answer4',0,0),(1827,'Which country does the power metal band &quot;Sabaton&quot; originate from?','Finland','Sweden','Germany','United States','','answer2',0,0),(1828,'The main playable character of the 2015 RPG &quot;Undertale&quot; is a monster.','True','False','','','','answer2',0,0),(1829,'What was the real name of the Albanian national leader Skanderbeg?','Mirash Krasniki','Diturak Zhulati','Iskander Bejko','Gjergj Kastrioti','','answer4',0,0),(1830,'On the show &quot;Rick and Morty&quot;, in episode &quot;Total Rickall&quot;, who was a parasite?','Summer Smith','Pencilvester','Mr. Poopy Butthole','Beth Smith','','answer2',0,0),(1831,'Which of the following superheros did Wonder Woman NOT have a love interest in?','Steve Trevor','Green Arrow','Batman','Superman','','answer2',0,0),(1832,'In which game does a character say, &quot;Sometimes, I dream about cheese&quot;?','Half Life 2','Team Fortress 2','Serious Sam: The Second Encounter','Dark Souls','','answer1',0,0),(1833,'In the game &quot;Subnautica&quot;, a &quot;Spadefish&quot; will attack you.','False','True','','','','answer1',0,0),(1834,'In the video game &quot;Metal Gear Solid&quot;, what did Revolver Ocelot consider the greatest handgun ever made?','Colt Single Action Army','Colt M1892','Colt 1851 Navy Revolver','Colt Python','','answer1',0,0),(1835,'The French word for &quot;glass&quot; is &quot;glace&quot;.','False','True','','','','answer1',0,0),(1836,'In the video game Overwatch, which playable character is infamous for saying &quot;It&#039;s high noon.&quot;?','Soldier: 76','McCree','Hanzo','Pharah','','answer2',0,0),(1837,'In the &quot;Toaru Majutsu no Index&quot; anime, Touma Kamijou is a level 0 esper that has the ability to do what?','Teleport','Dispell any esper or magical powers','Make telepathic communications','Create electricity from his own body','','answer2',0,0),(1838,'The end credits sequence in Grand Theft Auto 5 is over half an hour long.','True','False','','','','answer1',0,0),(1839,'What is the official German name of the Swiss Federal Railways?','Bundesbahnen der Schweiz','Schweizerische Staatsbahnen','Schweizerische Nationalbahnen','Schweizerische Bundesbahnen','','answer4',0,0),(1840,'Japan has left-hand side traffic.','True','False','','','','answer1',0,0),(1841,'Who was the President of the United States during the signing of the Gadsden Purchase?','Andrew Johnson','Franklin Pierce','Abraham Lincoln','James Polk','','answer2',0,0),(1842,'Which show is known for the songs &quot;You are a Pirate&quot;, &quot;Cooking by the Book&quot; and &quot;We Are Number One&quot;?','Tom and Jerry','LazyTown','DuckTales','Sofia the First','','answer2',0,0),(1843,'On the 6th of June 2006, what was the name of the infamous glitch that occurred in the MMO RuneScape?','The Falador Massacre','TzHaar Massacre','Party-hat Duplication Glitch','Noclip glitch','','answer1',0,0),(1844,'Which of the following names is the &quot;Mega Man&quot; Franchise known as in Japan?','Paperman','Scissorsman','Mega Man','Rockman','','answer4',0,0),(1845,'Scatman John&#039;s real name was John Paul Larkin.','False','True','','','','answer2',0,0),(1846,'What name did Tom Hanks give to his volleyball companion in the film `Cast Away`?','Jones','Billy','Friday','Wilson','','answer4',0,0),(1847,'Pianist Fr&amp;eacute;d&amp;eacute;ric Chopin was a composer of which musical era?','Renaissance','Baroque','Classic','Romantic','','answer4',0,0),(1848,'Which river flows through the Scottish city of Glasgow?','Tay','Clyde','Tweed','Dee','','answer2',0,0),(1849,'What was the name of the WWF professional wrestling tag team made up of the wrestlers Ax and Smash?','The Dream Team','The Bushwhackers','The British Bulldogs','Demolition','','answer4',0,0),(1850,'The song &#039;Little April Shower&#039; features in which Disney cartoon film?','Bambi','Cinderella','Pinocchio','The Jungle Book','','answer1',0,0),(1851,'Which internet company began life as an online bookstore called &#039;Cadabra&#039;?','Amazon','eBay','Overstock','Shopify','','answer1',0,0),(1852,'Rapper Snoop Dogg&#039;s real name is &#039;Cordozar Calvin Broadus, Jr.&#039;.','True','False','','','','answer1',0,0),(1853,'Which franchise does the creature &quot;Slowpoke&quot; originate from?','Pokemon','Yugioh','Sonic The Hedgehog','Dragon Ball','','answer1',0,0),(1854,'Moore&#039;s law originally stated that the number of transistors on a microprocessor chip would double every...','Year','Eight Years','Four Years','Two Years','','answer1',0,0),(1855,'The Red Hot Chili Pepper song &quot;Give It Away&quot; is from what album?','Stadium Arcadium','By the Way','One Hot Minute','Blood Sugar Sex Magik','','answer4',0,0),(1856,'What French sculptor designed the Statue of Liberty?','Fr&amp;eacute;d&amp;eacute;ric Auguste Bartholdi','Auguste Rodin','Jean-L&amp;eacute;on G&amp;eacute;r&amp;ocirc;me','Henri Matisse','','answer1',0,0),(1857,'Who is the protagonist in the game &quot;The Walking Dead: Season One&quot;?','Rick Grimes','Clementine','Kenny','Lee Everett','','answer4',0,0),(1858,'The crown of the Empire State Building was originally built for what purpose?','Lightning Rod','Flag Pole','Antennae','Airship Dock','','answer4',0,0),(1859,'Eurobeat is primarily an Italian genre of music.','False','True','','','','answer2',0,0),(1860,'This movie contains the quote, &quot;Nobody puts Baby in a corner.&quot;','Ferris Bueller&#039;s Day Off','Dirty Dancing','Pretty in Pink','Three Men and a Baby','','answer2',0,0),(1861,'What is the name of Finnish DJ Darude&#039;s hit single released in October 1999?','Sirocco','Sandstorm','Khamsin','Dust Devil','','answer2',0,0),(1862,'What is the name of the comic about a young boy, and a tiger who is actually a stuffed animal?','Calvin and Hobbes','Albert and Pogo','Peanuts','Winnie the Pooh','','answer1',0,0),(1863,'What is the chemical formula for ammonia?','CH4','NH3','NO3','CO2','','answer2',0,0),(1864,'What is the name of the 2016 mixtape released by Venezuelan electronic producer Arca?','Xen','Sheep','&amp;&amp;&amp;&amp;&amp;&amp;','Entra&amp;ntilde;as','','answer4',1,0),(1865,'Who is the lead singer of Silverchair?','Daniel Johns','Ben Gillies','Chris Joannou','','','answer1',0,0),(1866,'What was the first Disney movie to use CGI?','The Black Cauldron','Toy Story','Fantasia','Tron','','answer1',0,0),(1867,'What event led to Liechenstein adding a crown to its flag?','Signing of the 1862 Constitution of Liechtenstein','Charles VI&#039;s decree in 1719','Coronation of Prince Johann I Joseph in 1805','The 1936 Olympics','','answer4',0,0),(1868,'In &quot;Portal 2&quot;, Cave Johnson started out Aperture Science as a shower curtain company.','True','False','','','','answer1',0,0),(1869,'The anime Attack on Titan was directed by Tetsurō Araki, the same person who directed the anime Highschool of the Dead.','True','False','','','','answer1',0,0),(1870,'10+10+25 = ?','44','45','46','5','','answer2',0,0),(1871,'Kanye West at 2009 VMA&#039;s interrupted which celebrity?','Beyonce','Taylor Swift','MF DOOM','Beck','','answer2',0,0),(1872,'Which of the following plastic is commonly used for window frames, gutters and drain pipes?','Polystyrene (PS)','Polyvinylchloride (PVC)','Polypropylene (PP)','Polyethylene (PE)','','answer2',0,0),(1873,'Who is the author of the manga series &quot;Astro Boy&quot;?','Takao Saito','Mitsuteri Yokoyama','Yoshihiro Tatsumi','Osamu Tezuka','','answer4',0,0),(1874,'What is Canada&#039;s smallest province?','New Brunswick','Nova Scotia','Prince Edward Island','Yukon','','answer3',0,0),(1875,'When was Nintendo&#039;s Virtual Boy released?','1997','1989','1995','1992','','answer3',0,0),(1876,'What was Daft Punk&#039;s first studio album?','Discovery','Homework','Random Access Memories','Human After All','','answer2',0,0),(1877,'How many trophies are there in &quot;Super Smash Bros. for Nintendo 3DS&quot;?','1155','1360','685','716','','answer3',0,0),(1878,'The 2016 Disney animated film &#039;Moana&#039; is based on which culture?','Native American','Polynesian','Nordic','Japanese','','answer2',0,0),(1879,'Donald Trump won the popular vote in the 2016 United States presidential election.','False','True','','','','answer1',0,0),(1880,'What is the name of Sherlock Holmes&#039;s brother?','Martin Holmes','Mycroft Holmes','Mederi Holmes','Herbie Hancock Holmes','','answer2',0,0),(1881,'What year was Min Yoongi from South Korea boy band &quot;BTS&quot; born in?','1992','1993','1995','1994','','answer2',0,0),(1882,'What is the name of the island that &quot;Jurassic Park&quot; is built on?','Isla Muerta','Isla Nublar','Isla Sorna','Isla Pena','','answer2',0,0),(1883,'Which of the following movies was not based on a novel by Stephen King?','Carrie','Misery','The Thing','The Green Mile','','answer3',0,0),(1884,'Who played Stan&#039;s dog in the South Park episode &quot;Big Gay Al&#039;s Big Gay Boat Ride&quot;?','Matt Stone','Robert Smith','Jay Leno','George Clooney','','answer4',0,0),(1885,'What was the name of the sea witch in the 1989 Disney film &quot;The Little Mermaid&quot;?','Maleficent','Ursula','Madam Mim','Lady Tremaine','','answer2',0,0),(1886,'What is the area of a circle with a diameter of 20 inches if &amp;pi;= 3.1415?','1256.6 Inches','380.1215 Inches','314.15 Inches','3141.5 Inches','','answer3',0,0),(1887,'French is an official language in Canada.','True','False','','','','answer1',0,0),(1888,'At the start of a standard game of the Monopoly, if you throw a double six, which square would you land on?','Chance','Water Works','Community Chest','Electric Company','','answer4',0,0),(1889,'In what year was the original Sonic the Hedgehog game released?','1995','1991','1989','1993','','answer2',0,0),(1890,'Israel is 7 hours ahead of New York.','False','True','','','','answer2',0,0),(1891,'Which of the following European languages is classified as a &quot;language isolate?&quot;','Hungarian','Basque','Maltese','Galician','','answer2',0,0),(1892,'Which psychological term refers to the stress of holding contrasting beliefs?','Cognitive Dissonance','Split-Brain','Flip-Flop Syndrome','Blind Sight','','answer1',0,0),(1893,'In Portal 2, the iconic character GLaDOS is turned into:','A tomato','A lemon','An apple','A potato','','answer4',0,0),(1894,'The animated film &quot;Spirited Away&quot; won the Academy Award for Best Animated Feature at the 75th Academy Awards in 2003.','True','False','','','','answer1',1,0),(1895,'&quot;Half-Life 2&quot; runs on the Source Engine.','False','True','','','','answer2',0,0),(1896,'How many colors are there in a rainbow?','10','7','9','8','','answer2',0,0),(1897,'The 2014 movie &quot;The Raid 2: Berandal&quot; was mainly filmed in which Asian country?','Malaysia','Indonesia','Brunei','Thailand','','answer2',0,0),(1898,'Which of these movies did Jeff Bridges not star in?','The Giver','Tron: Legacy','True Grit','The Hateful Eight','','answer4',0,0),(1899,'Which of these &quot;Worms&quot; games featured 3D gameplay?','Worms W.M.D','Worms Reloaded','Worms 4: Mayhem','Worms: Open Warfare 2','','answer3',0,0),(1900,'Skateboarding will be included in the 2020 Summer Olympics in Tokyo.','False','True','','','','answer2',0,0),(1901,'Tennis was once known as Racquetball.','False','True','','','','answer1',0,0),(1902,'The historical city Timbuktu is located in which West African country?','Niger','Burkina Faso','Mali','Senegal','','answer3',0,0),(1903,'Denmark has a monarch.','False','True','','','','answer2',0,0),(1904,'On average, at least 1 person is killed by a drunk driver in the United States every hour.','True','False','','','','answer1',0,0),(1905,'Who is the founder of &quot;The Lego Group&quot;?','Kirstine Christiansen','Ole Kirk Christiansen','Jens Niels Christiansen','Gerhardt Kirk Christiansen','','answer2',0,0),(1906,'Who is the protagonist in Dead Rising (2006)?','Jason Grey','John North','Chuck Greene','Frank West','','answer4',0,0),(1907,'In the &quot;Half-Life&quot; series, &quot;H.E.V&quot; stands for &quot;Hazardous Evasiveness Vest&quot;','True','False','','','','answer2',1,0),(1908,'What is the relationship between the band members of American rock band King of Leon?','Childhood friends','Brothers &amp; cousins','Former classmates','Fraternity house members','','answer2',0,0),(1909,'In vanilla Minecraft, which of the following cannot be made into a block?','String','Wheat','Charcoal','Coal','','answer3',0,0),(1910,'The name of Junko Enoshima&#039;s imposter at the beginning of Danganronpa: Trigger Happy Havoc is?','Komaru Naegi','Mukuro Ikusaba','Ryota Mitarai','Ultimate Imposter','','answer2',0,0),(1911,'Which moon is the only satellite in our solar system to possess a dense atmosphere?','Europa','Titan','Miranda','Callisto','','answer2',0,0),(1912,'What nationality was sultan Saladin?','Syrian','Egyptian','Arab','Kurdish','','answer4',0,0),(1913,'In DuckTales, what is the name of the city where all the main characters live?','Duckwing','Tailspin','Duckburg','Wingford','','answer3',0,0),(1914,'Which one of the following is NOT a sub-company of the Volkswagen Group?','Opel','Bugatti','Bentley','Porsche','','answer1',0,0),(1915,'The Hundred Years&#039; War was fought for more than a hundred years.','True','False','','','','answer1',0,0),(1916,'&quot;Yes, America Can!&quot; was this United States politician&#039;s de facto campaign slogan in 2004.','George W. Bush','John Kerry','Barack Obama','Al Gore','','answer1',0,0),(1917,'In &quot;Undertale&quot;, the main character of the game is Sans.','True','False','','','','answer2',0,0),(1918,'Cats have whiskers under their legs.','True','False','','','','answer1',0,0),(1919,'David Baszucki was a co-founder of ROBLOX Corporation.','False','True','','','','answer2',0,0),(1920,'The LS3 engine is how many cubic inches?','346','364','427','376','','answer4',0,0),(1921,'What city  has the busiest airport in the world?','Chicago,Illinois ISA','Atlanta, Georgia USA','London, England','Tokyo,Japan','','answer2',0,0),(1922,'In what year did Kentucky become the 15th state to join the union?','1792','1788','1798','1782','','answer1',0,0),(1923,'Lady Gaga&#039;s real name is Stefani Joanne Angelina Germanotta.','False','True','','','','answer2',0,0),(1924,'How many seasons did the Sci-Fi television show &quot;Stargate Universe&quot; have?','5','3','2','10','','answer3',0,0),(1925,'In the game &quot;Red Dead Redemption&quot;, what is the name of John Marston&#039;s dog?','Rutus','Rufus','Finn','Apollo','','answer2',0,0),(1926,'In a complete graph G, which has 12 vertices, how many edges are there?','67','34','11','66','','answer4',0,0),(1927,'What was the character Kirby originally going to be named?','Prince Puff','Waddle Dee','Popopo','Dedede','','answer3',0,0),(1928,'In the year 1900, what were the most popular first names given to boy and girl babies born in the United States?','Joseph and Catherine','George and Anne','William and Elizabeth','John and Mary','','answer4',0,0),(1929,'Which German field marshal was known as the `Desert Fox`?','Ernst Busch','Wilhelm List','Wolfram Freiherr von Richthofen','Erwin Rommel','','answer4',0,0),(1930,'Leonardo DiCaprio won an Oscar for Best Actor in 2004&#039;s &quot;The Aviator&quot;.','True','False','','','','answer2',0,0),(1931,'Whose signature guitar technique is called the &quot;windmill&quot;?','Pete Townshend','Eddie Van Halen','Jimmy Page','Jimi Hendrix','','answer1',0,0),(1932,'What is the name of James Dean&#039;s character in the 1955 movie &quot;Rebel Without a Cause&quot;?','Jim Kane','Frank Stark','Ned Stark','Jim Stark','','answer4',0,0),(1933,'Which Beatle led the way across the zebra crossing on the Abbey Road album cover?','Ringo','Paul','John','George','','answer3',0,0),(1934,'The original mascot of the popular Nintendo game, &quot;Splatoon&quot; was going to be...','Mario','Octolings','Inklings','Zelda','','answer1',0,0),(1935,'In the comic book &quot;Archie&quot;, Betty is friends with Veronica because she is rich.','True','False','','','','answer2',0,0),(1936,'What&#039;s the square root of 49?','7','12','9','4','','answer1',0,0),(1937,'Which of the following language families is the most controversial amongst modern linguists?','Altaic','Sino-Tibetan','Dravidian','Indo-European','','answer1',0,0),(1938,'What does TIE stand for in reference to the TIE Fighter in &quot;Star Wars&quot;?','Twin Iron Engine','Twin Ion Engine','Twin Intercepter Engine','Twin Inception Engine','','answer2',0,0),(1939,'What was the first commerically available computer processor?','AMD AM386','Intel 486SX','TMS 1000','Intel 4004','','answer4',0,0),(1940,'In 2016, the United Kingdom voted to stay in the EU.','True','False','','','','answer2',0,0),(1941,'Studio Ghibli is a Japanese animation studio responsible for the films &quot;Wolf Children&quot; and &quot;The Boy and the Beast&quot;.','True','False','','','','answer2',0,0),(1942,'Which Queen song was covered by Brittany Murphy in the 2006 film &quot;Happy Feet&quot;?','Under Pressure','Somebody to Love','Bohemian Rhapsody','Flash','','answer2',0,0),(1943,'The word &quot;news&quot; originates from the first letters of the 4 main directions on a compass (North, East, West, South).','True','False','','','','answer2',0,0),(1944,'What was the first James Bond film?','Thunderball','Dr. No','From Russia With Love','Goldfinger','','answer2',0,0),(1945,'When was &quot;The Gadget&quot;, the first nuclear device to be detonated, tested?','June 22, 1945','July 16, 1945','April 5, 1945','August 6, 1945','','answer2',0,0),(1946,'In the 2002 video game &quot;Kingdom Hearts&quot;, how many playable worlds were there?','11','16','14','13','','answer3',0,0),(1947,'What special item did the creators of Cards Against Humanity ship for their Black Friday pack?','Cat Urine','A Racist Toy','Bull Feces','A Card Expansion','','answer3',0,0),(1948,'What is the scientific name of the Budgerigar?','Pyrrhura molinae','Ara macao','Melopsittacus undulatus','Nymphicus hollandicus','','answer3',0,0),(1949,'The stop motion comedy show &quot;Robot Chicken&quot; was created by which of the following?','Seth Rollins','Seth Rogen','Seth MacFarlane','Seth Green','','answer4',0,0),(1950,'Who is the main protagonist in, the 1985 film, Back to the Future?','George McFly','Emmett &quot;Doc&quot; Brown','Marty McFly','Biff Tannen','','answer3',0,0),(1951,'In the game Nuclear Throne, what character is only usable in a play through with Melting?','Skeleton','Frog','Horror','Plant','','answer1',0,0),(1952,'In Monster Hunter Generations, which of the following monsters are a part of the &quot;Fated Four&quot;?','Gore Magala','Malfestio','Astalos','Arzuros','','answer3',0,0),(1953,'The Windows 7 operating system has six main editions.','False','True','','','','answer2',0,0),(1954,'In 2016, who won the Formula 1 World Constructor&#039;s Championship for the third time in a row?','Red Bull Racing Renault','Mercedes-AMG Petronas','McLaren Honda','Scuderia Ferrari','','answer2',0,0),(1955,'What level do you have to be to get a service medal on CS:GO?','50','40','30','20','','answer2',0,0),(1956,'The Konami Code is known as Up, Up, Down, Down, Left, Right, Right, Left, B, A, Start.','True','False','','','','answer2',0,0),(1957,'What is Everest&#039;s favorite food in the Nickelodeon/Nick Jr. series &quot;PAW Patrol&quot;?','Liver','Steak','Caribou','Chicken','','answer1',0,0),(1958,'In the game Pok&amp;eacute;mon Conquest, which warlord is able to bond with Zekrom and a shiny Rayquazza?','The Player','Oichi','Hideyoshi','Nobunaga','','answer4',0,0),(1959,'Which of these stages is not playable in &quot;Super Smash Bros. for Wii U&quot;?','75m','Miiverse','Fountain of Dreams','Bridge of Eldin','','answer3',0,0),(1960,'What is the name of the island that &quot;Jurassic Park&quot; is built on?','Isla Sorna','Isla Nublar','Isla Pena','Isla Muerta','','answer2',0,0),(1961,'What is the make and model of the tour vehicles in &quot;Jurassic Park&quot;?','Mercedes M-Class','1992 Toyota Land Cruiser','1992 Jeep Wrangler YJ Sahar','1992 Ford Explorer XLT','','answer2',0,0),(1962,'What name did &quot;Mario&quot;, from &quot;Super Mario Brothers&quot;, originally have?','Mr. Video','Ossan','Mario','Jumpman','','answer2',0,0),(1963,'What event marked the start of World War II?','Battle of Britain (1940)','Invasion of Russia (1942)','Invasion of Normandy (1944)','Invasion of Poland (1939)','','answer4',0,0),(1964,'What type of animal is a natterjack?','Insect','Toad','Fish','Bird','','answer2',0,0),(1965,'What is the world&#039;s most expensive spice by weight?','Saffron','Cinnamon','Vanilla','Cardamom','','answer1',0,0),(1966,'What is the fastest  land animal?','Pronghorn Antelope','Lion','Cheetah','Thomson&amp;rsquo;s Gazelle','','answer3',0,0),(1967,'Who had a US and UK number 1 hit in 1962 with the instrumental, &#039;Telstar&#039;?','The Spotnicks','The Tornados','The Tremeloes','The Ventures','','answer2',0,0),(1968,'Which rap group released the album &quot;Straight Outta Compton&quot;?','Run-D.M.C.','N.W.A','Beastie Boys','Wu-Tang Clan','','answer2',0,0),(1969,'Soulja Boy&#039;s &#039;Crank That&#039; won a Grammy for Best Rap Song in 2007.','True','False','','','','answer2',0,0),(1970,'What is the largest organ of the human body?','Heart','Liver','Skin','large Intestine','','answer3',0,0),(1971,'Where does the Mac part of the name Fleetwood Mac come from?','John McVie','David Tennant','Mac McAnally','Christine McVie','','answer1',0,0),(1972,'Which country has the international vehicle registration letter &#039;A&#039;?','Afghanistan','Armenia','Austria','Australia','','answer3',0,0),(1973,'What colour is the circle on the Japanese flag?','Red','Black','White','Yellow','','answer1',0,0),(1974,'&quot;I disapprove of what you say, but I will defend to the death your right to say it&quot; is a quote from French philosopher Voltaire.','False','True','','','','answer1',0,0),(1975,'Who is the main character in &quot;The Stanley Parable&quot;?','The Boss','The Narrator','The Adventure Line','Stanley','','answer4',0,0),(1976,'When did the last episode of &quot;Futurama&quot; air?','December 25, 2010','March 28, 1999','On Going','September 4, 2013','','answer4',0,0),(1977,'Pok&amp;eacute;mon Go is a location-based augmented reality game developed and published by which company?','Zynga','Niantic','Supercell','Rovio','','answer2',0,0),(1978,'What is the name of the very first video uploaded to YouTube?','Me at the zoo','carrie rides a truck','Her new puppy from great grandpa vern.','tribute','','answer1',0,0),(1979,'What was the name of the planet in &quot;Aliens&quot;?','FR-838','Weyland Yutani Corporation Base','LV-426','DI-621','','answer3',0,0),(1980,'What is the name of the Artificial Intelligence system in the 1983 film, &quot;WarGames&quot;?','Self Evolving Thought Helix','Master Control Program','War Operation Plan Response','West Campus Analog Computer','','answer3',0,0),(1981,'The communication protocol NFC stands for Near-Field Control.','False','True','','','','answer1',0,0),(1982,'Which Death Grips album is the only one to feature a band member?','No Love Deep Web','The Powers That B','Bottomless Pit','The Money Store','','answer1',0,0),(1983,'In &quot;Team Fortress 2&quot;, the &quot;Bill&#039;s Hat&quot; is a reference to the game &quot;Dota 2&quot;.','True','False','','','','answer2',0,0),(1984,'Which car brand does NOT belong to General Motors?','Chevrolet','Cadillac','Ford','Buick','','answer3',0,0),(1985,'In the Homestuck Series, what is the alternate name for the Kingdom of Lights?','No Name','Yellow Moon','Golden City','Prospit','','answer4',0,0),(1986,'The United States of America declared their independence from the British Empire on July 4th, 1776.','True','False','','','','answer1',0,0),(1987,'In Jeff Wayne&#039;s Musical Version of War of the Worlds, the chances of anything coming from Mars are...','A million to one','A billion to one','A trillion to one','A hundred to one','','answer1',0,0),(1988,'What is the real name of Canadian electronic music producer deadmau5?','Thomas Wesley Pentz','Adam Richard Wiles','Joel Zimmerman','Sonny Moore','','answer3',0,0),(1989,'The name of Junko Enoshima&#039;s imposter at the beginning of Danganronpa: Trigger Happy Havoc is?','Ryota Mitarai','Ultimate Imposter','Komaru Naegi','Mukuro Ikusaba','','answer4',0,0),(1990,'How many normal endings are there in Cry Of Fear&#039;s campaign mode?','4','5','6','3','','answer1',0,0),(1991,'According to the American rapper Nelly, what should you do when its hot in here?','Go skinny dipping','Drink some water','Take a cool shower','Take off all your clothes','','answer4',0,0),(1992,'What is the standard atomic weight of a Plutonium nucleus?','128','244','481','94','','answer2',0,0),(1993,'In the game &quot;Persona 4&quot;, what is the canonical name of the protagonist?','Tunki Sunada','Yu Narukami','Chino Mashido','Masaki Narinaka','','answer2',0,0),(1994,'Which class of animals are newts members of?','Reptiles','Mammals','Amphibian','Fish','','answer3',0,0),(1995,'Which of the following bands is Tom DeLonge not a part of?','+44','Box Car Racer','Blink-182','Angels &amp; Airwaves','','answer1',0,0),(1996,'How many voice channels does the Super Nintendo Entertainment System support?','10','6','12','8','','answer4',0,0),(1997,'Which of these countries is the smallest by population?','Norway','Slovakia','Finland','Hong Kong','','answer1',0,0),(1998,'In &quot;Breaking Bad&quot;, Walter White is a high school teacher diagnosed with which form of cancer?','Testicular Cancer','Prostate Cancer','Lung Cancer','Brain Cancer','','answer3',0,0),(1999,'How many copies have Metallica album &quot;Metallica&quot; (A.K.A The Black Album) sold worldwide (in Millions of Copies)?','25.5','19.5','20.5','22.5','','answer3',0,0),(2000,'The heroine of &quot;Humanity Has Declined&quot; is a mediator between humans and what?','The Earth','Fairies','Animals','Elves','','answer2',0,0),(2001,'In the comics, which Sonic character took command of the Dark Legion after Luger&#039;s assassination?','Dimitri','Lien-Da','Remington','Kragok','','answer2',0,0),(2002,'The United States Army Air Corps became the United States Air Force on what date?','October 27, 1945','November 08, 1944','December 14, 1946','September 18, 1947','','answer4',0,0),(2003,'In &quot;Overwatch&quot;, how much health does Roadhog&#039;s &quot;Take a Breather&quot; ability recover?','400','300','200','100','','answer2',0,0),(2004,'The Axolotl is an amphibian that can spend its whole life in a larval state.','False','True','','','','answer2',0,0),(2005,'What is the world&#039;s most expensive spice by weight?','Saffron','Vanilla','Cinnamon','Cardamom','','answer1',0,0),(2006,'During what war did the &quot;Cuban Missile Crisis&quot; occur?','World War I','Revolutionary War','World War II','Cold War','','answer4',0,0),(2007,'What is the only country in the world with a flag that doesn&#039;t have four right angles?','Panama','Egypt','Nepal','Angola','','answer3',0,0),(2008,'Which of these is NOT a city in Saudi Arabia?','Riyadh','Medina','Dubai','Mecca','','answer3',0,0),(2009,'The Internet Meme &quot;All your base are belong to us&quot; is based on the poorly translated English Version of which Video Game?','F-Zero','Zero Wing','Wing Commander','Star Wars: X-Wing','','answer2',0,0),(2010,'What does the &#039;S&#039; stand for in the abbreviation SIM, as in SIM card?','Single','Solid','Subscriber','Secure','','answer3',0,0),(2011,'Which country has the international vehicle registration letter &#039;A&#039;?','Armenia','Austria','Afghanistan','Australia','','answer2',0,0),(2012,'Which Japanese company is the world&#039;s largest manufacturer of motorcycles?','Yamaha','Suzuki','Kawasaki','Honda','','answer4',0,0),(2013,'What was the world&#039;s first video game?','Pong','Spacewar!','Tennis for Two','Space Travel','','answer3',0,0),(2014,'The 2010 film &quot;The Social Network&quot; is a biographical drama film about MySpace founder Tom Anderson.','False','True','','','','answer1',0,0),(2015,'What is the capital of Jamaica?','Kano','Rio de Janeiro','Dar es Salaam','Kingston','','answer4',0,0),(2016,'Which of the following ancient peoples was NOT classified as Hellenic (Greek)?','Achaeans','Illyrians','Dorians','Ionians','','answer2',0,0),(2017,'What did the name of the Tor Anonymity Network orignially stand for?','The Orange Router','The Onion Router','The Only Router','The Ominous Router','','answer2',0,0),(2018,'Excluding their instructor, how many members of Class VII are there in the game &quot;Legend of Heroes: Trails of Cold Steel&quot;?','9','6','3','10','','answer1',0,0),(2019,'Why was the character Trevor Philips discharged from the Air Force?','Injuries','Disease','Danger to Others','Mental Health Issues','','answer4',0,0),(2020,'What is the domain name for the country Tuvalu?','.tv','.tu','.tt','.tl','','answer1',0,0),(2021,'Which city did Anger berate for ruining pizza in &quot;Inside Out&quot;?','California','San Francisco','Washington','Minnesota','','answer2',0,0),(2022,'Where are the Nazca Lines located?','Ecuador','Brazil','Colombia','Peru','','answer4',0,0),(2023,'The term &quot;Spam&quot; came before the food product &quot;Spam&quot;.','False','True','','','','answer1',0,0),(2024,'In what Half-Life expansion can you find Gordon&#039;s picture in an &quot;Employee of the Month&quot; picture frame?','Half-Life: Opposing Force','They Hunger','Half-Life: Decay','Half-Life: Blue Shift','','answer1',0,0),(2025,'Bohdan Khmelnytsky was which of the following?','Prince of Wallachia','Grand Prince of Novgorod','General Secretary of the Communist Party of the USSR','Leader of the Ukrainian Cossacks','','answer4',0,0),(2026,'The name of the villian in the 2015 Russian-American Sci-Fi Movie &quot;Hardcore Henry&quot; is...','Estelle','Henry','Jimmy','Akan','','answer4',0,0),(2027,'In what Homestuck Update was [S] Game Over released?','October 25th, 2014','April 13th, 2009','August 28th, 2003','April 8th, 2012','','answer1',0,0),(2028,'Which Beatles album does NOT feature any of the band members on it&#039;s cover?','The Beatles (White Album)','Abbey Road','Rubber Soul','Magical Mystery Tour','','answer1',0,0),(2029,'Who is the leader of Team Mystic in Pok&amp;eacute;mon Go?','Blanche','Spark','Willow','Candela','','answer1',0,0),(2030,'What was the title of Sakamoto Kyu&#039;s song &quot;Ue o Muite Arukou&quot; (I Look Up As I Walk) changed to in the United States?','Oden','Takoyaki','Sukiyaki','Sushi','','answer3',0,0),(2031,'What was the transfer of disease, crops, and people across the Atlantic shortly after the discovery of the Americas called?','Transatlantic Slave Trade','Triangle Trade','The Silk Road','The Columbian Exchange','','answer4',0,0),(2032,'One of Donald Trump&#039;s 2016 Presidential Campaign promises was to build a border wall between the United States and Mexico.','True','False','','','','answer1',0,0),(2033,'In &quot;The Big Bang Theory&quot;, what is Howard Wolowitz&#039;s nickname in World of Warcraft?','Priya','Sheldor','Wolowizard','Rajesh','','answer3',0,0),(2034,'Who patented a steam engine that produced continuous rotary motion?','Nikola Tesla','Albert Einstein','Alessandro Volta','James Watt','','answer4',0,0),(2035,'Which operating system was released first?','OS/2','Windows','Mac OS','Linux','','answer3',0,0),(2036,'The General Motors EV1 was the first street-legal production electric vehicle.','False','True','','','','answer1',0,0),(2037,'Which of the following Japanese islands is the biggest?','Hokkaido','Shikoku','Honshu','Kyushu','','answer3',0,0),(2038,'One of Barack Obama&#039;s United States presidential campaign slogan&#039;s was &quot;Yes We Can&quot;.','False','True','','','','answer2',0,0),(2039,'Which of the following characters from the game &quot;Overwatch&quot; was revealed to be homosexual in December of 2016?','Tracer','Sombra','Widowmaker','Symmetra','','answer1',0,0),(2040,'Who was the 45th President of the United States?','Donald Trump','Bill Clinton','Barack Obama','George Bush','','answer1',0,0),(2041,'Who is the director of the 1991 film &quot;Silence of the Lambs&quot;?','Frank Darabont','Jonathan Demme','Michael Bay','Stanley Kubrick','','answer2',0,0),(2042,'In &quot;Earthbound&quot;, how does one enter &quot;Master Belch&#039;s&quot; factory?','Enter the password &quot;Mr Saturn Drools&quot;','Enter the password &quot;Fly Honey&quot;','Enter the password &quot;Master Belch Rules&quot;','Wait 3 Minutes','','answer4',0,0),(2043,'In which location does Dark Sun Gwyndolin reside in &quot;Dark Souls&quot;?','Anor Londo','Firelink Shrine','Kiln of the first flame','Blighttown','','answer1',0,0),(2044,'What does the Latin phrase &quot;Veni, vidi, vici&quot; translate into English?','Past, present, and future','I came, I saw, I conquered','Life, liberty, and happiness','See no evil, hear no evil, speak no evil','','answer2',0,0),(2045,'Which of these songs is not on the &quot;untitled&quot; album by Led Zeppelin?','Stairway to Heaven','Black Dog','Rock and Roll','Celebration Day','','answer4',0,0),(2046,'Who wrote the &quot;A Song of Ice And Fire&quot; fantasy novel series?','George Eliot','George Lucas','George R. R. Martin','George Orwell','','answer3',0,0),(2047,'What&#039;s the best selling video game to date?','Super Mario Bros','Tetris','Wii Sports','Minecraft','','answer2',0,0),(2048,'Who starred in the film 1973 movie &quot;Enter The Dragon&quot;?','Jackie Chan','Bruce Lee','Yun-Fat Chow','Jet Li','','answer2',0,0),(2049,'The moons, Miranda, Ariel, Umbriel, Titania and Oberon orbit which planet?','Uranus','Jupiter','Venus','Neptune','','answer1',0,0),(2050,'What Russian automatic gas-operated assault rifle was developed in the Soviet Union in 1947, and is still popularly used today?','RPK','AK-47','M16','MG 42','','answer2',0,0),(2051,'The movie &quot;The Nightmare before Christmas&quot; was all done with physical objects.','False','True','','','','answer2',0,0),(2052,'On a dartboard, what number is directly opposite No. 1?','12','20','15','19','','answer4',0,0),(2053,'Who had a 1981 hit with the song &quot;Japanese Boy&quot;?','Sandra','Aneka','Madonna','Toyah','','answer2',0,0),(2054,'Which famous world leader is famed for the saying, &quot;Let them eat cake&quot;, yet is rumored that he/she never said it at all?','Marie Antoinette','Czar Nicholas II','Henry VIII','Elizabeth I','','answer1',0,0),(2055,'What is the most preferred image format used for logos in the Wikimedia database?','.png','.jpeg','.svg','.gif','','answer3',0,0),(2056,'When did the last episode of &quot;Futurama&quot; air?','December 25, 2010','September 4, 2013','March 28, 1999','On Going','','answer2',0,0),(2057,'What is the main theme song of &quot;Sonic Adventure 2&quot;?','His World','Can You Feel the Sunshine?','Live and Learn','Open Your Heart','','answer3',0,0),(2058,'The United States Department of Homeland Security was formed in response to the September 11th attacks.','False','True','','','','answer2',0,0),(2059,'Which of these actors/actresses is NOT a part of the cast for the 2016 movie &quot;Suicide Squad&quot;?','Scarlett Johansson','Margot Robbie','Jared Leto','Will Smith','','answer1',0,0),(2060,'In Greek Mythology, who was the daughter of King Minos?','Ariadne','Ariel','Athena','Alana','','answer1',0,0),(2061,'The main protagonist of the fifth part of JoJo&#039;s Bizarre Adventure is which of the following?','Guido Mista','Jonathan Joestar','Joey JoJo','Giorno Giovanna','','answer4',0,0),(2062,'What&#039;s Harry Potter&#039;s dad&#039;s name?','Joey Potter','Hairy Potter Sr.','James Potter','Frank Potter','','answer3',0,0),(2063,'What is the Gray Wolf&#039;s scientific name?','Canis Aureus','Canis Lupus','Canis Lupus Lycaon','Canis Latrans','','answer2',0,0),(2064,'In &quot;Future Diary&quot;, what is the name of Yuno Gasai&#039;s Phone Diary?','Justice Diary','Murder Diary','Escape Diary','Yukiteru Diary','','answer4',0,0),(2065,'Who invented the &quot;Flying Shuttle&quot; in 1738; one of the key developments in the industrialization of weaving?','John Deere','James Hargreaves','Richard Arkwright','John Kay','','answer4',0,0),(2066,'Who wrote the lyrics for Leonard Bernstein&#039;s 1957 Brodway musical West Side Story?','Himself','Stephen Sondheim','Oscar Hammerstein','Richard Rodgers','','answer2',0,0),(2067,'In the anime Black Butler, who is betrothed to be married to Ciel Phantomhive?','Elizabeth Midford','Rachel Phantomhive','Angelina Dalles','Alexis Leon Midford','','answer1',0,0),(2068,'In the Portal series of games, who was the founder of Aperture Science?','Cave Johnson','Wallace Breen','GLaDOs','Gordon Freeman','','answer1',0,0),(2069,'In 2016, who won the Formula 1 World Constructor&#039;s Championship for the third time in a row?','McLaren Honda','Red Bull Racing Renault','Mercedes-AMG Petronas','Scuderia Ferrari','','answer3',0,0),(2070,'The New York Times slogan is, &amp;ldquo;All the News That&amp;rsquo;s Fit to&amp;hellip;&amp;rdquo;','Digest','Read','Look','Print','','answer4',0,0),(2071,'Brandon Routh plays the titular character in the movie &quot;John Wick&quot;.','True','False','','','','answer2',0,0),(2072,'George Lucas directed the entire original Star Wars trilogy.','False','True','','','','answer1',0,0),(2073,'When does &quot;Rogue One: A Star Wars Story&quot; take place chronologically in the series?','After Episode 6','Before Episode 1','Between Episode 3 and 4','Between Episode 4 and 5','','answer3',0,0),(2074,'What was the code name for the Allied invasion of Southern France on August 15th, 1944?','Operation Market Garden','Operation Dragoon','Operation Torch','Operation Overlord','','answer2',0,0),(2075,'What was Mountain Dew&#039;s original slogan?','Yahoo! Mountain Dew... It&#039;ll tickle your innards!','Do The Dew','Give Me A Dew','Get&#039; that barefoot feelin&#039; drinkin&#039; Mountain Dew','','answer1',0,0),(2076,'In the video game &quot;Transistor&quot;, &quot;Red&quot; is the name of the main character.','False','True','','','','answer2',0,0),(2077,'In the television show &quot;Lazy Town&quot;, who is the actor of Robbie Rotten?','Magn&amp;uacute;s Scheving','Adam Sandler','Stephen Carl','Stef&amp;aacute;n Stef&amp;aacute;nsson','','answer4',0,0),(2078,'Kublai Khan is the grandchild of Genghis Khan?','False','True','','','','answer2',0,0),(2079,'Klingons once had a period of Democracy in their history, they referred to it as the &quot;Dark Times&quot;.','False','True','','','','answer2',0,0),(2080,'The French mathematician &amp;Eacute;variste Galois is primarily known for his work in which?','Abelian Integration','Galois&#039; Method for PDE&#039;s','Galois Theory','Galois&#039; Continued Fractions','','answer3',0,0),(2081,'In &quot;The Binding of Isaac&quot;, which item instantly kills Mom and Mom&#039;s Heart?','The Halo','Book of Shadows','Brimstone','The Bible','','answer4',0,0),(2082,'The value of one Calorie is different than the value of one calorie.','False','True','','','','answer2',0,0),(2083,'Who directed &quot;E.T. the Extra-Terrestrial&quot; (1982)?','Tim Burton','James Cameron','Stanley Kubrick','Steven Spielberg','','answer4',0,0),(2084,'In &quot;The Sims&quot; series, the most members in a household you can have is 8.','True','False','','','','answer1',0,0),(2085,'What is the largest animal currently on Earth?','Giraffe','Colossal Squid','Blue Whale','Orca','','answer3',0,0),(2086,'Which of these games was the earliest known first-person shooter with a known time of publication?','Wolfenstein','Spasim','Doom','Quake','','answer2',0,0),(2087,'The Republic of Malta is the smallest microstate worldwide.','True','False','','','','answer2',0,0),(2088,'The Internet Meme &quot;All your base are belong to us&quot; is based on the poorly translated English Version of which Video Game?','Star Wars: X-Wing','Wing Commander','Zero Wing','F-Zero','','answer3',0,0),(2089,'Who is the main character of the game Half-Life: Opposing Force?','Barney Calhoun','Adrian Shephard','Gordon Freeman','Alyx Vance','','answer2',0,0),(2090,'What is the capital of Chile?','Santiago','Copiap&amp;oacute;','Valpara&amp;iacute;so','Antofagasta','','answer1',0,0),(2091,'In the comic book &quot;Archie&quot;, Betty is friends with Veronica because she is rich.','False','True','','','','answer1',0,0),(2092,'Which of the following ancient Near Eastern peoples still exists as a modern ethnic group?','Hittites','Babylonians','Assyrians','Elamites','','answer3',0,0),(2093,'Which of the following African countries was most successful in resisting colonization?','Ethiopia','Namibia','C&amp;ocirc;te d&amp;rsquo;Ivoire','Congo','','answer1',0,0),(2094,'What was the first &quot;Team Fortress 2&quot; update to include a war?','Spy Vs. Engineer Update','Sniper vs. Spy Update','WAR! Update','Meet Your Match Update','','answer2',0,0),(2095,'What is the name of the first &quot;Star Wars&quot; film by release order?','A New Hope','The Phantom Menace','Revenge of the Sith','The Force Awakens','','answer1',0,0),(2096,'Which of these is NOT the name of an album released by American rapper Viper?','You&#039;ll Cowards Don&#039;t Even Smoke Crack','The Life of Pablo','Yo Wife Handcuffin&#039; Me','Kill Urself My Man','','answer2',0,0),(2097,'In &quot;Fairy Tail&quot;, what is the nickname of Natsu Dragneel?','The Salamander','The Dragon','The Dragon Slayer','The Demon','','answer1',0,0),(2098,'Who wrote the award winning musical &quot;In The Heights&quot;?','John Phillips Sousa','Francis Scott Key','Steven Sondheim','Lin-Manuel Miranda','','answer4',0,0),(2099,'What polymer is used to make CDs, safety goggles and riot shields?','Nylon','Polycarbonate','Rubber','Bakelite','','answer2',0,0),(2100,'What is the name of the main character in the webcomic Gunnerkrigg Court by Tom Siddell?','Bismuth','Cobalt','Antimony','Mercury','','answer3',0,0),(2101,'What is the Spanish word for &quot;donkey&quot;?','Burro','Caballo','Toro','Perro','','answer1',0,0),(2102,'Which one of these songs did the group &quot;Men At Work&quot; NOT make?','Down Under','Who Can It Be Now?','It&#039;s a Mistake','Safety Dance','','answer4',0,0),(2103,'The core of the Sun can reach which temperature?','8&amp;deg; Billion F (&amp;deg;4.4 Billion C)','27&amp;deg; Million F (15&amp;deg; Million C)','938,000&amp;deg; F (521093.3&amp;deg; C)','Absolute Zero (Both F and C)','','answer2',0,0),(2104,'This Marvel superhero is often called &quot;The man without fear&quot;.','Wolverine','Thor','Daredevil','Hulk','','answer3',0,0),(2105,'Which of these songs does NOT play during the Ruins segments of the 2015 game &quot;Undertale&quot;?','Anticipation','Unnecessary Tension','Another Medium','Ruins','','answer3',0,0),(2106,'In the movie &quot;Spaceballs&quot;, what are the Spaceballs attempting to steal from Planet Druidia?','Princess Lonestar','The Schwartz','Air','Meatballs','','answer3',0,0),(2107,'When was Nintendo&#039;s Virtual Boy released?','1995','1992','1997','1989','','answer1',0,0),(2108,'What is the name of the main character in &quot;The Flash&quot; TV series?','Bruce Wayne','Bart Allen','Barry Allen','Oliver Queen','','answer3',0,0),(2109,'Stevie Wonder&#039;s real name is Stevland Hardaway Morris.','True','False','','','','answer1',0,0),(2110,'In RuneScape, one must complete the &quot;Dragon Slayer&quot; quest before equipping Rune Platelegs.','True','False','','','','answer2',0,0),(2111,'In Minecraft, which two items must be combined to craft a torch?','Stick and Coal','Stick and Fire','Wood and Fire','Wood and Coal','','answer1',0,0),(2112,'Adolf Hitler was tried at the Nuremberg trials.','True','False','','','','answer2',0,0),(2113,'What was the name of one of the surviving palaces of Henry VIII located near Richmond, London?','St James&#039;s Palace','Buckingham Palace','Coughton Court','Hampton Court','','answer4',0,0),(2114,'Druid is a mage class in &quot;Log Horizon&quot;.','False','True','','','','answer1',0,0),(2115,'Krusty is the guild master of which guild in &quot;Log Horizon&quot;?','Oceanic Systems (Marine Agency)','West Wind Brigade','D. D. D','Silver Sword','','answer3',0,0),(2116,'In &quot;One Piece&quot;, what does &quot;the Pirate King&quot; mean to the captain of the Straw Hat Pirates?','Friendship','Promise','Adventure','Freedom','','answer4',0,0),(2117,'In &quot;The Binding of Isaac&quot;, which item instantly kills Mom and Mom&#039;s Heart?','The Bible','Brimstone','Book of Shadows','The Halo','','answer1',0,0),(2118,'According to the lore of &quot;Starbound&quot;, what does the &quot;Colony Deed&quot; do when it is placed down?','Teleports a random person to the location.','Materializes a new being at it&#039;s location.','Teleports somebody from somewhere on the planet it is placed.','Sends out an advertisement for someone to move in.','','answer4',0,0),(2119,'Virgin Trains, Virgin Atlantic and Virgin Racing, are all companies owned by which famous entrepreneur?','Donald Trump','Alan Sugar','Richard Branson','Bill Gates','','answer3',0,0),(2120,'Seoul is the capital of North Korea.','True','False','','','','answer2',0,0),(2121,'Which rap group released the album &quot;Straight Outta Compton&quot;?','Wu-Tang Clan','N.W.A','Run-D.M.C.','Beastie Boys','','answer2',0,0),(2122,'The &#039;Islets of Langerhans&#039; is found in which human organ?','Kidney','Brain','Liver','Pancreas','','answer4',0,0),(2123,'Which sign of the zodiac is represented by the Crab?','Virgo','Libra','Sagittarius','Cancer','','answer4',0,0),(2124,'Who directed the 1973 film &quot;American Graffiti&quot;?','Ron Howard','Francis Ford Coppola','Steven Spielberg','George Lucas','','answer4',0,0),(2125,'What&#039;s the square root of 49?','7','9','12','4','','answer1',0,0),(2126,'The land of Gotland is located in which European country?','Norway','Germany','Sweden','Denmark','','answer3',0,0),(2127,'The animated film &quot;Spirited Away&quot; won the Academy Award for Best Animated Feature at the 75th Academy Awards in 2003.','False','True','','','','answer2',0,0),(2128,'Which Queen song was covered by Brittany Murphy in the 2006 film &quot;Happy Feet&quot;?','Under Pressure','Bohemian Rhapsody','Flash','Somebody to Love','','answer4',0,0),(2129,'What is the name of Sid&#039;s dog in &quot;Toy Story&quot;?','Mr. Jones','Whiskers','Buster','Scud','','answer4',0,0),(2130,'Which of these is the name of a Japanese system of alternative medicine, literally meaning &quot;finger pressure&quot;?','Shiatsu','Majime','Ikigai','Ukiyo','','answer1',0,0),(2131,'The average woman is 5 inches / 13 centimeters shorter than the average man.','True','False','','','','answer1',0,0),(2132,'Pablo Picasso is one of the founding fathers of &quot;Cubism.&quot;','True','False','','','','answer1',0,0),(2133,'Solid Snake is actually a clone from the DNA of Big Boss in the Metal Gear Solid series&#039; history.','True','False','','','','answer1',0,0),(2134,'Which of these is the name of a cut enemy from &quot;Half-Life 2&quot;?','Tremor','Cthulu','Spike','Hydra','','answer4',0,0),(2135,'In the server hosting industry IaaS stands for...','Infrastructure as a Service','Internet as a Service','Infrastructure as a Server','Internet and a Server','','answer1',0,0),(2136,'Automobiles produced by Telsa Motors operate on which form of energy?','Electricity','Gasoline','Nuclear','Diesel','','answer1',0,0),(2137,'Gosho Aoyama Made This Series: (Detective Conan / Case Closed!)','True','False','','','','answer1',0,0),(2138,'Which Italian footballer told Neuer where he&#039;s putting his shot and dragging it wide, during the match Italy-Germany, UEFA EURO 2016?','Insigne','Giaccherini','Barzagli','Pelle','','answer4',0,0),(2139,'When was Chapter 1 of the Source Engine mod &quot;Underhell&quot; released?','September 12th, 2013','October 2nd, 2012','March 3rd, 2011','September 1st, 2013','','answer4',0,0),(2140,'In CSS, which of these values CANNOT be used with the &quot;position&quot; property?','relative','absolute','static','center','','answer4',0,0),(2141,'What is the name of the final villain in the manga series &quot;Bleach&quot;?','Yhwach','Juha Bach','Juhabach','Yuhabah','','answer1',0,0),(2142,'What is Brian May&#039;s guitar called?','Yellow Special','Blue Special','Green Special','Red Special','','answer4',0,0),(2143,'How many points did LeBron James score in his first NBA game?','41','19','25','69','','answer3',0,0),(2144,'Which of the following is not a faction in Tom Clancy&#039;s The Division?','Cleaners','Rikers','Last Man Batallion','CDC','','answer4',0,0),(2145,'Who is the author of the manga series &quot;Astro Boy&quot;?','Takao Saito','Osamu Tezuka','Yoshihiro Tatsumi','Mitsuteri Yokoyama','','answer2',0,0),(2146,'What is not a default game mode in Counter-Strike (2000)?','Hostage Rescue','Arms Race','Assassination','Bomb Defusal','','answer2',0,0),(2147,'In the Pok&amp;eacute;mon series, which type is Sudowoodo, the Imitation Pok&amp;eacute;mon?','Bug','Ground','Grass','Rock','','answer4',0,0),(2148,'Who performed &quot;I Took A Pill In Ibiza&quot;?','Harry Styles','Avicii','Robbie Williams','Mike Posner','','answer4',0,0),(2149,'The heroine of &quot;Humanity Has Declined&quot; is a mediator between humans and what?','Fairies','Animals','The Earth','Elves','','answer1',0,0),(2150,'When was the DVD invented?','1995','1980','1990','2000','','answer1',0,0),(2151,'In Star Trek, what is the Ferengi&#039;s First Rule of Acquisition?','Greed is Eternal','Never allow family to stand in the way of opportunity','Once you have their money, you never give it back.','Never place friendship above profit','','answer3',0,0),(2152,'In Star Trek, who was the founder of the Klingon Empire and its philosophy?','Molor the Unforgiving','Kahless the Unforgettable','Lady Lukara of the Great Hall','Dahar Master Kor','','answer2',0,0),(2153,'What year was the RoboSapien toy robot released?','2001','2004','2006','2000','','answer2',0,0),(2154,'When was the video game &quot;P.A.M.E.L.A.&quot; released on Steam?','January 7, 2007','October 23, 1997','March 9, 2017','February 16, 2015','','answer3',0,0),(2155,'What is the unit of electrical resistance?','Ohm','Joule','Mho','Tesla','','answer1',0,0),(2156,'In &quot;Starbound&quot;, what is the max HP of the monster &quot;Punchy&quot;?','9,000,000 HP','100 HP','50,000 HP','150,000 HP','','answer3',0,0),(2157,'In the hexadecimal system, what number comes after 9?','10','The Letter A','The Number 0','16','','answer2',0,0),(2158,'How many books are in the Chronicles of Narnia series?','5','7','8','6','','answer2',0,0),(2159,'During what war did the &quot;Cuban Missile Crisis&quot; occur?','Cold War','Revolutionary War','World War I','World War II','','answer1',0,0),(2160,'Han Solo&#039;s co-pilot and best friend, &quot;Chewbacca&quot;, is an Ewok.','False','True','','','','answer1',0,0),(2161,'The song &quot;Twin Size Mattress&quot; was written by which band?','The Smith Street Band','The Front Bottoms','Twenty One Pilots','The Wonder Years','','answer2',0,0),(2162,'Who is the only voice actor to have a speaking part in all of the Disney Pixar feature films?','John Ratzenberger','Geoffrey Rush','Tom Hanks','Dave Foley','','answer1',0,0),(2163,'Which gas forms about 78% of the Earth&amp;rsquo;s atmosphere?','Argon','Oxygen','Nitrogen','Carbon Dioxide','','answer3',0,0),(2164,'The Kingdom of Prussia briefly held land in Estonia.','False','True','','','','answer1',0,0),(2165,'What snowy mob was added in Minecraft 1.10?','Eskimos','Penguins','Walking TNT','Polar bears','','answer4',0,0),(2166,'One of the deadliest pandemics, the &quot;Spanish Flu&quot;, killed off what percentage of the human world population at the time?','1 to 3 percent','3 to 6 percent','less than 1 percent','6 to 10 percent','','answer2',0,0),(2167,'According to scholarly estimates, what percentage of the world population at the time died due to Tamerlane&#039;s conquests?','3%','1%','5%','&lt;1%','','answer3',0,0),(2168,'What Nationality is D.Va from Overwatch?','Japanese','Korean','Chinese','Vietnamese','','answer2',0,0),(2169,'The word &quot;news&quot; originates from the first letters of the 4 main directions on a compass (North, East, West, South).','True','False','','','','answer2',0,0),(2170,'What was the name of singer Frank Ocean&#039;s second studio album, which was released on August 20, 2016?','Burgundy','Blonde','Brunette','Black','','answer2',0,0),(2171,'Who developed the first successful polio vaccine in the 1950s?','Frederick Robbins','Thomas Weller','Jonas Salk','John F. Enders','','answer3',0,0),(2172,'The term &quot;battery&quot; to describe an electrical storage device was coined by?','Luigi Galvani','Nikola Tesla','Benjamin Franklin','Alessandro Volta','','answer3',0,0),(2173,'Which of these is the name of the largest city in the US state Tennessee?','Luxor','Memphis','Alexandria','Thebes','','answer2',0,0),(2174,'Which of these is NOT a part of the structure of a typical neuron?','Node of Ranvier','Myelin sheath','Schwann cell','Islets of Langerhans','','answer4',0,0),(2175,'Who is the creator of the Super Smash Bros. Series?','Bill Trinen','Hideo Kojima','Masahiro Sakurai','Reggie Fils-Aim&amp;eacute;','','answer3',0,0),(2176,'The name of the villian in the 2015 Russian-American Sci-Fi Movie &quot;Hardcore Henry&quot; is...','Estelle','Henry','Akan','Jimmy','','answer3',0,0),(2177,'The ultimate phrase used by Pharah from Overwatch is: &quot;Justice rains from above!&quot;','True','False','','','','answer1',0,0),(2178,'Minecraft can be played with a virtual reality headset.','True','False','','','','answer1',0,0),(2179,'Which movie of film director Stanley Kubrick is known to be an adaptation of a Stephen King novel?','2001: A Space Odyssey','Dr. Strangelove','Eyes Wide Shut','The Shining','','answer4',0,0),(2180,'What song plays in the ending credits of the anime &quot;Ergo Proxy&quot;?','Sadistic Summer','Paranoid Android','Bittersweet Symphony','Mad World','','answer2',0,0),(2181,'Which one of these is not a real game in the Dungeons &amp; Dragons series?','Advanced Dungeons &amp; Dragons 2nd edition','Dungeons &amp; Dragons 3.5th edition','Extreme Dungeons &amp; Dragons','Advanced Dungeons &amp; Dragons','','answer3',0,0),(2182,'Ferrari has never made a V10 engine for any of its cars.','False','True','','','','answer1',0,0),(2183,'When did Norway become free from Sweden?','1905','1814','1834','1925','','answer1',0,0),(2184,'California is larger than Japan.','True','False','','','','answer1',0,0),(2185,'In the Panic! At the Disco&#039;s song &quot;Nothern Downpour&quot;, which lyric follows &#039;I know the world&#039;s a broken bone&#039;.','&quot;So sing your song until you&#039;re home&quot;','&quot;So melt your headaches call it home&quot;','&quot;So start a fire in their cold stone&quot;','&quot;So let them know they&#039;re on their own&quot;','','answer2',0,0),(2186,'In &quot;Halo&quot;, what is the name of the planet which Installation 04 orbits?','Substance','Threshold','Te','Sanghelios','','answer2',0,0),(2187,'Which iconic Disneyland attraction was closed in 2017 to be remodeled as a &quot;Guardians of the Galaxy&quot; themed ride?','Twilight Zone Tower of Terror','Pirates of the Caribbean','Peter Pan&#039;s Flight','The Haunted Mansion','','answer1',0,0),(2188,'Valve&#039;s &quot;Portal&quot; and &quot;Half-Life&quot; franchises exist within the same in-game universe.','True','False','','','','answer1',0,0),(2189,'In Dota 2, what is Earthshaker&#039;s real name?','Carl','Raigor Stonehoof','Barathrum','Banehallow Ambry','','answer2',0,0),(2190,'What is the Klingon&#039;s afterlife called?','Sto-vo-kor','New Jersey','Karon&#039;gahk','Valhalla','','answer1',0,0),(2191,'According to the lore of &quot;Starbound&quot;, what does the &quot;Colony Deed&quot; do when it is placed down?','Teleports a random person to the location.','Teleports somebody from somewhere on the planet it is placed.','Materializes a new being at it&#039;s location.','Sends out an advertisement for someone to move in.','','answer4',0,0),(2192,'In 1993 Swedish car manufacturer Saab experimented with replacing the steering wheel with a joystick in a Saab 9000.','False','True','','','','answer2',0,0),(2193,'This Greek mythological figure is the god/goddess of battle strategy (among other things).','Apollo','Artemis','Athena','Ares','','answer3',0,0),(2194,'What is the name of Jontron&#039;s parrot?','Jaques','Jacques','Jak','John','','answer2',0,0),(2195,'Who recorded the1975 album &#039;Captain Fantastic and the Brown Dirt Cowboy&#039;?','John Denver','Elton John','Billy Joel','Joe Cocker','','answer2',0,0),(2196,'The Pythagorean theorem states that the square of the hypotenuse is equal to the product of the squares of the other two sides.','True','False','','','','answer2',0,0),(2197,'Which game did NOT get financed via Crowdfunding?','Tower Unite','Enter the Gungeon','Undertale','Town of Salem','','answer2',0,0),(2198,'What is the molecular formula of Glucose?','CH4','C2H4O2','C6H12O6','K+','','answer3',0,0),(2199,'Which of the following Mesopotamian mythological figures was NOT a deity?','Enkidu','Enkimdu','Enki','Enlil','','answer1',0,0),(2200,'The book 1984 was published in 1949.','False','True','','','','answer2',0,0),(2201,'Which of these countries is located the FURTHEST away from the South China Sea?','Philippines','Bangladesh','Malaysia','Vietnam','','answer2',0,0),(2202,'Finish these lyrics from the 2016 song &quot;Panda&quot; by Desiigner: &quot;I got broads in _______&quot;.','Augusta','Marietta','Savannah','Atlanta','','answer4',0,0),(2203,'What year was the Disney film &quot;A Goofy Movie&quot; released?','1995','2001','1997','1999','','answer1',0,0),(2204,'Which of these banks are NOT authorized to issue currency notes in Hong Kong?','OCBC','HSBC','Standard Chartered','Bank of China','','answer1',0,0),(2205,'Gordon Freeman is said to have burnt and destroyed what food in the break room microwave?','Casserole','Chicken Soup','Sub Sandwich','Pepperoni Pizza','','answer1',0,0),(2206,'The creator of the Touhou Project series is:','PUN','RUN','SUN','ZUN','','answer4',0,0),(2207,'In vanilla Minecraft, you can make armor out of all BUT which of the following?','Emeralds','Leather','Diamonds','Iron','','answer1',0,0),(2208,'When did the TV show Rick and Morty first air on Adult Swim?','2015','2014','2013','2016','','answer3',0,0),(2209,'What animal is on Link&#039;s pajamas in The Legend of Zelda: The Wind Waker?','Salmon','Swordfish','Crawfish','Lobster','','answer3',0,0),(2210,'In what year was &quot;Antichamber&quot; released?','2013','2014','2011','2012','','answer1',0,0),(2211,'What year is considered to be the year that the British Empire ended?','1997','1986','1981','1971','','answer1',0,0),(2212,'In the video game &quot;Team Fortress 2&quot;, which class is able to double jump?','Engineer','Scout','Spy','Pyro','','answer2',0,0),(2213,'The first version of Blockland came out in which year?','2006','2004','2008','2007','','answer2',0,0),(2214,'Which celebrity announced his presidency in 2015?','Leonardo DiCaprio','Miley Cyrus','Kanye West','Donald Trump','','answer3',0,0),(2215,'What does Solid Snake use to hide himself with?','Cardboard Box','Cloaking Device','Metal Crate','Cardboard cut-out','','answer1',0,0),(2216,'Which of the following is the oldest of these computers by release date?','Commodore 64','ZX Spectrum','TRS-80','Apple 3','','answer3',0,0),(2217,'At the end of the 2001 film &quot;Rat Race&quot;, whose concert do the contestants crash?','Sum 41','Linkin Park','Smash Mouth','Bowling for Soup','','answer3',0,0),(2218,'Who created the Cartoon Network series &quot;Regular Show&quot;?','Pendleton Ward','Rebecca Sugar','Ben Bocquelet','J. G. Quintel','','answer4',0,0),(2219,'African-American performer Sammy Davis Jr. was known for losing which part of his body in a car accident?','Nose','Left Eye','Right Middle Finger','Right Ear','','answer2',0,0),(2220,'In the 1995 film &quot;Balto&quot;, who are Steele&#039;s accomplices?','Dusty, Kirby, and Ralph','Kaltag, Nikki, and Star','Jenna, Sylvie, and Dixie','Nuk, Yak, and Sumac','','answer2',0,0),(2221,'Who out of these actresses is the youngest?','Kiernan Shipka','Emma Watson','Ariel Winter','Bonnie Wright','','answer1',0,0),(2222,'What is the name of Nissan&#039;s most popular electric car?','Deer','Leaf','Roots','Tree','','answer2',0,0),(2223,'What was Nickelodeon&#039;s original name?','Pinwheel','KidsTV','MTVKids','Splat!','','answer1',0,0),(2224,'In the &quot;Dragon Ball&quot; franchise, what is the name of Goku&#039;s brother?','Vegeta','Bardock','Gohan','Raditz','','answer4',0,0),(2225,'Which monster in &quot;Monster Hunter Tri&quot; was causing earthquakes in Moga Village?','Lagiacrus','Alatreon','Ceadeus','Rathalos','','answer3',0,0),(2226,'What is the capital of Estonia?','Helsinki','Tartu','Tallinn','Riga','','answer3',0,0),(2227,'When was the play &#039;Macbeth&#039; written?','1606','1628','1723','1605','','answer1',0,0),(2228,'Which of the following authors was not born in England?','Arthur C Clarke','Graham Greene','H G Wells','Arthur Conan Doyle','','answer4',0,0),(2229,'Who is the best selling artist of all time?','Elvis Presley','The Beatles','Elton John','Michael Jackson','','answer2',0,0),(2230,'What&#039;s the name of Batman&#039;s  parents?','Jason &amp; Sarah','Todd &amp; Mira','Joey &amp; Jackie','Thomas &amp; Martha','','answer4',0,0),(2231,'Who played Deputy Marshal Samuel Gerard in the 1993 film &quot;The Fugitive&quot;?','Martin Landau','Tommy Lee Jones','Harrison Ford','Harvey Keitel','','answer2',0,0),(2232,'Which actress&#039;s real name was Frances Ethel Gumm?','Julie Andrews','Marilyn Monroe','Doris Day','Judy Garland','','answer4',0,0),(2233,'Joseph Smith was the founder of what religion?','Buddhism','Hinduism','Mormonism','Christianity','','answer3',0,0),(2234,'There aren&#039;t any live-action clones in &quot;Star Wars: Episode III - Revenge of the Sith&quot;.','False','True','','','','answer2',0,0),(2235,'Which European city has the highest mileage of canals in the world?','Amsterdam','Birmingham','Venice','Berlin','','answer2',0,0),(2236,'By what name was the author Eric Blair better known?','Ray Bradbury','Aldous Huxley','Ernest Hemingway','George Orwell','','answer4',0,0),(2237,'According to scholarly estimates, what percentage of the world population at the time died due to Tamerlane&#039;s conquests?','3%','&lt;1%','1%','5%','','answer4',0,0),(2238,'The first Maxis game to feature the fictional language &quot;Simlish&quot; was The Sims (2000).','True','False','','','','answer2',0,0),(2239,'The sum of all the numbers on a roulette wheel is 666.','False','True','','','','answer2',0,0),(2240,'The first &quot;Metal Gear&quot; game was released for the PlayStation 1.','True','False','','','','answer2',0,0),(2241,'Which game was the first time Mario was voiced by Charles Martinet?','Mario&#039;s Game Gallery','Dr. Mario 64','Mario Tennis','Super Mario 64','','answer1',0,0),(2242,'Who is the protagonist of the videogame &quot;Dead Rising 2&quot;?','Chuck Greene','Frank West','Nick Ramos','Katie Greene','','answer1',0,0),(2243,'Who was the first president of the United States?','James Madison','George Washington','James K. Polk','Thomas Jefferson','','answer2',0,0),(2244,'The main protagonist of the fifth part of JoJo&#039;s Bizarre Adventure is which of the following?','Guido Mista','Joey JoJo','Giorno Giovanna','Jonathan Joestar','','answer3',0,0),(2245,'Guy&#039;s Grocery Games is hosted by which presenter?','Ainsley Harriott','Guy Ritchie','Guy Martin','Guy Fieri','','answer4',0,0),(2246,'Who tutored Alexander the Great?','Aristotle','Plato','King Philip','Socrates','','answer1',0,0),(2247,'Which horror movie had a sequel in the form of a video game released in August 20, 2002?','Saw','The Thing','Alien','The Evil Dead','','answer2',0,0),(2248,'&quot;Twenty One Pilots&quot; made the song &quot;The Motion&quot; featuring Sampha.','False','True','','','','answer1',0,0),(2249,'The new One World Trade Center in Manhattan, New York City was designed by which architect?','Bjarke Ingels','Fumihiko Maki','Michael Arad','David Childs','','answer4',0,0),(2250,'The Hundred Years&#039; War was fought for more than a hundred years.','True','False','','','','answer1',0,0),(2251,'In the title of the game &quot;Luigi&#039;s Mansion&quot;, what is the only letter to not appear with a pair of eyes in it?','i','m','s','n','','answer3',0,0),(2252,'Phil Fish was the designer of which game?','Super Meat Boy','Fez','FTL','Hotline Miami','','answer2',0,0),(2253,'When was Cadillac founded?','1985','1898','1964','1902','','answer4',0,0),(2254,'Like his character in &quot;Parks and Recreation&quot;, Aziz Ansari was born in South Carolina.','False','True','','','','answer2',0,0),(2255,'What is Everest&#039;s favorite food in the Nickelodeon/Nick Jr. series &quot;PAW Patrol&quot;?','Chicken','Caribou','Steak','Liver','','answer4',0,0),(2256,'In the game &quot;Hearthstone&quot;, what is the best rank possible?','Rank 1 Elite','Rank 1 Supreme','Rank 1 Legend','Rank 1 Master','','answer3',0,0),(2257,'How long did the Warsaw Uprising during World War II last?','63 Days','224 Days','20 Days','55 Days','','answer1',0,0),(2258,'Which game in the &quot;Monster Hunter&quot; series introduced the monster &quot;Gobul&quot;?','Monster Hunter Generations','Monster Hunter Freedom Unite','Monster Hunter Frontier','Monster Hunter Tri','','answer4',0,0),(2259,'In the book &quot;The Martian&quot;, how long was Mark Watney trapped on Mars (in Sols)?','401 Days','549 Days','324 Days','765 Days','','answer2',0,0),(2260,'Which team won the 2015-16 English Premier League?','Leicester City','Liverpool','Manchester United','Cheslea','','answer1',0,0),(2261,'The programming language &#039;Swift&#039; was created to replace what other programming language?','C++','Objective-C','C#','Ruby','','answer2',0,0),(2262,'In the game &quot;Undertale&quot;, who was Mettaton&#039;s creator?','Undyne','Asgore','Sans','Alphys','','answer4',0,0),(2263,'The &quot;Berenstein Bears&quot; is the correct spelling of the educational children&#039;s book series&#039; name.','True','False','','','','answer2',0,0),(2264,'There are 86400 seconds in a day.','False','True','','','','answer2',0,0),(2265,'What year did Albrecht D&amp;uuml;rer create the painting &quot;The Young Hare&quot;?','1402','1702','1602','1502','','answer4',0,0),(2266,'What is the name of Finnish DJ Darude&#039;s hit single released in October 1999?','Sirocco','Khamsin','Sandstorm','Dust Devil','','answer3',0,0),(2267,'Which Apollo mission was the last one in NASA&#039;s Apollo program?','Apollo 11','Apollo 13','Apollo 17','Apollo 15','','answer3',0,0),(2268,'In the 2002 video game &quot;Kingdom Hearts&quot;, how many Keyblades are usable?','18','16','13','15','','answer1',0,0),(2269,'The board game, Nightmare was released in what year?','1995','1992','1989','1991','','answer4',0,0),(2270,'What device allows Tracer to manipulate her own time in the game &quot;Overwatch&quot;?','Spacial Displacement Manipulator','TMD (Time Manipulation Device)','Chronal Accelerator','B.L.I.N.K','','answer3',0,0),(2271,'On the show &quot;Rick and Morty&quot;, in episode &quot;Total Rickall&quot;, who was a parasite?','Beth Smith','Pencilvester','Summer Smith','Mr. Poopy Butthole','','answer2',0,0),(2272,'The starting pistol of the Terrorist team in a competitive match of Counter Strike: Global Offensive is what?','Glock-18','Dual Berretas','Desert Eagle','Tec-9','','answer1',0,0),(2273,'A flock of crows is known as a homicide.','True','False','','','','answer2',0,0),(2274,'Kanye West at 2009 VMA&#039;s interrupted which celebrity?','Taylor Swift','Beck','MF DOOM','Beyonce','','answer1',0,0),(2275,'What&#039;s the name of the halloween-related Sims 4 Stuff Pack released September 29th, 2015?','Nerving Nights','Fearful Frights','Spooky Stuff','Ghosts n&#039; Ghouls','','answer3',0,0),(2276,'Which one of these is not a real game in the Dungeons &amp; Dragons series?','Extreme Dungeons &amp; Dragons','Advanced Dungeons &amp; Dragons 2nd edition','Dungeons &amp; Dragons 3.5th edition','Advanced Dungeons &amp; Dragons','','answer1',0,0),(2277,'What was Genghis Khan&#039;s real name?','&amp;Ouml;gedei','Tem&amp;uuml;jin','Tem&amp;uuml;r','M&amp;ouml;ngke','','answer2',0,0),(2278,'Which 80s band is fronted by singer/guitarist Robert Smith?','New Order','The Cure','The Smiths','Echo &amp; the Bunnymen','','answer2',0,0),(2279,'According to a song by Belinda Carlisle, Heaven is a place on what?','Earth','Uranus','Mars','Venus','','answer1',0,0),(2280,'The name of the attack &quot;Kamehameha&quot; in Dragon Ball Z was named after a famous king of Hawaii.','True','False','','','','answer1',0,0),(2281,'Sean Connery wasn&#039;t in &quot;Indiana Jones and the Kingdom of the Crystal Skull&quot; because he found retirement too enjoyable.','True','False','','','','answer1',0,0),(2282,'&quot;All the Boys&quot; by Panic! At the Disco was released as a bonus track on what album?','Death Of A Bachelor','Too Weird To Live, Too Rare To Die!','A Fever You Can&#039;t Sweat Out','Vices &amp; Virtues','','answer2',0,0),(2283,'In the game &quot;Persona 4&quot;, what is the canonical name of the protagonist?','Tunki Sunada','Chino Mashido','Masaki Narinaka','Yu Narukami','','answer4',0,0),(2284,'The default playermodel of Garry&#039;s Mod is this Half Life 2 character.','Isaac Kleiner','Alyx Vance','Gordon Freeman','G-Man','','answer1',0,0),(2285,'In Pok&amp;eacute;mon, Arbok evolves into Seviper.','False','True','','','','answer1',0,0),(2286,'In the 1992 film &quot;Army of Darkness&quot;, what name does Ash give to his double-barreled shotgun?','2-Pump Chump','Boomstick','Blastbranch','Bloomstick','','answer2',0,0),(2287,'Ellen McLain, the voice of GLaDOS in the Portal game series, is married to the voice actor for which Team Fortress 2 character?','Heavy','Scout','Sniper','Soldier','','answer3',0,0),(2288,'How many copies have Metallica album &quot;Metallica&quot; (A.K.A The Black Album) sold worldwide (in Millions of Copies)?','20.5','25.5','19.5','22.5','','answer1',0,0),(2289,'What is the name of the device that allows for infinite energy in the anime &quot;Dimension W&quot;?','Collectors','Wires','Coils','Tesla','','answer3',0,0),(2290,'Which of the following Copy Abilities was only featured in &quot;Kirby &amp; The Amazing Mirror&quot;?','Smash','Mini','Missile','Magic','','answer2',0,0),(2291,'In &quot;Overwatch&quot;, how much health does Roadhog&#039;s &quot;Take a Breather&quot; ability recover?','100','400','300','200','','answer3',0,0),(2292,'In &quot;Gravity Falls&quot;, the character Bill Cipher remarks that &quot;the universe is what?&quot;','a simulation','a hologram','an illusion','corrupting','','answer2',0,0),(2293,'In &quot;Doctor Who&quot;, the Doctor gets his TARDIS by stealing it.','True','False','','','','answer1',0,0),(2294,'Who voices &quot;Shou Suzuki&quot; in the English dub of &quot;Mob Psycho 100&quot;?','Ben Diskin','Casey Mongillo','Chris Niosi','David Naughton','','answer2',0,0),(2295,'In &quot;Starbound&quot;, according to the asset files, the description of the &quot;Erchius Ghost&quot; is the same as which other assets?','Spookit','Petricub','Pyromantle','Trictus','','answer1',0,0),(2296,'Han Solo&#039;s co-pilot and best friend, &quot;Chewbacca&quot;, is an Ewok.','True','False','','','','answer2',0,0),(2297,'When Gmail first launched, how much storage did it provide for your email?','1GB','5GB','Unlimited','512MB','','answer1',0,0),(2298,'The Hippogriff, not to be confused with the Griffon, is a magical creature with the front half of an eagle, and the back half of what?','A Dragon','A Lion','A Horse','A Tiger','','answer3',0,0),(2299,'If a &quot;360 no-scope&quot; is one full rotation before shooting, how many rotations would a &quot;1080 no-scope&quot; be?','2','5','3','4','','answer3',0,0),(2300,'Which of the following former Yugoslavian states is landlocked?','Serbia','Montenegro','Croatia','Bosnia and Herzegovina','','answer1',0,0),(2301,'In the anime series &quot;Full Metal Alchemist&quot;, what do Alchemists consider the greatest taboo?','Transmuting Lead Into Gold','Using Alchemy For Crime','Human Transmutation','Preforming Without A Permit','','answer3',0,0),(2302,'Ashley Frangipane performs under the stage name Halsey.','True','False','','','','answer1',0,0),(2303,'Which of these countries was NOT a part of the Soviet Union?','Afghanistan','Kazakhstan','Turkmenistan','Uzbekistan','','answer1',0,0),(2304,'How many countries does the United States share a land border with?','3','2','4','1','','answer2',0,0),(2305,'In the 2002 video game &quot;Kingdom Hearts&quot;, how many playable worlds were there?','14','13','11','16','','answer1',0,0),(2306,'Tony Hawk&#039;s Pro Skater was released in 1999.','False','True','','','','answer2',0,0),(2307,'What is the romanized Chinese word for &quot;airplane&quot;?','Qiche','Huojian','Feiji','Zongxian','','answer3',0,0),(2308,'The stop motion comedy show &quot;Robot Chicken&quot; was created by which of the following?','Seth Rollins','Seth Rogen','Seth MacFarlane','Seth Green','','answer4',0,0),(2309,'In the movie &quot;Cast Away&quot; the main protagonist&#039;s best friend while on the island is named','Wilson','Willy','Carson','Jackson','','answer1',0,0),(2310,'Where is the fast food chain &quot;Panda Express&quot; headquartered?','Fresno, California','San Diego, California','Sacremento, California','Rosemead, California','','answer4',0,0),(2311,'What is the name of the 2016 studio album by the French electronic music duo Justice?','Randy','Safe and Sound','Pleasure','Woman','','answer4',0,0),(2312,'What&#039;s the name of the halloween-related Sims 4 Stuff Pack released September 29th, 2015?','Fearful Frights','Nerving Nights','Ghosts n&#039; Ghouls','Spooky Stuff','','answer4',0,0),(2313,'The 2016 song &quot;Starboy&quot; by Canadian singer The Weeknd features which prominent electronic artist?','deadmau5','Disclosure','Daft Punk','DJ Shadow','','answer3',0,0),(2314,'In &quot;A Certain Scientific Railgun&quot;, how many &quot;sisters&quot; did Accelerator have to kill to achieve the rumored level 6?','10,000','5,000','128','20,000','','answer4',0,0),(2315,'Which soccer team won the Copa Am&amp;eacute;rica 2015 Championship ?','Chile','Paraguay','Brazil','Argentina','','answer1',0,0),(2316,'What genetic disease is caused by having an extra Y chromosome (XYY)?','Down Syndrome','Klinefelter&#039;s Syndrome','Jacob&#039;s Syndrome','Turner&#039;s Syndrome','','answer3',0,0),(2317,'How many countries does Mexico border?','4','2','3','1','','answer3',0,0),(2318,'Marilyn Monroe was born on July 1, 1926.','False','True','','','','answer1',0,0),(2319,'Who wrote the song &quot;You Know You Like It&quot;?','DJ Snake','AlunaGeorge','Major Lazer','Steve Aoki','','answer2',0,0),(2320,'In Digimon, what is the Japanese name for the final evolutionary stage?','Champion','Ultimate','Mega','Adult','','answer2',0,0),(2321,'In &quot;Breaking Bad&quot;, Walter White is a high school teacher diagnosed with which form of cancer?','Brain Cancer','Lung Cancer','Prostate Cancer','Testicular Cancer','','answer2',0,0),(2322,'Who serves as the speaker of the prologue in Shakespeare&#039;s Romeo and Juliet?','Refrain','Capulet','Chorus','Montague','','answer3',0,0),(2323,'What year did Australia become a federation?','1901','1911','1899','1910','','answer1',0,0),(2324,'This Canadian television sportscaster is known for his &quot;Hockey Night in Canada&quot; role, a commentary show during hockey games.','Don McKellar','Donald Sutherland','Don Cherry','Don Taylor','','answer3',0,0),(2325,'How tall is the Burj Khalifa?','2,717 ft','2,546 ft','3,024 ft','2,722 ft','','answer4',0,0),(2326,'Which of these games was NOT developed by Markus Persson?','Minecraft','Dwarf Fortress','Wurm Online','0x10c','','answer2',0,0),(2327,'What was the most populous city in the Americas in 2015?','Mexico City','Los Angeles','New York','S&amp;atilde;o Paulo','','answer4',0,0),(2328,'In the &quot;Devil May Cry&quot; franchise, which game is chronologically first?','Devil May Cry 2','Devil May Cry 3: Dante&#039;s Awakening','Devil May Cry 4','Devil May Cry','','answer2',0,0),(2329,'Who created the digital distribution platform Steam?','Ubisoft','Electronic Arts','Pixeltail Games','Valve','','answer4',0,0),(2330,'In Marvel Comics, Taurus is the founder and leader of which criminal organization?','Scorpio','The Union','Tiger Mafia','Zodiac','','answer4',0,0),(2331,'What was the name of Captain Nemo&#039;s submarine in &quot;20,000 Leagues Under the Sea&quot;?','The Neptune','The Atlantis','The Nautilus','The Poseidon','','answer3',0,0),(2332,'Soulja Boy&#039;s &#039;Crank That&#039; won a Grammy for Best Rap Song in 2007.','True','False','','','','answer2',0,0),(2333,'Who is the protagonist in the game &quot;The Walking Dead: Season One&quot;?','Rick Grimes','Clementine','Lee Everett','Kenny','','answer3',0,0),(2334,'To the nearest minute, how long does it take for light to travel from the Sun to the Earth?','6 Minutes','2 Minutes','8 Minutes','12 Minutes','','answer3',0,0),(2335,'This movie contains the quote, &quot;Nobody puts Baby in a corner.&quot;','Pretty in Pink','Three Men and a Baby','Ferris Bueller&#039;s Day Off','Dirty Dancing','','answer4',0,0),(2336,'What is the capital of Australia?','Brisbane','Sydney','Canberra','Melbourne','','answer3',0,0),(2337,'The Japanese Shinkansen beat the French TGV&#039;s speed record for fastest electric rail train.','False','True','','','','answer1',0,0),(2338,'This Greek goddess&#039;s name was chosen for the dwarf planet responsible for discord on Pluto&#039;s classification amongst astronomers.','Dysnomia','Ceres','Charon','Eris','','answer4',0,0),(2339,'In the game &quot;Melty Blood Actress Again Current Code&quot;, you can enter Blood Heat mode in Half Moon style.','False','True','','','','answer1',0,0),(2340,'In the fighting game &quot;Skullgirls,&quot; which character utilizes a folding chair called the &quot;Hurting&quot; as a weapon?','Cerebella','Squigly','Big Band','Beowulf','','answer4',0,0),(2341,'What is the scientific name of the knee cap?','Patella','Femur','Foramen Magnum','Scapula','','answer1',0,0),(2342,'Which US state has the highest population?','Texas','California','New York','Florida','','answer2',0,0),(2343,'What is the official language of Costa Rica?','Creole','Portuguese','English','Spanish','','answer4',0,0),(2344,'While Apple was formed in California, in which western state was Microsoft founded?','New Mexico','Washington','Colorado','Arizona','','answer1',0,0),(2345,'Disney&#039;s Haunted Mansion is home to a trio of Hitchhiking Ghosts. Which of these is NOT one of them?','Phineas','Harry','Gus','Ezra','','answer2',0,0),(2346,'How many countries does Spain have a land border with?','4','5','3','2','','answer2',0,0),(2347,'The fourth funnel of the RMS Titanic was fake designed to make the ship look more powerful and symmetrical.','False','True','','','','answer2',0,0),(2348,'The 2005 video game &quot;Call of Duty 2: Big Red One&quot; is not available on PC.','False','True','','','','answer2',0,0),(2349,'What year was Huun Huur Tu&#039;s album Altai Sayan Tandy-Uula released?','2010','2004','1993','2006','','answer2',0,0),(2350,'What was the religion of famous singer &quot;Freddie Mercury&quot;?','Judaism','Zoroastrianism','Ashurism','Paganism','','answer2',0,0),(2351,'What is the oldest US state?','Virginia','Delaware','Rhode Island','Maine','','answer2',0,0),(2352,'In the video game &quot;Metal Gear Solid&quot;, what did Revolver Ocelot consider the greatest handgun ever made?','Colt M1892','Colt 1851 Navy Revolver','Colt Python','Colt Single Action Army','','answer4',0,0),(2353,'How many plays is Shakespeare generally considered to have written?','54','25','18','37','','answer4',0,0),(2354,'In the Half-Life franchise, what is the real name of the &quot;gravity gun&quot;?','Quantum Energy Displacement Modifier','Zero-Point Energy Field Manipulator','Universal Gravity Manipulation Device','Isaac Newton&#039;s Theory Disprover','','answer2',0,0),(2355,'Which of these characters was NOT planned to be playable for Super Smash Bros. 64?','Peach','Mewtwo','Bowser','King Dedede','','answer1',1,0),(2356,'Daft Punk originated in France.','False','True','','','','answer2',0,0),(2357,'Who was the winner of the 2016 WWE Royal Rumble?','Roman Reigns','Triple H','Dean Ambrose','AJ Styles','','answer2',0,0),(2358,'Which of these is NOT a song by Pegboard Nerds?','BAMF','Swamp Thing','WiFi Tears','Emoji','','answer3',0,0),(2359,'In &quot;Star Trek&quot;, what is the Klingon delicacy of &quot;gagh&quot; made from?','Spaghetti noodles','Earthworms','Serpent worms','Klingworms','','answer3',0,0),(2360,'Which of these blocks in &quot;Minecraft&quot; has the lowest blast resistance?','Sand','Wood Planks','Water','End Stone','','answer1',0,0),(2361,'In &quot;Hunter x Hunter&quot;, which of the following is NOT a type of Nen aura?','Specialization','Emission','Transmutation','Restoration','','answer4',0,0),(2362,'Which of these is not an additional variation of the color purple?','Pomp and Power','Kobicha','Byzantium','Palatinate','','answer2',0,0),(2363,'Which one of these was not a beach landing site in the Invasion of Normandy?','Juno','Silver','Gold','Sword','','answer2',0,0),(2364,'Snakes and Ladders was originally created in India?','True','False','','','','answer1',0,0),(2365,'Who had a 1973 hit with the song &#039;Hocus Pocus&#039;?','AC/DC','Focus','Pilot','Rush','','answer2',0,0),(2366,'Which of these countries was sea charted in 1500 by the Portuguese maritime explorations?','Madagascar','Brazil','India','Mozambique','','answer2',0,0),(2367,'Who played Stan&#039;s dog in the South Park episode &quot;Big Gay Al&#039;s Big Gay Boat Ride&quot;?','Matt Stone','George Clooney','Jay Leno','Robert Smith','','answer2',0,0),(2368,'In what year was the last natural case of smallpox documented?','1990','1980','1977','1982','','answer3',0,0),(2369,'According to scholarly estimates, what percentage of the world population at the time died due to Tamerlane&#039;s conquests?','&lt;1%','5%','3%','1%','','answer2',0,0),(2370,'It was once believed that injecting shark cartilage into people would prevent them from contracting cancer.','True','False','','','','answer1',0,0),(2371,'After how many years would you celebrate your crystal anniversary?','25','15','10','20','','answer2',0,0),(2372,'The 2014 movie &quot;The Raid 2: Berandal&quot; was mainly filmed in which Asian country?','Malaysia','Indonesia','Thailand','Brunei','','answer2',0,0),(2373,'What was the destination of the missing flight MH370?','Singapore','Beijing','Tokyo','Kuala Lumpur','','answer2',0,0),(2374,'A factiod is what?','A falsehood','A tiny fact','Useless trivia','A scientific figure','','answer1',0,0),(2375,'What is the largest lake in the African continent?','Lake Malawi','Lake Tanganyika','Lake Turkana','Lake Victoria','','answer4',0,0),(2376,'What is the German word for &quot;spoon&quot;?','L&amp;ouml;ffel','Essst&amp;auml;bchen','Messer','Gabel','','answer1',0,0),(2377,'The term &quot;scientist&quot; was coined in which year?','1942','1833','1796','1933','','answer2',0,0),(2378,'May 16th of every year is known as __________ Day, named after a punk band prominent in the 1990s.','Goldfinger','Lit','Lagwagon','Less Than Jake','','answer3',0,0),(2379,'In Overwatch, Mercy&#039;s ultimate ability is..','Resurrect','Earthshatter','Rocket Barrage','Molten Core','','answer1',0,0),(2380,'In the TV series Red Dwarf, Kryten&#039;s full name is Kryten 2X4B-523P.','True','False','','','','answer1',0,0),(2381,'In Jeff Wayne&#039;s Musical Version of War of the Worlds, the chances of anything coming from Mars are...','A hundred to one','A million to one','A billion to one','A trillion to one','','answer2',0,0),(2382,'Which band released songs suchs as &quot;Rio&quot;, &quot;Girls on Film&quot;, and &quot;The Reflex&quot;?','New Order','Duran Duran','The Cure','Depeche Mode','','answer2',0,0),(2383,'The name of Junko Enoshima&#039;s imposter at the beginning of Danganronpa: Trigger Happy Havoc is?','Ryota Mitarai','Komaru Naegi','Mukuro Ikusaba','Ultimate Imposter','','answer3',0,0),(2384,'Which of the following is NOT a summon in the game &quot;South Park: The Stick of Truth&quot;?','Jesus','Mr. Slave','Towelie','Mr. Hankey','','answer3',0,0),(2385,'How many differently shaped Tetris pieces are there?','5','6','8','7','','answer4',0,0),(2386,'In the anime Assassination Classroom what is the class that Korosensei teaches?','Class 3-A','Class 3-B','Class 3-D','Class 3-E','','answer4',0,0),(2387,'In Pok&amp;eacute;mon, Ash&#039;s Pikachu refuses to go into a pokeball.','True','False','','','','answer1',0,0),(2388,'J.K. Rowling completed &quot;Harry Potter and the Deathly Hallows&quot; in which hotel in Edinburgh, Scotland?','Sheraton Grand Hotel &amp; Spa','The Dunstane Hotel','The Balmoral','Hotel Novotel','','answer3',0,0),(2389,'In the movie &quot;Spaceballs&quot;, what are the Spaceballs attempting to steal from Planet Druidia?','Air','Princess Lonestar','Meatballs','The Schwartz','','answer1',0,0),(2390,'What does LTS stand for in the software market?','Long Term Support','Ludicrous Turbo Speed','Ludicrous Transfer Speed','Long Taco Service','','answer1',0,0),(2391,'In what year was the game &quot;FTL: Faster Than Light&quot; released?','2011','2013','2012','2014','','answer3',0,0),(2392,'In Rust, how many Timed Explosive Charges does it take to destroy a Ladder Hatch?','2','1','3','5','','answer2',0,0),(2393,'In Overwatch, how old is Reinhardt Wilhelm?','61','59','65','62','','answer1',0,0),(2394,'Which of the following names is the &quot;Mega Man&quot; Franchise known as in Japan?','Scissorsman','Rockman','Paperman','Mega Man','','answer2',0,0),(2395,'In &quot;Star Trek&quot;, what sauce is commonly used by Klingons on bregit lung?','Gazorpazorp pudding','Grapork sauce','Sweet chili sauce','Grapok sauce','','answer4',0,0),(2396,'In Topology, the complement of an open set is a closed set.','True','False','','','','answer1',0,0),(2397,'How many values can a single byte represent?','1024','1','8','256','','answer4',0,0),(2398,'Which time signature is commonly known as &amp;ldquo;Cut Time?&amp;rdquo;','6/8','3/4','4/4','2/2','','answer4',0,0),(2399,'Which was the first of Alfred Hitchcock&#039;s movies to be filmed in colour?','Rebecca','Vertigo','Psycho','Rope','','answer4',0,0),(2400,'In the video-game franchise Kingdom Hearts, the main protagonist, carries a weapon with what shape?','Cellphone','Pen','Key','Sword','','answer3',0,0),(2401,'Typically, how many keys are on a piano?','24','88','12','96','','answer2',0,0),(2402,'Which of these island countries is located in the Caribbean?','Fiji','Seychelles','Maldives','Barbados','','answer4',0,0),(2403,'When was the programming language &quot;C#&quot; released?','2000','1998','2001','1999','','answer1',0,0),(2404,'Which country does Austria not border?','France','Slovakia','Switzerland','Slovenia','','answer1',0,0),(2405,'In what year was the first Transformers movie released?','2007','2009','1986','1984','','answer3',0,0),(2406,'Which video game was recalled for containing a hidden, playable South Park episode?','Sonic Adventure','Tiger Woods 99 PGA Tour','Tony Hawk&#039;s Pro Skater 3','Madden 99','','answer2',0,0),(2407,'What is the name of Finnish DJ Darude&#039;s hit single released in October 1999?','Sirocco','Dust Devil','Sandstorm','Khamsin','','answer3',0,0),(2408,'The Southeast Asian island of Borneo is politically divided among 3 countries.','True','False','','','','answer1',0,0),(2409,'Metal Gear Solid V: The Phantom Pain runs on the Fox Engine.','True','False','','','','answer1',0,0),(2410,'The Rio 2016 Summer Olympics held it&#039;s closing ceremony on what date?','August 21','August 19','August 17','August 23','','answer1',0,0),(2411,'Which of these artists has NOT been a member of dancehall group Major Lazer?','Jillionaire','Skrillex','Diplo','Walshy Fire','','answer2',0,0),(2412,'Gordon Freeman, the protagonist of &quot;Half-Life&quot;, is said to have once had a ponytail.','True','False','','','','answer1',0,0),(2413,'Which of these songs is not by Tatsuro Yamashita?','Merry-Go Round','Lucky Lady Feel So Good','Love Talkin&#039;','Let&#039;s Dance Baby','','answer2',0,0),(2414,'Generally, which component of a computer draws the most power?','Hard Drive','Power Supply','Processor','Video Card','','answer4',0,0),(2415,'Which of the following is not a playable race in the MMORPG Guild Wars 2?','Tengu','Sylvari','Asura','Charr','','answer1',0,0),(2416,'The novel &quot;Jane Eyre&quot; was written by what author?','Charlotte Bront&amp;euml;','Louisa May Alcott','Jane Austen','Emily Bront&amp;euml;','','answer1',0,0),(2417,'What is the first weapon you acquire in Half-Life?','A pistol','A crowbar','Your fists','The H.E.V suit','','answer2',0,0),(2418,'In Fallout 4, which type of power armor is first encountered in the early mission &quot;When Freedom Calls&quot; in a crashed Vertibird?','X-01','T-60','T-45','T-51','','answer3',0,0),(2419,'In the game Destiny, who succeeded Peter Dinklage in voicing the protagonist&#039;s &quot;Ghost&quot;?','John DiMaggio','Nolan North','Mark Hamill','Troy Baker','','answer2',0,0),(2420,'What is the name of the peninsula containing Spain and Portugal?','European Peninsula','Iberian Peninsula','Scandinavian Peninsula','Peloponnesian Peninsula','','answer2',0,0),(2421,'In Supernatural, what&#039;s is Sam&#039;s brothers name?','Steve','Dave','Mike','Dean','','answer4',0,0),(2422,'The towns of Brugelette, Arlon and Ath are located in which country?','Luxembourg','Andorra','Belgium','France','','answer3',0,0),(2423,'Harvard University is located in which city?','New York','Cambridge','Providence','Washington D.C.','','answer2',0,0),(2424,'&quot;Yes, America Can!&quot; was this United States politician&#039;s de facto campaign slogan in 2004.','George W. Bush','Al Gore','Barack Obama','John Kerry','','answer1',0,0),(2425,'Which of the following United States Presidents served the shortest term in office?','Zachary Taylor','William Henry Harrison','Warren G. Harding','James A. Garfield','','answer2',0,0),(2426,'What year did the James Cameron film &quot;Titanic&quot; come out in theaters?','1997','1996','1999','1998','','answer1',0,0),(2427,'In the Pok&amp;eacute;mon series, which type is Sudowoodo, the Imitation Pok&amp;eacute;mon?','Bug','Ground','Grass','Rock','','answer4',0,0),(2428,'What was the original name of  &quot;Minecraft&quot;?','Minecraft: Order of the Stone','Cave Game','Dig And Build','Infiniminer','','answer2',0,0),(2429,'The Fallingwater House, located in Pennsylvania, was designed by which architect?','Le Corbusier','Antoni Gaudi','Frank Lloyd Wright','Frank Gehry','','answer3',0,0),(2430,'In which years did the Battle of Gallipoli take place?','1914 - 1918','1915 - 1918','1914 - 1915','1915 - 1916','','answer4',0,0),(2431,'In &quot;One Piece&quot;, who confirms the existence of the legendary treasure, One Piece?','Pirate King Gol D Roger','Former Marine Fleet Admiral Sengoku','Edward &quot;Whitebeard&quot; Newgate','Silvers Rayleigh','','answer3',0,0),(2432,'In Portal, the Companion Cube&#039;s ARE sentient.','True','False','','','','answer1',0,0),(2433,'In &quot;Star Trek&quot;, Klingons are commonly referred to as &quot;Black Elves&quot;.','True','False','','','','answer2',0,0),(2434,'In &quot;Final Fantasy VI&quot;, what is the name of (summoned) Gilgamesh&#039;s weakest attack?','Excalisore','Excalipoor','Excalisnore','Excalibore','','answer2',0,0),(2435,'In &quot;Doctor Who&quot;, the Doctor gets his TARDIS by stealing it.','False','True','','','','answer2',0,0),(2436,'In the &quot;Shrek&quot; film franchise, Donkey is played by Eddie Murphy.','False','True','','','','answer2',0,0),(2437,'Which company was established on April 1st, 1976 by Steve Jobs, Steve Wozniak and Ronald Wayne?','Microsoft','Apple','Commodore','Atari','','answer2',0,0),(2438,'Who of these people was the creator and director of the Katamari Damacy series?','Shu Takumi','Shinji Mikami','Hideki Kamiya','Keita Takahashi','','answer4',0,0),(2439,'What is the colour of unoxidized blood?','Green','Purple','Red','Blue','','answer3',0,0),(2440,'Which American family band had a 1986 top 10 hit with the song &#039;Crush On You&#039;?','The Jets','The Jacksons','The Cover Girls','DeBarge','','answer1',0,0),(2441,'According to their 1974 hit, what were Brownsville Station doing &quot;In The Boys&#039; Room&quot;?','Lovin&#039;','Hangin&#039;','Peein&#039;','Smokin&#039;','','answer4',0,0),(2442,'In the Batman comics, by what other name is the villain Dr. Jonathan Crane known?','Clayface','Bane','Scarecrow','Calendar Man','','answer3',0,0),(2443,'Before 2011, &quot;True Capitalist Radio&quot; was known by a different name. What was that name?','True Republican Radio','Texan Capitalist Radio','True Conservative Radio','United Capitalists','','answer3',0,0),(2444,'This movie contains the quote, &quot;I feel the need ... the need for speed!&quot;','Cocktail','The Color of Money','Days of Thunder','Top Gun','','answer4',0,0),(2445,'Like with the Neanderthals, Homo sapiens sapiens also interbred with the Denisovans.','True','False','','','','answer1',0,0),(2446,'The Japanese Shinkansen beat the French TGV&#039;s speed record for fastest electric rail train.','True','False','','','','answer2',0,0),(2447,'All of the following are towns/villages in the Pacific Island nation of Kiribati EXCEPT:','London','Rungata','Washington','Urutora','','answer4',0,0),(2448,'What is the 15th letter of the Greek alphabet?','Pi (&amp;Pi;)','Sigma (&amp;Sigma;)','Omicron (&amp;Omicron;)','Nu (&amp;Nu;)','','answer3',0,0),(2449,'Excluding their instructor, how many members of Class VII are there in the game &quot;Legend of Heroes: Trails of Cold Steel&quot;?','6','3','10','9','','answer4',0,0),(2450,'In &quot;Sonic Adventure&quot;, you are able to transform into Super Sonic at will after completing the main story.','True','False','','','','answer2',0,0),(2451,'What is the romanized Russian word for &quot;winter&quot;?','Vesna','Osen&#039;','Leto','Zima','','answer4',0,0),(2452,'Which of these characters in &quot;Stranger Things&quot; has the power of Telekinesis?','Mike','Karen','Eleven','Lucas','','answer3',0,0),(2453,'What device allows Tracer to manipulate her own time in the game &quot;Overwatch&quot;?','Chronal Accelerator','TMD (Time Manipulation Device)','B.L.I.N.K','Spacial Displacement Manipulator','','answer1',0,0),(2454,'Which coding language was the #1 programming language in terms of usage on GitHub in 2015?','C#','PHP','Python','JavaScript','','answer4',0,0),(2455,'Who co-founded the YouTube Let&#039;s Play channel &quot;Game Grumps&quot; alongside Newgrounds animator Egoraptor?','Pewdiepie','JonTron','Tobuscus','Markiplier','','answer2',0,0),(2456,'What is the area of Vatican City?','0.10km^2','0.44km^2','0.86km^2','12.00km^2','','answer2',0,0),(2457,'St. Louis is the capital of the US State Missouri.','True','False','','','','answer2',0,0),(2458,'Antarctica is the largest desert in the world.','True','False','','','','answer1',0,0),(2459,'Who played Sgt. Gordon Elias in &#039;Platoon&#039; (1986)?','Matt Damon','Willem Dafoe','Charlie Sheen','Johnny Depp','','answer2',0,0),(2460,'During the game&#039;s development, what was the first ever created Pok&amp;eacute;mon?','Arceus','Bulbasaur','Mew','Rhyhorn','','answer4',0,0),(2461,'Which computer language would you associate Django framework with?','C#','C++','Java','Python','','answer4',0,0),(2462,'Which American author was also a budding travel writer and wrote of his adventures with his dog Charley?','Ernest Hemingway','F. Scott Fitzgerald','William Faulkner','John Steinbeck','','answer4',0,0),(2463,'In what Anno game did the eco balance an part of the game play?','Anno 2070','Anno 1404','Anno 2205','Anno 1701','','answer1',0,0),(2464,'Microphones can be used not only to pick up sound, but also to project sound similar to a speaker.','False','True','','','','answer2',0,0),(2465,'In Super Mario Bros., who informs Mario that the princess is in another castle?','Luigi','Yoshi','Toad','Bowser','','answer3',0,0),(2466,'Android versions are named in alphabetical order.','True','False','','','','answer1',0,0),(2467,'What was the first Android version specifically optimized for tablets?','Marshmellow','Eclair','Froyo','Honeycomb','','answer4',0,0),(2468,'What breed of dog is &quot;Scooby Doo&quot;?','Doberman Pinscher','Pit bull','Boxer','Great Dane','','answer4',0,0),(2469,'In &quot;Starbound&quot;, according to the asset files, the description of the &quot;Erchius Ghost&quot; is the same as which other assets?','Pyromantle','Petricub','Spookit','Trictus','','answer3',0,0),(2470,'Killing Floor started as a mod for which Unreal Engine 2 game?','Unreal Tournament 2004','Postal','Deus Ex: Invisible War','Unreal Tournament 3','','answer1',0,0),(2471,'On which Beatles album would you find the song &#039;Eleanor Rigby&#039;?','Abbey Road','Revolver','Rubber Soul','Help!','','answer2',0,0),(2472,'In the film &quot;Interstellar&quot;, how long did they spend on Miller&#039;s planet?','15 years, 2 months, and 15 days','26 years, 4 months, and 10 days','23 years, 4 months, and 8 days','10 months and 6 days','','answer3',0,0),(2473,'The song &quot;Megalovania&quot; by Toby Fox made its third appearence in the 2015 RPG &quot;Undertale&quot;.','True','False','','','','answer1',0,0),(2474,'Manchester United won the 2013-14 English Premier League.','True','False','','','','answer2',0,0),(2475,'In what year did the Wall Street Crash take place?','1932','1929','1925','1930','','answer2',0,0),(2476,'Coca-Cola&#039;s original colour was green.','False','True','','','','answer1',0,0),(2477,'The Spitfire originated from a racing plane.','False','True','','','','answer2',0,0),(2478,'The S in Harry S. Truman stands for &quot;Samuel&quot;.','True','False','','','','answer2',0,0),(2479,'Irish musician Hozier released a music track in 2013 titled, &quot;Take Me to ______&quot;','Synagogue','Temple','Mosque','Church','','answer4',0,0),(2480,'Who is the villain company in &quot;Stardew Valley&quot;?','Ronin','Joja Co','Empire','Robotnik Industry&#039;s','','answer2',0,0),(2481,'The programming language &quot;Python&quot; is based off a modified version of &quot;JavaScript&quot;.','True','False','','','','answer2',0,0),(2482,'All of the following human genetic haplogroup names are shared between Y-chromosome and mitochondrial DNA haplogroups EXCEPT:','Haplogroup L','Haplogroup T','Haplogroup U','Haplogroup J','','answer3',0,0),(2483,'Which one of the following actors did not voice a character in &quot;Saints Row: The Third&quot;?','Hulk Hogan','Ron Jeremy','Burt Reynolds','Sasha Grey','','answer2',0,0),(2484,'Type 1 diabetes is a result of the liver working improperly.','False','True','','','','answer1',0,0),(2485,'Which football player is featured on the international cover version of the video game FIFA 16?','David Beckham','Wayne Rooney','Lionel Messi','Cristiano Ronaldo','','answer3',0,0),(2486,'&quot;Windows NT&quot; is a monolithic kernel.','False','True','','','','answer1',0,0),(2487,'On which day did the attempted coup d&#039;etat of 1991 in the Soviet Union begin?','December 26','August 21','August 19','December 24','','answer3',0,0),(2488,'What was the name of Ross&#039; pet monkey on &quot;Friends&quot;?','Jojo','Marcel','Champ','George','','answer2',0,0),(2489,'In &quot;Team Fortress 2&quot;, the &quot;Bill&#039;s Hat&quot; is a reference to the game &quot;Dota 2&quot;.','True','False','','','','answer2',0,0),(2490,'In the game Paper Mario for the Nintendo 64 the first partner you meet is a Goomba, what is its name?','Goombarry','Goomby','Goombario','Goombella','','answer3',0,0),(2491,'Which company has exclusive rights to air episodes of the &quot;The Grand Tour&quot;?','BBC','CCTV','Amazon','Netflix','','answer3',0,0),(2492,'How many normal endings are there in Cry Of Fear&#039;s campaign mode?','4','3','5','6','','answer1',0,0),(2493,'The Hunua Ranges is located in...','Nepal','New Zealand','China','Mexico','','answer2',0,0),(2494,'Sting, the lead vocalist of The Police, primarily plays what instrument?','Drums','Keyboards','Guitar','Bass Guitar','','answer4',0,0),(2495,'At what temperature does water boil?','181&amp;deg;F','178&amp;deg;F','200&amp;deg;F','212&amp;deg;F','','answer4',0,0),(2496,'In Monster Hunter Generations, which of the following monsters are a part of the &quot;Fated Four&quot;?','Astalos','Malfestio','Gore Magala','Arzuros','','answer1',0,0),(2497,'Which Nirvana album had a naked baby on the cover?','Nevermind','Incesticide','Bleach','In Utero','','answer1',0,0),(2498,'In TF2 Lore, what are the names of the Heavy&#039;s younger sisters?','Anna and Bronislava','Yana and Bronislava','Yanna and Gaba','Gaba and Anna','','answer2',0,0),(2499,'In 2006, which band released their debut album &quot;A Fever You Can&#039;t Sweat Out&quot;?','Fall Out Boy','Panic! At the Disco','Twenty One Pilots','My Chemical Romance','','answer2',0,0),(2500,'Which day in &quot;Papers, Please&quot; does the man in red appear?','Day 20','Day 23','Day 15','Day 17','','answer2',0,0),(2501,'Of the following space shooter games, which came out first?','Sinistar','Galaxian','Space Invaders','Galaga','','answer3',0,0),(2502,'How many rooms are there, not including the hallways and the set of stairs, in the board game &quot;Clue&quot;?','1','10','6','9','','answer4',0,0),(2503,'In the 1992 film &quot;Army of Darkness&quot;, what name does Ash give to his double-barreled shotgun?','Bloomstick','Blastbranch','2-Pump Chump','Boomstick','','answer4',0,0),(2504,'Scatman John&#039;s real name was John Paul Larkin.','False','True','','','','answer2',0,0),(2505,'In &quot;Star Trek&quot;, Klingons are commonly referred to as &quot;Black Elves&quot;.','False','True','','','','answer1',0,0),(2506,'Which of the following cellular device companies is NOT headquartered in Asia?','HTC','LG Electronics','Nokia','Samsung','','answer3',0,0),(2507,'What is the name of Cream the Rabbit&#039;s mom in the &quot;Sonic the Hedgehog&quot; series?','Peach','Mint','Vanilla','Strawberry','','answer3',0,0),(2508,'When did the website &quot;Facebook&quot; launch?','2004','2003','2006','2005','','answer1',0,0),(2509,'Who voices &quot;Shou Suzuki&quot; in the English dub of &quot;Mob Psycho 100&quot;?','David Naughton','Casey Mongillo','Ben Diskin','Chris Niosi','','answer2',0,0),(2510,'In Norse mythology, Thor once dressed as a woman.','False','True','','','','answer2',0,0),(2511,'Chickens can live without a head.','False','True','','','','answer2',0,0),(2512,'What does a funambulist walk on?','A Tight Rope','Broken Glass','The Moon','Balls','','answer1',0,0),(2513,'How many countries are inside the United Kingdom?','Four','One','Three','Two','','answer1',0,0),(2514,'What was Dorothy&#039;s surname in &#039;The Wizard Of Oz&#039;?','Gale','Perkins','Day','Parker','','answer1',0,0),(2515,'By what name is Carlos Estevez better known?','Bruno Mars','Ricky Martin','Charlie Sheen','Joaquin Phoenix','','answer3',0,0),(2516,'Which Japanese company is the world&#039;s largest manufacturer of motorcycles?','Kawasaki','Yamaha','Honda','Suzuki','','answer3',0,0),(2517,'What is the orange and white bot&#039;s name in &quot;Star Wars: The Force Awakens&quot;?','BB-8','AA-A','R2-D2','BB-3','','answer1',0,0),(2518,'What is the name of Finnish DJ Darude&#039;s hit single released in October 1999?','Dust Devil','Sandstorm','Sirocco','Khamsin','','answer2',0,0),(2519,'What age was King Henry V when he died?','73','62','36','87','','answer3',0,0),(2520,'The rights to the &quot;Rayman&quot; series are owned by which company?','Nintendo','EA','Sony','Ubisoft','','answer4',0,0),(2521,'In the original script of &quot;The Matrix&quot;, the machines used humans as additional computing power instead of batteries.','False','True','','','','answer2',0,0),(2522,'RAM stands for Random Access Memory.','True','False','','','','answer1',0,0),(2523,'Which band name isn&#039;t a Stand in &quot;JoJo&#039;s Bizzare Adventure&quot;?','AC/DC','Green Day','Survivor','Red Hot Chili Peppers','','answer1',0,0),(2524,'Which of these is NOT a car model produced by Malaysian car manufacturer Proton?','Kelisa','Saga','Perdana','Inspira','','answer1',0,0),(2525,'What did the Spanish autonomous community of Catalonia ban in 2010, that took effect in 2012?','Mariachi','Bullfighting','Fiestas','Flamenco','','answer2',0,0),(2526,'Who plays the Nemesis in the Resident Evil movies?','Eric Mabius','Matthew Taylor','Jason Dip','Jimmy Matts','','answer2',0,0),(2527,'Who is the protagonist of the videogame &quot;Dead Rising 2&quot;?','Frank West','Nick Ramos','Chuck Greene','Katie Greene','','answer3',0,0),(2528,'What year did the Boxing Day earthquake &amp; tsunami occur in the Indian Ocean?','2002','2004','2008','2006','','answer2',0,0),(2529,'Which company has exclusive rights to air episodes of the &quot;The Grand Tour&quot;?','Netflix','Amazon','BBC','CCTV','','answer2',0,0),(2530,'You could walk from Norway to North Korea while only passing through Russia.','False','True','','','','answer2',0,0),(2531,'The biggest distinction between a eukaryotic cell and a prokaryotic cell is:','The presence or absence of a nucleus','The presence or absence of certain organelles','The mode of reproduction','The overall size','','answer1',0,0),(2532,'Throughout the entirety of &quot;Dragon Ball Z&quot;, Goku only kills two characters: a miniboss named Yakon and Kid Buu.','True','False','','','','answer1',0,0),(2533,'Which iconic album cover features the pulsar waves of CP 1919 placed in the center of the cover?','The Velvet Underground &amp; Nico','Unknown Pleasures','The Dark Side of the Moon','London Calling','','answer2',0,0),(2534,'What is the name of the final villain in the manga series &quot;Bleach&quot;?','Yuhabah','Juha Bach','Juhabach','Yhwach','','answer4',0,0),(2535,'What was the name of the the first episode of Doctor Who to air in 1963?','An Unearthly Child','The Daleks','The Aztecs','The Edge of Destruction','','answer1',0,0),(2536,'In The Lord of the Rings: The Fellowship of the Ring, which one of the following characters from the book was left out of the film?','Strider','Tom Bombadil','Barliman Butterbur','Celeborn','','answer2',0,0),(2537,'Which of the following was NOT a playable character in the game Kingdom Hearts: Birth by Sleep?','Ignis','Ventus','Aqua','Terra','','answer1',0,0),(2538,'This trope refers to minor characters that are killed off to show how a monster works.','Cannon Fodder','Red Shirt','Expendables','Minions','','answer2',0,0),(2539,'This weapon in Counter-Strike: Global Offensive does not exist in real life.','AWP','MP9','M4A1','M4A4','','answer4',0,0),(2540,'What is the designation given to the Marvel Cinematic Universe?','Earth-616','Earth-10005','Earth-2008','Earth-199999','','answer4',0,0),(2541,'The creeper in Minecraft was the result of a bug while implementing which creature?','Cow','Pig','Zombie','Chicken','','answer2',0,0),(2542,'Which radio personality calls himself &quot;The King of All Media&quot;?','Howard Stern','Pete Tong','Rush Limbaugh','Ryan Seacrest','','answer1',0,0),(2543,'&quot;Minions&quot; was released on the June 10th, 2015.','False','True','','','','answer1',0,0),(2544,'Which operation in &quot;Tom Clancy&#039;s Rainbow Six Siege&quot; introduced the &quot;Skyscraper&quot; map?','Skull Rain','Dust Line','Velvet Shell','Red Crow','','answer4',0,0),(2545,'In the &quot;Halo&quot; series, what is the name of the race of aliens humans refer to as &quot;Grunts&quot;?','Unggoy','Huragok','Sangheili','Yanme&#039;e','','answer1',0,0),(2546,'Which of these is not a DLC vehicle in &quot;Mario Kart 8&quot;?','300 SL Roadster','Bone Rattler','Wild Wiggler','B Dasher','','answer3',0,0),(2547,'In the &quot;Jurassic Park&quot; universe, when did &quot;Jurassic Park: San Diego&quot; begin construction?','1993','1986','1988','1985','','answer4',0,0),(2548,'What is the world&#039;s most expensive spice by weight?','Cinnamon','Cardamom','Vanilla','Saffron','','answer4',0,0),(2549,'This field is sometimes known as &amp;ldquo;The Dismal Science.&amp;rdquo;','Politics','Philosophy','Physics','Economics','','answer4',0,0),(2550,'What is the main character of Metal Gear Solid 2?','Big Boss','Raiden','Solidus Snake','Venom Snake','','answer2',0,0),(2551,'In the  Rossini opera, what was the name of &#039;The Barber of Seville&#039;?','Angelo','Figaro','Fernando','Dave','','answer2',0,0),(2552,'A slug&amp;rsquo;s blood is green.','False','True','','','','answer2',0,0),(2553,'The Kākāpō is a large, flightless, nocturnal parrot native to which country?','Australia','New Zealand','Madagascar','South Africa','','answer2',0,0),(2554,'What is the best selling album of all time?','Back in Black','Abbey Road','The Dark Side of the Moon','Thriller','','answer4',0,0),(2555,'In the Morse code, which letter is indicated by 3 dots?','S','C','O','A','','answer1',0,0),(2556,'How many Star Spirits do you rescue in the Nintendo 64 video game &quot;Paper Mario&quot;?','5','10','7','12','','answer3',0,0),(2557,'What is the world&#039;s first video game console?','Magnavox Odyssey','Atari 2600','Coleco Telstar','Nintendo Color TV Game','','answer1',0,0),(2558,'What is the only state in the United States that does not have a flag in a shape with 4 edges?','Ohio','Florida','Idaho','New Mexico','','answer1',0,0),(2559,'&quot;I disapprove of what you say, but I will defend to the death your right to say it&quot; is a quote from French philosopher Voltaire.','False','True','','','','answer1',0,0),(2560,'The longest place named in the United States is Lake Chargoggagoggmanchauggagoggchaubunagungamaugg, located near Webster, MA.','False','True','','','','answer2',0,0),(2561,'What prime number comes next after 19?','23','27','21','25','','answer1',0,0),(2562,'What was the subject of the 2014 song &quot;CoCo&quot; by American rapper O. T. Genasis?','Conan O&#039;Brien','Cobalt(II) carbonate','Coconut cream pie','Cocaine','','answer4',0,0),(2563,'The term &quot;Spam&quot; came before the food product &quot;Spam&quot;.','False','True','','','','answer1',0,0),(2564,'By how many minutes are you late to work in &quot;Half-Life&quot;?','60','5','15','30','','answer4',0,0),(2565,'Which Variable Valve Timing technology is used by BMW?','VVT-iw','MultiAir','VVEL','VANOS','','answer4',0,0),(2566,'Which of these is NOT a playable character in &quot;Left 4 Dead&quot;?','Zoey','Bill','Louis','Nick','','answer4',0,0),(2567,'Which country has the record for the worlds largest orgy?','USA','Russia','Germany','Japan','','answer4',0,0),(2568,'Which water-type Pok&amp;eacute;mon starter was introduced in the 4th generation of the series?','Piplup','Oshawott','Totodile','Mudkip','','answer1',0,0),(2569,'When was Nintendo&#039;s Virtual Boy released?','1992','1997','1995','1989','','answer3',0,0),(2570,'Which day in &quot;Papers, Please&quot; does the man in red appear?','Day 20','Day 23','Day 15','Day 17','','answer2',0,0),(2571,'When did the United States formally declare war on Japan, entering World War II?','December 8, 1941','June 6, 1944','June 22, 1941','September 1, 1939','','answer1',0,0),(2572,'What is the name of the &quot;Flash&quot; and &quot;Arrow&quot; spinoff featuring a team of characters that have appeared on both shows?','Legends of Tomorrow','Heroes of Tomorrow','The Justice Society','The Justice Society of America','','answer1',0,0),(2573,'Who wrote the song &quot;You Know You Like It&quot;?','Steve Aoki','DJ Snake','Major Lazer','AlunaGeorge','','answer4',0,0),(2574,'What year did &quot;Attack on Titan&quot; Season 2 begin airing?','2019','2017','2020','2018','','answer2',0,0),(2575,'What is the region conjoining Pakistan, India, and China with unknown leadership called?','Andorra','Gibraltar','Kashmir','Quin','','answer3',0,0),(2576,'What does the International System of Quantities refer 1024 bytes as?','Kibibyte','Kilobyte','Kelobyte','Kylobyte','','answer1',0,0),(2577,'Which of these characters from &quot;SpongeBob SquarePants&quot; is not a squid?','Squidette','Squidward','Gary','Orvillie','','answer3',0,0),(2578,'What is a Burgee?','A flag','A window','A type of food','A rope','','answer1',0,0),(2579,'Leonardo da Vinci was not the creator of the Mona Lisa.','True','False','','','','answer2',0,0),(2580,'Which Apollo mission was the first one to land on the Moon?','Apollo 10','Apollo 9','Apollo 11','Apollo 13','','answer3',0,0),(2581,'Which popular First Person Shooter (FPS) franchise, got a Real Time Strategy (RTS) game developed based on its universe?','Call of Duty','Battlefield','Borderlands','Halo','','answer4',0,0),(2582,'In the Doctor Who universe, how many times can a time lord normally regenerate?','11','12','13','15','','answer2',0,0),(2583,'With which Greek philosopher would you associate the phrase, &quot;I know that I know nothing&quot;?','Pythagoras','Socrates','Aristotle','Plato','','answer2',0,0),(2584,'Which of these TrackMania environments was NOT in the original game?','Desert','Snow','Bay','Rally','','answer3',0,0),(2585,'Which state of the United States is the smallest?','Vermont','Maine','Rhode Island','Massachusetts','','answer3',0,0),(2586,'Which internet company began life as an online bookstore called &#039;Cadabra&#039;?','Overstock','Amazon','eBay','Shopify','','answer2',0,0),(2587,'The most graphically violent game to precede the creation of the ESRB (Entertainment Software Rating Board) was...','Duke Nukem','Resident Evil','Doom','Mortal Kombat','','answer4',0,0),(2588,'What is the elemental symbol for mercury?','Hy','Hg','Mc','Me','','answer2',0,0),(2589,'This is the correct spelling of &quot;Supercalifragilisticexpialidocious&quot;.','True','False','','','','answer1',0,0),(2590,'What is &quot;dabbing&quot;?','A medical procedure','A dance','A language','A sport','','answer2',0,0),(2591,'Which song in rapper Kanye West&#039;s album &quot;The Life of Pablo&quot; features Rihanna?','Ultralight Beam','Highlights','Wolves','Famous','','answer4',0,0),(2592,'What does TIE stand for in reference to the TIE Fighter in &quot;Star Wars&quot;?','Twin Inception Engine','Twin Ion Engine','Twin Intercepter Engine','Twin Iron Engine','','answer2',0,0),(2593,'The Ace Attorney trilogy was suppose to end with &quot;Phoenix Wright: Ace Attorney &amp;minus; Trials and Tribulations&quot; as its final game.','False','True','','','','answer2',0,0),(2594,'&quot;Metal Gear Solid 3: Snake Eater&quot; takes place on Shadow Moses Island.','True','False','','','','answer2',0,0),(2595,'Before the 19th Century, the &quot;Living Room&quot; was originally called the...','Sitting Room','Loft','Parlor','Open Room','','answer3',0,0),(2596,'Which of these Counter-Strike maps is a bomb defuse scenario?','747','Prodigy','Havana','Oilrig','','answer2',0,0),(2597,'Which musician has collaborated with American producer Porter Robinson and released the 2016 song &quot;Shelter&quot;?','deadmau5','Zedd','Mat Zo','Madeon','','answer4',0,0),(2598,'Which of these characters in &quot;Stranger Things&quot; has the power of Telekinesis?','Eleven','Mike','Karen','Lucas','','answer1',0,0),(2599,'You can legally drink alcohol while driving in Mississippi.','True','False','','','','answer1',0,0),(2600,'Which letter do you need to have on a European driver license in order to ride any motorbikes?','X','A','D','B','','answer2',0,0),(2601,'Capcom&#039;s survival horror title Dead Rising, canonically starts on what day of September 2006?','September 14th','September 30th','September 19th','September 21st','','answer3',0,0),(2602,'What happened to Half-Life 2 prior to its release, which resulted in Valve starting over the development of the game?','Way too many bugs to be fixed','The story was not good enough','The source code got leaked','They weren&#039;t satisfied with the result','','answer3',0,0),(2603,'&quot;Mongolia&quot; was a part of the now non-existent U.S.S.R.','True','False','','','','answer2',0,0),(2604,'How many seasons did &quot;Stargate SG-1&quot; have?','10','12','3','7','','answer1',0,0),(2605,'Which is the most abundant element in the universe?','Oxygen','Hydrogen','Lithium','Helium','','answer2',0,0),(2606,'&quot;Lift Your Spirit&quot; is an album by which artist?','Aloe Blacc','Lena Meyer-Landrut','Stevie Wonder','Taylor Swift','','answer1',0,0),(2607,'What is the real hair colour of the mainstream comic book version (Earth-616) of Daredevil?','Brown','Black','Blonde','Auburn','','answer3',0,0),(2608,'Pink Guy&#039;s debut album was &quot;Pink Season&quot;.','False','True','','','','answer1',0,0),(2609,'How much weight did Chris Pratt lose for his role as Star-Lord in &quot;Guardians of the Galaxy&quot;?','70 lbs','30 lbs','60 lbs','50 lbs','','answer3',0,0),(2610,'Which of these operators from &quot;Tom Clancy&#039;s Rainbow Six Siege&quot; has the ability to damage reinforced walls?','Jordan &quot;Thermite&quot; Trace','Eliza &quot;Ash&quot; Cohen','Dominic &quot;Bandit&quot; Brunsmeier','Seamus &quot;Sledge&quot; Cowden','','answer1',0,0),(2611,'In the game Pok&amp;eacute;mon Conquest, which warlord is able to bond with Zekrom and a shiny Rayquazza?','Oichi','Hideyoshi','The Player','Nobunaga','','answer4',0,0),(2612,'Which of these is not a DLC vehicle in &quot;Mario Kart 8&quot;?','B Dasher','Wild Wiggler','300 SL Roadster','Bone Rattler','','answer2',0,0),(2613,'Which of the following sports is not part of the triathlon?','Cycling','Swimming','Running','Horse-Riding','','answer4',0,0),(2614,'Which famous book is sub-titled &#039;The Modern Prometheus&#039;?','The Strange Case of Dr. Jekyll and Mr. Hyde','The Legend of Sleepy Hollow','Frankenstein','Dracula','','answer3',0,0),(2615,'What is the title of The Allman Brothers Band instrumental used as the theme to the BBC motoring show, &#039;Top Gear&#039;?','Erica','Angela','Sandra','Jessica','','answer4',0,0),(2616,'Who sang the theme song for the TV show &#039;Rawhide&#039;?','Slim Whitman','Tennessee Ernie Ford','Guy Mitchell','Frankie Laine','','answer4',0,0),(2617,'What is the defining characteristic of someone who is described as hirsute?','Hairy','Funny','Tall','Rude','','answer1',0,0),(2618,'What is Doug Walker&#039;s YouTube name?','The Cinema Snob','AngryJoeShow','The Nostalgia Critic','The Angry Video Game Nerd','','answer3',0,0),(2619,'In the original Star Trek TV series, what was Captain James T. Kirk&#039;s middle name?','Tyrone','Tiberius','Travis','Trevor','','answer2',0,0),(2620,'What was the world&#039;s first video game?','Pong','Spacewar!','Tennis for Two','Space Travel','','answer3',0,0),(2621,'All of the following programs are classified as raster graphics editors EXCEPT:','Inkscape','Paint.NET','GIMP','Adobe Photoshop','','answer1',0,0),(2622,'Which of the following is NOT a Russian car manufacturer?','Dragon','BYD','Silant','GAZ','','answer2',0,0),(2623,'Who was the star of the TV series &quot;24&quot;?','Hugh Laurie','Kevin Bacon','Rob Lowe','Kiefer Sutherland','','answer4',0,0),(2624,'In Kill La Kill, the weapon of the main protagonist is a katana.','True','False','','','','answer2',0,0),(2625,'What is the unit of currency in Laos?','Dollar','Kip','Ruble','Konra','','answer2',0,0),(2626,'The open source program Redis is a relational database server.','True','False','','','','answer2',0,0),(2627,'Josh Mansour is part of what NRL team?','Penrith Panthers','North Queensland Cowboys','Melbourne Storm','Sydney Roosters','','answer1',0,0),(2628,'Which one of these chassis codes are used by BMW 3-series?','E85','E46','E39','F10','','answer2',0,0),(2629,'Which of these songs is NOT included in the Suicide Squad OST?','Heathens - Twenty One Pilots','Fortunate Son - Creedence Clearwater Revival','Skies on Fire - AC/DC','Without Me - Eminem','','answer3',0,0),(2630,'Which of these is NOT a playable character in &quot;Left 4 Dead&quot;?','Nick','Bill','Louis','Zoey','','answer1',0,0),(2631,'In which year did the Tokyo Subway Sarin Attack occur?','1995','2001','2011','1991','','answer1',0,0),(2632,'The protagonist in the game &quot;Cave Story&quot; is named','Quote','Kazuma','Curly','Arthur','','answer1',0,0),(2633,'Which one of these is not a real game in the Dungeons &amp; Dragons series?','Advanced Dungeons &amp; Dragons 2nd edition','Advanced Dungeons &amp; Dragons','Dungeons &amp; Dragons 3.5th edition','Extreme Dungeons &amp; Dragons','','answer4',0,0),(2634,'What year was the first San Diego Comic-Con?','1970','1990','1985','2000','','answer1',0,0),(2635,'Which country does the electronic music duo &quot;The Knife&quot; originate from?','Finland','Norway','Sweden','Denmark','','answer3',0,0),(2636,'Which of the following is NOT a god in Norse Mythology.','Tyr','Snotra','Jens','Loki','','answer3',0,0),(2637,'Which city did the former NHL team &quot;The Nordiques&quot; originiate from?','Houston','New York','Montreal','Quebec City','','answer4',0,0),(2638,'What is the name of the formerly rich fishing grounds off the island of Newfoundland, Canada?','Mariana Trench','Great Barrier Reef','Grand Banks','Hudson Bay','','answer3',0,0),(2639,'Which data structure does FILO apply to?','Stack','Heap','Tree','Queue','','answer1',0,0),(2640,'How many rooms are there, not including the hallways and the set of stairs, in the board game &quot;Clue&quot;?','10','1','6','9','','answer4',0,0),(2641,'What year did the New Orleans Saints win the Super Bowl?','2011','2009','2010','2008','','answer2',0,0),(2642,'In the movie &quot;Blade Runner&quot;, what is the term used for human-like androids ?','Synthetics','Replicants','Cylons','Skinjobs','','answer2',0,0),(2643,'Who created the Cartoon Network series &quot;Regular Show&quot;?','J. G. Quintel','Pendleton Ward','Ben Bocquelet','Rebecca Sugar','','answer1',0,0),(2644,'Valve Corporation is an American video game developer located in which city?','Seattle, Washington','Bellevue, Washington','Austin, Texas','San Francisco, California','','answer2',0,0),(2645,'The characters of &quot;Log Horizon&quot; are trapped in what game?','Elder Tale','Tower Unite','Yggdrasil','Sword Art Online','','answer1',0,0),(2646,'What is the Klingon&#039;s afterlife called?','Sto-vo-kor','New Jersey','Valhalla','Karon&#039;gahk','','answer1',0,0),(2647,'Which Audi does not use Haldex based all wheel drive system?','Audi S3','Audi TT','Audi A3','Audi A8','','answer4',0,0),(2648,'In &quot;Jurassic World&quot;, which company purchases InGen and creates Jurassic World?','Biology Synthetics Technologies','International Genetic Technologies','International Genetics Incorporated','Masrani Global Corporation','','answer4',0,0),(2649,'Talos, the mythical giant bronze man, was the protector of which island?','Sicily','Crete','Cyprus','Sardinia','','answer2',0,0),(2650,'Which German sportswear company&#039;s logo is the &#039;Formstripe&#039;?','Puma','Reebok','Adidas','Nike','','answer1',0,0),(2651,'Who wrote and directed the 1986 film &#039;Platoon&#039;?','Oliver Stone','Stanley Kubrick','Francis Ford Coppola','Michael Cimino','','answer1',0,0),(2652,'Which retired American football quarterback played himself in &#039;Ace Ventura: Pet Detective&#039; and &#039;Little Nicky&#039;?','John Elway','Tom Brady','Joe Montana','Dan Marino','','answer4',0,0),(2653,'What is the first element on the periodic table?','Helium','Hydrogen','Lithium','Oxygen','','answer2',0,0),(2654,'Who is the star of the AMC series Breaking Bad?','Walter White','Jesse Pinkman','Skyler White','Saul Goodman','','answer1',0,0),(2655,'What was the first video game in the Batman &quot;Arkham&quot; series?','Arkham Asylum','Arkham Origins','Arkham Knight','Arkham City','','answer1',0,0),(2656,'What is the name of the Jewish New Year?','Elul','Succoss','Rosh Hashanah','New Year','','answer3',0,0),(2657,'Which of the following car manufacturers had a war named after it?','Ford','Volkswagen','Toyota','Honda','','answer3',0,0),(2658,'Which of these musicals won the Tony Award for Best Musical?','The Color Purple','Rent','American Idiot','Newsies','','answer2',0,0),(2659,'Which one of these artists appears in the album Deltron 3030?','Dan the Automater','Lamarr Kendrick','CeeLo Green','Danger Mouse','','answer1',0,0),(2660,'In &quot;Inuyasha&quot;, what are the heros are looking to collect?','Rave Stones','Sacred Stones','Dragon Balls','Jewel Shards','','answer4',0,0),(2661,'In the Pixar film, &quot;Toy Story&quot; what was the name of the child who owned the toys?','Danny','Matt','Andy','Edward','','answer3',0,0),(2662,'Gordon Freeman, the protagonist of &quot;Half-Life&quot;, is said to have once had a ponytail.','True','False','','','','answer1',0,0),(2663,'In Fallout 4, which type of power armor is first encountered in the early mission &quot;When Freedom Calls&quot; in a crashed Vertibird?','T-60','T-45','T-51','X-01','','answer2',0,0),(2664,'Which of these is a type of stretch/deep tendon reflex?','Scratch reflex','Ankle jerk reflex','Gag reflex','Pupillary light reflex','','answer2',0,0),(2665,'Human cells typically have how many copies of each gene?','1','4','3','2','','answer4',0,0),(2666,'In Splatoon, the Squid Sisters are named Tako and Yaki.','True','False','','','','answer2',0,0),(2667,'What tiny principality lies between Spain and France?','San Marino','Andorra','Monaco','Liechtenstein','','answer2',0,0),(2668,'What year was the United States Declaration of Independence signed?','1775','1777','1776','1774','','answer3',0,0),(2669,'The Lego Group was founded in 1932.','False','True','','','','answer2',0,0),(2670,'What is the name of the final villain in the manga series &quot;Bleach&quot;?','Juhabach','Juha Bach','Yhwach','Yuhabah','','answer3',0,0),(2671,'Which character, in the game &quot;Morenatsu&quot;, has the most possible endings to their route, at a total of four different endings?','Torahiko Ooshima','Shin Kuroi','Kouya Aotsuki','Soutarou Touno','','answer2',0,0),(2672,'Switzerland has four national languages, English being one of them.','True','False','','','','answer2',0,0),(2673,'In the title of the game &quot;Luigi&#039;s Mansion&quot;, what is the only letter to not appear with a pair of eyes in it?','m','s','i','n','','answer2',0,0),(2674,'How many playable characters are there in Super Smash Bros. for Nintendo 3DS and Wii U?','48','55','51','58','','answer4',0,0),(2675,'What was the name of the protagonist in the movie Commando (1985)?','John Matrix','Harry Tasker','Ben Richards','Douglas Quaid','','answer1',0,0),(2676,'Who played the Cenobite called &quot;Pinhead&quot; in the original Hellraiser films?','Doug Jones','Doug Benson','Doug Savant','Doug Bradley','','answer4',0,0),(2677,'During development of &quot;Super Mario World&quot;, Yoshi&#039;s hard saddle was originally which of these?','A spike','A shell','A poffin','A slide of Gelatin','','answer2',0,0),(2678,'What was the original name of  &quot;Minecraft&quot;?','Dig And Build','Minecraft: Order of the Stone','Infiniminer','Cave Game','','answer4',0,0),(2679,'In season one of the Netflix political drama &quot;House of Cards&quot;, what government position does Frank Underwood hold?','Attorney General','House Majority Whip','Chief of Staff','President','','answer2',0,0),(2680,'Like his character in &quot;Parks and Recreation&quot;, Aziz Ansari was born in South Carolina.','True','False','','','','answer1',0,0),(2681,'When Donkey Kong died in the &quot;Donkey Kong Country&quot; episode &quot;It&#039;s a Wonderful Life&quot;, who was his guardian angel?','Diddy Kong','Eddie the Mean Old Yeti','King K. Rool','Kiddy Kong','','answer2',0,0),(2682,'Which character from the Mega Man series made a small cameo on Volt Catfish&#039;s introduction scene in CD versions of Mega Man X3?','Auto','Eddie','Rush','Tango','','answer1',0,0),(2683,'Druid is a mage class in &quot;Log Horizon&quot;.','False','True','','','','answer1',0,0),(2684,'In the original DOOM (1993) which of the following is NOT a cheat code?','IDSPISPOPD','IDDQD','IDCLIP','IDFA','','answer3',0,0),(2685,'In &quot;JoJo&#039;s Bizarre Adventure&quot;, Father Enrico Pucchi uses a total of 3 stands in Part 6: Stone Ocean.','True','False','','','','answer1',0,0),(2686,'In &quot;Hunter x Hunter&quot;, what are members in Killua&#039;s family known for being?','Assassins','Bandits','Hunters','Ninjas','','answer1',0,0),(2687,'Named after a character he played in a 1969 film, what is the name of the ski resort in Utah that Robert Redford bought in 1968?','Booker','Woodward','Sundance','Turner','','answer3',0,0),(2688,'In which 1973 film does Yul Brynner play a robotic cowboy who malfunctions and goes on a killing	spree?','Runaway','Android','Westworld','The Terminators','','answer3',0,0),(2689,'Who painted the Sistine Chapel?','Michelangelo','Pablo Picasso','Leonardo da Vinci','Raphael','','answer1',0,0),(2690,'What common name is given to the medial condition, tibial stress syndrome (MTSS)?','Tennis Elbow','Carpal Tunnel','Housemaid&#039;s Knee','Shin Splints','','answer4',0,0),(2691,'Gannymede is the largest moon of which planet?','Uranus','Jupiter','Neptune','Mars','','answer2',0,0),(2692,'What is the main ship used by Commander Shepard in the Mass Effect Franchise called?','Osiris','Endeavour','Normandy','Infinity','','answer3',0,0),(2693,'In the programming language Java, which of these keywords would you put on a variable to make sure it doesn&#039;t get modified?','Public','Static','Private','Final','','answer4',0,0),(2694,'In the comic book &quot;Archie&quot;, Betty is friends with Veronica because she is rich.','False','True','','','','answer1',0,0),(2695,'What is the orange and white bot&#039;s name in &quot;Star Wars: The Force Awakens&quot;?','AA-A','R2-D2','BB-8','BB-3','','answer3',0,0),(2696,'The Axiom of Preventive Medicine states that people with ___ risk for a disease should be screened and we should treat ___ of those people.','high, all','low, some','high, some','low, all','','answer4',0,0),(2697,'What is the last name of Edward and Alphonse in the Fullmetal Alchemist series.','Elric','Elwood','Ellis','Eliek','','answer1',0,0),(2698,'What are rhino&#039;s horn made of?','Keratin','Bone','Ivory','Skin','','answer1',0,0),(2699,'When was the game &#039;Portal 2&#039; released?','2014','2011','2009','2007','','answer2',0,0),(2700,'The anime &quot;Lucky Star&quot; follows the story of one girl who is unaware she is God.','False','True','','','','answer1',0,0),(2701,'Which of these is the name of a cut enemy from &quot;Half-Life 2&quot;?','Hydra','Spike','Tremor','Cthulu','','answer1',0,0),(2702,'What year was Huun Huur Tu&#039;s album Altai Sayan Tandy-Uula released?','2004','1993','2006','2010','','answer1',0,0),(2703,'The main playable character of the 2015 RPG &quot;Undertale&quot; is a monster.','False','True','','','','answer1',0,0),(2704,'The Hagia Sophia was commissioned by which emperor of the Byzantine Empire?','Theodosius the Great','Justinian I','Arcadius','Constantine IV','','answer2',0,0),(2705,'Who voices the main character Blu in the 2011 animated film &quot;Rio&quot;?','Jonah Hill','Jesse Eisenberg','Zach Galifianakis','Michael Cera','','answer2',0,0),(2706,'Which animation studio animated the 2016 anime &quot;Mob Psycho 100&quot;?','Shaft','A-1 Pictures','Madhouse','Bones','','answer4',0,0),(2707,'A minotaur is half human half what?','Cow','Eagle','Horse','Bull','','answer4',0,0),(2708,'In Hitman: Blood Money, what is the name of the target in the mission &quot;Death of a Showman&quot;?','The Swing King','Maynard John','Joseph Clarence','Manuel Delgado','','answer3',0,0),(2709,'&quot;Yes, America Can!&quot; was this United States politician&#039;s de facto campaign slogan in 2004.','John Kerry','Al Gore','Barack Obama','George W. Bush','','answer4',0,0),(2710,'What city did the monster attack in the film, &quot;Cloverfield&quot;?','Orlando, Florida','Chicago, Illinois','Las Vegas, Nevada','New York, New York','','answer4',0,0),(2711,'Which restaurant&#039;s mascot is a clown?','Whataburger','McDonald&#039;s','Burger King','Sonic','','answer2',0,0),(2712,'Which team won the &quot;Tom Clancy&#039;s Rainbow Six Siege&quot; Invitational Event February 2017 in the PC Category?','Continuum','GIFU','eRa Eternity','Santos Dexterity','','answer1',0,0),(2713,'Zero factorial is equal to zero.','True','False','','','','answer2',0,0),(2714,'Klingons express emotion in art through opera and poetry.','False','True','','','','answer2',0,0),(2715,'Who voices &quot;Shou Suzuki&quot; in the English dub of &quot;Mob Psycho 100&quot;?','David Naughton','Chris Niosi','Ben Diskin','Casey Mongillo','','answer4',0,0),(2716,'What was the name of the police officer in the cartoon &quot;Top Cat&quot;?','Dibble','Barbrady','Mahoney','Murphy','','answer1',0,0),(2717,'What tool lends it&#039;s name to a last-stone advantage in an end in Curling?','Screwdriver','Drill','Hammer','Wrench','','answer3',0,0),(2718,'How many dice are used in the game of Yahtzee?','Six','Five','Four','Eight','','answer2',0,0),(2719,'In relation to the British Occupation in Ireland, what does the IRA stand for.','Irish Reformation Army','Irish Rebel Alliance','Irish Republican Army','Irish-Royal Alliance','','answer3',0,0),(2720,'Which of these stars is the largest?','RW Cephei','Betelgeuse','UY Scuti','VY Canis Majoris','','answer3',0,0),(2721,'Who is the writer of the game &quot;Half-Life&quot;?','Marc Laidlaw','Gabe Newell','Chet Faliszek','Robin Walker','','answer1',0,0),(2722,'By what nickname is Jack Dawkins known in the Charles Dickens novel, &#039;Oliver Twist&#039;?','Fagin','Mr. Fang','Bull&amp;rsquo;s-eye','The Artful Dodger','','answer4',0,0),(2723,'What alcoholic drink is made from molasses?','Gin','Whisky','Rum','Vodka','','answer3',0,0),(2724,'Which of the following James Bond villains is not affiliated with the SPECTRE organization?','Emilio Largo','Auric Goldfinger','Rosa Klebb','Dr. Julius No','','answer2',0,0),(2725,'This movie contains the quote, &quot;I love the smell of napalm in the morning!&quot;','The Deer Hunter','Apocalypse Now','Platoon','Full Metal Jacket','','answer2',0,0),(2726,'The words &quot;bungalow&quot; and &quot;shampoo&quot; originate from the languages of which country?','Ethiopia','Papua New Guinea','China','India','','answer4',0,0),(2727,'Which member of the English band &quot;The xx&quot; released their solo album &quot;In Colour&quot; in 2015?','Baria Qureshi','Romy Madley Croft','Jamie xx','Oliver Sim','','answer3',0,0),(2728,'Which of these aliases has NOT been used by electronic musician Aphex Twin?','Bradley Strider','Caustic Window','GAK','Burial','','answer4',0,0),(2729,'Pablo Picasso is one of the founding fathers of &quot;Cubism.&quot;','False','True','','','','answer2',0,0),(2730,'The term &quot;Spam&quot; came before the food product &quot;Spam&quot;.','True','False','','','','answer2',0,0),(2731,'How many sonatas did Ludwig van Beethoven write?','31','21','32','50','','answer3',0,0),(2732,'What&#039;s Harry Potter&#039;s dad&#039;s name?','James Potter','Joey Potter','Frank Potter','Hairy Potter Sr.','','answer1',0,0),(2733,'When was Elvis Presley born?','April 17, 1938','January 8, 1935','July 18, 1940','December 13, 1931','','answer2',0,0),(2734,'Who co-founded the YouTube Let&#039;s Play channel &quot;Game Grumps&quot; alongside Newgrounds animator Egoraptor?','Tobuscus','Pewdiepie','Markiplier','JonTron','','answer4',0,0),(2735,'Which song was the callsign for Stefan Verdemann&#039;s KWFM radio station in Urasawa Naoki&#039;s &quot;Monster&quot;?','What a Wonderful World','Singing In The Rain','Over the Rainbow','When You Wish Upon A Star','','answer3',0,0),(2736,'Which of these was the name of a bug found in April 2014 in the publicly available OpenSSL cryptography library?','Corrupted Blood','Shellscript','Heartbleed','Shellshock','','answer3',0,0),(2737,'Which country does the YouTuber &quot;SinowBeats&quot; originate from?','England','Germany','Scotland','Sweden','','answer3',0,0),(2738,'The Battle of Hastings was fought in which year?','1066','911','1204','1420','','answer1',0,0),(2739,'George W. Bush lost the popular vote in the 2004 United States presidential election.','False','True','','','','answer1',0,0),(2740,'What is the Finnish word for &quot;Finland&quot;?','Eesti','Suomi','Magyarorsz&amp;aacute;g','Sverige','','answer2',0,0),(2741,'What was the name of the actor who played Leatherface in the 1974 horror film, The Texas Chainsaw Massacre?','Gunnar Hansen','Edwin Neal','Joe Bill Hogan','John Dugan','','answer1',0,0),(2742,'In Pok&amp;eacute;mon, Bulbasaur is the only starter pokemon that is a Grass/Poison type.','True','False','','','','answer1',0,0),(2743,'In the Pok&amp;eacute;mon series, which type is Sudowoodo, the Imitation Pok&amp;eacute;mon?','Ground','Grass','Bug','Rock','','answer4',0,0),(2744,'In &quot;Fallout 4&quot;, what is the name of the dog you find at Red Rocket truck stop?','Dogmeat','Sparky','Chop','Quazar','','answer1',0,0),(2745,'Which one of these was not a member of the Fiendish Five in the game Sly Cooper and the Thievius Raccoonus?','Mz. Ruby','Dimitri Lousteau','Clockwerk','Muggshot','','answer2',0,0),(2746,'The character Momonga from the &quot;Overlord&quot; series orders his servants to call him by what name?','Master','Ainz Ooal Gown','Kugane Maruyama','Yggdrasil','','answer2',0,0),(2747,'In the &quot;Little Lost Girl&quot; Easter Egg in Call of Duty: Black Ops II, what&#039;s the last step required for the achievement?','Raise Hell','Ascend from Darkness','Freedom','Skewer the Winged Beast','','answer1',0,0),(2748,'In &quot;Jurassic World&quot;, which company purchases InGen and creates Jurassic World?','Masrani Global Corporation','International Genetic Technologies','Biology Synthetics Technologies','International Genetics Incorporated','','answer1',0,0),(2749,'According to the BBPA, what is the most common pub name in the UK?','Red Lion','White Hart','Royal Oak','King&#039;s Head','','answer1',0,0),(2750,'What is the nickname of Northampton town&#039;s rugby union club?','Saracens','Wasps','Harlequins','Saints','','answer4',0,0),(2751,'What&#039;s the famous line Vaas says in &quot;Far Cry 3&quot;?','Did I ever tell you the definition of Insanity?','Maybe your best course...would be to tread lightly.','Have I failed to entertain you?','You&#039;re my b*tch!','','answer1',0,0),(2752,'What was the name of the security vulnerability found in Bash in 2014?','Heartbleed','Shellshock','Bashbug','Stagefright','','answer2',0,0),(2753,'Video streaming website YouTube was purchased in it&#039;s entirety by Facebook for US$1.65 billion in stock.','False','True','','','','answer1',0,0),(2754,'In the Harry Potter universe, who does Draco Malfoy end up marrying?','Pansy Parkinson','Millicent Bulstrode','Hermione Granger','Astoria Greengrass','','answer4',0,0),(2755,'Scottish producer Calvin Harris is from the town of Dumfries, Scotland.','False','True','','','','answer2',0,0),(2756,'Which M83 album is the song &quot;Midnight City&quot; featured in?','Before the Dawn Heals Us','Hurry Up, We&#039;re Dreaming','Saturdays = Youth','Junk','','answer2',0,0),(2757,'The Herero genocide was perpetrated in Africa by which of the following colonial nations?','Germany','Britain','France','Belgium','','answer1',0,0),(2758,'Which of the following passenger jets is the longest?','Airbus A350-1000','Boeing 747-8','Airbus A330-200','Boeing 787-10','','answer2',0,0),(2759,'Sargon II, a king of the Neo-Assyrian Empire, was a direct descendant of Sargon of Akkad.','True','False','','','','answer2',0,0),(2760,'Which of the following countries banned the use of personal genetic ancestry tests?','Sweden','Canada','Austria','Germany','','answer4',0,0),(2761,'Nutella is produced by the German company Ferrero.','False','True','','','','answer1',0,0),(2762,'In &quot;Sonic the Hedgehog 2&quot; for the Sega Genesis, what do you input in the sound test screen to access the secret level select?','The date Sonic Team was founded','The first release date of &quot;Sonic the Hedgehog 2&quot;','The Lead Programmer&#039;s birthday','The first release date of &quot;Sonic the Hedgehog&quot;','','answer3',0,0),(2763,'Which country is hosting the 2018 FIFA World Cup?','United States','Germany','Russia','Saudi Arabia','','answer3',0,0),(2764,'Which of these is the name of a Japanese system of alternative medicine, literally meaning &quot;finger pressure&quot;?','Shiatsu','Majime','Ikigai','Ukiyo','','answer1',0,0),(2765,'Which of these is NOT a song featured on the Lockjaw EP released in 2013 by Flume &amp; Chet Faker?','What About Us','Drop The Game','Left Alone','This Song Is Not About A Girl','','answer3',0,0),(2766,'How many zombies need to be killed to get the &quot;Zombie Genocider&quot; achievement in Dead Rising (2006)?','53,593','53,594','53,595','53,596','','answer2',0,0),(2767,'Where and when was the first cardboard box made for industrial use?','England, 1917','England, 1817','United States, 1917','United States, 1817','','answer2',0,0),(2768,'&quot;Mongolia&quot; was a part of the now non-existent U.S.S.R.','False','True','','','','answer1',0,0),(2769,'Which of these is NOT a game under the Worms series?','Ultimate Mayhem','Crazy Golf','Clan Wars','Major Malfunction','','answer4',0,0),(2770,'In Jeff Wayne&#039;s Musical Version of War of the Worlds, the chances of anything coming from Mars are...','A hundred to one','A billion to one','A million to one','A trillion to one','','answer3',0,0),(2771,'Which famous 90&#039;s rap album is commonly referred to as &quot;The Bible of Hip Hop&quot;?','Illmatic','The Chronic','Enter The Wu-Tang (36 Chambers)','The Low End Theory','','answer1',0,0),(2772,'Who recorded the album called &quot;Down to the Moon&quot; in 1986?','Bing Crosby','Enya','Jean-Michel Jarre','Andreas Vollenweider','','answer4',0,0),(2773,'Time on Computers is measured via the EPOX System.','False','True','','','','answer1',0,0),(2774,'What was Radiohead&#039;s first album?','The Bends','A Moon Shaped Pool','Pablo Honey','Kid A','','answer3',0,0),(2775,'The voice actor for which Portal 2 character was not a TV or film actor prior to the game?','Wheatley','Atlas / P-Body','Cave Johnson','GLaDOS','','answer4',0,0),(2776,'What is the name of the Canadian national anthem?','O Canada','O Red Maple','March of the Puck Drop','Leaf-Spangled Banner','','answer1',0,0),(2777,'What was the bloodiest single-day battle during the American Civil War?','The Siege of Vicksburg','The Battles of Chancellorsville','The Battle of Gettysburg','The Battle of Antietam','','answer4',0,0),(2778,'What was the name of the protagonist of Metal Gear Solid V: The Phantom Pain?','Ocelot','Punished &quot;Venom&quot; Snake','Miller','Solid Snake','','answer2',0,0),(2779,'Mortal Kombat was almost based on Jean-Claude Van Damme movie.','True','False','','','','answer1',0,0),(2780,'Which rapper had an album that went double platinum with no features?','J. Cole','Big Sean','Kendrick Lamar','Drake','','answer1',0,0),(2781,'In &quot;Doctor Who&quot;, the Doctor gets his TARDIS by stealing it.','False','True','','','','answer2',0,0),(2782,'When was the Sega Genesis released in Japan?','October 29, 1988','September 1, 1986','November 30, 1990','August 14, 1989','','answer1',0,0),(2783,'How many times did Martina Navratilova win the Wimbledon Singles Championship?','Eight','Seven','Nine','Ten','','answer3',0,0),(2784,'What country is the second largest in the world by area?','Russia','China','Canada','United States of America','','answer3',0,0),(2785,'Who is the lead singer of Pearl Jam?','Stone Gossard','Ozzy Osbourne','Eddie Vedder','Kurt Cobain','','answer3',0,0),(2786,'The Mann Co. Store from Team Fortress 2 has the slogan &quot;We hire mercenaries and get in fights&quot;.','False','True','','','','answer1',0,0),(2787,'Who directed the 2015 movie &quot;The Revenant&quot;?','David Fincher','Christopher Nolan','Wes Anderson','Alejandro G. I&amp;ntilde;&amp;aacute;rritu','','answer4',0,0),(2788,'In &quot;Super Mario 64&quot;, collecting 100 coins on a level will give you a 1-UP.','True','False','','','','answer2',0,0),(2789,'When was &quot;YouTube&quot; founded?','May 22, 2004','September 12, 2005','February 14, 2005','July 19, 2009','','answer3',0,0),(2790,'Which of the following countries does NOT recognize Armenia as an independent country?','Iran','Pakistan','Azerbaijan','Turkey','','answer2',0,0),(2791,'On which day did the attempted coup d&#039;etat of 1991 in the Soviet Union begin?','August 19','August 21','December 24','December 26','','answer1',0,0),(2792,'When was Steam first released?','2003','2007','2011','2004','','answer1',0,0),(2793,'Who painted &quot;Swans Reflecting Elephants&quot;, &quot;Sleep&quot;, and &quot;The Persistence of Memory&quot;?','Jackson Pollock','Salvador Dali','Edgar Degas','Vincent van Gogh','','answer2',0,0),(2794,'If you grab the bladed end of a longsword in a specific way, you will not cut yourself.','True','False','','','','answer1',0,0),(2795,'In Need For Speed Most Wanted (2005), what do you drive at the beginning of the career mode?','Nissan 240SX','BMW M3 GTR','Porsche 911 Turbo','Ford Mustang','','answer2',0,0),(2796,'TF2: The Medic will be credited for an assist if he heals a Spy that successfully saps a building.','True','False','','','','answer1',0,0),(2797,'Which band released songs suchs as &quot;Rio&quot;, &quot;Girls on Film&quot;, and &quot;The Reflex&quot;?','The Cure','Duran Duran','New Order','Depeche Mode','','answer2',0,0),(2798,'What is the number 29 in binary form?','11101','10100','10101','11100','','answer1',0,0),(2799,'In Danganronpa: Trigger Happy Havoc, what is the protagonist&#039;s name?','Nagito Komaeda','Makoto Naegi','Komaru Naegi','Hajime Hinata','','answer2',0,0),(2800,'What is the correct term for the metal object in between the CPU and the CPU fan within a computer system?','Heat Sink','Heat Vent','CPU Vent','Temperature Decipator','','answer1',0,0),(2801,'In programming, the ternary operator is mostly defined with what symbol(s)?','??','if then','?','?:','','answer4',0,0),(2802,'In Monster Hunter Generations, which of the following monsters are a part of the &quot;Fated Four&quot;?','Malfestio','Astalos','Gore Magala','Arzuros','','answer2',0,0),(2803,'The 2016 song &quot;Starboy&quot; by Canadian singer The Weeknd features which prominent electronic artist?','Disclosure','Daft Punk','DJ Shadow','deadmau5','','answer2',0,0),(2804,'Sean Connery wasn&#039;t in &quot;Indiana Jones and the Kingdom of the Crystal Skull&quot; because he found retirement too enjoyable.','True','False','','','','answer1',0,0),(2805,'One of Donald Trump&#039;s 2016 Presidential Campaign promises was to build a border wall between the United States and Mexico.','False','True','','','','answer2',0,0),(2806,'What is the Finnish word for &quot;Finland&quot;?','Eesti','Magyarorsz&amp;aacute;g','Sverige','Suomi','','answer4',0,0),(2807,'Which one of these cartoon characters is NOT voiced by Rob Paulsen?','Yakko Warner (Animaniacs)','The Mask (The Mask, TV Series)','Max Tennyson (Ben 10)','Carl Wheezer (Jimmy Neutron)','','answer3',0,0),(2808,'What is the name of the copper-rich protein that creates the blue blood in the Antarctic octopus?','Iron','Cytochrome','Methionine','Hemocyanin','','answer4',0,0),(2809,'According to the 2014-2015 Australian Bureau of Statistics, what percentage of Australians were born overseas?','20%','13%','28%','7%','','answer3',0,0),(2810,'In the game &quot;Brawlhalla&quot;, what species is the character B&amp;ouml;dvar is?','Half Wolf / Half Bear','A Human','Half Human / Half Bear','Half Tiger /  Half Human','','answer3',0,0),(2811,'In a standard game of Monopoly, what colour are the two cheapest properties?','Blue','Yellow','Brown','Green','','answer3',0,0),(2812,'Who wrote and directed the 1986 film &#039;Platoon&#039;?','Oliver Stone','Michael Cimino','Stanley Kubrick','Francis Ford Coppola','','answer1',0,0),(2813,'What is the name of James Dean&#039;s character in the 1955 movie &quot;Rebel Without a Cause&quot;?','Ned Stark','Jim Stark','Frank Stark','Jim Kane','','answer2',0,0),(2814,'How many degrees Fahrenheit is 100 degrees Celsius?','100','326','212','451','','answer3',0,0),(2815,'The series of the Intel HD graphics generation succeeding that of the 5000 and 6000 series (Broadwell) is called:','HD Graphics 500','HD Graphics 600','HD Graphics 700','HD Graphics 7000','','answer1',0,0),(2816,'Which of the following blood vessels carries deoxygenated blood?','Pulmonary Vein','Pulmonary Artery','Coronary Artery','Aorta','','answer2',0,0),(2817,'Where was the Sniper character in Team Fortress 2 born?','South Africa','New Zealand','Australia','Antarctica','','answer2',0,0),(2818,'Bulls are attracted to the color red.','True','False','','','','answer2',0,0),(2819,'Which German city is located on the River Isar?','Berlin','Munich','Hamburg','Dortmund','','answer2',0,0),(2820,'What is the romanized Arabic word for &quot;moon&quot;?','Qamar','Shams','Najma','Kawkab','','answer1',0,0),(2821,'In World of Warcraft lore, Thrall is the original wielder of &quot;Doomhammer&quot;.','False','True','','','','answer1',0,0),(2822,'When did the Battle of the Bulge end?','December 16, 1944','January 25, 1945','August 6, 1945','December 7, 1941','','answer2',0,0),(2823,'In Call of Duty: United Offensive, what two soldiers share a name of a video game character?','Nathan &amp; Drake','Gordon &amp; Freeman','Dig &amp; Dug','Sam &amp; Fisher','','answer2',0,0),(2824,'Who voice acted the character Hiccup in the movie &quot;How to Train Your Dragon&quot;?','Jay Baruchel','Gerard Butler','John Powell','Jack Brauchel','','answer1',0,0),(2825,'Which of these is NOT the name of a team leader in Pok&amp;eacute;mon GO?','Blanche','Candela','Spark','Leif','','answer4',0,0),(2826,'In an orchestra, what is the lowest member of the brass family?','Bassoon','Contrabass','Tuba','Trombone','','answer3',0,0),(2827,'How tall is Tom Cruise?','5&amp;prime; 4&amp;Prime;','5&amp;prime; 9&amp;Prime;','5&amp;prime; 7&amp;Prime;','5&amp;prime; 5&amp;Prime;','','answer3',0,0),(2828,'In Danganronpa: Trigger Happy Havoc, what is the protagonist&#039;s name?','Nagito Komaeda','Makoto Naegi','Hajime Hinata','Komaru Naegi','','answer2',0,0),(2829,'J.K. Rowling completed &quot;Harry Potter and the Deathly Hallows&quot; in which hotel in Edinburgh, Scotland?','The Dunstane Hotel','Sheraton Grand Hotel &amp; Spa','Hotel Novotel','The Balmoral','','answer4',0,0),(2830,'Kanye West at 2009 VMA&#039;s interrupted which celebrity?','MF DOOM','Beck','Beyonce','Taylor Swift','','answer4',0,0),(2831,'In Scandinavian languages, the letter &amp;Aring; means river.','False','True','','','','answer2',0,0),(2832,'What element does the Zinogre use in Monster Hunter?','Water','Thunder','Ice','Fire','','answer2',0,0),(2833,'&quot;Minions&quot; was released on the June 10th, 2015.','True','False','','','','answer2',0,0),(2834,'In what year was the Oculus Rift revealed to the public through a Kickstarter campaign?','2010','2013','2011','2012','','answer4',0,0),(2835,'In &quot;Donkey Kong Country&quot;, why does Donkey Kong want to know the secret of the crystal coconut?','To find out where all the bananas are.','Because Diddy Kong forced him.','He wants to punish brutes.','He&#039;s the big kahuna.','','answer4',0,0),(2836,'In the &quot;Sailor Moon&quot; series, what is Sailor Jupiter&#039;s civilian name?','Minako Aino','Makoto Kino','Usagi Tsukino','Rei Hino','','answer2',0,0),(2837,'Who won the &quot;Champions League&quot; in 1999?','Manchester United','Liverpool','Barcelona','Bayern Munich','','answer1',0,0),(2838,'Who voices &quot;Shou Suzuki&quot; in the English dub of &quot;Mob Psycho 100&quot;?','Ben Diskin','David Naughton','Chris Niosi','Casey Mongillo','','answer4',0,0),(2839,'The ghosts in &quot;Pac-Man&quot; and &quot;Ms. Pac-Man&quot; have completely different behavior.','False','True','','','','answer2',0,0),(2840,'Who painted the Mona Lisa?','Claude Monet','Leonardo da Vinci','Vincent van Gogh','Pablo Picasso','','answer2',0,0),(2841,'In the TV series &quot;Person of Interest&quot;, who plays the character &quot;Harold Finch&quot;?','Taraji P. Henson','Jim Caviezel','Michael Emerson','Kevin Chapman','','answer3',0,0),(2842,'When was the first Call of Duty title released?','November 14, 2002','October 29, 2003','December 1, 2003','July 18, 2004','','answer2',0,0),(2843,'Which German sportswear company&#039;s logo is the &#039;Formstripe&#039;?','Puma','Nike','Reebok','Adidas','','answer1',0,0),(2844,'Which element has the chemical symbol &#039;Fe&#039;?','Tin','Gold','Silver','Iron','','answer4',0,0),(2845,'Who wrote the Sinead O`Connor hit &#039;Nothing Compares 2 U&#039;?','Rick James','Cameo','Michael Jackson','Prince','','answer4',0,0),(2846,'Who had a 1983 hit with the song &#039;Africa&#039;?','Steely Dan','Journey','Toto','Foreigner','','answer3',0,0),(2847,'What is the first book of the Old Testament?','Numbers','Genesis','Exodus','Leviticus','','answer2',0,0),(2848,'What state is the largest state of the United States of America?','Alaska','Washington','California','Texas','','answer1',0,0),(2849,'Which country inside the United Kingdom does NOT appear on its flag, the Union Jack?','Ireland','Wales','Scotland','Isle of Wight','','answer2',0,0),(2850,'What is the name of the former country that was succeeded by countries such as Serbia, Croatia and Slovenia?','Abkhazia','Czechoslovakia','South Ossetia','Yugoslavia','','answer4',0,0),(2851,'Rapper Snoop Dogg&#039;s real name is &#039;Cordozar Calvin Broadus, Jr.&#039;.','False','True','','','','answer2',0,0),(2852,'In what sport is a &quot;shuttlecock&quot; used?','Table Tennis','Badminton','Rugby','Cricket','','answer2',0,0),(2853,'The Queen song `A Kind Of Magic` is featured in which 1986 film?','Labyrinth','Highlander','Howard the Duck','Flash Gordon','','answer2',0,0),(2854,'This movie contains the quote, &quot;Nobody puts Baby in a corner.&quot;','Pretty in Pink','Ferris Bueller&#039;s Day Off','Dirty Dancing','Three Men and a Baby','','answer3',0,0),(2855,'Which member of the English band &quot;The xx&quot; released their solo album &quot;In Colour&quot; in 2015?','Jamie xx','Baria Qureshi','Oliver Sim','Romy Madley Croft','','answer1',0,0),(2856,'Which of these songs by Skrillex features Fatman Scoop as a side artist?','All is Fair in Love and Brostep','Recess','Scary Monsters and Nice Sprites','Rock N Roll (Will Take You to the Mountain)','','answer2',0,0),(2857,'What is the highest belt you can get in Taekwondo?','Green','White','Black','Red','','answer3',0,0),(2858,'&quot;The Big Bang Theory&quot; was first theorized by a priest of what religious ideology?','Catholic','Jewish','Christian','Islamic','','answer1',0,0),(2859,'On Twitter, what is the character limit for a Tweet?','120','160','100','140','','answer4',0,0),(2860,'&quot;Elementary, my dear Watson&quot; is a phrase that is never truly said within the Conan Doyle books of Sherlock Holmes.','False','True','','','','answer2',0,0),(2861,'In the &quot;Toaru Majutsu no Index&quot; anime, Touma Kamijou is a level 0 esper that has the ability to do what?','Dispell any esper or magical powers','Make telepathic communications','Create electricity from his own body','Teleport','','answer1',0,0),(2862,'The Windows ME operating system was released in the year 2000.','False','True','','','','answer2',0,0),(2863,'An Astronomical Unit is the distance between Earth and the Moon.','False','True','','','','answer1',0,0),(2864,'What do you declare in Rīchi Mahjong when you&#039;ve drawn your winning tile?','Kan','Ron','Tsumo','Rīchi','','answer3',0,0),(2865,'In Macbeth, the eyes of what animals were used in the Witches&#039; cauldron?','Squids','Newts','Humans','Sharks','','answer2',0,0),(2866,'What is the Finnish word for &quot;Finland&quot;?','Magyarorsz&amp;aacute;g','Eesti','Sverige','Suomi','','answer4',0,0),(2867,'In Undertale, how much do Spider Donuts cost in Hotland?','12G','9999G','7G','40G','','answer2',0,0),(2868,'When was the game &quot;Roblox&quot; released?','2002','2003','2007','2006','','answer4',0,0),(2869,'In &quot;Paper Mario: The Thousand Year Door&quot;, what is Hooktail&#039;s weakness?','The &quot;Ice Storm&quot; Item','The Hammer','Attacks from Koopas','The Sound of Crickets','','answer4',0,0),(2870,'Who is the main protagonist of &quot;Ace Combat Zero: The Belkan War&quot;?','Cipher','Mobius 1','Blaze','Pixy','','answer1',0,0),(2871,'What year does Part 7 of &quot;JoJo&#039;s Bizarre Adventure&quot; take place in?','1999','1890','1888','2003','','answer2',0,0),(2872,'Which species is a &quot;mountain chicken&quot;?','Fly','Horse','Chicken','Frog','','answer4',0,0),(2873,'What&#039;s the name of the main protagonist in the &quot;Legend of Zelda&quot; franchise?','Link','Mario','Pit','Zelda','','answer1',0,0),(2874,'In the 1976 film &#039;Taxi Driver&#039;, how many guns did Travis buy from the salesman?','2','1','4','6','','answer3',0,0),(2875,'Which &#039;Family Guy&#039; character got his own spin-off show in 2009?','Glenn Quagmire','The Greased-up Deaf Guy','Joe Swanson','Cleveland Brown','','answer4',0,0),(2876,'The body of the Egyptian Sphinx was based on which animal?','Lion','Bull','Dog','Horse','','answer1',0,0),(2877,'What town was &quot;Springfield&quot; from &quot;The Simpsons&quot; originally named after?','Springfield, Massachusetts','Springfield, Illinois','Springfield, Missouri','Springfield, Oregon','','answer4',0,0),(2878,'Which of the following is the world&#039;s best-selling book?','Harry Potter and the Philosopher&#039;s Stone','The Da Vinci Code','The Little Prince','The Lord of the Rings','','answer4',0,0),(2879,'Which member of the Foo Fighters was previously the drummer for Nirvana?','Nate Mendel','Dave Grohl','Chris Shiflett','Taylor Hawkins','','answer2',0,0),(2880,'Which gas forms about 78% of the Earth&amp;rsquo;s atmosphere?','Oxygen','Carbon Dioxide','Argon','Nitrogen','','answer4',0,0),(2881,'The computer OEM manufacturer Clevo, known for its Sager notebook line, is based in which country?','Germany','China (People&#039;s Republic of)','Taiwan','United States','','answer3',0,0),(2882,'List the following Iranic empires in chronological order:','Achaemenid, Median, Parthian, Sassanid','Median, Achaemenid, Parthian, Sassanid','Achaemenid, Median, Sassanid, Parthian','Median, Achaemenid, Sassanid, Parthian','','answer2',0,0),(2883,'The largest consumer market in 2015 was...','Germany','Japan','The United States of America','United Kingdom','','answer3',0,0),(2884,'Which Queen song was covered by Brittany Murphy in the 2006 film &quot;Happy Feet&quot;?','Under Pressure','Flash','Bohemian Rhapsody','Somebody to Love','','answer4',0,0),(2885,'How many classes are there in Team Fortress 2?','9','10','7','8','','answer1',0,0),(2886,'When was &quot;The Gadget&quot;, the first nuclear device to be detonated, tested?','August 6, 1945','June 22, 1945','April 5, 1945','July 16, 1945','','answer4',0,0),(2887,'Who was the first female protagonist in a video game?','Samus Aran','Alis Landale','Lara Croft','Chell','','answer1',0,0),(2888,'What is the French word for &quot;hat&quot;?','Bonnet','&amp;Eacute;charpe','Casque','Chapeau','','answer4',0,0),(2889,'In the &quot;Half-Life&quot; series, &quot;H.E.V&quot; stands for &quot;Hazardous Evasiveness Vest&quot;','True','False','','','','answer2',0,0),(2890,'Rabbits are rodents.','False','True','','','','answer1',0,0),(2891,'How many normal endings are there in Cry Of Fear&#039;s campaign mode?','4','6','3','5','','answer1',0,0),(2892,'What animal is on Link&#039;s pajamas in The Legend of Zelda: The Wind Waker?','Lobster','Swordfish','Crawfish','Salmon','','answer3',0,0),(2893,'In Chemistry, how many isomers does Butanol (C4H9OH) have?','4','3','5','6','','answer1',0,0),(2894,'In the television show Breaking Bad, what is the street name of Walter and Jesse&#039;s notorious product?','Pure Glass','Rock Candy','Baby Blue','Blue Sky','','answer4',0,0),(2895,'In the periodic table, Potassium&#039;s symbol is the letter K.','False','True','','','','answer2',0,0),(2896,'Unlike on most salamanders, this part of a newt is flat?','Head','Teeth','Tail','Feet','','answer3',0,0),(2897,'In most traditions, who was the wife of Zeus?','Hestia','Aphrodite','Athena','Hera','','answer4',0,0),(2898,'What CS:GO case contains the Butterfly Knife?','Vanguard Case','Breakout Case','Shadow Case','Esports 2014 Case','','answer2',0,0),(2899,'What was Daft Punk&#039;s first studio album?','Human After All','Random Access Memories','Discovery','Homework','','answer4',0,0),(2900,'Joan Cusack starred in the 2009 disaster movie, &quot;2012&quot;.','False','True','','','','answer1',0,0),(2901,'During development of &quot;Super Mario World&quot;, Yoshi&#039;s hard saddle was originally which of these?','A shell','A spike','A poffin','A slide of Gelatin','','answer1',0,0),(2902,'What was the aim of the &quot;Umbrella Revolution&quot; in Hong Kong in 2014?','Gaining Independence','Go back under British Rule','Lower taxes','Genuine universal suffrage','','answer4',0,0),(2903,'Burning which of these metals will produce a bright white flame?','Copper','Lead','Magnesium','Lithium','','answer3',0,0),(2904,'What was William Frederick Cody better known as?','Wild Bill Hickok','Billy the Kid','Buffalo Bill','Pawnee Bill','','answer3',0,0),(2905,'The first computer bug was formed by faulty wires.','False','True','','','','answer1',0,0),(2906,'Which Japanese company is the world&#039;s largest manufacturer of motorcycles?','Kawasaki','Honda','Yamaha','Suzuki','','answer2',0,0),(2907,'Which of the following was NOT a capital of Assyria:','Kalhu','Nineveh','A&amp;scaron;&amp;scaron;ur','Harran','','answer4',0,0),(2908,'In the anime Initial D, how does Takumi Fujiwara describe a drift?','&#039;. . . you turn a lot&#039;','&#039;. . . the front tires slide so the car won&#039;t face the inside&#039;','&#039;. . . the wheels lose traction, making the car slide sideways&#039;','&#039;. . . the car oversteers through a curve, causing it to turn faster&#039;','','answer2',0,0),(2909,'How many officially recognized dwarf planets in the solar system are named after Polynesian deities?','2','1','5','0','','answer1',0,0),(2910,'In which city did American rap producer DJ Khaled originate from?','New York','Atlanta','Miami','Detroit','','answer3',0,0),(2911,'In the 2002 video game &quot;Kingdom Hearts&quot;, how many playable worlds were there?','16','14','11','13','','answer2',0,0),(2912,'What is the scientific name for the &quot;Polar Bear&quot;?','Ursus Arctos','Polar Bear','Ursus Maritimus','Ursus Spelaeus','','answer3',0,0),(2913,'In the 1971 film &quot;Willy Wonka &amp; the Chocolate Factory&quot;, who played Willy Wonka?','Gene Wilder','Johnny Depp','Peter Ostrum','Shia LeBouf','','answer1',0,0),(2914,'The card game &quot;Munchkin&quot; won the 2001 Origins Award for Best Traditional Card Game.','True','False','','','','answer1',0,0),(2915,'In what Disney movie can you spot the character &quot;Pac-Man&quot; in if you look closely enough in some scenes?','Tron','Fantasia','Big Hero 6','Monsters, Inc.','','answer1',0,0),(2916,'Sitting for more than three hours a day can cut two years off a person&#039;s life expectancy.','False','True','','','','answer2',0,0),(2917,'How long was the World Record Speed Run of Valve Software&#039;s &quot;Half-Life&quot; that was done in 2014.','20 Minutes, 41 Seconds','12 Minutes, 59 Seconds','45 Minutes, 32 Seconds','5 Minutes, 50 Seconds','','answer1',0,0),(2918,'Adolf Hitler was born on which date?','April 20, 1889','April 16, 1889','June 12, 1889','February 6, 1889','','answer1',0,0),(2919,'Which of these songs by artist Eminem contain the lyric &quot;Nice to meet you. Hi, my name is... I forgot my name!&quot;?','Rain Man','Kim','Without Me','Square Dance','','answer1',0,0),(2920,'In Kendrick Lamar&#039;s 2012 album, &quot;Good Kid, M.A.A.D City&quot;, the album&#039;s story takes place in which city?','New York','Detroit','Compton','Baltimore','','answer3',0,0),(2921,'The 2002 film &quot;28 Days Later&quot; is mainly set in which European country?','United Kingdom','Germany','Italy','France','','answer1',0,0),(2922,'In what year was Garry&#039;s Mod released as a standalone title on Valve&#039;s Steam distribution service?','2007','2003','2004','2006','','answer4',0,0),(2923,'In Pokemon Red &amp; Blue, what is the name of HM05?','Strength','Fly','Flash','Cut','','answer3',0,0),(2924,'In the video game &quot;League of Legends&quot; which character is known as &quot;The Sinister Blade&quot;?','Akali','Katarina','Zed','Shaco','','answer2',0,0),(2925,'What was Radiohead&#039;s first album?','Pablo Honey','Kid A','A Moon Shaped Pool','The Bends','','answer1',0,0),(2926,'When did The Beatles release the LP &quot;Please Please Me&quot;?','1960','1969','1963','1970','','answer3',0,0),(2927,'What team won the 2016 MLS Cup?','Colorado Rapids','Seattle Sounders','Montreal Impact','Toronto FC','','answer2',0,0),(2928,'Stevie Wonder&#039;s real name is Stevland Hardaway Morris.','True','False','','','','answer1',0,0),(2929,'The 2016 Disney animated film &#039;Moana&#039; is based on which culture?','Nordic','Polynesian','Japanese','Native American','','answer2',0,0),(2930,'Who created &quot;RWBY&quot;?','Monty Oum','Shane Newville','Miles Luna','Kerry Shawcross','','answer1',0,0),(2931,'Which race enjoys a glass of warm baghol in &quot;Star Trek&quot;?','Vulcan','Klingon','Botha','Human','','answer2',0,0),(2932,'Wilt Chamberlain scored his infamous 100-point-game against the New York Knicks in 1962.','False','True','','','','answer2',0,0),(2933,'The set of all algebraic numbers is countable.','True','False','','','','answer1',0,0),(2934,'What was the aim of the &quot;Umbrella Revolution&quot; in Hong Kong in 2014?','Lower taxes','Genuine universal suffrage','Gaining Independence','Go back under British Rule','','answer2',0,0),(2935,'The board game &#039;Monopoly&#039; is a variation of what board game?','Territorial Dispute','The Monopolist&#039;s Game','Property Feud','The Landlord&#039;s Game','','answer4',0,0),(2936,'George Orwell wrote this book, which is often considered a statement on government oversight.','Catcher and the Rye','The Old Man and the Sea','To Kill a Mockingbird','1984','','answer4',0,0),(2937,'Who starred as Bruce Wayne and Batman in Tim Burton&#039;s 1989 movie &quot;Batman&quot;?','Michael Keaton','Adam West','Val Kilmer','George Clooney','','answer1',0,0),(2938,'Which track by &quot;Massive Attack&quot; is used for the theme of &quot;House&quot;?','Protection','Angel','Black Milk','Teardrop','','answer4',0,0),(2939,'The name of the main character of the video game &quot;The Legend of Zelda&quot;, is Zelda.','True','False','','','','answer2',0,0),(2940,'What is the nickname of Northampton town&#039;s rugby union club?','Saracens','Harlequins','Wasps','Saints','','answer4',0,0),(2941,'Who wrote the Sinead O`Connor hit &#039;Nothing Compares 2 U&#039;?','Cameo','Rick James','Michael Jackson','Prince','','answer4',0,0),(2942,'&quot;Some people call me the space cowboy&quot; is the first line from what song?','The Joker','Fly Like an Eagle','Take The Money and Run','Fandango','','answer1',0,0),(2943,'Who discovered Penicillin?','Louis Pasteur','Alexander Flemming','Alfred Nobel','Marie Curie','','answer2',0,0),(2944,'In the game &quot;The Sims&quot;, how many Simoleons does each family start with?','20,000','25,000','10,000','15,000','','answer1',0,0),(2945,'How many manned moon landings have there been?','6','1','3','7','','answer1',0,0),(2946,'Which rap group released the album &quot;Straight Outta Compton&quot;?','Beastie Boys','Run-D.M.C.','Wu-Tang Clan','N.W.A','','answer4',0,0),(2947,'This movie contains the quote, &quot;Nobody puts Baby in a corner.&quot;','Dirty Dancing','Ferris Bueller&#039;s Day Off','Pretty in Pink','Three Men and a Baby','','answer1',0,0),(2948,'Finish these lyrics from the 2016 song &quot;Panda&quot; by Desiigner: &quot;I got broads in _______&quot;.','Atlanta','Savannah','Augusta','Marietta','','answer1',0,0),(2949,'Which of these people is NOT a part of the Internet comedy group Mega64?','Rocco Botte','Shawn Chatfield','Jon Jafari','Derrick Acosta','','answer3',0,0),(2950,'Which of the following is NOT a real song from the band Thousand Foot Krutch?','Give Up The Ghost','Let The Sparks Fly','Limitless Fury','Down','','answer3',0,0),(2951,'What is the name of Broadway&#039;s first &quot;long-run&quot; musical?','The Book of Mormon','The Elves','Hamilton','Wicked','','answer2',0,0),(2952,'Before Super Smash Bros. contained Nintendo characters, what was it known as internally?','Contest of Champions','Dragon King: The Fighting Game','Fighter of the Ages: Conquest','Smash and Pummel','','answer2',0,0),(2953,'Which of these songs by artist Eminem contain the lyric &quot;Nice to meet you. Hi, my name is... I forgot my name!&quot;?','Rain Man','Kim','Without Me','Square Dance','','answer1',0,0),(2954,'Who is the leader of Team Valor in Pok&amp;eacute;mon Go?','Blanche','Spark','Candela','Willow','','answer3',0,0),(2955,'The human right lung has how many lobes?','2','3','4','1','','answer2',0,0),(2956,'In the videogame Bully, what is the protagonist&#039;s last name?','Crabblesnitch','Smith','Kowalski','Hopkins','','answer4',0,0),(2957,'What is the name of the three headed dog in Harry Potter and the Sorcerer&#039;s Stone?','Spike','Poofy','Fluffy','Spot','','answer3',0,0),(2958,'In Sonic the Hedgehog universe, Tails&#039; real name is Miles Prower.','False','True','','','','answer2',0,0),(2959,'When was Nintendo&#039;s Virtual Boy released?','1997','1995','1989','1992','','answer2',0,0),(2960,'What album did The Lumineers release in 2016?','The Lumineers','Tracks From The Attic','Cleopatra','Winter','','answer3',0,0),(2961,'Martin Luther King Jr. and Anne Frank were born the same year.','False','True','','','','answer2',0,0),(2962,'Who played the Cenobite called &quot;Pinhead&quot; in the original Hellraiser films?','Doug Bradley','Doug Savant','Doug Benson','Doug Jones','','answer1',0,0),(2963,'In the show &quot;Steven Universe&quot;, who are the main two employees of The Big Donut?','Bob and May','Erik and Julie','Sadie and Lars','Steven and James','','answer3',0,0),(2964,'The book &quot;Fahrenheit 451&quot; was written by whom?','Ray Bradbury','R. L. Stine','Wolfgang Amadeus Mozart','Stephen King','','answer1',0,0),(2965,'The characters of &quot;Log Horizon&quot; are trapped in what game?','Sword Art Online','Yggdrasil','Elder Tale','Tower Unite','','answer3',0,0),(2966,'Which of Michael Jackson&#039;s albums sold the most copies?','Off the Wall','Dangerous','Bad','Thriller','','answer4',0,0),(2967,'What is the name of Sherlock Holmes&#039;s brother?','Martin Holmes','Mycroft Holmes','Mederi Holmes','Herbie Hancock Holmes','','answer2',0,0),(2968,'On which Beatles album would you find the song &#039;Eleanor Rigby&#039;?','Abbey Road','Help!','Rubber Soul','Revolver','','answer4',0,0),(2969,'Who played Stan&#039;s dog in the South Park episode &quot;Big Gay Al&#039;s Big Gay Boat Ride&quot;?','George Clooney','Jay Leno','Robert Smith','Matt Stone','','answer1',0,0),(2970,'Which element has the chemical symbol &#039;Fe&#039;?','Gold','Iron','Silver','Tin','','answer2',0,0),(2971,'A group of islands is called an &#039;archipelago&#039;.','False','True','','','','answer2',0,0),(2972,'Which of these is NOT a map included in the game Counter-Strike: Global Offensive?','Mirage','Assault','Cache','Oilrig','','answer4',0,0),(2973,'Soulja Boy&#039;s &#039;Crank That&#039; won a Grammy for Best Rap Song in 2007.','False','True','','','','answer1',0,0),(2974,'In Kingdom Hearts, how many members does Organization XIII have in total?','10','12','14','13','','answer3',0,0),(2975,'What is the original name of Final Fantasy XV?','Final Fantasy XVI','Final Fantasy Versus XIII','Final Fantasy: Reborn','Final Fantasy XIII-3','','answer2',0,0),(2976,'With which doubles partner did John McEnroe have most success?','Mary Carillo','Peter Fleming','Michael Stich','Mark Woodforde','','answer2',0,0),(2977,'Which of the following languages is used as a scripting language in the Unity 3D game engine?','Java','C++','C#','Objective-C','','answer3',0,0),(2978,'When did Jamaica recieve its independence from England?','1987','1963','1962','1492','','answer3',0,0),(2979,'What&#039;s the square root of 49?','7','12','9','4','','answer1',0,0),(2980,'Assyrian king Sennacherib&#039;s destruction of Babylon in 689 BCE was viewed as a triumph by other Assyrian citizens.','True','False','','','','answer2',0,0),(2981,'How many times do you fight Gilgamesh in &quot;Final Fantasy 5&quot;?','5','4','6','3','','answer3',0,0),(2982,'In the game &quot;Melty Blood Actress Again Current Code&quot;, you can enter Blood Heat mode in Half Moon style.','False','True','','','','answer1',0,0),(2983,'When was the game &#039;Portal 2&#039; released?','2011','2009','2007','2014','','answer1',0,0),(2984,'In &quot;Highschool of the Dead&quot;, where did Komuro and Saeko establish to meet after the bus explosion?','On The Main Bridge','Eastern Police Station','Komuro&#039;s House','The Center Mall','','answer2',0,0),(2985,'In &quot;Overwatch,&quot; what is the hero McCree&#039;s full name?','Jamison &quot;Deadeye&quot; Fawkes','Jack &quot;McCree&quot; Morrison','Jesse McCree','Gabriel Reyes','','answer3',0,0),(2986,'In the 1979 British film &quot;Quadrophenia&quot; what is the name of the seaside city the mods are visiting?','Eastbourne','Mousehole','Brighton','Bridlington','','answer3',0,0),(2987,'Which company has exclusive rights to air episodes of the &quot;The Grand Tour&quot;?','CCTV','Netflix','BBC','Amazon','','answer4',0,0),(2988,'In the Star Trek universe, what color is Vulcan blood?','Red','Blue','Purple','Green','','answer4',0,0),(2989,'Which of the following is NOT a summon in the game &quot;South Park: The Stick of Truth&quot;?','Mr. Hankey','Jesus','Mr. Slave','Towelie','','answer4',0,0),(2990,'In PROTOTYPE 2. who is referred to as &quot;Tango Primary&quot;?','Alex Mercer','Dana Mercer','James Heller','Any Goliaths roaming around','','answer3',0,0),(2991,'How many flagship monsters appear in Monster Hunter Gernerations?','3','1','2','4','','answer4',0,0),(2992,'&quot;The Division Bell&quot; is the final album of the progressive rock band Pink Floyd.','False','True','','','','answer1',0,0),(2993,'What does &quot;LCD&quot; stand for?','Last Common Difference','Long Continuous Design','Language Control Design','Liquid Crystal Display','','answer4',0,0),(2994,'What is the surname of the character Daryl in AMC&#039;s show The Walking Dead?','Grimes','Dickinson','Dicketson','Dixon','','answer4',0,0),(2995,'When was the Garfield comic first published?','1982','1978','1973','1988','','answer2',0,0),(2996,'Which of the following is not a piece from the 1950&#039;s musical West Side Story?','Mambo','Tonight','Maria','The Back Alley','','answer4',0,0),(2997,'What year did the James Cameron film &quot;Titanic&quot; come out in theaters?','1998','1999','1997','1996','','answer3',0,0),(2998,'How much weight did Chris Pratt lose for his role as Star-Lord in &quot;Guardians of the Galaxy&quot;?','70 lbs','50 lbs','30 lbs','60 lbs','','answer4',0,0),(2999,'Satella in &quot;Re:Zero&quot; is the witch of what?','Envy','Sloth','Wrath','Pride','','answer1',0,0),(3000,'How much did the indie game &quot;Cave Story&quot; cost when it was first released in 2004?','$5 USD','$15 USD','$10 USD','$0 USD','','answer4',0,0),(3001,'How many people can you recruit in the game Suikoden in a single playthrough?','96','93','108','107','','answer4',0,0),(3002,'Where is the train station &quot;Llanfair&amp;shy;pwllgwyngyll&amp;shy;gogery&amp;shy;chwyrn&amp;shy;drobwll&amp;shy;llan&amp;shy;tysilio&amp;shy;gogo&amp;shy;goch&quot;?','Wales','Moldova','Czech Republic','Denmark','','answer1',0,0),(3003,'The S in Harry S. Truman stands for &quot;Samuel&quot;.','True','False','','','','answer2',0,0),(3004,'The 2010 film &quot;The Social Network&quot; is a biographical drama film about MySpace founder Tom Anderson.','False','True','','','','answer1',0,0),(3005,'To bypass US Munitions Export Laws, the creator of the PGP published all the source code in book form.','True','False','','','','answer1',0,0),(3006,'What alcoholic drink is mainly made from juniper berries?','Vodka','Tequila','Gin','Rum','','answer3',0,0),(3007,'Which of these is the name of a Japanese system of alternative medicine, literally meaning &quot;finger pressure&quot;?','Ikigai','Shiatsu','Ukiyo','Majime','','answer2',0,0),(3008,'Which of these is NOT the name of an album released by English singer-songwriter Adele?','19','12','21','25','','answer2',0,0),(3009,'What is the romanized Arabic word for &quot;moon&quot;?','Najma','Qamar','Kawkab','Shams','','answer2',0,0),(3010,'When was Adolf Hitler appointed as Chancellor of Germany?','September 1, 1939','October 6, 1939','January 30, 1933','February 27, 1933','','answer3',0,0),(3011,'Which of these Roman gods doesn&#039;t have a counterpart in Greek mythology?','Mars','Janus','Vulcan','Juno','','answer2',0,0),(3012,'Which of these is NOT a playable character race in the video game &quot;Starbound&quot;?','Floran','Novakid','Fenerox','Hylotl','','answer3',0,0),(3013,'In the TV series Red Dwarf, Kryten&#039;s full name is Kryten 2X4B-523P.','False','True','','','','answer2',0,0),(3014,'The song &quot;Feel Good Inc.&quot; by British band Gorillaz features which hip hop group?','Cypress Hill','De La Soul','OutKast','Public Enemy','','answer2',0,0),(3015,'Which of the following is NOT a summon in the game &quot;South Park: The Stick of Truth&quot;?','Mr. Slave','Towelie','Jesus','Mr. Hankey','','answer2',0,0),(3016,'In PROTOTYPE 2. who is referred to as &quot;Tango Primary&quot;?','Any Goliaths roaming around','Alex Mercer','Dana Mercer','James Heller','','answer4',0,0),(3017,'Which is not a playable character in the 2005 video game Killer7?','Frank Smith','Mask de Smith','Coyote Smith','Dan Smith','','answer1',0,0),(3018,'Abraham Lincoln was the first U.S. President to be born outside the borders of the thirteen original states.','True','False','','','','answer1',0,0),(3019,'In Supernatural, what&#039;s is Sam&#039;s brothers name?','Dean','Dave','Steve','Mike','','answer1',0,0),(3020,'In &quot;Jurassic World&quot;, what is the name of the dinosaur that is a genetic hybrid?','Pteranodon','Mosasaurus','Tyrannosaurus Rex','Indominus Rex','','answer4',0,0),(3021,'The song &quot;Mystery Train&quot; was released by artist &quot;Little Junior&#039;s Blue Flames&quot; in 1953.','True','False','','','','answer1',0,0),(3022,'In Back to the Future Part II, Marty and Dr. Emmett Brown go to which future date?','January 25, 2015','October 21, 2015','August 28, 2015','July 20, 2015','','answer2',0,0),(3023,'Which of these species is not extinct?','Japanese sea lion','Tasmanian tiger','Saudi gazelle','Komodo dragon','','answer4',0,0),(3024,'What is the name of the family that the domestic cat is a member of?','Felis','Cat','Felinae','Felidae','','answer4',0,0),(3025,'Which country is the home of the largest Japanese population outside of Japan?','Brazil','The United States','Russia','China','','answer1',0,0),(3026,'Which one of these countries borders with Poland?','Netherlands','Norway','France','Lithuania','','answer4',0,0),(3027,'What city did the monster attack in the film, &quot;Cloverfield&quot;?','Chicago, Illinois','New York, New York','Las Vegas, Nevada','Orlando, Florida','','answer2',0,0),(3028,'Which artist&#039;s style was to use small different colored dots to create a picture?','Georges Seurat','Henri Rousseau','Paul C&amp;eacute;zanne','Vincent Van Gogh','','answer1',0,0),(3029,'In &quot;Undertale&quot;, the main character of the game is Sans.','False','True','','','','answer1',0,0),(3030,'Which game is NOT part of the Science Adventure series by 5pb. and Nitroplus?','Robotics; Notes','Steins; Gate','Occultic; Nine','Chaos; Child','','answer3',0,0),(3031,'Which team has won the most Stanley Cups in the NHL?','Montreal Canadians','Detroit Red Wings','Chicago Blackhawks','Toronto Maple Leafs','','answer1',0,0),(3032,'The Klingon home planet is Qo&#039;noS.','True','False','','','','answer1',0,0),(3033,'In &quot;Star Trek&quot;, what is the Klingon delicacy of &quot;gagh&quot; made from?','Klingworms','Earthworms','Spaghetti noodles','Serpent worms','','answer4',0,0),(3034,'What does the term MIME stand for, in regards to computing?','Multipurpose Internet Mail Extensions','Mail Interleave Method Exchange','Multipurpose Interleave Mail Exchange','Mail Internet Mail Exchange','','answer1',0,0),(3035,'What&#039;s the name of the main protagonist in the &quot;Legend of Zelda&quot; franchise?','Pit','Zelda','Mario','Link','','answer4',0,0),(3036,'In which series of games do you collect souls to empower you and buy weaponry and armor with?','Souls','Monster Hunter','Final Fantasy','The Legend of Zelda','','answer1',0,0),(3037,'What European country is not a part of the EU?','Ireland','Norway','Czechia','Lithuania','','answer2',0,0),(3038,'The planet Mars has two moons orbiting it.','True','False','','','','answer1',0,0),(3039,'San Marino is the only country completely surrounded by another country.','False','True','','','','answer1',0,0),(3040,'What position does Harry Potter play in Quidditch?','Chaser','Keeper','Beater','Seeker','','answer4',0,0),(3041,'What was the title of the first Bond movie, released in 1962?','Dr. No','Thunderball','Goldfinger','From Russia with Love','','answer1',0,0),(3042,'What is the name of the assassin in the first &quot;Hellboy&quot; movie?','Ilsa Haupstein','Grigori Efimovich Rasputin','Klaus Werner von Krupt','Karl Ruprecht Kroenen','','answer4',0,0),(3043,'On which day did the attempted coup d&#039;etat of 1991 in the Soviet Union begin?','August 21','December 24','December 26','August 19','','answer4',0,0),(3044,'Adolf Hitler was a german soldier in World War I.','False','True','','','','answer2',0,0),(3045,'The novel &quot;Jane Eyre&quot; was written by what author?','Louisa May Alcott','Jane Austen','Charlotte Bront&amp;euml;','Emily Bront&amp;euml;','','answer3',0,0),(3046,'Llanfair&amp;shy;pwllgwyngyll&amp;shy;gogery&amp;shy;chwyrn&amp;shy;drobwll&amp;shy;llan&amp;shy;tysilio&amp;shy;gogo&amp;shy;goch is located on which Welsh island?','Barry','Bardsey','Anglesey','Caldey','','answer3',0,0),(3047,'Fucking is a village in which country?','Austria','Switzerland','Germany','Czech Republic','','answer1',0,0),(3048,'The alternative rock band, They Might Be Giants, released their album &#039;Flood&#039; in 1990.','False','True','','','','answer2',0,0),(3049,'The Platypus is a mammal.','False','True','','','','answer2',0,0),(3050,'In Monster Hunter Generations, which of the following monsters are a part of the &quot;Fated Four&quot;?','Gore Magala','Astalos','Arzuros','Malfestio','','answer2',0,0),(3051,'&quot;The Division Bell&quot; is the final album of the progressive rock band Pink Floyd.','True','False','','','','answer2',0,0),(3052,'The title of Adolf Hitler&#039;s autobiography &quot;Mein Kampf&quot; is what when translated to English?','My Sadness','My Desire','My Hatred','My Struggle','','answer4',0,0),(3053,'Volkswagen&#039;s legendary VR6 engine has cylinders positioned at what degree angle?','90 Degree','45 Degree','15 Degree','30 Degree','','answer3',0,0),(3054,'Which female player won the gold medal of table tennis singles in 2016 Olympics Games?','LI Xiaoxia (China)','Song KIM (North Korea)','Ai FUKUHARA (Japan)','DING Ning (China)','','answer4',0,0),(3055,'What is the surname of the character Daryl in AMC&#039;s show The Walking Dead?','Grimes','Dickinson','Dixon','Dicketson','','answer3',0,0),(3056,'What is the name of the largest planet in Kerbal Space Program?','Kerbol','Eeloo','Jool','Minmus','','answer3',0,0),(3057,'Which radio personality calls himself &quot;The King of All Media&quot;?','Ryan Seacrest','Rush Limbaugh','Howard Stern','Pete Tong','','answer3',0,0),(3058,'When was the Tamagotchi digital pet released?','1989','1992','1990','1996','','answer4',0,0),(3059,'What dog bread is one of the oldest breeds of dog and has flourished since before 400 BCE.','Pugs','Boxers','Bulldogs','Chihuahua','','answer1',0,0),(3060,'In &quot;Halo 2&quot;, what is the name of the monitor of Installation 05?','2401 Penitent Tangent','252 Biodis Expolsion','031 Exuberant Witness','343 Guilty Spark','','answer1',0,0),(3061,'In which year did the British television series &quot;The Bill&quot; end?','2012','2010','2001','2007','','answer2',0,0),(3062,'Which of following is rude and dishonorable by Klingon standards?','Taking his D&#039;k tahg','Insulting and laughing at him at the dinner table','Reaching over and taking his meal','Punching him and taking his ship station position','','answer1',0,0),(3063,'Resident Evil 4 was originally meant to be a Nintendo GameCube exclusive.','False','True','','','','answer2',0,0),(3064,'How many seasons did the Sci-Fi television show &quot;Stargate Atlantis&quot; have?','10','7','2','5','','answer4',0,0),(3065,'What was the aim of the &quot;Umbrella Revolution&quot; in Hong Kong in 2014?','Go back under British Rule','Lower taxes','Genuine universal suffrage','Gaining Independence','','answer3',0,0),(3066,'What name did &quot;Mario&quot;, from &quot;Super Mario Brothers&quot;, originally have?','Mario','Jumpman','Ossan','Mr. Video','','answer3',0,0),(3067,'What was the last Marx Brothers film to feature Zeppo?','A Day at the Races','Monkey Business','A Night at the Opera','Duck Soup','','answer4',0,0),(3068,'In golf, what name is given to a hole score of two under par?','Bogey','Albatross','Birdie','Eagle','','answer4',0,0),(3069,'How many bytes are in a kilobyte of RAM?','1024','1000','500','512','','answer1',0,0),(3070,'What is the most expensive weapon in Counter-Strike: Global Offensive?','R8 Revolver','M4A1','AWP','Scar-20/G3SG1','','answer4',0,0),(3071,'When was the programming language &quot;C#&quot; released?','2001','2000','1999','1998','','answer2',0,0),(3072,'Who was the Roman god of fire?','Mercury','Jupiter','Apollo','Vulcan','','answer4',0,0),(3073,'Which infamous European traitor was known as &quot;the last person to enter Parliament with honest intentions&quot;?','Guy Fawkes','Everard Digby','Robert Catesby','Francis Tresham','','answer1',0,0),(3074,'Before the 19th Century, the &quot;Living Room&quot; was originally called the...','Parlor','Loft','Open Room','Sitting Room','','answer1',0,0),(3075,'What did the first vending machines in the early 1880&#039;s dispense?','Cigarettes','Alcohol','Post cards','Sodas','','answer3',0,0),(3076,'What is the name of the stuffed lion in Bleach?','Jo','Kon','Urdiu','Chad','','answer2',0,0),(3077,'Which of the following Arab countries does NOT have a flag containing only Pan-Arab colours?','Kuwait','United Arab Emirates','Qatar','Jordan','','answer3',0,0),(3078,'Sitting for more than three hours a day can cut two years off a person&#039;s life expectancy.','True','False','','','','answer1',0,0),(3079,'What was Rage Against the Machine&#039;s debut album?','Rage Against the Machine','Evil Empire','Bombtrack','The Battle Of Los Angeles','','answer1',0,0),(3080,'Which of these Roman gods doesn&#039;t have a counterpart in Greek mythology?','Janus','Vulcan','Mars','Juno','','answer1',0,0),(3081,'What type of genre is the controversial 2015 game &quot;Hatred&quot;?','MMORPG','Shoot &#039;Em Up','Simulation','Point &amp; Click','','answer2',0,0),(3082,'In Fallout 4, which type of power armor is first encountered in the early mission &quot;When Freedom Calls&quot; in a crashed Vertibird?','T-45','X-01','T-60','T-51','','answer1',0,0),(3083,'Which of the following is NOT a summon in the game &quot;South Park: The Stick of Truth&quot;?','Jesus','Towelie','Mr. Hankey','Mr. Slave','','answer2',0,0),(3084,'What video game sparked controversy because of its hidden &quot;Hot Coffee&quot; minigame?','Grand Theft Auto: Vice City','Hitman: Blood Money','Cooking Mama','Grand Theft Auto: San Andreas','','answer4',0,0),(3085,'Which of these weapon classes DO NOT appear in the first Monster Hunter game?','Bow','Hammer','Light Bowgun','Heavy Bowgun','','answer1',0,0),(3086,'The name of the Metroid series comes from what?','A spaceship&#039;s name','The final boss&#039;s name','An enemy in the game','The main character&#039;s name','','answer3',0,0),(3087,'Which of these Pok&amp;eacute;mon cannot learn Surf?','Tauros','Arbok','Linoone','Nidoking','','answer2',0,0),(3088,'The first dual-core CPU was the Intel Pentium D.','False','True','','','','answer1',0,0),(3089,'How long was Ken Jennings&#039; win streak on Jeopardy?','49','88','74','62','','answer3',0,0),(3090,'Payday: The Heist is a sequel to the board game Payday.','True','False','','','','answer2',0,0),(3091,'When does &quot;Rogue One: A Star Wars Story&quot; take place chronologically in the series?','Before Episode 1','Between Episode 3 and 4','Between Episode 4 and 5','After Episode 6','','answer2',0,0),(3092,'In Pok&amp;eacute;mon, Arbok evolves into Seviper.','False','True','','','','answer1',0,0),(3093,'In &quot;Star Trek&quot;, what is the Klingon death ritual?','Shoot into space in a torpedo casing.','Split the deceased&#039;s earnings between bloodkin.','Kiss the jagged forehead before burial.','Look into sky and yell loudly in mourning.','','answer4',0,0),(3094,'How many aces can be shot down through the entirety of &quot;Ace Combat Zero: The Belkan War&quot;?','169','132','245','100','','answer1',0,0),(3095,'Which of these people was NOT a founder of Apple Inc?','Jonathan Ive','Steve Wozniak','Ronald Wayne','Steve Jobs','','answer1',0,0),(3096,'What is the alter-ego of the DC comics character &quot;Superman&quot;?','Arthur Curry','Bruce Wayne','Clark Kent','John Jones','','answer3',0,0),(3097,'In &quot;Hunter x Hunter&quot;, what are members in Killua&#039;s family known for being?','Hunters','Assassins','Bandits','Ninjas','','answer2',0,0),(3098,'In the webcomic &quot;Ava&#039;s Demon&quot;, what sin is &quot;Nevy Nervine&quot; based off of?','Envy','Lust','Wrath','Sloth','','answer1',0,0),(3099,'What is the make and model of the tour vehicles in &quot;Jurassic Park&quot;?','1992 Ford Explorer XLT','Mercedes M-Class','1992 Toyota Land Cruiser','1992 Jeep Wrangler YJ Sahar','','answer1',0,0),(3100,'Who created the animated movie &quot;Spirited Away&quot; (2001)?','Mamoru Hosoda','Isao Takahata','Hidetaka Miyazaki','Hayao Miyazaki','','answer4',0,0),(3101,'In South Park, what is Stan&#039;s surname?','Tweak','Broflovski','Stotch','Marsh','','answer4',0,0),(3102,'Who directed &quot;E.T. the Extra-Terrestrial&quot; (1982)?','Stanley Kubrick','Steven Spielberg','Tim Burton','James Cameron','','answer2',0,0),(3103,'Rapper Snoop Dogg&#039;s real name is &#039;Cordozar Calvin Broadus, Jr.&#039;.','True','False','','','','answer1',0,0),(3104,'Matt Damon played an astronaut stranded on an extraterrestrial planet in both of the movies Interstellar and The Martian.','False','True','','','','answer2',0,0),(3105,'This movie contains the quote, &quot;I feel the need ... the need for speed!&quot;','Top Gun','The Color of Money','Cocktail','Days of Thunder','','answer1',0,0),(3106,'What is &quot;dabbing&quot;?','A medical procedure','A sport','A language','A dance','','answer4',0,0),(3107,'On which continent is the country of Angola located?','Europe','South America','Asia','Africa','','answer4',0,0),(3108,'How many times do you fight Gilgamesh in &quot;Final Fantasy 5&quot;?','3','6','4','5','','answer2',0,0),(3109,'Which of these weapons is NOT available to the Terrorist team in the game, &quot;Counter-Strike: Global Offensive&quot;?','SCAR-20','XM1014','CZ-75','SG 550','','answer1',0,0),(3110,'What is the name of the virus in &quot;Metal Gear Solid 1&quot;?','FOXKILL','FOXENGINE','FOXDIE','FOXALIVE','','answer3',0,0),(3111,'What is the scientific name of the cheetah?','Acinonyx jubatus','Lynx rufus','Felis catus','Panthera onca','','answer1',0,0),(3112,'What is Gabe Newell&#039;s favorite class in Team Fortress 2?','Medic','Spy','Pyro','Heavy','','answer2',0,0),(3113,'In the game &quot;Overwatch,&quot; what are the names of the two Australian criminals from the Junkers faction?','Junkrat and Roadhog','Roadrat and Junkhog','McCree and Deadeye','Ana and Pharah','','answer1',0,0),(3114,'In &quot;Team Fortress 2&quot;, the &quot;Bill&#039;s Hat&quot; is a reference to the game &quot;Dota 2&quot;.','False','True','','','','answer1',0,0),(3115,'What year was &quot;JoJo&#039;s Bizarre Adventure: Phantom Blood&quot; first released?','2013','1995','1983','1987','','answer4',0,0),(3116,'The 2016 United States Presidential Election is the first time Hillary Clinton has run for President.','True','False','','','','answer2',0,0),(3117,'The color orange is named after the fruit.','True','False','','','','answer1',0,0),(3118,'What is the most populous Muslim-majority nation in 2010?','Iran','Saudi Arabia','Indonesia','Sudan','','answer3',0,0),(3119,'United States President Ronald Reagan was the first president to appoint a woman to the Supreme Court.','False','True','','','','answer2',0,0),(3120,'Which of these characters was considered, but ultimately not included, for Super Smash Bros. Melee?','Diddy Kong','James Bond','Wave Racer','Mega Man','','answer2',0,0),(3121,'In Animal Crossing, who is the manager of the town shop?','Gracie','Tom Nook','Mr. Resetti','K.K. Slider','','answer2',0,0),(3122,'Which car tire manufacturer is famous for its &quot;P Zero&quot; line?','Pirelli','Goodyear','Michelin','Bridgestone','','answer1',0,0),(3123,'What is the name of the main character in &quot;The Flash&quot; TV series?','Barry Allen','Oliver Queen','Bart Allen','Bruce Wayne','','answer1',0,0),(3124,'In the Pok&amp;eacute;mon series, which type is Sudowoodo, the Imitation Pok&amp;eacute;mon?','Ground','Bug','Grass','Rock','','answer4',0,0),(3125,'One of Barack Obama&#039;s United States presidential campaign slogan&#039;s was &quot;Yes We Can&quot;.','False','True','','','','answer2',0,0),(3126,'In &quot;The Amazing World of Gumball&quot;, who is the principal of Elmore Junior High?','Principal Small','Principal Brawn','Principal Simeon','Principal Brown','','answer4',0,0),(3127,'What does LASER stand for?','Lite analysing by stereo ecorazer','Light ampiflier by standby energy of radio','Life antimatter by standing entry of range','Light amplifiaction by stimulated eminission of radioation','','answer4',0,0),(3128,'&quot;The first rule is: you don&#039;t talk about it&quot; is a reference to which movie?','American Pie','Unthinkable','The Island','Fight Club','','answer4',0,0),(3129,'In &quot;Breaking Bad&quot;, Walter White is a high school teacher diagnosed with which form of cancer?','Testicular Cancer','Prostate Cancer','Lung Cancer','Brain Cancer','','answer3',0,0),(3130,'Which of the following tabletop games is the oldest?','Chess','Mahjong','Shogi','Go','','answer4',0,0),(3131,'What is the plane curve proposed by Descartes to challenge Fermat&#039;s extremum-finding techniques called?','Cartesian Coordinates','Folium of Descartes','Descarte&#039;s Helicoid','Elliptic Paraboloid of Descartes','','answer2',0,0),(3132,'Where are the cars of the brand &#039;Ferrari&#039; manufactured?','Romania','Italy','Germany','Russia','','answer2',0,0),(3133,'What is the name of &quot;Team Fortress 2&quot; update, in which it became Free-to-play?','Pyromania Update','&amp;Uuml;ber Update','Mann-Conomy Update','Engineer Update','','answer2',0,0),(3134,'What is the punishment for playing Postal 2 in New Zealand?','10 years in prison and a fine of $50,000','15 years in prison and a fine of $10,000','Nothing','Fine of $5,000','','answer1',0,0),(3135,'Who starred in the film 1973 movie &quot;Enter The Dragon&quot;?','Yun-Fat Chow','Jet Li','Bruce Lee','Jackie Chan','','answer3',0,0),(3136,'What is the name of James Dean&#039;s character in the 1955 movie &quot;Rebel Without a Cause&quot;?','Jim Kane','Ned Stark','Jim Stark','Frank Stark','','answer3',0,0),(3137,'What five letter word is the motto of the IBM Computer company?','Click','Pixel','Logic','Think','','answer4',0,0),(3138,'Which gas forms about 78% of the Earth&amp;rsquo;s atmosphere?','Nitrogen','Carbon Dioxide','Oxygen','Argon','','answer1',0,0),(3139,'Which infamous European traitor was known as &quot;the last person to enter Parliament with honest intentions&quot;?','Guy Fawkes','Everard Digby','Francis Tresham','Robert Catesby','','answer1',0,0),(3140,'What was the name of the planet in &quot;Aliens&quot;?','LV-426','Weyland Yutani Corporation Base','DI-621','FR-838','','answer1',0,0),(3141,'&quot;Half-Life 2&quot; runs on the Source Engine.','True','False','','','','answer1',0,0),(3142,'Which Apollo mission was the last one in NASA&#039;s Apollo program?','Apollo 11','Apollo 15','Apollo 17','Apollo 13','','answer3',0,0),(3143,'What is the protagonist&#039;s title given by the demons in DOOM (2016)?','Doom Slayer','Doom Reaper','Doom Guy','Doom Marine','','answer1',0,0),(3144,'Who painted &quot;Swans Reflecting Elephants&quot;, &quot;Sleep&quot;, and &quot;The Persistence of Memory&quot;?','Jackson Pollock','Vincent van Gogh','Edgar Degas','Salvador Dali','','answer4',0,0),(3145,'What is the French word for &quot;hat&quot;?','Bonnet','&amp;Eacute;charpe','Casque','Chapeau','','answer4',0,0),(3146,'In &quot;Overwatch,&quot; what is the hero McCree&#039;s full name?','Jesse McCree','Jack &quot;McCree&quot; Morrison','Jamison &quot;Deadeye&quot; Fawkes','Gabriel Reyes','','answer1',0,0),(3147,'In the game &quot;Overwatch,&quot; which quote does the hero &quot;McCree&quot; NOT say upon using his flashbang ability?','&quot;You done?&quot;','&quot;Hold up now.&quot;','&quot;Don&#039;t move.&quot;','&quot;Whoa there.&quot;','','answer1',0,0),(3148,'The 2005 video game &quot;Call of Duty 2: Big Red One&quot; is not available on PC.','True','False','','','','answer1',0,0),(3149,'What year were the Marian Reforms instituted in the Roman Republic?','42 BCE','107 BCE','102 CE','264 BCE','','answer2',0,0),(3150,'In the &quot;Toaru Majutsu no Index&quot; anime, Touma Kamijou is a level 0 esper that has the ability to do what?','Teleport','Create electricity from his own body','Make telepathic communications','Dispell any esper or magical powers','','answer4',0,0),(3151,'Which of these programming languages is a low-level language?','Assembly','C#','Pascal','Python','','answer1',0,0),(3152,'In the movie &quot;Spaceballs&quot;, what are the Spaceballs attempting to steal from Planet Druidia?','The Schwartz','Princess Lonestar','Air','Meatballs','','answer3',0,0),(3153,'Which water-type Pok&amp;eacute;mon starter was introduced in the 4th generation of the series?','Totodile','Oshawott','Mudkip','Piplup','','answer4',0,0),(3154,'The book &quot;The Silence of the Lambs&quot; gets its title from what?','The villain&#039;s favourite meal','The relation it has with killing the innocents','The voice of innocent people being shut by the powerful','The main character&#039;s trauma in childhood','','answer4',0,0),(3155,'In Pok&amp;eacute;mon, Bulbasaur is the only starter pokemon that is a Grass/Poison type.','False','True','','','','answer2',0,0),(3156,'What was the best selling album of 2015?','Justin Bieber, Purpose','Taylor Swift, 1989','Adele, 25','Fetty Wap, Fetty Wap','','answer3',0,0),(3157,'In &quot;Undertale&quot;, the main character of the game is Sans.','True','False','','','','answer2',0,0),(3158,'Who played the Cenobite called &quot;Pinhead&quot; in the original Hellraiser films?','Doug Benson','Doug Bradley','Doug Savant','Doug Jones','','answer2',0,0),(3159,'The heroine of &quot;Humanity Has Declined&quot; is a mediator between humans and what?','Animals','Fairies','The Earth','Elves','','answer2',0,0),(3160,'What tool lends it&#039;s name to a last-stone advantage in an end in Curling?','Wrench','Screwdriver','Hammer','Drill','','answer3',0,0),(3161,'The Doppler effect applies to light.','False','True','','','','answer2',0,0),(3162,'What name is given to all baby marsupials?','Calf','Joey','Pup','Cub','','answer2',0,0),(3163,'What is the name of your team in Star Wars: Republic Commando?','Delta Squad','Bravo Six','The Commandos','Vader&#039;s Fist','','answer1',0,0),(3164,'The Principality of Sealand is an unrecognized micronation off the coast of what country?','Japan','Austrailia','Argentina','The United Kingdom','','answer4',0,0),(3165,'HTML is what type of language?','Macro Language','Scripting Language','Programming Language','Markup Language','','answer4',0,0),(3166,'In World War II, Hawker Typhoons served in the Pacific theater.','True','False','','','','answer2',0,0),(3167,'What is the name of the currency in the &quot;Animal Crossing&quot; series?','Sea Shells','Leaves','Bugs','Bells','','answer4',0,0),(3168,'All of the following are names of the Seven Warring States EXCEPT:','Qin (秦)','Qi (齊)','Zhao (趙)','Zhai (翟)','','answer4',0,0),(3169,'What is the final game of the &quot;Zero Escape&quot; series called?','The Nonary Game: Sigma&#039;s Last Life','Zero Escape Zero Time Dilemma','Zero Escape Virtue&#039;s Last Reward','Nine Hours, Nine Persons, Nine Doors','','answer2',0,0),(3170,'Finish these lyrics from the 2016 song &quot;Panda&quot; by Desiigner: &quot;I got broads in _______&quot;.','Savannah','Atlanta','Augusta','Marietta','','answer2',0,0),(3171,'What was the name of the first artificial Earth satellite, launched by the Soviet Union in 1957?','Soyuz 7K-OK','Sputnik 1','Voskhod 3KV','Zenit-2','','answer2',0,0),(3172,'Which band name isn&#039;t a Stand in &quot;JoJo&#039;s Bizzare Adventure&quot;?','Survivor','AC/DC','Green Day','Red Hot Chili Peppers','','answer2',0,0),(3173,'According to Norse mythology, Loki is a mother.','True','False','','','','answer1',0,0),(3174,'What is the name of Broadway&#039;s first &quot;long-run&quot; musical?','The Book of Mormon','The Elves','Wicked','Hamilton','','answer2',0,0),(3175,'The novel &quot;Of Mice And Men&quot; was written by what author?','George Orwell','Mark Twain','Harper Lee','John Steinbeck','','answer4',0,0),(3176,'Which of these is NOT a faction included in the game Counter-Strike: Global Offensive?','Phoenix Connexion','Elite Crew','BOPE','GSG-9','','answer3',0,0),(3177,'In the movie &quot;Cast Away&quot; the main protagonist&#039;s best friend while on the island is named','Carson','Willy','Wilson','Jackson','','answer3',0,0),(3178,'Who is the leader of Team Mystic in Pok&amp;eacute;mon Go?','Candela','Spark','Blanche','Willow','','answer3',0,0),(3179,'The element involved in making human blood red is which of the following?','Cobalt','Iridium','Copper','Iron','','answer4',0,0),(3180,'In Game of Thrones, what is Littlefinger&#039;s real name?','Podrick Payne','Torrhen Karstark','Petyr Baelish','Lancel Lannister','','answer3',0,0),(3181,'What is the name of the three headed dog in Harry Potter and the Sorcerer&#039;s Stone?','Spike','Spot','Fluffy','Poofy','','answer3',0,0),(3182,'In Terraria, you can craft the Cell Phone pre-hardmode.','True','False','','','','answer1',0,0),(3183,'The book &quot;The Little Prince&quot; was written by...','Jane Austen','Antoine de Saint-Exup&amp;eacute;ry','Miguel de Cervantes Saavedra','F. Scott Fitzgerald','','answer2',0,0),(3184,'Which of the following is not a piece from the 1950&#039;s musical West Side Story?','Tonight','Maria','The Back Alley','Mambo','','answer3',0,0),(3185,'Pistons were added to Minecraft in Beta 1.5.','False','True','','','','answer1',0,0),(3186,'In the movie &quot;Blade Runner&quot;, what is the term used for human-like androids ?','Replicants','Cylons','Synthetics','Skinjobs','','answer1',0,0),(3187,'Which of the following games in the The Legend of Zelda franchise was released in Japan before North America?','The Legend of Zelda: Spirit Tracks','The Legend of Zelda: The Minish Cap','The Legend of Zelda: Four Swords','The Legend of Zelda: Twilight Princess','','answer2',0,0),(3188,'In &quot;Star Trek Nemesis&quot;, why was Praetor Shinzon created?','To replace Picard as a Romulan Agent','To steal the Enterprise','To become Picard&#039;s friend','To destroy the Enterprise','','answer1',0,0),(3189,'Spain was formed in 1469 with the marriage of Isabella I of Castile and Ferdinand II of what other Iberian kingdom?','Navarre','Le&amp;oacute;n','Galicia','Aragon','','answer4',0,0),(3190,'Which of these countries is &quot;doubly landlocked&quot; (surrounded entirely by one or more landlocked countries)?','Bolivia','Ethiopia','Switzerland','Uzbekistan','','answer4',0,0),(3191,'There aren&#039;t any live-action clones in &quot;Star Wars: Episode III - Revenge of the Sith&quot;.','True','False','','','','answer1',0,0),(3192,'What does the &#039;S&#039; stand for in the abbreviation SIM, as in SIM card?','Subscriber','Solid','Single','Secure','','answer1',0,0),(3193,'The Japanese Shinkansen beat the French TGV&#039;s speed record for fastest electric rail train.','True','False','','','','answer2',0,0),(3194,'What is the setting of the show &quot;Parks and Recreation&quot;?','Eagleton, Indiana','Pasadena, California','London, England','Pawnee, Indiana','','answer4',0,0),(3195,'The rights to the &quot;Rayman&quot; series are owned by which company?','Sony','Ubisoft','EA','Nintendo','','answer2',0,0),(3196,'Which of these is the name for the failed key escrow device introduced by the National Security Agency in 1993?','Skipjack','Nautilus','Enigma Machine','Clipper Chip','','answer4',0,0),(3197,'What is the scientific name of the red fox?','Red Fox','Vulpes Vulpes','Vulpes Vulpie','Vulpes Redus','','answer2',0,0),(3198,'What is the capital of the State of Washington, United States?','Olympia','Seattle','Yukon','Washington D.C.','','answer1',0,0),(3199,'The main antagonist of the second part of JoJo&#039;s Bizarre Adventure is which of the following?','Santana','Wired Beck','Kars','Erina Joestar','','answer3',0,0),(3200,'In the 1979 British film &quot;Quadrophenia&quot; what is the name of the seaside city the mods are visiting?','Mousehole','Brighton','Bridlington','Eastbourne','','answer2',0,0),(3201,'The &quot;Psycho&quot; series of videos on YouTube was created by which of the following?','Billy Familia','Dan Bell','VeganGainz','RiDGiD STUDiOS','','answer4',0,0),(3202,'Which of these African countries list &quot;Spanish&quot; as an official language?','Equatorial Guinea','Cameroon','Guinea','Angola','','answer1',0,0),(3203,'What were the first states to break away from Yugoslavia?','Montenegro, Slovenia','Slovenia, Macedonia','Macedonia, Montenegro','Slovenia, Croatia','','answer4',0,0),(3204,'From which country did the song &quot;Gangnam Style&quot; originate from?','Japan','South Korea','China','North Korea','','answer2',0,0),(3205,'In the game Danganronpa: Happy Trigger Havoc, the character Aoi Asahina&#039;s ultimate ability is what?','Ultimate Swimmer','Ultimate Detective','Ultimate Gambler','Ultimate Dancer','','answer1',0,0),(3206,'In what year was the game &quot;Eliminator&quot; released?','1999','1998','2001','2000','','answer2',0,0),(3207,'In the game &quot;Terraria&quot;, which of these bosses are pre-hardmode bosses?','Eye of Cthulhu','Skeletron Prime','The Destroyer','Plantera','','answer1',0,0),(3208,'What collaborative album was released by Kanye West and Jay-Z in 2011?','Distant Relatives','Unfinished Business','What a Time to be Alive','Watch the Throne','','answer4',0,0),(3209,'In the Mass Effect trilogy, who is the main protagonist?','Shepard','Mordin','Garrus','Thane','','answer1',0,0),(3210,'Who is attributed credit for recording the epic poem The Odyssey?','Odysseus','Aristotle','Homer','Socrates','','answer3',0,0),(3211,'Which song on Daft Punk&#039;s &quot;Random Access Memories&quot; features Pharrell Williams?','The Game of Love','Doin&#039; It Right','Get Lucky','Instant Crush','','answer3',0,0),(3212,'In &quot;The Amazing World of Gumball&quot;, who is the principal of Elmore Junior High?','Principal Small','Principal Simeon','Principal Brawn','Principal Brown','','answer4',0,0),(3213,'Which radio personality calls himself &quot;The King of All Media&quot;?','Howard Stern','Rush Limbaugh','Pete Tong','Ryan Seacrest','','answer1',0,0),(3214,'What was Mountain Dew&#039;s original slogan?','Do The Dew','Get&#039; that barefoot feelin&#039; drinkin&#039; Mountain Dew','Yahoo! Mountain Dew... It&#039;ll tickle your innards!','Give Me A Dew','','answer3',0,0),(3215,'In Terraria, which of these items is NOT crafted at a Mythril Anvil?','Orichalcum Tools','Sky Fracture','Venom Staff','Ankh Charm','','answer4',0,0),(3216,'In &quot;Gravity Falls&quot;, the character Bill Cipher remarks that &quot;the universe is what?&quot;','a hologram','an illusion','corrupting','a simulation','','answer1',0,0),(3217,'Waylon Smithers from &quot;The Simpsons&quot; was originally black when he first appeared in the series.','False','True','','','','answer2',0,0),(3218,'Where are the cars of the brand &#039;Ferrari&#039; manufactured?','Romania','Russia','Italy','Germany','','answer3',0,0),(3219,'In the &quot;Halo&quot; franchise, in what country is New Mombasa?','Turkey','Slovakia','India','Kenya','','answer4',0,0),(3220,'Which Canadian reggae musician had a 1993 hit with the song &#039;Informer&#039;?','Snow','Rain','Sleet','Hail','','answer1',0,0),(3221,'Which Elton John hit starts with the line &#039;When are you gonna come down&#039;?','Rocket Man','Crocodile Rock','Goodbye Yellow Brick Road','Bennie and the Jets','','answer3',0,0),(3222,'DragonForce&#039;s &#039;Through the Fire and Flames&#039; is widely considered to be the hardest song in the Guitar Hero series.','False','True','','','','answer2',0,0),(3223,'Who is the protagonist in the game &quot;The Walking Dead: Season One&quot;?','Lee Everett','Kenny','Clementine','Rick Grimes','','answer1',0,0),(3224,'Who is the creator of the comic series &quot;The Walking Dead&quot;?','Stan Lee','Robert Kirkman','Robert Crumb','Malcolm Wheeler-Nicholson','','answer2',0,0),(3225,'In which Shakespeare play does the character Marcellus say, &quot;Something is rotten in the state of Denmark&quot;?','Macbeth','Hamlet','Twelfth Night','King Lear','','answer2',0,0),(3226,'In the original Star Trek TV series, what was Captain James T. Kirk&#039;s middle name?','Tyrone','Tiberius','Travis','Trevor','','answer2',0,0),(3227,'There was a satirical candidate named &quot;Deez Nuts&quot; running in the 2016 US presidential elections.','True','False','','','','answer1',0,0),(3228,'How many times do you fight Gilgamesh in &quot;Final Fantasy 5&quot;?','3','4','6','5','','answer3',0,0),(3229,'What type of animal was Harambe, who was shot after a child fell into it&#039;s enclosure at the Cincinnati Zoo?','Crocodile','Tiger','Panda','Gorilla','','answer4',0,0),(3230,'Which song by Swedish electronic musician Avicii samples the song &quot;Something&#039;s Got A Hold On Me&quot; by Etta James?','Silhouettes','Levels','Seek Bromance','Fade Into Darkness','','answer2',0,0),(3231,'What is the romanized Arabic word for &quot;moon&quot;?','Najma','Kawkab','Qamar','Shams','','answer3',0,0),(3232,'Where was the Games of the XXII Olympiad held?','Barcelona','Moscow','Los Angeles','Tokyo','','answer2',0,0),(3233,'&quot;Ananas&quot; is mostly used as the word for Pineapple in other languages.','True','False','','','','answer1',0,0),(3234,'The main protagonist of the fifth part of JoJo&#039;s Bizarre Adventure is which of the following?','Jonathan Joestar','Guido Mista','Joey JoJo','Giorno Giovanna','','answer4',0,0),(3235,'Johnny Cash did a cover of this song written by lead singer of Nine Inch Nails, Trent Reznor.','Closer','Hurt','A Warm Place','Big Man with a Gun','','answer2',0,0),(3236,'How many times do you fight the Imprisoned in The Legend of Zelda: Skyward Sword?','3','4','2','5','','answer1',0,0),(3237,'The alternative rock band, They Might Be Giants, released their album &#039;Flood&#039; in 1990.','False','True','','','','answer2',0,0),(3238,'Which one of these rappers is NOT a member of the rap group Wu-Tang Clan?','Ol&#039; Dirty Bastard','Method Man','GZA','Dr.Dre','','answer4',0,0),(3239,'What is the name of the protagonist of J.D. Salinger&#039;s novel Catcher in the Rye?','Jay Gatsby','Fletcher Christian','Holden Caulfield','Randall Flagg','','answer3',0,0),(3240,'Who was the first president born in the independent United States?','Martin Van Buren','James Monroe','John Adams','George Washington','','answer1',0,0),(3241,'How many trophies are there in &quot;Super Smash Bros. for Nintendo 3DS&quot;?','1155','685','716','1360','','answer2',0,0),(3242,'In the 2012 animated film &quot;Wolf Children&quot;, what are the names of the wolf children?','Chuck &amp; Anna','Hana &amp; Yuki','Ame &amp; Hana','Ame &amp; Yuki','','answer4',0,0),(3243,'What is Meg&#039;s full name in &quot;Family Guy&quot;?','Who-Cares Griffin','Neil Griffin','Megan Griffin','Megatron Griffin','','answer4',0,0),(3244,'When was Club Penguin launched?','October 21, 2005','November 22, 2004','October 24, 2005','March 29, 2006','','answer3',0,0);
/*!40000 ALTER TABLE `triviaq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triviasettings`
--

DROP TABLE IF EXISTS `triviasettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `triviasettings` (
  `gamenum` int(16) NOT NULL AUTO_INCREMENT,
  `started` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gameon` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`gamenum`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triviasettings`
--

LOCK TABLES `triviasettings` WRITE;
/*!40000 ALTER TABLE `triviasettings` DISABLE KEYS */;
INSERT INTO `triviasettings` VALUES (1,'1','0','1');
/*!40000 ALTER TABLE `triviasettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triviausers`
--

DROP TABLE IF EXISTS `triviausers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `triviausers` (
  `user_id` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triviausers`
--

LOCK TABLES `triviausers` WRITE;
/*!40000 ALTER TABLE `triviausers` DISABLE KEYS */;
/*!40000 ALTER TABLE `triviausers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploadapp`
--

DROP TABLE IF EXISTS `uploadapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uploadapp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT '0',
  `applied` int(11) NOT NULL DEFAULT '0',
  `speed` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer` longtext COLLATE utf8mb4_unicode_ci,
  `reason` longtext COLLATE utf8mb4_unicode_ci,
  `sites` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `sitenames` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scene` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `creating` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `seeding` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `connectable` enum('yes','no','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `status` enum('accepted','rejected','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `moderator` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploadapp`
--

LOCK TABLES `uploadapp` WRITE;
/*!40000 ALTER TABLE `uploadapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploadapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_blocks`
--

DROP TABLE IF EXISTS `user_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_blocks` (
  `userid` int(10) unsigned NOT NULL,
  `index_page` int(10) unsigned NOT NULL DEFAULT '585727',
  `global_stdhead` int(10) unsigned NOT NULL DEFAULT '1023',
  `userdetails_page` bigint(20) unsigned NOT NULL DEFAULT '4294967295',
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_blocks`
--

LOCK TABLES `user_blocks` WRITE;
/*!40000 ALTER TABLE `user_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercomments`
--

DROP TABLE IF EXISTS `usercomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usercomments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL DEFAULT '0',
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `ori_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `editedby` int(10) unsigned NOT NULL DEFAULT '0',
  `editedat` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercomments`
--

LOCK TABLES `usercomments` WRITE;
/*!40000 ALTER TABLE `usercomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `usercomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userhits`
--

DROP TABLE IF EXISTS `userhits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userhits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `hitid` int(10) unsigned NOT NULL DEFAULT '0',
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `added` (`added`),
  KEY `hitid` (`hitid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userhits`
--

LOCK TABLES `userhits` WRITE;
/*!40000 ALTER TABLE `userhits` DISABLE KEYS */;
/*!40000 ALTER TABLE `userhits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passhash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `torrent_pass` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','confirmed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `added` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_access` int(11) NOT NULL DEFAULT '0',
  `curr_ann_last_check` int(10) unsigned NOT NULL DEFAULT '0',
  `curr_ann_id` int(10) unsigned NOT NULL DEFAULT '0',
  `editsecret` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy` enum('strong','normal','low') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `stylesheet` int(10) NOT NULL DEFAULT '1',
  `info` mediumtext COLLATE utf8mb4_unicode_ci,
  `acceptpms` enum('yes','friends','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `ip` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `override_class` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `language` int(11) NOT NULL DEFAULT '1',
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `av_w` smallint(3) unsigned NOT NULL DEFAULT '0',
  `av_h` smallint(3) unsigned NOT NULL DEFAULT '0',
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(10) unsigned NOT NULL DEFAULT '0',
  `notifs` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modcomment` mediumtext COLLATE utf8mb4_unicode_ci,
  `enabled` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `donor` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `warned` int(11) NOT NULL DEFAULT '0',
  `torrentsperpage` int(3) unsigned NOT NULL DEFAULT '0',
  `topicsperpage` int(3) unsigned NOT NULL DEFAULT '0',
  `postsperpage` int(3) unsigned NOT NULL DEFAULT '0',
  `deletepms` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `savepms` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `reputation` int(10) NOT NULL DEFAULT '10',
  `time_offset` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dst_in_use` tinyint(1) NOT NULL DEFAULT '0',
  `auto_correct_dst` tinyint(1) NOT NULL DEFAULT '1',
  `show_shout` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `shoutboxbg` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `chatpost` int(11) NOT NULL DEFAULT '1',
  `smile_until` int(10) NOT NULL DEFAULT '0',
  `seedbonus` decimal(10,1) NOT NULL DEFAULT '200.0',
  `bonuscomment` mediumtext COLLATE utf8mb4_unicode_ci,
  `vip_added` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `vip_until` int(10) NOT NULL DEFAULT '0',
  `freeslots` int(11) unsigned NOT NULL DEFAULT '5',
  `free_switch` int(11) unsigned NOT NULL DEFAULT '0',
  `invites` int(10) unsigned NOT NULL DEFAULT '1',
  `invitedby` int(10) unsigned NOT NULL DEFAULT '0',
  `invite_rights` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `anonymous` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `uploadpos` int(11) NOT NULL DEFAULT '1',
  `forumpost` int(11) NOT NULL DEFAULT '1',
  `downloadpos` int(11) NOT NULL DEFAULT '1',
  `immunity` int(11) NOT NULL DEFAULT '0',
  `leechwarn` int(11) NOT NULL DEFAULT '0',
  `disable_reason` mediumtext COLLATE utf8mb4_unicode_ci,
  `clear_new_tag_manually` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `last_browse` int(11) NOT NULL DEFAULT '0',
  `sig_w` smallint(3) unsigned NOT NULL DEFAULT '0',
  `sig_h` smallint(3) unsigned NOT NULL DEFAULT '0',
  `signatures` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `signature` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forum_access` int(11) NOT NULL DEFAULT '0',
  `forum_sort` enum('ASC','DESC') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DESC',
  `highspeed` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `hnrwarn` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `hit_and_run_total` int(9) DEFAULT '0',
  `donoruntil` int(11) unsigned NOT NULL DEFAULT '0',
  `donated` int(3) NOT NULL DEFAULT '0',
  `total_donated` decimal(8,2) NOT NULL DEFAULT '0.00',
  `vipclass_before` int(10) NOT NULL DEFAULT '0',
  `parked` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `passhint` int(10) unsigned NOT NULL,
  `hintanswer` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatarpos` int(11) NOT NULL DEFAULT '1',
  `support` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `supportfor` mediumtext COLLATE utf8mb4_unicode_ci,
  `language_new` int(11) NOT NULL DEFAULT '1',
  `sendpmpos` int(11) NOT NULL DEFAULT '1',
  `invitedate` int(11) NOT NULL DEFAULT '0',
  `invitees` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invite_on` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `subscription_pm` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `gender` enum('Male','Female','NA') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NA',
  `anonymous_until` int(10) NOT NULL DEFAULT '0',
  `viewscloud` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `tenpercent` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `avatars` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `offavatar` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `pirate` int(11) unsigned NOT NULL DEFAULT '0',
  `king` int(11) unsigned NOT NULL DEFAULT '0',
  `hidecur` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `ssluse` int(1) NOT NULL DEFAULT '1',
  `signature_post` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `forum_post` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `avatar_rights` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `offensive_avatar` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `view_offensive_avatar` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `paranoia` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `google_talk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yahoo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_email` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `parked_until` int(10) NOT NULL DEFAULT '0',
  `gotgift` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `hash1` varchar(96) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suspended` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `bjwins` int(10) NOT NULL DEFAULT '0',
  `bjlosses` int(10) NOT NULL DEFAULT '0',
  `warn_reason` mediumtext COLLATE utf8mb4_unicode_ci,
  `onirc` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `irctotal` bigint(20) unsigned NOT NULL DEFAULT '0',
  `birthday` date DEFAULT '0000-00-00',
  `got_blocks` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `last_access_numb` bigint(30) NOT NULL DEFAULT '0',
  `onlinetime` bigint(30) NOT NULL DEFAULT '0',
  `pm_on_delete` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `commentpm` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `split` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `browser` mediumtext COLLATE utf8mb4_unicode_ci,
  `hits` int(10) NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `categorie_icon` int(10) DEFAULT '1',
  `perms` int(11) NOT NULL DEFAULT '0',
  `mood` int(10) NOT NULL DEFAULT '1',
  `got_moods` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `pms_per_page` tinyint(3) unsigned DEFAULT '20',
  `show_pm_avatar` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `watched_user` int(11) NOT NULL DEFAULT '0',
  `watched_user_reason` mediumtext COLLATE utf8mb4_unicode_ci,
  `staff_notes` mediumtext COLLATE utf8mb4_unicode_ci,
  `game_access` int(11) NOT NULL DEFAULT '1',
  `where_is` mediumtext COLLATE utf8mb4_unicode_ci,
  `show_staffshout` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `request_uri` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browse_icons` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `numuploads` int(10) NOT NULL DEFAULT '0',
  `corrupt` int(10) NOT NULL DEFAULT '0',
  `opt1` int(11) NOT NULL DEFAULT '182927957',
  `opt2` int(11) NOT NULL DEFAULT '224',
  `torrent_pass_version` int(11) NOT NULL DEFAULT '0',
  `can_leech` tinyint(4) NOT NULL DEFAULT '1',
  `wait_time` int(11) NOT NULL DEFAULT '0',
  `peers_limit` int(11) DEFAULT '1000',
  `torrents_limit` int(11) DEFAULT '1000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `ip` (`ip`),
  KEY `uploaded` (`uploaded`),
  KEY `downloaded` (`downloaded`),
  KEY `country` (`country`),
  KEY `last_access` (`last_access`),
  KEY `enabled` (`enabled`),
  KEY `warned` (`warned`),
  KEY `T_Pass` (`torrent_pass`),
  KEY `free_switch` (`free_switch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersachiev`
--

DROP TABLE IF EXISTS `usersachiev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersachiev` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `totalshoutlvl` tinyint(2) NOT NULL DEFAULT '0',
  `username` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snatchmaster` tinyint(1) NOT NULL DEFAULT '0',
  `invited` int(3) NOT NULL DEFAULT '0',
  `bday` tinyint(1) NOT NULL DEFAULT '0',
  `ul` tinyint(1) NOT NULL DEFAULT '0',
  `inviterach` tinyint(1) NOT NULL DEFAULT '0',
  `forumposts` int(10) NOT NULL DEFAULT '0',
  `postachiev` tinyint(2) NOT NULL DEFAULT '0',
  `avatarset` tinyint(1) NOT NULL DEFAULT '0',
  `avatarach` tinyint(1) NOT NULL DEFAULT '0',
  `stickyup` int(5) NOT NULL DEFAULT '0',
  `stickyachiev` tinyint(1) NOT NULL DEFAULT '0',
  `sigset` tinyint(1) NOT NULL DEFAULT '0',
  `sigach` tinyint(1) NOT NULL DEFAULT '0',
  `corrupt` tinyint(1) NOT NULL DEFAULT '0',
  `dayseed` tinyint(3) NOT NULL DEFAULT '0',
  `sheepyset` tinyint(1) NOT NULL DEFAULT '0',
  `sheepyach` tinyint(1) NOT NULL DEFAULT '0',
  `spentpoints` int(3) NOT NULL DEFAULT '0',
  `achpoints` int(3) NOT NULL DEFAULT '1',
  `forumtopics` int(10) NOT NULL DEFAULT '0',
  `topicachiev` tinyint(2) NOT NULL DEFAULT '0',
  `bonus` tinyint(2) NOT NULL DEFAULT '0',
  `bonusspent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `christmas` tinyint(1) NOT NULL DEFAULT '0',
  `xmasdays` int(2) NOT NULL DEFAULT '0',
  `reqfilled` int(5) NOT NULL DEFAULT '0',
  `reqlvl` tinyint(2) NOT NULL DEFAULT '0',
  `dailyshouts` int(5) NOT NULL DEFAULT '0',
  `dailyshoutlvl` tinyint(2) NOT NULL DEFAULT '0',
  `weeklyshouts` int(5) NOT NULL DEFAULT '0',
  `weeklyshoutlvl` tinyint(2) NOT NULL DEFAULT '0',
  `monthlyshouts` int(5) NOT NULL DEFAULT '0',
  `monthlyshoutlvl` tinyint(2) NOT NULL DEFAULT '0',
  `totalshouts` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersachiev`
--

LOCK TABLES `usersachiev` WRITE;
/*!40000 ALTER TABLE `usersachiev` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersachiev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ustatus`
--

DROP TABLE IF EXISTS `ustatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ustatus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT '0',
  `last_status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `archive` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ustatus`
--

LOCK TABLES `ustatus` WRITE;
/*!40000 ALTER TABLE `ustatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `ustatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki`
--

DROP TABLE IF EXISTS `wiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `userid` int(10) unsigned DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `lastedit` int(10) unsigned DEFAULT '0',
  `lastedituser` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki`
--

LOCK TABLES `wiki` WRITE;
/*!40000 ALTER TABLE `wiki` DISABLE KEYS */;
INSERT INTO `wiki` VALUES (1,'index','[align=center][size=6]Welcome to the [b]Wiki[/b][/size][/align]',0,1228076412,1281610709,1);
/*!40000 ALTER TABLE `wiki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xbt_announce_log`
--

DROP TABLE IF EXISTS `xbt_announce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xbt_announce_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipa` int(10) unsigned NOT NULL,
  `port` int(11) NOT NULL DEFAULT '0',
  `event` int(11) NOT NULL DEFAULT '0',
  `info_hash` blob NOT NULL,
  `peer_id` blob NOT NULL,
  `downloaded` bigint(20) NOT NULL DEFAULT '0',
  `left0` bigint(20) NOT NULL DEFAULT '0',
  `uploaded` bigint(20) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `useragent` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xbt_announce_log`
--

LOCK TABLES `xbt_announce_log` WRITE;
/*!40000 ALTER TABLE `xbt_announce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xbt_announce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xbt_client_whitelist`
--

DROP TABLE IF EXISTS `xbt_client_whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xbt_client_whitelist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peer_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vstring` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `peer_id` (`peer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xbt_client_whitelist`
--

LOCK TABLES `xbt_client_whitelist` WRITE;
/*!40000 ALTER TABLE `xbt_client_whitelist` DISABLE KEYS */;
INSERT INTO `xbt_client_whitelist` VALUES (1,'-','all');
/*!40000 ALTER TABLE `xbt_client_whitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xbt_config`
--

DROP TABLE IF EXISTS `xbt_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xbt_config` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xbt_config`
--

LOCK TABLES `xbt_config` WRITE;
/*!40000 ALTER TABLE `xbt_config` DISABLE KEYS */;
INSERT INTO `xbt_config` VALUES ('torrent_pass_private_key','MG58LNj5LHHz49A9PKhAkxIH8Aa');
/*!40000 ALTER TABLE `xbt_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xbt_deny_from_hosts`
--

DROP TABLE IF EXISTS `xbt_deny_from_hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xbt_deny_from_hosts` (
  `begin` int(11) NOT NULL DEFAULT '0',
  `end` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xbt_deny_from_hosts`
--

LOCK TABLES `xbt_deny_from_hosts` WRITE;
/*!40000 ALTER TABLE `xbt_deny_from_hosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `xbt_deny_from_hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xbt_files`
--

DROP TABLE IF EXISTS `xbt_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xbt_files` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `info_hash` blob NOT NULL,
  `leechers` int(11) NOT NULL DEFAULT '0',
  `seeders` int(11) NOT NULL DEFAULT '0',
  `completed` int(11) NOT NULL DEFAULT '0',
  `announced_http` int(11) NOT NULL DEFAULT '0',
  `announced_http_compact` int(11) NOT NULL DEFAULT '0',
  `announced_http_no_peer_id` int(11) NOT NULL DEFAULT '0',
  `announced_udp` int(11) NOT NULL DEFAULT '0',
  `scraped_http` int(11) NOT NULL DEFAULT '0',
  `scraped_udp` int(11) NOT NULL DEFAULT '0',
  `started` int(11) NOT NULL DEFAULT '0',
  `stopped` int(11) NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `ctime` int(11) NOT NULL DEFAULT '0',
  `balance` int(11) NOT NULL DEFAULT '0',
  `freetorrent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xbt_files`
--

LOCK TABLES `xbt_files` WRITE;
/*!40000 ALTER TABLE `xbt_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `xbt_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xbt_files_users`
--

DROP TABLE IF EXISTS `xbt_files_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xbt_files_users` (
  `fid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `announced` int(11) NOT NULL DEFAULT '0',
  `completed` int(11) NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `left` bigint(20) unsigned NOT NULL DEFAULT '0',
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `leechtime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `seedtime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `upspeed` int(10) unsigned NOT NULL DEFAULT '0',
  `downspeed` int(10) unsigned NOT NULL DEFAULT '0',
  `peer_id` char(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completedtime` int(11) unsigned NOT NULL DEFAULT '0',
  `ipa` int(11) unsigned NOT NULL DEFAULT '0',
  `connectable` tinyint(4) NOT NULL DEFAULT '1',
  `mark_of_cain` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `hit_and_run` int(11) NOT NULL DEFAULT '0',
  `started` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `fid` (`fid`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xbt_files_users`
--

LOCK TABLES `xbt_files_users` WRITE;
/*!40000 ALTER TABLE `xbt_files_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `xbt_files_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xbt_scrape_log`
--

DROP TABLE IF EXISTS `xbt_scrape_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xbt_scrape_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipa` int(11) NOT NULL DEFAULT '0',
  `info_hash` blob,
  `uid` int(11) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xbt_scrape_log`
--

LOCK TABLES `xbt_scrape_log` WRITE;
/*!40000 ALTER TABLE `xbt_scrape_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xbt_scrape_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xbt_users`
--

DROP TABLE IF EXISTS `xbt_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xbt_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `can_leech` tinyint(4) NOT NULL DEFAULT '1',
  `wait_time` int(11) NOT NULL DEFAULT '0',
  `peers_limit` int(11) NOT NULL DEFAULT '0',
  `torrents_limit` int(11) NOT NULL DEFAULT '0',
  `torrent_pass` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `torrent_pass_version` int(11) NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xbt_users`
--

LOCK TABLES `xbt_users` WRITE;
/*!40000 ALTER TABLE `xbt_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `xbt_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-22 19:12:09
