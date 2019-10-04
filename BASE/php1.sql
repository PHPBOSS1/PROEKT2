-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Окт 04 2019 г., 09:40
-- Версия сервера: 5.7.27-0ubuntu0.18.04.1
-- Версия PHP: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `php1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(2, '000', '000', '2019-10-01 05:07:20', '2019-10-01 05:07:20'),
(3, 'repellat', 'repellat', '2019-10-01 11:01:33', '2019-10-01 11:01:33'),
(4, 'rerum', 'rerum', '2019-10-01 11:06:24', '2019-10-01 11:06:24'),
(5, 'ut', 'ut', '2019-10-01 11:06:24', '2019-10-01 11:06:24'),
(6, 'vero', 'vero', '2019-10-01 11:06:24', '2019-10-01 11:06:24'),
(7, 'doloremque', 'doloremque', '2019-10-01 11:06:24', '2019-10-01 11:06:24'),
(8, 'tenetur', 'tenetur', '2019-10-01 11:06:24', '2019-10-01 11:06:24');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `text`, `user_id`, `post_id`, `status`, `created_at`, `updated_at`) VALUES
(2, '0', 16, 6, 1, '2019-10-03 07:18:50', '2019-10-03 07:53:59'),
(3, '000', 16, 6, 0, '2019-10-03 07:20:48', '2019-10-03 07:20:48'),
(4, '000', 15, 7, 0, '2019-10-03 07:54:25', '2019-10-03 07:54:25');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_27_133631_created_categories_table', 1),
(4, '2019_09_27_175543_create_tags_table', 1),
(5, '2019_09_27_175746_create_comments_table', 1),
(6, '2019_09_27_175806_create_posts_table', 1),
(7, '2019_09_27_175846_create_subscriptions_table', 1),
(8, '2019_09_27_182354_created_post_tags_table', 1),
(9, '2019_09_30_113950_add_avatar_column_to_users', 2),
(10, '2019_09_30_175612_make_password_nullable', 3),
(11, '2019_10_01_090510_add_date_to_posts', 4),
(12, '2019_10_01_094021_add_image_to_posts', 5),
(13, '2019_10_01_180235_add_description_to_users', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `is_featured` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `user_id`, `status`, `views`, `is_featured`, `created_at`, `updated_at`, `date`, `image`, `description`) VALUES
(6, 'Qui molestiae expedita nam ut voluptatem quo voluptates occaecati.', 'qui-molestiae-expedita-nam-ut-voluptatem-quo-voluptates-occaecati', 'Voluptatem tempora quo repellendus et est molestiae occaecati.', 1, 6, 1, 2128, 0, '2019-10-01 11:13:03', '2019-10-01 11:13:03', '2019-10-01', 'photo1.png', NULL),
(7, 'Hic qui in et voluptatem dolores repudiandae.', 'hic-qui-in-et-voluptatem-dolores-repudiandae', 'In quisquam labore quae laborum magnam.', 1, 6, 1, 1358, 0, '2019-10-01 11:13:03', '2019-10-01 11:13:03', '2019-10-01', 'photo1.png', NULL),
(8, 'Aut aut cupiditate modi aut nobis.', 'aut-aut-cupiditate-modi-aut-nobis', 'Totam accusantium incidunt nihil esse ratione dicta.', 1, 6, 1, 1126, 0, '2019-10-01 11:13:03', '2019-10-01 11:13:03', '2019-10-01', 'photo1.png', NULL),
(9, 'Ab ipsum iure enim facere id qui.', 'ab-ipsum-iure-enim-facere-id-qui', 'Dolore eum rerum voluptate voluptas labore expedita.', 1, 6, 1, 4162, 0, '2019-10-01 11:13:03', '2019-10-01 11:13:03', '2019-10-01', 'photo1.png', NULL),
(10, 'Non veniam maiores debitis deleniti molestias dolore vero.', 'non-veniam-maiores-debitis-deleniti-molestias-dolore-vero', 'Beatae distinctio iure quod repellat non harum voluptate ipsam.', 1, 6, 1, 460, 0, '2019-10-01 11:13:03', '2019-10-01 11:13:03', '2019-10-01', 'photo1.png', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(2, 4, 2, NULL, NULL),
(3, 4, 4, NULL, NULL),
(4, 5, 1, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 5, 4, NULL, NULL),
(7, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(2, '100@hkkj.kk11', NULL, '2019-10-03 09:18:04', '2019-10-03 09:18:04'),
(3, '50@hkkj.kk11', NULL, '2019-10-03 09:23:21', '2019-10-03 09:23:21'),
(4, '00000@hkkj.kk11', NULL, '2019-10-03 09:37:45', '2019-10-03 09:37:45'),
(5, 'ubunt1u@hkkj.kk1', 'keykaJpkrtkPSt0COvAT9bvFp8CpNfAOCNV8I7Du6gvufIos4lpdwfEO16ApeA4X9SlP7laUkRbGre4m2Cy5vHyWfO6DKhwRSOje', '2019-10-03 09:40:10', '2019-10-03 09:40:10'),
(6, 'ubuntu2@hkkj.kk1', 'TusCIl6lfZ3l7Jc4StmSTcVbmS7nfQEUoBLqNFTQSQc9mEL5PTGrtAh2Ui3jMdjY0GmO4BGnkGyQVH3JZTfoS77fXpVpRdOFk1fn', '2019-10-03 09:48:02', '2019-10-03 09:48:02'),
(7, '00000@hkkj.kk14', 'em7nbRzIa7dHl9IEsURdVIbamAyiDwsqPeyjxhuopJJPaDXw56A9pqAI8Qz14ZCLH1LVQekGLY3LJ9rwZhwm7JFYluhWkByXzOa3', '2019-10-03 09:53:46', '2019-10-03 09:53:46'),
(8, '5550@hkkj.kk14', NULL, '2019-10-03 09:57:08', '2019-10-03 09:57:45'),
(9, 'u8@hkkj.kk1', NULL, '2019-10-03 09:57:21', '2019-10-03 10:56:30');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'программист', 'programmist', '2019-09-30 05:39:17', '2019-09-30 05:39:17'),
(2, 'программист', 'programmist-1', '2019-09-30 05:39:20', '2019-09-30 05:39:20'),
(3, 'программист', 'programmist-2', '2019-09-30 06:08:28', '2019-09-30 06:08:28'),
(4, 'привет', 'privet', '2019-09-30 07:42:09', '2019-09-30 07:42:09'),
(5, 'molestiae', 'molestiae', '2019-10-01 11:07:20', '2019-10-01 11:07:20'),
(6, 'iste', 'iste', '2019-10-01 11:07:20', '2019-10-01 11:07:20'),
(7, 'autem', 'autem', '2019-10-01 11:07:20', '2019-10-01 11:07:20'),
(8, 'et', 'et', '2019-10-01 11:07:20', '2019-10-01 11:07:20'),
(9, 'exercitationem', 'exercitationem', '2019-10-01 11:07:20', '2019-10-01 11:07:20');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `status`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(6, 'jhkf0', '00000@hkkj.kk6', '$2y$10$ynmM59WdImjnCKEYynVSIuqQguuJlowM1Oiy1wc13OU3qikgSxlSC', 0, 0, NULL, '2019-09-30 08:32:04', '2019-09-30 08:32:04', NULL),
(7, '0000', '00000@hkkj.kk11', '$2y$10$6i6B1X7CI7C.E4/Wm2DaEO2OLgkBWEW7k7fRHbJPwBiU7EIa9MAVW', 0, 0, NULL, '2019-09-30 08:35:27', '2019-09-30 15:17:52', 'sSUCsYDlOz.jpeg'),
(9, '0000', '00000@hkkj.kk14', '$2y$10$OMbquKfczimQW.IuAFRobe6WHmaAC4j6ruJWVmtIZ6I2UPFP1DHI6', 0, 0, NULL, '2019-09-30 08:53:09', '2019-09-30 08:53:09', '2L3dv2GefQ.jpeg'),
(10, 'kjkjkjk', '00000@hkkj.kh', '$2y$10$KiKSQxuO5ttiqyEPNzO6Ie3llD6xXI4V2cbKfbMqiwAfwK/KsGR1C', 0, 0, NULL, '2019-09-30 09:04:33', '2019-09-30 09:04:33', 'zaHJOi5shV.jpeg'),
(11, 'jhkf', '00000@hkkj.k11', '$2y$10$95nQ8qcI.MyJkWU7SAFhYeytaZUVZj9JDHmoXyC9jcUAsj0JT7CWS', 0, 0, NULL, '2019-09-30 15:05:57', '2019-09-30 15:17:26', 'AnviHnIuUt.jpeg'),
(13, 'jhkf', '00000@hkkj.kk19', '$2y$10$ChY0SQXAlaTZp2wi8..wHe.CTtLk1A1.3FmX9EDP.AhOd6.RSl4Nu', 0, 0, NULL, '2019-09-30 15:34:45', '2019-09-30 15:34:45', NULL),
(14, 'jhkf', '00000@hkkj.kk1', '$2y$10$SuFbYBZLmohlHWl3aGsVluPJATNoGV6Si8LCnshpuvQ0NOK2MgHfW', 0, 0, NULL, '2019-09-30 15:47:43', '2019-09-30 15:47:44', NULL),
(15, 'ubuntu', 'ubuntu@hkkj.kk1', '$2y$10$5CQLBtZ7yYTHFvvavKdBiOKDgcVQ5yuhdFfyY0cy5nTyqsth982am', 1, 0, 'j7UmGzeePy1SJARbSz6ZnkrP6IuxmMAGry6HfMtBGqIP8FtP4uQojMiucfsp', '2019-10-02 08:46:28', '2019-10-02 08:46:28', NULL),
(16, 'ubuntu2', 'ubuntu2@hkkj.kk1', '$2y$10$uw8T/Jov64DmdyMond5HbOtjtorDoo.CGXbeuZyLVxwWTsCu8W/mS', 0, 0, 'Ho7ioehEwrV2xZL2VW4ZPdKyIecKLBl9PJN6Rj4nFJkarm6veDPcAoPh3XI1', '2019-10-02 10:24:21', '2019-10-02 14:50:45', '9piaP2LvaM.png');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
