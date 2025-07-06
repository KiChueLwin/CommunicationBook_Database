-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2025 at 02:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_communicationbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` varchar(11) NOT NULL,
  `adminName` varchar(20) NOT NULL,
  `adminPhone` varchar(50) NOT NULL,
  `adminGmail` varchar(255) NOT NULL,
  `adminPassword` varchar(255) NOT NULL,
  `adminStatus` varchar(11) NOT NULL,
  `adminProfile` text DEFAULT NULL,
  `schID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminName`, `adminPhone`, `adminGmail`, `adminPassword`, `adminStatus`, `adminProfile`, `schID`) VALUES
('A0002', 'Kyal', '0964563542432', 'kyal@gmail.com', '$2y$10$j3GpTw1TmiIyYtqBHTdbjec8Jz1u.FOVxOaQV0czDdcct/uQcDPNG', 'Active', NULL, 'SCH002'),
('A001', 'Ki Chue Lwin', '09765632235', 'ki@gmail.com', '$2y$10$0MBArShPXTdoTRcU.NB7yegb3HawbObmLrprnFZL7vN/2J2mJS.1W', 'Active', 'uploads/admin_profiles/685e830f3ce1e.jpeg', 'SCH001');

-- --------------------------------------------------------

--
-- Table structure for table `all_categories_post`
--

CREATE TABLE `all_categories_post` (
  `acpID` varchar(11) NOT NULL,
  `trID` varchar(11) NOT NULL,
  `catID` varchar(11) NOT NULL,
  `schID` varchar(11) NOT NULL,
  `acpTitle` varchar(255) NOT NULL,
  `acpDesc` text DEFAULT NULL,
  `acpStatus` varchar(20) NOT NULL DEFAULT 'Active',
  `acpCreatedDate` datetime NOT NULL DEFAULT current_timestamp(),
  `target_frID` varchar(11) DEFAULT NULL,
  `target_pgID` varchar(11) DEFAULT NULL,
  `target_clID` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `all_categories_post`
--

INSERT INTO `all_categories_post` (`acpID`, `trID`, `catID`, `schID`, `acpTitle`, `acpDesc`, `acpStatus`, `acpCreatedDate`, `target_frID`, `target_pgID`, `target_clID`) VALUES
('ACP000001', 'TR000004', 'CAT000003', 'SCH001', 'Test for announcement', 'testing', 'Inactive', '2025-06-29 07:44:12', 'FR000001', 'PG000002', 'CL000002'),
('ACP000002', 'TR000004', 'CAT000003', 'SCH001', 'Summer result 2025', 'This is announcement for class summer 2025', 'Inactive', '2025-06-29 16:25:15', 'FR000001', 'PG000002', 'CL000002'),
('ACP000003', 'TR000004', 'CAT000003', 'SCH001', 'Winter exam date', 'Winner exam will be held in November 29', 'Inactive', '2025-06-29 16:27:37', 'mxz_s9qJHw', 'PG000001', 'CL000001'),
('ACP000004', 'TR000004', 'CAT000003', 'SCH001', 'Testing Day 30', 'Testing for day 30 ', 'Inactive', '2025-06-30 16:25:14', 'FR000001', 'PG000002', 'CL000002'),
('ACP000005', 'TR000004', 'CAT000003', 'SCH001', 'Announcement Post Updated', 'This is testing', 'Inactive', '2025-06-30 17:31:28', 'mxz_s9qJHw', 'PG000001', 'CL000001'),
('ACP000006', 'TR000004', 'CAT000003', 'SCH001', 'Announcement', 'test', 'Active', '2025-06-30 17:32:52', 'mxz_s9qJHw', 'PG000001', 'CL000001');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catID` varchar(11) NOT NULL,
  `catName` varchar(100) NOT NULL,
  `catStatus` varchar(10) NOT NULL,
  `schID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catID`, `catName`, `catStatus`, `schID`) VALUES
