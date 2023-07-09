-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 09 2023 г., 21:40
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `worker-app`
--

-- --------------------------------------------------------

--
-- Структура таблицы `avatars`
--

CREATE TABLE `avatars` (
  `id` bigint UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatarable_id` bigint UNSIGNED NOT NULL,
  `avatarable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bob', '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(2, 'John', '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(3, 'Elena', '2023-07-09 14:21:17', '2023-07-09 14:21:17');

-- --------------------------------------------------------

--
-- Структура таблицы `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `departments`
--

INSERT INTO `departments` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'IT', '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(2, 'Analitics', '2023-07-09 14:21:17', '2023-07-09 14:21:17');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_08_155150_create_workers_table', 1),
(6, '2023_04_10_054330_create_profiles_table', 1),
(7, '2023_07_10_172323_create_projects_table', 1),
(8, '2023_07_11_172740_create_project_workers_table', 1),
(9, '2023_07_12_182250_create_departments_table', 1),
(10, '2023_07_13_121150_create_positions_table', 1),
(11, '2023_07_14_150221_create_clients_table', 1),
(12, '2023_07_15_150547_create_avatars_table', 1),
(13, '2023_07_16_170854_create_reviews_table', 1),
(16, '2023_07_17_181019_create_tags_table', 2),
(17, '2023_07_18_181443_create_taggables_table', 2);

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
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `positions`
--

CREATE TABLE `positions` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `positions`
--

INSERT INTO `positions` (`id`, `title`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 1, '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(2, 'Manager', 1, '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(3, 'Designer', 1, '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(4, 'Boss', 1, '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(5, 'Designer', 2, '2023-07-09 14:21:17', '2023-07-09 14:21:17');

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `worker_id` bigint UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` int DEFAULT NULL,
  `finished_study_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `profiles`
--

INSERT INTO `profiles` (`id`, `worker_id`, `city`, `skill`, `experience`, `finished_study_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tokio', 'Backend developer', 5, '2020-06-01', '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(2, 2, 'RIO', 'frontend developer', 4, '2019-06-01', '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(3, 3, 'Berlin', 'developer', 2, '2021-06-01', '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(4, 4, 'Oslo', 'Disigned', 2, '2021-06-01', '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(5, 5, 'Almaty', 'Designer', 1, '2022-06-01', '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(6, 6, 'New York', 'backend', 10, '2013-06-01', '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(7, 7, 'Moscov', 'Boss-team lead-PM', 12, '2011-06-01', '2023-07-09 14:21:17', '2023-07-09 14:21:17');

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Shop', '2023-07-09 14:21:17', '2023-07-09 14:21:17'),
(2, 'Blog', '2023-07-09 14:21:17', '2023-07-09 14:21:17');

-- --------------------------------------------------------

--
-- Структура таблицы `project_worker`
--

CREATE TABLE `project_worker` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `worker_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project_worker`
--

INSERT INTO `project_worker` (`id`, `project_id`, `worker_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 1, NULL, NULL),
(3, 1, 5, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 2, 2, NULL, NULL),
(6, 2, 1, NULL, NULL),
(7, 2, 6, NULL, NULL),
(8, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reviewable_id` bigint UNSIGNED NOT NULL,
  `reviewable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `body`, `created_at`, `updated_at`, `reviewable_id`, `reviewable_type`) VALUES
(1, 'body 1', '2023-07-09 14:26:53', '2023-07-09 14:26:53', 5, 'App\\Models\\Worker'),
(2, 'body 2', '2023-07-09 14:26:53', '2023-07-09 14:26:53', 5, 'App\\Models\\Worker'),
(3, 'body 3', '2023-07-09 14:26:53', '2023-07-09 14:26:53', 5, 'App\\Models\\Worker'),
(4, 'body 1', '2023-07-09 14:26:53', '2023-07-09 14:26:53', 2, 'App\\Models\\Client'),
(5, 'body 2', '2023-07-09 14:26:53', '2023-07-09 14:26:53', 2, 'App\\Models\\Client'),
(6, 'body 3', '2023-07-09 14:26:53', '2023-07-09 14:26:53', 2, 'App\\Models\\Client'),
(7, 'body 1', '2023-07-09 14:29:33', '2023-07-09 14:29:33', 5, 'App\\Models\\Worker'),
(8, 'body 2', '2023-07-09 14:29:33', '2023-07-09 14:29:33', 5, 'App\\Models\\Worker'),
(9, 'body 3', '2023-07-09 14:29:33', '2023-07-09 14:29:33', 5, 'App\\Models\\Worker'),
(10, 'body 1', '2023-07-09 14:29:33', '2023-07-09 14:29:33', 2, 'App\\Models\\Client'),
(11, 'body 2', '2023-07-09 14:29:33', '2023-07-09 14:29:33', 2, 'App\\Models\\Client'),
(12, 'body 3', '2023-07-09 14:29:33', '2023-07-09 14:29:33', 2, 'App\\Models\\Client'),
(13, 'body 1', '2023-07-09 14:30:15', '2023-07-09 14:30:15', 5, 'App\\Models\\Worker'),
(14, 'body 2', '2023-07-09 14:30:15', '2023-07-09 14:30:15', 5, 'App\\Models\\Worker'),
(15, 'body 3', '2023-07-09 14:30:15', '2023-07-09 14:30:15', 5, 'App\\Models\\Worker'),
(16, 'body 1', '2023-07-09 14:30:15', '2023-07-09 14:30:15', 2, 'App\\Models\\Client'),
(17, 'body 2', '2023-07-09 14:30:15', '2023-07-09 14:30:15', 2, 'App\\Models\\Client'),
(18, 'body 3', '2023-07-09 14:30:15', '2023-07-09 14:30:15', 2, 'App\\Models\\Client');

-- --------------------------------------------------------

--
-- Структура таблицы `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `taggable_id` bigint UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'App\\Models\\Worker', NULL, NULL),
(2, 3, 5, 'App\\Models\\Worker', NULL, NULL),
(3, 2, 2, 'App\\Models\\Client', NULL, NULL),
(4, 3, 2, 'App\\Models\\Client', NULL, NULL),
(5, 1, 5, 'App\\Models\\Worker', NULL, NULL),
(6, 3, 5, 'App\\Models\\Worker', NULL, NULL),
(7, 2, 2, 'App\\Models\\Client', NULL, NULL),
(8, 3, 2, 'App\\Models\\Client', NULL, NULL),
(9, 1, 5, 'App\\Models\\Worker', NULL, NULL),
(10, 3, 5, 'App\\Models\\Worker', NULL, NULL),
(11, 2, 2, 'App\\Models\\Client', NULL, NULL),
(12, 3, 2, 'App\\Models\\Client', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'developer', NULL, NULL),
(2, 'big boss', NULL, NULL),
(3, 'designer', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `workers`
--

CREATE TABLE `workers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_married` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `workers`
--

INSERT INTO `workers` (`id`, `name`, `surname`, `email`, `age`, `description`, `is_married`, `created_at`, `updated_at`, `position_id`) VALUES
(1, 'Ivan', 'Ivanov', 'ivanov@mai.ru', 20, 'Some description', 0, '2023-07-09 14:21:17', '2023-07-09 14:21:17', 1),
(2, 'Karl', 'Petrov', 'karlpetrov@mai.ru', 50, 'Some description', 1, '2023-07-09 14:21:17', '2023-07-09 14:21:17', 2),
(3, 'Katya', 'Gazyeva', 'sssa@mai.ru', 41, 'Some description', 0, '2023-07-09 14:21:17', '2023-07-09 14:21:17', 1),
(4, 'Alina', 'Amirova', 'alina@mai.ru', 21, 'Some description', 0, '2023-07-09 14:21:17', '2023-07-09 14:21:17', 3),
(5, 'Karina', 'Darts', 'karina@mai.ru', 19, 'Some description', 0, '2023-07-09 14:21:17', '2023-07-09 14:21:17', 3),
(6, 'Alex', 'Karimaev', 'alex@mai.ru', 48, 'Some description', 1, '2023-07-09 14:21:17', '2023-07-09 14:21:17', 1),
(7, 'Anna', 'Popova', 'anna@mai.ru', 35, 'Step by step', 0, '2023-07-09 14:21:17', '2023-07-09 14:21:17', 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `positions_department_id_index` (`department_id`);

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_worker_id_index` (`worker_id`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project_worker`
--
ALTER TABLE `project_worker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_worker_project_id_worker_id_unique` (`project_id`,`worker_id`),
  ADD KEY `project_worker_project_id_index` (`project_id`),
  ADD KEY `project_worker_worker_id_index` (`worker_id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `taggables`
--
ALTER TABLE `taggables`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workers_position_id_index` (`position_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `avatars`
--
ALTER TABLE `avatars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `project_worker`
--
ALTER TABLE `project_worker`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `workers`
--
ALTER TABLE `workers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Ограничения внешнего ключа таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`);

--
-- Ограничения внешнего ключа таблицы `project_worker`
--
ALTER TABLE `project_worker`
  ADD CONSTRAINT `project_worker_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `project_worker_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`);

--
-- Ограничения внешнего ключа таблицы `workers`
--
ALTER TABLE `workers`
  ADD CONSTRAINT `workers_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `workers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
