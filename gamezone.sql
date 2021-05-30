-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 08:48 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `baskets`
--

CREATE TABLE `baskets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baskets`
--

INSERT INTO `baskets` (`id`, `product_id`, `qty`, `price`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 7, 1, 172499.00, 1, '2021-05-29 00:02:46', '2021-05-29 00:02:46');

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
(3, '2017_12_07_122845_create_oauth_providers_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_04_29_064907_create_products_table', 1),
(6, '2021_04_29_065032_create_baskets_table', 1),
(7, '2021_04_30_140706_create_wishlists_table', 1),
(8, '2021_05_02_181653_create_orders_table', 1),
(9, '2021_05_03_100302_create_showorders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_providers`
--

CREATE TABLE `oauth_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_providers`
--

INSERT INTO `oauth_providers` (`id`, `user_id`, `provider`, `provider_user_id`, `access_token`, `refresh_token`, `created_at`, `updated_at`) VALUES
(2, 5, 'google', '113588436799779511316', 'ya29.a0AfH6SMA1q-s3A1LquJ6HjFvSwv4YJ58xWof0GzHooPJH2fU5BV7peBra3Orz_35fOJ297qeyhbDEVew4Q3c2qg_dlM82s2ylP82DvduC3mlBhV2RCBgMmGIupyjlVNIewUGexTQbQX6v460CTnmWuDVcgQwv', NULL, '2021-05-27 06:45:02', '2021-05-27 11:55:31'),
(4, 7, 'google', '114013757129822135967', 'ya29.a0AfH6SMAm96zrFHkwztJ7H-NJz6XGUQ9tpeKHj8jpiIJpadvaONfEvo-P6T9vHMe60CTTrXXcwhQxAPHb0Zxtix5nA3QmcxbLlAHGz8Ml4rh0nziqx8Nyr_ncewHX6E_bXkTePaNSm7QKlBi52diKeAZa3wbu', NULL, '2021-05-29 12:12:21', '2021-05-29 12:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `qty` int(2) NOT NULL,
  `orderstatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentstatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `canceled` int(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `def` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `name`, `price`, `qty`, `orderstatus`, `paymentstatus`, `ordertype`, `canceled`, `user_id`, `fname`, `lname`, `address`, `address2`, `state`, `city`, `zip`, `num`, `def`, `created_at`, `updated_at`) VALUES
(96, 6, 'ASUS TUF Radeon RX 6800', 77099.00, 1, 'failed', 'failed', 'Online', 0, 1, 'ads', 'asd', 'asd', 'null', 'Telengana', 'Hyderabad', '34234', '9494453302', 1, '2021-05-25 10:14:21', '2021-05-25 10:14:59'),
(97, 6, 'ASUS TUF Radeon RX 6800', 77099.00, 1, 'pending', 'success', 'Online', 0, 1, 'fgh', 'fgh', 'fgh', 'null', 'Telengana', 'Hyderabad', '45646', '9494453302', 1, '2021-05-25 10:14:59', '2021-05-25 10:15:32'),
(98, 4, 'MSI GeForce RTX 2060 Super', 36599.00, 1, 'failed', 'failed', 'Online', 0, 1, 'asd', 'asd', 'asd', 'null', 'Telengana', 'Hyderabad', '5131', '9494453302', 1, '2021-05-25 10:16:35', '2021-05-25 10:17:07'),
(100, 4, 'MSI GeForce RTX 2060 Super', 36599.00, 1, 'pending', 'success', 'Online', 0, 1, 'dfg', 'dfg', 'fdg', 'null', 'Telengana', 'Hyderabad', '4546456', '9494453302', 1, '2021-05-25 10:17:07', '2021-05-25 10:17:35'),
(101, 6, 'ASUS TUF Radeon RX 6800', 154198.00, 2, 'pending', 'success', 'Online', 0, 1, 'dfg', 'dfg', 'fdg', 'null', 'Telengana', 'Hyderabad', '4546456', '9494453302', 1, '2021-05-25 10:17:07', '2021-05-25 10:17:35'),
(102, 2, 'NVIDIA GEFORCE RTX 3060 Ti', 35999.00, 1, 'failed', 'failed', 'Online', 0, 1, 'asd', 'asd', 'asd', 'null', 'Telengana', 'Hyderabad', '234234', '9494453302', 1, '2021-05-25 10:18:09', '2021-05-25 10:18:28'),
(103, 10, 'GIGABYTE AORUS CV27F 27 Inch', 23490.00, 1, 'cancelled', 'success', 'Online', 0, 1, 'm', 'm', 'm', 'null', 'Telengana', 'Hyderabad', '4444', '9494453302', 1, '2021-05-25 10:25:49', '2021-05-25 10:26:54'),
(104, 10, 'GIGABYTE AORUS CV27F 27 Inch', 23490.00, 1, 'pending', 'success', 'Online', 0, 1, 'sdf', 'fsd', 'sdf', 'null', 'Telengana', 'Hyderabad', '35345', '9494453302', 1, '2021-05-25 11:39:47', '2021-05-25 11:40:49'),
(105, 6, 'ASUS TUF Radeon RX 6800', 77099.00, 1, 'pending', 'success', 'Online', 0, 1, 'Madhav', 'Yagni', 'h.no 14-24/48 Rtc colony', 'null', 'Telengana', 'Hyderabad', '500042', '9494453302', 1, '2021-05-25 14:00:20', '2021-05-25 14:00:59'),
(106, 7, 'NVIDIA GEFORCE RTX 3090', 172499.00, 1, 'failed', 'failed', 'Online', 0, 5, 'Sonu', 'yagni', 'hno 12-48/15 rtc colony', 'null', 'Telengana', 'Hyderabad', '502295', '9494453302', 1, '2021-05-27 07:12:44', '2021-05-27 07:13:52'),
(120, 3, 'ZOTAC  GeForce RTX 2070 MINI', 36699.00, 1, 'pending', 'success', 'Online', 0, 5, 'sonu', 'yagni', 'h.no. 24-48/12 rtc colony', 'null', 'Telengana', 'Hyderabad', '5000045', '9494453302', 1, '2021-05-27 10:09:18', '2021-05-27 10:09:49'),
(121, 17, 'SONY PlayStation 5 825Gb', 49990.00, 1, 'pending', 'success', 'Online', 0, 1, 'Madhav', 'Yagni', 'h.no. 12-24/48 Rtc colony', 'null', 'Telengana', 'Hyderabad', '502295', '9494453302', 1, '2021-05-28 08:21:33', '2021-05-28 08:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('madhavyagni01@gmail.com', '$2y$10$P8peCxrqCVE67o83g9ey0O//sQFv3u/rwDL7Ye1K88eftwhpVbZ9K', '2021-05-24 12:30:49'),
('madhavyagni1@gmail.com', '$2y$10$HsTqfp4.lvcvvSrmk3gX9.yv1dcaNq0Mt5Key6ROPCp96o4RStXWu', '2021-05-25 11:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `specification` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bestselling` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `details`, `specification`, `image_name`, `image_name1`, `image_name2`, `image_name3`, `image_name4`, `price`, `sale_price`, `cat`, `brand`, `bestselling`, `created_at`, `updated_at`) VALUES
(2, 'NVIDIA GEFORCE RTX 3060 Ti', 'NVIDIA GEFORCE RTX 3060 Ti', '<ul class=\"ul\">\r\n                                <li>Memory Type: <b>GDDR6</b></li>\r\n                                <li>Memory Size: <b>8 GB</b></li>\r\n                                <li>Boost Clock: <b>1.67</b></li>\r\n                               </ul>', '<ul>\n            <li>Powered by GeForce RTX 3060 Ti and Integrated with 8GB GDDR6 256-bit memory interface</li>\n            <li>Core Clock : 1‎695 MHz (Reference Card: 1665 MHz)</li>\n            <li>Display Ports : DisplayPort 1.4a *2 and HDMI 2.1 *2</li>\n            <li>PCI-Express 4.0 Support</li>\n            <li>WINDFORCE 2X Cooling System with alternate spinning fans</li>\n            <li>RGB Fusion 2.0 – synchronize with other AORUS devices</li>\n            <li>Protection metal back plate</li>\n            <li>For Technical Support : Call us on1800220966</li>\n            </ul>', '<tr>\r\n                    <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">NVIDIA CUDA Cores: </td>\r\n                    <td style=\"border: none;\" class=\"px-5\">4864</td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Boost Clock: </td>\r\n                    <td class=\"px-5\">1.67</td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Type: </td>\r\n                    <td class=\"px-5\">GDDR6</td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Interface Width: </td>\r\n                    <td class=\"px-5\">256-bit</td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Maximum Digital Resolution: </td>\r\n                    <td class=\"px-5\">7680x4320</td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Standard Display Connectors: </td>\r\n                    <td class=\"px-5\">HDMI 2.1, 3x DisplayPort 1.4a</td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Multi Monitor: </td>\r\n                    <td class=\"px-5\">4</td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Size: </td>\r\n                    <td class=\"px-5\">8 GB</td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Base Clock: </td>\r\n                    <td class=\"px-5\">1.41</td>\r\n                </tr>', '3060ti-main.jpg', '3060ti2.jpg', '3060ti.jpg', NULL, NULL, '39999', '35999', 'gcards', 'nvidia', 1, '2021-05-11 04:52:02', '2021-05-19 06:06:20'),
(3, 'ZOTAC  GeForce RTX 2070 MINI', 'ZOTAC  GeForce RTX 2070 MINI', '<ul class=\"ul\">\r\n                                <li>Memory Type: <b>GDDR6</b></li>\r\n                                <li>Memory Size: <b>8 GB</b></li>\r\n                                <li>Boost Clock: <b>1620 MHz</b></li>\r\n                               </ul>', 'The all-new generation of ZOTAC GAMING GeForce graphics cards are here. The powerful new GeForce RTX 2070 takes advantage of the cutting-edge NVIDIA Turing architecture to immerse you in incredible realism and performance in the latest games. The future of gaming starts here. Features: - IceStorm 2.0 - Super Compact - GDDR6 memory - OC Scanner Package Includes:- 1 x Graphics Card 1 x User Manual', '<tr>\n            <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Cuda Core : </td>\n            <td style=\"border: none;\" class=\"px-5\">2304</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Boost Clock: </td>\n            <td class=\"px-5\">Boost: 1620 MHz</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Type: </td>\n            <td class=\"px-5\">GDDR6</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Interface Width: </td>\n            <td class=\"px-5\">256-bit</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Power Consumption : </td>\n            <td class=\"px-5\">175W</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Display Output : </td>\n            <td class=\"px-5\">3 x DisplayPort,1 x HDMI 2.0 ,1 x DVI-D</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Multi Monitor: </td>\n            <td class=\"px-5\">4</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Size: </td>\n            <td class=\"px-5\">8 GB</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty : </td>\n            <td class=\"px-5\">2 Years</td>\n        </tr>', '2070-main.jpg', '2070.jpg', '20702.jpg', NULL, NULL, '42999', '36699', 'gcards', 'zotac', 0, '2021-05-14 05:05:31', '2021-05-19 06:10:47'),
(4, 'MSI GeForce RTX 2060 Super', 'MSI GeForce RTX 2060 Super', '<ul class=\"ul\">\r\n                                <li>Memory Type: <b>GDDR6</b></li>\r\n                                <li>Memory Size: <b>8 GB</b></li>\r\n                                <li>Boost Clock: <b>1665 MHz</b></li>\r\n                               </ul>', 'Geforce RTX is powered by NVIDIA Turing, the world\'s most advanced GPU architecture for gamers and creators. Get truly next-gen performance and features with dedicated AI and Ray tracing cores for the ultimate experience. The new GeForce RTX super series has even more Cores and higher clocks, bringing you performance that\'s up to 25% faster than the original RTX 20 Series and 6x faster than the previous-generation 10 Series GPUs. It\'s time to gear up and get super powers. Capture and share videos, screenshots, and livestreams with friends. Keep your drivers up to date and optimize your game settings. Geforce experience lets you do it all. It\'s the essential companion to your GeForce graphics card.', '<tr>\n            <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">CORES : </td>\n            <td style=\"border: none;\" class=\"px-5\">2176 Units</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Boost Clock: </td>\n            <td class=\"px-5\">Boost:1665 MHz</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Type: </td>\n            <td class=\"px-5\">GDDR6</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Interface Width: </td>\n            <td class=\"px-5\">256-bit</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Power Consumption : </td>\n            <td class=\"px-5\">175W</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Display Output : </td>\n            <td class=\"px-5\">DisplayPort x 3 (v1.4) / HDMI 2.0b x 1</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">MAXIMUM RESOLUTION : </td>\n            <td class=\"px-5\">7680x4320</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Size: </td>\n            <td class=\"px-5\">8 GB</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty : </td>\n            <td class=\"px-5\">2 Years</td>\n        </tr>', '2060s-main.jpg', '2060s.jpg', '2060s2.jpg', NULL, NULL, '48750', '36599', 'gcards', 'msi', 1, '2021-05-14 05:05:31', '2021-05-14 05:05:31'),
(5, 'MSI Gaming Radeon RX 5600 XT', 'MSI Radeon RX 5600 XT', '<ul class=\"ul\">\r\n                                <li>Memory Type: <b>GDDR6</b></li>\r\n                                <li>Memory Size: <b>6 GB</b></li>\r\n                                <li>Boost Clock: <b>1620 MHz</b></li>\r\n                               </ul>', 'Great gaming experiences are created by bending the rules. The all new RDNA powered Radeon RX 5600 series for exceptional performance and High-fidelity gaming. Take control with Radeon RX 5600 series and experience powerful, accelerated gaming customized for you. High-performance RDNA architecture was engineered to greatly enhance features like Radeon Image Sharpening, FidelityFX, and VR technologies3 for maximum performance and jaw-dropping gaming experiences. Get the competitive advantage with dramatically reduced input lag with Radeon Anti-Lag, get stutter-free, tear-free gaming with AMD Radeon FreeSync technology, and the latest Radeon Software for incredibly responsive and insanely immersive gameplay. Radeon RX 5600 series features new compute units, new instructions better suited for visual effects, and multi-level cache hierarchy for greatly reduced latency and highly responsive gaming.', '<tr>\n            <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">CORES : </td>\n            <td style=\"border: none;\" class=\"px-5\">2304 Units</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Boost Clock: </td>\n            <td class=\"px-5\">Boost: 1620 MHz</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Type: </td>\n            <td class=\"px-5\">GDDR6</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Interface Width: </td>\n            <td class=\"px-5\">192-bit</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Interface : </td>\n            <td class=\"px-5\">PCI Express 4.0</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Display Output : </td>\n            <td class=\"px-5\">DisplayPort x 3 (v1.4) / HDMI 2.0b x 1</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">MAXIMUM RESOLUTION : </td>\n            <td class=\"px-5\">7680x4320</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Size: </td>\n            <td class=\"px-5\">6 GB</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty : </td>\n            <td class=\"px-5\">2 Years</td>\n        </tr>', '5600-main.jpg', '2060s2.jpg', '2060s.jpg', NULL, NULL, '38500', '29200', 'gcards', 'msi', 0, '2021-05-14 05:05:31', '2021-05-14 05:05:31'),
(6, 'ASUS TUF Radeon RX 6800', 'ASUS TUF Radeon RX 6800', '<ul class=\"ul\">\r\n                                <li>Memory Type: <b>GDDR6</b></li>\r\n                                <li>Memory Size: <b>16 GB</b></li>\r\n                                <li>Boost Clock: <b>2190 MHz</b></li>\r\n                               </ul>', '<ul>\n                <li>Axial-tech fan design has been enhanced with more fan blades and a new rotation scheme.</li>\n             <li>Dual ball fan bearings can last up to twice as long as sleeve bearing designs.</li>\n             <li>An all-aluminum shroud, reinforced frame, and metal backplate enhance durability.</li>\n                <li>MaxContact heat spreader features a super flat surface for improved thermal transfer.</li>\n                <li>A 144-hour validation program puts cards through a series of stringent tests to ensure compatibility with the latest games.</li>\n                <li>A vented backplate prevents hot air from recirculating through the cooling array.</li>\n                <li>GPU Tweak II provides intuitive performance tweaking, thermal controls, and system monitoring.</li>\n                <li>For Technical Support : Call us on1800220966</li>\n                </ul>', '<tr>\n            <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">CORES : </td>\n            <td style=\"border: none;\" class=\"px-5\">3840 Units</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Boost Clock: </td>\n            <td class=\"px-5\">Boost: 2190 MHz</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Type: </td>\n            <td class=\"px-5\">GDDR6</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Interface Width: </td>\n            <td class=\"px-5\">256-bit</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Power Consumption: </td>\n            <td class=\"px-5\">650W</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Display Output : </td>\n            <td class=\"px-5\">1 x (Native HDMI 2.1),3 x (Native DisplayPort 1.4a) HDCP Support Yes (2.3)</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Size: </td>\n            <td class=\"px-5\">16 GB</td>\n        </tr>\n        <tr>\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty : </td>\n            <td class=\"px-5\">2 Years</td>\n        </tr>', 'asus6800-main.jpg', 'asus6800.jpg', 'asus68002.jpg', NULL, NULL, '95000', '77099', 'gcards', 'asus', 1, '2021-05-14 05:05:31', '2021-05-14 05:05:31'),
(7, 'NVIDIA GEFORCE RTX 3090', 'NVIDIA GEFORCE RTX 3090', '<ul class=\"ul\">\n                                <li>Memory Type: <b>GDDR6X</b></li>\n                                <li>Memory Size: <b>24 GB</b></li>\n                                <li>Boost Clock: <b>1.70 GHz</b></li>\n                               </ul>', '<ul>\n                <li>NVIDIA Ampere Streaming Multiprocessors: The building blocks for the world’s fastest, most efficient GPU, the all-new Ampere SM brings 2X the FP32 throughput and improved power efficiency.</li>\n             <li>2nd Generation RT Cores: Experience 2X the throughput of 1st gen RT Cores, plus concurrent RT and shading for a whole new level of ray tracing performance.</li>\n             <li>3rd Generation Tensor Cores: Get up to 2X the throughput with structural sparsity and advanced AI algorithms such as DLSS. Now with support for up to 8K resolution, these cores deliver a massive boost in game performance and all-new AI capabilities.</li>\n                <li>Axial-tech Fan Design has been newly tuned with a reversed central fan direction for less turbulence.</li>\n                <li>Dual Ball Fan Bearings can last up to twice as long as sleeve bearing designs.</li>\n                <li>Military-grade Capacitors and other TUF components enhance durability and performance.</li>\n                <li>GPU Tweak II provides intuitive performance tweaking, thermal controls, and system monitoring.</li>\n                <li>For Technical Support : Call us on1800220966</li>\n                </ul>', '<tr>\r\n            <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">NVIDIA CUDA Cores: </td>\r\n            <td style=\"border: none;\" class=\"px-5\">10496 Units</td>\r\n        </tr>\r\n        <tr>\r\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Boost Clock: </td>\r\n            <td class=\"px-5\">1.70 GHz</td>\r\n        </tr>\r\n        <tr>\r\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Type: </td>\r\n            <td class=\"px-5\">GDDR6X</td>\r\n        </tr>\r\n        <tr>\r\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Interface Width: </td>\r\n            <td class=\"px-5\">384-bit</td>\r\n        </tr>\r\n        <tr>\r\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Maximum Digital Resolution: </td>\r\n            <td class=\"px-5\">7680x4320</td>\r\n        </tr>\r\n        <tr>\r\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Display Output : </td>\r\n            <td class=\"px-5\">HDMI 2.1, 3x DisplayPort 1.4a</td>\r\n        </tr>\r\n        <tr>\r\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Size: </td>\r\n            <td class=\"px-5\">24 GB</td>\r\n        </tr>\r\n        <tr>\r\n            <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty : </td>\r\n            <td class=\"px-5\">3 Years</td>\r\n        </tr>', '3090-main.jpg', '3090.jpg', '30902.jpg', NULL, NULL, '133500', '172499', 'gcards', 'nvidia', 1, '2021-05-14 05:05:31', '2021-05-14 05:05:31'),
(10, 'GIGABYTE AORUS CV27F 27 Inch', 'GIGABYTE AORUS CV27F 27 Inch', '<ul class=\'ul\'>\n              <li>Panel Size : <b>27 Inch</b></li>\n              <li>Max Res : <b>1920 x 1080</b></li>\n              <li>Refresh Rate : <b>165Hz</b></li>\n            </ul>', 'CV27F is a beautiful 1500R curved monitor with elegant design which uses an 8-bit VA panel supports 90% of DCI-P3. As a tactical monitor, CV27F have all the tactical features which makes this monitor a perfect choice for gamers that loves AAA games and media entertainment.', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Model :</td>\n                <td style=\"border: none;\" class=\"px-5\">AORUS CV27F</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Panel Size (diagonal) :</td>\n                <td class=\"px-5\">27 Inch</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Display Viewing Area (HxV) :</td>\n                <td class=\"px-5\">27 Inch</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Display Surface(non-glare/ glare) :</td>\n                <td class=\"px-5\">Non-glare</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">True Resolution :</td>\n                <td class=\"px-5\">1920 x 1080 (Full HD)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Pixel Pitch :</td>\n                <td class=\"px-5\">0.3114 (H) x 0.3114 (V) (mm)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Response Time :</td>\n                <td class=\"px-5\">1ms (MPRT)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Refresh Rate (Max.) :</td>\n                <td class=\"px-5\">165Hz</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty :</td>\n                <td class=\"px-5\">3 Years</td>\n            </tr>', '1621535376main.jpg', '16215353761.jpg', '16215353762.jpg', NULL, NULL, '49000', '23490', 'monitors', 'gigabyte', 0, '2021-05-20 12:50:43', '2021-05-25 10:44:52'),
(12, 'MSI Optix MAG271C 27 inch', 'MSI Optix MAG271C 27 inch', '<ul class=\'ul\'>\n              <li>Screen Size : <b>27 (69cm)</b></li>\n              <li> Max Res :<b>1920 x 1080</b></li>\n              <li>Panel Type : <b>144Hz</b></li>\n            </ul>', 'MSI Optix MAG241C 24 inch Full HD Curved Gaming Monitor with 1920x1080, 144hz Refresh Rate, 1ms Response time, Anti Glare Panel and Adjustable Stand', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Screen Size :</td>\n                <td style=\"border: none;\" class=\"px-5\">27 (69cm)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Maximum Resolution :</td>\n                <td class=\"px-5\">1920 x 1080 (FHD)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Panel Type :</td>\n                <td class=\"px-5\">144Hz</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Ports & Connectors :</td>\n                <td class=\"px-5\">1ms</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Power Consumption :</td>\n                <td class=\"px-5\">300 nits</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Dimensions (W x H x D) :</td>\n                <td class=\"px-5\">178 (H) / 178 (V)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Weight (Approximate) :</td>\n                <td class=\"px-5\">16:9</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty :</td>\n                <td class=\"px-5\">3 Years</td>\n            </tr>', '1621536038main.jpg', '16215360381.jpg', '16215360382.jpg', NULL, NULL, '25999', '21999', 'monitors', 'msi', 0, '2021-05-20 13:10:38', '2021-05-25 10:45:27'),
(13, 'GIGABYTE AORUS FI27Q 27 Inch', 'GIGABYTE AORUS FI27Q 27 Inch', '<ul class=\'ul\'>\n              <li> Screen Size :<b>2‎7\"</b></li>\n              <li>Max Res : <b>2‎560 x 1440</b></li>\n              <li> Panel Type :<b>ELED / IPS</b></li>\n            </ul>', '<ul>\n            <li>High Dynamic Range (HDR) displays delivers better contrast and color accuracy, as well as more vibrant colors, compared to Standard Dynamic Range (SDR) displays. As a result, HDR is gaining interests from a wide range of applications, including gaming, movie entertainment, and creation of multimedia content. The aim is to let the human eye see the picture as real as possible.</li>\n            <li>The AORUS FI27Q is one of the most responsive gaming monitors in the market. By accelerating the twisting speed of the liquid crystals, the response time can be reduced to 1ms, and let you enjoy a fluent gaming experience without any ghosting effects. This feature is particularly useful with high tempo games!</li>\n            <li>AORUS FI27Q uses an advanced 10bits(8 bits+FRC) Color IPS display technology which gives you extra wide viewing angles with 178/178 degrees. While in fierce competitions, the FI27Q’s smooth rendering ability will deny any chance of ghosting effects and lead you to victory.</li>\n            \n            </ul>', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Screen Size :</td>\n                <td style=\"border: none;\" class=\"px-5\">2‎7\"</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Maximum Resolution :</td>\n                <td class=\"px-5\">2‎560 x 1440 (QHD)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Panel Type :</td>\n                <td class=\"px-5\">ELED / IPS</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Ports & Connectors :</td>\n                <td class=\"px-5\">HDMI 2.0 x2, Display port 1.2 x1</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Power Type :</td>\n                <td class=\"px-5\">Build-in</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Power Consumption :</td>\n                <td class=\"px-5\">7‎5W(Max)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Dimensions (W x H x D) :</td>\n                <td class=\"px-5\">W614.9*H371.1*D60mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Weight (Approximate) :</td>\n                <td class=\"px-5\">9‎.7kg</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty :</td>\n                <td class=\"px-5\">3 Years</td>\n            </tr>', '1621536830main.jpg', '16215368301.jpg', '16215368302.jpg', NULL, NULL, '75000', '48900', 'monitors', 'msi', 1, '2021-05-20 13:23:50', '2021-05-25 10:44:32'),
(15, 'Sony PlayStation 4 1TB Slim', 'Sony PlayStation 4 1TB Slim', '<ul class=\'ul\'>\n              <li> Processor: <b>AMD 8 Cores</b></li>\n              <li>Memory:  <b>8 GB</b></li>\n              <li>Storage:  <b>1 TB</b></li>\n            </ul>', '<ul>\n            <li>The Sony CUH-2208BB PlayStation 4, 1TB Slim with Bloodborne DualShock 4 is redesigned from the ground up to offer a futuristic design. The Slim version is sleeker and smaller in size while delivering the same performance that the original PS4 delivered.\n</li>\n            <li>Live the game in extraordinary new ways with PS4 and PS VR. Simply connect the PS VR headset to your PS4 and immerse yourself in breath-taking virtual reality games, experiences and entertainment.</li>\n            <li>HDR-enabled PS4 games burst into life with incredible colour and clarity on an HDR TV, delivering a more vibrant, realistic spectrum of colours.</li>\n            <li>Bring friends and family into play with a exciting range of easy-to-pick-up multiplayer titles which use your smartphone or tablet as a controller – only on PS4.</li>\n            <li>The DUALSHOCK 4 wireless controller has been updated with a new look and feel, including a more visible, colourful light bar to put even more of the game into your hands. It’s the most ergonomic, intuitive PlayStation controller we’ve ever designed.</li>\n            <li>The freedom to play, share and socialise with your gaming world.</li>\n            <li>Stream PS4 games to your PC, Mac, PlayStation Vita and compatible Sony Xperia smartphones or iPhones over your home WiFi network, and never be tied to the TV again.</li>\n            </ul>', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Model</td>\n                <td style=\"border: none;\" class=\"px-5\">PS41TBSLIM</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Processor</td>\n                <td class=\"px-5\">CPU : x86-64 AMD “Jaguar”, 8 Cores</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory (RAM)</td>\n                <td class=\"px-5\">8 GB</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Internal Storage</td>\n                <td class=\"px-5\">1 TB</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Controllers</td>\n                <td class=\"px-5\">DUALSHOCK4 Wireless Black Controller</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Power Consumption</td>\n                <td class=\"px-5\">165 Watts</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Wi-Fi</td>\n                <td class=\"px-5\">Yes</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Weight</td>\n                <td class=\"px-5\">2100 grams</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty</td>\n                <td class=\"px-5\">1 Year</td>\n            </tr>', '1622195777main.jpg', '16221957771.jpg', '16221957772.jpg', '16221957773.jpg', NULL, '35990', '29990', 'consoles', 'sony', 0, '2021-05-28 04:26:17', '2021-05-28 06:32:01'),
(17, 'SONY PlayStation 5 825Gb', 'SONY PlayStation 5 825Gb', '<ul class=\'ul\'>\n              <li>Memory: <b>16GB</b></li>\n              <li>Internal Storage: <b> 825GB SSD</b></li>\n              <li>Bandwidth: <b>448GB/s</b></li>\n            </ul>', '<ul>\n            <li>Lightning speed - harness the power of a custom CPU, gpu, and SSD with integrated I/world that rewrite the rules of what a PlayStation console can do</li>\n            <li>Stunning games - Marvel at incredible graphics and experience new PS5 features</li>\n            <li>Breath-taking immersion - discover a deeper gaming experience with support for haptic feedback, adaptive triggers, and 3D audio technology</li>\n            <li>8K Output - PS5 consoles support 8K Output, so you can play games on your 4320p resolution display</li>\n            \n            </ul>', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">CPU</td>\n                <td style=\"border: none;\" class=\"px-5\">8x Zen 2 Cores at 3.5GHz (variable frequency)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">GPU\n</td>\n                <td class=\"px-5\">10.28 TFLOPs, 36 CUs at 2.23GHz (variable frequency)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">GPU Architecture</td>\n                <td class=\"px-5\">Custom RDNA 2</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory/Interface</td>\n                <td class=\"px-5\">16GB GDDR6/256-bit</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Memory Bandwidth</td>\n                <td class=\"px-5\">448GB/s</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Internal Storage</td>\n                <td class=\"px-5\">Custom 825GB SSD</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">External storage</td>\n                <td class=\"px-5\">USB HDD Support</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">I/O Throughput</td>\n                <td class=\"px-5\">5.5GB/s (Raw), Typical 8-9GB/s (Compressed)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Optical drive</td>\n                <td class=\"px-5\">4K UHD Blu-Ray Drive</td>\n            </tr>', '1622196324main.jpg', '16221963241.jpg', '16221963242.jpg', NULL, NULL, '45990', '49990', 'consoles', 'sony', 0, '2021-05-28 04:35:24', '2021-05-28 06:32:40'),
(18, 'Sony PS3 Console ROM 12 GB', 'Sony PS3 Console ROM 12 GB', '<ul class=\'ul\'>\n              <li>Processor: <b>B Engine</b></li>\n              <li>Internal Storage: <b>12 GB</b></li>\n              <li>Controllers: <b>DUALSHOCK 3</b></li>\n            </ul>', '<ul>\n            <li>Introducing the new look 12GB PlayStation 3 - packaging all your favourite features. And with a 12GB of storage, you can now start getting more from your console.</li>\n            <li>Enjoy High Definition gaming and movie playback.</li>\n            <li>Motion-sensitive DUALSHOCK 3 wireless controllers and an intuitive control system.</li>\n            <li>12GB built-in storage space.</li>\n            <li>Wireless online connectivity</li>\n            <li>Motion sensitive Dual Shock 3 wireless controllers</li>\n            <li>Immersive gaming experience & fantastic graphics</li>\n            <li>Built in Blu-ray disc, DVD player and internet browsing</li>\n            </ul>', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Console Type</td>\n                <td style=\"border: none;\" class=\"px-5\">PlayStation 3</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Processor</td>\n                <td class=\"px-5\">Cell Broadband Engine</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Internal Storage</td>\n                <td class=\"px-5\">12 GB</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Colour</td>\n                <td class=\"px-5\">Black</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Controllers</td>\n                <td class=\"px-5\">DUALSHOCK 3</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Power Consumption</td>\n                <td class=\"px-5\">190 W</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Wi-Fi</td>\n                <td class=\"px-5\">Yes</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Motion Gaming</td>\n                <td class=\"px-5\">Yes</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty</td>\n                <td class=\"px-5\">1 Year</td>\n            </tr>', '1622201652main.jpg', NULL, NULL, NULL, NULL, '16990', '12990', 'consoles', 'sony', 0, '2021-05-28 06:04:12', '2021-05-28 06:38:44'),
(19, 'MICROSOFT Xbox Series X', 'MICROSOFT Xbox Series X', '<ul class=\'ul\'>\n              <li>Model: <b>Xbox Series X</b></li>\n              <li>RAM: <b>16GB</b></li>\n              <li>Motion Controller: <b>Yes</b></li>\n            </ul>', '<ul>\n            <li>Introducing Xbox series X, the fastest, most powerful Xbox ever. Play thousands of titles from four generations of consoles—all games look and play best on Xbox series X</li>\n            <li>Experience next-gen speed and performance with the Xbox velocity architecture, powered by a custom SSD and integrated software</li>\n            <li>Play thousands of games from four generations of Xbox with backward compatibility, including optimized titles at launch</li>\n            <li>Xbox game Pass ultimate includes over 100 high-quality games, online multiplayer, and an EA play membership for one low monthly price (membership sold separately)</li>\n            <li>Xbox Smart delivery ensures you play the best available version of your game no matter which console you\'re playing on</li>\n            \n            </ul>', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Model Number\n</td>\n                <td style=\"border: none;\" class=\"px-5\">Xbox Series X\n</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Sales Package</td>\n                <td class=\"px-5\">\n1 Series X Console, 1 Controller, 1 Ultra High Speed HDMI Cable and 1 Power Cord.</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Additional Content</td>\n                <td class=\"px-5\">Series X console, One Wireless Controller, A high-speed HDMI Cable and Power Cable.</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Console Type</td>\n                <td class=\"px-5\">\nConsole</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Sound</td>\n                <td class=\"px-5\">L-PCM, up to 7.1, Dolby Digital 5.1, DTS 5.1, Dolby TrueHD with Atmos</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Motion Controller Included</td>\n                <td class=\"px-5\">Yes</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">RAM</td>\n                <td class=\"px-5\">16GB GDDR6 w/320 bit-wide bus</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Games Included</td>\n                <td class=\"px-5\">No</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty</td>\n                <td class=\"px-5\">1 Year</td>\n            </tr>', '1622202116main.jpg', '16222021161.jpg', '16222021162.jpg', NULL, NULL, '56990', '49990', 'consoles', 'xbox', 0, '2021-05-28 06:11:56', '2021-05-28 06:11:56'),
(20, 'Microsoft Xbox Series S 512 GB', 'Microsoft Xbox Series S 512 GB', '<ul class=\'ul\'>\n              <li>Model: <b>Xbox Series S</b></li>\n              <li>RAM: <b>10GB</b></li>\n              <li>Processor: <b>8-core AMD</b></li>\n            </ul>', 'The Microsoft Xbox Series S is the smallest Xbox console to date, and it packs a powerful performance in its sleek body. This console features the Xbox Velocity Architecture for high-speed gaming, a custom-build 512 GB NVMe SSD to reduce the loading time, and it comes with an Xbox Wireless Controller for easy gaming.', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Model Number</td>\n                <td style=\"border: none;\" class=\"px-5\">Xbox Series S</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Sales Package</td>\n                <td class=\"px-5\">1 Series S Console, 1 Controller, 1 Ultra High Speed HDMI Cable and 1 Power Cord.</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Additional Content</td>\n                <td class=\"px-5\">Series S console, One Wireless Controller, A high-speed HDMI Cable and Power Cable.</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Console Type</td>\n                <td class=\"px-5\">Console</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Sound</td>\n                <td class=\"px-5\">L-PCM, up to 7.1, Dolby Digital 5.1, DTS 5.1, Dolby TrueHD with Atmos</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Motion Controller Included</td>\n                <td class=\"px-5\">\nYes</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">RAM</td>\n                <td class=\"px-5\">10 GB GDDR6 128 bit-wide bus</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Internal Storage</td>\n                <td class=\"px-5\">512GB PCie Gen 4 NVME SSD</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty</td>\n                <td class=\"px-5\">1 Year</td>\n            </tr>', '1622202602main.jpg', '16222026021.jpg', '16222026022.jpg', NULL, NULL, '49990', '39990', 'consoles', 'xbox', 0, '2021-05-28 06:20:02', '2021-05-28 06:39:11'),
(21, 'Microsoft Xbox One S 1TB', 'Microsoft Xbox One S 1TB', '<ul class=\'ul\'>\n              <li>Model <b>Xbox One</b></li>\n              <li>Ram: <b>8GB</b></li>\n              <li>Rom: <b>1Tb</b></li>\n            </ul>', '<ul>\n            <li>Console Type: TV Console, Game Media: Download</li>\n            <li>Console Functions: Gaming | Streaming</li>\n            <li>1.75GHz AMD Jaguar eight-core</li>\n            <li>ROM: 1TB HDD</li>\n            <li>Wireless Controller</li>\n            <li>Open a whole new portal to the world of gaming with the marvellous Microsoft Xbox One S 1 TB Starter Bundle. This starter bundle pack gives you 3 months subscription to Xbox Game Pass and Xbox Live Gold. Xbox Game Pass. With Xbox Game Pass, get access to more than a hundred video games and with Xbox Live Gold, you can connect and team up or battle against your friends and family members. Microsoft Xbox One S 1 TB Starter Bundle includes an extra delight in terms of a 4K Blu-ray Player that lets you stream videos from premium websites such as Netflix and Amazon. Using Microsoft Xbox One S 1 TB Starter Bundle\'s Xbox Live, no matter what age group you belong to, you always find someone to game with and bond with. You get more games and faster. So get set and dive right into it with this gaming pack.</li>\n            \n            </ul>', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Model</td>\n                <td style=\"border: none;\" class=\"px-5\">Xbox One</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">HDD</td>\n                <td class=\"px-5\">1TB</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Processor</td>\n                <td class=\"px-5\">AMD Jaguar 1.75GHz 8-core</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Graphics</td>\n                <td class=\"px-5\">AMD Durango 2 GCN 1.0</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">RAM</td>\n                <td class=\"px-5\">8GB</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">AV</td>\n                <td class=\"px-5\">HDMI-out, Optical Out</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">USB</td>\n                <td class=\"px-5\">3 USB 3.0 ports</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Weight</td>\n                <td class=\"px-5\">2.9kg</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty</td>\n                <td class=\"px-5\">1 Year</td>\n            </tr>', '1622203251main.jpg', '16222032511.jpg', NULL, NULL, NULL, '32990', '25990', 'consoles', 'xbox', 0, '2021-05-28 06:30:51', '2021-05-28 06:33:02'),
(22, 'GIGABYTE 32 1440P Curved Monitor', 'GIGABYTE 32 1440P Curved Monitor', '<ul class=\'ul\'>\n              <li>Brand : <b>GIGABYTE</b></li>\n              <li>Product Code : <b>ELTBP2268</b></li>\n              <li>Screen Size : <b>3‎1.5</b></li>\n            </ul>', '<ul>\n            <li>Your super immersive feel in the game!</li>\n            <li>31.5” 1500R VA panel presents you a view closer to the human eye than a flat monitor, giving you a more immersive feel.\nSimple but stylish</li>\n            <li>The streamline appearance represents the simplicity of the GIGABYTE gaming series design philosophy, sturdy stand and matte finish built for functional and aesthetic features adding more to the characteristics.</li>\n            <li>Perfect Viewing Angle</li>\n            <li>GIGABYTE Gaming monitor features an exclusive stand that\'s ergonomically designed to offer extensive range of height and tilt adjustments.</li>\n            \n            </ul>', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Screen Size :</td>\n                <td style=\"border: none;\" class=\"px-5\">3‎1.5\" VA 1500R</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Maximum Resolution :</td>\n                <td class=\"px-5\">2‎560 x 1440 (QHD)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Panel Type :</td>\n                <td class=\"px-5\">Edge type</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Ports & Connectors :</td>\n                <td class=\"px-5\">2 x HDMI 2.0,1 x Display port 1.2</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Power Type :</td>\n                <td class=\"px-5\">Power adapter</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Power Consumption :</td>\n                <td class=\"px-5\">7‎5W(Max)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Dimensions (W x H x D) :</td>\n                <td class=\"px-5\">7‎10.5x552.2x234.8</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Weight (Approximate) :</td>\n                <td class=\"px-5\">1‎0.8 kg</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty :</td>\n                <td class=\"px-5\">3 Years</td>\n            </tr>', '1622205553main.jpg', '16222055531.jpg', '16222055532.jpg', NULL, NULL, '60000', '34500', 'monitors', 'msi', 0, '2021-05-28 07:09:13', '2021-05-28 07:09:13'),
(23, 'LG 24 inch Gaming Monitor', 'LG 24 inch Gaming Monitor', '<ul class=\'ul\'>\n              <li>Brand : <b>L.G</b></li>\n              <li>Screen Size : <b>60.96cm (24)</b></li>\n              <li>Refresh Rate : <b>144Hz</b></li>\n            </ul>', 'LG 24 inch Gaming Monitor - 1m, 144Hz, Full HD, TN Panel with, HDMI, Display Port, USB Ports - 24GM79G (Black)', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Screen Size :</td>\n                <td style=\"border: none;\" class=\"px-5\">60.96cm (24)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Panel Type :</td>\n                <td class=\"px-5\">TN</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Color Depth (Number of Colors) :</td>\n                <td class=\"px-5\">8bits, 16.7M colors</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Pixel pitch (mm) :</td>\n                <td class=\"px-5\">0.27675 X 0.27675</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Response Time(GTG) :</td>\n                <td class=\"px-5\">2ms(High), 1ms with Motion Blur Reduction</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Refresh Rate :</td>\n                <td class=\"px-5\">144Hz</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Resolution :</td>\n                <td class=\"px-5\">1920x1080</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Input :</td>\n                <td class=\"px-5\">100~240V, 50/60Hz</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty :</td>\n                <td class=\"px-5\">3 Years</td>\n            </tr>', '1622205943main.jpg', '16222059431.jpg', NULL, NULL, NULL, '20999', '18999', 'monitors', 'msi', 0, '2021-05-28 07:15:43', '2021-05-28 07:15:43');
INSERT INTO `products` (`id`, `name`, `slug`, `description`, `details`, `specification`, `image_name`, `image_name1`, `image_name2`, `image_name3`, `image_name4`, `price`, `sale_price`, `cat`, `brand`, `bestselling`, `created_at`, `updated_at`) VALUES
(24, 'LG 24UD58-B 24-Inch 4K Ultra HD', 'LG 24UD58-B 24-Inch 4K Ultra HD', '<ul class=\'ul\'>\n              <li>Brand : <b>LG</b></li>\n              <li>Screen Size : <b>60.96cm</b></li>\n              <li>Panel Type : <b>IPS</b></li>\n            </ul>', 'LG 24UD58-B 24-Inch 4K UHD IPS Monitor with Edit Perfect Visual, Clear, Live Gaming Scenes with FreeSync, Realistic Gaming Experience, Convenient, Easy OnScreen Control, Split Your Workspace, Optimized Setting for the Games of Your Taste.', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Screen Size(cm) :</td>\n                <td style=\"border: none;\" class=\"px-5\">60.96cm (24)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Panel Type :</td>\n                <td class=\"px-5\">IPS</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Pixel Pitch (mm) :</td>\n                <td class=\"px-5\">0.1369mm x 0.1369mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Response Time :</td>\n                <td class=\"px-5\">5ms GTG</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\"></td>\n                <td class=\"px-5\"></td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Refresh Rate :</td>\n                <td class=\"px-5\">60 Hz</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Aspect Ratio :</td>\n                <td class=\"px-5\">16:9</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Resolution :</td>\n                <td class=\"px-5\">3840x2160</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty :</td>\n                <td class=\"px-5\">3 Years</td>\n            </tr>', '1622206178main.jpg', '16222061781.jpg', '16222061782.jpg', NULL, NULL, '31500', '24300', 'monitors', 'msi', 0, '2021-05-28 07:19:38', '2021-05-28 07:19:38'),
(25, 'Corsair Graphite Series 780T White', 'Corsair Graphite Series 780T White', '<ul class=\'ul\'>\n              <li>Brand : <b>CORSAIR</b></li>\n              <li>Expansion Slot : <b>260mm</b></li>\n              <li>USB 2.0 <b>Steel</b></li>\n            </ul>', 'A nicely-built high performance PC can be a thing of beauty. This is truer than ever with the sleek, artfully crafted, and undeniably stunning Graphite Series 780T. The striking Graphite Series 780T full tower PC case is the perfect place for your high-end PC parts and delivers a knockout when it comes to performance capabilities and ease of maintenance. Evade the aesthetics of yesteryear with 780T\'s rounded corners and smart design principles inside and out. A windowed side panel reveals incredible expansion and layout options, including space for dual 360mm radiators or up to nine 120mm fans. With room for nine drives thanks to the modular tool-free hard drive cages and side-mounted SSD bays, you\'ll have tons of storage flexibility. The front panel offers a lot of functionality, too: a three-mode fan controller makes you the judge of optimal noise and cooling ratios, and there are two ports each for USB 3.0 and 2.0 devices, as well as headphone and microphone ports.', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Max GPU Length :</td>\n                <td style=\"border: none;\" class=\"px-5\">Mini-ITX MicroATX ATX E-ATX XL-ATX</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Max PSU Length :</td>\n                <td class=\"px-5\">637mm x 288mm x 602mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Max CPU Cooler Height :</td>\n                <td class=\"px-5\">355mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Expansion Slot :</td>\n                <td class=\"px-5\">260mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">USB 2.0 Port :</td>\n                <td class=\"px-5\">Steel</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">USB 3.0 Port :</td>\n                <td class=\"px-5\">120mm, 140mm, 240mm, 280mm, 360mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Case Window :</td>\n                <td class=\"px-5\">H55, H60, H75, H80i, H90, H100i, H105, H110</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">DVD Drive Bay :</td>\n                <td class=\"px-5\">200mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty :</td>\n                <td class=\"px-5\">2 Years</td>\n            </tr>', '1622208150main.jpg', '16222081501.jpg', NULL, NULL, NULL, '23900', '16499', 'cabinets', 'all', 0, '2021-05-28 07:52:30', '2021-05-28 07:55:36'),
(26, 'DEEPCOOL MATREXX 55 ADD-RGB', 'DEEPCOOL MATREXX 55 ADD-RGB', '<ul class=\'ul\'>\n              <li>Brand : <b>DEEPCOOL</b></li>\n              <li>Case Type : <b>Middle Tower</b></li>\n              <li>Weight : <b>7.65 kg</b></li>\n            </ul>', 'A compact ATX computer case supports motherboards up to E-ATX. Pre-installed 3pcs of 120mm ADD-RGB fans (CF120) and an addressable RGB strip in the front provide 5 magical lighting effects and easily controlled by manual button or motherboards with synchronized lighting control via an addressable RGB function. Two extra connectors are ready to SYNC with the motherboard to control any combination of DEEPCOOL/GAMER STORM 5V ADD-RGB devices and also other brand 5V ADD-RGB devices. Full sized 4mm thickness, tempered glass side panel and the front panel give the case a unique look and perfectly show off your inner structure. Supports installation of 120/140/240/280/360mm radiator liquid cooling system in the front, 120/140/240/280mm radiator liquid cooling system on top and 120mm radiator liquid cooling system in the back. Supports 370mm (MAX) long Graphic Card installation. Optimized airflow is guaranteed with large air intakes on two sides of the front panel, keeping your components cool. The 210mm wide tower compartment with 23mm clearance is perfect for cable management. A magnetic dustproof net on top and dust-filter in the front and bottom. With PSU shroud to keep internal neat and tidy.', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Model :</td>\n                <td style=\"border: none;\" class=\"px-5\">DP-ATX-MATREXX55-AR-3F</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Motherboards :</td>\n                <td class=\"px-5\">E-ATX/ATX/Micro ATX/Mini-ITX</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Case Type :</td>\n                <td class=\"px-5\">Middle Tower</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Materials :</td>\n                <td class=\"px-5\">ABS+SPCC+Tempered Glass</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">I/O Ports :</td>\n                <td class=\"px-5\">1xUSB3.0/2xUSB2.0/1xAudio(HD)/1xMic,1xRGB Button</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Power Supply Type :</td>\n                <td class=\"px-5\">ATX PS2 (maximum length: 170mm)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Cable Management :</td>\n                <td class=\"px-5\">23mm Clearance</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">CPU Cooler Height Limit :</td>\n                <td class=\"px-5\">168mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty :</td>\n                <td class=\"px-5\">3 Years</td>\n            </tr>', '1622208833main.jpg', NULL, NULL, NULL, NULL, '7499', '5999', 'cabinets', 'all', 0, '2021-05-28 08:03:53', '2021-05-28 08:03:53'),
(27, 'GIGABYTE AORUS C300 GLASS', 'GIGABYTE AORUS C300 GLASS', '<ul class=\'ul\'>\n              <li>Brand : <b>GIGABYTE</b></li>\n              <li>Form Factor : <b>Mid Tower</b></li>\n              <li>Materials : <b>Plastic</b></li>\n            </ul>', 'AORUS C300 GLASS features Full-Size 4mm Tempered Glass Side Panel, With HDMI and USB 3.1 Gen2 Type-C on I/O Panel, RGB Fusion 2.0 - Synchronize RGB Lighting with other AORUS Devices, Support Vertical and Horizontal VGA Installation, Liquid Cooling Compatible, PSU Shroud Design, Detachable Dust Filter.', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Model :</td>\n                <td style=\"border: none;\" class=\"px-5\">GB-AC300G</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Case Form Factor :</td>\n                <td class=\"px-5\">Mid Tower</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">M/B Type :</td>\n                <td class=\"px-5\">mini-ITX/m-ATX/ATX</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Color :</td>\n                <td class=\"px-5\">Black</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Materials :</td>\n                <td class=\"px-5\">Steel, Plastic, Glass</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Expansion slots :</td>\n                <td class=\"px-5\">7 or 2 (Requires PCIE Riser Cable)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">I/O Panel :</td>\n                <td class=\"px-5\">HDMI x1, USB 3.1 Gen2 Type-C x1, USB 3.0 x2, Audio In & Out </td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">RGB Lighting :</td>\n                <td class=\"px-5\">Yes (Support RGB Fusion 2.0)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty :</td>\n                <td class=\"px-5\">1 Year</td>\n            </tr>', '1622209108main.jpg', '16222091081.jpg', '16222091082.jpg', NULL, NULL, '9999', '7990', 'cabinets', 'all', 0, '2021-05-28 08:08:28', '2021-05-28 08:17:41'),
(28, 'Antec DA601 Mid Tower Gaming Cabinet', 'Antec DA601 Mid Tower Gaming Cabinet', '<ul class=\'ul\'>\n              <li>Brand : <b>Antec</b></li>\n              <li>Materials : <b>SPCC & Plastic</b></li>\n              <li>Weight : <b>7.8Kgs</b></li>\n            </ul>', 'Now we bring you the brand-new series of gaming cases: Dark Avenger - DA601, as the Prime Dark Avenger, is our new design for future gaming experience. With one press, you can have simple access to all the LEDs of the whole build. The high-tech front panel design makes your build shine as a superhero. It was also born with an ample room for you to equip it with high-end PC components. DA601 allows you to conquer the endless gaming war.', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Model :</td>\n                <td style=\"border: none;\" class=\"px-5\">DP-ATX-MATREXX55-AR-3F</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Motherboards :</td>\n                <td class=\"px-5\">E-ATX/ATX/Micro ATX/Mini-ITX</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Case Type :</td>\n                <td class=\"px-5\">Middle Tower</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Materials :</td>\n                <td class=\"px-5\">ABS+SPCC+Tempered Glass</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">I/O Ports :</td>\n                <td class=\"px-5\">1xUSB3.0/2xUSB2.0/1xAudio(HD)/1xMic,1xRGB Button</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Power Supply Type :</td>\n                <td class=\"px-5\">ATX PS2 (maximum length: 170mm)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Cable Management :</td>\n                <td class=\"px-5\">23mm Clearance</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">CPU Cooler Height Limit :</td>\n                <td class=\"px-5\">168mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty :</td>\n                <td class=\"px-5\">3 Years</td>\n            </tr>', '1622209294main.jpg', '16222092941.jpg', NULL, NULL, NULL, '7899', '5800', 'cabinets', 'all', 0, '2021-05-28 08:11:34', '2021-05-28 08:11:34'),
(29, 'Antec NX210 Mid Tower Gaming Cabinet', 'Antec NX210 Mid Tower Gaming Cabinet', '<ul class=\'ul\'>\n              <li>Brand :  <b>Antec</b></li>\n              <li>Case Type : <b>Mid Tower</b></li>\n              <li>Warranty : <b>3 Years</b></li>\n            </ul>', 'Creation of Value & Function The NX210 mid-tower gaming case effortlessly combines a bevy of in-demand features: USB 3.0 connectivity, ample storage drive bays, room for expansion, and includes four ARGB LED fans(Single mode only). With support for up to a 240mm liquid cooling radiator in front, NX210 is easy to build with and easy to cool.', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Model :</td>\n                <td style=\"border: none;\" class=\"px-5\">DP-ATX-MATREXX55-AR-3F</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Motherboards :</td>\n                <td class=\"px-5\">E-ATX/ATX/Micro ATX/Mini-ITX</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Case Type :</td>\n                <td class=\"px-5\">Middle Tower</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Materials :</td>\n                <td class=\"px-5\">ABS+SPCC+Tempered Glass</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">I/O Ports :</td>\n                <td class=\"px-5\">1xUSB3.0/2xUSB2.0/1xAudio(HD)/1xMic,1xRGB Button</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Power Supply Type :</td>\n                <td class=\"px-5\">ATX PS2 (maximum length: 170mm)</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Cable Management :</td>\n                <td class=\"px-5\">23mm Clearance</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">CPU Cooler Height Limit :</td>\n                <td class=\"px-5\">168mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty :</td>\n                <td class=\"px-5\">3 Years</td>\n            </tr>', '1622209407main.jpg', '16222094071.jpg', NULL, NULL, NULL, '3799', '3290', 'cabinets', 'all', 0, '2021-05-28 08:13:27', '2021-05-28 11:27:33'),
(30, 'Antec NX300 ARGB ATX Mid Tower Cabinet', 'Antec NX300 ARGB ATX Mid Tower Cabinet', '<ul class=\'ul\'>\n              <li>Brand :  <b>Antec</b></li>\n              <li>Cabinet Type : <b>Mid Tower</b></li>\n              <li>Form Factor : <b>Mid Tower</b></li>\n            </ul>', 'The NX300 Black mid-tower gaming case effortlessly combines a bevy of in-demand features: USB 3.0 connectivity, ample storage drive bays, room for expansion, and includes one ARGB LED fan in rear. With support for up to a 240 mm liquid cooling radiator in front, NX300 Black is easy to build with, and easy to cool.', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Max GPU Length :</td>\n                <td style=\"border: none;\" class=\"px-5\">Mini-ITX MicroATX ATX E-ATX XL-ATX</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Max PSU Length :</td>\n                <td class=\"px-5\">637mm x 288mm x 602mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Max CPU Cooler Height :</td>\n                <td class=\"px-5\">355mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Expansion Slot :</td>\n                <td class=\"px-5\">260mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">USB 2.0 Port :</td>\n                <td class=\"px-5\">Steel</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">USB 3.0 Port :</td>\n                <td class=\"px-5\">120mm, 140mm, 240mm, 280mm, 360mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Case Window :</td>\n                <td class=\"px-5\">H55, H60, H75, H80i, H90, H100i, H105, H110</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">DVD Drive Bay :</td>\n                <td class=\"px-5\">200mm</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty :</td>\n                <td class=\"px-5\">2 Years</td>\n            </tr>', '1622209599main.jpg', '16222095991.jpg', '16222095992.jpg', NULL, NULL, '4100', '4501', 'cabinets', 'all', 0, '2021-05-28 08:16:39', '2021-05-28 08:16:39'),
(31, 'MSI Combo with Ryzen 7 3700x', 'MSI Combo with Ryzen 7 3700x', '<ul class=\'ul\'>\n              <li>Processor: <b>Ryzen 7 3700x </b></li>\n              <li>Graphics <b>Rx 5600 XT</b></li>\n              <li>Ram: <b>16GB</b></li>\n            </ul>', '<ul>\n            <li>It has AMD Ryzen™ 7 3700X which comes with  8 cores 16 threads and with base clock of 3.6 GHz and 4mb cache</li>\n            <li>It has Radeon Rx 5600 XT which has memory size of 6GB GDDR6 with boost up to 1620 MHz</li>\n            <li>It has MSI B450 Tomahawk MAX Gaming Motherboard</li>\n            <li>MSI DS502 Gaming Headset with Microphone</li>\n            <li>MSI FORCE GC30 Gamepad </li>\n            <li>MSI Vigor GK40 Combo US Backlit RGB Dedicated Hotkeys Anti-Ghosting Mechanical Feel Gaming Keyboard & Mouse</li>\n            <li>MSI B450M Pro-VDH Max with G.Skill F4-3000C16S-8GVRB Ripjaws V DDR4-3000MHz RAM</li>\n            <li>MSI Optix MAG271C 27 inch monitor</li>\n            </ul>', '<tr>\n                <td style=\"border: none;border-right: 1px solid #fff;\" class=\"px-5 td-border\">Processor</td>\n                <td style=\"border: none;\" class=\"px-5\">AMD Ryzen™ 7 3700X</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Graphics Card</td>\n                <td class=\"px-5\">Radeon Rx 5600 XT</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Ram</td>\n                <td class=\"px-5\">MSI B450M Pro-VDH Max 16GB GDDR6</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Motherboard</td>\n                <td class=\"px-5\">MSI B450 Tomahawk MAX</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Headset</td>\n                <td class=\"px-5\">MSI DS502 Gaming Headset with Microphone</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Gamepad</td>\n                <td class=\"px-5\">MSI FORCE GC30 Gamepad</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Keyboard and mouse</td>\n                <td class=\"px-5\">MSI Vigor GK40 Combo Keyboard and mouse</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Monitor</td>\n                <td class=\"px-5\">MSI Optix MAG271C 27</td>\n            </tr>\n            <tr>\n                <td style=\"border-right: 1px solid #fff;\" class=\"px-5\">Warranty </td>\n                <td class=\"px-5\">2 Years</td>\n            </tr>', '1622222897main.jpg', '16222228971.jpg', '16222228972.jpg', '16222228973.jpg', '16222228974.jpg', '129995', '115995', 'prebult', 'msi', 1, '2021-05-28 11:58:17', '2021-05-28 11:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logintype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `logintype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Madhav', 'madhavyagni@gmail.com', NULL, '$2y$10$PcL75hxnYB9BBv0yTcx78.l89Gd7hegnvex4kUvxd3WKSbRxFRP0G', 'ADM', NULL, '2021-05-11 04:28:28', '2021-05-11 04:28:28'),
(2, 'madhavyagni', 'madhavyagni1@gmail.com', NULL, '$2y$10$bspajoSj8yDG3gyWQT1o6epN.T.zHFY3RMwNtJsa/zvGmFn6Vjrg6', 'USR', NULL, '2021-05-12 15:06:26', '2021-05-12 15:06:26'),
(5, 'Sonu Yagni', 'sonuyagni@gmail.com', NULL, '$2y$10$KkGJdOqPlcSaESkYIJbIpOqbqBS4Lxbj/BDZAhwcG7.dVYhZqYEGO', 'USR', NULL, '2021-05-27 06:45:02', '2021-05-27 11:54:56'),
(7, 'Madhav', 'madhavyagni01@gmail.com', NULL, '$2y$10$ZNlGU94F7T2bAtKWPzk.qu2BwwvI2CEL4PsXYQDmZLScKbZzoiCf2', 'ADM', NULL, '2021-05-29 12:12:20', '2021-05-29 12:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `price`, `user_id`, `created_at`, `updated_at`) VALUES
(26, 5, 29200.00, 1, '2021-05-19 11:04:54', '2021-05-19 11:04:54'),
(27, 7, 172499.00, 1, '2021-05-19 11:05:03', '2021-05-19 11:05:03'),
(28, 4, 36599.00, 1, '2021-05-20 06:48:59', '2021-05-20 06:48:59'),
(29, 3, 36699.00, 1, '2021-05-20 06:49:09', '2021-05-20 06:49:09'),
(30, 2, 35999.00, 1, '2021-05-21 07:25:56', '2021-05-21 07:25:56'),
(31, 10, 23490.00, 1, '2021-05-21 08:54:10', '2021-05-21 08:54:10'),
(32, 12, 21999.00, 1, '2021-05-21 08:54:14', '2021-05-21 08:54:14'),
(33, 6, 77099.00, 1, '2021-05-21 08:56:49', '2021-05-21 08:56:49'),
(34, 31, 115995.00, 1, '2021-05-28 12:27:26', '2021-05-28 12:27:26'),
(35, 17, 49990.00, 1, '2021-05-28 12:29:40', '2021-05-28 12:29:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baskets`
--
ALTER TABLE `baskets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baskets_product_id_foreign` (`product_id`),
  ADD KEY `baskets_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_providers`
--
ALTER TABLE `oauth_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_providers_user_id_foreign` (`user_id`),
  ADD KEY `oauth_providers_provider_user_id_index` (`provider_user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_product_id_foreign` (`product_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baskets`
--
ALTER TABLE `baskets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_providers`
--
ALTER TABLE `oauth_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baskets`
--
ALTER TABLE `baskets`
  ADD CONSTRAINT `baskets_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `baskets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `oauth_providers`
--
ALTER TABLE `oauth_providers`
  ADD CONSTRAINT `oauth_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
