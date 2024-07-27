-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 27, 2024 at 03:02 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_state` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `governorate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_cost` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `governorate_id`, `subtotal`, `total`, `delivery_cost`, `coupon_id`, `created_at`, `updated_at`) VALUES
(3, '2', NULL, NULL, NULL, NULL, NULL, '2023-12-13 19:42:40', '2023-12-13 19:42:40'),
(4, '3', NULL, NULL, NULL, NULL, NULL, '2023-12-18 12:20:33', '2023-12-18 12:20:33'),
(5, '1', NULL, NULL, NULL, NULL, NULL, '2023-12-18 13:21:51', '2023-12-18 13:21:51'),
(7, '6', NULL, NULL, NULL, NULL, NULL, '2024-01-21 10:13:37', '2024-01-21 10:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `cart_products`
--

CREATE TABLE `cart_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_products`
--

INSERT INTO `cart_products` (`id`, `user_id`, `cart_id`, `product_id`, `count`, `price`, `product_options`, `created_at`, `updated_at`) VALUES
(7, '2', '3', '2', '4', '243', 'null', '2023-12-13 19:45:58', '2023-12-13 19:46:14'),
(8, '3', '4', '1', '29', '2', 'null', '2023-12-18 12:20:33', '2023-12-18 12:22:34'),
(15, '1', '5', '1', '1', '2', 'null', '2023-12-18 13:28:19', '2023-12-18 13:28:19'),
(20, '6', '7', '2', '2', '243', 'null', '2024-01-21 10:16:01', '2024-01-21 10:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_state` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `image`, `icon`, `name_ar`, `name_en`, `record_state`, `created_at`, `updated_at`) VALUES
(1, NULL, 'alajhz-altby', 'storage/categories/qHeuS1guoSpSBKbwbIx8p0LYMa2AcK6Hl3rtgamA.png', 'fa fa-user', 'الاجهزة الطبية', 'الاجهزة الطبية', 1, '2023-12-13 15:06:24', '2023-12-18 12:27:15'),
(2, '1', 'ajhz-kyas-alhrar', 'storage/categories/qHeuS1guoSpSBKbwbIx8p0LYMa2AcK6Hl3rtgamA.png', NULL, 'اجهزة قياس الحرارة', 'اجهزة قياس الحرارة', 0, '2023-12-18 12:28:27', '2023-12-18 12:28:27'),
(3, '1', 'ajhz-albkhar', 'storage/categories/qHeuS1guoSpSBKbwbIx8p0LYMa2AcK6Hl3rtgamA.png', NULL, 'اجهزة البخار', 'اجهزة البخار', 0, '2023-12-18 12:28:57', '2023-12-18 12:28:57'),
(4, '1', 'kyas-aldght', 'storage/categories/qHeuS1guoSpSBKbwbIx8p0LYMa2AcK6Hl3rtgamA.png', NULL, 'قياس الضغط', 'قياس الضغط', 1, '2023-12-18 12:29:12', '2023-12-18 12:29:20'),
(5, '1', 'ajhz-alskr-omlhkatha', 'storage/categories/qHeuS1guoSpSBKbwbIx8p0LYMa2AcK6Hl3rtgamA.png', NULL, 'اجهزة السكر وملحقاتها', 'اجهزة السكر وملحقاتها', 1, '2023-12-18 12:30:22', '2023-12-18 12:30:22'),
(6, NULL, 'maadat-altbyb', 'storage/categories/qHeuS1guoSpSBKbwbIx8p0LYMa2AcK6Hl3rtgamA.png', NULL, 'معدات الطبيب', 'معدات الطبيب', 1, '2023-12-18 12:30:55', '2023-12-18 12:54:50'),
(7, NULL, 'almfaghr', 'storage/categories/qHeuS1guoSpSBKbwbIx8p0LYMa2AcK6Hl3rtgamA.png', NULL, 'المفاغرة', 'المفاغرة', 1, '2023-12-18 12:31:10', '2023-12-18 12:54:39'),
(8, NULL, 'maakmat-omthrat', 'storage/categories/qHeuS1guoSpSBKbwbIx8p0LYMa2AcK6Hl3rtgamA.png', NULL, 'معقمات ومطهرات', 'معقمات ومطهرات', 0, '2023-12-18 12:31:26', '2023-12-18 12:54:28'),
(9, NULL, 'alaanay-baljroh', 'storage/categories/qHeuS1guoSpSBKbwbIx8p0LYMa2AcK6Hl3rtgamA.png', NULL, 'العناية بالجروح', 'العناية بالجروح', 0, '2023-12-18 12:31:44', '2023-12-18 12:54:15'),
(10, NULL, 'alasnan', 'storage/categories/qHeuS1guoSpSBKbwbIx8p0LYMa2AcK6Hl3rtgamA.png', NULL, 'الاسنان', 'الاسنان', 1, '2023-12-18 12:31:58', '2023-12-18 12:54:04'),
(11, NULL, 'almsaaad-f-alhmam', 'storage/categories/qHeuS1guoSpSBKbwbIx8p0LYMa2AcK6Hl3rtgamA.png', NULL, 'المساعدة فى الحمام', 'المساعدة فى الحمام', 1, '2023-12-18 12:32:18', '2023-12-18 12:53:52'),
(12, NULL, 'hafthat-omnthm-aladoy', 'storage/categories/qHeuS1guoSpSBKbwbIx8p0LYMa2AcK6Hl3rtgamA.png', NULL, 'حافظات ومنظم الأدوية', 'حافظات ومنظم الأدوية', 1, '2023-12-18 12:32:38', '2024-07-26 23:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `client_addresses`
--

CREATE TABLE `client_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `governorate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_information` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_addresses`
--

INSERT INTO `client_addresses` (`id`, `user_id`, `country_id`, `governorate_id`, `street`, `building_number`, `postal_code`, `floor`, `room`, `landmark`, `additional_information`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', 'شارع الخليفه المأمون', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 15:09:34', '2023-12-13 15:09:34'),
(2, '3', '1', '1', 'حي الامانه , شارع أحمد حلمي', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-18 12:19:48', '2023-12-18 12:19:48'),
(3, '6', '1', '1', 'حي الامل شارع احمد عرابي البيت الاول', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 08:01:29', '2024-01-21 08:01:29'),
(4, '6', '1', '1', 'new address for cart', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 08:11:12', '2024-01-21 08:11:12'),
(5, '7', '1', '1', 'sds', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 14:41:15', '2024-01-21 14:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compares`
--

INSERT INTO `compares` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '1', '2', '2023-12-13 20:08:46', '2023-12-13 20:08:46'),
(2, '1', '1', '2023-12-13 20:08:49', '2023-12-13 20:08:49'),
(4, '6', '2', '2024-01-21 10:15:54', '2024-01-21 10:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_active` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `is_active`, `code`, `name_ar`, `name_en`, `currency_ar`, `currency_en`, `created_at`, `updated_at`) VALUES
(1, '1', 'SAR', 'السعوديه', 'saudia', 'ريال', 'SAR', '2023-12-13 15:08:56', '2023-12-13 15:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_using` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_max_using` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fixed` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '1 for discount is price  0 discount is  percentage',
  `starts_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `record_state` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name_ar`, `name_en`, `code`, `discount`, `max_using`, `user_max_using`, `is_fixed`, `starts_at`, `expires_at`, `record_state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'new coupon', 'new coupon', '122', '50', '100', '1', '0', '2024-01-20 22:00:00', '2024-01-30 22:00:00', 1, '2024-01-21 08:12:17', '2024-01-21 08:12:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_users`
--

CREATE TABLE `coupon_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_users`
--

INSERT INTO `coupon_users` (`id`, `user_id`, `coupon_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, '6', '1', '5', '2024-01-21 08:20:32', '2024-01-21 08:20:32'),
(2, '7', '1', '7', '2024-01-21 14:41:26', '2024-01-21 14:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `designs`
--

CREATE TABLE `designs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_count` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `record_state` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `governorates`
--

CREATE TABLE `governorates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_active` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `country_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `governorates`
--

INSERT INTO `governorates` (`id`, `is_active`, `country_id`, `name_ar`, `name_en`, `delivery_cost`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'الرياض', 'Elryaid', '50', '2023-12-13 15:09:21', '2023-12-13 15:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `home_sections`
--

CREATE TABLE `home_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `design_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `record_state` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sections`
--

INSERT INTO `home_sections` (`id`, `category_id`, `design_id`, `sort`, `record_state`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 1, 1, '2024-01-21 09:21:33', '2024-01-21 09:21:33'),
(2, '10', '1', 2, 1, '2024-01-21 09:39:06', '2024-01-21 09:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_04_03_200603_create_countries_table', 1),
(10, '2021_05_09_225536_create_governorates_table', 1),
(11, '2021_05_12_152649_create_client_addresses_table', 1),
(12, '2021_05_16_200255_create_settings_table', 1),
(13, '2021_05_27_000003_create_permissions_table', 1),
(14, '2021_05_27_000004_create_roles_table', 1),
(15, '2021_05_27_000010_create_permission_role_pivot_table', 1),
(16, '2021_05_27_000011_create_role_user_pivot_table', 1),
(17, '2021_07_17_003814_create_permission_categories_table', 1),
(18, '2021_07_17_004352_add_category_id_to_permissions_table', 1),
(19, '2021_08_24_223616_create_brands_table', 1),
(20, '2021_08_24_225422_create_categories_table', 1),
(21, '2021_08_24_230323_create_social_media_table', 1),
(22, '2021_08_24_231324_create_sliders_table', 1),
(23, '2021_08_25_223403_create_products_table', 1),
(24, '2021_08_25_223412_create_product_images_table', 1),
(25, '2021_08_25_223421_create_product_options_table', 1),
(26, '2021_08_28_221401_create_product_views_table', 1),
(27, '2021_08_29_155845_create_templates_table', 1),
(28, '2021_09_30_130606_create_wish_lists_table', 1),
(29, '2021_09_30_131208_create_compares_table', 1),
(30, '2021_10_01_143105_create_subscribes_table', 1),
(31, '2021_10_02_181701_create_carts_table', 1),
(32, '2021_10_02_181715_create_cart_products_table', 1),
(33, '2021_10_03_063721_create_orders_table', 1),
(34, '2021_10_03_063732_create_order_products_table', 1),
(35, '2021_10_05_113306_create_product_properties_table', 1),
(36, '2021_10_23_104638_create_product_ratings_table', 1),
(37, '2021_11_06_112720_create_home_sections_table', 1),
(38, '2021_11_06_113044_create_designs_table', 1),
(39, '2022_01_12_203941_create_coupons_table', 1),
(40, '2022_01_15_120212_create_coupon_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `governorate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_cost` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `guid`, `user_id`, `governorate_id`, `subtotal`, `total`, `delivery_cost`, `coupon_id`, `coupon_discount`, `status`, `created_at`, `updated_at`) VALUES
(1, '6579e555ed77e', '1', '1', '6', '56', '50', NULL, '0', '0', '2023-12-13 15:09:41', '2023-12-13 15:09:41'),
(2, '6579e5804a703', '1', '1', '6', '56', '50', NULL, '0', '0', '2023-12-13 15:10:24', '2023-12-13 15:10:24'),
(3, '657a2bcd3535b', '1', '1', '245', '295', '50', NULL, '0', '0', '2023-12-13 20:10:21', '2023-12-13 20:10:21'),
(4, '6580551e24a03', '3', '2', '0', '50', '50', NULL, '0', '0', '2023-12-18 12:20:14', '2023-12-18 12:20:14'),
(5, '65aceff0792ee', '6', '3', '19', '69', '50', '1', '19', '0', '2024-01-21 08:20:32', '2024-01-21 08:20:32'),
(6, '65acf025e7d57', '6', '3', '0', '50', '50', NULL, '0', '0', '2024-01-21 08:21:25', '2024-01-21 08:21:25'),
(7, '65ad4936e8725', '7', '5', '160', '210', '50', '1', '160', '0', '2024-01-21 14:41:26', '2024-01-21 14:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `user_id`, `product_id`, `count`, `price`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '1', '3', '2', '2023-12-13 15:10:24', '2023-12-13 15:10:24'),
(2, '3', '1', '1', '1', '2', '2023-12-13 20:10:21', '2023-12-13 20:10:21'),
(3, '3', '1', '2', '1', '243', '2023-12-13 20:10:21', '2023-12-13 20:10:21'),
(4, '5', '6', '1', '19', '2', '2024-01-21 08:20:32', '2024-01-21 08:20:32'),
(5, '7', '7', '1', '10', '2', '2024-01-21 14:41:26', '2024-01-21 14:41:26'),
(6, '7', '7', '4', '1', '300', '2024-01-21 14:41:26', '2024-01-21 14:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `record_state` tinyint(4) NOT NULL DEFAULT '1',
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `record_state`, `name_ar`, `name_en`, `title`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'عرض المنتجات', 'show products', 'show-products', 1, '2024-07-26 23:15:53', '2024-07-26 23:15:53', NULL),
(2, 1, 'حذف المنتج', 'delete product', 'delete-product', 1, '2024-07-26 23:18:37', '2024-07-26 23:18:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_categories`
--

CREATE TABLE `permission_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_state` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_categories`
--

INSERT INTO `permission_categories` (`id`, `name_ar`, `name_en`, `record_state`, `created_at`, `updated_at`) VALUES
(1, 'صلاحيات الاقسام', 'Department permissions', 1, '2024-07-26 23:15:21', '2024-07-26 23:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(2, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `price_sale` double DEFAULT NULL,
  `delivery_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `stock_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `warranty_years` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_hot_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_deal_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vat_included` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `slug`, `name_ar`, `name_en`, `model_number`, `price`, `price_sale`, `delivery_time`, `record_state`, `stock_quantity`, `warranty_years`, `is_hot_product`, `is_deal_product`, `brand_id`, `description`, `category_id`, `is_vat_included`, `created_at`, `updated_at`) VALUES
(1, 'sdsad', 'sada', 'sdsad', '334', 22, 2, 'fd', '0', '33', '3', '1', '1', NULL, 'dsa', '1', 0, '2023-12-13 15:07:15', '2024-07-26 23:57:07'),
(2, 'lavinia-gould', 'Zahir Malone', 'Lavinia Gould', '948', 100, 243, 'Officiis totam adipi', '0', '3', '1972', '0', '1', NULL, 'dfdsf', '1', 0, '2023-12-13 19:05:09', '2024-07-26 23:57:21'),
(3, 'frshh-asnan', 'فرشه اسنان', 'فرشه اسنان', NULL, 100, 90, NULL, '0', '50', '1', '1', '1', 'اختر الماركة', NULL, '10', 0, '2024-01-21 09:41:03', '2024-01-21 09:41:03'),
(4, 'medical-gauze', 'شاش طبي', 'Medical gauze', '6006', 500, 300, NULL, '0', '29', '2', '1', '1', NULL, NULL, '9', 0, '2024-01-21 14:33:56', '2024-07-26 23:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(4, '3', 'storage/productImages/RgpKTbVxKzwzCMi9FflkGYe30Jmroujou11vISN2.jpg', '2024-01-21 09:54:54', '2024-01-21 09:54:54'),
(5, '2', 'storage/productImages/v8aYKNInxl1i93SZ0lMB1fGRtGWeta8aDFArI3vx.jpg', '2024-01-21 09:55:14', '2024-01-21 09:55:14'),
(6, '1', 'storage/productImages/6wihwCDwGCUZNe3A09tu6wJ1ZIYTiSeKBYVRqV2Q.jpg', '2024-01-21 09:55:35', '2024-01-21 09:55:35'),
(7, '2', 'storage/productImages/pbNtEK8ErYyBZvjBSDFiuGaS5qi6cGOgMq3JRK2J.jpg', '2024-01-21 10:00:38', '2024-01-21 10:00:38'),
(8, '2', 'storage/productImages/i1gz1AEfyQkWZwiAtjFURP2xWjidKlKDfd8ujYGX.jpg', '2024-01-21 10:00:51', '2024-01-21 10:00:51'),
(9, '4', 'storage/productImages/i3lKfjVclaxo3GQ2YMiYPdH6PcBbSS2MuFOsM9wE.jpg', '2024-01-21 14:33:56', '2024-01-21 14:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_property_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_properties`
--

CREATE TABLE `product_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_state` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_views`
--

CREATE TABLE `product_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_views`
--

INSERT INTO `product_views` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1', '2', '2023-12-13 19:44:56', '2023-12-13 19:44:56'),
(2, '1', '2', '2023-12-13 19:45:29', '2023-12-13 19:45:29'),
(3, '1', '2', '2023-12-13 19:45:33', '2023-12-13 19:45:33'),
(4, '2', '2', '2023-12-13 19:45:53', '2023-12-13 19:45:53'),
(5, '1', '6', '2024-01-21 08:01:52', '2024-01-21 08:01:52'),
(6, '1', '6', '2024-01-21 09:46:01', '2024-01-21 09:46:01'),
(7, '3', '6', '2024-01-21 09:46:13', '2024-01-21 09:46:13'),
(8, '2', '6', '2024-01-21 09:46:24', '2024-01-21 09:46:24'),
(9, '2', '6', '2024-01-21 09:56:19', '2024-01-21 09:56:19'),
(10, '2', '6', '2024-01-21 09:58:42', '2024-01-21 09:58:42'),
(11, '2', '6', '2024-01-21 09:58:53', '2024-01-21 09:58:53'),
(12, '2', '6', '2024-01-21 09:59:42', '2024-01-21 09:59:42'),
(13, '2', '6', '2024-01-21 09:59:56', '2024-01-21 09:59:56'),
(14, '2', '6', '2024-01-21 10:00:58', '2024-01-21 10:00:58'),
(15, '2', '6', '2024-01-21 10:01:34', '2024-01-21 10:01:34'),
(16, '2', '6', '2024-01-21 10:01:36', '2024-01-21 10:01:36'),
(17, '2', '6', '2024-01-21 10:02:29', '2024-01-21 10:02:29'),
(18, '2', '6', '2024-01-21 10:02:47', '2024-01-21 10:02:47'),
(19, '2', '6', '2024-01-21 10:03:31', '2024-01-21 10:03:31'),
(20, '2', '6', '2024-01-21 10:04:04', '2024-01-21 10:04:04'),
(21, '2', '6', '2024-01-21 10:04:18', '2024-01-21 10:04:18'),
(22, '2', '6', '2024-01-21 10:05:29', '2024-01-21 10:05:29'),
(23, '2', '6', '2024-01-21 10:05:56', '2024-01-21 10:05:56'),
(24, '2', '6', '2024-01-21 10:06:39', '2024-01-21 10:06:39'),
(25, '2', '6', '2024-01-21 10:09:30', '2024-01-21 10:09:30'),
(26, '2', '6', '2024-01-21 10:10:05', '2024-01-21 10:10:05'),
(27, '2', '6', '2024-01-21 10:11:32', '2024-01-21 10:11:32'),
(28, '2', '6', '2024-01-21 10:12:30', '2024-01-21 10:12:30'),
(29, '2', '6', '2024-01-21 10:13:07', '2024-01-21 10:13:07'),
(30, '2', '6', '2024-01-21 10:13:31', '2024-01-21 10:13:31'),
(31, '2', '6', '2024-01-21 10:13:40', '2024-01-21 10:13:40'),
(32, '2', '6', '2024-01-21 10:13:51', '2024-01-21 10:13:51'),
(33, '2', '6', '2024-01-21 10:14:01', '2024-01-21 10:14:01'),
(34, '2', '6', '2024-01-21 10:14:11', '2024-01-21 10:14:11'),
(35, '2', '6', '2024-01-21 10:14:23', '2024-01-21 10:14:23'),
(36, '2', '6', '2024-01-21 10:14:38', '2024-01-21 10:14:38'),
(37, '2', '6', '2024-01-21 10:14:55', '2024-01-21 10:14:55'),
(38, '2', '6', '2024-01-21 10:15:04', '2024-01-21 10:15:04'),
(39, '2', '6', '2024-01-21 10:15:14', '2024-01-21 10:15:14'),
(40, '2', '6', '2024-01-21 10:15:21', '2024-01-21 10:15:21'),
(41, '2', '6', '2024-01-21 10:15:38', '2024-01-21 10:15:38'),
(42, '1', '7', '2024-01-21 14:22:24', '2024-01-21 14:22:24'),
(43, '1', '7', '2024-01-21 14:28:36', '2024-01-21 14:28:36'),
(44, '1', '7', '2024-01-21 14:30:49', '2024-01-21 14:30:49'),
(45, '1', '7', '2024-01-21 14:31:14', '2024-01-21 14:31:14'),
(46, '1', '7', '2024-01-21 14:34:14', '2024-01-21 14:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_state` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title_ar`, `title_en`, `record_state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'مدير الموقع', 'Admin', 1, NULL, '2024-07-26 23:29:25', NULL),
(2, 'مدخل بيانات', 'Data Entery', 1, NULL, '2024-07-26 23:18:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(6, 1, 2),
(8, 10, 2),
(9, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#42a4e8',
  `app_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'شيكل',
  `app_description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `app_name`, `app_logo`, `app_color`, `app_currency`, `app_description`, `created_at`, `updated_at`) VALUES
(1, 'غرناطه', 'storage/settings/zu6wZ37sebRr6XhYj1AZzHGhiFmik5PMHRbVl9ng.webp', '#1853c9', 'ريال', 'لب', NULL, '2024-01-21 14:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_state` tinyint(4) NOT NULL DEFAULT '1',
  `page_place` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `name_ar`, `name_en`, `link`, `record_state`, `page_place`, `created_at`, `updated_at`) VALUES
(1, 'storage/sliders/Fgat9lZjtbcWK2ucPlXLS3cvcDtaNJxV3TRdPPZy.jpg', 'أطلب منتج الان', 'أطلب منتج الان', 'https://ghurnathamedical.com/', 1, 1, '2023-12-18 12:35:06', '2023-12-18 12:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_state` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'devmahmoudsidky@gmail.com', '2024-01-21 08:56:09', '2024-01-21 08:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `fire_base_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type_id`, `fire_base_token`, `name`, `email`, `mobile`, `password`, `record_state`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, 'Super Admin', 'admin@admin.com', NULL, '$2y$10$Du2QOW2QxBAwrYwOTchjfudImf9rBe8E2OMCkJ5tQs2boAFHonq8K', '1', NULL, '2023-12-13 14:45:07', '2024-07-26 23:43:59'),
(2, '1', NULL, 'entry', 'entry@admin.com', NULL, '$2y$10$ZLXUXfYMWzghI/coMasE..hnaYgNNQyJj.fZL5Wwr651YE5aSdboK', '1', NULL, '2023-12-13 14:45:07', '2023-12-13 14:45:07'),
(9, '1', NULL, 'sdfdfds', 'entry2@admin.com', '01098451729', '$2y$10$Du2QOW2QxBAwrYwOTchjfudImf9rBe8E2OMCkJ5tQs2boAFHonq8K', '1', NULL, '2024-07-26 23:44:27', '2024-07-26 23:44:27'),
(11, '1', NULL, 'anas', 'anas@admin.com', NULL, '$2y$10$.5q/5JDKLltX2k8oCDFDJ.YpZH1NSGhbcFk3HAHPo21P1OTu7xBFK', '1', NULL, '2024-07-26 23:47:07', '2024-07-26 23:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wish_lists`
--

INSERT INTO `wish_lists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, '2', '2', '2023-12-13 19:46:42', '2023-12-13 19:46:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_products`
--
ALTER TABLE `cart_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_addresses`
--
ALTER TABLE `client_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compares`
--
ALTER TABLE `compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_users`
--
ALTER TABLE `coupon_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designs`
--
ALTER TABLE `designs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `governorates`
--
ALTER TABLE `governorates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_categories`
--
ALTER TABLE `permission_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_properties`
--
ALTER TABLE `product_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_views`
--
ALTER TABLE `product_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart_products`
--
ALTER TABLE `cart_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `client_addresses`
--
ALTER TABLE `client_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_users`
--
ALTER TABLE `coupon_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `designs`
--
ALTER TABLE `designs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `governorates`
--
ALTER TABLE `governorates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permission_categories`
--
ALTER TABLE `permission_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_options`
--
ALTER TABLE `product_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_properties`
--
ALTER TABLE `product_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_views`
--
ALTER TABLE `product_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
