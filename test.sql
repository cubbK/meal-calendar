-- MariaDB dump 10.17  Distrib 10.4.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	10.4.7-MariaDB-1:10.4.7+maria~bionic

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add common item',7,'add_commonitem'),(26,'Can change common item',7,'change_commonitem'),(27,'Can delete common item',7,'delete_commonitem'),(28,'Can view common item',7,'view_commonitem'),(29,'Can add ingredient',8,'add_ingredient'),(30,'Can change ingredient',8,'change_ingredient'),(31,'Can delete ingredient',8,'delete_ingredient'),(32,'Can view ingredient',8,'view_ingredient'),(33,'Can add meal',9,'add_meal'),(34,'Can change meal',9,'change_meal'),(35,'Can delete meal',9,'delete_meal'),(36,'Can view meal',9,'view_meal'),(37,'Can add membership',10,'add_membership'),(38,'Can change membership',10,'change_membership'),(39,'Can delete membership',10,'delete_membership'),(40,'Can view membership',10,'view_membership'),(41,'Can add day plan',11,'add_dayplan'),(42,'Can change day plan',11,'change_dayplan'),(43,'Can delete day plan',11,'delete_dayplan'),(44,'Can view day plan',11,'view_dayplan'),(45,'Can add week plan',12,'add_weekplan'),(46,'Can change week plan',12,'change_weekplan'),(47,'Can delete week plan',12,'delete_weekplan'),(48,'Can view week plan',12,'view_weekplan');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-08-01 20:43:16.714454','1','salt',1,'[{\"added\": {}}]',7,1),(2,'2019-08-01 20:43:23.015538','2','pepper',1,'[{\"added\": {}}]',7,1),(3,'2019-08-01 20:43:27.990851','3','oil',1,'[{\"added\": {}}]',7,1),(4,'2019-08-01 20:44:00.242396','1','cauliflower',1,'[{\"added\": {}}]',8,1),(5,'2019-08-01 20:44:19.010144','2','broccoli',1,'[{\"added\": {}}]',8,1),(6,'2019-08-01 20:44:28.009627','3','egg',1,'[{\"added\": {}}]',8,1),(7,'2019-08-01 20:44:48.326678','1','Eggs and vegetables fried in coconut oil',1,'[{\"added\": {}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (1)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (2)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (3)\"}}]',9,1),(8,'2019-08-01 20:45:40.544020','2','Hard boiled eggs.',1,'[{\"added\": {}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (4)\"}}]',9,1),(9,'2019-08-01 20:46:15.489601','4','vinegar',1,'[{\"added\": {}}]',7,1),(10,'2019-08-01 20:46:24.839359','4','red onion',1,'[{\"added\": {}}]',8,1),(11,'2019-08-01 20:46:42.629699','5','chicken breasts',1,'[{\"added\": {}}]',8,1),(12,'2019-08-01 20:47:01.270283','6','kalamata olives',1,'[{\"added\": {}}]',8,1),(13,'2019-08-01 20:47:15.889348','7','herbs: basil, tarragon, cilantro, Thai basil, mint',1,'[{\"added\": {}}]',8,1),(14,'2019-08-01 20:47:24.084712','3','Chicken salad with olive oil. Handful of nuts',1,'[{\"added\": {}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (5)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (6)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (7)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (8)\"}}]',9,1),(15,'2019-08-01 20:48:02.138436','5','mayo',1,'[{\"added\": {}}]',7,1),(16,'2019-08-01 20:48:10.607610','6','jalapenos',1,'[{\"added\": {}}]',7,1),(17,'2019-08-01 20:48:17.956607','7','sriracha',1,'[{\"added\": {}}]',7,1),(18,'2019-08-01 20:48:21.855577','8','butter',1,'[{\"added\": {}}]',7,1),(19,'2019-08-01 20:48:24.730670','9','alt',1,'[{\"added\": {}}]',7,1),(20,'2019-08-01 20:48:44.098211','10','basil',1,'[{\"added\": {}}]',7,1),(21,'2019-08-01 20:49:30.384704','8','ground beef',1,'[{\"added\": {}}]',8,1),(22,'2019-08-01 20:49:45.879858','9','bacon strip',1,'[{\"added\": {}}]',8,1),(23,'2019-08-01 20:49:57.616794','10','tomato',1,'[{\"added\": {}}]',8,1),(24,'2019-08-01 20:50:12.938459','11','onion',1,'[{\"added\": {}}]',8,1),(25,'2019-08-01 20:50:37.456391','12','lettuce leaves',1,'[{\"added\": {}}]',8,1),(26,'2019-08-01 20:50:51.663901','4','Burgers (no bun) fried in butter, with vegetables and some salsa',1,'[{\"added\": {}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (9)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (10)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (11)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (12)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (13)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (14)\"}}]',9,1),(27,'2019-08-01 20:51:22.983195','11','mustard',1,'[{\"added\": {}}]',7,1),(28,'2019-08-01 20:51:31.769675','12','parchment paper',1,'[{\"added\": {}}]',7,1),(29,'2019-08-01 20:52:09.147379','13','turkey slices',1,'[{\"added\": {}}]',8,1),(30,'2019-08-01 20:52:42.726491','14','cheese slice',1,'[{\"added\": {}}]',8,1),(31,'2019-08-01 20:52:57.106736','5','Sandwich in a lettuce leaf, with meat and fresh vegetables',1,'[{\"added\": {}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (15)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (16)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (17)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (18)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (19)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (20)\"}}]',9,1),(32,'2019-08-01 20:53:38.644308','13','soy sauce',1,'[{\"added\": {}}]',7,1),(33,'2019-08-01 20:53:48.521297','14','ginger',1,'[{\"added\": {}}]',7,1),(34,'2019-08-01 20:53:58.912738','15','salmon',1,'[{\"added\": {}}]',8,1),(35,'2019-08-01 20:54:11.468194','16','asparagus',1,'[{\"added\": {}}]',8,1),(36,'2019-08-01 20:54:27.787942','6','Fried salmon, with vegetables',1,'[{\"added\": {}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (21)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (22)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (23)\"}}]',9,1),(37,'2019-08-01 20:54:53.100499','17','garlic clove',1,'[{\"added\": {}}]',8,1),(38,'2019-08-01 20:55:01.216090','6','Fried salmon, with vegetables',2,'[{\"added\": {\"name\": \"membership\", \"object\": \"Membership object (24)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (25)\"}}]',9,1),(39,'2019-08-01 20:55:55.813668','15','brown sugar',1,'[{\"added\": {}}]',7,1),(40,'2019-08-01 20:56:03.283350','16','sesame seeds',1,'[{\"added\": {}}]',7,1),(41,'2019-08-01 20:56:10.320587','17','sesame oil',1,'[{\"added\": {}}]',7,1),(42,'2019-08-01 20:56:36.578112','18','bell peper',1,'[{\"added\": {}}]',8,1),(43,'2019-08-01 20:56:50.599005','19','white mushrooms',1,'[{\"added\": {}}]',8,1),(44,'2019-08-01 20:57:05.292475','20','carot',1,'[{\"added\": {}}]',8,1),(45,'2019-08-01 20:57:17.663018','21','green onion',1,'[{\"added\": {}}]',8,1),(46,'2019-08-01 20:57:35.192454','7','Ground beef stir-fry with vegetables. Some berries',1,'[{\"added\": {}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (26)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (27)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (28)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (29)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (30)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (31)\"}}]',9,1),(47,'2019-08-01 20:58:23.898157','22','beef sirloin',1,'[{\"added\": {}}]',8,1),(48,'2019-08-01 20:59:23.003126','8','Fried beef with vegetables',1,'[{\"added\": {}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (32)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (33)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (34)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (35)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (36)\"}}, {\"added\": {\"name\": \"membership\", \"object\": \"Membership object (37)\"}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'meals','commonitem'),(8,'meals','ingredient'),(9,'meals','meal'),(10,'meals','membership'),(11,'plans','dayplan'),(12,'plans','weekplan'),(5,'sessions','session'),(6,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-08-01 19:38:52.932121'),(2,'contenttypes','0002_remove_content_type_name','2019-08-01 19:38:53.079375'),(3,'auth','0001_initial','2019-08-01 19:38:53.264930'),(4,'auth','0002_alter_permission_name_max_length','2019-08-01 19:38:53.767043'),(5,'auth','0003_alter_user_email_max_length','2019-08-01 19:38:53.790164'),(6,'auth','0004_alter_user_username_opts','2019-08-01 19:38:53.821517'),(7,'auth','0005_alter_user_last_login_null','2019-08-01 19:38:53.848157'),(8,'auth','0006_require_contenttypes_0002','2019-08-01 19:38:53.859719'),(9,'auth','0007_alter_validators_add_error_messages','2019-08-01 19:38:53.893910'),(10,'auth','0008_alter_user_username_max_length','2019-08-01 19:38:53.924596'),(11,'auth','0009_alter_user_last_name_max_length','2019-08-01 19:38:53.953974'),(12,'auth','0010_alter_group_name_max_length','2019-08-01 19:38:54.001967'),(13,'auth','0011_update_proxy_permissions','2019-08-01 19:38:54.032276'),(14,'users','0001_initial','2019-08-01 19:38:54.203702'),(15,'admin','0001_initial','2019-08-01 19:38:54.884707'),(16,'admin','0002_logentry_remove_auto_add','2019-08-01 19:38:55.301166'),(17,'admin','0003_logentry_add_action_flag_choices','2019-08-01 19:38:55.332500'),(18,'meals','0001_initial','2019-08-01 19:38:55.527712'),(19,'plans','0001_initial','2019-08-01 19:38:56.229421'),(20,'plans','0002_auto_20190731_2215','2019-08-01 19:38:56.935866'),(21,'sessions','0001_initial','2019-08-01 19:38:56.985292'),(22,'users','0002_auto_20190729_2158','2019-08-01 19:38:57.119623');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('h8d0wnl7qoc1sqheyfvhv9ev6yb0ufir','NTlmMzc5OTlhNzI3YjIyZmJmNzUyZTNmNGFkYzAwYTRiMGU0Mzg5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZWIxYjQ5OWRhNWRiMDBkODgxYjY0NzBmYTcwNjk4MGY4OTQ0ODYyIn0=','2019-08-15 20:41:53.936860');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals_commonitem`
--

DROP TABLE IF EXISTS `meals_commonitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meals_commonitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals_commonitem`
--

LOCK TABLES `meals_commonitem` WRITE;
/*!40000 ALTER TABLE `meals_commonitem` DISABLE KEYS */;
INSERT INTO `meals_commonitem` VALUES (1,'salt'),(2,'pepper'),(3,'oil'),(4,'vinegar'),(5,'mayo'),(6,'jalapenos'),(7,'sriracha'),(8,'butter'),(9,'alt'),(10,'basil'),(11,'mustard'),(12,'parchment paper'),(13,'soy sauce'),(14,'ginger'),(15,'brown sugar'),(16,'sesame seeds'),(17,'sesame oil');
/*!40000 ALTER TABLE `meals_commonitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals_ingredient`
--

DROP TABLE IF EXISTS `meals_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meals_ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals_ingredient`
--

LOCK TABLES `meals_ingredient` WRITE;
/*!40000 ALTER TABLE `meals_ingredient` DISABLE KEYS */;
INSERT INTO `meals_ingredient` VALUES (1,'cauliflower'),(2,'broccoli'),(3,'egg'),(4,'red onion'),(5,'chicken breasts'),(6,'kalamata olives'),(7,'herbs: basil, tarragon, cilantro, Thai basil, mint'),(8,'ground beef'),(9,'bacon strip'),(10,'tomato'),(11,'onion'),(12,'lettuce leaves'),(13,'turkey slices'),(14,'cheese slice'),(15,'salmon'),(16,'asparagus'),(17,'garlic clove'),(18,'bell peper'),(19,'white mushrooms'),(20,'carot'),(21,'green onion'),(22,'beef sirloin');
/*!40000 ALTER TABLE `meals_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals_meal`
--

DROP TABLE IF EXISTS `meals_meal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meals_meal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `requiresFruit` tinyint(1) NOT NULL,
  `link` longtext NOT NULL,
  `calories` int(11) NOT NULL,
  `typeMeal` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals_meal`
--

LOCK TABLES `meals_meal` WRITE;
/*!40000 ALTER TABLE `meals_meal` DISABLE KEYS */;
INSERT INTO `meals_meal` VALUES (1,'Eggs and vegetables fried in coconut oil',1,'https://www.popsugar.com/fitness/Egg-Vegetables-Recipe-36905717',320,'BREAKFAST'),(2,'Hard boiled eggs.',1,'https://www.simplyrecipes.com/recipes/how_to_make_perfect_hard_boiled_eggs/',310,'BREAKFAST'),(3,'Chicken salad with olive oil. Handful of nuts',0,'https://healthyrecipesblogs.com/olive-oil-chicken-salad/',335,'GENERIC'),(4,'Burgers (no bun) fried in butter, with vegetables and some salsa',0,'https://www.tasteaholics.com/recipes/dinner/keto-quarter-pounder/',440,'GENERIC'),(5,'Sandwich in a lettuce leaf, with meat and fresh vegetables',0,'https://lexiscleankitchen.com/lettuce-wrap-sandwich/',430,'GENERIC'),(6,'Fried salmon, with vegetables',0,'https://aggieskitchen.com/salmon-and-veggie-stir-fry-day-4-of-the-17-day-diet/',400,'GENERIC'),(7,'Ground beef stir-fry with vegetables. Some berries',0,'https://valentinascorner.com/ground-beef-stir-fry/',500,'GENERIC'),(8,'Fried beef with vegetables',0,'https://www.allrecipes.com/recipe/228823/quick-beef-stir-fry/',270,'GENERIC');
/*!40000 ALTER TABLE `meals_meal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals_meal_commonItems`
--

DROP TABLE IF EXISTS `meals_meal_commonItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meals_meal_commonItems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meal_id` int(11) NOT NULL,
  `commonitem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `meals_meal_commonItems_meal_id_commonitem_id_b395931e_uniq` (`meal_id`,`commonitem_id`),
  KEY `meals_meal_commonIte_commonitem_id_ffa8c070_fk_meals_com` (`commonitem_id`),
  CONSTRAINT `meals_meal_commonIte_commonitem_id_ffa8c070_fk_meals_com` FOREIGN KEY (`commonitem_id`) REFERENCES `meals_commonitem` (`id`),
  CONSTRAINT `meals_meal_commonItems_meal_id_a8da1091_fk_meals_meal_id` FOREIGN KEY (`meal_id`) REFERENCES `meals_meal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals_meal_commonItems`
