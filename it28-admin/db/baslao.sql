-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 04:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baslao`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(6) UNSIGNED NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `country` varchar(100) NOT NULL,
  `payment_id` int(6) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `street_address`, `city`, `state`, `postal_code`, `country`, `payment_id`, `created_at`) VALUES
(1, 'Sample Street 123', 'Sample City', 'Sample State', '12345', 'Sample Country', 1, '2024-05-29 08:00:00'),
(2, 'Test Road 456', 'Testville', 'Test State', '67890', 'Testland', 2, '2024-05-29 09:00:00'),
(3, 'Main Avenue', 'Metroville', 'Metro State', '54321', 'Metrotopia', 3, '2024-05-29 10:00:00'),
(4, 'Park Street', 'Parkville', 'Park State', '98765', 'Parkland', 4, '2024-05-29 11:00:00'),
(5, 'Oak Boulevard', 'Oakland', 'Oak State', '13579', 'Oaktopia', 5, '2024-05-29 12:00:00'),
(9, 'tankulan', 'none', 'mindanao', '21321231232132321312', 'Philippines', 14, '2024-05-30 14:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(6) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `product_name`, `price`, `payment_method`, `created_at`) VALUES
(1, 'Softball Bat', 120.00, 'Credit Card', '2024-05-29 08:00:00'),
(2, 'Softball Glove', 80.00, 'PayPal', '2024-05-29 09:00:00'),
(3, 'Softballs Set', 40.00, 'Cash on Delivery', '2024-05-29 10:00:00'),
(4, 'Batting Helmet', 60.00, 'Google Pay', '2024-05-29 11:00:00'),
(5, 'Catcher\'s Gear Set', 150.00, 'Apple Pay', '2024-05-29 12:00:00'),
(6, 'Softball Bat', 120.00, 'Credit Card', '2024-05-29 13:00:00'),
(7, 'Softball Glove', 80.00, 'PayPal', '2024-05-29 14:00:00'),
(8, 'Softballs Set', 40.00, 'Cash on Delivery', '2024-05-29 15:00:00'),
(9, 'Batting Helmet', 60.00, 'Google Pay', '2024-05-29 16:00:00'),
(10, 'Catcher\'s Gear Set', 150.00, 'Apple Pay', '2024-05-29 17:00:00'),
(11, 'eweqweq', 321.00, 'PayMaya', '2024-05-30 12:39:37'),
(12, 'eweqweq', 321.00, 'PayMaya', '2024-05-30 13:05:32'),
(13, 'eweqweq', 321.00, 'PayMaya', '2024-05-30 14:04:23'),
(14, 'softball gloves', 99999999.99, 'PayPal', '2024-05-30 14:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `rrp` decimal(10,0) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Softball Bat', 'A high-performance softball bat designed for maximum power and control.', 120, 150, 30, 'https://th.bing.com/th/id/OIP.TPwdkutBhB-Y9zp55jRp5QHaHa?rs=1&pid=ImgDetMain', '2024-05-08 00:00:00'),
(2, 'Softball Glove', 'A durable and comfortable glove suitable for all positions.', 80, 100, 50, 'https://imgs.search.brave.com/lJgE7Lnqgj3u-vTZSd17r8PH9s5gubFuRPk2_eWwgGI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/ZGlyZWN0c3BvcnRz/LmNvbS9jZG4vc2hv/cC9wcm9kdWN0cy9S/QVdMSU5HUy1TSFVU/LU9VVC1GUC1HTE9W/RV81MTJ4LmpwZz92/PTE1Njg5Njc3OTc', '2024-05-08 00:00:00'),
(3, 'Softballs', 'A set of six high-quality softballs for practice and games.', 40, 50, 100, 'https://imgs.search.brave.com/ufxdzQPszO4JmaeoZOwpf2jny75FbZkTLVOsr8juktc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/YmFzZWJhbGxzYXZp/bmdzLmNvbS93Y3Nz/dG9yZS9DYXRhbG9n/QXNzZXRTdG9yZS9B/dHRhY2htZW50L2lt/YWdlcy9wcm9kdWN0/cy9iYXNlYmFsbC9Q/MTQ3MDE3LzEyLXQu/anBn', '2024-05-08 00:00:00'),
(4, 'Batting Helmet', 'A protective helmet with excellent fit and ventilation.', 60, 75, 20, 'https://imgs.search.brave.com/NgFwdlSTtFbbuxNilh6hgGLRXwBqIMRQRodx2uTaXx0/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/ODFSRUZrdHRPN0wu/anBn', '2024-05-08 00:00:00'),
(5, 'Catcher\'s Gear Set', 'A complete set of catcher\'s gear for ultimate protection.', 150, 180, 15, 'https://th.bing.com/th/id/OIP.1tZmJLXOcg0FbePufoa-hwHaFQ?w=1536&h=1090&rs=1&pid=ImgDetMain', '2024-05-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$kGp4g1TjBK4XwLIwRbBHSeZ4W5FpPbYoB1ap5NfFUjUPAcE3KR5QG', '2024-04-29 16:39:58'),
(2, 'baslao', '$2y$10$26m/9gmMDpV4k0Y9UXLHI.TnvIRgoyNdkeQ/NC.XN6v3Q5ZgMz0dO', '2024-05-29 09:12:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
