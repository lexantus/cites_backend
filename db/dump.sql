-- MySQL dump 10.13  Distrib 5.7.21, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: users
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (2,'Гандопас'),(1,'Достаевский'),(4,'Жопный философ'),(3,'Сервантес');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cites`
--

DROP TABLE IF EXISTS `cites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cites` (
  `author_id` int(11) DEFAULT NULL,
  `text` varchar(256) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cites_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cites`
--

LOCK TABLES `cites` WRITE;
/*!40000 ALTER TABLE `cites` DISABLE KEYS */;
INSERT INTO `cites` VALUES (1,'Суется рассуждать и решать, в чем не смыслит.',1),(1,'Было бы очень зазорно перед самим собой.',2),(1,'Тем не менее беда совершилась.',3),(1,'Вопросов я наставил много, но есть один самый важный.',4),(1,'Достолюбезной и почтенной супруге нашей',5),(1,'Но тут не было никакого особенного намерения, а просто как-то так почему-то вышло.',6),(1,'С появлением этой главной и все поглотившей во мне идеи мечты мои скрепились и разом отлились в извеcтную форму: из глупых сделались разумными.',7),(1,'Я написал кому следует, через кого следует.',8),(1,'Без фактов чувств не опишешь.',9),(1,'Однажды как-то слишком уж отличился в одном возложенном на него поручении.',10),(1,'Спрашивать денег - прегадкая история, даже жалованье, если чувствуешь где-то в складках совести, что их не совсем заслужил.',11),(1,'Я уступчив и мелочен только в мелочах, но в главном не уступлю никогда.',12),(1,'С лица твоего прыщет здоровьем.',13),(1,'От красивой свежей женщины яблоком пахнет.',14),(1,'Не от всякого можно обидеться. Не всякий стоит, чтобы на него обращать внимание.',15),(1,'Жизнь всякой женщины, чтобы она там ни проповедовала, это - вечное искание, кому бы подчиниться...',16),(1,'Ты мне в этот месяц стал как кусок моего собственного сердца.',17),(1,'Особенно люблю, когда ты возражаешь.',18),(1,'В своем месте все отзовется',19),(1,'Тайное сознание могущества нестерпимо приятнее явного господства.',20),(1,'Внутри безмерно больше остается, чем то, что выходит в словах.',21),(1,'Не входить в споры и говорить только самое необходимое, так чтобы никто не мог обо мне ничего заключить; главное - не спорить.',22),(1,'Я не понимаю, как можно, будучи под влиянием какой-нибудь господствующей мысли, которой подчиняется ваш ум и сердце вполне, жить еще чем-нибудь, что вне этой мысли.',23),(1,'Не один логический вывод, а так сказать, вывод, обратившийся в чувство.',24),(-1,'Zen poem\r\nTo follow the path:\r\nlook to the master,\r\nfollow the master\r\nwalk with the master\r\nsee through the master,\r\nbecome the master.',25),(1,'Скрепляющая идея совсем пропала. Все точно на постоялом дворе и завтра собираются вон из России.',26),(2,'Человек - среднее арифметическое своего окружения',27),(1,'Самое простое понимается всегда лишь под конец, когда перепробовано уже все, что мудреней и глупее',28),(1,'Сколько угрюмых лиц простонародья, возвращающихся с работы и промыслов',29),(1,'Моя идея - это та крепость, в которую я могу спрятаться во всех случаях от всех людей',30),(3,'Тех, кто предпочитает косной лени\r\nИ праздной неге пуховых перин\r\nКровавый и тяжёлый ратный труд!',31),(3,'Хлещи же, хлещи себя по мясам, скот немыслимый, пробуди свою удаль, которая направлена у тебя на обжорство и только на обжорство',32),(3,'Навъючь осла золотом - он тебе и в гору бегом побежит',33),(3,'У бога просить не стыдись, но и потрудиться для него не ленись',34),(3,'День на день не похож, и не всегда человек в духе бывает',35),(3,'Отплати добром за хлеб, который ты ел у своего господина',36),(3,'Храброе сердце злую судьбу ломает',37),(3,'Ты человек прлнокровный, и лёгкое кровопускание не сможет тебе повредить',38),(4,'Я не игрушка - я знатная личность!',39),(2,'adsf',40),(1,'adsfsdfasdf',41),(1,'adsfsdfasdf',42),(1,'adsfsdfasdf',43),(1,'adsfsdfasdf',44),(1,'adsfsdfasdf',45),(1,'adsfsdfasdf',46),(1,'adsfsdfasdf',47),(1,'adsfsdfasdf',48),(1,'adsfsdfasdf',49);
/*!40000 ALTER TABLE `cites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `name` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES ('fluffy','1995-05-15','litter','4 kittens, 3 female, 1 male');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pomodoro`
--

DROP TABLE IF EXISTS `pomodoro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pomodoro` (
  `type` char(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pomodoro`
--

LOCK TABLES `pomodoro` WRITE;
/*!40000 ALTER TABLE `pomodoro` DISABLE KEYS */;
INSERT INTO `pomodoro` VALUES ('0','2017-10-23 23:44:43','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-23 23:48:55','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-23 23:49:10','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-23 23:49:20','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-23 23:56:35','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-23 23:56:40','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-23 23:56:49','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-23 23:57:39','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-24 00:28:35','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-24 09:55:37','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-24 10:04:57','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-24 10:30:25','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-24 10:40:54','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-24 11:31:52','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-24 12:23:06','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-24 12:48:25','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-24 13:08:17','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-24 13:42:00','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-24 13:51:59','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-24 14:19:16','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-24 14:24:51','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-24 15:00:59','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-24 15:13:11','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-24 15:40:21','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-24 16:00:49','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-24 16:28:49','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-24 16:39:18','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-24 17:04:55','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-24 17:17:30','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-24 17:45:57','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-24 21:44:27','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-25 09:26:32','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-25 09:36:47','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-25 10:06:29','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-25 10:31:58','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-25 10:43:17','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-25 11:15:05','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-25 12:02:13','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-25 12:49:27','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-25 12:56:41','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-25 13:23:50','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-25 13:29:26','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-25 14:05:10','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-25 14:24:42','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-25 14:51:12','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-25 14:59:52','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-25 15:26:20','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-25 15:32:54','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-25 15:58:42','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-25 16:10:45','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-25 16:39:51','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-25 16:46:42','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-25 17:32:16','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-25 17:49:13','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-25 17:59:41','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-26 09:16:52','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-26 09:27:39','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-26 09:54:16','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-26 09:59:34','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-26 10:09:38','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-26 11:22:36','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-26 11:50:21','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-26 11:57:09','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-26 12:29:14','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-26 13:21:46','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-26 13:45:44','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-26 14:14:17','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-26 14:22:29','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-26 14:50:27','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-26 15:04:41','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-26 15:30:41','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-26 17:43:14','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-27 09:32:46','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-27 09:37:57','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-27 10:03:01','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-27 10:31:31','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-27 12:38:29','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-27 12:46:04','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-27 13:13:44','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-27 13:29:54','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-27 13:58:01','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-27 14:07:15','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-27 14:32:46','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-27 15:03:26','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-27 15:29:14','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-27 16:08:15','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-30 09:39:32','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-30 10:02:15','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-30 10:37:50','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-30 10:52:54','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-30 12:08:05','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-30 12:50:05','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-30 13:40:33','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-30 14:06:58','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-30 14:38:22','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-30 14:51:10','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-30 15:17:51','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-30 15:36:50','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-30 16:02:33','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-30 16:09:39','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-30 17:38:56','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-31 10:14:39','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-31 10:21:06','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-31 10:47:14','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-31 10:59:17','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-31 12:29:48','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-10-31 12:49:57','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-31 13:14:58','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-31 13:38:53','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-31 14:04:46','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-10-31 14:31:59','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-31 15:15:01','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-10-31 16:35:56','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-11-01 09:45:47','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-11-01 10:01:32','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-11-01 10:41:10','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-11-01 10:57:38','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-11-01 12:20:24','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-11-01 13:07:52','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-11-01 13:33:08','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-11-01 13:44:47','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-11-01 14:13:30','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-11-01 14:33:28','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-11-01 16:27:32','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-11-01 17:03:37','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-11-02 10:00:01','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-11-02 10:14:13','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('2','2017-11-02 10:25:06','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-11-02 11:39:41','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-11-02 12:22:42','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-11-02 12:55:30','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-11-02 13:51:32','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('1','2017-11-02 14:21:05','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d'),('0','2017-11-02 16:31:15','57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d');
/*!40000 ALTER TABLE `pomodoro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(36) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(45) DEFAULT NULL,
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('57e70c50-66ab-11e7-b6ac-4fd9fd4aae3d',3,NULL);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_apps`
--

DROP TABLE IF EXISTS `user_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_apps` (
  `name` varchar(45) NOT NULL,
  `db` varchar(45) DEFAULT NULL,
  `scripts_folder` varchar(45) DEFAULT NULL,
  `views_folder` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `db_UNIQUE` (`db`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_apps`
--

LOCK TABLES `user_apps` WRITE;
/*!40000 ALTER TABLE `user_apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `name` varchar(45) DEFAULT NULL,
  `password` binary(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('alex','5j+y�LTWMF�',3);
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

-- Dump completed on 2018-09-16 17:00:48
