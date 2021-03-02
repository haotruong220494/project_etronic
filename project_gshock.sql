-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: project_gshock
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `birth_day` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_accounts_on_email` (`email`),
  UNIQUE KEY `index_accounts_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_accounts_on_confirmation_token` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (4,'haotvph04791@fpt.edu.vn','$2a$12$pbK2StCHRa5YTlEf42jZd.VYFcVZQR3KS5r.b0uJrSBY743he0Tny',NULL,NULL,NULL,7,'2021-02-26 07:36:12','2021-02-26 06:31:38','::1','::1',NULL,'2021-02-23 07:51:49',NULL,NULL,'Hảo Trương',NULL,NULL,NULL,NULL,'2021-02-23 07:51:49','2021-02-26 07:36:12','hao-truong',0,1),(5,'admin@haotruong.dev','$2a$12$1jY./U8QuGjnnjq.WmKj6u7u08sySQTl40JHzw.PxScshjymLuqJO',NULL,NULL,NULL,7,'2021-03-02 02:59:10','2021-03-01 03:17:22','::1','::1',NULL,'2021-02-24 04:41:25',NULL,NULL,'Admin',NULL,NULL,NULL,NULL,'2021-02-24 04:41:26','2021-03-02 02:59:10','admin',1,1),(15,'haotv03@gmail.com','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'uzy-GFn_pnWnZGHVuGcs',NULL,'2021-03-02 04:50:25',NULL,'hao truong',NULL,NULL,NULL,NULL,'2021-03-02 04:50:25','2021-03-02 04:50:25','',0,1);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `blob_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
