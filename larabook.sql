-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 29 2020 г., 13:22
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `larabook`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `topicid` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `imagepath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `blocks`
--

INSERT INTO `blocks` (`id`, `topicid`, `title`, `content`, `imagepath`, `created_at`, `updated_at`) VALUES
(2, 2, 'Новые технологии Laravel', 'К счастью, Laravel опять же облегчит нам работу, так что давайте начнём писать код.\r\nЕсли перейдём на routes.php, нам нужен новый маршрут, так что скажем: «Когда мы получаем GET-запрос к articles/create...» и кстати, заметьте что со всеми этими URI я следую общепринятому соглашению и мы поговорим об этом ещё в будущем уроке. По крайней мере пока что следите как я предпочитаю называть их, я не беру имена с потолка, а действительно следую соглашению.', '/images/Без названия.jpg', '2020-07-09 06:32:52', '2020-08-15 05:13:23'),
(3, 2, '206 поправок', 'Общероссийское голосование по вопросу одобрения изменений, вносимых в Конституцию Российской Федерации, проводилось с 25 июня по 1 июля 2020 года. Последний — основной — день голосования был объявлен выходным. Жители Москвы и Нижегородской области с 25 по 30 июня по желанию могли голосовать электронно.', '/images/123.jpg', '2020-07-09 06:38:37', '2020-07-09 06:38:37'),
(4, 3, 'New Age of the Modeling', 'If you’re a model, your job is to model clothes made by fashion designers and brands. If someone asks you what you’re doing, you say that you’re modelling—or modeling. If you like to create something but used another piece of work as inspiration, you can say you modeled your work after something. Or you can say you modelled it. If you like to create little models of airplanes or ships or cars, you can call yourself a modeler, but also a modeller. ', '/images/AAC30nH.jpg', '2020-07-09 06:58:04', '2020-08-15 05:09:43'),
(5, 1, 'New Age of the Modeling', 'If you’re a model, your job is to model clothes made by fashion designers and brands. If someone asks you what you’re doing, you say that you’re modelling—or modeling. If you like to create something but used another piece of work as inspiration, you can say you modeled your work after something. Or you can say you modelled it. If you like to create little models of airplanes or ships or cars, you can call yourself a modeler, but also a modeller. ', '/images/AAC30nH.jpg', '2020-07-09 07:00:51', '2020-08-15 05:03:25'),
(6, 4, 'Proactive full-range ability', 'Exercitationem ut et iusto nostrum. Animi error rerum alias voluptas et.', 'https://lorempixel.com/640/480/?64956', '2020-08-11 23:52:29', '2020-08-11 23:52:29'),
(7, 5, 'Polarised bottom-line forecast', 'Ut aut soluta et. Rerum voluptas amet cupiditate et. Earum suscipit natus rerum sed ipsum quam.', 'https://lorempixel.com/640/480/?97674', '2020-08-11 23:52:29', '2020-08-11 23:52:29'),
(8, 1, 'Decentralized asynchronous capacity', 'Non maxime quis numquam. Ut non earum magni. Officiis minus dolorum incidunt accusamus fugiat.', 'https://lorempixel.com/640/480/?43572', '2020-08-11 23:52:29', '2020-08-11 23:52:29'),
(9, 4, 'Triple-buffered upward-trending monitoring', 'Et in et adipisci non quia earum non. Et aut laboriosam et modi est itaque atque beatae.', 'https://lorempixel.com/640/480/?73772', '2020-08-11 23:52:29', '2020-08-11 23:52:29'),
(10, 5, 'Facetoface tertiary model', 'Sed nihil aut suscipit atque quis et. Doloribus minus harum rerum voluptas sequi.', 'https://lorempixel.com/640/480/?98650', '2020-08-11 23:52:29', '2020-08-11 23:52:29'),
(11, 4, 'Down-sized dedicated attitude', 'Molestias architecto illo et praesentium. Voluptate odio et voluptas et qui est.', 'https://lorempixel.com/640/480/?66800', '2020-08-11 23:52:29', '2020-08-11 23:52:29'),
(12, 3, 'User-friendly discrete structure', 'Qui temporibus nesciunt perspiciatis atque dolorem. Ut a voluptatem est corporis corporis sapiente.', 'https://lorempixel.com/640/480/?86611', '2020-08-11 23:52:29', '2020-08-11 23:52:29'),
(13, 5, 'Versatile didactic time-frame', 'Et quisquam veniam repellendus quia. Iste sit ex voluptas. Dolorum laboriosam ex quisquam.', 'https://lorempixel.com/640/480/?80170', '2020-08-11 23:52:29', '2020-08-11 23:52:29'),
(14, 3, 'Organized tertiary synergy', 'Vero earum facilis ad recusandae. Expedita optio magnam quia cumque.', 'https://lorempixel.com/640/480/?14965', '2020-08-11 23:52:29', '2020-08-11 23:52:29'),
(15, 1, 'Switchable mission-critical algorithm', 'In dicta voluptatem atque quis rerum et. In nam illo omnis rem.', 'https://lorempixel.com/640/480/?25266', '2020-08-11 23:52:29', '2020-08-11 23:52:29'),
(16, 8, 'Adaptive bifurcated firmware', 'Quo quisquam ipsam temporibus ea. Laboriosam est et dolor. Cumque aut aperiam magnam corporis iusto officiis. Aut sint iure sed. Iure porro dicta dolorum rerum ea aut. Saepe ut ut excepturi magni. Omnis quod expedita doloribus est et accusamus molestias. Assumenda neque iste cumque sit repellat quas occaecati commodi. Omnis libero qui quis non vero. Porro sed dolorem error. Ipsum ut consequatur provident et. ', 'https://lorempixel.com/640/480/?86635', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(17, 9, 'Grass-roots user-facing application', 'Vitae et porro id beatae quibusdam voluptas. Aut magnam eos voluptatem quae. Nam aut occaecati nam adipisci consectetur dolor. Ea ad possimus earum a. In modi quia et blanditiis nostrum esse voluptatem expedita. Eos sapiente nobis explicabo voluptatem nulla ducimus aut. Culpa blanditiis praesentium illo voluptatibus quos voluptatem. ', 'https://lorempixel.com/640/480/?36732', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(18, 2, 'Enterprise-wide systematic hub', 'Et ut impedit minima sint. Velit fuga aliquid voluptatibus aliquid. Provident architecto aliquid aperiam repellat ex nesciunt totam. Autem fugit possimus molestiae et dolor dolorum. Quisquam est quaerat eius reiciendis et eaque. Facilis omnis cumque voluptatum. Sit eveniet error totam expedita fugit. Consequatur qui reprehenderit dolorem nesciunt. Totam est sint distinctio perspiciatis quam. Consequatur est nesciunt accusamus ut et. Est et consequuntur aspernatur. Laudantium saepe saepe in voluptatum voluptatibus voluptate. Harum et ullam quaerat nam consequatur dicta. Optio molestias quisquam placeat aliquid consequuntur reiciendis quibusdam. Error ducimus optio vel sed dolorum perferendis. ', 'https://lorempixel.com/640/480/?51350', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(19, 3, 'Right-sized client-driven openarchitecture', 'Optio voluptatem quis aspernatur in. Enim omnis libero ex voluptates perspiciatis autem. Quia qui totam unde qui harum aut. Aut magnam dicta sunt ipsa quo repudiandae. Sed cumque suscipit aut quod qui consectetur soluta dolorem. Beatae quis dolor vel consequatur voluptas provident. Neque iure amet in cum. Cumque consequatur earum rem illo sunt. Soluta accusantium nisi ut veniam officiis et saepe vitae. Qui eveniet modi possimus harum corrupti. Ut eaque unde hic. Cum culpa sit qui dolorem nihil saepe. Ad harum omnis delectus quo minus deserunt cum quis. ', 'https://lorempixel.com/640/480/?97792', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(20, 3, 'Innovative object-oriented extranet', 'Ab atque nemo aspernatur iste. Neque beatae tenetur ipsum et sed. Expedita sequi corrupti et quo quia voluptas. Assumenda quaerat soluta quam mollitia consequatur iusto tempore. Quidem recusandae magni enim. Quia aut ullam est voluptatem nisi. Maiores vel voluptas placeat sed doloremque nemo. Eveniet culpa consequatur qui aut. A harum enim tempora fugit. Exercitationem sed nisi provident esse beatae soluta. Non repellat sed quia. Ut ullam amet molestiae architecto iusto et. Ut ea exercitationem aut est. ', 'https://lorempixel.com/640/480/?54617', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(21, 9, 'Intuitive exuding systemengine', 'Accusamus sint dignissimos pariatur natus tenetur ut architecto. Corrupti et consequuntur eos rerum. Sunt voluptates a distinctio et. Expedita dolores qui quia incidunt eos est. Ipsum nihil nulla sed nisi corrupti repellat eum ipsa. Voluptas sit vero consequuntur quis enim deleniti. Dolorum commodi vel commodi officia quisquam quis. Minima tenetur nulla impedit architecto rerum aut. Et aliquid occaecati dolores deleniti illum et qui. Qui commodi ab sunt ipsam dolorum fuga.', 'https://lorempixel.com/640/480/?50565', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(22, 9, 'Integrated empowering approach', 'Reiciendis delectus nulla non consequatur consequuntur nisi labore. Praesentium reiciendis eos necessitatibus sunt similique molestias illum. Sunt rem dolore quasi pariatur aut molestiae praesentium aspernatur. Consequatur accusantium nisi quis corrupti assumenda est fugiat. Reiciendis id sint provident et. Hic veniam corporis aut quaerat eos. Explicabo facilis natus sed dolore fugiat est temporibus. ', 'https://lorempixel.com/640/480/?91734', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(23, 7, 'Intuitive responsive emulation', 'Laboriosam nihil sit porro rerum. Fugit magni mollitia in reprehenderit beatae sed magni. Libero totam cupiditate labore perspiciatis et repellat magni. Enim ut sapiente sit doloremque sed autem aut illo. Maiores incidunt velit nulla accusantium quo. Corrupti corrupti saepe incidunt laborum rerum est. Sed eveniet dolorem animi tempora. Qui placeat quia minus et ut est. Facilis praesentium assumenda rerum repellendus est. Totam corporis consectetur architecto eius veritatis odio numquam. Rerum est dolor excepturi ducimus. Delectus aliquam ex aut vel aperiam ipsam vel unde. Et officiis tenetur dolore dicta non. Est cum repellat aliquam doloremque ea. Nisi temporibus qui voluptatibus nihil a illo vitae. Dolor nulla ab quo in excepturi nemo alias. Sint et vero optio quia. Et incidunt dolor rerum assumenda. Quisquam quo exercitationem corporis nisi aut iste voluptatum possimus. Vero et unde possimus blanditiis pariatur et. Eos reiciendis et expedita architecto. Totam vel vel at dolorem atque omnis aliquam. Exercitationem aut beatae quos. Similique modi culpa unde. Odit voluptatibus et vitae dicta ipsum. Vel voluptatem odio cumque voluptatem et ut in praesentium. Et et omnis earum facilis. Molestiae et veritatis repudiandae quia sunt consequatur voluptate. Exercitationem similique enim minima sit error consequatur nemo. Amet deleniti ea consequatur voluptas explicabo officia qui enim. Odit optio in est et. Omnis aliquam nemo tempore est exercitationem deleniti possimus. Et esse dolores neque velit dicta quos. Animi adipisci ullam dolorum quod. Saepe omnis aliquam doloribus eos. Non magnam beatae et dolores quia inventore. Odio numquam est iusto qui exercitationem tempore. Vitae dolorem aliquid sunt. Quia consequuntur deserunt qui est saepe consequuntur modi. Maiores ut sint aut et inventore aliquid. Veniam est eligendi suscipit delectus. Sapiente tempora rerum ut impedit ex. Aut optio consequatur eos maxime repellendus. Dignissimos odit non facilis qui possimus. Temporibus ut libero ut inventore et saepe sed. Laudantium et dolorem quidem nulla. Et eum dicta facere vitae reiciendis. Tenetur sunt dolorum asperiores omnis. Rerum iure esse impedit id rem est modi. Quam magnam consectetur facilis cum quia quas libero. Consequatur beatae nostrum modi ut adipisci dolores maxime. Iure aut quas iste officiis. Harum nostrum neque sunt provident cum aut qui. Fuga quaerat aut qui temporibus ea. Qui ut alias natus et similique ex. Reiciendis eum inventore excepturi. A debitis illo sapiente. Eos ipsam dolores deleniti velit. Quod id expedita neque. Rerum sunt voluptas autem ut velit iusto. Ut eum impedit fugit. Minima alias corporis id ipsam sunt veritatis. Libero quis reiciendis voluptatum beatae architecto necessitatibus molestiae. Qui repudiandae voluptatem dolor consequuntur officia sapiente. Sed delectus quo ratione tempora et minus assumenda. Debitis mollitia quasi sint.', 'https://lorempixel.com/640/480/?23587', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(24, 5, 'Extended value-added throughput', 'Et dolore odio facere. Mollitia veniam et ea vel velit. Perferendis eius totam quam est dolor. Quam nihil aut veniam fugiat veniam. Voluptatem quia saepe corporis sapiente qui illo qui consequatur. Suscipit dolores corrupti ut eos. Dignissimos nihil repellat quam laudantium incidunt in quo. Distinctio aut consequatur repudiandae aut neque impedit placeat. Aperiam vel distinctio in est voluptatem cumque est qui. Modi repudiandae architecto modi eveniet aut omnis. Iste officiis est dolorem nesciunt deleniti. At alias expedita et vero odit vitae voluptatem.', 'https://lorempixel.com/640/480/?19707', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(25, 1, 'Open-source actuating structure', 'Ad aliquam voluptas molestiae porro. Reprehenderit facilis eligendi occaecati aspernatur non mollitia sapiente. Sed eum deleniti temporibus ut voluptas et. Sed assumenda ut velit non magni. Quia excepturi cum iure aliquid id. Praesentium voluptatem adipisci maiores atque iusto. Facere qui dolorem quod. Quia similique voluptatem numquam tempora nisi et voluptas. Vero reiciendis animi iusto eum rem. Quia suscipit nihil veritatis sit est reprehenderit. Corrupti sed illo ea ut enim consequatur eius. Facilis assumenda dolorum neque velit. Natus repudiandae minus et voluptates. Quis quae iste molestiae est explicabo distinctio necessitatibus..', 'https://lorempixel.com/640/480/?51548', '2020-08-19 05:16:06', '2020-08-19 05:16:06');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2020_06_30_142223_create_tables', 1),
(8, '2020_08_19_112546_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `topicname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `topics` (`id`, `topicname`, `created_at`, `updated_at`) VALUES
(1, 'Гости из будущего', '2020-07-09 05:38:57', '2020-07-09 05:38:57'),
(2, 'Конституция 2020', '2020-07-09 06:36:33', '2020-07-09 06:36:33'),
(3, 'Model Maker', '2020-08-11 23:52:28', '2020-08-11 23:52:28'),
(4, 'Technical Writer', '2020-08-11 23:52:28', '2020-08-11 23:52:28'),
(5, 'Home Appliance Repairer', '2020-08-11 23:52:28', '2020-08-11 23:52:28'),
(6, 'Electrical Engineering Technician', '2020-08-11 23:52:28', '2020-08-11 23:52:28'),
(7, 'Epidemiologist', '2020-08-11 23:52:28', '2020-08-11 23:52:28'),
(8, 'Nursery Manager', '2020-08-11 23:52:28', '2020-08-11 23:52:28'),
(9, 'Life Science Technician', '2020-08-11 23:52:28', '2020-08-11 23:52:28'),
(10, 'Transportation Manager', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(11, 'Aerospace Engineer', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(12, 'Respiratory Therapist', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(13, 'Shampooer', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(14, 'Embossing Machine Operator', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(15, 'Talent Director', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(16, 'Forming Machine Operator', '2020-08-19 05:16:06', '2020-08-19 05:16:06');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Megane Kihn', 'clifford37@example.org', '307280', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(2, 'Dr. Alexander Hickle', 'nader.jamie@example.net', '270840', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(3, 'Colby Trantow', 'romaine21@example.com', '090650', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(4, 'Armand Hoeger', 'iwisozk@example.net', '409390', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(5, 'admin', 'admin@example.net', 'administr', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 1),
(6, 'Alexie Hand', 'jmckenzie@example.net', '226070', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(7, 'Karelle Gutkowski', 'nnicolas@example.org', '123450', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 1),
(8, 'Julian Yundt', 'citlalli.marvin@example.net', '050630', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(9, 'Thurman Mayer', 'madelynn72@example.org', '738501', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(10, 'Javier Schneider', 'armani.rodriguez@example.net', '027760', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(11, 'Андреева Мария', 'mary@mail.ru', '$2y$10$.hv0mqV.cD2QU1WtBC7iruzyIxpxaiommp95DGYPU.ce2pG8KG5n6', NULL, '2020-08-29 02:44:28', '2020-08-29 02:44:28', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_topicid_foreign` (`topicid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `topics_topicname_unique` (`topicname`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `blocks`
--
ALTER TABLE `blocks`
  ADD CONSTRAINT `blocks_topicid_foreign` FOREIGN KEY (`topicid`) REFERENCES `topics` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
