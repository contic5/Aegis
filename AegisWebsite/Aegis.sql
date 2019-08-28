-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2019 at 10:32 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Aegis`
--

-- --------------------------------------------------------

--
-- Table structure for table `Accounts`
--

CREATE TABLE IF NOT EXISTS `Accounts` (
  `ID` int(16) NOT NULL,
  `FirstName` varchar(32) NOT NULL,
  `MiddleName` varchar(32) NOT NULL,
  `LastName` varchar(32) NOT NULL,
  `Street` varchar(32) NOT NULL,
  `City` varchar(32) NOT NULL,
  `State` varchar(8) NOT NULL,
  `ZipCode` varchar(5) NOT NULL,
  `Username` varchar(32) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Usertype` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Accounts`
--

INSERT INTO `Accounts` (`ID`, `FirstName`, `MiddleName`, `LastName`, `Street`, `City`, `State`, `ZipCode`, `Username`, `Password`, `Usertype`) VALUES
(0, 'Christopher', 'Joseph', 'Conti', '12 Camp Bal Place', 'Little Falls', 'NJ', '', 'cjcuser', '56c5f555b27978391ee26e2fb95c2482', 'Admin'),
(1, 'Christopher', 'Joseph', 'Conti', '12 Camp Bal Place', 'Little Falls', 'NJ', '07424', 'cjcuser2', '56c5f555b27978391ee26e2fb95c2482', 'Banned'),
(2, 'Kevin', '', 'Defendre', '1 Normal Ave', 'Montclair', 'NJ', '07043', 'kevind', '5f4dcc3b5aa765d61d8327deb882cf99', 'Admin'),
(3, 'Daniela', '', 'Meneses', '1 Normal Ave', 'Montclair', 'NJ', '07043', 'danielam', '5f4dcc3b5aa765d61d8327deb882cf99', 'Admin'),
(4, 'Marcos', '', 'Rodriguez', '1 Normal Ave', 'Montclair', 'NJ', '07043', 'marcosr', '5f4dcc3b5aa765d61d8327deb882cf99', 'Admin'),
(5, 'Christopher', 'Joseph', 'Conti', '12 Camp Bal Place', 'Little Falls', 'NJ', '07424', 'cjc', '5f4dcc3b5aa765d61d8327deb882cf99', 'Admin'),
(6, 'Christopher', 'Joseph', 'Conti', '12 Camp Bal Place', 'Little Falls', 'NJ', '07424', 'cjcuser3', '56c5f555b27978391ee26e2fb95c2482', 'Basic');

-- --------------------------------------------------------

--
-- Table structure for table `CourseMaterial`
--

CREATE TABLE IF NOT EXISTS `CourseMaterial` (
`ID` int(16) NOT NULL,
  `CourseName` varchar(64) NOT NULL,
  `FileName` varchar(64) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `CourseMaterial`
--

INSERT INTO `CourseMaterial` (`ID`, `CourseName`, `FileName`) VALUES
(4, 'starter_course', 'file1.txt'),
(5, 'starter_course', 'rocky.jpeg'),
(6, 'second_course', 'Montclair-State-Logo.jpg'),
(7, 'second_course', 'file2.txt'),
(8, 'third_course', 'file3.txt'),
(9, 'third_course', 'image3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE IF NOT EXISTS `Courses` (
`ID` int(16) NOT NULL,
  `CourseName` varchar(64) NOT NULL,
  `FolderName` varchar(64) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`ID`, `CourseName`, `FolderName`) VALUES
(3, 'Starter Course', 'starter_course'),
(4, 'Second Course', 'second_course'),
(5, 'Third Course', 'third_course'),
(6, 'Testing', 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE IF NOT EXISTS `Events` (
`ID` int(16) NOT NULL,
  `Username` varchar(32) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `EventDate` date NOT NULL,
  `EventTime` time NOT NULL,
  `RepeatRate` int(16) NOT NULL,
  `RepeatCount` int(16) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `Events`
--

INSERT INTO `Events` (`ID`, `Username`, `Name`, `EventDate`, `EventTime`, `RepeatRate`, `RepeatCount`) VALUES
(6, 'cjc', 'New Event', '2019-04-03', '19:53:19', 0, 0),
(7, 'cjc', 'Reginald', '2019-04-03', '20:25:20', 7, 4),
(8, 'cjc', 'Check work', '2019-04-09', '09:20:18', 0, 0),
(9, 'cjc', 'Working''s', '2019-04-09', '10:58:02', 0, 0),
(10, 'cjcuser', 'New Event', '2019-05-02', '13:41:25', 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Forums`
--

