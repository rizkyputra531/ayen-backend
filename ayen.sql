-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.2.36-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ayen
CREATE DATABASE IF NOT EXISTS `ayen` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `ayen`;

-- Dumping structure for table ayen.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.admin: ~3 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `nama`, `jenis_kelamin`, `nomor_hp`, `alamat`, `username`, `password`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(13, 'Muhammad Rizky Syahputra', 'Pria', '085793780806', 'Jalan Ahlak Mulia Komplek Griya Mulia Blok B No. 3, Guntung Manggis, Landasan Ulin', 'rizkyputra531', '$2y$10$24ZrSI26GvEgXbDHvIp0HuEDLvDhlB3Y3eGsOhuatPIFY069WNxt.', NULL, NULL, NULL),
	(16, 'admin', 'Pria', '001', '001', 'admin', '$2y$10$bHC/NlRq2N.oET7joDu20.UCFvRqHxjRpSgOZr5ysvcFNJG3PAIGS', NULL, NULL, NULL),
	(17, 'yulius', 'Pria', '081350045530', 'kolonel sugiono', 'yulius', '$2y$10$VpWGn/Rwb64jM/poUJ9HBu6QZB9DyVMqx8KPq2qlRcB9qlmCPQ4BG', NULL, NULL, NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table ayen.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table ayen.kostumer
CREATE TABLE IF NOT EXISTS `kostumer` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.kostumer: ~0 rows (approximately)
/*!40000 ALTER TABLE `kostumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `kostumer` ENABLE KEYS */;

-- Dumping structure for table ayen.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.migrations: ~21 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_12_03_064326_create_products_table', 1),
	(5, '2020_12_03_070205_create_transaction_table', 2),
	(6, '2020_12_03_070347_create_transaction_details_table', 2),
	(7, '2020_12_03_071427_create_kostumer_table', 2),
	(8, '2020_12_03_071457_create_admin_table', 2),
	(9, '2020_12_05_031855_create_admin_table', 3),
	(10, '2020_12_05_055649_create_admin_table', 4),
	(11, '2020_12_08_053839_create_productcategory_table', 5),
	(12, '2020_12_10_034002_create_products_table', 6),
	(13, '2020_12_10_072710_create_products_table', 7),
	(14, '2021_01_05_072813_create__user_table', 8),
	(15, '2021_01_08_073111_create_products_table', 9),
	(16, '2021_01_08_073912_create_products_table', 10),
	(17, '2016_06_01_000001_create_oauth_auth_codes_table', 11),
	(18, '2016_06_01_000002_create_oauth_access_tokens_table', 11),
	(19, '2016_06_01_000003_create_oauth_refresh_tokens_table', 11),
	(20, '2016_06_01_000004_create_oauth_clients_table', 11),
	(21, '2016_06_01_000005_create_oauth_personal_access_clients_table', 11);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table ayen.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.oauth_access_tokens: ~37 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('04d1b97918a80945f0e921b37e9e559bf5c92999eb0ebdb07bc281a17d716b4157dad48313e97852', 42, 5, 'a@a.com', '[]', 0, '2021-02-23 06:15:59', '2021-02-23 06:15:59', '2022-02-23 06:15:59'),
	('10815e5269a7358b2f7ed3191cb582cdc7672508243f1e886504c6640b983f506993be8026211546', 30, 1, 'erwin@asdasd.com', '[]', 0, '2021-02-19 12:18:08', '2021-02-19 12:18:08', '2022-02-19 12:18:08'),
	('207970c2aff2b71c73ea21d2615d461ca1fa21b80f86d5084c09e9c20212b1fe0e216b939399e8d7', 42, 5, 'a@a.com', '[]', 0, '2021-02-20 23:00:22', '2021-02-20 23:00:22', '2022-02-20 23:00:22'),
	('28295959d386b7ddb9501af883fad570e37e993c065c575daee8d6b51cd8e3cc7a8466dda9a8c1c4', 45, 5, 'ridwaan19@gmail.com', '[]', 0, '2021-02-22 04:43:45', '2021-02-22 04:43:45', '2022-02-22 04:43:45'),
	('29a04a7ae8c9a3a6f8bc195877c5ae28c711137b3dc42e66f65f951349c348587935992b791aedba', 42, 5, 'a@a.com', '[]', 0, '2021-02-22 12:39:08', '2021-02-22 12:39:08', '2022-02-22 12:39:08'),
	('2aa525d6a4e933cbdfe2b08b032de851c78532a90bb270cbf250219d6b1124642ac0f9e4b31c5e01', 42, 5, 'a@a.com', '[]', 0, '2021-02-22 04:28:06', '2021-02-22 04:28:06', '2022-02-22 04:28:06'),
	('2fb3642c8aa4c1fc85c51e6f4d1799da09fd9d8b27355ecf3f1823f9837d502de7c43d7c45c4846e', 43, 5, 'ad@asd.com', '[]', 0, '2021-02-20 22:43:53', '2021-02-20 22:43:53', '2022-02-20 22:43:53'),
	('3029702cd5c881251363ce05252533909049fda1b023b549c256cb12af58f22852f6f5cdffe969bb', 42, 5, 'a@a.com', '[]', 0, '2021-02-20 21:39:56', '2021-02-20 21:39:56', '2022-02-20 21:39:56'),
	('3d80dcebbb8d124c34200947f0f727d645762181b311997ea359a08bcdda331b6ea0ec9e91b47b19', 46, 5, 'rizkyputra531.rp@gmail.com', '[]', 0, '2021-02-23 08:12:07', '2021-02-23 08:12:07', '2022-02-23 08:12:07'),
	('4140a3a32274fd595908485819bef947e1ba070c31d40b53359526966a239a5fc2e6c646906091ac', 42, 5, 'a@a.com', '[]', 0, '2021-02-21 00:43:48', '2021-02-21 00:43:48', '2022-02-21 00:43:48'),
	('5dbd4d0e0e1c60ae0126ef2e5b3d72f66778278cb08e6fc9598daa21089cb5ad9039cbc796e868d4', 33, 5, 'aadas@asdad.com', '[]', 0, '2021-02-20 04:06:27', '2021-02-20 04:06:27', '2022-02-20 04:06:27'),
	('63fe788fdae454cd2ed9cd53113ca207a1f8f4318c808aa98e970d79ed4656e3cb1c5129aa997348', 30, 1, 'erwin@asdasd.com', '[]', 0, '2021-02-19 12:19:40', '2021-02-19 12:19:40', '2022-02-19 12:19:40'),
	('64b9b10eab5774e5db39d3a8f0ca2957559215fe99e0f7d3344d6e6676afd00f043e7957966ff789', 42, 5, 'a@a.com', '[]', 0, '2021-02-22 04:22:45', '2021-02-22 04:22:45', '2022-02-22 04:22:45'),
	('6bc634ea16538961b97851207e75f7f777eed00916870215abdef45dd47ec506834f51100dac39c4', 30, 1, 'erwin@asdasd.com', '[]', 0, '2021-02-19 12:16:14', '2021-02-19 12:16:14', '2022-02-19 12:16:14'),
	('737897287d785243cac960a62427cc79952a40f04f422e93b3a8015376e0996fb03ae096b34087bb', 42, 5, 'a@a.com', '[]', 0, '2021-02-20 22:54:02', '2021-02-20 22:54:02', '2022-02-20 22:54:02'),
	('7ff680267771503026c6ced5fb5f4db6302bee0bfb9e0be1c01bf87918ecaacf8687ec4ba6a66743', 32, 5, 'aadas@asdad.com', '[]', 0, '2021-02-20 04:06:03', '2021-02-20 04:06:03', '2022-02-20 04:06:03'),
	('82e20053948234653edbf85611d075b32324a8e1a2bb9d81e8630a83a508b540c2c4ee019704a664', 34, 5, 'aadas@asdad.com', '[]', 0, '2021-02-20 04:07:29', '2021-02-20 04:07:29', '2022-02-20 04:07:29'),
	('8558b923281f8fce05dab716ded0e40661bb4a5e869212640e1d5a38c1c148308b9244f43ec1c2fd', 42, 5, 'a@a.com', '[]', 0, '2021-02-22 12:07:33', '2021-02-22 12:07:33', '2022-02-22 12:07:33'),
	('8885447956a7d920d3979a86b36a4bf3b2d716dd0facfcc478b80230bf420aaf62ba1247ffc7730f', 30, 5, 'erwin@asdasd.com', '[]', 0, '2021-02-19 13:05:22', '2021-02-19 13:05:22', '2022-02-19 13:05:22'),
	('8de9d01df1c0ddbf1754f74ae59135ef0eb346211a44fdde08d2860000a2cdd8299303f5f333f5c0', 35, 5, 'erwin@asdaswd.com', '[]', 0, '2021-02-20 04:09:34', '2021-02-20 04:09:34', '2022-02-20 04:09:34'),
	('9a81fa9148b1d21b6059e44c599fa05176b7a71b3c3cdc10aa5dd92fc4d7f53f487140d800412269', 30, 1, 'erwin@asdasd.com', '[]', 0, '2021-02-19 12:10:01', '2021-02-19 12:10:01', '2022-02-19 12:10:01'),
	('9cbb5e56d4e8c1463b98f85a3bf841067f6268c7426ac2512699c930664c964026a3b77c394db802', 44, 5, 'erwin@a0ad.comwwa', '[]', 0, '2021-02-21 09:16:15', '2021-02-21 09:16:15', '2022-02-21 09:16:15'),
	('9e8d5cc1e5de9be849f79cc5fb3e39602a370493d488609a3efb9dba248e6aca4fbded38ba10a677', 41, 5, 'asd@asd.com', '[]', 0, '2021-02-20 04:33:37', '2021-02-20 04:33:37', '2022-02-20 04:33:37'),
	('9f2411b02daab04fdad034bf43ba0e70be8241d847268ae27fd790f5d0200e25830a781babcbaab9', 39, 5, 'erwin@a0ad.comwwa', '[]', 0, '2021-02-20 04:12:11', '2021-02-20 04:12:11', '2022-02-20 04:12:11'),
	('a56cabad9ee5a20307e4b5f6bf0d0ff76531232a287aa1dea2b89dbc4b2ab1dfde99665ebf5ca586', 42, 5, 'a@a.com', '[]', 0, '2021-02-22 04:32:25', '2021-02-22 04:32:25', '2022-02-22 04:32:25'),
	('aa59ac919529a40aa33460964f86a1f187c6eca21899ccdcc686b16025a6bd994b521f7fe3ad16eb', 29, 1, 'erwin@asdasd.com', '[]', 0, '2021-02-19 12:09:07', '2021-02-19 12:09:07', '2022-02-19 12:09:07'),
	('ada50b2ad9b54c2feda2beb3e33d594631ff20752be02962fd6d5e8738dcc56e793883ab0ac15c88', 42, 5, 'a@a.com', '[]', 0, '2021-02-20 21:39:13', '2021-02-20 21:39:13', '2022-02-20 21:39:13'),
	('affdc344f140e6554b64a6cc714c1e899424bcc39bd021cc0d3e625a7cd978e6130c286db1ab92a7', 46, 5, 'rizkyputra531.rp@gmail.com', '[]', 0, '2021-02-22 13:42:44', '2021-02-22 13:42:44', '2022-02-22 13:42:44'),
	('b09dd45e8c10c1f6cb6d9775f6a15831bb4976ebd13ebb2dbb37ae18fcf907172cb62a3c5f06199b', 31, 5, 'aadas@asdad.com', '[]', 0, '2021-02-20 04:04:31', '2021-02-20 04:04:31', '2022-02-20 04:04:31'),
	('b5d2c9b5bd47a26c48bc41c8551bfcf8a4f39967e8be76cdfe2fa2589548300db1a038edc8565714', 30, 1, 'erwin@asdasd.com', '[]', 0, '2021-02-19 12:15:09', '2021-02-19 12:15:09', '2022-02-19 12:15:09'),
	('b7270ce73d7875db194fc3ab34a78f06234e2095d1f74973feb3303a028001d5587476602c9232f9', 46, 5, 'rizkyputra531.rp@gmail.com', '[]', 0, '2021-02-22 13:39:22', '2021-02-22 13:39:22', '2022-02-22 13:39:22'),
	('bd5bfa16034c49831430001b89e0579f22d82885bb13aebd0e7efeb88e4fcdfb1d48fe9a542f21a4', 30, 1, 'erwin@asdasd.com', '[]', 0, '2021-02-19 12:18:47', '2021-02-19 12:18:47', '2022-02-19 12:18:47'),
	('bee8ad928ebc5bcd7ab5ef82161a65053f4ec1779d4408c40c13564229bf7f9484ce2d918baf6e00', 42, 5, 'a@a.com', '[]', 0, '2021-02-23 04:59:53', '2021-02-23 04:59:53', '2022-02-23 04:59:53'),
	('bfd7571eefe04982491c54df561f979d00bd32fd9276d538df8f0a15753c8c1a5c1862a9ce637a57', 30, 1, 'erwin@asdasd.com', '[]', 0, '2021-02-19 12:17:42', '2021-02-19 12:17:42', '2022-02-19 12:17:42'),
	('d1d026368f7c71d765a44ea085782950fba64a1b1408be8e29d02216cd698cc265e9a785a56ea7b2', 42, 5, 'a@a.com', '[]', 0, '2021-02-21 00:45:40', '2021-02-21 00:45:40', '2022-02-21 00:45:40'),
	('dc2d6cf2b4687d6a1303be7f6e6fca11a358e6ce9fb5ff48217d3e5aee0c32b0ae03cbbfe5121034', 42, 5, 'a@a.com', '[]', 0, '2021-02-22 04:42:52', '2021-02-22 04:42:52', '2022-02-22 04:42:52'),
	('df0d06bf8286fdbfc16f6bedf5ab90032493e41a2a2535096a1fac3fab8fe4b5c834c658d6aa3224', 44, 5, 'erwin@a0ad.comwwa', '[]', 0, '2021-02-21 09:16:05', '2021-02-21 09:16:05', '2022-02-21 09:16:05'),
	('f45b6cf02c52ef5bfef87cfa9ac1f8532e21d2374cd3870470cc6c5c9629e5a9d173aa17c6724e4f', 45, 5, 'ridwaan19@gmail.com', '[]', 0, '2021-02-22 04:44:00', '2021-02-22 04:44:00', '2022-02-22 04:44:00'),
	('fef242368213fc2b51723620a1d6615f3cd6d20768c8f2bcfa75e451983bc47e0c58f2c812c64ffb', 40, 5, 'aadawwwws@asdad.com', '[]', 0, '2021-02-20 04:12:20', '2021-02-20 04:12:20', '2022-02-20 04:12:20');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table ayen.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.oauth_auth_codes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table ayen.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.oauth_clients: ~6 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'Zux8ou7vz5QP90INbDWcHidQo9A0ls9TmfJS648s', NULL, 'http://localhost', 1, 0, 0, '2021-02-19 11:33:49', '2021-02-19 11:33:49'),
	(2, NULL, 'Laravel Password Grant Client', 'WXol8rd6XS924tzGxqlZF3oQRsdT2DTnVnyta7kU', 'users', 'http://localhost', 0, 1, 0, '2021-02-19 11:33:49', '2021-02-19 11:33:49'),
	(3, NULL, 'Laravel Personal Access Client', '7SSdOxi9zEUpqsSQVhYF7fZz2St1wEMBwTm0rkPZ', NULL, 'http://localhost', 1, 0, 0, '2021-02-19 12:53:24', '2021-02-19 12:53:24'),
	(4, NULL, 'Laravel Password Grant Client', 'oO1U7QSGDw73RlgqLVInczjLNhGuRT1bDkPktCYM', 'users', 'http://localhost', 0, 1, 0, '2021-02-19 12:53:24', '2021-02-19 12:53:24'),
	(5, NULL, 'Laravel Personal Access Client', 'IitwaZv8hhsApi4wCt1ESBub9wtIAb80kCpxZd1c', NULL, 'http://localhost', 1, 0, 0, '2021-02-19 13:03:30', '2021-02-19 13:03:30'),
	(6, NULL, 'Laravel Password Grant Client', 'j2KPiA9zwP8KCa2NjIVd80q6vmTb32TsAJVdkHPK', 'users', 'http://localhost', 0, 1, 0, '2021-02-19 13:03:30', '2021-02-19 13:03:30');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table ayen.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.oauth_personal_access_clients: ~3 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2021-02-19 11:33:49', '2021-02-19 11:33:49'),
	(2, 3, '2021-02-19 12:53:24', '2021-02-19 12:53:24'),
	(3, 5, '2021-02-19 13:03:30', '2021-02-19 13:03:30');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table ayen.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.oauth_refresh_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table ayen.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table ayen.productcategory
