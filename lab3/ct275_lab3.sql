-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 08, 2022 lúc 11:16 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.1.6
CREATE DATABASE ct275_lab3;
USE ct275_lab3;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ct275_lab3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quotes`
--

CREATE TABLE `quotes` (
  `id` int(10) NOT NULL,
  `quote` text NOT NULL,
  `source` varchar(100) NOT NULL,
  `favorite` tinyint(1) NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `source`, `favorite`, `date_entered`) VALUES
(1, 'Anh yêu em!', 'Ai đó', 0, '2022-01-18 01:59:21'),
(2, 'Học lập trình web thật thú vị!', 'Albert Einstein', 1, '2022-01-18 03:21:27'),
(3, 'Yêu là chết trong lòng một ít!', 'Xuân Diệu', 0, '2022-03-01 22:53:13');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
