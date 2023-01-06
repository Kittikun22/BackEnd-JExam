-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2023 at 05:01 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jknowledge-exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'TGAT'),
(2, 'TPAT'),
(3, 'A-LEVEL'),
(4, 'NETSAT');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `net_amount` float NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `products` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `paid_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `user_id`, `transaction`, `amount`, `net_amount`, `payment_method`, `products`, `status`, `paid_at`) VALUES
(4, 73, 'trxn_test_5u28cmw2fwoudqe8ylz', 113206, 0, 'Card', 'test', 'successful', '2022-12-08 05:07:01'),
(5, 73, 'trxn_test_5u29by0z040jtxryrh5', 1132, 0, 'Card', 'test', 'successful', '2022-12-08 06:47:18'),
(6, 73, 'trxn_test_5u29ckirjcwm9gmy39d', 1132.06, 0, 'Card', 'test', 'successful', '2022-12-08 06:49:04'),
(7, 73, 'trxn_test_5u29e8eqi47xr52jnbp', 1132.06, 1087.85, 'Card', 'test', 'successful', '2022-12-08 06:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `detail` text NOT NULL,
  `pic` text NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `amount`, `detail`, `pic`, `category_id`, `subject_id`) VALUES
(1, 'NETSAT ภาษาไทย', 100, 'ความฉลาดรู้ทั่วไปด้านภาษาไทย', 'images/exams/netsat/NETSAT_Thai.png', 4, 5),
(2, 'NETSAT ภาษาอังกฤษ', 100, 'ความฉลาดรู้ทั่วไปด้านภาษาอังกฤษ', 'images/exams/netsat/NETSAT_Eng.png', 4, 6),
(3, 'NETSAT คณิตศาสตร์', 100, 'ความฉลาดรู้ทั่วไปด้านคณิตศาสตร์', 'images/exams/netsat/NETSAT_Math.png', 4, 1),
(4, 'NETSAT วิทยาศาสตร์และเทคโนโลยี', 100, 'ความฉลาดรู้เฉพาะด้านวิทยาศาสตร์และเทคโนโลยี', 'images/exams/netsat/NETSAT_Sci.png', 4, 2),
(5, 'NETSAT เคมี', 100, 'ความฉลาดรู้เฉพาะด้านเคมี', 'images/exams/netsat/NETSAT_Chem.png', 4, 2),
(6, 'NETSAT ชีววิทยา', 100, 'ความฉลาดรู้เฉพาะด้านชีววิทยา', 'images/exams/netsat/NETSAT_Bio.png', 4, 2),
(7, 'NETSAT ฟิสิกส์', 100, 'ความฉลาดรู้เฉพาะด้านฟิสิกส์', 'images/exams/netsat/NETSAT_Phy.png', 4, 2),
(8, 'TGAT 90 ความถนัดทั่วไป', 120, 'TGAT 90 ความถนัดทั่วไป', 'images/exams/tgat/TGAT3_Work.png', 1, 10),
(10, 'TGAT1 91 การสื่อสารภาษาอังกฤษ', 100, 'TGAT1 91 การสื่อสารภาษาอังกฤษ', 'images/exams/tgat/TGAT1_Eng.png', 1, 6),
(11, 'TGAT2 92 การคิดอย่างมีเหตุผล', 100, 'TGAT2 92 การคิดอย่างมีเหตุผล', 'images/exams/tgat/TGAT2_Logic.png', 1, 10),
(12, 'TGAT3 93 สมรรถนะการทำงาน', 100, 'TGAT3 93 สมรรถนะการทำงาน', 'images/exams/tgat/TGAT3_Work.png', 1, 10),
(13, 'TPAT11 เชาว์ปัญญา', 100, 'TPAT11 เชาว์ปัญญา', 'images/exams/tpat/TPAT1_11.png', 2, 10),
(14, 'TPAT12 จริยธรรมทางการแพทย์', 100, 'TPAT12 จริยธรรมทางการแพทย์', 'images/exams/tpat/TPAT1_12.png', 2, 10),
(15, 'TPAT13 ทักษะการเชื่อมโยง', 100, 'TPAT13 ทักษะการเชื่อมโยง', 'images/exams/tpat/TPAT1_13.png', 2, 10),
(16, 'TPAT2 ความถนัดศิลปกรรมศาสตร์', 100, 'TPAT2 ความถนัดศิลปกรรมศาสตร์', 'images/exams/tpat/TPAT2_Art.png', 2, 8),
(17, 'TPAT3 ความถนัดวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์', 100, 'TPAT3 ความถนัดวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์', 'images/exams/tpat/TPAT3_En.png', 2, 2),
(18, 'TPAT4 ความถนัดสถาปัตยกรรมศาสตร์', 100, 'TPAT4 ความถนัดสถาปัตยกรรมศาสตร์', 'images/exams/tpat/TPAT4_Arc.png', 2, 8),
(19, 'TPAT5 ความถนัดครุศาสตร์-ศึกษาศาสตร์', 100, 'TPAT5 ความถนัดครุศาสตร์-ศึกษาศาสตร์', 'images/exams/tpat/TPAT5_Teacher.png', 2, 10),
(20, 'A-LEVEL 66 Bio ชีวิทยา', 100, 'A-LEVEL 66 Bio ชีวิทยา', 'images/exams/a-level/A-Level_Bio.png', 3, 2),
(21, 'A-LEVEL 64 Phy ฟิสิกส์', 100, 'A-LEVEL 64 Phy ฟิสิกส์', 'images/exams/a-level/A-Level_Phy.png', 3, 2),
(22, 'A-LEVEL 81 Thai ภาษาไทย', 100, 'A-LEVEL 81 Thai ภาษาไทย', 'images/exams/a-level/A-Level_Thai.png', 3, 5),
(23, 'A-LEVEL 70 Soc สังคมศึกษา', 100, 'A-LEVEL 70 Soc สังคมศึกษา', 'images/exams/a-level/A-Level_Soc.png', 3, 9),
(24, 'A-LEVEL 61 Math1 คณิตศาสตร์ประยุกต์ 1 (พื้นฐาน+เพิ่มเติม)', 100, 'A-LEVEL 61 Math1 คณิตศาสตร์ประยุกต์ 1 (พื้นฐาน+เพิ่มเติม)', 'images/exams/a-level/A-Level_Math1.png', 3, 1),
(25, 'A-LEVEL 82 Eng ภาษาอังกฤษ', 100, 'A-LEVEL 82 Eng ภาษาอังกฤษ', 'images/exams/a-level/A-Level_Eng.png', 3, 6),
(26, 'A-LEVEL 65 Chem เคมี', 100, 'A-LEVEL 65 Chem เคมี', 'images/exams/a-level/A-Level_Chem.png', 3, 2),
(27, 'A-LEVEL 62 Math2 คณิตศาสตร์ประยุกต์์ 2 (พื้นฐาน)', 100, 'A-LEVEL 62 Math2 คณิตศาสตร์ประยุกต์์ 2 (พื้นฐาน)', 'images/exams/a-level/A-Level_Math2.png', 3, 1),
(28, 'A-LEVEL 63 Sci วิทยาศาสตร์ประยุกต์', 100, 'A-LEVEL 63 Sci วิทยาศาสตร์ประยุกต์', 'images/exams/a-level/A-Level_Sci.png', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `profile_picture`
--

CREATE TABLE `profile_picture` (
  `profile_picture_id` int(11) NOT NULL,
  `picture_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_picture`
--

INSERT INTO `profile_picture` (`profile_picture_id`, `picture_path`) VALUES
(1, 'images/profile/profile1.png'),
(2, 'images/profile/profile2.png'),
(3, 'images/profile/profile3.png'),
(4, 'images/profile/profile4.png'),
(5, 'images/profile/profile5.png'),
(6, 'images/profile/profile6.png'),
(7, 'images/profile/profile7.png');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(5) NOT NULL,
  `code` varchar(2) NOT NULL,
  `name_th` varchar(150) NOT NULL,
  `name_en` varchar(150) NOT NULL,
  `geography_id` int(5) NOT NULL,
  `province_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `code`, `name_th`, `name_en`, `geography_id`, `province_order`) VALUES
