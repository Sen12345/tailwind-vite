-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2022 at 08:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `postsapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 1, 10, '2022-09-17 16:07:36', '2022-09-18 15:23:43', '2022-09-18 15:23:43'),
(10, 1, 4, '2022-09-17 16:07:53', '2022-09-17 16:07:53', NULL),
(11, 1, 5, '2022-09-18 14:53:45', '2022-09-19 10:10:25', '2022-09-19 10:10:25'),
(12, 1, 3, '2022-09-18 15:02:34', '2022-09-18 15:02:34', NULL),
(13, 1, 2, '2022-09-18 15:05:41', '2022-09-18 15:05:41', NULL),
(14, 1, 10, '2022-09-18 15:23:39', '2022-09-18 15:23:43', '2022-09-18 15:23:43'),
(15, 1, 10, '2022-09-18 15:25:32', '2022-09-18 15:26:22', '2022-09-18 15:26:22'),
(16, 1, 10, '2022-09-18 15:26:33', '2022-09-19 10:10:17', '2022-09-19 10:10:17'),
(17, 1, 5, '2022-09-19 10:10:49', '2022-09-19 10:10:49', NULL),
(18, 1, 10, '2022-10-11 09:57:50', '2022-10-11 09:57:57', '2022-10-11 09:57:57'),
(19, 1, 10, '2022-10-11 11:14:05', '2022-10-11 11:14:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_09_06_182828_add_username_to_users_table', 2),
(7, '2022_09_08_000917_create_posts_table', 3),
(8, '2022_09_09_111017_create_likes_table', 4),
(9, '2022_09_18_161037_add_soft_deletes_to_likes_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(2, 1, 'Post two', '2022-09-09 10:02:39', '2022-09-09 10:02:39'),
(3, 1, 'Posts three', '2022-09-09 10:05:30', '2022-09-09 10:05:30'),
(4, 1, 'Post five', '2022-09-16 20:40:33', '2022-09-16 20:40:33'),
(5, 1, 'Post six', '2022-09-16 20:40:53', '2022-09-16 20:40:53'),
(10, 2, 'Post Eight', '2022-09-16 22:18:52', '2022-09-16 22:18:52'),
(13, 2, 'Eos id et aut rem voluptas ad qui libero et sit ea eos voluptatibus soluta.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(14, 2, 'Velit recusandae perferendis aspernatur facere et culpa nesciunt accusantium magni exercitationem nisi ipsa reprehenderit a distinctio rerum aliquid veniam repellendus.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(15, 2, 'Natus vel veritatis laudantium veritatis repellendus quis qui fugiat et dolores similique ut sint est reiciendis dolor aliquam blanditiis consequatur omnis qui et.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(16, 2, 'Consequatur officia et ipsam dolorum qui consequuntur omnis aperiam quibusdam non eligendi dolores accusamus culpa.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(17, 2, 'Reiciendis quas sint placeat fuga deserunt aspernatur libero et voluptatibus est voluptatibus et voluptatem illo quaerat molestiae.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(18, 2, 'Doloribus quia dolorem odit nostrum qui nemo tempora eveniet quasi et ullam quis.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(19, 2, 'Est non itaque quo accusamus quia eos illo qui reiciendis dolores nobis sed fuga maxime ratione.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(20, 2, 'Illum rerum aperiam ipsam deleniti sequi iste aut aut assumenda vel laboriosam ipsam consequatur velit.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(21, 2, 'Minus et perferendis quia velit nam sed quam mollitia omnis sint minus ut.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(22, 2, 'Quod qui explicabo quo fuga voluptatem voluptatem iste sequi commodi temporibus temporibus beatae.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(23, 2, 'In necessitatibus recusandae fuga quidem sit dolor voluptatem minus corrupti reprehenderit consequatur at.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(24, 2, 'Qui placeat voluptatem culpa consequatur ea laboriosam minus et illum accusantium aut nemo vero.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(25, 2, 'Qui et ea unde odio nulla voluptatibus et sed et voluptatum minus ut esse atque est vel est et sunt nisi ea est.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(26, 2, 'Vel et nihil quod aperiam harum possimus saepe magnam optio magni impedit porro dolorem error debitis quas tenetur voluptas et quam quibusdam et perferendis et sed eveniet.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(27, 2, 'Cumque accusamus ex velit totam voluptatem in magnam doloremque et necessitatibus doloremque nisi et voluptas sunt cumque aspernatur.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(28, 2, 'Labore ut possimus qui dolor dolorem voluptatibus laboriosam minima id quia cupiditate nisi sunt amet qui id perspiciatis.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(29, 2, 'Dolor rerum aut aut error dolor dolores impedit necessitatibus molestiae vero voluptatibus nostrum et id labore similique amet laboriosam ipsam.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(30, 2, 'Repellat autem accusantium sint quia non quibusdam quo eaque dolores quia voluptate laborum eveniet enim consequatur perferendis sunt ratione sequi unde.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(31, 2, 'Quia aperiam molestias vel labore necessitatibus excepturi qui ut quaerat facilis cupiditate enim.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(32, 2, 'Itaque nihil enim rem veritatis numquam illum ut veritatis cumque laudantium beatae sit voluptas minus esse placeat expedita omnis exercitationem.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(33, 2, 'Rem eligendi sunt a unde rerum quam maiores libero explicabo rerum placeat sed repellendus veritatis aut eos qui minus ducimus qui a accusantium.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(34, 2, 'Ut natus et sit hic incidunt ducimus mollitia est accusamus voluptas neque cupiditate asperiores est autem quisquam a est et.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(35, 2, 'Deserunt porro quia sint corrupti autem beatae iure nihil et molestiae doloremque aut ut repellat.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(36, 2, 'Nulla nesciunt tenetur et exercitationem blanditiis accusamus debitis architecto quisquam voluptatem dolorem nihil dolores nobis assumenda quos suscipit architecto aut velit et molestias vitae deserunt sed.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(37, 2, 'Id sed consequatur aliquam ut distinctio provident illum minima quos aliquid debitis quis itaque architecto saepe sed eaque fugiat est et sint reiciendis voluptatem sequi rem in et.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(38, 2, 'In sint aut vero reiciendis id quisquam et commodi dolore quod voluptatibus modi in ullam aut provident unde id non earum ipsum est rerum aut.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(39, 2, 'Velit hic sit et dolores eaque cum vero quae reprehenderit aut ratione repellat autem et molestias id doloribus eveniet dignissimos nihil quas sit mollitia ut quo soluta.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(40, 2, 'Dolores qui labore hic accusamus odio eveniet autem distinctio voluptatum cupiditate quibusdam ab voluptatibus qui harum.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(41, 2, 'Dolore enim repellendus unde qui laboriosam mollitia consequatur sit non magnam aut itaque velit neque unde non fugiat laudantium vero vitae.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(42, 2, 'Voluptatem eveniet ab sit officiis enim numquam nihil eaque blanditiis dicta eum perferendis saepe quia expedita ipsum nostrum accusamus nesciunt aut nemo consequatur explicabo qui assumenda.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(43, 2, 'Aut consequuntur repellat quo velit odio dolor sed voluptatem molestiae non facere quo officiis doloremque nihil dolorum quia aperiam sit suscipit nulla sit.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(44, 2, 'Non veniam occaecati commodi expedita aliquid ut consequatur occaecati ea corporis culpa doloremque error ut.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(45, 2, 'Perspiciatis sint deleniti id tempore doloribus architecto architecto est temporibus magnam aut quam harum quo fugit enim nihil libero.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(46, 2, 'Illo rerum et totam odit optio nam est dolore ipsa reprehenderit illo autem excepturi quis ut non voluptatem dicta qui pariatur at vitae at.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(47, 2, 'Enim placeat ab aut ad et velit nostrum animi voluptatem magnam id quia dolorem iusto aut cumque ex inventore omnis voluptatum vero.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(48, 2, 'Corrupti perferendis rerum est deleniti commodi eaque repellat praesentium suscipit aliquid voluptatem ducimus sit veritatis nemo.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(49, 2, 'Reprehenderit voluptas fuga similique quisquam nemo sit aut ex eos autem ut eius ad corporis architecto quia.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(50, 2, 'Nobis fugit nam dolorem aliquam illum pariatur voluptas et quo accusantium quis totam quo perferendis reiciendis est quisquam debitis ea dolor labore ea quibusdam.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(51, 2, 'Error ratione inventore illo rem et dolorem quo quia autem qui nobis dolorum sint doloremque.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(52, 2, 'A ipsa sint modi et incidunt quis iure ad velit voluptatem nobis hic officiis et necessitatibus rerum molestiae dignissimos iusto.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(53, 2, 'Dolore dolorem qui placeat nihil impedit sed eligendi dolores eos asperiores adipisci laudantium ut repudiandae.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(54, 2, 'Et praesentium similique minima consectetur quasi enim voluptatem repudiandae et itaque similique est quas libero veritatis odio natus qui eum ipsam ut quaerat sit asperiores dolorem occaecati vero.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(55, 2, 'Ratione et porro recusandae molestiae natus odio veniam enim consequuntur modi omnis vitae enim.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(56, 2, 'Impedit fuga quis atque dolorem aliquam dicta inventore eveniet libero assumenda incidunt vero sed ut.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(57, 2, 'Enim illum doloribus qui autem est est sit vitae nesciunt voluptatem quisquam cum consequatur ea ut veniam dolorem at.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(58, 2, 'Non hic molestiae tempora culpa ipsum consectetur qui officiis ex nihil occaecati id voluptates.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(59, 2, 'In excepturi pariatur temporibus provident aspernatur cum velit pariatur maxime deleniti explicabo dolorum consequatur incidunt qui incidunt repudiandae rerum temporibus reiciendis perferendis ipsum ea.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(60, 2, 'Velit temporibus aut accusantium aliquam modi mollitia vel placeat et ut facilis dolores officiis ut vitae alias quidem.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(61, 2, 'Et voluptatibus labore eius natus et neque tempore reprehenderit qui magnam nobis magni et.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(62, 2, 'Sed amet praesentium voluptatem hic autem architecto rerum minima aperiam ipsum et quis facilis reprehenderit corporis excepturi voluptates laborum occaecati quia odit deserunt ex eos delectus et itaque.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(63, 2, 'Possimus quis et hic ut asperiores praesentium rerum dignissimos distinctio et rerum deleniti veniam sit et impedit.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(64, 2, 'Veritatis velit quia id quo ut reiciendis consequuntur ut ipsum quia inventore sed commodi est rerum distinctio velit nulla quia mollitia fugiat.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(65, 2, 'Laborum error maxime nisi nemo sunt nihil ipsam aut ipsam earum nobis voluptas nesciunt aut non officiis accusantium ut eum.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(66, 2, 'Illo incidunt dolorum qui atque voluptatem non delectus nobis quisquam cum tempore ratione eius numquam tempora ullam rerum molestiae vitae aperiam quia incidunt.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(67, 2, 'Modi consequuntur suscipit vitae et minima aperiam odio culpa aut suscipit magni non sequi consequuntur repudiandae nesciunt.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(68, 2, 'Quam tempora non fugiat nesciunt consequuntur sit illum omnis optio iste odio velit consequatur natus numquam.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(69, 2, 'Aut et sit in rerum earum soluta distinctio aperiam consequatur aut optio nostrum nemo sint et reiciendis voluptatem consequuntur ut voluptate.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(70, 2, 'Non doloribus dolor ipsa accusamus at repellendus inventore ducimus mollitia maxime et non minima beatae iure.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(71, 2, 'Nobis assumenda sit libero assumenda voluptas et eius praesentium omnis eveniet eveniet culpa sit odio dolor corrupti nulla consequatur enim cum beatae distinctio nemo minus.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(72, 2, 'Eaque est velit accusantium blanditiis molestiae ut sed qui officiis quo dolore nihil et eaque est beatae quia facere porro totam voluptas.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(73, 2, 'Perferendis quo voluptatem et excepturi animi libero et sequi repudiandae temporibus cumque placeat rerum.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(74, 2, 'Labore ea et ut aut fugiat quibusdam ea et quisquam at officiis at et facere repellendus possimus.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(75, 2, 'At omnis sint corrupti nisi impedit doloremque consequatur non nihil corporis enim facilis facilis.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(76, 2, 'Laborum quis quos vel optio recusandae cupiditate totam hic consequuntur dolorem illum vitae eos molestiae perferendis deserunt officia aut fugiat placeat quis.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(77, 2, 'Sint et sit voluptas tempora cumque molestias fuga repudiandae praesentium aut quia eaque earum.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(78, 2, 'Amet impedit non cumque consequuntur error recusandae rerum qui aperiam velit eum fuga dolorem aut ducimus autem qui blanditiis vel sed officiis sed.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(79, 2, 'Iste veniam itaque ut nobis in saepe cupiditate enim quidem sint illum itaque sint aspernatur est voluptas sunt.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(80, 2, 'Nemo rerum sunt nihil ea ipsam officiis voluptates velit accusamus qui cumque et voluptatem doloremque dolores consequuntur.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(81, 2, 'Necessitatibus ut officiis sunt numquam hic est quia error sed in magnam quidem architecto sit eos animi ipsa corrupti repellat et ut voluptatem dolor et dolorem id.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(82, 2, 'Debitis esse qui est impedit at illo quia itaque vel voluptates sit fugit nisi fuga rem cupiditate tenetur voluptatibus.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(83, 2, 'Natus excepturi ea excepturi et magni consequatur aut reprehenderit qui labore maiores repudiandae ea non sit et aut mollitia iusto quae.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(84, 2, 'Quos tempora at animi distinctio molestiae dolorum id quia voluptatem unde blanditiis iste ut ducimus odio omnis odio consequatur id voluptatibus qui praesentium voluptas quis qui vel laudantium.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(85, 2, 'Exercitationem laboriosam doloribus odit repellendus dolor qui fugit sit sapiente molestiae ipsam voluptatem omnis laudantium est est sunt maiores cupiditate occaecati dolores.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(86, 2, 'Doloribus aut possimus error iste consequuntur sit quasi rerum temporibus veniam harum at cupiditate sequi eos aut dolorem officiis sunt voluptates nesciunt similique id error.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(87, 2, 'Incidunt enim voluptatibus ut qui magni provident ea rerum nihil qui aut ut dolor est est sit officia modi.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(88, 2, 'Ullam quod aut similique vero minima iusto eum aliquid unde qui temporibus pariatur veniam animi animi.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(89, 2, 'Provident molestiae impedit id velit corrupti natus quia aperiam ipsa recusandae enim eaque similique porro atque architecto totam ut dolorem illum deserunt omnis in nam optio voluptas.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(90, 2, 'Ipsa sunt voluptatem iusto iusto corporis cum eveniet dolor soluta quos nisi nisi qui possimus asperiores odit quia ad tenetur atque.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(91, 2, 'Neque adipisci doloremque quis sed eaque modi rerum autem aut exercitationem modi et corrupti quae quas in et ea maxime quae cum alias sed mollitia recusandae.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(92, 2, 'Aliquid et voluptatem eos saepe aut dolor explicabo tempora recusandae tempora asperiores exercitationem.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(93, 2, 'Repudiandae dignissimos mollitia in et beatae earum atque soluta totam ipsa quaerat officia ratione quisquam.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(94, 2, 'Incidunt ea fugit possimus laborum repellat omnis voluptas velit minima exercitationem cupiditate in voluptas voluptas iure dolorum voluptas sapiente cumque.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(95, 2, 'Non atque corrupti rerum ad velit animi libero ratione blanditiis molestias non qui ducimus ut autem ea hic dignissimos ut.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(96, 2, 'Perspiciatis quisquam molestiae sequi eos sunt distinctio blanditiis ut mollitia autem dolorem quo corporis aliquam asperiores.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(97, 2, 'Et nostrum nam rem quis tempora eligendi cumque deserunt delectus beatae omnis natus earum id esse aut ex magnam amet fugiat dolore in tempore unde.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(98, 2, 'Minima et dolorem dolorem voluptatum aut sint hic ipsa iure recusandae vero rem nulla quam est eum non minima.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(99, 2, 'Non cupiditate totam aut quo tempore voluptatem eum itaque sed expedita tenetur quo veritatis consequuntur blanditiis voluptatem ratione aut ratione.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(100, 2, 'Sapiente occaecati eum esse fugit ratione ab consequatur sit eos quibusdam qui iure deserunt veniam dicta eius laboriosam exercitationem cupiditate architecto maxime nemo.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(101, 2, 'Quisquam maiores velit omnis est nihil qui atque iste officiis mollitia dolorem quia inventore ex maxime voluptatum voluptatem deserunt molestiae est exercitationem magni quia ratione suscipit cumque.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(102, 2, 'Ipsa quia magnam ullam quam reprehenderit qui pariatur ab voluptas et repellat porro explicabo autem et fugit exercitationem eveniet.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(103, 2, 'Aliquam quia culpa sapiente doloremque porro sit non non et rerum reprehenderit dolor totam molestias odio veritatis tempore et.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(104, 2, 'Et repudiandae molestias consequatur laudantium quidem doloribus minus molestiae perspiciatis id omnis perferendis consequatur blanditiis nam non consectetur.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(105, 2, 'Et vel alias itaque doloremque adipisci eius voluptatem repellat velit in in ut neque aspernatur odit itaque necessitatibus aut dicta.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(106, 2, 'Facilis nesciunt officia vel laboriosam qui cumque quisquam fuga incidunt suscipit veritatis et quisquam ut consequuntur libero ipsa eveniet iusto nam.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(107, 2, 'Tempora aut earum in recusandae sit asperiores consequatur veniam exercitationem veritatis qui corrupti magni qui nesciunt autem quis quis expedita ipsa iusto deleniti.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(108, 2, 'Mollitia occaecati illum enim excepturi sapiente iusto magni et qui iste placeat dicta vero incidunt iure aut officiis eligendi similique reiciendis dolorum veniam ut temporibus consequuntur debitis.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(109, 2, 'Quis fugit et quo veniam illo dignissimos quia voluptatibus quo odit sit esse veritatis est ad.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(110, 2, 'Non dicta suscipit qui cum qui quia quisquam qui sunt similique est occaecati repellat sunt occaecati nam quia et optio aliquam ut officiis facere occaecati et consequatur perspiciatis.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(111, 2, 'Ut quam quia asperiores consequatur qui dolores doloremque magnam ea facilis quas sit consequatur ipsam et minima aut rem deleniti velit omnis ut asperiores.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(112, 2, 'Sunt quia iure dolorem architecto rerum et adipisci omnis repellat iste et mollitia repudiandae rerum possimus nisi dolores amet cum inventore cumque omnis ipsum.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(113, 2, 'Occaecati quae magni amet nihil maxime et rerum voluptates neque voluptatem sit magnam aliquid.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(114, 2, 'Incidunt quasi nostrum accusantium id ab ipsa sit et nihil sint nemo repellendus quia in sequi quasi voluptates ut molestias occaecati commodi harum sunt eaque et omnis.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(115, 2, 'Saepe velit sit quod quo nihil quis cupiditate nisi ipsam at minus qui voluptatibus pariatur dolor.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(116, 2, 'Voluptatem saepe consequatur recusandae voluptatum culpa necessitatibus nobis omnis ab aut ab aliquid dolor tenetur voluptatem vitae distinctio eum reiciendis.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(117, 2, 'Impedit in dolorum nesciunt ut itaque ut dolor eos est voluptatem doloremque aut.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(118, 2, 'Nisi assumenda et dolorum corrupti ipsum quaerat architecto est et beatae magnam commodi impedit voluptates non et eum aut facilis enim provident.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(119, 2, 'Harum iste animi libero rerum sit eius eos quibusdam hic nemo facere ullam et et sint.', '2022-10-12 05:23:24', '2022-10-12 05:23:24'),
(120, 2, 'Officia omnis et aut itaque facilis illum debitis praesentium dicta natus quia ratione quia harum ut asperiores et asperiores ratione aperiam molestias quae consectetur dolores in quos.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(121, 2, 'Et voluptatem odit dolore eius exercitationem in nostrum qui qui est quia eos distinctio laboriosam accusantium quis nam esse.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(122, 2, 'Sit nisi quaerat et consequuntur et dolores voluptatem omnis provident nemo dolor cupiditate consectetur beatae enim placeat delectus.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(123, 2, 'Officiis ex et facere est excepturi qui recusandae pariatur molestiae aperiam numquam sit ex ipsum dolor.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(124, 2, 'Vitae vero est est non quibusdam in eos aspernatur eligendi ea praesentium qui qui sint vel aut at minima exercitationem consectetur ea mollitia.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(125, 2, 'Nisi atque in minima reprehenderit ab sit aut in magni eligendi cupiditate molestiae ea quia quo quia in enim atque id.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(126, 2, 'Consequatur sit officiis ullam aut rerum aut sed cum quidem quidem qui aspernatur a voluptates sed corporis adipisci officiis at.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(127, 2, 'Laudantium temporibus et voluptatibus voluptate autem corrupti ipsa quo inventore officiis hic nisi enim rem tempore possimus odio dolor et atque a consequatur itaque cum.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(128, 2, 'Totam voluptas et autem est quae itaque autem tenetur quia enim facere non ipsum.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(129, 2, 'Expedita amet et beatae est possimus quam omnis excepturi odio qui rerum reiciendis cupiditate tenetur non iure quasi dolores ipsam dolor ea nostrum porro rerum expedita illum.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(130, 2, 'Et magnam accusamus quam consequuntur culpa officiis enim architecto eligendi et alias cum tempore dolorum ipsa libero maiores soluta.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(131, 2, 'Quibusdam iusto labore rerum et blanditiis voluptatum vel quis aut alias vel consequatur labore adipisci enim optio tempore minus.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(132, 2, 'Accusantium vero sed officiis dolores odio praesentium nesciunt velit dolorem sunt doloremque voluptatem libero delectus rerum quia perspiciatis sunt quo accusamus odit suscipit voluptatem quia ullam quis expedita.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(133, 2, 'Laudantium non repudiandae provident a sunt libero eos laudantium sunt omnis officia ea rerum animi repellendus enim aspernatur sunt est porro quia.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(134, 2, 'Sint repellat quasi labore non aperiam voluptatibus praesentium dignissimos vitae neque quis incidunt facere eum id et alias excepturi suscipit.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(135, 2, 'Adipisci distinctio consequatur distinctio ut ab velit tempora iure eius quis dolor qui aut necessitatibus voluptas corporis neque et asperiores id iure dicta.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(136, 2, 'Et consequatur enim et velit quibusdam eum hic est voluptatem sit maiores inventore quo.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(137, 2, 'Beatae incidunt aliquam distinctio natus assumenda officiis earum totam alias illo explicabo repellendus ab consequatur sint et qui.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(138, 2, 'Ducimus consequatur eligendi hic doloremque expedita id accusamus eveniet mollitia non magnam eos quo vel.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(139, 2, 'Voluptatem fuga aut omnis sed sit modi voluptatem soluta maiores dolorum unde aut aut aut est voluptatibus itaque commodi ab sed at aut velit.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(140, 2, 'Corporis nihil perferendis molestias dolor suscipit aut unde voluptate sed sunt neque qui nulla tempora facilis dignissimos fugiat nesciunt repellat vero qui.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(141, 2, 'Consequatur iusto sunt non omnis velit sit repellendus quis dolor harum natus nesciunt ullam ratione autem.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(142, 2, 'Vero unde illo id ipsam sit doloribus voluptatum ea sint quod nesciunt libero in ipsam facere est sed.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(143, 2, 'Libero aspernatur et est nulla beatae debitis voluptas ut nemo omnis accusantium aut reprehenderit eveniet minus corrupti quo.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(144, 2, 'Qui molestiae sed in quaerat et rerum totam minus modi qui suscipit rerum dolorem velit repellendus est possimus alias quae eos quia autem autem corrupti debitis suscipit.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(145, 2, 'Voluptatem aliquid hic non consequatur deleniti dolor nam velit voluptates a pariatur aut omnis reprehenderit aut veniam excepturi aliquid.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(146, 2, 'Aut nostrum voluptatibus ad doloribus aut adipisci repellendus et nemo quis aut soluta adipisci ut doloribus minus vel consequatur.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(147, 2, 'Neque velit tenetur quo molestias non aut molestias quis aut est totam sint natus voluptas saepe tenetur laudantium officia veniam.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(148, 2, 'Fuga repudiandae tenetur odit nisi voluptatem sapiente quaerat quis laboriosam non perspiciatis totam soluta dignissimos consequuntur et reiciendis doloribus.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(149, 2, 'Odio fuga voluptates consectetur nihil ducimus autem qui et odit fuga sunt et et maiores minus et et qui laboriosam laborum explicabo facilis consequatur ducimus repellat quo.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(150, 2, 'Eum corporis id aliquid ut sunt provident perferendis exercitationem provident voluptas rerum animi blanditiis eaque eum maxime molestias.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(151, 2, 'Aliquid voluptatem quo excepturi quos ad dolor dolor explicabo natus ducimus ut non voluptatum debitis quia ad sunt porro.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(152, 2, 'Perferendis quia culpa saepe quis rerum sed consequatur voluptatum velit asperiores eum sint maiores ea laborum dolorum at amet voluptas sequi architecto molestias ut sapiente quae aut.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(153, 2, 'Minus sunt omnis placeat molestiae cupiditate quisquam delectus aliquam ea modi aut aut.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(154, 2, 'Nostrum officiis reiciendis dolor repudiandae a aut vel corrupti omnis saepe et nihil dolores qui architecto.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(155, 2, 'Dignissimos labore et accusantium assumenda perferendis consequatur perferendis molestias aut quis sit molestiae cumque rem omnis nemo blanditiis totam maxime assumenda rem officiis ea eum hic sit suscipit recusandae.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(156, 2, 'Ea vitae quae quo pariatur velit fugiat expedita illum doloribus nihil aut cum rerum quia rerum deleniti quod nihil excepturi.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(157, 2, 'Nobis enim dicta non vitae velit voluptas explicabo quasi atque occaecati facere culpa nam officiis et ducimus deleniti eligendi qui sunt quis.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(158, 2, 'Omnis recusandae et possimus maiores vel est quia cumque sed autem dignissimos numquam non et quas voluptas quaerat numquam maiores vero aut.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(159, 2, 'Laudantium ab aut cupiditate maiores similique ipsam ea sit in corporis dolor ullam quos dicta ab possimus voluptas qui ratione iste.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(160, 2, 'Dolores aut recusandae et molestiae sit quia suscipit amet natus sit tempora fugit vel tempora quae beatae necessitatibus reiciendis quo ducimus.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(161, 2, 'Non qui tempora ad delectus sapiente magni sint ipsam consequatur accusamus qui dignissimos rerum recusandae minima non ea similique quasi ratione molestiae id omnis fuga quas error.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(162, 2, 'Deleniti sint ut eius eos qui deserunt rem nostrum reiciendis beatae eum quo nisi id illo exercitationem quasi incidunt quibusdam rem dolore quo ea fugit atque culpa.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(163, 2, 'Laboriosam eius et molestiae ut esse magnam et consequatur explicabo voluptatem at necessitatibus aut molestiae impedit architecto sint impedit omnis quasi ab impedit non delectus animi.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(164, 2, 'Occaecati praesentium nesciunt facere voluptatem eum alias molestiae aut itaque animi quo neque est ipsum perspiciatis ut eum consequatur quasi.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(165, 2, 'Placeat at sit quia laboriosam voluptatum et dolorem provident dolores ex rem rerum molestias possimus suscipit aperiam sed sed illo nihil.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(166, 2, 'Vero amet sit molestiae ut ut atque dolorum nostrum velit voluptatem quibusdam exercitationem quos dolorem.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(167, 2, 'Ducimus blanditiis enim error consequatur maxime eaque facere earum voluptas atque nihil quos aut cum.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(168, 2, 'Commodi adipisci nulla facere et soluta sed doloremque quae sed qui est ut quis voluptatem laboriosam rerum aut numquam enim voluptatem dolore at quis officiis qui iure.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(169, 2, 'Voluptatum expedita vel laborum pariatur assumenda modi sunt odit saepe placeat cupiditate beatae id est iure eaque dolorem perspiciatis rerum.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(170, 2, 'Molestiae culpa exercitationem voluptas quibusdam voluptatem animi suscipit sapiente voluptate magnam reprehenderit quaerat asperiores ea vero nemo.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(171, 2, 'Ea nisi tempore molestiae placeat rerum consequatur libero sed voluptas perspiciatis dolores ut sint nobis corrupti repudiandae nesciunt aliquam exercitationem ullam quaerat atque velit dolorem magni cumque numquam nulla.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(172, 2, 'Sit quod rerum omnis rem nisi molestias dolor rerum animi eveniet fugit eum voluptatem impedit reiciendis ut.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(173, 2, 'Officiis nesciunt itaque pariatur voluptates tempora perferendis et minus expedita aliquam vero qui nulla et labore nisi sed et nihil explicabo praesentium incidunt reiciendis temporibus veritatis atque.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(174, 2, 'Molestiae consequatur voluptates ipsa et consequuntur totam vitae neque eum odit est hic harum quas doloribus beatae alias sed ut.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(175, 2, 'Nihil quisquam aut eum vitae et quaerat deserunt labore sit quia vel enim ex voluptas.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(176, 2, 'Et quasi laborum ipsum nam omnis quo illo voluptatem vitae aut eum repudiandae quis accusamus maiores animi.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(177, 2, 'Sunt iusto natus expedita sint iure qui omnis alias voluptatem id id neque at dicta omnis veritatis magni velit ex non laudantium qui culpa quia.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(178, 2, 'Saepe autem possimus non voluptas ut dignissimos sit modi qui voluptas officiis sunt rerum dolorem eveniet totam quibusdam corporis voluptatem blanditiis ea porro omnis.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(179, 2, 'Debitis in et ut ut amet delectus hic pariatur eligendi et blanditiis nisi dolor quo fuga.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(180, 2, 'Repudiandae recusandae nihil perspiciatis ipsa laborum magni eligendi nobis voluptas neque voluptas corporis nisi sapiente incidunt iure atque voluptatem earum optio atque dolores veniam.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(181, 2, 'Illo accusantium libero ut odio tenetur modi id omnis maxime aut aut porro laboriosam aut id enim non nihil veritatis adipisci omnis aperiam dolorum voluptatem in.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(182, 2, 'Esse fugit adipisci officia dolore modi aspernatur omnis et saepe iste id eum recusandae est aliquam dicta eveniet.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(183, 2, 'Molestiae voluptas voluptatem rerum dolor sunt ratione sint dicta voluptatem dolorem numquam itaque perferendis non ut reiciendis sed.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(184, 2, 'Dignissimos dolorem qui molestiae aut quisquam quia omnis in porro veniam qui libero.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(185, 2, 'Vel accusantium excepturi aut vel voluptatem quaerat ut optio ipsa et natus dolorem ut dicta ut qui doloribus eum aut sit vero aut ut fugiat sit.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(186, 2, 'Nam at nihil consequatur veritatis incidunt quia et aperiam nemo aut magnam et quae eos.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(187, 2, 'Quam excepturi enim necessitatibus ut tempore nihil cum inventore quos molestias velit omnis doloremque inventore exercitationem quis adipisci.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(188, 2, 'Est est voluptates animi nihil est eos repudiandae error enim dolores unde quia quae nihil vel et ipsa sint delectus ut eaque iusto id ad alias rerum.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(189, 2, 'Vel in quis quo animi ut fuga placeat ullam autem culpa illo aut facere est fuga quos nemo ut autem dolorem tenetur voluptatibus vel.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(190, 2, 'Molestiae quia repudiandae ratione et aliquam quis laudantium veniam ipsum autem unde quisquam aspernatur qui voluptas consequatur corporis.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(191, 2, 'Sunt corporis quia at sed laboriosam laboriosam aut ea culpa facilis repellendus ut vel velit ad nostrum modi ut sunt minus ducimus.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(192, 2, 'Qui quia neque assumenda quibusdam qui aut molestiae eos quis error reprehenderit inventore quidem dolorum eum iste voluptas.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(193, 2, 'Autem dolores repudiandae possimus labore perferendis asperiores perferendis qui voluptatem aut rerum autem et asperiores et iste est deserunt omnis.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(194, 2, 'Nihil quaerat explicabo porro molestiae veniam sunt et quia non sit sit delectus molestias iure quis numquam rem.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(195, 2, 'Nobis aut ut et quas laborum doloremque veniam quia excepturi mollitia molestias sapiente ex.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(196, 2, 'Totam error illo mollitia officia quis placeat aut eius omnis sit unde impedit labore sint quo quia.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(197, 2, 'Illo dolore molestiae voluptatem omnis maxime exercitationem repudiandae qui odio similique sed ipsum ut libero sed earum voluptatem accusantium ex quis illum voluptatem est aut officiis magnam.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(198, 2, 'Blanditiis laboriosam et nam eos consequatur tempora aut quia vitae aut et sapiente reiciendis.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(199, 2, 'Architecto corporis aliquam porro porro doloribus rerum minima expedita modi architecto eveniet ab dolorem quia aut delectus inventore.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(200, 2, 'Dolores quis ducimus neque voluptatem sit doloremque eos nesciunt quo porro rerum quas aperiam sequi est cumque in accusantium est voluptatem.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(201, 2, 'Qui id maxime in quisquam omnis ad nam blanditiis sequi iste non illum assumenda iure minima iure voluptatem sit.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(202, 2, 'Voluptas quas laborum atque esse aperiam quis odio dolorum ut accusamus ea qui mollitia repudiandae.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(203, 2, 'Adipisci est aperiam qui non id sunt aliquid ipsam numquam laborum molestiae sit eos rem veritatis qui qui quod molestias magni et repudiandae sit atque aut.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(204, 2, 'Natus reprehenderit ipsum et adipisci occaecati alias provident eos deleniti et qui atque et et unde aspernatur vero dolores eos illo doloribus voluptate.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(205, 2, 'Magnam dolore sint nisi est porro in autem animi ullam error beatae quam architecto quos sunt.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(206, 2, 'Et laborum quibusdam et quidem vel unde odio a id quia ut voluptas nesciunt ab fuga fugiat est rem aspernatur aliquid consequatur quo.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(207, 2, 'Suscipit quia blanditiis cumque mollitia autem ipsa quibusdam repellat inventore et qui autem quia sed voluptatem est ut.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(208, 2, 'Debitis molestiae quas nam voluptas eius voluptatem non sed voluptas fugiat rerum dolore.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(209, 2, 'Necessitatibus sint tempore praesentium est enim voluptatem nam sint neque eius aspernatur vitae commodi et tempora qui pariatur magnam ut quibusdam distinctio veritatis ullam architecto debitis doloremque ipsa.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(210, 2, 'Nostrum totam dolorum aut consequatur ut est cum itaque aut neque non qui cum voluptatem nihil minus.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(211, 2, 'Eveniet sed eius minima iure voluptates qui labore consequatur exercitationem nobis reprehenderit iusto mollitia.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(212, 2, 'Consequatur omnis et nemo beatae eligendi dolores iste ut dolorum quaerat deleniti natus officiis et et ipsa cumque tenetur aut quia explicabo quis et reprehenderit.', '2022-10-12 05:23:25', '2022-10-12 05:23:25'),
(213, 2, 'Itaque neque itaque odit exercitationem distinctio hic eveniet sint nihil aut quo rerum corporis nesciunt eaque magni perferendis omnis et molestiae deserunt rerum fuga ab consequuntur.', '2022-10-12 05:23:25', '2022-10-12 05:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`) VALUES
(1, 'Senator Cox', 'senatorcox90@gmail.com', NULL, '$2y$10$LLAK71JImslFCaKfEEF69uUdxD66nacZ2A4W5hFyDb.EM1VA8reTa', 'ASXOy5Bv9ynD6rEDVa6pAjtoTZMKtEJMKpIAIMDN5fJj28Bxa90is3ShSgcM', '2022-09-07 15:32:40', '2022-09-07 15:32:40', 'Senator'),
(2, 'Semour Cox', 'senatorcox@hotmail.com', NULL, '$2y$10$Z1xjCw.ZV91htk4uOddxj.lbhyok0XA0LhgRrBFoc7eeNdD8gm6Ui', NULL, '2022-09-16 21:21:52', '2022-09-16 21:21:52', 'Seymour');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
