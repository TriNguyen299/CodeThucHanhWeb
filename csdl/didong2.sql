-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 19, 2020 lúc 04:40 PM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `didong2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rong` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cao` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `hinh`, `rong`, `cao`) VALUES
(1, 'banner_2.png', '990px', '150px');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

DROP TABLE IF EXISTS `hoa_don`;
CREATE TABLE IF NOT EXISTS `hoa_don` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_nguoi_mua` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hang_duoc_mua` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `ten_nguoi_mua`, `email`, `dia_chi`, `dien_thoai`, `noi_dung`, `hang_duoc_mua`) VALUES
(1, 'Nguyen', 'tringuyen2091999@gmail.com', '1324 gdds', '0354788944', 'hhj', '37[|||]-1[|||||]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

DROP TABLE IF EXISTS `loai`;
CREATE TABLE IF NOT EXISTS `loai` (
  `maloai` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenloai` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`maloai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`) VALUES
('dh', 'Đồng Hồ Thông Minh'),
('dt', 'Điện Thoại'),
('lt', 'LapTop'),
('pc', 'PC'),
('pk', 'Phụ Kiện'),
('tb', 'Tablet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_doc`
--

DROP TABLE IF EXISTS `menu_doc`;
CREATE TABLE IF NOT EXISTS `menu_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu_doc`
--

INSERT INTO `menu_doc` (`id`, `ten`) VALUES
(1, 'Điện Thoại'),
(2, 'Phụ Kiện'),
(3, 'LapTop'),
(4, 'Tablet'),
(5, 'PC'),
(6, 'Đồng Hồ Thông Minh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_ngang`
--

DROP TABLE IF EXISTS `menu_ngang`;
CREATE TABLE IF NOT EXISTS `menu_ngang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu_ngang`
--

INSERT INTO `menu_ngang` (`id`, `ten`) VALUES
(1, 'Trang Chủ'),
(2, 'Tin Tức'),
(3, 'Giới Thiệu'),
(4, 'Bảo Hành'),
(5, 'Liên hệ'),
(6, 'Trả Góp 0%'),
(7, 'Tuyển Dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
CREATE TABLE IF NOT EXISTS `san_pham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_bat` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(255) NOT NULL,
  `thuoc_menu` int(255) NOT NULL,
  `trang_chu` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep_trang_chu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maloai` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `loai` (`maloai`),
  KEY `thuoc_menu` (`thuoc_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `noi_dung`, `noi_bat`, `hinh_anh`, `gia`, `thuoc_menu`, `trang_chu`, `sap_xep_trang_chu`, `maloai`) VALUES
(1, 'Iphone 12 Pro Max 126GB', 'Màn hình 6.7\", Camera sau 3 camera 12MP, Pin 3687mAh												', 'co', 'dt01.jpg', 34000000, 1, '', '0', 'dt'),
(2, 'Vsmart Aris Pro', 'Màn hình 6.39\", Camera sau Chính 64MP & Phụ 8MP, 8MP, 2MP, Pin 4000mAh																', '', 'dt02.jpg', 7490000, 1, 'co', '7', 'dt'),
(3, 'Samsung Galaxy S20+', 'Màn hình 6.7\", Camera sau Chính 12MP & Phụ 64MP, 12MP, TOF 3D, Pin 4500mAh								', '', 'dt03.jpg', 23990000, 1, '', '0', 'dt'),
(4, 'Realme 7 Pro', 'Màn hình 6.44\", Camera sau Chính 64MP & Phụ 8MP, 2MP, 2MP,Pin 4500mAh				', '', 'dt04.jpg', 8990000, 1, 'co', '3', 'dt'),
(5, 'Iphone 11 Pro 256GB', 'Màn hình 5.8\", Camera sau 3 camera 12MP, Pin 3046mAh				', '', 'dt05.jpg', 28990000, 1, '', '0', 'dt'),
(6, 'Huawei Nova 7i', 'Màn hình 6.4\", Camera sau Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP, Pin 4200 mAh				', '', 'dt06.jpg', 6990000, 1, 'co', '0', 'dt'),
(7, 'Xiaomi POCO X3 NFC', 'Màn hình 6.67\", Camera sau Chính 64 MP & Phụ 13 MP, 2 MP, 2 MP, Pin 5160 mAh				', '', 'dt07.jpg', 6990000, 1, 'co', '2', 'dt'),
(8, 'Tai Nghe AirPods 2 Apple', 'Tương thích: Android, IOS, Thời gian sạc: 15 phút, Kết nối thiết bị: 1 thiết bị								', '', 'pk01.jpg', 4990000, 2, '', '0', 'pk'),
(9, 'Bộ Sạc Chính Hãng Iphone', 'Chức năng: Sạc, USB: 5V-1A, Thương hiệu: Mỹ								', '', 'pk02.jpg', 490000, 2, '', '0', 'pk'),
(10, 'Dây cáp Lightning Samsung', 'Chức năng:SạcTruyền dữ liệu, Đầu ra:	Lightning: 5V - 2.1A, Độ dài dây:	20 cm								', '', 'pk03.jpg', 70000, 2, 'co', '7', 'pk'),
(11, 'Pin sạc dự phòng Polymer 10.000mAh Xiaomi', 'Dung lượng pin:	10.000 mAh, Lõi pin:	Polymer, Công nghệ/Tiện ích:	Đèn LED báo hiệu Quick Charge 3.0				', '', 'pk04.jpg', 500000, 2, 'co', '0', 'pk'),
(12, 'Laptop Lenovo IdeaPad', 'CPU:Intel Core i3 Ice Lake, 1005G1, 1.20 GHz\r\nRAM:4 GB, DDR4 (On board +1 khe), 2666 MHz\r\nỔ cứng:SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:15.6 inch, Full HD (1920 x 1080)', '', 'lt01.jpg', 13000000, 3, 'co', '13', 'lt'),
(13, 'Laptop Acer Aspire 3 A315 ', 'CPU:Intel Core i3 Coffee Lake, 8130U, 2.20 GHz\r\nRAM:4 GB, DDR4 (On board +1 khe), 2400 MHz\r\nỔ cứng:SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:15.6 inch, Full HD (1920 x 1080)', '', 'lt02.jpg', 10000000, 3, '', '0', 'lt'),
(14, 'Apple Watch S6 LTE 40mm ', 'Công nghệ màn hình:	OLED\r\nKích thước màn hình:	1.57 inch\r\nThời gian sử dụng pin:	Khoảng 1.5 ngày\r\nHệ điều hành:	watchOS 7.0\r\nKết nối với hệ điều hành:	iOS 14 trở lên', '', 'dh01.jpg', 14500000, 6, 'co', '11', 'dh'),
(15, 'Samsung Galaxy Watch Active 2 44mm', 'Công nghệ màn hình:SUPER AMOLED\r\nKích thước màn hình:1.4 inch\r\nThời gian sử dụng pin:Khoảng 1.5 ngày\r\nHệ điều hành:OS TIZEN\r\nKết nối với hệ điều hành:Android 5.0, iOS 10 trở lên', '', 'dh02.jpg', 7000000, 6, 'co', '0', 'dh'),
(16, 'Máy tính bảng iPad 8 Wifi 128GB', 'Màn hình:Retina IPS LCD, 10.2\"\r\nHệ điều hành:iPadOS 14\r\nCPU:Apple A12 Bionic 6 nhân\r\nRAM:3 GB\r\nBộ nhớ trong:128 GB\r\nCamera sau:8 MP\r\nCamera trước:1.2 MP', 'co', 'tb01.jpg', 11000000, 4, 'co', '5', 'tb'),
(17, 'Máy tính bảng Samsung Galaxy Tab S6 Lite\r\n', 'Màn hình:PLS LCD, 10.4\"\r\nHệ điều hành:Android 10\r\nCPU:Exynos 9611 8 nhân\r\nRAM:4 GB\r\nBộ nhớ trong:64 GB\r\nCamera sau:8 MP\r\nCamera trước:5 MP', '', 'tb02.jpg', 10000000, 4, '', '0', 'tb'),
(18, 'Màn hình máy tính Samsung LCD Gaming', 'Kích thước màn hình:27 inch\r\nĐộ phân giải:Full HD (1920 x 1080)\r\nCông nghệ màn hình:240 Hz, LCD VA, Curved Screen 1500R, NVIDIA G-SYNC™\r\nĐộ tương phản:3000:1\r\nThời gian đáp ứng:4ms\r\nGóc nhìn:178°(Dọc) / 178°(Ngang)', '', 'pc01.jpg', 7600000, 5, 'co', '1', 'pc'),
(19, 'Màn hình máy tính ASUS LCD Gaming', 'Kích thước màn hình:24 inch\r\nĐộ phân giải:Full HD (1920 x 1080)\r\nCông nghệ màn hình:165 Hz, Tấm nền TN\r\nĐộ tương phản:100,000,000:1 Max (ACM)\r\nThời gian đáp ứng:0.5ms\r\nGóc nhìn:178°(Dọc) / 178°(Ngang)', '', 'pc02.jpg', 5500000, 5, '', '0', 'pc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshow`
--

DROP TABLE IF EXISTS `slideshow`;
CREATE TABLE IF NOT EXISTS `slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lien_ket` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slideshow`
--

INSERT INTO `slideshow` (`id`, `hinh`, `lien_ket`) VALUES
(1, 'a_1.png', '#'),
(2, 'a_2.png', '#'),
(3, 'a_3.png', '#'),
(4, 'a_4.png', '#');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_tin_quan_tri`
--

DROP TABLE IF EXISTS `thong_tin_quan_tri`;
CREATE TABLE IF NOT EXISTS `thong_tin_quan_tri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ky_danh` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thong_tin_quan_tri`
--

INSERT INTO `thong_tin_quan_tri` (`id`, `ky_danh`, `mat_khau`) VALUES
(1, 'admin', '123456789');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ibfk_1` FOREIGN KEY (`maloai`) REFERENCES `loai` (`maloai`),
  ADD CONSTRAINT `san_pham_ibfk_2` FOREIGN KEY (`thuoc_menu`) REFERENCES `menu_doc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
