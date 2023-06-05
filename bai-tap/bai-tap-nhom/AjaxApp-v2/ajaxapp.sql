-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 05, 2021 lúc 04:27 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ajaxapp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sanpham` int(11) NOT NULL COMMENT 'ID của sản phẩm',
  `ten_sanpham` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên của sản phẩm',
  `id_thuonghieu` int(11) NOT NULL COMMENT 'ID của thương hiệu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Sản phẩm';

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sanpham`, `ten_sanpham`, `id_thuonghieu`) VALUES
(1, 'Samsung Galaxy A12', 1),
(2, 'Samsung Galaxy S20', 1),
(3, 'Samsung Galaxy Note 10', 1),
(4, 'Xperia 1 Mark 2', 2),
(5, 'Xperia 5', 2),
(6, 'Xperia C5 Dual Ultra', 2),
(7, 'Iphone 12', 3),
(8, 'Iphone 12 Pro Max', 3),
(9, 'Redmi 7 Pro', 4),
(10, 'Mi 10', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id_thuonghieu` int(11) NOT NULL COMMENT 'ID của thương hiệu',
  `ten_thuonghieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên của thương hiệu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Thương hiệu';

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`id_thuonghieu`, `ten_thuonghieu`) VALUES
(1, 'Samsung'),
(2, 'Sony'),
(3, 'Apple'),
(4, 'Xiaomi');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`id_thuonghieu`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID của sản phẩm', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id_thuonghieu` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID của thương hiệu', AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