CREATE TABLE IF NOT EXISTS `Forums` (
`ID` int(16) NOT NULL,
  `ForumName` varchar(64) NOT NULL,
  `ForumDescription` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Forums`
--

INSERT INTO `Forums` (`ID`, `ForumName`, `ForumDescription`) VALUES
(1, 'General', 'This forum is for general discussions related to finding a career'),
(2, 'Education', 'This forum is specifically for questions about education.'),
(3, 'Other', 'This forum is for more casual communication and discussing things that do not fall into other topics.');

-- --------------------------------------------------------

--
-- Table structure for table `Goals`
--

CREATE TABLE IF NOT EXISTS `Goals` (
`ID` int(16) NOT NULL,
  `Username` varchar(32) NOT NULL,
  `GoalName` varchar(60) NOT NULL,
  `GoalText` text NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `Goals`
--

INSERT INTO `Goals` (`ID`, `Username`, `GoalName`, `GoalText`, `StartDate`, `EndDate`) VALUES
(1, 'cjc', 'Sample', 'Test', '2019-04-08', '2019-05-01'),
(7, 'cjc', 'work', '&quot;&quot;&quot; see if quotes work', '2019-04-09', '2019-04-09'),
(8, 'cjc', 'Work on Aegis'' primary features', 'It will be done', '2019-04-09', '2019-04-09'),
(11, 'cjcuser', 'RATS', 'k', '2019-05-02', '2019-05-22'),
(12, 'cjcuser', 'AYO', 'ayomamama', '2019-05-02', '2019-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `Posts`
--

CREATE TABLE IF NOT EXISTS `Posts` (
`ID` int(16) NOT NULL,
  `TopicID` int(16) NOT NULL,
  `Username` varchar(64) NOT NULL,
  `PostText` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=323 ;

--
-- Dumping data for table `Posts`
--

INSERT INTO `Posts` (`ID`, `TopicID`, `Username`, `PostText`) VALUES
(1, 1, 'cjcuser', 'I prepare for an exam by going over flashcards mainly and rereading the slides? It works ok. What works for you?'),
(2, 1, 'cjcuser2', 'I usually repeat the questions in the book and I think that helps me a lot.'),
(5, 3, 'cjcuser2', 'I would like to thank spectrum works for all the help they have given me throughout these years and I would highly recommend their services.'),
(11, 4, 'cjcuser', 'Here is my next post'),
(115, 5, 'cjcuser', 'CAFFINE'),
(216, 0, 'cjcuser', 'Testing high number of posts'),
(217, 0, 'cjcuser', 'Post Number 1'),
(218, 0, 'cjcuser', 'Post Number 2'),
(219, 0, 'cjcuser', 'Post Number 3'),
(220, 0, 'cjcuser', 'Post Number 4'),
(221, 0, 'cjcuser', 'Post Number 5'),
(222, 0, 'cjcuser', 'Post Number 6'),
(223, 0, 'cjcuser', 'Post Number 7'),
(224, 0, 'cjcuser', 'Post Number 8'),
(225, 0, 'cjcuser', 'Post Number 9'),
(226, 0, 'cjcuser', 'Post Number 10'),
(227, 0, 'cjcuser', 'Post Number 11'),
(228, 0, 'cjcuser', 'Post Number 12'),
(229, 0, 'cjcuser', 'Post Number 13'),
(230, 0, 'cjcuser', 'Post Number 14'),
(231, 0, 'cjcuser', 'Post Number 15'),
(232, 0, 'cjcuser', 'Post Number 16'),
(233, 0, 'cjcuser', 'Post Number 17'),
(234, 0, 'cjcuser', 'Post Number 18'),
(235, 0, 'cjcuser', 'Post Number 19'),
(236, 0, 'cjcuser', 'Post Number 20'),
(237, 0, 'cjcuser', 'Post Number 21'),
(238, 0, 'cjcuser', 'Post Number 22'),
(239, 0, 'cjcuser', 'Post Number 23'),
(240, 0, 'cjcuser', 'Post Number 24'),
(241, 0, 'cjcuser', 'Post Number 25'),
(242, 0, 'cjcuser', 'Post Number 26'),
(243, 0, 'cjcuser', 'Post Number 27'),
(244, 0, 'cjcuser', 'Post Number 28'),
(245, 0, 'cjcuser', 'Post Number 29'),
(246, 0, 'cjcuser', 'Post Number 30'),
(247, 0, 'cjcuser', 'Post Number 31'),
(248, 0, 'cjcuser', 'Post Number 32'),
(249, 0, 'cjcuser', 'Post Number 33'),
(250, 0, 'cjcuser', 'Post Number 34'),
(251, 0, 'cjcuser', 'Post Number 35'),
(252, 0, 'cjcuser', 'Post Number 36'),
(253, 0, 'cjcuser', 'Post Number 37'),
(254, 0, 'cjcuser', 'Post Number 38'),
(255, 0, 'cjcuser', 'Post Number 39'),
(256, 0, 'cjcuser', 'Post Number 40'),
(257, 0, 'cjcuser', 'Post Number 41'),
(258, 0, 'cjcuser', 'Post Number 42'),
(259, 0, 'cjcuser', 'Post Number 43'),
(260, 0, 'cjcuser', 'Post Number 44'),
(261, 0, 'cjcuser', 'Post Number 45'),
(262, 0, 'cjcuser', 'Post Number 46'),
(263, 0, 'cjcuser', 'Post Number 47'),
(264, 0, 'cjcuser', 'Post Number 48'),
(265, 0, 'cjcuser', 'Post Number 49'),
(266, 0, 'cjcuser', 'Post Number 50'),
(267, 0, 'cjcuser', 'Post Number 51'),
(268, 0, 'cjcuser', 'Post Number 52'),
(269, 0, 'cjcuser', 'Post Number 53'),
(270, 0, 'cjcuser', 'Post Number 54'),
(271, 0, 'cjcuser', 'Post Number 55'),
(272, 0, 'cjcuser', 'Post Number 56'),
(273, 0, 'cjcuser', 'Post Number 57'),
(274, 0, 'cjcuser', 'Post Number 58'),
(275, 0, 'cjcuser', 'Post Number 59'),
(276, 0, 'cjcuser', 'Post Number 60'),
(277, 0, 'cjcuser', 'Post Number 61'),
(278, 0, 'cjcuser', 'Post Number 62'),
(279, 0, 'cjcuser', 'Post Number 63'),
(280, 0, 'cjcuser', 'Post Number 64'),
(281, 0, 'cjcuser', 'Post Number 65'),
(282, 0, 'cjcuser', 'Post Number 66'),
(283, 0, 'cjcuser', 'Post Number 67'),
(284, 0, 'cjcuser', 'Post Number 68'),
(285, 0, 'cjcuser', 'Post Number 69'),
(286, 0, 'cjcuser', 'Post Number 70'),
(287, 0, 'cjcuser', 'Post Number 71'),
(288, 0, 'cjcuser', 'Post Number 72'),
(289, 0, 'cjcuser', 'Post Number 73'),
(290, 0, 'cjcuser', 'Post Number 74'),
(291, 0, 'cjcuser', 'Post Number 75'),
(292, 0, 'cjcuser', 'Post Number 76'),
(293, 0, 'cjcuser', 'Post Number 77'),
(294, 0, 'cjcuser', 'Post Number 78'),
(295, 0, 'cjcuser', 'Post Number 79'),
(296, 0, 'cjcuser', 'Post Number 80'),
(297, 0, 'cjcuser', 'Post Number 81'),
(298, 0, 'cjcuser', 'Post Number 82'),
(299, 0, 'cjcuser', 'Post Number 83'),
(300, 0, 'cjcuser', 'Post Number 84'),
(301, 0, 'cjcuser', 'Post Number 85'),
(302, 0, 'cjcuser', 'Post Number 86'),
(303, 0, 'cjcuser', 'Post Number 87'),
(304, 0, 'cjcuser', 'Post Number 88'),
(305, 0, 'cjcuser', 'Post Number 89'),
(306, 0, 'cjcuser', 'Post Number 90'),
(307, 0, 'cjcuser', 'Post Number 91'),
(308, 0, 'cjcuser', 'Post Number 92'),
(309, 0, 'cjcuser', 'Post Number 93'),
(310, 0, 'cjcuser', 'Post Number 94'),
(311, 0, 'cjcuser', 'Post Number 95'),
(312, 0, 'cjcuser', 'Post Number 96'),
(313, 0, 'cjcuser', 'Post Number 97'),
(314, 0, 'cjcuser', 'Post Number 98'),
(315, 0, 'cjcuser', 'Post Number 99'),
(316, 0, 'cjcuser', 'Post Number 100'),
(318, 2, 'cjcuser', 'Work'),
(319, 2, 'cjcuser', 'Please'),
(320, 2, 'cjcuser3', 'It''s working'),
(322, 6, 'cjcuser', 'Cofee');

-- --------------------------------------------------------

--
-- Table structure for table `ReceivedMessages`
--

CREATE TABLE IF NOT EXISTS `ReceivedMessages` (
`ID` int(32) NOT NULL,
  `Sender` varchar(32) NOT NULL,
  `Receiver` varchar(32) NOT NULL,
  `Subject` varchar(32) NOT NULL,
  `MessageText` text NOT NULL,
  `MessageDate` date NOT NULL,
  `MessageTime` time NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ReceivedMessages`
--

INSERT INTO `ReceivedMessages` (`ID`, `Sender`, `Receiver`, `Subject`, `MessageText`, `MessageDate`, `MessageTime`) VALUES
(4, 'cjcuser', 'cjcuser2', 'Testing sending message', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus molestie felis eu tempor fermentum. Ut sed scelerisque ante. Etiam non odio ut est facilisis facilisis sed eget ex. Aenean aliquam malesuada felis quis malesuada. Nullam egestas dapibus sapien eu eleifend. Donec convallis risus nec dignissim cursus. Proin vulputate facilisis facilisis. Praesent vehicula sapien et ultrices tristique. Fusce id hendrerit nisi, sed condimentum magna. Duis imperdiet, purus at aliquet hendrerit, ipsum lacus rutrum est, nec scelerisque ligula elit tempor tortor. Mauris metus mi, maximus eget turpis a, maximus posuere enim. Donec fringilla velit sem, vitae efficitur purus ornare nec. Sed tristique pellentesque tortor.\r\n\r\n', '2019-04-24', '04:41:01'),
(5, 'cjcuser', 'cjcuser', 'Testing sending message', 'WORK PLEASE!', '2019-04-24', '04:44:39'),
(6, 'cjcuser', 'cjcuser', 'Testing sending message', 'Hello', '2019-04-24', '09:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `SentMessages`
--

CREATE TABLE IF NOT EXISTS `SentMessages` (
`ID` int(32) NOT NULL,
  `Sender` varchar(32) NOT NULL,
  `Receiver` varchar(32) NOT NULL,
  `Subject` varchar(32) NOT NULL,
  `MessageText` text NOT NULL,
  `MessageDate` date NOT NULL,
  `MessageTime` time NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `SentMessages`
--

INSERT INTO `SentMessages` (`ID`, `Sender`, `Receiver`, `Subject`, `MessageText`, `MessageDate`, `MessageTime`) VALUES
(4, 'cjcuser', 'cjcuser2', 'Testing sending message', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus molestie felis eu tempor fermentum. Ut sed scelerisque ante. Etiam non odio ut est facilisis facilisis sed eget ex. Aenean aliquam malesuada felis quis malesuada. Nullam egestas dapibus sapien eu eleifend. Donec convallis risus nec dignissim cursus. Proin vulputate facilisis facilisis. Praesent vehicula sapien et ultrices tristique. Fusce id hendrerit nisi, sed condimentum magna. Duis imperdiet, purus at aliquet hendrerit, ipsum lacus rutrum est, nec scelerisque ligula elit tempor tortor. Mauris metus mi, maximus eget turpis a, maximus posuere enim. Donec fringilla velit sem, vitae efficitur purus ornare nec. Sed tristique pellentesque tortor.\r\n\r\n', '2019-04-24', '04:41:01'),
(5, 'cjcuser', 'cjcuser', 'Testing sending message', 'WORK PLEASE!', '2019-04-24', '04:44:39'),
(6, 'cjcuser', 'cjcuser', 'Testing sending message', 'Hello', '2019-04-24', '09:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `Surveys`
--

CREATE TABLE IF NOT EXISTS `Surveys` (
`ID` int(16) NOT NULL,
  `PartnerName` varchar(32) NOT NULL,
  `ParticipantName` varchar(32) NOT NULL,
  `Satisfaction` int(4) NOT NULL,
  `HardWorking` int(4) NOT NULL,
  `Focus` int(4) NOT NULL,
  `Improvement` int(4) NOT NULL,
  `Positive` text NOT NULL,
  `WhereToImprove` text NOT NULL,
  `Other` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `Surveys`
--

INSERT INTO `Surveys` (`ID`, `PartnerName`, `ParticipantName`, `Satisfaction`, `HardWorking`, `Focus`, `Improvement`, `Positive`, `WhereToImprove`, `Other`) VALUES
(2, 'Big Smoke', 'CJ', 10, 10, 10, 10, 'He''s not a busta', 'go', 'goooooo'),
(3, 'Sample Partner', 'Sample Participant', 9, 1, 10, 1, 'Positive', 'WhereToImprove', 'Other'),
(4, 'Sample Partner', 'Sample Participant', 7, 8, 9, 1, 'Positive', 'WhereToImprove', 'Other'),
(5, 'Sample Partner', 'Sample Participant', 1, 5, 5, 4, 'Positive', 'WhereToImprove', 'Other'),
(6, 'Sample Partner', 'Sample Participant', 3, 4, 9, 2, 'Positive', 'WhereToImprove', 'Other'),
(7, 'Sample Partner', 'Sample Participant', 1, 1, 7, 1, 'Positive', 'WhereToImprove', 'Other'),
(8, 'Sample Partner', 'Sample Participant', 3, 10, 5, 5, 'Positive', 'WhereToImprove', 'Other'),
(9, 'Sample Partner', 'Sample Participant', 6, 4, 7, 6, 'Positive', 'WhereToImprove', 'Other'),
(10, 'Sample Partner', 'Sample Participant', 8, 6, 4, 6, 'Positive', 'WhereToImprove', 'Other'),
(11, 'Sample Partner', 'Sample Participant', 7, 3, 7, 3, 'Positive', 'WhereToImprove', 'Other'),
(12, 'Sample Partner', 'Sample Participant', 1, 5, 3, 1, 'Positive', 'WhereToImprove', 'Other'),
(13, 'Sample Partner', 'Sample Participant', 10, 8, 4, 2, 'Positive', 'WhereToImprove', 'Other'),
(14, 'Sample Partner', 'Sample Participant', 2, 2, 4, 2, 'Positive', 'WhereToImprove', 'Other'),
(15, 'Sample Partner', 'Sample Participant', 3, 10, 3, 5, 'Positive', 'WhereToImprove', 'Other'),
(16, 'Sample Partner', 'Sample Participant', 10, 7, 10, 5, 'Positive', 'WhereToImprove', 'Other'),
(17, 'Sample Partner', 'Sample Participant', 1, 7, 1, 8, 'Positive', 'WhereToImprove', 'Other'),
(18, 'Sample Partner', 'Sample Participant', 2, 5, 4, 9, 'Positive', 'WhereToImprove', 'Other'),
(19, 'Sample Partner', 'Sample Participant', 8, 1, 1, 8, 'Positive', 'WhereToImprove', 'Other'),
(20, 'Sample Partner', 'Sample Participant', 6, 4, 8, 5, 'Positive', 'WhereToImprove', 'Other'),
(21, 'Sample Partner', 'Sample Participant', 2, 2, 7, 3, 'Positive', 'WhereToImprove', 'Other'),
(22, 'Sample Partner', 'Sample Participant', 4, 1, 4, 6, 'Positive', 'WhereToImprove', 'Other'),
(23, 'Sample Partner', 'Sample Participant', 10, 6, 1, 10, 'Positive', 'WhereToImprove', 'Other'),
(24, 'Sample Partner', 'Sample Participant', 3, 1, 5, 3, 'Positive', 'WhereToImprove', 'Other'),
(25, 'Sample Partner', 'Sample Participant', 7, 5, 1, 9, 'Positive', 'WhereToImprove', 'Other'),
(26, 'Sample Partner', 'Sample Participant', 9, 5, 7, 7, 'Positive', 'WhereToImprove', 'Other'),
(27, 'Sample Partner', 'Sample Participant', 6, 7, 4, 1, 'Positive', 'WhereToImprove', 'Other'),
(28, 'Sample Partner', 'Sample Participant', 1, 2, 6, 2, 'Positive', 'WhereToImprove', 'Other'),
(29, 'Sample Partner', 'Sample Participant', 3, 3, 4, 6, 'Positive', 'WhereToImprove', 'Other'),
(30, 'Sample Partner', 'Sample Participant', 3, 8, 2, 3, 'Positive', 'WhereToImprove', 'Other'),
(31, 'Sample Partner', 'Sample Participant', 3, 2, 2, 6, 'Positive', 'WhereToImprove', 'Other'),
(32, 'Sample Partner', 'Sample Participant', 3, 6, 9, 9, 'Positive', 'WhereToImprove', 'Other'),
(33, 'Sample Partner', 'Sample Participant', 1, 10, 7, 10, 'Positive', 'WhereToImprove', 'Other'),
(34, 'Sample Partner', 'Sample Participant', 4, 3, 6, 10, 'Positive', 'WhereToImprove', 'Other'),
(35, 'Sample Partner', 'Sample Participant', 10, 9, 10, 10, 'Positive', 'WhereToImprove', 'Other'),
(36, 'Sample Partner', 'Sample Participant', 10, 5, 2, 3, 'Positive', 'WhereToImprove', 'Other'),
(37, 'Sample Partner', 'Sample Participant', 7, 6, 8, 10, 'Positive', 'WhereToImprove', 'Other'),
(38, 'Sample Partner', 'Sample Participant', 3, 10, 2, 5, 'Positive', 'WhereToImprove', 'Other'),
(39, 'Sample Partner', 'Sample Participant', 2, 3, 1, 4, 'Positive', 'WhereToImprove', 'Other'),
(40, 'Sample Partner', 'Sample Participant', 9, 9, 2, 9, 'Positive', 'WhereToImprove', 'Other'),
(41, 'Sample Partner', 'Sample Participant', 8, 8, 8, 2, 'Positive', 'WhereToImprove', 'Other'),
(42, 'Sample Partner', 'Sample Participant', 10, 3, 1, 10, 'Positive', 'WhereToImprove', 'Other'),
(43, 'Sample Partner', 'Sample Participant', 2, 10, 10, 1, 'Positive', 'WhereToImprove', 'Other'),
(44, 'Sample Partner', 'Sample Participant', 5, 1, 3, 2, 'Positive', 'WhereToImprove', 'Other'),
(45, 'Sample Partner', 'Sample Participant', 6, 1, 1, 8, 'Positive', 'WhereToImprove', 'Other'),
(46, 'Sample Partner', 'Sample Participant', 10, 2, 3, 1, 'Positive', 'WhereToImprove', 'Other'),
(47, 'Sample Partner', 'Sample Participant', 5, 3, 4, 3, 'Positive', 'WhereToImprove', 'Other'),
(48, 'Sample Partner', 'Sample Participant', 2, 6, 1, 9, 'Positive', 'WhereToImprove', 'Other'),
(49, 'Sample Partner', 'Sample Participant', 3, 9, 10, 3, 'Positive', 'WhereToImprove', 'Other'),
(50, 'Sample Partner', 'Sample Participant', 2, 1, 2, 3, 'Positive', 'WhereToImprove', 'Other'),
(51, 'Sample Partner', 'Sample Participant', 10, 1, 3, 5, 'Positive', 'WhereToImprove', 'Other'),
(52, 'Sample Partner', 'Sample Participant', 2, 6, 6, 8, 'Positive', 'WhereToImprove', 'Other'),
(53, 'Sample Partner', 'Sample Participant', 6, 6, 6, 6, 'Positive', 'WhereToImprove', 'Other'),
(54, 'Sample Partner', 'Sample Participant', 8, 8, 7, 2, 'Positive', 'WhereToImprove', 'Other'),
(55, 'Sample Partner', 'Sample Participant', 1, 1, 5, 2, 'Positive', 'WhereToImprove', 'Other'),
(56, 'Sample Partner', 'Sample Participant', 6, 5, 1, 8, 'Positive', 'WhereToImprove', 'Other'),
(57, 'Sample Partner', 'Sample Participant', 4, 10, 1, 5, 'Positive', 'WhereToImprove', 'Other'),
(58, 'Sample Partner', 'Sample Participant', 10, 2, 7, 10, 'Positive', 'WhereToImprove', 'Other'),
(59, 'Sample Partner', 'Sample Participant', 3, 10, 4, 5, 'Positive', 'WhereToImprove', 'Other'),
(60, 'Sample Partner', 'Sample Participant', 5, 9, 2, 1, 'Positive', 'WhereToImprove', 'Other'),
(61, 'Sample Partner', 'Sample Participant', 5, 8, 7, 2, 'Positive', 'WhereToImprove', 'Other'),
(62, 'Sample Partner', 'Sample Participant', 5, 3, 3, 6, 'Positive', 'WhereToImprove', 'Other'),
(63, 'Sample Partner', 'Sample Participant', 3, 7, 8, 8, 'Positive', 'WhereToImprove', 'Other'),
(64, 'Sample Partner', 'Sample Participant', 2, 8, 6, 6, 'Positive', 'WhereToImprove', 'Other'),
(65, 'Sample Partner', 'Sample Participant', 8, 6, 10, 7, 'Positive', 'WhereToImprove', 'Other'),
(66, 'Sample Partner', 'Sample Participant', 8, 7, 7, 1, 'Positive', 'WhereToImprove', 'Other'),
(67, 'Sample Partner', 'Sample Participant', 6, 1, 5, 10, 'Positive', 'WhereToImprove', 'Other'),
(68, 'Sample Partner', 'Sample Participant', 9, 7, 1, 4, 'Positive', 'WhereToImprove', 'Other'),
(69, 'Sample Partner', 'Sample Participant', 4, 7, 5, 9, 'Positive', 'WhereToImprove', 'Other'),
(70, 'Sample Partner', 'Sample Participant', 10, 8, 4, 3, 'Positive', 'WhereToImprove', 'Other'),
(71, 'Sample Partner', 'Sample Participant', 5, 2, 10, 7, 'Positive', 'WhereToImprove', 'Other'),
(72, 'Sample Partner', 'Sample Participant', 9, 6, 2, 6, 'Positive', 'WhereToImprove', 'Other'),
(73, 'Sample Partner', 'Sample Participant', 1, 1, 3, 8, 'Positive', 'WhereToImprove', 'Other'),
(74, 'Sample Partner', 'Sample Participant', 7, 9, 8, 3, 'Positive', 'WhereToImprove', 'Other'),
(75, 'Sample Partner', 'Sample Participant', 9, 3, 3, 8, 'Positive', 'WhereToImprove', 'Other'),
(76, 'Sample Partner', 'Sample Participant', 9, 3, 1, 3, 'Positive', 'WhereToImprove', 'Other'),
(77, 'Sample Partner', 'Sample Participant', 10, 6, 1, 10, 'Positive', 'WhereToImprove', 'Other'),
(78, 'Sample Partner', 'Sample Participant', 3, 5, 2, 8, 'Positive', 'WhereToImprove', 'Other'),
(79, 'Sample Partner', 'Sample Participant', 6, 1, 4, 5, 'Positive', 'WhereToImprove', 'Other'),
(80, 'Sample Partner', 'Sample Participant', 7, 5, 10, 7, 'Positive', 'WhereToImprove', 'Other'),
(81, 'Sample Partner', 'Sample Participant', 6, 2, 5, 3, 'Positive', 'WhereToImprove', 'Other'),
(82, 'Sample Partner', 'Sample Participant', 1, 3, 5, 10, 'Positive', 'WhereToImprove', 'Other'),
(83, 'Sample Partner', 'Sample Participant', 5, 7, 7, 4, 'Positive', 'WhereToImprove', 'Other'),
(84, 'Sample Partner', 'Sample Participant', 10, 8, 7, 9, 'Positive', 'WhereToImprove', 'Other'),
(85, 'Sample Partner', 'Sample Participant', 4, 7, 8, 7, 'Positive', 'WhereToImprove', 'Other'),
(86, 'Sample Partner', 'Sample Participant', 2, 10, 4, 8, 'Positive', 'WhereToImprove', 'Other'),
(87, 'Sample Partner', 'Sample Participant', 1, 7, 2, 7, 'Positive', 'WhereToImprove', 'Other'),
(88, 'Sample Partner', 'Sample Participant', 2, 2, 3, 8, 'Positive', 'WhereToImprove', 'Other'),
(89, 'Sample Partner', 'Sample Participant', 4, 8, 10, 4, 'Positive', 'WhereToImprove', 'Other'),
(90, 'Sample Partner', 'Sample Participant', 10, 5, 3, 5, 'Positive', 'WhereToImprove', 'Other'),
(91, 'Sample Partner', 'Sample Participant', 1, 10, 9, 1, 'Positive', 'WhereToImprove', 'Other'),
(92, 'Sample Partner', 'Sample Participant', 7, 5, 10, 10, 'Positive', 'WhereToImprove', 'Other'),
(93, 'Sample Partner', 'Sample Participant', 2, 8, 7, 4, 'Positive', 'WhereToImprove', 'Other'),
(94, 'Sample Partner', 'Sample Participant', 7, 10, 2, 7, 'Positive', 'WhereToImprove', 'Other'),
(95, 'Sample Partner', 'Sample Participant', 7, 3, 3, 8, 'Positive', 'WhereToImprove', 'Other'),
(96, 'Sample Partner', 'Sample Participant', 5, 6, 6, 8, 'Positive', 'WhereToImprove', 'Other'),
(97, 'Sample Partner', 'Sample Participant', 3, 5, 1, 3, 'Positive', 'WhereToImprove', 'Other'),
(98, 'Sample Partner', 'Sample Participant', 9, 3, 8, 10, 'Positive', 'WhereToImprove', 'Other'),
(99, 'Sample Partner', 'Sample Participant', 3, 6, 1, 9, 'Positive', 'WhereToImprove', 'Other'),
(100, 'Sample Partner', 'Sample Participant', 1, 10, 9, 3, 'Positive', 'WhereToImprove', 'Other'),
(101, 'Sample Partner', 'Sample Participant', 7, 6, 6, 3, 'Positive', 'WhereToImprove', 'Other'),
(102, 'Sample Partner', 'Sample Participant', 5, 7, 10, 1, 'Positive', 'WhereToImprove', 'Other'),
(103, 'testpartner', 'testparticipant', 10, 10, 10, 10, 'They worked hard.', 'They have to get faster.', 'This is for testing only.'),
(104, 'testpartner', 'testparticipant', 10, 10, 10, 10, 'Good', 'good', 'go'),
(105, 'testpartner', 'testparticipant', 10, 10, 10, 10, 'g', 'd', 'e');

-- --------------------------------------------------------

--
-- Table structure for table `Topics`
--

CREATE TABLE IF NOT EXISTS `Topics` (
  `ID` int(16) NOT NULL,
  `TopicName` varchar(64) NOT NULL,
  `ForumName` varchar(64) NOT NULL,
  `Username` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Topics`
--

INSERT INTO `Topics` (`ID`, `TopicName`, `ForumName`, `Username`) VALUES
(0, 'Test High Number of Posts', 'General', 'cjcuser'),
(1, 'How to prepare for an exam?', 'Education', 'cjcuser'),
(2, 'Testing', 'Other', 'cjcuser'),
(3, 'Thank you Spectrum Works', 'General', 'cjcuser2'),
(4, 'Another Topic', 'General', 'cjcuser'),
(5, 'CAFFINE', 'General', 'cjcuser'),
(6, 'CAFFINE', 'General', 'cjcuser');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Accounts`
--
ALTER TABLE `Accounts`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `CourseMaterial`
--
ALTER TABLE `CourseMaterial`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Courses`
--
ALTER TABLE `Courses`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Events`
--
ALTER TABLE `Events`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Forums`
--
ALTER TABLE `Forums`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Goals`
--
ALTER TABLE `Goals`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Posts`
--
ALTER TABLE `Posts`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ReceivedMessages`
--
ALTER TABLE `ReceivedMessages`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SentMessages`
--
ALTER TABLE `SentMessages`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Surveys`
--
ALTER TABLE `Surveys`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Topics`
--
ALTER TABLE `Topics`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CourseMaterial`
--
ALTER TABLE `CourseMaterial`
MODIFY `ID` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Courses`
--
ALTER TABLE `Courses`
MODIFY `ID` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Events`
--
ALTER TABLE `Events`
MODIFY `ID` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Forums`
--
ALTER TABLE `Forums`
MODIFY `ID` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Goals`
--
ALTER TABLE `Goals`
MODIFY `ID` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Posts`
--
ALTER TABLE `Posts`
MODIFY `ID` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=323;
--
-- AUTO_INCREMENT for table `ReceivedMessages`
--
ALTER TABLE `ReceivedMessages`
MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `SentMessages`
--
ALTER TABLE `SentMessages`
MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Surveys`
--
ALTER TABLE `Surveys`
MODIFY `ID` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
