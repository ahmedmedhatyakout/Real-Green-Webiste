-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 06:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(6,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `name`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Four Dishs Vegtabels', 'This Cheesy Roasted Broccoli Recipe Is The Thing Of Side Dish Dreams! Easy To Make With Just A Handful Of Ingredients, It’s Perfect To Serve As Part Of Your Thanksgiving Or Holiday Meal, And Quick Enough To Be Part Of A Weeknight Dinner', 'http://localhost:8000/images/meals1.jpg', '50.00', NULL, NULL),
(2, 'Green Dish', 'This Cheesy Roasted Broccoli Recipe Is The Thing Of Side Dish Dreams! Easy To Make With Just A Handful Of Ingredients, It’s Perfect To Serve As Part Of Your Thanksgiving Or Holiday Meal, And Quick Enough To Be Part Of A Weeknight Dinner', 'http://localhost:8000/images/vd1.jpg', '30.00', NULL, NULL),
(3, 'Frish Vegtabels', 'This Cheesy Roasted Broccoli Recipe Is The Thing Of Side Dish Dreams! Easy To Make With Just A Handful Of Ingredients, It’s Perfect To Serve As Part Of Your Thanksgiving Or Holiday Meal, And Quick Enough To Be Part Of A Weeknight Dinner', 'http://localhost:8000/images/vd2.jpg', '20.00', NULL, NULL),
(4, 'Potatoes & Vegtabel', 'This Cheesy Roasted Broccoli Recipe Is The Thing Of Side Dish Dreams! Easy To Make With Just A Handful Of Ingredients, It’s Perfect To Serve As Part Of Your Thanksgiving Or Holiday Meal, And Quick Enough To Be Part Of A Weeknight Dinner', 'http://localhost:8000/images/d1.jpg', '35.00', NULL, NULL),
(5, 'Real Green Dish', 'This Cheesy Roasted Broccoli Recipe Is The Thing Of Side Dish Dreams! Easy To Make With Just A Handful Of Ingredients, It’s Perfect To Serve As Part Of Your Thanksgiving Or Holiday Meal, And Quick Enough To Be Part Of A Weeknight Dinner', 'http://localhost:8000/images/disy.jpg', '42.00', NULL, NULL),
(6, 'Great Tasty', 'This Cheesy Roasted Broccoli Recipe Is The Thing Of Side Dish Dreams! Easy To Make With Just A Handful Of Ingredients, It’s Perfect To Serve As Part Of Your Thanksgiving Or Holiday Meal, And Quick Enough To Be Part Of A Weeknight Dinner', 'http://localhost:8000/images/sd1.jpg', '15.00', NULL, NULL),
(7, 'Best Tiwst', 'This Cheesy Roasted Broccoli Recipe Is The Thing Of Side Dish Dreams! Easy To Make With Just A Handful Of Ingredients, It’s Perfect To Serve As Part Of Your Thanksgiving Or Holiday Meal, And Quick Enough To Be Part Of A Weeknight Dinne', 'http://localhost:8000/images/SSS3N.jpg', '22.00', NULL, NULL),
(8, 'Tost Green & Black', 'This Cheesy Roasted Broccoli Recipe Is The Thing Of Side Dish Dreams! Easy To Make With Just A Handful Of Ingredients, It’s Perfect To Serve As Part Of Your Thanksgiving Or Holiday Meal, And Quick Enough To Be Part Of A Weeknight Dinner', 'http://localhost:8000/images/p3.jpg', '7.00', NULL, NULL),
(9, 'Green Ice-Cream', 'This Cheesy Roasted Broccoli Recipe Is The Thing Of Side Dish Dreams! Easy To Make With Just A Handful Of Ingredients, It’s Perfect To Serve As Part Of Your Thanksgiving Or Holiday Meal, And Quick Enough To Be Part Of A Weeknight Dinner', 'http://localhost:8000/images/ince1.jpg', '12.00', NULL, NULL),
(10, 'Gally Vegetarian ', 'This Cheesy Roasted Broccoli Recipe Is The Thing Of Side Dish Dreams! Easy To Make With Just A Handful Of Ingredients, It’s Perfect To Serve As Part Of Your Thanksgiving Or Holiday Meal, And Quick Enough To Be Part Of A Weeknight Dinner', 'http://localhost:8000/images/gally2.jpg', '9.00', NULL, NULL),
(11, 'Sweet and Sour', 'This Cheesy Roasted Broccoli Recipe Is The Thing Of Side Dish Dreams! Easy To Make With Just A Handful Of Ingredients, It’s Perfect To Serve As Part Of Your Thanksgiving Or Holiday Meal, And Quick Enough To Be Part Of A Weeknight Dinner', 'http://localhost:8000/images/s3.jpg', '18.00', NULL, NULL),
(12, 'Sweet Tost ', 'This Cheesy Roasted Broccoli Recipe Is The Thing Of Side Dish Dreams! Easy To Make With Just A Handful Of Ingredients, It’s Perfect To Serve As Part Of Your Thanksgiving Or Holiday Meal, And Quick Enough To Be Part Of A Weeknight Dinner', 'http://localhost:8000/images/s4.jpg', '24.00', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
