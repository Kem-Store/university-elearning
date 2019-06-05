-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2019 at 07:12 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-learning`
--
CREATE DATABASE IF NOT EXISTS `e-learning` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `e-learning`;

-- --------------------------------------------------------

--
-- Table structure for table `bmonth`
--

DROP TABLE IF EXISTS `bmonth`;
CREATE TABLE IF NOT EXISTS `bmonth` (
  `month_id` int(2) NOT NULL,
  `month_th` varchar(35) NOT NULL,
  `month_en` varchar(30) NOT NULL,
  `month_th_iso` varchar(15) NOT NULL,
  `month_en_iso` varchar(15) NOT NULL,
  PRIMARY KEY (`month_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bmonth`
--

INSERT INTO `bmonth` VALUES
(1, 'มกราคม', 'January', 'ม.ค.', 'JAN'),
(2, 'กุมภาพันธุ์', 'Febuary', 'ก.พ.', 'FEB'),
(3, 'มีนาคม', 'March', 'มี.ค.', 'MAR'),
(4, 'เมษายน', 'April', 'ม.ย.', 'APR'),
(5, 'พฤศภาคม', 'May', 'พ.ค.', 'MAY'),
(6, 'มิถุนายน', 'June', 'มิ.ย.', 'JUN'),
(7, 'กรกฎาคม', 'July', 'ก.ค.', 'JUL'),
(8, 'สิงหาคม', 'August', 'ส.ค.', 'AUG'),
(9, 'กันยายน', 'September', 'ก.ย.', 'SEP'),
(10, 'ตุลาคม', 'October', 'ต.ค.', 'OCT'),
(11, 'พฤศจิกายน', 'November', 'พ.ย.', 'NOV'),
(12, 'ธันวาคม', 'December', 'ธ.ค.', 'DEC');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `exam_id` int(9) NOT NULL AUTO_INCREMENT,
  `unit_id` int(20) NOT NULL,
  `start_date` int(11) NOT NULL,
  `finish_date` int(11) NOT NULL,
  `show_ans` int(1) NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'E' COMMENT 'ประเภทข้อสอบ',
  PRIMARY KEY (`exam_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` VALUES
(1, 1, 1321550340, 1321550400, 1, 'E'),
(3, 2, 1342898520, 1342903320, 1, 'T'),
(4, 1, 1313137800, 1313139600, 1, 'T');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answer`
--

