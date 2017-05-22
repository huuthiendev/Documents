-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 04:07 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store247`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) UNSIGNED NOT NULL,
  `mand` int(10) UNSIGNED NOT NULL,
  `masp` int(10) UNSIGNED NOT NULL,
  `noidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matraloibl` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahd` int(10) UNSIGNED NOT NULL,
  `masp` int(10) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietkhuyenmai`
--

CREATE TABLE `chitietkhuyenmai` (
  `makm` int(10) UNSIGNED NOT NULL,
  `masp` int(10) UNSIGNED NOT NULL,
  `phantramkm` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `masp` int(10) UNSIGNED NOT NULL,
  `tenchitiet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietthuonghieu`
--

CREATE TABLE `chitietthuonghieu` (
  `math` int(10) UNSIGNED NOT NULL,
  `maloaisp` int(10) UNSIGNED NOT NULL,
  `hinhctth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `id` int(10) UNSIGNED NOT NULL,
  `mand` int(10) UNSIGNED NOT NULL,
  `masp` int(10) UNSIGNED NOT NULL,
  `tieude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sosao` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(10) UNSIGNED NOT NULL,
  `mand` int(10) UNSIGNED NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaygiao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chuyenkhoan` tinyint(1) NOT NULL,
  `machuyenkhoan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenkm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaybd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaykt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhkm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loainguoidung`
--

CREATE TABLE `loainguoidung` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenloaind` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loainguoidung`
--

INSERT INTO `loainguoidung` (`id`, `tenloaind`, `created_at`, `updated_at`) VALUES
(1, 'Quản trị', NULL, NULL),
(2, 'Quản lý', NULL, NULL),
(3, 'Khách hàng', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenloaisp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhloaisp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maloaicha` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisp`, `hinhloaisp`, `maloaicha`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại - Máy tính bảng', 'images/upload_viWs0_dienthoai_maytinhbang.jpg', NULL, '2017-05-21 15:52:05', '2017-05-21 15:52:05'),
(2, 'Điện thoại', 'images/upload_AZ4Xh_dien_thoai.jpg', 1, '2017-05-21 15:55:15', '2017-05-21 15:55:15'),
(3, 'Máy tính bảng', 'images/upload_zwmLm_may_tinh_bang.jpg', 1, '2017-05-21 16:22:07', '2017-05-21 17:41:54'),
(4, 'Điện thoại phổ thông', 'images/upload_0haIR_cell_phone.jpg', 1, '2017-05-21 16:26:22', '2017-05-21 16:26:22');

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
(3, '2017_05_14_105939_create_table_loaisanpham', 1),
(4, '2017_05_14_110203_create_table_thuonghieu', 1),
(5, '2017_05_14_110237_create_table_chitietthuonghieu', 1),
(6, '2017_05_14_110251_create_table_sanpham', 1),
(7, '2017_05_14_110304_create_table_chitietsanpham', 1),
(8, '2017_05_14_110316_create_table_loainguoidung', 1),
(9, '2017_05_14_110500_create_table_nguoidung', 1),
(10, '2017_05_14_110514_create_table_khuyenmai', 1),
(11, '2017_05_14_110528_create_table_chitietkhuyenmai', 1),
(12, '2017_05_14_110555_create_table_danhgia', 1),
(13, '2017_05_14_110606_create_table_hoadon', 1),
(14, '2017_05_14_110630_create_table_chitiethoadon', 1),
(15, '2017_05_17_173037_create_table_binhluan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `tensp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `hinhsp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maloaisp` int(10) UNSIGNED NOT NULL,
  `math` int(10) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `luotmua` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensp`, `gia`, `hinhsp`, `mota`, `maloaisp`, `math`, `soluong`, `luotmua`, `created_at`, `updated_at`) VALUES
(1, 'Iphone 6s', 11000000, 'images/upload_AQ8Mu_iphone_6s.jpg', 'Dòng điện thoại cao cấp từ Apple', 2, 1, 10, 0, '2017-05-21 18:37:46', '2017-05-21 18:37:46'),
(2, 'Galaxy S8', 19500000, 'images/upload_tyzgx_galaxy_s8.jpg', 'Màn hình tràn cở lớn', 3, 2, 24, 0, '2017-05-21 18:44:58', '2017-05-21 18:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenth` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`id`, `tenth`, `hinhth`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'images/upload_eZ7E9_apple.jpg', '2017-05-21 18:11:53', '2017-05-21 18:11:53'),
(2, 'Samsung', 'images/upload_fjoKS_samsung.jpg', '2017-05-21 18:12:52', '2017-05-21 18:15:51'),
(3, 'Asus', 'images/upload_Ofo3g_asus.jpg', '2017-05-21 18:13:04', '2017-05-21 18:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `tennd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaysinh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gioitinh` tinyint(1) DEFAULT NULL,
  `maloaind` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `tennd`, `email`, `password`, `diachi`, `ngaysinh`, `sdt`, `gioitinh`, `maloaind`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Thiện Huỳnh', 'huuthiendev@gmail.com', '$2y$10$6i2XY1IoWASGbZgNSYwHA.tod0lFXLxHtCXEHoOtaJ0INeS9DJ0vO', NULL, NULL, NULL, NULL, 1, 'oGCLq4eTJP4MCaZmM2Ql6nPp1Si4VcFfl4tOh6R2lMkYdD2kFiM1ThajAz8W', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluan_mand_foreign` (`mand`),
  ADD KEY `binhluan_masp_foreign` (`masp`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `chitiethoadon_mahd_foreign` (`mahd`),
  ADD KEY `chitiethoadon_masp_foreign` (`masp`);

--
-- Indexes for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD KEY `chitietkhuyenmai_makm_foreign` (`makm`),
  ADD KEY `chitietkhuyenmai_masp_foreign` (`masp`);

--
-- Indexes for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD KEY `chitietsanpham_masp_foreign` (`masp`);

--
-- Indexes for table `chitietthuonghieu`
--
ALTER TABLE `chitietthuonghieu`
  ADD KEY `chitietthuonghieu_math_foreign` (`math`),
  ADD KEY `chitietthuonghieu_maloaisp_foreign` (`maloaisp`);

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhgia_mand_foreign` (`mand`),
  ADD KEY `danhgia_masp_foreign` (`masp`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hoadon_mand_foreign` (`mand`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loainguoidung`
--
ALTER TABLE `loainguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_maloaisp_foreign` (`maloaisp`),
  ADD KEY `sanpham_math_foreign` (`math`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_maloaind_foreign` (`maloaind`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loainguoidung`
--
ALTER TABLE `loainguoidung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_mand_foreign` FOREIGN KEY (`mand`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `binhluan_masp_foreign` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_mahd_foreign` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`id`),
  ADD CONSTRAINT `chitiethoadon_masp_foreign` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD CONSTRAINT `chitietkhuyenmai_makm_foreign` FOREIGN KEY (`makm`) REFERENCES `khuyenmai` (`id`),
  ADD CONSTRAINT `chitietkhuyenmai_masp_foreign` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_masp_foreign` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `chitietthuonghieu`
--
ALTER TABLE `chitietthuonghieu`
  ADD CONSTRAINT `chitietthuonghieu_maloaisp_foreign` FOREIGN KEY (`maloaisp`) REFERENCES `loaisanpham` (`id`),
  ADD CONSTRAINT `chitietthuonghieu_math_foreign` FOREIGN KEY (`math`) REFERENCES `thuonghieu` (`id`);

--
-- Constraints for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_mand_foreign` FOREIGN KEY (`mand`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `danhgia_masp_foreign` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_mand_foreign` FOREIGN KEY (`mand`) REFERENCES `users` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_maloaisp_foreign` FOREIGN KEY (`maloaisp`) REFERENCES `loaisanpham` (`id`),
  ADD CONSTRAINT `sanpham_math_foreign` FOREIGN KEY (`math`) REFERENCES `thuonghieu` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_maloaind_foreign` FOREIGN KEY (`maloaind`) REFERENCES `loainguoidung` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
