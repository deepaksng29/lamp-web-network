-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2018 at 11:05 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penviewerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_tbl`
--

CREATE TABLE `business_tbl` (
  `Business_Prefix` varchar(256) NOT NULL DEFAULT 'BUSS-',
  `Business_ID` int(11) NOT NULL,
  `Business_Name` varchar(256) NOT NULL,
  `Business_Addr1` varchar(256) NOT NULL,
  `Business_Addr2` varchar(256) NOT NULL,
  `Business_City` varchar(256) NOT NULL,
  `Business_Postcode` varchar(256) NOT NULL,
  `Business_Country` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chats_tbl`
--

CREATE TABLE `chats_tbl` (
  `Chat_Prefix` varchar(256) NOT NULL DEFAULT 'CHAT-',
  `Chat_ID` int(11) NOT NULL,
  `Personal_ID` int(11) NOT NULL,
  `Employer_ID` int(11) NOT NULL,
  `Business_ID` int(11) NOT NULL,
  `Chat_TimeStamp` varchar(256) NOT NULL,
  `Chat_DateStamp` varchar(256) NOT NULL,
  `Chat_Content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employer_tbl`
--

CREATE TABLE `employer_tbl` (
  `Employer_Prefix` varchar(256) NOT NULL DEFAULT 'EMPL-',
  `Employer_ID` int(11) NOT NULL,
  `Employer_Firstname` varchar(256) NOT NULL,
  `Employer_Secondname` varchar(256) NOT NULL,
  `Employer_Lastname` varchar(256) NOT NULL,
  `Employer_Gender` varchar(256) NOT NULL,
  `Employer_DOB` varchar(256) NOT NULL,
  `Employer_Username` varchar(256) NOT NULL,
  `Employer_PWDHash` varchar(256) NOT NULL,
  `Employer_Profession` varchar(256) NOT NULL,
  `Employer_MySkills` varchar(256) NOT NULL,
  `Employer_MyQualifications` varchar(256) NOT NULL,
  `Employer_DateCreated` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `friendlist_tbl`
--

CREATE TABLE `friendlist_tbl` (
  `FriendLog_Prefix` varchar(256) NOT NULL DEFAULT 'FRND-',
  `FriendLog_ID` int(11) NOT NULL,
  `Personal_ID1` int(11) NOT NULL,
  `Employer_ID1` int(11) NOT NULL,
  `Business_ID1` int(11) NOT NULL,
  `Personal_ID2` int(11) NOT NULL,
  `Employer_ID2` int(11) NOT NULL,
  `Business_ID2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ip_addr_tbl`
--

CREATE TABLE `ip_addr_tbl` (
  `IPAddr_Prefix` varchar(256) NOT NULL DEFAULT 'IP-ADDR-',
  `IPAddr_ID` int(11) NOT NULL,
  `IPAddr_UID` varchar(256) NOT NULL,
  `IP_Addr` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personal_tbl`
--

CREATE TABLE `personal_tbl` (
  `Personal_Prefix` varchar(256) NOT NULL DEFAULT 'PERS-',
  `Personal_ID` int(11) NOT NULL,
  `Personal_Firstname` varchar(256) NOT NULL,
  `Personal_Secondname` varchar(256) DEFAULT NULL,
  `Personal_Lastname` varchar(256) NOT NULL,
  `Personal_Gender` varchar(256) NOT NULL,
  `Personal_DOB` varchar(256) NOT NULL,
  `Personal_Email` varchar(256) NOT NULL,
  `Personal_UID` varchar(256) NOT NULL,
  `Personal_PWDHash` varchar(256) NOT NULL,
  `Personal_Profession` varchar(256) DEFAULT NULL,
  `Personal_MySkills` varchar(256) DEFAULT NULL,
  `Personal_MyQualifications` varchar(256) DEFAULT NULL,
  `Personal_DateCreated` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_tbl`
--

INSERT INTO `personal_tbl` (`Personal_Prefix`, `Personal_ID`, `Personal_Firstname`, `Personal_Secondname`, `Personal_Lastname`, `Personal_Gender`, `Personal_DOB`, `Personal_Email`, `Personal_UID`, `Personal_PWDHash`, `Personal_Profession`, `Personal_MySkills`, `Personal_MyQualifications`, `Personal_DateCreated`) VALUES
('PERS-', 2, 'Deepak', NULL, 'Singh', 'Male', '', 'dsingh20800@gmail.com', '', '$2y$10$TIKhWAbz/iuZKpZXmkxpce1FGQPyt.K.BbRFoLNPFMpMfKmfrTzZ.', NULL, NULL, NULL, ''),
('PERS-', 3, 'Deepak', NULL, 'Singh', 'Male', '', 'dsingh20800@gmail.com', '', '$2y$10$4u45Y15Fjv7Io1hI1reTUOItJUYjjJfh/sbgh/C2ITcvjn4lkNDBi', NULL, NULL, NULL, '2018-05-01 18:08:28'),
('PERS-', 4, 'Deepak', NULL, 'Singh', 'Male', '', 'dsingh20800@gmail.com', '', '$2y$10$AWQrBGTpw5cIpyrlaeyLKu9Z6V5Zb0ui/gG1vam2yNX.x0taeW4de', NULL, NULL, NULL, '2018-05-01 18:10:15'),
('PERS-', 5, 'Deepak', NULL, 'Singh', 'Male', '', 'dsingh20800@gmail.com', '', '$2y$10$6C32Y7o2wT/p7Xq01JrovOrM40jJ7xu9pM6/drw0uX33uWSTTbEiG', NULL, NULL, NULL, '2018-05-01 18:10:57'),
('PERS-', 6, 'Deepak', NULL, 'Singh', 'Male', '20/8/2000', 'dsingh20800@gmail.com', '', '$2y$10$8uLJxqRawSTzA3BJq.h66uMX4jrPRAELMfOv69MbceSVS7VoyeNq2', NULL, NULL, NULL, '2018-05-01 18:11:13'),
('PERS-', 7, 'Deepak', NULL, 'Singh', 'Male', '20/08/2000', 'dsingh20800@gmail.com', '', '$2y$10$fJlw91TndjZk7I6wVrWEvuybOijkp4Wy5aYQRZxInz/csU6w78FEq', NULL, NULL, NULL, '2018-05-01 18:14:06'),
('PERS-', 8, 'Deepak', NULL, 'Singh', 'Male', '21/08/2000', 'dsingh20800@gmail.com', '', '$2y$10$9UxE2tj55HDjAHQ8tX58huebwkQbC3dz8J.OB.q4s/SJ7T3p/hXGO', NULL, NULL, NULL, '2018-05-01 18:15:42'),
('PERS-', 9, 'Deepak', NULL, 'Singh', 'Male', '20/08/2000', 'dsingh20800', '', '$2y$10$F/bwdZUYBD7qUq36QEtZdeMduWveK0Ma8W99moRNJ1Q4HWNnhKKky', NULL, NULL, NULL, '2018-05-01 18:17:50'),
('PERS-', 10, 'Deepak', NULL, 'Singh', 'Male', '20/08/2000', 'dsingh20800', '', '$2y$10$bufdft.FUhH.799T/tdy1Oiqf9Ywy2CG7jfkWEQKdCvFN43tWMtFq', NULL, NULL, NULL, '2018-05-01 18:18:13'),
('PERS-', 11, 'Deepak', NULL, 'Singh', 'Male', '20/08/2000', 'A@b@c@example.com', '', '$2y$10$zEddxRK1uYd0fpvlTOyltOnIHQ86M73MSadZgSRS6pHMfFVBPQrya', NULL, NULL, NULL, '2018-05-01 18:19:16'),
('PERS-', 12, 'Deepak', NULL, 'Singh', 'Male', '20/08/2000', 'dsingh20800@gmail.com', '', '$2y$10$/S8jcfUu1eNZxz8f/rwpdO6rHhe8F6qEmqFwqZEuzyp.TugEHqAGy', NULL, NULL, NULL, '2018-05-01 18:27:27'),
('PERS-', 13, 'Deepak', NULL, 'Singh', 'Male', '48', 'dsingh20800@gmail.com', '', '$2y$10$b2StSJA/EWlECEwiziPkNOZEW17wLCMStkWtw.DDU9Yxh4pnN15/2', NULL, NULL, NULL, '2018-05-01 18:30:33'),
('PERS-', 14, 'Deepak', NULL, 'Singh', 'Male', '48', 'dsingh20800@gmail.com', '', '$2y$10$UWTcZ/oZtrflEPjeuBinkuuVSZt8RB/xsqqlkax6CG9GaHBWjz8kG', NULL, NULL, NULL, '2018-05-01 18:32:07'),
('PERS-', 15, 'Deepak', NULL, 'Singh', 'Male', '17', 'dsingh20800@gmail.com', '', '$2y$10$WBorDTIHaQb54w1meKT5xOPpq/gihSd6fnDnKbOZ89v6EHxIYgpTm', NULL, NULL, NULL, '2018-05-01 18:37:49'),
('PERS-', 16, 'Deepak', NULL, 'Singh', 'Male', '17', 'dsingh20800@gmail.com', '', '$2y$10$.LwIK50bo8fCV8GA42S.ye52393mn0Pr31hBYzGgRgbFYDRjMP4YS', NULL, NULL, NULL, '2018-05-01 18:40:12'),
('PERS-', 17, 'Deepak', NULL, 'Singh', 'Male', '20/8/2000', 'dsingh20800@gmail.com', '', '$2y$10$A3QLYW9OFXrTLFHUUQWyUuWeoS686L/73ShUepOaGGrg2/Ugo5NPW', NULL, NULL, NULL, '2018-05-01 18:41:49'),
('PERS-', 18, 'Deepak', NULL, 'Singh', 'Male', '17', 'dsingh20800@gmail.com', '', '$2y$10$qYkeITeZRY5YwXFuU0lXxOrgEKhjb8RWuwC/EncOX7MaylrmvTnJC', NULL, NULL, NULL, '2018-05-01 18:42:12'),
('PERS-', 19, 'Deepak', NULL, 'Singh', 'Male', '20/08/2001', 'dsingh20800@gmail.com', '', '$2y$10$db8N0TO.GREy8lTUBrIxwe.vIGmQQkPpcx1t9iCwWQqJ9WHsdO/1q', NULL, NULL, NULL, '2018-05-01 18:47:41'),
('PERS-', 20, 'Deepak', NULL, 'Singh', 'Male', '20/08/2001', 'dsingh20800@gmail.com', '', '$2y$10$rzjVr84vLJ7hFegydxTbdOlr6R.ZMEOq16LtPuYD5nlhlx5hHbV3S', NULL, NULL, NULL, '2018-05-01 18:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts_tbl`
--

CREATE TABLE `posts_tbl` (
  `Posts_Prefix` varchar(256) NOT NULL DEFAULT 'POST-',
  `Posts_ID` int(11) NOT NULL,
  `Personal_ID` int(11) NOT NULL,
  `Employer_ID` int(11) NOT NULL,
  `Business_ID` int(11) NOT NULL,
  `Post_DateStamp` varchar(256) NOT NULL,
  `Post_Timestamp` varchar(256) NOT NULL,
  `Post_Header` varchar(256) NOT NULL,
  `Post_Content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business_tbl`
--
ALTER TABLE `business_tbl`
  ADD PRIMARY KEY (`Business_Prefix`,`Business_ID`),
  ADD KEY `Business_ID` (`Business_ID`);

--
-- Indexes for table `chats_tbl`
--
ALTER TABLE `chats_tbl`
  ADD PRIMARY KEY (`Chat_ID`,`Chat_Prefix`),
  ADD KEY `Business_ID` (`Business_ID`),
  ADD KEY `Personal_ID` (`Personal_ID`),
  ADD KEY `Employer_ID` (`Employer_ID`);

--
-- Indexes for table `employer_tbl`
--
ALTER TABLE `employer_tbl`
  ADD PRIMARY KEY (`Employer_ID`,`Employer_Prefix`);

--
-- Indexes for table `friendlist_tbl`
--
ALTER TABLE `friendlist_tbl`
  ADD PRIMARY KEY (`FriendLog_ID`,`FriendLog_Prefix`),
  ADD KEY `Business_ID2` (`Business_ID2`),
  ADD KEY `Employer_ID2` (`Employer_ID2`),
  ADD KEY `Personal_ID2` (`Personal_ID2`),
  ADD KEY `Business_ID1` (`Business_ID1`),
  ADD KEY `Employer_ID1` (`Employer_ID1`),
  ADD KEY `Personal_ID1` (`Personal_ID1`),
  ADD KEY `Business_ID1_2` (`Business_ID1`);

--
-- Indexes for table `ip_addr_tbl`
--
ALTER TABLE `ip_addr_tbl`
  ADD PRIMARY KEY (`IPAddr_ID`,`IPAddr_Prefix`);

--
-- Indexes for table `personal_tbl`
--
ALTER TABLE `personal_tbl`
  ADD PRIMARY KEY (`Personal_ID`,`Personal_Prefix`);

--
-- Indexes for table `posts_tbl`
--
ALTER TABLE `posts_tbl`
  ADD PRIMARY KEY (`Posts_ID`,`Posts_Prefix`),
  ADD KEY `Business_ID` (`Business_ID`),
  ADD KEY `Employer_ID` (`Employer_ID`),
  ADD KEY `Personal_ID` (`Personal_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats_tbl`
--
ALTER TABLE `chats_tbl`
  MODIFY `Chat_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employer_tbl`
--
ALTER TABLE `employer_tbl`
  MODIFY `Employer_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friendlist_tbl`
--
ALTER TABLE `friendlist_tbl`
  MODIFY `FriendLog_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_addr_tbl`
--
ALTER TABLE `ip_addr_tbl`
  MODIFY `IPAddr_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_tbl`
--
ALTER TABLE `personal_tbl`
  MODIFY `Personal_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts_tbl`
--
ALTER TABLE `posts_tbl`
  MODIFY `Posts_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `business_tbl`
--
ALTER TABLE `business_tbl`
  ADD CONSTRAINT `business_tbl_ibfk_1` FOREIGN KEY (`Business_ID`) REFERENCES `chats_tbl` (`Business_ID`);

--
-- Constraints for table `chats_tbl`
--
ALTER TABLE `chats_tbl`
  ADD CONSTRAINT `chats_tbl_ibfk_1` FOREIGN KEY (`Employer_ID`) REFERENCES `employer_tbl` (`Employer_ID`),
  ADD CONSTRAINT `chats_tbl_ibfk_2` FOREIGN KEY (`Personal_ID`) REFERENCES `personal_tbl` (`Personal_ID`);

--
-- Constraints for table `friendlist_tbl`
--
ALTER TABLE `friendlist_tbl`
  ADD CONSTRAINT `friendlist_tbl_ibfk_1` FOREIGN KEY (`Business_ID1`) REFERENCES `business_tbl` (`Business_ID`),
  ADD CONSTRAINT `friendlist_tbl_ibfk_2` FOREIGN KEY (`Business_ID2`) REFERENCES `business_tbl` (`Business_ID`),
  ADD CONSTRAINT `friendlist_tbl_ibfk_3` FOREIGN KEY (`Employer_ID1`) REFERENCES `employer_tbl` (`Employer_ID`),
  ADD CONSTRAINT `friendlist_tbl_ibfk_4` FOREIGN KEY (`Employer_ID2`) REFERENCES `employer_tbl` (`Employer_ID`),
  ADD CONSTRAINT `friendlist_tbl_ibfk_5` FOREIGN KEY (`Personal_ID1`) REFERENCES `personal_tbl` (`Personal_ID`),
  ADD CONSTRAINT `friendlist_tbl_ibfk_6` FOREIGN KEY (`Personal_ID2`) REFERENCES `personal_tbl` (`Personal_ID`);

--
-- Constraints for table `posts_tbl`
--
ALTER TABLE `posts_tbl`
  ADD CONSTRAINT `posts_tbl_ibfk_1` FOREIGN KEY (`Business_ID`) REFERENCES `business_tbl` (`Business_ID`),
  ADD CONSTRAINT `posts_tbl_ibfk_2` FOREIGN KEY (`Employer_ID`) REFERENCES `employer_tbl` (`Employer_ID`),
  ADD CONSTRAINT `posts_tbl_ibfk_3` FOREIGN KEY (`Personal_ID`) REFERENCES `personal_tbl` (`Personal_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
