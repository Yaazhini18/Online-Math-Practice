-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2018 at 08:02 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizExam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'yaazhini@gmail.com', '000000'),
(2, 'srihari@gmail.com', '111111'),
(3, 'yavanika@gmail.com', '222222');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('5b141d712647f', '5b141d71485b9'),
('5b141d718f873', '5b141d71978be'),
('5b141d71ddb46', '5b141d71e5f43'),
('5b141d721a738', '5b141d7222884'),
('5b141d7260b7d', '5b141d7268b9a'),
('5b141d72a6fa1', '5b141d72aefcb'),
('5b141d72d7a1c', '5b141d72dfa7b'),
('5b141d731429b', '5b141d731c234'),
('5b141d7345176', '5b141d734cd1b'),
('5b141d737ddfc', '5b141d73858df'),
('5b1422651fdde', '5b1422654ab51'),
('5b14226574ed5', '5b1422657d064'),
('5b142265b5d08', '5b142265c09f5'),
('5b1422661d93f', '5b14226635e0d'),
('5b14226663cf4', '5b1422666bf2b'),
('5b1422669481b', '5b1422669c8ea'),
('5b142266c525c', '5b142266cd369'),
('5b14226711d91', '5b14226719fb1'),
('5b1422674286d', '5b1422674a9ee'),
('5b1422677371f', '5b1422677b3fc');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('yaazhini@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2022-05-13 16:56:00'),
('srihari@gmail.com', '5b141b8009cf0', 30, 10, 10, 0, '2022-05-13 16:57:45'),
('yavanika@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2022-05-13 16:59:06'),
('yaazhini@gmail.com', '5b141f1e8399e', 26, 10, 9, 1, '2022-05-13 17:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', '3', '5b13ed3a9436a'),
('5b13ed3a6e006', '5', '5b13ed3a94374'),
('5b13ed3a6e006', '20', '5b13ed3a94377'),
('5b13ed3a6e006', '60', '5b13ed3a94379'),
('5b13ed72489d8', '0.0007', '5b13ed7263d70'),
('5b13ed72489d8', '0.07', '5b13ed7263d7a'),
('5b13ed72489d8', '0.7', '5b13ed7263d7d'),
('5b13ed72489d8', '7', '5b13ed7263d80'),
('5b141d712647f', '71', '5b141d71485b9'),
('5b141d712647f', '73', '5b141d71485dc'),
('5b141d712647f', '75', '5b141d71485e0'),
('5b141d712647f', '77', '5b141d71485e4'),
('5b141d718f873', '1.13', '5b141d71978be'),
('5b141d718f873', '15/17', '5b141d71978cc'),
('5b141d718f873', '17/15', '5b141d71978d1'),
('5b141d718f873', '30/34', '5b141d71978d4'),
('5b141d71ddb46', '15', '5b141d71e5f2b'),
('5b141d71ddb46', '30', '5b141d71e5f3c'),
('5b141d71ddb46', '252', '5b141d71e5f43'),
('5b141d71ddb46', '225', '5b141d71e5f48'),
('5b141d721a738', '700', '5b141d7222820'),
('5b141d721a738', '600', '5b141d722282f'),
('5b141d721a738', '10', '5b141d7222880'),
('5b141d721a738', '100', '5b141d7222884'),
('5b141d7260b7d', '99', '5b141d7268b8a'),
('5b141d7260b7d', '11', '5b141d7268b95'),
('5b141d7260b7d', '90', '5b141d7268b98'),
('5b141d7260b7d', 'None of these', '5b141d7268b9a'),
('5b141d72a6fa1', '2 or 0', '5b141d72aefcb'),
('5b141d72a6fa1', '10 or 0', '5b141d72aefd8'),
('5b141d72a6fa1', '0 or 5', '5b141d72aefdc'),
('5b141d72a6fa1', 'None of these', '5b141d72aefe0'),
('5b141d72d7a1c', '375', '5b141d72dfa7b'),
('5b141d72d7a1c', '57', '5b141d72dfa85'),
('5b141d72d7a1c', '376', '5b141d72dfa88'),
('5b141d72d7a1c', '970', '5b141d72dfa8b'),
('5b141d731429b', '0', '5b141d731c234'),
('5b141d731429b', '32', '5b141d731c242'),
('5b141d731429b', '56', '5b141d731c248'),
('5b141d731429b', '56', '5b141d731c24b'),
('5b141d737ddfc', '105', '5b141d73858d0'),
('5b141d737ddfc', '176', '5b141d73858df'),
('5b141d737ddfc', '26', '5b141d73858e3'),
('5b141d737ddfc', '16', '5b141d73858e8'),
('5b1422651fdde', '2', '5b1422654ab3a'),
('5b1422651fdde', '5', '5b1422654ab48'),
('5b1422651fdde', '0', '5b1422654ab4d'),
('5b1422651fdde', 'None of these', '5b1422654ab51'),
('5b14226574ed5', '60 and 75', '5b1422657d052'),
('5b14226574ed5', '50 and 65', '5b1422657d05f'),
('5b14226574ed5', '70 and 95', '5b1422657d064'),
('5b14226574ed5', '65 and 75', '5b1422657d069'),
('5b142265b5d08', '213', '5b142265c09e3'),
('5b142265b5d08', '223', '5b142265c09f5'),
('5b142265b5d08', '203', '5b142265c09fa'),
('5b142265b5d08', '302', '5b142265c09ff'),
('5b1422661d93f', '60', '5b14226635df5'),
('5b1422661d93f', '62', '5b14226635e04'),
('5b1422661d93f', '64', '5b14226635e09'),
('5b1422661d93f', '32', '5b14226635e0d'),
('5b14226663cf4', '0', '5b1422666bf2b'),
('5b14226663cf4', '1', '5b1422666bf39'),
('5b14226663cf4', '3', '5b1422666bf3e'),
('5b14226663cf4', '2', '5b1422666bf42'),
('5b1422669481b', '25 cmm', '5b1422669c8dc'),
('5b1422669481b', '120 cm', '5b1422669c8ea'),
('5b1422669481b', '100 cm', '5b1422669c8ef'),
('5b1422669481b', '200 cm', '5b1422669c8f3'),
('5b142266c525c', '14', '5b142266cd353'),
('5b142266c525c', '20', '5b142266cd361'),
('5b142266c525c', '19', '5b142266cd365'),
('5b142266c525c', '17', '5b142266cd369'),
('5b14226711d91', '10', '5b14226719fa0'),
('5b14226711d91', '11', '5b14226719fb1'),
('5b14226711d91', '12', '5b14226719fb7'),
('5b14226711d91', '13', '5b14226719fbb'),
('5b1422674286d', '9', '5b1422674a9ee'),
('5b1422674286d', '4', '5b1422674aa01'),
('5b1422674286d', '36', '5b1422674aa06'),
('5b1422674286d', '13', '5b1422674aa0b'),
('5b1422677371f', '40458', '5b1422677b3e9'),
('5b1422677371f', '34058', '5b1422677b3f7'),
('5b1422677371f', '43058', '5b1422677b3fc'),
('5b1422677371f', '40358', '5b1422677b400');


