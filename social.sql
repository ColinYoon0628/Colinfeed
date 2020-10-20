-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 20, 2020 at 11:20 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'love you', 'colin_yoon', 'jennie_kim', '2020-09-17 19:44:44', 'no', 13);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(1, 'colin_yoon', 'corona_kim'),
(2, 'jinwook_jung', 'colin_yoon');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(1, 'colin_yoon', 13),
(2, 'colin_yoon', 10),
(3, 'colin_yoon', 12),
(4, 'colin_yoon', 8),
(5, 'colin_yoon', 11),
(6, 'jennie_kim', 32),
(7, 'jennie_kim', 28),
(8, 'jennie_kim', 27);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(19, 'jennie_kim', 'colin_yoon', 'Jennie, is it working?', '2020-07-23 12:08:06', 'yes', 'yes', 'no'),
(20, 'colin_yoon', 'jennie_kim', 'checking!', '2020-07-23 13:31:55', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(2, 'jennie_kim', 'colin_yoon', 'Colin Yoon posted on your profile', 'post.php?id=12', '2020-07-24 12:47:19', 'no', 'no'),
(3, 'jennie_kim', 'colin_yoon', 'Colin Yoon posted on your profile', 'post.php?id=8', '2020-07-27 12:47:56', 'no', 'no'),
(4, 'jennie_kim', 'colin_yoon', 'Colin Yoon posted on your profile', 'post.php?id=11', '2020-08-03 11:15:13', 'no', 'no'),
(5, 'colin_yoon', 'jennie_kim', 'Jennie Kim posted on your profile', 'post.php?id=32', '2020-08-03 11:16:17', 'no', 'yes'),
(6, 'colin_yoon', 'jennie_kim', 'Jennie Kim posted on your profile', 'post.php?id=28', '2020-08-03 11:16:18', 'no', 'yes'),
(7, 'colin_yoon', 'jennie_kim', 'Jennie Kim posted on your profile', 'post.php?id=27', '2020-08-03 11:16:19', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(1, 'aaaaaaaaaaaaaa', 'colin_yoon', 'none', '2020-06-10 14:22:02', 'no', 'no', 0),
(2, 'aaaaaaaaaaaaa', 'colin_yoon', 'none', '2020-06-10 14:22:04', 'no', 'no', 0),
(3, 'line break \n\nworking?', 'colin_yoon', 'none', '2020-06-10 14:28:57', 'no', 'no', 0),
(5, 'sssssssssssssssss<br />\n<br />\naaaaaaaaaaaaaaaaa', 'colin_yoon', 'none', '2020-06-10 14:32:29', 'no', 'no', 0),
(6, 'you can do it!!!!!!!!!!!!!', 'colin_yoon', 'none', '2020-06-10 14:37:23', 'no', 'no', 0),
(7, 'sddd', 'colin_yoon', 'none', '2020-06-12 15:01:51', 'no', 'no', 0),
(8, 'Hi, Colin', 'jennie_kim', 'none', '2020-06-15 09:53:03', 'no', 'no', 1),
(9, 'Everything\'s gonna be okay!', 'jennie_kim', 'none', '2020-06-16 09:50:00', 'no', 'no', 0),
(10, 'helllllllllllllllllooooooooooo', 'jennie_kim', 'none', '2020-06-16 09:50:09', 'no', 'no', 1),
(11, '10th post', 'jennie_kim', 'none', '2020-06-16 09:50:20', 'no', 'no', 1),
(12, '11th post', 'jennie_kim', 'none', '2020-06-16 09:50:25', 'no', 'no', 1),
(13, 'it is not working why', 'jennie_kim', 'none', '2020-06-16 10:00:26', 'no', 'no', 1),
(14, 'stress', 'colin_yoon', 'none', '2020-06-16 10:00:58', 'no', 'no', 0),
(17, 'sdsdsds', 'colin_yoon', 'none', '2020-06-17 09:57:30', 'no', 'yes', 0),
(18, 'gdfdh', 'jinwook_jung', 'none', '2020-06-17 11:04:04', 'no', 'no', 0),
(21, 'please ', 'colin_yoon', 'jennie_kim', '2020-06-25 11:35:58', 'no', 'no', 0),
(27, 'sdasdsa', 'colin_yoon', 'none', '2020-07-03 11:43:48', 'no', 'yes', 1),
(28, 'sdfsd', 'colin_yoon', 'none', '2020-07-06 10:43:50', 'no', 'yes', 1),
(30, 'notification does work?', 'colin_yoon', 'jennie_kim', '2020-07-24 12:40:23', 'no', 'no', 0),
(31, 'does notification work?', 'colin_yoon', 'jennie_kim', '2020-07-24 12:41:49', 'no', 'no', 0),
(32, 'aaaaa', 'colin_yoon', 'none', '2020-09-17 21:19:56', 'no', 'yes', 0),
(33, 'aaaaa', 'colin_yoon', 'none', '2020-09-17 21:20:02', 'no', 'no', 0),
(34, 'aaaaa', 'colin_yoon', 'none', '2020-09-17 21:21:41', 'no', 'yes', 0),
(35, 'aaaaa', 'colin_yoon', 'none', '2020-09-17 21:22:50', 'no', 'yes', 0),
(36, 'aaaaa', 'colin_yoon', 'none', '2020-09-17 21:23:36', 'no', 'yes', 0),
(37, 'aaaaa', 'colin_yoon', 'none', '2020-09-17 21:28:34', 'no', 'yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(10, 'Colin', 'Yoon', 'colin_yoon', 'ykw0628@gmail.com', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '2020-05-25', 'assets/images/profile_pics/colin_yoon26b7ad0bf73c2be370fa79d3a3b22a52n.jpeg', 42, 3, 'no', ',jennie_kim,all_good,'),
(11, 'Dd', 'Ddd', 'dd_ddd', 'yyy@gds.com', '5d793fc5b00a2348c3fb9ab59e5ca98a', '2020-06-02', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',colin_yoon,'),
(12, 'Jennie', 'Kim', 'jennie_kim', 'Jennie0628@gmail.com', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '2020-06-15', 'assets/images/profile_pics/jennie_kim8d3eb009e2d9933b8234602ac98055c1n.jpeg', 14, 5, 'no', ',colin_yoon,all_good,'),
(13, 'Jinwook', 'Jung', 'jinwook_jung', 'ykw0000@gmail.com', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '2020-06-17', 'assets/images/profile_pics/defaults/head_deep_blue.png', 1, 0, 'no', ','),
(14, 'All', 'Good', 'all_good', 'ykw1111@gmail.com', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '2020-06-24', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',colin_yoon,'),
(15, 'Heungmin', 'Son', 'heungmin_son', 'ykw1234@gmail.com', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '2020-07-03', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(16, 'Corona', 'Wow', 'corona_kim', 'Corona0628@gmail.com', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '2020-08-03', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(17, 'Xcxzczxc', 'Xzcxzcxz', 'xcxzczxc_xzcxzcxz', 'Aaaaa@gmail.com', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '2020-09-17', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(18, 'Jgvgvhg', 'Fvhv', 'jgvgvhg_fvhv', 'Bbbbb@gmail.com', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '2020-09-17', 'assets/images/profile_pics/defaults/head_deep_blue.png', 1, 0, 'no', ','),
(19, 'Please', 'Pp', 'please_pp', 'Zzzzz@gmail.com', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '2020-09-17', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
