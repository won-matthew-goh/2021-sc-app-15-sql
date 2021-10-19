# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.26)
# Database: book
# Generation Time: 2021-10-19 05:52:36 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table books
# ------------------------------------------------------------

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '도서제목',
  `writer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '저자',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '도서 요약설명',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  `status` enum('0','1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '현재상태(0: 삭제, 1: 판매중, 2: 발행예정, 3: 절판)',
  `fidx` int unsigned NOT NULL,
  PRIMARY KEY (`idx`),
  KEY `FX_users_idx` (`fidx`),
  CONSTRAINT `FX_users_idx` FOREIGN KEY (`fidx`) REFERENCES `users` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;

INSERT INTO `books` (`idx`, `title`, `writer`, `content`, `createdAt`, `status`, `fidx`)
VALUES
	(1,'파일하나','파일둘','파일셋','2021-09-28 11:40:33','1',1),
	(2,'연금술사','파울로 코엘료','사실은 강철의 연금술사','2021-10-15 15:35:03','1',4),
	(3,'인간 실격','다자이 오사무','사실은 합격입니다.','2021-10-15 15:41:19','1',4),
	(4,'강아지똥','권정생','민들레꽃이 되었습니다.','2021-10-15 15:42:02','1',4),
	(5,'사람은 무엇으로 사는가','톨스토이','숨쉬니까 삽니다.','2021-10-15 15:45:02','1',4),
	(6,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(7,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(8,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(9,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(10,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(11,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(12,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(13,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(14,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(15,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(16,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(17,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(18,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(19,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(20,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(21,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(22,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(23,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(24,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(25,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(26,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(27,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(28,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(29,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(30,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(31,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(32,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(33,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(34,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(35,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(36,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(37,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(38,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(39,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(40,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(41,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(42,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(43,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(44,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(45,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(46,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(47,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(48,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(49,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(50,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(51,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(52,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(53,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(54,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(55,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(56,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(57,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(58,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(59,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(60,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(61,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(62,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(63,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(64,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(65,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4),
	(66,'봄봄','김유정','감자 무봤나?','2021-10-15 15:45:35','1',4);

/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT,
  `fidx` int unsigned NOT NULL,
  `oriname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '.',
  `savename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '.',
  `mimetype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `size` int NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fieldname` enum('C','U') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'U' COMMENT 'c: cover, u: upfile',
  `status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '0:삭제, 1:허용',
  PRIMARY KEY (`idx`),
  KEY `idxfrn` (`fidx`),
  CONSTRAINT `idxfrn` FOREIGN KEY (`fidx`) REFERENCES `books` (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;

INSERT INTO `files` (`idx`, `fidx`, `oriname`, `savename`, `mimetype`, `size`, `createdAt`, `fieldname`, `status`)
VALUES
	(3,1,'Wallpaper_zelda_1242_2688.jpg','210928_789e6996-b852-4df4-8dfb-4021096678d0.jpg','image/jpeg',426269,'2021-09-28 11:40:33','C','1'),
	(4,1,'Pokemon_SS_thanks_1080_1920.jpg','210928_625a79b6-f089-4ad4-a88c-5d04ffeaeef8.jpg','image/jpeg',976118,'2021-09-28 11:40:33','U','0'),
	(5,1,'스크린샷 2020-09-12 오후 2.50.17.png','210928_4b677d4d-b79c-4c8d-8ce0-4e249d3b7c08.png','image/png',3038318,'2021-09-28 17:09:43','U','1'),
	(6,2,'sea-4492536_1920.jpg','211015_8d1dea5f-3f62-4c05-accd-04d6153f4fdc.jpg','image/jpeg',368697,'2021-10-15 15:35:03','C','1'),
	(7,3,'marathon.png','211015_5a1f9e9d-95e6-49d5-903a-f78a10d924ec.png','image/png',38378,'2021-10-15 15:41:19','C','1'),
	(8,4,'sea-4492536_1920.jpg','211015_94c542e5-d68e-4443-845c-d29756fc4350.jpg','image/jpeg',368697,'2021-10-15 15:42:02','C','1'),
	(9,6,'marathon.png','211015_e03bad6e-1a36-4df7-a0ba-de94bbdc5e52.png','image/png',38378,'2021-10-15 15:45:35','C','1');

/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;

INSERT INTO `sessions` (`session_id`, `expires`, `data`)
VALUES
	(X'3663472D32446E7675664C736441464C424E367A34434A35322D45687A585F48',1634625325,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D'),
	(X'38755F504D2D76326D59356545427035327056434E76524A684B683879616C76',1634625115,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D'),
	(X'41756C384C58624F5F5A4F7263715734523949656F7272464C4473564F637274',1634625215,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D'),
	(X'4356306F414D7158565A45616F353748614F6D69394831394530355233534264',1634625282,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D'),
	(X'447853586F686634534630306B625A614C7058375F4C38565445677342436653',1634625282,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D'),
	(X'4B363850513543785F5751562D536B462D72655A444143777453413275563865',1634625274,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D'),
	(X'4C4A313044487A4671322D4C544E504D6435494A33575233586C39424D613842',1634625315,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D'),
	(X'544F64574D62704C3277576A51614C6F4D744D5F34314248793147534D644378',1634624635,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D'),
	(X'565F6B503239414C6447734765676250426D4D56534C514F4A454B4D724F316A',1634624645,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D'),
	(X'6A4C576D467233384543564532474546326C764451615F33636D425F32334A38',1634625325,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D'),
	(X'6B36326735637169656F756E753842324A5975422D5475694741586F4A533668',1634700138,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D'),
	(X'6F7A35616A564C5874394A5F596E43315853474C46723637552D6C72426D3351',1634625315,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D'),
	(X'76794A6D6C6337797239754A495136502D7851315A625753306E457174435732',1634625248,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22736563757265223A66616C73652C22687474704F6E6C79223A747275652C2270617468223A222F227D7D');

/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `passwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1','2','3','4','5','6','7','8','9') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '5' COMMENT '0: 탈퇴, 1: 유휴회원, 3: 인증회원, 5: 회원, 6: VIP, 9: 관리자',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`idx`, `userid`, `passwd`, `username`, `email`, `createdAt`, `status`)
VALUES
	(1,'qimo2000','$2b$08$K/N3rVMNmvgUHGClEZp8IOYCphVxBXFyY2KfgLmutkwllo5bFUGxy','고원','qimo2000@naver.com','2021-09-27 14:55:54','5'),
	(4,'qimo2001','$2b$08$eKtAMDf0pLeq/CbJGdVUi.gVAUUx9BE8bpFdY0CRjJLHZ9AdaTHYS','고원','qimo2001@naver.com','2021-10-01 11:02:30','5'),
	(5,'1929420889','','Matthew Goh','qimo2000@naver.com','2021-10-01 14:47:57','3'),
	(6,'lAVsASX7pk0P4UkwQSYP4HR3hG15TWfprJOMqCLmcY0','','고원','qimo2000@naver.com','2021-10-01 15:11:37','3'),
	(7,'qimo2002','$2b$08$wvQ1vxc0tm4iWGn/JTaOcOvxz9EaUIkyBgeuKzyhKnLZQJqBt9wYy','고원','qimo2002@qimo2002.com','2021-10-15 12:49:50','5'),
	(8,'koguma','$2b$08$pOqIVKS7/acWs1LjXBQu.OBcUk2oKjxdfPblvFxNi7iy3auDxnehe','고구마','rhrnak@naver.com','2021-10-19 11:10:52','0');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users_api
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users_api`;

CREATE TABLE `users_api` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT,
  `fidx` int unsigned DEFAULT NULL COMMENT 'users->id',
  `domain` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '허용가능도메인',
  `apikey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT 'uuid4',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '0: 사용안함, 1: 사용함',
  PRIMARY KEY (`idx`),
  KEY `fk_api_users_idx` (`fidx`),
  CONSTRAINT `fk_api_users_idx` FOREIGN KEY (`fidx`) REFERENCES `users` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `users_api` WRITE;
/*!40000 ALTER TABLE `users_api` DISABLE KEYS */;

INSERT INTO `users_api` (`idx`, `fidx`, `domain`, `apikey`, `createdAt`, `status`)
VALUES
	(3,1,'http://127.0.0.1:3200','c38ddb69-f2ed-406b-a6b9-bc34a5210e36','2021-10-01 09:46:41','1'),
	(4,6,'','d9b9ef9b-8187-45fd-a936-15b072af202f','2021-10-01 17:17:23','1'),
	(5,4,'http://127.0.0.1:3100,http://localhost:3100,http://127.0.0.1:3200,http://localhost:3200,https://sc21-app-vuew-book.web.app,http://localhost:8080,http://127.0.0.1:8080','55670aa0-b07f-4477-83a4-46c202cbb416','2021-10-14 11:28:50','1');

/*!40000 ALTER TABLE `users_api` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users_sns
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users_sns`;

CREATE TABLE `users_sns` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT COMMENT '고유값',
  `fidx` int unsigned NOT NULL COMMENT 'user->idx',
  `provider` enum('KA','NA') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'KA' COMMENT '''KA'', ''NA''',
  `snsid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'sns id',
  `snsName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'sns 사용자 이름',
  `displayName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'sns 표시 이름',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'sns email',
  `profileURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'sns 프로필 경로',
  `accessToken` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '접근 토큰',
  `refreshToken` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '갱신 토큰',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '접속일',
  `status` enum('0','1','2','3','4','5') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '3' COMMENT '0:탈퇴, 1: 유휴, 5: 사용',
  PRIMARY KEY (`idx`),
  KEY `fk_users_idx` (`fidx`),
  CONSTRAINT `fk_users_idx` FOREIGN KEY (`fidx`) REFERENCES `users` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `users_sns` WRITE;
/*!40000 ALTER TABLE `users_sns` DISABLE KEYS */;

INSERT INTO `users_sns` (`idx`, `fidx`, `provider`, `snsid`, `snsName`, `displayName`, `email`, `profileURL`, `accessToken`, `refreshToken`, `createdAt`, `status`)
VALUES
	(6,5,'KA','1929420889','Matthew Goh','Matthew Goh','qimo2000@naver.com','http://k.kakaocdn.net/dn/bjXilq/btq7OCkDK6M/DsSwfYkkiLgW0zHlABbOg0/img_640x640.jpg','G0GdpECId0xMcMAqPk8CyFC9aHdPQ4tg9XOXNwopcSEAAAF8OmUbPw','fOlQVROMX6AZg5_mTJ0iS4q23fzbzKHnmfGDfgopcSEAAAF8OmUbPQ','2021-10-01 14:47:57','3'),
	(7,6,'NA','lAVsASX7pk0P4UkwQSYP4HR3hG15TWfprJOMqCLmcY0','고원','아크','qimo2000@naver.com',NULL,'AAAAOJjgRBsRLOszIl4jIYNXvLHXw68yEgpw21y5wVlUEUsL-ys93n_8O-lxWqvqmhs1MZFnGl5RBjJOKXYjVDqLGYI','rI3Qo2rN7Uis0yJQipHiiaJN9sEdnrRCGaJNqErRUQpze3fVs0ZQUCFF1W0kYHjGiiRSRdhw6UIsii1Z3ZoKYgJD7xcSFPbKipMAisJ1BnD17fisIYkwVBM3hOiiz8JaipHfG27Zan','2021-10-01 15:11:37','3');

/*!40000 ALTER TABLE `users_sns` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users_withdrawal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users_withdrawal`;

CREATE TABLE `users_withdrawal` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fidx` int unsigned NOT NULL COMMENT 'users -> idx',
  `msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '회원탈퇴사유',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '탈퇴일',
  PRIMARY KEY (`id`),
  KEY `FK_withdrawal_usersidx` (`fidx`),
  CONSTRAINT `FK_withdrawal_usersidx` FOREIGN KEY (`fidx`) REFERENCES `users` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `users_withdrawal` WRITE;
/*!40000 ALTER TABLE `users_withdrawal` DISABLE KEYS */;

INSERT INTO `users_withdrawal` (`id`, `fidx`, `msg`, `createdAt`)
VALUES
	(5,8,'asdfasdfasdf','2021-10-19 11:44:09');

/*!40000 ALTER TABLE `users_withdrawal` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
