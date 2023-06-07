-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 09:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `molar_thriftshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `description`, `image`, `link`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Testing', 'TEsting Banner', '20220921132611.jpg', 'shop/product/category/1', 'System', 'admin molar', '2023-03-21 21:23:55', '2022-09-16 03:13:26', '2023-03-21 21:23:55'),
(2, 'Testing', 'Testing', '20220921132424.jpg', 'shop/product/category/1', 'System', 'admin molar', '2023-03-21 21:24:47', '2022-09-21 05:24:24', '2023-03-21 21:24:47'),
(3, 'Testingg', 'Testing', '20220921132751.jpg', 'shop/product/category/1', 'System', 'admin molar', '2023-03-21 21:08:23', '2022-09-21 05:27:51', '2023-03-21 21:08:23'),
(4, '.', '.', '20230322053038.jpeg', 'shop/product/category/1', 'System', 'admin molar', NULL, '2023-03-21 21:30:38', '2023-04-16 02:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `biaya_pengiriman`
--

CREATE TABLE `biaya_pengiriman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` double NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biaya_pengiriman`
--

INSERT INTO `biaya_pengiriman` (`id`, `nama`, `deskripsi`, `harga`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Koya', 'D', 10000, '2022-10-02 22:58:01', '2022-10-02 22:45:59', '2022-10-02 22:58:01'),
(2, 'Kec.Tondano Timur', 'Taler,Kiniar,Toulour,Wengkol,Kendis', 10000, NULL, '2022-10-02 22:46:22', '2022-10-02 23:35:08'),
(3, 'Kec.Tondano Barat', 'Tuutu,Roong,Rerewokan,Watulambot,Rinegetan', 10000, NULL, '2022-10-02 23:01:43', '2022-10-02 23:44:03'),
(4, 'Kec.Tondano Selatan', 'Tataaran Satu,Tataaran Dua,Koya,Urongo,Tonsaru', 10000, NULL, '2022-10-02 23:48:18', '2022-10-02 23:48:18'),
(5, 'Kec.Tondano Utara', 'Wulauan,Kembuan,Kampung Jawa,Sasaran,Marawas', 10000, NULL, '2022-10-02 23:51:58', '2022-10-02 23:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Laki-Laki', 'Kategori Produk untuk Laki-Laki', 'admin molar', NULL, '2022-09-20 07:07:52', '2022-09-16 03:15:07', '2022-09-20 07:07:52'),
(2, 'laki-laki', 'celana panjang', 'admin molar', NULL, '2022-09-20 07:07:57', '2022-09-16 03:38:45', '2022-09-20 07:07:57'),
(3, 'Laki-Laki', 'Kaos', 'admin molar', NULL, '2022-09-20 21:08:35', '2022-09-20 06:59:02', '2022-09-20 21:08:35'),
(4, 'Perempuan', 'A', 'admin molar', NULL, '2022-09-20 07:11:34', '2022-09-20 07:10:07', '2022-09-20 07:11:34'),
(5, 'Perempuan', 'Kaos', 'admin molar', NULL, '2022-09-20 21:08:30', '2022-09-20 07:11:57', '2022-09-20 21:08:30'),
(6, 'Kaos Laki-Laki', 'A', 'admin molar', NULL, '2022-09-20 21:00:09', '2022-09-20 07:31:05', '2022-09-20 21:00:09'),
(7, 'celana', 'ajdjh', 'admin molar', NULL, '2022-09-20 21:07:31', '2022-09-20 21:05:34', '2022-09-20 21:07:31'),
(8, 'celana', 'sja', 'admin molar', NULL, '2022-09-20 21:07:23', '2022-09-20 21:06:03', '2022-09-20 21:07:23'),
(9, 'Kaos Pria', 'da', 'admin molar', NULL, '2022-09-21 03:39:53', '2022-09-20 21:07:57', '2022-09-21 03:39:53'),
(10, 'Kaos Wanita', 'jhh', 'admin molar', NULL, '2022-09-21 03:45:53', '2022-09-20 21:08:23', '2022-09-21 03:45:53'),
(11, 'Celana Wanita', 'celana wanita', 'admin molar', NULL, '2022-09-21 03:39:59', '2022-09-20 21:08:53', '2022-09-21 03:39:59'),
(12, 'Celana Pria', 'sf', 'admin molar', NULL, '2022-09-21 03:40:05', '2022-09-20 21:09:16', '2022-09-21 03:40:05'),
(13, 'Kaos Pria', 'Kaos', 'admin molar', NULL, '2022-09-21 03:46:02', '2022-09-21 03:41:15', '2022-09-21 03:46:02'),
(14, 'Celana Pria', 'Celana', 'admin molar', NULL, '2022-09-21 03:46:07', '2022-09-21 03:41:44', '2022-09-21 03:46:07'),
(15, 'Celana Wanita', 'Celana', 'admin molar', NULL, '2022-09-21 03:46:12', '2022-09-21 03:42:15', '2022-09-21 03:46:12'),
(16, 'Pria', 'A', 'admin molar', NULL, NULL, '2022-09-21 03:44:45', '2022-09-21 03:44:45'),
(17, 'Wanita', 'A', 'admin molar', NULL, NULL, '2022-09-21 03:45:03', '2022-09-21 03:45:03'),
(18, 'Anak-Anak', 'A', 'admin molar', NULL, NULL, '2022-09-21 03:45:42', '2022-09-21 03:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Male',
  `profile_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Not Active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `email`, `name`, `phone_no`, `gender`, `profile_picture`, `dob`, `password`, `status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'user1@gmail.com', 'user Testing', '029939902', '', NULL, '2022-09-16', '$2y$10$lurnpV7D4CHB1MD4b6O8necHBzBBrZYoedPdkhe6s1P291uyQn2dm', 'Active', 'Customer', '-', '2023-03-13 21:27:41', '2022-09-16 03:18:47', '2023-03-13 21:27:41'),
(2, 'clbkerap@gmail.com', 'thania', '081527153609', '', NULL, '1999-12-04', '$2y$10$KPU53Z8VqdWKpaFD33vmo.f/hxVXKD2..tuL3esmdGYddFc7oyP.i', 'Active', 'Customer', 'clbkerap@gmail.com', '2023-04-16 17:45:26', '2022-09-16 03:58:05', '2023-04-16 17:45:26'),
(3, 'cevinmontolalu99@gmail.com', 'Cevin', '0895397498613', 'Male', '20220922080615.JPG', '1999-01-13', '$2y$10$Bq4JegaXvzDjGp1x9fdxjeIrfQ/62W8BV282dhtjl848atbzFBqPe', 'Active', 'Customer', 'cevinmontolalu99@gmail.com', NULL, '2022-09-20 00:33:21', '2022-09-22 00:06:15'),
(4, 'wilmerkamu@gmail.com', 'kams', '085340646607', '', NULL, '2022-10-03', '$2y$10$mwn0JHefkb/8eMRUFw7NceybKeHmC.BVZJ42Sg5/0WWDCSeMmmCqi', 'Active', 'Customer', '-', '2023-03-13 21:27:49', '2022-10-02 22:50:51', '2023-03-13 21:27:49'),
(5, 'cevinmontolalu123@gmail.com', 'Cevin Montolalu', '0895397498613', '', NULL, '2023-03-15', '$2y$10$AEcQGblhC67/p4wbooDtsu7gnwZN9hnI7QoOPpXH28g16ban2r/HW', 'Active', 'Customer', '-', '2023-03-14 21:00:31', '2023-03-14 20:58:38', '2023-03-14 21:00:31'),
(6, 'cevinmontolalu123@gmial.com', 'Cevin', '0895397498613', '', NULL, '2023-03-20', '$2y$10$ZaOGmW.I.J9Vzru7rrzZheeKz0qA1v9jmWzaP0wIbXNviIvY7p.MO', 'Active', 'Customer', '-', '2023-03-19 23:23:48', '2023-03-19 23:23:27', '2023-03-19 23:23:48'),
(7, 'cevinmontolalu3@gmail.com', 'Cevin Montolalu', '0895397498613', '', NULL, '2023-04-17', '$2y$10$rKUfqpFN4dZ36BMqCY151OU7l7xOFkJDK7meEPUEySb5rX5fVd34C', 'Active', 'Customer', '-', '2023-04-16 18:28:58', '2023-04-16 18:24:23', '2023-04-16 18:28:58'),
(8, 'pascoalralphrlp@gmail.com', 'Ralph Pascoal', '081527153609', '', NULL, '2023-04-17', '$2y$10$eo15g829/kZxV0nWRKwn0uGQirkUgPsYH9vJOP7dGvZWfR0iFwsN.', 'Active', 'Customer', '-', NULL, '2023-04-16 18:33:43', '2023-04-16 18:33:43'),
(9, 'cevinmontolalu1@gmail.com', 'Cevin', '0895397498613', '', NULL, '2023-04-17', '$2y$10$4LpG.nNc7ujazvC60rTwf.929gpOEcrKbFyjmY2Y1woIZFpoAEV86', 'Active', 'Customer', '-', NULL, '2023-04-16 18:39:33', '2023-04-16 18:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customerId` int(11) NOT NULL,
  `bpId` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` enum('True','False') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'False',
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`id`, `customerId`, `bpId`, `address`, `default`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Jl. Tondano Raya', 'True', 'user Testing', 'user Testing', NULL, '2022-09-16 03:30:45', '2022-09-16 03:30:45'),
(2, 2, 0, 'Tulap', 'True', 'thania', 'thania', '2022-10-02 23:56:15', '2022-09-16 04:03:36', '2022-10-02 23:56:15'),
(3, 3, 4, 'Koya', 'True', 'Cevin', 'Cevin', NULL, '2022-09-20 00:36:18', '2022-10-02 23:53:28'),
(4, 4, 2, 'Kiniar', 'True', 'kams', 'kams', NULL, '2022-10-02 22:52:36', '2022-10-02 23:02:18'),
(5, 3, 4, 'Tataaran', 'False', 'Cevin', 'Cevin', NULL, '2022-10-02 23:53:57', '2022-10-02 23:53:57'),
(6, 2, 5, 'Wulauan', 'True', 'thania', 'thania', '2023-03-12 22:25:35', '2022-10-02 23:56:52', '2023-03-12 22:25:35'),
(7, 2, 5, 'Kembuan', 'False', 'thania', 'thania', '2023-03-12 22:25:38', '2022-10-02 23:57:15', '2023-03-12 22:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaction`
--

CREATE TABLE `detail_transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactionId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variantId` int(11) NOT NULL,
  `variantName` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `quantity` double NOT NULL DEFAULT 1,
  `subtotal` double NOT NULL DEFAULT 0,
  `diskon` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_transaction`
--

INSERT INTO `detail_transaction` (`id`, `transactionId`, `productId`, `productName`, `variantId`, `variantName`, `price`, `quantity`, `subtotal`, `diskon`, `total`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Celana Panjang', 1, 'Hitam', 250000, 2, 500000, 0, 500000, 'user Testing', 'user Testing', '2022-09-16 03:30:58', '2022-09-16 03:22:44', '2022-09-16 03:30:58'),
(2, 2, 1, 'Celana Panjang', 1, 'Hitam', 250000, 2, 500000, 0, 500000, 'user Testing', '-', NULL, '2022-09-16 03:30:58', '2022-09-16 03:30:58'),
(3, 1, 2, 'Celana Panjang', 2, 'Celana Panjang', 10000, 1, 10000, 0, 10000, 'user Testing', '-', '2022-09-16 03:47:34', '2022-09-16 03:45:55', '2022-09-16 03:47:34'),
(4, 3, 2, 'Celana Panjang', 2, 'Celana Panjang', 10000, 1, 10000, 0, 10000, 'user Testing', '-', NULL, '2022-09-16 03:47:34', '2022-09-16 03:47:34'),
(5, 4, 2, 'Celana Panjang', 2, 'Celana Panjang', 10000, 1, 10000, 0, 10000, 'thania', 'thania', '2022-09-16 04:04:26', '2022-09-16 04:00:47', '2022-09-16 04:04:26'),
(6, 5, 2, 'Celana Panjang', 2, 'Celana Panjang', 10000, 1, 10000, 0, 10000, 'thania', '-', NULL, '2022-09-16 04:04:26', '2022-09-16 04:04:26'),
(7, 4, 1, 'Celana Panjang', 1, 'Hitam', 250000, 1, 250000, 0, 250000, 'thania', '-', '2022-09-20 00:01:45', '2022-09-20 00:01:21', '2022-09-20 00:01:45'),
(8, 6, 1, 'Celana Panjang', 1, 'Hitam', 250000, 1, 250000, 0, 250000, 'thania', '-', NULL, '2022-09-20 00:01:45', '2022-09-20 00:01:45'),
(9, 7, 1, 'Celana Panjang', 1, 'Hitam', 250000, 1, 250000, 0, 250000, 'Cevin', '-', '2022-09-20 00:39:49', '2022-09-20 00:39:06', '2022-09-20 00:39:49'),
(10, 8, 1, 'Celana Panjang', 1, 'Hitam', 250000, 1, 250000, 0, 250000, 'Cevin', '-', NULL, '2022-09-20 00:39:49', '2022-09-20 00:39:49'),
(11, 7, 3, 'Kaos Laki-Laki', 3, 'Kaos Laki-Laki', 100, 1, 100, 0, 100, 'Cevin', '-', '2022-09-20 21:23:17', '2022-09-20 21:12:52', '2022-09-20 21:23:17'),
(12, 9, 3, 'Kaos Laki-Laki', 3, 'Kaos Laki-Laki', 100, 1, 100, 0, 100, 'Cevin', '-', NULL, '2022-09-20 21:23:17', '2022-09-20 21:23:17'),
(13, 7, 9, 'Kaos Wanita', 8, 'Kaos Wanita', 100000, 1, 100000, 0, 100000, 'Cevin', '-', '2022-09-20 23:19:30', '2022-09-20 23:19:14', '2022-09-20 23:19:30'),
(14, 10, 9, 'Kaos Wanita', 8, 'Kaos Wanita', 100000, 1, 100000, 0, 100000, 'Cevin', '-', NULL, '2022-09-20 23:19:30', '2022-09-20 23:19:30'),
(15, 7, 29, 'Kaos anak', 34, 'Putih', 100000, 1, 100000, 0, 100000, 'Cevin', '-', '2022-09-21 23:53:08', '2022-09-21 23:51:22', '2022-09-21 23:53:08'),
(16, 11, 29, 'Kaos anak', 34, 'Putih', 100000, 1, 100000, 0, 100000, 'Cevin', '-', NULL, '2022-09-21 23:53:08', '2022-09-21 23:53:08'),
(17, 4, 29, 'Kaos anak', 34, 'Putih', 100000, 1, 100000, 0, 100000, 'thania', '-', '2022-09-22 00:00:00', '2022-09-21 23:59:33', '2022-09-22 00:00:00'),
(18, 7, 10, 'Kaos Pria', 9, 'Hitam', 400000, 1, 400000, 0, 400000, 'Cevin', 'Cevin', '2022-10-02 22:36:57', '2022-10-02 22:30:42', '2022-10-02 22:36:57'),
(19, 12, 10, 'Kaos Pria', 9, 'Hitam', 400000, 1, 400000, 0, 400000, 'Cevin', '-', NULL, '2022-10-02 22:36:57', '2022-10-02 22:36:57'),
(20, 7, 13, 'Celana Wanita', 12, 'Abu abu', 250000, 1, 250000, 0, 250000, 'Cevin', '-', '2022-10-02 22:42:34', '2022-10-02 22:42:19', '2022-10-02 22:42:34'),
(21, 13, 13, 'Celana Wanita', 12, 'Abu abu', 250000, 1, 250000, 0, 250000, 'Cevin', '-', NULL, '2022-10-02 22:42:34', '2022-10-02 22:42:34'),
(22, 7, 10, 'Kaos Pria', 9, 'Hitam', 400000, 1, 400000, 0, 400000, 'Cevin', '-', '2022-10-02 22:47:40', '2022-10-02 22:47:28', '2022-10-02 22:47:40'),
(23, 16, 10, 'Kaos Pria', 9, 'Hitam', 400000, 1, 400000, 0, 400000, 'Cevin', '-', NULL, '2022-10-02 22:47:40', '2022-10-02 22:47:40'),
(24, 17, 28, 'Kaos Wanita', 31, 'Merah', 150000, 1, 150000, 0, 150000, 'kams', '-', '2022-10-02 23:03:40', '2022-10-02 22:51:13', '2022-10-02 23:03:40'),
(25, 18, 28, 'Kaos Wanita', 31, 'Merah', 150000, 1, 150000, 0, 150000, 'kams', '-', NULL, '2022-10-02 23:03:40', '2022-10-02 23:03:40'),
(26, 17, 23, 'Kaos anak', 23, 'Biru', 150000, 1, 150000, 0, 150000, 'kams', '-', '2022-10-02 23:13:46', '2022-10-02 23:12:56', '2022-10-02 23:13:46'),
(27, 19, 23, 'Kaos anak', 23, 'Biru', 150000, 1, 150000, 0, 150000, 'kams', '-', NULL, '2022-10-02 23:13:46', '2022-10-02 23:13:46'),
(28, 7, 29, 'Kaos anak', 34, 'Putih', 100000, 1, 100000, 0, 100000, 'Cevin', '-', '2022-10-02 23:21:03', '2022-10-02 23:19:58', '2022-10-02 23:21:03'),
(29, 20, 29, 'Kaos anak', 34, 'Putih', 100000, 1, 100000, 0, 100000, 'Cevin', '-', NULL, '2022-10-02 23:21:03', '2022-10-02 23:21:03'),
(30, 7, 10, 'Kaos Pria', 9, 'Hitam', 400000, 1, 400000, 0, 400000, 'Cevin', 'Cevin', '2022-10-03 02:01:49', '2022-10-03 02:00:06', '2022-10-03 02:01:49'),
(31, 7, 27, 'Kaos Pria', 27, 'Abu Abu', 200000, 1, 200000, 0, 200000, 'Cevin', '-', '2022-10-03 02:01:49', '2022-10-03 02:01:27', '2022-10-03 02:01:49'),
(32, 21, 10, 'Kaos Pria', 9, 'Hitam', 400000, 1, 400000, 0, 400000, 'Cevin', '-', NULL, '2022-10-03 02:01:49', '2022-10-03 02:01:49'),
(33, 21, 27, 'Kaos Pria', 27, 'Abu Abu', 200000, 1, 200000, 0, 200000, 'Cevin', '-', NULL, '2022-10-03 02:01:49', '2022-10-03 02:01:49'),
(34, 7, 11, 'Kaos Wanita', 10, 'Hitam', 100000, 1, 100000, 0, 100000, 'Cevin', '-', '2022-10-03 05:16:48', '2022-10-03 05:03:56', '2022-10-03 05:16:48'),
(35, 22, 11, 'Kaos Wanita', 10, 'Hitam', 100000, 1, 100000, 0, 100000, 'Cevin', '-', NULL, '2022-10-03 05:16:48', '2022-10-03 05:16:48'),
(36, 7, 24, 'Kaos anak', 24, 'Putih', 150000, 1, 150000, 0, 150000, 'Cevin', '-', '2022-11-28 19:55:33', '2022-11-23 03:58:05', '2022-11-28 19:55:33'),
(37, 24, 24, 'Kaos anak', 24, 'Putih', 150000, 1, 150000, 0, 150000, 'Cevin', '-', NULL, '2022-11-28 19:55:33', '2022-11-28 19:55:33'),
(38, 7, 23, 'Kaos anak', 23, 'Biru', 150000, 1, 150000, 0, 150000, 'Cevin', '-', '2022-12-15 01:16:09', '2022-12-15 01:15:27', '2022-12-15 01:16:09'),
(39, 25, 23, 'Kaos anak', 23, 'Biru', 150000, 1, 150000, 0, 150000, 'Cevin', '-', NULL, '2022-12-15 01:16:09', '2022-12-15 01:16:09'),
(40, 7, 29, 'Kaos anak', 34, 'Putih', 100000, 1, 100000, 0, 100000, 'Cevin', '-', '2022-12-15 01:24:27', '2022-12-15 01:24:12', '2022-12-15 01:24:27'),
(41, 26, 29, 'Kaos anak', 34, 'Putih', 100000, 1, 100000, 0, 100000, 'Cevin', '-', NULL, '2022-12-15 01:24:27', '2022-12-15 01:24:27'),
(42, 7, 23, 'Kaos anak', 23, 'Biru', 150000, 1, 150000, 0, 150000, 'Cevin', '-', '2022-12-21 23:03:47', '2022-12-21 23:03:39', '2022-12-21 23:03:47'),
(43, 7, 11, 'Kaos Wanita', 10, 'Hitam', 100000, 1, 100000, 0, 100000, 'Cevin', '-', '2023-01-23 21:01:54', '2022-12-21 23:05:18', '2023-01-23 21:01:54'),
(44, 7, 13, 'Celana Wanita', 12, 'Abu abu', 250000, 1, 250000, 0, 250000, 'Cevin', '-', '2023-01-23 21:01:59', '2022-12-21 23:06:04', '2023-01-23 21:01:59'),
(45, 7, 10, 'Kaos Pria', 9, 'Hitam', 400000, 41, 16400000, 0, 16400000, 'Cevin', 'Cevin', '2023-03-12 22:17:25', '2023-03-02 03:44:40', '2023-03-12 22:17:25'),
(46, 27, 10, 'Kaos Pria', 9, 'Hitam', 400000, 41, 16400000, 0, 16400000, 'Cevin', '-', NULL, '2023-03-12 22:17:25', '2023-03-12 22:17:25'),
(47, 7, 11, 'Kaos Wanita', 10, 'Hitam', 100000, 1, 100000, 0, 100000, 'Cevin', '-', '2023-03-12 22:20:33', '2023-03-12 22:20:14', '2023-03-12 22:20:33'),
(48, 28, 11, 'Kaos Wanita', 10, 'Hitam', 100000, 1, 100000, 0, 100000, 'Cevin', '-', NULL, '2023-03-12 22:20:33', '2023-03-12 22:20:33'),
(49, 7, 43, 'Kaos anak', 46, 'Ungu', 30000, 1, 30000, 0, 30000, 'Cevin', 'Cevin', '2023-04-16 18:41:37', '2023-04-16 18:40:12', '2023-04-16 18:41:37'),
(50, 29, 43, 'Kaos anak', 46, 'Ungu', 30000, 1, 30000, 0, 30000, 'Cevin', '-', NULL, '2023-04-16 18:41:37', '2023-04-16 18:41:37'),
(51, 7, 36, 'Celana Pria', 38, 'Hitam', 100000, 1, 100000, 0, 100000, 'Cevin', '-', '2023-04-16 23:47:51', '2023-04-16 23:46:58', '2023-04-16 23:47:51'),
(52, 7, 43, 'Kaos anak', 46, 'Ungu', 30000, 1, 30000, 0, 30000, 'Cevin', '-', '2023-04-16 23:47:51', '2023-04-16 23:47:17', '2023-04-16 23:47:51'),
(53, 30, 36, 'Celana Pria', 38, 'Hitam', 100000, 1, 100000, 0, 100000, 'Cevin', '-', NULL, '2023-04-16 23:47:51', '2023-04-16 23:47:51'),
(54, 30, 43, 'Kaos anak', 46, 'Ungu', 30000, 1, 30000, 0, 30000, 'Cevin', '-', NULL, '2023-04-16 23:47:51', '2023-04-16 23:47:51'),
(55, 7, 36, 'Celana Pria', 38, 'Hitam', 100000, 1, 100000, 0, 100000, 'Cevin', '-', '2023-04-17 00:37:24', '2023-04-17 00:36:43', '2023-04-17 00:37:24'),
(56, 31, 36, 'Celana Pria', 38, 'Hitam', 100000, 1, 100000, 0, 100000, 'Cevin', '-', NULL, '2023-04-17 00:37:24', '2023-04-17 00:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productId` int(11) NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `productId`, `link`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Celana Panjang', 1, '20220916111556.jpeg', 'System', NULL, NULL, '2022-09-16 03:15:56', '2022-09-16 03:15:56'),
(2, 'Kaos Laki-Laki', 3, '20220920150305.JPG', 'System', NULL, NULL, '2022-09-20 07:03:05', '2022-09-20 07:03:05'),
(3, 'Kaos Perempuan', 4, '20220920151653.JPG', 'System', NULL, NULL, '2022-09-20 07:16:53', '2022-09-20 07:16:53'),
(4, 'D', 5, '20220920153439.JPG', 'System', NULL, NULL, '2022-09-20 07:34:39', '2022-09-20 07:34:39'),
(5, 'baju hitam', 6, '20220921054527.JPG', 'System', NULL, NULL, '2022-09-20 21:45:27', '2022-09-20 21:45:27'),
(6, 'baju hitam', 6, '20220921054619.JPG', 'System', NULL, NULL, '2022-09-20 21:46:19', '2022-09-20 21:46:19'),
(7, 'Kaos Pria', 8, '20220921055042.JPG', 'System', NULL, NULL, '2022-09-20 21:50:42', '2022-09-20 21:50:42'),
(8, 'Kaos Wanita', 9, '20220921071715.JPG', 'System', NULL, NULL, '2022-09-20 23:17:15', '2022-09-20 23:17:15'),
(9, 'Kaos Pria', 10, '20220921115546.JPG', 'System', NULL, NULL, '2022-09-21 03:55:46', '2022-09-21 03:55:46'),
(10, 'Kaos Wanita', 11, '20220921120250.JPG', 'System', NULL, NULL, '2022-09-21 04:02:50', '2022-09-21 04:02:50'),
(11, 'Celana Pria', 12, '20220921120728.JPG', 'System', NULL, NULL, '2022-09-21 04:07:28', '2022-09-21 04:07:28'),
(12, 'Celana Wanita', 13, '20220921120951.JPG', 'System', NULL, NULL, '2022-09-21 04:09:51', '2022-09-21 04:09:51'),
(13, 'Kaos Pria', 14, '20220921121300.JPG', 'System', NULL, NULL, '2022-09-21 04:13:00', '2022-09-21 04:13:00'),
(14, 'Kaos Pria', 15, '20220921121746.JPG', 'System', NULL, NULL, '2022-09-21 04:17:46', '2022-09-21 04:17:46'),
(15, 'Kaos Wanita', 16, '20220921124053.JPG', 'System', NULL, NULL, '2022-09-21 04:40:53', '2022-09-21 04:40:53'),
(16, 'Kaos Wanita', 17, '20220921124339.JPG', 'System', NULL, NULL, '2022-09-21 04:43:39', '2022-09-21 04:43:39'),
(17, 'Celana Pria', 18, '20220921124636.JPG', 'System', NULL, NULL, '2022-09-21 04:46:36', '2022-09-21 04:46:36'),
(18, 'Celana Pria', 19, '20220921125119.JPG', 'System', NULL, NULL, '2022-09-21 04:51:19', '2022-09-21 04:51:19'),
(19, 'Celana Wanita', 20, '20220921130213.JPG', 'System', NULL, NULL, '2022-09-21 05:02:13', '2022-09-21 05:02:13'),
(20, 'Celana Wanita', 22, '20220921130559.JPG', 'System', NULL, NULL, '2022-09-21 05:05:59', '2022-09-21 05:05:59'),
(22, 'Kaos anak laki-laki', 23, '20220922063432.JPG', 'System', NULL, NULL, '2022-09-21 22:34:32', '2022-09-21 22:34:32'),
(23, 'Kaos anak perempuan', 24, '20220922063818.JPG', 'System', NULL, NULL, '2022-09-21 22:38:18', '2022-09-21 22:38:18'),
(24, 'Celana anak laki-laki', 25, '20220922064122.JPG', 'System', NULL, NULL, '2022-09-21 22:41:22', '2022-09-21 22:41:22'),
(25, 'Celana anak', 26, '20220922064646.JPG', 'System', NULL, NULL, '2022-09-21 22:46:46', '2022-09-21 22:46:46'),
(26, 'Kaos Pria', 27, '20220922065039.JPG', 'System', NULL, NULL, '2022-09-21 22:50:39', '2022-09-21 22:50:39'),
(27, 'Kaos Pria', 27, '20220922065053.JPG', 'System', NULL, NULL, '2022-09-21 22:50:53', '2022-09-21 22:50:53'),
(28, 'Kaos Pria', 27, '20220922065108.JPG', 'System', NULL, NULL, '2022-09-21 22:51:08', '2022-09-21 22:51:08'),
(29, 'Kaos Pria', 27, '20220922065123.JPG', 'System', NULL, NULL, '2022-09-21 22:51:23', '2022-09-21 22:51:23'),
(30, 'Kaos Wanita', 28, '20220922070227.JPG', 'System', NULL, NULL, '2022-09-21 23:02:27', '2022-09-21 23:02:27'),
(31, 'Kaos Wanita', 28, '20220922070241.JPG', 'System', NULL, NULL, '2022-09-21 23:02:41', '2022-09-21 23:02:41'),
(32, 'Kaos Wanita', 28, '20220922070254.JPG', 'System', NULL, NULL, '2022-09-21 23:02:54', '2022-09-21 23:02:54'),
(33, 'Kaos anak', 29, '20220922074957.JPG', 'System', NULL, NULL, '2022-09-21 23:49:57', '2022-09-21 23:49:57'),
(34, 'as', 31, '20221129082457.JPG', 'System', NULL, NULL, '2022-11-29 00:24:57', '2022-11-29 00:24:57'),
(35, 'as', 31, '20221129082554.JPG', 'System', NULL, NULL, '2022-11-29 00:25:54', '2022-11-29 00:25:54'),
(36, 'a', 32, '20221129082850.JPG', 'System', NULL, NULL, '2022-11-29 00:28:50', '2022-11-29 00:28:50'),
(37, 'Kaos Pria', 33, '20230313061356.JPG', 'System', NULL, NULL, '2023-03-12 22:13:56', '2023-03-12 22:13:56'),
(39, 'Kaos Pria', 34, '20230314082929.jpeg', 'System', NULL, NULL, '2023-03-14 00:29:29', '2023-03-14 00:29:29'),
(40, 'Kaos Pria', 34, '20230314082941.jpeg', 'System', NULL, NULL, '2023-03-14 00:29:41', '2023-03-14 00:29:41'),
(41, 'Kaos Wanita', 35, '20230314083555.jpeg', 'System', NULL, NULL, '2023-03-14 00:35:55', '2023-03-14 00:35:55'),
(42, 'Kaos Wanita', 35, '20230314083608.jpeg', 'System', NULL, NULL, '2023-03-14 00:36:08', '2023-03-14 00:36:08'),
(43, 'Celana Pria', 36, '20230314084039.jpeg', 'System', NULL, NULL, '2023-03-14 00:40:39', '2023-03-14 00:40:39'),
(44, 'Celana Pria', 36, '20230314084052.jpeg', 'System', NULL, NULL, '2023-03-14 00:40:52', '2023-03-14 00:40:52'),
(45, 'Kaos Pria', 37, '20230314084706.jpeg', 'System', NULL, NULL, '2023-03-14 00:47:06', '2023-03-14 00:47:06'),
(46, 'Kaos Pria', 37, '20230314084727.jpeg', 'System', NULL, NULL, '2023-03-14 00:47:27', '2023-03-14 00:47:27'),
(47, 'Kaos Wanita', 38, '20230314085129.jpeg', 'System', NULL, NULL, '2023-03-14 00:51:29', '2023-03-14 00:51:29'),
(48, 'Kaos Wanita', 38, '20230314085141.jpeg', 'System', NULL, NULL, '2023-03-14 00:51:41', '2023-03-14 00:51:41'),
(49, 'Kaos Wanita', 39, '20230314085742.jpeg', 'System', NULL, NULL, '2023-03-14 00:57:42', '2023-03-14 00:57:42'),
(50, 'Kaos Wanita', 39, '20230314085754.jpeg', 'System', NULL, NULL, '2023-03-14 00:57:54', '2023-03-14 00:57:54'),
(51, 'Celana Pria', 40, '20230314090302.jpeg', 'System', NULL, NULL, '2023-03-14 01:03:02', '2023-03-14 01:03:02'),
(52, 'Celana Pria', 40, '20230314090314.jpeg', 'System', NULL, NULL, '2023-03-14 01:03:14', '2023-03-14 01:03:14'),
(53, 'Kaos Pria', 41, '20230315040158.jpeg', 'System', NULL, NULL, '2023-03-14 20:01:58', '2023-03-14 20:01:58'),
(54, 'Kaos Pria', 41, '20230315040211.jpeg', 'System', NULL, NULL, '2023-03-14 20:02:11', '2023-03-14 20:02:11'),
(55, 'Celana Pria', 42, '20230315162636.jpeg', 'System', NULL, NULL, '2023-03-15 08:26:36', '2023-03-15 08:26:36'),
(56, 'Celana Pria', 42, '20230315162651.jpeg', 'System', NULL, NULL, '2023-03-15 08:26:51', '2023-03-15 08:26:51'),
(57, 'Kaos anak', 43, '20230316041340.jpeg', 'System', NULL, NULL, '2023-03-15 20:13:40', '2023-03-15 20:13:40'),
(58, 'Kaos anak', 43, '20230316041355.jpeg', 'System', NULL, NULL, '2023-03-15 20:13:55', '2023-03-15 20:13:55'),
(59, 'Kaos Anak', 44, '20230316041854.jpeg', 'System', NULL, NULL, '2023-03-15 20:18:54', '2023-03-15 20:18:54'),
(60, 'Kaos Anak', 44, '20230316041909.jpeg', 'System', NULL, NULL, '2023-03-15 20:19:09', '2023-03-15 20:19:09'),
(61, 'Kaos Anak', 45, '20230316042154.jpeg', 'System', NULL, NULL, '2023-03-15 20:21:54', '2023-03-15 20:21:54'),
(62, 'Kaos Anak', 45, '20230316042207.jpeg', 'System', NULL, NULL, '2023-03-15 20:22:07', '2023-03-15 20:22:07'),
(63, 'Anak-Anak', 46, '20230316051649.jpeg', 'System', NULL, NULL, '2023-03-15 21:16:49', '2023-03-15 21:16:49'),
(64, 'Anak-Anak', 46, '20230316051702.jpeg', 'System', NULL, NULL, '2023-03-15 21:17:02', '2023-03-15 21:17:02'),
(65, 'Anak-Anak', 47, '20230316052306.jpeg', 'System', NULL, NULL, '2023-03-15 21:23:06', '2023-03-15 21:23:06'),
(66, 'Anak-Anak', 47, '20230316052321.jpeg', 'System', NULL, NULL, '2023-03-15 21:23:21', '2023-03-15 21:23:21'),
(67, 'Celana Wanita', 48, '20230417015553.jpeg', 'System', NULL, NULL, '2023-04-16 17:55:53', '2023-04-16 17:55:53'),
(68, 'Celana Wanita', 48, '20230417015609.jpeg', 'System', NULL, NULL, '2023-04-16 17:56:09', '2023-04-16 17:56:09'),
(69, 'Celana Wanita', 49, '20230417020214.jpeg', 'System', NULL, NULL, '2023-04-16 18:02:14', '2023-04-16 18:02:14'),
(70, 'Celana Wanita', 49, '20230417020229.jpeg', 'System', NULL, NULL, '2023-04-16 18:02:29', '2023-04-16 18:02:29');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_02_152556_create_product_table', 1),
(6, '2022_08_02_152606_create_variant_table', 1),
(7, '2022_08_02_152621_create_gallery_table', 1),
(8, '2022_08_02_152636_create_category_table', 1),
(9, '2022_08_02_152655_create_transaction_table', 1),
(10, '2022_08_02_152706_create_detail_transaction_table', 1),
(11, '2022_08_02_152734_create_customer_table', 1),
(12, '2022_08_02_152747_create_customer_address_table', 1),
(13, '2022_08_07_040551_create_review_product_table', 1),
(14, '2022_08_14_144651_create_banner_table', 1),
(15, '2022_08_14_144916_create_shop_profile_table', 1),
(16, '2022_08_14_151340_create_sub_category_table', 1),
(17, '2022_09_14_054310_create_shop_rekening_table', 1),
(18, '2022_09_21_161141_create_biaya_pengiriman_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoryId` int(11) NOT NULL,
  `subCategoryId` int(11) DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `categoryId`, `subCategoryId`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Celana Panjang', 'Celana Panjang', 2, NULL, 'System', NULL, '2022-09-20 07:08:13', '2022-09-16 03:41:55', '2022-09-20 07:08:13'),
(3, 'Kaos Laki-Laki', 'Kaos Laki-Laki', 3, 1, 'System', 'System', '2022-09-20 21:47:31', '2022-09-20 07:01:15', '2022-09-20 21:47:31'),
(4, 'Kaos Perempuan', 'Kaos Perempuan', 5, 2, 'System', 'System', '2022-09-20 21:47:35', '2022-09-20 07:16:03', '2022-09-20 21:47:35'),
(5, 'D', 'E', 6, 3, 'System', 'System', '2022-09-20 21:47:43', '2022-09-20 07:33:34', '2022-09-20 21:47:43'),
(6, 'baju hitam', 'ABCD', 9, NULL, 'System', 'System', '2022-09-20 21:47:49', '2022-09-20 21:41:12', '2022-09-20 21:47:49'),
(7, 'Kaos Laki-Laki', 'xvbvbm', 9, 4, 'System', 'System', '2022-09-20 21:47:57', '2022-09-20 21:43:03', '2022-09-20 21:47:57'),
(8, 'Kaos Pria', 'B', 9, NULL, 'System', NULL, '2022-09-21 03:50:29', '2022-09-20 21:50:25', '2022-09-21 03:50:29'),
(9, 'Kaos Wanita', 'Ukuran M', 10, NULL, 'System', 'System', '2022-09-21 03:51:10', '2022-09-20 23:16:48', '2022-09-21 03:51:10'),
(10, 'Kaos Pria', 'Ukuran L kondisi', 16, 10, 'System', 'System', '2023-03-14 00:45:16', '2022-09-21 03:55:07', '2023-03-14 00:45:16'),
(11, 'Kaos Wanita', 'Ukuran M', 17, 11, 'System', 'System', '2023-03-14 00:45:20', '2022-09-21 04:02:21', '2023-03-14 00:45:20'),
(12, 'Celana Pria', 'Ukuran 27', 16, 8, 'System', 'System', '2023-03-14 00:45:27', '2022-09-21 04:06:33', '2023-03-14 00:45:27'),
(13, 'Celana Wanita', 'Ukuran 25', 17, 9, 'System', 'System', '2023-03-14 19:54:07', '2022-09-21 04:09:17', '2023-03-14 19:54:07'),
(14, 'Kaos Pria', 'Ukuran L', 16, 10, 'System', 'System', '2023-03-13 21:22:09', '2022-09-21 04:12:25', '2023-03-13 21:22:09'),
(15, 'Kaos Pria', 'Ukuran L', 16, 10, 'System', 'System', '2023-03-13 21:22:15', '2022-09-21 04:17:26', '2023-03-13 21:22:15'),
(16, 'Kaos Wanita', 'Ukuran S', 17, 11, 'System', 'System', '2023-03-13 21:22:22', '2022-09-21 04:39:33', '2023-03-13 21:22:22'),
(17, 'Kaos Wanita', 'Ukuran S', 17, 11, 'System', 'System', '2023-03-13 21:22:27', '2022-09-21 04:42:59', '2023-03-13 21:22:27'),
(18, 'Celana Pria', 'Ukuran 28', 16, 8, 'System', 'System', '2023-03-13 21:22:33', '2022-09-21 04:45:52', '2023-03-13 21:22:33'),
(19, 'Celana Pria', 'Ukuran 29', 16, 8, 'System', 'System', '2023-03-12 22:16:01', '2022-09-21 04:50:47', '2023-03-12 22:16:01'),
(20, 'Celana Wanita', 'Ukuran 25', 17, 9, 'System', 'System', '2023-03-13 21:22:39', '2022-09-21 04:56:49', '2023-03-13 21:22:39'),
(21, 'Celana Wanita', 'Ukuran 25', 17, NULL, 'System', NULL, '2022-09-21 04:59:52', '2022-09-21 04:59:38', '2022-09-21 04:59:52'),
(22, 'Celana Wanita', 'Ukuran 26', 17, 9, 'System', 'System', '2023-03-13 21:22:44', '2022-09-21 05:04:35', '2023-03-13 21:22:44'),
(23, 'Kaos anak', 'Ukuran S', 18, 13, 'System', 'System', '2023-03-14 19:54:12', '2022-09-21 22:29:28', '2023-03-14 19:54:12'),
(24, 'Kaos anak', 'Ukuran S', 18, 12, 'System', 'System', '2023-03-13 21:22:51', '2022-09-21 22:30:25', '2023-03-13 21:22:51'),
(25, 'Celana anak', 'Ukuran 23', 18, 15, 'System', 'System', '2023-03-13 21:22:56', '2022-09-21 22:30:56', '2023-03-13 21:22:56'),
(26, 'Celana anak', 'Ukuran 23', 18, 14, 'System', 'System', '2023-03-14 19:54:17', '2022-09-21 22:31:45', '2023-03-14 19:54:17'),
(27, 'Kaos Pria', 'Ukuran M', 16, 10, 'System', 'System', '2023-03-13 21:23:02', '2022-09-21 22:32:30', '2023-03-13 21:23:02'),
(28, 'Kaos Wanita', 'Ukuran M', 17, 11, 'System', 'System', '2023-03-13 21:23:13', '2022-09-21 22:32:59', '2023-03-13 21:23:13'),
(29, 'Kaos anak', 'Ukuran S', 18, 13, 'System', 'System', '2023-03-12 22:16:12', '2022-09-21 23:48:16', '2023-03-12 22:16:12'),
(30, 'a', 's', 17, NULL, 'System', NULL, '2022-11-29 00:21:53', '2022-11-29 00:20:14', '2022-11-29 00:21:53'),
(31, 'as', 'zx', 18, NULL, 'System', NULL, '2022-11-29 00:26:57', '2022-11-29 00:22:54', '2022-11-29 00:26:57'),
(32, 'a', 'sa', 18, NULL, 'System', NULL, '2023-03-12 22:12:24', '2022-11-29 00:28:13', '2023-03-12 22:12:24'),
(33, 'Kaos Pria', 'Kondisi', 16, NULL, 'System', NULL, '2023-03-13 21:23:07', '2023-03-12 22:13:09', '2023-03-13 21:23:07'),
(34, 'Kaos Pria', 'Kondisi Bekas - Bagus', 16, 10, 'System', 'System', '2023-03-14 19:59:38', '2023-03-14 00:27:30', '2023-03-14 19:59:38'),
(35, 'Kaos Wanita', 'Bekas, Kondisi Bagus, Warna Ungu', 17, 11, 'System', 'System', NULL, '2023-03-14 00:34:56', '2023-03-15 08:36:23'),
(36, 'Celana Pria', 'Bekas, Kondisi Bagus, Warna Hitam', 16, 8, 'System', 'System', NULL, '2023-03-14 00:39:53', '2023-03-15 08:38:18'),
(37, 'Kaos Pria', 'Bekas, Kondisi bagus, Warna Biru', 16, 10, 'System', 'System', NULL, '2023-03-14 00:46:20', '2023-03-15 08:39:25'),
(38, 'Kaos Wanita', 'Bekas, Kondisi Bagus, Warna Hitam', 17, 11, 'System', 'System', NULL, '2023-03-14 00:50:52', '2023-03-15 08:40:17'),
(39, 'Kaos Wanita', 'Bekas, Kondisi bagus, Warna Merah', 17, 11, 'System', 'System', NULL, '2023-03-14 00:56:36', '2023-03-15 08:40:56'),
(40, 'Celana Pria', 'Bekas, Kondisi Bagus, Warna Biru', 16, 8, 'System', 'System', NULL, '2023-03-14 01:02:36', '2023-03-15 08:41:32'),
(41, 'Kaos Pria', 'Bekas, Kondisi Bagus, Warna Hijau', 16, 10, 'System', 'System', NULL, '2023-03-14 20:01:15', '2023-03-14 20:05:07'),
(42, 'Celana Pria', 'Bekas, Kondisi Bagus, Warna Hitam', 16, 8, 'System', 'System', NULL, '2023-03-15 08:25:40', '2023-03-15 08:42:35'),
(43, 'Kaos anak', 'Bekas, Kondisi Bagus, warna Ungu', 18, 12, 'System', 'System', NULL, '2023-03-15 20:12:54', '2023-03-15 20:13:14'),
(44, 'Kaos Anak', 'Bekas, Kondisi Kurang Bagus, Warna Hitam', 18, 12, 'System', 'System', NULL, '2023-03-15 20:18:16', '2023-03-15 20:18:26'),
(45, 'Kaos Anak', 'Bekas, Kondisi Bagus, Warna Putih', 18, 12, 'System', 'System', NULL, '2023-03-15 20:21:12', '2023-03-15 20:21:24'),
(46, 'Anak-Anak', 'Bekas, Kondisi Bagus, Warna Hitam', 18, 14, 'System', 'System', NULL, '2023-03-15 21:15:46', '2023-03-15 21:16:02'),
(47, 'Anak-Anak', 'Bekas, Kondisi Bagus, Warna Hitam', 18, 14, 'System', 'System', NULL, '2023-03-15 21:22:11', '2023-03-15 21:22:41'),
(48, 'Celana Wanita', 'Bekas, Kondisi Bagus, Jeans', 17, 9, 'System', 'System', NULL, '2023-04-16 17:55:02', '2023-04-16 17:55:18'),
(49, 'Celana Wanita', 'Bekas, Kondisi Bagus, Jeans', 17, 9, 'System', 'System', NULL, '2023-04-16 18:01:17', '2023-04-16 18:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `review_product`
--

CREATE TABLE `review_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productId` int(11) NOT NULL,
  `transactionId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `rating` double NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_profile`
--

CREATE TABLE `shop_profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_profile`
--

INSERT INTO `shop_profile` (`id`, `name`, `email`, `phone_no`, `longitude`, `latitude`, `address`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Molar Thrifshop', 'molar_thriftshop@gmail.com', '00238023900', 0, 0, 'Jl. Tondano', 'admin', 'admin', NULL, '2022-09-16 11:08:48', '2023-04-16 17:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `shop_rekening`
--

CREATE TABLE `shop_rekening` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_rekening` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Aktif','Tidak Aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Aktif',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_rekening`
--

INSERT INTO `shop_rekening` (`id`, `name`, `nomor_rekening`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'BCA', '1231331313', 'Aktif', NULL, '2022-09-16 03:31:35', '2022-09-16 03:31:35'),
(2, 'BRI', '13131313', 'Aktif', NULL, '2022-09-21 23:54:34', '2022-09-21 23:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `name`, `categoryId`, `description`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Kaos', 3, 'Kaos Laki-Laki', 'admin molar', NULL, '2022-09-20 21:47:11', '2022-09-20 07:00:03', '2022-09-20 21:47:11'),
(2, 'Kaos', 5, 'Kaos', 'admin molar', NULL, '2022-09-20 21:47:15', '2022-09-20 07:20:00', '2022-09-20 21:47:15'),
(3, 'B', 6, 'Csff', 'admin molar', 'admin molar', '2022-09-20 21:47:19', '2022-09-20 07:32:58', '2022-09-20 21:47:19'),
(4, 'Kaos Laki-Laki', 9, 'iuo', 'admin molar', NULL, '2022-09-20 21:47:24', '2022-09-20 21:44:17', '2022-09-20 21:47:24'),
(5, 'Kaos Pria', 9, 'A', 'admin molar', NULL, '2022-09-21 03:54:02', '2022-09-20 21:49:59', '2022-09-21 03:54:02'),
(6, 'Kaos Wanita', 10, 'A', 'admin molar', NULL, '2022-09-21 03:54:22', '2022-09-20 23:16:26', '2022-09-21 03:54:22'),
(7, 'Celana Pria', 16, 'A', 'admin molar', NULL, '2022-09-21 03:48:34', '2022-09-21 03:47:48', '2022-09-21 03:48:34'),
(8, 'Celana Pria', 16, 'A', 'admin molar', NULL, NULL, '2022-09-21 03:49:02', '2022-09-21 03:49:02'),
(9, 'Celana Wanita', 17, 'A', 'admin molar', NULL, NULL, '2022-09-21 03:49:22', '2022-09-21 03:49:22'),
(10, 'Kaos Pria', 16, 'A', 'admin molar', NULL, NULL, '2022-09-21 03:53:54', '2022-09-21 03:53:54'),
(11, 'Kaos Wanita', 17, 'A', 'admin molar', NULL, NULL, '2022-09-21 03:54:16', '2022-09-21 03:54:16'),
(12, 'Kaos anak perempuan', 18, 'A', 'admin molar', NULL, NULL, '2022-09-21 22:25:39', '2022-09-21 22:25:39'),
(13, 'Kaos anak laki-laki', 18, 'A', 'admin molar', NULL, NULL, '2022-09-21 22:26:17', '2022-09-21 22:26:17'),
(14, 'Celana anak perempuan', 18, 'A', 'admin molar', NULL, NULL, '2022-09-21 22:26:47', '2022-09-21 22:26:47'),
(15, 'Celana anak laki-laki', 18, 'A', 'admin molar', NULL, NULL, '2022-09-21 22:27:40', '2022-09-21 22:27:40'),
(16, 'Kaos Pria', 16, 'ukuran L', 'admin molar', 'admin molar', '2023-03-13 21:25:57', '2023-03-12 22:08:27', '2023-03-13 21:25:57'),
(17, 'Kaos Pria', 16, 'ukuran M', 'admin molar', 'admin molar', '2023-03-13 21:25:51', '2023-03-12 22:10:03', '2023-03-13 21:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `code` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `subtotal` double NOT NULL DEFAULT 0,
  `quantity` double NOT NULL DEFAULT 0,
  `diskon` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `status` enum('New','On Process','Delivery','Cart','Canceled','Finish','Rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Cart',
  `transfer_prove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rekeningId` int(11) DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `tanggal`, `jam`, `code`, `customerId`, `addressId`, `subtotal`, `quantity`, `diskon`, `total`, `status`, `transfer_prove`, `rekeningId`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, '2022-09-20', '08:33:28', '20220920083328-cart', 3, 0, 0, 0, 0, 0, 'Cart', '', NULL, 'Cevin', 'Cevin', NULL, '2022-09-20 00:33:28', '2023-04-17 00:37:24'),
(8, '2022-09-20', '08:39:49', '20220920083949', 3, 3, 250000, 1, 0, 250000, 'Finish', '20220920084114.jpeg', 1, 'Cevin', 'cevinmontolalu99@gmail.com', NULL, '2022-09-20 00:39:49', '2022-09-20 00:44:04'),
(9, '2022-09-21', '05:23:17', '20220921052317', 3, 3, 100, 1, 0, 100, 'New', '', NULL, 'Cevin', 'Cevin', NULL, '2022-09-20 21:23:17', '2022-09-20 21:23:17'),
(10, '2022-09-21', '07:19:30', '20220921071930', 3, 3, 100000, 1, 0, 100000, 'Finish', '20220921072044.JPG', 1, 'Cevin', 'cevinmontolalu99@gmail.com', NULL, '2022-09-20 23:19:30', '2022-09-20 23:21:50'),
(11, '2022-09-22', '07:53:08', '20220922075308', 3, 3, 100000, 1, 0, 100000, 'Finish', '20220922075508.JPG', 2, 'Cevin', 'cevinmontolalu99@gmail.com', NULL, '2022-09-21 23:53:08', '2022-09-21 23:57:47'),
(12, '2022-10-03', '06:36:57', '20221003063657', 3, 3, 400000, 1, 0, 400000, 'New', '', NULL, 'Cevin', 'Cevin', NULL, '2022-10-02 22:36:57', '2022-10-02 22:36:57'),
(13, '2022-10-03', '06:42:34', '20221003064234', 3, 3, 250000, 1, 0, 250000, 'New', '', NULL, 'Cevin', 'Cevin', NULL, '2022-10-02 22:42:34', '2022-10-02 22:42:34'),
(14, '2022-10-03', '06:46:39', '20221003064639', 3, 3, 0, 0, 0, 0, 'New', '', NULL, 'Cevin', 'Cevin', NULL, '2022-10-02 22:46:39', '2022-10-02 22:46:39'),
(15, '2022-10-03', '06:46:57', '20221003064657', 3, 3, 0, 0, 0, 0, 'New', '', NULL, 'Cevin', 'Cevin', NULL, '2022-10-02 22:46:57', '2022-10-02 22:46:57'),
(16, '2022-10-03', '06:47:40', '20221003064740', 3, 3, 400000, 1, 0, 400000, 'New', '', NULL, 'Cevin', 'Cevin', NULL, '2022-10-02 22:47:40', '2022-10-02 22:47:40'),
(17, '2022-10-03', '06:51:13', '20221003065113-cart', 4, 0, 0, 0, 0, 0, 'Cart', '', NULL, 'kams', 'kams', NULL, '2022-10-02 22:51:13', '2022-10-02 23:13:46'),
(18, '2022-10-03', '07:03:40', '20221003070340', 4, 4, 150000, 1, 0, 160000, 'New', '', NULL, 'kams', 'kams', NULL, '2022-10-02 23:03:40', '2022-10-02 23:03:40'),
(19, '2022-10-03', '07:13:46', '20221003071346', 4, 4, 150000, 1, 0, 160000, 'Finish', '20221003071406.JPG', 1, 'kams', 'wilmerkamu@gmail.com', NULL, '2022-10-02 23:13:46', '2022-10-02 23:15:26'),
(20, '2022-10-03', '07:21:03', '20221003072103', 3, 3, 100000, 1, 0, 115000, 'Finish', '20221003084030.JPG', 1, 'Cevin', 'cevinmontolalu99@gmail.com', NULL, '2022-10-02 23:21:03', '2022-10-03 00:41:16'),
(21, '2022-10-03', '10:01:49', '20221003100149', 3, 5, 600000, 2, 0, 610000, 'On Process', '20221003100253.JPG', 1, 'Cevin', 'Cevin', NULL, '2022-10-03 02:01:49', '2022-10-03 02:02:53'),
(22, '2022-10-03', '01:16:48', '20221003011648', 3, 3, 100000, 1, 0, 110000, 'New', '', NULL, 'Cevin', 'Cevin', NULL, '2022-10-03 05:16:48', '2022-10-03 05:16:48'),
(23, '2022-10-03', '01:20:01', '20221003012001', 3, 3, 0, 0, 0, 10000, 'New', '', NULL, 'Cevin', 'Cevin', NULL, '2022-10-03 05:20:01', '2022-10-03 05:20:01'),
(24, '2022-11-29', '03:55:33', '20221129035533', 3, 3, 150000, 1, 0, 160000, 'New', '', NULL, 'Cevin', 'Cevin', NULL, '2022-11-28 19:55:33', '2022-11-28 19:55:33'),
(25, '2022-12-15', '09:16:09', '20221215091609', 3, 3, 150000, 1, 0, 160000, 'New', '', NULL, 'Cevin', 'Cevin', NULL, '2022-12-15 01:16:09', '2022-12-15 01:16:09'),
(26, '2022-12-15', '09:24:27', '20221215092427', 3, 3, 100000, 1, 0, 110000, 'On Process', '20221215092522.JPG', 1, 'Cevin', 'admin_molar@gmail.com', NULL, '2022-12-15 01:24:27', '2022-12-15 01:27:47'),
(27, '2023-03-13', '06:17:25', '20230313061725', 3, 3, 16400000, 41, 0, 16410000, 'Finish', '20230313061747.JPG', 1, 'Cevin', 'cevinmontolalu99@gmail.com', NULL, '2023-03-12 22:17:25', '2023-03-12 22:19:05'),
(28, '2023-03-13', '06:20:33', '20230313062033', 3, 3, 100000, 1, 0, 110000, 'On Process', '20230313062103.JPG', 1, 'Cevin', 'Cevin', NULL, '2023-03-12 22:20:33', '2023-03-12 22:21:03'),
(29, '2023-04-17', '02:41:37', '20230417024137', 3, 3, 30000, 1, 0, 40000, 'Finish', '20230417024224.jpeg', 1, 'Cevin', 'cevinmontolalu99@gmail.com', NULL, '2023-04-16 18:41:37', '2023-04-16 18:44:06'),
(30, '2023-04-17', '07:47:51', '20230417074751', 3, 3, 130000, 2, 0, 140000, 'On Process', '20230417074821.jpeg', 1, 'Cevin', 'Cevin', NULL, '2023-04-16 23:47:51', '2023-04-16 23:48:21'),
(31, '2023-04-17', '08:37:24', '20230417083724', 3, 3, 100000, 1, 0, 110000, 'Finish', '20230417083838.jpeg', 2, 'Cevin', 'cevinmontolalu99@gmail.com', NULL, '2023-04-17 00:37:24', '2023-04-17 00:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin molar', 'admin_molar@gmail.com', NULL, '$2a$12$XsotCyaNzqHTI17OGoFe6eqk/04.CSwsNlHEskXGaA6qjuMnuu8Du', NULL, '2022-09-16 11:06:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

CREATE TABLE `variant` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productId` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `stock` int(11) NOT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variant`
--

INSERT INTO `variant` (`id`, `productId`, `name`, `description`, `price`, `stock`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hitam', 'Celana Panjang warna hitam', 250000, 100, 'System', NULL, NULL, '2022-09-16 03:16:20', '2022-09-16 03:16:20'),
(2, 2, 'Celana Panjang', 'aaa', 10000, 1, 'System', NULL, NULL, '2022-09-16 03:44:03', '2022-09-16 03:44:03'),
(3, 3, 'Kaos Laki-Laki', 'abc', 100, 1, 'System', NULL, NULL, '2022-09-20 07:05:26', '2022-09-20 07:05:26'),
(4, 4, 'Kaos Perempuan', 'a', 100, 1, 'System', NULL, NULL, '2022-09-20 07:17:57', '2022-09-20 07:17:57'),
(5, 5, 'F', 'G', 100, 1, 'System', NULL, NULL, '2022-09-20 07:35:30', '2022-09-20 07:35:30'),
(6, 8, 'Kaos Pria', 'C', 100, 1, 'System', NULL, NULL, '2022-09-20 23:12:11', '2022-09-20 23:12:11'),
(7, 8, 'Kaos Pria', 'Paos Warna Hitam', 100000, 1, 'System', NULL, NULL, '2022-09-20 23:15:23', '2022-09-20 23:15:23'),
(8, 9, 'Kaos Wanita', 'Kaos warna hitam', 100000, 1, 'System', NULL, NULL, '2022-09-20 23:17:47', '2022-09-20 23:17:47'),
(9, 10, 'Hitam', 'Kaos', 400000, 1, 'System', NULL, NULL, '2022-09-21 03:56:33', '2022-09-21 04:37:42'),
(10, 11, 'Hitam', 'Kaos', 100000, 1, 'System', NULL, NULL, '2022-09-21 04:03:33', '2022-09-21 04:36:39'),
(11, 12, 'Biru', 'Celana Jeans', 250000, 1, 'System', NULL, NULL, '2022-09-21 04:08:02', '2022-09-21 04:32:40'),
(12, 13, 'Abu abu', 'Celana Jeans', 250000, 1, 'System', NULL, NULL, '2022-09-21 04:10:24', '2022-09-21 04:34:36'),
(13, 14, 'Hitam', 'Kaos', 200000, 1, 'System', NULL, NULL, '2022-09-21 04:15:34', '2022-09-21 04:27:21'),
(14, 15, 'Hitam', 'Kaos', 250000, 1, 'System', NULL, NULL, '2022-09-21 04:18:18', '2022-09-21 04:25:12'),
(15, 15, 'Kaos', 'Ukuran L', 250000, 1, 'System', NULL, '2022-09-21 04:25:17', '2022-09-21 04:19:06', '2022-09-21 04:25:17'),
(16, 16, 'Putih', 'Kaos', 150000, 1, 'System', NULL, NULL, '2022-09-21 04:41:43', '2022-09-21 04:41:43'),
(17, 16, 'Putih', 'Kaos', 150000, 1, 'System', NULL, '2022-09-21 04:42:11', '2022-09-21 04:41:43', '2022-09-21 04:42:11'),
(18, 17, 'Putih', 'Kaos', 150000, 1, 'System', NULL, NULL, '2022-09-21 04:44:19', '2022-09-21 04:44:19'),
(19, 18, 'Abu abu', 'Celana Jeans', 300000, 1, 'System', NULL, NULL, '2022-09-21 04:48:58', '2022-09-21 04:48:58'),
(20, 19, 'Abu Abu', 'Celana Jeans', 200000, 1, 'System', NULL, NULL, '2022-09-21 04:52:57', '2022-09-21 04:53:50'),
(21, 20, 'Hitam', 'Celana Jeans', 250000, 1, 'System', NULL, NULL, '2022-09-21 05:02:55', '2022-09-21 05:02:55'),
(22, 22, 'Abu Abu', 'Celana Jeans', 200000, 1, 'System', NULL, NULL, '2022-09-21 05:07:43', '2022-09-21 05:07:43'),
(23, 23, 'Biru', 'Ukuran S', 150000, 1, 'System', NULL, NULL, '2022-09-21 22:36:16', '2022-09-21 22:36:16'),
(24, 24, 'Putih', 'Ukuran S', 150000, 1, 'System', NULL, NULL, '2022-09-21 22:38:57', '2022-09-21 22:38:57'),
(25, 25, 'Coklat', 'Ukuran 23', 150000, 1, 'System', NULL, NULL, '2022-09-21 22:42:27', '2022-09-21 22:42:27'),
(26, 26, 'Coklat', 'Ukuran 23', 150000, 1, 'System', NULL, NULL, '2022-09-21 22:49:33', '2022-09-21 22:49:33'),
(27, 27, 'Abu Abu', 'Kaos', 200000, 1, 'System', NULL, NULL, '2022-09-21 22:52:19', '2022-09-21 23:00:36'),
(28, 27, 'Coklat', 'Kaos', 200000, 1, 'System', NULL, NULL, '2022-09-21 22:53:12', '2022-09-21 23:01:06'),
(29, 27, 'Merah', 'Kaos', 200000, 1, 'System', NULL, NULL, '2022-09-21 22:54:01', '2022-09-21 23:01:23'),
(30, 27, 'Hitam', 'Kaos', 200000, 1, 'System', NULL, NULL, '2022-09-21 22:54:34', '2022-09-21 23:01:39'),
(31, 28, 'Merah', 'Kaos', 150000, 1, 'System', NULL, NULL, '2022-09-21 23:04:07', '2022-09-21 23:04:07'),
(32, 28, 'Coklat', 'Kaos', 150000, 1, 'System', NULL, NULL, '2022-09-21 23:04:37', '2022-09-21 23:04:37'),
(33, 28, 'Hitam', 'Kaos', 150000, 1, 'System', NULL, NULL, '2022-09-21 23:05:13', '2022-09-21 23:05:13'),
(34, 29, 'Putih', 'Kaos', 100000, 1, 'System', NULL, NULL, '2022-09-21 23:50:49', '2022-09-21 23:50:49'),
(35, 33, 'Hitam', 'abc', 100000, 1, 'System', NULL, NULL, '2023-03-12 22:14:59', '2023-03-12 22:14:59'),
(36, 34, 'Hijau', 'Ukuran L', 75000, 1, 'System', NULL, NULL, '2023-03-14 00:30:48', '2023-03-14 00:34:00'),
(37, 35, 'Ungu', 'Ukuran S', 30000, 1, 'System', NULL, NULL, '2023-03-14 00:37:38', '2023-03-15 08:30:16'),
(38, 36, 'Hitam', 'Ukuaran 28', 100000, 1, 'System', NULL, NULL, '2023-03-14 00:42:21', '2023-03-14 00:42:21'),
(39, 37, 'Biru', 'Ukuran L', 75000, 1, 'System', NULL, NULL, '2023-03-14 00:49:05', '2023-03-14 00:49:05'),
(40, 38, 'Hitam', 'Ukuran M', 40000, 1, 'System', NULL, NULL, '2023-03-14 00:55:30', '2023-03-15 08:31:02'),
(41, 39, 'Kaos Wanita', 'Kurang', 25000, 1, 'System', NULL, NULL, '2023-03-14 00:58:31', '2023-03-15 08:32:21'),
(42, 39, 'Merah', 'Ukuran S', 50000, 1, 'System', NULL, '2023-03-15 08:31:48', '2023-03-14 01:00:47', '2023-03-15 08:31:48'),
(43, 40, 'Hitam', 'Ukuran 28', 75000, 1, 'System', NULL, NULL, '2023-03-14 19:44:34', '2023-03-14 19:44:34'),
(44, 41, 'Hijau', 'Ukuran L', 75000, 1, 'System', NULL, NULL, '2023-03-14 20:03:07', '2023-03-14 20:03:07'),
(45, 42, 'Hitam', 'Ukuran 28', 50000, 1, 'System', NULL, NULL, '2023-03-15 08:29:17', '2023-03-15 08:29:17'),
(46, 43, 'Ungu', 'Ukuran S', 30000, 1, 'System', NULL, NULL, '2023-03-15 20:14:44', '2023-03-15 20:16:05'),
(47, 44, 'Hitam', 'Ukuran L', 30000, 1, 'System', NULL, NULL, '2023-03-15 20:19:53', '2023-03-15 20:19:53'),
(48, 45, 'Putih', 'Ukuran S', 30000, 1, 'System', NULL, NULL, '2023-03-15 20:22:42', '2023-03-15 20:22:42'),
(49, 46, 'Hitam', 'Ukuran 28', 40000, 1, 'System', NULL, NULL, '2023-03-15 21:18:08', '2023-03-15 21:18:08'),
(50, 47, 'Biru', 'Bekas, Kondisi Bagus, Warna Biru', 40000, 1, 'System', NULL, NULL, '2023-03-15 21:25:16', '2023-03-15 21:25:16'),
(51, 48, 'Jeans', 'Ukuran 28', 30000, 1, 'System', NULL, NULL, '2023-04-16 17:56:52', '2023-04-16 17:59:38'),
(52, 49, 'Jeans', 'Ukuran 27', 30000, 1, 'System', NULL, NULL, '2023-04-16 18:03:24', '2023-04-16 18:03:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biaya_pengiriman`
--
ALTER TABLE `biaya_pengiriman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_email_unique` (`email`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_transaction`
--
ALTER TABLE `detail_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_product`
--
ALTER TABLE `review_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_profile`
--
ALTER TABLE `shop_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_rekening`
--
ALTER TABLE `shop_rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variant`
--
ALTER TABLE `variant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `biaya_pengiriman`
--
ALTER TABLE `biaya_pengiriman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `detail_transaction`
--
ALTER TABLE `detail_transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `review_product`
--
ALTER TABLE `review_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_profile`
--
ALTER TABLE `shop_profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_rekening`
--
ALTER TABLE `shop_rekening`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variant`
--
ALTER TABLE `variant`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
