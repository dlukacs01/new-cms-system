-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Jan 25. 22:02
-- Kiszolgáló verziója: 10.4.14-MariaDB
-- PHP verzió: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `new_cms_system_db`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2020_11_26_192237_create_posts_table', 1),
(14, '2020_12_02_212610_create_permissions_table', 1),
(15, '2020_12_02_212840_create_roles_table', 1),
(16, '2020_12_02_213016_create_users_permissions_table', 1),
(17, '2020_12_02_213105_create_users_roles_table', 1),
(18, '2020_12_02_213254_create_roles_permissions_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'View Dashboard FRISS', 'view-dashboard-friss', '2020-12-09 22:10:03', '2020-12-19 19:23:44'),
(2, 'Edit Post', 'edit-post', '2020-12-17 21:15:13', '2020-12-17 21:15:13'),
(3, 'Update Users', 'update-users', '2020-12-17 21:18:51', '2020-12-17 21:18:51');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `permission_user`
--

CREATE TABLE `permission_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `post_image`, `body`, `created_at`, `updated_at`) VALUES
(3, 4, 'Qui esse aut esse distinctio odit et rerum architecto.', 'https://via.placeholder.com/900x300.png/00ff44?text=unde', 'Cumque eius repellat minima quidem occaecati dolorem molestiae. Numquam qui ut quibusdam amet assumenda repellendus. Consequatur quis excepturi rerum quo omnis ut dolor. Dolores provident et quaerat et qui odio.', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(4, 5, 'Aperiam culpa aut aliquam.', 'https://via.placeholder.com/900x300.png/001100?text=sunt', 'Non deleniti provident laboriosam sequi omnis. Et sint et rem fugiat. Aspernatur impedit sequi nemo consequatur rerum nesciunt quasi. Sapiente a ipsum voluptas aut et.', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(5, 6, 'Deleniti iure asperiores quo sunt laudantium provident placeat.', 'https://via.placeholder.com/900x300.png/004455?text=eum', 'Est sunt mollitia ut blanditiis corporis totam. Non unde in vel architecto odio illum. Odio rerum odit odit et. Aliquam est consequatur sequi labore ad.', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(6, 7, 'Id deleniti omnis itaque voluptates aut.', 'https://via.placeholder.com/900x300.png/00eedd?text=commodi', 'Et et asperiores nostrum quas qui. Ut doloremque perspiciatis voluptatum ex. Sed voluptas pariatur nihil voluptas quia voluptatibus voluptatem. Doloribus cum dolorem nesciunt nihil et.', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(7, 8, 'Hic nihil dolorem mollitia numquam.', 'https://via.placeholder.com/900x300.png/0055bb?text=necessitatibus', 'Tempore necessitatibus nihil quidem praesentium. Ipsum aut quisquam id. Sapiente quia voluptatem et nam. Dolorem architecto vel inventore aliquam perferendis assumenda accusantium.', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(8, 9, 'Nostrum sapiente sapiente aliquam nihil.', 'https://via.placeholder.com/900x300.png/00cc55?text=consequatur', 'Repellat omnis debitis molestiae dolores aut. Omnis rem necessitatibus culpa alias cum non velit exercitationem. Cupiditate animi neque in ipsam.', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(9, 10, 'Illum minus non est.', 'https://via.placeholder.com/900x300.png/0033dd?text=vero', 'Cupiditate cum explicabo repellendus facere autem. Animi est temporibus sunt expedita autem qui vero doloribus. Et id officia in recusandae explicabo sed.', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(10, 11, 'Blanditiis et iusto earum.', 'https://via.placeholder.com/900x300.png/0077cc?text=rerum', 'Dolores ad ratione omnis totam rerum perferendis. Aut quidem facere voluptatum omnis dolor est. Vero eveniet error error eligendi.', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(11, 12, 'Non nihil assumenda provident iure.', 'https://via.placeholder.com/900x300.png/003344?text=sit', 'Recusandae iusto id rerum molestias occaecati. Molestiae qui et optio. Et vero saepe est perspiciatis iusto aut nisi consectetur.', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(12, 13, 'Quod at repellendus id error facere exercitationem.', 'https://via.placeholder.com/900x300.png/0044cc?text=numquam', 'Sequi nam delectus et id. Optio quo quisquam ut saepe sit. Qui quae fuga sunt voluptatem consequatur. Nostrum molestiae ipsa sit repellendus.', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(13, 14, 'Culpa quisquam corporis ut et dolorem odit atque molestiae.', 'https://via.placeholder.com/900x300.png/000077?text=tenetur', 'Qui et adipisci esse est similique officiis quia. Optio officia officiis qui quam optio. Quis aut numquam distinctio dolor aliquid.', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(14, 15, 'Asperiores velit nesciunt consequuntur perferendis veritatis.', 'https://via.placeholder.com/900x300.png/00ee22?text=perferendis', 'Laborum id praesentium natus nihil et. Esse omnis dolores veniam cupiditate aliquid fuga aut. Reprehenderit minima quia fugit error.', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(15, 16, 'Inventore quod quidem vel vitae tempore minus expedita ipsam.', 'https://via.placeholder.com/900x300.png/000066?text=qui', 'Vero quis ut et et eos. Beatae sed aliquid commodi quis et et fugit. Et nisi voluptas neque aliquid vel qui qui ut. Porro aperiam ipsum dolore repellendus qui.', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(16, 17, 'Quibusdam consectetur non et unde eaque exercitationem.', 'https://via.placeholder.com/900x300.png/0044dd?text=consequatur', 'Dolores non itaque doloremque eveniet nobis fuga officia dolorem. Asperiores explicabo perspiciatis aliquam facilis laboriosam unde nulla molestiae. Sunt sapiente quam voluptatem esse quod nesciunt et.', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(17, 18, 'Perferendis ut reiciendis facilis inventore et repellendus dolore.', 'https://via.placeholder.com/900x300.png/00ccff?text=et', 'Dolores voluptatem doloribus illo dolores esse eos. Omnis similique dolores facilis et quaerat.', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(18, 19, 'Rem adipisci id a odit officiis vero assumenda odit.', 'https://via.placeholder.com/900x300.png/000044?text=a', 'Tempore atque et voluptatum. Nisi atque quidem dolor minus repellendus. Ex reprehenderit ex aliquam. Quam officia quae quia dicta.', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(19, 20, 'Repellendus laudantium doloribus occaecati aut.', 'https://via.placeholder.com/900x300.png/00bb88?text=aut', 'Et quia nulla soluta provident voluptates illo. Eos nemo quibusdam fugiat ut sit perferendis dolores. Voluptate omnis sapiente ut est.', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(20, 21, 'Saepe aut quod placeat nulla odio dolores.', 'https://via.placeholder.com/900x300.png/00ddaa?text=optio', 'Ex et officia sed iste id magni. Veniam est quisquam occaecati dolor. Molestiae earum suscipit aspernatur labore non doloribus. Nihil in autem omnis officiis ea.', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(21, 22, 'Rerum quis voluptatem qui sint delectus facilis.', 'https://via.placeholder.com/900x300.png/002266?text=nostrum', 'Porro quia corporis expedita fuga ut delectus. Minus dolorem veritatis quia id velit vel aut. Eos soluta voluptas cumque dolorem. Et perferendis voluptatum quae explicabo.', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(22, 23, 'Reiciendis voluptatem sint ut possimus.', 'https://via.placeholder.com/900x300.png/003355?text=optio', 'Dolorum accusamus omnis odit facilis consequuntur sequi sequi. Provident officiis sequi eos odio.', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(23, 24, 'Laboriosam minus non harum quo qui.', 'https://via.placeholder.com/900x300.png/001133?text=eum', 'Dolores soluta non quam ea dolores. Mollitia ab sed eum sit eum. Deleniti ipsa nulla et officiis est.', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(24, 25, 'Cupiditate nobis omnis nisi expedita.', 'https://via.placeholder.com/900x300.png/00ee33?text=dolores', 'Nam quae veritatis exercitationem fuga labore aliquam soluta quia. Placeat ipsam perferendis deserunt accusamus nam. Rem enim cupiditate corrupti consequatur inventore excepturi fugiat.', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(25, 26, 'Autem dignissimos ut illo.', 'https://via.placeholder.com/900x300.png/008866?text=non', 'Dolorem blanditiis odit consequatur. Qui nobis placeat laudantium eos ut earum assumenda. Culpa nostrum perferendis quis sed vero.', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(26, 27, 'Dolores sed quas fugiat aliquid.', 'https://via.placeholder.com/900x300.png/003322?text=ducimus', 'Saepe quae veniam itaque eum velit architecto. Qui aut nulla vel autem explicabo veniam nemo. Officia unde vero dolore et ab quidem perspiciatis omnis.', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(27, 28, 'Consequuntur nam expedita fugiat quibusdam et assumenda occaecati suscipit.', 'https://via.placeholder.com/900x300.png/00cc99?text=et', 'Quis ratione id non odit. Repudiandae deleniti et deleniti optio. Sunt et ut dolorem.', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(28, 29, 'Quia consequatur fugiat eius.', 'https://via.placeholder.com/900x300.png/009988?text=aperiam', 'Molestiae et sed et rerum sapiente reprehenderit eligendi. Ipsam voluptatem illo eius mollitia harum. Excepturi assumenda tempore et natus non.', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(29, 30, 'Voluptatum molestiae delectus voluptates aliquam quasi quia.', 'https://via.placeholder.com/900x300.png/0066bb?text=quis', 'Est facere facere numquam enim neque quo. Dolor quia ullam qui officia. Sunt consequatur sint quia reprehenderit. Dicta est dicta odit voluptatum omnis nihil dolor.', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(30, 31, 'Dolores accusamus dolores id qui omnis distinctio.', 'https://via.placeholder.com/900x300.png/008811?text=a', 'Aut quod neque ut quo est labore. Aliquam et corrupti quae itaque ipsam. Harum inventore aut necessitatibus natus dolorem porro rerum. Quia laboriosam itaque nemo delectus optio.', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(31, 32, 'Sed odio consequatur quae deleniti non iste quia.', 'https://via.placeholder.com/900x300.png/0055ee?text=iusto', 'Asperiores est est natus nesciunt et. Quaerat iusto velit sit optio sed.', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(32, 33, 'Et delectus fugiat eum voluptatem repellendus sed pariatur molestiae.', 'https://via.placeholder.com/900x300.png/00aaee?text=facilis', 'Est quia blanditiis similique ducimus rem magni. Est autem ut possimus reprehenderit animi. Quis omnis tempora cumque in quasi et. Explicabo quae ullam et itaque nesciunt quo optio.', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(33, 34, 'Et eaque nobis iste officiis id.', 'https://via.placeholder.com/900x300.png/00bb66?text=praesentium', 'Enim sed nemo et molestiae odio placeat voluptas consequuntur. Cumque nihil voluptas animi aliquam eligendi corporis voluptates. Nisi sed quaerat aut voluptatem. Veniam qui velit quia sed nobis.', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(34, 35, 'Tempora temporibus est et illum rerum in velit.', 'https://via.placeholder.com/900x300.png/00ffcc?text=qui', 'Ipsam soluta totam aut. Officia quidem quisquam quia eos veniam earum. Consequatur non est velit omnis consectetur.', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(35, 36, 'Nihil earum vel aut excepturi.', 'https://via.placeholder.com/900x300.png/0033bb?text=placeat', 'Corporis quia nihil ab provident perspiciatis. Provident perspiciatis nihil accusantium quam qui ut. Officiis temporibus quo quibusdam repellat consequatur quia fuga. Impedit et aut dolorum delectus est ea voluptate.', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(36, 37, 'Illum dolorum in ut itaque itaque.', 'https://via.placeholder.com/900x300.png/003366?text=enim', 'Vero recusandae nemo adipisci exercitationem. Natus nesciunt placeat voluptatem. Nobis suscipit quae perspiciatis rerum consequatur doloribus quos. Molestiae aspernatur et et minus doloribus doloribus animi.', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(37, 38, 'Ut sed id aut culpa voluptatem.', 'https://via.placeholder.com/900x300.png/0033aa?text=pariatur', 'Dolorem omnis saepe vero cupiditate. Repellat non delectus aut in vitae libero. Tempore repellendus cum quo. Corporis sequi optio atque quam id omnis.', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(38, 39, 'Ut asperiores et nemo vel nostrum rerum.', 'https://via.placeholder.com/900x300.png/0099aa?text=soluta', 'Explicabo excepturi neque culpa. Ut voluptatem delectus blanditiis nobis. Vero et dolor aspernatur modi.', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(39, 40, 'Sunt voluptas sequi doloremque et sit.', 'https://via.placeholder.com/900x300.png/00bb77?text=eos', 'Possimus corrupti maxime veniam quaerat rerum. Ipsam aliquid corporis eligendi sunt itaque corporis.', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(40, 41, 'Quaerat ratione velit iste ut.', 'https://via.placeholder.com/900x300.png/0066dd?text=unde', 'In quaerat aut consequatur asperiores voluptatum. Voluptas dignissimos ut molestiae omnis. Ullam quae blanditiis doloremque et ut rem. Quia recusandae vel expedita saepe pariatur. Commodi voluptas quaerat unde harum veritatis neque.', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(41, 42, 'Est laborum aut ratione voluptatem fuga rerum sunt.', 'https://via.placeholder.com/900x300.png/009911?text=id', 'Modi voluptatem possimus dolores minima. Quos quaerat non dolorem sunt asperiores corporis. Qui natus ratione numquam dolorem sequi quae consequuntur. Laudantium commodi labore sequi harum non.', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(42, 43, 'Rerum accusamus ut qui qui magnam velit voluptas.', 'https://via.placeholder.com/900x300.png/0066ee?text=est', 'Consequatur est voluptatem est sunt eius voluptatem. Omnis non voluptas qui.', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(43, 44, 'Aspernatur beatae error aut et sit impedit.', 'https://via.placeholder.com/900x300.png/006622?text=quaerat', 'Fuga nostrum quos totam magnam. Error est esse cumque quo rerum eos architecto. Necessitatibus voluptatem aut molestiae vero sapiente ut doloremque. Blanditiis rerum accusamus excepturi voluptatem.', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(44, 45, 'Nihil consequatur necessitatibus expedita eligendi.', 'https://via.placeholder.com/900x300.png/001133?text=eos', 'Id officia laboriosam sit excepturi molestiae nemo assumenda. Nemo consequatur ipsa dolorem molestias nisi quo. Est ratione sint libero ducimus minima.', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(45, 46, 'Ullam quod et iste accusamus aliquam voluptatem esse.', 'https://via.placeholder.com/900x300.png/0088cc?text=ratione', 'Quibusdam voluptas id et tenetur. Minus voluptatem tenetur voluptas dolorum. Et officia quidem voluptatum voluptatibus vero.', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(46, 47, 'Voluptate eveniet neque occaecati dolore in in aliquam.', 'https://via.placeholder.com/900x300.png/00ffee?text=et', 'Amet saepe velit ullam dolor est soluta. Aut commodi sequi enim totam nihil non fugit earum. Nostrum minima aut sit sunt. Quia magnam dolores sapiente consectetur.', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(47, 48, 'Qui quis voluptatem dolor dicta ipsa qui laborum.', 'https://via.placeholder.com/900x300.png/00bb11?text=corrupti', 'Sint ducimus repellat dicta quas voluptatum et. Reiciendis id magni praesentium quidem rerum. Quo autem saepe facilis error eum dolor maiores id. Voluptas mollitia et in eius.', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(48, 49, 'Reiciendis rerum ea provident perferendis et.', 'https://via.placeholder.com/900x300.png/00aa33?text=eos', 'Voluptatibus quia hic dolores corrupti quia laudantium. Reiciendis facere dolores porro aut et corporis. Aut nobis quis omnis inventore magnam optio eaque adipisci.', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(49, 50, 'Est omnis modi similique nam reprehenderit doloribus.', 'https://via.placeholder.com/900x300.png/002255?text=aut', 'Doloribus magni sit consequatur dolor aut ducimus cum ut. Sint ea et deserunt libero eligendi qui itaque. Ex aut voluptatibus qui pariatur ipsum qui. Eius earum quia autem accusamus eaque.', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(50, 51, 'Et corrupti est rerum qui et.', 'https://via.placeholder.com/900x300.png/00bb44?text=ducimus', 'Inventore blanditiis sunt suscipit. Ad nihil vel vel ut. Enim neque ut dolores modi. Explicabo provident incidunt aut repellat et et non.', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(51, 52, 'Pariatur ut id porro quas officiis et.', 'https://via.placeholder.com/900x300.png/006600?text=et', 'Ipsa et facilis dolorem voluptate. Non nihil et illo id harum consequatur atque. Maiores ex quia officiis nostrum. Officiis consequatur ad laboriosam vel et in.', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(52, 53, 'Et consequatur labore sint est officia incidunt voluptatem.', 'https://via.placeholder.com/900x300.png/00dd00?text=dolores', 'Rem dolorem debitis rerum. Beatae qui sit maiores libero eos voluptatibus omnis. Cumque maxime modi nihil repellendus ut vel. Fuga qui expedita est sit pariatur accusamus placeat aut.', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(53, 54, 'Cum sint aut magni laborum nam rerum qui.', 'https://via.placeholder.com/900x300.png/00bb00?text=id', 'Reiciendis ea quibusdam et neque qui nostrum. Dolores consequatur deleniti laudantium nihil iure voluptas fugiat. Cupiditate consectetur provident quibusdam eum. Porro ullam deserunt numquam eius tenetur.', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(54, 55, 'Aliquam veritatis architecto temporibus enim praesentium animi.', 'https://via.placeholder.com/900x300.png/0044cc?text=voluptatum', 'Qui aut ipsa laboriosam ut et. Exercitationem vel quia itaque illo.', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(55, 56, 'Veritatis qui laboriosam labore id at ut facere.', 'https://via.placeholder.com/900x300.png/005555?text=hic', 'Quisquam nemo rerum veniam consequatur et. Ut unde dicta vero qui harum et aspernatur. Officia distinctio iure cum exercitationem quisquam nam et.', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(56, 57, 'Fuga est ut sed ut hic laudantium tempora sapiente.', 'https://via.placeholder.com/900x300.png/0099ff?text=a', 'Neque enim maiores officiis repudiandae sunt eveniet beatae. Ullam doloribus et omnis. Molestiae est vero commodi nam commodi et qui. Facilis velit adipisci magni earum officiis.', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(57, 58, 'Et placeat non dolore eum fuga qui dolorem.', 'https://via.placeholder.com/900x300.png/00aabb?text=eveniet', 'Nesciunt autem expedita dicta molestiae sit aut et possimus. Nulla sequi voluptatibus aut minima totam ipsum. Occaecati ipsum qui quo aut doloribus. Excepturi vero et aut velit. Nesciunt nulla in error alias enim.', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(58, 59, 'Doloremque quae aliquam vel qui et voluptas blanditiis dolor.', 'https://via.placeholder.com/900x300.png/003355?text=eos', 'Laudantium autem ut consectetur quis maxime explicabo doloremque ea. Consequatur dolorem accusantium sit aut voluptas illo id. Iste tenetur enim et illum aut quo nostrum dignissimos.', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(59, 60, 'Est maxime voluptatem dolorem necessitatibus a consectetur.', 'https://via.placeholder.com/900x300.png/00eecc?text=nisi', 'Sed nulla qui quia nam a cum distinctio. Mollitia dolores soluta accusamus labore. Et occaecati similique quis.', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(60, 61, 'Eius harum quia ullam debitis eius ut nobis.', 'https://via.placeholder.com/900x300.png/009955?text=voluptas', 'Dicta ut nulla iste quaerat sint suscipit. Consequatur exercitationem doloribus dolor animi ipsa reprehenderit. Eaque dolor omnis nihil quisquam voluptas tenetur esse exercitationem.', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(61, 62, 'Reprehenderit rerum optio dolorem ratione voluptatum ut et.', 'https://via.placeholder.com/900x300.png/00ff88?text=sequi', 'Et iure suscipit voluptatum dolorem porro possimus. Harum est suscipit et ad et ut quisquam. Debitis laboriosam voluptatem est.', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(62, 63, 'Laboriosam ea quam cumque qui est perspiciatis mollitia ratione.', 'https://via.placeholder.com/900x300.png/00ccaa?text=dolore', 'Illo voluptas tempora facere quo qui quia earum nulla. Officiis veniam qui autem occaecati possimus corporis deserunt. Rerum dolor reprehenderit doloribus reiciendis pariatur non quibusdam eius. Eum at unde assumenda dolor.', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(63, 64, 'Iste saepe porro molestiae dolorum consequatur dignissimos nihil.', 'https://via.placeholder.com/900x300.png/008877?text=expedita', 'Illo aspernatur veritatis doloremque. Et eum quia sapiente modi ea. Consectetur esse vitae reprehenderit dolorem et.', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(64, 65, 'Eveniet debitis tempora aspernatur aut sit et.', 'https://via.placeholder.com/900x300.png/00aa33?text=necessitatibus', 'Voluptatem consequuntur optio ut itaque. Aut molestias est provident impedit magnam ut. Voluptatum iste qui minima consequuntur natus a quibusdam. Facere officiis dignissimos error non et temporibus perferendis ullam.', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(65, 66, 'Quo qui est voluptas molestias quis eius.', 'https://via.placeholder.com/900x300.png/005566?text=aut', 'Sed voluptate beatae temporibus et non necessitatibus. Expedita ipsa ipsam non sit. Et dolore totam error voluptatibus quisquam.', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(66, 67, 'Qui maxime voluptatem nihil et culpa.', 'https://via.placeholder.com/900x300.png/006633?text=harum', 'Voluptatibus itaque omnis quo eos quia quos. Aspernatur et et consequatur voluptatem. Dolores reiciendis quasi fugiat.', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(67, 68, 'Ullam quae suscipit maxime dolor tempora.', 'https://via.placeholder.com/900x300.png/002233?text=doloremque', 'Qui quaerat magni possimus explicabo facilis. In nam ut sed est. Sunt maxime non autem animi odit in.', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(68, 69, 'Est temporibus nulla blanditiis tempora.', 'https://via.placeholder.com/900x300.png/00bbee?text=molestias', 'Suscipit voluptatibus ipsa dignissimos veritatis dolorum tenetur perferendis. Sed in id fugit quia repellat. Sint excepturi ut nisi provident. Sit laborum consectetur nesciunt qui nemo. Libero inventore harum ut distinctio odio tempora.', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(69, 70, 'Ipsum est sint enim distinctio enim rerum consectetur.', 'https://via.placeholder.com/900x300.png/00aaee?text=eligendi', 'Id nam et accusantium. Aperiam explicabo saepe accusamus omnis autem ut. Officiis a illum velit distinctio debitis modi eligendi.', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(70, 71, 'Dolor eum aut expedita ut aut labore itaque.', 'https://via.placeholder.com/900x300.png/00dd22?text=laudantium', 'Nihil et molestiae commodi. Est id a et enim consequatur. Autem sit et impedit fugiat.', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(71, 72, 'Quis perferendis tempore consequatur placeat ea nemo.', 'https://via.placeholder.com/900x300.png/0055bb?text=et', 'Culpa quo ex molestiae vel. Commodi est cumque soluta hic. Aperiam laborum perspiciatis accusantium assumenda.', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(72, 73, 'Ut aliquam voluptatem quae ea exercitationem sint.', 'https://via.placeholder.com/900x300.png/00aa22?text=molestiae', 'Et ullam voluptatem voluptates vitae. Quo omnis dicta necessitatibus ipsa. Quia provident aspernatur reiciendis accusantium voluptas aut facilis.', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(73, 74, 'Reiciendis cumque ut in.', 'https://via.placeholder.com/900x300.png/009955?text=voluptatem', 'Autem non voluptas autem numquam non et accusamus. Quia perferendis quo id sit eius fugiat.', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(74, 75, 'Pariatur sit nam et earum praesentium quae facilis.', 'https://via.placeholder.com/900x300.png/00bb33?text=est', 'Qui sed eum aperiam quo. Velit molestias aspernatur illo dolores excepturi sed ullam. Et similique adipisci quas qui. Laboriosam fugit hic nihil eum explicabo totam.', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(75, 76, 'Omnis et qui iure vero quibusdam.', 'https://via.placeholder.com/900x300.png/0088dd?text=facere', 'Inventore esse doloremque sit eius dignissimos sint. Enim pariatur sequi quasi est esse et reiciendis aspernatur. Ipsam reprehenderit sit est sed.', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(76, 77, 'Nihil libero similique architecto minus consequatur est facilis omnis.', 'https://via.placeholder.com/900x300.png/00aa77?text=alias', 'Qui sunt id in repellat. Praesentium magni nam aut fugit id. Non ipsum sit veniam quia dignissimos ipsam. Aut omnis perferendis dolor laborum consequatur.', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(77, 78, 'Ad qui ab impedit minus reiciendis.', 'https://via.placeholder.com/900x300.png/0022ee?text=ratione', 'A eaque architecto voluptatem consequatur. Quod itaque harum rem rerum possimus et odio. Voluptatem animi debitis exercitationem eveniet eaque. Ut magnam aut vero quos non et adipisci.', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(78, 79, 'Sapiente voluptatibus dolorem reiciendis id et.', 'https://via.placeholder.com/900x300.png/005511?text=eligendi', 'Magnam facere enim numquam. Qui libero quaerat voluptas illo. Cupiditate nam molestiae velit ut atque accusamus.', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(79, 80, 'Non nihil ad eos voluptatibus possimus beatae labore.', 'https://via.placeholder.com/900x300.png/00eeee?text=et', 'Ratione velit voluptatum quisquam enim omnis possimus non excepturi. Qui sit temporibus autem iure ut minima officiis. Quia est aut in dolor et aliquam dolore autem.', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(80, 81, 'Sed voluptates eaque eaque consequatur architecto amet perspiciatis.', 'https://via.placeholder.com/900x300.png/0077aa?text=ab', 'Praesentium aspernatur quo iusto officiis voluptas. Quod corporis amet minima quaerat. Dicta nobis dolores iure suscipit eaque. Illo odio aliquid adipisci maxime facere recusandae odit.', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(81, 82, 'Dolores aut non quaerat magni.', 'https://via.placeholder.com/900x300.png/001133?text=dolor', 'Iusto qui saepe aut earum in. Velit neque perspiciatis nihil mollitia. Sed dolor eius accusantium natus vitae est.', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(82, 83, 'Qui ipsam laboriosam esse ut libero beatae sed.', 'https://via.placeholder.com/900x300.png/00cc33?text=iste', 'Recusandae earum ullam autem et possimus. Illo eos hic occaecati autem. Officiis quo sint quia quasi quasi praesentium est.', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(83, 84, 'Quia eos dolorem dignissimos expedita ab fuga repellat.', 'https://via.placeholder.com/900x300.png/00ddaa?text=ipsum', 'Et explicabo tempore qui rerum et rerum. Minima cupiditate a quod facilis.', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(84, 85, 'Sapiente temporibus in odio ipsum aspernatur.', 'https://via.placeholder.com/900x300.png/00bb66?text=voluptas', 'Reprehenderit consequatur et ipsam expedita. Optio enim enim esse voluptatem qui vero. Molestiae est consequatur perspiciatis omnis aut. Voluptates deleniti necessitatibus velit dolorem.', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(85, 86, 'Commodi rerum illo expedita minus dignissimos quia eos.', 'https://via.placeholder.com/900x300.png/00ccaa?text=accusamus', 'Necessitatibus nesciunt cum sunt. Corporis qui in quis itaque eum repellat eligendi. Aut voluptas est quo.', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(86, 87, 'Rerum quibusdam soluta qui qui.', 'https://via.placeholder.com/900x300.png/006677?text=iusto', 'Reprehenderit alias commodi quia aperiam officiis dignissimos. Voluptas ad sed error dignissimos eos dolorem natus itaque. Earum quas ratione vel nobis nobis.', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(87, 88, 'Omnis maxime voluptatem quo sit.', 'https://via.placeholder.com/900x300.png/007788?text=itaque', 'Aut a nihil nam aut occaecati est expedita. Ex neque quasi et excepturi quod. Suscipit minima voluptatem rerum consequuntur. Deleniti accusantium explicabo voluptatem consequuntur maxime.', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(88, 89, 'Perspiciatis repellendus et dolore tempore.', 'https://via.placeholder.com/900x300.png/008877?text=veritatis', 'Sequi quaerat voluptatem ut optio dolorum omnis saepe. Quidem ut et ut quos. Esse totam aut quas quibusdam blanditiis molestiae. Esse eos distinctio suscipit quod.', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(89, 90, 'Dolor aliquam dignissimos dignissimos et iure minus ea.', 'https://via.placeholder.com/900x300.png/00ff66?text=et', 'Et voluptatem laborum pariatur alias beatae. Corporis veritatis provident quo sunt. Et eos architecto ipsam sint voluptas. Voluptate ex quibusdam debitis voluptates dignissimos fuga omnis.', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(90, 91, 'Eos et explicabo molestias ea voluptas delectus sapiente.', 'https://via.placeholder.com/900x300.png/00bb77?text=ea', 'Doloremque tempora porro et aspernatur sit non. Necessitatibus consequatur et molestiae. Rerum veniam consequatur iusto accusamus voluptates qui magnam.', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(91, 92, 'Sapiente consequatur sunt nostrum ut voluptatem fugit.', 'https://via.placeholder.com/900x300.png/002211?text=veritatis', 'Et perspiciatis suscipit dignissimos nostrum quaerat quidem at. Exercitationem perspiciatis et est sed ullam quod.', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(92, 93, 'Est mollitia voluptatem occaecati sunt a.', 'https://via.placeholder.com/900x300.png/00aa77?text=rerum', 'Quis eveniet sunt aut rerum voluptates. Qui autem voluptatem voluptatibus ratione.', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(93, 94, 'Odio occaecati ipsa autem earum.', 'https://via.placeholder.com/900x300.png/0088ff?text=et', 'Aut dicta nihil nostrum non. Laborum aperiam illo ad quae rerum necessitatibus ut. Explicabo fuga omnis praesentium ut. Dolor pariatur qui ullam iste dolore.', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(94, 95, 'Rerum et voluptates quas consequatur fugit incidunt.', 'https://via.placeholder.com/900x300.png/001122?text=voluptatum', 'Et possimus et itaque consequuntur quia eos similique. Non commodi et aperiam similique praesentium velit. Architecto voluptatem reprehenderit velit et architecto enim asperiores.', '2020-12-09 17:42:33', '2020-12-09 17:42:33'),
(95, 96, 'Ea rerum voluptatum ea repudiandae sed vero.', 'https://via.placeholder.com/900x300.png/002299?text=sunt', 'Ut deleniti eligendi voluptatem. Deleniti debitis molestias sed voluptatem non commodi. Dolor et vel repellendus voluptas distinctio consequatur vel. Officia sapiente et voluptatem repellendus.', '2020-12-09 17:42:33', '2020-12-09 17:42:33'),
(96, 97, 'Dicta tempore a vel qui modi.', 'https://via.placeholder.com/900x300.png/00cc11?text=et', 'Et enim omnis dolorem qui atque. Harum rerum earum velit et repudiandae eaque. Officiis eos debitis maiores incidunt et.', '2020-12-09 17:42:33', '2020-12-09 17:42:33'),
(97, 98, 'Accusamus nesciunt aut voluptatibus qui dolorem saepe.', 'https://via.placeholder.com/900x300.png/00aa33?text=blanditiis', 'Quia incidunt ut excepturi impedit. Tempore aut eos perferendis quo ea rerum. Voluptatem quia sed quis minima autem fugit quisquam. Atque placeat voluptatem ipsam ut.', '2020-12-09 17:42:33', '2020-12-09 17:42:33'),
(98, 99, 'Beatae voluptatem voluptas occaecati et deleniti accusamus.', 'https://via.placeholder.com/900x300.png/00ff55?text=temporibus', 'Veniam rerum odit et et optio molestias. Minima sint dolorem velit voluptatem ipsam animi veniam accusantium. Vitae saepe inventore sed ea alias sint sunt.', '2020-12-09 17:42:33', '2020-12-09 17:42:33'),
(99, 100, 'Voluptates id laudantium ipsa occaecati.', 'https://via.placeholder.com/900x300.png/00dd44?text=temporibus', 'Soluta voluptates est quo assumenda nisi occaecati. Rem quisquam aut ut ipsam cumque voluptatem corporis assumenda. Molestias corporis inventore voluptate doloribus velit odit ut.', '2020-12-09 17:42:33', '2020-12-09 17:42:33'),
(100, 101, 'Quia dolorum voluptates veniam nemo et voluptas laudantium.', 'https://via.placeholder.com/900x300.png/0066aa?text=qui', 'Dolorem vel modi minima ut eligendi magni veritatis voluptas. Aut inventore id dolorem rerum corporis. Atque aliquid perferendis consequatur assumenda.', '2020-12-09 17:42:33', '2020-12-09 17:42:33');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2020-12-09 22:09:29', '2020-12-09 22:09:29'),
(2, 'Manager', 'manager', '2020-12-16 20:59:44', '2020-12-16 20:59:44'),
(3, 'Author', 'author', '2020-12-16 21:00:29', '2020-12-16 21:00:29'),
(4, 'SubscriberS23', 'subscribers23', '2020-12-16 21:00:51', '2020-12-17 20:21:15');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 2, NULL, NULL),
(1, 3, NULL, NULL),
(11, 1, NULL, NULL),
(11, 2, NULL, NULL),
(11, 3, NULL, NULL),
(12, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ricosuaveSS', 'Edwin Diaz', 'images/pCpueEQt3PVz1jqeJ18vRjbEAsbjBMWJIDwsVJ8u.jpeg', 'edwin@edwindiaz.com', NULL, '$2y$10$NxFZ6k8QeYvHUHO5O3uFbOIluFsUSBbkMpukeWDmQrAlVNvTu1Rb.', NULL, '2020-12-07 20:51:09', '2020-12-07 21:47:21'),
(4, 'walton17', 'Derek Prohaska', NULL, 'ubaldo20@example.com', '2020-12-09 17:42:14', '$2y$10$/5Cd8gBUx/EDDWcuiXVlWeAdLli7GN3l1a9QqKEEDzCvA9BmuW/Km', 'pwm811xevs', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(5, 'sasha.funk', 'Leola Abshire', NULL, 'hilpert.zoe@example.net', '2020-12-09 17:42:14', '$2y$10$ltujQVs6nT6CNIPQwjHOneU6wOqz0CN57cL8Q6NwHjgpzcf7zHY0C', 'CIk1m9Mth9', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(6, 'bhuelsUPDATED', 'Kelli Hansen', NULL, 'lynch.jonathan@example.net', '2020-12-09 17:42:14', '$2y$10$dZKftcBFG0ip4Ee8pCtRIurb4sWqGOOIjTS9hMf4pEJDBWigkv1zq', 'SIzhOOq3U3', '2020-12-09 17:42:23', '2020-12-15 12:06:41'),
(7, 'jacobs.haylee', 'Bethany Gerhold', NULL, 'nichole63@example.com', '2020-12-09 17:42:15', '$2y$10$MDRSOnFF3aXUnwb9ePSaWe3.Q9IrF7uyZ8nUPgsg3FazR0ru8VTpq', 'SbJkVoqcgJ', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(8, 'sawayn.maximilian', 'Roger Mraz', NULL, 'jasen69@example.com', '2020-12-09 17:42:15', '$2y$10$XkxhLPXoWDerR23h0x.LUeohFU0xwdRnTfP6ThdPm2pzBkUfHhdGW', 'LoBQrW7iVR', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(9, 'elissa31', 'Daniella Lang', NULL, 'anastasia87@example.com', '2020-12-09 17:42:15', '$2y$10$zOgPAb6ZIq6QvP9F8b3IsuNYv1X/Y6Yix.xu7I.S/C/2uDxNFNdVS', 'B0feZ6aIxv', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(10, 'schmeler.hayley', 'Prof. Katrina O\'Hara IV', NULL, 'abigale.swaniawski@example.com', '2020-12-09 17:42:15', '$2y$10$AiLUtO8k8GPsA24kHbQBsuxAS/6b6JcsdcoeOZ/oegJRPXPioZbA.', 'WKG44ms60D', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(11, 'florian51', 'Sydni Ortiz', NULL, 'nat58@example.net', '2020-12-09 17:42:15', '$2y$10$QRaFVo6pQ182yoz5G70S3.ypufwTQQN8u4D5osZli8TAoqqCbEZPy', 'z8TsiEYiIc', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(12, 'gerardo85', 'Mr. Dejuan Ratke III', NULL, 'adolph07@example.net', '2020-12-09 17:42:15', '$2y$10$ejx2MHSCyrcnV5nRSpFEXeLGDG98HWx2dNEnohCRj2jqAkYpXi5Dq', 'DFQPi4YfkO', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(13, 'esteban.cummings', 'Dion Kub II', NULL, 'camylle.metz@example.com', '2020-12-09 17:42:15', '$2y$10$CrmQF8T1UE48FMWB2oah6e79zGTBe8QHfjfYT7r78IHFg.I3Do1L2', 'D9GRgAmFra', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(14, 'destin31', 'Mr. Brown Heaney', NULL, 'rosalyn29@example.com', '2020-12-09 17:42:15', '$2y$10$LGeL5rOPbS/tUJstsfqbD.O8b4oOGXHpVbwMcahT8o9GwKLeVMyaC', '2mDt1OWWMA', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(15, 'rferry', 'Mr. Garrison Bogisich', NULL, 'skiles.marcelo@example.com', '2020-12-09 17:42:15', '$2y$10$.ctGpxsNXKk5JwdCqRB7OO6y.qKLNk1zvKqwwWh9iAe3w52hO9s4G', 't2sMHDGPsL', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(16, 'okeefe.stewart', 'Dr. Lina Miller', NULL, 'cale10@example.net', '2020-12-09 17:42:15', '$2y$10$OaLQ7kvXmXB6mwICOsWdl.Eq9lf0sxDUAXk6BRNMvUnGKj.Ppywli', '9188uxTXx4', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(17, 'stiedemann.margie', 'Clemens Bechtelar III', NULL, 'elody.rau@example.org', '2020-12-09 17:42:15', '$2y$10$Hor60J7rfWBd3KelWSYWNebRjqOavhZMJHDM7QnXHigMBQ/DzjlPe', 'EyuKaariOs', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(18, 'shanie.green', 'Chelsea Strosin', NULL, 'orn.sheldon@example.com', '2020-12-09 17:42:16', '$2y$10$7WHmj./v0Ylskg6Sdo4JFeA/jMYeLa/3atu8X7CLMaJsiYc9pVGOC', 'i10edKZQJM', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(19, 'elwin43', 'Stephania Tillman', NULL, 'rowe.presley@example.org', '2020-12-09 17:42:16', '$2y$10$59gj8ogv6mu7m0Lz1Y9ZZuXtPRHj2K2nviJg8FMHblfXjsCPJ1LCy', 'kyba9ySFJc', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(20, 'lou.rau', 'Mrs. Missouri Kris DDS', NULL, 'naufderhar@example.com', '2020-12-09 17:42:16', '$2y$10$XkbNZIlTxSeDSCEf2GqK0uDvamDdsM/ZzzMUVBl3USQkkwAE3ePtG', 'VCmVHBQ7Vn', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(21, 'horacio.borer', 'Madisen Turcotte II', NULL, 'rosario75@example.org', '2020-12-09 17:42:16', '$2y$10$6Y5W6nndGY1xkXzztnjMsuAOAYeMZtPQORFaXIADyj3vlhHdWMFYO', 'KlLvKQS8p6', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(22, 'margaretta91', 'Dr. Eliane Gulgowski', NULL, 'jacobson.kathlyn@example.net', '2020-12-09 17:42:16', '$2y$10$8O1xpD8eFKYOrsdn471f7u/ORlZekysPTmoLfCHghc5clqHak1Nuu', '3s4N0lWFCY', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(23, 'crawford11', 'Dino Cassin', NULL, 'iprohaska@example.com', '2020-12-09 17:42:16', '$2y$10$a8SeM.BfwxxlT2KZnpnAH.j3Fez5RbewH5EdTAooOJ4R/bvtFiMrm', 't7ikrXiB9L', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(24, 'koconner', 'Prof. Warren Predovic', NULL, 'rbauch@example.net', '2020-12-09 17:42:16', '$2y$10$DxtJwJa6eyoSUuFLS6R8e.CR7cksezGcelGEUVXazygKrRvOCNAqC', 'bqHqND90nR', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(25, 'ward.efrain', 'Alfredo Nader', NULL, 'gregg.ledner@example.com', '2020-12-09 17:42:16', '$2y$10$J4deF/rRSvf7teMPqdL/F.a07nPCD4T3XWKI3XfvqG0RN.vVKFbde', 'IQ1qYBT9fw', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(26, 'minnie81', 'Savanah Nienow', NULL, 'toy.yolanda@example.net', '2020-12-09 17:42:16', '$2y$10$A3.bV88SNBJwkibxrA2Mh.6gLidfbJy0W6QSGnD6IEmFkQ2QoXY2C', 'eq5zTeprHN', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(27, 'xmueller', 'Kari Jacobs', NULL, 'jennyfer88@example.net', '2020-12-09 17:42:16', '$2y$10$v8dFTf4QoA3jUaBWw0alzObsiklfukU2ystZEP2iOL2PkHiRBLRcK', '9uYTP1jrQu', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(28, 'plangworth', 'Nelda Koch', NULL, 'rmayert@example.org', '2020-12-09 17:42:17', '$2y$10$RxYtS2l5TscMyH8g9pZNXuUCVstCc2fbsHqr/Ba3uLDutHEPiJbw6', 'RBM2b1YiHf', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(29, 'jjohnston', 'Dr. Hillard Farrell', NULL, 'gaston.torp@example.com', '2020-12-09 17:42:17', '$2y$10$IQME.Yq0Q5.W3XICw1Vvju6GVXfcYbBHWkfODu0SUh9ZD4I4z64Ay', 'IFqWNT8B4D', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(30, 'freddie14', 'Elenora Kessler', NULL, 'coralie35@example.org', '2020-12-09 17:42:17', '$2y$10$E486IhOrUymd7oyOnb1dB.ZSj8LF6Uz7/DtNxTblJCHTjE8WakLk6', '80w0tFQPpx', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(31, 'laverna11', 'Courtney Wolff', NULL, 'prohaska.jacinthe@example.net', '2020-12-09 17:42:17', '$2y$10$i046JgvSG0wdKR9Soxpy7usjUx26Oy9zj3IrMl5P7y4f/uagGQD.q', 'cJSdHLBrGK', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(32, 'mara02', 'Lauretta Abbott', NULL, 'ibotsford@example.net', '2020-12-09 17:42:17', '$2y$10$raAWb4bx3c6OiNUerHZ0VuhSmoS0.bsOKJfUaGneSnJGuZEasoDD6', 'mHZQk7recq', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(33, 'kihn.herminio', 'Mr. Jerrell Robel V', NULL, 'janae33@example.net', '2020-12-09 17:42:17', '$2y$10$hs602JSw2Nj.dvlTWowGB./a0bGIsuX8EnBCioHCo1EVZdLzKQjtG', 'u809NELlX0', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(34, 'randal59', 'Vincent Olson', NULL, 'brown.tania@example.org', '2020-12-09 17:42:17', '$2y$10$vj2sxTJ7uILtwAGYHc8VmOs9WtTOd4EYqPw98GQRPD0uYY0IEdCnC', 'XE4hmdRHXq', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(35, 'davis.alysha', 'Charley Ratke', NULL, 'pmurray@example.org', '2020-12-09 17:42:17', '$2y$10$bVWIwa4BfzZhUW8YMVvEJeQ0ExbbX5J7aTL.oiiU/8/nmwS2c1b8W', 'QGnSrZWsu1', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(36, 'wcole', 'Miss Opal Beatty', NULL, 'vhettinger@example.net', '2020-12-09 17:42:17', '$2y$10$rSfUTE37ih.0wUAB8qhHVOyyBCClH2JlVB/0EMQASjO/cvPP7GUgG', 'JAm5sKYDJs', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(37, 'bschmitt', 'Dr. Kristina Kiehn', NULL, 'clifford39@example.org', '2020-12-09 17:42:17', '$2y$10$CswFeR4TgQZ.WFr5lDKQYuSCbb2esBEx8y2GYhlu757oBZ46Sd63G', 'X8oyMEmOEh', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(38, 'clemmie29', 'Chad Wisoky', NULL, 'issac26@example.com', '2020-12-09 17:42:17', '$2y$10$9RQ0ZLqMJpjRQf34T7oALOY92yoo8JAtHX1WrAG4ffS3qD7M2km6m', 'mzIbDrzpKo', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(39, 'odie38', 'Mr. Hector Blick', NULL, 'dagmar.botsford@example.net', '2020-12-09 17:42:18', '$2y$10$uRL0PCfTEkMWQtjmU0bYJObkww8F5R861OVxW8IgRjWhD5VIlvLuu', 'Y7sHdaKHAm', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(40, 'jessika.bailey', 'Willie Leuschke', NULL, 'jasmin.bailey@example.net', '2020-12-09 17:42:18', '$2y$10$Y3UeqyJtATW1Ticm7jhvouuadgNj/LEWy6bKOSNAHrcwVHzoL1w5C', '9AhtI9BWxP', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(41, 'sfarrell', 'Katrina Abernathy', NULL, 'wiegand.madalyn@example.net', '2020-12-09 17:42:18', '$2y$10$KUofnG1X9Z1yXpN/zJdyTuCnXwuU4NkLFgih1N1NeFXdH5Jy242lG', 'jVHeJXp06M', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(42, 'tjacobson', 'Miss Kayla Jenkins', NULL, 'hailee11@example.net', '2020-12-09 17:42:18', '$2y$10$ePitCVf3Z2JTo4MCdmAJuuCdnYE7rURFu57sUY/33.r2v6qtyoy0a', 'uaVWQ0rVJl', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(43, 'ziemann.betty', 'Lindsay Schulist', NULL, 'liliana05@example.com', '2020-12-09 17:42:18', '$2y$10$hprnW8d/gOXY6aa2PaZKveWxyoU7xcUCgdFna9NEKA/H8dPXg0u8q', 'FFxtlxb38J', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(44, 'kolson', 'Sydnee Ortiz', NULL, 'fgulgowski@example.com', '2020-12-09 17:42:18', '$2y$10$ti0beH5XNqXFe86mPkPLc.hsHq7HHUwy3VpKKw7sVt.q1hXdQmdV.', 'teGfo8UV4e', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(45, 'xkuphal', 'Prof. Brannon Dach IV', NULL, 'briana.brakus@example.net', '2020-12-09 17:42:18', '$2y$10$6KMP8lLC0wFmCp3/b6EbY.vGsQMBvNkpMNu01t5ZfdvPu/JJBIAam', 'MtPOsXrnBR', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(46, 'durgan.elenora', 'Jonathon Hane', NULL, 'nolan.timmothy@example.org', '2020-12-09 17:42:18', '$2y$10$SwKAHRds.TKMrcchdiy8duZCvg08gsgUTO/j.sOdlFC.fGHpvc9S2', 'WoINssNtEj', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(47, 'gutkowski.thora', 'Ardella Russel', NULL, 'wwisoky@example.net', '2020-12-09 17:42:18', '$2y$10$3KtosgBO2Iqwm3fAm4uGXO/cD9BmFfXdsnwoNMR.rZj4ROYqsWpQ2', '8KeaEfihEI', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(48, 'aric.nicolas', 'Dr. Ophelia Greenfelder II', NULL, 'urunte@example.net', '2020-12-09 17:42:18', '$2y$10$k7bWI1JO/jEFXXOkYlC7w.84F0gJPFjA.MsA87Z2wNXkVE1wyhPGq', '3pecLTTlOE', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(49, 'zieme.lynn', 'Jerome Metz', NULL, 'bharris@example.com', '2020-12-09 17:42:18', '$2y$10$/6m5HqnBEKWavSm4C5q/IOKBOX7ptSZdrx6AMNdNdwUPZ3aFG218.', 'wupM0zZ1Py', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(50, 'ddubuque', 'Vergie Witting', NULL, 'braun.ashleigh@example.org', '2020-12-09 17:42:19', '$2y$10$hEJTnU3wkDFqPGY2gkNWW.YtsTa6cTtU9Siq18KPurlUbZmaq8Fju', 'idamVeF8OL', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(51, 'carli41', 'Katharina Schumm MD', NULL, 'keyshawn.buckridge@example.org', '2020-12-09 17:42:19', '$2y$10$lQY0Skka9KMLp/xTkgj4AuIrCiOCW2dCn4DzUZvOHo011jNqDN/w2', 'SJSt3ciiFs', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(52, 'adela84', 'Gideon Franecki', NULL, 'greg.nikolaus@example.com', '2020-12-09 17:42:19', '$2y$10$UcqwVISdyHupwFeHaGauZOBa7w/fnexjdt1AeIP5pDOmjT13KwZq.', 'pfUbSk4s7V', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(53, 'berge.brooklyn', 'Dr. Colten Mitchell', NULL, 'leonor.mosciski@example.org', '2020-12-09 17:42:19', '$2y$10$mfE2W/.qNMfSDTjHG59tVeXyvqZ4.8/FkcJVCU7q2tCdEoLIDTGCq', 'KhaDuU7Tko', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(54, 'bradford14', 'Keegan Schumm Jr.', NULL, 'leuschke.rachelle@example.net', '2020-12-09 17:42:19', '$2y$10$SrkfvsV8AWdpj7kMOICu8.dKbqF/xJDSX7laM1bobMFSz6rDxEeku', 'XdTZtBB8wh', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(55, 'pparisian', 'Monica Okuneva', NULL, 'heaney.skye@example.com', '2020-12-09 17:42:19', '$2y$10$sd4uiKNJOKIE4F7HdWDNGuXbs.FU33OvniyUNWRxY9bnspmaYJp7C', '8Mt96PHVPG', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(56, 'ambrose38', 'Anastacio Koch', NULL, 'ihegmann@example.com', '2020-12-09 17:42:19', '$2y$10$WAbsDDB551ylUKE8QlaS5uFgCm/jdHA0fVE4n2gO9GL4YlqzZ1Ysm', 'o5H2MJFSM7', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(57, 'mratke', 'Miss Mittie Kunde DVM', NULL, 'mariah75@example.org', '2020-12-09 17:42:19', '$2y$10$geREturVO5GGLHMJXhXvK.FSkF.TYk6nVC83AmkOn7aa5Dz.EahAa', 'vosWeZILMa', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(58, 'windler.brandon', 'Cheyanne Lind', NULL, 'graham.leann@example.com', '2020-12-09 17:42:19', '$2y$10$jkpdIvWeAajo0Umiq7MJ/u3kOWZZUhzQJVnsJ0FEZUR4jsg2G53Mi', 'NTE96kTexm', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(59, 'evan22', 'Mrs. Justine Schaden', NULL, 'upton.nils@example.org', '2020-12-09 17:42:19', '$2y$10$r/gu/fLJEaeqwQOPZEtUz.AGLL9.oPsNcc4LIfDBfp7ZazVnU.8a.', '0UeDHFggtD', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(60, 'jolie.greenholt', 'Brad Goodwin', NULL, 'ylebsack@example.com', '2020-12-09 17:42:19', '$2y$10$fUhe9wuJe21fZDeczdQAOuW4NjacrhhhoCei5MlxciMjlXKf1OiFm', 'zRHWcybOMZ', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(61, 'mhodkiewicz', 'Francis Hickle', NULL, 'elyse.hettinger@example.org', '2020-12-09 17:42:20', '$2y$10$3tdW8yYqE0n9AqrE53wW0e3XnQO1jhDfHxl/5aFrlwRs5kDjzcr1a', 'PKHojTz3ot', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(62, 'columbus89', 'Dr. Enid Leannon Sr.', NULL, 'domingo.corwin@example.net', '2020-12-09 17:42:20', '$2y$10$xtQkKfesshI9jOa44VYmKevk19gZLuMiMGGRgw7mcC0neRhGT.ZtC', 'sKJdVcuJOb', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(63, 'vmueller', 'Mario Kohler Sr.', NULL, 'pboyer@example.net', '2020-12-09 17:42:20', '$2y$10$xS6ArHp766wH7.zWMycXp.I/E2dCWypYf8Xvs718x1/Um5VhTwM1a', 'n2PwZiOHgs', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(64, 'maggio.sammie', 'Dannie Lubowitz', NULL, 'america96@example.net', '2020-12-09 17:42:20', '$2y$10$dpVMJ5lzOmj8pEP/FVaJM.EYaYxcDTGFH2KzMjiovfsk2XkqYl7bq', 's90kKvlh1S', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(65, 'edward01', 'Ms. Maxie Beier MD', NULL, 'lavada.schaefer@example.org', '2020-12-09 17:42:20', '$2y$10$IjiYz36Da/j8q72yo6CH8eKhUiDHEk3aVZzUbeKeNvIFY9URhWBve', 'NBfE9TJdNH', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(66, 'yost.nathen', 'Mavis Kilback', NULL, 'leuschke.sanford@example.org', '2020-12-09 17:42:20', '$2y$10$RfiXhsC2dv0UEtshRMJr.un80tO4H.oyW6PyNsPs7XYz5yVe42XKq', 'HzPq08bXyi', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(67, 'colton28', 'Lurline Carter', NULL, 'gcassin@example.org', '2020-12-09 17:42:20', '$2y$10$fxEbofT7O54Fz7xamUs03uhRPQ6KuJe21hIFEjEg9d1el6I9A1xXK', 'I2BXifxhwj', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(68, 'uyost', 'Mr. Keon Shanahan MD', NULL, 'jacobi.trisha@example.org', '2020-12-09 17:42:20', '$2y$10$Deifc2HgpFS.OtN.vZ/amO.hrTrRnEKbcYni7rZJRuR0uETG/WIE6', '2HZUwEfSoJ', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(69, 'yundt.dante', 'Isabel Kemmer', NULL, 'mcdermott.madyson@example.net', '2020-12-09 17:42:20', '$2y$10$LAhriAVcCJSN63ikTyhYAuqeece0DZYyl184.jnPehFuASwcwESkq', 'jOTKeypBhs', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(70, 'dare.gudrun', 'Davion Grant', NULL, 'akihn@example.com', '2020-12-09 17:42:20', '$2y$10$kHqYTJyKGzgcG/rtk5fBr.s4.CRdbEs9oZXmZrEegRu.8YSiwoLSy', '1mTEwCwNGc', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(71, 'vgutkowski', 'Angelina Schmitt', NULL, 'simonis.sterling@example.com', '2020-12-09 17:42:20', '$2y$10$eDueCNFkP3FAv0qqrZyGWuiCAWxfGTMuA6J8716rDJU0YjttzuDZa', 'Gp3qYFcLXF', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(72, 'ivory.toy', 'Dr. Brennon Stehr', NULL, 'deckow.sister@example.com', '2020-12-09 17:42:21', '$2y$10$7Y969OJ5rNTZchb13a5McuTfsleJ2GzSRVy4SAbrizMo5twSXC0Km', 'hwXw1KYYFJ', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(73, 'boyer.margaret', 'Brian Wilderman', NULL, 'kuhlman.frida@example.org', '2020-12-09 17:42:21', '$2y$10$uI6xMipBPFGGEYqDP4yi6uJ.H8w6K4L6JZRObROkyo/iYgwl2Txpi', 'zQ9otBnscm', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(74, 'fay.lavina', 'Tatyana Hackett', NULL, 'aschinner@example.org', '2020-12-09 17:42:21', '$2y$10$mFsRFfIdQwo1hOOq47b8wulto8LIs.46vlsxSTYWrVgLxH/.LZD3K', 'YDhC47Rcik', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(75, 'nabshire', 'Ned Kertzmann', NULL, 'renner.cydney@example.com', '2020-12-09 17:42:21', '$2y$10$k9BTIJuk2WojbRGS3HNGTO3xkzH7BmdkU3pcyjlXWCzDwpAeBbMsu', 'pBp3pFM7Kq', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(76, 'katrine63', 'Kaitlyn Jacobi', NULL, 'vsatterfield@example.com', '2020-12-09 17:42:21', '$2y$10$LfYLAqFV/2BOz23VBClSjO5NOcTqMvsQRlRnwL79eT3FIpqmiQkBW', 'eFB2OH0ZQL', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(77, 'yblanda', 'Triston Robel', NULL, 'hayden01@example.com', '2020-12-09 17:42:21', '$2y$10$wrjzCUDmGeP1Bpoc8DBQ1Oaorqi/I.AWNYW8EOHpxtUGhKu0cZfMO', 'Tc7qQvKxue', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(78, 'molly.berge', 'Marlen Farrell', NULL, 'vernon57@example.org', '2020-12-09 17:42:21', '$2y$10$EXxGTYweLlRkDR97sInKDuuXMX4HEsHiCg2Wv54zVKLTC8Uy4dxqa', '0wyQqhrQmi', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(79, 'douglas.haley', 'Mina Feil', NULL, 'lisette44@example.com', '2020-12-09 17:42:21', '$2y$10$qs.oVcK5o9By3USmpoovu.7qYJo/uonKk4yNBp9pLQoJf4jzfImnq', 'XvVmTxIl7v', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(80, 'kassulke.claud', 'Nellie Nikolaus', NULL, 'alene96@example.net', '2020-12-09 17:42:21', '$2y$10$eYDdvFdqq6q71q9UbSkG6OCsRD2KVqtdeCw0Ei7Fo7yWTMNXSluGS', '9OQYCbAmWv', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(81, 'trantow.meaghan', 'Prof. Eileen Armstrong', NULL, 'ywill@example.com', '2020-12-09 17:42:21', '$2y$10$dFI1Ql7gs.IblBu6MMeNIe3rkImev6UU1ctSlB93Fq/.N4rXzT6Ka', '8EI3ZfW27R', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(82, 'nokeefe', 'Carey Pouros', NULL, 'katrina30@example.net', '2020-12-09 17:42:21', '$2y$10$8gpky2QmJwWuPXFCxsjh6e0jJhokwTRJ/3rbFsp3ucb6uW7FOQn6.', 'cMl693Fhxb', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(83, 'darrion.hand', 'Angelo Barrows', NULL, 'jalen.prohaska@example.com', '2020-12-09 17:42:22', '$2y$10$sEuI4WjCEWZdX2dkKBEbSubxHMgWcOxr.6.peTrGReVah9gX2kYqW', 'Mdm5ngQEjk', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(84, 'vcasper', 'Margaretta Osinski', NULL, 'melisa.littel@example.com', '2020-12-09 17:42:22', '$2y$10$1d7h.kE3uGgrEKr9pI4bkeKoo5XXTI7lNVivXYmMQydvrLeF95Jfa', 'efj4dknR71', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(85, 'gabrielle29', 'Herman Parisian', NULL, 'ottis.mitchell@example.org', '2020-12-09 17:42:22', '$2y$10$0hlL8YfUGWN/1h17x.JKNe.PZtXo07dnud9anHubez/3BKDmETAt6', 'tE7W1VjGB7', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(86, 'rogahn.enoch', 'Dedric Abbott Sr.', NULL, 'olson.johann@example.org', '2020-12-09 17:42:22', '$2y$10$BZMBh5imyBAhsb11fJryj.u04ISOKNXhZFM69ry3wJcw8Ucmzdu4q', 'IeKQufVjTB', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(87, 'huel.victoria', 'Flossie Gleichner IV', NULL, 'ywiegand@example.org', '2020-12-09 17:42:22', '$2y$10$CQr8SwzmcrjRe3WmTVUNzue3x8mj9ONEJBKXZnaRFNwGJ2Mea/3ay', 'u2cuH4Hz8h', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(88, 'irma.dibbert', 'Glenna Reynolds', NULL, 'paltenwerth@example.net', '2020-12-09 17:42:22', '$2y$10$FbOjlSTqBrayfWtvzqXyHeqzupxww7Hs.2Z9hnuq3tC1hA/1jWt9q', 'QKNcCARlxH', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(89, 'gjerde', 'Prof. Daphnee Kassulke', NULL, 'champlin.nia@example.org', '2020-12-09 17:42:22', '$2y$10$cnD1uAtdXxTGUwCd7ZuCu.iuQSoxKYI8eBtrRCaaAFTH6KrOJokK.', 'P4iNvdBVZr', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(90, 'douglas33', 'Kelsi D\'Amore', NULL, 'tiffany15@example.net', '2020-12-09 17:42:22', '$2y$10$zhQPLuMAn1t1I0yKzTXlKeae9QDvs/JbH.LvCR20tboNAuol5pt2.', '7NV4s0GgiX', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(91, 'btromp', 'Miss Juliana Schimmel I', NULL, 'cconroy@example.org', '2020-12-09 17:42:22', '$2y$10$lie1dl/ysrTuwMtO6OLMvuBXcYarYQkG4obLQY4d/J7Dn5o88eX/m', 'IT0LwcKul1', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(92, 'leffler.daisha', 'Mrs. Erna Purdy', NULL, 'tcasper@example.net', '2020-12-09 17:42:22', '$2y$10$QO6UyPgWEzXLUY0ZLkYDE.3V2OIMFurXh2tsw8qeysEMG6saVfOPO', '5qTvBKrxVq', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(93, 'grohan', 'Raymond Jacobson DDS', NULL, 'keon.kessler@example.org', '2020-12-09 17:42:22', '$2y$10$ezhw8TSPT25dXURacDuoIevrJg1EK03CKEsKFFYtBRhC4KGibdI3a', 'Y41eUOe2fn', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(94, 'braxton.mann', 'Robert Wehner', NULL, 'beulah89@example.com', '2020-12-09 17:42:23', '$2y$10$2KmDpbCKZlF.BThxAJ.HyOpEA7cm2Op0acxX8gJmjCCtJLQxJLAwy', 'Ip0V05I92b', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(95, 'wwindler', 'Mr. Duncan Gutkowski', NULL, 'edward54@example.org', '2020-12-09 17:42:23', '$2y$10$r0g381/fPp6I5Y9cFwv56u1Zpnpv8XdEgaEwbW1liWazDXMol3rhG', '4bMs6yD2a2', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(96, 'jaquelin14', 'Jeffery Hudson', NULL, 'bode.mervin@example.org', '2020-12-09 17:42:23', '$2y$10$agF2KpONcZzvNnYgOFhwr.bh9Dy9XRmNM2ljW38lnA6FVUmcVfhr2', 'jXW4MU35vK', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(97, 'julio.rice', 'Alexa Kilback', NULL, 'linda18@example.org', '2020-12-09 17:42:23', '$2y$10$otkp58/UBsQARzhjb0x9g.7mOUvgYdzjnm1/W7nqxM51tbc/lSuTq', 'Drnl7Zvzy7', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(98, 'gerson27', 'Mr. Isaac Mitchell', NULL, 'bahringer.leonie@example.org', '2020-12-09 17:42:23', '$2y$10$DeKf.imiD6TztHe1U9rt9uqkltZD76zMeEHCy2WJrpzOlAGRR3POq', 'JSX9EvsIaV', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(99, 'sanford99', 'Shea Langworth', NULL, 'twillms@example.org', '2020-12-09 17:42:23', '$2y$10$lxsi1sQ1E3fP4Co1V6T1xeVxgXb.jYsDOSqXJDGnftFZgSWvsleBy', 'uxDz3ghKYe', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(100, 'conner.daniel', 'Haleigh Von', NULL, 'qward@example.net', '2020-12-09 17:42:23', '$2y$10$2ya4VD6L/QRR3zpxI/IVF.uRv/DIn62NdMLzbwZHYQYDwZv4UOqm.', '644IiJnRMa', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(101, 'florencio80', 'Willa Pagac', NULL, 'rruecker@example.net', '2020-12-09 17:42:23', '$2y$10$OXlFKqO7UYK7RZLxn2XsBOU50Cb96S.TzlkY78m7HDWSBoUot4Wo6', 'VTBbEWYrQu', '2020-12-09 17:42:23', '2020-12-09 17:42:23'),
(102, 'eliane79', 'Bradly Sauer', NULL, 'kamille86@example.com', '2020-12-09 17:42:23', '$2y$10$J.LdtkUqLa9z5rc5F3zBze3jFIA7YdSxqn/xcDetkdXn8OIh7ncPu', 'OciQoHdHK2', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(103, 'emiliano43', 'Darian Kemmer', NULL, 'gklein@example.com', '2020-12-09 17:42:24', '$2y$10$dZgrKG.nIFxvZu4uaIysZe3ZEgvc7pAW7vT0bPYVZMtpYyz6zi2Dq', 'wOKCiIi1cl', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(104, 'vhirthe', 'Jammie Gorczany', NULL, 'opal.kling@example.net', '2020-12-09 17:42:24', '$2y$10$gkleGtBWQHcgRhYLAoL4x.rgewQiVu6xqdcZw1EQjjbktPSFpPfEW', '7GcXodIq68', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(105, 'howe.chloe', 'Wilfrid Funk IV', NULL, 'woconnell@example.net', '2020-12-09 17:42:24', '$2y$10$J669Olq4BaDfBy6kanJ6vO38kVa7WQWCCrGm2aog35BIiE54c4YUy', '5J2nYdoWzM', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(106, 'karianne81', 'Leon Williamson', NULL, 'kathlyn22@example.com', '2020-12-09 17:42:24', '$2y$10$23q19vg8eL1nNhMN52Sw/ejUn7JTI55MvMk78lgz1V9w3Og/jj0jS', 'bUOgg1UR9B', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(107, 'marty.grady', 'Brian Adams', NULL, 'brandi.shanahan@example.com', '2020-12-09 17:42:24', '$2y$10$tcauFDR9vOS0XYPwPXgTe.tTxwD8ku4GsotDop7uuOixTGtAB3XuK', 'TJahSUO28O', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(108, 'thettinger', 'Mr. Irwin Moen', NULL, 'gussie85@example.org', '2020-12-09 17:42:24', '$2y$10$SguIlW12Mu698clznw8vMeal3itS9EPJ6THKZ135N8MoYhEETJzpG', 'TBp8THz4pZ', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(109, 'mroberts', 'Estella Durgan', NULL, 'lexus22@example.com', '2020-12-09 17:42:24', '$2y$10$c4HQI5uhUYuzVRjetJtsiOdwayJPm9IuvYx0NkNC1Q9q/WLhZq0j6', 'HLuxHA4gy2', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(110, 'streich.benny', 'Winston Brown', NULL, 'mona.hessel@example.org', '2020-12-09 17:42:24', '$2y$10$P2GfvrKOnGwirSu.o5kOx.k0WRgS0lJ7q9dzDnvBIjwVoF0PEYqre', '6JuOYpSxPg', '2020-12-09 17:42:24', '2020-12-09 17:42:24'),
(111, 'kkunze', 'Miguel Buckridge', NULL, 'jlind@example.org', '2020-12-09 17:42:24', '$2y$10$Ng2mWpaDk3EyuexqHTF4DOQ.2qIetChmByMSbTC8O9rtYF6VfwgGW', 'AvhTrkobie', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(112, 'cole.bernard', 'Mrs. Eryn Reichel II', NULL, 'maynard57@example.net', '2020-12-09 17:42:25', '$2y$10$sOA..2b8eoLKUOcZ3E1fnuUcHbE.uM9klCxS7dMRR9IdBSs2gEhyC', 'H3bimuIO6c', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(113, 'qswift', 'Mrs. Isabel Wehner II', NULL, 'laverne71@example.com', '2020-12-09 17:42:25', '$2y$10$jHuQsUQFBNeaRcJIfTI17uvuI1xxfYrJT23w4XrXlCdP/OckD1w5W', '4ZdyCzhM7r', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(114, 'spinka.orion', 'Ladarius Balistreri', NULL, 'kyra07@example.org', '2020-12-09 17:42:25', '$2y$10$sqGhDM9ktH2ANgoATVsaNe2DRHdMcLc.LR73axKppOObLUKFD5JB6', 'a4civYizn1', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(115, 'purdy.loren', 'Jarrod Koss Jr.', NULL, 'zena.hegmann@example.org', '2020-12-09 17:42:25', '$2y$10$s3MeTvXPqyAMXx9556SOsu1KLk1iAGXw1Bz13ozjzr.ctkfqFOAeq', 'Gt3XEZJl9F', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(116, 'vonrueden.joesph', 'Ansley Hane III', NULL, 'cecilia23@example.org', '2020-12-09 17:42:25', '$2y$10$.h4QsYeTIYxbdpI81Fd3UOnllW89ppyhJHVG3FlFSYkV8nPc.VIHq', 'oIicUjdJEa', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(117, 'jerod68', 'Marlin Kuvalis II', NULL, 'lemke.watson@example.org', '2020-12-09 17:42:25', '$2y$10$SzIUPQLLwQJfM0IXDvJAL.2lachtlJ3uy8cjl7alMW5JSXkH262Rm', 'mV4NL595CD', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(118, 'rau.donnie', 'Lenna Pfeffer', NULL, 'boyle.elton@example.org', '2020-12-09 17:42:25', '$2y$10$fWrruvw/jCO78yLrlzslgeoEpbYNCCKD2s/lSC3o5SvLl/KCwt7lC', '8wA5BSGKdG', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(119, 'cartwright.cory', 'Freeda Hettinger', NULL, 'ohara.elza@example.com', '2020-12-09 17:42:25', '$2y$10$XO8cvXrdIGqJH0OW1nbFCOV5ZYojTmFybGHDA5SX6SXGradtQpo7C', 'nSl3BjDuEK', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(120, 'kunze.beulah', 'Dr. Michel Gutmann DDS', NULL, 'hills.kathlyn@example.net', '2020-12-09 17:42:25', '$2y$10$sijlabHG27QLeZ8BL7aSrugLHFt5i5AIWZkk88IbVVcT2kNveUvEC', 'Azni2n41od', '2020-12-09 17:42:25', '2020-12-09 17:42:25'),
(121, 'arely98', 'Prof. Amira Durgan', NULL, 'charlene98@example.org', '2020-12-09 17:42:25', '$2y$10$WkOQXM1EzNrzJsqJvN9PrODgNPZ5mVhwJCaQY7lGC0NOmT7WS.FV.', 'aLlBr1Uw3Y', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(122, 'roy12', 'Isai Daugherty', NULL, 'swolf@example.com', '2020-12-09 17:42:26', '$2y$10$ZWDWSMmQCdf9o1uSYYY6i.9Ra5ojt/FQbDTtCxDvK3ardt.jpHIMO', 'dHxh2rWBDR', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(123, 'stracke.valentin', 'Eloise Kovacek', NULL, 'maddison.kertzmann@example.net', '2020-12-09 17:42:26', '$2y$10$pNwO4BZrTic8QXoNNRKDi.wICI3XdEXf70i3IHl3tvthrIIruAxA6', '07FRlxFv7H', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(124, 'satterfield.price', 'Angela Fritsch', NULL, 'benton28@example.org', '2020-12-09 17:42:26', '$2y$10$0f6sdxfH3NuleeUnuAw.ROpxyExSDavpG0ZW/12rMAqccYU5YA8Xa', 'nW7oxPBG41', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(125, 'hubert.gaylord', 'Tremaine Turner', NULL, 'elisabeth90@example.com', '2020-12-09 17:42:26', '$2y$10$vLdkFrKAxCVI7Y5Rvg8KpeEO1Qhea7BL06FKl.BB0BBvRc13PUwJ2', 'aHhKSZPLht', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(126, 'sylvester42', 'Jeremie Sporer', NULL, 'zschoen@example.net', '2020-12-09 17:42:26', '$2y$10$QPpgPDZOO2Jo/iOLulr0QO9MkdVGfHq7ToU77oXEpRupinh1zhUIm', 'IQfLpeZLqG', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(127, 'efrain.prohaska', 'Dr. Claudine Mann', NULL, 'talon78@example.com', '2020-12-09 17:42:26', '$2y$10$pfd0AkXokm1GHEt2cr2Tzux2eg4uRziI6HsRkgqugReuNFTDu6Pme', 'TemMgjF5Z3', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(128, 'novella.wiegand', 'Elda Balistreri', NULL, 'grimes.godfrey@example.net', '2020-12-09 17:42:26', '$2y$10$yTikO5UpDHIsArPoYcYR7emeOdrY1HuTnus/FLf4S.JiAeCjMDw.i', 'dz8zkcvycY', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(129, 'streich.jessyca', 'Grant Tillman', NULL, 'cummings.zackary@example.com', '2020-12-09 17:42:26', '$2y$10$jkKtFPhO8fVaAz2Y1QaZUuPt4jVbNUzHj0yGtzYvKPmCTQq9UPFu6', 'Me98vMqoOg', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(130, 'oberbrunner.hazle', 'Suzanne Marquardt', NULL, 'glockman@example.org', '2020-12-09 17:42:26', '$2y$10$YxvuM/dDLVpG5TQE4b.t9Oj8jOUN6RF56BOyjUjkuGDF3hs59yuh.', 'CEEN67Hv2K', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(131, 'murphy41', 'Chauncey Leffler', NULL, 'spinka.roberta@example.com', '2020-12-09 17:42:26', '$2y$10$5D0LUEw7/g.MCdVaX9axpuXYSk8fMuRXGO7Gy.rsNpJGflEE9cBHS', 'UqS7HFGpBn', '2020-12-09 17:42:26', '2020-12-09 17:42:26'),
(132, 'jstiedemann', 'Lizzie Schaden', NULL, 'sydney.anderson@example.com', '2020-12-09 17:42:26', '$2y$10$EK2IhuHYZFxzIzAvAahtu.vtba4qO8vJ8skxiQcFU1qCv7udBknPG', 'YvJTL5oNa0', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(133, 'ggoyette', 'Adela O\'Keefe', NULL, 'emckenzie@example.com', '2020-12-09 17:42:27', '$2y$10$vvzKPio1tSPbkK0Dv/apzOkmq3VvAIbkZC99s3rXW0uz23mlBCXqm', 'S38qjNjZab', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(134, 'johnston.alan', 'Glen McCullough', NULL, 'daryl.kuhn@example.com', '2020-12-09 17:42:27', '$2y$10$GD.NQic5ISEX1X8j/HnHNum0ykxILeDluDtdM/CV99fIfKN52DFiq', '5qcoyj9uSO', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(135, 'fhowe', 'Prof. Alyson Kozey MD', NULL, 'virgie47@example.org', '2020-12-09 17:42:27', '$2y$10$qxt2O6HTewUWcu.jh6fIPOLUm2dJh/Rd2koV9YabqFJDLqe.JFWXS', 'N8BMsxycQZ', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(136, 'colleen.boehm', 'Mr. Raymundo Kautzer', NULL, 'fweber@example.net', '2020-12-09 17:42:27', '$2y$10$qTa75ys9QQvLKfi5IwJbwORwPKK3NCc0vqQGPj6xySZ6SmLCimk4G', 'U4kIDWVrLw', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(137, 'xshanahan', 'Anibal Rutherford', NULL, 'walter.torrance@example.net', '2020-12-09 17:42:27', '$2y$10$d2pS0mQHC2hLXHP9cw8ZZeVdJziwzdiGlxdNivStr4yCGnulKF4Tm', 'TgdRn1faal', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(138, 'barton.madie', 'Lola Jacobson II', NULL, 'camden.cartwright@example.net', '2020-12-09 17:42:27', '$2y$10$u9VLdq4.ZAXwsvU7jsNvNuDmIFkw0Xm.Ja4d9XkjeLPwACGORsTz6', 'wTmY5tSRNg', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(139, 'katarina06', 'Keeley Nikolaus', NULL, 'johanna.konopelski@example.org', '2020-12-09 17:42:27', '$2y$10$G80D10d4ziCLjdcMfA/W/ernFOhNfDQB4MBbo/9Ba1HpxoUX1nSH2', 'UxzqyykqiO', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(140, 'walter.hauck', 'Lyda Stehr Sr.', NULL, 'effertz.christiana@example.org', '2020-12-09 17:42:27', '$2y$10$h1KIqU8VGDdn1LYKE7VobuWF5usQUkBL6WDyl4RvAxM.gBKoCkb7q', 'juW7qbq77z', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(141, 'nhirthe', 'Chelsey Schowalter', NULL, 'mason.purdy@example.com', '2020-12-09 17:42:27', '$2y$10$D8sU7qCWfAF9hm8lyyjCzuYMACkd2AhpT/wt1TtvoxMg5p4/RSGoy', 'ZfrZil0K2G', '2020-12-09 17:42:27', '2020-12-09 17:42:27'),
(142, 'noemi.barton', 'Wava Balistreri', NULL, 'gislason.theodore@example.org', '2020-12-09 17:42:27', '$2y$10$dFz/l3.fpQ6LKUOe3xqHRe0B0FU1TVSjERDoAxDWrWbRjW12XT87C', 'TpW2dU97fo', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(143, 'dorian07', 'Lola Bins', NULL, 'bashirian.rupert@example.com', '2020-12-09 17:42:28', '$2y$10$9IuEzmm30ESwgcHaYPuDRe9CcgSQ1zbeuzUuTUpk9qTOU4ML61nNq', 'FHGOpSWovE', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(144, 'maci.ward', 'Wilburn Conroy IV', NULL, 'brenden78@example.org', '2020-12-09 17:42:28', '$2y$10$kBRNVFc0eh.PWA2u4q/XF.wwZbvybj1m45yBwSnLQ8uMA9YMFFJuu', 'Kq8iOFFhoT', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(145, 'anne.ritchie', 'Carolina Ryan', NULL, 'hane.leo@example.net', '2020-12-09 17:42:28', '$2y$10$I5Fhx9eK67ZBQQ1KTf2qReblMUJrTvDev/wwv2oC7VG7RCgPK0IO2', 'sdPZT8P6rg', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(146, 'demarco11', 'Mr. Morgan Terry', NULL, 'cassidy.lowe@example.net', '2020-12-09 17:42:28', '$2y$10$oANmBc/jOwAgOgMK/3C3fuipfMeR27NWdWx.2RMGglYTMr9VPeQqK', 'PkYvlyc6Ej', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(147, 'dgerlach', 'Art Hodkiewicz', NULL, 'fwilderman@example.org', '2020-12-09 17:42:28', '$2y$10$OtX2I4xZlNT7kpRxZOX67O3vRFMjxet9UUwHM24q0URblovwEbvxi', 'mIkJozeKHq', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(148, 'bdaniel', 'Owen Rath', NULL, 'hannah69@example.net', '2020-12-09 17:42:28', '$2y$10$JgNSRCMA3TtpN8SrVwjtDOogfd7JlOKeilHSX2Yul4o9CLI5hvOcO', 'gaW9gPXOzx', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(149, 'sid.dare', 'Mac Kreiger', NULL, 'hettinger.shad@example.org', '2020-12-09 17:42:28', '$2y$10$rna4SfvVVF9vJ2yCjZTg6OdyI1txf/oXYDcT1Gm6ORm4u1U4X.cxW', 'ydhbFfo3ry', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(150, 'westley98', 'Soledad Zulauf II', NULL, 'maryjane.moen@example.net', '2020-12-09 17:42:28', '$2y$10$qMfGyZQEvdJtWiE/gQk2TOM.IX.xNruAXuXz/v5QAcDQ5NvZGqCf6', 'RsJO5OHgm0', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(151, 'dolly.rath', 'Devon Kulas', NULL, 'ethel63@example.net', '2020-12-09 17:42:28', '$2y$10$zN/X774Xs.Q3ZFS5cK/yfuuHPgTCIr8XG7B9RPCg.lzdtqJlUxRbW', 'Ycev6NhbgN', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(152, 'sheldon52', 'Emerald Schuppe Sr.', NULL, 'christophe.runolfsdottir@example.com', '2020-12-09 17:42:28', '$2y$10$7RjS1YfKkavW0lPuzITKvetlUAappSiT5hRtR5HYXlpys2mcTbKOO', 'uI3QGPSYZ2', '2020-12-09 17:42:28', '2020-12-09 17:42:28'),
(153, 'jordy.carter', 'Johnny Walker', NULL, 'jairo.ohara@example.org', '2020-12-09 17:42:28', '$2y$10$iIjeSN/Rv5RUlsOWVTG6/.I3MgLvZ0DZroWJbBcFr41dD3r8MS27u', 'LwySjANUwj', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(154, 'ankunding.rowena', 'Demond Gleichner', NULL, 'onie19@example.org', '2020-12-09 17:42:29', '$2y$10$DBB0b3v58rYTmGca/5bDgegcUrshNP9g.MljCOn0.g0F6nggfQOwS', 'MGE5tLsCXr', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(155, 'guy.hansen', 'Mac Roob', NULL, 'sschimmel@example.net', '2020-12-09 17:42:29', '$2y$10$dTQzF.IG2smE.A1JkqklRubwG6eadhvVXg5b9TkNmxBLJJmkf5HDe', 'uIyltl0Hcy', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(156, 'alize03', 'Cleo Moore', NULL, 'barrett24@example.org', '2020-12-09 17:42:29', '$2y$10$SLFQOfYgxzMq6b43E4aqS.kbyTkfuT/kUcCLENxU2z3RQPUR2rFWe', '8kYGLgx00e', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(157, 'edd.erdman', 'Pattie Dach', NULL, 'roob.larry@example.net', '2020-12-09 17:42:29', '$2y$10$J.dTBMEygNB3rAmT0O8Qf.rx12g0k9h19okwYnuZLC9ePD.Gh73z.', '9AtZNISr2W', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(158, 'serenity.crona', 'Royce Medhurst', NULL, 'walker.guy@example.com', '2020-12-09 17:42:29', '$2y$10$sauIFwo4dV93ktKuGF9nFuS8PRzhlzpCnfdZghYH15qLv69VdVM72', 'YNjIXWWDhV', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(159, 'ledner.santos', 'Ms. Lyda Brekke MD', NULL, 'zetta18@example.com', '2020-12-09 17:42:29', '$2y$10$PBU5cQTvAIQjoNAbCmN0l.PoueQR2dKAwlGB7FfDWj/AyfexB6vou', 'eNL1EnSEXn', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(160, 'joanie98', 'Meredith Hickle', NULL, 'zmaggio@example.org', '2020-12-09 17:42:29', '$2y$10$mPrnr9Mwy/SVAXMLbnlzjOtQqdQcxZKhNyczM2rFYccDvNpzTzHr6', 'KA7U475WSa', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(161, 'oemmerich', 'Agustina Runte PhD', NULL, 'dooley.pauline@example.com', '2020-12-09 17:42:29', '$2y$10$qI0U5RYXgvK42bc62HYeie27224l6x0TZZr6WjhXa0/Xtz7R.Afu2', 'U34oOEySen', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(162, 'okuneva.katlyn', 'Alysha Torp', NULL, 'ziemann.ellsworth@example.org', '2020-12-09 17:42:29', '$2y$10$3xdoaANlkp.xxvzk0FVDJOGhFCQxBWwneoRGddASbmRwO3kgyTs82', 'qHTOtbaRFk', '2020-12-09 17:42:29', '2020-12-09 17:42:29'),
(163, 'kelly66', 'Lexie Wilderman', NULL, 'walsh.moises@example.com', '2020-12-09 17:42:29', '$2y$10$Nu9Mt.CkVICkSBC2eU51UuzOhnnqf4Pf8FV4mv9/LwA6umX9ut6au', '46QqRrPUfn', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(164, 'sauer.glennie', 'Leta Ankunding Sr.', NULL, 'ssimonis@example.net', '2020-12-09 17:42:30', '$2y$10$aodIlsz3B7JSoeZaS5pPM.Cg.5zRicWBgEYNtHotpkTlk5Z2eZqLO', 'ag1tXIrR2A', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(165, 'izabella.steuber', 'Mrs. Alberta Price MD', NULL, 'brent82@example.org', '2020-12-09 17:42:30', '$2y$10$GKHylgmVzkYYNmL9dmt/xuNOdThFoJeqTqA822SKcUK2R2OrOUV26', 'D322eL9UXT', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(166, 'xkassulke', 'Prof. Tyshawn Goldner MD', NULL, 'marion37@example.net', '2020-12-09 17:42:30', '$2y$10$CKMR6CLeS2fxN0ZATtZyDuvEREx6bGS6S0x89wPW3uJ.9hQKA.J/O', 'ulIDN0W3uV', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(167, 'tromp.hailee', 'Oda Schmitt', NULL, 'dkozey@example.com', '2020-12-09 17:42:30', '$2y$10$vJO0QxT3ALp0P8Bpf.NpZeY7RpcUeBDofLLcd8csqmaUxetB1w95y', '9bCBEAr6KS', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(168, 'agnes.mayer', 'Mr. Newton Sawayn IV', NULL, 'margarita99@example.net', '2020-12-09 17:42:30', '$2y$10$0xGtLrDGyucnEqAEoPYohefvXP7G29rNuyLFapQGo9PTevcOuU756', 'WytoyfgUAu', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(169, 'leta.murphy', 'Vallie Williamson', NULL, 'stiedemann.dakota@example.net', '2020-12-09 17:42:30', '$2y$10$XOMCVzsQpPoAc6lRIoroPeMHRf82JW/YrWfnsVkwArxmIonBKPW3C', 'ONg14BmuDI', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(170, 'amaya.ankunding', 'Miss Tiana Denesik II', NULL, 'maegan.monahan@example.net', '2020-12-09 17:42:30', '$2y$10$12iTKFxsPYyD1rtr4zaxCuR/Uk.uIbCtAslq0PlByqWWym5qAEdIK', 'fyCnFinbmO', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(171, 'dante48', 'Dr. Boyd Cassin', NULL, 'ricky10@example.net', '2020-12-09 17:42:30', '$2y$10$axL0usWg7AmrnDHVFy9W3ePecLPXOANpwx8pE.amh.ajzyehJGnre', 'HUJANiodKg', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(172, 'considine.beryl', 'Wade Bailey IV', NULL, 'woodrow.yost@example.com', '2020-12-09 17:42:30', '$2y$10$82LLKIADQU9.8E6WMIN1N.TVtJhjxcvh.wouOtYA.zTQSmmtgAMmW', 'zFHwRc3MDI', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(173, 'thelma.barton', 'Mrs. Laisha Cruickshank', NULL, 'schowalter.ada@example.com', '2020-12-09 17:42:30', '$2y$10$IR/Pa8Hi6z84ifRhgpvkGOBaT1gco/hXHGFmbx1NREfmLggO2EeCq', '3KfAGeVe7K', '2020-12-09 17:42:30', '2020-12-09 17:42:30'),
(174, 'zjacobson', 'Nova Orn', NULL, 'lenore.ferry@example.com', '2020-12-09 17:42:30', '$2y$10$aLaBkHMAI3o4Xb..O8rk0OSN9IPHCp17LDJF1uYvOa.KgGfvFOlZ6', 'WtC1SzjsYg', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(175, 'bwiegand', 'Prof. Gene Wolf', NULL, 'brayan.abbott@example.com', '2020-12-09 17:42:31', '$2y$10$/06wJelqfEGGYJSnYP5DYeZhy/5R0QYhhIWgckl.ZaDNKCPiON25.', 'lJDtjr7hxj', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(176, 'fritz.simonis', 'Melvina Gorczany', NULL, 'ismael.eichmann@example.com', '2020-12-09 17:42:31', '$2y$10$M5tllMK7u9wzAI93LWL8C.ySSL189SJ4rzCnSRhFt20bDlPx1Ptd6', 'IQXAflG5eQ', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(177, 'fmosciski', 'Prof. Clair Hoeger DDS', NULL, 'nlubowitz@example.net', '2020-12-09 17:42:31', '$2y$10$upOtpeR/p0/RImk6TKXv6u0oToOja./QslqXRLmktVqXbROgJe9Sa', '3N2xSfaNOO', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(178, 'colin.kunze', 'Dr. Margarita Schroeder Jr.', NULL, 'aurore67@example.com', '2020-12-09 17:42:31', '$2y$10$lZ8QzKVqIXHFkLgsyGEW6eSJUpFkpNkDWkMxj26Tdbs1PYQRxY0va', '6FMyn5KdmG', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(179, 'zhansen', 'Laverne West', NULL, 'rory.davis@example.net', '2020-12-09 17:42:31', '$2y$10$x9jQ5rpxU6S.ky.WX2xkK.vnMCKcJpy5YroJVhYTN2L2GPgaY2Uy6', 'yeAeifZx1d', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(180, 'mheidenreich', 'Chloe Rolfson II', NULL, 'mcclure.lydia@example.net', '2020-12-09 17:42:31', '$2y$10$23FZiF1aRgllumKzM8S1Z.g4JoEcBxA6kq/wpW5TGYiRc2H9aLedu', 'iSC3mlwjy5', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(181, 'ramon.nitzsche', 'Electa Bins', NULL, 'janice67@example.com', '2020-12-09 17:42:31', '$2y$10$ekYh5G08SZ2zUZBqqiddaujeTKO0AjmvXMtZutFOF/SQ.P3aaCjEG', 'aqRPCqglV2', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(182, 'spencer.nicklaus', 'Iva Lesch', NULL, 'gshields@example.com', '2020-12-09 17:42:31', '$2y$10$VQz9w0nXWqX.MM.W.RiteOQ9XCIPq86TWmHHd9PFEL5FmMYHQq3IO', 'nSKXXc8zjW', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(183, 'bryana.becker', 'Dillan Willms', NULL, 'rolfson.abdullah@example.org', '2020-12-09 17:42:31', '$2y$10$0aIRCJ7GLBhdhHgDi1VNq.IgRJYgfAo9e4IXlbNaFwi.v1pmNqwZO', 'AdkPwi8Ops', '2020-12-09 17:42:31', '2020-12-09 17:42:31'),
(184, 'junior.powlowski', 'Royce Steuber', NULL, 'rosemary.lang@example.com', '2020-12-09 17:42:31', '$2y$10$FbggUnfyuHzTe.5AjhhfT.ZJdFz2G8vcSeaSq77WoknJ/A2DR6BVO', 'hwz3fP3P5E', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(185, 'lschiller', 'Agustin Lang', NULL, 'yharber@example.org', '2020-12-09 17:42:32', '$2y$10$PJkPT19fAw2I5Hw6DLeFkefe0vf9OMsrkGdRlKqWdXYaVZ1mzIzOW', 'XKZqFiaL5U', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(186, 'ostanton', 'Octavia Beer', NULL, 'darlene.batz@example.net', '2020-12-09 17:42:32', '$2y$10$081GxS79OArj7sjUP7rr.O.GCr/GkwjIqv2gqKbuG8bd62grlEztW', 'Gjji0x2MJW', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(187, 'bokeefe', 'Carmine Balistreri II', NULL, 'rogers.bins@example.org', '2020-12-09 17:42:32', '$2y$10$UoyaEO0W8kKP.RsV1qR9F.V85vu6aY8SnC027mvGEMZI4Wyrxoaue', 'RHIOFHUgOD', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(188, 'brooks94', 'Miss Mollie Howell', NULL, 'lcasper@example.com', '2020-12-09 17:42:32', '$2y$10$wTOpn0Xwy99Lhnlf4HqDyOPSfT2Tiq3BvDLsB6ByVv1CuvgqIFR32', 'TA42B14f5D', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(189, 'raphael.kris', 'Camilla Streich PhD', NULL, 'schimmel.sherman@example.com', '2020-12-09 17:42:32', '$2y$10$jpTaWRcvSeOO09ho0X/k3ehwogHq.utd8NnkkfO4PzNXWTFuHU94i', 'NfVsT4fver', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(190, 'lamont.leannon', 'Ewald Carroll', NULL, 'keebler.cassie@example.net', '2020-12-09 17:42:32', '$2y$10$2F4Vdnkjyke7xDRFeOOcDONz3CPW08mTKzsHmJlfcaNtuWvmJZvD.', 'hDFSPRAj5E', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(191, 'kenton.fadel', 'Eden Kshlerin', NULL, 'juwan03@example.net', '2020-12-09 17:42:32', '$2y$10$lkJs2AwFHVw2QeIt7QYlZeS..0RavsU1eo8B/8tKgIAmFRlbQTrOy', 'cBAJBMjC4P', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(192, 'hessel.samara', 'Kenton Yundt Sr.', NULL, 'lauryn.jaskolski@example.org', '2020-12-09 17:42:32', '$2y$10$Oq498ummLhzKHr3/oYr2Bef5tMV6oInIWU6aF0YBZNBmDBSdz2pZq', 'XIbgfnGOCY', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(193, 'clementina.marks', 'Jaqueline Boehm', NULL, 'soledad15@example.org', '2020-12-09 17:42:32', '$2y$10$04AjVVSa0jMErBPZokCGJ.IbmNap.0O1GiKxlP3tr/TfC6WZapr8S', 'S79vMElbVL', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(194, 'danielle.walker', 'Cleveland Kohler', NULL, 'hazel.pfannerstill@example.org', '2020-12-09 17:42:32', '$2y$10$8UGuQ8QQvmxbhT6/pcnmze1Te9Phiqw3xYFcBK.nryUJN6UyuuW3m', 'UD3nC88iLr', '2020-12-09 17:42:32', '2020-12-09 17:42:32'),
(195, 'tdietrich', 'Anita Crist', NULL, 'mohr.arne@example.com', '2020-12-09 17:42:32', '$2y$10$pilwlV.YWvwPGGs4irz4Xe3sQQmcNg09AfulcKCKPEKbbReDdqFfq', '5glhifxczp', '2020-12-09 17:42:33', '2020-12-09 17:42:33'),
(196, 'stewart.purdy', 'Deonte Cronin', NULL, 'sim22@example.com', '2020-12-09 17:42:33', '$2y$10$mxvVswUQ1s/4n5zd9oiJl.LSH/UOqC4fLkyyfLqA64OQfS0QgwhrS', '14kvT4NdSt', '2020-12-09 17:42:33', '2020-12-09 17:42:33'),
(197, 'billie46', 'Monique O\'Hara PhD', NULL, 'greenfelder.rahul@example.net', '2020-12-09 17:42:33', '$2y$10$Ojhz1y3CI.oWW1QsjmMgj.oeOScMQ3jVZZI1gpghgTZqWL.YYL9IK', '19A1Zhy6NK', '2020-12-09 17:42:33', '2020-12-09 17:42:33'),
(198, 'taylor30', 'Dr. Jacinthe Kunze V', NULL, 'darius06@example.net', '2020-12-09 17:42:33', '$2y$10$y/Ljf/rlUVA3Grqzj4.vheEWYCLN4LeHp6GEVoIqA6/V.Zt8jPaPi', 'j5VVUcT4Is', '2020-12-09 17:42:33', '2020-12-09 17:42:33'),
(199, 'spencer.shyann', 'Maddison Abshire', NULL, 'sdavis@example.com', '2020-12-09 17:42:33', '$2y$10$vtcSeAy.twmn79oUnpjANuuMKyDQQ9/v3vh0nkrSq19Za2Jey0W8.', '0Nb85cSfRA', '2020-12-09 17:42:33', '2020-12-09 17:42:33'),
(200, 'jailyn.borer', 'Miss Gwendolyn Schaden', NULL, 'bbogisich@example.net', '2020-12-09 17:42:33', '$2y$10$2/.kymsZXjQTGRHRg9VJXe.BU2Ir4HmmD4nlmplek4QmSNwf5349i', 'IdXHCvrPFp', '2020-12-09 17:42:33', '2020-12-09 17:42:33'),
(201, 'ischmeler', 'Daija Mertz', NULL, 'moen.beth@example.com', '2020-12-09 17:42:33', '$2y$10$oggu4DcGpLZpG8NlwCq66.o2Sj8odMOxkWTjSQn/KAAQOJJhfOBN.', '8E6CiSdHI6', '2020-12-09 17:42:33', '2020-12-09 17:42:33'),
(202, 'peter', 'Peter', NULL, 'peter@gmail.com', NULL, '$2y$10$1RMnThEFXjNqfo.uu89scOeMgO9zntnYp5gWs6UCGcRvbFoesTNYi', NULL, '2020-12-10 14:35:48', '2020-12-10 14:35:48'),
(203, 'jose', 'Jose', NULL, 'jose@gmail.com', NULL, '$2y$10$qIBMOxqRSPUpjhdyx6NDC.xWoib5IDc8cpfxmMur3APNUxwV7DVfK', NULL, '2020-12-14 20:11:31', '2020-12-14 20:11:31'),
(204, 'jason', 'Jason', NULL, 'jason@gmail.com', NULL, '$2y$10$2ITJYqKbMQwxE0mC2UbmSOVKFpfigt6hc9QP2Y3ayw4mQ1sut6XEW', NULL, '2020-12-14 20:27:27', '2020-12-14 20:27:27');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- A tábla indexei `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- A tábla indexei `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- A tábla indexei `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- A tábla indexei `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- A tábla indexei `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT a táblához `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT a táblához `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
