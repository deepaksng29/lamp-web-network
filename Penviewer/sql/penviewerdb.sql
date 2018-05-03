-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2018 at 03:22 PM
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
-- Table structure for table `personal_tbl`
--

CREATE TABLE `personal_tbl` (
  `Personal_Prefix` varchar(256) NOT NULL DEFAULT 'PERS-',
  `Personal_ID` int(11) NOT NULL,
  `Personal_Firstname` varchar(256) NOT NULL,
  `Personal_Secondname` varchar(256) NOT NULL,
  `Personal_Lastname` varchar(256) NOT NULL,
  `Personal_Gender` varchar(256) NOT NULL,
  `Personal_DOB` varchar(256) NOT NULL,
  `Personal_UID` varchar(256) NOT NULL,
  `Personal_PWDHash` varchar(256) NOT NULL,
  `Personal_Profession` varchar(256) NOT NULL,
  `Personal_MySkills` varchar(256) NOT NULL,
  `Personal_MyQualifications` varchar(256) NOT NULL,
  `Personal_DateCreated` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- AUTO_INCREMENT for table `personal_tbl`
--
ALTER TABLE `personal_tbl`
  MODIFY `Personal_ID` int(11) NOT NULL AUTO_INCREMENT;

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
