-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2025 at 06:59 AM
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
-- Database: `user_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `submitted_at`) VALUES
(8, 'Devara', 'userd@gmail.com', 'science', 'good application', '2025-04-15 07:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_plans`
--

CREATE TABLE `pricing_plans` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `price_duration` varchar(20) DEFAULT NULL,
  `features` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricing_plans`
--

INSERT INTO `pricing_plans` (`id`, `plan_name`, `description`, `price`, `price_duration`, `features`, `created_at`) VALUES
(1, 'Basic Plan', 'For small businesses', 15.22, 'Month', 'HTML5 & CSS3, Bootstrap v5, Responsive Layout, Cross-browser Support. AI', '2025-04-01 12:05:38'),
(2, 'Standard Plan', 'For medium businesses', 99.99, 'Month', 'HTML5 & CSS3, Bootstrap v5 and Responsive Layout, Cross-browser Support, SEO Optimization', '2025-04-01 12:05:38'),
(3, 'Advanced Plan', 'For large businesses', 149.00, 'Month', 'HTML5 & CSS3, Bootstrap v5, Responsive Layout, Cross-browser Support, SEO Optimization, 24/7 Support', '2025-04-01 12:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `review` text NOT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `email`, `profile_image`, `rating`, `review`, `is_verified`, `created_at`) VALUES
(17, 'moju', 'moju@gmail.com', '1743837369_icon.png', 4, 'good', 0, '2025-04-05 03:46:09'),
(19, 'moju', 'moju@gmail.com', '1744090630_Screenshot 2025-04-03 101416.png', 3, 'good app', 0, '2025-04-08 02:07:10'),
(23, 'deepak', 'deepak@gmail.com', '1744703435_1569586509470_Karna_in_Mahabharata_War_Digital_Painting_Vimanika_Arts__90975.jpg', 5, 'good', 0, '2025-04-15 04:20:35'),
(24, 'manoj', 'userd@gmail.com', '1745559782_girls.jfif', 4, 'good', 0, '2025-04-25 02:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `user_type`) VALUES
(11, 'user', 'user@gmail.com', '$2y$10$lwZu6RSjQy5UvXxuWCfV7.zqcVL4/oT5RKz0dlOX4BnKnNcgevgoC', 'user'),
(14, 'admin', 'admin@gmail.com', '$2y$10$1U.L4gk5AJPRDVIBCClTVuWS8AcMHbr63pyVpUvBqqooxOQEX5NQK', 'admin'),
(17, 'admin', 'admins@gmail.com', '$2y$10$D.JQcYro.UcYhKO6SlnsKOwRGzg3Hv2nSTNu.u1QhlCY.b2Hz1p2a', 'admin'),
(21, 'user', 'users@gmail.com', '$2y$10$YMEGYcPQhHDzw.deqFtlHOGpN4FFu/q9NB1XQ0iXLhJrUdt8xl7GW', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing_plans`
--
ALTER TABLE `pricing_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pricing_plans`
--
ALTER TABLE `pricing_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
