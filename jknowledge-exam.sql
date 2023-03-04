-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2023 at 04:29 AM
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
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `code_id` int(11) NOT NULL,
  `code_name` varchar(255) NOT NULL,
  `code_discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`code_id`, `code_name`, `code_discount`) VALUES
(1, 'JKNOWLEDGE2023', 100),
(2, 'JSUMMER2023', 50);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `exam_id` int(11) NOT NULL,
  `exam_name` varchar(255) DEFAULT NULL,
  `exam_info` text DEFAULT NULL,
  `exam_content` text DEFAULT NULL,
  `exam_operation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`exam_id`, `exam_name`, `exam_info`, `exam_content`, `exam_operation`) VALUES
(1, 'NETSAT ภาษาไทย', '[{\n	\"Title\": \"NETSAT ด้านภาษาไทย\",\n	\"Description\": \"ความฉลาดรู้ทั่วไป 101 ด้านภาษาไทย\",\n	\"Duration\": 30\n}]', '[{\n	\"id\": 1,\n	\"question\": \" ข้อใดเป็นการใช้ความเปรียบเทียบที่แตกต่างจากข้ออื่น\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ครูคือแม่พิมพ์ของชาติ\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ท่าทางหล่อนราวกับนางพญา\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ไพเราะกังวานปานเสียงนกร้อง\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ฟันเรียงสลอนเหมือนข้าวโพดพันธุ์ดี\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"a\",\n	\"point\": 1,\n	\"category\": \"A\"\n}, {\n	\"id\": 2,\n	\"question\": \"ผู้นำที่ดีจะต้องมี________ในการบริหารที่กว้างไกล  ในขณะที่ผู้นำที่บางประเภทมักจะชอบสร้าง_________ให้น่าเชื่อถือมากกว่าลงมือปฏิบัติ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"มุมมอง , ภาพพจน์\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"มุมมอง , ภาพลักษณ์\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"วิสัยทัศน์ , ภาพพจน์\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"วิสัยทัศน์ , ภาพลักษณ์\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"d\",\n	\"point\": 1,\n	\"category\": \"A\"\n}, {\n	\"id\": 3,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"/images/exams/netsat/NETSAT_Thai.png\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"B\"\n}, {\n	\"id\": 4,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"/images/exams/netsat/NETSAT_Thai.png\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"B\"\n}, {\n	\"id\": 5,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"/images/exams/netsat/NETSAT_Thai.png\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"C\"\n}, {\n	\"id\": 6,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"/images/exams/netsat/NETSAT_Thai.png\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"/images/exams/netsat/NETSAT_Eng.png\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"/images/exams/netsat/NETSAT_Phy.png\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"/images/exams/netsat/NETSAT_Chem.png\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"C\"\n}, {\n	\"id\": 7,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"/images/exams/netsat/NETSAT_Eng.png\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"/images/exams/netsat/NETSAT_Chem.png\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"/images/exams/netsat/NETSAT_Thai.png\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"/images/exams/netsat/NETSAT_Sci.png\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"D\"\n}, {\n	\"id\": 8,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"/images/exams/a-level/A-Level_Bio.png\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"/images/exams/a-level/A-Level_Math1.png\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"/images/exams/a-level/A-Level_Chem.png\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"/images/exams/a-level/A-Level_Sci.png\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"D\"\n}, {\n	\"id\": 9,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"E\"\n}, {\n	\"id\": 10,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"https://jknowledgetutor.com/attachfile/netsat/thai/tq10.png\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ถูก 2\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 2\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 2,\n	\"category\": \"E\"\n}, {\n	\"id\": 11,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"/images/exams/netsat/NETSAT_Thai.png\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"C\"\n}, {\n	\"id\": 12,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"/images/exams/netsat/NETSAT_Thai.png\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"/images/exams/netsat/NETSAT_Eng.png\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"/images/exams/netsat/NETSAT_Phy.png\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"/images/exams/netsat/NETSAT_Chem.png\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"C\"\n}, {\n	\"id\": 13,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"/images/exams/netsat/NETSAT_Eng.png\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"/images/exams/netsat/NETSAT_Chem.png\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"/images/exams/netsat/NETSAT_Thai.png\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"/images/exams/netsat/NETSAT_Sci.png\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"D\"\n}, {\n	\"id\": 14,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"/images/exams/a-level/A-Level_Bio.png\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"/images/exams/a-level/A-Level_Math1.png\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"/images/exams/a-level/A-Level_Chem.png\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"/images/exams/a-level/A-Level_Sci.png\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"D\"\n}, {\n	\"id\": 15,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"E\"\n}, {\n	\"id\": 16,\n	\"question\": \"เลือกทำตอบ\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"https://jknowledgetutor.com/attachfile/netsat/thai/tq10.png\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ถูก 2\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 2\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ถูก 0.5\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0.5\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ถูก 1\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ผิด\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 2,\n	\"category\": \"E\"\n}]', 1);
INSERT INTO `exams` (`exam_id`, `exam_name`, `exam_info`, `exam_content`, `exam_operation`) VALUES
(2, 'NETSAT ภาษาอังกฤษ', '[{\n	\"Title\": \"NETSAT ด้านภาษาอังกฤษ\",\n	\"Description\": \"ความฉลาดรู้ทั่วไป 102 ด้านภาษาอังกฤษ\",\n	\"Duration\": 45\n}]', '[{\n	\"id\": 1,\n	\"question\": \"Professor had been arrived before we ________ her homework.\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"finished\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"finish\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"is finished\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"will finish\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"a\",\n	\"point\": 1,\n	\"category\": \"Sentence Completion\",\n	\"answerDescription\": \"ข้อนี้เป็นเรื่อง Tense เราสามารถสังเกตได้ว่าประโยคนี้เป็นอดีตแน่นอนสังเกตได้จาก had been arrived ข้อนี้เป็น Tense คู่ระหว่าง Past Perfect (เหตุการณ์ที่เกิดขึ้นก่อนและจบลง) + Past Simple (เหตุการณ์ที่เกิดตามมา)\"\n}, {\n	\"id\": 2,\n	\"question\": \"May I have ________ kind to support me with your device. Due to ________ device is broken yesterday and those are not ________.\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"your, my, mine\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"you, me, mine\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"yours, mine, you\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"your, mine, my\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"a\",\n	\"point\": 1,\n	\"category\": \"Sentence Completion\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 3,\n	\"question\": \"Communities along the surrounding coasts of the Indian Ocean ________, and the tsunamis ________ an estimated 227,898 people in 14 countries, making it one of the deadliest natural disasters in recorded history.\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"were devastated, killed\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"were devastated, were killed\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"is devastated, are killed\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"are devastated, killed\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"a\",\n	\"point\": 1,\n	\"category\": \"Sentence Completion\",\n	\"answerDescription\": \"ข้อนี้เป็นเรื่อง Tense, Subject & Verb agreement, และ Active & Passive voice ในส่วนของ Tense นั้นจะสังเกตได้ว่า เรื่องนี้เป็นเหตุการณ์ Tsunami ที่ผ่านมาแล้ว จึงสามารถทำให้รู้ทันทีว่าต้องเป็นการพูดถึงอดีต ทั้งสองส่วน ดังนั้นเราจึงสามารถตัดข้อที่ไม่ใช้ Past Tense ออกได้เลย นั่นคือ c. และ d. ในส่วนของ Subject & Verb agreement นั่น สามารถสังเกตได้จากประธานของประโยคนั้นๆ ซึ่งความยากจะอยู่ที่ประโยคแรกที่หลายๆคนอาจจะเข้าใจว่า “the Indian Ocean” นั้นเป็นประธานของประโยค แต่จริงๆแล้วประธาน คือ “Communities” ส่วนข้อความที่ว่า “along the surrounding coasts of the Indian Ocean” เป็นเพียงแค่ส่วนเติมเต็มเท่านั้น ดังนั้น V ในส่วนแรกจะต้องตามด้วย Plural Verb หรือ กริยาพหูพจน์นั่นเอง ในส่วนของ Active & Passive Voice สามารถเดาได้เลยว่า ใครถูกกระทำ ใครเป็นผู้กระทำ ซึ่งแน่นอนว่า ส่วนที่ 2 “Tsunami” เป็นผู้กระทำแน่นอนจึงสามารถตัดข้อที่เป็น “Passive Voice”ออกได้เลยนั่นคือ b. และ d. เพียงเท่านี้ เราก็จะได้คำตอบทั้งหมด\"\n}, {\n	\"id\": 4,\n	\"question\": \"Mr. Ronald asked his ________ for the meeting minutes.\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"assistance\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"assistant\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"assisted\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"assists\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\":0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"b\",\n	\"point\": 1,\n	\"category\": \"Sentence Completion\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 5,\n	\"question\": \"Maria is ________ a plane while her twin a boy and a girl are ________ a car.\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"in, in\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"on, in\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"in, on\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"on, on\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"b\",\n	\"point\": 1,\n	\"category\": \"Sentence Completion\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 6,\n	\"question\": \"________ try to keep the noise down, and ________ never do it again.\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"-, does\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"-, do\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"Do, -\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"Does, -\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"Sentence Completion\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 7,\n	\"question\": \"As of 30 September Thailand’s Disaster Prevention and Mitigation Department (DDPM) reported flooding ___(A)___ 229,220 households across 6,827 villages ___(B)___ 193 districts of 31 provinces. A total of 7 fatalities have been reported, including 6 in Lopburi Province and 1 in Phetchabun Province where 1 person was reported missing. Chaiyaphum Province is one of ___(C)___ hit areas, with 71,379 household affected, while in Lopburi a total of 56,138 households ___(D)___. Other hard hit provinces include Nakhon Sawan (20,902 households affected), Nakhon Ratchasima (8,787 households affected), Suphanburi (10,798 households affected) and Phra Nakhon Si Ayutthaya (13,445 households affected) ___(E)___ the Chao Phraya river has inundated the districts of Pak Hai, Sena, Bang BanPhra Nakhon Si Ayutthaya and Bang Sai. Heavy rain from the storm caused rivers to overflow. According to figures from Thai Water, rivers are above flood level ___(F)___ 40 locations along the Bang Pakong, Tha Chin, Pa Sak, Sakae Krang, Chao Phraya, Nan, Yom, Ping, Mun and Chi rivers, as of 01 October 2021. What is (A)\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"has affected\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"has effected\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"have affected\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"have effected\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"a\",\n	\"point\": 1,\n	\"category\": \"Sentence Completion\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 8,\n	\"question\": \"(B)\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"on\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"at\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"in\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"with\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"Sentence Completion\",\n	\"answerDescription\": \"เนื่องจาก in จะใช้กับสถานที่ใหญ่ๆ เช่น หมู่บ้าน\"\n}, {\n	\"id\": 9,\n	\"question\": \"(C)\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"worse\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"bad\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"bader\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"the worst\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"d\",\n	\"point\": 1,\n	\"category\": \"Sentence Completion\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 10,\n	\"question\": \"(D)\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"was affected\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"were affected\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"was effected\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"were effected\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"b\",\n	\"point\": 1,\n	\"category\": \"Sentence Completion\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 11,\n	\"question\": \"(E)\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"which\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"whose\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"whom\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"where\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"d\",\n	\"point\": 1,\n	\"category\": \"Sentence Completion\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 12,\n	\"question\": \"(F)\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"the most\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"more than\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"as much as\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"as many as\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"b\",\n	\"point\": 1,\n	\"category\": \"Sentence Completion\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 13,\n	\"question\": \"(a.)Dressing up the corset and (b.)other accouterments of aristocratic women (c.)were one of (d.)the more popular grooming in 1898.\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"(a.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\":0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"(b.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"(c.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"(d.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"Error Detection\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 14,\n	\"question\": \"One thing I (a.)should like to do immensely, and that is to tell her, in the way authors have, that the (b.)childs are coming back, that (c.)indeed they will be here (d.)on Thursday.\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"(a.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"(b.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"(c.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"(d.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"b\",\n	\"point\": 1,\n	\"category\": \"Error Detection\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 15,\n	\"question\": \"Some (a.)person have a gift for coming up with ideas. (b.)But for those (c.)that don’t it is (d.)a real struggle.\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"(a.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"(b.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"(c.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"(d.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"a\",\n	\"point\": 1,\n	\"category\": \"Error Detection\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 16,\n	\"question\": \"It took all her (a.)self-discipline not to (b.)spent (c.)all day (d.)staring out of the window.\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"(a.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"(b.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"(c.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"(d.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"Error Detection\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 17,\n	\"question\": \"(a.)Nowadays more travelers are choosing (b.)alternative quarantine (c.)instead of (d.)stayed conventional quarantine.\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"(a.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"(b.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"(c.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"(d.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"d\",\n	\"point\": 1,\n	\"category\": \"Error Detection\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 18,\n	\"question\": \"We pushed ourselves (a.)along the wreck (b.)until we reached the end, just (c.)a fifty-yards swim in (d.)open water to the lighthouse rocks.\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"(a.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"(b.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"(c.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"(d.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"Error Detection\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 19,\n	\"question\": \"You (a.)must have had (b.)a bad time on your vacation. You (c.)seem unhappy and (d.)stress. \",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"(a.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"(b.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"(c.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"(d.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"d\",\n	\"point\": 1,\n	\"category\": \"Error Detection\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 20,\n	\"question\": \"(a.)Artwork on cave walls (b.)around Europe (c.)was thought to be (d.)first in the world. \",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"(a.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"(b.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"(c.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"(d.)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"d\",\n	\"point\": 1,\n	\"category\": \"Error Detection\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 21,\n	\"question\": \"In the instruction above, how many parts are there to assemble the car in total?\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"https://jknowledgetutor.com/attachfile/netsat/english/q21.png\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"41\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"43\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"45\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"47\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"Reading Instruction\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 22,\n	\"question\": \"Which of the following is incorrect about “RC CAR KIT” \",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"Battery cover plate must loosen by screwdriver.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"This toy is not appropriate for children under 4 years\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"This toy requires a total of 2 types of batteries: 4 pieces of 1.5V batteries and 1 piece of 9V battery.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"None of all above.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"b\",\n	\"point\": 1,\n	\"category\": \"Reading Instruction\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 23,\n	\"question\": \"Which of the following was showed in “SAFETY WARNING” section? \",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"Do not mix old batteries.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"Children\'s use should be under adult supervision.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"Cat can be used to be the obstacle.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"Do not charge the non-recharge battery.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"b\",\n	\"point\": 1,\n	\"category\": \"Reading Instruction\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 24,\n	\"question\": \"Dear Ms.Maximoff ,I am writing up as a follow-up to our previous phone conversation on September 5 1971, Friday, informing you about your selection in the current year\'s \'Outstanding\' student of the year list. All the faculties of the department made a list. We congratulate you on this achievement! For this award, eligibility is judged on the following criteria: -3.5+ GPA for combine summer program and winter course for ASIAN languagescourse - Strong performance in Chinese Additionally, the selected student must also demonstrate a passion for Chinese language studies, exemplify a commitment to the same profession, and show a positive attitude towards program instructors and peers.. You have successfully met these criteria and demonstrated the outstanding qualities that we look for the student recipients of this award. We invite you and your guests to Student Recognition Event, sponsored by CBAT University, on December 20, 8 AM to 10 AM in Center BAT Room. Please contact me if you have any more questions. Congratulations again Ms. Maximoff, we are looking forward to welcoming you and celebrate with you at the awards event on December 20. Best Tony Strank Chancellor CBAT University. What is the type of the above letter? \",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"Fundraising letter\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"Internship letter\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"Congratulations letter\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"Request letter\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"Reading Correspondence\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 25,\n	\"question\": \"What kind does Ms. Maximoff study at?\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"Management Sciences\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"Humanities\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"Sciences\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"Agriculture\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"b\",\n	\"point\": 1,\n	\"category\": \"Reading Correspondence\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 26,\n	\"question\": \"Which of the following is incorrect?\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"Ms. Maximoff got 3.5 GPA.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"Ms. Maximoff was invited to the event on December 20, 1971.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"The event allows Ms. Maximoff’s guest to join.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"All the above is incorrect.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"a\",\n	\"point\": 1,\n	\"category\": \"Reading Correspondence\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 27,\n	\"question\": \"Where is this event held?\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"https://jknowledgetutor.com/attachfile/netsat/english/q27.png\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"Danny’s Bowling Lane\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"8989 Waverly Road\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"Both a. and b. are correct\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"None of all above\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"Reading for information and Argument\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 28,\n	\"question\": \"What is the purpose of this Fundraising event?\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"For care equipment\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"For education\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"For veterans\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"For the disabled\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"a\",\n	\"point\": 1,\n	\"category\": \"Reading for information and Argument\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 29,\n	\"question\": \"How much do you need to pay if you want to attend the event?\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"$10\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"$15\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"Both a. and b. are correct.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"There is no mention in the poster.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"d\",\n	\"point\": 1,\n	\"category\": \"Reading for information and Argument\",\n	\"answerDescription\": \"\"\n}, {\n	\"id\": 30,\n	\"question\": \"Which of the following is incorrect about the event?\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"There is Live Band and Lunch.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"The event was held between November 6-12.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"Both a. and b. are incorrect.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"None of the above.\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"Reading for information and Argument\",\n	\"answerDescription\": \"\"\n}]', 1);
INSERT INTO `exams` (`exam_id`, `exam_name`, `exam_info`, `exam_content`, `exam_operation`) VALUES
(3, 'NETSAT ด้านคณิตศาสตร์', '[{\n	\"Title\": \"NETSAT ด้านคณิตศาสตร์\",\n	\"Description\": \"ความฉลาดรู้ทั่วไป 103 ด้านคณิตศาสตร์\",\n	\"Duration\": 60\n}]', '[{\n	\"id\": 1,\n	\"question\": \"ทศนิยมซ้ำ <InlineMath>\\\\space 0.45\\\\overline{56} \\\\space สามารถเขียนเป็นทศนิยมรูปเศษส่วนได้ตามข้อใด\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"\\\\cfrac {4511} {9900}\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"\\\\cfrac {4511} {9999}\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"\\\\cfrac {4556} {9900}\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"\\\\cfrac {4556} {9999}\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"a\",\n	\"point\": 1,\n	\"category\": \"Numbers and Mathematical\",\n	\"answerDescription\": \"\",\n	\"answerImage\": \"\"\n}, {\n	\"id\": 2,\n	\"question\": \"ข้อใดต่อไปนี้ถูกต้อง\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"\\\\sqrt{36}-\\\\sqrt[3]{-27} = 3\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"\\\\sqrt[6]{2} × \\\\sqrt[3]{2} ×\\\\sqrt[4]{4} = 2\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"\\\\cfrac {2} {1+\\\\sqrt3} - \\\\cfrac {1} {2-\\\\sqrt3 } = 3\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"\\\\cfrac {\\\\sqrt2} {\\\\sqrt2-1} = 2\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"b\",\n	\"point\": 1,\n	\"category\": \"Numbers and Mathematical\",\n	\"answerDescription\": \"\",\n	\"answerImage\": \"\"\n}, {\n	\"id\": 3,\n	\"question\": \"รากที่สองของ\\\\space \\\\sqrt{5+\\\\sqrt{24}}-\\\\sqrt{3} \\\\spaceมีค่าเท่ากับข้อใด\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"\\\\sqrt{2}\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"2\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"-\\\\sqrt{2}\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"-2\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"a\",\n	\"point\": 1,\n	\"category\": \"Numbers and Mathematical\",\n	\"answerDescription\": \"\",\n	\"answerImage\": \"\"\n}, {\n	\"id\": 4,\n	\"question\": \"คุณแม่แบ่งเงินจำนวน \\\\space 5,000 \\\\space บาท \\\\space ให้ลูก \\\\space 2 \\\\space คน \\\\space คือ \\\\space ดำกับแดง ด้วยอัตราส่วน ดำ:แดง = 2∶3 \\\\spaceข้อใดต่อไปนี้ถูกต้อง\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"ดำได้เงินมากกว่าแดง 10,000 บาท\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"ดำได้เงินน้อยกว่าแดง 1,000 บาท\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"ดำได้เงิน 3,000 บาท\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"แดงได้เงิน 2,000 บาท\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"b\",\n	\"point\": 1,\n	\"category\": \"Data handling\",\n	\"answerDescription\": \"\",\n	\"answerImage\": \"\"\n}, {\n	\"id\": 5,\n	\"question\": \"จากข้อก่อนหน้า แดงได้นำเงินไปฝากธนาคารโดยธนาคารได้ดอกเบี้ย ร้อยละ 3 บาทต่อปี เมื่อครบ 1 ปี แล้วแดงจะมีเงินรวมทั้งหมดเท่าไหร่\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"3,300 บาท\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"3,030 บาท\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"3,900 บาท\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"3,090 บาท\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"d\",\n	\"point\": 1,\n	\"category\": \"Data handling\",\n	\"answerDescription\": \"\",\n	\"answerImage\": \"\"\n}, {\n	\"id\": 6,\n	\"question\": \"ให้\\\\space y \\\\spaceเป็นสัดส่วนโดยตรงกับกำลังสองของ \\\\space x \\\\spaceเมื่อ \\\\space y=-5 \\\\spaceและ\\\\space x=-2 \\\\spaceถ้า\\\\space x=-4 \\\\spaceจะได้\\\\space y \\\\spaceเท่ากับข้อใด\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"20\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"-20\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"10\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"-10\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"b\",\n	\"point\": 1,\n	\"category\": \"Data handling\",\n	\"answerDescription\": \"\",\n	\"answerImage\": \"\"\n}, {\n	\"id\": 7,\n	\"question\": \"ข้อใดต่อไปนี้กระจายนิพจน์ได้ถูกต้อง\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"(x-3)^2 - (x-2)^2 = 10x +13\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"(x+1)^2 - 4(x^2+1) = -3x^2 + 2x +5\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"4(x^2 -3x) - (3x^2 -5x -4) = x^2 -7x +4\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ถูกต้องทุกข้อ\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"b\",\n	\"point\": 1,\n	\"category\": \"Numbers and Mathematical\",\n	\"answerDescription\": \"\",\n	\"answerImage\": \"\"\n}, {\n	\"id\": 8,\n	\"question\": \"การแยกตัวประกอบของนิพจน์ในข้อใดถูกต้อง\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"9x^4 - 6x^2 +1 = (3x^2 -1)^2\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"27x^3+125y^3 = (3x+5y) \\\\space (9x^2 -15xy+25y^2)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"64x^2-49y^2=(8x-7y) \\\\space(8x+7y)\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ถูกต้องทุกข้อ\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"d\",\n	\"point\": 1,\n	\"category\": \"Numbers and Mathematical\",\n	\"answerDescription\": \"\",\n	\"answerImage\": \"\"\n}, {\n	\"id\": 9,\n	\"question\": \"กำหนดให้\\\\space a,\\\\space b \\\\spaceและ\\\\space c \\\\spaceเป็นคำตอบของสมการ\\\\space x^3 - 5x^2-4x+20 =0 \\\\space ข้อใดถูกต้อง\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"a + b + c=-9\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"a^2+b^2+c^2=81\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"abc=-20\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"ถูกต้องทุกข้อ\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"Numbers and Mathematical\",\n	\"answerDescription\": \"\",\n	\"answerImage\": \"\"\n}, {\n	\"id\": 10,\n	\"question\": \"ให้\\\\space y \\\\spaceเป็นสัดส่วนโดยตรงกับกำลังสองของ\\\\space x \\\\spaceเมื่อ\\\\space y=-5 \\\\spaceและ\\\\space x=-2 \\\\spaceถ้า\\\\space x=-4 \\\\spaceจะได้\\\\space y \\\\spaceเท่ากับข้อใด\",\n	\"question_image_sm\": \"\",\n	\"question_image_md\": \"\",\n	\"question_image_lg\": \"\",\n	\"choice\": [{\n		\"choicevalue\": \"a\",\n		\"choicetext\": \"x<-3\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"b\",\n		\"choicetext\": \"-x>\\\\cfrac {1}{3}\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"c\",\n		\"choicetext\": \"-3<x<\\\\cfrac {1}{3}\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 1\n	}, {\n		\"choicevalue\": \"d\",\n		\"choicetext\": \"แดงได้เงิน 2,000 บาท\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}, {\n		\"choicevalue\": \"e\",\n		\"choicetext\": \"\",\n		\"choice_image_sm\": \"\",\n		\"choice_image_md\": \"\",\n		\"choice_image_lg\": \"\",\n		\"point\": 0\n	}],\n	\"answer\": \"c\",\n	\"point\": 1,\n	\"category\": \"Numbers and Mathematical\",\n	\"answerDescription\": \"\",\n	\"answerImage\": \"\"\n}]', 2);