(1, '10', 'กรุงเทพมหานคร', 'Bangkok', 2, 1),
(2, '11', 'สมุทรปราการ', 'Samut Prakan\r\n', 2, 60),
(3, '12', 'นนทบุรี', 'Nonthaburi', 2, 24),
(4, '13', 'ปทุมธานี', 'Pathum Thani', 2, 29),
(5, '14', 'พระนครศรีอยุธยา', 'Phra Nakhon Si Ayutthaya', 2, 34),
(6, '15', 'อ่างทอง', 'Ang Thong', 2, 72),
(7, '16', 'ลพบุรี', 'Loburi', 2, 52),
(8, '17', 'สิงห์บุรี', 'Sing Buri', 2, 65),
(9, '18', 'ชัยนาท', 'Chai Nat', 2, 10),
(10, '19', 'สระบุรี', 'Saraburi', 2, 64),
(11, '20', 'ชลบุรี', 'Chon Buri', 5, 9),
(12, '21', 'ระยอง', 'Rayong', 5, 50),
(13, '22', 'จันทบุรี', 'Chanthaburi', 5, 7),
(14, '23', 'ตราด', 'Trat', 5, 16),
(15, '24', 'ฉะเชิงเทรา', 'Chachoengsao', 5, 8),
(16, '25', 'ปราจีนบุรี', 'Prachin Buri', 5, 31),
(17, '26', 'นครนายก', 'Nakhon Nayok', 2, 18),
(18, '27', 'สระแก้ว', 'Sa Kaeo', 5, 63),
(19, '30', 'นครราชสีมา', 'Nakhon Ratchasima', 3, 22),
(20, '31', 'บุรีรัมย์', 'Buri Ram', 3, 28),
(21, '32', 'สุรินทร์', 'Surin', 3, 69),
(22, '33', 'ศรีสะเกษ', 'Si Sa Ket', 3, 56),
(23, '34', 'อุบลราชธานี', 'Ubon Ratchathani', 3, 77),
(24, '35', 'ยโสธร', 'Yasothon', 3, 46),
(25, '36', 'ชัยภูมิ', 'Chaiyaphum', 3, 11),
(26, '37', 'อำนาจเจริญ', 'Amnat Charoen', 3, 73),
(27, '39', 'หนองบัวลำภู', 'Nong Bua Lam Phu', 3, 71),
(28, '40', 'ขอนแก่น', 'Khon Kaen', 3, 6),
(29, '41', 'อุดรธานี', 'Udon Thani', 3, 74),
(30, '42', 'เลย', 'Loei', 3, 55),
(31, '43', 'หนองคาย', 'Nong Khai', 3, 70),
(32, '44', 'มหาสารคาม', 'Maha Sarakham', 3, 43),
(33, '45', 'ร้อยเอ็ด', 'Roi Et', 3, 48),
(34, '46', 'กาฬสินธุ์', 'Kalasin', 3, 4),
(35, '47', 'สกลนคร', 'Sakon Nakhon', 3, 57),
(36, '48', 'นครพนม', 'Nakhon Phanom', 3, 20),
(37, '49', 'มุกดาหาร', 'Mukdahan', 3, 44),
(38, '50', 'เชียงใหม่', 'Chiang Mai', 1, 14),
(39, '51', 'ลำพูน', 'Lamphun', 1, 54),
(40, '52', 'ลำปาง', 'Lampang', 1, 53),
(41, '53', 'อุตรดิตถ์', 'Uttaradit', 1, 75),
(42, '54', 'แพร่', 'Phrae', 1, 41),
(43, '55', 'น่าน', 'Nan', 1, 26),
(44, '56', 'พะเยา', 'Phayao', 1, 33),
(45, '57', 'เชียงราย', 'Chiang Rai', 1, 13),
(46, '58', 'แม่ฮ่องสอน', 'Mae Hong Son', 1, 45),
(47, '60', 'นครสวรรค์', 'Nakhon Sawan', 2, 23),
(48, '61', 'อุทัยธานี', 'Uthai Thani', 2, 76),
(49, '62', 'กำแพงเพชร', 'Kamphaeng Phet', 2, 5),
(50, '63', 'ตาก', 'Tak', 4, 17),
(51, '64', 'สุโขทัย', 'Sukhothai', 2, 66),
(52, '65', 'พิษณุโลก', 'Phitsanulok', 2, 38),
(53, '66', 'พิจิตร', 'Phichit', 2, 37),
(54, '67', 'เพชรบูรณ์', 'Phetchabun', 2, 40),
(55, '70', 'ราชบุรี', 'Ratchaburi', 4, 51),
(56, '71', 'กาญจนบุรี', 'Kanchanaburi', 4, 3),
(57, '72', 'สุพรรณบุรี', 'Suphan Buri', 2, 67),
(58, '73', 'นครปฐม', 'Nakhon Pathom', 2, 19),
(59, '74', 'สมุทรสาคร', 'Samut Sakhon', 2, 62),
(60, '75', 'สมุทรสงคราม\r\n', 'Samut Songkhram', 2, 61),
(61, '76', 'เพชรบุรี', 'Phetchaburi', 4, 39),
(62, '77', 'ประจวบคีรีขันธ์', 'Prachuap Khiri Khan', 4, 30),
(63, '80', 'นครศรีธรรมราช', 'Nakhon Si Thammarat', 6, 22),
(64, '81', 'กระบี่', 'Krabi', 6, 2),
(65, '82', 'พังงา', 'Phangnga', 6, 35),
(66, '83', 'ภูเก็ต', 'Phuket', 6, 42),
(67, '84', 'สุราษฎร์ธานี', 'Surat Thani', 6, 68),
(68, '85', 'ระนอง', 'Ranong', 6, 49),
(69, '86', 'ชุมพร', 'Chumphon', 6, 12),
(70, '90', 'สงขลา', 'Songkhla', 6, 58),
(71, '91', 'สตูล', 'Satun', 6, 59),
(72, '92', 'ตรัง', 'Trang', 6, 15),
(73, '93', 'พัทลุง', 'Phatthalung', 6, 36),
(74, '94', 'ปัตตานี', 'Pattani', 6, 32),
(75, '95', 'ยะลา', 'Yala', 6, 47),
(76, '96', 'นราธิวาส', 'Narathiwat', 6, 25),
(77, '97', 'บึงกาฬ', 'ฺฺBuogkan', 3, 27);

