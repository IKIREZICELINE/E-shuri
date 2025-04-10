-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2025 at 04:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `ClientId` int(11) NOT NULL,
  `nm` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `addr` text DEFAULT NULL,
  `TIN` varchar(100) DEFAULT NULL,
  `Date` varchar(45) DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`ClientId`, `nm`, `phone`, `Email`, `addr`, `TIN`, `Date`) VALUES
(1, 'John Doe', '0788123456', 'john.doe@example.com', 'Kigali, Rwanda', '123456789', '2025-03-27 16:57:50'),
(2, 'Jane Smith', '0788234567', 'jane.smith@example.com', 'Musanze, Rwanda', '987654321', '2025-03-27 16:57:50'),
(3, 'Michael Johnson', '0788345678', 'michael.j@example.com', 'Huye, Rwanda', '654987321', '2025-03-27 16:57:50'),
(4, 'Emily Brown', '0788456789', 'emily.brown@example.com', 'Rubavu, Rwanda', '321654987', '2025-03-27 16:57:50'),
(5, 'David Wilson', '0788567890', 'david.w@example.com', 'Nyanza, Rwanda', '789456123', '2025-03-27 16:57:50'),
(6, 'Sophia Martinez', '0788678901', 'sophia.m@example.com', 'Rwamagana, Rwanda', '951753852', '2025-03-27 16:57:50'),
(7, 'James Anderson', '0788789012', 'james.a@example.com', 'Muhanga, Rwanda', '852741963', '2025-03-27 16:57:50'),
(8, 'Olivia Thomas', '0788890123', 'olivia.t@example.com', 'Rusizi, Rwanda', '147258369', '2025-03-27 16:57:50'),
(9, 'Daniel Lee', '0788901234', 'daniel.lee@example.com', 'Kayonza, Rwanda', '369852147', '2025-03-27 16:57:50'),
(10, 'Emma White', '0788012345', 'emma.w@example.com', 'Gicumbi, Rwanda', '258147369', '2025-03-27 16:57:50'),
(11, 'William Harris', '0788123789', 'william.h@example.com', 'Nyamagabe, Rwanda', '741369258', '2025-03-27 16:57:50'),
(12, 'Ava Clark', '0788234890', 'ava.c@example.com', 'Bugesera, Rwanda', '159357486', '2025-03-27 16:57:50'),
(13, 'Alexander Lewis', '0788345901', 'alex.l@example.com', 'Ngoma, Rwanda', '357159486', '2025-03-27 16:57:50'),
(14, 'Mia Walker', '0788456012', 'mia.w@example.com', 'Nyamasheke, Rwanda', '486159357', '2025-03-27 16:57:50'),
(15, 'Ethan Hall', '0788567123', 'ethan.h@example.com', 'Karongi, Rwanda', '753486159', '2025-03-27 16:57:50'),
(16, 'Charlotte Allen', '0788678234', 'charlotte.a@example.com', 'Gatsibo, Rwanda', '951852753', '2025-03-27 16:57:50'),
(17, 'Mason Young', '0788789345', 'mason.y@example.com', 'Kamonyi, Rwanda', '159753852', '2025-03-27 16:57:50'),
(18, 'Amelia King', '0788890456', 'amelia.k@example.com', 'Nyagatare, Rwanda', '258369147', '2025-03-27 16:57:50'),
(19, 'Logan Scott', '0788901567', 'logan.s@example.com', 'Burera, Rwanda', '369741258', '2025-03-27 16:57:50'),
(20, 'Harper Green', '0788012678', 'harper.g@example.com', 'Nyaruguru, Rwanda', '147963852', '2025-03-27 16:57:50'),
(21, 'Benjamin Baker', '0788123789', 'benjamin.b@example.com', 'Rutsiro, Rwanda', '963258741', '2025-03-27 16:57:50'),
(22, 'Evelyn Adams', '0788234890', 'evelyn.a@example.com', 'Kirehe, Rwanda', '852147963', '2025-03-27 16:57:50'),
(23, 'Lucas Nelson', '0788345901', 'lucas.n@example.com', 'Nyabihu, Rwanda', '741963852', '2025-03-27 16:57:50'),
(24, 'Scarlett Carter', '0788456012', 'scarlett.c@example.com', 'Gisagara, Rwanda', '357486159', '2025-03-27 16:57:50'),
(25, 'Henry Mitchell', '0788567123', 'henry.m@example.com', 'Nyanza, Rwanda', '159753486', '2025-03-27 16:57:50'),
(26, 'Lily Perez', '0788678234', 'lily.p@example.com', 'Kayonza, Rwanda', '486357159', '2025-03-27 16:57:50'),
(27, 'Samuel Roberts', '0788789345', 'samuel.r@example.com', 'Ngororero, Rwanda', '753951852', '2025-03-27 16:57:50'),
(28, 'Grace Stewart', '0788890456', 'grace.s@example.com', 'Huye, Rwanda', '951753159', '2025-03-27 16:57:50'),
(29, 'Jack Flores', '0788901567', 'jack.f@example.com', 'Nyamagabe, Rwanda', '258147963', '2025-03-27 16:57:50'),
(30, 'Victoria Morris', '0788012678', 'victoria.m@example.com', 'Bugesera, Rwanda', '369258741', '2025-03-27 16:57:50'),
(31, 'Owen Rogers', '0788123789', 'owen.r@example.com', 'Rusizi, Rwanda', '159486753', '2025-03-27 16:57:50'),
(32, 'Ella Reed', '0788234890', 'ella.r@example.com', 'Muhanga, Rwanda', '852753159', '2025-03-27 16:57:50'),
(33, 'Sebastian Bell', '0788345901', 'sebastian.b@example.com', 'Rwamagana, Rwanda', '963159753', '2025-03-27 16:57:50'),
(34, 'Chloe Edwards', '0788456012', 'chloe.e@example.com', 'Gicumbi, Rwanda', '147852963', '2025-03-27 16:57:50'),
(35, 'Aiden Cox', '0788567123', 'aiden.c@example.com', 'Karongi, Rwanda', '753486951', '2025-03-27 16:57:50'),
(36, 'Hannah Bennett', '0788678234', 'hannah.b@example.com', 'Rubavu, Rwanda', '951852357', '2025-03-27 16:57:50'),
(37, 'Dylan Jenkins', '0788789345', 'dylan.j@example.com', 'Nyamasheke, Rwanda', '357951852', '2025-03-27 16:57:50'),
(38, 'Zoe Perry', '0788890456', 'zoe.p@example.com', 'Gatsibo, Rwanda', '486357951', '2025-03-27 16:57:50'),
(39, 'Caleb Fisher', '0788901567', 'caleb.f@example.com', 'Kamonyi, Rwanda', '159753486', '2025-03-27 16:57:50'),
(40, 'Nora Russell', '0788012678', 'nora.r@example.com', 'Nyagatare, Rwanda', '741369852', '2025-03-27 16:57:50'),
(41, 'Levi Powell', '0788123789', 'levi.p@example.com', 'Burera, Rwanda', '258963147', '2025-03-27 16:57:50'),
(42, 'Lillian Howard', '0788234890', 'lillian.h@example.com', 'Nyaruguru, Rwanda', '963258147', '2025-03-27 16:57:50'),
(43, 'Mateo Ward', '0788345901', 'mateo.w@example.com', 'Rutsiro, Rwanda', '147852369', '2025-03-27 16:57:50'),
(44, 'Layla Torres', '0788456012', 'layla.t@example.com', 'Kirehe, Rwanda', '753159486', '2025-03-27 16:57:50'),
(45, 'Gabriel Peterson', '0788567123', 'gabriel.p@example.com', 'Nyabihu, Rwanda', '852963159', '2025-03-27 16:57:50'),
(46, 'Madison Gray', '0788678234', 'madison.g@example.com', 'Gisagara, Rwanda', '357159852', '2025-03-27 16:57:50'),
(47, 'Carter Ramirez', '0788789345', 'carter.r@example.com', 'Nyanza, Rwanda', '159852963', '2025-03-27 16:57:50'),
(48, 'Aubrey Butler', '0788890456', 'aubrey.b@example.com', 'Kayonza, Rwanda', '258159753', '2025-03-27 16:57:50'),
(49, 'Wyatt Bailey', '0788901567', 'wyatt.b@example.com', 'Ngororero, Rwanda', '753852159', '2025-03-27 16:57:50'),
(50, 'Penelope Bell', '0788012678', 'penelope.b@example.com', 'Huye, Rwanda', '951357852', '2025-03-27 16:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(15) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `isDeleted` varchar(10) NOT NULL DEFAULT 'notDeleted',
  `Date` varchar(45) NOT NULL,
  `CurrentDate` varchar(45) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`Id`, `FirstName`, `LastName`, `Age`, `Gender`, `Phone`, `Email`, `Address`, `isDeleted`, `Date`, `CurrentDate`) VALUES
