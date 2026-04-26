-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2026 at 05:00 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(2, 'zahro', '$2y$10$63uCRPulvAktz8sTU7UxfuyYWVNoaXAQfROn1he/AEzIEJ4ywMzqO', 'zahro@gmail.com'),
(7, 'sofia', '$2y$10$34yFRIf2rSajtMXHnJRrmOACnD2XZQh.3yd1vpH8hGLB9QIlkHRXy', 'sofia@gmail.com'),
(9, 'nana', '$2y$10$ufpavQZipqTtagcpHtATO.lqox.1aOCv9VrBMHqvkbBu4CKLXf6o2', 'nana@gmail.com'),
(10, 'caca', '$2y$10$UNXi5p27UJHglI7hDLjQEO2THB/0UgT8ghQAlzT1Q.wg3/ZlLoxOa', 'caca@gmail.com'),
(12, 'nafsy', '$2y$10$H2DtAO.ahKKGClbHr8.ifee5QKJ/swL6i8GZYI8iqVIo0AQOmx7t6', 'nana@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
