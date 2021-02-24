-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 24, 2021 at 09:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayen`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `jenis_kelamin`, `nomor_hp`, `alamat`, `username`, `password`, `deleted_at`, `created_at`, `updated_at`) VALUES
(13, 'Muhammad Rizky Syahputra', 'Pria', '085793780806', 'Jalan Ahlak Mulia Komplek Griya Mulia Blok B No. 3, Guntung Manggis, Landasan Ulin', 'rizkyputra531', '$2y$10$24ZrSI26GvEgXbDHvIp0HuEDLvDhlB3Y3eGsOhuatPIFY069WNxt.', NULL, NULL, NULL),
(16, 'admin', 'Pria', '001', '001', 'admin', '$2y$10$bHC/NlRq2N.oET7joDu20.UCFvRqHxjRpSgOZr5ysvcFNJG3PAIGS', NULL, NULL, NULL),
(17, 'yulius', 'Pria', '081350045530', 'kolonel sugiono', 'yulius', '$2y$10$VpWGn/Rwb64jM/poUJ9HBu6QZB9DyVMqx8KPq2qlRcB9qlmCPQ4BG', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kostumer`
--

CREATE TABLE `kostumer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

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
(21, '2016_06_01_000005_create_oauth_personal_access_clients_table', 11),
(22, '2021_02_24_050049_create_user_table', 12),
(23, '2021_02_24_060248_create_productcategory_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('18ac96575a5bebbe224073e6c1e75f242aa0ab0e5382497902ab0b26e13d28c27dccb48a613fc505', 2, 1, 'alfiasholawati879@gmail.com', '[]', 0, '2021-02-24 00:04:15', '2021-02-24 00:04:15', '2022-02-24 08:04:15'),
('211bf34069653469ac995a1ddaa70e084643ad64c9ca25098f37772480578b464b5db07ba23c1859', 2, 1, 'alfiasholawati879@gmail.com', '[]', 0, '2021-02-24 00:07:13', '2021-02-24 00:07:13', '2022-02-24 08:07:13'),
('8439f21d6b247ba87f58dffff7610205db7730cd857ca6e1cdc0b91997db5937d22393f3187fc9b2', 2, 1, 'alfiasholawati879@gmail.com', '[]', 0, '2021-02-24 00:06:23', '2021-02-24 00:06:23', '2022-02-24 08:06:23'),
('deccc6b6016f4cca94a95acfeafe579509f3ea38c67aef49b0bc22ab804e8806ac33a3fa2810ec2c', 2, 1, 'alfiasholawati879@gmail.com', '[]', 0, '2021-02-24 00:08:21', '2021-02-24 00:08:21', '2022-02-24 08:08:21'),
('ff1fda461fabc3d611baf0e00571e59fd6b90903476bfa53ab6594c63bd31a7bfc50011bc003da37', 1, 1, 'rizkyputra531.rp@gmail.com', '[]', 0, '2021-02-23 22:44:39', '2021-02-23 22:44:39', '2022-02-24 06:44:39'),
('ff995524994e9d1f6f5ac09e7e5979d45b37e12cfe68a9e2e5cf44863f29585cf4d382aa4122d3d3', 1, 1, 'rizkyputra531.rp@gmail.com', '[]', 0, '2021-02-23 22:21:26', '2021-02-23 22:21:26', '2022-02-24 06:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'JXgs1exeSpikqgyTRzyLC6zgqVL394lru41QbgQU', NULL, 'http://localhost', 1, 0, 0, '2021-02-23 21:01:43', '2021-02-23 21:01:43'),
(2, NULL, 'Laravel Password Grant Client', 'mUWJb2DQZYykOVgasRflz6M4mVZNoQDkCdOjMBhD', 'users', 'http://localhost', 0, 1, 0, '2021-02-23 21:01:43', '2021-02-23 21:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-02-23 21:01:43', '2021-02-23 21:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

CREATE TABLE `productcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcategory`
--

INSERT INTO `productcategory` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Alat Mandi', '2021-02-23 22:13:27', '2021-02-23 22:13:27'),
(2, 'Alat Makan', '2021-02-23 22:13:41', '2021-02-23 22:13:41'),
(4, 'Celana', '2021-02-23 22:17:14', '2021-02-23 22:17:14'),
(5, 'Mainan', '2021-02-23 22:17:19', '2021-02-23 22:17:19'),
(6, 'Baju', '2021-02-23 22:17:33', '2021-02-23 22:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama`, `slug`, `merk`, `kategori`, `foto`, `image_name`, `stok`, `harga`, `satuan`, `diskon`, `deskripsi`, `product_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Baju Anak Perempuan', 'baju-anak-perempuan', 'Omby', 'Baju', 'assets/product/baju.jpg', 'baju.jpg', 8, 270000, 'pcs', 15, '<p>Setelan Baju Anak Perempuan</p><p>Usia 2-4 Tahun, All Size, Warna Pink</p>', 1, NULL, '2021-02-23 22:19:51', '2021-02-24 00:02:04'),
(2, 'Bath Tube Portable', 'bath-tube-portable', 'Omby', 'Alat Mandi', 'assets/product/bayi.jpg', 'bayi.jpg', 20, 200000, 'unit', 0, '<p>Untuk balita usia 2-4 Tahun,&nbsp;</p><p>Warna tersedia : merah, kuning, biru, hijau</p>', 1, NULL, '2021-02-23 22:24:11', '2021-02-23 22:24:11'),
(3, 'Pigeon Feeding Set', 'pigeon-feeding-set', 'Pigeon', 'Alat Makan', 'assets/product/pigeon.jpg', 'pigeon.jpg', 50, 90000, 'unit', 0, '<p>Bahan Rubber</p>', 1, NULL, '2021-02-23 22:28:01', '2021-02-23 22:28:01'),
(4, 'Sportive Play Ball', 'sportive-play-ball', 'Yuzitsu', 'Mainan', 'assets/product/ball.jpg', 'ball.jpg', 20, 150000, 'unit', 10, '<p>Untuk anak usia 2 tahun keatas</p>', 1, NULL, '2021-02-23 22:29:51', '2021-02-23 22:29:51'),
(5, 'Celana Jogger', 'celana-jogger', 'Kid Denim', 'Celana', 'assets/product/celana.jpeg', 'celana.jpeg', 4, 65000, 'unit', 0, '<p>All Size</p>', 1, NULL, '2021-02-23 22:33:36', '2021-02-24 00:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `id_user`, `user_order_code`, `uuid`, `nama`, `email`, `nomor_hp`, `ekspedisi_kirim`, `alamat_kirim`, `transaction_total`, `transaction_status`, `order_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ORDER - 210624357', 'ORDER - 210624357', 'M Rizky Syahputra', 'rizkyputra531.rp@gmail.com', '085793780806', 'JNE', 'Jl Ahlak Mulia, Komplek Griya Mulia', 459000, 'SUKSES', 3, NULL, '2021-02-24 06:21:29', '2021-02-24 00:01:53'),
(2, 2, 'ORDER - 210824234', NULL, 'Alfia Sholawati', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-02-24 08:04:19', '2021-02-24 08:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `jenis_kelamin`, `nomor_hp`, `alamat`, `email`, `password`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'M Rizky Syahputra', 'Laki-Laki', '085793780806', 'Jl. Ahlak Mulia Komplek Griya Mulia Blok B No 3', 'rizkyputra531.rp@gmail.com', '$2y$10$8b/ICVRWhEbH2W.X0YgIz.PTOWGFc8LVVGstQxy1zt9PRE26llfDG', NULL, NULL, NULL),
(2, 'Alfia Sholawati', 'Wanita', '0857937808069', 'asdd', 'alfiasholawati879@gmail.com', '$2y$10$GiIld9HkEHPOabzE.zcE/uuZ66vlO8.ugakhkL4fCI..fygh25jRu', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

CREATE TABLE `user_order` (
  `id` bigint(20) NOT NULL,
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
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_order`
--

INSERT INTO `user_order` (`id`, `user_id`, `order_code`, `products_id`, `products_name`, `products_image`, `kategori`, `user_name`, `qty`, `stok`, `satuan`, `price`, `price_total`, `order_status`, `created_at`) VALUES
(3, 1, 'ORDER - 210624468', 2, 'Bath Tube Portable', 'assets/product/bayi.jpg', 'Alat Mandi', 'M Rizky Syahputra', 1, 20, 'unit', 200000, 200000, 1, '2021-02-24 06:24:28'),
(7, 1, 'ORDER - 210624660', 4, 'Sportive Play Ball', 'assets/product/ball.jpg', 'Mainan', 'M Rizky Syahputra', 1, 20, 'unit', 135000, 135000, 1, '2021-02-24 06:30:58'),
(11, 1, 'ORDER - 210624508', 5, 'Celana Jogger', 'assets/product/celana.jpeg', 'Celana', 'M Rizky Syahputra', 1, 4, 'unit', 65000, 65000, 1, '2021-02-24 06:33:54'),
(14, 1, 'ORDER - 210624335', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 06:49:12'),
(15, 1, 'ORDER - 210624180', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 06:49:24'),
(18, 1, 'ORDER - 210624618', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 06:58:32'),
(20, 1, 'ORDER - 210624347', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 06:58:52'),
(24, 1, 'ORDER - 210724990', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 07:16:19'),
(27, 1, 'ORDER - 210724978', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 07:16:41'),
(28, 1, 'ORDER - 210724149', 2, 'Bath Tube Portable', 'assets/product/bayi.jpg', 'Alat Mandi', 'M Rizky Syahputra', 1, 20, 'unit', 200000, 200000, 1, '2021-02-24 07:16:48'),
(31, 1, 'ORDER - 210724362', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 07:18:33'),
(32, 1, 'ORDER - 210724548', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 07:18:45'),
(33, 1, 'ORDER - 210724744', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 07:22:24'),
(36, 1, 'ORDER - 210724957', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 07:22:57'),
(37, 1, 'ORDER - 210724524', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 07:23:05'),
(38, 1, 'ORDER - 210724376', 5, 'Celana Jogger', 'assets/product/celana.jpeg', 'Celana', 'M Rizky Syahputra', 1, 4, 'unit', 65000, 65000, 1, '2021-02-24 07:23:19'),
(40, 1, 'ORDER - 210724125', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 07:24:58'),
(44, 1, 'ORDER - 210724887', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 07:28:30'),
(46, 1, 'ORDER - 210724994', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 07:35:24'),
(50, 1, 'ORDER - 210724627', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 1, 10, 'pcs', 229500, 229500, 1, '2021-02-24 07:57:55'),
(51, 1, 'ORDER - 210624357', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'M Rizky Syahputra', 2, 10, 'pcs', 229500, 459000, 1, '2021-02-24 07:58:00'),
(53, 2, 'ORDER - 210824983', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'Alfia Sholawati', 1, 8, 'pcs', 229500, 229500, 1, '2021-02-24 08:04:30'),
(55, 2, 'ORDER - 210824687', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'Alfia Sholawati', 1, 8, 'pcs', 229500, 229500, 1, '2021-02-24 08:04:41'),
(56, 2, 'ORDER - 210824644', 2, 'Bath Tube Portable', 'assets/product/bayi.jpg', 'Alat Mandi', 'Alfia Sholawati', 1, 20, 'unit', 200000, 200000, 1, '2021-02-24 08:04:47'),
(58, 2, 'ORDER - 210824920', 1, 'Baju Anak Perempuan', 'assets/product/baju.jpg', 'Baju', 'Alfia Sholawati', 1, 8, 'pcs', 229500, 229500, 1, '2021-02-24 08:06:41'),
(59, 2, 'ORDER - 210824817', 2, 'Bath Tube Portable', 'assets/product/bayi.jpg', 'Alat Mandi', 'Alfia Sholawati', 1, 20, 'unit', 200000, 200000, 1, '2021-02-24 08:07:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_username_unique` (`username`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kostumer`
--
ALTER TABLE `kostumer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `productcategory`
--
ALTER TABLE `productcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_unique` (`email`);

--
-- Indexes for table `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_code` (`order_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kostumer`
--
ALTER TABLE `kostumer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productcategory`
--
ALTER TABLE `productcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_order`
--
ALTER TABLE `user_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
