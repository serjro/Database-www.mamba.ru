-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.10.1

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
-- Table structure for table `descr_desired_age`
--

DROP TABLE IF EXISTS `descr_desired_age`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_desired_age` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор желаемого возраста',
  `desired_age` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты желаемого возраста',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список желаемого возраста';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles_desired_age`
--

DROP TABLE IF EXISTS `profiles_desired_age`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_desired_age` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор желаемого возраста',
  `did_1` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 16-20',
  `did_2` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 20-25',
  `did_3` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 25-30',
  `did_4` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 30-35',
  `did_5` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 35-40',
  `did_6` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 40-45',
  `did_7` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 45-50',
  `did_8` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 50-55',
  `did_9` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 55-60',
  `did_10` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 60-65',
  `did_11` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 65-70',
  `did_12` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 70-75',
  `did_13` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 75-80',
  `did_14` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор 80-85',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525828409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица профилей желаемого возраста';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_drinking`
--

DROP TABLE IF EXISTS `descr_drinking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_drinking` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `drinking` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты отношения к алкоголю',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список отношения к алкоголю';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `friendship_statuses`
--

DROP TABLE IF EXISTS `friendship_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendship_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_breast`
--

DROP TABLE IF EXISTS `descr_breast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_breast` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор груди',
  `breast` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты груди',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список груди';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles_about`
--

DROP TABLE IF EXISTS `profiles_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_about` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `about_text` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Раздел О себе',
  `dating_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT 'Цель знакомства',
  `find_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT 'Кого хочу найти',
  `job_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT 'Профессия',
  `priority_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT 'Жизненные приоритеты',
  `excites_text` text COLLATE utf8_unicode_ci COMMENT 'Меня возбуждает',
  `insex_text` text COLLATE utf8_unicode_ci COMMENT 'В сексе я люблю',
  `getero_text` text COLLATE utf8_unicode_ci COMMENT 'Есть гетеросексуальный опыт',
  `gomo_text` text COLLATE utf8_unicode_ci COMMENT 'Есть гомосексуальный опыт',
  `often_text` text COLLATE utf8_unicode_ci COMMENT 'Как часто хотел(а) бы заниматься сексом',
  `auto_text` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT 'Мой автомобиль',
  `mobile_text` tinytext COLLATE utf8_unicode_ci COMMENT 'Мой телефон',
  `body_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT 'Телосложение',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  CONSTRAINT `profiles_about_ibfk_1` FOREIGN KEY (`id`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525828409 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Раздел О себе';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_bhair`
--

DROP TABLE IF EXISTS `descr_bhair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_bhair` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `bhair` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты волос на теле',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список возможных волос на теле';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_relation`
--

DROP TABLE IF EXISTS `descr_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_relation` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор отношений',
  `relation` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты опыта отношений',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список опыта отношений';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_sexexp`
--

DROP TABLE IF EXISTS `descr_sexexp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_sexexp` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор отношений',
  `sexexp` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты отношений',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список сексуальных отношений';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Группы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Почта',
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  `last_online` datetime DEFAULT NULL COMMENT 'Последний раз в сети',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=525828409 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Пользователи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_goals`
--

DROP TABLE IF EXISTS `descr_goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_goals` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `goals` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Описание целей знакомства',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список целей знакомства';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_sponsor`
--

DROP TABLE IF EXISTS `descr_sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_sponsor` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `sponsor` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты  спонсорства',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список отношения к спонсорству';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles_goals`
--

DROP TABLE IF EXISTS `profiles_goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_goals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `gid_1` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор цели знакомства Дружба и общение',
  `gid_2` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор цели знакомства Переписка',
  `gid_3` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор цели знакомства Любовь, романтические отношения',
  `gid_4` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор цели знакомства Секс на один-два раза',
  `gid_5` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор цели знакомства Групповой секс',
  `gid_6` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор цели знакомства Виртуальный секс',
  `gid_7` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор цели знакомства Предлагаю интим за деньги ',
  `gid_8` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор цели знакомства Ищу интим за деньги',
  `gid_9` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор цели знакомства Брак, создание семьи',
  `gid_10` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор цели знакомства Рождение, воспитание ребенка',
  `gid_11` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор цели знакомства Совместная аренда жилья',
  `gid_12` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор цели знакомства Занятия спортом',
  `gid_13` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор цели знакомства Другое',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525828409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица целей знакомства';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_body`
--

DROP TABLE IF EXISTS `descr_body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_body` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `body` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты телосложения',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список телосложений';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_excites`
--

DROP TABLE IF EXISTS `descr_excites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_excites` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `excites` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты что возбуждает',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список что возбуждает';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_whom`
--

DROP TABLE IF EXISTS `descr_whom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_whom` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `whom` varchar(20) NOT NULL COMMENT 'Описание с кем знакомлюсь',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Список с кем знакомлюсь';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `login` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Логин',
  `hash` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Пароль',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`id`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525828409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица аккаунтов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles_excites`
--

DROP TABLE IF EXISTS `profiles_excites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_excites` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `lid_1` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Запахи',
  `lid_2` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Татуировки или пирсинг',
  `lid_3` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Темный цвет кожи',
  `lid_4` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Одежда',
  `lid_5` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Джинсы',
  `lid_6` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Нижнее белье',
  `lid_7` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Чулки',
  `lid_8` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Резина, латекс',
  `lid_9` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Кожа',
  `lid_10` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Металл',
  `lid_11` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Униформа',
  `lid_12` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Обувь',
  `lid_13` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Волосатость',
  `lid_14` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Доминирование или подчинение',
  `lid_15` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Ограничение подвижности или связывание',
  `lid_16` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Другое',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525828409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица профилей что возбуждает';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_inbody`
--

DROP TABLE IF EXISTS `descr_inbody`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_inbody` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `inbody` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты что может быть на теле',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список что может быть на теле';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_flat`
--

DROP TABLE IF EXISTS `descr_flat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_flat` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `flat` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты жилья',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список вариантов жилья';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_drugs`
--

DROP TABLE IF EXISTS `descr_drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_drugs` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `drugs` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты отношения к наркотикам',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список отношения к наркотикам';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles_bhair`
--

DROP TABLE IF EXISTS `profiles_bhair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_bhair` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `bid_1` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Усы',
  `bid_2` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Борода',
  `bid_3` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Щетина',
  `bid_4` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Грудь',
  `bid_5` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Спина',
  `bid_6` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Руки',
  `bid_7` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Ноги',
  `bid_8` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Почти нет от природы',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525828409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица профилей наличия волос на теле';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_cities`
--

DROP TABLE IF EXISTS `descr_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор города',
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название города',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Города';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles_lifegoals`
--

DROP TABLE IF EXISTS `profiles_lifegoals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_lifegoals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `lid_1` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Карьера',
  `lid_2` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Материальное благосостояние',
  `lid_3` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Душевное равновесие',
  `lid_4` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Семья, долговременные отношения',
  `lid_5` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Максимум секса',
  `lid_6` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Творческая реализация',
  `lid_7` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Общественная деятельность',
  `lid_8` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Другое',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525828409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица профилей жизненных целей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_religion`
--

DROP TABLE IF EXISTS `descr_religion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_religion` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `religion` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты религий',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список религий';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_lifestyle`
--

DROP TABLE IF EXISTS `descr_lifestyle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_lifestyle` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `lifestyle` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты образа жизни',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список образов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT 'Метаданные файла',
  `media_type_id` int unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT 'Метаданные файла',
  `media_type_id` int unsigned DEFAULT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  CONSTRAINT `photo_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=151106 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Фото';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_orientation`
--

DROP TABLE IF EXISTS `descr_orientation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_orientation` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `orientation` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты ориентации',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список ориентации';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_kids`
--

DROP TABLE IF EXISTS `descr_kids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_kids` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `kids` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты наличия детей',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список есть ли дети';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_appearance`
--

DROP TABLE IF EXISTS `descr_appearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_appearance` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `appearance` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты внешности',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список внешностей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles_ext`
--

DROP TABLE IF EXISTS `profiles_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_ext` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `zodiac_id` tinyint DEFAULT NULL COMMENT 'Идентфикатор знака зодиака',
  `lang_id` tinyint DEFAULT NULL COMMENT 'Идентфикатор языка',
  `how_id` tinyint DEFAULT NULL COMMENT 'Идентификатор знакомства',
  `family_id` tinyint DEFAULT NULL COMMENT 'Идентификатор семейного положения',
  `sponsor_id` tinyint DEFAULT NULL COMMENT 'Идентификатор отношения к спонсорству',
  `kids_id` tinyint DEFAULT NULL COMMENT 'Идентификатор наличия детей',
  `body_id` tinyint DEFAULT NULL COMMENT 'Идентификатор телосложения',
  `inbody_id` tinyint DEFAULT NULL COMMENT 'Идентификатор что может быть на теле',
  `hair_id` tinyint DEFAULT NULL COMMENT 'Идентификатор цветов волос(прически)',
  `smoking_id` tinyint DEFAULT NULL COMMENT 'Идентификатор отношения к курению',
  `drinking_id` tinyint DEFAULT NULL COMMENT 'Идентификатор отношения к алкоголю',
  `drugs_id` tinyint DEFAULT NULL COMMENT 'Идентификатор отношения к наркотикам',
  `profit_id` tinyint DEFAULT NULL COMMENT 'Идентификатор дохода',
  `flat_id` tinyint DEFAULT NULL COMMENT 'Идентификатор жилья',
  `lifestyle_id` tinyint DEFAULT NULL COMMENT 'Идентификатор образа жизни',
  `religion_id` tinyint DEFAULT NULL COMMENT 'Идентификатор религии',
  `appearance_id` tinyint DEFAULT NULL COMMENT 'Идентификатор внешности',
  `orientation_id` tinyint DEFAULT NULL COMMENT 'Идентификатор ориентации',
  `breast_id` tinyint DEFAULT NULL COMMENT 'Идентификатор груди',
  `hiv_id` tinyint DEFAULT NULL COMMENT 'Идентификатор вич',
  `relation_id` tinyint DEFAULT NULL COMMENT 'Идентификатор опыта отношений',
  `sexexp_id` tinyint DEFAULT NULL COMMENT 'Идентификатор отношений',
  `sexoften_id` tinyint DEFAULT NULL COMMENT 'Идентификатор частоты занятий сексом',
  `real_id` tinyint DEFAULT NULL COMMENT 'Идентификатор реального пользователя',
  `vip_id` tinyint DEFAULT NULL COMMENT 'Идентификатор статуса vip',
  `sex_for_money_id` tinyint DEFAULT NULL COMMENT 'Идентификатор статуса интим за деньги',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525828409 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Расширенная таблица профилей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Текущий статус',
  `city` tinyint DEFAULT NULL COMMENT 'Код города проживания',
  `country` varchar(130) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `age` tinyint DEFAULT NULL COMMENT 'Возраст',
  `num_photo` tinyint DEFAULT NULL COMMENT 'Всего фото',
  `views` int DEFAULT NULL COMMENT 'Просмотров за месяц',
  `height` smallint DEFAULT NULL COMMENT 'Рост',
  `weight` smallint DEFAULT NULL COMMENT 'Вес',
  `photo` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT 'Ссылка на основную фотографию пользователя',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Профили';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_how`
--

DROP TABLE IF EXISTS `descr_how`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_how` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `how` varchar(20) NOT NULL COMMENT 'Описание как знакомлюсь',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Список как знакомлюсь';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `communities_users`
--

DROP TABLE IF EXISTS `communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communities_users` (
  `community_id` int unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_country`
--

DROP TABLE IF EXISTS `descr_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_country` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор страны',
  `country` varchar(30) DEFAULT NULL COMMENT 'Перечень стран',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Список стран';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles_inbody`
--

DROP TABLE IF EXISTS `profiles_inbody`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_inbody` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `bid_1` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Пирсинг',
  `bid_2` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Татуировки ',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525828409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица профилей что может быть на теле';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles_findtext`
--

DROP TABLE IF EXISTS `profiles_findtext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_findtext` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `find_text` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Раздел О себе',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  CONSTRAINT `profiles_findtext_ibfk_1` FOREIGN KEY (`id`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525828409 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Кого я хочу найти';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_hiv`
--

DROP TABLE IF EXISTS `descr_hiv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_hiv` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор вич',
  `hiv` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты вич',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список вич';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendship` (
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Сообщения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_lifegoals`
--

DROP TABLE IF EXISTS `descr_lifegoals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_lifegoals` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `lifegoals` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты жизненных целейи',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список жизненных целей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_hair`
--

DROP TABLE IF EXISTS `descr_hair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_hair` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `hair` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты цветов волос(прически)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список цветов волос(прически)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles_lang`
--

DROP TABLE IF EXISTS `profiles_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_lang` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `lid_1` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Русский',
  `lid_2` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор English',
  `lid_3` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Deutsch',
  `lid_4` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор French',
  `lid_5` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Italian',
  `lid_6` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Spanish',
  `lid_7` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор Chinese',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525828409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица профилей знания иностранных языков';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_lang`
--

DROP TABLE IF EXISTS `descr_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_lang` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор языка',
  `language` varchar(20) NOT NULL COMMENT 'Язык',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Список языков';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_smoking`
--

DROP TABLE IF EXISTS `descr_smoking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_smoking` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `smoking` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты отношения к курению',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список отношения к курению';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_profit`
--

DROP TABLE IF EXISTS `descr_profit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_profit` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `profit` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты дохода',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список вариантов дохода';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_zodiac`
--

DROP TABLE IF EXISTS `descr_zodiac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_zodiac` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор знака',
  `sign` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название знака',
  `day_from` tinyint unsigned DEFAULT NULL COMMENT 'С какого дня',
  `month_from` tinyint unsigned DEFAULT NULL COMMENT 'С какого месяца',
  `day_to` tinyint unsigned DEFAULT NULL COMMENT 'По какой день',
  `month_to` tinyint unsigned DEFAULT NULL COMMENT 'По какой месяц',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список знаков зодиака';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_family`
--

DROP TABLE IF EXISTS `descr_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_family` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор списка',
  `family` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Описание семейного положения',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список семейного положения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles_whom`
--

DROP TABLE IF EXISTS `profiles_whom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_whom` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `wid_1` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор знакомства с парнем',
  `wid_2` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор знакомства с девушкой',
  `wid_3` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор знакомства с парой М+Ж',
  `wid_4` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор знакомства с парой М+М',
  `wid_5` tinyint(1) DEFAULT NULL COMMENT 'Идентификатор знакомства с парой Ж+Ж',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525828409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица профилей с кем знакомлюсь';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descr_sexoften`
--

DROP TABLE IF EXISTS `descr_sexoften`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descr_sexoften` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор частоты занятий сексом',
  `sexoften` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Варианты частоты занятий сексом',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Список частоты занятий сексом';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-19 13:06:08
