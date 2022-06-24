-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: fastfoodmanagement
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cthoadon`
--

DROP TABLE IF EXISTS `cthoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cthoadon` (
  `MaHD` int NOT NULL,
  `MaSP` int NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` int NOT NULL,
  `ThanhTien` int NOT NULL,
  PRIMARY KEY (`MaHD`,`MaSP`),
  KEY `cthoadon_ibfk_1` (`MaHD`),
  KEY `cthoadon_ibfk_2` (`MaSP`),
  CONSTRAINT `cthoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cthoadon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cthoadon`
--

LOCK TABLES `cthoadon` WRITE;
/*!40000 ALTER TABLE `cthoadon` DISABLE KEYS */;
INSERT INTO `cthoadon` VALUES (18,114,2,159000,318000),(18,122,3,249000,747000),(18,124,6,19000,114000),(18,130,2,19000,38000),(18,132,2,25000,50000),(19,115,2,119000,238000),(19,120,1,239000,239000),(19,128,4,19000,76000),(19,131,5,10000,50000),(20,118,1,129000,129000),(20,120,2,239000,478000),(20,129,5,19000,38000),(20,130,5,19000,95000),(20,131,10,10000,100000),(21,112,3,129000,387000),(21,117,2,149000,298000),(21,126,10,19000,190000),(21,127,3,29000,87000),(21,128,15,19000,285000),(21,131,6,10000,60000),(22,114,5,159000,795000),(22,127,10,29000,290000),(22,129,6,19000,95000),(22,132,3,25000,75000),(23,112,3,129000,387000),(23,113,1,119000,119000),(23,118,1,129000,129000),(23,128,6,19000,114000),(23,131,5,10000,50000),(23,132,2,25000,25000),(24,115,1,119000,119000),(24,116,1,130000,130000),(24,119,1,239000,239000),(24,126,6,19000,114000),(24,127,3,29000,87000),(24,131,7,10000,70000),(24,132,4,25000,100000),(25,118,1,129000,129000),(25,121,1,229000,229000),(25,130,4,19000,76000),(25,131,5,10000,50000),(25,132,3,25000,75000),(26,111,3,169000,507000),(26,120,3,239000,717000),(26,122,2,249000,498000),(26,127,4,29000,116000),(27,113,1,119000,119000),(27,119,1,239000,239000),(27,123,1,269000,269000),(27,126,1,19000,19000),(27,131,1,10000,10000),(28,113,10,119000,1190000),(28,116,4,130000,520000),(28,119,3,239000,717000),(28,132,5,25000,125000),(29,114,4,159000,636000),(29,115,1,119000,119000),(29,116,1,130000,130000),(29,131,2,10000,20000),(30,116,1,130000,130000),(30,117,7,149000,1043000),(30,123,10,269000,2690000),(30,125,1,29000,29000),(30,127,2,29000,29000),(31,111,1,169000,169000),(31,115,6,119000,595000),(31,117,1,149000,149000),(31,118,1,129000,129000),(31,130,4,19000,76000),(32,120,5,239000,1195000),(32,121,4,229000,916000),(33,116,1,130000,130000),(33,119,30,239000,7170000),(35,113,1,119000,119000),(35,117,1,149000,149000),(35,131,8,10000,70000),(37,116,1,130000,130000);
/*!40000 ALTER TABLE `cthoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctphieunhap`
--

DROP TABLE IF EXISTS `ctphieunhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctphieunhap` (
  `MaPN` int NOT NULL,
  `MaSP` int NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` int NOT NULL,
  `ThanhTien` int NOT NULL,
  PRIMARY KEY (`MaPN`,`MaSP`),
  KEY `ctphieunhap_ibfk_2` (`MaSP`),
  CONSTRAINT `ctphieunhap_ibfk_1` FOREIGN KEY (`MaPN`) REFERENCES `phieunhap` (`MaPN`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ctphieunhap_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctphieunhap`
--

LOCK TABLES `ctphieunhap` WRITE;
/*!40000 ALTER TABLE `ctphieunhap` DISABLE KEYS */;
INSERT INTO `ctphieunhap` VALUES (4,128,100,10000,1000000),(4,129,3,9000,27000),(5,124,6,10000,60000),(5,125,3,15000,45000),(5,126,7,10000,70000),(5,127,2,15000,30000),(5,130,3,9000,27000),(5,131,9,4000,36000),(7,126,9,10000,90000),(8,124,30,10000,300000),(8,126,50,10000,500000),(8,129,30,9000,270000),(9,135,100,10000,1000000),(10,136,200,23000,4600000),(10,137,80,84500,6760000);
/*!40000 ALTER TABLE `ctphieunhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giamgia`
--

DROP TABLE IF EXISTS `giamgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giamgia` (
  `MaGiam` int NOT NULL AUTO_INCREMENT,
  `TenGiamGia` text NOT NULL,
  `PhanTramGiam` int NOT NULL,
  `DieuKien` int NOT NULL,
  `NgayBD` date NOT NULL,
  `NgayKT` date NOT NULL,
  PRIMARY KEY (`MaGiam`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giamgia`
--

LOCK TABLES `giamgia` WRITE;
/*!40000 ALTER TABLE `giamgia` DISABLE KEYS */;
INSERT INTO `giamgia` VALUES (1,'Không giảm giá',0,0,'2020-01-01','2042-12-31'),(2,'Giảm 20% đơn hàng từ 150.000đ',20,150000,'2021-04-22','2021-05-13'),(4,'Giảm 10% đơn hàng từ 80.000đ',10,80000,'2021-03-26','2021-05-31'),(6,'30/04-01/05 giảm 30% đơn hàng từ 300.000đ',30,300000,'2021-04-20','2021-05-08');
/*!40000 ALTER TABLE `giamgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `MaHD` int NOT NULL AUTO_INCREMENT,
  `MaKH` int NOT NULL,
  `MaNV` int NOT NULL,
  `NgayLap` date NOT NULL,
  `TongTien` int NOT NULL,
  `GhiChu` text NOT NULL,
  PRIMARY KEY (`MaHD`),
  KEY `hoadon_ibfk_1` (`MaNV`),
  KEY `hoadon_ibfk_2` (`MaKH`),
  CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (18,4,3,'2021-01-18',1013600,'Đã thanh toán'),(19,1,1,'2021-01-20',482400,'Đã thanh toán'),(20,2,1,'2021-01-28',840000,'Đã thanh toán'),(21,3,2,'2021-02-07',1045600,'Đã thanh toán'),(22,1,1,'2021-02-14',1004000,'Đã thanh toán'),(23,7,3,'2021-02-16',576800,'Đã thanh toán'),(24,7,2,'2021-03-08',601300,'Đã thanh toán'),(25,2,2,'2021-03-09',391300,'Đã thanh toán'),(26,8,4,'2021-03-12',1286600,'Đã thanh toán'),(27,8,3,'2021-03-24',590400,'Đã thanh toán'),(28,7,4,'2021-02-04',2041600,'Đã thanh toán'),(29,9,2,'2021-04-10',633500,'Đã thanh toán'),(30,10,4,'2021-04-15',3136800,'Đã thanh toán'),(31,11,4,'2021-05-02',782600,'Đã thanh toán'),(32,11,0,'2021-05-03',1477700,'Đã thanh toán'),(33,9,0,'2021-05-06',5110000,'Đã thanh toán'),(35,3,0,'2021-05-08',304200,'Đã thanh toán'),(37,2,0,'2021-05-08',117000,'Đã thanh toán');
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `MaKH` int NOT NULL AUTO_INCREMENT,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `GioiTinh` varchar(3) NOT NULL,
  `TongChiTieu` int NOT NULL DEFAULT '0',
  `TinhTrang` int NOT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'Nguyễn Văn','An','Nam',1486400,1),(2,'Trần Ngọc','Bình','Nữ',1497300,1),(3,'Lê Thị','Giải','Nữ',1468800,1),(4,'Hà Thanh','Thoát','Nam',1013600,1),(7,'Trịnh Thị','Yên','Nữ',3219700,1),(8,'Trương Đình','Vui','Nam',1877000,1),(9,'Lại Thị Ngọc','Miền','Nữ',5743500,1),(10,'Trần Quang','Cực','Nam',3136800,1),(11,'Nguyễn Ngọc','Lạc','Nam',2260300,1);
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai`
--

DROP TABLE IF EXISTS `loai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai` (
  `MaLoai` int NOT NULL AUTO_INCREMENT,
  `TenLoai` text NOT NULL,
  PRIMARY KEY (`MaLoai`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai`
--

LOCK TABLES `loai` WRITE;
/*!40000 ALTER TABLE `loai` DISABLE KEYS */;
INSERT INTO `loai` VALUES (1,'Pizza'),(2,'Nước uống'),(3,'Nguyên liệu'),(4,'Gà'),(5,'Cơm'),(6,'Burger'),(7,'Mì Ý'),(8,'Thức ăn nhẹ'),(9,'Tráng miệng');
/*!40000 ALTER TABLE `loai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhacungcap` (
  `MaNCC` int NOT NULL AUTO_INCREMENT,
  `TenNCC` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `DienThoai` text NOT NULL,
  PRIMARY KEY (`MaNCC`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhacungcap`
--

LOCK TABLES `nhacungcap` WRITE;
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT INTO `nhacungcap` VALUES (1,'Bột mì Khánh Toàn','273 An Dương Vương, phường 3, quận 5, TP.HCM','0396527908'),(2,'Công ty giải khát Tường Vy','12/49/2 Võ Văn Kiệt, P. Cô Giang, Q1','0902669733'),(5,'Nguyên liệu bánh Việt Hoàng','492 Xô Viết Nghệ Tĩnh, P.25, Q. Bình Thạnh','0397682193');
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `MaNV` int NOT NULL AUTO_INCREMENT,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `GioiTinh` varchar(3) NOT NULL,
  `ChucVu` varchar(255) NOT NULL,
  PRIMARY KEY (`MaNV`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (0,'Admin','','','Admin'),(1,'Sau Đại','Phát','Nam','Quản Lý'),(2,'Trần Quang','Vinh','Nam','Quản Lý'),(3,'Trần Hữu','Khương','Nam','Quản Lý'),(4,'Nhữ Quốc Anh','Tài','Nam','Nhân Viên'),(12,'Trịnh Thu','Huyền','Nữ','Nhân Viên'),(13,'Nguyễn Ngọc Mai','Linh','Nữ','Nhân Viên'),(14,'Hà Văn','Hùng','Nam','Nhân Viên'),(15,'Lê Thị Thuý','Diễm','Nữ','Quản Lý'),(17,'Nguyen Hai','Dang','Nam','Admin');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phanquyen`
--

DROP TABLE IF EXISTS `phanquyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phanquyen` (
  `Quyen` varchar(255) NOT NULL,
  `NhapHang` int NOT NULL,
  `QLSanPham` int NOT NULL,
  `QLNhanVien` int NOT NULL,
  `QLKhachHang` int NOT NULL,
  `ThongKe` int NOT NULL,
  PRIMARY KEY (`Quyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phanquyen`
--

LOCK TABLES `phanquyen` WRITE;
/*!40000 ALTER TABLE `phanquyen` DISABLE KEYS */;
INSERT INTO `phanquyen` VALUES ('Default',0,0,0,0,0),('Nhân viên',0,0,0,1,0),('Quản lý',1,0,1,1,1),('Quản trị',1,1,1,1,1);
/*!40000 ALTER TABLE `phanquyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieunhap` (
  `MaPN` int NOT NULL AUTO_INCREMENT,
  `MaNCC` int NOT NULL,
  `MaNV` int NOT NULL,
  `NgayLap` date NOT NULL,
  `TongTien` int NOT NULL,
  PRIMARY KEY (`MaPN`),
  KEY `phieunhap_ibfk_1` (`MaNCC`),
  KEY `phieunhap_ibfk_2` (`MaNV`),
  CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieunhap`
--

LOCK TABLES `phieunhap` WRITE;
/*!40000 ALTER TABLE `phieunhap` DISABLE KEYS */;
INSERT INTO `phieunhap` VALUES (4,2,0,'2021-04-19',1027000),(5,2,0,'2021-04-23',268000),(7,2,0,'2021-04-26',90000),(8,2,0,'2021-05-02',1070000),(9,1,0,'2021-05-04',1000000),(10,5,0,'2021-05-07',11360000);
/*!40000 ALTER TABLE `phieunhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `MaSP` int NOT NULL AUTO_INCREMENT,
  `TenSP` varchar(255) NOT NULL,
  `MaLoai` int NOT NULL,
  `SoLuong` int NOT NULL,
  `DonViTinh` varchar(255) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL,
  `DonGia` int NOT NULL,
  PRIMARY KEY (`MaSP`),
  KEY `sanpham_ibfk_1` (`MaLoai`),
  CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loai` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Bang San Pham';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,'Gà rán (1 Miếng)',4,31,'Miếng','garan-1-mieng.png',35000),(2,'Gà rán (2 Miếng)',4,35,'Miếng','garan-2-mieng.png',68000),(3,'Gà rán (3 Miếng)',4,40,'Miếng','garan-3-mieng.png',101000),(4,'Gà rán (6 Miếng)',4,20,'Miếng','garan-6-mieng.png',195000),(5,'Đùi gà quay (1 Miếng)',1,15,'Miếng','duigaquay-1-mieng.png',67000),(6,'Phi-le gà quay (1 Miếng)',4,17,'Miếng','philegaquay-1-mieng.png',35000),(7,'Cơm gà rán (1 Phần)',5,10,'Phần','comgaran-1-phan.png',42000),(8,'Cơm gà Bít-tết (1 Phần)',5,12,'Phần','comgabittet-1-phan.png',42000),(9,'Cơm gà Bít-tết với khoai tây chiên (1 Phần)',5,14,'Phần','combittet-khoaitaychien-1-phan.png',42000),(10,'Cơm phi lê gà quay (1 Phần)',5,16,'Phần','comphilegaquay-1-phan.png',42000),(11,'Cơm phi lê gà giòn (1 Phần)',5,18,'Phần','comphilegagion-1-phan.png',42000),(12,'Cơm gà xiên que (1 Phần)',5,20,'Phần','comgaxienque-1-phan.png',42000),(13,'Burger Tôm',6,20,'Phần','burgertom-1-phan.png',41000),(14,'Burger gà quay Flava',6,22,'Phần','burgegaquayflava-1-phan.png',47000),(15,'Burger Zinger',6,24,'Phần','burgerzinger-1-phan.png',50000),(16,'Mì Ý Xốt Cà Gà Viên (1 Phần)',7,26,'Phần','miysotcagavien-1-phan.png',37000),(17,'Mì Ý Xốt Cà Gà Zinger (1 Phần)',7,28,'Phần','miysotcagazinger-1-phan.png',53000),(18,'Phô mai viên (4 Viên)',8,30,'Viên','phomaivien-4-vien.png',30000),(19,'Cá Thanh (3 Thanh)',8,32,'Thanh','cathanh-3-thanh.png',40000),(20,'Khoai tây chiên (Vừa)',8,34,'Phần','khoaitaychien-1-phan.png',17000),(21,'Bắp cải trộn (Lớn)',8,36,'Phần','bapcaitron-lon.png',22000),(22,'Súp rong biển (1 Phần)',8,36,'Phần','suprongbien-1-phan.png',14000),(23,'Bánh trứng (1 Cái)',9,38,'Cái','banhtrung-1-cai.png',17000),(24,'Thanh bí Phô mai (2 Thanh)',9,38,'Thanh','thanhbiphomai-2-thanh.png',26000),(111,'Pizza Hải Sản Pesto Xanh',1,31,'Cái','pizza0.png',169000),(112,'Pizza Hải Sản Nhiệt Đới',1,39,'Cái','pizza1.png',129000),(113,'Pizza Hải Sản Cocktail',1,34,'Cái','pizza2.png',119000),(114,'Pizza Tôm Cocktail',1,36,'Cái','pizza3.png',159000),(115,'Pizza Aloha',1,38,'Cái','pizza4.png',119000),(116,'Pizza Thịt Xông Khói',1,39,'Cái','pizza5.png',130000),(117,'Pizza Thịt Nguội',1,34,'Cái','pizza6.png',149000),(118,'Pizza Gà Nướng 3 Vị',1,35,'Cái','pizza7.png',129000),(119,'Pizza hải sản Pesto gấp đôi nhân',1,13,'Cái','pizza8.jpg',239000),(120,'Pizza gấp đôi nhân phủ cơn lốc hải sản',1,37,'Cái','pizza9.jpg',239000),(121,'Pizza gấp đôi nhân phủ hải sản xốt tiêu đen',1,41,'Cái','pizza10.jpg',229000),(122,'Pizza bò nướng tiêu đen',1,43,'Cái','pizza11.jpg',249000),(123,'Pizza cá ngừ thanh cua',1,33,'Cái','pizza12.jpg',269000),(124,'Pepsi lon 330ml',2,150,'Lon','douong0.jpeg',19000),(125,'Pepsi chai 1.5l',2,250,'Chai','douong1.jpeg',29000),(126,'7Up lon 330ml',2,150,'Lon','douong2.jpeg',19000),(127,'7Up chai 1.5l',2,110,'Chai','douong3.jpeg',29000),(128,'Pepsi no calories 330ml',2,180,'Lon','douong4.jpg',19000),(129,'Mirinda cam 330ml',2,100,'Lon','douong5.jpg',19000),(130,'Mirinda kem soda 330ml',2,80,'Lon','douong6.jpg',19000),(131,'Nước suối Aquafina',2,52,'Chai','douong7.jpg',10000),(132,'Trà sữa trà đen',2,6,'Ly','douong8.jpg',25000),(135,'Bột mì Meizan 500g',3,100,'Gói','default.png',10000),(136,'Men nở Mauripan 50g*5',3,200,'Hộp','default.png',23000),(137,'Dầu olive Olivoilà 250ml',3,80,'Chai','default.png',84500);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `MaNV` int NOT NULL AUTO_INCREMENT,
  `TenDangNhap` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `Quyen` varchar(255) NOT NULL,
  `TrangThai` int NOT NULL,
  PRIMARY KEY (`MaNV`),
  KEY `taikhoan_ibfk_2` (`Quyen`),
  CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `taikhoan_ibfk_2` FOREIGN KEY (`Quyen`) REFERENCES `phanquyen` (`Quyen`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES (0,'admin','admin','Quản trị',1),(1,'ql01','ql01','Quản lý',1),(2,'ql02','ql02','Quản lý',1),(3,'ql03','ql03','Quản lý',1),(4,'nv01','nv01','Nhân viên',1),(17,'dang','dang','Quản trị',1);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-10 21:49:19
