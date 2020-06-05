-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2020 at 05:26 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopla7`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Minh Hiếu', 'Admin', 'ltmh1298@gmail.com', NULL, '$2y$10$10jzv7CbEZmnoMnybc2FIeXlLGmkSp70e8RJmNt6GQnAgUfGLDWsK', 'Quản Lý', NULL, NULL, NULL),
(2, 'Minh Hiếu 2', 'admin3', 'hieu32@gmail.com', NULL, '$2y$10$QRnglzOG70LpU6lnUdJYY.eNNBESQ2eSFNG2nzppOsYQ0Z5FyNibO', 'Quản lý', NULL, '2020-05-03 23:20:18', '2020-05-03 23:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Tủ Quần Áo', 'tu-quan-ao', '0', '2020-04-29 08:20:45', '2020-04-29 08:20:45'),
(2, 'Giường Ngủ', 'giuong-ngu', '0', '2020-04-29 08:22:25', '2020-04-29 08:22:25'),
(3, 'Bàn Trang Điểm', 'ban-trang-diem', '4', '2020-04-29 08:23:10', '2020-05-02 18:09:44'),
(4, 'Sản Phẩm Khác', 'san-pham-khac', '0', '2020-04-29 08:24:02', '2020-04-29 08:24:02'),
(5, 'Giường Rộng 1,2m', 'giuong-rong-12m', '2', '2020-04-29 06:32:57', '2020-04-29 06:32:57'),
(6, 'Giường Rộng 1,4m', 'giuong-rong-14m', '2', '2020-04-29 06:34:16', '2020-04-29 06:34:16'),
(7, 'Giường Rộng 1,8m', 'giuong-rong-18m', '2', '2020-04-29 06:34:31', '2020-04-29 06:34:31'),
(8, 'Tủ Quần Áo 2 Cánh', 'tu-quan-ao-2-canh', '1', '2020-04-29 06:37:20', '2020-04-29 06:37:20'),
(9, 'Tủ Quần Áo 3 Cánh', 'tu-quan-ao-3-canh', '1', '2020-04-29 06:37:27', '2020-04-29 06:37:27'),
(10, 'Tủ Quần Áo 2 Tầng', 'tu-quan-ao-2-tang', '1', '2020-04-29 06:50:03', '2020-04-29 06:50:03'),
(11, 'Bộ Giường Tủ', 'bo-giuong-tu', '1', '2020-04-29 06:50:39', '2020-04-29 06:50:39'),
(12, 'Tủ Giầy', 'tu-giay', '4', '2020-04-29 06:51:08', '2020-04-29 06:51:08'),
(13, 'Tủ Ô Kéo', 'tu-o-keo', '4', '2020-04-29 06:51:17', '2020-04-29 06:51:17'),
(14, 'Kệ Tivi', 'ke-tivi', '4', '2020-04-29 06:51:41', '2020-04-29 06:51:41'),
(15, 'Giá Sách', 'gia-sach', '4', '2020-04-29 06:52:27', '2020-04-29 06:52:27'),
(16, 'Bàn Máy Tính', 'ban-may-tinh', '4', '2020-04-29 06:52:47', '2020-04-29 06:52:47'),
(18, 'khong bietdss', 'khong-bietdss', '4', '2020-05-22 10:07:45', '2020-05-22 10:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_04_05_152202_create-admin-users-table', 1),
(4, '2020_04_28_024011_create_categories_table', 1),
(5, '2020_04_28_024058_create_oders_table', 1),
(6, '2020_04_28_024149_create_products_table', 1),
(7, '2020_04_28_024219_create_pro_details_table', 1),
(8, '2020_04_28_024324_create_oders_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oders`
--