--

LOCK TABLES `meals_meal_commonItems` WRITE;
/*!40000 ALTER TABLE `meals_meal_commonItems` DISABLE KEYS */;
INSERT INTO `meals_meal_commonItems` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,3,1),(6,3,2),(7,3,3),(8,3,4),(9,4,1),(10,4,2),(11,4,5),(12,4,6),(13,4,7),(14,4,8),(15,4,10),(16,5,2),(17,5,11),(18,5,12),(19,6,1),(20,6,2),(21,6,4),(22,6,13),(23,6,14),(24,7,3),(25,7,13),(26,7,15),(27,7,16),(28,7,17),(30,8,3),(31,8,13),(29,8,16);
/*!40000 ALTER TABLE `meals_meal_commonItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals_membership`
--

DROP TABLE IF EXISTS `meals_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meals_membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` varchar(200) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `meals_membership_ingredient_id_01dc07f0_fk_meals_ingredient_id` (`ingredient_id`),
  KEY `meals_membership_meal_id_28a3395e_fk_meals_meal_id` (`meal_id`),
  CONSTRAINT `meals_membership_ingredient_id_01dc07f0_fk_meals_ingredient_id` FOREIGN KEY (`ingredient_id`) REFERENCES `meals_ingredient` (`id`),
  CONSTRAINT `meals_membership_meal_id_28a3395e_fk_meals_meal_id` FOREIGN KEY (`meal_id`) REFERENCES `meals_meal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals_membership`
--

LOCK TABLES `meals_membership` WRITE;
/*!40000 ALTER TABLE `meals_membership` DISABLE KEYS */;
INSERT INTO `meals_membership` VALUES (1,'0.5',1,1),(2,'2',2,1),(3,'1',3,1),(4,'2',3,2),(5,'0.16',4,3),(6,'0.6',5,3),(7,'15 grams',6,3),(8,'a handful',7,3),(9,'250 grams',8,4),(10,'0.5',9,4),(11,'0.25',10,4),(12,'0.125',11,4),(13,'0.5',3,4),(14,'a handful',12,4),(15,'2',12,5),(16,'4',13,5),(17,'0.200',10,5),(18,'0.100',4,5),(19,'1',14,5),(20,'2',9,5),(21,'200 grams',15,6),(22,'a handful',16,6),(23,'a handful',2,6),(24,'0.250',11,6),(25,'1',17,6),(26,'170 grams',8,7),(27,'0.25',18,7),(28,'85 grams',19,7),(29,'0.5',20,7),(30,'2',21,7),(31,'0.75',17,7),(32,'110 grams',22,8),(33,'50 grams',2,8),(34,'0.25',18,8),(35,'0.5',20,8),(36,'0.25',21,8),(37,'0.25',17,8);
/*!40000 ALTER TABLE `meals_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans_dayplan`
--

DROP TABLE IF EXISTS `plans_dayplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans_dayplan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `breakfast_id` int(11) NOT NULL,
  `dinner_id` int(11) NOT NULL,
  `lunch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `plans_dayplan_breakfast_id_33fcf8ec_fk_meals_meal_id` (`breakfast_id`),
  KEY `plans_dayplan_dinner_id_b025a9ff_fk_meals_meal_id` (`dinner_id`),
  KEY `plans_dayplan_lunch_id_6c55e220_fk_meals_meal_id` (`lunch_id`),
  CONSTRAINT `plans_dayplan_breakfast_id_33fcf8ec_fk_meals_meal_id` FOREIGN KEY (`breakfast_id`) REFERENCES `meals_meal` (`id`),
  CONSTRAINT `plans_dayplan_dinner_id_b025a9ff_fk_meals_meal_id` FOREIGN KEY (`dinner_id`) REFERENCES `meals_meal` (`id`),
  CONSTRAINT `plans_dayplan_lunch_id_6c55e220_fk_meals_meal_id` FOREIGN KEY (`lunch_id`) REFERENCES `meals_meal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans_dayplan`
--

LOCK TABLES `plans_dayplan` WRITE;
/*!40000 ALTER TABLE `plans_dayplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `plans_dayplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans_weekplan`
--

DROP TABLE IF EXISTS `plans_weekplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans_weekplan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `days_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `plans_weeklyplan_days_id_ca0bb43e_fk_plans_dayplan_id` (`days_id`),
  CONSTRAINT `plans_weeklyplan_days_id_ca0bb43e_fk_plans_dayplan_id` FOREIGN KEY (`days_id`) REFERENCES `plans_dayplan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans_weekplan`
--

LOCK TABLES `plans_weekplan` WRITE;
/*!40000 ALTER TABLE `plans_weekplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `plans_weekplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_email_243f6e77_uniq` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'pbkdf2_sha256$150000$008YC0WExzIl$z7vvCd8d5+JtPHXvJpXp6g4fQr26rNGPfLrlQ15FD3o=','2019-08-01 20:41:53.905614',1,'','','root@root.com',1,1,'2019-08-01 20:41:44.084160');
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_groups`
--

DROP TABLE IF EXISTS `users_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_groups`
--

LOCK TABLES `users_user_groups` WRITE;
/*!40000 ALTER TABLE `users_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_user_permissions`
--

DROP TABLE IF EXISTS `users_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_user_permissions`
--

LOCK TABLES `users_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-01 21:03:33
