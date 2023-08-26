/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `binhluan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_phong` int NOT NULL,
  `ma_nguoi_dung` int NOT NULL,
  `ngay_binh_luan` datetime DEFAULT NULL,
  `noi_dung` varchar(255) DEFAULT NULL,
  `sao_binh_luan` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ma_phong` (`ma_phong`),
  KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`ma_phong`) REFERENCES `phong` (`ma_phong`),
  CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoidung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `datphong` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_phong` int NOT NULL,
  `ngay_den` datetime NOT NULL,
  `ngay_di` datetime NOT NULL,
  `so_luong_khach` int NOT NULL,
  `ma_nguoi_dung` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ma_phong` (`ma_phong`),
  KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `datphong_ibfk_1` FOREIGN KEY (`ma_phong`) REFERENCES `phong` (`ma_phong`),
  CONSTRAINT `datphong_ibfk_2` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoidung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `nguoidung` (
  `ma_nguoi_dung` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass_word` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birth_day` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `role` varchar(50) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `phong` (
  `ma_phong` int NOT NULL AUTO_INCREMENT,
  `ten_phong` varchar(255) NOT NULL,
  `khach` int DEFAULT NULL,
  `phong_ngu` int DEFAULT NULL,
  `giuong` int DEFAULT NULL,
  `phong_tam` int DEFAULT NULL,
  `mo_ta` varchar(255) DEFAULT NULL,
  `gia_tien` int DEFAULT NULL,
  `may_giat` tinyint(1) DEFAULT NULL,
  `ban_la` tinyint(1) DEFAULT NULL,
  `tivi` tinyint(1) DEFAULT NULL,
  `dieu_hoa` tinyint(1) DEFAULT NULL,
  `wifi` tinyint(1) DEFAULT NULL,
  `bep` tinyint(1) DEFAULT NULL,
  `do_xe` tinyint(1) DEFAULT NULL,
  `ho_boi` tinyint(1) DEFAULT NULL,
  `ban_ui` tinyint(1) DEFAULT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `ma_vi_tri` int NOT NULL,
  PRIMARY KEY (`ma_phong`),
  KEY `ma_vi_tri` (`ma_vi_tri`),
  CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`ma_vi_tri`) REFERENCES `vitri` (`ma_vi_tri`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `vitri` (
  `ma_vi_tri` int NOT NULL AUTO_INCREMENT,
  `ten_vi_tri` varchar(255) DEFAULT NULL,
  `tinh_thanh` varchar(255) DEFAULT NULL,
  `quoc_gia` varchar(255) DEFAULT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ma_vi_tri`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `binhluan` (`id`, `ma_phong`, `ma_nguoi_dung`, `ngay_binh_luan`, `noi_dung`, `sao_binh_luan`) VALUES
(1, 1, 8, '2023-08-26 08:42:03', 'phòng sạch', 5);


INSERT INTO `datphong` (`id`, `ma_phong`, `ngay_den`, `ngay_di`, `so_luong_khach`, `ma_nguoi_dung`) VALUES
(1, 1, '2023-10-25 17:00:00', '2023-10-29 17:00:00', 2, 8);