('CAT000001', 'Announcements', 'Deleted', 'SCH001'),
('CAT000002', 'Social Post', 'Active', 'SCH001'),
('CAT000003', 'Announcement', 'Active', 'SCH001'),
('CAT000004', 'Sports News', 'Active', 'SCH001');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `clID` varchar(11) NOT NULL,
  `clName` varchar(100) NOT NULL,
  `clStatus` varchar(10) NOT NULL,
  `pgID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`clID`, `clName`, `clStatus`, `pgID`) VALUES
('CL000001', '135', 'Active', 'PG000001'),
('CL000002', '112', 'Active', 'PG000002');

-- --------------------------------------------------------

--
-- Table structure for table `franchise`
--

CREATE TABLE `franchise` (
  `frID` varchar(11) NOT NULL,
  `frName` varchar(255) NOT NULL,
  `frAddress` text NOT NULL,
  `frPhone` varchar(255) NOT NULL,
  `frGmail` varchar(100) NOT NULL,
  `frStatus` varchar(10) NOT NULL,
  `schID` varchar(11) NOT NULL,
  `adminID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `franchise`
--

INSERT INTO `franchise` (`frID`, `frName`, `frAddress`, `frPhone`, `frGmail`, `frStatus`, `schID`, `adminID`) VALUES
('FR000001', 'KMD Tar Mwe', 'Tar Mwe , Yangon', '096747543222', 'kmdtm@gmail.com', 'Active', 'SCH001', 'A001'),
('mxz_s9qJHw', 'KMD MyayNiKone', 'MyayNiKone, Yangon', '09564653425', 'kmd@gmail.com', 'Active', 'SCH001', 'A001'),
('vTB_SCVG7w', 'RVi Yangon', 'Yangon, KaMarNyut', '09765645736', 'rvi@gmail.com', 'Active', 'SCH002', 'A0002');

-- --------------------------------------------------------

--
-- Table structure for table `frapro`
--

CREATE TABLE `frapro` (
  `frID` varchar(11) NOT NULL,
  `pgID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `frapro`
--

INSERT INTO `frapro` (`frID`, `pgID`) VALUES
('mxz_s9qJHw', 'PG000001'),
('FR000001', 'PG000002');

-- --------------------------------------------------------

--
-- Table structure for table `mainadmin`
--

CREATE TABLE `mainadmin` (
  `madminID` varchar(11) NOT NULL,
  `madminName` varchar(100) NOT NULL,
  `madminGmail` varchar(100) NOT NULL,
  `madminPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mainadmin`
--

INSERT INTO `mainadmin` (`madminID`, `madminName`, `madminGmail`, `madminPassword`) VALUES
('MA0001', 'Thet Hmue Wai', 'admin@gmail.com', '$2y$10$fPl.9R0BVAids1tcJfNJwOYPBItfY7kEt256co1Zy8M.h99QoPysK');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `parID` varchar(11) NOT NULL,
  `parName` varchar(100) NOT NULL,
  `parPhone` varchar(100) NOT NULL,
  `parNRC` varchar(50) NOT NULL,
  `parAddress` varchar(255) NOT NULL,
  `parGmail` varchar(100) NOT NULL,
  `parPassword` varchar(255) NOT NULL,
  `parStatus` varchar(10) NOT NULL,
  `parProfile` text DEFAULT NULL,
  `schID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`parID`, `parName`, `parPhone`, `parNRC`, `parAddress`, `parGmail`, `parPassword`, `parStatus`, `parProfile`, `schID`) VALUES
('PA000001', 'U Htun', '0978587643', '9/WTNN-658622', 'Mandalay, Wundwin', 'htun@gmail.com', '$2y$10$eHDd76nXXG1lDOpL4YySeeCw0vxMUWwhtQvEmL94I.Xe4JQBt7PgS', 'Active', NULL, 'SCH001'),
('PA000002', 'Daw Mya', '09645647632', '9/UYT-875622', 'Yangon', 'mya@gmail.com', '$2y$10$HYAQbyMnZdZgjT7juzqgce4mdTY/NOK3GS8aZ.BUskyLBHEJyG.ua', 'Active', NULL, 'SCH001'),
('PA000003', 'U Aung', '09675645643', '8/TUY-757651', 'Yangon', 'aung@gmail.com', '$2y$10$RLV7/FVIeA3rkR7i0MyWm.6lO5.w5HHcw1Sh6/AP.wmcZnaMUoGqK', 'Active', NULL, 'SCH001');

