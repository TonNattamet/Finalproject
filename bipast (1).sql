-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 06:49 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bipast`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name_category`) VALUES
(1, 'หนังฝรั่ง'),
(2, 'หนังจีน'),
(3, 'หนังเกาหลี'),
(4, 'หนัง Marvel'),
(5, 'การ์ตูน'),
(6, 'อื่นๆ'),
(7, 'หนังไทย'),
(8, 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `data_likes`
--

CREATE TABLE `data_likes` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `data_likes`
--

INSERT INTO `data_likes` (`id`, `id_user`, `id_movie`) VALUES
(7, 4, 33),
(9, 4, 26),
(10, 4, 29),
(11, 5, 29),
(12, 5, 26),
(13, 5, 24),
(14, 6, 27);

-- --------------------------------------------------------

--
-- Table structure for table `data_movie`
--

CREATE TABLE `data_movie` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `vdo_ex` text NOT NULL,
  `vdo_main` text NOT NULL,
  `year` int(4) NOT NULL,
  `time` varchar(8) NOT NULL,
  `id_categorym` int(11) NOT NULL,
  `minute` text NOT NULL,
  `totallikes` int(11) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `data_movie`
--

INSERT INTO `data_movie` (`id`, `name`, `img`, `vdo_ex`, `vdo_main`, `year`, `time`, `id_categorym`, `minute`, `totallikes`, `detail`) VALUES
(23, 'Brave', 'https://c4.wallpaperflare.com/wallpaper/773/956/903/brave-hd-disney-pixar-brave-poster-wallpaper-preview.jpg', 'TEHWDA_6e3M', 'NvR9YOpDG4A', 2022, '', 5, '96', 0, 'เมริด้า (พากย์เสียงโดย เคลลี่ แม็คโดนัลด์) นักธนูสาวผู้เก่งกาจและลูกสาวผู้หุนหันของ กษัตริย์เฟอร์กัส (พากย์เสียงโดย บิลลี่ คอนนอลลี่) และราชินีอีลินอร์ (พากย์เสียงโดย เอ็มม่า ธอมป์สัน) ผู้ต้องการกำหนดทางเดินชีวิตของตัวเอง เมริด้า ได้ท้าทายประเพณีศักดิ์สิทธิ์อันเก่าแก่แห่งเหล่าผู้ครองดินแดน ลอร์ดแม็คกัฟฟิน (พากย์เสียงโดย เควิน แม็คคิดด์) ผู้ยิ่งใหญ่, ลอร์ดแม็คอินทอช (พากย์เสียงโดย เคร็ก เฟอร์กูสัน) ผู้บึ้งตึง และลอร์ดดิงวอลล์ (พากย์เสียงโดย ร็อบบี้ โคลทราน) เจ้าอารมณ์ การกระทำโดยไม่ได้ตั้งใจของ เมริด้า ได้นำพาความวุ่นวายและหายนะมาสู่อาณาจักร และเมื่อเธอได้หันไปขอความช่วยเหลือจาก หญิงแก่ผู้รอบรู้ ท่าทางประหลาดคนหนึ่ง (พากย์เสียงโดย จูลี่ วอลเทอร์ส) ที่เธอต้องแลกด้วยโชคชะตาอันโหดร้ายที่จะตามมา เมรดา ตองเดนหนาเพอคนพบความหมายของความกลาหาญทแทจรงเพอทจะแกไขคำสาปหรอโชคชะตานนใหสำเรจกอนทจะสายเกนไป'),
(24, 'Titanic', 'https://images5.alphacoders.com/336/336484.jpg', 'I7c1etV7D7g', 'pudXdSnR01s', 1997, '', 1, '194', 1, 'แจ็คกับโรส หนุ่มสาวต่างฐานะที่พบกันและเกิดเป็นความรักยิ่งใหญ่บนเรือไททานิค ท่ามกลางความแตกต่างของชนชั้น ซึ่งเป็นอุปสรรคอันใหญ่ยิ่ง แล้วยังมีอุบัติเหตุหายนะที่รอเวลาที่จะพลัดพรากเขาและเธอให้จากกัน เดิมเข้าฉาย 24 ธันวาคม 2540 นำมาเข้าฉายอีกครั้งเมื่อ 5 เมษายน 2555'),
(25, 'Karmalink', 'https://s2.dmcdn.net/v/U7k1z1Yw-SkIZ8X_S/x1080', 'aNzT8NiNy_0', 'aNzT8NiNy_0', 2023, '', 1, '101', 0, 'ในอนาคตประเทศกัมพูชายุคที่มนุษย์ปรับแต่งอวัยวะด้วยอุปกรณ์อีเล็กโทรนิค เลงเฮง เด็กชายจากสลัมซึ่งสามารถระลึกถึงอดีตชาติของเขาที่เคยเป็นโจรขโมยพระพุทธรูปทองคำจากวัดแล้วนำไปฝังในที่แห่งหนึ่ง เมื่อบ้านของเขาและเพื่อน ๆ กำลังถูกไล่รื้อถอนเพื่อขยายเมือง เขาต้องการสมบัตินั้นเพื่อให้ทุกคนยังมีที่อยู่'),
(26, 'STAR WARS', 'https://wallpaperaccess.com/full/1347951.jpg', '8Qn_spdM5Zg', 'sGbxmsDFVnE', 1999, '', 4, '94', 2, 'แฟรนไชส์ สตาร์ วอร์ส นำเสนอการผจญภัยของกลุ่มตัวละครใน \"นานมาแล้วในหมู่ดวงดาวอันไกลโพ้น มีมนุษย์และมนุษย์ต่างดาวหลากหลายเผ่าพันธุ์ (ส่วนใหญ่มีลักษณะคล้ายมนุษย์) อาศัยอยู่ร่วมกับหุ่นยนต์หรือ fvp ที่อาจจะช่วยเหลือพวกเขาในกิจวัตรประจำวัน การเดินทางในอวกาศระหว่างดวงดาวนั้นเป็นเรื่องปกติ เพราะมีเทคโนโลยีไฮเปอร์สเปซ และขนาดของยานอวกาศนั้นมีตั้งแต่ ยานขับไล่ขนาดเล็กคล้ายเครื่องบิน เช่น ยานทายไฟต์เตอร์  ยานอวกาศขนาดใหญ่อย่าง ยานพิฆาตดารา  และสถานีอวกาศขนาดเท่าดวงจันทร์อย่าง ดาวมรณะ '),
(27, 'Lyle Lyle Crocodile', 'https://wallpapercave.com/wp/wp11570044.jpg', 's0W6O7mSlaU', 'kSHecHtkXAc', 2022, '', 5, '106', 1, 'เมื่อครอบครัวพริมม์ย้ายไปนิวยอร์กซิตี้ จอช ลูกชายของพวกเขา จำเป็นต้องปรับตัวให้เข้ากับโรงเรียนใหม่และเพื่อนใหม่ แต่แล้วทุกอย่างก็เปลี่ยนไปเมื่อเขาได้พบ '),
(28, 'Fantasy Island', 'https://wallpaperaccess.com/full/6157372.jpg', 'a6O30nJ02PU', 'FDJDujWJhzw', 2020, '', 1, '106', 0, 'เรื่องราวสุดระทึก เมื่อหญิงสาวคนหนึ่งได้รับเชิญให้ไปเยือนที่เกาะอันสวยงาม ที่นั่นมีที่พักสุดหรู งานปาร์ตี้สุดรื่นเริง แต่ความสยองเริ่มต้นขึ้น เมื่อมันได้นำความหายนะมายังผู้เยือนเกาะแต่ละคน และพวกเขาต้องหาทางรอดออกจากเกาะสวรรค์นี้ไปให้ได้'),
(29, 'Marvel Studios’ The Marvels', 'https://wallpapercave.com/wp/wp10362603.jpg', 'Tp_YZNqNBhw', 'iuk77TjvfmE', 2023, '', 4, '124', 2, 'Marvel Studios’ The Marvels'),
(30, 'บ้านเช่าบูชายัญ', 'https://thethaiger.com/th/wp-content/uploads/2023/03/%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B9%80%E0%B8%AB%E0%B9%87%E0%B8%99%E0%B8%8A%E0%B8%B2%E0%B8%A7%E0%B9%80%E0%B8%99%E0%B9%87%E0%B8%95-%E0%B8%9A%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B9%80%E0%B8%8A%E0%B9%88%E0%B8%B2%E0%B8%9A%E0%B8%B9%E0%B8%8A%E0%B8%B2%E0%B8%A2%E0%B8%B1%E0%B8%8D-4.jpg', 'WNLVu7CE6Ok', 'FaA2BkCTLvk', 2023, '', 7, '125', 0, 'บ้านเช่าบูชายัญ'),
(31, 'Blue Beetle', 'https://images4.alphacoders.com/815/thumb-1920-815409.jpg', 'vS3_72Gb-bI', 'vS3_72Gb-bI', 2023, '', 1, '139', 0, 'Blue Beetle'),
(32, 'EXTRACTION 2', 'https://wallpapercave.com/wp/wp6157194.jpg', 'mO0OuR26IZM', 'rj9_57DwA1Q', 2023, '', 1, '145', 0, 'EXTRACTION 2'),
(33, 'The Little Mermaid', 'https://images6.alphacoders.com/577/577807.jpg', 'kpGo2_d3oYE', 'kpGo2_d3oYE', 2023, '', 5, '124', 1, 'The Little Mermaid');

-- --------------------------------------------------------

--
-- Table structure for table `data_playlist`
--

CREATE TABLE `data_playlist` (
  `idplaylist` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `data_playlist`
--

INSERT INTO `data_playlist` (`idplaylist`, `id_user`, `id_movie`) VALUES
(7, 5, 23),
(8, 4, 33),
(9, 4, 26),
(10, 4, 29),
(11, 5, 29),
(12, 5, 26),
(13, 5, 24),
(14, 6, 27);

-- --------------------------------------------------------

--
-- Table structure for table `nameandtype`
--

CREATE TABLE `nameandtype` (
  `id_movie` int(5) NOT NULL,
  `id_type` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nameandtype`
--

INSERT INTO `nameandtype` (`id_movie`, `id_type`) VALUES
(0, 4),
(23, 9),
(23, 13),
(24, 4),
(24, 6),
(25, 6),
(26, 12),
(27, 13),
(28, 4),
(28, 5),
(28, 7),
(29, 3),
(29, 4),
(29, 5),
(30, 7),
(30, 10),
(31, 3),
(31, 4),
(31, 12),
(32, 3),
(32, 4),
(33, 8),
(33, 13);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id_type` int(5) NOT NULL,
  `name_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id_type`, `name_type`) VALUES
(3, 'Action'),
(4, 'Adventure'),
(5, 'Comedy'),
(6, 'Drama'),
(7, 'Horror'),
(8, 'Cartoon'),
(9, 'Family'),
(10, 'Thriller'),
(11, 'Remake'),
(12, 'Fantasy'),
(13, 'Animation');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `userlevel` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `userlevel`) VALUES
(1, 'Ryan', 'Ryan@gmail.com', '1234', 'm'),
(2, 'Cat', 'Cat@gmail.com', '1234', 'a'),
(4, 'AAAAA', 'AAAAA@email.com', '1234', 'm'),
(5, 'nook', 'nook@gmail.com', 'nook', 'm'),
(6, 'nook', 'dfs@gmail.com', '1124', 'm'),
(7, 'bb', 'bb@gmail.com', 'bb', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `data_likes`
--
ALTER TABLE `data_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_movie`
--
ALTER TABLE `data_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_playlist`
--
ALTER TABLE `data_playlist`
  ADD PRIMARY KEY (`idplaylist`);

--
-- Indexes for table `nameandtype`
--
ALTER TABLE `nameandtype`
  ADD PRIMARY KEY (`id_movie`,`id_type`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `data_likes`
--
ALTER TABLE `data_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `data_movie`
--
ALTER TABLE `data_movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `data_playlist`
--
ALTER TABLE `data_playlist`
  MODIFY `idplaylist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