-- --------------------------------------------------------

--
-- Table structure for table `exams_meta`
--

CREATE TABLE `exams_meta` (
  `exam_meta_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `score` int(11) NOT NULL,
  `timeSpend` int(11) NOT NULL,
  `submit_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exams_meta`
--

INSERT INTO `exams_meta` (`exam_meta_id`, `user_id`, `exam_id`, `answer`, `score`, `timeSpend`, `submit_at`) VALUES
(26, 73, 2, '[{\"id\":1,\"choose\":\"b\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":2,\"choose\":\"b\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":3,\"choose\":\"b\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":4,\"choose\":\"d\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":5,\"choose\":\"a\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":6,\"choose\":\"d\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":7,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":8,\"choose\":\"d\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":9,\"choose\":\"b\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":10,\"choose\":\"d\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":11,\"choose\":\"a\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":12,\"choose\":\"b\",\"point\":1,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":13,\"choose\":\"b\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":14,\"choose\":\"d\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":15,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":16,\"choose\":\"b\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":17,\"choose\":\"d\",\"point\":1,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":18,\"choose\":\"c\",\"point\":1,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":19,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":20,\"choose\":\"b\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":21,\"choose\":\"d\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Instruction\"},{\"id\":22,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Instruction\"},{\"id\":23,\"choose\":\"b\",\"point\":1,\"fullScore\":1,\"category\":\"Reading Instruction\"},{\"id\":24,\"choose\":\"c\",\"point\":1,\"fullScore\":1,\"category\":\"Reading Correspondence\"},{\"id\":25,\"choose\":\"a\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Correspondence\"},{\"id\":26,\"choose\":\"b\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Correspondence\"},{\"id\":27,\"choose\":\"c\",\"point\":1,\"fullScore\":1,\"category\":\"Reading for information and Argument\"},{\"id\":28,\"choose\":\"d\",\"point\":0,\"fullScore\":1,\"category\":\"Reading for information and Argument\"},{\"id\":29,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Reading for information and Argument\"},{\"id\":30,\"choose\":\"c\",\"point\":1,\"fullScore\":1,\"category\":\"Reading for information and Argument\"}]', 7, 435, '2023-02-08 03:36:57'),
(27, 73, 2, '[{\"id\":1,\"choose\":\"a\",\"point\":1,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":2,\"choose\":\"a\",\"point\":1,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":3,\"choose\":\"a\",\"point\":1,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":4,\"choose\":\"b\",\"point\":1,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":5,\"choose\":\"b\",\"point\":1,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":6,\"choose\":\"c\",\"point\":1,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":7,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":8,\"choose\":\"c\",\"point\":1,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":9,\"choose\":\"a\",\"point\":1,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":10,\"choose\":\"a\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":11,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":12,\"choose\":\"b\",\"point\":1,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":13,\"choose\":\"b\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":14,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":15,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":16,\"choose\":\"b\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":17,\"choose\":\"a\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":18,\"choose\":\"a\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":19,\"choose\":\"d\",\"point\":1,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":20,\"choose\":\"a\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":21,\"choose\":\"c\",\"point\":1,\"fullScore\":1,\"category\":\"Reading Instruction\"},{\"id\":22,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Instruction\"},{\"id\":23,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Instruction\"},{\"id\":24,\"choose\":\"b\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Correspondence\"},{\"id\":25,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Correspondence\"},{\"id\":26,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Correspondence\"},{\"id\":27,\"choose\":\"a\",\"point\":0,\"fullScore\":1,\"category\":\"Reading for information and Argument\"},{\"id\":28,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Reading for information and Argument\"},{\"id\":29,\"choose\":\"a\",\"point\":0,\"fullScore\":1,\"category\":\"Reading for information and Argument\"},{\"id\":30,\"choose\":\"a\",\"point\":0,\"fullScore\":1,\"category\":\"Reading for information and Argument\"}]', 11, 42, '2023-02-09 02:48:25'),
(28, 73, 2, '[{\"id\":1,\"choose\":\"d\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":2,\"choose\":\"a\",\"point\":1,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":3,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":4,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":5,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":6,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":7,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":8,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":9,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":10,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":11,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":12,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Sentence Completion\"},{\"id\":13,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":14,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":15,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":16,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":17,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":18,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":19,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":20,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Error Detection\"},{\"id\":21,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Instruction\"},{\"id\":22,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Instruction\"},{\"id\":23,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Instruction\"},{\"id\":24,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Correspondence\"},{\"id\":25,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Correspondence\"},{\"id\":26,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Reading Correspondence\"},{\"id\":27,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Reading for information and Argument\"},{\"id\":28,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Reading for information and Argument\"},{\"id\":29,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Reading for information and Argument\"},{\"id\":30,\"choose\":\"\",\"point\":0,\"fullScore\":1,\"category\":\"Reading for information and Argument\"}]', 1, 33, '2023-02-09 07:27:26'),
(29, 73, 3, '[{\"id\":1,\"choose\":\"a\",\"point\":1,\"fullScore\":1,\"category\":\"Numbers and Mathematical\"},{\"id\":2,\"choose\":\"b\",\"point\":1,\"fullScore\":1,\"category\":\"Numbers and Mathematical\"},{\"id\":3,\"choose\":\"a\",\"point\":1,\"fullScore\":1,\"category\":\"Numbers and Mathematical\"},{\"id\":4,\"choose\":\"b\",\"point\":1,\"fullScore\":1,\"category\":\"Data handling\"},{\"id\":5,\"choose\":\"a\",\"point\":0,\"fullScore\":1,\"category\":\"Data handling\"},{\"id\":6,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Data handling\"},{\"id\":7,\"choose\":\"b\",\"point\":0,\"fullScore\":1,\"category\":\"Numbers and Mathematical\"},{\"id\":8,\"choose\":\"c\",\"point\":0,\"fullScore\":1,\"category\":\"Numbers and Mathematical\"},{\"id\":9,\"choose\":\"c\",\"point\":1,\"fullScore\":1,\"category\":\"Numbers and Mathematical\"},{\"id\":10,\"choose\":\"a\",\"point\":0,\"fullScore\":1,\"category\":\"Numbers and Mathematical\"}]', 5, 59, '2023-02-10 02:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `exam_operation`
--

CREATE TABLE `exam_operation` (
  `exam_operation` int(11) NOT NULL,
  `types` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_operation`
--

INSERT INTO `exam_operation` (`exam_operation`, `types`) VALUES
(1, 'text, image'),
(2, 'Math Operation, Image');

-- --------------------------------------------------------

--
-- Table structure for table `expectation`
--

CREATE TABLE `expectation` (
  `expectation_id` int(11) NOT NULL,
  `expectation_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expectation`
--

INSERT INTO `expectation` (`expectation_id`, `expectation_value`) VALUES
(1, 'สอบเข้ามหาวิทยาลัย'),
(2, 'ทบทวนบทเรียน'),
(3, 'เพิ่มผลการเรียน');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`) VALUES
(1, 'คณะเทคนิคการแพทย์'),
(2, 'วิทยาลัยการคอมพิวเตอร์'),
(3, 'บริหารธุรกิจและการบัญชี');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `major_id` int(11) NOT NULL,
  `major_name` varchar(255) NOT NULL,
  `faculty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`major_id`, `major_name`, `faculty_id`) VALUES
(1, 'เทคนิคการแพทย์', 1),
(2, 'กายภาพบำบัด', 1),
(3, 'วิทยาการคอมพิวเตอร์', 2),
(4, 'เทคโนโลยีสารสนเทศ', 2),
(5, 'ปัญหาประดิษฐ์', 2),
(6, 'การเงิน', 3),
(7, 'การตลาด', 3),
(8, 'การจัดการ', 3),
(9, 'การจัดการอุตสาหกรรมการท่องเที่ยว', 3),
(10, 'ผู้ประกอบการดิจิทัล', 3);

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
(158, 73, 'trxn-daoylrrnla38780751', 100, 100, 'card', '[\"TGAT1 91 การสื่อสารภาษาอังกฤษ\"]', 'success', '2023-01-31 02:34:43'),
(159, 73, 'trxn-bavhgroqio73898697', 100, 100, 'card', '[\"NETSAT ภาษาไทย\"]', 'success', '2023-02-03 08:15:21'),
(160, 73, 'trxn-yvfyjnenzu11619186', 100, 100, 'card', '[\"NETSAT คณิตศาสตร์\"]', 'success', '2023-02-09 06:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `detail` text NOT NULL,
  `blueprint` text DEFAULT NULL,
  `pic` text NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `amount`, `detail`, `blueprint`, `pic`, `category_id`, `subject_id`) VALUES
(1, 'NETSAT ภาษาไทย', 100, 'ความฉลาดรู้ทั่วไปด้านภาษาไทย', '[{ \"topic\": \"หมวดการอ่านภาษาไทย (20 คะแนน)\", \"subtopics\": [{ \"subtopic\": \"ความหมายของคำวลี ประโยค และข้อความ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"ถ้อยคำหรือข้อความแสดงเจตนาต่างๆ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"การสรุปใจความสำคัญ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"ข้อเท็จจริงและข้อคิดเห็น\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"การอ่านตีความและประเมินคุณค่า\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"การอ่านสื่อสิ่งพิมพ์และสื่ออิเล็กทรอนิกส์\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }] }, { \"topic\": \"หมวดการเขียนภาษาไทย (20 คะแนน)\", \"subtopics\": [{ \"subtopic\": \"การใช้คำวลี ประโยค และข้อความ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"การเชื่อมโยงความ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"การใช้ภาษาในระดับต่างๆ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"การเขียนย่อหน้า\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }] }, { \"topic\": \"คะแนนเต็ม 40 คะแนน\", \"subtopics\": [{ \"subtopic\": \"\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }] } ]', 'images/exams/netsat/NETSAT_Thai.png', 4, 5),
(2, 'NETSAT ภาษาอังกฤษ', 100, 'ความฉลาดรู้ทั่วไปด้านภาษาอังกฤษ', '[ { \"topic\": \"Reading (30 Points)\", \"subtopics\": [{ \"subtopic\": \"Including 3 Parts\", \"explanation\": \"\", \"details\": [{ \"detail\": \"Reading Instructions\" }, { \"detail\": \"Reading Correspondence\" }, { \"detail\": \"Reading for Information and Argument\" } ] }] }, { \"topic\": \"Writing (30 Points)\", \"subtopics\": [{ \"subtopic\": \"Including 2 Part\", \"explanation\": \"\", \"details\": [{ \"detail\": \"Sentence Completion\" }, { \"detail\": \"Error Detection\" } ] }] }, { \"topic\": \"คะแนนเต็ม 60 คะแนน\", \"subtopics\": [{ \"subtopic\": \"\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }] } ]', 'images/exams/netsat/NETSAT_Eng.png', 4, 6),
(3, 'NETSAT คณิตศาสตร์', 100, 'ความฉลาดรู้ทั่วไปด้านคณิตศาสตร์', NULL, 'images/exams/netsat/NETSAT_Math.png', 4, 1),
(4, 'NETSAT วิทยาศาสตร์และเทคโนโลยี', 100, 'ความฉลาดรู้เฉพาะด้านวิทยาศาสตร์และเทคโนโลยี', NULL, 'images/exams/netsat/NETSAT_Sci.png', 4, 2),
(5, 'NETSAT เคมี', 100, 'ความฉลาดรู้เฉพาะด้านเคมี', NULL, 'images/exams/netsat/NETSAT_Chem.png', 4, 2),
(6, 'NETSAT ชีววิทยา', 100, 'ความฉลาดรู้เฉพาะด้านชีววิทยา', NULL, 'images/exams/netsat/NETSAT_Bio.png', 4, 2),
(7, 'NETSAT ฟิสิกส์', 100, 'ความฉลาดรู้เฉพาะด้านฟิสิกส์', NULL, 'images/exams/netsat/NETSAT_Phy.png', 4, 2),
(8, 'TGAT 90 ความถนัดทั่วไป', 120, 'TGAT 90 ความถนัดทั่วไป', NULL, 'images/exams/tgat/TGAT3_Work.png', 1, 10),
(10, 'TGAT1 91 การสื่อสารภาษาอังกฤษ', 100, 'TGAT1 91 การสื่อสารภาษาอังกฤษ', '[{ \"topic\": \"ทักษะการพูด (Speaking Skill) (50 คะแนน) (30 ข้อ)\", \"subtopics\": [{ \"subtopic\": \"การถาม–ตอบ (Question-Response)\", \"explanation\": \"\", \"details\": [{ \"detail\": \"จำนวนข้อคำถาม (10 ข้อ)\" }, { \"detail\": \"ระดับข้อสอบ (ง่าย 2 ข้อ / กลาง 6 ข้อ / ยาก 2 ข้อ)\" } ] }, { \"subtopic\": \"เติมบทสนทนาแบบสั้น (Short conversations) จำนวน 3 บทสนทนา\", \"explanation\": \"\", \"details\": [{ \"detail\": \"จำนวนข้อคำถาม (3 – 4  ข้อ/บทสนทนา รวม 10 ข้อ)\" }, { \"detail\": \"ระดับข้อสอบ (ง่าย 2 ข้อ / กลาง 6 ข้อ / ยาก 2 ข้อ)\" } ] }, { \"subtopic\": \"เติมบทสนทนาแบบยาว (Long conversations) จำนวน 2 บทสนทนา\", \"explanation\": \"\", \"details\": [{ \"detail\": \"จำนวนข้อคำถาม (5 ข้อ/บทสนทนา รวม 10 ข้อ)\" }, { \"detail\": \"ระดับข้อสอบ (ง่าย 2 ข้อ / กลาง 6 ข้อ / ยาก 2 ข้อ)\" } ] }] }, { \"topic\": \"ทักษะการอ่าน (Reading Skill) (50 คะแนน) (30 ข้อ)\", \"subtopics\": [{ \"subtopic\": \"เติมข้อความในเนื้อเรื่องให้สมบูรณ์ (Text completion) จำนวน 2 บทความ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"จำนวนข้อคำถาม (7-8 ข้อ/บทความ รวม 15 ข้อ)\" }, { \"detail\": \"ระดับข้อสอบ (ง่าย 3 ข้อ / กลาง 9 ข้อ / ยาก 3 ข้อ)\" } ] }, { \"subtopic\": \"อ่านเพื่อจับใจความ (Reading  comprehension) จำนวน 3 บทความ \", \"explanation\": \"หมายเหตุ : บทความทั่วไปที่ใช้ในการสื่อสาร มีจำนวนคำประมาณ 100– 200 คำ \", \"details\": [{ \"detail\": \"จำนวนข้อคำถาม (5 ข้อ/บทความ รวม 15 ข้อ)\" }, { \"detail\": \"ระดับข้อสอบ (ง่าย 3 ข้อ / กลาง 9 ข้อ / ยาก 3 ข้อ)\" } ] }, { \"subtopic\": \"เติมบทสนทนาแบบยาว (Long conversations) จำนวน 2 บทสนทนา\", \"explanation\": \"\", \"details\": [{ \"detail\": \"จำนวนข้อคำถาม (5 ข้อ/บทสนทนา รวม 10 ข้อ)\" }, { \"detail\": \"ระดับข้อสอบ (ง่าย 2 ข้อ / กลาง 6 ข้อ / ยาก 2 ข้อ)\" } ] }] }, { \"topic\": \"ระดับความยากง่ายของข้อสอบทั้งฉบับ\", \"subtopics\": [{ \"subtopic\": \"ระดับง่าย 20% (12 ข้อ)\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }, { \"subtopic\": \"ระดับปานกลาง 60% (36 ข้อ)\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }, { \"subtopic\": \"ระดับยาก 20% (12 ข้อ)\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] } ] }, { \"topic\": \"ประเภทข้อสอบ ปรนัย (4 ตัวเลือก)\", \"subtopics\": [{ \"subtopic\": \"\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }] }, { \"topic\": \"ระยะเวลาที่ใช้สอบ 60 นาที\", \"subtopics\": [{ \"subtopic\": \"\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }] }, { \"topic\": \"จำนวนข้อ\", \"subtopics\": [{ \"subtopic\": \"ทักษะการพูด (Speaking Skill) 30 ข้อ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }, { \"subtopic\": \"ทักษะการอ่าน (Reading Skill) 30 ข้อ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }, { \"subtopic\": \"รวม 60 ข้อ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] } ] }, { \"topic\": \"คะแนนเต็ม 100 คะแนน\", \"subtopics\": [{ \"subtopic\": \"\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }] } ]', 'images/exams/tgat/TGAT1_Eng.png', 1, 6),
(11, 'TGAT2 92 การคิดอย่างมีเหตุผล', 100, 'TGAT2 92 การคิดอย่างมีเหตุผล', '[{ \"topic\": \"สมรรถนะการคิดอย่างมีเหตุผล (Critical & Logical Thinking) (80ข้อ)\", \"subtopics\": [{ \"subtopic\": \"ความสามารถทางภาษา\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"ความสามารถทางตัวเลข\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"ความสามารถทางมิติสัมพันธ์\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"ความสามารถทางเหตุผล\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] } ] }, { \"topic\": \"ประเภทข้อสอบ ปรนัย (5 ตัวเลือก)\", \"subtopics\": [{ \"subtopic\": \"\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }] }, { \"topic\": \"ระยะเวลาที่ใช้สอบ 60 นาที\", \"subtopics\": [{ \"subtopic\": \"\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }] }, { \"topic\": \"จำนวนข้อ\", \"subtopics\": [{ \"subtopic\": \"ความสามารถทางภาษา 20 ข้อ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }, { \"subtopic\": \"ความสามารถทางตัวเลข 20 ข้อ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }, { \"subtopic\": \"ความสามารถทางมิติสัมพันธ์ 20 ข้อ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }, { \"subtopic\": \"ความสามารถทางเหตุผล 20 ข้อ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }, { \"subtopic\": \"รวม 80 ข้อ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] } ] }, { \"topic\": \"คะแนนเต็ม 100 คะแนน\", \"subtopics\": [{ \"subtopic\": \"\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }] } ]', 'images/exams/tgat/TGAT2_Logic.png', 1, 10),
(12, 'TGAT3 93 สมรรถนะการทำงาน', 100, 'TGAT3 93 สมรรถนะการทำงาน', '[{ \"topic\": \"การสร้างคุณค่าและนวัตกรรม (15 ข้อ)\", \"subtopics\": [{ \"subtopic\": \"การคิดเชิงวิเคราะห์ (Analytical thinking)\", \"explanation\": \"ความเข้าใจในการกำหนดวิธีการรวบรวมประเด็น เหตุการณ์ที่เกิดขึ้น รวมทั้งมีหลักการในการสรุปผลการวิเคราะห์และแยกแยะข้อมูลที่ได้รับออกเป็นปัจจัยย่อย ๆ เช่น สาเหตุ ผลลัพธ์ ผลกระทบ ข้อเสนอแนะ และผู้ที่เกี่ยวข้อง เป็นต้น\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"การแก้ไขปัญหาอย่างมืออาชีพ (Professional problem solving)\", \"explanation\": \"ความสามารถในการวิเคราะห์ปัญหาหรือเล็งปัญหา พร้อมทั้งลงมือจัดการกับปัญหานั้น ๆ อย่างมี ข้อมูล มีหลักการ และสามารถนำความเชี่ยวชาญ หรือแนวคิดในสายวิชาชีพมาประยุกต์ใช้ในการ แก้ไขปัญหาได้อย่างมีประสิทธิภาพ\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"ความสามารถทางมิติสัมพันธ์ความคิดเชิงนวัตกรรม (Innovative thinking)\", \"explanation\": \"การนำเสนอความคิดสร้างสรรค์ทางเลือก สินค้าและบริการรูปแบบใหม่ พร้อมทั้งการปรับเปลี่ยน กลยุทธ์ นโยบาย และรูปแบบการดำเนินงานให้เหมาะสมกับสภาพแวดล้อม รวมถึงการพูดจูงใจผู้อื่น นำเสนอความคิดและรูปแบบของสินค้า บริการ และวิธีการดำเนินงานรูปแบบใหม่\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }] }, { \"topic\": \"การแก้ไขปัญหาที่ซับซ้อน (15 ข้อ)\", \"subtopics\": [{ \"subtopic\": \"การระบุปัญหา (Identifying problems)\", \"explanation\": \"ประกอบด้วย ทำความเข้าใจบริบทแวดล้อม การระบุและทำความเข้าใจปัญหา การมีส่วนร่วมของผู้ที่เกี่ยวข้องในการระบุปัญหา\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"การแสวงหาทางออก (Generating and selecting solutions)\", \"explanation\": \"ประกอบด้วย การสร้างและหาทางเลือก และการประเมินทางเลือกที่เหมาะสม\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"การนำทางออกไปแก้ปัญหา (Implementation)\", \"explanation\": \"ประกอบด้วย การปฏิบัติตามแผน และการปรับเปลี่ยนตามความเหมาะสม\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"การประเมินทางออกเพื่อการพัฒนาปรับปรุง (Evaluation)\", \"explanation\": \"ประกอบด้วย เก็บข้อมูลจากการนำทางออกไปลองใช้ และสรุปผลจากการนำทางออกไปลองใช้\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }] }, { \"topic\": \"การบริหารจัดการอารมณ์ (15 ข้อ)\", \"subtopics\": [{ \"subtopic\": \"ความตระหนักรู้ตนเอง (Self awareness)\", \"explanation\": \"การรับรู้ ควบคุมสภาพอารมณ์ และทัศนคติ เพื่อรักษาอารมณ์ และประสิทธิภาพของตนเอง แม้ในสถานการณ์ที่ตึงเครียดหรือมีภาระสูง มีความตระหนักถึงจุดแข็งของตนเอง รวมถึงจุดที่ต้องพัฒนา โดยมีความมุ่งมั่นที่จะพัฒนาอย่างต่อเนื่อง\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"การควบคุมอารมณ์และบุคลิกภาพ (Personality and emotional control)\", \"explanation\": \"ความสามารถในการแสดงออก ทางสีหน้า ท่าทาง และอารมณ์ได้อย่างเหมาะสม เมื่อต้องเผชิญกับบุคคล ลักษณะงาน และสถานการณ์ที่ตึงเครียด รวมถึงการให้คำปรึกษา แนะนำและสอนผู้อื่น ให้ควบคุมอารมณ์และบุคคลิภาพได้อย่างเหมาะสม\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"ความเข้าใจผู้อื่น (Interpersonal understanding)\", \"explanation\": \"ความเข้าใจความต้องการ ความกังวล และความรู้สึกของผู้อื่น ทั้งสิ่งที่แสดงออกและไม่แสดงออก และความสามารถในการตอบสนอง และให้ความช่วยเหลือได้อย่างเหมาะสม และเท่าเทียมกัน\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }] }, { \"topic\": \"การเป็นพลเมืองที่มีส่วนร่วมของสังคม (15 ข้อ)\", \"subtopics\": [{ \"subtopic\": \"การมุ่งเน้นการบริการสังคม (Service orientation)\", \"explanation\": \"การคิด และทำสิ่งต่าง ๆ โดยมีความต้องการของสังคมและผู้มีส่วนได้ส่วนเสียอยู่ในใจเสมอ โดยมุ่งเน้นการศึกษา และทำความเข้าใจความต้องการต่าง ๆ แสดงถึงความมุ่งมั่นต้องการช่วยเหลือผู้อื่นอย่างแท้จริง พร้อมพัฒนาและ รักษาความสัมพันธ์ที่ดีอย่างยั่งยืน\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"จิตสำนึกและรับผิดชอบต่อสิ่งแวดล้อม (Environmental responsibility)\", \"explanation\": \"การมีจิตสำนึก ตระหนักให้ความสำคัญ มีความรับผิดชอบต่อสังคมและสิ่งแวดล้อม รวมทั้งมีความมุ่งมั่นและทุ่มเทที่จะอนุรักษ์ และรักษาสิ่งแวดล้อม สังคม และชุมชนให้น่าอยู่ ตลอดจนเข้าไปมีส่วนร่วมในการปฏิบัติงาน หรือร่วมกิจกรรมต่าง ๆ ที่เกี่ยวข้องกับสังคม และสิ่งแวดล้อมขององค์กรอย่างเต็มที่ เพื่อเกิดประโยชน์ต่อชุมชน สังคม และสิ่งแวดล้อมโดยรวม\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }, { \"subtopic\": \"การสร้างสรรค์เพื่อประโยชน์ของท้องถิ่น (Creating local benefits)\", \"explanation\": \"ความสามารถในการคิดค้น ออกแบบ และสร้างสรรค์สิ่งใหม่ ๆ ที่แปลกและแตกต่างไปจากเดิม โดยการมุ่งเน้นพัฒนาและสร้างสรรค์สิ่งใหม่ ๆ ที่เป็นประโยชน์ในระยะยาว และยั่งยืนให้แก่ประชาชน พื้นที่ หรือท้องถิ่นที่รับผิดชอบอย่างเป็นรูปธรรม\", \"details\": [{ \"detail\": \"\" }, { \"detail\": \"\" } ] }] }, { \"topic\": \"ประเภทข้อสอบ ปรนัย (4 ตัวเลือก)\", \"subtopics\": [{ \"subtopic\": \"\", \"explanation\": \"เพื่อวัดทัศนคติ 4 ระดับ ทุกคำตอบจะมีคะแนนอยู่ในช่วงระหว่าง 0-1 คะแนน การตอบคำถาม มี 2 แบบ คือ\", \"details\": [{ \"detail\": \"เลือกตอบตัวเลือกเดียว\" }, { \"detail\": \"เลือกตอบหลายตัวเลือก\" }] }] }, { \"topic\": \"ระยะเวลาที่ใช้สอบ 60 นาที\", \"subtopics\": [{ \"subtopic\": \"\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }] }, { \"topic\": \"จำนวนข้อ\", \"subtopics\": [{ \"subtopic\": \"การสร้างคุณค่าและนวัตกรรม 15 ข้อ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }, { \"subtopic\": \"การแก้ไขปัญหาที่ซับซ้อน 15 ข้อ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }, { \"subtopic\": \"การบริหารจัดการอารมณ์ 15 ข้อ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }, { \"subtopic\": \"การเป็นพลเมืองที่มีส่วนร่วมของสังคม 15 ข้อ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }, { \"subtopic\": \"รวม 60 ข้อ\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] } ] }, { \"topic\": \"คะแนนเต็ม 100 คะแนน\", \"subtopics\": [{ \"subtopic\": \"\", \"explanation\": \"\", \"details\": [{ \"detail\": \"\" }] }] } ]', 'images/exams/tgat/TGAT3_Work.png', 1, 10),
(13, 'TPAT11 เชาว์ปัญญา', 100, 'TPAT11 เชาว์ปัญญา', NULL, 'images/exams/tpat/TPAT1_11.png', 2, 10),
(14, 'TPAT12 จริยธรรมทางการแพทย์', 100, 'TPAT12 จริยธรรมทางการแพทย์', NULL, 'images/exams/tpat/TPAT1_12.png', 2, 10),
(15, 'TPAT13 ทักษะการเชื่อมโยง', 100, 'TPAT13 ทักษะการเชื่อมโยง', NULL, 'images/exams/tpat/TPAT1_13.png', 2, 10),
(16, 'TPAT2 ความถนัดศิลปกรรมศาสตร์', 100, 'TPAT2 ความถนัดศิลปกรรมศาสตร์', NULL, 'images/exams/tpat/TPAT2_Art.png', 2, 8),
(17, 'TPAT3 ความถนัดวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์', 100, 'TPAT3 ความถนัดวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์', NULL, 'images/exams/tpat/TPAT3_En.png', 2, 2),
(18, 'TPAT4 ความถนัดสถาปัตยกรรมศาสตร์', 100, 'TPAT4 ความถนัดสถาปัตยกรรมศาสตร์', NULL, 'images/exams/tpat/TPAT4_Arc.png', 2, 8),
(19, 'TPAT5 ความถนัดครุศาสตร์-ศึกษาศาสตร์', 100, 'TPAT5 ความถนัดครุศาสตร์-ศึกษาศาสตร์', NULL, 'images/exams/tpat/TPAT5_Teacher.png', 2, 10),
(20, 'A-LEVEL 66 Bio ชีวิทยา', 100, 'A-LEVEL 66 Bio ชีวิทยา', NULL, 'images/exams/a-level/A-Level_Bio.png', 3, 2),
(21, 'A-LEVEL 64 Phy ฟิสิกส์', 100, 'A-LEVEL 64 Phy ฟิสิกส์', NULL, 'images/exams/a-level/A-Level_Phy.png', 3, 2),
(22, 'A-LEVEL 81 Thai ภาษาไทย', 100, 'A-LEVEL 81 Thai ภาษาไทย', NULL, 'images/exams/a-level/A-Level_Thai.png', 3, 5),
(23, 'A-LEVEL 70 Soc สังคมศึกษา', 100, 'A-LEVEL 70 Soc สังคมศึกษา', NULL, 'images/exams/a-level/A-Level_Soc.png', 3, 9),
(24, 'A-LEVEL 61 Math1 คณิตศาสตร์ประยุกต์ 1 (พื้นฐาน+เพิ่มเติม)', 100, 'A-LEVEL 61 Math1 คณิตศาสตร์ประยุกต์ 1 (พื้นฐาน+เพิ่มเติม)', NULL, 'images/exams/a-level/A-Level_Math1.png', 3, 1),
(25, 'A-LEVEL 82 Eng ภาษาอังกฤษ', 100, 'A-LEVEL 82 Eng ภาษาอังกฤษ', NULL, 'images/exams/a-level/A-Level_Eng.png', 3, 6),
(26, 'A-LEVEL 65 Chem เคมี', 100, 'A-LEVEL 65 Chem เคมี', NULL, 'images/exams/a-level/A-Level_Chem.png', 3, 2),
(27, 'A-LEVEL 62 Math2 คณิตศาสตร์ประยุกต์ 2 (พื้นฐาน)', 100, 'A-LEVEL 62 Math2 คณิตศาสตร์ประยุกต์ 2 (พื้นฐาน)', NULL, 'images/exams/a-level/A-Level_Math2.png', 3, 1),
(28, 'A-LEVEL 63 Sci วิทยาศาสตร์ประยุกต์', 100, 'A-LEVEL 63 Sci วิทยาศาสตร์ประยุกต์', NULL, 'images/exams/a-level/A-Level_Sci.png', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_exam`
--

CREATE TABLE `product_exam` (
  `product_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_exam`
--

INSERT INTO `product_exam` (`product_id`, `exam_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(10, 2),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1);

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
(7, 'images/profile/profile7.png'),
(8, 'images/profile/profile8.png');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `promotion_id` int(11) NOT NULL,
  `promotion_name` varchar(255) NOT NULL,
  `promotion_min` int(11) NOT NULL,
  `promotion_discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`promotion_id`, `promotion_name`, `promotion_min`, `promotion_discount`) VALUES
(1, 'ซื้อครบ 3 รายการ', 3, 3),
(2, 'ซื้อครบ 5 รายการ', 5, 10),
(3, 'ซื้อครบ 10 รายการ', 10, 15);

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
(2, '11', 'สมุทรปราการ', 'Samut Prakan', 2, 60),
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
(10, '');

-- --------------------------------------------------------

--
-- Table structure for table `termandcondition`
--

CREATE TABLE `termandcondition` (
  `term_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `termandcondition`
--

INSERT INTO `termandcondition` (`term_id`, `title`, `content`) VALUES
(1, 'ข้อตกลงและเงื่อนไข', '[ { \"topic\": \"\", \"subtopics\": [{ \"subtopic\": \"การเป็นสมาชิก\", \"explanation\": \"ผู้ใช้ที่ไม่ได้เป็นสมาชิกหรือยังไม่ได้เข้าสู่ระบบจะสามารถเข้าถึงเนื้อหาได้เพียงบางส่วน ผู้ใช้บริการจำเป็นต้องสมัครสมาชิกและเข้าสู่ระบบเพื่อเข้าถึงเนื้อหาภายในเว็บไซต์ได้มากขึ้น รวมถึงการซื้อสินค้าและบริการจากเรา\", \"details\": [{ \"detail\": \"\" } ] }, { \"subtopic\": \"ทรัพย์สินทางปัญญา\", \"explanation\": \"J Knowledge Tutor ขอแจ้งให้ผู้ใช้บริการทราบว่าเนื้อหาทั้งหมดที่ปรากฏบนเว็บไซต์ ห้ามมิให้บุคคลใดลอกเลียน ปลอมแปลง ทำซ้ำ ดัดแปลง เผยแพร่ต่อสาธารณชน จำหน่าย หรือการกระทำใดๆ ในลักษณะที่เป็นการแสวงหาประโยนช์ ทางการค้าหรือประโยชน์โดยมิชอบ\", \"details\": [{ \"detail\": \"\" } ] } ] } ]');

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
(1, '[{ \"description_line_i\": \"choose the best answer from the given choices\", \"id\": 1, \"question\": \"That\\\"s a very nice dress you\\\"re wearing. - ............\", \"choice\": [{ \"choicevalue\": \"a\", \"choicetext\": \"(k)I\\\"m glad you like it\" }, { \"choicevalue\": \"b\", \"choicetext\": \"That\\\"s all right\" }, { \"choicevalue\": \"c\", \"choicetext\": \"That\\\" nice\" }, { \"choicevalue\": \"d\", \"choicetext\": \"You\\\"re quite right\" }, { \"choicevalue\": \"e\", \"choicetext\": \"Quite right\" } ], \"Answer\": \"a\", \"Category\": \"Conversation\" }, { \"id\": 2, \"question\": \"............to stay the night? – Oh, that\\\"s very kind of you.\", \"choice\": [{ \"choicevalue\": \"a\", \"choicetext\": \"Do you feel like\" }, { \"choicevalue\": \"b\", \"choicetext\": \"(k)Would you like\" }, { \"choicevalue\": \"c\", \"choicetext\": \"Why don\\\"t you\" }, { \"choicevalue\": \"d\", \"choicetext\": \"Do you enjoy\" }, { \"choicevalue\": \"e\", \"choicetext\": \"Would do you like\" } ], \"Answer\": \"b\", \"Category\": \"Conversation\" }]', '[     { \"Title\": \"NETSAT ด้านภาษาอังกฤษ\",         \"Description_line_i\": \"ความฉลาดรู้ทั่วไป 102 ด้านภาษาอังกฤษ\",         \"Description_line_ii\": \"Reading :Including 3 Part 1.Reading Instructions 2.Reading Correspondence 3.Reading for Information and Argument\",         \"Description_line_iii\": \"Writing :Including 2 Part 1.Sentence Completion 2.Error Detection\",         \"Description_line_iv\": \"\",         \"Description_line_v\": \"\",         \"NumberofQuestions\": 11,         \"Duration\": 60,         \"Linkedquestionid\": [0, 1, 2, 3, 4, 5],         \"Category\": { \"SentenceCompletion\": 6, \"ErrorDetection\": 8, \"ReadingInstruction\": 3, \"ReadingCorrespondence\": 3, \"ReadingforinformationandArgument\": 4 }     } ]');

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
  `dream1` int(11) DEFAULT NULL,
  `dream2` int(11) DEFAULT NULL,
  `major1` int(11) DEFAULT NULL,
  `major2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_meta`
--

INSERT INTO `users_meta` (`user_meta_id`, `user_id`, `grade`, `school`, `province`, `expectation`, `parentJob`, `cart`, `termCondition`, `itemSelected`, `dream1`, `dream2`, `major1`, `major2`) VALUES
(8, 73, 'มัธยมศึกษาปีที่ 6', 'สกลราช', 'สกลนคร', 'สอบเข้ามหาวิทยาลัย', '', '[{\"product_id\":11,\"name\":\"TGAT2 92 การคิดอย่างมีเหตุผล\",\"amount\":100,\"detail\":\"TGAT2 92 การคิดอย่างมีเหตุผล\",\"blueprint\":\"[{ \\\"topic\\\": \\\"สมรรถนะการคิดอย่างมีเหตุผล (Critical & Logical Thinking) (80ข้อ)\\\", \\\"subtopics\\\": [{ \\\"subtopic\\\": \\\"ความสามารถทางภาษา\\\", \\\"explanation\\\": \\\"\\\", \\\"details\\\": [{ \\\"detail\\\": \\\"\\\" }, { \\\"detail\\\": \\\"\\\" } ] }, { \\\"subtopic\\\": \\\"ความสามารถทางตัวเลข\\\", \\\"explanation\\\": \\\"\\\", \\\"details\\\": [{ \\\"detail\\\": \\\"\\\" }, { \\\"detail\\\": \\\"\\\" } ] }, { \\\"subtopic\\\": \\\"ความสามารถทางมิติสัมพันธ์\\\", \\\"explanation\\\": \\\"\\\", \\\"details\\\": [{ \\\"detail\\\": \\\"\\\" }, { \\\"detail\\\": \\\"\\\" } ] }, { \\\"subtopic\\\": \\\"ความสามารถทางเหตุผล\\\", \\\"explanation\\\": \\\"\\\", \\\"details\\\": [{ \\\"detail\\\": \\\"\\\" }, { \\\"detail\\\": \\\"\\\" } ] } ] }, { \\\"topic\\\": \\\"ประเภทข้อสอบ ปรนัย (5 ตัวเลือก)\\\", \\\"subtopics\\\": [{ \\\"subtopic\\\": \\\"\\\", \\\"explanation\\\": \\\"\\\", \\\"details\\\": [{ \\\"detail\\\": \\\"\\\" }] }] }, { \\\"topic\\\": \\\"ระยะเวลาที่ใช้สอบ 60 นาที\\\", \\\"subtopics\\\": [{ \\\"subtopic\\\": \\\"\\\", \\\"explanation\\\": \\\"\\\", \\\"details\\\": [{ \\\"detail\\\": \\\"\\\" }] }] }, { \\\"topic\\\": \\\"จำนวนข้อ\\\", \\\"subtopics\\\": [{ \\\"subtopic\\\": \\\"ความสามารถทางภาษา 20 ข้อ\\\", \\\"explanation\\\": \\\"\\\", \\\"details\\\": [{ \\\"detail\\\": \\\"\\\" }] }, { \\\"subtopic\\\": \\\"ความสามารถทางตัวเลข 20 ข้อ\\\", \\\"explanation\\\": \\\"\\\", \\\"details\\\": [{ \\\"detail\\\": \\\"\\\" }] }, { \\\"subtopic\\\": \\\"ความสามารถทางมิติสัมพันธ์ 20 ข้อ\\\", \\\"explanation\\\": \\\"\\\", \\\"details\\\": [{ \\\"detail\\\": \\\"\\\" }] }, { \\\"subtopic\\\": \\\"ความสามารถทางเหตุผล 20 ข้อ\\\", \\\"explanation\\\": \\\"\\\", \\\"details\\\": [{ \\\"detail\\\": \\\"\\\" }] }, { \\\"subtopic\\\": \\\"รวม 80 ข้อ\\\", \\\"explanation\\\": \\\"\\\", \\\"details\\\": [{ \\\"detail\\\": \\\"\\\" }] } ] }, { \\\"topic\\\": \\\"คะแนนเต็ม 100 คะแนน\\\", \\\"subtopics\\\": [{ \\\"subtopic\\\": \\\"\\\", \\\"explanation\\\": \\\"\\\", \\\"details\\\": [{ \\\"detail\\\": \\\"\\\" }] }] } ]\",\"pic\":\"images/exams/tgat/TGAT2_Logic.png\",\"subject_name\":\"\",\"category_name\":\"TGAT\"}]', 'ยอมรับ', '[]', 1, 2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_product_exam`
--

CREATE TABLE `user_product_exam` (
  `user_exams_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_product_exam`
--

INSERT INTO `user_product_exam` (`user_exams_id`, `user_id`, `product_id`) VALUES
(69, 73, 10),
(70, 73, 1),
(71, 73, 3);

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
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`exam_id`),
  ADD KEY `exam exam_operation` (`exam_operation`);

--
-- Indexes for table `exams_meta`
--
ALTER TABLE `exams_meta`
  ADD PRIMARY KEY (`exam_meta_id`),
  ADD KEY `exm user_id` (`user_id`),
  ADD KEY `exm exam_id` (`exam_id`);

--
-- Indexes for table `exam_operation`
--
ALTER TABLE `exam_operation`
  ADD PRIMARY KEY (`exam_operation`);

--
-- Indexes for table `expectation`
--
ALTER TABLE `expectation`
  ADD PRIMARY KEY (`expectation_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`major_id`),
  ADD KEY `faculty_id` (`faculty_id`);

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
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `product_exam`
--
ALTER TABLE `product_exam`
  ADD PRIMARY KEY (`product_id`,`exam_id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `profile_picture`
--
ALTER TABLE `profile_picture`
  ADD PRIMARY KEY (`profile_picture_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`promotion_id`);

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
-- Indexes for table `termandcondition`
--
ALTER TABLE `termandcondition`
  ADD PRIMARY KEY (`term_id`);

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
  ADD KEY `user_id` (`user_id`),
  ADD KEY `dream1` (`dream1`),
  ADD KEY `dream2` (`dream2`),
  ADD KEY `major1` (`major1`),
  ADD KEY `major2` (`major2`);

--
-- Indexes for table `user_product_exam`
--
ALTER TABLE `user_product_exam`
  ADD PRIMARY KEY (`user_exams_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

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
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exams_meta`
--
ALTER TABLE `exams_meta`
  MODIFY `exam_meta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `exam_operation`
--
ALTER TABLE `exam_operation`
  MODIFY `exam_operation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expectation`
--
ALTER TABLE `expectation`
  MODIFY `expectation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `major_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `profile_picture`
--
ALTER TABLE `profile_picture`
  MODIFY `profile_picture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `promotion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `termandcondition`
--
ALTER TABLE `termandcondition`
  MODIFY `term_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users_meta`
--
ALTER TABLE `users_meta`
  MODIFY `user_meta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_product_exam`
--
ALTER TABLE `user_product_exam`
  MODIFY `user_exams_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exam exam_operation` FOREIGN KEY (`exam_operation`) REFERENCES `exam_operation` (`exam_operation`);

--
-- Constraints for table `exams_meta`
--
ALTER TABLE `exams_meta`
  ADD CONSTRAINT `exm exam_id` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`),
  ADD CONSTRAINT `exm user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `major`
--
ALTER TABLE `major`
  ADD CONSTRAINT `faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`);

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
-- Constraints for table `product_exam`
--
ALTER TABLE `product_exam`
  ADD CONSTRAINT `product_exam_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `product_exam_ibfk_2` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`role_id`);

--
-- Constraints for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD CONSTRAINT `dream1` FOREIGN KEY (`dream1`) REFERENCES `faculty` (`faculty_id`),
  ADD CONSTRAINT `dream2` FOREIGN KEY (`dream2`) REFERENCES `faculty` (`faculty_id`),
  ADD CONSTRAINT `major1` FOREIGN KEY (`major1`) REFERENCES `major` (`major_id`),
  ADD CONSTRAINT `major2` FOREIGN KEY (`major2`) REFERENCES `major` (`major_id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `user_product_exam`
--
ALTER TABLE `user_product_exam`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `user_product_exam_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