(2, 'Kyla', 'Whitley', 24, 'other', '+1 (921) 942-6401', 'lanemyh@mailinator.com', 'Officiis repudiandae', 'Deleted', '1989-07-25', '2025-03-28 15:16:47'),
(3, 'Quinlan', 'Mccoy', 50, 'male', '+1 (892) 456-8136', 'qiva@mailinator.com', 'Culpa eligendi nesci', 'notDeleted', '2013-03-24', '2025-03-28 15:18:50'),
(5, 'Moana', 'Mcclure', 51, 'female', '+1 (672) 752-7733', 'fidicyg@mailinator.com', 'Ex fugit saepe volu', 'Deleted', '1980-07-26', '2025-03-28 15:21:09'),
(6, 'Colin', 'Oconnor', 57, 'other', '+1 (938) 554-1719', 'kodypovu@mailinator.com', 'Magnam et enim quod ', 'notDeleted', '1977-09-07', '2025-03-28 15:26:49'),
(9, 'Prince', 'Parfait', 14, 'male', '0798442649', 'ganzaparfait7@gmail.com', 'Nyarugenge, Kigali Rwanda', 'Deleted', '2025-03-28', '2025-03-28 16:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_id` int(11) NOT NULL,
  `Product_code` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Product_name` varchar(255) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Date` varchar(45) NOT NULL,
  `UpdatedAt` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Gender` enum('Male','Female','Other') DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `CreatedAt` varchar(45) DEFAULT current_timestamp(),
  `UpdatedAt` varchar(45) DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientId`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_id`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `ClientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