CREATE TABLE IF NOT EXISTS `productcategory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.productcategory: ~15 rows (approximately)
/*!40000 ALTER TABLE `productcategory` DISABLE KEYS */;
INSERT INTO `productcategory` (`id`, `nama`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(9, 'Mainan Bayi', NULL, '2020-12-08 12:58:23', '2020-12-10 03:22:32'),
	(10, 'Baju', NULL, '2020-12-08 12:59:10', '2020-12-10 03:22:33'),
	(11, 'Celana', NULL, '2020-12-08 12:59:18', '2020-12-10 03:22:34'),
	(12, 'Kursi Roda', NULL, '2020-12-08 12:59:25', '2020-12-10 03:22:35'),
	(13, 'Selimut', NULL, '2020-12-08 13:02:34', '2020-12-10 03:22:35'),
	(14, 'Bed Cover', NULL, '2020-12-08 13:02:41', '2020-12-10 03:22:38'),
	(15, 'Bantal', NULL, '2020-12-08 13:03:24', '2020-12-10 03:22:39'),
	(16, 'Peralatan Mandi', NULL, '2020-12-08 13:03:38', '2020-12-10 03:22:40'),
	(17, 'Topi', NULL, '2020-12-08 13:03:53', '2020-12-10 03:22:41'),
	(18, 'Sarung Tangan', NULL, '2020-12-08 13:03:58', '2020-12-08 13:06:35'),
	(19, 'Kaos Kaki', NULL, '2020-12-08 13:04:03', '2020-12-08 13:06:44'),
	(20, 'Sepatu', NULL, '2020-12-08 13:04:06', '2020-12-10 03:22:42'),
	(21, 'Tempat Tidur', NULL, '2020-12-10 01:20:23', '2020-12-10 03:22:43'),
	(22, 'Peralatan Makan', NULL, '2020-12-11 00:50:22', '2020-12-11 00:50:22'),
	(23, 'Keranjang Bayi', NULL, '2020-12-17 12:41:11', '2020-12-17 12:41:11');
/*!40000 ALTER TABLE `productcategory` ENABLE KEYS */;

-- Dumping structure for table ayen.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskon` int(11) NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.products: ~5 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `nama`, `slug`, `merk`, `kategori`, `foto`, `image_name`, `stok`, `harga`, `satuan`, `diskon`, `deskripsi`, `product_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(10, 'Setelan Anak Laki Laki Import /Setelan Anak Perempuan Import/Baju Anak - Kapal Abu, Size 65', 'setelan-anak-laki-laki-import-setelan-anak-perempuan-importbaju-anak-kapal-abu-size-65', 'Baju', 'Mainan Bayi', 'assets/product/BAJU_BAYI_BARU_LAHIR_BAJU_BAYI_NEW_BORN__IMPORT_STELAN.jpg', 'BAJU_BAYI_BARU_LAHIR_BAJU_BAYI_NEW_BORN__IMPORT_STELAN.jpg', 10, 28000, 'pcs', 10, '<p>Setelan Anak Laki Laki Import /Setelan Anak Perempuan Import/Baju Anak Laki Laki/Baju Anak Perempuan</p>', 0, '2021-02-22 14:06:27', '2021-02-19 23:41:32', '2021-02-22 14:06:27'),
	(11, 'Mainan anak pistol water', 'mainan-anak-pistol-water', 'SNI', 'Mainan Bayi', '/tmp/phpJkqVcD', 'ocean-toy-9094-6086452-1.jpg', 1, 10000, 'pcs', 10, '<p>Mainan Bayi</p>', 0, '2021-02-22 09:49:56', '2021-02-21 11:37:18', '2021-02-22 09:49:56'),
	(12, 'Grobokan Bayi', 'grobokan-bayi', 'Arizona', 'Kursi Roda', 'assets/product/mainan bayi beli atau sewa.JPG', 'mainan bayi beli atau sewa.JPG', 10, 150000, 'unit', 10, '<p>Keren</p>', 0, '2021-02-23 08:15:30', '2021-02-22 14:07:44', '2021-02-23 08:15:30'),
	(14, 'coba t ambah produk', 'coba-t-ambah-produk', 'coba', 'Mainan Bayi', 'assets/product/ocean-toy-9094-6086452-1.jpg', 'ocean-toy-9094-6086452-1.jpg', 0, 100, 'Pcs', 10, '<p>coba</p>', 0, '2021-02-23 03:00:12', '2021-02-23 02:59:50', '2021-02-23 03:00:12'),
	(15, 'tambah lagi', 'tambah-lagi', 'tambah', 'Peralatan Makan', 'assets/product/bayi.jpg', 'bayi.jpg', 2, 1000000, 'pcs', 30, '<p>tambah hehehehe</p>', 0, '2021-02-23 08:13:18', '2021-02-23 03:01:03', '2021-02-23 08:13:18'),
	(16, 'Bak Mandi Karet', 'bak-mandi-karet', 'Omby', 'Peralatan Mandi', 'assets/product/bayi.jpg', 'bayi.jpg', 6, 500000, 'Unit', 20, '<p>Warna Biru</p>', 1, NULL, '2021-02-23 08:14:49', '2021-02-23 08:27:25'),
	(17, 'Polo Shirt For Kid', 'polo-shirt-for-kid', 'Jhonson', 'Baju', 'assets/product/mainan bayi beli atau sewa.JPG', 'mainan bayi beli atau sewa.JPG', 8, 250000, 'pcs', 50, '<p>Baju</p>', 1, NULL, '2021-02-23 08:17:23', '2021-02-23 09:06:30');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table ayen.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `user_order_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ekspedisi_kirim` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_kirim` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_total` int(11) DEFAULT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.transactions: ~14 rows (approximately)
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` (`id`, `id_user`, `user_order_code`, `uuid`, `nama`, `email`, `nomor_hp`, `ekspedisi_kirim`, `alamat_kirim`, `transaction_total`, `transaction_status`, `order_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 2, '', 'MD001', 'Muhammad Rizky Syahputra', 'rizkyputra531.rp@gmail.com', '085793780806', 'JNT', 'Jalan Ahlak Mulia, Komplek Griya Mulia, Blok B No. 3, Guntung Manggis, Landasan Ulin, Kota Banjarbaru', 160000, 'SUKSES', 3, NULL, '2020-11-24 15:28:03', '2021-02-22 12:57:41'),
	(2, 2, '', 'MD001', 'Merrinda Ratih Manjari', 'rizkyputra531.rp@gmail.com', '085793780806', 'JNT', 'Jalan Ahlak Mulia, Komplek Griya Mulia, Blok B No. 3, Guntung Manggis, Landasan Ulin, Kota Banjarbaru', 200000, 'SUKSES', 3, NULL, '2021-01-09 15:28:03', '2021-02-22 12:57:39'),
	(114, 42, 'ORDER - 210823730', 'ORDER - 210823730', 'erwinra', 'a@a.com', '08122211221', 'JNT', 'Bekasi BARAT', 650000, 'PENDING', 2, NULL, '2021-02-23 15:54:48', '2021-02-23 15:55:31'),
	(115, 46, 'ORDER - 210923153', 'ORDER - 210923153', 'Muhammad Rizky Syahputra', 'rizkyputra531.rp@gmail.com', '085793780806', 'JNT', 'Jl Ahlak Mulia', 250000, 'SUKSES', 3, NULL, '2021-02-23 16:03:20', '2021-02-23 09:06:39');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;

-- Dumping structure for table ayen.transaction_details
CREATE TABLE IF NOT EXISTS `transaction_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.transaction_details: ~2 rows (approximately)
/*!40000 ALTER TABLE `transaction_details` DISABLE KEYS */;
INSERT INTO `transaction_details` (`id`, `transactions_id`, `products_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, NULL, NULL, NULL),
	(2, 1, 2, NULL, NULL, NULL);
/*!40000 ALTER TABLE `transaction_details` ENABLE KEYS */;

-- Dumping structure for table ayen.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `user_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ayen.user: ~7 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `nama`, `email`, `jenis_kelamin`, `nomor_hp`, `alamat`, `username`, `password`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(2, 'Alfia Sholawati', '', 'Wanita', '0829381293213', 'Kelurahan Bangkal, Kecamatan Cempaka, Kota Banjarbaru', 'alfia001', '$2y$10$ksmJyexiNslniqvUOafzZ.xWOCsazknpv9tATAiBPHgSi17kfjA7i', NULL, NULL, NULL),
	(41, 'qwe', 'asd@asd.com', NULL, '123123123123', NULL, NULL, '$2y$10$q1VLgwm1LfrBR8uBvE9sFO8wCZK6mW8NRf3WE71ZUxB7vOu9Xi2Ze', NULL, NULL, NULL),
	(42, 'erwinra', 'a@a.com', NULL, '2312312321', NULL, NULL, '$2y$10$aswPXDlP7CDZAaG5BZ00YO.TpqQy937hn.mJ77ZoG/JmA/ZJXOTz.', NULL, NULL, NULL),
	(43, 'asd', 'ad@asd.com', NULL, '21312312313', NULL, NULL, '$2y$10$2813UAJIpdDlPsi3OIVV4O3BiFsg.3vu3503h1G.IE71TQXzzV8ta', NULL, NULL, NULL),
	(44, 'erwin', 'erwin@a0ad.comwwa', NULL, '2103012301230123', NULL, NULL, '$2y$10$rN6xwvEXRkfDoSf8sQG78OVfjlz/BFI.qwtuBWkgMB58p/Wc9nrKe', NULL, NULL, NULL),
	(45, 'Ridwan', 'ridwan12@gmail.com', 'Laki Laki', '0001992192912391239', 'Jakata Barat', NULL, '$2y$10$p4Vt7OSH3LPt8YcMFfSfq.G/BUV.YRSZgMQMFSfQiL3YN2pIjahK2', NULL, NULL, NULL),
	(46, 'Muhammad Rizky Syahputra', 'rizkyputra531.rp@gmail.com', NULL, '085793780806', NULL, NULL, '$2y$10$99xMNf/s867mTLFDyswK/Og5tDrgaNamxOEY1GS0zQIw04rZgVkJW', NULL, NULL, NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table ayen.user_order
CREATE TABLE IF NOT EXISTS `user_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `order_code` varchar(50) DEFAULT NULL,
  `products_id` bigint(20) DEFAULT NULL,
  `products_name` varchar(255) DEFAULT NULL,
  `products_image` varchar(255) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_total` bigint(20) DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `order_code` (`order_code`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table ayen.user_order: ~14 rows (approximately)
/*!40000 ALTER TABLE `user_order` DISABLE KEYS */;
INSERT INTO `user_order` (`id`, `user_id`, `order_code`, `products_id`, `products_name`, `products_image`, `kategori`, `user_name`, `qty`, `stok`, `satuan`, `price`, `price_total`, `order_status`, `created_at`) VALUES
	(103, 42, 'ORDER - 210623432', 12, 'Grobokan Bayi', 'assets/product/mainan bayi beli atau sewa.JPG', 'Kursi Roda', 'erwinra', 3, 10, 'unit', 135000, 405000, 1, '2021-02-23 13:02:19'),
	(104, 42, 'ORDER - 210623432', 15, 'tambah lagi', 'assets/product/ocean-toy-9094-6086452-1.jpg', 'Peralatan Makan', 'erwinra', 1, 1, 'pcs', 900, 900, 1, '2021-02-23 13:02:21'),
	(105, 42, 'ORDER - 210623119', 12, 'Grobokan Bayi', 'assets/product/mainan bayi beli atau sewa.JPG', 'Kursi Roda', 'erwinra', 1, 10, 'unit', 135000, 135000, 1, '2021-02-23 13:13:06'),
	(109, 42, 'ORDER - 210623854', 12, 'Grobokan Bayi', 'assets/product/mainan bayi beli atau sewa.JPG', 'Kursi Roda', 'erwinra', 1, 10, 'unit', 135000, 135000, 1, '2021-02-23 13:27:37'),
	(110, 42, 'ORDER - 210623854', 15, 'tambah lagi', 'assets/product/ocean-toy-9094-6086452-1.jpg', 'Peralatan Makan', 'erwinra', 2, 2, 'pcs', 900, 1800, 1, '2021-02-23 13:30:35'),
	(111, 46, 'ORDER - 210823387', 15, 'tambah lagi', 'assets/product/bayi.jpg', 'Peralatan Makan', 'Muhammad Rizky Syahputra', 1, 2, 'pcs', 700000, 700000, 1, '2021-02-23 15:11:22'),
	(112, 46, 'ORDER - 210823803', 15, 'tambah lagi', 'assets/product/bayi.jpg', 'Peralatan Makan', 'Muhammad Rizky Syahputra', 1, 2, 'pcs', 700000, 700000, 1, '2021-02-23 15:12:16'),
	(114, 46, 'ORDER - 210823999', 15, 'tambah lagi', 'assets/product/bayi.jpg', 'Peralatan Makan', 'Muhammad Rizky Syahputra', 1, 2, 'pcs', 700000, 700000, 1, '2021-02-23 15:12:52'),
	(115, 46, 'ORDER - 210823120', 16, 'Bak Mandi Karet', 'assets/product/bayi.jpg', 'Peralatan Mandi', 'Muhammad Rizky Syahputra', 1, 10, 'Unit', 400000, 400000, 1, '2021-02-23 15:15:07'),
	(117, 46, 'ORDER - 210823942', 17, 'Polo Shirt For Kid', 'assets/product/mainan bayi beli atau sewa.JPG', 'Baju', 'Muhammad Rizky Syahputra', 1, 30, 'pcs', 250000, 250000, 1, '2021-02-23 15:17:31'),
	(119, 46, 'ORDER - 210223668', 16, 'Bak Mandi Karet', 'assets/product/bayi.jpg', 'Peralatan Mandi', 'Muhammad Rizky Syahputra', 2, 10, 'Unit', 400000, 800000, 1, '2021-02-23 15:18:08'),
	(120, 46, 'ORDER - 210223668', 17, 'Polo Shirt For Kid', 'assets/product/mainan bayi beli atau sewa.JPG', 'Baju', 'Muhammad Rizky Syahputra', 2, 30, 'pcs', 250000, 500000, 1, '2021-02-23 15:18:22'),
	(121, 46, 'ORDER - 210823974', 16, 'Bak Mandi Karet', 'assets/product/bayi.jpg', 'Peralatan Mandi', 'Muhammad Rizky Syahputra', 1, 10, 'Unit', 400000, 400000, 1, '2021-02-23 15:23:34'),
	(128, 46, 'ORDER - 210823390', 17, 'Polo Shirt For Kid', 'assets/product/mainan bayi beli atau sewa.JPG', 'Baju', 'Muhammad Rizky Syahputra', 1, 10, 'pcs', 250000, 250000, 1, '2021-02-23 15:29:24'),
	(129, 46, 'ORDER - 210823390', 16, 'Bak Mandi Karet', 'assets/product/bayi.jpg', 'Peralatan Mandi', 'Muhammad Rizky Syahputra', 1, 10, 'Unit', 400000, 400000, 1, '2021-02-23 15:29:27'),
	(133, 42, 'ORDER - 210823730', 16, 'Bak Mandi Karet', 'assets/product/bayi.jpg', 'Peralatan Mandi', 'erwinra', 1, 6, 'Unit', 400000, 400000, 1, '2021-02-23 15:55:01'),
	(134, 42, 'ORDER - 210823730', 17, 'Polo Shirt For Kid', 'assets/product/mainan bayi beli atau sewa.JPG', 'Baju', 'erwinra', 1, 10, 'pcs', 250000, 250000, 1, '2021-02-23 15:55:02'),
	(136, 46, 'ORDER - 210923239', 17, 'Polo Shirt For Kid', 'assets/product/mainan bayi beli atau sewa.JPG', 'Baju', 'Muhammad Rizky Syahputra', 1, 10, 'pcs', 125000, 125000, 1, '2021-02-23 16:03:56'),
	(137, 46, 'ORDER - 210923799', 17, 'Polo Shirt For Kid', 'assets/product/mainan bayi beli atau sewa.JPG', 'Baju', 'Muhammad Rizky Syahputra', 1, 10, 'pcs', 125000, 125000, 1, '2021-02-23 16:04:31'),
	(138, 46, 'ORDER - 210923153', 17, 'Polo Shirt For Kid', 'assets/product/mainan bayi beli atau sewa.JPG', 'Baju', 'Muhammad Rizky Syahputra', 2, 10, 'pcs', 125000, 250000, 1, '2021-02-23 16:04:42');
/*!40000 ALTER TABLE `user_order` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