-- --------------------------------------------------------

--
-- Table structure for table `provincess`
--

CREATE TABLE `provincess` (
  `id` int(5) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `name_th` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `geography_id` int(5) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provincess`
--

INSERT INTO `provincess` (`id`, `code`, `name_th`, `name_en`, `geography_id`) VALUES
(1, '10', 'กรุงเทพมหานคร', 'Bangkok', 2),
(2, '11', 'สมุทรปราการ', 'Samut Prakan', 2),
(3, '12', 'นนทบุรี', 'Nonthaburi', 2),
(4, '13', 'ปทุมธานี', 'Pathum Thani', 2),
(5, '14', 'พระนครศรีอยุธยา', 'Phra Nakhon Si Ayutthaya', 2),
(6, '15', 'อ่างทอง', 'Ang Thong', 2),
(7, '16', 'ลพบุรี', 'Loburi', 2),
(8, '17', 'สิงห์บุรี', 'Sing Buri', 2),
(9, '18', 'ชัยนาท', 'Chai Nat', 2),
(10, '19', 'สระบุรี', 'Saraburi', 2),
(11, '20', 'ชลบุรี', 'Chon Buri', 5),
(12, '21', 'ระยอง', 'Rayong', 5),
(13, '22', 'จันทบุรี', 'Chanthaburi', 5),
(14, '23', 'ตราด', 'Trat', 5),
(15, '24', 'ฉะเชิงเทรา', 'Chachoengsao', 5),
(16, '25', 'ปราจีนบุรี', 'Prachin Buri', 5),
(17, '26', 'นครนายก', 'Nakhon Nayok', 2),
(18, '27', 'สระแก้ว', 'Sa Kaeo', 5),
(19, '30', 'นครราชสีมา', 'Nakhon Ratchasima', 3),
(20, '31', 'บุรีรัมย์', 'Buri Ram', 3),
(21, '32', 'สุรินทร์', 'Surin', 3),
(22, '33', 'ศรีสะเกษ', 'Si Sa Ket', 3),
(23, '34', 'อุบลราชธานี', 'Ubon Ratchathani', 3),
(24, '35', 'ยโสธร', 'Yasothon', 3),
(25, '36', 'ชัยภูมิ', 'Chaiyaphum', 3),
(26, '37', 'อำนาจเจริญ', 'Amnat Charoen', 3),
(27, '39', 'หนองบัวลำภู', 'Nong Bua Lam Phu', 3),
(28, '40', 'ขอนแก่น', 'Khon Kaen', 3),
(29, '41', 'อุดรธานี', 'Udon Thani', 3),
(30, '42', 'เลย', 'Loei', 3),
(31, '43', 'หนองคาย', 'Nong Khai', 3),
(32, '44', 'มหาสารคาม', 'Maha Sarakham', 3),
(33, '45', 'ร้อยเอ็ด', 'Roi Et', 3),
(34, '46', 'กาฬสินธุ์', 'Kalasin', 3),
(35, '47', 'สกลนคร', 'Sakon Nakhon', 3),
(36, '48', 'นครพนม', 'Nakhon Phanom', 3),
(37, '49', 'มุกดาหาร', 'Mukdahan', 3),
(38, '50', 'เชียงใหม่', 'Chiang Mai', 1),
(39, '51', 'ลำพูน', 'Lamphun', 1),
(40, '52', 'ลำปาง', 'Lampang', 1),
(41, '53', 'อุตรดิตถ์', 'Uttaradit', 1),
(42, '54', 'แพร่', 'Phrae', 1),
(43, '55', 'น่าน', 'Nan', 1),
(44, '56', 'พะเยา', 'Phayao', 1),
(45, '57', 'เชียงราย', 'Chiang Rai', 1),
(46, '58', 'แม่ฮ่องสอน', 'Mae Hong Son', 1),
(47, '60', 'นครสวรรค์', 'Nakhon Sawan', 2),
(48, '61', 'อุทัยธานี', 'Uthai Thani', 2),
(49, '62', 'กำแพงเพชร', 'Kamphaeng Phet', 2),
(50, '63', 'ตาก', 'Tak', 4),
(51, '64', 'สุโขทัย', 'Sukhothai', 2),
(52, '65', 'พิษณุโลก', 'Phitsanulok', 2),
(53, '66', 'พิจิตร', 'Phichit', 2),
(54, '67', 'เพชรบูรณ์', 'Phetchabun', 2),
(55, '70', 'ราชบุรี', 'Ratchaburi', 4),
(56, '71', 'กาญจนบุรี', 'Kanchanaburi', 4),
(57, '72', 'สุพรรณบุรี', 'Suphan Buri', 2),
(58, '73', 'นครปฐม', 'Nakhon Pathom', 2),
(59, '74', 'สมุทรสาคร', 'Samut Sakhon', 2),
(60, '75', 'สมุทรสงคราม', 'Samut Songkhram', 2),
(61, '76', 'เพชรบุรี', 'Phetchaburi', 4),
(62, '77', 'ประจวบคีรีขันธ์', 'Prachuap Khiri Khan', 4),
(63, '80', 'นครศรีธรรมราช', 'Nakhon Si Thammarat', 6),
(64, '81', 'กระบี่', 'Krabi', 6),
(65, '82', 'พังงา', 'Phangnga', 6),
(66, '83', 'ภูเก็ต', 'Phuket', 6),
(67, '84', 'สุราษฎร์ธานี', 'Surat Thani', 6),
(68, '85', 'ระนอง', 'Ranong', 6),
(69, '86', 'ชุมพร', 'Chumphon', 6),
(70, '90', 'สงขลา', 'Songkhla', 6),
(71, '91', 'สตูล', 'Satun', 6),
(72, '92', 'ตรัง', 'Trang', 6),
(73, '93', 'พัทลุง', 'Phatthalung', 6),
(74, '94', 'ปัตตานี', 'Pattani', 6),
(75, '95', 'ยะลา', 'Yala', 6),
(76, '96', 'นราธิวาส', 'Narathiwat', 6),
(77, '97', 'บึงกาฬ', 'buogkan', 3);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`) VALUES
(1, 'คณิตศาสตร์'),
(2, 'วิทยาศาสตร์'),
(3, 'เคมี'),
(4, 'ชีววิทยา'),
(5, 'ภาษาไทย'),
(6, 'ภาษาอังกฤษ'),
(7, 'ฟิสิกส์'),
(8, 'ศิลปะ'),
(9, 'สังคมศึกษา'),
(10, 'ทักษะชีวิต');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `test_id` int(11) NOT NULL,
  `exam` text NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `exam`, `info`) VALUES
