-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2021 at 01:45 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(2, 'hjgjhgjhgjh', 'jhghjghgh', '../gallery/604c20b81340a8.34507618.jpeg', '2021-03-12 21:17:28', NULL),
(3, '12313213', '123123123', '../gallery/604c211053f2c4.89999578.jpg', '2021-03-12 21:18:56', NULL),
(4, '12313213', '12313213', '../gallery/604c21190aa7d3.80167616.jpeg', '2021-03-12 21:19:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `profpic` varchar(50) NOT NULL DEFAULT 'images/default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`pid`, `fname`, `uname`, `profpic`) VALUES
(9, 'Alex', 'test', 'images/default.png'),
(10, 'asdfjhadsf', '123', '../profiles/605d0a10327868.77493818.jpeg'),
(11, '1234', '1234', 'images/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL COMMENT 'id for each review',
  `itemid` int(11) NOT NULL COMMENT 'id for item being reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user reviewing item',
  `title` varchar(60) NOT NULL,
  `reviewtext` text NOT NULL,
  `revdate` datetime NOT NULL,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Is there at least 1 review'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `itemid`, `uname`, `title`, `reviewtext`, `revdate`, `ratingnum`, `status`) VALUES
(1, 4, '123', 'asdafafasdf', 'adsfasdfadf', '2021-03-18 20:45:33', 3, 1),
(2, 4, '123', 'fgsfgsgdfg', 'sfgdggdgd', '2021-03-18 20:55:56', 3, 1),
(3, 4, '123', 'sfdgsgdfg', 'dfsggsfg', '2021-03-18 20:56:35', 2, 1),
(4, 4, '123', 'dafdafs', 'fasdfafd', '2021-03-18 21:17:12', 3, 1),
(5, 4, '123', 'jhghj', 'gfhgfghhf', '2021-03-18 21:26:46', 3, 1),
(6, 4, '123', 'fgsdgffg', 'fgsdfgdgsfgd', '2021-03-18 21:27:58', 3, 1),
(7, 4, '123', 'gfhghf', 'jfhgfgf', '2021-03-18 21:38:20', 4, 1),
(8, 4, '123', 'jflkjfaljsdlfkjadf', 'dafsfadfsfdf', '2021-03-18 21:39:26', 3, 1),
(9, 3, '123', '13141414', '1wdfafadfasf', '2021-03-18 21:39:35', 3, 1),
(10, 4, '123', 'ygjgjhg', ' nbvnbvv', '2021-03-18 21:42:44', 3, 1),
(11, 4, '123', 'kjhjkhkjkh', 'sgdsggsfgd', '2021-03-18 21:43:14', 3, 1),
(12, 4, '123', 'asfdadfasdf', 'dfasfdfsf', '2021-03-18 21:43:30', 5, 1),
(13, 4, '123', 'afsafdsaf', 'dsfafasdfdf', '2021-03-18 22:06:19', 5, 1),
(14, 4, '123', 'fasdfasfdsf', 'dfsfdfsf', '2021-03-18 22:06:24', 1, 1),
(15, 4, '123', 'fdfsfsfdfs', 'fsdfsfdsfdf', '2021-03-18 22:06:29', 5, 1),
(16, 4, '123', 'dgfdgfgd', 'fgdgdsf', '2021-03-18 22:06:37', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='user database for signup and signin';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `uname`, `password`, `email`) VALUES
(4, 'Alex', 'Royce', 'test', '$2y$10$tpGsiz2TUuQLK5jO/OF/PeJgssxC/iDAp7X8vy8q7wpuep2uzuaU2', '1@1.com'),
(5, 'asdfjhadsf', 'asdfasdafasdf', '123', '$2y$10$oljQVar20wDma965eXa6LulS12CIQhXtOE/c7ICWD2xl9QtSMnkbu', '123@1.com'),
(6, '1234', '1234', '1234', '$2y$10$aLiP8XnhO2pnEsLzu4NWruUEbXJAj9Fx5O56Nqr6erRzpAqVfg1tC', '1123@lak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for each review', AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
