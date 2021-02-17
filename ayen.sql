-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 17, 2021 at 02:27 PM
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
(16, '2021_01_08_073912_create_products_table', 10);

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
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcategory`
--

INSERT INTO `productcategory` (`id`, `nama`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, 'Mainan Bayi', NULL, '2020-12-08 05:58:23', '2020-12-09 20:22:32'),
(10, 'Baju', NULL, '2020-12-08 05:59:10', '2020-12-09 20:22:33'),
(11, 'Celana', NULL, '2020-12-08 05:59:18', '2020-12-09 20:22:34'),
(12, 'Kursi Roda', NULL, '2020-12-08 05:59:25', '2020-12-09 20:22:35'),
(13, 'Selimut', NULL, '2020-12-08 06:02:34', '2020-12-09 20:22:35'),
(14, 'Bed Cover', NULL, '2020-12-08 06:02:41', '2020-12-09 20:22:38'),
(15, 'Bantal', NULL, '2020-12-08 06:03:24', '2020-12-09 20:22:39'),
(16, 'Peralatan Mandi', NULL, '2020-12-08 06:03:38', '2020-12-09 20:22:40'),
(17, 'Topi', NULL, '2020-12-08 06:03:53', '2020-12-09 20:22:41'),
(18, 'Sarung Tangan', NULL, '2020-12-08 06:03:58', '2020-12-08 06:06:35'),
(19, 'Kaos Kaki', NULL, '2020-12-08 06:04:03', '2020-12-08 06:06:44'),
(20, 'Sepatu', NULL, '2020-12-08 06:04:06', '2020-12-09 20:22:42'),
(21, 'Tempat Tidur', NULL, '2020-12-09 18:20:23', '2020-12-09 20:22:43'),
(22, 'Peralatan Makan', NULL, '2020-12-10 17:50:22', '2020-12-10 17:50:22'),
(23, 'Keranjang Bayi', NULL, '2020-12-17 05:41:11', '2020-12-17 05:41:11');

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
  `stok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskon` int(11) NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama`, `slug`, `merk`, `kategori`, `foto`, `stok`, `harga`, `satuan`, `diskon`, `deskripsi`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Polo Shirt For Kid', 'polo-shirt-for-kid', 'Polo Shirt', 'Mainan Bayi', 'assets/product/HG98Mq6PHVD99cpKm0VtkHh0vSCemrJmjzZ0OzFm.jpg', '30', 145000, 'pcs', 10, '<p>Warna Tersedia : Merah, Kuning, Hijau</p><p>Ukuran : All Size</p>', NULL, '2021-01-07 23:39:28', '2021-01-08 01:44:14'),
(2, 'Baby Day Pack', 'baby-day-pack', 'Jhonson', 'Mainan Bayi', 'assets/product/MfnQtqMhSmXrDhN7myfckJFUpcqe6ZZl2Gyi6ORS.jpg', '10', 95000, 'pack', 20, '<p>Include Piring, Cangkir, Sendok</p>', NULL, '2021-01-08 01:17:27', '2021-01-08 01:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ekspedisi_kirim` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_kirim` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `id_user`, `uuid`, `nama`, `email`, `nomor_hp`, `ekspedisi_kirim`, `alamat_kirim`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'MD001', 'Muhammad Rizky Syahputra', 'rizkyputra531.rp@gmail.com', '085793780806', 'JNT', 'Jalan Ahlak Mulia, Komplek Griya Mulia, Blok B No. 3, Guntung Manggis, Landasan Ulin, Kota Banjarbaru', 160000, 'SUKSES', NULL, '2020-11-24 08:28:03', '2021-01-12 02:32:02'),
(2, 2, 'MD001', 'Merrinda Ratih Manjari', 'rizkyputra531.rp@gmail.com', '085793780806', 'JNT', 'Jalan Ahlak Mulia, Komplek Griya Mulia, Blok B No. 3, Guntung Manggis, Landasan Ulin, Kota Banjarbaru', 200000, 'SUKSES', NULL, '2021-01-09 08:28:03', '2021-01-12 02:31:36');

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

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `products_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL),
(2, 1, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
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
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `jenis_kelamin`, `nomor_hp`, `alamat`, `username`, `password`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Alfia Sholawati', 'Wanita', '0829381293213', 'Kelurahan Bangkal, Kecamatan Cempaka, Kota Banjarbaru', 'alfia001', '$2y$10$ksmJyexiNslniqvUOafzZ.xWOCsazknpv9tATAiBPHgSi17kfjA7i', NULL, NULL, NULL);

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
  ADD UNIQUE KEY `user_username_unique` (`username`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `productcategory`
--
ALTER TABLE `productcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
