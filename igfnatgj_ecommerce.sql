-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 02, 2024 at 09:27 AM
-- Server version: 10.6.18-MariaDB-cll-lve
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `igfnatgj_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `admin_role_id` bigint(20) NOT NULL DEFAULT 2,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `email` varchar(80) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `admin_role_id`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'admin', '0921705458', 1, 'def.png', 'anhkhanh5539574@gmail.com', NULL, '$2y$10$ZARwc4TAgU2NWne4Mg/P/umraCFnF2UNvZG1SgC8NEQhV0xIzxxg2', 'COFpKuz6qFz183mdAnv80YIIJFWbCzoRCmVyoUdkbhUPYaYZqO9zg5Xv45r2', '2024-03-26 02:09:59', '2024-03-26 02:09:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `module_access` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `module_access`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Admin', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallets`
--

CREATE TABLE `admin_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `inhouse_earning` double NOT NULL DEFAULT 0,
  `withdrawn` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `pending_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `total_tax_collected` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_wallets`
--

INSERT INTO `admin_wallets` (`id`, `admin_id`, `inhouse_earning`, `withdrawn`, `created_at`, `updated_at`, `commission_earned`, `delivery_charge_earned`, `pending_amount`, `total_tax_collected`) VALUES
(1, 1, 0, 0, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2, 1, 0, 0, '2024-03-26 02:09:59', '2024-03-26 02:09:59', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallet_histories`
--

CREATE TABLE `admin_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `payment` varchar(191) NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `banner_type` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `resource_type` varchar(191) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `sub_title` varchar(191) DEFAULT NULL,
  `button_text` varchar(191) DEFAULT NULL,
  `background_color` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `banner_type`, `published`, `created_at`, `updated_at`, `url`, `resource_type`, `resource_id`, `title`, `sub_title`, `button_text`, `background_color`) VALUES
(1, '2024-04-01-660a40b7d6daf.png', 'Main Banner', 1, '2024-04-01 04:05:59', '2024-04-01 04:06:31', 'http://ecommece.khanhdv.asia', 'product', NULL, NULL, NULL, NULL, NULL),
(2, '2024-04-01-660a40c6dbabd.png', 'Main Banner', 1, '2024-04-01 04:06:14', '2024-04-01 04:06:30', 'http://ecommece.khanhdv.asia', 'product', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_person_name` varchar(191) DEFAULT NULL,
  `address_type` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `zip` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(50) NOT NULL DEFAULT 'def.png',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CUNA', '2024-04-01-660a41ca16657.png', 1, '2024-04-01 04:10:34', '2024-04-01 04:10:34'),
