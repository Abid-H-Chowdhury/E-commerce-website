-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 02:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_05_23_165011_create_sessions_table', 1),
(7, '2022_05_24_125149_create_products_table', 2),
(8, '2022_05_24_195932_create_carts_table', 3),
(9, '2022_05_25_100051_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `product_name`, `quantity`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'delivered', '2022-05-25 05:44:53', '2022-05-25 07:44:49'),
(2, 'user', '01521329100', 'Dhaka', 'shirt', '1', '12', 'delivered', '2022-05-25 05:44:53', '2022-05-25 09:39:30'),
(3, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'delivered', '2022-05-25 05:44:53', '2022-05-26 07:17:13'),
(4, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-05-25 05:44:53', '2022-05-25 05:44:53'),
(5, 'user', '01521329100', 'Dhaka', 'shirt', '1', '100', 'not delivered', '2022-05-25 05:50:37', '2022-05-25 05:50:37'),
(6, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-05-25 06:14:50', '2022-05-25 06:14:50'),
(7, 'user', '01521329100', 'Dhaka', 'shirt', '1', '100', 'not delivered', '2022-05-25 08:35:03', '2022-05-25 08:35:03'),
(8, 'user', '01521329100', 'Dhaka', 'shirt', '1', '100', 'not delivered', '2022-05-25 09:17:53', '2022-05-25 09:17:53'),
(9, 'user', '01521329100', 'Dhaka', 'shirt', '1', '100', 'not delivered', '2022-05-25 09:32:00', '2022-05-25 09:32:00'),
(10, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-05-25 09:32:00', '2022-05-25 09:32:00'),
(11, 'user', '01521329100', 'Dhaka', 'shirt', '1', '12', 'not delivered', '2022-05-25 09:32:00', '2022-05-25 09:32:00'),
(12, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-05-25 09:32:00', '2022-05-25 09:32:00'),
(13, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-05-25 09:32:00', '2022-05-25 09:32:00'),
(14, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-05-25 09:32:00', '2022-05-25 09:32:00'),
(15, 'user', '01521329100', 'Dhaka', 'shirt', '1', '12', 'not delivered', '2022-05-25 09:32:00', '2022-05-25 09:32:00'),
(16, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-05-25 09:32:00', '2022-05-25 09:32:00'),
(17, 'user', '01521329100', 'Dhaka', 'shirt', '1', '12', 'not delivered', '2022-05-25 09:32:00', '2022-05-25 09:32:00'),
(18, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-05-25 09:36:20', '2022-05-25 09:36:20'),
(19, 'customer', '01921111111', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-05-25 09:38:03', '2022-05-25 09:38:03'),
(20, 'user', '01521329100', 'Dhaka', 'shirt', '1', '100', 'not delivered', '2022-05-25 10:11:43', '2022-05-25 10:11:43'),
(21, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-05-26 07:16:03', '2022-05-26 07:16:03'),
(22, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-05-26 09:43:33', '2022-05-26 09:43:33'),
(23, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-05-26 09:43:33', '2022-05-26 09:43:33'),
(24, 'user', '01521329100', 'Dhaka', 'shirt', '1', '100', 'not delivered', '2022-05-26 09:43:33', '2022-05-26 09:43:33'),
(25, 'user', '01521329100', 'Dhaka', 'shirt', '1', '100', 'not delivered', '2022-05-26 09:51:47', '2022-05-26 09:51:47'),
(26, 'user', '01521329100', 'Dhaka', 'shirt', '1', '100', 'not delivered', '2022-05-26 10:00:41', '2022-05-26 10:00:41'),
(27, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-05-26 10:00:41', '2022-05-26 10:00:41'),
(28, 'user', '01521329100', 'Dhaka', 'shirt', '1', '100', 'not delivered', '2022-06-01 03:10:52', '2022-06-01 03:10:52'),
(29, 'user', '01521329100', 'Dhaka', 'shirt', '2', '100', 'not delivered', '2022-06-01 03:10:52', '2022-06-01 03:10:52'),
(30, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-06-01 03:10:52', '2022-06-01 03:10:52'),
(31, 'user', '01521329100', 'Dhaka', 'shirt', '1', '100', 'not delivered', '2022-06-01 03:15:07', '2022-06-01 03:15:07'),
(32, 'user', '01521329100', 'Dhaka', 'shirt', '1', '10', 'not delivered', '2022-06-01 03:15:07', '2022-06-01 03:15:07');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `quantity`, `image`, `created_at`, `updated_at`) VALUES
(2, 'shirt', '100', 'great', '3', '1653406381.jpg', '2022-05-24 09:33:01', '2022-05-24 13:00:05'),
(3, 'shirt', '10', 'great', '23', '1653406407.jpg', '2022-05-24 09:33:27', '2022-05-24 09:33:27'),
(4, 'shirt', '12', 'great', '12', '1653406428.jpg', '2022-05-24 09:33:48', '2022-05-24 09:33:48'),
(5, 'shirt', '12', 'good', '2', '1653420848.jpg', '2022-05-24 13:34:08', '2022-05-24 13:34:08'),
(6, 'tshirt', '10', 'cool', '2', '1653493136.jpg', '2022-05-25 09:38:56', '2022-05-25 09:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5EyzysruqjY752pC00es36L8hK0PN5tB5Q6wWMmJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHk4SjhNaXFJQWFHNVRkanF0dVBKV2lZY0ZpV2xDN1ZaOXR1ZEVKdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1653900746),
('RJlcEMIiUnHGht7K4JHnpCFpDoNzxB9eUoaQgjOL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWxnNHZ1cjRRWUNjZDlSNTgwcVJNeW9mU1JyWkU4dGUwd0RWYTdkWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1653580852),
('SzzFbu71uHmb6VGHPIcyhfyDL30TD4SeQQI4Fipv', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTkphMzRnemFtaHB2TEs2N2RWU2NTQ3ZjVnNLRFYyZ083Q0FxYkhjbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG93Y2FydCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1654074907),
('VIFuTCuGw3Pjf2GSrVR06C6BAoArR7eHvPF36bEw', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTBtelhPM081SWc0R0pwRHBrUVNGTXZ5ZlZFN3I5OE5pTDhXcWNJVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3QvbGFyYXZlbC9FY29tbWVyY2UvcHVibGljL3JlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1674392545);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '0', '01521329100', 'Dhaka', NULL, '$2y$10$ki7UDj7xYF7E0h3japJTBe33p7qrPcFFQY/eUpWg.8aEAlkHloegO', NULL, NULL, NULL, '2ZcupizSoqm7A4Ut52CWPS7RVvCFk9UZ3aGbFEVtsjXXd5OOV55lpofBIeF6', NULL, NULL, '2022-05-23 13:33:43', '2022-05-23 13:33:43'),
(2, 'admin', 'admin@gmail.com', '1', '01521329100', 'Dhaka', NULL, '$2y$10$H0RQ4b03NKiKbSIK26p4W.OXISmpJmu8iBLwQvHgB60FqRB54oOMC', NULL, NULL, NULL, 'KT8JvxGFHYkwIluNWzJ6gIeHa6hK6cksiB3jRS1xfbPIs41U2tJifXRPuTlI', NULL, NULL, '2022-05-23 13:36:00', '2022-05-23 13:36:00'),
(3, 'customer', 'customer@gmail.com', '0', '01921111111', 'Dhaka', NULL, '$2y$10$6bRDFzhf7TL6F9ZZlz2DGu5gus6mJbPvnFQmkbyIZ8qTeyyublqtK', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 09:37:27', '2022-05-25 09:37:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