(1, '[{ \"description_line_i\": \"choose the best answer from the given choices\", \"id\": 1, \"question\": \"That\\\"s a very nice dress you\\\"re wearing. - ............\", \"choice\": [{ \"choicevalue\": \"a\", \"choicetext\": \"(k)I\\\"m glad you like it\" }, { \"choicevalue\": \"b\", \"choicetext\": \"That\\\"s all right\" }, { \"choicevalue\": \"c\", \"choicetext\": \"That\\\" nice\" }, { \"choicevalue\": \"d\", \"choicetext\": \"You\\\"re quite right\" }, { \"choicevalue\": \"e\", \"choicetext\": \"Quite right\" } ], \"Answer\": \"a\", \"Category\": \"Conversation\" }, { \"id\": 2, \"question\": \"............to stay the night? – Oh, that\\\"s very kind of you.\", \"choice\": [{ \"choicevalue\": \"a\", \"choicetext\": \"Do you feel like\" }, { \"choicevalue\": \"b\", \"choicetext\": \"(k)Would you like\" }, { \"choicevalue\": \"c\", \"choicetext\": \"Why don\\\"t you\" }, { \"choicevalue\": \"d\", \"choicetext\": \"Do you enjoy\" }, { \"choicevalue\": \"e\", \"choicetext\": \"Would do you like\" } ], \"Answer\": \"b\", \"Category\": \"Conversation\" }]', '[     {         \"Title\": \"NETSAT ด้านภาษาอังกฤษ\",         \"Description_line_i\": \"ความฉลาดรู้ทั่วไป 102 ด้านภาษาอังกฤษ\",         \"Description_line_ii\": \"Reading :Including 3 Part 1.Reading Instructions 2.Reading Correspondence 3.Reading for Information and Argument\",         \"Description_line_iii\": \"Writing :Including 2 Part 1.Sentence Completion 2.Error Detection\",         \"Description_line_iv\": \"\",         \"Description_line_v\": \"\",         \"NumberofQuestions\": 11,         \"Duration\": 60,         \"Linkedquestionid\": [0, 1, 2, 3, 4, 5],         \"Category\": { \"SentenceCompletion\": 6, \"ErrorDetection\": 8, \"ReadingInstruction\": 3, \"ReadingCorrespondence\": 3, \"ReadingforinformationandArgument\": 4 }     } ]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `phone` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `fname` text DEFAULT NULL,
  `lname` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `user_role` text NOT NULL,
  `user_pic` text NOT NULL,
  `payment_status` text NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `register_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `phone`, `password`, `fname`, `lname`, `email`, `user_role`, `user_pic`, `payment_status`, `role_id`, `register_at`) VALUES
(73, '123', '$2b$10$cLHQ8oNk1GcJ74nyMKUr0.AWuZB.CR5kDd/dbVVrYMiBaV3GB6uvS', 'กิตติคุณ', 'สิงห์คำมา', 's.kittikun3@gmail.com', 'นักเรียน', 'images/profile/profile6.png', '', 1, '2022-11-25 10:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `users_meta`
--

CREATE TABLE `users_meta` (
  `user_meta_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `expectation` varchar(255) DEFAULT NULL,
  `parentJob` varchar(255) DEFAULT NULL,
  `cart` text DEFAULT NULL,
  `termCondition` varchar(255) DEFAULT NULL,
  `itemSelected` text DEFAULT NULL,
  `dream1` varchar(255) DEFAULT NULL,
  `dream2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_meta`
--

INSERT INTO `users_meta` (`user_meta_id`, `user_id`, `grade`, `school`, `province`, `expectation`, `parentJob`, `cart`, `termCondition`, `itemSelected`, `dream1`, `dream2`) VALUES
(8, 73, 'มัธยมศึกษาปีที่ 6', 'สกลราช', 'สกลนคร', 'สอบเข้ามหาวิทยาลัย', '', '[{\"id\":2,\"name\":\"NETSAT ภาษาอังกฤษ\",\"amount\":100,\"detail\":\"ความฉลาดรู้ทั่วไปด้านภาษาอังกฤษ\",\"pic\":\"images/exams/netsat/NETSAT_Eng.png\",\"category_id\":4,\"subject_id\":6},{\"id\":1,\"name\":\"NETSAT ภาษาไทย\",\"amount\":100,\"detail\":\"ความฉลาดรู้ทั่วไปด้านภาษาไทย\",\"pic\":\"images/exams/netsat/NETSAT_Thai.png\",\"category_id\":4,\"subject_id\":5},{\"id\":11,\"name\":\"TGAT2 92 การคิดอย่างมีเหตุผล\",\"amount\":100,\"detail\":\"TGAT2 92 การคิดอย่างมีเหตุผล\",\"pic\":\"images/exams/tgat/TGAT2_Logic.png\",\"category_id\":1,\"subject_id\":10},{\"id\":13,\"name\":\"TPAT11 เชาว์ปัญญา\",\"amount\":100,\"detail\":\"TPAT11 เชาว์ปัญญา\",\"pic\":\"images/exams/tpat/TPAT1_11.png\",\"category_id\":2,\"subject_id\":10},{\"id\":12,\"name\":\"TGAT3 93 สมรรถนะการทำงาน\",\"amount\":100,\"detail\":\"TGAT3 93 สมรรถนะการทำงาน\",\"pic\":\"images/exams/tgat/TGAT3_Work.png\",\"category_id\":1,\"subject_id\":10},{\"id\":14,\"name\":\"TPAT12 จริยธรรมทางการแพทย์\",\"amount\":100,\"detail\":\"TPAT12 จริยธรรมทางการแพทย์\",\"pic\":\"images/exams/tpat/TPAT1_12.png\",\"category_id\":2,\"subject_id\":10}]', 'ยอมรับ', '[{\"id\":2,\"name\":\"NETSAT ภาษาอังกฤษ\",\"amount\":100,\"detail\":\"ความฉลาดรู้ทั่วไปด้านภาษาอังกฤษ\",\"pic\":\"images/exams/netsat/NETSAT_Eng.png\",\"category_id\":4,\"subject_id\":6},{\"id\":11,\"name\":\"TGAT2 92 การคิดอย่างมีเหตุผล\",\"amount\":100,\"detail\":\"TGAT2 92 การคิดอย่างมีเหตุผล\",\"pic\":\"images/exams/tgat/TGAT2_Logic.png\",\"category_id\":1,\"subject_id\":10},{\"id\":12,\"name\":\"TGAT3 93 สมรรถนะการทำงาน\",\"amount\":100,\"detail\":\"TGAT3 93 สมรรถนะการทำงาน\",\"pic\":\"images/exams/tgat/TGAT3_Work.png\",\"category_id\":1,\"subject_id\":10}]', 'แพท', 'วิศวะ');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` text NOT NULL,
  `role_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_name`, `role_level`) VALUES
(1, 'Administrator', 10),
(2, 'Editor', 9),
(3, 'Teacher', 7),
(4, 'Subscriber', 4),
(5, 'Expired Subscriber', 3),
(6, 'Member', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `foreign key user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `profile_picture`
--
ALTER TABLE `profile_picture`
  ADD PRIMARY KEY (`profile_picture_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD PRIMARY KEY (`user_meta_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `profile_picture`
--
ALTER TABLE `profile_picture`
  MODIFY `profile_picture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `users_meta`
--
ALTER TABLE `users_meta`
  MODIFY `user_meta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `foreign key user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`role_id`);

--
-- Constraints for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
