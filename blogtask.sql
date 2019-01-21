-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2019 at 08:08 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogtask`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'sort', '2019-01-17 18:10:01', '2019-01-17 18:10:01'),
(3, 'Sports', '2019-01-18 10:10:01', '2019-01-18 10:10:01'),
(4, 'Travel', '2019-01-18 10:10:27', '2019-01-18 10:10:27'),
(5, 'programming', '2019-01-18 10:50:56', '2019-01-18 10:50:56'),
(6, 'languages', '2019-01-18 11:20:32', '2019-01-18 11:20:32'),
(7, 'Education', '2019-01-19 13:01:12', '2019-01-19 13:01:12'),
(8, 'Politics', '2019-01-20 18:33:44', '2019-01-20 18:33:44'),
(9, 'Communication', '2019-01-20 19:16:29', '2019-01-20 19:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_17_163715_create_posts_tables', 2),
(4, '2019_01_17_163923_create_profiles_tables', 2),
(5, '2019_01_17_164033_create_comments_tables', 2),
(6, '2019_01_17_164101_create_likes_tables', 2),
(7, '2019_01_17_164147_create_dislikes_tables', 2),
(8, '2019_01_17_165601_create_categories_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_title`, `post_description`, `category_id`, `post_image`, `created_at`, `updated_at`) VALUES
(22, 10, 'Adobe Photoshop', 'Adobe Photoshop is a raster graphics editor developed and published by Adobe Inc. for macOS and Windows. Photoshop was created in 1988 by Thomas and John Knoll.', 1, 'http://127.0.0.1:8000/posts/5aba147bcacf2.png', '2019-01-20 19:07:10', '2019-01-20 19:07:10'),
(23, 10, 'Vue.js', 'Vue.js is an open-source JavaScript framework for building user interfaces and single-page applications', 5, 'http://127.0.0.1:8000/posts/58482acecef1014c0b5e4a1e.png', '2019-01-20 19:08:35', '2019-01-20 19:08:35'),
(24, 10, 'Turkish', 'Turkish Airlines is the national flag carrier airline of Turkey. As of 2018, it operates scheduled services to 304 destinations in Europe, Asia, Africa, and the Americas, making it the largest carrier in the world by number of passenger destinations.', 4, 'http://127.0.0.1:8000/posts/5a90f9736e281.jpg', '2019-01-20 19:10:04', '2019-01-20 19:10:04'),
(26, 10, 'Liverpool F.C.', 'Liverpool Football Club is a professional football club in Liverpool, England, that competes in the Premier League, the top tier of English football.', 3, 'http://127.0.0.1:8000/posts/icons8-liverpool-fc-480.png', '2019-01-20 19:11:41', '2019-01-20 19:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `username`, `designation`, `profile_pic`, `created_at`, `updated_at`) VALUES
(1, 2, 'mohannad', 'Developer', 'http://127.0.0.1:8000/uploads/1540006192.png', '2019-01-18 05:42:46', '2019-01-18 05:42:46'),
(2, 2, 'asws', 'network', 'http://127.0.0.1:8000/uploads/1540006192.png', '2019-01-18 05:55:30', '2019-01-18 05:55:30'),
(3, 2, 'khaild', 'devops', 'http://127.0.0.1:8000/uploads/profile.png', '2019-01-18 08:16:36', '2019-01-18 08:16:36'),
(4, 3, 'khaild', 'devops', 'http://127.0.0.1:8000/uploads/profile.png', '2019-01-18 08:18:11', '2019-01-18 08:18:11'),
(5, 4, 'fadi', 'designer', 'http://127.0.0.1:8000/uploads/avatar.png.png', '2019-01-18 08:39:06', '2019-01-18 08:39:06'),
(6, 4, 'Ali', 'Developer', 'http://127.0.0.1:8000/uploads/iconfinder_9_2698684.png', '2019-01-18 11:18:23', '2019-01-18 11:18:23'),
(7, 5, 'aws', 'Developer', 'http://127.0.0.1:8000/uploads/icons8-administrator-male-480.png', '2019-01-18 11:41:07', '2019-01-18 11:41:07'),
(8, 6, 'mohannado', 'Database', 'http://127.0.0.1:8000/uploads/avatar.png.png', '2019-01-18 13:16:17', '2019-01-18 13:16:17'),
(9, 6, 'mohannad', 'Developer', 'http://127.0.0.1:8000/uploads/1537591603.png', '2019-01-18 17:25:24', '2019-01-18 17:25:24'),
(10, 8, 'testing', 'devo', 'http://127.0.0.1:8000/uploads/icons8-administrator-male-480.png', '2019-01-18 17:58:16', '2019-01-18 17:58:16'),
(11, 9, 'mohannad', 'Developer', 'http://127.0.0.1:8000/uploads/iconfinder_9_2698684.png', '2019-01-18 19:56:55', '2019-01-18 19:56:55'),
(12, 9, 'fahad', 'IT', 'http://127.0.0.1:8000/uploads/icons8-administrator-male-480.png', '2019-01-19 13:00:30', '2019-01-19 13:00:30'),
(13, 10, 'mohannad-dev', 'player', 'http://127.0.0.1:8000/uploads/iconfinder_9_2698684.png', '2019-01-20 18:27:28', '2019-01-20 18:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hello', 'mar@m.com', NULL, '$2y$10$u6UTpSH.LI7X5PaFPAqajOWwsBaZ/oMSywLIJgPUTzZr7OGAL/B4u', 'o1Qr0hWKaCQFOTcILMd6CENMo4wc9IaNMUilJNu6gjruCZEbL3vRiGJhPTwv', '2019-01-17 12:04:17', '2019-01-17 12:04:17'),
(2, 'mohannad', 'kanafa@admin.com', NULL, '$2y$10$kdfMQV17tFrUZCdyLzEaJOK65VP0Oz1q19Vyp9LuH2lLsWHGLvuz2', 'dYC10wvqoRg8NrnZjcP4K43tzm3xEOYJDluKxvmvgIA6EYUFdYQINSNEyacG', '2019-01-17 12:09:11', '2019-01-17 12:09:11'),
(3, 'admin', 'admin@me.com', NULL, '$2y$10$Xrt2lr1STpwDRQD0ADS6LubO269BnJIHAekkjjdScI2P/RlT41oVi', 'vHp6DGZnmt8oYEOwtPYiXgZ1Z9oSKusxKmSsZaubG5Y8VwjpbjIHISjjSJug', '2019-01-18 08:17:47', '2019-01-18 08:17:47'),
(4, 'fadi', 'fadi@m.com', NULL, '$2y$10$oPNbOYgxLZ11zO558Wso0.FgPsovqTgVk12yMGQvh2JXTlP7QwTEO', 'ky1NiT57lf6odX32vVha8qvSNdxYU7GNv3KvTxaC4ciILNex1tTHzH3dEldm', '2019-01-18 08:36:55', '2019-01-18 08:36:55'),
(5, 'aws', 'aws@h.com', NULL, '$2y$10$YmtPQ4aDisbmB3UjGhsiJucqnXnvI3EKc0cH8WeISCCcydq6kvNIy', 'rkqvxfag4pXIf5ukdy0JKjgwulO8dYWfeJ5VnaSxw3Y0Va55QH4OCJU0yjRS', '2019-01-18 11:39:24', '2019-01-18 11:39:24'),
(6, 'mohannado', 'mohannado@test.com', NULL, '$2y$10$9q1m1ybLejJ5ab/6PFAMQ.oUenWvFQWwT9eB/.4PBtMz7zVGLLyEu', 'twyHLLStcjd8b0nakAJPlnKyROA8PvRzKCOHPbTYw3aONWcSTmThq6FiNXDw', '2019-01-18 13:12:43', '2019-01-18 13:12:43'),
(7, 'atheer', 'king@gmail.com', NULL, '$2y$10$EOgMoZlxe5jvrySR4ti.MuQikev2jlNNjlvr1krREALOb5tVo8p4S', 'mjdMRHrlDZYVQgqufDufe0qa095fPRMfJ6ep2pO7PkxzkHEmDAVPjQi9EktC', '2019-01-18 17:26:05', '2019-01-18 17:26:05'),
(8, 'test', 'test@t.com', NULL, '$2y$10$xEdw/rhjOGHPU7byLC7pMuw1TOKidMpAUoBaXwpfbCmuwqrbWSRmS', 'bk8CdFaYkxNezxnRLGjR4vTkASdZe9thMQvl2SIHC4sEXPrEHkCXEm8zTuEd', '2019-01-18 17:57:25', '2019-01-18 17:57:25'),
(9, 'mohannad', 'admin@hh.com', NULL, '$2y$10$l6VajXUfxc4aYGpTGMIQkeDz0yrUh3PGXm.ZhhaHxkFgVHlMp/iam', 'a2kgm7c8gH71cMWnFSqM55uJMXtKFGGYUagGoExlCpClUAE9CLiJz4aDuutF', '2019-01-18 19:55:41', '2019-01-18 19:55:41'),
(10, 'mohannad_dev', 'mohannad12@n.com', NULL, '$2y$10$USqrMpLzV4XTju0wS082Eu2/saJRUYPXxnHjzqaV4LVdnOBrNpoA6', NULL, '2019-01-20 18:25:35', '2019-01-20 18:25:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