CREATE TABLE `oders` (
  `id` int(10) UNSIGNED NOT NULL,
  `u_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(13,2) NOT NULL,
  `status` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oders_detail`
--

CREATE TABLE `oders_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `o_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `status` int(11) NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `aduser_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `intro`, `promo1`, `promo2`, `promo3`, `images`, `review`, `price`, `status`, `cat_id`, `aduser_id`, `created_at`, `updated_at`) VALUES
(1, 'TỦ ÁO GỖ CÔNG NGHIỆP DÁN SIMILY', 'tu-ao-go-cong-nghiep-dan-simily', 'Rộng 120 x Cao 200x Sâu 50 (cm) 2 ngăn kéo ngoài', ' Miễn phí vận chuyển', 'Tặng bộ ga gối nệm', 'Tặng ổ bánh mì', '1588188435_1-1-500x500.jpg', '<p><strong>TỦ &Aacute;O GỖ C&Ocirc;NG NGHIỆP D&Aacute;N SIMILY</strong></p>\r\n\r\n<p>* K&iacute;ch thước - gi&aacute;:</p>\r\n\r\n<p>- Rộng 120 x Cao 200x S&acirc;u 50 (cm) 2 ngăn k&eacute;o ngo&agrave;i - 1.650.000 VND&nbsp;</p>\r\n\r\n<p>* Khuyến mại:&nbsp;Miễn ph&iacute; vận chuyển, lắp&nbsp;đặt trong b&aacute;n k&iacute;nh 10 km t&iacute;nh từ 750 La Th&agrave;nh</p>\r\n\r\n<p>* Bảo h&agrave;nh:&nbsp;12 th&aacute;ng trong&nbsp;điều kiện b&igrave;nh thường</p>', '1650000.00', 1, 8, 1, '2020-04-29 12:27:15', '2020-05-19 08:59:55'),
(2, 'TỦ ÁO OKAL 2 CÁNH 1,1M VÂN LIM', 'tu-ao-okal-2-canh-11m-van-lim', 'Tủ áo 2 cánh: Rộng 110 x Cao 1,85 x Sâu 45 (cm) - 1.400.000 VND', ' Miễn phí vận chuyển', 'Tặng bộ ga gối nệm', 'Tặng ổ bánh mì', '1588381042_500x500.jpg', '<p>TỦ &Aacute;O GỖ &Eacute;P/ GỖ C&Ocirc;NG NGHIỆP OKAL&nbsp;PHỦ MELAMINE LOẠI 1,1 M&Eacute;T V&Acirc;N LIM - 1.400.000 VND</p>\r\n\r\n<p>*&nbsp;Đặc điểm:</p>\r\n\r\n<p>- Chất liệu: gỗ c&ocirc;ng nghiệp okal, chống mọt, kh&ocirc;ng cong v&ecirc;nh phủ Melamine&nbsp;chống xước c&oacute; nhiều m&agrave;u sắc giống v&acirc;n gỗ tự nhi&ecirc;n</p>\r\n\r\n<p>- M&agrave;u sắc: v&acirc;n L&aacute;t, v&acirc;n ngọc lan, v&acirc;n xoan đ&agrave;o, v&acirc;n Lim, v&acirc;n hạt dẻ</p>\r\n\r\n<p>- Xuất xứ: Việt Nam</p>\r\n\r\n<p>- Tủ quần &aacute;o&nbsp;được thiết kế 2 c&aacute;nh mở tiện lợi với c&aacute;c ngăn để đồ gắp v&agrave; đồ treo được thiết kế hợp l&yacute; gi&uacute;p bạn ho&agrave;n to&agrave;n thoải m&aacute;i trong qu&aacute; tr&igrave;nh sử dụng sản phẩm</p>\r\n\r\n<p>* K&iacute;ch thước - gi&aacute;:</p>\r\n\r\n<p>- Tủ &aacute;o 2 c&aacute;nh: Rộng 110 x Cao 1,85 x S&acirc;u 45 (cm)&nbsp;- 1.400.000 VND</p>\r\n\r\n<p>* Khuyến mại:&nbsp;Miễn ph&iacute; vận chuyển, lắp đặt trong nội th&agrave;nh</p>\r\n\r\n<p>* Bảo h&agrave;nh:&nbsp;12 th&aacute;ng trong&nbsp;điều kiện b&igrave;nh thường&nbsp;</p>', '1400000.00', 1, 8, 1, '2020-05-01 17:57:22', '2020-05-01 18:41:05'),
(3, 'TỦ ÁO OKAL 0,9M', 'tu-ao-okal-09m', 'Tủ áo 2 cánh: Rộng 0,9m x Cao 1,6m x Sâu 0,45m - 1.100.000 VND', ' Miễn phí vận chuyển', 'Tặng bộ ga gối nệm', 'Tặng ổ bánh mì', '1588381986_1-500x500.jpg', '<p>TỦ &Aacute;O GỖ &Eacute;P/ GỖ C&Ocirc;NG NGHIỆP OKAL&nbsp;PHỦ MELAMINE LOẠI 0,9 M&Eacute;T&nbsp;</p>\r\n\r\n<p>*&nbsp;Đặc điểm:</p>\r\n\r\n<p>- Chất liệu: gỗ c&ocirc;ng nghiệp okal, chống mọt, kh&ocirc;ng cong v&ecirc;nh phủ Melamine&nbsp;chống xước c&oacute; nhiều m&agrave;u sắc giống v&acirc;n gỗ tự nhi&ecirc;n</p>\r\n\r\n<p>- M&agrave;u sắc: v&acirc;n L&aacute;t, v&acirc;n Xoan đ&agrave;o, v&acirc;n Lim</p>\r\n\r\n<p>- Xuất xứ: Việt Nam</p>\r\n\r\n<p>- Tủ quần &aacute;o&nbsp;được thiết kế 2 c&aacute;nh mở tiện lợi với c&aacute;c ngăn để đồ gấp v&agrave; đồ treo được thiết kế hợp l&yacute; gi&uacute;p bạn ho&agrave;n to&agrave;n thoải m&aacute;i trong qu&aacute; tr&igrave;nh sử dụng sản phẩm</p>\r\n\r\n<p>* K&iacute;ch thước - gi&aacute;:</p>\r\n\r\n<p>- Tủ &aacute;o 2 c&aacute;nh: Rộng 0,9m x Cao 1,6m x S&acirc;u 0,45m - 1.100.000 VND</p>\r\n\r\n<p>* Khuyến mại:&nbsp;Miễn ph&iacute; vận chuyển, lắp đặt trong b&aacute;n k&iacute;nh 10km t&iacute;nh từ 750 La Th&agrave;nh, H&agrave; Nội</p>\r\n\r\n<p>* Bảo h&agrave;nh:&nbsp;12 th&aacute;ng trong&nbsp;điều kiện b&igrave;nh thường&nbsp;</p>', '1100000.00', 1, 8, 1, '2020-05-01 18:13:06', '2020-05-02 06:15:04'),
(4, 'TỦ ÁO OKAL 1,1M', 'tu-ao-okal-11m', 'Tủ áo 2 cánh: Rộng 1,1m x Cao 1,85m x Sâu 0,45m - 1.400.000 VND', ' Miễn phí vận chuyển', 'Tặng bộ ga gối nệm', 'Tặng ổ bánh mì', '1588382165_2-500x500.jpg', '<p>TỦ &Aacute;O GỖ &Eacute;P/ GỖ C&Ocirc;NG NGHIỆP OKAL&nbsp;PHỦ MELAMINE LOẠI 1,1 M&Eacute;T&nbsp;</p>\r\n\r\n<p>*&nbsp;Đặc điểm:</p>\r\n\r\n<p>- Chất liệu: gỗ c&ocirc;ng nghiệp okal, chống mọt, kh&ocirc;ng cong v&ecirc;nh phủ Melamine&nbsp;chống xước c&oacute; nhiều m&agrave;u sắc giống v&acirc;n gỗ tự nhi&ecirc;n</p>\r\n\r\n<p>- M&agrave;u sắc: v&acirc;n L&aacute;t, v&acirc;n Xoan đ&agrave;o, v&acirc;n Lim</p>\r\n\r\n<p>- Xuất xứ: Việt Nam</p>\r\n\r\n<p>- Tủ quần &aacute;o&nbsp;được thiết kế 2 c&aacute;nh mở tiện lợi với c&aacute;c ngăn để đồ gấp v&agrave; đồ treo được thiết kế hợp l&yacute; gi&uacute;p bạn ho&agrave;n to&agrave;n thoải m&aacute;i trong qu&aacute; tr&igrave;nh sử dụng sản phẩm</p>\r\n\r\n<p>* K&iacute;ch thước - gi&aacute;:</p>\r\n\r\n<p>- Tủ &aacute;o 2 c&aacute;nh: Rộng 1,1m x Cao 1,85m x S&acirc;u 0,45m - 1.400.000 VND</p>\r\n\r\n<p>* Khuyến mại:&nbsp;Miễn ph&iacute; vận chuyển, lắp đặt trong b&aacute;n k&iacute;nh 10km t&iacute;nh từ 750 La Th&agrave;nh, H&agrave; Nội</p>\r\n\r\n<p>* Bảo h&agrave;nh:&nbsp;12 th&aacute;ng trong&nbsp;điều kiện b&igrave;nh thường&nbsp;</p>', '1400000.00', 1, 8, 1, '2020-05-01 18:16:05', '2020-05-02 06:15:21'),
(5, 'TỦ ÁO OKAL 90CM MÀU LÁT', 'tu-ao-okal-90cm-mau-lat', 'Tủ áo 2 cánh: Rộng 0,9m x Cao 1,6m x Sâu 0,45m - 1.100.000 VND', ' Miễn phí vận chuyển', 'Tặng bộ ga gối nệm', 'Tặng ổ bánh mì', '1588382680_3-500x500.jpg', '<p>TỦ &Aacute;O GỖ &Eacute;P/ GỖ C&Ocirc;NG NGHIỆP OKAL&nbsp;PHỦ MELAMINE LOẠI 0,9 M&Eacute;T M&Agrave;U L&Aacute;T</p>\r\n\r\n<p>*&nbsp;Đặc điểm:</p>\r\n\r\n<p>- Chất liệu: gỗ c&ocirc;ng nghiệp okal, chống mọt, kh&ocirc;ng cong v&ecirc;nh phủ Melamine&nbsp;chống xước c&oacute; nhiều m&agrave;u sắc giống v&acirc;n gỗ tự nhi&ecirc;n</p>\r\n\r\n<p>- M&agrave;u sắc: v&acirc;n L&aacute;t, v&acirc;n Xoan đ&agrave;o, v&acirc;n Lim</p>\r\n\r\n<p>- Xuất xứ: Việt Nam</p>\r\n\r\n<p>- Tủ quần &aacute;o&nbsp;được thiết kế 2 c&aacute;nh mở tiện lợi với c&aacute;c ngăn để đồ gấp v&agrave; đồ treo được thiết kế hợp l&yacute; gi&uacute;p bạn ho&agrave;n to&agrave;n thoải m&aacute;i trong qu&aacute; tr&igrave;nh sử dụng sản phẩm</p>\r\n\r\n<p>* K&iacute;ch thước - gi&aacute;:</p>\r\n\r\n<p>- Tủ &aacute;o 2 c&aacute;nh: Rộng 0,9m x Cao 1,6m x S&acirc;u 0,45m - 1.100.000 VND</p>\r\n\r\n<p>* Khuyến mại:&nbsp;Miễn ph&iacute; vận chuyển, lắp đặt trong b&aacute;n k&iacute;nh 10km t&iacute;nh từ 750 La Th&agrave;nh, H&agrave; Nội</p>\r\n\r\n<p>* Bảo h&agrave;nh:&nbsp;12 th&aacute;ng trong&nbsp;điều kiện b&igrave;nh thường&nbsp;</p>', '1100000.00', 1, 8, 1, '2020-05-01 18:24:40', '2020-05-01 18:24:40'),
(6, 'TỦ ÁO GỖ CÔNG NGHIỆP/ TỦ OKAL PHỦ MELAMINE LOẠI 1,6 MÉT VÂN KẺ ÁNH', 'tu-ao-go-cong-nghiep-tu-okal-phu-melamine-loai-16-met-van-ke-anh', 'Tủ áo 3 cánh: Rộng 1,6m x Cao 2,0m x Sâu 0,5m - 2.200.000 VND', ' Miễn phí vận chuyển', 'Tặng bộ ga gối nệm', 'Tặng ổ bánh mì', '1588386559_3-500x500.jpg', '<p>TỦ &Aacute;O GỖ &Eacute;P/ GỖ C&Ocirc;NG NGHIỆP OKAL&nbsp;PHỦ MELAMINE LOẠI 1,6 M&Eacute;T V&Acirc;N KẺ &Aacute;NH</p>\r\n\r\n<p>*&nbsp;Đặc điểm:</p>\r\n\r\n<p>- Chất liệu: gỗ c&ocirc;ng nghiệp okal, chống mọt, kh&ocirc;ng cong v&ecirc;nh phủ Melamine&nbsp;chống xước c&oacute; nhiều m&agrave;u sắc giống v&acirc;n gỗ tự nhi&ecirc;n</p>\r\n\r\n<p>- M&agrave;u sắc: v&acirc;n L&aacute;t, v&acirc;n xoan đ&agrave;o, v&acirc;n Lim</p>\r\n\r\n<p>- Xuất xứ: Việt Nam</p>\r\n\r\n<p>- Tủ quần &aacute;o&nbsp;được thiết kế 3 c&aacute;nh mở tiện lợi với c&aacute;c ngăn để đồ gấp v&agrave; đồ treo được thiết kế hợp l&yacute; gi&uacute;p bạn ho&agrave;n to&agrave;n thoải m&aacute;i trong qu&aacute; tr&igrave;nh sử dụng sản phẩm</p>\r\n\r\n<p>* K&iacute;ch thước - gi&aacute;:</p>\r\n\r\n<p>- Tủ &aacute;o 3 c&aacute;nh: Rộng 1,6m x Cao 2,0m x S&acirc;u 0,5m - 2.200.000 VND</p>\r\n\r\n<p>* Khuyến mại:&nbsp;Miễn ph&iacute; vận chuyển, lắp đặt trong b&aacute;n k&iacute;nh 10km t&iacute;nh từ 750 La Th&agrave;nh, H&agrave; Nội</p>\r\n\r\n<p>* Bảo h&agrave;nh:&nbsp;12 th&aacute;ng trong&nbsp;điều kiện b&igrave;nh thường&nbsp;</p>', '2200000.00', 1, 9, 1, '2020-05-01 19:29:19', '2020-05-01 19:29:19'),
(7, 'TỦ ÁO GỖ CÔNG NGHIỆP PHỦ MELAMINE VÂN KẺ ÁNH CÁNH TRẮNG', 'tu-ao-go-cong-nghiep-phu-melamine-van-ke-anh-canh-trang', 'Kích thước: Rộng 1,2m x Cao 2,05m x Sâu 0,53m - 2.000.000 VND', ' Miễn phí vận chuyển', 'Tặng bộ ga gối nệm', 'Tặng ổ bánh mì', '1588425632_1-1-500x500.jpg', '<p>TỦ &Aacute;O GỖ C&Ocirc;NG NGHIỆP PHỦ MELAMINE V&Acirc;N KẺ &Aacute;NH C&Aacute;NH TRẮNG<br />\r\n* Đặc điểm:<br />\r\n- Chất liệu: gỗ c&ocirc;ng nghiệp chịu lực tốt, chống ẩm, chống mọt, kh&ocirc;ng cong v&ecirc;nh<br />\r\n- Bề mặt: Phủ Melamine chống xước l&agrave;m tăng độ bền của sản phẩm với nhiều v&acirc;n gỗ tự nhi&ecirc;n mang lại vẻ sang trọng cho căn ph&ograve;ng của Qu&yacute; kh&aacute;ch<br />\r\n- Xuất xứ: Việt Nam<br />\r\n- Tủ quần &aacute;o được thiết kế 3 c&aacute;nh mở tiện lợi với c&aacute;c ngăn để đồ gắp v&agrave; đồ treo được thiết kế hợp l&yacute;&nbsp;<br />\r\n* K&iacute;ch thước: Rộng 1,2m x Cao 2,05m x S&acirc;u 0,53m - 2.000.000 VND<br />\r\n* Khuyến mại:&nbsp;Miễn ph&iacute; vận chuyển, lắp&nbsp;đặt trong b&aacute;n k&iacute;nh 10 km t&iacute;nh từ 750 La Th&agrave;nh<br />\r\n* Bảo h&agrave;nh: 12 th&aacute;ng trong điều kiện b&igrave;nh thường</p>\r\n\r\n<p><img src=\"http://tungthuycomvn433.chiliweb.org/image/catalog/5/5-1.jpg\" /></p>\r\n\r\n<p><img src=\"http://tungthuycomvn433.chiliweb.org/image/catalog/5/1-1.jpg\" /><img src=\"http://tungthuycomvn433.chiliweb.org/image/catalog/5/2-1.jpg\" /><img src=\"http://tungthuycomvn433.chiliweb.org/image/catalog/5/3-1.jpg\" /><img src=\"http://tungthuycomvn433.chiliweb.org/image/catalog/5/4-1.jpg\" /></p>\r\n\r\n<p>CH&Uacute;NG T&Ocirc;I SẴN S&Agrave;NG SẢN XUẤT THEO NHU CẦU RI&Ecirc;NG CỦA QU&Yacute; KH&Aacute;CH<br />\r\n- Để hỏi b&aacute;o gi&aacute;/ hỏi h&agrave;ng, xin vui l&ograve;ng gọi v&agrave;o số 09xx xxx xxx<br />\r\n- Để gửi mẫu/ bản thiết kế h&agrave;ng đặt, xin vui l&ograve;ng gửi v&agrave;o email xxx@gmail.com</p>', '2000000.00', 1, 9, 1, '2020-05-02 06:20:32', '2020-05-02 06:20:32'),
(8, 'TỦ ÁO MIN 1,6M 3 CÁNH', 'tu-ao-min-16m-3-canh', 'Kích thước: Rộng 160 x Cao 205 x Sâu 53 (cm) - 2.600.000 VND ', ' Miễn phí vận chuyển', 'Tặng bộ ga gối nệm', 'Tặng ổ bánh mì', '1588426073_500x500.jpg', '<p>TỦ &Aacute;O GỖ C&Ocirc;NG NGHIỆP PHỦ MELAMINE&nbsp;V&Acirc;N 195 1,6M 3 C&Aacute;NH 2 &Ocirc; K&Eacute;O NGO&Agrave;I</p>\r\n\r\n<p>*&nbsp;Đặc điểm:</p>\r\n\r\n<p>- Chất liệu: gỗ c&ocirc;ng nghiệp MDF đ&atilde; được xử l&yacute; chống mọt, kh&ocirc;ng cong v&ecirc;nh</p>\r\n\r\n<p>- Bề mặt: Phủ Melamine chống xước l&agrave;m tăng độ bền của sản phẩm&nbsp;với nhiều v&acirc;n gỗ tự nhi&ecirc;n mang lại vẻ sang trọng cho căn ph&ograve;ng của Qu&yacute; kh&aacute;ch</p>\r\n\r\n<p>- M&agrave;u sắc: v&acirc;n Xoan đ&agrave;o, Lim, L&aacute;t, Ngọc Lan, kẻ &aacute;nh, hạt dẻ, sồi</p>\r\n\r\n<p>- Xuất xứ: Việt Nam</p>\r\n\r\n<p>- Kết cấu: Tủ được thiết kế 3 c&aacute;nh mở 2 khoang với c&aacute;ch chia đồ xếp v&agrave; đồ treo hợp l&yacute;, 2 ngăn k&eacute;o ngo&agrave;i tiện dụng.</p>\r\n\r\n<p>* K&iacute;ch thước:&nbsp;Rộng 160 x Cao 205 x S&acirc;u 53 (cm)&nbsp;- 2.600.000 VND&nbsp;</p>\r\n\r\n<p>* Khuyến mại:&nbsp;Miễn ph&iacute; vận chuyển, lắp&nbsp;đặt trong b&aacute;n k&iacute;nh 10 km t&iacute;nh từ 750 La Th&agrave;nh</p>\r\n\r\n<p>* Bảo h&agrave;nh:&nbsp;12 th&aacute;ng trong&nbsp;điều kiện b&igrave;nh thường&nbsp;</p>\r\n\r\n<p><img src=\"http://tungthuycomvn433.chiliweb.org/image/catalog/13213/59475749_432062837355767_4315162537168470016_n.jpg\" /></p>', '2600000.00', 1, 9, 1, '2020-05-02 06:27:53', '2020-05-02 06:27:53'),
(9, 'BỘ GIƯỜNG TỦ KIỂU ĐÀI LOAN', 'bo-giuong-tu-kieu-dai-loan', 'Tủ: Rộng 130 x Cao 200 x Sâu 55 (cm) - 3.000.000 VND  - Giường:  Rộng 160 x Dài 200 (cm) - 2.600.000 VND (Giá đã bao gồm phản cùng chất liệu)', ' Miễn phí vận chuyển', 'Tặng bộ ga gối nệm', 'Tặng ổ bánh mì', '1588426278_10-500x500.jpg', '<h1>Giường tủ kiểu Đ&agrave;i Loan</h1>\r\n\r\n<p>BỘ GIƯỜNG TỦ GỖ &Eacute;P/ GỖ C&Ocirc;NG NGHIỆP MDF PHUN SƠN TRẮNG KIỂU Đ&Agrave;I LOAN&nbsp;-&nbsp;</p>\r\n\r\n<p>*&nbsp;Đặc điểm:</p>\r\n\r\n<p>- Chất liệu: gỗ c&ocirc;ng nghiệp MDF đ&atilde; qua tẩm sấy chống mọt, kh&ocirc;ng cong v&ecirc;nh</p>\r\n\r\n<p>- Bề mặt: phun sơn trắng l&agrave;m tăng độ bền của sản phẩm&nbsp;với nhiều m&agrave;u sắc tạo sự trẻ trung, lịch l&atilde;m cho căn ph&ograve;ng của Qu&yacute; kh&aacute;ch</p>\r\n\r\n<p>- M&agrave;u sắc: phun sơn trắng kiểu Đ&agrave;i Loan</p>\r\n\r\n<p>- Xuất xứ: Việt Nam</p>\r\n\r\n<p>- Tủ&nbsp;&aacute;o&nbsp;được thiết kế với 5 c&aacute;nh mở tiện lợi với c&aacute;c ngăn để đồ gắp v&agrave; đồ treo được thiết kế hợp l&yacute; gi&uacute;p bạn ho&agrave;n to&agrave;n thoải m&aacute;i trong qu&aacute; tr&igrave;nh sử dụng sản phẩm</p>\r\n\r\n<p>- Giường kiểu bệt trang nh&atilde;,&nbsp;đầu giường pano&nbsp;đơn mềm mại tạo chỗ dựa thoải m&aacute;i cho người sử dụng</p>\r\n\r\n<p>* K&iacute;ch thước - gi&aacute;:</p>\r\n\r\n<p>- &nbsp;Tủ: Rộng 130 x Cao 200 x S&acirc;u 55 (cm) - 3.000.000 VND</p>\r\n\r\n<p>- Giường: &nbsp;Rộng 160 x D&agrave;i 200 (cm) - 2.600.000 VND&nbsp;(Gi&aacute; đ&atilde; bao gồm phản c&ugrave;ng chất liệu)</p>\r\n\r\n<p>Mua&nbsp; Cả bộ C&ograve;n: 5.400.000 VND</p>\r\n\r\n<p>* Khuyến mại:&nbsp;Miễn ph&iacute; vận chuyển, lắp&nbsp;đặt trong b&aacute;n k&iacute;nh 10 km từ 750 La Th&agrave;nh</p>\r\n\r\n<p>* Bảo h&agrave;nh:&nbsp;12 th&aacute;ng trong&nbsp;điều kiện b&igrave;nh thường&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img src=\"http://tungthuycomvn433.chiliweb.org/image/catalog/5/1.jpg\" /><img src=\"http://tungthuycomvn433.chiliweb.org/image/catalog/5/2.jpg\" /><img src=\"http://tungthuycomvn433.chiliweb.org/image/catalog/5/4.jpg\" /><img src=\"http://tungthuycomvn433.chiliweb.org/image/catalog/5/5.jpg\" /></p>', '5400000.00', 1, 11, 1, '2020-05-02 06:31:18', '2020-05-02 06:31:18'),
(10, 'GIƯỜNG 1,2M MIN KẺ ÁNH PHUN SƠN PHẢN Ô KÉO', 'giuong-12m-min-ke-anh-phun-son-phan-o-keo', 'Rộng 120 x Dài 190 (cm) - 2.800.000 VND (Giá đã bao gồm rát phản và 2 ô kéo cùng chất liệu với giường)', ' Miễn phí vận chuyển', 'Tặng bộ ga gối nệm', 'Tặng ổ bánh mì', '1588426424_6-2-500x500.jpg', '<p>GIƯỜNG NGỦ GỖ C&Ocirc;NG NGHIỆP/ GỖ &Eacute;P MDF PHỦ MELAMINE KẺ &Aacute;NH KẾT HỢP PHUN SƠN TRẮNG PHẢN HAI&nbsp;&Ocirc; K&Eacute;O</p>\r\n\r\n<p>*&nbsp;Đặc điểm:</p>\r\n\r\n<p>- Chất liệu: gỗ c&ocirc;ng nghiệp MDF c&ocirc;ng nghệ v&aacute;n s&agrave;n chịu lực tốt,&nbsp;đ&atilde; qua tẩm sấy chống mọt, kh&ocirc;ng cong v&ecirc;nh</p>\r\n\r\n<p>- Bề mặt:&nbsp;Lớp phủ Melamine giữ m&agrave;u sắc lu&ocirc;n tươi mới, chống xước, tăng&nbsp;độ bền cho sản phẩm</p>\r\n\r\n<p>- M&agrave;u sắc: ngo&agrave;i v&acirc;n kẻ &aacute;nh như h&igrave;nh c&ograve;n v&acirc;n Lim hoặc c&aacute;c v&acirc;n Xoan Đ&agrave;o/ L&aacute;t chun/ Ngọc Lan/ Hạt dẻ theo y&ecirc;u cầu</p>\r\n\r\n<p>- Kiểu d&aacute;ng:&nbsp;giường bệt sang trọng.&nbsp;Đầu giường kiểu&nbsp;pano&nbsp;đơn tạo sự mềm mại v&agrave; chỗ dựa&nbsp;thoải m&aacute;i cho người sử dụng. 2 ngắn k&eacute;o&nbsp;để&nbsp;đồ tiện lợi.&nbsp;Mặt ngăn k&eacute;o l&agrave;m tay k&eacute;o &acirc;m, thao t&aacute;c dễ d&agrave;ng v&agrave; thẩm mỹ hơn</p>\r\n\r\n<p>-&nbsp;Xuất xứ:&nbsp;Việt Nam</p>\r\n\r\n<p>* K&iacute;ch thước - gi&aacute;:</p>\r\n\r\n<p>- Rộng 120 x D&agrave;i 190 (cm) - 2.800.000 VND&nbsp;(Gi&aacute; đ&atilde; bao gồm r&aacute;t phản v&agrave; 2 &ocirc; k&eacute;o c&ugrave;ng chất liệu với giường)<br />\r\n- Rộng 160 x D&agrave;i 200 (cm) - 3.200.000 VND&nbsp;(Gi&aacute; đ&atilde; bao gồm r&aacute;t phản v&agrave; 2 &ocirc; k&eacute;o c&ugrave;ng chất liệu với giường)<br />\r\n- Rộng 180 x D&agrave;i 200 (cm) - 3.400.000 VND&nbsp;(Gi&aacute; đ&atilde; bao gồm r&aacute;t phản v&agrave; 2 &ocirc; k&eacute;o c&ugrave;ng chất liệu với giường)</p>\r\n\r\n<p>* Khuyến mại:&nbsp;Miễn ph&iacute; vận chuyển, lắp&nbsp;đặt trong b&aacute;n k&iacute;nh 10 km t&iacute;nh từ 750 La Th&agrave;nh</p>\r\n\r\n<p>* Bảo h&agrave;nh:&nbsp;12 th&aacute;ng trong&nbsp;điều kiện b&igrave;nh thường</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>* CH&Uacute;NG T&Ocirc;I SẴN S&Agrave;NG SẢN XUẤT SẢN PHẨM THEO Y&Ecirc;U CẦU RI&Ecirc;NG CỦA QU&Yacute; KH&Aacute;CH</p>\r\n\r\n<p><img src=\"http://tungthuycomvn433.chiliweb.org/image/catalog/13213/6-1.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CẢM ƠN QU&Yacute; KH&Aacute;CH Đ&Atilde; QUAN T&Acirc;M TỚI SẢN PHẨM CỦA CH&Uacute;NG T&Ocirc;I!</p>', '2800000.00', 1, 5, 1, '2020-05-02 06:33:44', '2020-05-02 06:33:44'),
(11, 'GIƯỜNG 1,2M MIN PHẢN', 'giuong-12m-min-phan', 'Rộng 120 x Dài 190 (cm) - 2.200.000 VND (Giá đã bao gồm rát phản cùng chất liệu với giường)', ' Miễn phí vận chuyển', 'Tặng bộ ga gối nệm', 'Tặng ổ bánh mì', '1588466717_1-500x500.jpg', '<p>GIƯỜNG NGỦ GỖ C&Ocirc;NG NGHIỆP/ GỖ &Eacute;P MDF PHỦ MELAMINE PHẢN&nbsp;</p>\r\n\r\n<p>*&nbsp;Đặc điểm:</p>\r\n\r\n<p>- Chất liệu: gỗ c&ocirc;ng nghiệp MDF c&ocirc;ng nghệ v&aacute;n s&agrave;n chịu lực tốt,&nbsp;đ&atilde; qua tẩm sấy chống mọt, kh&ocirc;ng cong v&ecirc;nh</p>\r\n\r\n<p>- Bề mặt:&nbsp;Lớp phủ Melamine giữ m&agrave;u sắc lu&ocirc;n tươi mới, chống xước, tăng&nbsp;độ bền cho sản phẩm</p>\r\n\r\n<p>- M&agrave;u sắc: v&acirc;n xoan&nbsp;đ&agrave;o, v&acirc;n l&aacute;t, v&acirc;n Lim, v&acirc;n Ngọc Lan</p>\r\n\r\n<p>- Kiểu d&aacute;ng:&nbsp;giường bệt sang trọng.&nbsp;Đầu giường kiểu&nbsp;pano&nbsp;đơn tạo sự mềm mại v&agrave; chỗ dựa&nbsp;thoải m&aacute;i cho người sử dụng.&nbsp;</p>\r\n\r\n<p>-&nbsp;Xuất xứ:&nbsp;Việt Nam</p>\r\n\r\n<p>* K&iacute;ch thước - gi&aacute;:</p>\r\n\r\n<p>- Rộng 120 x D&agrave;i 190 (cm) - 2.200.000 VND&nbsp;(Gi&aacute; đ&atilde; bao gồm r&aacute;t phản c&ugrave;ng chất liệu với giường)<br />\r\n- Rộng 160 x D&agrave;i 200 (cm) - 2.600.000 VND&nbsp;(Gi&aacute; đ&atilde; bao gồm r&aacute;t phản c&ugrave;ng chất liệu với giường)<br />\r\n- Rộng 180 x D&agrave;i 200 (cm) - 2.800.000 VND&nbsp;(Gi&aacute; đ&atilde; bao gồm r&aacute;t phản c&ugrave;ng chất liệu với giường)</p>\r\n\r\n<p>* Khuyến mại:&nbsp;Miễn ph&iacute; vận chuyển, lắp&nbsp;đặt trong b&aacute;n k&iacute;nh 10 km t&iacute;nh từ 750 La Th&agrave;nh</p>\r\n\r\n<p>* Bảo h&agrave;nh:&nbsp;12 th&aacute;ng trong&nbsp;điều kiện b&igrave;nh thường</p>', '2200000.00', 1, 5, 1, '2020-05-02 17:45:17', '2020-05-02 17:45:17'),
(12, 'GIƯỜNG SI LOẠI 1,2M TRẮNG', 'giuong-si-loai-12m-trang', '- Rộng 1,2 x Dài 190 (cm) - 1.590.000 VND (Giá đã bao gồm cả thang dát gỗ bạch đàn)', ' Miễn phí vận chuyển', 'Tặng bộ ga gối nệm', 'Tặng ổ bánh mì', '1588467204_4-500x500.jpg', '<p>GIƯỜNG GỖ &Eacute;P/ GỖ C&Ocirc;NG NGHIỆP MDF D&Aacute;N SIMILY<strong>&nbsp;M&Agrave;U</strong>&nbsp;trắng</p>\r\n\r\n<p>* Đặc điểm:</p>\r\n\r\n<p>- Chất liệu: Giường l&agrave;m bằng gỗ c&ocirc;ng nghiệp MDF đảm bảo bền, đẹp, chống mọt, kh&ocirc;ng cong v&ecirc;nh</p>\r\n\r\n<p>- Bề mặt: d&aacute;n Simily l&agrave;m tăng độ bền của sản phẩm&nbsp;với nhiều m&agrave;u sắc tạo sự trẻ trung,lịch l&atilde;m cho căn ph&ograve;ng của Qu&yacute; kh&aacute;ch</p>\r\n\r\n<p>- Xuất xứ: Việt Nam</p>\r\n\r\n<p>- Kiểu d&aacute;ng: kiểu&nbsp;bệt trang nh&atilde;,&nbsp;đầu giường pano&nbsp;đơn mềm mại tạo chỗ dựa thoải m&aacute;i cho người sử dụng</p>\r\n\r\n<p>* K&iacute;ch thước - gi&aacute;:</p>\r\n\r\n<p><strong>- Rộng 1,2 x D&agrave;i 190 (cm) - 1.590.000 VND&nbsp;(Gi&aacute; đ&atilde; bao gồm cả thang d&aacute;t gỗ bạch đ&agrave;n)</strong></p>\r\n\r\n<p>Ngo&agrave;i ra, ch&uacute;ng t&ocirc;i c&ograve;n c&oacute; k&iacute;ch cỡ kh&aacute;c như sau:</p>\r\n\r\n<p>- Rộng 1,6 x D&agrave;i 2 (m) - 1.890.000 VND&nbsp;(Gi&aacute; đ&atilde; bao gồm cả thang d&aacute;t gỗ bạch đ&agrave;n)</p>\r\n\r\n<p>- Rộng 1,8 x D&agrave;i 2 (m) - 2.090.000 VND&nbsp;(Gi&aacute; đ&atilde; bao gồm cả thang d&aacute;t gỗ bạch đ&agrave;n)</p>\r\n\r\n<p>* Khuyến mại:&nbsp;Miễn ph&iacute; vận chuyển, lắp đặt trong b&aacute;n k&iacute;nh 10 km t&iacute;nh từ 750 La Th&agrave;nh</p>\r\n\r\n<p>* Bảo h&agrave;nh:&nbsp;12 th&aacute;ng trong&nbsp;điều kiện b&igrave;nh thường&nbsp;</p>\r\n\r\n<p>CH&Uacute;NG T&Ocirc;I SẴN S&Agrave;NG SẢN XUẤT THEO NHU CẦU RI&Ecirc;NG CỦA QU&Yacute; KH&Aacute;CH</p>', '1590000.00', 1, 5, 1, '2020-05-02 17:53:24', '2020-05-02 17:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `pro_details`
--

CREATE TABLE `pro_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `packet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pro_details`
--

INSERT INTO `pro_details` (`id`, `type`, `origin`, `size`, `packet`, `pro_id`, `created_at`, `updated_at`) VALUES
(1, 'Gỗ công nghiệp', 'Việt Nam', '120x200x50', 'Nguyên khối', 1, '2020-04-29 12:27:15', '2020-04-29 12:27:15'),
(2, 'Gỗ Lim', 'Việt Nam', '110x185x45', 'Nguyên khối', 2, '2020-05-01 17:57:22', '2020-05-01 17:57:22'),
(3, 'Gỗ công nghiệp', 'Việt Nam', '90x160x45', 'Nguyên khối', 3, '2020-05-01 18:13:06', '2020-05-01 18:13:06'),
(4, 'Gỗ Công Nghiệp', 'Việt Nam', '110x185x45', 'Nguyên khối', 4, '2020-05-01 18:16:05', '2020-05-01 18:16:05'),
(5, 'Gỗ Công Nghiệp', 'Việt Nam', '90x160x45', 'Nguyên khối', 5, '2020-05-01 18:24:40', '2020-05-01 18:24:40'),
(6, 'Gỗ Công Nghiệp', 'Việt Nam', '160x200x0,5', 'Nguyên khối', 6, '2020-05-01 19:29:19', '2020-05-01 19:29:19'),
(7, 'Gỗ Công Nghiệp', 'Việt Nam', '120x205x53', 'Nguyên khối', 7, '2020-05-02 06:20:33', '2020-05-02 06:20:33'),
(8, 'Gỗ Công Nghiệp', 'Việt Nam', '160x205x53', 'Nguyên khối', 8, '2020-05-02 06:27:53', '2020-05-02 06:27:53'),
(9, 'Gỗ Công Nghiệp', 'Việt Nam', '130x200x55 - 160x200', 'Nguyên khối ( Tủ + Giường )', 9, '2020-05-02 06:31:18', '2020-05-02 06:31:18'),
(10, 'Gỗ Công Nghiệp', 'Việt Nam', '120x190', 'Nguyên khối', 10, '2020-05-02 06:33:45', '2020-05-02 06:33:45'),
(11, 'Gỗ Công Nghiệp MDF', 'Việt Nam', '120x200', 'Nguyên khối', 11, '2020-05-02 17:45:18', '2020-05-02 17:45:18'),
(12, 'Gỗ Công Nghiệp', 'Việt Nam', '120x190', 'Nguyên khối', 12, '2020-05-02 17:53:24', '2020-05-02 17:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Minh Hiếu', 'ltmh1298', 'ltmh1298@gmail.com', NULL, '$2y$10$10jzv7CbEZmnoMnybc2FIeXlLGmkSp70e8RJmNt6GQnAgUfGLDWsK', '0936203676', 'Chung Cư Bông Sao', NULL, '2020-05-22 14:46:23', '2020-05-22 14:46:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oders`
--
ALTER TABLE `oders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oders_u_id_foreign` (`u_id`);

--
-- Indexes for table `oders_detail`
--
ALTER TABLE `oders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oders_detail_pro_id_foreign` (`pro_id`),
  ADD KEY `oders_detail_o_id_foreign` (`o_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_aduser_id_foreign` (`aduser_id`);

--
-- Indexes for table `pro_details`
--
ALTER TABLE `pro_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_details_pro_id_foreign` (`pro_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oders`
--
ALTER TABLE `oders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oders_detail`
--
ALTER TABLE `oders_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pro_details`
--
ALTER TABLE `pro_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oders`
--
ALTER TABLE `oders`
  ADD CONSTRAINT `oders_u_id_foreign` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `oders_detail`
--
ALTER TABLE `oders_detail`
  ADD CONSTRAINT `oders_detail_o_id_foreign` FOREIGN KEY (`o_id`) REFERENCES `oders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oders_detail_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_aduser_id_foreign` FOREIGN KEY (`aduser_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pro_details`
--
ALTER TABLE `pro_details`
  ADD CONSTRAINT `pro_details_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
