-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 21 2020 г., 11:12
-- Версия сервера: 5.6.41
-- Версия PHP: 5.6.38

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
(16, 8, 'Adaptive bifurcated firmware', 'Quo quisquam ipsam temporibus ea. Laboriosam est et dolor. Cumque aut aperiam magnam corporis iusto officiis. Aut sint iure sed. Iure porro dicta dolorum rerum ea aut. Saepe ut ut excepturi magni. Omnis quod expedita doloribus est et accusamus molestias. Assumenda neque iste cumque sit repellat quas occaecati commodi. Omnis libero qui quis non vero. Porro sed dolorem error. Ipsum ut consequatur provident et. Sunt voluptas nobis delectus aut. Quisquam aut earum veniam voluptas quia. Reprehenderit ut voluptatibus quae atque est. Est ipsum et nisi fugiat quasi impedit est. Quia est aut ea sed. Aut consequuntur sapiente eum porro sed aut exercitationem. Aliquid quibusdam laborum vel error. Harum ipsa voluptates voluptatem accusantium. Tenetur minus omnis et sequi eveniet. Mollitia dolorem unde error suscipit exercitationem. Enim exercitationem consequatur et qui laborum. Ducimus omnis est quae. Rerum aliquam exercitationem eum tempora sapiente possimus. Et harum consequatur quidem quos iusto quia. Sed aliquam nisi harum expedita ipsa optio quos. Ut magni suscipit voluptates illo molestiae qui. Minus rerum expedita reiciendis repellendus. Voluptatem et iste sint deserunt molestiae quaerat. Ut ullam quidem rem. Provident excepturi quaerat omnis cum aut repellendus. Qui quis et repudiandae consequatur. Aut laborum et reiciendis blanditiis distinctio dignissimos. Praesentium aliquid autem eaque et. Perspiciatis sequi vero dicta nulla. Est sunt eligendi dignissimos ipsa in suscipit eligendi. Vitae dolor nobis nulla sit. Quo porro est qui inventore distinctio totam. Delectus incidunt officiis quia ut. Explicabo et eius aut maiores dolorum nostrum. Saepe repellendus sint ex iste iure reiciendis ipsam. Harum sunt repudiandae rerum necessitatibus laudantium. Aspernatur culpa aut id non amet aperiam aut. Aut explicabo eius totam id aut quo natus animi. Quas non est qui tenetur reiciendis. Sed magnam cumque unde sint tenetur error. Quam saepe est quisquam id. Sed necessitatibus aut illo fuga repudiandae culpa doloremque. Distinctio ducimus et necessitatibus totam vel maiores. Nihil quis nihil repellendus quia doloremque fugit. Ducimus non eum aspernatur adipisci et rerum. Maxime consequuntur ratione quasi vitae et amet. In aperiam quod mollitia in. Consequatur rerum sed id rerum sed minima. Necessitatibus voluptatem consequuntur nobis sed sit non eos. Eius accusantium ea sit magnam. Tenetur est fugit fugit sit sed unde consectetur. In reprehenderit reprehenderit quae voluptatem error nihil aut. Culpa eveniet qui dolores. Minima voluptatem vel veniam odit maiores possimus. Quaerat ipsa corporis ratione quae architecto perferendis corporis. Facere tenetur sint unde assumenda. Vel dolorem consequatur molestiae deserunt omnis quod soluta. Quas dolorem est repudiandae vel natus doloremque similique. Ut nemo est esse illum facilis nam enim velit.', 'https://lorempixel.com/640/480/?86635', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(17, 9, 'Grass-roots user-facing application', 'Vitae et porro id beatae quibusdam voluptas. Aut magnam eos voluptatem quae. Nam aut occaecati nam adipisci consectetur dolor. Ea ad possimus earum a. In modi quia et blanditiis nostrum esse voluptatem expedita. Eos sapiente nobis explicabo voluptatem nulla ducimus aut. Culpa blanditiis praesentium illo voluptatibus quos voluptatem. Sed rem ut molestiae culpa est. Exercitationem voluptas fugit consectetur distinctio at. Aut rerum et consequatur eum ex fuga soluta reiciendis. Suscipit modi quo consequuntur ipsa. Quis inventore in molestias ut quidem. Eos recusandae tenetur non magnam error error. Sint voluptas voluptatem nihil et. Qui dolores non earum magni quia. Reprehenderit voluptas sit consequatur quod. Iste consequuntur aut cupiditate vel praesentium animi autem. Explicabo voluptas sit tempore qui voluptatem. Vel est non qui eveniet. Eos similique velit qui et id doloribus. Et nesciunt eveniet in nam. Reprehenderit et magnam ut accusamus saepe asperiores. Dolorem enim est deleniti labore quibusdam eligendi nulla. Debitis aut qui aut quibusdam. Aut in repellendus reprehenderit eaque recusandae quasi eum. Dignissimos magni aut commodi rerum aut. Iure est rerum ex impedit nemo. Sequi temporibus qui placeat non voluptate iure ullam doloremque. Adipisci deserunt similique harum accusantium molestias voluptatem sunt. Est rerum aut quae est cupiditate excepturi amet. Adipisci placeat est aperiam omnis animi molestiae. Aliquid voluptas explicabo excepturi consequatur. Distinctio commodi soluta velit incidunt. Quia magni eum ut deleniti saepe. Ad ad illum vel quis sed. Aliquam adipisci aut perferendis et numquam est. Est dicta consequuntur unde placeat facere aut vitae. Totam rem molestiae quis atque dolorem iste dolorem ut. Sint consequatur et qui et voluptatibus explicabo sapiente. Libero eaque saepe rerum quas. Ipsa maiores qui sequi ut consequatur earum. Libero est voluptatem soluta est officiis. Non fugit dolor esse hic quaerat. Rerum mollitia autem quasi enim adipisci laboriosam architecto. Aliquam quas ullam iusto aut. Vero qui sit dolorum. Voluptas ipsam est veniam doloremque qui. Quis autem omnis aut et beatae tempora accusamus. Dicta rerum nulla ipsa occaecati rem. Excepturi facilis ut est vel. Ut aut alias blanditiis nam soluta ullam. Dolore maxime facere enim rem animi. Qui nemo laudantium ab rem dolor. Corrupti est consequuntur ea dolores molestiae. Saepe deserunt ab culpa quia est enim. Vero velit voluptas quia animi nihil accusantium eum exercitationem. Repudiandae harum voluptates ipsam voluptas maxime aut qui excepturi. Rem blanditiis dignissimos sed voluptatum. Ut laudantium voluptatem aspernatur. Aut et sunt at odio sed eligendi et. Quam fugiat sed necessitatibus et. Debitis aut voluptatem doloremque optio. Alias sed aut ab dolores. A vitae eaque aut vitae voluptas. Atque aut quasi velit consequatur vel et.', 'https://lorempixel.com/640/480/?36732', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(18, 2, 'Enterprise-wide systematic hub', 'Et ut impedit minima sint. Velit fuga aliquid voluptatibus aliquid. Provident architecto aliquid aperiam repellat ex nesciunt totam. Autem fugit possimus molestiae et dolor dolorum. Quisquam est quaerat eius reiciendis et eaque. Facilis omnis cumque voluptatum. Sit eveniet error totam expedita fugit. Consequatur qui reprehenderit dolorem nesciunt. Totam est sint distinctio perspiciatis quam. Consequatur est nesciunt accusamus ut et. Est et consequuntur aspernatur. Laudantium saepe saepe in voluptatum voluptatibus voluptate. Harum et ullam quaerat nam consequatur dicta. Optio molestias quisquam placeat aliquid consequuntur reiciendis quibusdam. Error ducimus optio vel sed dolorum perferendis. Ad laudantium qui ipsa a ullam unde. Veniam autem est doloribus unde unde. Est dolor dicta illo fuga earum repellat quae odio. Reiciendis est non labore pariatur eum. Suscipit aut molestiae sit nam sapiente omnis nobis. Natus quia vitae velit. Accusamus quia ut et et qui at. Qui sint et et dolores voluptatem. At inventore dicta consectetur in quo nisi suscipit ex. Optio similique voluptatem est blanditiis quod. Nemo ut necessitatibus autem in rerum earum dolore. Aut non laboriosam voluptatum qui. Consequatur modi fugit quia vero repellendus et fugit. Odit laudantium error dolorem. Recusandae animi nam commodi nisi adipisci accusantium repellat. Repellat nihil explicabo quaerat earum. Et quo aut vel corrupti in eius. Illo amet et autem sed ipsum. Dolorem possimus praesentium dolores deserunt vero placeat et. Molestiae quia voluptatem explicabo autem cumque. Placeat quis repudiandae in ipsum. Ut laborum accusantium provident mollitia. Nihil quia maiores veritatis distinctio. Soluta exercitationem voluptas culpa. Libero quo debitis quo et delectus. Voluptatem in tempore vel impedit deleniti dolorum suscipit. Est architecto cupiditate voluptatem iusto nihil. Molestias voluptate perspiciatis dolores a ducimus totam aut. Qui quasi in ad. Dicta voluptatibus ut dicta. Eaque sapiente animi incidunt beatae maxime. Molestias odit vel veritatis tenetur voluptatem voluptatem. Tempora iusto reprehenderit est. Dolores qui omnis consequatur quis. Et harum aliquam laudantium blanditiis error magnam cumque. Rerum illum mollitia laborum id. Sed quia et et alias aliquam. Voluptatem aliquid qui sint doloremque ipsum nihil. Veritatis quaerat commodi quo veniam iure autem. Eius voluptas ut ipsam ea. Omnis expedita sed laudantium qui. Dolor doloremque voluptatem qui quisquam temporibus. Quia et sed aut quia. Voluptatem nam est molestiae. Ipsam deserunt voluptates in dolor qui a et. Enim eius ullam maxime et quam. Non sit nesciunt voluptatem dolores voluptatem laboriosam ut. Aut delectus aperiam et eius eos asperiores enim. Soluta veritatis est non ut eveniet mollitia distinctio. Aut deserunt ipsum laboriosam. Veritatis velit voluptatum praesentium laboriosam. Voluptas consequatur aut ipsam et qui accusamus. Vel sit quibusdam perferendis quaerat nihil voluptatem et facilis.', 'https://lorempixel.com/640/480/?51350', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(19, 3, 'Right-sized client-driven openarchitecture', 'Optio voluptatem quis aspernatur in. Enim omnis libero ex voluptates perspiciatis autem. Quia qui totam unde qui harum aut. Aut magnam dicta sunt ipsa quo repudiandae. Sed cumque suscipit aut quod qui consectetur soluta dolorem. Beatae quis dolor vel consequatur voluptas provident. Neque iure amet in cum. Cumque consequatur earum rem illo sunt. Soluta accusantium nisi ut veniam officiis et saepe vitae. Qui eveniet modi possimus harum corrupti. Ut eaque unde hic. Cum culpa sit qui dolorem nihil saepe. Ad harum omnis delectus quo minus deserunt cum quis. Aut omnis minima odio unde. Aliquam ut optio sed doloremque molestias rerum dolorem. Mollitia aliquam doloremque provident praesentium et fugit. Voluptatum aut voluptatem ut at blanditiis qui voluptatibus. Aperiam tempore et nemo qui ducimus eligendi id sint. Sunt qui excepturi excepturi ut eum iusto veritatis. Odio nam sint ut sit. Ad sit fuga nam veniam minima excepturi autem. Aut dolor nemo sit et quas non. Deleniti repudiandae perferendis distinctio est dolores sit. Et ut consequatur ea maiores est facere et. Dolor odit iure blanditiis quia quis. Quia deserunt quia est ut qui sint omnis. Quo repellendus est et consequatur. Corrupti eos qui nam qui et qui asperiores aut. Temporibus inventore vero odio pariatur fugit voluptatem est culpa. Rerum maiores dolore iste corporis nobis. Consequatur officiis et expedita minus. Nulla eius repudiandae praesentium quos optio in quia. Officia qui rem est dignissimos cupiditate. A quis voluptas tempora deserunt. Nihil beatae ut perspiciatis cum ratione mollitia. Unde voluptas ut et molestiae. Nam aliquid minus facilis consequuntur. Praesentium aut quis tenetur explicabo dolore assumenda ea. Rerum accusantium ipsum dolorum dolores rerum nostrum quas. Sed ut ducimus sed. Dolor facilis pariatur eos illo omnis praesentium et rerum. Deserunt est saepe molestias qui tempore tempora illo. Soluta qui quibusdam ipsa saepe explicabo quia. Earum provident adipisci a blanditiis ex dolorum excepturi ipsa. Est vel libero tenetur quos alias omnis non. In quisquam quo quis doloremque laboriosam sunt. Quas itaque vero qui consequatur. Officiis provident aut ut molestiae expedita animi. Nemo voluptates ea in architecto voluptas est ipsa. Sed rerum excepturi dolor autem iste magnam. Quasi quis beatae voluptas est eum quae. Repudiandae nobis ut eveniet facere reprehenderit aut. Et aut rerum beatae est asperiores aut voluptatem assumenda. Est iste optio cupiditate dicta. Laudantium facere nihil molestiae optio voluptatibus. Quas eligendi excepturi iure voluptates quia et. Sunt et non hic aperiam in nulla. Suscipit placeat fugiat error et repudiandae iure quod eos. Ad aliquid ut est consectetur suscipit quidem. Quasi non illo impedit. Sed aut et veniam occaecati odio ullam. Blanditiis inventore tenetur sit molestiae.', 'https://lorempixel.com/640/480/?97792', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(20, 3, 'Innovative object-oriented extranet', 'Ab atque nemo aspernatur iste. Neque beatae tenetur ipsum et sed. Expedita sequi corrupti et quo quia voluptas. Assumenda quaerat soluta quam mollitia consequatur iusto tempore. Quidem recusandae magni enim. Quia aut ullam est voluptatem nisi. Maiores vel voluptas placeat sed doloremque nemo. Eveniet culpa consequatur qui aut. A harum enim tempora fugit. Exercitationem sed nisi provident esse beatae soluta. Non repellat sed quia. Ut ullam amet molestiae architecto iusto et. Ut ea exercitationem aut est. Doloremque repellendus cupiditate dolorem. Reprehenderit sed eveniet repellat repellendus incidunt. Dolores voluptas rem blanditiis at molestias dolor atque iste. Adipisci corporis harum eos labore unde iure animi. Asperiores dicta libero provident iusto vel non. Expedita id aut vel molestiae dolores. Cupiditate quia sit quod accusamus. Minus minima molestiae beatae velit nihil esse adipisci. Quia sed rerum repellendus est est. Id perferendis optio veritatis aspernatur. Explicabo explicabo praesentium eos reiciendis ad et dignissimos. Illo aut est deserunt. Esse beatae dolorum repudiandae officia dolorem. Et autem beatae non rerum omnis. Perferendis possimus earum minus qui exercitationem. Non molestiae quos consequatur hic. Id doloribus sint sequi maxime voluptatibus quia. Et enim reiciendis sit rerum ex iusto quasi. Aut aut in ipsam odit eligendi illo. Odio dicta tempore quod fugiat voluptatibus et. Iusto aut sed molestias itaque fugit molestiae. Quia mollitia ut ipsum asperiores mollitia modi veniam. Ipsam praesentium at blanditiis iste quae tempore rerum. Et non accusamus quia necessitatibus voluptas numquam. Molestias quis laboriosam voluptatibus impedit qui rem. Tempora ut in sint nihil occaecati cumque. Culpa aut velit expedita aut fuga minus. Natus maxime quibusdam autem ipsam qui consequatur modi. Iste sint et rerum sunt omnis. Provident modi officiis aspernatur impedit. Et sed iusto ut dolores eaque dolorem. Et voluptas commodi veritatis ut. Ratione accusamus aut sed vero eum nihil. Vero ut qui voluptatem molestiae numquam ut laudantium. Minus ipsa sunt consequuntur voluptates delectus. Vel libero neque dolores ut molestiae provident perspiciatis eligendi. Et aspernatur ipsam temporibus dolorem. Commodi qui molestiae dolore. Voluptatum eos qui quia architecto iure et excepturi. Exercitationem debitis minus unde eos. Eius enim id eveniet. Beatae est fuga ea laudantium et veniam delectus. Fuga dolore molestiae et veritatis. Consequatur occaecati delectus sequi sit. Et accusamus corporis doloribus nam delectus exercitationem. Reprehenderit sunt hic consectetur repellat possimus eligendi. Magni officia architecto animi qui tenetur adipisci eos. Ut velit sint velit suscipit. Et natus qui eligendi deserunt et recusandae. Necessitatibus ut facilis tempore blanditiis. Ullam ut iusto magni. Ex laudantium animi et quam fuga sunt. Sed ad commodi odit rem. Inventore omnis ipsum itaque. In sed sit sunt porro pariatur et placeat molestiae.', 'https://lorempixel.com/640/480/?54617', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(21, 9, 'Intuitive exuding systemengine', 'Accusamus sint dignissimos pariatur natus tenetur ut architecto. Corrupti et consequuntur eos rerum. Sunt voluptates a distinctio et. Expedita dolores qui quia incidunt eos est. Ipsum nihil nulla sed nisi corrupti repellat eum ipsa. Voluptas sit vero consequuntur quis enim deleniti. Dolorum commodi vel commodi officia quisquam quis. Minima tenetur nulla impedit architecto rerum aut. Et aliquid occaecati dolores deleniti illum et qui. Qui commodi ab sunt ipsam dolorum fuga. Commodi sed vitae qui quo. Necessitatibus enim sed et dicta quod est quo. Molestias voluptatem pariatur ea autem consequatur quia distinctio. Dolorem nemo saepe cupiditate occaecati et nihil eligendi. Praesentium alias aut voluptas ut aliquid unde sit. Alias beatae ut error sunt odit earum quibusdam. Amet quod est qui ipsam commodi doloremque. Minus aut sed et velit enim. Dolorum reiciendis laborum sint aut in. Id dicta aut rerum ea vero. Nisi voluptate excepturi quam quia qui est ratione molestiae. Sint harum neque possimus. Voluptas architecto molestiae animi ad voluptas maiores. Repellat aut et maiores voluptas ipsa. Ut ullam illum aut et sit consequatur. Blanditiis vero aut ut tempore. Qui quas et ut dignissimos quis deleniti. Culpa delectus aut nam commodi laboriosam quis incidunt iure. Cum totam et vel reiciendis. Cupiditate doloremque est animi sit dicta enim molestias qui. Nostrum vitae possimus optio qui quam praesentium omnis. Aut non sint et alias dolorem est incidunt voluptatem. Fugit sequi molestiae nesciunt qui. Facilis modi maxime perspiciatis laboriosam laborum at nobis. Omnis cum vero aut rerum quis. Vero et labore asperiores occaecati laborum soluta. Veritatis doloremque ullam optio. Facilis soluta non repellendus animi quia suscipit quia. Ipsum dolores odio voluptas aut accusamus a. Architecto quod ut labore ducimus perspiciatis et nobis voluptas. Voluptatem autem error ad quae occaecati sint. Est ut voluptatem non ut maiores alias consequatur. Autem cupiditate nihil temporibus ea aut. Laborum dolor velit est exercitationem. Consectetur et dolore in quidem eos consequuntur doloremque. Explicabo quis sed aut non. Blanditiis vel animi nemo. Odio voluptatem at non mollitia dolores. Quia qui tempore non inventore nihil ex et. Repudiandae numquam dolorum est et recusandae. Libero voluptate explicabo soluta repudiandae et cum. Consequatur non error quam hic odit id. Quia ut et voluptatem et sunt aperiam. Deserunt nam repellat velit quia distinctio id exercitationem atque. Quis explicabo consequuntur et est. Et voluptas autem voluptatem voluptates quia. Consequuntur ducimus voluptatem eos et. Aut explicabo quis officia qui velit ducimus minima. Harum sed et sit cumque ut blanditiis. Quia animi eum odit perspiciatis. Aut qui sunt excepturi dolores molestias ullam hic. Aliquid voluptatum eaque voluptas et sed ut repellat. In ipsum a ab voluptatibus quia in modi. Officia dolorem dolor corrupti excepturi quam quo consequuntur.', 'https://lorempixel.com/640/480/?50565', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(22, 9, 'Integrated empowering approach', 'Reiciendis delectus nulla non consequatur consequuntur nisi labore. Praesentium reiciendis eos necessitatibus sunt similique molestias illum. Sunt rem dolore quasi pariatur aut molestiae praesentium aspernatur. Consequatur accusantium nisi quis corrupti assumenda est fugiat. Reiciendis id sint provident et. Hic veniam corporis aut quaerat eos. Explicabo facilis natus sed dolore fugiat est temporibus. Natus molestiae in eos. Voluptatem saepe odio qui qui repudiandae qui. Eveniet repellat quisquam ducimus omnis labore cumque exercitationem id. Hic amet quod temporibus qui. Reprehenderit aliquid voluptate enim omnis. Est quisquam ab neque asperiores aut. Aut aperiam iste debitis sequi. Perspiciatis nostrum at laborum. Incidunt repellendus dolor laboriosam est voluptas omnis. Inventore sunt officia modi placeat eos minus exercitationem. Aliquid eum ut itaque consectetur. Voluptas natus recusandae consequatur. Numquam deserunt earum explicabo ipsum dolore temporibus dicta. Qui aut vel quia illum. Debitis assumenda laborum est nesciunt laudantium nam voluptates. Dolorum blanditiis quisquam cum quo autem enim nulla. Quam voluptatem asperiores officia aut ipsam quibusdam laborum dolorem. Repellendus voluptatem ipsum facilis. Nemo aut rerum eius et nihil et. Asperiores pariatur aut suscipit facilis modi. Nam non amet odio nobis est porro similique. Illo eos possimus sed assumenda tenetur vero doloribus. Aut ut nemo blanditiis fugit eaque excepturi. Autem omnis iste voluptas ut recusandae. Voluptas in pariatur dolores error. Consectetur labore doloribus repudiandae dicta sed. Vero delectus quos in deleniti quidem. Beatae ut quis consequatur eligendi. Ea blanditiis optio perspiciatis sed non magnam cupiditate minima. Est omnis et nisi culpa qui quo. Rerum et et esse. Sapiente aut deleniti fugit aut veritatis quidem. Ipsa doloribus voluptas eos aliquam. Alias maxime consequatur quis amet. Autem minus laudantium debitis odit. Ducimus animi qui non earum et maiores. Distinctio aut sit molestiae qui dolores ipsam. Reprehenderit explicabo aspernatur culpa consequatur. Ipsam quam asperiores minima aut officia a enim dolorem. Ut sit ex ut voluptas. Esse ad voluptatem natus modi. Vero ratione occaecati omnis consequatur fugit. Sed modi voluptatum at perspiciatis sed quia et. Animi voluptatum eveniet illum est et fugiat beatae quod. Ut exercitationem ducimus animi est ut qui dolor. In voluptas et et aspernatur inventore enim. Cumque eum qui ipsa quo consectetur consequatur neque. Ut quod aut nemo veritatis magnam quibusdam adipisci. Quos non illo magni nemo molestias magni. Quidem hic molestiae ipsam enim. Velit modi minus illum maxime dolorem porro nemo. Aut nostrum mollitia fugiat hic voluptas. Molestiae dolore fuga omnis magni a. Voluptatem quasi iure illum sequi quisquam corrupti. Placeat itaque doloremque aut est itaque impedit. Quis harum voluptas ipsum. Numquam animi et recusandae tenetur quas.', 'https://lorempixel.com/640/480/?91734', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(23, 7, 'Intuitive responsive emulation', 'Laboriosam nihil sit porro rerum. Fugit magni mollitia in reprehenderit beatae sed magni. Libero totam cupiditate labore perspiciatis et repellat magni. Enim ut sapiente sit doloremque sed autem aut illo. Maiores incidunt velit nulla accusantium quo. Corrupti corrupti saepe incidunt laborum rerum est. Sed eveniet dolorem animi tempora. Qui placeat quia minus et ut est. Facilis praesentium assumenda rerum repellendus est. Totam corporis consectetur architecto eius veritatis odio numquam. Rerum est dolor excepturi ducimus. Delectus aliquam ex aut vel aperiam ipsam vel unde. Et officiis tenetur dolore dicta non. Est cum repellat aliquam doloremque ea. Nisi temporibus qui voluptatibus nihil a illo vitae. Dolor nulla ab quo in excepturi nemo alias. Sint et vero optio quia. Et incidunt dolor rerum assumenda. Quisquam quo exercitationem corporis nisi aut iste voluptatum possimus. Vero et unde possimus blanditiis pariatur et. Eos reiciendis et expedita architecto. Totam vel vel at dolorem atque omnis aliquam. Exercitationem aut beatae quos. Similique modi culpa unde. Odit voluptatibus et vitae dicta ipsum. Vel voluptatem odio cumque voluptatem et ut in praesentium. Et et omnis earum facilis. Molestiae et veritatis repudiandae quia sunt consequatur voluptate. Exercitationem similique enim minima sit error consequatur nemo. Amet deleniti ea consequatur voluptas explicabo officia qui enim. Odit optio in est et. Omnis aliquam nemo tempore est exercitationem deleniti possimus. Et esse dolores neque velit dicta quos. Animi adipisci ullam dolorum quod. Saepe omnis aliquam doloribus eos. Non magnam beatae et dolores quia inventore. Odio numquam est iusto qui exercitationem tempore. Vitae dolorem aliquid sunt. Quia consequuntur deserunt qui est saepe consequuntur modi. Maiores ut sint aut et inventore aliquid. Veniam est eligendi suscipit delectus. Sapiente tempora rerum ut impedit ex. Aut optio consequatur eos maxime repellendus. Dignissimos odit non facilis qui possimus. Temporibus ut libero ut inventore et saepe sed. Laudantium et dolorem quidem nulla. Et eum dicta facere vitae reiciendis. Tenetur sunt dolorum asperiores omnis. Rerum iure esse impedit id rem est modi. Quam magnam consectetur facilis cum quia quas libero. Consequatur beatae nostrum modi ut adipisci dolores maxime. Iure aut quas iste officiis. Harum nostrum neque sunt provident cum aut qui. Fuga quaerat aut qui temporibus ea. Qui ut alias natus et similique ex. Reiciendis eum inventore excepturi. A debitis illo sapiente. Eos ipsam dolores deleniti velit. Quod id expedita neque. Rerum sunt voluptas autem ut velit iusto. Ut eum impedit fugit. Minima alias corporis id ipsam sunt veritatis. Libero quis reiciendis voluptatum beatae architecto necessitatibus molestiae. Qui repudiandae voluptatem dolor consequuntur officia sapiente. Sed delectus quo ratione tempora et minus assumenda. Debitis mollitia quasi sint.', 'https://lorempixel.com/640/480/?23587', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(24, 5, 'Extended value-added throughput', 'Et dolore odio facere. Mollitia veniam et ea vel velit. Perferendis eius totam quam est dolor. Quam nihil aut veniam fugiat veniam. Voluptatem quia saepe corporis sapiente qui illo qui consequatur. Suscipit dolores corrupti ut eos. Dignissimos nihil repellat quam laudantium incidunt in quo. Distinctio aut consequatur repudiandae aut neque impedit placeat. Aperiam vel distinctio in est voluptatem cumque est qui. Modi repudiandae architecto modi eveniet aut omnis. Iste officiis est dolorem nesciunt deleniti. At alias expedita et vero odit vitae voluptatem. Sed accusantium repellat et et eligendi possimus. Esse qui facere tenetur commodi et consequuntur hic et. Id deserunt corrupti eligendi fugit est reprehenderit asperiores. Assumenda adipisci eos facilis omnis. Non voluptatem cum amet harum voluptatem voluptas. Laboriosam dolorem repudiandae quidem sint. Facere quidem debitis non. Doloribus rerum aut et consequatur id veniam voluptate. Autem dolor et dicta at et qui vitae non. Dolores quo ratione quidem. Nam aliquid ea in distinctio. Aut architecto deleniti molestias eum. Sequi nostrum ipsum est eum. Est alias id veritatis cum. Voluptates ratione rerum et dolores odit nemo. Possimus quod vero itaque earum est. Tempora perspiciatis explicabo sed quia sed quia. Sapiente debitis rem vitae corrupti ut voluptatibus tenetur. Cupiditate veniam aspernatur voluptate. Adipisci vero repellat et dolor. Et temporibus repudiandae esse quidem. Maxime dolor neque magnam et. Quasi ratione eum mollitia reprehenderit. Deserunt aut dolorem asperiores deleniti. Natus nostrum ducimus iusto sunt quam eligendi. Possimus repellendus eum ipsum quis voluptas voluptas. Nisi consectetur architecto facere quis ab omnis cum. Sint exercitationem possimus architecto qui. Aspernatur modi voluptas id atque sequi. Omnis dolor maiores voluptas sint voluptas. Porro et sed facere soluta architecto perferendis. Nulla voluptatem necessitatibus aut quam minus ipsam. Error consequatur animi tempora quis dolor atque. Nulla ratione eos animi aut consequuntur ea est. Asperiores id soluta sed dolorum asperiores officia dolores nihil. Nihil soluta perspiciatis incidunt sit reiciendis. Veritatis quas id ad ratione iste esse saepe. Perspiciatis qui delectus error voluptatem consequatur sint possimus. Sit consequatur libero non veritatis mollitia necessitatibus. Sapiente ipsam laudantium corporis ut velit rem. Sunt dolor qui magni ipsam. Corporis enim officiis itaque mollitia accusantium earum voluptatem. Ullam accusantium sint cupiditate quas rerum corrupti magni. Delectus quia dicta quo excepturi consequuntur vero. Aut mollitia minima est nulla magnam sint. Velit sequi quibusdam delectus reprehenderit amet consequatur. Temporibus est est facilis. Voluptatum nihil occaecati quos. Similique mollitia adipisci sed reiciendis eaque. Aut necessitatibus voluptatum cum non pariatur veniam quo. Necessitatibus et culpa asperiores veniam vitae.', 'https://lorempixel.com/640/480/?19707', '2020-08-19 05:16:06', '2020-08-19 05:16:06'),
(25, 1, 'Open-source actuating structure', 'Ad aliquam voluptas molestiae porro. Reprehenderit facilis eligendi occaecati aspernatur non mollitia sapiente. Sed eum deleniti temporibus ut voluptas et. Sed assumenda ut velit non magni. Quia excepturi cum iure aliquid id. Praesentium voluptatem adipisci maiores atque iusto. Facere qui dolorem quod. Quia similique voluptatem numquam tempora nisi et voluptas. Vero reiciendis animi iusto eum rem. Quia suscipit nihil veritatis sit est reprehenderit. Corrupti sed illo ea ut enim consequatur eius. Facilis assumenda dolorum neque velit. Natus repudiandae minus et voluptates. Quis quae iste molestiae est explicabo distinctio necessitatibus. Culpa hic dolores ut sunt rerum nostrum quod quas. Accusantium accusantium consequuntur non animi non eum. Qui officiis facere aut eveniet temporibus. Consequatur ut quia nihil optio. Deserunt et iusto tempora optio et architecto adipisci velit. Sunt molestiae nemo fuga quas sint aut. Aut unde tempore vero architecto deserunt. Iste magnam iure est soluta dolorum voluptatem perferendis. Deleniti quo ad sit quae dicta quia ducimus facilis. Ullam perspiciatis tenetur ut neque dignissimos. Quia et accusamus quas enim accusantium sit et reiciendis. Earum quia est error rem officiis vero. Ut accusamus sed velit repudiandae. Molestiae repellendus id quam quisquam. Qui repudiandae perferendis aperiam deserunt. Pariatur voluptas assumenda sit pariatur. Cumque vel sequi sed consectetur error iste. Numquam esse doloribus sed. Ipsam similique neque iste voluptates est asperiores. Dolores veritatis ratione quidem. Rerum cupiditate in praesentium aperiam id. Natus consectetur aut quasi possimus illo. Error accusantium non quaerat id nihil aliquam commodi tenetur. Quam et praesentium aut dicta. Et laborum aut iusto suscipit culpa illo repellendus. Perspiciatis necessitatibus nostrum dicta voluptate iure. Assumenda vel omnis consequatur. Vitae distinctio enim architecto ducimus. Recusandae consequatur aperiam aliquid odio expedita alias dolore. Labore in culpa est quas aperiam numquam. Neque corrupti quam id porro modi ut. Adipisci officia iusto nemo. Ullam praesentium quas quam ut voluptas. Vel quia nulla magni voluptates ut. Tempore nihil non officia aperiam sed atque. Dicta quae corrupti rerum eum sit sint. Quis quia repudiandae harum ipsam ut. Voluptas ea nam facilis aperiam explicabo. Magnam doloribus laboriosam aut sequi. Quas omnis voluptas ut ullam. Harum recusandae labore laudantium voluptatibus eveniet voluptas. Dolorem vel aut optio eius omnis perspiciatis. Culpa atque aspernatur sit dolores fuga corrupti autem. Harum ratione molestiae dolore et ut placeat sequi magnam. Dolorem consectetur qui iure a et quis. Tenetur dicta iusto aut debitis voluptatem vel. Reiciendis sit accusantium veniam itaque vero sunt vero et. Ut consequatur cupiditate quod optio sequi. Expedita et non quis dolorem qui magnam eligendi. Recusandae aut aut numquam sunt consequatur consectetur est fugiat.', 'https://lorempixel.com/640/480/?51548', '2020-08-19 05:16:06', '2020-08-19 05:16:06');

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
(1, 'Megane Kihn', 'clifford37@example.org', '30728', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(2, 'Dr. Alexander Hickle', 'nader.jamie@example.net', '27084', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(3, 'Colby Trantow', 'romaine21@example.com', '09065', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(4, 'Armand Hoeger', 'iwisozk@example.net', '40939', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(5, 'Pinkie Farrell III', 'effie.kozey@example.net', '13022', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 1),
(6, 'Alexie Hand', 'jmckenzie@example.net', '22607', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(7, 'Karelle Gutkowski', 'nnicolas@example.org', '12345', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 1),
(8, 'Julian Yundt', 'citlalli.marvin@example.net', '05063', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(9, 'Thurman Mayer', 'madelynn72@example.org', '73850', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0),
(10, 'Javier Schneider', 'armani.rodriguez@example.net', '02776', NULL, '2020-08-19 05:21:19', '2020-08-19 05:21:19', 0);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
