-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2022 at 01:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie review`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `name` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `sl` int(100) NOT NULL,
  `url` varchar(250) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`name`, `year`, `rating`, `genre`, `sl`, `url`, `language`) VALUES
('cobra', '2022-08-31', 0, 'Thriller', 34, 'https://www.cinejosh.com/newsimg/newsmainimg/vikram-cobra-movie-telugu-trailer-released_b_2608220739.jpg', 'telugu'),
('vikram', '2022-06-03', 0, 'action', 35, 'https://upload.wikimedia.org/wikipedia/en/9/93/Vikram_2022_poster.jpg', 'tamil'),
('lal singh chaddha', '2022-08-11', 0, 'comedy-Drama', 36, 'https://m.media-amazon.com/images/M/MV5BMTY4YjFhMzUtMWIxMC00NDI2LTgxOGYtMDM1ZGQ1ZDUxZTE0XkEyXkFqcGdeQXVyMTUzOTcyODA5._V1_.jpg', 'Hindi'),
('Karthikeya-2', '2022-08-03', 0, 'Mythology', 38, 'https://akamaividz2.zee5.com/image/upload/w_504,h_756,c_scale,f_webp,q_auto:eco/resources/0-0-1z5227562/portrait/1920x7705cdbb5146bd5414b8bf237d9a97d99e8.jpg', 'Telugu'),
('Sita ramam', '2022-08-05', 0, 'Drama', 40, 'https://img.etimg.com/thumb/width-1200,height-900,imgsize-38334,resizemode-1,msid-94028793/magazines/panache/buzz/sita-ramam-ott-release-heres-when-and-where-to-watch.jpg', 'Telugu'),
('Thiruchitrambalam', '2022-02-14', 0, 'Comedy-drama', 41, 'https://m.media-amazon.com/images/M/MV5BYWI5MjZiMmUtZWE3NC00ZDYxLTg2MTYtZjIzMDYzZDgzNDMyXkEyXkFqcGdeQXVyMTQyMTMwOTk0._V1_.jpg', 'Tamil');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `sl` int(10) NOT NULL,
  `movie_id` int(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `user_role` int(100) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`sl`, `movie_id`, `user_id`, `user_role`, `rating`, `value`) VALUES
(4, 2, 'admin@gmail.com', 1, 9, 'assasa'),
(5, 1, 'ghouse@gmail.com', 0, 5, 'saaddfadf'),
(6, 33, 'ghouse@gmail.com', 0, 5, 'adaadf'),
(10, 9, 'raju@gmail.com', 0, 6, 'good movie'),
(18, 2, 'raju@gmail.com', 0, 7, 'very good movie'),
(24, 1, 'raju@gmail.com', 0, 8, 'good'),
(26, 33, 'raju@gmail.com', 2, 8, 'good movie'),
(27, 1, 'mohankumarsvcet@gmail.com', 0, 9, 'good movie');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sl` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sl`, `name`, `email`, `password`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 1),
(8, 'raju', 'raju@gmail.com', '123', 2),
(9, 'Ghouse', 'ghouse@gmail.com', '123', 0),
(10, 'mohan', 'mohankumarsvcet@gmail.com', '1234', 0);

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `movie_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `sl` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `sl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sl` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
