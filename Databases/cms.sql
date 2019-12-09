-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 07:01 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'PHP'),
(2, 'Java'),
(3, 'C++'),
(4, 'JSP'),
(5, 'C#'),
(6, 'Javascript');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 4, 'John Doe', 'johnny@gmail.com', '        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ', 'approved', '2019-12-08'),
(2, 2, 'John Doe', 'johnny@gmail.com', '        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 'approved', '2019-12-08'),
(3, 3, 'John Doe', 'johnny@gmail.com', '        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 'approved', '2019-12-08'),
(4, 4, 'John Doe', 'johnny@gmail.com', '        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 'unapproved', '2019-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(1, 1, 'This is the first post', 'Vidarshan Adithya', '2019-12-09', 'image_1.jpg', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ncy.</p>', 'PHP, JSP, Java, C#', 0, 'published'),
(2, 1, 'This is the second post-Updated twice', 'Vidarshan Adithya', '2019-12-09', 'image_5.jpg', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', 'Javascript, Java', 1, 'draft'),
(3, 3, 'This is the third post', 'Vidarshan Adithya', '2019-12-08', 'image_5.jpg', '        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ', 'C++', 1, 'published'),
(4, 1, 'This is the fourth post-Updated', 'Vidarshan Adithya', '2019-12-09', 'image_1.jpg', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using</p>', 'Javascript, Java', 2, 'published'),
(7, 2, 'Java Advanced', 'Vidarshan Adithya', '2019-12-09', 'image_5.jpg', '<p>This post is about java</p>', 'Java, Java EE', 0, 'published'),
(8, 1, 'PHP course', 'Edwin Diaz', '2019-12-09', 'image_5.jpg', '<p>This is a great course</p>', 'PHP, JSP, Java, C#', 0, 'published'),
(9, 6, 'This is a Javasript course', 'Edwin Diaz', '2019-12-09', 'image_5.jpg', '<p>Javascript is great</p>', 'PHP, JSP, Java, C#', 0, 'published'),
(10, 5, 'This is a SQL tutorial', 'Edwin Diaz', '2019-12-09', 'image_1.jpg', '<p>SQL is hard</p>', 'SQL', 0, 'published'),
(11, 5, 'Testing a new feature', 'Edwin Diaz', '2019-12-09', 'image_1.jpg', '<p>This is a test post</p>', 'C++', 0, 'published');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$Iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'Vidarshan', '12345', 'Vidarshan', 'Adithya', 'vidaaadi99@gmail.com', '', 'admin', ''),
(2, 'John', '12345', 'John', 'Doe', 'johndoe@gmail.com', '', 'admin', ''),
(3, 'anne', '12345', 'Anne', 'Marie', 'annemarie@gmail.com', '', 'subscriber', ''),
(4, 'Test2', '12345', 'Peter', 'Test', 'Test2@gmail.com', '', 'subscriber', ''),
(6, 'test3', '12345', 'Test3', 'Test', 'test@test.com', '', 'subscriber', ''),
(7, 'stevehome', '12345', 'Steven', 'Home', 'steve@gmail.com', '', 'subscriber', ''),
(8, 'smith', '12345', 'Smith', 'Jackson', 'simeth@gmail.com', '', 'admin', '$2y$10$Iusesomecrazystrings22'),
(9, 'Jane', '12345', '', '', 'jane@gmail.com', '', 'subsriber', '$2y$10$Iusesomecrazystrings22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