-- --------------------------------------------------------

--
-- Table structure for table `postdetail`
--

CREATE TABLE `postdetail` (
  `pdID` varchar(11) NOT NULL,
  `postID` varchar(11) NOT NULL,
  `pdType` varchar(20) NOT NULL COMMENT 'e.g., TEXT, IMAGE, VIDEO',
  `pdContent` text NOT NULL COMMENT 'Actual text content or reference ID/URL for media (e.g., piID)',
  `pdOrder` int(11) NOT NULL DEFAULT 0 COMMENT 'Order of this detail block within the post (e.g., 1, 2, 3)',
  `pdStatus` varchar(20) DEFAULT 'Active',
  `pdDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `postdetail`
--

INSERT INTO `postdetail` (`pdID`, `postID`, `pdType`, `pdContent`, `pdOrder`, `pdStatus`, `pdDate`) VALUES
('PD000001', 'POS000001', 'TEXT', 'This is our achievement.', 1, 'Active', '2025-06-25 12:03:19'),
('PD000004', 'POS000003', 'TEXT', 'Testing 2', 1, 'Active', '2025-06-25 15:26:48'),
('PD000005', 'POS000003', 'IMAGE', 'http://10.0.2.2:8080/CommunicationBookAPI/uploads/posts/post_img_685bf91567721.jpg', 2, 'Active', '2025-06-25 15:26:48'),
('PD000006', 'POS000004', 'TEXT', 'Testing', 1, 'Active', '2025-06-25 17:25:05'),
('PD000007', 'POS000004', 'IMAGE', 'http://10.0.2.2:8080/CommunicationBookAPI/uploads/posts/post_img_685c14cf90d45.jpg', 2, 'Active', '2025-06-25 17:25:05'),
('PD000008', 'POS000005', 'TEXT', 'What a great moment for our students.', 1, 'Active', '2025-06-25 18:39:17'),
('PD000009', 'POS000005', 'IMAGE', 'http://10.0.2.2:8080/CommunicationBookAPI/uploads/posts/post_img_685c26286cdfd.jpg', 2, 'Active', '2025-06-25 18:39:17'),
('PD000010', 'POS000005', 'IMAGE', 'http://10.0.2.2:8080/CommunicationBookAPI/uploads/posts/post_img_685c262c26cdf.jpg', 3, 'Active', '2025-06-25 18:39:17'),
('PD000011', 'POS000005', 'IMAGE', 'http://10.0.2.2:8080/CommunicationBookAPI/uploads/posts/post_img_685c2631d0983.jpg', 4, 'Active', '2025-06-25 18:39:17'),
('PD000012', 'POS000002', 'TEXT', 'Testing for update', 1, 'Active', '2025-06-26 16:31:07'),
('PD000013', 'POS000002', 'IMAGE', 'http://10.0.2.2:8080/CommunicationBookAPI/uploads/posts/post_img_685bf8d457d31.jpg', 2, 'Active', '2025-06-26 16:31:08'),
('PD000014', 'POS000006', 'TEXT', 'testing', 1, 'Active', '2025-06-27 09:14:15'),
('PD000015', 'POS000007', 'TEXT', 'Testing description', 1, 'Active', '2025-06-28 12:16:09'),
('PD000017', 'POS000009', 'TEXT', 'PP 2302', 1, 'Active', '2025-06-28 14:00:11'),
('PD000018', 'POS000008', 'TEXT', 'Testing for update..', 1, 'Active', '2025-06-28 23:27:32'),
('PD000019', 'POS000010', 'TEXT', 'test', 1, 'Active', '2025-06-29 00:11:19'),
('PD000020', 'POS000011', 'TEXT', 'day 29 testing by ki', 1, 'Active', '2025-06-29 01:47:06'),
('PD000021', 'ACP000002', 'TEXT', 'This is announcement for class summer 2025', 1, 'Active', '2025-06-29 11:55:15'),
('PD000022', 'ACP000003', 'TEXT', 'Winner exam will be held in November 29', 1, 'Active', '2025-06-29 11:57:37'),
('PD000023', 'ACP000003', 'IMAGE', 'http://10.0.2.2:8080/CommunicationBookAPI/uploads/posts/post_img_68610e0eb03c3.jpg', 2, 'Active', '2025-06-29 11:57:37'),
('PD000024', 'ACP000004', 'TEXT', 'Testing for day 30', 1, 'Active', '2025-06-30 11:55:14'),
('PD000025', 'ACP000004', 'IMAGE', 'http://10.0.2.2:8080/CommunicationBookAPI/uploads/posts/post_img_68625efd6e7c9.jpg', 2, 'Active', '2025-06-30 11:55:14'),
('PD000026', 'POS000011', 'TEXT', 'This is our achievement', 1, 'Active', '2025-06-30 12:53:17'),
('PD000027', 'POS000011', 'IMAGE', 'http://10.0.2.2:8080/CommunicationBookAPI/uploads/posts/post_img_68626c9b2fc48.jpg', 2, 'Active', '2025-06-30 12:53:18'),
('PD000028', 'ACP000005', 'TEXT', 'This is testing', 1, 'Active', '2025-06-30 13:02:06'),
('PD000029', 'ACP000005', 'IMAGE', 'http://10.0.2.2:8080/CommunicationBookAPI/uploads/posts/post_img_68626e8573775.jpg', 2, 'Active', '2025-06-30 13:02:06'),
('PD000030', 'ACP000006', 'TEXT', 'test', 1, 'Active', '2025-06-30 13:02:52'),
('PD000031', 'ACP000006', 'IMAGE', 'http://10.0.2.2:8080/CommunicationBookAPI/uploads/posts/post_img_68626ed9cb352.jpg', 2, 'Active', '2025-06-30 13:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `postimg`
--

CREATE TABLE `postimg` (
  `piID` varchar(11) NOT NULL,
  `postID` varchar(11) NOT NULL,
  `pdID` varchar(11) DEFAULT NULL COMMENT 'Optional FK to postdetail if this image is part of an ordered content block',
  `piTitle` varchar(255) DEFAULT NULL,
  `piDesc` text DEFAULT NULL,
  `piImg` varchar(255) NOT NULL COMMENT 'URL or path to the stored image file',
  `piStatus` varchar(20) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postID` varchar(11) NOT NULL,
  `trID` varchar(11) NOT NULL,
  `catID` varchar(11) NOT NULL,
  `postTitle` varchar(255) NOT NULL,
  `postDesc` text DEFAULT NULL,
  `postStatus` varchar(20) DEFAULT 'Active',
  `postCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `schID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `trID`, `catID`, `postTitle`, `postDesc`, `postStatus`, `postCreated`, `schID`) VALUES
