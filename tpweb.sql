-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 03:29 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpweb`
--

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
(4, '2021_01_25_184600_create_products', 2),
(5, '2021_01_25_192104_create_products', 3),
(6, '2021_01_25_195400_create_products_table', 4),
(7, '2021_01_25_200406_create_products_table', 5),
(8, '2021_01_25_204245_create_products_table', 6),
(9, '2021_01_25_211440_create_products_table', 7),
(10, '2021_01_25_211920_create_products_table', 8),
(11, '2021_01_26_131613_create_producs_table', 9),
(12, '2021_01_26_131947_create_producs_table', 10),
(13, '2021_01_26_133651_create_products_table', 11),
(14, '2021_01_26_150008_create_products_table', 12),
(15, '2021_01_29_112123_create_admin_table', 13),
(16, '2021_01_29_121200_create_products_table', 14),
(17, '2021_01_29_122244_create_products_table', 15),
(18, '2021_01_29_192925_create_products_table', 16);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productname`, `contact`, `discription`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'product1', '098765432', 'make your hair soft and shiny with a masque of a life time', '$55.99', 'im1.PNG', NULL, '2021-02-26 07:45:45'),
(2, 'product2', '098765432', 'make your hair soft and shiny with a masque of a life time', '$49.99', 'im2.PNG', NULL, '2021-02-26 07:45:27'),
(3, 'product3', '098765432', 'make your hair soft and shiny with a masque of a life time', '$43', 'im3.PNG', NULL, '2021-02-26 07:45:09'),
(4, 'product4', '098765432', 'make your hair soft and shiny with a masque of a life time', '$43', 'im4.PNG', NULL, NULL),
(5, 'product5', '0777777777', 'make your hair soft and shiny with a masque of a life time', '$98.99', 'im5.PNG', NULL, NULL),
(6, 'product6', '0888888888', 'make your hair soft and shiny with a masque of a life time', '$15.99', 'im6.PNG', NULL, NULL),
(7, 'product7', '099999999', 'make your hair soft and shiny with a masque of a life time', '$99.99', 'im7.PNG', NULL, NULL),
(8, 'product8', '09878987', 'make your hair soft and shiny with a masque of a life time', '$98.99', 'im8.PNG', NULL, NULL),
(9, 'product9', '098789000', 'make your hair soft and shiny with a masque of a life time', '$199.99', 'im9.PNG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `phone`, `usertype`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'mehdi', '0987654321', 'admin', 'mehdi@gmail.com', NULL, '$2y$10$heviGCXD9AgkASEpKVa4U.mga8tT4cQKfRTR72q2CbD7DlX7/1Ha6', NULL, '2021-01-25 08:05:22', '2021-01-27 23:38:16'),
(5, 'mido', '0987654333', 'user', 'mido@gmail.com', NULL, '$2y$10$D1YSYgmKt8fP1B8S6fLstO0O0gs.ephUusRrzOAPDfarSpvmYBJ4O', NULL, '2021-01-27 23:43:26', '2021-01-29 10:13:40'),
(7, 'salmane', '0987654444', 'admin', 'salmane@gmail.com', NULL, '$2y$10$TOAV78W1tNOqHCrC7zmok.eGPUBVvHMkz1b6UwTLTBO07JiD7BobK', NULL, '2021-01-29 10:14:57', '2021-01-29 10:16:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
