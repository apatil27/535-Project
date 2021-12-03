-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2021 at 01:22 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mbaforum`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `username` text NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `username`, `content`, `date`) VALUES
(0, 'ish12', 'Hello, this is my first post.', '2021-12-02 01:11:27'),
(0, 'ish12', 'Did you ever stop to think, and forget to start again?\r\n', '2021-12-02 01:12:58'),
(0, 'aboli', 'And still, I rise.', '2021-12-02 01:15:21'),
(0, 'aboli', 'Strive for greatness. ', '2021-12-02 01:17:41'),
(0, 'jan5', 'Where is the line between art and not art?', '2021-12-02 01:20:32'),
(0, 'jan5', '\"Kya tumne khana khaya?\"', '2021-12-02 01:22:55'),
(0, 'nob', '\"Dor, can you please give me your gadget?\"', '2021-12-02 01:25:04'),
(0, 'pranita19', 'When was the last time you tried something new?', '2021-12-02 11:46:25'),
(0, 'pranita19', 'Hello everyone', '2021-12-02 12:27:16'),
(0, 'ashie', 'Hi, this is my second post.', '2021-12-02 13:21:33'),
(0, 'aboli', 'Hi!!!', '2021-12-02 13:24:15'),
(0, 'jan5', 'New variant found in India', '2021-12-02 13:27:12'),
(0, 'aboli', 'Is free will real or just an illusion?', '2021-12-02 14:54:48'),
(0, 'riya123', 'Hey! This is my first blog.', '2021-12-02 15:23:49'),
(0, 'abolipatil', 'Hello, this is my first post', '2021-12-02 19:03:07');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
