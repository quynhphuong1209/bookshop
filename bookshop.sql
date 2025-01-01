-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2024 lúc 12:04 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `title`, `author`, `description`, `price`, `stock`, `category_id`) VALUES
(3, 'Building a Data Warehouse With Examples', '2024-12-30 00:31:14', '2024-12-30 00:31:14', NULL, 'data', 'Vincent Rainardi', '123', 1234567.00, 1, 2),
(4, 'Cơ sở dữ liệu', '2024-12-30 00:31:53', '2024-12-30 00:31:53', NULL, 'database', 'Mai Văn Thuỷ', 'Sách về cơ sở dữ liệu', 1234566.00, 1, 2),
(5, 'Book 1', '2024-12-30 00:33:01', '2024-12-30 00:33:01', NULL, 'Laravel for Beginners', 'John Doe', 'An introductory book on Laravel.', 19.99, 100, 1),
(6, 'Book 2', '2024-12-30 00:33:01', '2024-12-30 00:33:01', NULL, 'Mastering Laravel', 'Jane Smith', 'A comprehensive guide to mastering Laravel.', 29.99, 50, 2),
(7, 'Book 3', '2024-12-30 00:33:01', '2024-12-30 00:33:01', NULL, 'PHP for Everyone', 'Alice Johnson', 'A beginner-friendly guide to PHP.', 15.99, 70, 1),
(8, 'Book 4', '2024-12-30 00:33:01', '2024-12-30 00:33:01', NULL, 'Advanced PHP Programming', 'Bob Brown', 'An advanced book on PHP programming.', 25.99, 30, 2),
(9, 'Book 5', '2024-12-30 00:33:01', '2024-12-30 00:33:01', NULL, 'Web Development with Laravel', 'Chris Green', 'A practical guide to web development with Laravel.', 22.99, 80, 3),
(10, 'Hưng Kim', '2024-12-30 01:55:11', '2024-12-30 01:55:20', '2024-12-30 01:55:20', 'Sách 1', 'Hưng', 'sách', 123.00, 1, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@example.com|::1', 'i:1;', 1735548823),
('admin@example.com|::1:timer', 'i:1735548823;', 1735548823),
('hungkm2903@gmail.com|::1', 'i:1;', 1735548833),
('hungkm2903@gmail.com|::1:timer', 'i:1735548833;', 1735548833);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Data', '2024-12-27 01:20:03', '2024-12-27 01:20:37'),
(3, 'Technology', '2024-12-29 23:10:02', '2024-12-29 23:10:02'),
(4, 'Science', '2024-12-29 23:10:02', '2024-12-29 23:10:02'),
(5, 'Literature', '2024-12-29 23:10:02', '2024-12-29 23:10:02'),
(6, 'History', '2024-12-29 23:10:02', '2024-12-29 23:10:02'),
(7, 'Arts', '2024-12-29 23:10:02', '2024-12-29 23:10:02'),
(8, 'Technology', '2024-12-29 23:27:49', '2024-12-29 23:27:49'),
(9, 'Science', '2024-12-29 23:27:49', '2024-12-29 23:27:49'),
(10, 'Literature', '2024-12-29 23:27:49', '2024-12-29 23:27:49'),
(11, 'History', '2024-12-29 23:27:49', '2024-12-29 23:27:49'),
(12, 'Arts', '2024-12-29 23:27:49', '2024-12-29 23:27:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_12_18_112219_create_books_table', 1),
(2, '2024_12_18_112828_create_books_table', 2),
(3, '2024_12_18_112828_create_orders_table', 2),
(4, '2024_12_18_112828_create_users_table', 2),
(5, '2024_12_18_112829_create_categories_table', 2),
(6, '2024_12_18_112829_create_order_items_table', 2),
(7, '2024_12_18_112829_create_reviews_table', 2),
(8, '2014_10_12_100000_create_password_resets_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6t9OM94pryNr2JJP7uubOslcEbXI4ZREwPV9frOO', NULL, '::1', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREFET3NzUXRQMkFCSDNRWXRLU091YkJ5c0NCRk9LTHNMc1FkVFR5VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9ib29rc2hvcC9ib29rc2hvcC9wdWJsaWMvYm9va3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735527294),
('GusYnaClTti5rTvDcBZ8ZZLwk9hr4vUPtoRZ9BIn', NULL, '::1', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkpFOUxHeTA3SFVZTDJCWllHdlh4VzMwRFdkYWE1N0pnZVlOaVhIMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9ib29rc2hvcC9ib29rc2hvcC9wdWJsaWMvYm9va3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735527294),
('jeJMpsGinlPxOhcM3PP3xupCLMTl3d0y6CTHMGZ8', NULL, '::1', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZG9MS3cwWlB5Nm45M3FjcldzdXRGZTFuMFFQSjN1TjY1ZTQ2V0VVcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9ib29rc2hvcC9ib29rc2hvcC9wdWJsaWMvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1735527291),
('l6o9DbqjrD8xbNNsFNqtmaP46rvEwG5druYnJI3C', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDRaWDZEMVRoQ1l6VlVPS2NyTm0ySHUzT2ZpcExPa0tuRW8xUnM0OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1735284109),
('nV9Lg2LvJrRrcRX7DzLnxCicS74wdtGDcyZ10wqF', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1BYTWlqQmNkcVhTc2JuakVvN0oxMUxzektRVU85c0h4Y3BFbjROSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9ib29rc2hvcC9ib29rc2hvcC9wdWJsaWMvYm9va3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735287691),
('NYNFsIZhymOd5vUgK7yG2JW0XF4n1LI7fqvDo9w6', NULL, '::1', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEFrZXpiOXJRM3lUcGgzOG9nSVBTTXRBT1FVUHRteVhzRnhQMVJIWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9ib29rc2hvcC9ib29rc2hvcC9wdWJsaWMvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1735527291),
('ua0dhZERuejpvr1ZPSt4eqPyLdyLie8UnBYxJAVk', 11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS0ZITHFDTDByNlRzeFprdGFGcmxXdlBxb0E3VjhuaWlqZkxVdDlxVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9ib29rc2hvcC9ib29rc2hvcC9wdWJsaWMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMTt9', 1735549056);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '$2y$12$sIN7C0rEiEe6.ltxRZpree8.wDzcE1oCOux0XThwAjhTz.NBLtp9K', 'admin', '2024-12-29 23:27:47', '2024-12-29 23:27:47'),
(2, 'User1', 'user1@example.com', '$2y$12$9jwOv5mBHD4cI2R0x1PvZe0oNGpvILLEMGHHFLiyFmceFEgJB1Kam', 'user', '2024-12-29 23:27:47', '2024-12-29 23:27:47'),
(3, 'User2', 'user2@example.com', '$2y$12$tJuIL057Wb7zD.wIXvaKA.Ey445FlE2imQgjH.ZUNOI7rGaCRaSfy', 'user', '2024-12-29 23:27:48', '2024-12-29 23:27:48'),
(4, 'User3', 'user3@example.com', '$2y$12$NhMATBgUd8BTxJXzkJuc6.N5Jp9OK0pva11eUXL.DiXQ2ezs9duNK', 'user', '2024-12-29 23:27:48', '2024-12-29 23:27:48'),
(5, 'User4', 'user4@example.com', '$2y$12$jHDainIxu6lQ0QADihXsTeXx9gwBkzj40R376wuC7REb4jl4x0jZe', 'user', '2024-12-29 23:27:48', '2024-12-29 23:27:48'),
(6, 'Default User', 'hung@emp.com', '123456', 'user', '2024-12-30 07:40:08', '2024-12-30 07:40:08'),
(7, 'Hưng Kim', '2211090016@studenthuph.edu.vn', '$2y$12$9gsTgtNy/3vpaPKlx9Lyh.fWzoJPB31tFZBLw4hKUu.zUhkjLMmDO', 'user', '2024-12-30 00:40:55', '2024-12-30 00:40:55'),
(8, 'Alice Brown', 'alice@example.com', '$2y$10$TKh8H1.PIb1df.7Jh4pYPu/3BuWyCMs0fZml63n90PmyAcRpP.tuy', 'user', '2024-12-30 07:42:52', '2024-12-30 07:42:52'),
(9, 'Bob Smith', 'bob@example.com', '$2y$10$TKh8H1.PIb1df.7Jh4pYPu/3BuWyCMs0fZml63n90PmyAcRpP.tuy', 'admin', '2024-12-30 07:42:52', '2024-12-30 07:42:52'),
(10, 'Hưng Kim', 'hungkm2903@gmail.com', '$2y$12$BEFUm435gqGUd4X9/c7XKOQTYlLnS39bDlPjtRQ3RSp5.xmkjvmo6', 'user', '2024-12-30 01:23:43', '2024-12-30 01:23:43'),
(11, 'Hưng Kim', 'met@gmail.com', '$2y$12$0D/9ObrQfMQd7qXY0lEPcOGKEhhyYHpfdFD3D4SNu6Vzb5Vq764yu', 'user', '2024-12-30 01:54:13', '2024-12-30 01:54:13');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_book_id_foreign` (`book_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