INSERT INTO `active_storage_attachments` VALUES (1,'image','Collection',2,1,'2021-02-19 08:24:53'),(8,'image','Article',4,8,'2021-02-22 02:42:47'),(9,'image','Article',3,9,'2021-02-22 02:43:09'),(10,'image','Article',2,10,'2021-02-22 02:43:23'),(11,'image','Article',1,11,'2021-02-22 02:43:34'),(12,'image','Product',3,12,'2021-02-22 06:08:26'),(13,'image','Product',2,13,'2021-02-22 06:24:54'),(14,'image','Product',1,14,'2021-02-22 06:25:14'),(15,'image','Product',4,15,'2021-02-22 06:26:33'),(16,'image','Product',5,16,'2021-02-22 06:30:20'),(17,'image','Product',6,17,'2021-02-22 06:31:05'),(18,'image','Product',7,18,'2021-02-22 06:31:52'),(19,'image','Product',8,19,'2021-02-22 06:34:33'),(20,'image','Product',9,20,'2021-02-22 06:35:11'),(21,'image','Product',10,21,'2021-02-22 06:35:53'),(22,'image','Product',11,22,'2021-02-22 06:36:40'),(23,'image','Product',12,23,'2021-02-22 06:37:36'),(24,'image','Product',13,24,'2021-02-22 06:40:34'),(25,'image','Product',14,25,'2021-02-22 07:22:35'),(26,'image','Product',17,26,'2021-02-22 09:27:12'),(27,'image','Product',16,27,'2021-02-22 09:27:19'),(28,'image','Product',15,28,'2021-02-22 09:27:29');
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `byte_size` bigint(20) NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
INSERT INTO `active_storage_blobs` VALUES (1,'puFqHE5dExHxWg52AobhPN4Y','login-cmt.png','image/png','{\"identified\":true,\"width\":452,\"height\":428,\"analyzed\":true}',18433,'ZhN8q4wNbWDMlmfJQ6C9DQ==','2021-02-19 08:24:53'),(8,'VyTZEZtmNPb6Ftk4xwggt6eH','jq3czlspxs.jpg','image/jpeg','{\"identified\":true,\"width\":1000,\"height\":667,\"analyzed\":true}',715383,'dsPL3Ew4kHUDNuQ6RAo7Tw==','2021-02-22 02:42:47'),(9,'8o5Dx6tbD2nbzaic5W9eWjAX','jq3czlspxs.jpg','image/jpeg','{\"identified\":true,\"width\":1000,\"height\":667,\"analyzed\":true}',715383,'dsPL3Ew4kHUDNuQ6RAo7Tw==','2021-02-22 02:43:09'),(10,'pw6JKa1m2BN12Rup7EPz4j5B','jq3czlspxs.jpg','image/jpeg','{\"identified\":true,\"width\":1000,\"height\":667,\"analyzed\":true}',715383,'dsPL3Ew4kHUDNuQ6RAo7Tw==','2021-02-22 02:43:23'),(11,'K7oG6KvnsGjLMDwg3mM1KxTo','jq3czlspxs.jpg','image/jpeg','{\"identified\":true,\"width\":1000,\"height\":667,\"analyzed\":true}',715383,'dsPL3Ew4kHUDNuQ6RAo7Tw==','2021-02-22 02:43:34'),(12,'gN6E8eeuPan7BbKTJq6kw2F2','ezgif-3-adfc7ef78eb6.png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',305386,'GI31G8pCHt7I4wvrFhjvEw==','2021-02-22 06:08:26'),(13,'Q2KDJnWhiZKyzsAMjtewnKtn','ezgif-3-513a38752224.png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',391360,'4ZEEQVXxYyI5sikKFFSDAw==','2021-02-22 06:24:54'),(14,'d7njmVw6jduhnEujC3PNmuWN','ezgif-3-2316e3690c30 (1).png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',433688,'pnioT8mQFEGE5Lje4QH5Ew==','2021-02-22 06:25:14'),(15,'fTVRgLYenWLYFqoZjvmK4XBZ','ezgif-3-1b4e02d78a90.png','image/png','{\"identified\":true,\"width\":400,\"height\":480,\"analyzed\":true}',235591,'jNDsRjiRIjB20/LrdnLUAA==','2021-02-22 06:26:33'),(16,'pk6ogC7L5JwiVnAGtpCwSSjH','ezgif-3-166dfc6e52c2.png','image/png','{\"identified\":true,\"width\":400,\"height\":480,\"analyzed\":true}',281624,'9dh4rb7TqLCb8b9iG42VYA==','2021-02-22 06:30:20'),(17,'9Mt1LfBG2PNzisWNcDmq2Eye','ezgif-3-69192d1581ad.png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',479343,'/GsonoM0VOtE+buUWRS3kA==','2021-02-22 06:31:05'),(18,'sFD4qjMNtawMX5ihB68tzcNh','ga-1100-1a1_grande.png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',374016,'mmnrxnNiaVI9Pr/oqJy+JA==','2021-02-22 06:31:52'),(19,'Z5SfcK25YbCSjBuumNT9aBUX','ezgif-3-ba86cd5a86d7.png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',425792,'l96USNHjkUWRzuaD6n+ZFw==','2021-02-22 06:34:33'),(20,'uWFmc5Qu4kJ4ygqoJnbFwfbQ','gst-b100b-1a3_6108cf31d5f74f6dbf712adc72c74417_grande.png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',316200,'4O/43arb5yZ0mWf6oGKwnw==','2021-02-22 06:35:11'),(21,'VSQTiFpURVJpigFC6La1aZnN','mtg-b1000tj-1adr_7a627b08a7bc4b66bfa59c6c1ff20ed7_grande.png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',372884,'haj8sjGV9JWQIirJ4BSvfQ==','2021-02-22 06:35:53'),(22,'yjn1BKnCf76pKnwB2jvjz5UK','ezgif-3-faa13ad76615.png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',421057,'0CaTb7/46EY88FEVzGmT5A==','2021-02-22 06:36:40'),(23,'LhXWDWN1Uyysu7xUkQf99SXf','ezgif-3-513a38752224.png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',391360,'4ZEEQVXxYyI5sikKFFSDAw==','2021-02-22 06:37:36'),(24,'7qttvXokqpMj6srsT413eUdG','ezgif-3-ba86cd5a86d7.png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',425792,'l96USNHjkUWRzuaD6n+ZFw==','2021-02-22 06:40:34'),(25,'32DFY1bFe5HJrSUbwZhwgnQr','gbb.png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',256768,'DrvEm3kKay4MPSHvyLvXfw==','2021-02-22 07:22:35'),(26,'pnoqwizkCaMLer3e6ZAdTEih','slider2.png','image/png','{\"identified\":true,\"width\":400,\"height\":480,\"analyzed\":true}',205903,'Hq0v1mE6iEzRoIuG3/kfqw==','2021-02-22 09:27:12'),(27,'e1K75TH6NC1ud4e8oZHaZfmf','slider1.png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',366222,'vc9rK5mgfjKldRRFpx6i1w==','2021-02-22 09:27:19'),(28,'XiWjLMBTqsjeyt4WcJzJEB9b','slider3.png','image/png','{\"identified\":true,\"width\":500,\"height\":600,\"analyzed\":true}',429617,'lDk4l98rrT+RoWuO11n16A==','2021-02-22 09:27:29'),(29,'v7gY4M7GGQh4a5ZVWyr2XSKS','ezgif-3-5d412ff55599.png','image/png','{\"identified\":true}',374358,'qyv8QhSsyqrJ3AMrb0Kwxg==','2021-02-25 12:02:51');
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'haotv03@gmail.com','$2a$12$Lw47tzNfGC7wrdT.YDZeNOhdtIBL4j2vXgUbc.lsT87428QWX789G',NULL,NULL,NULL,NULL,NULL,NULL,'2021-02-18 10:13:23','2021-02-18 10:13:23');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2021-02-18 10:11:51','2021-02-18 10:11:51');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Miễn phí vận chuyển','mien-phi-van-chuyen-qfojs',NULL,'<p>ds</p>\r\n','2021-02-22 02:36:31','2021-02-22 02:43:34',1),(2,'Bảo hành 24/7','bao-hanh-24-7-grmoo',NULL,'<p>d</p>\r\n','2021-02-22 02:37:54','2021-02-22 02:43:23',1),(3,'Chính sách 1 đổi 1 ','chinh-sach-1-doi-1-borwz',NULL,'<p>d</p>\r\n','2021-02-22 02:41:16','2021-02-22 02:43:09',1),(4,'Trả góp 0%','tra-gop-0-jxqkv',NULL,'<h1>1. ĐIỀU KIỆN V&Agrave; GIẤY TỜ GỐC CẦN C&Oacute;</h1>\r\n\r\n<ul>\r\n	<li>Tuổi từ 20 - 60 (t&iacute;nh theo ng&agrave;y th&aacute;ng năm sinh tr&ecirc;n chứng minh nh&acirc;n d&acirc;n).</li>\r\n	<li>Chứng minh nh&acirc;n d&acirc;n c&ograve;n hạn sử dụng (15 năm t&iacute;nh từ ng&agrave;y cấp).</li>\r\n	<li>Hộ khẩu (người mua h&agrave;ng phải c&oacute; t&ecirc;n trong hộ khẩu). Nếu khoản vay dưới 10 triệu c&oacute; thể thay hộ khẩu bằng bằng l&aacute;i xe.</li>\r\n	<li>C&ocirc;ng ty t&agrave;i ch&iacute;nh chỉ kiểm tra xong v&agrave; gửi lại kh&ocirc;ng giữ bất cứ giấy tờ g&igrave; của kh&aacute;ch h&agrave;ng.</li>\r\n</ul>\r\n\r\n<h2>(&Aacute;p dụng cho Kh&aacute;ch H&agrave;ng mua h&agrave;ng trả g&oacute;p với Đối T&aacute;c)</h2>\r\n\r\n<h2>1. Tuy&ecirc;n bố</h2>\r\n\r\n<p>a. Qu&yacute; Kh&aacute;ch H&agrave;ng c&oacute; nhu cầu mua h&agrave;ng trả g&oacute;p, trả chậm c&oacute; thể tự do lựa chọn v&agrave; sử dụng dịch vụ của bất kỳ b&ecirc;n cung cấp dịch vụ, sản phẩm (&ldquo;Đối T&aacute;c&rdquo;) trả g&oacute;p, trả chậm hoặc c&aacute;c dịch vụ, sản phẩm t&agrave;i ch&iacute;nh tương tự (&ldquo;Dịch Vụ&rdquo;).</p>\r\n\r\n<p>b. Thế Giới Di Động (TGDD)/Điện m&aacute;y XANH (ĐMX) l&agrave; b&ecirc;n cung cấp dịch vụ nhập liệu cho Đối T&aacute;c. TGDĐ/ĐMX hỗ trợ Đối T&aacute;c thực hiện một số c&ocirc;ng việc như thu thập th&ocirc;ng tin, nhập liệu, v&agrave; hướng dẫn Kh&aacute;ch H&agrave;ng k&yacute; hợp đồng với Đối T&aacute;c theo mẫu quy định tại Mục 3.</p>\r\n\r\n<p>c.&nbsp;TGDĐ/ĐMX được ủy quyền cung cấp h&oacute;a đơn v&agrave; chi tiết sản phẩm b&aacute;n của kh&aacute;ch h&agrave;ng cho đối t&aacute;c trả g&oacute;p.</p>\r\n\r\n<h2>2. Bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p>a. Kh&aacute;ch H&agrave;ng đồng &yacute; để cung cấp th&ocirc;ng tin c&aacute; nh&acirc;n cho TGDĐ/ĐMX để sử dụng Dịch Vụ bằng việc x&aacute;c nhận m&atilde; OTP như sau: sau khi hợp đồng đ&atilde; k&yacute; giữa Kh&aacute;ch H&agrave;ng v&agrave; C&ocirc;ng ty T&agrave;i Ch&iacute;nh thanh l&yacute;</p>\r\n\r\n<p>- Kh&aacute;ch H&agrave;ng đăng k&yacute; sử dụng Dịch Vụ bằng số điện thoại đang sử dụng.</p>\r\n\r\n<p>- TGDĐ/ĐMX gửi m&atilde; OTP v&agrave;o số điện thoại m&agrave; Kh&aacute;ch H&agrave;ng đ&atilde; đăng k&yacute; nhằm x&aacute;c định Kh&aacute;ch H&agrave;ng l&agrave; người sử dụng của số điện thoại tr&ecirc;n.</p>\r\n\r\n<p>- Kh&aacute;ch H&agrave;ng cung cấp m&atilde; OTP cho TGDĐ/ĐMX.</p>\r\n\r\n<p>Để l&agrave;m r&otilde; nội dung n&agrave;y, th&ocirc;ng tin c&aacute; nh&acirc;n của c&oacute; nghĩa l&agrave; bất kỳ dữ liệu n&agrave;o c&oacute; li&ecirc;n quan đến một c&aacute; nh&acirc;n, d&ugrave; đ&uacute;ng hay sai, v&agrave; c&oacute; thể gi&uacute;p nhận dạng được c&aacute; nh&acirc;n cụ thể hoặc kh&ocirc;ng thể nhận dạng (&ldquo;Th&ocirc;ng Tin C&aacute; Nh&acirc;n&rdquo;).</p>\r\n\r\n<p>b. TGDĐ/ĐMX thu thập Th&ocirc;ng Tin C&aacute; Nh&acirc;n của Kh&aacute;ch H&agrave;ng để sử dụng v&agrave; chuyển giao cho Đối T&aacute;c. Tong khả năng của m&igrave;nh, TGDĐ/ĐMX chủ động thực hiện c&aacute;c biện ph&aacute;p hợp l&yacute; để bảo vệ Th&ocirc;ng Tin C&aacute; Nh&acirc;n tr&aacute;nh khỏi việc bị lạm dụng, mất m&aacute;t, thay đổi, tiết lộ, mua lại hoặc truy cập tr&aacute;i ph&eacute;p. Tuy nhi&ecirc;n, TGDĐ/ĐMXkh&ocirc;ng thể đưa ra một cam kết chắc chắn rằng Th&ocirc;ng Tin C&aacute; Nh&acirc;n được đảm bảo an to&agrave;n một c&aacute;ch tuyệt đối v&agrave; kh&ocirc;ng đảm bảo việc sử dụng th&ocirc;ng tin của Đối T&aacute;c. TGDĐ/ĐMX kh&ocirc;ng chịu tr&aacute;ch nhiệm trong trường hợp c&oacute; sự truy cập tr&aacute;i ph&eacute;p Th&ocirc;ng Tin C&aacute; Nh&acirc;n, đặc biệt l&agrave; sau khi th&ocirc;ng tin c&aacute; nh&acirc;n đ&atilde; được chuyển giao cho Đối T&aacute;c. Trong phạm vi ph&aacute;p luật cho ph&eacute;p, th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; Kh&aacute;ch H&agrave;ng cung cấp c&oacute; thể được tiết lộ cho c&aacute;c mục đ&iacute;ch đ&atilde; n&ecirc;u trong ch&iacute;nh s&aacute;ch n&agrave;y đối với những đối tượng sau:</p>\r\n\r\n<p>- C&aacute;c c&ocirc;ng ty li&ecirc;n kết của TGDĐ/ĐMX hoặc c&aacute;c chi nh&aacute;nh v&agrave; nh&acirc;n vi&ecirc;n để cung cấp nội dung, th&ocirc;ng tin hoặc phản hồi cho Kh&aacute;ch H&agrave;ng hoặc cho TGDĐ/ĐMX;</p>\r\n\r\n<p>- C&aacute;c chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp của TGDĐ/ĐMX như kiểm to&aacute;n vi&ecirc;n, cố vấn t&agrave;i ch&iacute;nh v&agrave; luật sư;</p>\r\n\r\n<p>- C&aacute;c cơ quan quản l&yacute; nh&agrave; nước c&oacute; li&ecirc;n quan v&agrave; c&aacute;c cơ quan c&oacute; thẩm quyền kh&aacute;c để đảm bảo việc tu&acirc;n thủ ph&aacute;p luật;</p>\r\n\r\n<p>- Bất kỳ b&ecirc;n n&agrave;o kh&aacute;c m&agrave; Kh&aacute;ch H&agrave;ng cho ph&eacute;p ch&uacute;ng t&ocirc;i tiết lộ Th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh.</p>\r\n\r\n<p>c. TGDĐ/ĐMX được miễn trừ v&agrave; Kh&aacute;ch H&agrave;ng phải tự chịu tr&aacute;ch nhiệm trong trường hợp Đối T&aacute;c tiết lộ Th&ocirc;ng Tin C&aacute; Nh&acirc;n cho b&ecirc;n thứ ba kh&aacute;c tr&aacute;i mục đ&iacute;ch mong muốn của Kh&aacute;ch H&agrave;ng.&nbsp;</p>\r\n\r\n<p>d. Kh&aacute;ch H&agrave;ng vui l&ograve;ng li&ecirc;n hệ với TGDĐ/ĐMX trong trường hợp: (i) Kh&aacute;ch H&agrave;ng thay đổi th&ocirc;ng tin c&aacute; nh&acirc;n đ&atilde; cung cấp cho TGDĐ/ĐMX; hoặc (ii) Kh&aacute;ch H&agrave;ng muốn hủy th&ocirc;ng tin c&aacute; nh&acirc;n đ&atilde; cung cấp sau khi hợp đồng đ&atilde; k&yacute; giữa Kh&aacute;ch H&agrave;ng v&agrave; Đối T&aacute;c đ&atilde; thanh l&yacute;.</p>\r\n\r\n<h2>3. Mẫu hợp đồng của Đối T&aacute;c</h2>\r\n\r\n<p>- Mẫu hợp đồng HOME CREDIT:&nbsp;<a href=\"https://cloud.tgdd.vn/index.php/s/UVxnA6X2C20kvvL\">Tải tại đ&acirc;y</a>&nbsp; &nbsp;<br />\r\n<br />\r\n- Mẫu hợp đồng FE CREDIT:&nbsp;<a href=\"https://cloud.tgdd.vn/index.php/s/cwd6wkeoTTWZx86\">Tải tại đ&acirc;y</a>&nbsp;<br />\r\n<br />\r\n- Mẫu hợp đồng ACS:&nbsp;<a href=\"https://cloud.tgdd.vn/index.php/s/EK7vV9RAplfxUin\">Tải tại đ&acirc;y</a>&nbsp;<br />\r\n<br />\r\n- Mẫu hợp đồng Mcredit:&nbsp;<a href=\"https://cloud.tgdd.vn/index.php/s/DYnT5pCtUtqGwYz\">Tải tại đ&acirc;y.</a></p>\r\n\r\n<h2>4.&nbsp;Kh&aacute;ch H&agrave;ng c&oacute; bất kỳ thắc mắc, khiếu nại li&ecirc;n hệ tổng đ&agrave;i giải quyết khiếu nại của c&aacute;c Đối T&aacute;c theo th&ocirc;ng tin sau</h2>\r\n\r\n<p>- Tổng đ&agrave;i giải quyết khiếu nại của HOME CREDIT:&nbsp;(028)38.999.666<br />\r\n<br />\r\n- Tổng đ&agrave;i giải quyết khiếu nại của FE CREDIT:&nbsp;1900 234 588<br />\r\n<br />\r\n- Tổng đ&agrave;i giải quyết khiếu nại của ACS:&nbsp;(028) 5445 3800<br />\r\n<br />\r\n- Tổng đ&agrave;i giải quyết khiếu nại Mcredit:&nbsp;1900 63 67 69</p>\r\n\r\n<h2>5. Ng&agrave;y hiệu lực</h2>\r\n\r\n<p>Quy Định được &aacute;p dụng từ ng&agrave;y&nbsp;<strong>3 th&aacute;ng 9 năm 2020.</strong></p>\r\n\r\n<ul id=\"qdtg\">\r\n	<li>5. QUY ĐỊNH VỀ TRẢ G&Oacute;P H&Agrave;NG H&Oacute;A</li>\r\n</ul>\r\n','2021-02-22 02:42:47','2021-02-22 11:41:31',1);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckeditor_assets`
--

DROP TABLE IF EXISTS `ckeditor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ckeditor_assets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) NOT NULL,
  `data_content_type` varchar(255) DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `data_fingerprint` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ckeditor_assets_on_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckeditor_assets`
--

LOCK TABLES `ckeditor_assets` WRITE;
/*!40000 ALTER TABLE `ckeditor_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ckeditor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collections` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (2,'G-Shock','g-shock-uoazq','2021-02-19 03:29:15','2021-02-19 08:24:53','main',NULL),(3,'Baby-G','baby-g-pnhgo','2021-02-19 03:29:24','2021-02-19 08:27:30','main',NULL),(4,'Casio','casio-xtalc','2021-02-19 03:29:44','2021-02-19 08:27:34','main',NULL),(5,'Edifice','edifice-rqqwg','2021-02-19 03:29:58','2021-02-19 07:23:12','main',NULL),(6,'SRWatch','srwatch-elupb','2021-02-19 03:30:08','2021-02-19 07:37:52','main',NULL),(7,'Đồng hồ thông minh','dong-ho-thong-minh-xhpla','2021-02-19 03:30:27','2021-02-19 07:40:49','main',NULL),(8,'Sản phẩm nổi bật','san-pham-noi-bat-xsvjb','2021-02-19 09:12:41','2021-02-19 09:12:41','slider',NULL);
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `price` int(11) DEFAULT NULL,
  `promotional_price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `quantity_sold` int(11) DEFAULT '0',
  `sale_off` tinyint(1) DEFAULT '0',
  `especially` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'123 Đồng hồ Casio G-Shock Nam MRG-B2000R-1A','dong-ho-casio-g-shock-nam-mrg-b2000r-1a-akbvz',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Titan</li>\r\n	<li>D&acirc;y đeo kim loại</li>\r\n	<li>Nắp gập 3, kh&oacute;a chặt, 1 lần nhấn</li>\r\n	<li>D&acirc;y đeo bằng titan</li>\r\n	<li>Mặt k&iacute;nh saphia với lớp phủ kh&ocirc;ng phản quang</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống từ</li>\r\n	<li>Chống va đập</li>\r\n	<li>N&uacute;m vặn kh&oacute;a bằng v&iacute;t</li>\r\n	<li>AIP&reg; (Mạ ion ch&acirc;n kh&ocirc;ng) + Mạ ion</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',75000000,72000000,100,NULL,3,'2021-02-22 01:42:28','2021-02-23 07:47:17',1,12,1,1),(2,'Đồng hồ Casio G-Shock Nam MTG-B2000D-1A','dong-ho-casio-g-shock-nam-mtg-b2000d-1a-bodfw',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Titan</li>\r\n	<li>D&acirc;y đeo kim loại</li>\r\n	<li>Nắp gập 3, kh&oacute;a chặt, 1 lần nhấn</li>\r\n	<li>D&acirc;y đeo bằng titan</li>\r\n	<li>Mặt k&iacute;nh saphia với lớp phủ kh&ocirc;ng phản quang</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống từ</li>\r\n	<li>Chống va đập</li>\r\n	<li>N&uacute;m vặn kh&oacute;a bằng v&iacute;t</li>\r\n	<li>AIP&reg; (Mạ ion ch&acirc;n kh&ocirc;ng) + Mạ ion</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',25000000,NULL,100,NULL,2,'2021-02-22 01:47:11','2021-02-22 06:24:54',1,0,0,0),(3,'Đồng hồ Casio G-Shock Nam GA-2110ET-2A','dong-ho-casio-g-shock-nam-ga-2110et-2a-lkmrb',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',3500000,3200000,10,NULL,2,'2021-02-22 04:51:20','2021-02-22 06:08:26',1,0,1,0),(4,'Đồng hồ Casio G-Shock Nam MRG-B1000BA-1A','dong-ho-casio-g-shock-nam-mrg-b1000ba-1a-twojq',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',1500000,1350000,50,NULL,2,'2021-02-22 06:26:08','2021-02-22 06:26:33',1,0,1,0),(5,'Đồng hồ Casio G-Shock Nam GAS-100CT-1A','dong-ho-casio-g-shock-nam-gas-100ct-1a-nshba',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',23000000,20000000,20,NULL,2,'2021-02-22 06:30:20','2021-02-22 06:30:25',1,0,1,0),(6,'Đồng hồ Casio G-Shock Nam GAS-100CT-1A','dong-ho-casio-g-shock-nam-gas-100ct-1a-fjbca',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',9000000,8500000,100,NULL,2,'2021-02-22 06:31:05','2021-02-22 06:31:05',1,0,1,0),(7,'Đồng hồ Casio G-Shock Nam GM-6900SG-9','dong-ho-casio-g-shock-nam-gm-6900sg-9-klusp',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',5000000,4700000,60,NULL,2,'2021-02-22 06:31:52','2021-02-22 06:31:52',1,0,1,0),(8,'Đồng hồ Casio G-Shock Nam MTG-B1000WLP-1B','dong-ho-casio-g-shock-nam-mtg-b1000wlp-1b-hsxvo',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',5400000,5200000,10,NULL,2,'2021-02-22 06:34:33','2021-02-22 06:34:33',1,0,1,0),(9,'Đồng hồ Casio G-Shock Nam MTG-A2000D-1B','dong-ho-casio-g-shock-nam-mtg-a2000d-1b-dltif',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',15000000,14500000,50,NULL,2,'2021-02-22 06:35:11','2021-02-22 06:35:11',1,0,1,0),(10,'Đồng hồ Casio G-Shock Nam MTG-B1000WLP-A12','dong-ho-casio-g-shock-nam-mtg-b1000wlp-a12-mjwqd',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',8000000,7500000,30,NULL,2,'2021-02-22 06:35:53','2021-02-22 06:35:53',1,0,1,0),(11,'Đồng hồ Casio G-Shock Nam MRG-B2000B-1C','dong-ho-casio-g-shock-nam-mrg-b2000b-1c-fnpks',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',4500000,4300000,50,NULL,2,'2021-02-22 06:36:40','2021-02-22 06:36:40',1,0,1,0),(12,'Đồng hồ Casio G-Shock Nam MTG-B2000D-1D','dong-ho-casio-g-shock-nam-mtg-b2000d-1d-jaxal',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',6800000,6500000,100,NULL,2,'2021-02-22 06:37:36','2021-02-22 06:37:40',1,0,1,0),(13,'Đồng hồ Casio G-Shock Nam MTG-B1000WLP-AA1','dong-ho-casio-g-shock-nam-mtg-b1000wlp-aa1-wrhre',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',1200000,1100000,30,NULL,2,'2021-02-22 06:40:34','2021-02-22 06:40:34',1,0,1,0),(14,'Đồng hồ Casio Baby-G Nữ MSG-S600G-1A','dong-ho-casio-baby-g-nu-msg-s600g-1a-wyffl',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',5400000,5200000,200,NULL,3,'2021-02-22 07:21:29','2021-02-22 07:22:35',1,0,1,0),(15,'Đồng hồ Casio G-Shock Nam MTG-B23000WLP-A','dong-ho-casio-g-shock-nam-mtg-b23000wlp-a-jijpt',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',23000000,21000000,30,NULL,8,'2021-02-22 09:26:04','2021-02-22 09:27:29',1,0,0,0),(16,'Đồng hồ Casio G-Shock Nam MTG-B42000D-1A1','dong-ho-casio-g-shock-nam-mtg-b42000d-1a1-eafaj',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',5500000,5300000,40,NULL,8,'2021-02-22 09:26:41','2021-02-22 09:27:19',1,0,0,0),(17,'Đồng hồ Casio G-Shock Nam MRG-B2000B-1AB2','dong-ho-casio-g-shock-nam-mrg-b2000b-1ab2-adgef',NULL,'<ul>\r\n	<li>Vật liệu vỏ / v&agrave;nh bezel: Cacbon / Nhựa　</li>\r\n	<li>D&acirc;y đeo bằng nhựa</li>\r\n	<li>Mặt k&iacute;nh kho&aacute;ng</li>\r\n	<li>Neobrite</li>\r\n	<li>Chống va đập</li>\r\n	<li>Cấu tr&uacute;c bảo vệ l&otilde;i cacbon</li>\r\n	<li>Chống nước ở độ s&acirc;u 200 mét</li>\r\n</ul>\r\n',12000000,10000000,50,NULL,8,'2021-02-22 09:27:12','2021-02-22 09:49:08',1,0,0,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` varchar(255) DEFAULT NULL,
  `review_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (30,'hehehee',NULL,1,5,'2021-02-25 06:13:15','2021-02-25 06:13:15'),(34,'ds',30,1,5,'2021-02-25 10:16:55','2021-02-25 10:16:55'),(35,'ds',30,1,5,'2021-02-25 10:16:57','2021-02-25 10:16:57'),(36,'oh kinh đấy',30,1,5,'2021-02-25 10:36:32','2021-02-25 10:36:32'),(38,'hihi',30,1,4,'2021-02-25 10:56:46','2021-02-25 10:56:46'),(39,'kinh ko ',30,1,4,'2021-02-25 10:57:19','2021-02-25 10:57:19'),(40,'co',30,1,4,'2021-02-25 10:59:33','2021-02-25 10:59:33'),(41,'fs',30,1,4,'2021-02-25 11:01:20','2021-02-25 11:01:20'),(42,'fsa',30,1,4,'2021-02-25 11:03:25','2021-02-25 11:03:25'),(43,'dasd',30,1,4,'2021-02-25 11:03:47','2021-02-25 11:03:47'),(44,'ds',30,1,4,'2021-02-25 11:07:29','2021-02-25 11:07:29'),(45,'co cl',30,1,4,'2021-02-25 11:07:40','2021-02-25 11:07:40'),(46,'fsa',30,1,4,'2021-02-25 11:08:39','2021-02-25 11:08:39'),(47,'hihi',NULL,1,4,'2021-02-25 11:13:52','2021-02-25 11:13:52'),(48,'asdas',47,1,4,'2021-02-25 11:13:59','2021-02-25 11:13:59'),(49,'asdas',47,1,4,'2021-02-25 11:14:01','2021-02-25 11:14:01'),(50,'ds',47,1,4,'2021-02-25 11:14:13','2021-02-25 11:14:13'),(51,'keke',NULL,1,4,'2021-02-25 11:14:25','2021-02-25 11:14:25'),(52,'kiki',51,1,4,'2021-02-25 11:14:48','2021-02-25 11:14:48'),(71,'chúng ta của hiện tại ',NULL,14,4,'2021-02-26 10:31:36','2021-02-26 10:31:36'),(72,'hiện hiện cái nồi :))',71,14,4,'2021-02-26 10:31:48','2021-02-26 10:31:48');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20210131070754'),('20210131155752'),('20210219063745'),('20210219074947'),('20210220080756'),('20210220121535'),('20210220130416'),('20210220180433'),('20210221095414'),('20210221095901'),('20210221101040'),('20210222020627'),('20210223020827'),('20210223085536'),('20210224042217'),('20210224062559'),('20210225042647'),('20210226032746');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-02 11:58:36