INSERT INTO `nguoidung` (`ma_nguoi_dung`, `name`, `email`, `pass_word`, `phone`, `birth_day`, `gender`, `role`, `avatar`) VALUES
(1, 'user1', 'user1@gmail.com', '$2b$10$eFglQJohStr2rEdZ8BeiZOg0/C3mjBD3Yrt5RIDDLb1Fy7MFsxov2', '01234', '2001/10/05', 'male', 'user', 'avatar1-1693041238299_user1.jpg');
INSERT INTO `nguoidung` (`ma_nguoi_dung`, `name`, `email`, `pass_word`, `phone`, `birth_day`, `gender`, `role`, `avatar`) VALUES
(2, 'user2', 'user2@gmail.com', '$2b$10$WiFJ96SKceqDU4acIO0hQe4NTYoWJ28.591CWdNSRzLHriW8fIfeW', '01234', '2001/10/05', 'male', 'user', 'avatar2-1693041252830_user2.jpg');
INSERT INTO `nguoidung` (`ma_nguoi_dung`, `name`, `email`, `pass_word`, `phone`, `birth_day`, `gender`, `role`, `avatar`) VALUES
(3, 'user update', 'user3@gmail.com', '$2b$10$QEmJNV2hPhVhJl.jfeUIyeHojKuwqTLGco5aBpNm032Ybg6dDnFbq', '0123456', '2001-10-05', 'male', 'user', 'avatar3-1693041264208_user3.jpg');
INSERT INTO `nguoidung` (`ma_nguoi_dung`, `name`, `email`, `pass_word`, `phone`, `birth_day`, `gender`, `role`, `avatar`) VALUES
(4, 'user4', 'user4@gmail.com', '$2b$10$z1WHtKMFj.NoniTMGFPrb.BzBkT3zG7OGNdgpYVt8Lnx3MmEZZ4Oy', '01234', '2001/10/05', 'male', 'user', 'avatar4-1693041275400_user4.jpg'),
(5, 'user5', 'user5@gmail.com', '$2b$10$/VJHJjRmLkWm8hoZBvDbGuzAkRrdRo/kymVtDRH7qEmm8r6DAk9ju', '01234', '2001/10/05', 'female', 'user', 'avatar5-1693041288042_user5.jpg'),
(6, 'user6', 'user6@gmail.com', '$2b$10$iDYo8pgRIQ7C4uV4KhGR9evIaP5Kt8aWEEFgZeXCe049pZC3xtLdW', '01234', '2001/10/05', 'female', 'user', 'avatar6-1693041299981_user6.jpg'),
(7, 'user7', 'user7@gmail.com', '$2b$10$lFiqRPE017YnDHWU9aqPhOn5PrvthWm9UU.lZqZNOS9Rz79zQc/9K', '01234', '2001/10/05', 'female', 'user', 'avatar7-1693041310415_user7.jpg'),
(8, 'admin', 'admin@gmail.com', '$2b$10$I.nMmw3/AyxJxvZ9w/0yueWdbbuErX0/fMn3gAdoCqR.pOVdW.5Me', '0123456', '2001-10-05', 'male', 'admin', 'avatar8-1693041320605_user8.jpg');

INSERT INTO `phong` (`ma_phong`, `ten_phong`, `khach`, `phong_ngu`, `giuong`, `phong_tam`, `mo_ta`, `gia_tien`, `may_giat`, `ban_la`, `tivi`, `dieu_hoa`, `wifi`, `bep`, `do_xe`, `ho_boi`, `ban_ui`, `hinh_anh`, `ma_vi_tri`) VALUES
(1, 'phong 01', 3, 2, 3, 1, 'phòng gia đình', 1600000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'phong1-1693041628667_phong1.jpg', 1);
INSERT INTO `phong` (`ma_phong`, `ten_phong`, `khach`, `phong_ngu`, `giuong`, `phong_tam`, `mo_ta`, `gia_tien`, `may_giat`, `ban_la`, `tivi`, `dieu_hoa`, `wifi`, `bep`, `do_xe`, `ho_boi`, `ban_ui`, `hinh_anh`, `ma_vi_tri`) VALUES
(5, 'phong 05', 1, 1, 1, 1, 'phòng đơn', 850000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'phong5-1693042012549_phong5.jpg', 3);


INSERT INTO `vitri` (`ma_vi_tri`, `ten_vi_tri`, `tinh_thanh`, `quoc_gia`, `hinh_anh`) VALUES
(1, 'vi tri 1', 'TP HCM', 'VietNam', 'vitri1-1693042169740_TPHoChiMinh.jpg');
INSERT INTO `vitri` (`ma_vi_tri`, `ten_vi_tri`, `tinh_thanh`, `quoc_gia`, `hinh_anh`) VALUES
(3, 'vi tri 3', 'Hue', 'VietNam', 'vitri3-1693042207157_Hue.jpg');
INSERT INTO `vitri` (`ma_vi_tri`, `ten_vi_tri`, `tinh_thanh`, `quoc_gia`, `hinh_anh`) VALUES
(4, 'vi tri 4', 'Nha Trang', 'VietNam', 'vitri4-1693042217197_NhaTrang.jpg');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;