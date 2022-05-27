-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 26, 2022 lúc 07:56 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `appbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catID` int(11) NOT NULL,
  `catName` varchar(250) NOT NULL,
  `catImg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catID`, `catName`, `catImg`) VALUES
(1, 'ADIDAS', 'https://i.pinimg.com/originals/97/da/04/97da0412bcd589db41430cce60e228c3.jpg'),
(2, 'NIKE', 'https://us.123rf.com/450wm/kornienko/kornienko1611/kornienko161100203/66047251-chisinau-moldova-november-16-2016-he-logo-of-the-brand-nike-on-computer-screen-nike-inc-is-an-americ.jpg?ver=6'),
(3, 'JORDAN', 'https://www.elleman.vn/wp-content/uploads/2020/10/08/186364/logo-thuong-hieu-jordan-elle-man-feature-1.jpg'),
(4, 'CONVERSE', 'https://seeklogo.com/images/C/converse-logo-6A2112857B-seeklogo.com.png'),
(5, 'VANS', 'https://tophinhanhdep.com/wp-content/uploads/2021/10/Vans-Logo-Wallpapers.jpg'),
(6, 'GUCCI', 'https://www.elleman.vn/wp-content/uploads/2018/08/19/logo-thuong-hieu-gucci-elle-man-10.png'),
(13, 'Đơn Hàng', 'https://www.thuongdo.com/sites/default/files/styles/medium/public/field/image/tao-don-hang.png?itok=4W9l4Col');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `diachi` text NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `userID`, `diachi`, `sodienthoai`, `email`, `soluong`, `tongtien`) VALUES
(16, 12, 'TDM BD', '0372113356', 'tienkad2510@gmail.com', 3, '3200000'),
(17, 12, 'sdsdsds', '0372113356', 'tienkad2510@gmail.com', 4, '9600000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_orderdetail`
--

CREATE TABLE `tbl_orderdetail` (
  `orderID` int(11) NOT NULL,
  `proID` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_orderdetail`
--

INSERT INTO `tbl_orderdetail` (`orderID`, `proID`, `soluong`, `gia`) VALUES
(16, 34, 1, '1500000'),
(16, 29, 2, '850000'),
(17, 33, 3, '2700000'),
(17, 28, 1, '1500000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `proID` int(11) NOT NULL,
  `proName` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `proImg` text NOT NULL,
  `proDesc` text NOT NULL,
  `catID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`proID`, `proName`, `size`, `price`, `proImg`, `proDesc`, `catID`) VALUES
(1, 'Yeezy 350 V2 Cinder', 38, '1200000', 'https://assets.adidas.com/images/w_766,h_766,f_auto,q_auto,fl_lossy,c_fill,g_auto/f04bf852d37949198cbbadf4000c31d5_9366/gi%C3%A0y-retropy-f2.jpg', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 1),
(2, 'Adidas EQT Blue', 40, '850000', 'https://assets.adidas.com/images/w_766,h_766,f_auto,q_auto,fl_lossy,c_fill,g_auto/c3b8b54080f94454b45fadd6011555f1_9366/gi%C3%A0y-retropy-f2.jpg', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 1),
(3, 'Yeezy Boost 350 V2 Israfil 1:1', 38, '1100000', 'https://assets.adidas.com/images/w_766,h_766,f_auto,q_auto,fl_lossy,c_fill,g_auto/c21f3708fe8c40e9919aad750109d51b_9366/hu-nmd.jpg', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 1),
(4, 'Adidas EQT Pink', 39, '850000', 'https://assets.adidas.com/images/w_766,h_766,f_auto,q_auto,fl_lossy,c_fill,g_auto/ff82213b88c74ac5a0cbac5e004bd8e3_9366/gi%C3%A0y-c%E1%BB%95-th%E1%BA%A5p-forum.jpg', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 1),
(5, 'Adidas Yeezy Boost 700 Mauve', 41, '1300000', 'https://assets.adidas.com/images/w_766,h_766,f_auto,q_auto,fl_lossy,c_fill,g_auto/a35b96a9b5f84f5890c7ad9c00f579aa_9366/gi%C3%A0y-stan-smith.jpg', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 1),
(6, 'Yeezy 350 V2 Cloud White', 40, '1300000', 'https://assets.adidas.com/images/w_766,h_766,f_auto,q_auto,fl_lossy,c_fill,g_auto/78fb04f4a51f4cf78befacb800d340f1_9366/gi%C3%A0y-nmd_r1.jpg', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 1),
(7, 'Yeezy 700 Magnet Best Quality', 39, '1000000', 'https://assets.adidas.com/images/w_766,h_766,f_auto,q_auto,fl_lossy,c_fill,g_auto/4f416a386df14c029b9eadb700edc7b8_9366/gi%C3%A0y-bossk-nmd_r1-spectoo.jpg', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 1),
(8, 'Nike Dunk Low Retro SP Syracuse / Trắng Cam 1:1', 36, '1000000', 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/4f37fca8-6bce-43e7-ad07-f57ae3c13142/air-force-1-07-shoe-WrLlWX.png', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 2),
(9, 'Nike AF1 Low Flax/ Nâu Vàng (Hàng 1:1)', 38, '900000', 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/dee60c30-766a-4bda-a69d-48ac9f884a98/dunk-high-retro-se-shoes-tXRLdK.png', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 2),
(10, 'Air Force 1 Custom Grey Yellow', 38, '1100000', 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/77f0bca0-41df-4476-8db5-b49cf174ece6/air-max-sc-shoes-2fm8C6.png', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 2),
(11, 'Nike Quest 3 Xám Xanh', 40, '900000', 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/c3ad11e6-2aad-4564-81a2-08650ee072cb/air-zoom-rival-fly-3-road-racing-shoes-XbhTCL.png', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 2),
(12, 'Nike M2K TENKO MÀU MỚI (New Color)', 38, '950000', 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/0993a744-892b-4e7c-ba45-2e4caf459a44/zoomx-vaporfly-next-2-road-racing-shoes-D4ntS0.png', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 2),
(25, 'Jordan 1 Low Gym Red White', 38, '1100000', 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/23fc7a4b-cc2e-4a98-8928-5bf272081535/air-jordan-1-elevate-low-se-shoes-vrrNpV.png', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 3),
(26, 'Jordan 1 Low Shattered Backboard', 40, '1100000', 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/61445250-915d-49ba-bfdd-90c03fd0773c/air-jordan-1-zoom-air-comfort-shoe-DMnp24.png', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 3),
(27, 'Jordan 1 Retro UNC', 38, '950000', 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/cc23da7e-e3a4-4708-ace8-e7a83e46961a/air-jordan-1-mid-se-utility-shoes-vg0XNS.png', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 3),
(28, 'Jordan 1 Low Smoke Grey V2', 39, '1500000', 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/fe4dde35-4eb0-4623-9bc4-0abbf04fa318/jordan-1-retro-high-og-younger-shoes-h4bvLq.png', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 3),
(29, 'Converse Run Star Hike Hi JW Anderson Black (Hàng 1:1)', 41, '850000', 'https://bizweb.dktcdn.net/thumb/medium/100/347/923/products/567869v-1.jpg?v=1598546453000', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 4),
(30, 'VANS OLD KOOL Đen Trắng (Black White) Hàng 1:1', 40, '800000', 'https://bizweb.dktcdn.net/thumb/medium/100/347/923/products/vn000zd4y28-1.jpg?v=1584448630000', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 5),
(31, 'Gucci Rhyton Heath', 39, '1500000', 'http://bdsneaker.vn/upload/sanpham/gci-logo-ngang3857_326x407.jpg', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 6),
(32, 'Gucci Rhyton Logo Classic', 36, '1300000', 'http://bdsneaker.vn/upload/sanpham/16237660313848783818630149147868657009525461n4249_400x300.jpg', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 6),
(33, 'Gucci Sơn Tùng Screener Leather (Hàng Siêu Cấp)', 38, '2700000', 'http://bdsneaker.vn/upload/sanpham/gci-st8530_400x400.jpg', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 6),
(34, 'GUCCI Classic Ong Thêu 1:1', 38, '1500000', 'http://bdsneaker.vn/upload/sanpham/z306438131129847d2704483024f8fe14f8ee54806d1b58984_305x407.jpg', '- Ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.\r\n\r\n- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.\r\n\r\n- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)\r\n\r\n- ảnh shop chụp 100%, có quay video cho khách có yêu cầu', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userID` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`userID`, `username`, `email`, `pass`, `phone`) VALUES
(12, 'Van Tien', 'tienkad2510@gmail.com', '123456', '0372113356');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catID`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`proID`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `proID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