DROP TABLE IF EXISTS `exam_answer`;
CREATE TABLE IF NOT EXISTS `exam_answer` (
  `answer_id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(9) NOT NULL,
  `ans_text` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`answer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_answer`
--

INSERT INTO `exam_answer` VALUES
(1, 1, 'คอยเราด้วย'),
(2, 1, 'คอยแต่หึง'),
(3, 1, 'คอยย้วย'),
(4, 1, 'คอยจะแทงแต่หวย'),
(5, 2, 'ตึกปลาแหมด'),
(6, 2, 'ตึกแสด'),
(7, 2, 'ตึกกลางแดด'),
(8, 2, 'ตึกระแท้ด'),
(9, 3, 'การบานของดอกในตอนเช้า และการหุบของดอกในตอนเย็น'),
(10, 3, 'การแพร่กระจายของเมล็ดโดยอาศัยลม'),
(11, 3, 'การตายของพืชเมื่อได้รับอุณหภูมิต่ำมาก ๆ'),
(12, 3, 'การงอกของเมล็ดหลังจากนำไปแช่น้ำ'),
(13, 4, 'แม่เก็บผักได้ 10 กำ'),
(14, 4, 'วันนี้มีนักเรียนมาเรียน 23 คน'),
(15, 4, 'ดวงจันทร์'),
(16, 4, 'สวนสัตว์แห่งหนึ่งมีเสือ 8 ตัว'),
(17, 5, 'กรอกข้อมูลลงตาราง'),
(18, 5, 'เขียนแผนภูมิรูปภาพ'),
(19, 5, 'เขียนแผนภูมิแท่ง'),
(20, 5, 'จำแนกและจัดประเภทข้อมูล'),
(21, 6, '2  ตัว'),
(22, 6, '3  ตัว'),
(23, 6, '4  ตัว'),
(24, 6, '5  ตัว'),
(25, 7, '8 คน'),
(26, 7, '12 คน'),
(27, 7, '16 คน'),
(28, 7, '18 คน'),
(29, 8, '5 กิโลกรัม'),
(30, 8, '10 กิโลกรัม'),
(31, 8, '15 กิโลกรัม'),
(32, 8, '20 กิโลกรัม'),
(33, 9, '151 คน'),
(34, 9, '153 คน'),
(35, 9, '155 คน'),
(36, 9, '157 คน'),
(37, 10, '279 คน'),
(38, 10, '281 คน'),
(39, 10, '283 คน'),
(40, 10, '285 คน'),
(41, 11, 'ไก่จ๋า'),
(42, 11, 'ไก่ทอด'),
(43, 11, 'ไก่เน่า'),
(44, 11, 'น้องไก่'),
(45, 12, 'ผัวมีเมียอยู่แล้วแล้วมีเพิ่ม'),
(46, 12, 'ผัวมีเมียตัวเล็ก'),
(47, 12, 'ผัวมีเมียคนเดียว'),
(48, 12, 'ไม่มีข้อถูก'),
(49, 13, 'ไข่น้อย'),
(50, 13, 'ไก่'),
(51, 13, 'เป็ด'),
(52, 13, 'อสุจิ'),
(53, 14, 'ปาหัวเมีย'),
(54, 14, 'สวมหัว'),
(55, 14, 'ฟังเพลง'),
(56, 14, 'เหน็บเอว'),
(57, 15, 'ไข่ปลา'),
(58, 15, 'กลายพันธุ์จากเหี้ย'),
(59, 15, 'ออกจากดอทเอ'),
(60, 15, 'ดาวอังคาร'),
(61, 16, 'นั่งดู'),
(62, 16, 'โหลดหนัง18+'),
(63, 16, 'โหลดหนัง20+'),
(64, 16, 'ถูกทุกข้อ'),
(65, 17, 'ธรรมะ'),
(66, 17, 'ปรัชญา'),
(67, 17, 'ศิลปะ!!!'),
(68, 17, 'อะไรนะตะเอง'),
(69, 18, 'วันแม่'),
(70, 18, 'วันศุกร์'),
(71, 18, 'วันพรุ่งนี้'),
(72, 18, 'วันนั้น'),
(73, 19, '10'),
(74, 19, '9'),
(75, 19, '8'),
(76, 19, '7'),
(77, 20, 'ศึกษาหาความรู้'),
(78, 20, 'เป็นแหล่งสำหรับจีบสาวจีบหนุ่ม'),
(79, 20, 'แม่บอก'),
(80, 20, 'มีห้องนอนแอร์'),
(88, 22, 'a'),
(87, 22, 'b'),
(81, 21, 'a'),
(82, 21, 'b'),
(83, 21, 'c'),
(84, 21, 'd'),
(85, 22, 'r'),
(86, 22, 'w'),
(89, 23, '1'),
(90, 23, '2'),
(91, 23, '3'),
(92, 23, '4'),
(93, 24, 'd'),
(94, 24, 'a'),
(95, 24, 'b'),
(96, 24, 'x'),
(97, 25, 'yhn'),
(98, 25, 'vbn'),
(99, 25, 'fgki'),
(100, 25, 'bhu'),
(101, 26, 'j'),
(102, 26, 'assd'),
(103, 26, 'dasd'),
(104, 26, 'asda'),
(105, 27, '5'),
(106, 27, '7'),
(107, 27, '9'),
(108, 27, '10'),
(109, 28, 'asddf'),
(110, 28, 'rgdfdfdf'),
(111, 28, 'gserhg'),
(112, 28, 'fsdfdfd'),
(113, 29, 'sdgasdg'),
(114, 29, 'gasdg'),
(115, 29, 'gadgasd'),
(116, 29, 'fgasdf'),
(117, 30, 'dfg'),
(118, 30, 'df'),
(119, 30, 'dfg'),
(120, 30, 'fgsdfg');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question`
--

DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE IF NOT EXISTS `exam_question` (
  `question_id` int(9) NOT NULL AUTO_INCREMENT,
  `exam_id` int(9) NOT NULL,
  `answer_id` int(9) DEFAULT '0',
  `question` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_question`
--

INSERT INTO `exam_question` VALUES
(1, 1, 4, 'การรอคอยแบบใดที่ทรมานที่สุด'),
(2, 1, 6, 'ตึกประเภทใดที่ทรุดโทรมง่ายมากที่สุด'),
(3, 1, 12, 'ข้อใดไม่ใช่การตอบสนองต่อสิ่งเร้าของพืช'),
(4, 1, 15, 'ข้อใดไม่ใช่ข้อมูล'),
(5, 1, 20, 'สิ่งที่ควรทำเป็นอันดับแรกในการนำเสนอข้อมูลคือข้อใด'),
(6, 1, 23, 'ปลา	ไก่	สุนัข	หมู	ห่าน หอย	แมว	เป็ด	หมึก	แกะ กระต่าย	กุ้ง	นก	ม้า	กระรอก จากข้อมูลมีสัตว์ปีกกี่ตัว'),
(7, 1, 27, 'นักเรียนเดินทางมาโรงเรียนโดยรถประจำทางทั้งหมดกี่คน'),
(8, 1, 31, 'ชาวประมงจับปลาได้มากกว่ากุ้งกี่กิโลกรัม'),
(9, 1, 34, 'ถ้าผลการสอบถามนี้มากจากนักเรียน 500 คน  กีฬาที่นักเรียนกลุ่มนี้ชอบมากที่สุดมีกี่คน'),
(10, 1, 38, 'ถ้ามีนักเรียนที่ชอบว่ายน้ำกับเทนนิสมากกว่าฟุตบอล 3 คน  นักเรียนที่ชอบว่ายน้ำมีกี่คน'),
(11, 3, 44, 'ไก่อะไรอะหร่อย'),
(12, 3, 45, 'คำว่าเมียน้อยมาจากไหน'),
(13, 3, 52, 'อะไรอยู่ใน ...วย'),
(14, 3, 54, 'หูฟังไว้ใช้ทำอะไร'),
(15, 3, 57, 'ปลามาจากไหน'),
(16, 3, 64, 'บิททอเร้นไว้ทำอะไร'),
(17, 3, 67, 'ชีวิตสัตว์โลกคืออะไร'),
(18, 3, 69, 'พรุ่งนี้วันอะไร'),
(19, 3, 73, 'คะแนนเต็มสิบให้เท่าไร'),
(20, 3, 80, 'ทำไมเด็กต้องเรียน'),
(21, 4, 81, 'avbnvxbnnb'),
(22, 4, 88, 'asd'),
(23, 4, 89, 'bbb'),
(24, 4, 93, 'zxc'),
(25, 4, 97, 'ujmuyhndf'),
(26, 4, 101, 'sdassdf'),
(27, 4, 105, 'dfhjsadh'),
(28, 4, 109, '123456789'),
(29, 4, 113, 'dfga sdgeatjs asd'),
(30, 4, 117, 'serhyus hasdgaer ');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_detail`
--

DROP TABLE IF EXISTS `lesson_detail`;
CREATE TABLE IF NOT EXISTS `lesson_detail` (
  `sub_id` int(3) NOT NULL AUTO_INCREMENT,
  `sub_name` text COLLATE utf8_unicode_ci NOT NULL,
  `sub_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `unit_id` int(2) NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lesson_detail`
--

INSERT INTO `lesson_detail` VALUES
(1, 'น้ำมันพืชล่องหน', '<p><p>ปัจจุบันการผลิตน้ำมันพืชในประเทศเพื่อใช้ในการบริโภค ใช้ผลผลิตจากปาล์มสดถึงกว่า 70% เนื่องจากประชาชนนิยมบริโภค ขณะที่พืชชนิดอื่น อาทิ ถั่วเหลือง รำข้าว ข้าวโพด และเมล็ดทานตะวัน  ความนิยมในการบริโภคของประชาชนมีน้อยกว่ามาก ผู้ประกอบการที่ผลิตน้ำมันพืชจึงผลิตออกสู่ท้องตลาดในปริมาณที่น้อย ดังนั้นเมื่อเกิดวิกฤติการลดลงของผลผลิตปาล์ม จึงทำให้เกิดการขาดแคลนน้ำมันปาล์มอย่างหนัก<br /><br />นางวัชรี วิมุกตายน อธิบดีกรมการค้าภายใน  กระทรวงพาณิชย์  กล่าวกับทีมข่าว \"ไทยรัฐออนไลน์\" ยืนยันถึงกรณีนำมันปาล์มขาดแคลนอย่างรุนแรงที่เกิดขึ้นในขณะนี้ว่า เป็นเพราะผลผลิตปาล์มสดออกสู่ตลาดน้อยกว่าปกติ โดยเฉพาะ 2 เดือนก่อนหน้านี้  ลดน้อยลงไปกว่าครึ่ง หรือกว่า 50% มาจากสาเหตุ ภัยแล้ง น้ำท่วมหนักที่ผ่านมาทำให้ผลผลิตออกสู่ตลาดได้น้อยมาก หากถามกันว่า เหตุใดไม่ใช้น้ำมันที่ทำมาจาก ถั่วเหลือง  รำข้าว เมล็ดทานตะวัน  ทดแทนเพื่อแก้ปัญหาการขาดแคลนน้ำมันที่ทำมาจากปาล์มนั้น</p><p> </p><div class=\"picture \"><img src=\" /media/content/2011/02/22/150803/l20/o3/420/252.jpg\" width=\"420\" height=\"252\" \r\n									alt=\"\" class=\"detail-image\" /><p class=\"caption\"></p></div>\r\n <p><br />วัตถุดิบที่ว่า ในขณะนี้ก็ขาดแคลนเหมือนกัน  แต่สาเหตุแตกต่างออกไป  การขาดแคลนผลปาล์มสด  มาจากมีผลผลิตออกมาน้อยมาก  ไม่เพียงพอกับความต้องการของตลาด แต่กรณีที่ไม่สามารถนำพืชชนิดอื่น อาทิ ถั่วเหลือง รำข้าว เมล็ดทานตะวัน หรือข้าวโพด มาผลิตเป็นน้ำมันพืช ทดแทนผลปาล์มได้นั้น อธิบดีกรมการค้าภายในระบุว่า เป็นเพราะผู้ผลิตน้ำมันพืชรายใหญ่ 4-5 รายของไทย ไม่สามารถผลิตให้เพียงพอกับความต้องการของผู้บริโภคได้ทัน ถึงแม้เร่งผลิตอย่างเต็มที่แล้วก็ตาม</p><p> </p><div class=\"picture \"><img src=\" /media/content/2011/02/22/150803/l20/o4/420/252.jpg\" width=\"420\" height=\"252\" \r\n									alt=\"\" class=\"detail-image\" /><p class=\"caption\"></p></div>\r\n <p><br />ทั้งนี้ สัดส่วนการผลิตน้ำมันพืชที่ไม่ใช่ทำมาจากปาล์มในตลาด  มีปริมาณน้อยกว่า ที่ผลิตจากผลปาล์มสด ปัจจุบัน คนไทยนิยมบริโภคน้ำมันปาล์ม ถึงกว่า 70%    ขณะที่ตามโครงสร้างการผลิตผู้ผลิต   สามารถผลิตน้ำมันพืชที่ทำมาจากพืชชนิดอื่น ได้เพียงไม่กี่เปอร์เซนต์ของปริมาณน้ำมันพืชที่ขายอยู่ในตลาดทั้งหมด  นั่นเพราะพืชอย่างอื่นนอกจากปาล์มเมื่อนำมาทำเป็นน้ำมันพืช จะมีราคาแพงกว่าน้ำมันปาล์ม ถึงแม้ที่ผ่านมาจะมีการเพิ่มกำลังการผลิต น้ำมันพืชชนิดอื่นเข้ามาทดแทนอย่างเต็มที่แล้ว (เพิ่มขึ้นมาถึง 20% ) แต่ก็ยังไม่เพียงพอกับความต้องการอยู่ดี เพราะเมื่อนำมาทดแทนน้ำมันพืชที่ผลิตมาจากผลปาล์มสดแล้ว ทดแทนได้เพียง 5-6% เท่านั้น ขณะที่ตัวเลขที่ขาดแคลนจริงในตลาดน้ำมันพืชสำเร็จรูปสาเหตุมาจากผลผลิตปาล์มหายไปจากตลาดถึง 50%  ซึ่งเทียบกันไม่ได้ มันคนละเรื่องกัน<br /><br />ขณะที่ปัจจุบัน การผลิตนำมันพืชในประเทศเพื่อใช้ในการบริโภคใช้ผลผลิตจากปาล์มสดถึงกว่า 70 % เนื่องจากประชาชนนิยมบริโภค ขณะที่พืชชนิดอื่น อาทิ ถั่วเหลือง รำข้าว ข้าวโพด และเมล็ดทานตะวัน  ความนิยมในการบริโภคของประชาชนมีน้อยกว่ามาก ขณะที่เมื่อก่อนก็ยังมีราคาแพงกว่าปาล์มน้ำมัน ผู้ประกอบการ ที่ผลิตน้ำมันพืชจึงผลิตออกสู่ท้องตลาดใน ปริมาณที่น้อย  ซึ่งเมื่อเกิดวิกฤติการลดลงของผลผลิตปาล์มในประเทศอย่างรวดเร็ว ทำให้เกิดการขาดแคลนอย่างหนัก แม้ผู้ประกอบการจะเร่งผลิตน้ำมันพืชชนิดอื่นเพื่อทดแทนก็ไม่สามารถผลิตได้เพียงพอ ซึ่งก็ทำให้น้ำมันพืชที่ทำมาจากพืชชนิดอื่นก็ขาดแคลนเช่นกัน  ไม่ได้เกิดจากผู้ประกอบการรายใหญ่พยายามกักตุน</p><p> </p><div class=\"picture \"><img src=\" /media/content/2011/02/22/150803/l20/o2/420/360.jpg\" width=\"420\" height=\"360\" \r\n									alt=\"\" class=\"detail-image\" /><p class=\"caption\"></p></div>\r\n <p><br />นางวัชรียังกล่าวอีกว่า  เมื่อก่อน ปาล์มสดยังมีราคาถูกอยู่ ก็ไม่เป็นไร แต่ตอนหลัง ราคาสูงขึ้นมาก ประกอบกับเกิดการขาดแคลนผลผลิตปาล์มนำ้มันเป็นจำนวนมากอย่างรวดเร็ว ซึ่งนางวัชรี ใช้คำว่า \"อย่างผิดปกติ และไม่มีเหตุผล\"  ขึ้นในประเทศ ประกอบกับเกิดภัยแล้ง น้ำท่วมทำให้ผลผลิตหายไป    ปริมาณสินค้าลดลง ขณะที่ความต้องการเพิ่มมากขึ้นอย่างรวดเร็วและยังเป็นจำนวนมาก จากความต้องการบริโภค และใช้ในอุตสาหกรรมน้ำมันไบโอดีเซลในประเทศ  ทั้งยังยอมรับว่า มันมีกระบวนการปั่นราคาแบบขึ้นเป็นรายวัน แต่ไม่ขอระบุว่าใครอยู่เบื้องหลังกินส่วนต่างราคา ทำให้ประชาชนเสียประโยชน์  <br /><br />ประกอบกับเมื่อมีการสั่งให้นำเข้า น้ำมันปาล์มชนิดแยกไข จำนวน 30,000 ตัน ในเบื้องต้น และอนุมัตินำเข้าอีก 120,000 ตัน องค์การคลังสินค้า (อคส.) เร่งนำเข้าอยู่ แต่ติดปัญหาในเรื่องมติที่ประชุมครั้งแรก ที่อนุมัติให้นำเข้าเพียงเพื่อใช้ในการบริโภคเท่านั้น  แต่ครั้งหลังนี้ นำเข้ามาเพื่อใช้ในอุตสาหกรรมภายในประเทศด้วย พราะขาดแคลนอย่าหนัก ทำให้ต้องมีการขอเปลี่ยนแปลงมติ ในที่ประชุมวันอังคาร ที่ 22 ก.พ.  จึงทำให้้เกิดความล่าช้า ก็ต้องขอความเป็นธรรม กับกระทรวงพาณิชย์ด้วย แต่ทั้งหมดก็เป็นปัจจัยทำให้การนำเข้าสะดุด ขณะเดียวกันก็ขอความเป็นธรรมให้กับผู้ประกอบการ หรือผู้ผลิตน้ำมันพืชในตลาดบริโภคด้วย <br /><br />กรณีที่กล่าวหาว่า เมื่อนำมันปาล์มเกิดการขาดแคลน  แต่ทำไมไม่ผลิตน้ำมันพืชชนิดอื่น อาทิ  จากถั่วเหลือง รำข้าว หรือเมล็ดทานตะวัน ออกทดแทน ข้อเท็จจริงที่ปรากฏแม้รัฐบาลจะมีการอนุมัตินำเข้านำมันปาล์มอีก 120,000 ตัน ทาง อคส. ก็เร่งดำเนินการอยู่</p><p> </p><div class=\"picture \"><img src=\" /media/content/2011/02/22/150803/l20/o5/420/252.jpg\" width=\"420\" height=\"252\" \r\n									alt=\"\" class=\"detail-image\" /><p class=\"caption\"></p></div>\r\n <p><br /> \"ความต้องการมันหลากหลาย ขณะที่มติเดิมมันก็ไม่ครอบคลุม เพราะคณะกรรมการนโยบายปาล์มน้ำมัน ตอนแรกให้นำเข้ามาเพื่อใช้ในการบริโภคอย่างเดียว แต่ตอนหลังมีการเพิ่มให้นำเข้ามาใช้ในการอื่นด้วย ทำให้ต้องมีการแก้มติในที่ประชุมในวันอังคารที่จะถึงนี้ ทำให้เสียเวลา\"<br /><br />หากถามว่า ถ้ารู้ก่อนว่า มีแนวโน้มน้ำมันปาล์มจะขาดแคลนอย่างหนัก เหตุใดภาครัฐ โดยเฉพาะหน่วยงานที่รับผิดชอบจึงไม่ตัดสินใจนำเข้ามาตั้งแต่แรก ก่อนที่จะเกิดการขาดแคลน  นางวัชรี อ้างว่า ที่ผ่านมาน้ำมันปาล์มเป็นสินค้าควบคุมห้ามนำเข้า หากใครเสนอให้มีการนำเข้า ก็เหมือนเป็นปรปักษ์กับเกษตรกรจากภาคใต้เลย เพราะเสี่ยงที่จะทำให้ราคาน้ำมันปาล์มในประเทศตกต่ำ <br /><br />ด้าน นายยุคล ลิ้มแหลมทอง อดีตปลัดกระทรวงเกษตรและสหกรณ์  กล่าวยืนยันกับทีมข่าว \"ไทยรัฐออนไลน์\" ว่า ความจริง กระทรวงเกษตรและสหกรณ์ ได้มีการประชุมหน่วยงานที่เกี่ยวข้องและได้แจ้งเตือน ไปยังกระทรวงพาณิชย์ ว่า ผลผลิตปาล์มจะเกิดการขาดแคลนในประเทศเนื่องจากมีผลผลิตออกมาน้อย  ตั้งแต่ประมาณก่อนเดือน พ.ย. ปีที่แล้ว  แต่ทางกระทรวงพาณิชย์กลับไม่ดำเนินการโดยไม่ทราบสาเหตุุ ว่าทำไมกระทรวงพาณิชย์ถึงไม่ดำเนินการแก้ไข ปล่อยผ่านมาถึงเดือน ก.พ. ก็ยากที่จะแก้ไข ประกอบกับตั้งแต่ช่วงเดือน มี.ค.ที่จะถึงนี้ ผลผลิตปาล์มของเกษตรกรไทยกำลังจะออกสู่ตลาด  แล้วมีการสั่งน้ำเข้าอีก 120,000 ตัน  กลุ่มเกษตรกรผู้ผลิตปาล์มก็จะลำบากได้ เพราะราคาผลปาล์มอาจจะตกลง</p><p> </p><div class=\"picture \"><img src=\" /media/content/2011/02/22/150803/l20/o10/420/252.jpg\" width=\"420\" height=\"252\" \r\n									alt=\"\" class=\"detail-image\" /><p class=\"caption\"></p></div>\r\n <p> </p><p>นายยุคล กล่าวอีกว่า  หากเป็นตน ถ้าตั้งแต่ก่อนช่วงเดือน พ.ย. 2553 จะขอให้มีการนำเข้าน้ำมันปาล์มเข้ามาประมาณ 50,000 ตัน  ก็คงจะช่วยแก้ปัญหาการขาดแคลนที่เกิดขึ้นได้ แต่เมื่อกระทรวงพาณิชย์ไม่ได้ดำเนินการ ปล่อยผ่านมาจนถึงเดือน ก.พ. 2554 ยอมรับว่าก็คงยากจะแก้ไข ต้องเข้าใจก่อนว่า ปกติประเทศไทย ทุกปีมีการนำเข้าน้ำมันปาล์มจากต่างประเทศจำนวนประมาณ 30,000 ตัน เพื่อแก้ปัญหาการขาดแคลนอยู่แล้ว แต่ปีที่ผ่านมาการเกิดปัญหาภัยแล้งและน้ำท่วมหนักในหลายพื้นที่โดยเฉพาะในภาคใต้ที่เป็นแหล่งผลิตรายใหญ่ ทำให้เกิดการขาดแคลนอย่างหนัก ดังนั้นจึงน่าจะขออนุมัตินำเข้าเพิ่มขึ้นจาก 30,000 เป็น 50,000 ตัน ก็จะสามารถแก้หรือบรรเทาปัญหาลงได้<br /><br />ทั้งนี้ เมื่อวันที่ 21 ก.พ.ที่ผ่านมา นายสุเทพ เทือกสุบรรณ รองนายกรัฐมนตรีฝ่ายความมั่นคง และประธานคณะกรรมการปาล์มน้ำมันแห่งชาติ (บอร์ด) ได้เรียกประชุมบอร์ดปาล์มน้ำมัน โดยที่ประชุมคณะกรรมการน้ำมันปาล์มได้ข้อสรุปดังนี้ 1. ดึงน้ำมันปาล์ม 15,000 ตันให้โรงงานมาจาก 2 ส่วน ลดสเปค BIO ดีเซลB3 เหลือB2 ด้านกระทรวงพลังงานให้ยืม 5,000 ตัน ที่เตรียมไว้ทำ BIO ชดเชย 9.50 บาท/ลิตร 2. นำเข้าน้ำมันปาล์ม 30,000 ตันจาก 120,000 ตัน ที่เคยอนุมัติถึงโรงงานใน 15 วัน ชดเชย5บาท/ลิตร โดยในวันที่ 8 มี.ค. จะมีการประชุมกันอีกครั้ง ถ้าเพียงพอก็ไม่นำเข้าอีก 3.รับซื้อปาล์มสด-ปาล์มทะลายจากเกษตรกรกิโลกรัมละ 7 บาท 4. นำน้ำมันปาล์ม 15,000 ตันภายในประเทศ บวกกับ 30,000 ตัน นำเข้า ส่งถึงโรงกลั่นภายใน 15 วัน ใช้งบชดเชยประมาณ 200 ล้านบาท 5.ราคา 47 บาทคงเดิมเปลี่ยนฝาเป็นสีชมพู เริ่มขายวันที่ 23 ก.พ. ไม่จำกัดจำนวน<br /><br />ความจริงปฏิเสธไม่ได้ว่าปัญหาน้ำมันพืชขาดตลาดได้ทำให้รัฐบาลเสียคะแนนเสียงไปเป็นจำนวนมากขณะที่ภาพความขัดแย้งระหว่างนายสุเทพ และ นางพรทิวา นาคาศัย รมว.พาณิชย์ จากพรรคภูมิใจไทย เรื่องผลประโยชน์จากราคาน้ำมันปาล์มก็ยังคงเป็นข้อสงสัยที่ดำรงอยู่ จนประชาชนที่เดือดร้อนจากเรื่องสินค้าแพงทั่วทั้งประเทศในขณะนี้ อยากให้ผู้เกี่ยวข้องทุกฝ่ายชี้แจงให้เกิดความกระจ่าง  ดังนั้นจึงต้องติดตามต่อไปอย่างใกล้ชิดว่าปัญหาจะจบลงได้อย่างไร..</p></p>\r\n', 1),
(2, 'โมโว้ยยยย', '<p><p><em><strong>รมว.พาณิชย์ โวยกลางครม.พรรคร่วมฯควรช่วยกันแก้ปัญหาน้ำมันปาล์ม ปชป.อย่าปล่อยลูกพรรคมาโจมตีกันเอง\"มาร์ค\"รับลูกสั่ง\"สุเทพ\"ไปช่วยตำหนิ\"วัชระ\"...<br /></strong></em><br />การประชุมคณะรัฐมนตรี (ครม.)เมื่อวันที่ 22 ก.พ. ซึ่งมีนายอภิสิทธิ์ เวชชาชีวะ นายกรัฐมนตรี เป็นประธาน นางพรทิวา นาคาศัย รมว.พาณิชย์ ได้นำเสนอให้ ครม.พิจารณามาตรการและการบริหารจัดการน้ำมันปาล์มนำเข้า เพื่อที่จะเสนอทางเลือกให้ ครม.พิจารณาตัดสินใจ 2 แนวทาง คือ 1.อนุญาตให้นำเข้าน้ำมันปาล์มได้โดยเสรี และห้ามส่งออกน้ำมันปาล์มชั่วคราว เป็นระยะเวลา 3 เดือน เพื่อให้การนำเข้าเกิดความคล่องตัว และปริมาณสินค้าในตลาดมีเพียงพอต่อความต้องการใช้ โดยในที่สุด และแนวทางที่ 2. แก้ไขมติคณะกรรมการนโยบายปาล์มน้ำมันแห่งชาติ จากที่ให้นำเข้าน้ำมันปาล์มดิบแยกไข 1.2 แสนตัน เป็นอนุมัติให้นำเข้าน้ำมันปาล์ม และจะขอให้มีคณะกรรมการบริหารจดการนำเข้าแห่งชาติ ให้นายกฯ หรือรองนายกฯ ที่ได้รับมอบหมายเป็นประธานเป็นการเฉพาะ รวมทั้งจะกำหนดราคาขายปลีกน้ำมันปาล์มในกรณีที่มีต้นทุนสูงขึ้น <br /><br />อย่างไรก็ตามที่ประชุมยังไม่ทันได้พิจารณาในรายละเอียด นายกฯ ได้สรุปว่า ให้นำเรื่องรายละเอียดเกี่ยวกับเรื่องน้ีทั้งหมดไปหารือกันในที่ประชุมคณะกรรมการนโยบายปาล์มน้ำมันแห่งชาติในช่วงบ่าย ที่มีทั้งนายสุเทพ เทือกสุบรรณ และนายไตรรงค์ สุวรรณคีรี รองนายกฯ ไปร่วมประชุมด้วย ทั้งนี้ ครม.จะได้เห็นชอบแต่งตั้งให้นางพรทิวา และ นพ.วรรณรัตน์ ชาญนุกูล รมว.พลังงาน เข้าร่วมเป็นกรรมการคณะกรรมการนโยบายฯเพิ่มอีก 2 คน เพื่อร่วมหารือและมีข้อสรุปที่ชัดเจนออกมา <br /><br />ขณะที่นายอลงกรณ์ พลบุตร รมช.พาณิชย์ ได้กล่าวถึงกรณีที่เจ้าหน้าที่จากกรมสอบสวนคดีพิเศษ หรือดีเอสไอ ไปตรวจสอบการกักตุนน้ำมันปาล์มในโรงงานต่างๆ ซึ่งความจริงไม่ควรจะไปไล่ตรวจแค่โรงงานผลิต แต่ควรไปตรวจถึงบรรดายี่ปั๊วที่เป็นผู้รับช่วงจากโรงงานมาผลิตด้วยว่า มีการกักตุนหรือไม่ และควรต้องไปดูด้วยว่า เพราะเหตุใดน้ำมันพืชชนิดอื่นๆ เช่นน้ำมันรำข้าวก็หายไปจากท้องตลาดด้วย <br /><br />ทั้งนี้นางพรทิวา ยังได้กล่าวในที่ประชุม ครม.ด้วยว่า เรื่องการแก้ไขปัญหาน้ำมันปาล์ม ความจริงไม่ช้า เพียงแต่การนำเข้ามันมีขั้นตอน ไม่ใช่ว่าผู้ผลิตไม่พร้อม แต่ตอนนี้กลับมีข่าวออกไปในทำนองว่า ฝ่ายการเมืองขัดกันเอง อยากให้ทุกฝ่ายช่วยกันอธิบายชี้แจงด้วยว่า มันไม่ใช่เป็นปัญหาการเมือง แต่เป็นเรื่องที่ทุกฝ่ายควรจะมาร่วมมือกันแก้ปัญหา ไม่ใช่ปล่อยให้มี ส.ส.ของพรรคตัวเองออกมาโจมตี ซึ่งนายกฯกล่าวยิ้ม ๆ พร้อมกล่าวว่า เห็นด้วย ถือเป็นเรื่องที่ดีที่จะต้องร่วมมือกัน และได้ถามว่า คนที่ออกมาพูดหมายถึง นายวัชระ เพชรทอง ใช่หรือไม่ และยังมีคนอื่นอีกหรือไม่ ซึ่งนางพรทิวา\"บอกว่าใช่\"นายกฯจึงได้บอกว่า\"จะให้เลขาธิการพรรค(ปชป.)ไปดำเนินการตำหนิ\".</p></p>\r\n', 1),
(3, 'kFM', '32132132131212ดหกฟกฟหกฟหกหกหฟดหกฟเกห้หิดกยสเสดทิเสดกหฟาเดบฟทสเยพ่ำเพ เยาดฟกเรๆพืยเดฟ่รเพืฟำดวกฟชเวพเวพบำเพเพเพเพเ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_unit`
--

DROP TABLE IF EXISTS `lesson_unit`;
CREATE TABLE IF NOT EXISTS `lesson_unit` (
  `unit_id` int(2) NOT NULL AUTO_INCREMENT,
  `unit_name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lesson_unit`
--

INSERT INTO `lesson_unit` VALUES
(1, 'ร่างกายมนุษย์'),
(2, 'ชีวิตสัตว์โลก');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `member_id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) CHARACTER SET utf8 NOT NULL,
  `pass` varchar(30) CHARACTER SET utf8 NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `bday` varchar(2) CHARACTER SET utf8 NOT NULL,
  `bmonth` varchar(2) CHARACTER SET utf8 NOT NULL,
  `byear` varchar(4) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(1) CHARACTER SET utf8 NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `province` varchar(2) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `picture` text CHARACTER SET utf8 NOT NULL,
  `m_status` int(1) NOT NULL DEFAULT '1' COMMENT 'ระดับสมาชิก',
  PRIMARY KEY (`member_id`),
  KEY `month_id` (`bmonth`),
  KEY `province_id` (`province`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` VALUES
(1, 'admin', '1234', 'ผู้ดูแลระบบ', 'ผู้ดูแลระบบ', '1', '1', '2554', 'F', 'โรงเรียนบ้านเขาย้อย', '36', 'admin@host.com', '123456789', 'Images/user/152111932021.jpg', 3),
(2, 'phatchara', '1234', 'พัชระ', 'อ่องวงศ์', '11', '11', '2531', 'M', '60 หมู่ 5 ตำบลเขาย้อย อำเภอเขาย้อย ', '36', 'phatchara@hotmail.com', '0802268620', 'Images/user/152110709112.jpg', 2),
(23, 'lmlmlmlm', '12112533', 'ตฤน', 'จำปาร่วง', '1', '1', '2554', 'M', '47 /8 หมู16 ต.ดินลูกรัง อ.บ้านนอก', '39', 'tyui1234@jubjub.net', '0822828282', 'Images/studenM.png', 1),
(24, 'mamamama', 'mamamama', 'วริษฐา', 'หญ้ารก', '1', '1', '2554', 'F', '14/2 หมู1 ต.ตะเข็บชายแดน อ.ห่างไกล', '70', 'ghjk1234@jubjub.net', '0868686868', 'Images/studenF.png', 2),
(9, 'wangai', '1234', 'wangai', 'kubpe', '1', '1', '2554', 'F', 'dasds', '36', 'wangai@hotmail.com', '0812315464', 'Images/studenF.png', 1),
(20, 'mmmmmmmm', 'mmmmmmmm', 'มนัญญา', 'วังตะขบ', '1', '1', '2554', 'F', '38 / 49 หมู่ 35  ต.บ้านกิน อ.บ้านไกล ', '25', 'asdf1234@jubjub.net', '0877575757', 'Images/studenF.png', 1),
(21, 'mamawaiwai', '11112531', 'สุวิทย์', 'สะกิดตลิ่ง', '1', '1', '2554', 'M', '28/2 หมู 7 ต.หนองน้ำเหลือง อ.ใจดำ ', '61', 'qwer1234@jubjub.net', '0899595959', 'Images/studenM.png', 1),
(22, 'memomome', '0802268620', 'มัศยนันท์', 'กอบกู้ข้าศึก', '1', '1', '2554', 'F', '78/98 ต.ตับดอง อ.ตับดอง', '33', 'zxcv1234@jubjub.net', '0858585858', 'Images/studenF.png', 1),
(14, 'phatchara2', '5678', 'พัชระ', 'สุดหล่อ', '29', '2', '2554', 'M', 'หฟกหฟก', '36', '5678@hotmail.com', '0802268620', 'Images/studenM.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member_answer`
--

DROP TABLE IF EXISTS `member_answer`;
CREATE TABLE IF NOT EXISTS `member_answer` (
  `mans_id` int(9) NOT NULL AUTO_INCREMENT,
  `member_id` int(9) NOT NULL,
  `question_id` int(9) NOT NULL,
  `answer_id` int(9) NOT NULL,
  PRIMARY KEY (`mans_id`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member_answer`
--

INSERT INTO `member_answer` VALUES
(1, 23, 1, 3),
(146, 23, 23, 89),
(147, 23, 24, 93),
(148, 23, 25, 97),
(149, 23, 26, 101),
(145, 23, 22, 88),
(144, 23, 21, 81),
(151, 23, 28, 109),
(150, 23, 27, 105),
(153, 23, 30, 117),
(152, 23, 29, 113),
(154, 23, 2, 5),
(155, 23, 5, 18),
(156, 23, 6, 24),
(157, 23, 7, 27),
(158, 23, 8, 30),
(159, 23, 10, 40),
(160, 23, 9, 35),
(161, 23, 3, 10),
(162, 23, 4, 14),
(230, 23, 18, 72),
(229, 23, 17, 68),
(231, 23, 19, 76),
(226, 23, 14, 55),
(224, 23, 12, 45),
(228, 23, 16, 63),
(223, 23, 13, 52),
(227, 23, 15, 58),
(232, 23, 20, 77),
(225, 23, 11, 41);

-- --------------------------------------------------------

--
-- Table structure for table `province_thai`
--

DROP TABLE IF EXISTS `province_thai`;
CREATE TABLE IF NOT EXISTS `province_thai` (
  `province_id` int(2) NOT NULL,
  `province_name` varchar(50) NOT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province_thai`
--

INSERT INTO `province_thai` VALUES
(1, 'กรุงเทพมหานคร'),
(2, 'กระบี่'),
(3, 'กาญจนบุรี'),
(4, 'กาฬสินธุ์'),
(5, 'กำแพงเพชร'),
(6, 'ขอนแก่น'),
(7, 'จันทบุรี'),
(8, 'ฉะเชิงเทรา'),
(9, 'ชัยนาท'),
(10, 'ชัยภูมิ'),
(11, 'ชุมพร'),
(12, 'ชลบุรี'),
(13, 'เชียงใหม่'),
(14, 'เชียงราย'),
(15, 'ตรัง'),
(16, 'ตราด'),
(17, 'ตาก'),
(18, 'นครนายก'),
(19, 'นครปฐม'),
(20, 'นครพนม'),
(21, 'นครราชสีมา'),
(22, 'นครศรีธรรมราช'),
(23, 'นครสวรรค์'),
(24, 'นราธิวาส'),
(25, 'น่าน'),
(26, 'นนทบุรี'),
(27, 'บุรีรัมย์'),
(28, 'ประจวบคีรีขันธ์'),
(29, 'ปทุมธานี'),
(30, 'ปราจีนบุรี'),
(31, 'ปัตตานี'),
(32, 'พะเยา'),
(33, 'พังงา'),
(34, 'พิจิตร'),
(35, 'พิษณุโลก'),
(36, 'เพชรบุรี'),
(37, 'เพชรบูรณ์'),
(38, 'แพร่'),
(39, 'พัทลุง'),
(40, 'ภูเก็ต'),
(41, 'มหาสารคาม'),
(42, 'มุกดาหาร'),
(43, 'แม่ฮ่องสอน'),
(44, 'ยโสธร'),
(45, 'ยะลา'),
(46, 'ร้อยเอ็ด'),
(47, 'ระนอง'),
(48, 'ระยอง'),
(49, 'ราชบุรี'),
(50, 'ลพบุรี'),
(51, 'ลำปาง'),
(52, 'ลำพูน'),
(53, 'เลย'),
(54, 'ศรีสะเกษ'),
(55, 'สกลนคร'),
(56, 'สงขลา'),
(57, 'สมุทรสาคร'),
(58, 'สมุทรปราการ'),
(59, 'สมุทรสงคราม'),
(60, 'สระแก้ว'),
(61, 'สระบุรี'),
(62, 'สิงห์บุรี'),
(63, 'สุโขทัย'),
(64, 'สุพรรณบุรี'),
(65, 'สุราษฎร์ธานี'),
(66, 'สุรินทร์'),
(67, 'สตูล'),
(68, 'หนองคาย'),
(69, 'หนองบัวลำภู'),
(70, 'อำนาจเจริญ'),
(71, 'อุดรธานี'),
(72, 'อุตรดิตถ์'),
(73, 'อุทัยธานี'),
(74, 'อุบลราชธานี'),
(75, 'อยุธยา'),
(76, 'อ่างทอง');

-- --------------------------------------------------------

--
-- Table structure for table `p_msg`
--

DROP TABLE IF EXISTS `p_msg`;
CREATE TABLE IF NOT EXISTS `p_msg` (
  `member_id` int(10) NOT NULL,
  `send_id` int(10) NOT NULL,
  `msg_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p_msg_ans`
--

DROP TABLE IF EXISTS `p_msg_ans`;
CREATE TABLE IF NOT EXISTS `p_msg_ans` (
  `ans_m_id` int(10) NOT NULL,
  `msg_id` int(10) NOT NULL,
  `ans_m_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `ans_m_time` text COLLATE utf8_unicode_ci NOT NULL,
  `ans_m_date` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ans_m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p_msg_detail`
--

DROP TABLE IF EXISTS `p_msg_detail`;
CREATE TABLE IF NOT EXISTS `p_msg_detail` (
  `msg_id` int(10) NOT NULL AUTO_INCREMENT,
  `msg_name` text COLLATE utf8_unicode_ci NOT NULL,
  `msg_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `msg_time` text COLLATE utf8_unicode_ci NOT NULL,
  `msg_date` text COLLATE utf8_unicode_ci NOT NULL,
  `msg_status` int(1) NOT NULL COMMENT '0คือยังไม่ได้เปิดอ่าน1อ่านแล้ว',
  PRIMARY KEY (`msg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_interest`
--

DROP TABLE IF EXISTS `s_interest`;
CREATE TABLE IF NOT EXISTS `s_interest` (
  `inter_id` int(4) NOT NULL,
  `inter_name` text COLLATE utf8_unicode_ci NOT NULL,
  `inter_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `inter_time` text COLLATE utf8_unicode_ci NOT NULL,
  `inter_date` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`inter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_news`
--

DROP TABLE IF EXISTS `s_news`;
CREATE TABLE IF NOT EXISTS `s_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_name` text COLLATE utf8_unicode_ci NOT NULL,
  `news_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `news_time` text COLLATE utf8_unicode_ci NOT NULL,
  `news_date` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webboard`
--

DROP TABLE IF EXISTS `webboard`;
CREATE TABLE IF NOT EXISTS `webboard` (
  `topic_id` int(10) NOT NULL AUTO_INCREMENT,
  `member_id` int(10) NOT NULL,
  `topic_name` text COLLATE utf8_unicode_ci NOT NULL,
  `topic_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `topic_picture` text COLLATE utf8_unicode_ci,
  `topic_link` text COLLATE utf8_unicode_ci,
  `topic_time` text COLLATE utf8_unicode_ci NOT NULL,
  `topic_date` text COLLATE utf8_unicode_ci NOT NULL,
  `topic_count` int(11) NOT NULL DEFAULT '0',
  `topic_ans` int(11) NOT NULL DEFAULT '0',
  `topic_status` int(1) NOT NULL DEFAULT '0' COMMENT 'ปักมุด1ไม่ปัก0',
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `webboard`
--

INSERT INTO `webboard` VALUES
(0, 1, 'เวรแท้ๆ', 'กำๆลืมจ๊อยยเว้ย', 'Images/webboard/132110657551.jpg', 'http://www.db.com', '06:57', '13-2-2554', 20, 11, 1),
(1, 2, 'เงา', 'เธอเหมือนเงา ในค่ำคืนที่มันมืดมิด', '', '', '06:15', '13-2-2554', 12, 1, 0),
(2, 4, 'ทำไมมาม่าอร่อยจัง', 'มาม่าอย่างร่อย', 'Images/webboard/13211061459.jpg', 'http://www.mama.com', '06:14', '13-2-2554', 11, 5, 0),
(4, 12, 'ช่วยด้วยยยงานเข้าแย้วววว', 'โอ๊ะๆๆ โอ เหว้ออโอออ', 'Images/webboard/1321110195112.jpg', '', '10:19', '13-2-2554', 11, 5, 0),
(5, 16, 'อยากได้ปลาโลมา', 'ทำยังไง ถึงจะได้ปลาโลมาคะ อยากได้มาเลี้ยงเปนเพื่อนกระต่ายค่ะ', '', '', '18:19', '13-2-2554', 11, 5, 0),
(6, 16, 'อยากได้ปลาโลมา', 'ทำยังไง ถึงจะได้ปลาโลมาคะ อยากได้มาเลี้ยงเปนเพื่อนกระต่ายค่ะ', '', '', '18:20', '13-2-2554', 11, 5, 0),
(7, 16, 'มีไรจะบอกแอดมิน', 'แอดมิน สู้ๆ แอดมินสู้ตาย แอดมินไว้ลาย สู้ตาย สู้ๆ', '', '', '18:47', '13-2-2554', 11, 5, 1),
(8, 16, 'มุฟ', 'ทำไม ปลาทองถึงด่าพ่อ', '', '', '22:10', '13-2-2554', 11, 5, 0),
(9, 0, 'คิดถึงมะเหมี่ยวนะจุฟๆ', 'คิดถึงมะเหมี่ยวนะจุจฟๆ อยากกอสที่สวดดดด', '', '', '22:10', '13-2-2554', 11, 5, 0),
(10, 1, 'dsadfdgfdgfdgdfgdfgdfgfdgdsdfasdfdsf', 'dsadsadsadsa', 'Images/webboard/23111607591.jpg', 'jytjtyjytjtyjty', '16:07', '02-3-2554', 13, 5, 0),
(11, 1, ';polioi', 'liliuluililug', 'Images/webboard/23111619031.jpg', '', '16:19', '02-3-2554', 12, 11, 0),
(12, 1, 'ffdsgdfh', 'fghfghgfhgfhdhgjjgsgfd', 'Images/webboard/23111635551.jpg', '', '16:35', '02-3-2554', 15, 8, 0),
(13, 1, 'เว้ย ทำไรดีวะสาด', '125453456หฟกหฟกหฟกฟหกฟหกฟก', 'Images/webboard/273111128021.jpg', '', '11:28', '27-3-2554', 15, 1, 0),
(23, 0, '', '', NULL, NULL, '', '', 12, 11, 0),
(24, 24, 'อะไรเอ่ย', 'ปากเอ่ย', '', '', '22:18', '13-5-2554', 10, 2, 0),
(25, 1, 'กหกหฟกฟหกฟหกหฟกหฟกฟหกฟหกฟหกฟหก', 'กหฟกหฟกฟห', '', '', '22:38', '13-5-2554', 6, 1, 0),
(26, 1, 'วนวนวนรวนวนรวนรวนร', 'สนรสวนรวนรวสนน', '', '', '22:43', '13-5-2554', 5, 2, 0),
(27, 24, 'haloooooo', 'halaaaaaaa', '', '', '22:45', '13-5-2554', 12, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `webboard_ans`
--

DROP TABLE IF EXISTS `webboard_ans`;
CREATE TABLE IF NOT EXISTS `webboard_ans` (
  `answer_id` int(10) NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) NOT NULL,
  `member_id` int(10) NOT NULL,
  `answer_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `answer_time` text COLLATE utf8_unicode_ci NOT NULL,
  `answer_date` text COLLATE utf8_unicode_ci NOT NULL,
  `answer_picture` text COLLATE utf8_unicode_ci,
  `answer_link` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`answer_id`),
  KEY `member_id` (`member_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `webboard_ans`
--

INSERT INTO `webboard_ans` VALUES
(0, 0, 2, 'แป่วว อะไรวะนั้น', '07:56', '13-02-2554', 'Images/webboard/1021112092535.jpg', ''),
(2, 0, 4, 'dsadasdasddasdasd', '8:11', '13-02-2554', '', ''),
(4, 1, 1, 'เพ้อเจ้อวะสาด', '09:48', '13-2-2554', '', 'http://www.bodyslam.com'),
(3, 2, 1, 'ทดสอบ reply', '09:43', '13-2-2554', '', ''),
(5, 0, 12, 'testtest', '10:29', '13-2-2554', '', 'http://www.sanook.com'),
(6, 4, 1, 'dsadsadasdd', '17:01', '13-2-2554', '', ''),
(7, 2, 16, 'อยากรู้ก้อลองถามบริษัทผลิตมาม่าสิคะ พูดแล้วหิว ซร๊วปป', '18:22', '13-2-2554', '', ''),
(8, 1, 16, 'นั่นสิๆ ', '18:23', '13-2-2554', '', ''),
(9, 5, 1, 'จิง อะ เอากี่ตัว แล้วกระต่ายกะปลาโลมาจะเล่นกันยังไง', '18:25', '13-2-2554', '', ''),
(10, 0, 16, 'มุ๊บ', '18:30', '13-2-2554', '', ''),
(11, 7, 0, 'รักแอดมิน เด้อค่ะเด้อ', '22:08', '13-2-2554', '', ''),
(12, 7, 16, 'รักแอดมิน เด้อค่ะเด้อ', '22:09', '13-2-2554', '', ''),
(13, 8, 0, 'มันลืมว่าเป็นพ่อป่าวเห็นความจำสั้น', '22:12', '13-2-2554', '', ''),
(14, 8, 1, 'มันลืมว่าเป็นพ่อป่าว', '22:12', '13-2-2554', '', ''),
(15, 7, 1, 'รักคนเม้นเด้อก๊าบ', '22:13', '13-2-2554', '', ''),
(16, 8, 16, '5++++++', '22:14', '13-2-2554', '', ''),
(17, 8, 2, 'จีวฟ', '15:02', '14-2-2554', '', ''),
(18, 0, 1, 'ตอบคำถาม', '09:30', '25-2-2554', '', ''),
(19, 0, 1, 'gfdsfdsfdsfsdfdfsdfdsfdsf', '15:38', '02-3-2554', '', ''),
(20, 0, 1, 'dsadsadasdas', '15:51', '02-3-2554', '', ''),
(21, 0, 1, 'dsadsadasdas', '15:51', '02-3-2554', '', ''),
(22, 0, 1, 'dsadsadasdas', '15:54', '02-3-2554', '', ''),
(23, 0, 1, 'dsadasdasd', '15:55', '02-3-2554', '', ''),
(24, 0, 1, 'dgdsfsdfsdf', '15:56', '02-3-2554', '', ''),
(25, 0, 1, 'sadsadsadsa', '15:58', '02-3-2554', '', ''),
(26, 0, 1, '                      ', '15:58', '02-3-2554', '', ''),
(27, 0, 1, 'gfdgdfgfdgdfgd', '15:59', '02-3-2554', '', ''),
(28, 6, 1, 'dsadsadasd', '16:00', '02-3-2554', '', ''),
(29, 6, 1, 'fdsfdsfsd', '16:00', '02-3-2554', '', ''),
(30, 6, 1, 'sdad', '16:00', '02-3-2554', '', ''),
(31, 6, 1, 'dadasdasdasd', '16:01', '02-3-2554', '', 'http://www.google.com'),
(32, 6, 1, 'ds', '16:02', '02-3-2554', '', ''),
(33, 6, 1, '', '16:04', '02-3-2554', '', ''),
(34, 6, 1, '', '16:07', '02-3-2554', '', ''),
(35, 10, 1, 'fdsfsdfs', '16:12', '02-3-2554', '', ''),
(36, 10, 1, '', '16:13', '02-3-2554', '', ''),
(37, 10, 1, '', '16:15', '02-3-2554', '', ''),
(38, 10, 1, '', '16:17', '02-3-2554', '', ''),
(39, 10, 1, 'dsadsadsad', '16:17', '02-3-2554', '', ''),
(40, 11, 1, 'gfdgdfgdfg', '16:19', '02-3-2554', '', ''),
(41, 11, 1, '', '16:21', '02-3-2554', '', ''),
(42, 11, 1, 'dsadsadas', '16:24', '02-3-2554', '', ''),
(43, 11, 1, 'fdsfdsfs', '16:25', '02-3-2554', '', ''),
(44, 11, 1, '', '16:27', '02-3-2554', '', ''),
(45, 11, 1, 'fdsfsdfsdfsfdf', '16:27', '02-3-2554', '', ''),
(46, 11, 1, 'gfdgfdgfdgdgfdgdgdf', '16:28', '02-3-2554', '', ''),
(47, 11, 1, 'rfdhgfdgsddfggsgdfgfdgsddsadadfjdg,jhluktlli', '16:28', '02-3-2554', 'Images/webboard/23111628371.jpg', ''),
(48, 11, 1, 'hjhgkkl;;khjkjhkkhgfhgfhfghfghfg', '16:31', '02-3-2554', 'Images/webboard/23111631211.jpg', ''),
(49, 11, 1, 'dfahjhkuykirykyutu', '16:34', '02-3-2554', 'C:\\Documents and Settings\\AOTKUNG\\Desktop\\studenF (Small).jpg', ''),
(50, 11, 1, 'gjhlkjkgjkjhkjhkjhk', '16:35', '02-3-2554', '', ''),
(51, 12, 1, 'fdfdshtsfjykuyrkuykuykyk', '16:36', '02-3-2554', '', ''),
(52, 12, 1, 'fgfdgdfgfdgfd', '16:37', '02-3-2554', '', ''),
(53, 12, 1, 'fdsfdsfdsfsdfsf', '16:38', '02-3-2554', 'Images/webboard/23111638231.jpg', ''),
(54, 12, 1, 'hjhkjuylkuykukyrkrukr', '16:38', '02-3-2554', 'Images/webboard/23111638401.jpg', 'www.google.com'),
(55, 12, 1, 'fdsadsadsadsadsadsadsadas', '16:42', '02-3-2554', 'Images/webboard/23111642171.jpg', ''),
(56, 12, 1, 'fdfasffsdfdsffds\r\nfdsfds\r\nf\r\ndf\r\nds\r\nfs\r\nfsa\r\nfds\r\nfds\r\nfsdf\r\nsd\r\nfsd\r\nf', '02:40', '03-3-2554', '', ''),
(57, 12, 1, 'fdsa\r\nfdsaf\r\ndsaf\r\ndfdsfs\r\ndfsdaf\r\ndsfsd\r\nfsadf\r\nsf\r\nsdf\r\nsdf\r\ndsf\r\nsdf\r\nsdf\r\nsdaf\r\nsdaf\r\nsdaf\r\nsdf\r\nsdf\r\nsdf\r\nsd\r\nfsd\r\nfsd\r\nfsd\r\nfsda\r\nfs\r\ndaf\r\nsadf\r\nsafs\r\naf\r\nsadf\r\nsaf\r\nsaf\r\nsaf', '02:40', '03-3-2554', '', ''),
(58, 12, 1, '<br>fdsfsdf', '02:41', '03-3-2554', '', ''),
(59, 2, 1, 'adasddasfgdfhjhgfghgfh', '19:28', '20-4-2554', '', ''),
(60, 13, 1, 'dsdad', '22:12', '13-5-2554', '', ''),
(61, 24, 24, 'ไม่รุดิ วีาย โง่', '22:21', '13-5-2554', '', ''),
(62, 25, 1, 'กหฟกฟหกฟห', '22:39', '13-5-2554', '', ''),
(63, 26, 1, 'สาว้สาส่สาสาส', '22:43', '13-5-2554', '', 'www.google.com'),
(64, 26, 1, '', '22:43', '13-5-2554', '', 'http://localhost/project/topic_detail.php?id=26'),
(65, 24, 1, 'ดีครับคุณมาม่า', '22:45', '13-5-2554', '', ''),
(66, 27, 1, 'อะไรจ๊ะ\r\n', '12:29', '27-5-2554', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam_question`
--
ALTER TABLE `exam_question` ADD FULLTEXT KEY `question` (`question`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
