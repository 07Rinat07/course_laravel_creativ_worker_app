-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 09 2023 г., 13:05
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
(1, 'IT', '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(2, 'Analitics', '2023-07-09 05:20:19', '2023-07-09 05:20:19');

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
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_01_08_155150_create_workers_table', 1),
(16, '2023_04_10_054330_create_profiles_table', 1),
(17, '2023_07_10_172323_create_projects_table', 1),
(18, '2023_07_11_172740_create_project_workers_table', 1),
(19, '2023_12_09_182250_create_departments_table', 1),
(20, '2023_12_10_121150_create_positions_table', 1);

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
(1, 'Developer', 1, '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(2, 'Manager', 1, '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(3, 'Designer', 1, '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(4, 'Boss', 1, '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(5, 'Designer', 2, '2023-07-09 05:20:19', '2023-07-09 05:20:19');

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
(1, 1, 'Tokio', 'Backend developer', 5, '2020-06-01', '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(2, 2, 'RIO', 'frontend developer', 4, '2019-06-01', '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(3, 3, 'Berlin', 'developer', 2, '2021-06-01', '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(4, 4, 'Oslo', 'Disigned', 2, '2021-06-01', '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(5, 5, 'Almaty', 'Designer', 1, '2022-06-01', '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(6, 6, 'New York', 'backend', 10, '2013-06-01', '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(7, 7, 'Moscov', 'Boss-team lead-PM', 12, '2011-06-01', '2023-07-09 05:20:19', '2023-07-09 05:20:19');

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
(1, 'Shop', '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(2, 'Blog', '2023-07-09 05:20:19', '2023-07-09 05:20:19');

-- --------------------------------------------------------

--
-- Структура таблицы `project_workers`
--

CREATE TABLE `project_workers` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `worker_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project_workers`
--

INSERT INTO `project_workers` (`id`, `project_id`, `worker_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(2, 1, 1, '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(3, 1, 5, '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(4, 1, 4, '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(5, 2, 7, '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(6, 2, 1, '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(7, 2, 6, '2023-07-09 05:20:19', '2023-07-09 05:20:19'),
(8, 2, 3, '2023-07-09 05:20:19', '2023-07-09 05:20:19');

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
(1, 'Ivan', 'Ivanov', 'ivanov@mai.ru', 20, 'Some description', 0, '2023-07-09 05:20:19', '2023-07-09 05:20:19', 1),
(2, 'Karl', 'Petrov', 'karlpetrov@mai.ru', 50, 'Some description', 1, '2023-07-09 05:20:19', '2023-07-09 05:20:19', 2),
(3, 'Katya', 'Gazyeva', 'sssa@mai.ru', 41, 'Some description', 0, '2023-07-09 05:20:19', '2023-07-09 05:20:19', 1),
(4, 'Alina', 'Amirova', 'alina@mai.ru', 21, 'Some description', 0, '2023-07-09 05:20:19', '2023-07-09 05:20:19', 3),
(5, 'Karina', 'Darts', 'karina@mai.ru', 19, 'Some description', 0, '2023-07-09 05:20:19', '2023-07-09 05:20:19', 3),
(6, 'Alex', 'Karimaev', 'alex@mai.ru', 48, 'Some description', 1, '2023-07-09 05:20:19', '2023-07-09 05:20:19', 1),
(7, 'Anna', 'Popova', 'anna@mai.ru', 35, 'Step by step', 0, '2023-07-09 05:20:19', '2023-07-09 05:20:19', 4);

--
-- Индексы сохранённых таблиц
--

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
-- Индексы таблицы `project_workers`
--
ALTER TABLE `project_workers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_workers_project_id_worker_id_unique` (`project_id`,`worker_id`),
  ADD KEY `project_workers_project_id_index` (`project_id`),
  ADD KEY `project_workers_worker_id_index` (`worker_id`);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- AUTO_INCREMENT для таблицы `project_workers`
--
ALTER TABLE `project_workers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- Ограничения внешнего ключа таблицы `project_workers`
--
ALTER TABLE `project_workers`
  ADD CONSTRAINT `project_workers_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `project_workers_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`);

--
-- Ограничения внешнего ключа таблицы `workers`
--
ALTER TABLE `workers`
  ADD CONSTRAINT `workers_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `workers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