(2, 'Jetzt VN Official', '2024-04-01-660a433a0766a.png', 1, '2024-04-01 04:16:42', '2024-04-01 04:16:42'),
(3, 'shopcongnghestore', '2024-07-09-668cc94d633fe.png', 1, '2024-07-09 04:23:25', '2024-07-09 04:23:25'),
(4, 'ỐP LƯNG IPHONE - TIẾN DŨNG', '2024-07-09-668cc9816b245.png', 1, '2024-07-09 04:24:17', '2024-07-09 04:24:17'),
(5, 'JIASHI', '2024-07-09-668cc9b05572a.png', 1, '2024-07-09 04:25:04', '2024-07-09 04:25:04'),
(6, 'BlueWow Official Store', '2024-07-09-668cc9d538828.png', 1, '2024-07-09 04:25:41', '2024-07-09 04:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'system_default_currency', '1', '2020-10-11 07:43:44', '2021-06-04 18:25:29'),
(2, 'language', '[{\"id\":\"1\",\"name\":\"english\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":false},{\"id\":2,\"name\":\"Vi\\u1ec7t  nam\",\"direction\":\"ltr\",\"code\":\"vn\",\"status\":1,\"default\":true}]', '2020-10-11 07:53:02', '2024-09-02 19:03:12'),
(3, 'mail_config', '{\"status\":0,\"name\":\"demo\",\"host\":\"mail.demo.com\",\"driver\":\"SMTP\",\"port\":\"587\",\"username\":\"info@demo.com\",\"email_id\":\"info@demo.com\",\"encryption\":\"TLS\",\"password\":\"demo\"}', '2020-10-12 10:29:18', '2021-07-06 12:32:01'),
(4, 'cash_on_delivery', '{\"status\":\"1\"}', NULL, '2024-06-27 04:25:31'),
(6, 'ssl_commerz_payment', '{\"status\":\"0\",\"environment\":\"sandbox\",\"store_id\":\"\",\"store_password\":\"\"}', '2020-11-09 08:36:51', '2023-01-10 05:51:56'),
(7, 'paypal', '{\"status\":\"0\",\"environment\":\"sandbox\",\"paypal_client_id\":\"\",\"paypal_secret\":\"\"}', '2020-11-09 08:51:39', '2023-01-10 05:51:56'),
(8, 'stripe', '{\"status\":\"0\",\"api_key\":null,\"published_key\":null}', '2020-11-09 09:01:47', '2021-07-06 12:30:05'),
(10, 'company_phone', '000000000', NULL, '2020-12-08 14:15:01'),
(11, 'company_name', 'Venus shop', NULL, '2021-02-27 18:11:53'),
(12, 'company_web_logo', '2021-05-25-60ad1b313a9d4.png', NULL, '2021-05-25 21:43:45'),
(13, 'company_mobile_logo', '2021-02-20-6030c88c91911.png', NULL, '2021-02-20 14:30:04'),
(14, 'terms_condition', '<p>Điều Khoản Sử Dụng App</p>\r\n\r\n<p>1. Giới thiệu</p>\r\n\r\n<p>1.1. Ch&agrave;o mừng bạn đến với App Kowil&nbsp; (&quot;App&quot;). Ch&uacute;ng t&ocirc;i cung cấp th&ocirc;ng tin cho bạn (&ldquo;Bạn&rdquo; hoặc &ldquo;Người D&ugrave;ng&rdquo;) tr&ecirc;n App theo c&aacute;c điều khoản v&agrave; điều kiện tại văn bản n&agrave;y. Bằng c&aacute;ch truy cập, sử dụng App, (c&aacute;c )sản phẩm v&agrave; hoặc dịch vụ được cung cấp theo App (&ldquo;Sử Dụng&rdquo;) được điều chỉnh bởi c&aacute;c điều kiện, điều khoản v&agrave; th&ocirc;ng b&aacute;o dưới đ&acirc;y (&ldquo;Điều Khoản Sử Dụng&rdquo;). Bằng việc Sử Dụng App, Bạn đồng &yacute; tất cả Điều Khoản Sử Dụng v&agrave; Ch&iacute;nh s&aacute;ch bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng, c&oacute; thể được điều chỉnh, cập nhật bởi ch&uacute;ng t&ocirc;i t&ugrave;y từng thời điểm m&agrave; kh&ocirc;ng c&oacute; th&ocirc;ng b&aacute;o trước. Bạn được khuyến nghị n&ecirc;n thường xuy&ecirc;n kiểm tra trang n&agrave;y để biết được những thay đổi đối với Điều Khoản Sử Dụng. Vui l&ograve;ng hiểu rằng nếu bạn từ chối chấp thuận Điều Khoản Sử Dụng, bạn sẽ kh&ocirc;ng thể sử dụng hoặc mua bất cứ sản phẩm n&agrave;o tại App.&nbsp;</p>\r\n\r\n<p>1.2. C&aacute;c Điều Khoản Sử Dụng n&agrave;y l&agrave; cam kết giữa Bạn v&agrave; C&ocirc;ng Ty cổ phần thời trang Kowil Việt Nam (&quot;C&ocirc;ng Ty&quot;). Theo đ&oacute; C&ocirc;ng Ty sẵn s&agrave;ng cấp cho Bạn quyền truy cập v&agrave;o App n&agrave;y.&nbsp;</p>\r\n\r\n<p>1.3. C&ocirc;ng Ty c&oacute; quyền thay đổi c&aacute;c Điều Khoản Sử Dụng n&agrave;y t&ugrave;y từng thời điểm .C&aacute;c quyền của Bạn theo Điều Khoản Sử Dụng n&agrave;y sẽ l&agrave; quyền theo nội dung được ghi nhận tại phi&ecirc;n bản mới nhất của Điều Khoản Sử Dụng được đăng tr&ecirc;n App tại thời điểm Bạn sử dụng. Bằng c&aacute;ch truy cập hoặc thực hiện bất cứ t&aacute;c vụ n&agrave;o tr&ecirc;n App sau khi ch&uacute;ng t&ocirc;i đ&atilde; c&ocirc;ng bố, bạn đồng &yacute; với c&aacute;c nội dung của Điều Khoản Sử Dụng như đ&atilde; sửa đổi tương ứng.</p>\r\n\r\n<p>2. Quyền sử dụng v&agrave; Truy cập App</p>\r\n\r\n<p>C&ocirc;ng Ty cấp cho Bạn quyền giới hạn để truy cập v&agrave; sử dụng App n&agrave;y v&igrave; mục đ&iacute;ch c&aacute; nh&acirc;n v&agrave; kh&ocirc;ng được tải xuống hoặc sửa đổi App, hoặc bất kỳ phần n&agrave;o trong đ&oacute;, trừ khi c&oacute; sự đồng &yacute; r&otilde; r&agrave;ng bằng văn bản từ C&ocirc;ng Ty. Quyền sử dụng n&agrave;y kh&ocirc;ng bao gồm bất kỳ việc b&aacute;n lại hoặc sử dụng với mục đ&iacute;ch thương mại App hoặc nội dung App; việc sưu tập, sử dụng bất kỳ danh s&aacute;ch sản phẩm, m&ocirc; tả hoặc gi&aacute; cả; bất kỳ việc sử dụng ph&aacute;i sinh n&agrave;o của App hoặc nội dung App; hoặc bất kỳ việc sử dụng khai th&aacute;c dữ liệu, r&ocirc;-bốt hoặc c&aacute;c c&ocirc;ng cụ thu thập v&agrave; tr&iacute;ch xuất dữ liệu tương tự. Kh&ocirc;ng được m&ocirc; phỏng, sao chụp, sao ch&eacute;p, b&aacute;n, b&aacute;n lại, truy cập hoặc khai th&aacute;c App hoặc bất kỳ phần n&agrave;o của App v&igrave; bất kỳ mục đ&iacute;ch thương mại n&agrave;o m&agrave; kh&ocirc;ng c&oacute; sự đồng &yacute; r&otilde; r&agrave;ng bằng văn bản từ C&ocirc;ng Ty. Bạn kh&ocirc;ng được l&agrave;m giả hoặc sử dụng c&aacute;c kỹ thuật l&agrave;m giả để đ&iacute;nh k&egrave;m bất kỳ nh&atilde;n hiệu, biểu tượng hoặc th&ocirc;ng tin độc quyền n&agrave;o kh&aacute;c (bao gồm h&igrave;nh ảnh, văn bản, bố cục trang hoặc biểu mẫu) của C&ocirc;ng Ty v&agrave; c&aacute;c c&ocirc;ng ty li&ecirc;n kết(bao gồm cả C&ocirc;ng Ty mẹ, &quot;C&ocirc;ng Ty Li&ecirc;n Kết&quot;) m&agrave; kh&ocirc;ng c&oacute; sự đồng &yacute; r&otilde; r&agrave;ng bằng văn bản từ C&ocirc;ng Ty. Bất kỳ việc sử dụng tr&aacute;i ph&eacute;p n&agrave;o đều chấm dứt quyền sử dụng do C&ocirc;ng Ty cấp.</p>\r\n\r\n<p>3. Kết nối v&agrave; Nội Dung của B&ecirc;n Thứ Ba</p>\r\n\r\n<p>3.1. Bạn kh&ocirc;ng được ph&eacute;p kết nối, l&agrave;m giả hoặc l&agrave;m nh&aacute;i bất cứ phần n&agrave;o của App m&agrave; kh&ocirc;ng được sự chấp thuận của C&ocirc;ng Ty.&nbsp;</p>\r\n\r\n<p>3.2. App c&oacute; thể bao gồm c&aacute;c đường dẫn đến hoặc thể hiện nội dung của b&ecirc;n thứ ba (&ldquo;Nội Dung Của B&ecirc;n Thứ Ba&rdquo;), bao gồm đường dẫn tới c&aacute;c App được vận h&agrave;nh bởi c&aacute;c tổ chức, c&aacute; nh&acirc;n kh&aacute;c (&ldquo;App Của B&ecirc;n Thứ Ba&rdquo;). Nội Dung Của B&ecirc;n Thứ Ba v&agrave; App Của B&ecirc;n Thứ Ba kh&ocirc;ng thuộc sự kiểm so&aacute;t của C&ocirc;ng Ty. C&ocirc;ng Ty kh&ocirc;ng x&aacute;c nhận, ph&ecirc; duyệt, đưa ra bất cứ cam kết, hoặc khẳng định n&agrave;o li&ecirc;n quan đến Nội Dung Của B&ecirc;n Thứ Ba, App Của B&ecirc;n Thứ Ba, sản phẩm, dịch vụ hoặc th&ocirc;ng tin c&oacute; li&ecirc;n quan đến App Của B&ecirc;n Thứ Ba, c&oacute; li&ecirc;n quan đến chủ sở hữu, người vận h&agrave;nh App Của B&ecirc;n Thứ Ba, hoặc h&agrave;nh vi của họ. Nếu Bạn sử dụng, dựa v&agrave;o Nội Dung Của B&ecirc;n Thứ Ba hoặc App Của B&ecirc;n Thứ Ba, bạn thực hiện việc n&agrave;y với rủi ro của ch&iacute;nh Bạn.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>4. Nh&atilde;n Hiệu, Nh&atilde;n Dịch Vụ, v&agrave; Quyền T&aacute;c Giả</p>\r\n\r\n<p>4.1. C&ocirc;ng Ty cổ phần thời trang Kowil Việt Nam sở hữu tất cả c&aacute;c nh&atilde;n hiệu, nh&atilde;n hiệu dịch vụ, t&ecirc;n thương mại, biểu tượng v&agrave; t&ecirc;n miền c&oacute; trong App hoặc c&oacute; quyền sử dụng hợp lệ từ b&ecirc;n cấp ph&eacute;p, nh&agrave; cung cấp v&agrave; b&ecirc;n thứ ba. Việc sửa đổi, sử dụng tr&aacute;i ph&eacute;p hoặc x&acirc;m phạm bản quyền của bất kỳ nh&atilde;n hiệu n&agrave;o tr&ecirc;n App cho bất cứ mục đ&iacute;ch n&agrave;o đều kh&ocirc;ng được ph&eacute;p.&nbsp;</p>\r\n\r\n<p>4.2. C&ocirc;ng Ty cổ phần thời trang Kowil Việt Nam sở hữu quyền t&aacute;c giả đối với tất cả c&aacute;c t&agrave;i liệu, th&ocirc;ng tin tr&ecirc;n App hoặc c&oacute; quyền hợp ph&aacute;p từ đơn vị cấp ph&eacute;p, nh&agrave; cung cấp v&agrave; b&ecirc;n thứ ba để sử dụng t&agrave;i liệu, th&ocirc;ng tin tr&ecirc;n App. C&aacute;c t&agrave;i liệu, th&ocirc;ng tin tại App n&agrave;y kh&ocirc;ng được ph&eacute;p sao ch&eacute;p, m&ocirc; phỏng, t&aacute;i bản, tải l&ecirc;n, đăng tải, truyền hoặc ph&acirc;n phối theo bất kỳ c&aacute;ch n&agrave;o cho d&ugrave; l&agrave; to&agrave;n bộ hoặc từng phần cho bất kỳ mục đ&iacute;ch n&agrave;o m&agrave; kh&ocirc;ng c&oacute; sự đồng &yacute; trước bằng văn bản của C&ocirc;ng Ty cổ phần thời trang Kowil Việt Nam, ngo&agrave;i việc sử dụng cho c&aacute; nh&acirc;n bạn hoặc việc sử dụng kh&ocirc;ng mang t&iacute;nh thương mại.</p>\r\n\r\n<p>5. Sản phẩm của ch&uacute;ng t&ocirc;i</p>\r\n\r\n<p>C&ocirc;ng Ty cố gắng để th&ocirc;ng tin m&ocirc; tả sản phẩm ch&iacute;nh x&aacute;c nhất c&oacute; thể. Trong phạm vi ph&aacute;p luật cho ph&eacute;p, C&ocirc;ng Ty kh&ocirc;ng đảm bảo rằng c&aacute;c m&ocirc; tả sản phẩm v&agrave; gi&aacute; cả hoặc nội dung kh&aacute;c tr&ecirc;n App n&agrave;y l&agrave; ho&agrave;n to&agrave;n ch&iacute;nh x&aacute;c, đầy đủ, được cập nhật hoặc kh&ocirc;ng c&oacute; lỗi. C&acirc;n nặng, ph&eacute;p đo v&agrave; c&aacute;c m&ocirc; tả kh&aacute;c được cung cấp tr&ecirc;n App l&agrave; những con số gần đ&uacute;ng v&agrave; chỉ được cung cấp v&igrave; mục đ&iacute;ch thuận tiện. C&ocirc;ng Ty sẽ thực hiện mọi nỗ lực hợp l&yacute; để hiển thị ch&iacute;nh x&aacute;c c&aacute;c đặc t&iacute;nh của sản phẩm, bao gồm c&aacute;c m&agrave;u c&oacute; sẵn. Tuy nhi&ecirc;n, m&agrave;u sắc m&agrave; bạn thấy tr&ecirc;n App c&oacute; thể kh&aacute;c với m&agrave;u sắc thực tế, t&ugrave;y thuộc v&agrave;o thiết bị di động, hệ thống m&aacute;y t&iacute;nh, m&agrave;n h&igrave;nh v&agrave;/hoặc c&aacute;c t&iacute;nh năng hiển thị kh&aacute;c của bạn.</p>\r\n\r\n<p>6.Điều Khoản B&aacute;n H&agrave;ng</p>\r\n\r\n<p>6.1 .Bằng việc tạo đơn đặt h&agrave;ng, Bạn đang đề nghị mua sản phẩm tr&ecirc;n App v&agrave; theo điều kiện điều khoản của App. Tất cả c&aacute;c đơn đặt h&agrave;ng đều phụ thuộc v&agrave;o t&iacute;nh sẵn s&agrave;ng v&agrave; x&aacute;c nhận về gi&aacute; của đơn h&agrave;ng. Thời gian gửi h&agrave;ng c&oacute; thể thay đổi t&ugrave;y thuộc v&agrave;o sự sẵn s&agrave;ng của sản phẩm. Bất cứ x&aacute;c nhận, cam kết n&agrave;o về thời gian vận chuyển h&agrave;ng h&oacute;a đều phụ thuộc v&agrave;o việc chậm trễ ph&aacute;t sinh từ dịch vụ chuyển ph&aacute;t hoặc do sự kiện bất khả kh&aacute;ng v&agrave; ch&uacute;ng t&ocirc;i kh&ocirc;ng thể chịu tr&aacute;ch nhiệm về những chậm trễ n&agrave;y.&nbsp;</p>\r\n\r\n<p>6.2. Để đặt h&agrave;ng, tr&ecirc;n App, bạn cần phải tr&ecirc;n 18 tuổi v&agrave; l&agrave; người mua h&agrave;ng (kh&ocirc;ng phải l&agrave; người mua h&agrave;ng để b&aacute;n lại). C&ocirc;ng Ty c&oacute; quyền từ chối bất cứ y&ecirc;u cầu n&agrave;o từ Bạn.</p>\r\n\r\n<p>7. Hợp Đồng</p>\r\n\r\n<p>Khi Bạn tạo đơn đặt h&agrave;ng, Bạn sẽ nhận được một th&ocirc;ng b&aacute;o qua email về tiếp nhận đơn đặt h&agrave;ng của Bạn. Email n&agrave;y chỉ nhằm x&aacute;c nhận việc đ&atilde; nhận được đơn h&agrave;ng của Bạn v&agrave; kh&ocirc;ng tạo th&agrave;nh sự chấp thuận đơn đặt h&agrave;ng của Bạn. Một hợp đồng giữa bạn v&agrave; C&ocirc;ng Ty cho việc mua c&aacute;c sản phẩm (&ldquo;Hợp Đồng&rdquo;) sẽ kh&ocirc;ng được tạo lập cho đến khi Bạn nhận được một email x&aacute;c nhận rằng sản phẩm của Bạn đ&atilde; được chuyển ph&aacute;t từ kho của ch&uacute;ng t&ocirc;i hoặc đ&atilde; sẵn s&agrave;ng để nhận (&ldquo;X&aacute;c Nhận Vận Chuyển&rdquo;). Vui l&ograve;ng lưu &yacute; rằng Hợp Đồng chỉ bao gồm những sản phẩm được ghi nhận tại X&aacute;c Nhận Vận Chuyển. Ch&uacute;ng t&ocirc;i sẽ kh&ocirc;ng c&oacute; nghĩa vụ cung cấp bất cứ sản phẩm n&agrave;o kh&aacute;c m&agrave; c&oacute; thể l&agrave; một phần trong đơn đặt h&agrave;ng của Bạn cho đến khi việc vận chuyển những sản phẩm đ&oacute; được x&aacute;c nhận tại một X&aacute;c Nhận Vận Chuyển ri&ecirc;ng.</p>\r\n\r\n<p>8. Gi&aacute; v&agrave; T&iacute;nh Sẵn S&agrave;ng</p>\r\n\r\n<p>8.1. Mặc d&ugrave; ch&uacute;ng t&ocirc;i nỗ lực để đảm bảo rằng tất cả c&aacute;c chi tiết, phần m&ocirc; tả, v&agrave; gi&aacute; cả thể hiện tr&ecirc;n App đều ch&iacute;nh kh&aacute;c, lỗi (bao gồm cả lỗi hệ thống) vẫn c&oacute; thể xảy ra. Nếu ch&uacute;ng t&ocirc;i ph&aacute;t hiện ra lỗi trong gi&aacute; hoặc khoản thanh to&aacute;n cho bất cứ h&agrave;ng h&oacute;a n&agrave;o m&agrave; Bạn đ&atilde; đặt, ch&uacute;ng t&ocirc;i sẽ th&ocirc;ng b&aacute;o cho Bạn ngay khi c&oacute; thể v&agrave; đề xuất cho bạn một phương &aacute;n x&aacute;c nhận lại đơn đặt h&agrave;ng của Bạn với gi&aacute; ch&iacute;nh x&aacute;c hoặc hủy đơn đặt h&agrave;ng đ&oacute;. Nếu đơn đặt h&agrave;ng bị hủy v&agrave; bạn đ&atilde; thực hiện việc thanh to&aacute;n cho h&agrave;ng h&oacute;a, bạn sẽ được ho&agrave;n trả lại to&agrave;n bộ số tiền đ&atilde; thanh to&aacute;n.&nbsp;</p>\r\n\r\n<p>8.2. Khi &aacute;p dụng, gi&aacute; được ghi nhận tr&ecirc;n App đ&atilde; bao gồm thuế gi&aacute; trị gia tăng (VAT). Chi ph&iacute; chuyển ph&aacute;t sẽ được t&iacute;nh theo mức được quy định tại Điều 21 dưới đ&acirc;y. Những chi ph&iacute; bổ sung n&agrave;y sẽ được thể hiện v&agrave; bao gồm cụ thể ở phần &ldquo;Gi&aacute; Tổng&rdquo;.&nbsp;</p>\r\n\r\n<p>8.3. Việc Sử Dụng c&oacute; thể bao gồm c&aacute;c lỗi do nhập th&ocirc;ng tin, lỗi hoặc sự kh&ocirc;ng ch&iacute;nh x&aacute;c kh&aacute;c v&agrave; c&oacute; thể kh&ocirc;ng ho&agrave;n thiện, kh&ocirc;ng được cập nhật. V&igrave; vậy, ch&uacute;ng t&ocirc;i c&oacute; quyền sửa đổi bất cứ lỗi, sự kh&ocirc;ng ch&iacute;nh x&aacute;c, hoặc thiếu s&oacute;t n&agrave;o v&agrave; thay đổi hoặc cập nhật th&ocirc;ng tin tại bất cứ thời điểm n&agrave;o m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. Ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện bất cứ y&ecirc;u cầu n&agrave;o từ bạn dựa v&agrave;o th&ocirc;ng tin về việc Sử Dụng m&agrave; c&oacute; thể chứa những lỗi, sự kh&ocirc;ng ch&iacute;nh x&aacute;c, bao gồm, nhưng kh&ocirc;ng giới hạn lỗi, sự kh&ocirc;ng ch&iacute;nh x&aacute;c, hoặc th&ocirc;ng tin hết hạn li&ecirc;n quan đến gi&aacute;, việc vận chuyển, điều khoản thanh to&aacute;n, hoặc ch&iacute;nh s&aacute;ch ho&agrave;n trả.</p>\r\n\r\n<p>9. Thanh to&aacute;n</p>\r\n\r\n<p>9.1. Tất cả c&aacute;c mức gi&aacute; tr&ecirc;n App đều l&agrave; gi&aacute; theo Việt Nam Đồng. Bạn c&oacute; thể thanh to&aacute;n cho đơn h&agrave;ng của m&igrave;nh (i) khi nhận h&agrave;ng h&oacute;a (bằng h&igrave;nh thức trả tiền mặt khi nhận h&agrave;ng (COD)); hoặc (ii) th&ocirc;ng qua h&igrave;nh thức thanh to&aacute;n trực tuyến (bằng thẻ t&iacute;n dụng v&agrave; thẻ ghi nợ quốc tế hoặc c&aacute;c phương thức kh&aacute;c c&oacute; sẵn tr&ecirc;n App).&nbsp;</p>\r\n\r\n<p>9.2. Hầu hết c&aacute;c thẻ t&iacute;n dụng v&agrave; thẻ ghi nợ uy t&iacute;n như Visa, Mastercard, JCB v&agrave; Discover đều được chấp nhận cho việc thanh to&aacute;n. Khi Bạn thanh to&aacute;n trực tuyến, Bạn sẽ được điều hướng đến một App kh&aacute;c do nh&agrave; cung cấp dịch vụ cổng thanh to&aacute;n độc lập sở hữu v&agrave; điều h&agrave;nh, App n&agrave;y sẽ thu thập v&agrave; xử l&yacute; th&ocirc;ng tin t&agrave;i ch&iacute;nh của Bạn tr&ecirc;n cơ sở c&aacute;c điều khoản v&agrave; ch&iacute;nh s&aacute;ch ri&ecirc;ng của App đ&oacute;.&nbsp;</p>\r\n\r\n<p>9.3. Nếu Bạn kh&ocirc;ng thực hiện bất kỳ khoản thanh to&aacute;n n&agrave;o theo phương thức thanh to&aacute;n đ&atilde; chọn hoặc việc thanh to&aacute;n bị hủy bỏ v&igrave; bất kỳ l&yacute; do g&igrave;, C&ocirc;ng Ty sẽ hủy đơn đặt h&agrave;ng v&agrave; tạm ngừng giao h&agrave;ng cho đến khi bạn đ&atilde; thanh to&aacute;n đầy đủ.</p>\r\n\r\n<p>10. H&oacute;a Đơn</p>\r\n\r\n<p>C&ocirc;ng ty sẽ ph&aacute;t h&agrave;nh v&agrave; đưa bi&ecirc;n lai v&agrave;o g&oacute;i h&agrave;ng c&ugrave;ng với c&aacute;c mặt h&agrave;ng đ&atilde; mua. H&oacute;a đơn thuế gi&aacute; trị gia tăng (VAT) sẽ được ph&aacute;t h&agrave;nh v&agrave; gửi đến địa chỉ email m&agrave; Bạn đ&atilde; đăng k&yacute; với ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>11. M&atilde; Giảm Gi&aacute;</p>\r\n\r\n<p>11.1. Tại bất kỳ thời điểm n&agrave;o, c&aacute;c phiếu khuyến mại hoặc giảm gi&aacute; c&oacute; thể được cung cấp để sử dụng tr&ecirc;n App. Bằng c&aacute;ch sử dụng phiếu khuyến mại hoặc phiếu giảm gi&aacute;, Bạn hiểu v&agrave; đồng &yacute; việc &aacute;p dụng c&aacute;c điều khoản v&agrave; điều kiện của c&aacute;c chương tr&igrave;nh đ&oacute;.&nbsp;</p>\r\n\r\n<p>11.2. M&atilde; khuyến mại phải được nhập trong qu&aacute; tr&igrave;nh thanh to&aacute;n th&igrave; mới c&oacute; hiệu lực. Mức chiết khấu v&agrave; ngưỡng chiết khấu đ&atilde; bao gồm thuế, nhưng kh&ocirc;ng bao gồm ph&iacute; vận chuyển v&agrave; ph&iacute; g&oacute;i qu&agrave; (nếu c&oacute;). Việc &aacute;p dụng chương tr&igrave;nh giảm gi&aacute; kh&ocirc;ng được thực hiện đồng thời với bất kỳ ưu đ&atilde;i n&agrave;o kh&aacute;c.</p>\r\n\r\n<p>12. Truyền th&ocirc;ng v&agrave; nội dung kh&aacute;c</p>\r\n\r\n<p>12.1. Kh&aacute;ch H&agrave;ng truy cập c&oacute; thể gửi đề xuất, &yacute; tưởng, nhận x&eacute;t, c&acirc;u hỏi hoặc th&ocirc;ng tin kh&aacute;c cho Trung t&acirc;m Kh&aacute;ch h&agrave;ng của ch&uacute;ng t&ocirc;i v&agrave;/hoặc cho App miễn l&agrave; nội dung đ&oacute; kh&ocirc;ng bất hợp ph&aacute;p, tục tĩu, đe dọa, phỉ b&aacute;ng, x&acirc;m phạm quyền ri&ecirc;ng tư, x&acirc;m phạm quyền sở hữu tr&iacute; tuệ, g&acirc;y tổn hại cho c&aacute;c b&ecirc;n thứ ba, phản cảm v&agrave; kh&ocirc;ng bao gồm hoặc chứa phần mềm vi-r&uacute;t, vận động ch&iacute;nh trị, l&ocirc;i k&eacute;o thương mại, gửi thư theo chuỗi, gửi thư gửi h&agrave;ng loạt hoặc bất kỳ h&igrave;nh thức &quot;thư r&aacute;c&quot; n&agrave;o. Bạn kh&ocirc;ng được sử dụng một địa chỉ e-mail giả, mạo danh bất kỳ c&aacute; nh&acirc;n hoặc tổ chức n&agrave;o, hoặc xuy&ecirc;n tạc về nguồn gốc của bất kỳ nội dung n&agrave;o.&nbsp;</p>\r\n\r\n<p>12.2. Khi Bạn gửi, tải, hoặc đăng l&ecirc;n hoặc th&ocirc;ng qua App ,tu&acirc;n theo Ch&iacute;nh s&aacute;ch bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n của ch&uacute;ng t&ocirc;i, dưới bất kỳ h&igrave;nh thức n&agrave;o, th&ocirc;ng tin, t&agrave;i liệu, đề xuất, &yacute; tưởng, kh&aacute;i niệm, b&iacute; quyết, kỹ thuật, c&acirc;u hỏi, nhận x&eacute;t, hoặc th&ocirc;ng tin kh&aacute;c (&quot;Th&ocirc;ng Tin Trao Đổi Kh&aacute;ch H&agrave;ng&quot;), những th&ocirc;ng tin n&agrave;y sẽ được xem l&agrave; kh&ocirc;ng bảo mật v&agrave; kh&ocirc;ng độc quyền. Bạn tự động cấp cho C&ocirc;ng Ty v&agrave; c&aacute;c C&ocirc;ng Ty Li&ecirc;n Kết quyền kh&ocirc;ng độc quyền, miễn ph&iacute; bản quyền, kh&ocirc;ng giới hạn thời gian, kh&ocirc;ng hủy ngang v&agrave; được cấp ph&eacute;p đầy đủ để sử dụng, sao ch&eacute;p, sửa đổi, điều chỉnh, xuất bản, dịch, tạo c&aacute;c t&aacute;c phẩm ph&aacute;i sinh từ, ph&acirc;n phối, v&agrave; hiển thị nội dung đ&oacute; trong bất kỳ phương tiện truyền th&ocirc;ng n&agrave;o tr&ecirc;n to&agrave;n cầu. C&ocirc;ng Ty c&oacute; thể sử dụng bất kỳ hoặc tất cả Th&ocirc;ng Tin Trao Đổi Kh&aacute;ch H&agrave;ng cho bất kỳ mục đ&iacute;ch n&agrave;o, bao gồm nhưng kh&ocirc;ng giới hạn, sao ch&eacute;p, truyền tải, tiết lộ, xuất bản, ph&aacute;t s&oacute;ng, ph&aacute;t triển, x&oacute;a v&agrave; sản xuất v&agrave;/hoặc tiếp thị theo bất kỳ c&aacute;ch n&agrave;o cho bất kỳ hoặc tất cả c&aacute;c mục đ&iacute;ch thương mại hoặc phi thương mại.&nbsp;</p>\r\n\r\n<p>12.3. Bạn cấp cho C&ocirc;ng Ty v&agrave; c&aacute;c C&ocirc;ng Ty Li&ecirc;n Kết v&agrave; c&aacute;c b&ecirc;n cấp ph&eacute;p phụ quyền sử dụng t&ecirc;n m&agrave; Bạn gửi li&ecirc;n quan đến nội dung đ&oacute;, nếu họ chọn như vậy. Bạn tuy&ecirc;n bố v&agrave; bảo đảm rằng Bạn sở hữu hoặc kiểm so&aacute;t tất cả c&aacute;c quyền đối với nội dung m&agrave; Bạn gửi; rằng nội dung đ&oacute; l&agrave; ch&iacute;nh x&aacute;c; rằng việc sử dụng nội dung m&agrave; Bạn cung cấp kh&ocirc;ng vi phạm c&aacute;c Điều Khoản Sử Dụng n&agrave;y v&agrave; sẽ kh&ocirc;ng g&acirc;y tổn thất cho bất kỳ c&aacute; nh&acirc;n hoặc tổ chức n&agrave;o; rằng nội dung bạn cung cấp kh&ocirc;ng v&agrave; sẽ kh&ocirc;ng x&acirc;m phạm quyền sở hữu tr&iacute; tuệ, c&ocirc;ng bố th&ocirc;ng tin, quyền ri&ecirc;ng tư hoặc c&aacute;c quyền kh&aacute;c của bất kỳ b&ecirc;n n&agrave;o v&agrave; nội dung đ&oacute; sẽ v&agrave; sẽ kh&ocirc;ng c&oacute; t&iacute;nh chất phỉ b&aacute;ng hoặc b&ocirc;i nhọ; v&agrave; rằng Bạn sẽ miễn trừ tr&aacute;ch nhiệm cho C&ocirc;ng Ty hoặc c&aacute;c C&ocirc;ng Ty Li&ecirc;n Kết của C&ocirc;ng Ty về mọi khiếu nại ph&aacute;t sinh từ nội dung m&agrave; Bạn cung cấp. C&ocirc;ng Ty c&oacute; quyền nhưng kh&ocirc;ng c&oacute; nghĩa vụ gi&aacute;m s&aacute;t v&agrave; chỉnh sửa hoặc x&oacute;a bất kỳ hoạt động hoặc nội dung n&agrave;o kh&aacute;c. C&ocirc;ng Ty kh&ocirc;ng chịu tr&aacute;ch nhiệm v&agrave; kh&ocirc;ng c&oacute; nghĩa vụ n&agrave;o đối với bất kỳ nội dung hoặc Th&ocirc;ng Tin Trao Đổi Kh&aacute;ch H&agrave;ng n&agrave;o được Bạn hoặc bất kỳ b&ecirc;n thứ ba n&agrave;o chia sẻ th&ocirc;ng qua App cho d&ugrave; c&oacute; hay kh&ocirc;ng ph&aacute;t sinh theo luật bản quyền, luật chống phỉ b&aacute;ng, luật về quyền ri&ecirc;ng tư, luật chống sự tục tĩu hoặc c&aacute;c luật kh&aacute;c. Tuy nhi&ecirc;n, ch&uacute;ng t&ocirc;i c&oacute; quyền x&oacute;a bất kỳ hoặc tất cả Th&ocirc;ng Tin Trao Đổi Kh&aacute;ch H&agrave;ng bao gồm bất kỳ t&agrave;i liệu n&agrave;o m&agrave; ch&uacute;ng t&ocirc;i cho l&agrave; kh&ocirc;ng ph&ugrave; hợp hoặc kh&ocirc;ng thể chấp nhận. C&ocirc;ng Ty sẽ kh&ocirc;ng c&oacute; nghĩa vụ sử dụng, trả lại, xem x&eacute;t hoặc phản hồi bất kỳ Th&ocirc;ng Tin Trao Đổi Kh&aacute;ch H&agrave;ng.</p>\r\n\r\n<p>13. Giới hạn tr&aacute;ch nhiệm</p>\r\n\r\n<p>13.1. APP N&Agrave;Y V&Agrave; TẤT CẢ TH&Ocirc;NG TIN LI&Ecirc;N QUAN TRONG Đ&Acirc;Y ĐƯỢC C&Ocirc;NG TY CUNG CẤP TR&Ecirc;N CƠ SỞ &quot;NGUY&Ecirc;N TRẠNG&quot; V&Agrave; &quot;C&Oacute; SẴN&quot;. C&Ocirc;NG TY, C&Ocirc;NG TY MẸ, C&Aacute;C C&Ocirc;NG TY CON, C&Ocirc;NG TY LI&Ecirc;N KẾT HOẶC ĐỐI T&Aacute;C, HOẶC GI&Aacute;M ĐỐC, C&Aacute;N BỘ, CỔ Đ&Ocirc;NG, NH&Acirc;N VI&Ecirc;N V&Agrave; C&Aacute;C ĐẠI L&Yacute; CỦA CH&Uacute;NG T&Ocirc;I KH&Ocirc;NG ĐƯA RA BẤT KỲ TUY&Ecirc;N BỐ HOẶC BẢO ĐẢM N&Agrave;O, D&Ugrave; R&Otilde; R&Agrave;NG HAY NGỤ &Yacute;, VỀ NỘI DUNG, T&Agrave;I LIỆU HOẶC SẢN PHẨM ĐƯỢC TR&Igrave;NH B&Agrave;Y TR&Ecirc;N APP. BẠN ĐỒNG &Yacute; R&Otilde; R&Agrave;NG RẰNG CHỈ RI&Ecirc;NG BẠN SẼ TỰ CHỊU RỦI RO KHI SỬ DỤNG APP N&Agrave;Y TRONG PHẠM VI CHO PH&Eacute;P THEO LUẬT &Aacute;P DỤNG. C&Ocirc;NG TY TỪ CHỐI TẤT CẢ C&Aacute;C BẢO ĐẢM, CHO D&Ugrave; L&Agrave; GHI NHẬN R&Otilde; R&Agrave;NG HOẶC NGỤ &Yacute;, BAO GỒM, NHƯNG KH&Ocirc;NG GIỚI HẠN, C&Aacute;C BẢO ĐẢM NGỤ &Yacute; VỀ T&Iacute;NH THƯƠNG MẠI V&Agrave; SỰ TƯƠNG TH&Iacute;CH CHO MỤC Đ&Iacute;CH CỤ THỂ. C&Ocirc;NG TY KH&Ocirc;NG BẢO ĐẢM RẰNG APP, C&Aacute;C M&Aacute;Y CHỦ HOẶC E-MAIL ĐƯỢC GỬI TỪ C&Ocirc;NG TY KH&Ocirc;NG C&Oacute; VIRUS HOẶC C&Aacute;C TH&Agrave;NH PHẦN C&Oacute; HẠI HOẶC LỖI KỸ THUẬT KH&Aacute;C. C&Ocirc;NG TY, C&Ocirc;NG TY MẸ, C&Aacute;C C&Ocirc;NG TY CON, C&Ocirc;NG TY LI&Ecirc;N KẾT HOẶC ĐỐI T&Aacute;C, HOẶC GI&Aacute;M ĐỐC, C&Aacute;N BỘ, CỔ Đ&Ocirc;NG, NH&Acirc;N VI&Ecirc;N V&Agrave; C&Aacute;C ĐẠI L&Yacute; CỦA CH&Uacute;NG T&Ocirc;I SẼ KH&Ocirc;NG CHỊU TR&Aacute;CH NHIỆM PH&Aacute;P L&Yacute; ĐỐI VỚI BẤT KỲ THIỆT HẠI N&Agrave;O BAO GỒM, NHƯNG KH&Ocirc;NG GIỚI HẠN, C&Aacute;C TỔN THẤT TRỰC TIẾP, GI&Aacute;N TIẾP, NGẪU NHI&Ecirc;N, C&Aacute;C THIỆT HẠI MANG T&Iacute;NH HỆ QUẢ HOẶC BẤT KỲ TỔN THẤT HOẶC TR&Aacute;CH NHIỆM N&Agrave;O KH&Aacute;C PH&Aacute;T SINH TỪ (A) VIỆC SỬ DỤNG HOẶC KH&Ocirc;NG THỂ SỬDỤNG APP; (B) BẤT KỲ QUYẾT ĐỊNH, H&Agrave;NH ĐỘNG HOẶC KH&Ocirc;NG H&Agrave;NH ĐỘNG N&Agrave;O CỦA BẤT KỲ B&Ecirc;N N&Agrave;O LI&Ecirc;N QUAN ĐẾN VIỆC PHỤ THUỘC V&Agrave;O NỘI DUNG CỦA APP; (C) GI&Aacute;N ĐOẠN HOẠT ĐỘNG KINH DOANH; (D) CHẬM TRỄ/GI&Aacute;N ĐOẠN TRONG L&Uacute;C TRUY CẬP APP; (E) KH&Ocirc;NG PH&Acirc;N PHỐI DỮ LIỆU, PH&Acirc;N PHỐI SAI, HỦY HOẠI, PH&Aacute; HỦY HOẶC SỬA ĐỔI KH&Aacute;C; (F) TỔN THẤT HOẶC THIỆT HẠI DƯỚI BẤT KỲ H&Igrave;NH THỨC N&Agrave;O PH&Aacute;T SINH DO TRUY CẬP V&Agrave;O C&Aacute;C LI&Ecirc;N KẾT CỦA B&Ecirc;N THỨ BA TR&Ecirc;N APP; (G) VI-R&Uacute;T M&Aacute;Y T&Iacute;NH, SẬP HOẶC LỖI HỆTHỐNG LI&Ecirc;N QUAN ĐẾN VIỆC SỬ DỤNG APP; HOẶC (H) BẤT KỲ SỰ TR&Igrave; HO&Atilde;N, KH&Ocirc;NG CH&Iacute;NH X&Aacute;C, LỖI HOẶC BỎ S&Oacute;T TRONG NỘI DUNG TR&Ecirc;N APP.&nbsp;</p>\r\n\r\n<p>13.2. Bạn đồng &yacute; rằng biện ph&aacute;p khắc phục duy nhất của bạn, nếu c&oacute;, l&agrave; từ nh&agrave; sản xuất hoặc nh&agrave; cung cấp sản phẩm, ph&ugrave; hợp với bảo h&agrave;nh của nh&agrave; sản xuất hoặc nh&agrave; cung cấp đ&oacute;, hoặc để y&ecirc;u cầu đổi trả hoặc ho&agrave;n tiền cho c&aacute;c sản phẩm đ&oacute; theo Ch&iacute;nh s&aacute;ch Đổi trả của ch&uacute;ng t&ocirc;i.&nbsp;</p>\r\n\r\n<p>13.3. Bằng c&aacute;ch truy cập App của ch&uacute;ng t&ocirc;i, Bạn chấp nhận mọi rủi ro li&ecirc;n quan đến việc sử dụng App, bao gồm nhưng kh&ocirc;ng giới hạn rủi ro m&aacute;y t&iacute;nh, phần mềm hoặc dữ liệu của Bạn c&oacute; thể bị hư hỏng do bất kỳ vi r&uacute;t n&agrave;o được truyền qua App n&agrave;y hoặc bởi bất kỳ Nội dung của b&ecirc;n thứ ba hoặc App của b&ecirc;n thứ ba. Trong phạm vi ph&aacute;p luật cho ph&eacute;p, tất cả c&aacute;c bảo đảm, điều kiện v&agrave; y&ecirc;u cầu (d&ugrave; r&otilde; r&agrave;ng hay ngụ &yacute;) ph&aacute;t sinh từ hoặc theo bất kỳ c&aacute;ch n&agrave;o được kết nối với App n&agrave;y đều bị loại trừ.</p>\r\n\r\n<p>14. Miễn trừ tr&aacute;ch nhiệm</p>\r\n\r\n<p>Bạn đồng &yacute; miễn trừ tr&aacute;ch nhiệm cho C&ocirc;ng Ty v&agrave; c&aacute;c C&ocirc;ng Ty Li&ecirc;n Kết đối với mọi thiệt hại, tr&aacute;ch nhiệm ph&aacute;p l&yacute;, chi ph&iacute;, ph&iacute; v&agrave; ph&iacute; tổn, bao gồm ph&iacute; luật sư hợp l&yacute;, m&agrave; C&ocirc;ng Ty c&oacute; thể phải chịu do Bạn vi phạm bất kỳ Điều Khoản Sử Dụng n&agrave;o hoặc bất kỳ khiếu nại n&agrave;o li&ecirc;n quan đến th&ocirc;ng tin do Bạn cung cấp hoặc c&aacute;c h&agrave;nh động m&agrave; Bạn thực hiện. Ch&uacute;ng t&ocirc;i sẽ th&ocirc;ng b&aacute;o kịp thời cho Bạn về khiếu nại, khiếu kiện hoặc kiện tụng n&agrave;y nếu c&oacute; ph&aacute;t sinh.</p>\r\n\r\n<p>15. Bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n</p>\r\n\r\n<p>15.1. Vui l&ograve;ng xem lại Ch&iacute;nh s&aacute;ch bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n của ch&uacute;ng t&ocirc;i, lưu &yacute; rằng ch&iacute;nh s&aacute;ch cũng chi phối truy cập của Bạn v&agrave;o App, để hiểu về c&aacute;c quy định của ch&uacute;ng t&ocirc;i.&nbsp;</p>\r\n\r\n<p>15.2. Th&ocirc;ng Tin Trao Đổi Kh&aacute;ch H&agrave;ng như được định nghĩa trong điều 12 đang v&agrave; sẽ được xem l&agrave; kh&ocirc;ng bảo mật v&agrave; kh&ocirc;ng độc quyền.</p>\r\n\r\n<p>16. Bảo mật</p>\r\n\r\n<p>Vui l&ograve;ng xem lại biện ph&aacute;p bảo mật được n&ecirc;u trong Ch&iacute;nh s&aacute;ch bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>17. Tạm Ngưng</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; quyền ngừng, gi&aacute;n đoạn hoặc thu hồi quyền truy cập của Bạn v&agrave;o App v&igrave; bất kỳ l&yacute; do g&igrave;, bao gồm nhưng kh&ocirc;ng giới hạn, để n&acirc;ng cấp v&agrave; bảo tr&igrave; App.</p>\r\n\r\n<p>18. Luật điều chỉnh, quyền t&agrave;i ph&aacute;n C&aacute;c Điều Khoản</p>\r\n\r\n<p>Sử Dụng n&agrave;y sẽ được điều chỉnh v&agrave; hiểu theo luật ph&aacute;p Việt Nam v&agrave; kh&ocirc;ng bị ảnh hưởng bởi c&aacute;c quy định về xung đột ph&aacute;p luật. Trong trường hợp c&oacute; bất kỳ tranh chấp n&agrave;o, Bạn v&agrave; C&ocirc;ng Ty đồng &yacute; tranh chấp đ&oacute; được xử l&yacute; th&ocirc;ng qua trọng t&agrave;i tại Trung t&acirc;m Trọng t&agrave;i Quốc tế Việt Nam thuộc Ph&ograve;ng Thương mại v&agrave; C&ocirc;ng nghiệp Việt Nam (&ldquo;VIAC&rdquo;) để giải quyết bằng phương thức trọng t&agrave;i theo Quy tắc trọng t&agrave;i của VIAC. Hội đồng trọng t&agrave;i sẽ bao gồm ba (3) trọng t&agrave;i vi&ecirc;n được chỉ định theo Quy tắc trọng t&agrave;i của VIAC. Địa điểm giải quyết trọng t&agrave;i sẽ l&agrave; tại th&agrave;nh phố Hồ Ch&iacute; Minh, Việt Nam. Ng&ocirc;n ngữ trọng t&agrave;i sẽ l&agrave; tiếng Việt. C&aacute;c b&ecirc;n từ chối r&otilde; r&agrave;ng việc &aacute;p dụng quy định tại C&ocirc;ng ước Li&ecirc;n Hợp Quốc về Hợp đồng Mua b&aacute;n H&agrave;ng h&oacute;a Quốc tế trong việc giải quyết c&aacute;c vấn đề li&ecirc;n quan.</p>\r\n\r\n<p>19. Sự kiện bất khả kh&aacute;ng</p>\r\n\r\n<p>C&ocirc;ng Ty sẽ kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm đối với Bạn về bất kỳ sự chậm trễ hoặc kh&ocirc;ng thực hiện nghĩa vụ n&agrave;o của C&ocirc;ng Ty do sự kiện bất khả kh&aacute;ng hoặc những l&yacute; do kh&aacute;c nằm ngo&agrave;i tầm kiểm so&aacute;t của C&ocirc;ng Ty, bao gồm nhưng kh&ocirc;ng giới hạn, thảm họa tự nhi&ecirc;n, chiến tranh hoặc khủng bố, dịch bệnh, đại dịch, thi&ecirc;n tai, c&aacute;c khoản ph&iacute; theo luật ph&aacute;p, quy định hoặc ch&iacute;nh s&aacute;ch của ch&iacute;nh phủ v&agrave; t&igrave;nh trạng thiếu hụt nguồn cung h&agrave;ng h&oacute;a v&agrave; dịch vụ.</p>\r\n\r\n<p>20. Ch&iacute;nh s&aacute;ch đổi trả</p>\r\n\r\n<p>Vui l&ograve;ng tham khảo Ch&iacute;nh s&aacute;ch đổi trả được ch&uacute;ng t&ocirc;i cập nhật tại App t&ugrave;y từng thời điểm.</p>\r\n\r\n<p>21. Giao h&agrave;ng</p>\r\n\r\n<p>21.1. Ch&uacute;ng t&ocirc;i sẽ cố gắng ho&agrave;n th&agrave;nh đơn đặt h&agrave;ng của Bạn đối với c&aacute;c mặt h&agrave;ng được liệt k&ecirc; tại X&aacute;c nhận đặt h&agrave;ng trong 01 đến 07 ng&agrave;y l&agrave;m việc. Vui l&ograve;ng lưu &yacute; rằng bất kỳ việc dự kiến giao h&agrave;ng n&agrave;o đều chỉ l&agrave; ước t&iacute;nh. Trong trường hợp đặc biệt, ch&uacute;ng t&ocirc;i sẽ th&ocirc;ng b&aacute;o cho kh&aacute;ch h&agrave;ng th&ocirc;ng qua Th&ocirc;ng b&aacute;o đặt tr&ecirc;n đầu trang chủ của ch&uacute;ng t&ocirc;i. Trong trường hợp đ&oacute;, th&ocirc;ng tin đ&oacute; sẽ thay thế c&aacute;c nội dung tr&ecirc;n.&nbsp;</p>\r\n\r\n<p>21.2. Ph&iacute; giao h&agrave;ng ti&ecirc;u chuẩn l&agrave; 30.000 VND (bao gồm VAT) sẽ được &aacute;p dụng cho mỗi đơn h&agrave;ng.&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>21.3. Nếu việc cung cấp c&aacute;c h&agrave;ng h&oacute;a của ch&uacute;ng t&ocirc;i bị tr&igrave; ho&atilde;n do một sự kiện ngo&agrave;i tầm kiểm so&aacute;t, ch&uacute;ng t&ocirc;i sẽ li&ecirc;n lạc, v&agrave; th&ocirc;ng b&aacute;o cho Bạn sớm nhất c&oacute; thể v&agrave; ch&uacute;ng t&ocirc;i sẽ thực hiện c&aacute;c bước để giảm thiểu ảnh hưởng của sự chậm trễ. Xin lưu &yacute; rằng ch&uacute;ng t&ocirc;i sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm về sự chậm trễ do sự kiện nằm ngo&agrave;i tầm kiểm so&aacute;t đ&oacute; g&acirc;y ra, nhưng nếu c&oacute; nguy cơ chậm trễ đ&aacute;ng kể, Bạn c&oacute; thể li&ecirc;n hệ với ch&uacute;ng t&ocirc;i để chấm dứt Hợp đồng v&agrave; nhận lại tiền cho (c&aacute;c) h&agrave;ng h&oacute;a Bạn đ&atilde; thanh to&aacute;n nhưng chưa nhận được.&nbsp;</p>\r\n\r\n<p>21.4. Về Giao h&agrave;ng, nh&agrave; cung cấp dịch vụ giao h&agrave;ng của ch&uacute;ng t&ocirc;i sẽ cố gắng giao (c&aacute;c) sản phẩm Bạn đ&atilde; đặt h&agrave;ng (&quot;Nỗ Lực Giao H&agrave;ng&quot;) trong 03 lần. Sau 03 lần Nỗ Lực Giao H&agrave;ng, nếu (c&aacute;c) sản phẩm kh&ocirc;ng thể giao cho Bạn v&igrave; l&yacute; do kh&ocirc;ng li&ecirc;n quan đến ch&uacute;ng t&ocirc;i, ch&uacute;ng t&ocirc;i sẽ cho rằng Bạn muốn hủy đơn đặt h&agrave;ng v&agrave; đơn h&agrave;ng đ&oacute; sẽ bị chấm dứt. Theo đ&oacute;, ch&uacute;ng t&ocirc;i sẽ trả lại cho Bạn tất cả c&aacute;c khoản thanh to&aacute;n nhận được từ Bạn, bao gồm cả ph&iacute; giao h&agrave;ng (nếu c&oacute;), m&agrave; kh&ocirc;ng c&oacute; bất kỳ sự chậm trễ qu&aacute; mức n&agrave;o trong v&ograve;ng 30 ng&agrave;y kể từ ng&agrave;y đơn đặt h&agrave;ng bị hủy.</p>\r\n\r\n<p>22. Nghĩa vụ của C&ocirc;ng Ty (b&ecirc;n b&aacute;n)</p>\r\n\r\n<p>B&ecirc;n cạnh c&aacute;c nghĩa vụ được quy định cụ thể tại Điều Khoản Sử Dụng n&agrave;y, C&ocirc;ng Ty c&oacute; nghĩa vụ giao h&agrave;ng, chuyển h&agrave;ng h&oacute;a cho Kh&aacute;ch H&agrave;ng v&agrave; nhận thanh to&aacute;n.</p>\r\n\r\n<p>23. Nghĩa vụ của kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>23.1. B&ecirc;n cạnh c&aacute;c nghĩa vụ được quy định cụ thể tại Điều Khoản Sử Dụng N&agrave;y, Bạn kh&ocirc;ng được:&nbsp;</p>\r\n\r\n<p>(i) sử dụng App cho bất kỳ h&agrave;nh vi vi phạm ph&aacute;p luật n&agrave;o;&nbsp;</p>\r\n\r\n<p>(ii) sử dụng App để l&agrave;m hại, lạm dụng, quấy rối, đeo b&aacute;m, đe dọa hoặc x&uacute;c phạm người kh&aacute;c;&nbsp;</p>\r\n\r\n<p>(iii) thực hiện bất cứ h&agrave;nh động n&agrave;o m&agrave; c&oacute; thể g&acirc;y n&ecirc;n sự bất tiện, bất lợi, g&acirc;y tổn hại đến người d&ugrave;ng, b&ecirc;n thứ ba hoặc C&ocirc;ng Ty;&nbsp;</p>\r\n\r\n<p>(iv) b&aacute;n lại, ph&acirc;n phối lại, hoặc thực hiện c&aacute;c h&agrave;nh vi kh&aacute;c nhằm mua sản phẩm từ App để đạt được lợi nhuận;&nbsp;</p>\r\n\r\n<p>(v) thực hiện việc đăng k&yacute; hoặc nắm giữ nhiều t&agrave;i khoản được đăng k&yacute; tr&ecirc;n App một c&aacute;ch gian lận;&nbsp;</p>\r\n\r\n<p>(vi) can thiệp, l&agrave;m gi&aacute;n đoạn hoặc g&acirc;y cản trở cho hoạt động của App, hoặc của C&ocirc;ng Ty;&nbsp;</p>\r\n\r\n<p>(vii) tải l&ecirc;n, đăng, truyền tải hoặc cung cấp bất kỳ t&agrave;i liệu n&agrave;o m&agrave;:&nbsp;</p>\r\n\r\n<ol>\r\n	<li>kh&ocirc;ng phải l&agrave; t&aacute;c phẩm gốc của Bạn, hoặc c&oacute; thể vi phạm quyền sở hữu tr&iacute; tuệ hoặc c&aacute;c quyền của người kh&aacute;c;</li>\r\n	<li>l&agrave;, hoặc c&oacute; thể xem x&eacute;t một c&aacute;ch hợp l&yacute; l&agrave; n&oacute;i xấu, đồi trụy, x&uacute;c phạm, đe dọa, lạm dụng, khi&ecirc;u d&acirc;m, th&ocirc; tục, tục tĩu, khiếm nh&atilde; hoặc bất hợp ph&aacute;p, bao gồm t&agrave;i liệu phỉ b&aacute;ng chủng tộc hoặc t&ocirc;n gi&aacute;o, k&iacute;ch động bạo lực hoặc th&ugrave; hận hoặc c&oacute; khả năng g&acirc;y phương hại, x&uacute;c phạm hoặc l&agrave;m nhục người kh&aacute;c dựa tr&ecirc;n chủng tộc, t&ocirc;n gi&aacute;o, d&acirc;n tộc, giới t&iacute;nh, tuổi t&aacute;c, khuynh hướng t&igrave;nh dục hoặc bất kỳ khiếm khuyết n&agrave;o về thể chất hoặc tinh thần;</li>\r\n	<li>bao gồm h&igrave;nh ảnh hoặc th&ocirc;ng tin c&aacute; nh&acirc;n của người kh&aacute;c trừ khi Bạn được sự đồng &yacute; của họ;</li>\r\n	<li>Bạn biết hoặc nghi ngờ, hoặc một c&aacute;ch hợp l&yacute; Bạn n&ecirc;n biết hoặc nghi ngờ l&agrave; sai sự thật, g&acirc;y hiểu lầm hoặc lừa đảo;</li>\r\n	<li>chứa một lượng lớn nội dung kh&ocirc;ng được nhắm mục ti&ecirc;u, kh&ocirc;ng mong muốn hoặc lặp lại; hoặc</li>\r\n	<li>chứa lời khuy&ecirc;n về t&agrave;i ch&iacute;nh, ph&aacute;p l&yacute;, y tế hoặc chuy&ecirc;n m&ocirc;n kh&aacute;c.</li>\r\n</ol>\r\n\r\n<p>Nếu Bạn tin rằng người d&ugrave;ng đ&atilde; vi phạm bất kỳ điều kiện n&agrave;o ở tr&ecirc;n, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i.&nbsp;</p>\r\n\r\n<p>23.2. C&ocirc;ng Ty c&oacute; quyền chặn, đ&igrave;nh chỉ, tạm ngừng, bất kỳ người d&ugrave;ng, t&agrave;i khoản đăng k&yacute; n&agrave;o tr&ecirc;n App v&agrave; sửa đổi hoặc loại bỏ bất kỳ t&agrave;i liệu n&agrave;o do bất kỳ người d&ugrave;ng n&agrave;o tải l&ecirc;n, đăng tải, truyền tải hoặc cung cấp tr&ecirc;n App m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o; đơn phương x&aacute;c định v&agrave; giới hạn, từ chối v&agrave; / hoặc kh&ocirc;ng đồng &yacute; việc trả h&agrave;ng từ kh&aacute;ch h&agrave;ng bất kỳ l&uacute;c n&agrave;o do lịch sử trả h&agrave;ng bất thường hoặc qu&aacute; nhiều. Bằng c&aacute;ch tải l&ecirc;n, truyền, đăng hoặc cung cấp bất kỳ t&agrave;i liệu n&agrave;o qua App, Bạn cấp cho C&ocirc;ng Ty một sự đồng &yacute; vĩnh viễn, kh&ocirc;ng độc quyền tr&ecirc;n to&agrave;n thế giới, miễn ph&iacute; bản quyền, để sử dụng, t&aacute;i sản xuất, chỉnh sửa v&agrave; khai th&aacute;c t&agrave;i liệu dưới bất kỳ h&igrave;nh thức n&agrave;o v&agrave; cho bất kỳ mục đ&iacute;ch n&agrave;o. Việc đăng k&yacute; th&agrave;nh vi&ecirc;n sẽ c&oacute; thể kh&ocirc;ng được chấp thuận nếu người đăng k&yacute; đ&atilde; bị hủy t&agrave;i khoản, tư c&aacute;ch th&agrave;nh vi&ecirc;n trước đ&oacute;.&nbsp;</p>\r\n\r\n<p>23.3. C&ocirc;ng ty kh&ocirc;ng chịu tr&aacute;ch nhiệm v&agrave; kh&ocirc;ng chấp thuận bất kỳ tr&aacute;ch nhiệm n&agrave;o đối với bất kỳ t&agrave;i liệu n&agrave;o được tải l&ecirc;n, đăng tải, truyền tải hoặc cung cấp tr&ecirc;n App bởi bất kỳ người n&agrave;o kh&aacute;c ngo&agrave;i C&ocirc;ng Ty. C&ocirc;ng Ty kh&ocirc;ng x&aacute;c nhận bất kỳ &yacute; kiến, lời khuy&ecirc;n hoặc tuy&ecirc;n bố n&agrave;o được đưa ra bởi bất kỳ người n&agrave;o kh&aacute;c ngo&agrave;i C&ocirc;ng Ty.&nbsp;</p>\r\n\r\n<p>23.4. Bạn đồng &yacute; miễn tr&aacute;ch cho C&ocirc;ng Ty v&agrave; từng c&aacute;n bộ, nh&acirc;n vi&ecirc;n, đại l&yacute;, nh&agrave; thầu, nh&agrave; cung cấp v&agrave; người cấp ph&eacute;p(gọi chung l&agrave; &ldquo;Đơn Vị Li&ecirc;n Kết&rdquo;) của C&ocirc;ng ty về bất kỳ tr&aacute;ch nhiệm ph&aacute;p l&yacute;, tổn thất hoặc thiệt hại n&agrave;o (bao gồm tất cả c&aacute;c chi ph&iacute; ph&aacute;p l&yacute; v&agrave; chi ph&iacute; kh&aacute;c tr&ecirc;n cơ sở một khoản bồi thường đầy đủ) phải g&aacute;nh chịu hoặc g&aacute;nh chịu bởi C&ocirc;ng Ty v&agrave; hoặc Đơn Vị Li&ecirc;n Kết ph&aacute;t sinh (to&agrave;n bộ hoặc một phần) do vi phạm hoặc kh&ocirc;ng tu&acirc;n thủ bất kỳ Điều Khoản Sử Dụng n&agrave;o, hoặc bất kỳ h&agrave;nh vi mặc định hoặc sai tr&aacute;i n&agrave;o kh&aacute;c li&ecirc;n quan đến chủ đề của Điều Khoản Sử Dụng n&agrave;y, tr&ecirc;n phần của Bạn hoặc bất kỳ Đơn Vị Li&ecirc;n Kết n&agrave;o của Bạn.</p>\r\n\r\n<p>24. Điều khoản chung</p>\r\n\r\n<p>24.1. Bằng việc tiếp tục sử dụng App, Bạn x&aacute;c nhận đ&atilde; đọc v&agrave; hiểu c&aacute;c Điều Khoản Sử Dụng n&agrave;y, Bạn đồng &yacute; thực hiện v&agrave; chịu sự r&agrave;ng buộc của c&aacute;c điều khoản v&agrave; điều kiện của Điều Khoản Sử Dụng. Điều Khoản Sử Dụng n&agrave;y sẽ kh&ocirc;ng được thay đổi hoặc sửa đổi dưới bất cứ h&igrave;nh thức n&agrave;o m&agrave; kh&ocirc;ng c&oacute; sự đồng &yacute; trước bằng văn bản của C&ocirc;ng Ty.&nbsp;</p>\r\n\r\n<p>24.2. C&aacute;c Điều Khoản Sử Dụng n&agrave;y bổ sung cho c&aacute;c nghĩa vụ v&agrave; quyền lợi của Bạn theo Ch&iacute;nh s&aacute;ch Bảo mật tại App. Để tr&aacute;nh hiểu lầm, trong trường hợp c&oacute; sự kh&ocirc;ng thống nhất giữa Điều Khoản Sử Dụng n&agrave;y v&agrave; Ch&iacute;nh s&aacute;ch bảo mật hoặc c&aacute;c điều khoản v&agrave; điều kiện kh&aacute;c được đăng tr&ecirc;n App, Điều Khoản Sử Dụng sẽ được ưu ti&ecirc;n &aacute;p dụng. Nếu Bạn kh&ocirc;ng chắc chắn về c&aacute;c quyền của Bạn theo Điều Khoản Sử Dụng n&agrave;y, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i theo th&ocirc;ng tin b&ecirc;n dưới&nbsp;</p>\r\n\r\n<p>24.3. Việc C&ocirc;ng Ty kh&ocirc;ng c&oacute; động th&aacute;i đối với h&agrave;nh vi vi phạm của Bạn hoặc người kh&aacute;c kh&ocirc;ng l&agrave;m phương hại đến quyền của C&ocirc;ng Ty trong việc đưa ra c&aacute;c động th&aacute;i đối với c&aacute;c vi phạm kh&aacute;c hoặc tương tự.&nbsp;</p>\r\n\r\n<p>24.4. Nếu Bạn đang h&agrave;nh động với tư c&aacute;ch l&agrave; người đại diện cho một tổ chức, c&aacute; nh&acirc;n (bao gồm cả thay mặt cho người sử dụng lao động của Bạn), Bạn v&agrave; tổ chức, c&aacute; nh&acirc;n đ&oacute;, cho d&ugrave; l&agrave; li&ecirc;n đới hay độc lập, c&oacute; tất cả c&aacute;c nghĩa vụ của Bạn như được quy định trong Điều Khoản Sử Dụng n&agrave;y.&nbsp;</p>\r\n\r\n<p>24.5. Nếu bất kỳ phần n&agrave;o của Điều Khoản Sử Dụng n&agrave;y bị t&ograve;a &aacute;n tuy&ecirc;n l&agrave; kh&ocirc;ng hợp lệ, bất hợp ph&aacute;p hoặc kh&ocirc;ng thể thi h&agrave;nh, phần đ&oacute; sẽ được loại bỏ v&agrave; phần c&ograve;n lại của thỏa thuận n&agrave;y sẽ tiếp tục c&oacute; hiệu lực thi h&agrave;nh một c&aacute;ch to&agrave;n vẹn trong phạm vi được ph&aacute;p luật cho ph&eacute;p.&nbsp;</p>\r\n\r\n<p>24.6. Nếu Bạn c&oacute; bất kỳ c&acirc;u hỏi n&agrave;o li&ecirc;n quan đến Điều Khoản Sử Dụng cho App n&agrave;y, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua Trung t&acirc;m Kh&aacute;ch h&agrave;ng th&ocirc;ng qua trang phần li&ecirc;n hệ tr&ecirc;n trợ gi&uacute;p những c&acirc;u hỏi thường gặp của ch&uacute;ng t&ocirc;i hoặc qua đường bưu điện theo địa chỉ sau:&nbsp;</p>', NULL, '2024-06-21 10:17:47'),
(15, 'about_us', '<p>this is about us page. hello and hi from about page description..</p>', NULL, '2021-06-11 01:42:53'),
(16, 'sms_nexmo', '{\"status\":\"0\",\"nexmo_key\":\"custo5cc042f7abf4c\",\"nexmo_secret\":\"custo5cc042f7abf4c@ssl\"}', NULL, NULL),
(17, 'company_email', 'Copy@Dostech', NULL, '2021-03-15 12:29:51'),
(18, 'colors', '{\"primary\":\"#ed5b1d\",\"secondary\":\"#d12323\",\"primary_light\":\"#CFDFFB\"}', '2020-10-11 13:53:02', '2024-09-02 19:01:22'),
(19, 'company_footer_logo', '2021-02-20-6030c8a02a5f9.png', NULL, '2021-02-20 14:30:24'),
(20, 'company_copyright_text', 'CopyRight 6amTech@2021', NULL, '2021-03-15 12:30:47'),
(21, 'download_app_apple_stroe', '{\"status\":\"1\",\"link\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\"}', NULL, '2020-12-08 12:54:53'),
(22, 'download_app_google_stroe', '{\"status\":\"1\",\"link\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\"}', NULL, '2020-12-08 12:54:48'),
(23, 'company_fav_icon', '2021-03-02-603df1634614f.png', '2020-10-11 13:53:02', '2021-03-02 14:03:48'),
(24, 'fcm_topic', '', NULL, NULL),
(25, 'fcm_project_id', '', NULL, NULL),
(26, 'push_notification_key', 'Put your firebase server key here.', NULL, NULL),
(27, 'order_pending_message', '{\"status\":\"1\",\"message\":\"order pen message\"}', NULL, NULL),
(28, 'order_confirmation_msg', '{\"status\":\"1\",\"message\":\"Order con Message\"}', NULL, NULL),
(29, 'order_processing_message', '{\"status\":\"1\",\"message\":\"Order pro Message\"}', NULL, NULL),
(30, 'out_for_delivery_message', '{\"status\":\"1\",\"message\":\"Order ouut Message\"}', NULL, NULL),
(31, 'order_delivered_message', '{\"status\":\"1\",\"message\":\"Order del Message\"}', NULL, NULL),
(32, 'razor_pay', '{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}', NULL, '2021-07-06 12:30:14'),
(33, 'sales_commission', '0', NULL, '2021-06-11 18:13:13'),
(34, 'seller_registration', '1', NULL, '2021-06-04 21:02:48'),
(35, 'pnc_language', '[\"en\",\"vn\"]', NULL, NULL),
(36, 'order_returned_message', '{\"status\":\"1\",\"message\":\"Order hh Message\"}', NULL, NULL),
(37, 'order_failed_message', '{\"status\":null,\"message\":\"Order fa Message\"}', NULL, NULL),
(40, 'delivery_boy_assign_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(41, 'delivery_boy_start_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(42, 'delivery_boy_delivered_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(43, 'terms_and_conditions', '', NULL, NULL),
(44, 'minimum_order_value', '1', NULL, NULL),
(45, 'privacy_policy', '<h2><strong>Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n</strong></h2>\r\n\r\n<p>T&agrave;i khoản kh&aacute;ch h&agrave;ng được tạo ra tr&ecirc;n App TX, sau lần đầu ti&ecirc;n đăng nhập v&agrave;o t&agrave;i khoản, kh&aacute;ch h&agrave;ng tự chịu tr&aacute;ch nhiệm về năng lực h&agrave;nh vi trong việc thay đổi th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; sử dụng TX APP. Việc thu thập dữ liệu chủ yếu tr&ecirc;n App TX bao gồm: email, điện thoại, t&ecirc;n đăng nhập, mật khẩu đăng nhập, địa chỉ kh&aacute;ch h&agrave;ng. Đ&acirc;y l&agrave; c&aacute;c th&ocirc;ng tin m&agrave; App TX cần kh&aacute;ch h&agrave;ng bắt buộc khi đăng k&yacute; sử dụng dịch vụ y tế v&agrave; để App TX li&ecirc;n hệ x&aacute;c nhận khi kh&aacute;ch h&agrave;ng đăng k&yacute; sử dụng dịch vụ tr&ecirc;n app nhằm đảm bảo quyền lợi cho cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>C&aacute;c kh&aacute;ch h&agrave;ng sẽ tự chịu tr&aacute;ch nhiệm về bảo mật v&agrave; lưu giữ mọi hoạt động sử dụng dịch vụ y tế dưới t&ecirc;n đăng k&yacute;, mật khẩu của m&igrave;nh. Ngo&agrave;i ra, kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm th&ocirc;ng b&aacute;o kịp thời về App TX về những h&agrave;nh vi sử dụng tr&aacute;i ph&eacute;p, lạm dụng, vi phạm bảo mật, lưu giữ t&ecirc;n đăng k&yacute; v&agrave; mật khẩu của b&ecirc;n thứ ba để c&oacute; biện ph&aacute;p giải quyết ph&ugrave; hợp.</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2024-06-21 10:26:48'),
(46, 'paystack', '{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}', NULL, '2021-07-06 12:30:35'),
(47, 'senang_pay', '{\"status\":\"0\",\"secret_key\":null,\"merchant_id\":null}', NULL, '2021-07-06 12:30:23'),
(48, 'currency_model', 'multi_currency', NULL, NULL),
(49, 'social_login', '[{\"login_medium\":\"google\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":\"\"},{\"login_medium\":\"facebook\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":\"\"}]', NULL, NULL),
(50, 'digital_payment', '{\"status\":\"0\"}', '2024-06-27 04:21:18', '2024-06-27 04:21:18'),
(51, 'phone_verification', '0', NULL, NULL),
(52, 'email_verification', '0', NULL, NULL),
(53, 'order_verification', '0', NULL, NULL),
(54, 'country_code', 'VN', NULL, NULL),
(55, 'pagination_limit', '10', NULL, NULL),
(56, 'shipping_method', 'inhouse_shipping', NULL, NULL),
(57, 'paymob_accept', '{\"status\":\"0\",\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\"}', NULL, NULL),
(58, 'bkash', '{\"status\":\"0\",\"environment\":\"sandbox\",\"api_key\":\"\",\"api_secret\":\"\",\"username\":\"\",\"password\":\"\"}', NULL, '2023-01-10 05:51:56'),
(59, 'forgot_password_verification', 'email', NULL, NULL),
(60, 'paytabs', '{\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}', NULL, '2021-11-21 03:01:40'),
(61, 'stock_limit', '10', NULL, NULL),
(62, 'flutterwave', '{\"status\":1,\"public_key\":\"\",\"secret_key\":\"\",\"hash\":\"\"}', NULL, NULL),
(63, 'mercadopago', '{\"status\":1,\"public_key\":\"\",\"access_token\":\"\"}', NULL, NULL),
(64, 'announcement', '{\"status\":null,\"color\":null,\"text_color\":null,\"announcement\":null}', NULL, NULL),
(65, 'fawry_pay', '{\"status\":0,\"merchant_code\":\"\",\"security_key\":\"\"}', NULL, '2022-01-18 09:46:30'),
(66, 'recaptcha', '{\"status\":\"1\",\"site_key\":null,\"secret_key\":null}', '2024-09-03 00:57:47', '2024-09-03 00:57:47'),
(67, 'seller_pos', '0', NULL, NULL),
(68, 'liqpay', '{\"status\":0,\"public_key\":\"\",\"private_key\":\"\"}', NULL, NULL),
(69, 'paytm', '{\"status\":0,\"environment\":\"sandbox\",\"paytm_merchant_key\":\"\",\"paytm_merchant_mid\":\"\",\"paytm_merchant_website\":\"\",\"paytm_refund_url\":\"\"}', NULL, '2023-01-10 05:51:56'),
(70, 'refund_day_limit', '015', NULL, NULL),
(71, 'business_mode', 'multi', NULL, NULL),
(72, 'mail_config_sendgrid', '{\"status\":0,\"name\":\"\",\"host\":\"\",\"driver\":\"\",\"port\":\"\",\"username\":\"\",\"email_id\":\"\",\"encryption\":\"\",\"password\":\"\"}', NULL, NULL),
(73, 'decimal_point_settings', '2', NULL, NULL),
(74, 'shop_address', 'Lạch Tray', NULL, NULL),
(75, 'billing_input_by_customer', '1', NULL, NULL),
(76, 'wallet_status', '1', NULL, NULL),
(77, 'loyalty_point_status', '1', NULL, NULL),
(78, 'wallet_add_refund', '1', NULL, NULL),
(79, 'loyalty_point_exchange_rate', '0', NULL, NULL),
(80, 'loyalty_point_item_purchase_point', '0', NULL, NULL),
(81, 'loyalty_point_minimum_point', '0', NULL, NULL),
(82, 'minimum_order_limit', '1', NULL, NULL),
(83, 'product_brand', '1', NULL, NULL),
(84, 'digital_product', '1', NULL, NULL),
(85, 'delivery_boy_expected_delivery_date_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(86, 'order_canceled', '{\"status\":0,\"message\":\"\"}', NULL, NULL);
INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(87, 'refund-policy', '{\"status\":1,\"content\":\"<h1>Quy \\u0111\\u1ecbnh \\u0111\\u1ed5i tr\\u1ea3 h&agrave;ng online<\\/h1>\\r\\n\\r\\n<p><strong>\\u0110\\u1ed4I H&Agrave;NG KHI KH&Aacute;CH H&Agrave;NG MUA S\\u1ea2N PH\\u1ea8M T\\u1ea0I K&Ecirc;NH B&Aacute;N H&Agrave;NG ONLINE<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>1.&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m &aacute;p d\\u1ee5ng \\u0111\\u1ed5i<\\/strong><\\/p>\\r\\n\\r\\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m c&oacute; m\\u1ee9c chi\\u1ebft kh\\u1ea5u d\\u01b0\\u1edbi 30%.<\\/p>\\r\\n\\r\\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m c&oacute; m\\u1ee9c chi\\u1ebft kh\\u1ea5u tr&ecirc;n 30% ch\\u1ec9 \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed5i trong nh\\u1eefng tr\\u01b0\\u1eddng h\\u1ee3p sau:<\\/p>\\r\\n\\r\\n<p>\\uf076&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m c&oacute; m\\u1ee9c chi\\u1ebft kh\\u1ea5u 50% theo quy\\u1ec1n l\\u1ee3i sinh nh\\u1eadt c\\u1ee7a kh&aacute;ch Vip.<\\/p>\\r\\n\\r\\n<p>\\uf076&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m c&oacute; m\\u1ee9c chi\\u1ebft kh\\u1ea5u tr&ecirc;n 30% theo ch\\u01b0\\u01a1ng tr&igrave;nh b&aacute;n h&agrave;ng chung nh\\u01b0ng \\u0111\\u01b0\\u1ee3c chi\\u1ebft kh\\u1ea5u th&ecirc;m cho kh&aacute;ch Vip.<\\/p>\\r\\n\\r\\n<p>\\uf076&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m c&oacute; m\\u1ee9c chi\\u1ebft kh\\u1ea5u tr&ecirc;n 30% theo ch\\u01b0\\u01a1ng tr&igrave;nh ph&aacute;t tri\\u1ec3n kh&aacute;ch h&agrave;ng m\\u1edbi ho\\u1eb7c kh&aacute;ch h&agrave;ng l&agrave; \\u0111\\u1ed1i t\\u01b0\\u1ee3ng c\\u1ee7a ch\\u01b0\\u01a1ng tr&igrave;nh \\u01b0u \\u0111&atilde;i ri&ecirc;ng.<\\/p>\\r\\n\\r\\n<p>\\uf076&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m b\\u1ecb l\\u1ed7i nh&agrave; s\\u1ea3n xu\\u1ea5t nh\\u01b0: r&aacute;ch, h\\u1ecfng ph\\u1ee5 ki\\u1ec7n, s\\u1eddn v\\u1ea3i, r&uacute;t s\\u1ee3i, phai m&agrave;u.<\\/p>\\r\\n\\r\\n<p><strong>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Th\\u1eddi gian \\u0111\\u1ed5i s\\u1ea3n ph\\u1ea9m<\\/strong><\\/p>\\r\\n\\r\\n<p>S\\u1ea3n ph\\u1ea9m \\u0111\\u1ed5i c&oacute; th\\u1eddi gian mua h&agrave;ng kh&ocirc;ng qu&aacute; 07 ng&agrave;y k\\u1ec3 t\\u1eeb ng&agrave;y nh\\u1eadn h&agrave;ng.<\\/p>\\r\\n\\r\\n<p>L\\u01b0u &yacute;: Th\\u1eddi gian \\u0111\\u1ec3 kh&aacute;ch ph\\u1ea3n h\\u1ed3i th&ocirc;ng tin v\\u1ec1 vi\\u1ec7c mu\\u1ed1n \\u0111\\u1ed5i s\\u1ea3n ph\\u1ea9m b\\u1ecb l\\u1ed7i nh&agrave; s\\u1ea3n cho b\\u1ed9 ph\\u1eadn ch\\u0103m s&oacute;c kh&aacute;ch h&agrave;ng v&agrave; b&aacute;n h&agrave;ng online l&agrave; ngay trong ng&agrave;y nh\\u1eadn h&agrave;ng. Ng&agrave;y nh\\u1eadn h&agrave;ng c\\u1ee7a kh&aacute;ch h&agrave;ng s\\u1ebd d\\u1ef1a tr&ecirc;n x&aacute;c nh\\u1eadn c\\u1ee7a b&ecirc;n chuy\\u1ec3n ph&aacute;t .<\\/p>\\r\\n\\r\\n<p><strong>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \\u0110i\\u1ec1u ki\\u1ec7n \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed5i h&agrave;ng<\\/strong><\\/p>\\r\\n\\r\\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m c&ograve;n nguy&ecirc;n tem, m&aacute;c v&agrave; ch\\u01b0a qua s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed5i h&agrave;ng t\\u1ed1i \\u0111a 01 l\\u1ea7n<\\/p>\\r\\n\\r\\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m \\u0111&atilde; mua kh&ocirc;ng \\u0111\\u01b0\\u1ee3c ho&agrave;n tr\\u1ea3 l\\u1ea1i.&nbsp;<\\/p>\\r\\n\\r\\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kh&aacute;ch s\\u1ebd tr\\u1ea3 th&ecirc;m kho\\u1ea3n ti\\u1ec1n ch&ecirc;nh l\\u1ec7ch n\\u1ebfu \\u0111\\u1ed5i sang s\\u1ea3n ph\\u1ea9m c&oacute; gi&aacute; tr\\u1ecb cao h\\u01a1n gi&aacute; tr\\u1ecb c\\u1ee7a s\\u1ea3n mang \\u0111\\u1ed5i. B\\u1ed9 ph\\u1eadn b&aacute;n h&agrave;ng Online kh&ocirc;ng ho&agrave;n tr\\u1ea3 l\\u1ea1i ti\\u1ec1n c&ograve;n th\\u1eeba cho kh&aacute;ch sau khi \\u0111\\u1ed5i h&agrave;ng n\\u1ebfu kh&aacute;ch h&agrave;ng \\u0111\\u1ed5i sang m\\u1ed9t s\\u1ea3n ph\\u1ea9m c&oacute; gi&aacute; tr\\u1ecb th\\u1ea5p h\\u01a1n gi&aacute; tr\\u1ecb c\\u1ee7a s\\u1ea3n ph\\u1ea9m mang \\u0111\\u1ed5i.<\\/p>\\r\\n\\r\\n<p><strong>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tr\\u01b0\\u1eddng h\\u1ee3p t\\u1eeb ch\\u1ed1i \\u0111\\u1ed5i h&agrave;ng<\\/strong><\\/p>\\r\\n\\r\\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Th\\u1eddi gian mua h&agrave;ng qu&aacute; 07 ng&agrave;y k\\u1ec3 t\\u1eeb ng&agrave;y nh\\u1eadn h&agrave;ng.<\\/p>\\r\\n\\r\\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m \\u0111&atilde; \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed5i&nbsp; h&agrave;ng 1 l\\u1ea7n tr\\u01b0\\u1edbc \\u0111&oacute;<\\/p>\\r\\n\\r\\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tem, m&aacute;c kh&ocirc;ng c&ograve;n nguy&ecirc;n v\\u1eb9n<\\/p>\\r\\n\\r\\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m \\u0111&atilde; ch\\u1ec9nh s\\u1eeda, b\\u1ecb b\\u1ea9n, r&aacute;ch, h\\u1ecfng, r&uacute;t s\\u1ee3i, c&oacute; m&ugrave;i h&ocirc;i, m&ugrave;i h&oacute;a ch\\u1ea5t (x&agrave; ph&ograve;ng, n\\u01b0\\u1edbc x\\u1ea3, n\\u01b0\\u1edbc hoa&hellip; Ho\\u1eb7c c&aacute;c m&ugrave;i kh&aacute;c), b\\u1ecb l\\u1ed7i do nh\\u1eefng t&aacute;c \\u0111\\u1ed9ng b&ecirc;n ngo&agrave;i sau khi mua ho\\u1eb7c c&aacute;c ph\\u1ee5 ki\\u1ec7n\\/chi ti\\u1ebft c\\u1ee7a s\\u1ea3n ph\\u1ea9m kh&ocirc;ng c&ograve;n \\u0111\\u1ea7y \\u0111\\u1ee7\\/h\\u01b0 h\\u1ea1i.<\\/p>\\r\\n\\r\\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&aacute;c s\\u1ea3n ph\\u1ea9m l&agrave; &aacute;o thun, &aacute;o hai d&acirc;y, ph\\u1ee5 ki\\u1ec7n<\\/p>\\r\\n\\r\\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m c&oacute; chi\\u1ebft kh\\u1ea5u cao h\\u01a1n 30% m&agrave; s\\u1ea3n ph\\u1ea9m \\u0111&oacute; kh&ocirc;ng thu\\u1ed9c ch\\u01b0\\u01a1ng tr&igrave;nh ph&aacute;t tri\\u1ec3n kh&aacute;ch h&agrave;ng, ch\\u01b0\\u01a1ng tr&igrave;nh \\u01b0u \\u0111&atilde;i ri&ecirc;ng v\\u1edbi kh&aacute;ch h&agrave;ng \\u0111\\u1eb7c bi&ecirc;t, sinh nh\\u1eadt \\u0111\\u1ed1i v\\u1edbi kh&aacute;ch Vip.<\\/p>\\r\\n\\r\\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S\\u1ea3n ph\\u1ea9m b\\u1ecb l\\u1ed7i nh&agrave; s\\u1ea3n xu\\u1ea5t v&agrave; s\\u1ea3n ph\\u1ea9m gi\\u1ea3m gi&aacute; 50% m&agrave; th\\u1eddi gian ph\\u1ea3n h\\u1ed3i th&ocirc;ng tin v\\u1ec1 s\\u1ea3n ph\\u1ea9m c\\u1ee7a kh&aacute;ch \\u0111&atilde; qua ng&agrave;y nh\\u1eadn h&agrave;ng.<\\/p>\\r\\n\\r\\n<p><strong>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ph&iacute; g\\u1eedi h&agrave;ng<\\/strong><\\/p>\\r\\n\\r\\n<p>- &nbsp;&nbsp;&nbsp;&nbsp; Ph&iacute; g\\u1eedi h&agrave;ng c\\u1ee7a \\u0111\\u01a1n \\u0111\\u1ed5i s\\u1ebd do kh&aacute;ch h&agrave;ng thanh to&aacute;n theo quy \\u0111\\u1ecbnh c\\u1ee7a ch&iacute;nh s&aacute;ch v\\u1eadn chuy\\u1ec3n.<\\/p>\\r\\n\\r\\n<p>- &nbsp;&nbsp;&nbsp;&nbsp; H&agrave;ng kh&aacute;ch y&ecirc;u c\\u1ea7u \\u0111\\u1ed5i l\\u1ea1i chuy\\u1ec3n ra n\\u01b0\\u1edbc ngo&agrave;i th&igrave; kh&aacute;ch h&agrave;ng s\\u1ebd ch\\u1ecbu ho&agrave;n to&agrave;n ph&iacute; chuy\\u1ec3n h&agrave;ng.<\\/p>\"}', NULL, '2024-06-21 10:29:14'),
(88, 'return-policy', '{\"status\":1,\"content\":\"\"}', NULL, '2023-03-04 06:25:36'),
(89, 'cancellation-policy', '{\"status\":1,\"content\":\"\"}', NULL, '2023-03-04 06:25:36'),
(90, 'offline_payment', '{\"status\":\"0\"}', '2024-06-27 04:21:12', '2024-06-27 04:21:12'),
(91, 'temporary_close', '{\"status\":0}', NULL, '2023-03-04 06:25:36'),
(92, 'vacation_add', '{\"status\":0,\"vacation_start_date\":null,\"vacation_end_date\":null,\"vacation_note\":null}', NULL, '2023-03-04 06:25:36'),
(93, 'cookie_setting', '{\"status\":0,\"cookie_text\":null}', NULL, '2023-03-04 06:25:36'),
(94, 'maximum_otp_hit', '0', NULL, '2023-06-13 13:04:49'),
(95, 'otp_resend_time', '0', NULL, '2023-06-13 13:04:49'),
(96, 'temporary_block_time', '0', NULL, '2023-06-13 13:04:49'),
(97, 'maximum_login_hit', '0', NULL, '2023-06-13 13:04:49'),
(98, 'temporary_login_block_time', '0', NULL, '2023-06-13 13:04:49'),
(99, 'whatsapp', '{\"status\":null,\"phone\":\"0921705458\"}', '2024-08-29 08:45:19', '2024-08-29 08:45:19'),
(100, 'timezone', 'UTC', NULL, NULL),
(101, 'default_location', '{\"lat\":null,\"lng\":null}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `cart_group_id` varchar(191) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_type` varchar(20) NOT NULL DEFAULT 'physical',
  `digital_product_type` varchar(30) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `choices` text DEFAULT NULL,
  `variations` text DEFAULT NULL,
  `variant` text DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` double NOT NULL DEFAULT 1,
  `tax` double NOT NULL DEFAULT 1,
  `discount` double NOT NULL DEFAULT 1,
  `tax_model` varchar(20) NOT NULL DEFAULT 'exclude',
  `slug` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `thumbnail` varchar(191) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_info` varchar(191) DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `shipping_type` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `cart_group_id`, `product_id`, `product_type`, `digital_product_type`, `color`, `choices`, `variations`, `variant`, `quantity`, `price`, `tax`, `discount`, `tax_model`, `slug`, `name`, `thumbnail`, `seller_id`, `seller_is`, `created_at`, `updated_at`, `shop_info`, `shipping_cost`, `shipping_type`) VALUES
(5, 6, '6-sM9uN-1719477701', 3, 'physical', NULL, NULL, '[]', '[]', '', 2, 1000000, 0, 0, 'include', 'may-hut-bui-giuong-nem-diet-khuan-uv-the-he-moi-jetzt-series-j7-I7LuzK', 'Máy hút bụi giường nệm diệt khuẩn UV thế hệ mới JETZT SERIES J7', '2024-04-01-660a43a008098.png', 1, 'admin', '2024-06-28 17:19:28', '2024-06-28 17:19:28', 'Laravel Core', 0.00, 'order_wise'),
(7, 7, '7-dHFLD-1724927595', 2, 'physical', NULL, NULL, '[]', '[]', '', 1, 1000000, 0, 0, 'include', 'quan-dui-ong-rong-cuna-quan-dai-nam-nu-chat-linen-cao-cap-ong-suong-rong-mac-nha-di-choi-che-khuyet-diem-hack-dang-4-mua', 'Quần đũi ống rộng CUNA quần dài nam nữ chất linen cao cấp ống suông rộng mặc nhà', '2024-04-01-660a42bbc6499.png', 1, 'admin', '2024-08-29 09:33:15', '2024-08-29 09:33:15', 'Laravel Core', 0.00, 'category_wise');

-- --------------------------------------------------------

--
-- Table structure for table `cart_shippings`
--

CREATE TABLE `cart_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_group_id` varchar(191) DEFAULT NULL,
  `shipping_method_id` bigint(20) DEFAULT NULL,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `icon` varchar(250) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_status` tinyint(1) NOT NULL DEFAULT 0,
  `priority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `parent_id`, `position`, `created_at`, `updated_at`, `home_status`, `priority`) VALUES
(1, 'Thơi trang nam', 'thoi-trang-nam', '2024-04-01-660a404c3764e.png', 0, 0, '2024-04-01 04:04:12', '2024-04-01 04:04:12', 0, 0),
(2, 'Máy tính', 'may-tinh', '2024-04-01-660a405bbd83c.png', 0, 0, '2024-04-01 04:04:27', '2024-04-01 04:04:27', 0, 0),
(3, 'Điệ thoại & Phụ kiện', 'die-thoai-phu-kien', '2024-07-09-668cc7355c22c.png', 0, 0, '2024-07-09 04:14:29', '2024-07-09 04:14:29', 0, 0),
(4, 'Máy tính & Laptop', 'may-tinh-laptop', '2024-07-09-668cc7737b57b.png', 0, 0, '2024-07-09 04:15:31', '2024-07-09 04:15:31', 0, 0),
(5, 'Đồng hồ', 'dong-ho', '2024-07-09-668cc7ac5246e.png', 0, 0, '2024-07-09 04:16:28', '2024-07-09 04:16:28', 0, 0),
(6, 'Giày dép nam', 'giay-dep-nam', '2024-07-09-668cc7d024a29.png', 0, 0, '2024-07-09 04:17:04', '2024-07-09 04:17:04', 0, 0),
(7, 'Thể thao & du lịch', 'the-thao-du-lich', '2024-07-09-668cc81393c46.png', 0, 0, '2024-07-09 04:18:11', '2024-07-09 04:18:11', 0, 0),
(8, 'Ô tô & xe máy', 'o-to-xe-may', '2024-07-09-668cc8375cbf3.png', 0, 0, '2024-07-09 04:18:47', '2024-07-09 04:18:47', 0, 0),
(9, 'Thời trang nữ', 'thoi-trang-nu', '2024-07-09-668cc861453fa.png', 0, 0, '2024-07-09 04:19:29', '2024-07-09 04:19:29', 0, 0),
(10, 'Mẹ & bé', 'me-be', '2024-07-09-668cc89b4b29c.png', 0, 0, '2024-07-09 04:20:27', '2024-07-09 04:20:27', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_shipping_costs`
--

CREATE TABLE `category_shipping_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `cost` double(8,2) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_shipping_costs`
--

INSERT INTO `category_shipping_costs` (`id`, `seller_id`, `category_id`, `cost`, `multiply_qty`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 0.00, NULL, '2024-08-29 08:35:10', '2024-08-29 08:35:10'),
(2, 0, 2, 0.00, NULL, '2024-08-29 08:35:10', '2024-08-29 08:35:10'),
(3, 0, 3, 0.00, NULL, '2024-08-29 08:35:10', '2024-08-29 08:35:10'),
(4, 0, 4, 0.00, NULL, '2024-08-29 08:35:10', '2024-08-29 08:35:10'),
(5, 0, 5, 0.00, NULL, '2024-08-29 08:35:10', '2024-08-29 08:35:10'),
(6, 0, 6, 0.00, NULL, '2024-08-29 08:35:10', '2024-08-29 08:35:10'),
(7, 0, 7, 0.00, NULL, '2024-08-29 08:35:10', '2024-08-29 08:35:10'),
(8, 0, 8, 0.00, NULL, '2024-08-29 08:35:10', '2024-08-29 08:35:10'),
(9, 0, 9, 0.00, NULL, '2024-08-29 08:35:10', '2024-08-29 08:35:10'),
(10, 0, 10, 0.00, NULL, '2024-08-29 08:35:10', '2024-08-29 08:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `chattings`
--

CREATE TABLE `chattings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `message` text NOT NULL,
  `sent_by_customer` tinyint(1) NOT NULL DEFAULT 0,
  `sent_by_seller` tinyint(1) NOT NULL DEFAULT 0,
  `sent_by_admin` tinyint(1) DEFAULT NULL,
  `sent_by_delivery_man` tinyint(1) DEFAULT NULL,
  `seen_by_customer` tinyint(1) NOT NULL DEFAULT 1,
  `seen_by_seller` tinyint(1) NOT NULL DEFAULT 1,
  `seen_by_admin` tinyint(1) DEFAULT NULL,
  `seen_by_delivery_man` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chattings`
--

INSERT INTO `chattings` (`id`, `user_id`, `seller_id`, `admin_id`, `delivery_man_id`, `message`, `sent_by_customer`, `sent_by_seller`, `sent_by_admin`, `sent_by_delivery_man`, `seen_by_customer`, `seen_by_seller`, `seen_by_admin`, `seen_by_delivery_man`, `status`, `created_at`, `updated_at`, `shop_id`) VALUES
(1, 6, 1, NULL, NULL, 'hello', 1, 0, NULL, NULL, 1, 0, NULL, NULL, 1, '2024-06-21 08:15:53', '2024-06-21 08:15:53', 1),
(2, 6, 1, NULL, NULL, 'ooakakakka', 1, 0, NULL, NULL, 1, 0, NULL, NULL, 1, '2024-06-21 09:53:03', '2024-06-21 09:53:03', 1),
(3, 6, 1, NULL, NULL, 'ok', 1, 0, NULL, NULL, 1, 0, NULL, NULL, 1, '2024-06-21 11:16:56', '2024-06-21 11:16:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `mobile_number` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `feedback` varchar(191) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reply` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile_number`, `subject`, `message`, `seen`, `feedback`, `created_at`, `updated_at`, `reply`) VALUES
(1, 'Khánh Đặng', 'anhkhanh5539574@gmail.com', '0563067090', 'Test', 'Test', 1, '0', '2024-08-29 08:58:13', '2024-08-29 09:04:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `added_by` varchar(191) NOT NULL DEFAULT 'admin',
  `coupon_type` varchar(50) DEFAULT NULL,
  `coupon_bearer` varchar(191) NOT NULL DEFAULT 'inhouse',
  `seller_id` bigint(20) DEFAULT NULL COMMENT 'NULL=in-house, 0=all seller',
  `customer_id` bigint(20) DEFAULT NULL COMMENT '0 = all customer',
  `title` varchar(100) DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `symbol` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `exchange_rate` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `exchange_rate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 'USD', '1', 1, NULL, '2021-06-27 13:39:37'),
(2, 'BDT', '৳', 'BDT', '84', 1, NULL, '2021-07-06 11:52:58'),
(3, 'Indian Rupi', '₹', 'INR', '60', 1, '2020-10-15 17:23:04', '2021-06-04 18:26:38'),
(4, 'Euro', '€', 'EUR', '100', 1, '2021-05-25 21:00:23', '2021-06-04 18:25:29'),
(5, 'YEN', '¥', 'JPY', '110', 1, '2021-06-10 22:08:31', '2021-06-26 14:21:10'),
(6, 'Ringgit', 'RM', 'MYR', '4.16', 1, '2021-07-03 11:08:33', '2021-07-03 11:10:37'),
(7, 'Rand', 'R', 'ZAR', '14.26', 1, '2021-07-03 11:12:38', '2021-07-03 11:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallets`
--

CREATE TABLE `customer_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `royality_points` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallet_histories`
--

CREATE TABLE `customer_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `transaction_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(20) DEFAULT NULL,
  `transaction_method` varchar(30) DEFAULT NULL,
  `transaction_id` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_of_the_days`
--

CREATE TABLE `deal_of_the_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(12) NOT NULL DEFAULT 'amount',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryman_notifications`
--

CREATE TABLE `deliveryman_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryman_wallets`
--

CREATE TABLE `deliveryman_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `current_balance` decimal(50,2) NOT NULL DEFAULT 0.00,
  `cash_in_hand` decimal(50,2) NOT NULL DEFAULT 0.00,
  `pending_withdraw` decimal(50,2) NOT NULL DEFAULT 0.00,
  `total_withdraw` decimal(50,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_country_codes`
--

CREATE TABLE `delivery_country_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_transactions`
--

CREATE TABLE `delivery_man_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `transaction_id` char(36) NOT NULL,
  `debit` decimal(50,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(50,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `identity_number` varchar(30) DEFAULT NULL,
  `identity_type` varchar(50) DEFAULT NULL,
  `identity_image` varchar(191) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `branch` varchar(191) DEFAULT NULL,
  `account_no` varchar(191) DEFAULT NULL,
  `holder_name` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_online` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(191) NOT NULL DEFAULT '6yIRXJRRfp78qJsAoKZZ6TTqhzuNJ3TcdvPBmk6n',
  `fcm_token` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_men`
--

INSERT INTO `delivery_men` (`id`, `seller_id`, `f_name`, `l_name`, `address`, `country_code`, `phone`, `email`, `identity_number`, `identity_type`, `identity_image`, `image`, `password`, `bank_name`, `branch`, `account_no`, `holder_name`, `is_active`, `is_online`, `created_at`, `updated_at`, `auth_token`, `fcm_token`) VALUES
(1, 0, 'hoang', 'hai', 'Ha noi', '84', '967170892', 'anhkhanh55@gmail.com', '041918100200', 'passport', '[]', '2024-06-21-66754420175de.png', '$2y$10$g0rklNb51.B6gSdOu9vfU.hXgISq6yQtD8eSOI45kAYKC3wD3QC5G', NULL, NULL, NULL, NULL, 1, 1, '2024-06-21 08:13:04', '2024-06-21 08:13:04', '6yIRXJRRfp78qJsAoKZZ6TTqhzuNJ3TcdvPBmk6n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_zip_codes`
--

CREATE TABLE `delivery_zip_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zipcode` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contacts`
--

CREATE TABLE `emergency_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emergency_contacts`
--

INSERT INTO `emergency_contacts` (`id`, `user_id`, `name`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Khánh Đặng', '0921705458', 1, '2024-08-29 09:31:15', '2024-08-29 09:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature_deals`
--

CREATE TABLE `feature_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `background_color` varchar(255) DEFAULT NULL,
  `text_color` varchar(255) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `deal_type` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_deals`
--

INSERT INTO `flash_deals` (`id`, `title`, `start_date`, `end_date`, `status`, `featured`, `background_color`, `text_color`, `banner`, `slug`, `created_at`, `updated_at`, `product_id`, `deal_type`) VALUES
(1, 'Hurry Up ! The offer is limited. Grab while it lasts', '2024-04-01', '2024-04-10', 1, 0, NULL, NULL, 'def.png', 'hurry-up-the-offer-is-limited-grab-while-it-lasts', '2024-04-01 04:07:18', '2024-08-29 09:24:19', NULL, 'feature_deal'),
(2, 'Hurry Up ! The offer is limited. Grab while it lasts', '2024-10-01', '2024-10-02', 1, 0, NULL, NULL, 'def.png', 'hurry-up-the-offer-is-limited-grab-while-it-lasts', '2024-10-01 02:57:33', '2024-10-01 02:57:38', NULL, 'flash_deal');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flash_deal_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_deal_products`
--

INSERT INTO `flash_deal_products` (`id`, `flash_deal_id`, `product_id`, `discount`, `discount_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.00, NULL, '2024-04-01 04:15:06', '2024-04-01 04:15:06'),
(2, 2, 1, 0.00, NULL, '2024-10-01 02:57:45', '2024-10-01 02:57:45'),
(3, 2, 7, 0.00, NULL, '2024-10-01 02:57:54', '2024-10-01 02:57:54'),
(4, 2, 8, 0.00, NULL, '2024-10-01 02:57:58', '2024-10-01 02:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `help_topics`
--

CREATE TABLE `help_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `ranking` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_topics`
--

INSERT INTO `help_topics` (`id`, `question`, `answer`, `ranking`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hỗ trợ trả hàng', 'Kết quả', 4, 1, '2024-08-29 09:48:35', '2024-08-29 09:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_point_transactions`
--

CREATE TABLE `loyalty_point_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `reference` varchar(191) DEFAULT NULL,
  `transaction_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_08_105159_create_admins_table', 1),
(5, '2020_09_08_111837_create_admin_roles_table', 1),
(6, '2020_09_16_142451_create_categories_table', 2),
(7, '2020_09_16_181753_create_categories_table', 3),
(8, '2020_09_17_134238_create_brands_table', 4),
(9, '2020_09_17_203054_create_attributes_table', 5),
(10, '2020_09_19_112509_create_coupons_table', 6),
(11, '2020_09_19_161802_create_curriencies_table', 7),
(12, '2020_09_20_114509_create_sellers_table', 8),
(13, '2020_09_23_113454_create_shops_table', 9),
(14, '2020_09_23_115615_create_shops_table', 10),
(15, '2020_09_23_153822_create_shops_table', 11),
(16, '2020_09_21_122817_create_products_table', 12),
(17, '2020_09_22_140800_create_colors_table', 12),
(18, '2020_09_28_175020_create_products_table', 13),
(19, '2020_09_28_180311_create_products_table', 14),
(20, '2020_10_04_105041_create_search_functions_table', 15),
(21, '2020_10_05_150730_create_customers_table', 15),
(22, '2020_10_08_133548_create_wishlists_table', 16),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 17),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 17),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 17),
(26, '2016_06_01_000004_create_oauth_clients_table', 17),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 17),
(28, '2020_10_06_133710_create_product_stocks_table', 17),
(29, '2020_10_06_134636_create_flash_deals_table', 17),
(30, '2020_10_06_134719_create_flash_deal_products_table', 17),
(31, '2020_10_08_115439_create_orders_table', 17),
(32, '2020_10_08_115453_create_order_details_table', 17),
(33, '2020_10_08_121135_create_shipping_addresses_table', 17),
(34, '2020_10_10_171722_create_business_settings_table', 17),
(35, '2020_09_19_161802_create_currencies_table', 18),
(36, '2020_10_12_152350_create_reviews_table', 18),
(37, '2020_10_12_161834_create_reviews_table', 19),
(38, '2020_10_12_180510_create_support_tickets_table', 20),
(39, '2020_10_14_140130_create_transactions_table', 21),
(40, '2020_10_14_143553_create_customer_wallets_table', 21),
(41, '2020_10_14_143607_create_customer_wallet_histories_table', 21),
(42, '2020_10_22_142212_create_support_ticket_convs_table', 21),
(43, '2020_10_24_234813_create_banners_table', 22),
(44, '2020_10_27_111557_create_shipping_methods_table', 23),
(45, '2020_10_27_114154_add_url_to_banners_table', 24),
(46, '2020_10_28_170308_add_shipping_id_to_order_details', 25),
(47, '2020_11_02_140528_add_discount_to_order_table', 26),
(48, '2020_11_03_162723_add_column_to_order_details', 27),
(49, '2020_11_08_202351_add_url_to_banners_table', 28),
(50, '2020_11_10_112713_create_help_topic', 29),
(51, '2020_11_10_141513_create_contacts_table', 29),
(52, '2020_11_15_180036_add_address_column_user_table', 30),
(53, '2020_11_18_170209_add_status_column_to_product_table', 31),
(54, '2020_11_19_115453_add_featured_status_product', 32),
(55, '2020_11_21_133302_create_deal_of_the_days_table', 33),
(56, '2020_11_20_172332_add_product_id_to_products', 34),
(57, '2020_11_27_234439_add__state_to_shipping_addresses', 34),
(58, '2020_11_28_091929_create_chattings_table', 35),
(59, '2020_12_02_011815_add_bank_info_to_sellers', 36),
(60, '2020_12_08_193234_create_social_medias_table', 37),
(61, '2020_12_13_122649_shop_id_to_chattings', 37),
(62, '2020_12_14_145116_create_seller_wallet_histories_table', 38),
(63, '2020_12_14_145127_create_seller_wallets_table', 38),
(64, '2020_12_15_174804_create_admin_wallets_table', 39),
(65, '2020_12_15_174821_create_admin_wallet_histories_table', 39),
(66, '2020_12_15_214312_create_feature_deals_table', 40),
(67, '2020_12_17_205712_create_withdraw_requests_table', 41),
(68, '2021_02_22_161510_create_notifications_table', 42),
(69, '2021_02_24_154706_add_deal_type_to_flash_deals', 43),
(70, '2021_03_03_204349_add_cm_firebase_token_to_users', 44),
(71, '2021_04_17_134848_add_column_to_order_details_stock', 45),
(72, '2021_05_12_155401_add_auth_token_seller', 46),
(73, '2021_06_03_104531_ex_rate_update', 47),
(74, '2021_06_03_222413_amount_withdraw_req', 48),
(75, '2021_06_04_154501_seller_wallet_withdraw_bal', 49),
(76, '2021_06_04_195853_product_dis_tax', 50),
(77, '2021_05_27_103505_create_product_translations_table', 51),
(78, '2021_06_17_054551_create_soft_credentials_table', 51),
(79, '2021_06_29_212549_add_active_col_user_table', 52),
(80, '2021_06_30_212619_add_col_to_contact', 53),
(81, '2021_07_01_160828_add_col_daily_needs_products', 54),
(82, '2021_07_04_182331_add_col_seller_sales_commission', 55),
(83, '2021_08_07_190655_add_seo_columns_to_products', 56),
(84, '2021_08_07_205913_add_col_to_category_table', 56),
(85, '2021_08_07_210808_add_col_to_shops_table', 56),
(86, '2021_08_14_205216_change_product_price_col_type', 56),
(87, '2021_08_16_201505_change_order_price_col', 56),
(88, '2021_08_16_201552_change_order_details_price_col', 56),
(89, '2019_09_29_154000_create_payment_cards_table', 57),
(90, '2021_08_17_213934_change_col_type_seller_earning_history', 57),
(91, '2021_08_17_214109_change_col_type_admin_earning_history', 57),
(92, '2021_08_17_214232_change_col_type_admin_wallet', 57),
(93, '2021_08_17_214405_change_col_type_seller_wallet', 57),
(94, '2021_08_22_184834_add_publish_to_products_table', 57),
(95, '2021_09_08_211832_add_social_column_to_users_table', 57),
(96, '2021_09_13_165535_add_col_to_user', 57),
(97, '2021_09_19_061647_add_limit_to_coupons_table', 57),
(98, '2021_09_20_020716_add_coupon_code_to_orders_table', 57),
(99, '2021_09_23_003059_add_gst_to_sellers_table', 57),
(100, '2021_09_28_025411_create_order_transactions_table', 57),
(101, '2021_10_02_185124_create_carts_table', 57),
(102, '2021_10_02_190207_create_cart_shippings_table', 57),
(103, '2021_10_03_194334_add_col_order_table', 57),
(104, '2021_10_03_200536_add_shipping_cost', 57),
(105, '2021_10_04_153201_add_col_to_order_table', 57),
(106, '2021_10_07_172701_add_col_cart_shop_info', 57),
(107, '2021_10_07_184442_create_phone_or_email_verifications_table', 57),
(108, '2021_10_07_185416_add_user_table_email_verified', 57),
(109, '2021_10_11_192739_add_transaction_amount_table', 57),
(110, '2021_10_11_200850_add_order_verification_code', 57),
(111, '2021_10_12_083241_add_col_to_order_transaction', 57),
(112, '2021_10_12_084440_add_seller_id_to_order', 57),
(113, '2021_10_12_102853_change_col_type', 57),
(114, '2021_10_12_110434_add_col_to_admin_wallet', 57),
(115, '2021_10_12_110829_add_col_to_seller_wallet', 57),
(116, '2021_10_13_091801_add_col_to_admin_wallets', 57),
(117, '2021_10_13_092000_add_col_to_seller_wallets_tax', 57),
(118, '2021_10_13_165947_rename_and_remove_col_seller_wallet', 57),
(119, '2021_10_13_170258_rename_and_remove_col_admin_wallet', 57),
(120, '2021_10_14_061603_column_update_order_transaction', 57),
(121, '2021_10_15_103339_remove_col_from_seller_wallet', 57),
(122, '2021_10_15_104419_add_id_col_order_tran', 57),
(123, '2021_10_15_213454_update_string_limit', 57),
(124, '2021_10_16_234037_change_col_type_translation', 57),
(125, '2021_10_16_234329_change_col_type_translation_1', 57),
(126, '2021_10_27_091250_add_shipping_address_in_order', 58),
(127, '2021_01_24_205114_create_paytabs_invoices_table', 59),
(128, '2021_11_20_043814_change_pass_reset_email_col', 59),
(129, '2021_11_25_043109_create_delivery_men_table', 60),
(130, '2021_11_25_062242_add_auth_token_delivery_man', 60),
(131, '2021_11_27_043405_add_deliveryman_in_order_table', 60),
(132, '2021_11_27_051432_create_delivery_histories_table', 60),
(133, '2021_11_27_051512_add_fcm_col_for_delivery_man', 60),
(134, '2021_12_15_123216_add_columns_to_banner', 60),
(135, '2022_01_04_100543_add_order_note_to_orders_table', 60),
(136, '2022_01_10_034952_add_lat_long_to_shipping_addresses_table', 60),
(137, '2022_01_10_045517_create_billing_addresses_table', 60),
(138, '2022_01_11_040755_add_is_billing_to_shipping_addresses_table', 60),
(139, '2022_01_11_053404_add_billing_to_orders_table', 60),
(140, '2022_01_11_234310_add_firebase_toke_to_sellers_table', 60),
(141, '2022_01_16_121801_change_colu_type', 60),
(142, '2022_01_22_101601_change_cart_col_type', 61),
(143, '2022_01_23_031359_add_column_to_orders_table', 61),
(144, '2022_01_28_235054_add_status_to_admins_table', 61),
(145, '2022_02_01_214654_add_pos_status_to_sellers_table', 61),
(146, '2019_12_14_000001_create_personal_access_tokens_table', 62),
(147, '2022_02_11_225355_add_checked_to_orders_table', 62),
(148, '2022_02_14_114359_create_refund_requests_table', 62),
(149, '2022_02_14_115757_add_refund_request_to_order_details_table', 62),
(150, '2022_02_15_092604_add_order_details_id_to_transactions_table', 62),
(151, '2022_02_15_121410_create_refund_transactions_table', 62),
(152, '2022_02_24_091236_add_multiple_column_to_refund_requests_table', 62),
(153, '2022_02_24_103827_create_refund_statuses_table', 62),
(154, '2022_03_01_121420_add_refund_id_to_refund_transactions_table', 62),
(155, '2022_03_10_091943_add_priority_to_categories_table', 63),
(156, '2022_03_13_111914_create_shipping_types_table', 63),
(157, '2022_03_13_121514_create_category_shipping_costs_table', 63),
(158, '2022_03_14_074413_add_four_column_to_products_table', 63),
(159, '2022_03_15_105838_add_shipping_to_carts_table', 63),
(160, '2022_03_16_070327_add_shipping_type_to_orders_table', 63),
(161, '2022_03_17_070200_add_delivery_info_to_orders_table', 63),
(162, '2022_03_18_143339_add_shipping_type_to_carts_table', 63),
(163, '2022_04_06_020313_create_subscriptions_table', 64),
(164, '2022_04_12_233704_change_column_to_products_table', 64),
(165, '2022_04_19_095926_create_jobs_table', 64),
(166, '2022_05_12_104247_create_wallet_transactions_table', 65),
(167, '2022_05_12_104511_add_two_column_to_users_table', 65),
(168, '2022_05_14_063309_create_loyalty_point_transactions_table', 65),
(169, '2022_05_26_044016_add_user_type_to_password_resets_table', 65),
(170, '2022_04_15_235820_add_provider', 66),
(171, '2022_07_21_101659_add_code_to_products_table', 66),
(172, '2022_07_26_103744_add_notification_count_to_notifications_table', 66),
(173, '2022_07_31_031541_add_minimum_order_qty_to_products_table', 66),
(174, '2022_08_11_172839_add_product_type_and_digital_product_type_and_digital_file_ready_to_products', 67),
(175, '2022_08_11_173941_add_product_type_and_digital_product_type_and_digital_file_to_order_details', 67),
(176, '2022_08_20_094225_add_product_type_and_digital_product_type_and_digital_file_ready_to_carts_table', 67),
(177, '2022_10_04_160234_add_banking_columns_to_delivery_men_table', 68),
(178, '2022_10_04_161339_create_deliveryman_wallets_table', 68),
(179, '2022_10_04_184506_add_deliverymanid_column_to_withdraw_requests_table', 68),
(180, '2022_10_11_103011_add_deliverymans_columns_to_chattings_table', 68),
(181, '2022_10_11_144902_add_deliverman_id_cloumn_to_reviews_table', 68),
(182, '2022_10_17_114744_create_order_status_histories_table', 68),
(183, '2022_10_17_120840_create_order_expected_delivery_histories_table', 68),
(184, '2022_10_18_084245_add_deliveryman_charge_and_expected_delivery_date', 68),
(185, '2022_10_18_130938_create_delivery_zip_codes_table', 68),
(186, '2022_10_18_130956_create_delivery_country_codes_table', 68),
(187, '2022_10_20_164712_create_delivery_man_transactions_table', 68),
(188, '2022_10_27_145604_create_emergency_contacts_table', 68),
(189, '2022_10_29_182930_add_is_pause_cause_to_orders_table', 68),
(190, '2022_10_31_150604_add_address_phone_country_code_column_to_delivery_men_table', 68),
(191, '2022_11_05_185726_add_order_id_to_reviews_table', 68),
(192, '2022_11_07_190749_create_deliveryman_notifications_table', 68),
(193, '2022_11_08_132745_change_transaction_note_type_to_withdraw_requests_table', 68),
(194, '2022_11_10_193747_chenge_order_amount_seller_amount_admin_commission_delivery_charge_tax_toorder_transactions_table', 68),
(195, '2022_12_17_035723_few_field_add_to_coupons_table', 69),
(196, '2022_12_26_231606_add_coupon_discount_bearer_and_admin_commission_to_orders', 69),
(197, '2023_01_04_003034_alter_billing_addresses_change_zip', 69),
(198, '2023_01_05_121600_change_id_to_transactions_table', 69),
(199, '2023_02_02_113330_create_product_tag_table', 70),
(200, '2023_02_02_114518_create_tags_table', 70),
(201, '2023_02_02_152248_add_tax_model_to_products_table', 70),
(202, '2023_02_02_152718_add_tax_model_to_order_details_table', 70),
(203, '2023_02_02_171034_add_tax_type_to_carts', 70),
(204, '2023_02_06_124447_add_color_image_column_to_products_table', 70),
(205, '2023_02_07_120136_create_withdrawal_methods_table', 70),
(206, '2023_02_07_175939_add_withdrawal_method_id_and_withdrawal_method_fields_to_withdraw_requests_table', 70),
(207, '2023_02_08_143314_add_vacation_start_and_vacation_end_and_vacation_not_column_to_shops_table', 70),
(208, '2023_02_09_104656_add_payment_by_and_payment_not_to_orders_table', 70),
(209, '2023_03_27_150723_add_expires_at_to_phone_or_email_verifications', 71),
(210, '2023_04_17_095721_create_shop_followers_table', 71),
(211, '2023_04_17_111249_add_bottom_banner_to_shops_table', 71),
(212, '2023_04_20_125423_create_product_compares_table', 71),
(213, '2023_04_30_165642_add_category_sub_category_and_sub_sub_category_add_in_product_table', 71),
(214, '2023_05_16_131006_add_expires_at_to_password_resets', 71),
(215, '2023_05_17_044243_add_visit_count_to_tags_table', 71),
(216, '2023_05_18_000403_add_title_and_subtitle_and_background_color_and_button_text_to_banners_table', 71),
(217, '2023_05_21_111300_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_users_table', 71),
(218, '2023_05_21_111600_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_phone_or_email_verifications_table', 71),
(219, '2023_05_21_112215_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_password_resets_table', 71),
(220, '2023_06_04_210726_attachment_lenght_change_to_reviews_table', 71);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `notification_count` int(11) NOT NULL DEFAULT 0,
  `image` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `description`, `notification_count`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chào mừng bạn đến với TX', 'Chào mừng bạn đến với TX', 1, 'null', 1, '2024-06-21 05:09:27', '2024-06-21 05:09:27'),
(2, 'HELLO ! TX LÀ ỨNG DỤNG THƯƠNG MẠI ĐIỆN TỬ NEW', 'HELLO ! TX LÀ ỨNG DỤNG THƯƠNG MẠI ĐIỆN TỬ NEW', 1, 'null', 1, '2024-06-21 05:10:14', '2024-06-21 05:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0b5d65cc56064e9e78e2a7b137599465475224ea451aa414b33492cf2992d1b1e8f09f9f9a103955', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-20 17:01:53', '2024-06-20 17:01:53', '2025-06-21 00:01:53'),
('2b7cef08078be6ffd15aa7f130c55bac068670f5ed243d70bac95500071fb599a8c66fe75e491ea2', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-27 07:37:23', '2024-06-27 07:37:23', '2025-06-27 14:37:23'),
('33460f08beebf92f80eef099ec844c7815f94b046b2769b8810f5adca8ef37ccd0db5890f8c28b7d', 5, 1, 'LaravelAuthApp', '[]', 0, '2024-06-20 11:58:08', '2024-06-20 11:58:08', '2025-06-20 18:58:08'),
('399deb786a36d810f27c2537f2ce17db80d167d62e112abca959388849fa13e1dfeec72e43ae81cd', 3, 1, 'LaravelAuthApp', '[]', 0, '2024-06-19 11:59:50', '2024-06-19 11:59:50', '2025-06-19 18:59:50'),
('41009f9e5efc5a4d54ffd3bfe73d19bb85c9b036f1f25385e254a19fce67c5a0765f625eb9ee955c', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-21 04:43:45', '2024-06-21 04:43:45', '2025-06-21 11:43:45'),
('44989ced64ff2bc125f08d7d56006be94d9a78cc536af97e5cc0c62646eec1140c159a41a3e76810', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-27 04:11:38', '2024-06-27 04:11:38', '2025-06-27 11:11:38'),
('45551f1d0944ba74ddd1520f5ffa538defa0ce912164735f92b8f94ce531e48dde5748b961616998', 4, 1, 'LaravelAuthApp', '[]', 0, '2024-06-19 15:40:01', '2024-06-19 15:40:01', '2025-06-19 22:40:01'),
('4e3423352d0a7a0f70575fe20629153809fd83f8edc413df26065f644a91a5e0d702c300097c2cc6', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-27 16:01:52', '2024-06-27 16:01:52', '2025-06-27 23:01:52'),
('6840b7d4ed685bf2e0dc593affa0bd3b968065f47cc226d39ab09f1422b5a1d9666601f3f60a79c1', 98, 1, 'LaravelAuthApp', '[]', 1, '2021-07-05 09:25:41', '2021-07-05 09:25:41', '2022-07-05 15:25:41'),
('78f5004cbdc05dc1a5805f829196c000e67404e721dc5eee066ea88afad0aa04e2674a2446568f2e', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-24 14:10:48', '2024-06-24 14:10:48', '2025-06-24 21:10:48'),
('8e7d118c420ad93ae38056b8d0e48a07839699b71e4737da452bbca719b70bc67d7353b3a6adebdd', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-27 08:27:07', '2024-06-27 08:27:07', '2025-06-27 15:27:07'),
('91461b6415bb8be84575d0f116226488e2a248825c7a41e1ac32a3e6ad177e424d788e9bbab58ee0', 2, 1, 'LaravelAuthApp', '[]', 0, '2024-06-19 09:50:51', '2024-06-19 09:50:51', '2025-06-19 16:50:51'),
('9fc18957d3a917afbf1ef3c3d2d04cefd345d4e9265af99b728d3dabffc74b23e6c5e749cb6244ef', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-21 21:21:09', '2024-06-21 21:21:09', '2025-06-22 04:21:09'),
('a032b83dd40ba36954255bb5eac99e64ca23d8eae72cb8165d59cba6ed54b215c12735d39dc2d199', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-21 11:16:45', '2024-06-21 11:16:45', '2025-06-21 18:16:45'),
('a745231f8ab98ad160f47cd6e2300eb313b73dcde20b45be7b5a0f3588688e603d9816da93fda64e', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-28 17:16:15', '2024-06-28 17:16:15', '2025-06-29 00:16:15'),
('a7d88842fee461c8a1d6ddc3f267b12574e4bdf1cbca7cf1d6d5a66776fd7800ae1ac31185b232c3', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-25 10:25:09', '2024-06-25 10:25:09', '2025-06-25 17:25:09'),
('b4c8e25bd86e1ac565ee2b835b82b214d5f5328d417bfc965c7f363a3bfd5fae1ec7969d7e0c5ae1', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-21 05:07:32', '2024-06-21 05:07:32', '2025-06-21 12:07:32'),
('c42cdd5ae652b8b2cbac4f2f4b496e889e1a803b08672954c8bbe06722b54160e71dce3e02331544', 98, 1, 'LaravelAuthApp', '[]', 1, '2021-07-05 09:24:36', '2021-07-05 09:24:36', '2022-07-05 15:24:36'),
('d228e094e14c264f68912b4e129c1fddba99cd9712c2f02883f7652a8cb8fe805c9f35d63b275f62', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-07-10 06:00:02', '2024-07-10 06:00:02', '2025-07-10 13:00:02'),
('f85ed9946859f3a93f9d804bd78e14fef2ea9caa59d52ced5354dd8871a7f234dd4befc11c61d856', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-28 17:19:08', '2024-06-28 17:19:08', '2025-06-29 00:19:08'),
('fafa28c95c116c526fc2c36788b79acb866be22582f5a2c1758f5896739b5182db9cb55e280ce4e6', 6, 1, 'LaravelAuthApp', '[]', 0, '2024-06-20 17:01:12', '2024-06-20 17:01:12', '2025-06-21 00:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
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
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) NOT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`, `provider`) VALUES
(1, NULL, '6amtech', 'GEUx5tqkviM6AAQcz4oi1dcm1KtRdJPgw41lj0eI', 'http://localhost', 1, 0, 0, '2020-10-21 18:27:22', '2020-10-21 18:27:22', NULL);

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

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-21 18:27:23', '2020-10-21 18:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(15) DEFAULT NULL,
  `customer_type` varchar(10) DEFAULT NULL,
  `payment_status` varchar(15) NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(50) NOT NULL DEFAULT 'pending',
  `payment_method` varchar(100) DEFAULT NULL,
  `transaction_ref` varchar(30) DEFAULT NULL,
  `payment_by` varchar(191) DEFAULT NULL,
  `payment_note` text DEFAULT NULL,
  `order_amount` double NOT NULL DEFAULT 0,
  `admin_commission` decimal(8,2) NOT NULL DEFAULT 0.00,
  `is_pause` varchar(20) NOT NULL DEFAULT '0',
  `cause` varchar(191) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_amount` double NOT NULL DEFAULT 0,
  `discount_type` varchar(30) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `coupon_discount_bearer` varchar(191) NOT NULL DEFAULT 'inhouse',
  `shipping_method_id` bigint(20) NOT NULL DEFAULT 0,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `order_group_id` varchar(191) NOT NULL DEFAULT 'def-order-group',
  `verification_code` varchar(191) NOT NULL DEFAULT '0',
  `seller_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) DEFAULT NULL,
  `shipping_address_data` text DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `deliveryman_charge` double NOT NULL DEFAULT 0,
  `expected_delivery_date` date DEFAULT NULL,
  `order_note` text DEFAULT NULL,
  `billing_address` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_address_data` text DEFAULT NULL,
  `order_type` varchar(191) NOT NULL DEFAULT 'default_type',
  `extra_discount` double(8,2) NOT NULL DEFAULT 0.00,
  `extra_discount_type` varchar(191) DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_type` varchar(191) DEFAULT NULL,
  `delivery_type` varchar(191) DEFAULT NULL,
  `delivery_service_name` varchar(191) DEFAULT NULL,
  `third_party_delivery_tracking_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `customer_type`, `payment_status`, `order_status`, `payment_method`, `transaction_ref`, `payment_by`, `payment_note`, `order_amount`, `admin_commission`, `is_pause`, `cause`, `shipping_address`, `created_at`, `updated_at`, `discount_amount`, `discount_type`, `coupon_code`, `coupon_discount_bearer`, `shipping_method_id`, `shipping_cost`, `order_group_id`, `verification_code`, `seller_id`, `seller_is`, `shipping_address_data`, `delivery_man_id`, `deliveryman_charge`, `expected_delivery_date`, `order_note`, `billing_address`, `billing_address_data`, `order_type`, `extra_discount`, `extra_discount_type`, `checked`, `shipping_type`, `delivery_type`, `delivery_service_name`, `third_party_delivery_tracking_id`) VALUES
(100001, '6', 'customer', 'unpaid', 'pending', 'cash_on_delivery', '', NULL, NULL, 3000005, 0.00, '0', NULL, '1', '2024-06-27 04:26:03', '2024-06-27 04:33:44', 0, NULL, '0', 'inhouse', 2, 5.00, '6-887469-1719465963', '152014', 1, 'admin', '{\"id\":1,\"customer_id\":6,\"contact_person_name\":\"Hanh Nguyen\",\"address_type\":\"Home\",\"address\":\"Ha noi\",\"city\":\"Ha noi\",\"zip\":\"10000\",\"phone\":\"+84987167167\",\"created_at\":\"2024-06-21T09:04:03.000000Z\",\"updated_at\":\"2024-06-21T09:04:03.000000Z\",\"state\":null,\"country\":\"Vietnam\",\"latitude\":\"0.0\",\"longitude\":\"0.0\",\"is_billing\":0}', NULL, 0, NULL, NULL, 2, '{\"id\":2,\"customer_id\":6,\"contact_person_name\":\"Hanh Nguyen\",\"address_type\":\"Home\",\"address\":\"ha noi\",\"city\":\"cau giay\",\"zip\":\"10000\",\"phone\":\"+84987167167\",\"created_at\":\"2024-06-27T05:23:10.000000Z\",\"updated_at\":\"2024-06-27T05:23:10.000000Z\",\"state\":null,\"country\":\"Vietnam\",\"latitude\":\"0.0\",\"longitude\":\"0.0\",\"is_billing\":1}', 'default_type', 0.00, NULL, 1, 'order_wise', NULL, NULL, NULL),
(100002, '7', 'customer', 'paid', 'pending', 'cash_on_delivery', '', NULL, NULL, 1000005, 0.00, '0', NULL, '4', '2024-08-29 09:08:16', '2024-08-29 09:13:41', 0, NULL, '0', 'inhouse', 2, 5.00, '5098-mBl7S-1724926096', '936842', 1, 'admin', '{\"id\":4,\"customer_id\":0,\"contact_person_name\":\"Kh\\u00e1nh \\u0110\\u1eb7ng\",\"address_type\":\"home\",\"address\":\"L\\u1ea1ch Tray\\r\\nL\\u00ea ch\\u00e2n\",\"city\":\"H\\u1ea3i Ph\\u00f2ng\",\"zip\":\"16000\",\"phone\":\"0921705458\",\"created_at\":\"2024-08-29T10:08:14.000000Z\",\"updated_at\":\"2024-08-29T10:08:14.000000Z\",\"state\":null,\"country\":\"Viet Nam\",\"latitude\":\"0\",\"longitude\":\"0\",\"is_billing\":0}', NULL, 0, NULL, NULL, NULL, NULL, 'default_type', 0.00, NULL, 1, 'category_wise', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `digital_file_after_sell` varchar(191) DEFAULT NULL,
  `product_details` text DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `tax_model` varchar(20) NOT NULL DEFAULT 'exclude',
  `delivery_status` varchar(15) NOT NULL DEFAULT 'pending',
  `payment_status` varchar(15) NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_method_id` bigint(20) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `variation` varchar(255) DEFAULT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `is_stock_decreased` tinyint(1) NOT NULL DEFAULT 1,
  `refund_request` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `seller_id`, `digital_file_after_sell`, `product_details`, `qty`, `price`, `tax`, `discount`, `tax_model`, `delivery_status`, `payment_status`, `created_at`, `updated_at`, `shipping_method_id`, `variant`, `variation`, `discount_type`, `is_stock_decreased`, `refund_request`) VALUES
(1, 100001, 3, 1, NULL, '{\"id\":3,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"M\\u00e1y h\\u00fat b\\u1ee5i gi\\u01b0\\u1eddng n\\u1ec7m di\\u1ec7t khu\\u1ea9n UV th\\u1ebf h\\u1ec7 m\\u1edbi JETZT SERIES J7\",\"slug\":\"may-hut-bui-giuong-nem-diet-khuan-uv-the-he-moi-jetzt-series-j7-I7LuzK\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"2\\\",\\\"position\\\":1}]\",\"category_id\":\"2\",\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":2,\"unit\":\"kg\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"2024-04-01-660a43a005870.png\\\"]\",\"color_image\":\"[]\",\"thumbnail\":\"2024-04-01-660a43a008098.png\",\"featured\":1,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":\"0\",\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":1000000,\"purchase_price\":1000000,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":10000,\"minimum_order_qty\":\"2\",\"details\":\"<p>M&Aacute;Y H&Uacute;T B\\u1ee4I GI\\u01af\\u1edcNG N\\u1ec6M DI\\u1ec6T KHU\\u1ea8N \\u0110A T\\u1ea6NG TH\\u1ebe H\\u1ec6 M\\u1edaI JETZT J7<\\/p>\\r\\n\\r\\n<p>M&aacute;y h&uacute;t b\\u1ee5i gi\\u01b0\\u1eddng n\\u1ec7m di\\u1ec7t khu\\u1ea9n UV th\\u1ebf h\\u1ec7 m\\u1edbi JETZT J7 l&agrave; m\\u1ed9t s\\u1ea3n ph\\u1ea9m c&oacute; nhi\\u1ec1u c\\u1ea3i ti\\u1ebfn m\\u1edbi trong d&ograve;ng m&aacute;y h&uacute;t b\\u1ee5i di\\u1ec7t khu\\u1ea9n m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng th\\u1ec3 b\\u1ecf l\\u1ee1.&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/sg-11134202-22100-x0i5bl8t9tiv31\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb6C \\u0110I\\u1ec2M S\\u1ea2N PH\\u1ea8M:&nbsp;<\\/p>\\r\\n\\r\\n<p>1.L\\u1ef0C H&Uacute;T C\\u1ef0C M\\u1ea0NH 18.000PA:&nbsp;<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ea3m b\\u1ea3o h&uacute;t s\\u1ea1ch m\\u1ea1t b\\u1ee5i v&agrave; nhi\\u1ec1u vi khu\\u1ea9n kh\\u1ecfi b\\u1ec1 m\\u1eb7t m\\u1ee5c ti&ecirc;u.<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/sg-11134202-22100-l9xphomthniva6\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p>2. DI\\u1ec6T KHU\\u1ea8N 4 C\\u1ea4P<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/sg-11134202-22100-eqiz2rduhniv07\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/sg-11134202-22100-dut72mduhnivcd\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/sg-11134202-22100-sap3ptduhniva8\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/sg-11134202-22100-9m0y4uduhniv91\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p>- C&Ocirc;NG NGH\\u1ec6 \\u0110&Egrave;N UV DI\\u1ec6T KHU\\u1ea8N M\\u1ea0NH M\\u1ebc V\\u1edaI C\\u01af\\u1edcNG \\u0110\\u1ed8 B\\u1ee8C X\\u1ea0 CAO 18000&micro;w\\/CM&sup2; :<\\/p>\\r\\n\\r\\n<p>Gi&uacute;p cho di\\u1ec7t t&iacute;ch b\\u1ec1 m\\u1eb7t \\u0111\\u01b0\\u1ee3c di\\u1ec7t khu\\u1ea9n nhi\\u1ec1u h\\u01a1n, ti\\u1ebft ki\\u1ec7m th\\u1eddi gian m&agrave; v\\u1eabn \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c hi\\u1ec7u qu\\u1ea3 cao.<\\/p>\\r\\n\\r\\n<p>- \\u0110\\u1ec6M XUNG NGUY&Ecirc;N KH\\u1ed0I M\\u1ea0NH M\\u1ebc : 12.000 NH\\u1ecaP M\\u1ed6I PH&Uacute;T<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ea3m b\\u1ea3o \\u0111&aacute;nh b\\u1eadt m\\u1ea1t n\\u1ec7m b&aacute;m \\u1edf t\\u1ea7ng s&acirc;u b&ecirc;n trong b\\u1ec1 m\\u1eb7t m&agrave; ch\\u1ed5i qu&eacute;t th&ocirc;ng th\\u01b0\\u1eddng kh&ocirc;ng th\\u1ec3 ch\\u1ea1m t\\u1edbi.<\\/p>\\r\\n\\r\\n<p>-C&Ocirc;NG NGH\\u1ec6 S&Oacute;NG SI&Ecirc;U &Acirc;M&nbsp;<\\/p>\\r\\n\\r\\n<p>C&oacute; t&aacute;c d\\u1ee5ng \\u1ee9c ch\\u1ebf s\\u1ef1 sinh tr\\u01b0\\u1edfng c\\u1ee7a c&aacute;c lo\\u1ea1i ve r\\u1ec7p<\\/p>\\r\\n\\r\\n<p>-H\\u1ec6 TH\\u1ed0NG S\\u1ea4Y NHI\\u1ec6T 60&deg;C:<\\/p>\\r\\n\\r\\n<p>T\\u0103ng c\\u01b0\\u1eddng ti&ecirc;u di\\u1ec7t vi khu\\u1ea9n, \\u0111\\u1ed3ng th\\u1eddi gi\\u1eef cho b\\u1ec1 m\\u1eb7t \\u0111\\u01b0\\u1ee3c kh&ocirc; tho&aacute;ng, tr&aacute;nh \\u1ea9m m\\u1ed1c.<\\/p>\\r\\n\\r\\n<p>3. L\\u1eccC B\\u1ee4I 6 C\\u1ea4P NH\\u1edc H\\u1ec6 TH\\u1ed0NG L\\u1eccC \\u0110A T\\u1ea6NG N&Acirc;NG CAO:&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/sg-11134202-22100-cq3asn4uhnivd4\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/vn-11134208-7r98o-lnh2to1raq9md0\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/vn-11134208-7r98o-lnh2to1rc4u201\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>B\\u01b0\\u1edbc 1: Kh&ocirc;ng kh&iacute; c&ugrave;ng c&aacute;c lo\\u1ea1i b\\u1ee5i b\\u1ea9n \\u0111\\u01b0\\u1ee3c h&uacute;t v&agrave;o c\\u1ed1c ch\\u1ee9a b\\u1ee5i,<\\/p>\\r\\n\\r\\n<p>B\\u01b0\\u1ee3c 2: C&aacute;c lo\\u1ea1i b\\u1ee5i l\\u1edbn s\\u1ebd \\u0111\\u01b0\\u1ee3c l\\u1ecdc \\u1edf l\\u1ea1i c\\u1ed1c ch\\u1ee9a b\\u1ee5i qua b\\u01b0\\u1edbc l\\u1ecdc ph\\u1ec5u chuy&ecirc;n d\\u1ee5ng&nbsp;<\\/p>\\r\\n\\r\\n<p>B\\u01b0\\u1edbc 3: C&aacute;c lo\\u1ea1i b\\u1ee5i m\\u1ea1t nh\\u1ecf h\\u01a1n sau b\\u01b0\\u1edbc l\\u1ecdc 2 s\\u1ebd \\u0111\\u01b0\\u1ee3c l\\u1ecdc ti\\u1ebfp qua b\\u1ed9 l\\u1ecdc b\\u1eb1ng th&eacute;p kh&ocirc;ng r\\u1ec9<\\/p>\\r\\n\\r\\n<p>B\\u01b0\\u1edbc 4: Nh\\u1edd thi\\u1ebft k\\u1ebf l\\u1ecdc b\\u1ee5i Cyclon \\u1edf b\\u01b0\\u1edbc 4 n&agrave;y m&agrave; h&igrave;nh th&agrave;nh l\\u1ef1c ly t&acirc;m \\u0111\\u1ec3 t&aacute;ch b\\u1ee5i ra kh\\u1ecfi kh&ocirc;ng kh&iacute;.<\\/p>\\r\\n\\r\\n<p>B\\u01b0\\u1edbc 5 : Sau b\\u01b0\\u1edbc l\\u1ecdc th\\u1ee9 4, c&aacute;c lo\\u1ea1i b\\u1ee5i m\\u1ecbn s\\u1ebd b\\u1ecb l\\u1ecdc l\\u1ea1i nh\\u1edd b\\u1ed9 l\\u1ecdc MIF c\\u1ea3i ti\\u1ebfn \\u01b0u vi\\u1ec7t h\\u01a1n b\\u1ed9 l\\u1ecdc Hepa truy\\u1ec1n th\\u1ed1ng<\\/p>\\r\\n\\r\\n<p>B\\u01b0\\u1edbc 6: D&ograve;ng kh&ocirc;ng kh&iacute; s\\u1ea1ch s\\u1ebd sau khi \\u0111&atilde; lo\\u1ea1i b\\u1ecf b\\u1ee5i b\\u1ea9n s\\u1ebd \\u0111\\u01b0\\u1ee3c gia nhi\\u1ec7t 50&deg;C \\u0111\\u1ec3 lo\\u1ea1i b\\u1ecf tri\\u1ec7t \\u0111\\u1ec3 c&aacute;c lo\\u1ea1i vi khu\\u1ea9n c&ograve;n s&oacute;t l\\u1ea1i, tr\\u1ea3 l\\u1ea1i d&ograve;ng kh&ocirc;ng kh&iacute; trong l&agrave;nh cho c\\u0103n ph&ograve;ng.<\\/p>\\r\\n\\r\\n<p>4.C\\u1ea2M BI\\u1ebeN PH&Aacute;T HI\\u1ec6N TH&Ocirc;NG MINH:&nbsp;<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ea3m b\\u1ea3o \\u0111&egrave;n UV t\\u1ef1 \\u0111\\u1ed9ng t\\u1eaft khi \\u0111\\u01b0\\u1ee3c n&acirc;ng l&ecirc;n kh\\u1ecfi b\\u1ec1 m\\u1eb7t \\u0111\\u1ec3 ng\\u0103n tia UV r&ograve; r\\u1ec9.<\\/p>\\r\\n\\r\\n<p>5.D&Acirc;Y \\u0110I\\u1ec6N D&Agrave;I 5 M&Eacute;T:&nbsp;<\\/p>\\r\\n\\r\\n<p>\\u0110em l\\u1ea1i d&ograve;ng \\u0111i\\u1ec7n kh\\u1ecfe v&agrave; \\u1ed5n \\u0111\\u1ecbnh, Thu\\u1eadn ti\\u1ec7n cho vi\\u1ec7c di chuy\\u1ec3n m&aacute;y h&uacute;t b\\u1ee5i \\u0111\\u1ebfn m\\u1ecdi n\\u01a1i b\\u1ea1n mu\\u1ed1n l&agrave;m s\\u1ea1ch.<\\/p>\\r\\n\\r\\n<p>&nbsp;TH&Ocirc;NG S\\u1ed0 K\\u0128 THU\\u1eacT S\\u1ea2N PH\\u1ea8M:<\\/p>\\r\\n\\r\\n<p>- \\u0110&egrave;n UV: 12W , C\\u01b0\\u1eddng \\u0111\\u1ed9 b\\u1ee9c x\\u1ea1 18000&micro;w\\/CM&sup2;<\\/p>\\r\\n\\r\\n<p>- \\u0110i\\u1ec7n &aacute;p: 220V ~ 240V<\\/p>\\r\\n\\r\\n<p>- C&ocirc;ng su\\u1ea5t h&uacute;t: 18000PA.<\\/p>\\r\\n\\r\\n<p>- \\u0110\\u1ec7m xung : 12.000 BPM<\\/p>\\r\\n\\r\\n<p>- Chi\\u1ec1u d&agrave;i d&acirc;y: 5 m&eacute;t<\\/p>\\r\\n\\r\\n<p>- Dung t&iacute;ch b\\u1ee5i: 0.6L.<\\/p>\\r\\n\\r\\n<p>- \\u0110\\u1ed9 \\u1ed3n : &le;78dBA<\\/p>\\r\\n\\r\\n<p>- C&ocirc;ng su\\u1ea5t \\u0111\\u1ecbnh m\\u1ee9c: 600W<\\/p>\\r\\n\\r\\n<p>S\\u1ea3n ph\\u1ea9m \\u0111\\u01b0\\u1ee3c trang b\\u1ecb h\\u1ec7 th\\u1ed1ng c\\u1ea3m bi\\u1ebfn t\\u1ef1 ng\\u1eaft \\u0111\\u1ec3 b\\u1ea3o v\\u1ec7 \\u0111\\u1ed9ng c\\u01a1 khi qu&aacute; nhi\\u1ec7t. Th\\u1eddi gian s\\u1eed d\\u1ee5ng t\\u1ed1t nh\\u1ea5t cho m&aacute;y l&agrave; li&ecirc;n t\\u1ee5c t\\u1ed1i \\u0111a 10 ph&uacute;t, m&aacute;y \\u0111\\u01b0\\u1ee3c trang b\\u1ecb c\\u01a1 ch\\u1ebf t\\u1ef1 ng\\u1eaft khi ph&aacute;t hi\\u1ec7n \\u0111\\u1ed9ng c\\u01a1 qu&aacute; nhi\\u1ec7t.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;CH&Iacute;NH S&Aacute;CH B\\u1ea2O H&Agrave;NH:<\\/p>\\r\\n\\r\\n<p>- B\\u1ea3o h&agrave;nh c&oacute; gi\\u1edbi h\\u1ea1n 1 n\\u0103m cho \\u0111\\u1ed9ng c\\u01a1, 6 th&aacute;ng v\\u1edbi pin<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/vn-11134208-7r98o-lmsg5v9p0grj54\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>TH&Ocirc;NG TIN XU\\u1ea4T X\\u1ee8 S\\u1ea2N PH\\u1ea8M:<\\/p>\\r\\n\\r\\n<p>\\u0110\\u01a1n v\\u1ecb thi\\u1ebft k\\u1ebf v&agrave; ch\\u1ecbu tr&aacute;ch nhi\\u1ec7m ch\\u1ea5t l\\u01b0\\u1ee3ng: JETZT Techonology Innovation PTE.,LTD ( Singapore)<\\/p>\\r\\n\\r\\n<p>Hotline: 0356.153.376<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>#mayhutbui #mayhuibuigiuong #mayhutbuinem #mayhutbuimini #mayhutbuicamtay #maybutbuithongminh #mayhutbuigiadinh #mayhutbuinho<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2024-04-01T05:18:24.000000Z\",\"updated_at\":\"2024-06-21T06:12:40.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":\"2024-04-01-660a43a008358.png\",\"request_status\":\"1\",\"denied_note\":null,\"shipping_cost\":1,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"148293\",\"reviews_count\":\"0\",\"translations\":[],\"reviews\":[]}', 2, 1000000, 0, 0, 'include', 'pending', 'unpaid', '2024-06-27 04:26:03', '2024-06-27 04:26:03', NULL, '', '[]', 'discount_on_product', 1, 0),
(2, 100001, 2, 1, NULL, '{\"id\":2,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Qu\\u1ea7n \\u0111\\u0169i \\u1ed1ng r\\u1ed9ng CUNA qu\\u1ea7n d\\u00e0i nam n\\u1eef ch\\u1ea5t linen cao c\\u1ea5p \\u1ed1ng su\\u00f4ng r\\u1ed9ng m\\u1eb7c nh\\u00e0\",\"slug\":\"quan-dui-ong-rong-cuna-quan-dai-nam-nu-chat-linen-cao-cap-ong-suong-rong-mac-nha-di-choi-che-khuyet-diem-hack-dang-4-mua\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"category_id\":\"1\",\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":1,\"unit\":\"kg\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"2024-04-01-660a42bbc5658.png\\\"]\",\"color_image\":\"[]\",\"thumbnail\":\"2024-04-01-660a42bbc6499.png\",\"featured\":1,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":\"0\",\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":1000000,\"purchase_price\":2000000,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":10000,\"minimum_order_qty\":\"1\",\"details\":\"<p>Qu\\u1ea7n \\u0111\\u0169i \\u1ed1ng r\\u1ed9ng CUNA qu\\u1ea7n d&agrave;i nam, qu\\u1ea7n d&agrave;i n\\u1eef, qu\\u1ea7n \\u0111\\u0169i nam, qu\\u1ea7n d&agrave;i \\u0111\\u0169i nam, qu\\u1ea7n \\u0111\\u0169i n\\u1eef, qu\\u1ea7n m\\u1eb7c nh&agrave; ch\\u1ea5t linen cao c\\u1ea5p qu\\u1ea7n \\u1ed1ng su&ocirc;ng r\\u1ed9ng m\\u1eb7c nh&agrave; \\u0111i ch\\u01a1i che khuy\\u1ebft \\u0111i\\u1ec3m hack d&aacute;ng ph&ugrave; h\\u1ee3p 4 m&ugrave;a Xu&acirc;n _ H\\u1ea1 _ Thu _ \\u0110&ocirc;ng. [H&Agrave;NG LO\\u1ea0I 1]<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\u26a0\\ufe0f L\\u01afU &Yacute; \\u26a0\\ufe0f S\\u1ea3n ph\\u1ea9m shop \\u0111\\u1ec1u ch\\u1ec9 b&aacute;n h&agrave;ng lo\\u1ea1i 1 qu\\u1ea7n \\u0111\\u0169i \\u1ed1ng r\\u1ed9ng nam n\\u1eef ch\\u1ea5t v\\u1ea3i s\\u1ee3 Linen cao c\\u1ea5p \\u0111\\u1ea1t ti&ecirc;u chu\\u1ea9n xu\\u1ea5t nh\\u1eadp kh\\u1ea9u tr&aacute;nh nh\\u1ea7m l\\u1eabn v\\u1edbi c&aacute;c h&agrave;ng lo\\u1ea1i 2, lo\\u1ea1i 3 gi&aacute; r\\u1ebb nh&aacute;i m\\u1eabu tr&agrave;n lan ngo&agrave;i th\\u1ecb tr\\u01b0\\u1eddng ch\\u1ea5t l\\u01b0\\u1ee3ng k&eacute;m nhanh bai gi&atilde;o, x&ugrave; l&ocirc;ng x&ugrave; ch\\u1ec9 bai m&agrave;u,..qu\\u1ea7n d&agrave;i nam n\\u1eef<\\/p>\\r\\n\\r\\n<p>#quanduinam #quanduiongrong #qu\\u1ea7n_\\u0111\\u0169i_\\u1ed1ng_r\\u1ed9ng #quanduinu #qu\\u1ea7n_\\u0111\\u0169i_\\u1ed1ng_su&ocirc;ng<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/vn-11134208-7r98o-ltc98barns1w37\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p>#qu\\u1ea7n_\\u0111\\u0169i_\\u1ed1ng_r\\u1ed9ng #qu\\u1ea7n_\\u0111\\u0169i_nam #qu\\u1ea7n_\\u0111\\u0169i_n\\u1eef #quandainam #quandainu<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\ud83c\\udf08 QU\\u1ea6N \\u0110\\u0168I \\u1ed0NG R\\u1ed8NG NAM N\\u1eee THI\\u1ebeT K\\u1ebe M\\u1edaI HOTTREND 2024<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f Ch\\u1ea5t Li\\u1ec7u: V\\u1ea3i s\\u1ee3 linen cao c\\u1ea5p c&oacute; t&iacute;nh b\\u1ec1n b\\u1ec9 cao, m\\u1ec1m m\\u1ecbn tho\\u1ea3i m&aacute;i, ch\\u1ecbu nhi\\u1ec7t c\\u1ef1c t\\u1ed1t,...qu\\u1ea7n \\u0111\\u0169i \\u1ed1ng r\\u1ed9ng nam n\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f Ki\\u1ec3u d&aacute;ng: Qu\\u1ea7n \\u0111\\u0169i nam n\\u1eef thi\\u1ebft k\\u1ebf form r\\u1ed9ng su&ocirc;ng tr\\u1ebb trung c&aacute; t&iacute;nh, \\u0111\\u1eb7c bi\\u1ec7t che khuy\\u1ec3n \\u0111i\\u1ec3m ch&acirc;n v&agrave; hack d&aacute;ng,.. qu\\u1ea7n d&agrave;i nam n\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f Thi\\u1ebft K\\u1ebf \\u0110\\u1ed9c \\u0110&aacute;o: Ch\\u1ea1y \\u0111\\u01b0\\u1eddng line c\\u1ea1p qu\\u1ea7n, form d&aacute;ng H&agrave;n Qu\\u1ed1c tr\\u1ebb trung c&aacute; t&iacute;nh, c\\u1ef1c tho\\u1ea3i m&aacute;i cho m\\u1ecdi ho\\u1ea1t \\u0111\\u1ed9ng, m\\u1eb7c 4 m&ugrave;a,. qu\\u1ea7n nam, qu\\u1ea7n n\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f M&agrave;u s\\u1eafc: C\\u1ef1c Basic r\\u1ea5t d\\u1ec5 ph\\u1ed1i \\u0111\\u1ed3: Tr\\u1eafng, \\u0110en, N&acirc;u, Be qu\\u1ea7n \\u1ed1ng su&ocirc;ng, qu\\u1ea7n \\u1ed1ng r\\u1ed9ng nam n\\u1eef<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f H\\u01af\\u1edaNG D\\u1eaaN CH\\u1eccN SIZE: Qu\\u1ea7n D&agrave;i Nam N\\u1eef \\u1ed0ng Su&ocirc;ng R\\u1ed9ng 4 M&ugrave;a Xu&acirc;n_H\\u1ea1_Thu_\\u0110&ocirc;ng<\\/p>\\r\\n\\r\\n<p>(CUNA thi\\u1ebft k\\u1ebf chu\\u1ea9n form d&aacute;ng ng\\u01b0\\u1eddi Vi\\u1ec7t, Th&ocirc;ng s\\u1ed1 chi ti\\u1ebft tham kh\\u1ea3o ph\\u1ea7n h&igrave;nh \\u1ea3nh qu\\u1ea7n \\u0111\\u0169i nam, qu\\u1ea7n \\u0111\\u0169i n\\u1eef)<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/vn-11134208-7r98o-ltc98barp6mc53\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p>#quanduiongrong #qu\\u1ea7n_\\u0111\\u0169i_\\u1ed1ng_r\\u1ed9ng #qu\\u1ea7n_\\u0111\\u0169i_nam #qu\\u1ea7n_v\\u1ea3i_\\u0111\\u0169i #qu\\u1ea7n_\\u0111\\u0169i #quandainam<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\ud83c\\udf1f SHOP CAM K\\u1ebeT S\\u1ea2N PH\\u1ea8M \\u0110&Uacute;NG M&Ocirc; T\\u1ea2 H&Igrave;NH \\u1ea2NH CH\\u1ee4P TH\\u1eacT V&Agrave; CH&Iacute;NH S&Aacute;CH B\\u1ea2O H&Agrave;NH T\\u1ed0T NH\\u1ea4T TH\\u1eca TR\\u01af\\u1edcNG<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f Qu\\u1ea7n \\u0110\\u0169i \\u1ed0ng R\\u1ed9ng Nam N\\u1eef chu\\u1ea9n lo\\u1ea1i 1, h&igrave;nh \\u1ea3nh video th\\u1eadt c\\u1ee7a shop (\\u0111&atilde; c&oacute; 1 s\\u1ed1 b&ecirc;n l\\u1ea5y c\\u1eafp h&igrave;nh \\u1ea3nh nh&aacute;i m\\u1eabu m&atilde; h&agrave;ng lo\\u1ea1i 2, 3 k&eacute;m ch\\u1ea5t l\\u01b0\\u1ee3ng)<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f \\u0110\\u1ed5i tr\\u1ea3 ho&agrave;n ti\\u1ec1n mi\\u1ec5n ph&iacute; v\\u1edbi b\\u1ea5t k\\u1ef3 l\\u1ed7i l\\u1ea7m g&igrave; t\\u1eeb shop v&agrave; s\\u1ea3n ph\\u1ea9m qu\\u1ea7n d&agrave;i nam, qu\\u1ea7n d&agrave;i n\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f T\\u01b0 v\\u1ea5n h\\u1ed7 tr\\u1ee3 nhanh ch&oacute;ng mi\\u1ec5n ph&iacute; 24\\/24, qu\\u1ea7n \\u1ed1ng r\\u1ed9ng nam n\\u1eef<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>#qu\\u1ea7n_\\u0111\\u0169i_\\u1ed1ng_r\\u1ed9ng #quanduiongrong #quanduinam #quanduinu #quandainam #quandainu #quanduinu #qu\\u1ea7n_\\u0111\\u0169i_n\\u1eef #quanduidainam #quanduidainu #quannam #quannu #vaidui #v\\u1ea3i_\\u0111\\u0169i #quanongrong #quanongsuong #quanongxuong #quanongsuongnam #quanongsuongnu #cuna #shopcuna<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2024-04-01T05:14:35.000000Z\",\"updated_at\":\"2024-06-21T06:14:42.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":\"2024-04-01-660a42bbc6729.png\",\"request_status\":\"1\",\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"142486\",\"reviews_count\":\"0\",\"translations\":[],\"reviews\":[]}', 1, 1000000, 0, 0, 'include', 'pending', 'unpaid', '2024-06-27 04:26:03', '2024-06-27 04:26:03', NULL, '', '[]', 'discount_on_product', 1, 0),
(3, 100002, 2, 1, NULL, '{\"id\":2,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Qu\\u1ea7n \\u0111\\u0169i \\u1ed1ng r\\u1ed9ng CUNA qu\\u1ea7n d\\u00e0i nam n\\u1eef ch\\u1ea5t linen cao c\\u1ea5p \\u1ed1ng su\\u00f4ng r\\u1ed9ng m\\u1eb7c nh\\u00e0\",\"slug\":\"quan-dui-ong-rong-cuna-quan-dai-nam-nu-chat-linen-cao-cap-ong-suong-rong-mac-nha-di-choi-che-khuyet-diem-hack-dang-4-mua\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"category_id\":\"1\",\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":1,\"unit\":\"kg\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"2024-04-01-660a42bbc5658.png\\\"]\",\"color_image\":\"[]\",\"thumbnail\":\"2024-04-01-660a42bbc6499.png\",\"featured\":1,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":\"0\",\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":1000000,\"purchase_price\":2000000,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":9999,\"minimum_order_qty\":\"1\",\"details\":\"<p>Qu\\u1ea7n \\u0111\\u0169i \\u1ed1ng r\\u1ed9ng CUNA qu\\u1ea7n d&agrave;i nam, qu\\u1ea7n d&agrave;i n\\u1eef, qu\\u1ea7n \\u0111\\u0169i nam, qu\\u1ea7n d&agrave;i \\u0111\\u0169i nam, qu\\u1ea7n \\u0111\\u0169i n\\u1eef, qu\\u1ea7n m\\u1eb7c nh&agrave; ch\\u1ea5t linen cao c\\u1ea5p qu\\u1ea7n \\u1ed1ng su&ocirc;ng r\\u1ed9ng m\\u1eb7c nh&agrave; \\u0111i ch\\u01a1i che khuy\\u1ebft \\u0111i\\u1ec3m hack d&aacute;ng ph&ugrave; h\\u1ee3p 4 m&ugrave;a Xu&acirc;n _ H\\u1ea1 _ Thu _ \\u0110&ocirc;ng. [H&Agrave;NG LO\\u1ea0I 1]<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\u26a0\\ufe0f L\\u01afU &Yacute; \\u26a0\\ufe0f S\\u1ea3n ph\\u1ea9m shop \\u0111\\u1ec1u ch\\u1ec9 b&aacute;n h&agrave;ng lo\\u1ea1i 1 qu\\u1ea7n \\u0111\\u0169i \\u1ed1ng r\\u1ed9ng nam n\\u1eef ch\\u1ea5t v\\u1ea3i s\\u1ee3 Linen cao c\\u1ea5p \\u0111\\u1ea1t ti&ecirc;u chu\\u1ea9n xu\\u1ea5t nh\\u1eadp kh\\u1ea9u tr&aacute;nh nh\\u1ea7m l\\u1eabn v\\u1edbi c&aacute;c h&agrave;ng lo\\u1ea1i 2, lo\\u1ea1i 3 gi&aacute; r\\u1ebb nh&aacute;i m\\u1eabu tr&agrave;n lan ngo&agrave;i th\\u1ecb tr\\u01b0\\u1eddng ch\\u1ea5t l\\u01b0\\u1ee3ng k&eacute;m nhanh bai gi&atilde;o, x&ugrave; l&ocirc;ng x&ugrave; ch\\u1ec9 bai m&agrave;u,..qu\\u1ea7n d&agrave;i nam n\\u1eef<\\/p>\\r\\n\\r\\n<p>#quanduinam #quanduiongrong #qu\\u1ea7n_\\u0111\\u0169i_\\u1ed1ng_r\\u1ed9ng #quanduinu #qu\\u1ea7n_\\u0111\\u0169i_\\u1ed1ng_su&ocirc;ng<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/vn-11134208-7r98o-ltc98barns1w37\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p>#qu\\u1ea7n_\\u0111\\u0169i_\\u1ed1ng_r\\u1ed9ng #qu\\u1ea7n_\\u0111\\u0169i_nam #qu\\u1ea7n_\\u0111\\u0169i_n\\u1eef #quandainam #quandainu<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\ud83c\\udf08 QU\\u1ea6N \\u0110\\u0168I \\u1ed0NG R\\u1ed8NG NAM N\\u1eee THI\\u1ebeT K\\u1ebe M\\u1edaI HOTTREND 2024<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f Ch\\u1ea5t Li\\u1ec7u: V\\u1ea3i s\\u1ee3 linen cao c\\u1ea5p c&oacute; t&iacute;nh b\\u1ec1n b\\u1ec9 cao, m\\u1ec1m m\\u1ecbn tho\\u1ea3i m&aacute;i, ch\\u1ecbu nhi\\u1ec7t c\\u1ef1c t\\u1ed1t,...qu\\u1ea7n \\u0111\\u0169i \\u1ed1ng r\\u1ed9ng nam n\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f Ki\\u1ec3u d&aacute;ng: Qu\\u1ea7n \\u0111\\u0169i nam n\\u1eef thi\\u1ebft k\\u1ebf form r\\u1ed9ng su&ocirc;ng tr\\u1ebb trung c&aacute; t&iacute;nh, \\u0111\\u1eb7c bi\\u1ec7t che khuy\\u1ec3n \\u0111i\\u1ec3m ch&acirc;n v&agrave; hack d&aacute;ng,.. qu\\u1ea7n d&agrave;i nam n\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f Thi\\u1ebft K\\u1ebf \\u0110\\u1ed9c \\u0110&aacute;o: Ch\\u1ea1y \\u0111\\u01b0\\u1eddng line c\\u1ea1p qu\\u1ea7n, form d&aacute;ng H&agrave;n Qu\\u1ed1c tr\\u1ebb trung c&aacute; t&iacute;nh, c\\u1ef1c tho\\u1ea3i m&aacute;i cho m\\u1ecdi ho\\u1ea1t \\u0111\\u1ed9ng, m\\u1eb7c 4 m&ugrave;a,. qu\\u1ea7n nam, qu\\u1ea7n n\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f M&agrave;u s\\u1eafc: C\\u1ef1c Basic r\\u1ea5t d\\u1ec5 ph\\u1ed1i \\u0111\\u1ed3: Tr\\u1eafng, \\u0110en, N&acirc;u, Be qu\\u1ea7n \\u1ed1ng su&ocirc;ng, qu\\u1ea7n \\u1ed1ng r\\u1ed9ng nam n\\u1eef<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f H\\u01af\\u1edaNG D\\u1eaaN CH\\u1eccN SIZE: Qu\\u1ea7n D&agrave;i Nam N\\u1eef \\u1ed0ng Su&ocirc;ng R\\u1ed9ng 4 M&ugrave;a Xu&acirc;n_H\\u1ea1_Thu_\\u0110&ocirc;ng<\\/p>\\r\\n\\r\\n<p>(CUNA thi\\u1ebft k\\u1ebf chu\\u1ea9n form d&aacute;ng ng\\u01b0\\u1eddi Vi\\u1ec7t, Th&ocirc;ng s\\u1ed1 chi ti\\u1ebft tham kh\\u1ea3o ph\\u1ea7n h&igrave;nh \\u1ea3nh qu\\u1ea7n \\u0111\\u0169i nam, qu\\u1ea7n \\u0111\\u0169i n\\u1eef)<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/down-vn.img.susercontent.com\\/file\\/vn-11134208-7r98o-ltc98barp6mc53\\\" style=\\\"height:invalid-value; width:invalid-value\\\" \\/><\\/p>\\r\\n\\r\\n<p>#quanduiongrong #qu\\u1ea7n_\\u0111\\u0169i_\\u1ed1ng_r\\u1ed9ng #qu\\u1ea7n_\\u0111\\u0169i_nam #qu\\u1ea7n_v\\u1ea3i_\\u0111\\u0169i #qu\\u1ea7n_\\u0111\\u0169i #quandainam<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\ud83c\\udf1f SHOP CAM K\\u1ebeT S\\u1ea2N PH\\u1ea8M \\u0110&Uacute;NG M&Ocirc; T\\u1ea2 H&Igrave;NH \\u1ea2NH CH\\u1ee4P TH\\u1eacT V&Agrave; CH&Iacute;NH S&Aacute;CH B\\u1ea2O H&Agrave;NH T\\u1ed0T NH\\u1ea4T TH\\u1eca TR\\u01af\\u1edcNG<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f Qu\\u1ea7n \\u0110\\u0169i \\u1ed0ng R\\u1ed9ng Nam N\\u1eef chu\\u1ea9n lo\\u1ea1i 1, h&igrave;nh \\u1ea3nh video th\\u1eadt c\\u1ee7a shop (\\u0111&atilde; c&oacute; 1 s\\u1ed1 b&ecirc;n l\\u1ea5y c\\u1eafp h&igrave;nh \\u1ea3nh nh&aacute;i m\\u1eabu m&atilde; h&agrave;ng lo\\u1ea1i 2, 3 k&eacute;m ch\\u1ea5t l\\u01b0\\u1ee3ng)<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f \\u0110\\u1ed5i tr\\u1ea3 ho&agrave;n ti\\u1ec1n mi\\u1ec5n ph&iacute; v\\u1edbi b\\u1ea5t k\\u1ef3 l\\u1ed7i l\\u1ea7m g&igrave; t\\u1eeb shop v&agrave; s\\u1ea3n ph\\u1ea9m qu\\u1ea7n d&agrave;i nam, qu\\u1ea7n d&agrave;i n\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u2714\\ufe0f T\\u01b0 v\\u1ea5n h\\u1ed7 tr\\u1ee3 nhanh ch&oacute;ng mi\\u1ec5n ph&iacute; 24\\/24, qu\\u1ea7n \\u1ed1ng r\\u1ed9ng nam n\\u1eef<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>#qu\\u1ea7n_\\u0111\\u0169i_\\u1ed1ng_r\\u1ed9ng #quanduiongrong #quanduinam #quanduinu #quandainam #quandainu #quanduinu #qu\\u1ea7n_\\u0111\\u0169i_n\\u1eef #quanduidainam #quanduidainu #quannam #quannu #vaidui #v\\u1ea3i_\\u0111\\u0169i #quanongrong #quanongsuong #quanongxuong #quanongsuongnam #quanongsuongnu #cuna #shopcuna<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2024-04-01T05:14:35.000000Z\",\"updated_at\":\"2024-06-27T05:26:03.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":\"2024-04-01-660a42bbc6729.png\",\"request_status\":\"1\",\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"142486\",\"reviews_count\":\"0\",\"translations\":[],\"reviews\":[]}', 1, 1000000, 0, 0, 'exclude', 'pending', 'unpaid', '2024-08-29 09:08:16', '2024-08-29 09:08:16', NULL, '', '[]', 'discount_on_product', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_expected_delivery_histories`
--

CREATE TABLE `order_expected_delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `expected_delivery_date` date NOT NULL,
  `cause` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status_histories`
--

CREATE TABLE `order_status_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `cause` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status_histories`
--

INSERT INTO `order_status_histories` (`id`, `order_id`, `user_id`, `user_type`, `status`, `cause`, `created_at`, `updated_at`) VALUES
(1, 100002, 7, 'customer', 'pending', NULL, '2024-08-29 09:08:16', '2024-08-29 09:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `seller_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `order_amount` decimal(50,2) NOT NULL DEFAULT 0.00,
  `seller_amount` decimal(50,2) NOT NULL DEFAULT 0.00,
  `admin_commission` decimal(50,2) NOT NULL DEFAULT 0.00,
  `received_by` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `delivery_charge` decimal(50,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(50,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) DEFAULT NULL,
  `delivered_by` varchar(191) NOT NULL DEFAULT 'admin',
  `payment_method` varchar(191) DEFAULT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `identity` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) NOT NULL DEFAULT 'customer',
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paytabs_invoices`
--

CREATE TABLE `paytabs_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `result` text NOT NULL,
  `response_code` int(10) UNSIGNED NOT NULL,
  `pt_invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `card_brand` varchar(191) DEFAULT NULL,
  `card_first_six_digits` int(10) UNSIGNED DEFAULT NULL,
  `card_last_four_digits` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_or_email_verifications`
--

CREATE TABLE `phone_or_email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_or_email` varchar(191) DEFAULT NULL,
  `token` varchar(191) DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_or_email_verifications`
--

INSERT INTO `phone_or_email_verifications` (`id`, `phone_or_email`, `token`, `otp_hit_count`, `is_temp_blocked`, `temp_block_time`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'Anhkhanh5539574@gmail.com', '1085', 0, 0, NULL, NULL, '2024-08-29 08:30:28', '2024-08-29 08:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `added_by` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `product_type` varchar(20) NOT NULL DEFAULT 'physical',
  `category_ids` varchar(80) DEFAULT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `sub_category_id` varchar(191) DEFAULT NULL,
  `sub_sub_category_id` varchar(191) DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `unit` varchar(191) DEFAULT NULL,
  `min_qty` int(11) NOT NULL DEFAULT 1,
  `refundable` tinyint(1) NOT NULL DEFAULT 1,
  `digital_product_type` varchar(30) DEFAULT NULL,
  `digital_file_ready` varchar(191) DEFAULT NULL,
  `images` longtext DEFAULT NULL,
  `color_image` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `flash_deal` varchar(255) DEFAULT NULL,
  `video_provider` varchar(30) DEFAULT NULL,
  `video_url` varchar(150) DEFAULT NULL,
  `colors` varchar(150) DEFAULT NULL,
  `variant_product` tinyint(1) NOT NULL DEFAULT 0,
  `attributes` varchar(255) DEFAULT NULL,
  `choice_options` text DEFAULT NULL,
  `variation` text DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `unit_price` double NOT NULL DEFAULT 0,
  `purchase_price` double NOT NULL DEFAULT 0,
  `tax` varchar(191) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(80) DEFAULT NULL,
  `tax_model` varchar(20) NOT NULL DEFAULT 'exclude',
  `discount` varchar(191) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(80) DEFAULT NULL,
  `current_stock` int(11) DEFAULT NULL,
  `minimum_order_qty` int(11) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `attachment` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `featured_status` tinyint(1) NOT NULL DEFAULT 1,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` varchar(191) DEFAULT NULL,
  `meta_image` varchar(191) DEFAULT NULL,
  `request_status` tinyint(1) NOT NULL DEFAULT 0,
  `denied_note` varchar(191) DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `temp_shipping_cost` double(8,2) DEFAULT NULL,
  `is_shipping_cost_updated` tinyint(1) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(1, 'admin', 1, 'Áo Sweater CUNA Áo Sweater Nam Nữ Form Rộng Chất Cotton Nỉ Ngoại Hàng Xuất Cao C', 'ao-sweater-cuna-ao-sweater-nam-nu-form-rong-chat-cotton-ni-ngoai-hang-xuat-cao-cap-tron-co-tron-dai-tay-local-brand-SeD0', 'physical', '[{\"id\":\"1\",\"position\":1}]', '1', NULL, NULL, 1, 'kg', 1, 1, NULL, NULL, '[\"2024-04-01-660a4241b121d.png\"]', '[]', '2024-04-01-660a4241b1e59.png', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 100000, 200000, '0', 'percent', 'include', '0', 'flat', 100000, 1, '<p>&Aacute;o Sweater CUNA, &Aacute;o Sweater Nam, &Aacute;o Sweater Nữ, &Aacute;o Sweater Form Rộng, &Aacute;o Nỉ Sweater, Chất Cotton Nỉ Ngoại H&agrave;ng Xuất Cao Cấp Trơn Cổ Tr&ograve;n D&agrave;i Tay Local Brand [H&agrave;ng Loại 1/Ảnh video thật]</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>⚠️ LƯU &Yacute; ⚠️ Sản phẩm shop đều chỉ b&aacute;n h&agrave;ng loại 1 &aacute;o sweater chất cotton nỉ ngoại cao cấp đạt ti&ecirc;u chuẩn xuất nhập khẩu tr&aacute;nh nhầm lẫn với c&aacute;c h&agrave;ng loại 2, loại 3 gi&aacute; rẻ nh&aacute;i mẫu tr&agrave;n lan ngo&agrave;i thị trường chất lượng k&eacute;m nhanh bai gi&atilde;o, x&ugrave; l&ocirc;ng x&ugrave; chỉ bai m&agrave;u.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🌈 &Aacute;O SWEATER NAM NỮ CHUẨN FORM D&Aacute;NG H&Agrave;N QUỐC HOT TREND 2023</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✔️ Chất Liệu: Cotton Nỉ Ngoại c&oacute; l&oacute;t h&agrave;ng xuất cao cấp</p>\r\n\r\n<p>✔️ Kiểu d&aacute;ng: &Aacute;o nỉ sweater form rộng unisex trơn basic cực dễ phối đồ</p>\r\n\r\n<p>✔️ Thiết Kế Độc Đ&aacute;o: C&oacute; đường line bo viền cả cổ, gấu v&agrave; tay &aacute;o cực c&aacute; t&iacute;nh v&agrave; phong c&aacute;ch,...</p>\r\n\r\n<p>✔️ M&agrave;u sắc: &Aacute;o Sweater Nam Nữ Đủ m&agrave;u basic cực dễ t&ocirc;n da t&ocirc;n d&aacute;ng, phối đồ,...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✔️ HƯỚNG DẪN CHỌN SIZE: &aacute;o sweater form rộng nam nữ</p>\r\n\r\n<p>- Size M dưới 45kg, cao dưới 1m6 / d&agrave;i 66cm, rộng 51cm,</p>\r\n\r\n<p>- Size L dưới 52kg, cao dưới 168 / d&agrave;i 68cm, rộng 52cm,</p>\r\n\r\n<p>- Size XL dưới 63kg,cao dưới 1m71 / d&agrave;i 71cm, rộng 54cm,</p>\r\n\r\n<p>- Size XXL Cao 1m70 - 1m80. dưới 85kg. d&agrave;i 75cm, rộng 56cm</p>\r\n\r\n<p>(&Aacute;o Sweater Nữ Nam May Chuẩn Size Form D&aacute;ng N&ecirc;n C&aacute;c Cậu Rất Dễ Chọn Nha, Cậu N&agrave;o Th&iacute;ch Mặc Rộng Thoải M&aacute;i Hơn X&iacute;u Cứ Mạnh Dạn Tăng L&ecirc;n 1 Size Nh&eacute;)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🌟 SHOP CAM KẾT SẢN PHẨM Đ&Uacute;NG M&Ocirc; TẢ H&Igrave;NH ẢNH CHỤP THẬT V&Agrave; CH&Iacute;NH S&Aacute;CH BẢO H&Agrave;NH TỐT NHẤT THỊ TRƯỜNG</p>\r\n\r\n<p>✔️ &Aacute;o Nỉ Sweater chuẩn loại 1, h&igrave;nh ảnh video thật của shop (đ&atilde; c&oacute; 1 số b&ecirc;n lấy cắp h&igrave;nh ảnh nh&aacute;i mẫu m&atilde; h&agrave;ng loại 2, 3 k&eacute;m chất lượng)</p>\r\n\r\n<p>✔️ Đổi trả ho&agrave;n tiền miễn ph&iacute; với bất kỳ lỗi lầm g&igrave; từ shop v&agrave; sản phẩm</p>\r\n\r\n<p>✔️ Tư vấn hỗ trợ nhanh ch&oacute;ng miễn ph&iacute; 24/24</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#sweater #aosweater #aosweaternam #aosweaternu #sweaternam #sweaternu #aonisweater #aosweaterformrong #aokhoacsweater #aosweaterlocalbrand #localbrand #local #aoni #aoninam #aoninu #aothuntaydai #aothuntaydainam #aothuntaydainu #aogiunhiet #aogiunhietnam #aogiunhietnu #aounisex #aonhiet #aothudong #aothudongnam #aothundaitay #aothunthudong #aolotni #aocotron #cuna #shopcuna #cunafashion #aosweaternuformrong #aosweaternamformrong</p>', 0, NULL, '2024-04-01 04:12:33', '2024-06-21 05:15:03', 1, 1, NULL, NULL, '2024-04-01-660a4241b1fef.png', 1, NULL, 0.00, 0, NULL, NULL, '157987'),
(2, 'admin', 1, 'Quần đũi ống rộng CUNA quần dài nam nữ chất linen cao cấp ống suông rộng mặc nhà', 'quan-dui-ong-rong-cuna-quan-dai-nam-nu-chat-linen-cao-cap-ong-suong-rong-mac-nha-di-choi-che-khuyet-diem-hack-dang-4-mua', 'physical', '[{\"id\":\"1\",\"position\":1}]', '1', NULL, NULL, 1, 'kg', 1, 1, NULL, NULL, '[\"2024-04-01-660a42bbc5658.png\"]', '[]', '2024-04-01-660a42bbc6499.png', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1000000, 2000000, '0', 'percent', 'include', '0', 'flat', 9998, 1, '<p>Quần đũi ống rộng CUNA quần d&agrave;i nam, quần d&agrave;i nữ, quần đũi nam, quần d&agrave;i đũi nam, quần đũi nữ, quần mặc nh&agrave; chất linen cao cấp quần ống su&ocirc;ng rộng mặc nh&agrave; đi chơi che khuyết điểm hack d&aacute;ng ph&ugrave; hợp 4 m&ugrave;a Xu&acirc;n _ Hạ _ Thu _ Đ&ocirc;ng. [H&Agrave;NG LOẠI 1]</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>⚠️ LƯU &Yacute; ⚠️ Sản phẩm shop đều chỉ b&aacute;n h&agrave;ng loại 1 quần đũi ống rộng nam nữ chất vải sợ Linen cao cấp đạt ti&ecirc;u chuẩn xuất nhập khẩu tr&aacute;nh nhầm lẫn với c&aacute;c h&agrave;ng loại 2, loại 3 gi&aacute; rẻ nh&aacute;i mẫu tr&agrave;n lan ngo&agrave;i thị trường chất lượng k&eacute;m nhanh bai gi&atilde;o, x&ugrave; l&ocirc;ng x&ugrave; chỉ bai m&agrave;u,..quần d&agrave;i nam nữ</p>\r\n\r\n<p>#quanduinam #quanduiongrong #quần_đũi_ống_rộng #quanduinu #quần_đũi_ống_su&ocirc;ng</p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-ltc98barns1w37\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p>#quần_đũi_ống_rộng #quần_đũi_nam #quần_đũi_nữ #quandainam #quandainu</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🌈 QUẦN ĐŨI ỐNG RỘNG NAM NỮ THIẾT KẾ MỚI HOTTREND 2024</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✔️ Chất Liệu: Vải sợ linen cao cấp c&oacute; t&iacute;nh bền bỉ cao, mềm mịn thoải m&aacute;i, chịu nhiệt cực tốt,...quần đũi ống rộng nam nữ</p>\r\n\r\n<p>✔️ Kiểu d&aacute;ng: Quần đũi nam nữ thiết kế form rộng su&ocirc;ng trẻ trung c&aacute; t&iacute;nh, đặc biệt che khuyển điểm ch&acirc;n v&agrave; hack d&aacute;ng,.. quần d&agrave;i nam nữ</p>\r\n\r\n<p>✔️ Thiết Kế Độc Đ&aacute;o: Chạy đường line cạp quần, form d&aacute;ng H&agrave;n Quốc trẻ trung c&aacute; t&iacute;nh, cực thoải m&aacute;i cho mọi hoạt động, mặc 4 m&ugrave;a,. quần nam, quần nữ</p>\r\n\r\n<p>✔️ M&agrave;u sắc: Cực Basic rất dễ phối đồ: Trắng, Đen, N&acirc;u, Be quần ống su&ocirc;ng, quần ống rộng nam nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✔️ HƯỚNG DẪN CHỌN SIZE: Quần D&agrave;i Nam Nữ Ống Su&ocirc;ng Rộng 4 M&ugrave;a Xu&acirc;n_Hạ_Thu_Đ&ocirc;ng</p>\r\n\r\n<p>(CUNA thiết kế chuẩn form d&aacute;ng người Việt, Th&ocirc;ng số chi tiết tham khảo phần h&igrave;nh ảnh quần đũi nam, quần đũi nữ)</p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-ltc98barp6mc53\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p>#quanduiongrong #quần_đũi_ống_rộng #quần_đũi_nam #quần_vải_đũi #quần_đũi #quandainam</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🌟 SHOP CAM KẾT SẢN PHẨM Đ&Uacute;NG M&Ocirc; TẢ H&Igrave;NH ẢNH CHỤP THẬT V&Agrave; CH&Iacute;NH S&Aacute;CH BẢO H&Agrave;NH TỐT NHẤT THỊ TRƯỜNG</p>\r\n\r\n<p>✔️ Quần Đũi Ống Rộng Nam Nữ chuẩn loại 1, h&igrave;nh ảnh video thật của shop (đ&atilde; c&oacute; 1 số b&ecirc;n lấy cắp h&igrave;nh ảnh nh&aacute;i mẫu m&atilde; h&agrave;ng loại 2, 3 k&eacute;m chất lượng)</p>\r\n\r\n<p>✔️ Đổi trả ho&agrave;n tiền miễn ph&iacute; với bất kỳ lỗi lầm g&igrave; từ shop v&agrave; sản phẩm quần d&agrave;i nam, quần d&agrave;i nữ</p>\r\n\r\n<p>✔️ Tư vấn hỗ trợ nhanh ch&oacute;ng miễn ph&iacute; 24/24, quần ống rộng nam nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#quần_đũi_ống_rộng #quanduiongrong #quanduinam #quanduinu #quandainam #quandainu #quanduinu #quần_đũi_nữ #quanduidainam #quanduidainu #quannam #quannu #vaidui #vải_đũi #quanongrong #quanongsuong #quanongxuong #quanongsuongnam #quanongsuongnu #cuna #shopcuna</p>', 0, NULL, '2024-04-01 04:14:35', '2024-08-29 09:08:16', 1, 1, NULL, NULL, '2024-04-01-660a42bbc6729.png', 1, NULL, 0.00, 0, NULL, NULL, '142486'),
(3, 'admin', 1, 'Máy hút bụi giường nệm diệt khuẩn UV thế hệ mới JETZT SERIES J7', 'may-hut-bui-giuong-nem-diet-khuan-uv-the-he-moi-jetzt-series-j7-I7LuzK', 'physical', '[{\"id\":\"2\",\"position\":1}]', '2', NULL, NULL, 2, 'kg', 1, 1, NULL, NULL, '[\"2024-04-01-660a43a005870.png\"]', '[]', '2024-04-01-660a43a008098.png', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1000000, 1000000, '0', 'percent', 'include', '0', 'flat', 9998, 2, '<p>M&Aacute;Y H&Uacute;T BỤI GIƯỜNG NỆM DIỆT KHUẨN ĐA TẦNG THẾ HỆ MỚI JETZT J7</p>\r\n\r\n<p>M&aacute;y h&uacute;t bụi giường nệm diệt khuẩn UV thế hệ mới JETZT J7 l&agrave; một sản phẩm c&oacute; nhiều cải tiến mới trong d&ograve;ng m&aacute;y h&uacute;t bụi diệt khuẩn m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng thể bỏ lỡ.&nbsp;</p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22100-x0i5bl8t9tiv31\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p>ĐẶC ĐIỂM SẢN PHẨM:&nbsp;</p>\r\n\r\n<p>1.LỰC H&Uacute;T CỰC MẠNH 18.000PA:&nbsp;</p>\r\n\r\n<p>Đảm bảo h&uacute;t sạch mạt bụi v&agrave; nhiều vi khuẩn khỏi bề mặt mục ti&ecirc;u.</p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22100-l9xphomthniva6\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p>2. DIỆT KHUẨN 4 CẤP</p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22100-eqiz2rduhniv07\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22100-dut72mduhnivcd\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22100-sap3ptduhniva8\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22100-9m0y4uduhniv91\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p>- C&Ocirc;NG NGHỆ Đ&Egrave;N UV DIỆT KHUẨN MẠNH MẼ VỚI CƯỜNG ĐỘ BỨC XẠ CAO 18000&micro;w/CM&sup2; :</p>\r\n\r\n<p>Gi&uacute;p cho diệt t&iacute;ch bề mặt được diệt khuẩn nhiều hơn, tiết kiệm thời gian m&agrave; vẫn đạt được hiệu quả cao.</p>\r\n\r\n<p>- ĐỆM XUNG NGUY&Ecirc;N KHỐI MẠNH MẼ : 12.000 NHỊP MỖI PH&Uacute;T</p>\r\n\r\n<p>Đảm bảo đ&aacute;nh bật mạt nệm b&aacute;m ở tầng s&acirc;u b&ecirc;n trong bề mặt m&agrave; chổi qu&eacute;t th&ocirc;ng thường kh&ocirc;ng thể chạm tới.</p>\r\n\r\n<p>-C&Ocirc;NG NGHỆ S&Oacute;NG SI&Ecirc;U &Acirc;M&nbsp;</p>\r\n\r\n<p>C&oacute; t&aacute;c dụng ức chế sự sinh trưởng của c&aacute;c loại ve rệp</p>\r\n\r\n<p>-HỆ THỐNG SẤY NHIỆT 60&deg;C:</p>\r\n\r\n<p>Tăng cường ti&ecirc;u diệt vi khuẩn, đồng thời giữ cho bề mặt được kh&ocirc; tho&aacute;ng, tr&aacute;nh ẩm mốc.</p>\r\n\r\n<p>3. LỌC BỤI 6 CẤP NHỜ HỆ THỐNG LỌC ĐA TẦNG N&Acirc;NG CAO:&nbsp;</p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22100-cq3asn4uhnivd4\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lnh2to1raq9md0\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lnh2to1rc4u201\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bước 1: Kh&ocirc;ng kh&iacute; c&ugrave;ng c&aacute;c loại bụi bẩn được h&uacute;t v&agrave;o cốc chứa bụi,</p>\r\n\r\n<p>Bược 2: C&aacute;c loại bụi lớn sẽ được lọc ở lại cốc chứa bụi qua bước lọc phễu chuy&ecirc;n dụng&nbsp;</p>\r\n\r\n<p>Bước 3: C&aacute;c loại bụi mạt nhỏ hơn sau bước lọc 2 sẽ được lọc tiếp qua bộ lọc bằng th&eacute;p kh&ocirc;ng rỉ</p>\r\n\r\n<p>Bước 4: Nhờ thiết kế lọc bụi Cyclon ở bước 4 n&agrave;y m&agrave; h&igrave;nh th&agrave;nh lực ly t&acirc;m để t&aacute;ch bụi ra khỏi kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Bước 5 : Sau bước lọc thứ 4, c&aacute;c loại bụi mịn sẽ bị lọc lại nhờ bộ lọc MIF cải tiến ưu việt hơn bộ lọc Hepa truyền thống</p>\r\n\r\n<p>Bước 6: D&ograve;ng kh&ocirc;ng kh&iacute; sạch sẽ sau khi đ&atilde; loại bỏ bụi bẩn sẽ được gia nhiệt 50&deg;C để loại bỏ triệt để c&aacute;c loại vi khuẩn c&ograve;n s&oacute;t lại, trả lại d&ograve;ng kh&ocirc;ng kh&iacute; trong l&agrave;nh cho căn ph&ograve;ng.</p>\r\n\r\n<p>4.CẢM BIẾN PH&Aacute;T HIỆN TH&Ocirc;NG MINH:&nbsp;</p>\r\n\r\n<p>Đảm bảo đ&egrave;n UV tự động tắt khi được n&acirc;ng l&ecirc;n khỏi bề mặt để ngăn tia UV r&ograve; rỉ.</p>\r\n\r\n<p>5.D&Acirc;Y ĐIỆN D&Agrave;I 5 M&Eacute;T:&nbsp;</p>\r\n\r\n<p>Đem lại d&ograve;ng điện khỏe v&agrave; ổn định, Thuận tiện cho việc di chuyển m&aacute;y h&uacute;t bụi đến mọi nơi bạn muốn l&agrave;m sạch.</p>\r\n\r\n<p>&nbsp;TH&Ocirc;NG SỐ KĨ THUẬT SẢN PHẨM:</p>\r\n\r\n<p>- Đ&egrave;n UV: 12W , Cường độ bức xạ 18000&micro;w/CM&sup2;</p>\r\n\r\n<p>- Điện &aacute;p: 220V ~ 240V</p>\r\n\r\n<p>- C&ocirc;ng suất h&uacute;t: 18000PA.</p>\r\n\r\n<p>- Đệm xung : 12.000 BPM</p>\r\n\r\n<p>- Chiều d&agrave;i d&acirc;y: 5 m&eacute;t</p>\r\n\r\n<p>- Dung t&iacute;ch bụi: 0.6L.</p>\r\n\r\n<p>- Độ ồn : &le;78dBA</p>\r\n\r\n<p>- C&ocirc;ng suất định mức: 600W</p>\r\n\r\n<p>Sản phẩm được trang bị hệ thống cảm biến tự ngắt để bảo vệ động cơ khi qu&aacute; nhiệt. Thời gian sử dụng tốt nhất cho m&aacute;y l&agrave; li&ecirc;n tục tối đa 10 ph&uacute;t, m&aacute;y được trang bị cơ chế tự ngắt khi ph&aacute;t hiện động cơ qu&aacute; nhiệt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;CH&Iacute;NH S&Aacute;CH BẢO H&Agrave;NH:</p>\r\n\r\n<p>- Bảo h&agrave;nh c&oacute; giới hạn 1 năm cho động cơ, 6 th&aacute;ng với pin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-lmsg5v9p0grj54\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>TH&Ocirc;NG TIN XUẤT XỨ SẢN PHẨM:</p>\r\n\r\n<p>Đơn vị thiết kế v&agrave; chịu tr&aacute;ch nhiệm chất lượng: JETZT Techonology Innovation PTE.,LTD ( Singapore)</p>\r\n\r\n<p>Hotline: 0356.153.376</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mayhutbui #mayhuibuigiuong #mayhutbuinem #mayhutbuimini #mayhutbuicamtay #maybutbuithongminh #mayhutbuigiadinh #mayhutbuinho</p>', 0, NULL, '2024-04-01 04:18:24', '2024-06-27 04:26:03', 1, 1, NULL, NULL, '2024-04-01-660a43a008358.png', 1, NULL, 1.00, 0, NULL, NULL, '148293'),
(4, 'admin', 1, 'Quạt tản nhiệt mini BLUEWOW DY08 thông dụng hỗ trợ chơi game trên điện thoại thí', 'quat-tan-nhiet-mini-bluewow-dy08-thong-dung-ho-tro-choi-game-tren-dien-thoai-thich-hop-cho-i-phone-samsung-xiaomi-qnpgPh', 'physical', '[{\"id\":\"3\",\"position\":1}]', '3', NULL, NULL, 6, 'kg', 1, 1, NULL, NULL, '[\"2024-07-09-668cca8957b80.png\",\"2024-07-09-668cca895889e.png\"]', '[]', '2024-07-09-668cca89589d2.png', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 160000, 120000, '0', 'percent', 'include', '0', 'flat', 0, 1, '<p>👏👏👏 Ch&agrave;o mừng bạn đến với Cửa h&agrave;ng ch&iacute;nh thức &quot;3C Tech (R)&quot;: BlueWow</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🎁 Nếu bạn nhấp v&agrave;o c&aacute;c cửa h&agrave;ng &quot;theo d&otilde;i&quot;, bạn sẽ c&oacute; phiếu giảm gi&aacute; số lượng lớn v&agrave; quyền vận chuyển ưu ti&ecirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🎁 Ch&uacute;ng t&ocirc;i l&agrave; cửa h&agrave;ng ch&iacute;nh thức được ủy quyền, cảm ơn bạn đ&atilde; đến v&agrave; theo d&otilde;i ch&uacute;ng t&ocirc;i tại đ&acirc;y.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🎁 Bưu kiện sẽ được gửi trong 24 giờ sau khi thanh to&aacute;n được thực hiện.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🎁 Chất lượng tốt với bảo h&agrave;nh, v&agrave; gi&aacute; l&agrave; gi&aacute; b&aacute;n bu&ocirc;n.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🎁 Ch&uacute;ng t&ocirc;i c&oacute; đội ngũ hỗ trợ chuy&ecirc;n nghiệp để gặp bạn trong v&ograve;ng 24 giờ, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i nếu bạn c&oacute; bất kỳ c&acirc;u hỏi n&agrave;o. Cảm ơn bạn!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>👏👏👏 Đặc điểm:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅Bộ l&agrave;m m&aacute;t c&oacute; quạt 7 lưỡi, tản nhiệt mạnh mẽ, c&ocirc;ng nghệ ống xả tuabin gi&uacute;p tản nhiệt điện thoại nhanh ch&oacute;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅Hoạt động tiếng ồn thấp, kh&ocirc;ng ảnh hưởng đến tr&ograve; chuyện bằng giọng n&oacute;i, động cơ DC chuyển đổi tần số, gi&oacute; ổn định để sử dụng tốt hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅Bộ l&agrave;m m&aacute;t nhỏ gọn v&agrave; tiện lợi, c&oacute; k&iacute;ch thước khoảng một phần ba k&iacute;ch thước của điện thoại di động, gi&uacute;p việc chơi game trở n&ecirc;n ho&agrave;n hảo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅Thiết kế kh&oacute;a c&oacute; thể thu v&agrave;o, ho&agrave;n hảo cho tất cả c&aacute;c điện thoại di động.;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅Nguồn điện trực tiếp USB cho thời gian l&agrave;m việc l&acirc;u d&agrave;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>👏👏👏 Đặc điểm:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅Chất liệu sản phẩm: ABS</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅T&ecirc;n: Bộ tản nhiệt điện thoại di động</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅Nguồn cung cấp: Nguồn điện USB</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅C&aacute;ch sử dụng: snap-on</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅Sử dụng: ho&agrave;n hảo cho điện thoại di động c&oacute; k&iacute;ch thước từ 4-6,7 inch</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅Điện &aacute;p đầu v&agrave;o: DC 5V</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅D&ograve;ng điện đầu v&agrave;o: 1A-2A</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>👏👏👏 G&oacute;i h&agrave;ng bao gồm:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅1 x Bộ tản nhiệt quạt l&agrave;m m&aacute;t</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✅1 x C&aacute;p USB</p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22100-d7awyiseb2iv40\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22100-7fxp6vxgb2iva2\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22100-mc0sihygb2iv13\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22100-5njwb0seb2iv3c\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/94e1a0ce0c629246b0a75c8af7135a1e\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22090-fpgszhsxv2hvc3\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22090-yk321zsxv2hv47\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/2e9ca486a764510fc76385a43907d44e\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/f6db9f423cfb78f4ba587b13a14fc05f\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/a40f0d0d38464ebbc647357b98b289e1\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22100-c7qc3kil4siv7e\" style=\"height:invalid-value; width:invalid-value\" /></p>\r\n\r\n<p><img src=\"https://down-vn.img.susercontent.com/file/sg-11134202-22100-em49jnil4siv15\" style=\"height:invalid-value; width:invalid-value\" /></p>', 0, NULL, '2024-07-09 04:28:41', '2024-07-09 04:29:28', 1, 1, NULL, NULL, '2024-07-09-668cca8958b91.png', 1, NULL, 0.00, 0, NULL, NULL, '101420'),
(5, 'admin', 1, '[ Đổ Sỉ ] Tai Nghe Bluetooth Nhét Tai Không Dây Pin Khỏe Âm Thanh Lớn Hỗ Trợ Tập', 'do-si-tai-nghe-bluetooth-nhet-tai-khong-day-pin-khoe-am-thanh-lon-ho-tro-tap-the-thao-lam-viec-18tfe0', 'physical', '[{\"id\":\"3\",\"position\":1}]', '3', NULL, NULL, 3, 'ltrs', 1, 1, NULL, NULL, '[\"2024-07-09-668ccb5384cbd.png\"]', '[]', '2024-07-09-668ccb5386027.png', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 60000, 50000, '0', 'percent', 'include', '0', 'flat', 0, 1, '<p>[ Đổ Sỉ ] Tai Nghe Bluetooth Nh&eacute;t Tai Kh&ocirc;ng D&acirc;y Pin Khỏe &Acirc;m Thanh Lớn Hỗ Trợ Tập Thể Thao L&agrave;m Việc 🔰 M&Ocirc; TẢ SẢN PHẨM &bull; Chip mới nhất &bull; Vi tr&igrave;nh mới nhất &bull; M&agrave;ng loa cải thiện. Cho chất lượng &acirc;m thanh hay hơn. &bull; Dung lượng pin cao hơn so với c&aacute;c bản cũ. &bull; Bo mạch. Bảo vệ nguồn Dock sạc. &bull; Theo d&otilde;i được % pin &bull; Cảm biến tiệm cận - Cảm biến nhiệt. Khắc phục delay cho tai nghe. 🔰Đặc Điểm Tai nghe Bluetooth : * C&oacute; cảm biến th&aacute;o tai dừng nhạc * Định Vị * Đổi T&ecirc;n * Bluetooth 5.0 * Thời gian sạc: 1 giờ * Nghe li&ecirc;n tục 4 -6 giờ * Pin tai nghe 48mah (c&oacute; DC bảo vệ pin) * Pin hộp sạc 320mah * Đặc biệt si&ecirc;u dễ kết nối, hiện cửa sổ ở điện thoại ấn c&aacute;i được 🔰Chức Năng: &bull; Mở nắp l&agrave; hiện popup, kết nối duy nhất 1 lần. &bull; Mic cực tốt kh&ocirc;ng ch&uacute;t &acirc;m tạp, đ&agrave;m thoại dễ d&agrave;ng cực th&iacute;ch. &bull; &Acirc;m thanh đạt chuẩn 8/10 &bull; Th&aacute;o tai nghe dừng nhạc, đeo tai nghe tự động ph&aacute;t nhạc. &bull; Cảm ứng cực nhạy. &bull; Đổi t&ecirc;n, định vị, tuỳ chọn c&agrave;i đặt cảm biến. &bull; Play/Pause - Next/Back. &bull; Sạc kh&ocirc;ng d&acirc;y tiện lợi. 🔰HƯỚNG DẪN SỬ DỤNG : Bước 1: Mở nắp thiết bị v&agrave; r&uacute;t đồng thời 2 tai nghe ra để gần ĐT của bạn Bước 2: ĐT sẽ mở ra cửa sổ y&ecirc;u cầu kết nối, bạn l&agrave;m theo hướng dẫn để kết nối Bước 3: V&agrave;o c&agrave;i đặt bluetooth để t&ugrave;y chỉnh t&ecirc;n v&agrave; thao t&aacute;c chạm 🔰SẢN PHẨM GỒM C&Oacute; : 1. 2 tai nghe (tai tr&aacute;i,tai phải) 2. hộp sạc (dock sạc) 3. d&acirc;y sạc H&agrave;ng tại cửa h&agrave;ng của ch&uacute;ng t&ocirc;i đều l&agrave; h&agrave;ng c&oacute; sẵn v&agrave; sẽ được chuyển ngay sau khi thanh to&aacute;n, v&agrave; giao h&agrave;ng tận nơi to&agrave;n quốc . Sản phẩm của ch&uacute;ng t&ocirc;i l&agrave; 100% ch&iacute;nh h&atilde;ng v&agrave; ch&uacute;ng t&ocirc;i đảm bảo! ! ! --------------------------CAM KẾT-------------------------------- ✔️Về sản phẩm: Cam kết h&agrave;ng ch&iacute;nh h&atilde;ng 100% ✔️Về dịch vụ: Tỉ lệ phản hồi chat 100% , trả lời trong v&ograve;ng 30p giờ h&agrave;nh ch&iacute;nh ,hotline trực giờ h&agrave;nh ch&iacute;nh xử l&iacute; khiếu nại 100%. ✔️Thời gian chuẩn bị h&agrave;ng: H&agrave;ng c&oacute; sẵn, QK cứ đặt h&agrave;ng l&agrave; ch&uacute;ng t&ocirc;i giao đi, BƯU T&Aacute; lấy h&agrave;ng v&agrave;o 2 buổi 11h s&aacute;ng v&agrave; 16h. ✔️Thời gian giao h&agrave;ng dự kiến : HCM, H&agrave; Nội, Đ&agrave; Nẵng sẽ nhanh nhất - C&aacute;c tỉnh kh&aacute;c sẽ theo thời gian hiển thị tr&ecirc;n đơn h&agrave;ng. ✔️Shop bảo h&agrave;nh đổi trả miễn ph&iacute; nếu sim kh&ocirc;ng đ&uacute;ng như giới thiệu! =========================================================== SHOP CHUY&Ecirc;N B&Aacute;N BU&Ocirc;N B&Aacute;N LẺ: SIM DATA 4G v&agrave; THIẾT BỊ MẠNG USB , USB WIFI , BỘ PH&Aacute;T WIFI , TAI NGHE , THẺ NHỚ , LOA ... RẤT MONG SỰ ỦNG HỘ CỦA TẤT CẢ MỌI NGƯỜI . LH ZALO/HOTLINE : 0819.118.668 Cảm ơn Qu&yacute; Kh&aacute;ch H&agrave;ng !</p>', 0, NULL, '2024-07-09 04:32:03', '2024-07-09 04:32:06', 1, 1, NULL, NULL, '2024-07-09-668ccb53861d9.png', 1, NULL, 0.00, 0, NULL, NULL, '129607'),
(6, 'admin', 1, 'Tai Nghe Chụp Tai Bluetooth Y08, Tai Không Dây Có Mic, Có Thẻ Nhớ, Âm Bass Cực C', 'tai-nghe-chup-tai-bluetooth-y08-tai-khong-day-co-mic-co-the-nho-am-bass-cuc-chat-nghe-nhac-cuc-hay-bao-hanh-1-nam-igvyUZ', 'physical', '[{\"id\":\"3\",\"position\":1}]', '3', NULL, NULL, 3, 'kg', 1, 1, NULL, NULL, '[\"2024-07-09-668ccbbdd1de9.png\"]', '[]', '2024-07-09-668ccbbdd2afa.png', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 50000, 45000, '0', 'percent', 'include', '0', 'flat', 0, 1, '<p>T&ecirc;n sản phẩm : tai nghe Chụp Tai Bluetooth Y08 ✔️ Chất liệu: ABS ✔️ Phi&ecirc;n bản Bluetooth: 5.0 ✔️ Khoảng c&aacute;ch kết nối: 10m ✔️ Loại ph&iacute;ch cắm: 3,5 mm ✔️ Đầu v&agrave;o AUX: Hỗ trợ ✔️ Khe cắm thẻ TF: Hỗ trợ (kh&ocirc;ng bao gồm) ✔️ Đ&agrave;i FM: Hỗ trợ ✔️ Tần số đầu ra: lớp 2 ✔️ Tần số: 2,4 GHz - 2,4835 GHz ✔️ Pin: Pin sạc ✔️ Delay: Kh&ocirc;ng ✔️ Thời gian sạc: 1 - 2h ✔️ Thời gian chờ: 200h ✔️ Thời gian nghe nhạc: 8-10h C&aacute;c đặc điểm: Kết nối kh&ocirc;ng d&acirc;y, Bluetooth, Đeo ngo&agrave;i tai, &Acirc;m thanh Stereo, Bass, với micr&ocirc;</p>', 0, NULL, '2024-07-09 04:33:49', '2024-07-09 04:33:52', 1, 1, NULL, NULL, '2024-07-09-668ccbbdd2c85.png', 1, NULL, 0.00, 0, NULL, NULL, '107315'),
(7, 'admin', 1, 'Hộp đựng bàn chải đánh răng tiện dụng mang đi du lịch cắm trại', 'hop-dung-ban-chai-danh-rang-tien-dung-mang-di-du-lich-cam-trai-QaGOBj', 'physical', '[{\"id\":\"7\",\"position\":1}]', '7', NULL, NULL, 5, 'kg', 1, 1, NULL, NULL, '[\"2024-07-09-668ccc3bbc681.png\"]', '[]', '2024-07-09-668ccc3bbd46c.png', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 40000, 45000, '0', 'percent', 'include', '0', 'flat', 0, 1, '<p>T&iacute;nh năng &#39;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dễ d&agrave;ng mang theo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mỗi đầu c&oacute; lỗ tho&aacute;t kh&iacute;, ngăn vi khuẩn ph&aacute;t triển.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giữ b&agrave;n chải đ&aacute;nh răng của bạn sạch sẽ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với vỏ bảo vệ, tuyệt vời để đi du lịch</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sự chỉ r&otilde;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>100% mới v&agrave; chất lượng cao tất cả.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Phong c&aacute;ch: Thuận tiện</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chất liệu nhựa dẻo</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&agrave;u sắc: xanh l&aacute; c&acirc;y / x&aacute;m nhạt / hồng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước: 20,5 * 7 * 7cm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trọng lượng &#39;88G</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>G&oacute;i bao gồm &quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1 hộp đựng b&agrave;n chải xTooth (kh&ocirc;ng bao gồm bản demo c&aacute;c phụ kiện kh&aacute;c trong h&igrave;nh.)</p>', 0, NULL, '2024-07-09 04:35:55', '2024-09-19 00:17:04', 1, 1, NULL, NULL, '2024-07-09-668ccc3bbd64a.png', 1, NULL, 0.00, 0, NULL, NULL, '172451'),
(8, 'admin', 1, 'Chai Xịt Khử Mùi Giày Dép NaNo Bạc,( Mua 5 Chai Xịt Tặng 1 Túi Đựng Giày)Xịt Khử', 'chai-xit-khu-mui-giay-dep-nano-bac-mua-5-chai-xit-tang-1-tui-dung-giayxit-khu-mui-hoi-chan-nano-2024-ba1994-WZ8RyE', 'physical', '[{\"id\":\"6\",\"position\":1}]', '6', NULL, NULL, 1, 'kg', 1, 1, NULL, NULL, '[\"2024-07-09-668ccccd4d210.png\"]', '[]', '2024-07-09-668ccccd4e259.png', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 50000, 40000, '0', 'percent', 'include', '0', 'flat', 10, 1, '<p>___________Gia Dụng B&igrave;nh An 369 ___________ LẤY SỐ LƯỢNG HOTLINE : 0328824434 : zalo 0362390039 M&Ocirc; TẢ SẢN PHẨM Chai Xịt Khử M&ugrave;i Gi&agrave;y D&eacute;p NaNo Bạc, Xịt Khử M&ugrave;i H&ocirc;i Ch&acirc;n 1. Th&ocirc;ng Tin Sản Phẩm Chai Xịt Khử M&ugrave;i Gi&agrave;y D&eacute;p NaNo Bạc, Xịt Khử M&ugrave;i H&ocirc;i Ch&acirc;n: - Dung t&iacute;ch : 260ml - Hạn sử dụng 3 năm từ ng&agrave;y sản xuất 2. Đặc Điểm Nổi Bật Của Chai Xịt Khử M&ugrave;i Gi&agrave;y D&eacute;p NaNo Bạc, Xịt Khử M&ugrave;i H&ocirc;i Ch&acirc;n: - Sử dụng c&ocirc;ng nghệ ph&acirc;n tử Bạc ( Ag+) c&oacute; t&aacute;c dụng ức chế, giảm khả năng ph&aacute;t triển của vi khuẩn v&agrave; nấm c&ugrave;ng c&aacute;c th&agrave;nh phần tự nhi&ecirc;n gi&uacute;p cho đ&ocirc;i b&agrave;n ch&acirc;n lu&ocirc;n sạch sẽ thơm tho. - Tạo hương thơm m&aacute;t, khử m&ugrave;i, ngăn m&ugrave;i h&ocirc;i cho gi&agrave;y d&eacute;p v&agrave; c&aacute;c đồ vật... - B&igrave;nh xịt lưu hương với c&ocirc;ng nghệ Bạc ion Ag+ gi&uacute;p chống thối ch&acirc;n, khử m&ugrave;i gi&agrave;y, kh&aacute;ng khuẩn, chống nấm mốc,.. - Th&agrave;nh phần l&agrave;nh t&iacute;nh, kh&ocirc;ng l&agrave;m phai m&agrave;u, hư hại gi&agrave;y v&agrave; vớ(tất). Cũng như an to&agrave;n cho l&agrave;n da của bạn. - Chỉ với 1 lần xịt, hiệu quả k&eacute;o d&agrave;i suốt 24 tiếng. - Giữ vệ sinh, hạn chế c&aacute;c nguy cơ xuất hiện c&aacute;c chứng bệnh vi&ecirc;m da, h&ocirc;i ch&acirc;n, nấm,&hellip; - Hiệu quả khử m&ugrave;i ngay lập tức sau khi sử dụng. Kh&ocirc;ng c&ograve;n lo t&iacute;ch tụ m&ugrave;i h&ocirc;i ch&acirc;n ở gi&agrave;y. - Chai lớn với dung t&iacute;ch 260ml, v&ocirc; c&ugrave;ng tiết kiệm. - Dễ d&agrave;ng xịt gi&agrave;y bằng c&aacute;ch xịt ngược - An to&agrave;n , kh&ocirc;ng g&acirc;y tổn thương hay k&iacute;ch ứng với da 3. Hướng Dẫn Sử Dụng Chai Xịt Khử M&ugrave;i Gi&agrave;y D&eacute;p NaNo Bạc, Xịt Khử M&ugrave;i H&ocirc;i Ch&acirc;n: - Xịt v&agrave;o gi&agrave;y, d&eacute;p, mũ xe m&aacute;y trước khi sử dụng - Bảo quản nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh nắng - C&ocirc;ng Dụng: Bảo vệ đ&ocirc;i ch&acirc;n tho&aacute;ng m&aacute;t, sảng kho&aacute;i, ngăn ngừa vi khuẩn g&acirc;y m&ugrave;i CAM KẾT TỪ SHOP - Sản phẩm ch&iacute;nh h&atilde;ng, nguồn gốc xuất xứ r&otilde; r&agrave;ng , h&agrave;ng chất lượng cao. - Được đổi trả miễn ph&iacute; trong v&ograve;ng 2 ng&agrave;y từ khi nhận được h&agrave;ng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất - Tư vấn/hướng dẫn 24/24.</p>', 0, NULL, '2024-07-09 04:38:21', '2024-09-19 00:11:15', 1, 1, NULL, NULL, '2024-07-09-668ccccd4e4d0.png', 1, NULL, 0.00, 0, NULL, NULL, '133423');

-- --------------------------------------------------------

--
-- Table structure for table `product_compares`
--

CREATE TABLE `product_compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'customer_id',
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_requests`
--

CREATE TABLE `refund_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `refund_reason` longtext NOT NULL,
  `images` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_note` longtext DEFAULT NULL,
  `rejected_note` longtext DEFAULT NULL,
  `payment_info` longtext DEFAULT NULL,
  `change_by` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_statuses`
--

CREATE TABLE `refund_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `refund_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `change_by` varchar(191) DEFAULT NULL,
  `change_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_transactions`
--

CREATE TABLE `refund_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_for` varchar(191) DEFAULT NULL,
  `payer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_by` varchar(191) DEFAULT NULL,
  `paid_to` varchar(191) DEFAULT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `payment_status` varchar(191) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `transaction_type` varchar(191) DEFAULT NULL,
  `order_details_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_saved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_functions`
--

CREATE TABLE `search_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(150) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `visible_for` varchar(191) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_functions`
--

INSERT INTO `search_functions` (`id`, `key`, `url`, `visible_for`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'admin/dashboard', 'admin', NULL, NULL),
(2, 'Order All', 'admin/orders/list/all', 'admin', NULL, NULL),
(3, 'Order Pending', 'admin/orders/list/pending', 'admin', NULL, NULL),
(4, 'Order Processed', 'admin/orders/list/processed', 'admin', NULL, NULL),
(5, 'Order Delivered', 'admin/orders/list/delivered', 'admin', NULL, NULL),
(6, 'Order Returned', 'admin/orders/list/returned', 'admin', NULL, NULL),
(7, 'Order Failed', 'admin/orders/list/failed', 'admin', NULL, NULL),
(8, 'Brand Add', 'admin/brand/add-new', 'admin', NULL, NULL),
(9, 'Brand List', 'admin/brand/list', 'admin', NULL, NULL),
(10, 'Banner', 'admin/banner/list', 'admin', NULL, NULL),
(11, 'Category', 'admin/category/view', 'admin', NULL, NULL),
(12, 'Sub Category', 'admin/category/sub-category/view', 'admin', NULL, NULL),
(13, 'Sub sub category', 'admin/category/sub-sub-category/view', 'admin', NULL, NULL),
(14, 'Attribute', 'admin/attribute/view', 'admin', NULL, NULL),
(15, 'Product', 'admin/product/list', 'admin', NULL, NULL),
(16, 'Coupon', 'admin/coupon/add-new', 'admin', NULL, NULL),
(17, 'Custom Role', 'admin/custom-role/create', 'admin', NULL, NULL),
(18, 'Employee', 'admin/employee/add-new', 'admin', NULL, NULL),
(19, 'Seller', 'admin/sellers/seller-list', 'admin', NULL, NULL),
(20, 'Contacts', 'admin/contact/list', 'admin', NULL, NULL),
(21, 'Flash Deal', 'admin/deal/flash', 'admin', NULL, NULL),
(22, 'Deal of the day', 'admin/deal/day', 'admin', NULL, NULL),
(23, 'Language', 'admin/business-settings/language', 'admin', NULL, NULL),
(24, 'Mail', 'admin/business-settings/mail', 'admin', NULL, NULL),
(25, 'Shipping method', 'admin/business-settings/shipping-method/add', 'admin', NULL, NULL),
(26, 'Currency', 'admin/currency/view', 'admin', NULL, NULL),
(27, 'Payment method', 'admin/business-settings/payment-method', 'admin', NULL, NULL),
(28, 'SMS Gateway', 'admin/business-settings/sms-gateway', 'admin', NULL, NULL),
(29, 'Support Ticket', 'admin/support-ticket/view', 'admin', NULL, NULL),
(30, 'FAQ', 'admin/helpTopic/list', 'admin', NULL, NULL),
(31, 'About Us', 'admin/business-settings/about-us', 'admin', NULL, NULL),
(32, 'Terms and Conditions', 'admin/business-settings/terms-condition', 'admin', NULL, NULL),
(33, 'Web Config', 'admin/business-settings/web-config', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `email` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'pending',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `branch` varchar(191) DEFAULT NULL,
  `account_no` varchar(191) DEFAULT NULL,
  `holder_name` varchar(191) DEFAULT NULL,
  `auth_token` text DEFAULT NULL,
  `sales_commission_percentage` double(8,2) DEFAULT NULL,
  `gst` varchar(191) DEFAULT NULL,
  `cm_firebase_token` varchar(191) DEFAULT NULL,
  `pos_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `f_name`, `l_name`, `phone`, `image`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `bank_name`, `branch`, `account_no`, `holder_name`, `auth_token`, `sales_commission_percentage`, `gst`, `cm_firebase_token`, `pos_status`) VALUES
(1, 'hoang', 'hua', '967170892', '2024-06-21-6675449286032.png', 'anhkhanh@gmail.com', '$2y$10$4nKdTEZRAiwUSczgv.Th6OqBccqCJHN56yWaNS9KZ5/KLmSKgl7kS', 'approved', NULL, '2024-06-21 08:14:58', '2024-06-21 08:14:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `seller_wallets`
--

CREATE TABLE `seller_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `total_earning` double NOT NULL DEFAULT 0,
  `withdrawn` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_given` double(8,2) NOT NULL DEFAULT 0.00,
  `pending_withdraw` double(8,2) NOT NULL DEFAULT 0.00,
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `collected_cash` double(8,2) NOT NULL DEFAULT 0.00,
  `total_tax_collected` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_wallets`
--

INSERT INTO `seller_wallets` (`id`, `seller_id`, `total_earning`, `withdrawn`, `created_at`, `updated_at`, `commission_given`, `pending_withdraw`, `delivery_charge_earned`, `collected_cash`, `total_tax_collected`) VALUES
(1, 1, 0, 0, '2024-06-21 08:14:58', '2024-06-21 08:14:58', 0.00, 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `seller_wallet_histories`
--

CREATE TABLE `seller_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `payment` varchar(191) NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(15) DEFAULT NULL,
  `contact_person_name` varchar(50) DEFAULT NULL,
  `address_type` varchar(20) NOT NULL DEFAULT 'home',
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `is_billing` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `customer_id`, `contact_person_name`, `address_type`, `address`, `city`, `zip`, `phone`, `created_at`, `updated_at`, `state`, `country`, `latitude`, `longitude`, `is_billing`) VALUES
(1, '6', 'Hanh Nguyen', 'Home', 'Ha noi', 'Ha noi', '10000', '+84987167167', '2024-06-21 08:04:03', '2024-06-21 08:04:03', NULL, 'Vietnam', '0.0', '0.0', 0),
(2, '6', 'Hanh Nguyen', 'Home', 'ha noi', 'cau giay', '10000', '+84987167167', '2024-06-27 04:23:10', '2024-06-27 04:23:10', NULL, 'Vietnam', '0.0', '0.0', 1),
(3, '0', 'Khánh Đặng', 'home', 'Lạch Tray\r\nLê chân', 'Hải Phòng', '16000', '0921705458', '2024-08-29 09:08:09', '2024-08-29 09:08:09', NULL, 'Viet Nam', '0', '0', 0),
(4, '0', 'Khánh Đặng', 'home', 'Lạch Tray\r\nLê chân', 'Hải Phòng', '16000', '0921705458', '2024-08-29 09:08:14', '2024-08-29 09:08:14', NULL, 'Viet Nam', '0', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `creator_type` varchar(191) NOT NULL DEFAULT 'admin',
  `title` varchar(100) DEFAULT NULL,
  `cost` decimal(8,2) NOT NULL DEFAULT 0.00,
  `duration` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `creator_id`, `creator_type`, `title`, `cost`, `duration`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'admin', 'Company Vehicle', 5.00, '2 Week', 1, '2021-05-25 20:57:04', '2021-05-25 20:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_types`
--

CREATE TABLE `shipping_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_types`
--

INSERT INTO `shipping_types` (`id`, `seller_id`, `shipping_type`, `created_at`, `updated_at`) VALUES
(1, 0, 'category_wise', '2024-08-29 08:37:11', '2024-08-29 08:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(25) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `bottom_banner` varchar(191) DEFAULT NULL,
  `vacation_start_date` date DEFAULT NULL,
  `vacation_end_date` date DEFAULT NULL,
  `vacation_note` varchar(255) DEFAULT NULL,
  `vacation_status` tinyint(4) NOT NULL DEFAULT 0,
  `temporary_close` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `seller_id`, `name`, `address`, `contact`, `image`, `bottom_banner`, `vacation_start_date`, `vacation_end_date`, `vacation_note`, `vacation_status`, `temporary_close`, `created_at`, `updated_at`, `banner`) VALUES
(1, 1, 'shop ka', 'Ha noi', '967170892', '2024-06-21-6675449295bc7.png', 'def.png', NULL, NULL, NULL, 0, 0, '2024-06-21 08:14:58', '2024-06-21 08:14:58', '2024-06-21-6675449295ddb.png');

-- --------------------------------------------------------

--
-- Table structure for table `shop_followers`
--

CREATE TABLE `shop_followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Customer ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `active_status` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `name`, `link`, `icon`, `active_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'twitter', 'https://www.w3schools.com/howto/howto_css_table_responsive.asp', 'fa fa-twitter', 1, 1, '2020-12-31 21:18:03', '2020-12-31 21:18:25'),
(2, 'linkedin', 'https://dev.6amtech.com/', 'fa fa-linkedin', 1, 1, '2021-02-27 16:23:01', '2021-02-27 16:23:05'),
(3, 'google-plus', 'https://dev.6amtech.com/', 'fa fa-google-plus-square', 1, 1, '2021-02-27 16:23:30', '2021-02-27 16:23:33'),
(4, 'pinterest', 'https://dev.6amtech.com/', 'fa fa-pinterest', 1, 1, '2021-02-27 16:24:14', '2021-02-27 16:24:26'),
(5, 'instagram', 'https://dev.6amtech.com/', 'fa fa-instagram', 1, 1, '2021-02-27 16:24:36', '2021-02-27 16:24:41'),
(6, 'facebook', 'facebook.com', 'fa fa-facebook', 1, 1, '2021-02-27 19:19:42', '2021-06-11 17:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `priority` varchar(15) NOT NULL DEFAULT 'low',
  `description` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `customer_id`, `subject`, `type`, `priority`, `description`, `reply`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'hi admin', 'Complaint', 'low', 'app co van de', NULL, 'open', '2024-06-21 09:58:50', '2024-06-21 10:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_convs`
--

CREATE TABLE `support_ticket_convs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `customer_message` varchar(191) DEFAULT NULL,
  `admin_message` varchar(191) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_ticket_convs`
--

INSERT INTO `support_ticket_convs` (`id`, `support_ticket_id`, `admin_id`, `customer_message`, `admin_message`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'bạn thấy app có vấn đề gì ạ', 0, '2024-06-21 10:10:10', '2024-06-21 10:10:10'),
(2, 1, 1, 'app bị lag', NULL, 0, '2024-06-21 11:17:32', '2024-06-21 11:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(191) NOT NULL,
  `visit_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `payment_for` varchar(100) DEFAULT NULL,
  `payer_id` bigint(20) DEFAULT NULL,
  `payment_receiver_id` bigint(20) DEFAULT NULL,
  `paid_by` varchar(15) DEFAULT NULL,
  `paid_to` varchar(15) DEFAULT NULL,
  `payment_method` varchar(15) DEFAULT NULL,
  `payment_status` varchar(10) NOT NULL DEFAULT 'success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(191) DEFAULT NULL,
  `order_details_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `translationable_type` varchar(191) NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `phone` varchar(25) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `email` varchar(80) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `street_address` varchar(250) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `house_no` varchar(50) DEFAULT NULL,
  `apartment_no` varchar(50) DEFAULT NULL,
  `cm_firebase_token` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `payment_card_last_four` varchar(191) DEFAULT NULL,
  `payment_card_brand` varchar(191) DEFAULT NULL,
  `payment_card_fawry_token` text DEFAULT NULL,
  `login_medium` varchar(191) DEFAULT NULL,
  `social_id` varchar(191) DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `temporary_token` varchar(191) DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `wallet_balance` double(8,2) DEFAULT NULL,
  `loyalty_point` double(8,2) DEFAULT NULL,
  `login_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `f_name`, `l_name`, `phone`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `street_address`, `country`, `city`, `zip`, `house_no`, `apartment_no`, `cm_firebase_token`, `is_active`, `payment_card_last_four`, `payment_card_brand`, `payment_card_fawry_token`, `login_medium`, `social_id`, `is_phone_verified`, `temporary_token`, `is_email_verified`, `wallet_balance`, `loyalty_point`, `login_hit_count`, `is_temp_blocked`, `temp_block_time`) VALUES
(0, 'walking customer', 'walking', 'customer', '000000000000', 'def.png', 'walking@customer.com', NULL, '', NULL, NULL, '2022-02-03 03:46:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL),
(2, NULL, 'hoang', 'Hai', '+840966042332', '2024-06-19-6672b888ad961.png', 'hoanghuy22233@gamil.com', NULL, '$2y$10$GHFugiE8l9YX6k0Yg9shJOsVbJDlVX3h5iQy2EB72tRcuxZTvuWf2', NULL, '2024-06-19 09:50:51', '2024-06-19 09:52:56', NULL, NULL, NULL, NULL, NULL, NULL, '66616B652D61706E732D746F6B656E2D666F722D73696D756C61746F72', 1, NULL, NULL, NULL, NULL, NULL, 0, 'V3Yw6kSgAWU09YGnCuRkccFPbmMynYygde2qNvxv', 0, NULL, NULL, 0, 0, NULL),
(3, NULL, 'hung', 'Hai', '+84867168982', '2024-06-19-6672d6564c1f4.png', 'hung23@gmail.com', NULL, '$2y$10$mwY8NvEPEUSZutEidp6DF.GuQV2fMoItnyYEML89KsS2/GX1r8Siu', NULL, '2024-06-19 11:59:50', '2024-06-19 12:00:06', NULL, NULL, NULL, NULL, NULL, NULL, '66616B652D61706E732D746F6B656E2D666F722D73696D756C61746F72', 1, NULL, NULL, NULL, NULL, NULL, 0, 'Yrw3bXRkzq6EWKBxe4E4U65UcbHyxJtmutzSOSkn', 0, NULL, NULL, 0, 0, NULL),
(4, NULL, 'hung', 'Kkk', '+84867160325', '2024-06-19-667309f7658a7.png', 'hung56789@gmail.com', NULL, '$2y$10$at3Hmb.axg.9D5Dn0pxiq.rzfdXyD6z3MXiknZhowSSwxFlZAIzI6', NULL, '2024-06-19 15:40:01', '2024-06-19 15:40:23', NULL, NULL, NULL, NULL, NULL, NULL, '66616B652D61706E732D746F6B656E2D666F722D73696D756C61746F72', 1, NULL, NULL, NULL, NULL, NULL, 0, 'R4m8mYHfG1TcOdLDcycVSVIW0763s5ufFFtLdvuG', 0, NULL, NULL, 0, 0, NULL),
(5, NULL, 'hoang', 'Hai', '+84867160326', '2024-06-20-66742779e4382.png', 'hoangha23@gmail.com', NULL, '$2y$10$xbWhg.jKyJO12jJDTABvdOTyt.XWWcm0UNDvYE6n6RZazNJEr7CHW', NULL, '2024-06-20 11:58:08', '2024-06-20 11:58:33', NULL, NULL, NULL, NULL, NULL, NULL, '66616B652D61706E732D746F6B656E2D666F722D73696D756C61746F72', 1, NULL, NULL, NULL, NULL, NULL, 0, '8rfJSjAu49BxtVO1egaoMqkcBjjTXLeD4SOE334Z', 0, NULL, NULL, 0, 0, NULL),
(6, NULL, 'Hanh', 'Nguyen', '+84987167167', 'def.png', 'hanhnguyen23@gmail.com', NULL, '$2y$10$s/y1eqGr.VzdufA8vZpMDekRG01RmcoiaQI8EVmheAPO.m6Jfu83q', NULL, '2024-06-20 17:01:12', '2024-07-10 06:00:02', NULL, NULL, NULL, NULL, NULL, NULL, '1160284B14A773DE9A7374B99940328232271F76FE904C12A53F40F474E34487', 1, NULL, NULL, NULL, NULL, NULL, 0, 'XskHh4SJC6HoyKM9iUvxYgmgvi3jAb8QKhQhgb4T', 0, NULL, NULL, 0, 0, NULL),
(7, NULL, 'Khánh', 'Đặng', '0999786688', 'def.png', 'Anhkhanh5539574@gmail.com', NULL, '$2y$10$DRMZ4WR13Di9thVZaw5ZB.qR1jbDkFYMbGl0kTDylVbpcn.KkoQUm', 'LR7uFTUf4JLeqd8Bj6Peca5mrp07fwqizTaai7SjAlGxx3HAdsmr0emoB0LS', '2024-08-29 08:30:28', '2024-08-29 08:30:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `admin_bonus` decimal(24,3) NOT NULL DEFAULT 0.000,
  `balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `transaction_type` varchar(191) DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_methods`
--

CREATE TABLE `withdrawal_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(191) NOT NULL,
  `method_fields` text NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` varchar(191) NOT NULL DEFAULT '0.00',
  `withdrawal_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawal_method_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`withdrawal_method_fields`)),
  `transaction_note` text DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_wallet_histories`
--
ALTER TABLE `admin_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_shippings`
--
ALTER TABLE `cart_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_shipping_costs`
--
ALTER TABLE `category_shipping_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chattings`
--
ALTER TABLE `chattings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallet_histories`
--
ALTER TABLE `customer_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_of_the_days`
--
ALTER TABLE `deal_of_the_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryman_notifications`
--
ALTER TABLE `deliveryman_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryman_wallets`
--
ALTER TABLE `deliveryman_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_country_codes`
--
ALTER TABLE `delivery_country_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_transactions`
--
ALTER TABLE `delivery_man_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_zip_codes`
--
ALTER TABLE `delivery_zip_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_deals`
--
ALTER TABLE `feature_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_topics`
--
ALTER TABLE `help_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
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
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_expected_delivery_histories`
--
ALTER TABLE `order_expected_delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`identity`);

--
-- Indexes for table `paytabs_invoices`
--
ALTER TABLE `paytabs_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phone_or_email_verifications`
--
ALTER TABLE `phone_or_email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_compares`
--
ALTER TABLE `product_compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_requests`
--
ALTER TABLE `refund_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_statuses`
--
ALTER TABLE `refund_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_transactions`
--
ALTER TABLE `refund_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_functions`
--
ALTER TABLE `search_functions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sellers_email_unique` (`email`);

--
-- Indexes for table `seller_wallets`
--
ALTER TABLE `seller_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_wallet_histories`
--
ALTER TABLE `seller_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_types`
--
ALTER TABLE `shipping_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_followers`
--
ALTER TABLE `shop_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_convs`
--
ALTER TABLE `support_ticket_convs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD UNIQUE KEY `transactions_id_unique` (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_translationable_id_index` (`translationable_id`),
  ADD KEY `translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_wallet_histories`
--
ALTER TABLE `admin_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart_shippings`
--
ALTER TABLE `cart_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category_shipping_costs`
--
ALTER TABLE `category_shipping_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chattings`
--
ALTER TABLE `chattings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_wallet_histories`
--
ALTER TABLE `customer_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_of_the_days`
--
ALTER TABLE `deal_of_the_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deliveryman_notifications`
--
ALTER TABLE `deliveryman_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveryman_wallets`
--
ALTER TABLE `deliveryman_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_country_codes`
--
ALTER TABLE `delivery_country_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_man_transactions`
--
ALTER TABLE `delivery_man_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_zip_codes`
--
ALTER TABLE `delivery_zip_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_deals`
--
ALTER TABLE `feature_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `help_topics`
--
ALTER TABLE `help_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100003;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_expected_delivery_histories`
--
ALTER TABLE `order_expected_delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paytabs_invoices`
--
ALTER TABLE `paytabs_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_or_email_verifications`
--
ALTER TABLE `phone_or_email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_compares`
--
ALTER TABLE `product_compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_requests`
--
ALTER TABLE `refund_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_statuses`
--
ALTER TABLE `refund_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_transactions`
--
ALTER TABLE `refund_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `search_functions`
--
ALTER TABLE `search_functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller_wallets`
--
ALTER TABLE `seller_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller_wallet_histories`
--
ALTER TABLE `seller_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shipping_types`
--
ALTER TABLE `shipping_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_followers`
--
ALTER TABLE `shop_followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `support_ticket_convs`
--
ALTER TABLE `support_ticket_convs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
