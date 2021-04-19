-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2021 at 08:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Hindi Songs', 1, 1, 'assets/images/artwork/hindi.jpg'),
(2, 'Bengali Songs', 2, 2, 'assets/images/artwork/bengali.jpg'),
(3, 'Punjabi Songs', 3, 3, 'assets/images/artwork/punjabi.jpg'),
(4, 'Tamil Songs', 4, 4, 'assets/images/artwork/tamil.jpg'),
(5, 'Assamese Songs', 5, 11, 'assets/images/artwork/jolopropat.jpg'),
(6, 'Telegu Songs', 6, 5, 'assets/images/artwork/telegu.jpg'),
(7, 'Malayalam Songs', 9, 6, 'assets/images/artwork/malayalam.jpg'),
(9, 'English Songs', 8, 7, 'assets/images/artwork/english.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'AR Rahman'),
(2, 'Arijit Singh'),
(3, 'Maninder Buttar'),
(4, 'Anirudh Ravichander'),
(5, 'Abhi Saikia'),
(6, 'Armaaan Malik'),
(8, 'Taylor Swift'),
(9, 'Sid Sriram');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Hindi'),
(2, 'Bengali'),
(3, 'Punjabi'),
(4, 'Tamil'),
(5, 'Telegu'),
(6, 'Malayalam'),
(7, 'English'),
(11, 'Assamese');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Tere Bina', 1, 1, 1, '4:48', 'assets/music/TereBina.mp3', 1, 12),
(2, 'Bojhena Shey', 2, 2, 2, '4:09', 'assets/music/BojhenaShey.mp3', 1, 12),
(3, 'Sakhiyaan', 3, 3, 3, '3:06', 'assets/music/Sakhiyaan.mp3', 1, 20),
(4, 'Vaathi Coming', 4, 4, 4, '4:16', 'assets/music/VaathiComing.mp3', 1, 12),
(5, 'Nakhyatra', 5, 5, 1, '6:25', 'assets/music/Nakhyatra.mp3', 1, 18),
(6, 'Jolopropat', 5, 5, 1, '4:48', 'assets/music/Jolopropat.mp3', 2, 18),
(7, 'Buttabomma', 6, 6, 5, '3:18', 'assets/music/Buttabomma.mp3', 1, 18),
(9, 'Uyire', 9, 7, 6, '3:24', 'assets/music/Uyire.mp3', 1, 16),
(11, 'Willow', 8, 9, 7, '3:36', 'assets/music/willow.mp3', 1, 16),
(32, 'Parbona', 2, 2, 2, '4:48', 'assets/music/Parbona.mp3', 1, 3),
(33, 'Yeh Jo Des Hai Tera', 1, 1, 1, '5:26', 'assets/music/YehJoDesHaiTera.mp3', 1, 13),
(34, 'Jai Ho', 1, 1, 1, '5:15', 'assets/music/JaiHo.mp3', 1, 12),
(35, 'Evermore', 8, 9, 7, '5:05', 'assets/music/evermore.mp3', 1, 15),
(36, 'Right Where You Left Me', 8, 9, 7, '4:06', 'assets/music/RightWhereYouLeftMe.mp3', 1, 16),
(37, 'Laare', 3, 3, 3, '4:30', 'assets/music/Laare.mp3', 1, 17),
(38, 'Andha Kanna Paathaakaa', 4, 4, 4, '2:07', 'assets/music/AndhaKannaPaathaakaa.mp3', 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(3, 'Rajkumar', 'Rajkumar', 'Thakur', 'rk@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-03-27 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre` (`genre`),
  ADD KEY `artist` (`artist`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album` (`album`),
  ADD KEY `genre` (`genre`),
  ADD KEY `artist` (`artist`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`genre`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `albums_ibfk_2` FOREIGN KEY (`artist`) REFERENCES `artists` (`id`);

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`album`) REFERENCES `albums` (`id`),
  ADD CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`genre`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `songs_ibfk_3` FOREIGN KEY (`artist`) REFERENCES `artists` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
