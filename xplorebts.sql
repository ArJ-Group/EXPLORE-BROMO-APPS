-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2021 pada 06.44
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shamo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_01_06_035346_create_sessions_table', 1),
(7, '2021_01_17_161413_create_products_table', 1),
(8, '2021_01_17_161417_create_product_categories_table', 1),
(9, '2021_01_17_161427_create_product_galleries_table', 1),
(10, '2021_01_17_161441_create_transactions_table', 1),
(11, '2021_01_18_014436_add_roles_and_username_to_users_table', 1),
(12, '2021_03_10_095130_create_transaction_items_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', '175b086addfce52c25b7709af692b9ba4df74d4e17cc2d984fd7ca6eb58bf9f9', '[\"*\"]', NULL, '2021-11-29 20:14:51', '2021-11-29 20:14:51'),
(2, 'App\\Models\\User', 1, 'authToken', '5d8ae9ada59a89a6cb6e141b518c9e25b037c4f811f2a05f13224a85f6805792', '[\"*\"]', NULL, '2021-11-29 20:19:00', '2021-11-29 20:19:00'),
(3, 'App\\Models\\User', 1, 'authToken', '32e662b83d195e3bd51732ea4b1474227404c695c7c68f33f23a3920c73ebd33', '[\"*\"]', NULL, '2021-11-29 20:31:00', '2021-11-29 20:31:00'),
(4, 'App\\Models\\User', 1, 'authToken', '0e9200fe16c707556a60999d14ed5b238e30b9f7835cc838b96c97a15736d536', '[\"*\"]', NULL, '2021-11-29 20:33:29', '2021-11-29 20:33:29'),
(5, 'App\\Models\\User', 1, 'authToken', '126c98e69bb0d9a06cd9fc6d1873a21958b1ebcf7362b97d72d50cfff782ae1b', '[\"*\"]', NULL, '2021-11-29 20:34:22', '2021-11-29 20:34:22'),
(6, 'App\\Models\\User', 1, 'authToken', 'd71b55db0e27bb6bc357e7bfdebf6cdbee86270d2493e18e7053f1f9b9032d99', '[\"*\"]', NULL, '2021-11-29 20:34:57', '2021-11-29 20:34:57'),
(7, 'App\\Models\\User', 1, 'authToken', '867e42be84e2d77e8d9373c188b8f120c025ed3a47a1315659a830048590b394', '[\"*\"]', NULL, '2021-11-29 20:35:42', '2021-11-29 20:35:42'),
(8, 'App\\Models\\User', 1, 'authToken', 'ac8bccf6a37e295940520549b0eda5c61f3e8fdc28d43f2da39273ae57d0c7ca', '[\"*\"]', NULL, '2021-11-29 20:38:45', '2021-11-29 20:38:45'),
(9, 'App\\Models\\User', 1, 'authToken', '7aead86546bd97c82dec883483d10d6914d7e604177c1ee5da565ae3dcb4a42a', '[\"*\"]', NULL, '2021-11-29 20:39:28', '2021-11-29 20:39:28'),
(10, 'App\\Models\\User', 1, 'authToken', '8c10f9fd181e6bcce4301335d09e9302586655979fcf042e91e4c848d9a3e40e', '[\"*\"]', NULL, '2021-11-29 21:40:37', '2021-11-29 21:40:37'),
(11, 'App\\Models\\User', 1, 'authToken', 'd7a5426157a8f377cb64af589cc8a673c161078df0fb97aff393d34241f7cb69', '[\"*\"]', NULL, '2021-11-29 21:42:58', '2021-11-29 21:42:58'),
(12, 'App\\Models\\User', 1, 'authToken', 'b0e20bf05b420a1667bef9cad58904c8f4f21688fd8fba3611b14bcb04cede7f', '[\"*\"]', NULL, '2021-11-29 23:14:12', '2021-11-29 23:14:12'),
(13, 'App\\Models\\User', 1, 'authToken', 'f71562499bfe0fbda48a5f669a327c00d3e5756c9421cf77920ae0b0b01a4388', '[\"*\"]', NULL, '2021-11-29 23:21:16', '2021-11-29 23:21:16'),
(14, 'App\\Models\\User', 1, 'authToken', 'fb2adf966514d11c085cab2bec1425d8e1fd0849f06e4f92246d68443e8d7739', '[\"*\"]', NULL, '2021-11-29 23:25:30', '2021-11-29 23:25:30'),
(15, 'App\\Models\\User', 1, 'authToken', '4739475336190e344d0e4e7bdbc7a56f180e2f332999254fec48c5c570742a2e', '[\"*\"]', NULL, '2021-11-29 23:31:24', '2021-11-29 23:31:24'),
(16, 'App\\Models\\User', 1, 'authToken', 'bcc99a2276a621ea65c0fb3aa9a2a6e8c3f179254f9a36d87266f724e80747fe', '[\"*\"]', NULL, '2021-12-01 00:24:31', '2021-12-01 00:24:31'),
(17, 'App\\Models\\User', 1, 'authToken', 'b9ab96e500c8cd66ac0e62dcbe3c05c1499291bf63b22e2cf827f084f811b369', '[\"*\"]', NULL, '2021-12-08 09:06:17', '2021-12-08 09:06:17'),
(18, 'App\\Models\\User', 1, 'authToken', '21a8391a5e86924cf404e53a283e9d16c4959eac4dbfe0d30d0dbb0550a7ce96', '[\"*\"]', NULL, '2021-12-08 09:20:48', '2021-12-08 09:20:48'),
(19, 'App\\Models\\User', 1, 'authToken', '9444d5213f0d82900293f962a571b0764c96c357ac839bc650b900d3c5585e6d', '[\"*\"]', NULL, '2021-12-08 09:23:07', '2021-12-08 09:23:07'),
(20, 'App\\Models\\User', 1, 'authToken', 'b40092e83a987f06d925f270d6c493069f3dd7a8a38967f676f0452a0620aace', '[\"*\"]', NULL, '2021-12-08 23:22:07', '2021-12-08 23:22:07'),
(21, 'App\\Models\\User', 1, 'authToken', '5ddcac5a21098bfc5f09a76d0aee9362c6cb9ed6105f796fa7289b8d8f7887e2', '[\"*\"]', '2021-12-08 23:27:56', '2021-12-08 23:26:26', '2021-12-08 23:27:56'),
(22, 'App\\Models\\User', 1, 'authToken', 'dd5d293cc2b085a8cc00e86bb69311a4a60de827674a968b60a9309ad6f7c610', '[\"*\"]', NULL, '2021-12-08 23:34:10', '2021-12-08 23:34:10'),
(23, 'App\\Models\\User', 2, 'authToken', '8081f2bca1c49bd7e7c401fc0f2760667b36b4482ae8d53b8570969716d3d739', '[\"*\"]', NULL, '2021-12-18 18:41:00', '2021-12-18 18:41:00'),
(24, 'App\\Models\\User', 2, 'authToken', 'b82cee69f5d9ecfe6a0cc800b50f0b46e18508b8c13347cb26308ba4423f1baa', '[\"*\"]', NULL, '2021-12-18 18:49:57', '2021-12-18 18:49:57'),
(25, 'App\\Models\\User', 2, 'authToken', '2cf5332a4d127590eee9010bf9669735f384ee259b5040fc29e663f1d2e514f4', '[\"*\"]', NULL, '2021-12-18 19:02:57', '2021-12-18 19:02:57'),
(26, 'App\\Models\\User', 2, 'authToken', 'd2aa879171ea1a3fd89064c22bdad558a8f226866fe8d52f0340a58b283de247', '[\"*\"]', NULL, '2021-12-18 19:17:41', '2021-12-18 19:17:41'),
(27, 'App\\Models\\User', 2, 'authToken', '98963f3730a8adaaf4b0c4ee1e225e6de0e7be777c7a442a0e078f6a15387fd7', '[\"*\"]', NULL, '2021-12-18 19:22:50', '2021-12-18 19:22:50'),
(28, 'App\\Models\\User', 2, 'authToken', '54e5abd352584e56a6ba121bdd449e37eb59ddbfd375258fb9d145c2ad11a95e', '[\"*\"]', NULL, '2021-12-18 19:25:07', '2021-12-18 19:25:07'),
(29, 'App\\Models\\User', 2, 'authToken', '11b61ff0843e2f09dff5235d3bf726b957486cc6864613c30969c83e0b840fb3', '[\"*\"]', NULL, '2021-12-18 19:28:13', '2021-12-18 19:28:13'),
(30, 'App\\Models\\User', 2, 'authToken', '98f2f4e078ecbc58b2809afcd38d917992a0979462ec546311b528c542404bbb', '[\"*\"]', NULL, '2021-12-18 19:30:31', '2021-12-18 19:30:31'),
(31, 'App\\Models\\User', 2, 'authToken', 'fdcd3c6557c9fc1e5055d8b2020c7c09a2ad3f002fdb771c56d11139ace5fced', '[\"*\"]', NULL, '2021-12-18 19:37:36', '2021-12-18 19:37:36'),
(32, 'App\\Models\\User', 2, 'authToken', '9d8bd356ab8846402d5ac80d617047fe8eca61200cba23abd9ac2e9877b24f9b', '[\"*\"]', NULL, '2021-12-18 19:39:43', '2021-12-18 19:39:43'),
(33, 'App\\Models\\User', 2, 'authToken', 'ea305ff391cb00ec5845864dbb054566d470c236302e94b04a59195adb820e19', '[\"*\"]', NULL, '2021-12-18 19:40:47', '2021-12-18 19:40:47'),
(34, 'App\\Models\\User', 2, 'authToken', 'f2ecea7d96afd05305c9060e77e479179e834dc7919cbc3a8d9844cc54e17e12', '[\"*\"]', NULL, '2021-12-18 19:43:51', '2021-12-18 19:43:51'),
(35, 'App\\Models\\User', 2, 'authToken', '19b835787e5fd90b72b6d2b658ff2811752e311436f6d85bbc120c52cd1e5374', '[\"*\"]', NULL, '2021-12-18 19:45:27', '2021-12-18 19:45:27'),
(36, 'App\\Models\\User', 2, 'authToken', '920d93d1d9b7024cbc21251af9294850503314486dc19978049a941e1684e600', '[\"*\"]', NULL, '2021-12-18 19:46:27', '2021-12-18 19:46:27'),
(37, 'App\\Models\\User', 2, 'authToken', '541bc2dbcfa66a4139e3c981ea506481626742aeaa7bc6101bad8b50c422d9b6', '[\"*\"]', NULL, '2021-12-18 19:47:55', '2021-12-18 19:47:55'),
(38, 'App\\Models\\User', 2, 'authToken', '3049079e6b0d057a858abf492d8249604ab1dd5418b047e439a78e5ae65d1a3c', '[\"*\"]', NULL, '2021-12-18 19:52:02', '2021-12-18 19:52:02'),
(39, 'App\\Models\\User', 2, 'authToken', 'b2292255d11987f83ee4b2917b9cbb66862ac2487c0160dd171914f91c54e0ec', '[\"*\"]', NULL, '2021-12-18 19:52:52', '2021-12-18 19:52:52'),
(40, 'App\\Models\\User', 2, 'authToken', '3759ca7b49f2c54b61159c21cccf816f1eca91a8ef7ac57b1744b68209efdb11', '[\"*\"]', NULL, '2021-12-18 19:54:31', '2021-12-18 19:54:31'),
(41, 'App\\Models\\User', 2, 'authToken', '436f7ab9d8d2b197e5462f01d14c93672aff32fa7e20af1299bdd040951e2777', '[\"*\"]', NULL, '2021-12-18 19:57:10', '2021-12-18 19:57:10'),
(42, 'App\\Models\\User', 2, 'authToken', '7690f4e098933636a72d57b63dc6afd6996f2db85fa0eb398399a9d09eb23026', '[\"*\"]', NULL, '2021-12-18 19:58:23', '2021-12-18 19:58:23'),
(43, 'App\\Models\\User', 2, 'authToken', '599a2547c7a039ce14e392efc8691defbca9cd1a17661556ab46f86aab0a5fba', '[\"*\"]', NULL, '2021-12-18 19:59:37', '2021-12-18 19:59:37'),
(44, 'App\\Models\\User', 2, 'authToken', 'a3fb3cdb323f388674f76f6ce2a8ae7bc232bc99ef385f551979822ceaad5be3', '[\"*\"]', NULL, '2021-12-18 20:00:21', '2021-12-18 20:00:21'),
(45, 'App\\Models\\User', 2, 'authToken', '5e5b12b53148c831d733e25c6607070f1709292ae2beb11066ad3b4c8a371607', '[\"*\"]', NULL, '2021-12-18 20:03:53', '2021-12-18 20:03:53'),
(46, 'App\\Models\\User', 2, 'authToken', '725acf69cd03a4ff8cb4302fdfec8f09ca3a24e94d5fcb700c7776f51887d4da', '[\"*\"]', NULL, '2021-12-18 20:05:47', '2021-12-18 20:05:47'),
(47, 'App\\Models\\User', 2, 'authToken', 'f195126af6fcb68155d9e804fd05b6644e7bec1bc81bb5d44959ea36255ae535', '[\"*\"]', NULL, '2021-12-18 20:09:55', '2021-12-18 20:09:55'),
(48, 'App\\Models\\User', 2, 'authToken', '5bd110af64b231bc757103b704353a3ff96c0c927105d300540bb62bf8e31afd', '[\"*\"]', NULL, '2021-12-18 20:12:04', '2021-12-18 20:12:04'),
(49, 'App\\Models\\User', 2, 'authToken', 'ed0556f0e0dab9bb1b8f703e807e3fdab8237cf5d54eb1cfa0409ff160a3f159', '[\"*\"]', NULL, '2021-12-18 20:13:53', '2021-12-18 20:13:53'),
(50, 'App\\Models\\User', 2, 'authToken', '83b0b81c41ac24c2d7470ab6c6c541906132eb6f5a93642a2c8fa07bae4e4698', '[\"*\"]', NULL, '2021-12-18 20:16:51', '2021-12-18 20:16:51'),
(51, 'App\\Models\\User', 2, 'authToken', '1590ecae7a6a1ee67dd6ef1927f9b926849af6db59637d4e71859581f36c6767', '[\"*\"]', NULL, '2021-12-18 20:21:32', '2021-12-18 20:21:32'),
(52, 'App\\Models\\User', 2, 'authToken', 'a71f0a77c4c49f16cc7e44d6748fed0e6c0cf9244623d092eb244ef6aabb1097', '[\"*\"]', NULL, '2021-12-18 20:23:50', '2021-12-18 20:23:50'),
(53, 'App\\Models\\User', 2, 'authToken', 'e2f85ecfa0cfa294235dbd089a9367224eee8478246e542e37b3647077041463', '[\"*\"]', NULL, '2021-12-18 20:25:29', '2021-12-18 20:25:29'),
(54, 'App\\Models\\User', 2, 'authToken', '638f3302c932a7fbf65adc65497a48544c59bcfd413db99fd84e0fe0c5f5584b', '[\"*\"]', NULL, '2021-12-18 20:26:38', '2021-12-18 20:26:38'),
(55, 'App\\Models\\User', 2, 'authToken', '61660b337afb509f98959f278829357f6ef6112461414682493482ad0d3d6b9e', '[\"*\"]', NULL, '2021-12-18 20:28:37', '2021-12-18 20:28:37'),
(56, 'App\\Models\\User', 2, 'authToken', 'df2caa1000435a9aa56b2e87e2987254f190070d8d1555a339f6f6726db1bad1', '[\"*\"]', NULL, '2021-12-18 21:36:56', '2021-12-18 21:36:56'),
(57, 'App\\Models\\User', 2, 'authToken', 'd876c7dd6e112843c9dd44e3d493aef047e45e69d90968184806f96e91b14c5e', '[\"*\"]', NULL, '2021-12-18 22:07:29', '2021-12-18 22:07:29'),
(58, 'App\\Models\\User', 2, 'authToken', '5b624cba2072bbd155636fab0de620c460759f389e07f8b05bd33bf4e52d7f48', '[\"*\"]', NULL, '2021-12-18 22:09:11', '2021-12-18 22:09:11'),
(59, 'App\\Models\\User', 2, 'authToken', '3f91973452b6184d575771ca7413f9fad896887a007d751d62c4ff05dc52dce3', '[\"*\"]', NULL, '2021-12-18 22:10:30', '2021-12-18 22:10:30'),
(60, 'App\\Models\\User', 2, 'authToken', '7e23dd6af141aef9df2e33fb25ff2a17e70d3d71a60dbcea88b42518eb1a2eba', '[\"*\"]', NULL, '2021-12-18 22:12:06', '2021-12-18 22:12:06'),
(61, 'App\\Models\\User', 2, 'authToken', '644c0adc4ad71072d70b29f0c11029818ff978e2e94e5ef6a8162f7697cd52b8', '[\"*\"]', NULL, '2021-12-18 22:13:10', '2021-12-18 22:13:10'),
(62, 'App\\Models\\User', 2, 'authToken', 'c9b5f30c50e88987f81c302b38df1b88790d67a5396c3380e8c4c41de73570c4', '[\"*\"]', NULL, '2021-12-18 22:14:12', '2021-12-18 22:14:12'),
(63, 'App\\Models\\User', 2, 'authToken', '94e58c45b5f0be9dd82b897e582e13f368638ff3e9e29bc010965c20827a25cd', '[\"*\"]', NULL, '2021-12-18 22:16:36', '2021-12-18 22:16:36'),
(64, 'App\\Models\\User', 2, 'authToken', 'ad1b5b5d4136eafaab04b5ec371c476ded35ceea100084ab08fadbb986038973', '[\"*\"]', NULL, '2021-12-18 22:17:42', '2021-12-18 22:17:42'),
(65, 'App\\Models\\User', 2, 'authToken', 'f4fe6565f5f55b6cab6f71c6e3eb747d00429cabbdb49b2d7699cf286758fdf8', '[\"*\"]', NULL, '2021-12-18 22:18:32', '2021-12-18 22:18:32'),
(66, 'App\\Models\\User', 2, 'authToken', 'cd616980866dc281bc85aa34928f0d9b66ec397571ef11b853831f05084fcb80', '[\"*\"]', NULL, '2021-12-18 22:20:31', '2021-12-18 22:20:31'),
(67, 'App\\Models\\User', 2, 'authToken', 'c63ee320653e7f4a416774fb5f424b3bb065265964cb913ebddb0450368b809c', '[\"*\"]', NULL, '2021-12-18 22:24:25', '2021-12-18 22:24:25'),
(68, 'App\\Models\\User', 2, 'authToken', '18c72884aa11031b089e44214d92fd53ac7faf60ea6d90a6d181991e58c50337', '[\"*\"]', NULL, '2021-12-18 22:35:54', '2021-12-18 22:35:54'),
(69, 'App\\Models\\User', 2, 'authToken', '57c5122ebb7f2fb66defa0e73ae2f4e0decf78776c91996754d45bda86f91054', '[\"*\"]', NULL, '2021-12-18 22:37:43', '2021-12-18 22:37:43'),
(70, 'App\\Models\\User', 2, 'authToken', '07e5d6cfb7d7c3823991004e894e25a29644491049a9f310bdaf8efa41b62b18', '[\"*\"]', NULL, '2021-12-18 22:41:20', '2021-12-18 22:41:20'),
(71, 'App\\Models\\User', 2, 'authToken', 'c8d01ecf6ca727c4706879d0a1d70b60c80a47b1b7f301601d65a317bea1898a', '[\"*\"]', NULL, '2021-12-18 22:42:56', '2021-12-18 22:42:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `tags`, `categories_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Jeep', 500.00, 'Jeep Car', NULL, 3, NULL, '2021-11-29 19:51:28', '2021-11-29 20:29:30'),
(2, 'Tenda', 50.00, 'Tenda', NULL, 1, NULL, '2021-11-29 20:29:18', '2021-11-29 20:29:18'),
(3, 'Resort', 500.00, 'resort', NULL, 4, NULL, '2021-11-29 20:29:49', '2021-11-29 20:29:49'),
(4, 'Trip', 500.00, 'Trip', NULL, 5, NULL, '2021-11-29 20:30:11', '2021-11-29 20:30:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Camping', NULL, '2021-11-29 18:16:13', '2021-11-29 18:16:13'),
(3, 'Jeep Rent', NULL, '2021-11-29 19:48:48', '2021-11-29 19:48:48'),
(4, 'Inn', NULL, '2021-11-29 19:49:02', '2021-11-29 19:49:02'),
(5, 'Trip', NULL, '2021-11-29 19:49:16', '2021-11-29 19:49:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `products_id`, `url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(12, 1, 'https://awsimages.detik.net.id/community/media/visual/2021/09/01/jeep-wrangler-rubicon-model-2021.png?w=1065', NULL, '2021-12-08 20:06:47', '2021-12-08 20:06:47'),
(14, 1, 'https://akcdn.detik.net.id/visual/2021/08/04/jeep-wrangler-magneto_169.png?w=650', NULL, '2021-12-09 00:51:59', '2021-12-09 00:51:59'),
(18, 4, 'https://cf.shopee.co.id/file/229c1804663e641c4afe5743c1455dc7', NULL, '2021-12-18 21:35:14', '2021-12-18 21:35:14'),
(20, 4, 'https://cf.shopee.co.id/file/e20199a6bb475244060770023482f826', NULL, '2021-12-18 22:30:21', '2021-12-18 22:30:21'),
(21, 3, 'https://asset.kompas.com/crops/qyOGOlf1OYzoIpHj950KwSKrhSs=/0x36:746x534/750x500/data/photo/2020/10/11/5f82a6f367581.png', NULL, '2021-12-18 22:31:18', '2021-12-18 22:31:18'),
(22, 3, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/181479808.jpg?k=ff56e6e740fbb5514d0a6a1d58a96d1d8e860025d600e01e27e0dc944e675146&o=&hp=1', NULL, '2021-12-18 22:32:04', '2021-12-18 22:32:04'),
(24, 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHT4ngsleRydH_MgqxQ6I4ByyS_6U6Js1nvg&usqp=CAU', NULL, '2021-12-18 22:32:32', '2021-12-18 22:32:32'),
(25, 2, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2020/9/30/1b2d6d57-f481-4211-82a1-4129c6fd588a.jpg', NULL, '2021-12-18 22:34:00', '2021-12-18 22:34:00'),
(26, 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShgYuaS4jQ-1TkT4TX9taqAlvh485jJOjtZcsX0TRyLU4zTHFFFNQtb7hgWahy9p4sMEY&usqp=CAU', NULL, '2021-12-18 22:35:32', '2021-12-18 22:35:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ilDbplX5TLGVaWhw7bUuUyf0mh1VBevxPRuRDqD6', 2, '192.168.1.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRGp0R2V5cDc0WEhseWhJRTcySk1Za0xkRk8xTTdlSERiQTlKc0NlZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xOTIuMTY4LjEuNi9kYXNoYm9hcmQvcHJvZHVjdC80L2dhbGxlcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkUnd6bkVjNlM5WnkzN3JUdXc0ZENRTzRDNGtLVENOMWRkN29NVkg2ZzUvWlpPd2xoVERTZWkiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFJ3em5FYzZTOVp5MzdyVHV3NGRDUU80QzRrS1RDTjFkZDdvTVZINmc1L1paT3dsaFREU2VpIjt9', 1639892391);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` double(8,2) NOT NULL DEFAULT 0.00,
  `shipping_price` double(8,2) NOT NULL DEFAULT 0.00,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MANUAL',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `users_id`, `address`, `total_price`, `shipping_price`, `status`, `payment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Marsemoon', 550.00, 0.00, 'SUCCESS', 'MANUAL', NULL, '2021-12-08 23:27:56', '2021-12-09 01:10:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_items`
--

CREATE TABLE `transaction_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `transactions_id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_items`
--

INSERT INTO `transaction_items` (`id`, `users_id`, `products_id`, `transactions_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2021-12-08 23:27:56', '2021-12-08 23:27:56'),
(2, 1, 2, 1, 1, '2021-12-08 23:27:57', '2021-12-08 23:27:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `roles`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Rajendra', 'rajendra.rakha29@gmail.com', NULL, 'ADMIN', NULL, '$2y$10$IqsRHGOhXHI3yxNU3k1T8e4BfQG38vjk2Rdw6p3pcYzejvBw/cigG', NULL, NULL, 'pOCzGBxvjSAvPyxBfMOfbdZq1vZagULYBnILu5IxlnUUeskEmsZgGgYVey9O', NULL, NULL, '2021-11-18 19:35:07', '2021-12-13 20:27:39'),
(2, 'Admin Bromo', 'admin@bromo.com', 'adminbromo', 'ADMIN', NULL, '$2y$10$RwznEc6S9Zy37rTuw4dCQO4C4kKTCN1dd7oMVH6g5/ZZOwlhTDSei', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Rakha', 'rajendra.rakha26@gmail.com', NULL, 'USER', NULL, '$2y$10$S4ZZyiyItfU9RK2BYb9RLukxjG1wH6PeBkIOqUmBeukRjAQ01tM0K', NULL, NULL, NULL, NULL, NULL, '2021-12-04 00:03:25', '2021-12-04 00:03:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