-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'What is three fifth of 100?', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'What is 7% equal to?', 4, 1),
('5b141b8009cf0', '5b141d712647f', 'How many years are there in a decade?', 4, 1),
('5b141b8009cf0', '5b141d718f873', 'What is the reciprocal of 17/15?', 4, 2),
('5b141b8009cf0', '5b141d71ddb46', 'What is the square of 15?', 4, 3),
('5b141b8009cf0', '5b141d721a738', 'In 24,673 ; the place-value of 6 is ….. .', 4,4),
('5b141b8009cf0', '5b141d7260b7d', 'The least number of two digits is ….. .', 4, 5),
('5b141b8009cf0', '5b141d72a6fa1', 'A number is divisible by 5 if its unit digit is ………………… .', 4, 6),
('5b141b8009cf0', '5b141d72d7a1c', 'Subtract 457 from 832 ', 4, 7),
('5b141b8009cf0', '5b141d731429b', 'Simplify: 26 + 32 - 12', 4, 8),
('5b141b8009cf0', '5b141d737ddfc', 'Solve : 200 – (96 ÷ 4)', 4, 9),
('5b141f1e8399e', '5b1422651fdde', 'Simplify :150 ÷ (6 + 3 x 8) - 5', 4, 10),
('5b141f1e8399e', '5b14226574ed5', 'Two numbers are in ratio 4 : 5. If the sum of the numbers is 135, find the numbers.', 4, 1),
('5b141f1e8399e', '5b142265b5d08', 'A car can cover a distance of 522 km on 36 liters of petrol. How far can it travel on 14 liters of petrol?', 4, 2),
('5b141f1e8399e', '5b1422661d93f', 'Fill in the blanks; 4, 6, 12, 14, 28, 30, (?)', 4, 3),
('5b141f1e8399e', '5b14226663cf4', 'The number which is neither prime nor composite is ……. .', 4, 4),
('5b141f1e8399e', '5b1422669481b', 'he diagonals of a rhombus are 30 cm and 40 cm long. Find its side.', 4, 5),
('5b141f1e8399e', '5b142266c525c', 'If 16 = 11, 25 = 12, 36 = 15, then 49 = ?', 4, 6),
('5b141f1e8399e', '5b14226711d91', 'If 6 is 50% of a number, what is the number?', 4, 7),
('5b141f1e8399e', '5b1422674286d', 'Area of a parallelogram whose base is 9 cm and height is 4 cm is ……….. square cm.', 4, 8),
('5b141f1e8399e', '5b1422677371f', 'The quotient in a division sum is 403. The divisor is 100 and the remainder is 58. The dividend is ……… .', 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5b141b8009cf0', 'Level 2', 3, 1, 9, '2022-05-13 16:46:56'),
('5b141f1e8399e', 'Level 1', 3, 1, 10, '2022-05-13 17:02:22');


-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('srihari@gmail.com', 30, '2022-05-13 16:57:45'),
('yavanika@gmail.com', 22, '2022-05-13 16:59:06'),
('yaazhini@gmail.com', 10, '2022-05-13 16:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `school` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `school`, `email`, `password`) VALUES
('Yaazhini', 'Lords park, karur', 'yaazhini@gmail.com', 'yaazhini'),
('Yavanika', 'Velammal, chennai', 'yavanika@gmail.com', 'yavanika'),
('Srihari', 'Malco, mettur', 'srihari@gmail.com', 'srihari');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
