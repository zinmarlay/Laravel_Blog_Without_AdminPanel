-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2019 at 05:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Odit', '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(2, 'Enim', '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(3, 'Placeat', '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(4, 'Tempora', '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(5, 'Voluptatem', '2019-03-16 21:53:56', '2019-03-16 21:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Est recusandae dolor asperiores suscipit reiciendis provident voluptatem laboriosam. Dolores voluptate sit alias quisquam hic explicabo. Non voluptatem consequatur veniam necessitatibus pariatur necessitatibus ad. Rerum et magnam quia ea distinctio perspiciatis et.', 2, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(2, 'Voluptas quia eius nihil qui dolores. Deleniti nam dignissimos nobis itaque aperiam possimus. Quam quidem nam possimus pariatur id dolores quis. Dolor dolores ut illo temporibus voluptates quam ipsa.', 3, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(3, 'Et adipisci et rerum non. Beatae similique fugiat dolorem illo. Repudiandae iure eligendi eos adipisci molestias rerum impedit et.', 6, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(4, 'Magni voluptate fugiat quos qui est quidem. Vel qui vel ad omnis. Temporibus aut omnis eos ducimus distinctio nihil pariatur.', 2, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(5, 'Tenetur sed et at. Pariatur sed asperiores numquam repudiandae illo facilis odio. Quidem voluptatem ut aut voluptatem.', 3, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(6, 'Dignissimos accusamus repellat quos ut neque. Excepturi consectetur voluptatibus modi ea. Qui accusamus nam quo dolorum est voluptas vitae. At quaerat et at dicta hic quaerat quae eius. Eius possimus dolores suscipit iusto quidem omnis minima.', 1, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(7, 'Et nisi nesciunt omnis voluptatem. Est molestiae reprehenderit nihil hic. Id et culpa repellendus laboriosam aperiam dolor eos distinctio. Rerum nihil ut molestiae id nostrum voluptas est.', 7, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(8, 'Sunt et voluptatibus dignissimos ut eius et. Modi qui aliquid libero qui itaque omnis.', 7, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(9, 'Vitae incidunt ipsa sunt architecto dolorem ipsam sequi. Ut dignissimos assumenda voluptatum provident aut eveniet est. Et est laboriosam dolores alias amet. Corporis ducimus animi est et veritatis mollitia quod tenetur.', 5, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(10, 'Non voluptas velit et molestias laboriosam eum. Alias dolor adipisci quod iure. Dignissimos explicabo aut iusto vitae est doloremque eos assumenda. Quia rem qui dignissimos rerum.', 4, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(11, 'Consequuntur nisi mollitia est quos quod delectus ab. Non fugit doloremque quo distinctio non. Vel cupiditate sequi sit voluptatem quis. Veritatis a vitae doloribus aut.', 9, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(12, 'Nisi inventore pariatur aut deleniti rerum. Quibusdam autem quia eum asperiores. Commodi et dolores impedit eos eos repellendus voluptates. Odit corrupti autem neque iure pariatur corrupti.', 10, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(13, 'Velit atque facere dicta ut recusandae. Ut esse et et repudiandae nostrum ex. Debitis quod maiores sed aut vero eum.', 9, '2019-03-16 21:53:57', '2019-03-16 21:53:57'),
(14, 'Aspernatur assumenda aspernatur neque est laboriosam. Architecto natus facilis consequuntur facere. Nulla consectetur sint eligendi ut voluptatem aliquam.', 1, '2019-03-16 21:53:57', '2019-03-16 21:53:57'),
(15, 'Aut occaecati ipsam labore est recusandae et. Quod corporis velit aperiam voluptates ut ad. Totam maiores labore sit minima voluptatum. Deserunt rem deleniti et nihil architecto eveniet quia. Et nam reiciendis ducimus tempore quidem rerum.', 4, '2019-03-16 21:53:57', '2019-03-16 21:53:57'),
(16, 'Explicabo iure qui minus. Magnam exercitationem quod consequuntur eos. Reprehenderit neque aut labore omnis consequatur. Consequuntur ut voluptas debitis.', 7, '2019-03-16 21:53:57', '2019-03-16 21:53:57'),
(17, 'Doloribus corporis vero architecto in distinctio. In veritatis aut voluptates asperiores soluta et reprehenderit. Nihil quisquam vel et facilis qui in.', 9, '2019-03-16 21:53:57', '2019-03-16 21:53:57'),
(18, 'Voluptates vitae sit qui reiciendis atque. Corrupti dignissimos repellat nisi. Et dolores voluptates dolor qui.', 9, '2019-03-16 21:53:57', '2019-03-16 21:53:57'),
(19, 'Nobis dolores nostrum placeat. Dignissimos ut incidunt commodi aut molestiae commodi et magni.', 6, '2019-03-16 21:53:57', '2019-03-16 21:53:57'),
(20, 'Animi eligendi voluptas provident excepturi. Voluptas culpa quis iste consequatur eos modi optio quia. Maxime sunt deleniti id aut incidunt incidunt sit. Laudantium iusto et facere ut perferendis eos.', 3, '2019-03-16 21:53:57', '2019-03-16 21:53:57'),
(21, 'comment', 10, '2019-03-16 22:26:14', '2019-03-16 22:26:14'),
(22, 'comment 2', 10, '2019-03-16 22:26:22', '2019-03-16 22:26:22'),
(23, 'test\r\n', 11, '2019-03-22 20:59:34', '2019-03-22 20:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2019_03_03_043932_create_posts_table', 1),
(31, '2019_03_16_044749_create_categories_table', 1),
(32, '2019_03_17_041351_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Dicta optio exercitationem aut blanditiis.', 'Sequi necessitatibus temporibus molestiae quaerat at facilis vitae. Dolore sed voluptate vel veritatis occaecati autem. Doloremque sed et quo ullam est ipsa consequatur.', 3, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(2, 'Aspernatur in id beatae.', 'Velit fuga totam reiciendis. Possimus aliquid sint rerum reiciendis facere. Est libero sit accusantium a.', 2, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(3, 'Et odit voluptate aspernatur aperiam velit quis quas sapiente.', 'Vero consequuntur animi nulla et. Reiciendis alias libero qui earum iusto quis sit. Eaque a maxime atque quia itaque qui. Similique aut vero impedit ipsam tenetur.', 3, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(4, 'Blanditiis quisquam unde rem hic quia.', 'At aliquid et exercitationem necessitatibus est. Animi ipsa eius placeat autem et. Corrupti unde dolor incidunt et. Saepe ea nam pariatur culpa.', 2, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(5, 'Tenetur eos minima ad sed voluptas voluptatum blanditiis autem.', 'Dolore officiis omnis reiciendis enim rerum itaque delectus. Voluptatem praesentium voluptates similique excepturi at. Voluptatem porro esse sed ea earum. Omnis voluptatum et ut et rerum ut.', 2, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(6, 'Nihil excepturi quis corrupti temporibus quo.', 'Unde fugit voluptas natus quia tempora molestiae et. Illo adipisci sapiente praesentium iure error enim. Recusandae et itaque aperiam assumenda provident et. Distinctio repudiandae sit itaque minima labore unde ipsum. Consequatur perspiciatis dolor modi sint impedit sit quam.', 1, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(7, 'Amet est sint temporibus.', 'Sint alias velit eum quia minima. Et voluptas et reiciendis omnis. Consectetur aut recusandae et odio voluptas assumenda iure. Incidunt ducimus dolor eum est.', 3, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(8, 'Voluptas dolores sequi ullam eius tempore nam sed.', 'Consequatur odit quia sed ratione unde ut culpa. Libero blanditiis assumenda et iure qui aut ea quisquam. Est exercitationem velit mollitia suscipit veniam velit.', 1, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(9, 'Rerum explicabo libero sed quo nihil laudantium.', 'Et et corrupti molestias nulla quam dolor illo molestiae. Architecto commodi modi illum saepe. Soluta labore magnam ut quis ut tempora quod. Sit repudiandae officia asperiores id. Nam officia quod quod omnis dolor voluptatem odit.', 2, '2019-03-16 21:53:56', '2019-03-16 21:53:56'),
(10, 'Nostrum error ut adipisci ut asperiores deleniti.', 'Praesentium qui doloremque quia quaerat sed. Qui cum quam odio reprehenderit perspiciatis. Consequatur dolor numquam eaque voluptas quam sint.', 1, '2019-03-16 21:53:56', '2019-03-16 21:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'test@gmail.com', '$2y$10$c8U5UVtWefKSbxOaEOxJT.so3VcsWQ/JA1IqL5M5H/Zi/gXnq.8tW', 'wUv0Fnso3GJw5hwOIT529fu4NwWbEnQDpl3gDTMqbuvKnCkLYjk3ArpqHB4A', '2019-03-17 00:12:52', '2019-03-17 00:13:01');

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
