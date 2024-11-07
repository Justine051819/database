-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 07, 2024 at 06:17 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

CREATE TABLE `ad` (
  `id` int(11) NOT NULL,
  `account_name` varchar(30) NOT NULL,
  `requested_department` varchar(255) NOT NULL,
  `expense_categories` varchar(255) NOT NULL,
  `amount` bigint(24) NOT NULL,
  `description` text NOT NULL,
  `document` blob NOT NULL,
  `payment_due` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `approved_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`id`, `account_name`, `requested_department`, `expense_categories`, `amount`, `description`, `document`, `payment_due`, `status`, `approved_at`) VALUES
(1, 'justine reyes', 'Logisticc', 'Tires', 1, 'Flat', 0x706466, '0000-00-00', 'Approved', '2024-10-22 01:41:54'),
(2, 'justine reyes', 'Logistic', 'Tires', 1000, 'Flat', 0x706466, '2025-10-25', '', '2024-10-23 06:02:20'),
(3, 'justine reyes', 'Logistic', 'Tires', 1000, 'Flat', 0x706466, '2025-10-25', '', '2024-10-23 06:09:35'),
(4, 'justine reyes', 'Logistic', 'Tires', 1000, 'Flat', 0x706466, '2025-10-25', '', '2024-10-23 06:08:44'),
(7, 'justine reyes', 'Finance', 'Tires', 1000, 'Crashed ', 0x706466, '2025-12-25', '', '2024-10-27 10:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `ap`
--

CREATE TABLE `ap` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `requested_department` varchar(255) NOT NULL,
  `expense_categories` varchar(100) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `document` blob NOT NULL,
  `payment_due` date NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `br`
--

CREATE TABLE `br` (
  `id` int(11) NOT NULL,
  `account_name` varchar(30) NOT NULL,
  `requested_department` varchar(255) NOT NULL,
  `expense_categories` varchar(255) NOT NULL,
  `amount` bigint(24) NOT NULL,
  `description` text NOT NULL,
  `document` blob NOT NULL,
  `payment_due` date NOT NULL,
  `bank_name` varchar(40) NOT NULL,
  `bank_account_number` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `br`
--

INSERT INTO `br` (`id`, `account_name`, `requested_department`, `expense_categories`, `amount`, `description`, `document`, `payment_due`, `bank_name`, `bank_account_number`) VALUES
(11, 'justine reyes', 'Logistic', 'Tires', 1000, 'Flat', 0x706466, '2025-10-25', 'BDO', '1234-5678-9012-6245'),
(12, 'justine reyes', 'Finance', 'Tires', 1233, 'Flat', 0x6270617461626c6573616e64736368656d612e646f6378, '2025-06-10', 'BDO', '1234-5678-9012-6245');

-- --------------------------------------------------------

--
-- Table structure for table `charts_oa`
--

CREATE TABLE `charts_oa` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_code` varchar(200) NOT NULL,
  `description` varchar(20) NOT NULL,
  `account_type` varchar(200) NOT NULL,
  `balance` int(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coa`
--

CREATE TABLE `coa` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_code` varchar(200) NOT NULL,
  `description` varchar(20) NOT NULL,
  `account_type` varchar(200) NOT NULL,
  `balance` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coa`
--

INSERT INTO `coa` (`id`, `account_name`, `account_code`, `description`, `account_type`, `balance`, `created_at`, `updated_at`) VALUES
(3, 'Will Smith', 'WS1', 'Active', 'User', 0, '2024-10-03 00:18:43', '2024-10-03 00:18:43'),
(4, 'Bob Marley', 'BM1', 'Active', 'User', 0, '2024-10-03 00:18:43', '2024-10-03 00:18:43'),
(5, 'Cristiano Ronaldo', 'CR1', 'Active', 'User', 0, '2024-10-03 00:18:43', '2024-10-03 00:18:43'),
(6, 'Boris Johnson', 'BJ1', 'Active', 'User', 0, '2024-10-03 00:18:43', '2024-10-03 00:18:43'),
(7, 'Justine Reyes', 'JR1', 'Active', 'Admin', 100000, '2024-10-03 17:12:26', '2024-10-03 17:12:26'),
(11, 'Justine Reyes', 'JR2', 'Active', 'Admin', 100000000, '2024-10-03 17:19:44', '2024-10-03 17:19:44'),
(13, 'Shine Buen', 'SB1', 'Active', 'Admin', 1000000, '2024-10-06 16:22:21', '2024-10-06 16:22:21'),
(14, 'Carlo Allordo', 'CA1', 'Active', 'Admin', 1000000, '2024-10-06 16:23:15', '2024-10-06 16:23:15'),
(15, 'Justine Reyess', 'JR4', 'Active', 'Admin', 100, '2024-10-06 22:50:33', '2024-10-06 22:50:33'),
(16, 'Justine Reyess', 'JR5', 'Active', 'Admin', 100000, '2024-10-06 22:58:35', '2024-10-06 22:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `dr`
--

CREATE TABLE `dr` (
  `id` int(11) NOT NULL,
  `account_name` varchar(30) NOT NULL,
  `requested_department` varchar(255) NOT NULL,
  `expense_categories` varchar(255) NOT NULL,
  `amount` bigint(24) NOT NULL,
  `description` text NOT NULL,
  `document` blob NOT NULL,
  `payment_due` date NOT NULL,
  `bank_account_number` varchar(25) NOT NULL,
  `bank_name` varchar(40) NOT NULL,
  `disbursed_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dr`
--

INSERT INTO `dr` (`id`, `account_name`, `requested_department`, `expense_categories`, `amount`, `description`, `document`, `payment_due`, `bank_account_number`, `bank_name`, `disbursed_at`) VALUES
(6, 'justine reyes', 'Logistic', 'Tires', 1000, 'Flat', 0x706466, '2025-10-25', '1234-5678-9012-3456', 'BDO', '2024-11-01 18:03:45'),
(10, 'justine reyes', 'Logistic', 'Tires', 2000, 'Flat', 0x706466, '2025-10-25', '1234-5678-9012-3456', 'BDO', '2024-11-02 10:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `je`
--

CREATE TABLE `je` (
  `id` int(11) NOT NULL,
  `entry_date` date NOT NULL,
  `account_id` int(11) NOT NULL,
  `debit` decimal(10,2) NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `je`
--

INSERT INTO `je` (`id`, `entry_date`, `account_id`, `debit`, `credit`, `description`, `created_at`, `updated_at`) VALUES
(1, '2024-10-07', 10202407, '100.00', '100.00', 'Good', '2024-10-10 00:44:35', '2024-10-10 00:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `pa`
--

CREATE TABLE `pa` (
  `id` int(11) NOT NULL,
  `account_name` varchar(30) NOT NULL,
  `requested_department` varchar(255) NOT NULL,
  `expense_categories` varchar(255) NOT NULL,
  `amount` bigint(24) NOT NULL,
  `description` text NOT NULL,
  `document` blob NOT NULL,
  `payment_due` date NOT NULL,
  `requested_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `bank_name` varchar(255) NOT NULL,
  `bank_account_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pa`
--

INSERT INTO `pa` (`id`, `account_name`, `requested_department`, `expense_categories`, `amount`, `description`, `document`, `payment_due`, `requested_at`, `bank_name`, `bank_account_number`) VALUES
(7, 'justine reyes', 'Logistic', 'Tires', 1000, 'Flat', 0x706466, '2025-10-25', '2024-10-31 15:06:52', 'BDO', '1234-5678-9012-3456'),
(8, 'justine reyes', 'Core', 'Tires', 1, 'Flat', 0x706466, '2025-10-25', '2024-11-06 03:34:42', 'BDO', '1234-5678-9012-6245');

-- --------------------------------------------------------

--
-- Table structure for table `payout`
--

CREATE TABLE `payout` (
  `id` int(11) NOT NULL,
  `account_name` varchar(30) NOT NULL,
  `requested_department` varchar(255) NOT NULL,
  `expense_categories` varchar(255) NOT NULL,
  `amount` bigint(24) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_account_number` varchar(20) NOT NULL,
  `payment_due` date NOT NULL,
  `description` text NOT NULL,
  `document` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payout`
--

INSERT INTO `payout` (`id`, `account_name`, `requested_department`, `expense_categories`, `amount`, `bank_name`, `bank_account_number`, `payment_due`, `description`, `document`) VALUES
(5, 'justine reyes', 'Logistic', 'Tires', 1000, '', '', '2025-10-25', 'Flat', 0x706466);

-- --------------------------------------------------------

--
-- Table structure for table `rd`
--

CREATE TABLE `rd` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `requested_department` varchar(255) NOT NULL,
  `expense_categories` varchar(255) NOT NULL,
  `amount` bigint(24) NOT NULL,
  `description` text NOT NULL,
  `document` blob NOT NULL,
  `payment_due` date NOT NULL,
  `rejected_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rd`
--

INSERT INTO `rd` (`id`, `account_name`, `requested_department`, `expense_categories`, `amount`, `description`, `document`, `payment_due`, `rejected_at`) VALUES
(5, 'justine reyes', 'Logistic', 'Tires', 1000, 'Flat', 0x706466, '2025-10-25', '2024-10-25 14:08:00'),
(6, 'Shine Buen', 'Finance', 'Repaint', 2000, 'Crashed ', 0x706466, '2025-12-25', '2024-10-25 14:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `regis`
--

CREATE TABLE `regis` (
  `id` int(11) NOT NULL,
  `gname` varchar(30) NOT NULL,
  `initial` varchar(15) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `contact` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(25) NOT NULL,
  `cpassword` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regis`
--

INSERT INTO `regis` (`id`, `gname`, `initial`, `surname`, `address`, `age`, `contact`, `username`, `email`, `password`, `cpassword`) VALUES
(1, 'justine', 't', 'reyes', 'bulacan', 22, 2147483647, 'justine', 'reyes@gmail.com', '$2y$10$wRbxtlgVjYsJtplR5b', ''),
(2, 'shine', 'A', 'buen', 'bulacan', 21, 2147483647, 'shine', 'shine@gmail.com', '$2y$10$VYqJMoOxoZ3vVlOXqW', '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `action_type` varchar(50) NOT NULL,
  `action_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Error reading structure for table db.users: #1932 - Table &#039;db.users&#039; doesn&#039;t exist in engine
-- Error reading data for table db.users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db`.`users`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `userss`
--

CREATE TABLE `userss` (
  `id` int(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gname` varchar(30) NOT NULL,
  `minitial` varchar(24) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `address` varchar(255) NOT NULL,
  `age` int(2) NOT NULL,
  `contact` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_logged_in` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userss`
--

INSERT INTO `userss` (`id`, `username`, `password`, `gname`, `minitial`, `surname`, `address`, `age`, `contact`, `email`, `is_logged_in`) VALUES
(1, 'justine', '$2y$10$iNMJ66GRKM6/nSEKzycAzewZlsOiXf.02j1nbYQY.OzpfyhXxOkW.', 'justine', 'T', 'reeyes', 'bestlinkcollegeofthephilippines', 22, '09912345679', 'reeyes18@gmail.com', 1),
(2, 'tristan', '$2y$10$OBFGzJeJer5Ut7UgQAjAQe9vk5IiQ7Av4DtdiRLtbNoU/rQCaaWxG', 'tristan', 'G', 'custodio', 'bcp', 22, '09912345567', 'tristan', 1),
(3, 'justine', '$2y$10$cQzLQ2QSUNpaf6Rn6E66uuJ3NOqTqglIE22yvJ/JD1dRI7ggRCrY.', 'justine', 't', 'reyes', 'bulacan', 21, '09345678911', 'reyes@gmail.com', 1),
(4, 'justine', '$2y$10$xKzOOgnQBeZXWRiHbiX2SOxCQ82E/mU8OjLUDFS8bSdZ.dumqMsi.', 'justine', 't', 'reyes', 'bulacan', 22, '09123456789', 'reyes@gmail.com', 1),
(5, 'shine', '$2y$10$M.gXul2onD0l.jlSeGJe6OPcyChwowuHvxjyK.qYyTk4ZVQseQgj6', 'shine', 'A', 'buen', 'bcp', 22, '09345678913', 'shine@gmail.com', 0),
(6, 'juan', '$2y$10$quHF0lfH29bLQpO0oQ.gSOiAHhVzVCOBHjX68V1xJZW8N2ri/KXIu', 'juan', 's', 'allordo', 'bcp', 22, '09123456789', 'juan@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ve`
--

CREATE TABLE `ve` (
  `id` int(11) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ve`
--

INSERT INTO `ve` (`id`, `employee_name`, `position`, `department`, `created_at`, `updated_at`) VALUES
(3, 'Justine Francis Reyes', 'Admin', 'Finance', '2024-10-21 00:50:00', '2024-10-21 00:50:00'),
(4, 'Justine Francis Reyes', 'Finance Operator', 'Finance', '2024-10-23 11:33:54', '2024-10-23 11:33:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap`
--
ALTER TABLE `ap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `br`
--
ALTER TABLE `br`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charts_oa`
--
ALTER TABLE `charts_oa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_code` (`account_code`);

--
-- Indexes for table `coa`
--
ALTER TABLE `coa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_code` (`account_code`);

--
-- Indexes for table `dr`
--
ALTER TABLE `dr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `je`
--
ALTER TABLE `je`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pa`
--
ALTER TABLE `pa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout`
--
ALTER TABLE `payout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rd`
--
ALTER TABLE `rd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regis`
--
ALTER TABLE `regis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userss`
--
ALTER TABLE `userss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad`
--
ALTER TABLE `ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ap`
--
ALTER TABLE `ap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `br`
--
ALTER TABLE `br`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `charts_oa`
--
ALTER TABLE `charts_oa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coa`
--
ALTER TABLE `coa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `dr`
--
ALTER TABLE `dr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `je`
--
ALTER TABLE `je`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pa`
--
ALTER TABLE `pa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payout`
--
ALTER TABLE `payout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rd`
--
ALTER TABLE `rd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `regis`
--
ALTER TABLE `regis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userss`
--
ALTER TABLE `userss`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ve`
--
ALTER TABLE `ve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
