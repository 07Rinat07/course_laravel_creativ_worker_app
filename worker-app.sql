-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 11 2023 г., 23:46
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
(1, 'Bus Driver', '2023-07-11 17:45:34', '2023-07-11 17:45:34'),
(2, 'Photoengraving Machine Operator', '2023-07-11 17:45:34', '2023-07-11 17:45:34'),
(3, 'Ship Captain', '2023-07-11 17:45:34', '2023-07-11 17:45:34');

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
(14, '2023_07_17_181019_create_tags_table', 1),
(15, '2023_07_18_181443_create_taggables_table', 1);

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
(1, 'Optometrist', 1, '2023-07-11 17:45:34', '2023-07-11 17:45:34'),
(2, 'Clerk', 1, '2023-07-11 17:45:34', '2023-07-11 17:45:34'),
(3, 'Radio and Television Announcer', 2, '2023-07-11 17:45:34', '2023-07-11 17:45:34'),
(4, 'Physics Teacher', 3, '2023-07-11 17:45:34', '2023-07-11 17:45:34'),
(5, 'Biophysicist', 1, '2023-07-11 17:45:34', '2023-07-11 17:45:34');

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
(1, 1, 'Port Jamilville', 'Webmaster', 7, '1988-03-11', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(2, 2, 'Walkermouth', 'Chiropractor', 7, '2017-10-23', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(3, 3, 'Allantown', 'Highway Maintenance Worker', 2, '1974-10-10', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(4, 4, 'North Jonathonfurt', 'Police Detective', 4, '2012-12-09', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(5, 5, 'Port Mireilleside', 'Surgical Technologist', 7, '2022-03-29', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(6, 6, 'West Joe', 'Railroad Yard Worker', 7, '1979-08-04', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(7, 7, 'Lake Lilliana', 'Pest Control Worker', 2, '2022-05-28', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(8, 8, 'West Cyrusstad', 'Secretary', 8, '1998-05-24', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(9, 9, 'New Wiley', 'Customer Service Representative', 7, '1977-12-01', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(10, 10, 'Reichertville', 'Cooling and Freezing Equipment Operator', 8, '2000-12-19', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(11, 11, 'Linashire', 'Fire Inspector', 9, '2005-08-23', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(12, 12, 'Raeganmouth', 'Bartender Helper', 9, '1984-04-03', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(13, 13, 'Kristinburgh', 'Parking Lot Attendant', 7, '1980-05-03', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(14, 14, 'Jacobsonview', 'Landscaping', 9, '2019-03-31', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(15, 15, 'Ethaside', 'Musician', 6, '2018-10-20', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(16, 16, 'North Margarettabury', 'Rigger', 5, '2001-10-22', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(17, 17, 'New Todmouth', 'Librarian', 5, '1982-09-24', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(18, 18, 'Turcotteberg', 'Police Identification OR Records Officer', 2, '1970-01-06', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(19, 19, 'New Lewberg', 'Gauger', 3, '1981-09-19', '2023-07-11 17:45:35', '2023-07-11 17:45:35'),
(20, 20, 'Grahamburgh', 'Welding Machine Tender', 4, '2001-05-22', '2023-07-11 17:45:35', '2023-07-11 17:45:35');

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
(1, 'Perry Hagenes', 'Windler', 'hudson.sylvia@example.net', 23, 'Provident esse sapiente a ut ut. Aut cupiditate rerum aperiam dolorem. Soluta quo vitae quidem illo incidunt modi eius. Cumque sit non sed. Et in et quis facere omnis laboriosam. Ab dignissimos nulla omnis reiciendis sed eveniet reiciendis. Et est corrupti maxime atque accusantium molestiae.', 0, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 1),
(2, 'Kari Baumbach', 'McGlynn', 'istracke@example.net', 20, 'Quia dolorem est iure quo aut sint. Blanditiis odio rerum earum placeat et iusto mollitia. Inventore inventore optio laborum earum nisi omnis facilis. Corrupti quidem qui qui delectus expedita sit. Iste omnis fuga veniam a maiores itaque. Blanditiis sapiente ut animi magni et.', 1, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 1),
(3, 'Jackie Beahan', 'Sanford', 'chance.larkin@example.com', 31, 'Placeat velit quod voluptas est quia exercitationem in laboriosam. Facere nobis cumque et nihil ut qui. Sint at saepe non dignissimos officiis quia. Id tenetur a cumque non quasi eligendi. Omnis aut reiciendis ut. Accusamus quasi tenetur sit esse cum.', 1, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 1),
(4, 'Athena Hickle', 'Schroeder', 'schneider.benedict@example.org', 31, 'Possimus et omnis officia. Voluptates aut necessitatibus quis quibusdam. Aut possimus reprehenderit nulla vel veritatis. Suscipit a natus vero sit. Sit aliquam est totam consequatur non. Quas impedit fugit aut. Impedit nesciunt quod cum dignissimos accusantium.', 1, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 3),
(5, 'Dr. Cecil Bogisich', 'Yost', 'hugh69@example.org', 21, 'Consequatur inventore qui voluptas iure eum. Quia quam neque at harum. Non quis quia laborum ut. Ducimus quia amet assumenda repudiandae delectus est suscipit nesciunt. Voluptatem architecto iusto consequatur omnis quia.', 0, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 4),
(6, 'Bette Kreiger III', 'Von', 'lhomenick@example.org', 36, 'Praesentium eos consequatur nostrum ab. Dicta deleniti accusamus et alias. Voluptate ab sequi nostrum provident doloremque. Cumque incidunt esse facilis saepe velit nostrum in.', 0, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 4),
(7, 'Kiana Brekke', 'Halvorson', 'ulesch@example.net', 28, 'Nihil sequi sit deserunt itaque nesciunt doloribus. Debitis est neque praesentium et esse culpa non. Ut nihil voluptatem facere explicabo nisi non dolor. Corrupti enim impedit excepturi odio. Reprehenderit ratione quo aut eum cupiditate. Ut id eaque ut qui. Minima rerum quo vitae eos expedita aut.', 0, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 5),
(8, 'Princess Crona Jr.', 'Rau', 'adeline.corwin@example.com', 29, 'Omnis magnam porro eveniet rerum ipsa. Provident rerum corrupti eius non. Illo ut quis saepe et eum dolore velit. Laboriosam optio doloremque similique cumque.', 1, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 1),
(9, 'Darrel Yundt DVM', 'O\'Hara', 'connelly.robert@example.org', 19, 'Repellat ut fugit sit est quod ut mollitia. Quis labore consequatur quod eaque error sit. Ut quia omnis dolor voluptatem tenetur temporibus repellendus. Quaerat illo omnis libero laborum nisi distinctio repellendus. Qui maxime voluptate quasi omnis deserunt ut.', 1, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 5),
(10, 'Lamar Skiles', 'Mann', 'terrence.smith@example.org', 35, 'Aspernatur fuga amet eum aliquid eos iste. Omnis quam eligendi dignissimos id omnis in vel. Numquam ut aliquid cumque ullam sunt cum id. Vel ipsa ut vel expedita amet ullam vel vel. Aliquam officiis nisi vel. Voluptatem odio omnis qui ex ut. Laudantium ipsa et et quia cumque.', 1, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 1),
(11, 'Vickie Daugherty', 'O\'Hara', 'beer.florida@example.net', 27, 'Quaerat occaecati quia facilis culpa voluptatem rerum. Fugit quis aut illo dolores. Voluptate vel qui earum sunt animi exercitationem odio. Fugit sint incidunt in quia. Saepe non et velit qui. Ipsum voluptates possimus magnam animi. Soluta ut autem saepe itaque ut aut.', 1, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 2),
(12, 'Prof. Jaeden Strosin', 'Stamm', 'callie.bruen@example.net', 34, 'Dolorum cum officiis et ratione. Consequatur aspernatur rerum ut reprehenderit. Voluptas qui autem recusandae quia inventore quia debitis. Tempora neque repudiandae quo culpa officia quibusdam dolorem.', 1, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 3),
(13, 'Agustina Gleichner', 'Reilly', 'nparisian@example.net', 31, 'Magnam sit et impedit. Voluptate quaerat et eos ut. Non ab molestiae quaerat ducimus quasi. Enim sit excepturi velit ut quisquam.', 1, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 1),
(14, 'Dr. Jeremie Monahan', 'Walter', 'gilberto18@example.net', 22, 'Qui sed dignissimos quam ea. Id consequatur in voluptatem sit. Unde reprehenderit enim consequatur quia eius. Quibusdam dolorem dolorem excepturi nemo consequatur praesentium quia.', 0, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 3),
(15, 'Domingo Robel', 'Schmidt', 'larson.dillan@example.org', 30, 'Voluptatem saepe alias sit officiis dolor ut. Delectus voluptatem minima ad rerum minus temporibus. Nam possimus aliquam voluptate officiis expedita reiciendis. Excepturi accusantium ipsum placeat et mollitia adipisci.', 1, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 2),
(16, 'Prof. Lyric Denesik PhD', 'Kuphal', 'gaylord.devyn@example.org', 30, 'Ut quis et atque eveniet veritatis id suscipit ad. Temporibus quis iste quibusdam deleniti. Ut officiis impedit cupiditate omnis eligendi consectetur quisquam. Et beatae natus cumque commodi. Non expedita porro id quaerat quis. Sed dolore quis facere ut itaque provident nulla.', 1, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 5),
(17, 'Letha Herman', 'Boyer', 'ckshlerin@example.org', 20, 'Illo magni aperiam in voluptas est enim. Maxime corrupti sit consectetur et architecto ipsa. Ex porro consequatur quaerat iste sed.', 0, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 2),
(18, 'Daniella Langworth V', 'Lockman', 'lisandro33@example.org', 30, 'Molestiae laborum reprehenderit at architecto consequatur consequatur. Sapiente blanditiis mollitia accusamus dolor ut ut reprehenderit. Eum rerum eveniet delectus ut accusantium vitae. Commodi occaecati omnis porro quibusdam.', 0, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 4),
(19, 'Jaden Hane I', 'Windler', 'audreanne51@example.net', 27, 'Et et totam aperiam hic neque excepturi et officiis. Qui suscipit delectus eius suscipit nemo ipsam. Doloremque quia voluptatibus velit harum. Velit quo deserunt ut tenetur ut blanditiis. Laudantium sunt quis voluptatibus placeat vel. Ex quos magni velit similique vel.', 0, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 1),
(20, 'Mrs. Filomena Kunde Sr.', 'Johnson', 'cjakubowski@example.com', 21, 'Quisquam harum voluptatibus et. Et quaerat facilis sed asperiores voluptatem ex. Sed labore ipsa quasi. Doloremque animi ut officia. In ex ut vitae est. Est eligendi rem voluptas reprehenderit. Ea dolore numquam pariatur nam. Mollitia aut voluptate eaque excepturi est soluta.', 0, '2023-07-11 17:45:35', '2023-07-11 17:45:35', 3);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `project_worker`
--
ALTER TABLE `project_worker`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `workers`
--
ALTER TABLE `workers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
