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
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `sno` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`sno`, `username`, `email`, `password`, `date`) VALUES
(0, 'ish12', 'ish@yahoo.com', 'pbkdf2:sha256:260000$0iJZfWvHLBKdCBDD$57ee81e182fcc5a40b1ce56130c963a9d15d70c3da780dacf232ece28592280a', '2021-12-02 01:10:48'),
(0, 'aboli', 'aboli@gmail.com', 'pbkdf2:sha256:260000$NgLWz30PKaJwlE3U$c67f620d64defa40f3e20ca551b1e2fafe5fd9a10fbd5ec4a24138ef07a2898c', '2021-12-02 01:13:38'),
(0, 'jan5', 'janhavi@yahoo.com', 'pbkdf2:sha256:260000$ATfCkDxtofqUQDh2$36a0a1e64e30589900f345548179f60c1f295cebd1d06221b56f1c5e19773192', '2021-12-02 01:19:05'),
(0, 'nob', 'nob@123', 'pbkdf2:sha256:260000$kIasQbh1dDOt7990$a40d002009aed427c94956e8ac83fcf8ccd15717fe31d8d75a6a459699e97083', '2021-12-02 01:23:33'),
(0, 'pranita19', 'pranita191998@gmail.com', 'pbkdf2:sha256:260000$vCV9jpNbwdMiLZvk$cc896ea96289f24dc111aaa24209e69a5a2e4626c5ab0efa6150bd38f1a89aed', '2021-12-02 11:45:25'),
(0, 'aboli', 'aboli@123', 'pbkdf2:sha256:150000$XvIqWeQQ$02e701d35f1e7657ed80cbcc6c6489830fe1d499abed12e500d467259f30784e', '2021-12-02 13:20:34'),
(0, 'ashie', 'ashie@yahoo.com', 'pbkdf2:sha256:150000$T4AaI6rh$f112aa248ebda7c114f8b8efc77dbb36d88101d26d427d99dbcb50ce3759e19e', '2021-12-02 13:21:04'),
(0, 'riya123', 'riya3581@gmail.com', 'pbkdf2:sha256:150000$RReRaZQO$8e75df889b5505126c1a47b7f10acb03c024bb0bade1916a11ee7e3a288f72e8', '2021-12-02 15:22:49'),
(0, 'abolipatil', 'patil.aboli@gmail.com', 'pbkdf2:sha256:260000$0fBG7UlkkZ7Px4Mu$9a6f7e9134281b42a5be6795c7ce0cd526e1d0f445eed047f16662999ace521d', '2021-12-02 19:02:31');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
