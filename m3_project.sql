-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2022 at 03:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m3_project`
--

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_09_040148_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Judul Pertama', 'judul-pertama', 'Excerpt Pertama', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima maiores obcaecati natus quibusdam nihil id! Atque eius consectetur dolorum odio tempora quasi excepturi mollitia architecto ratione beatae magni magnam, </p><p>dicta odit nulla consequatur ipsam voluptates laborum facere fuga velit dolore impedit fugit quas ipsum. Reprehenderit in modi, minus maiores magnam nesciunt veritatis perferendis sed minima est accusantium hic aliquid nihil, cum voluptatum voluptate sit odio quaerat iure numquam repudiandae magni optio? </p><p>Est ipsa ratione corporis? Quibusdam ipsum illum ratione doloremque veniam iusto hic id sit? Nisi, quis asperiores laudantium laboriosam pariatur harum delectus dolor obcaecati voluptatem, quae inventore illum cupiditate expedita optio alias id qui veniam fugiat quaerat beatae! Soluta quam dolore qui asperiores alias nisi velit possimus ea odit vero odio atque perferendis, iste recusandae eius illum. Blanditiis architecto a voluptatibus vel totam, sed similique corrupti veritatis quisquam aliquid, iure cum magnam aut cumque sit illum, porro accusamus alias.</p>', NULL, '2022-10-21 11:11:08', '2022-10-21 11:11:08'),
(2, 'Judul Ke Dua', 'judul-ke-dua', 'Excerpt Ke Dua', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima maiores obcaecati natus quibusdam nihil id! Atque eius consectetur dolorum odio tempora quasi excepturi mollitia architecto ratione beatae magni magnam, </p><p>dicta odit nulla consequatur ipsam voluptates laborum facere fuga velit dolore impedit fugit quas ipsum. Reprehenderit in modi, minus maiores magnam nesciunt veritatis perferendis sed minima est accusantium hic aliquid nihil, cum voluptatum voluptate sit odio quaerat iure numquam repudiandae magni optio? </p><p>Est ipsa ratione corporis? Quibusdam ipsum illum ratione doloremque veniam iusto hic id sit? Nisi, quis asperiores laudantium laboriosam pariatur harum delectus dolor obcaecati voluptatem, quae inventore illum cupiditate expedita optio alias id qui veniam fugiat quaerat beatae! Soluta quam dolore qui asperiores alias nisi velit possimus ea odit vero odio atque perferendis, iste recusandae eius illum. Blanditiis architecto a voluptatibus vel totam, sed similique corrupti veritatis quisquam aliquid, iure cum magnam aut cumque sit illum, porro accusamus alias.</p>', NULL, '2022-10-21 11:12:58', '2022-10-21 11:12:58'),
(3, 'Judul Ke Tiga', 'judul-ke-tiga', 'Excerpt Ke Tiga', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima maiores obcaecati natus quibusdam nihil id! Atque eius consectetur dolorum odio tempora quasi excepturi mollitia architecto ratione beatae magni magnam, </p><p>dicta odit nulla consequatur ipsam voluptates laborum facere fuga velit dolore impedit fugit quas ipsum. Reprehenderit in modi, minus maiores magnam nesciunt veritatis perferendis sed minima est accusantium hic aliquid nihil, cum voluptatum voluptate sit odio quaerat iure numquam repudiandae magni optio? </p><p>Est ipsa ratione corporis? Quibusdam ipsum illum ratione doloremque veniam iusto hic id sit? Nisi, quis asperiores laudantium laboriosam pariatur harum delectus dolor obcaecati voluptatem, quae inventore illum cupiditate expedita optio alias id qui veniam fugiat quaerat beatae! Soluta quam dolore qui asperiores alias nisi velit possimus ea odit vero odio atque perferendis, iste recusandae eius illum. Blanditiis architecto a voluptatibus vel totam, sed similique corrupti veritatis quisquam aliquid, iure cum magnam aut cumque sit illum, porro accusamus alias.</p>', NULL, '2022-10-21 11:13:30', '2022-10-21 11:13:30');

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
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