('POS000003', 'TR000004', 'CAT000002', 'Testing 2', 'Testing 2', 'Inactive', '2025-06-25 15:26:47', 'SCH001'),
('POS000004', 'TR000004', 'CAT000002', 'Testing', 'Testing', 'Inactive', '2025-06-25 17:25:05', 'SCH001'),
('POS000009', 'TR000004', 'CAT000002', 'PP', 'PP 2302', 'Inactive', '2025-06-28 14:00:10', 'SCH001'),
('POS000010', 'TR000004', 'CAT000003', 'Test', 'test', 'Inactive', '2025-06-29 00:11:19', 'SCH001'),
('POS000011', 'TR000004', 'CAT000002', 'Game Activity', 'This is our achievement', 'Active', '2025-06-30 12:53:17', 'SCH001');

-- --------------------------------------------------------

--
-- Table structure for table `post_class_link`
--

CREATE TABLE `post_class_link` (
  `postID` varchar(11) NOT NULL,
  `clID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_franchise_link`
--

CREATE TABLE `post_franchise_link` (
  `postID` varchar(11) NOT NULL,
  `frID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_program_link`
--

CREATE TABLE `post_program_link` (
  `postID` varchar(11) NOT NULL,
  `pgID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_target_audience`
--

CREATE TABLE `post_target_audience` (
  `ptaID` int(11) NOT NULL,
  `postID` varchar(11) NOT NULL,
  `targetType` varchar(20) NOT NULL,
  `targetEntityID` varchar(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `pgID` varchar(11) NOT NULL,
  `pgName` varchar(100) NOT NULL,
  `pgStatus` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`pgID`, `pgName`, `pgStatus`, `created_at`) VALUES
('PG000001', 'NCC', 'Active', '2025-06-17 11:02:19'),
('PG000002', 'HND', 'Active', '2025-06-28 21:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `schID` varchar(11) NOT NULL,
  `schName` varchar(255) NOT NULL,
  `schLogo` text NOT NULL,
  `schColor` varchar(30) NOT NULL,
  `schStatus` varchar(50) NOT NULL,
  `schCreateDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`schID`, `schName`, `schLogo`, `schColor`, `schStatus`, `schCreateDate`) VALUES
('SCH001', 'KMD', 'uploads/school_logos/SCH001_1748857423.jpg', '#0f4191', 'Active', '2025-06-02'),
('SCH002', 'RVi', 'uploads/school_logos/SCH002_1748861635.jpg', '#37eb34', 'Active', '2025-06-02');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stID` varchar(11) NOT NULL,
  `stName` varchar(100) NOT NULL,
  `stDob` varchar(100) NOT NULL,
  `stAddress` varchar(255) NOT NULL,
  `stGmail` varchar(100) NOT NULL,
  `stPassword` varchar(255) NOT NULL,
  `stProfile` text DEFAULT NULL,
  `stStatus` varchar(10) NOT NULL,
  `parID` varchar(11) NOT NULL,
  `schID` varchar(11) NOT NULL,
  `clID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stID`, `stName`, `stDob`, `stAddress`, `stGmail`, `stPassword`, `stProfile`, `stStatus`, `parID`, `schID`, `clID`) VALUES
('ST000001', 'John', '2024-09-09', 'Yangon', 'john@gmail.com', '$2y$10$Wmc3kdhEOBJZCmw4gJLLJeMJnU7aLaQYXo7id/UQQ4UTnRBOIsjOu', NULL, 'Active', 'PA000002', 'SCH001', 'CL000001');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `trID` varchar(11) NOT NULL,
  `trName` varchar(100) NOT NULL,
  `trPosition` varchar(50) NOT NULL,
  `trMail` varchar(50) NOT NULL,
  `trPassword` varchar(255) NOT NULL,
  `trStatus` varchar(10) NOT NULL,
  `trProfile` text NOT NULL,
  `schID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`trID`, `trName`, `trPosition`, `trMail`, `trPassword`, `trStatus`, `trProfile`, `schID`) VALUES
('TR000001', 'LULU', 'NCC', 'lulu@gmal.com', '$2y$10$e3msSP0h/LWIn5cOOYF1G.xQeX3qsuBSdfA2cdMk8WNXbEIQGuprW', 'Active', 'uploads/teacher_profiles/TR000001_1750158181.jpg', 'SCH001'),
('TR000002', 'Leo', 'HND', 'leo@gmail.com', '$2y$10$iScVJVL.HIVv7amvZHdq5OPh9l2x3zXStPTHOztuauVbn.MM02afe', 'Active', 'uploads/teacher_profiles/TR000002_1750634716.jpg', 'SCH001'),
('TR000003', 'James', 'LCCI', 'james@gmail.com', '$2y$10$yOQMuRh7kAaPHDwsdvYgqeCCWeh1Nu2mWVMzrCL2URaJRhpDs5BaG', 'Active', 'uploads/teacher_profiles/TR000003_1750665402.jpg', 'SCH001'),
('TR000004', 'U Hein', 'NCC Manager', 'hein@gmail.com', '$2y$10$DL.QHlU2JnV5vFO0fdvHwedOAgAzdT/HUhv2.S5ZquANKWLkMVWJO', 'Active', 'uploads/teacher_profiles/TR000004_1750833840.jpg', 'SCH001');

-- --------------------------------------------------------

--
-- Table structure for table `user_post_read_status`
--

CREATE TABLE `user_post_read_status` (
  `readID` int(11) NOT NULL,
  `userID` varchar(11) NOT NULL,
  `userType` varchar(20) NOT NULL,
  `postID` varchar(11) NOT NULL,
  `read_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_post_read_status`
--

INSERT INTO `user_post_read_status` (`readID`, `userID`, `userType`, `postID`, `read_at`) VALUES
(1, 'TR000004', 'Teacher', 'POS000006', '2025-06-28 16:16:23'),
(2, 'TR000004', 'Teacher', 'POS000007', '2025-06-28 16:46:24'),
(9, 'TR000004', 'Teacher', 'POS000011', '2025-06-29 13:11:42'),
(13, 'TR000004', 'Teacher', 'ACP000001', '2025-06-29 13:16:27'),
(14, 'ST000001', 'Student', 'POS000011', '2025-06-30 15:51:11'),
(15, 'ST000001', 'Student', 'POS000008', '2025-06-30 15:51:24'),
(16, 'ST000001', 'Student', 'ACP000003', '2025-06-30 16:23:46'),
(17, 'ST000001', 'Student', 'POS000007', '2025-06-30 17:13:19'),
(18, 'ST000001', 'Student', 'ACP000006', '2025-06-30 18:52:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`),
  ADD KEY `schID` (`schID`);

--
-- Indexes for table `all_categories_post`
--
ALTER TABLE `all_categories_post`
  ADD PRIMARY KEY (`acpID`),
  ADD KEY `trID` (`trID`),
  ADD KEY `catID` (`catID`),
  ADD KEY `target_frID` (`target_frID`),
  ADD KEY `target_pgID` (`target_pgID`),
  ADD KEY `target_clID` (`target_clID`),
  ADD KEY `fk_acp_school_id` (`schID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catID`),
  ADD KEY `school_category` (`schID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`clID`),
  ADD KEY `class_program` (`pgID`);

--
-- Indexes for table `franchise`
--
ALTER TABLE `franchise`
  ADD PRIMARY KEY (`frID`),
  ADD KEY `admin_id` (`adminID`),
  ADD KEY `school_id` (`schID`);

--
-- Indexes for table `frapro`
--
ALTER TABLE `frapro`
  ADD KEY `franchise_id` (`frID`),
  ADD KEY `program_id` (`pgID`);

--
-- Indexes for table `mainadmin`
--
ALTER TABLE `mainadmin`
  ADD PRIMARY KEY (`madminID`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`parID`),
  ADD KEY `school_parent` (`schID`);

--
-- Indexes for table `postdetail`
--
ALTER TABLE `postdetail`
  ADD PRIMARY KEY (`pdID`),
  ADD KEY `postID` (`postID`);

--
-- Indexes for table `postimg`
--
ALTER TABLE `postimg`
  ADD PRIMARY KEY (`piID`),
  ADD KEY `postID` (`postID`),
  ADD KEY `pdID` (`pdID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`),
  ADD KEY `trID` (`trID`),
  ADD KEY `catID` (`catID`),
  ADD KEY `schID` (`schID`);

--
-- Indexes for table `post_class_link`
--
ALTER TABLE `post_class_link`
  ADD PRIMARY KEY (`postID`,`clID`),
  ADD KEY `clID` (`clID`);

--
-- Indexes for table `post_franchise_link`
--
ALTER TABLE `post_franchise_link`
  ADD PRIMARY KEY (`postID`,`frID`),
  ADD KEY `frID` (`frID`);

--
-- Indexes for table `post_program_link`
--
ALTER TABLE `post_program_link`
  ADD PRIMARY KEY (`postID`,`pgID`),
  ADD KEY `pgID` (`pgID`);

--
-- Indexes for table `post_target_audience`
--
ALTER TABLE `post_target_audience`
  ADD PRIMARY KEY (`ptaID`),
  ADD UNIQUE KEY `postID` (`postID`,`targetType`,`targetEntityID`),
  ADD KEY `idx_postID` (`postID`),
  ADD KEY `idx_targetEntity` (`targetEntityID`,`targetType`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`pgID`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`schID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stID`),
  ADD KEY `student_parent` (`parID`),
  ADD KEY `student_school` (`schID`),
  ADD KEY `student_class` (`clID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`trID`),
  ADD KEY `teacher_school` (`schID`);

--
-- Indexes for table `user_post_read_status`
--
ALTER TABLE `user_post_read_status`
  ADD PRIMARY KEY (`readID`),
  ADD UNIQUE KEY `idx_unique_user_post_read` (`userID`,`userType`,`postID`),
  ADD KEY `postID` (`postID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post_target_audience`
--
ALTER TABLE `post_target_audience`
  MODIFY `ptaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_post_read_status`
--
ALTER TABLE `user_post_read_status`
  MODIFY `readID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `schID` FOREIGN KEY (`schID`) REFERENCES `school` (`schID`);

--
-- Constraints for table `all_categories_post`
--
ALTER TABLE `all_categories_post`
  ADD CONSTRAINT `all_categories_post_ibfk_1` FOREIGN KEY (`trID`) REFERENCES `teacher` (`trID`),
  ADD CONSTRAINT `all_categories_post_ibfk_2` FOREIGN KEY (`catID`) REFERENCES `category` (`catID`),
  ADD CONSTRAINT `all_categories_post_ibfk_3` FOREIGN KEY (`target_frID`) REFERENCES `franchise` (`frID`),
  ADD CONSTRAINT `all_categories_post_ibfk_4` FOREIGN KEY (`target_pgID`) REFERENCES `program` (`pgID`),
  ADD CONSTRAINT `all_categories_post_ibfk_5` FOREIGN KEY (`target_clID`) REFERENCES `class` (`clID`),
  ADD CONSTRAINT `fk_acp_school_id` FOREIGN KEY (`schID`) REFERENCES `school` (`schID`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `school_category` FOREIGN KEY (`schID`) REFERENCES `school` (`schID`);

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_program` FOREIGN KEY (`pgID`) REFERENCES `program` (`pgID`);

--
-- Constraints for table `franchise`
--
ALTER TABLE `franchise`
  ADD CONSTRAINT `admin_id` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`),
  ADD CONSTRAINT `school_id` FOREIGN KEY (`schID`) REFERENCES `school` (`schID`);

--
-- Constraints for table `frapro`
--
ALTER TABLE `frapro`
  ADD CONSTRAINT `franchise_id` FOREIGN KEY (`frID`) REFERENCES `franchise` (`frID`),
  ADD CONSTRAINT `program_id` FOREIGN KEY (`pgID`) REFERENCES `program` (`pgID`);

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `school_parent` FOREIGN KEY (`schID`) REFERENCES `school` (`schID`);

--
-- Constraints for table `postimg`
--
ALTER TABLE `postimg`
  ADD CONSTRAINT `postimg_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `posts` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postimg_ibfk_2` FOREIGN KEY (`pdID`) REFERENCES `postdetail` (`pdID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`trID`) REFERENCES `teacher` (`trID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`catID`) REFERENCES `category` (`catID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_3` FOREIGN KEY (`schID`) REFERENCES `school` (`schID`) ON UPDATE CASCADE;

--
-- Constraints for table `post_class_link`
--
ALTER TABLE `post_class_link`
  ADD CONSTRAINT `post_class_link_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `posts` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_class_link_ibfk_2` FOREIGN KEY (`clID`) REFERENCES `class` (`clID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_franchise_link`
--
ALTER TABLE `post_franchise_link`
  ADD CONSTRAINT `post_franchise_link_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `posts` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_franchise_link_ibfk_2` FOREIGN KEY (`frID`) REFERENCES `franchise` (`frID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_program_link`
--
ALTER TABLE `post_program_link`
  ADD CONSTRAINT `post_program_link_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `posts` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_program_link_ibfk_2` FOREIGN KEY (`pgID`) REFERENCES `program` (`pgID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_target_audience`
--
ALTER TABLE `post_target_audience`
  ADD CONSTRAINT `post_target_audience_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `posts` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_class` FOREIGN KEY (`clID`) REFERENCES `class` (`clID`),
  ADD CONSTRAINT `student_parent` FOREIGN KEY (`parID`) REFERENCES `parents` (`parID`),
  ADD CONSTRAINT `student_school` FOREIGN KEY (`schID`) REFERENCES `school` (`schID`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_school` FOREIGN KEY (`schID`) REFERENCES `school` (`schID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
