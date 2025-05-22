-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 08:35 AM
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
-- Database: `mediconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(20) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_date`, `appointment_time`, `status`) VALUES
(57, '2025-07-07', '14:00', 'Confirmed'),
(59, '2025-07-07', '16:00', 'Confirmed'),
(62, '2025-07-07', '15:00', 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(10) NOT NULL,
  `doctor_first_name` varchar(40) NOT NULL,
  `doctor_last_name` varchar(40) NOT NULL,
  `doctor_email` varchar(50) NOT NULL,
  `doctor_phonenumber` varchar(20) NOT NULL,
  `doctor_address` varchar(50) NOT NULL,
  `doctor_gender` varchar(20) NOT NULL,
  `doctor_specialization` varchar(40) NOT NULL,
  `doctor_experience` varchar(40) NOT NULL,
  `doctor_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `doctor_first_name`, `doctor_last_name`, `doctor_email`, `doctor_phonenumber`, `doctor_address`, `doctor_gender`, `doctor_specialization`, `doctor_experience`, `doctor_image`) VALUES
(12, 'Pralen', 'Shakya', 'pralenshakya@gmail.com', '9823213232', 'Tahachal', 'Male', 'Dermatologist', '10+ years', 'Doctor1.jpg'),
(13, 'Shiv', 'Shah', 'shivshah@gmail.com', '9823123112', 'Kathmandu', 'Male', 'Pyschiatrist', '10+ years', 'Doctor1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_availability`
--

CREATE TABLE `doctor_availability` (
  `doctor_availability_id` int(50) NOT NULL,
  `doctor_id` int(50) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `doctor_available_day` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_availability`
--

INSERT INTO `doctor_availability` (`doctor_availability_id`, `doctor_id`, `start_time`, `end_time`, `doctor_available_day`) VALUES
(12, 12, '14:00', '19:00', 'Week Days, Week End'),
(13, 13, '08:00', '12:00', 'Week Days, Week End');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_user`
--

CREATE TABLE `doctor_user` (
  `user_id` int(50) NOT NULL,
  `doctor_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_user`
--

INSERT INTO `doctor_user` (`user_id`, `doctor_id`) VALUES
(51, 12);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_user_appointment`
--

CREATE TABLE `doctor_user_appointment` (
  `user_id` int(50) NOT NULL,
  `doctor_id` int(50) NOT NULL,
  `appointment_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_user_appointment`
--

INSERT INTO `doctor_user_appointment` (`user_id`, `doctor_id`, `appointment_id`) VALUES
(33, 12, 57),
(50, 12, 59),
(51, 12, 62);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `user_first_name` varchar(20) NOT NULL,
  `user_last_name` varchar(20) NOT NULL,
  `user_username` varchar(40) NOT NULL,
  `user_email` varchar(70) NOT NULL,
  `user_phonenumber` varchar(20) NOT NULL,
  `user_gender` varchar(20) NOT NULL,
  `user_dob` date NOT NULL,
  `user_location` varchar(20) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` varchar(20) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_first_name`, `user_last_name`, `user_username`, `user_email`, `user_phonenumber`, `user_gender`, `user_dob`, `user_location`, `user_password`, `user_role`, `user_image`) VALUES
(32, 'Shashwat', 'Shakya', 'Shashwat Shakya', 'shashwatshakya89@gmail.com', '9849977706', 'Male', '1992-02-02', 'Tahachal', '7opmukzlNq3sLQK4oPED+bWH74jNi4EUsKxQpxzn/kKjMH54qBcPN7OHsnMttDzmnvUg7PA=', 'Admin', 'Paramore all.jpg'),
(33, 'Aayush ', 'Shrestha', 'Aayush Shrestha', 'aayushshrestha@gmail.com', '9840000000', 'Male', '2007-02-02', 'Bhaktapur', 'EB+MpOeD8KtnSAyVBia4bncjhl42ZXGUSlv6X+X1fgarXhaE3/NxRrkp9apZjkX3HRZ5YBA=', 'Customer', 'Brand New Eyes.jpg'),
(43, 'Newton', 'Tiwari', 'Newton Tiwari', 'newtontiwari@gmail.com', '9849977707', 'Male', '1992-03-02', 'Kathmandu', 'KEWRtXuNulv6Ondm12MsssVbSFVa/juSG+sLWax+8TjrNgZW7H2wOTor4vecDQWapJ6henk=', 'Customer', 'boAtearbuds.jpg'),
(46, 'Silvia ', 'Maharjan', 'Silvia Maharjan', 'silviamaharjan@gmail.com', '9812398129', 'Female', '1995-04-04', 'Kathmandu', '4VwemduRLb1NAYdc2VssK7pVmz2gZT2373bOTMzGCCCJNwpoPZJARPP3nSKI46Q9vN0Ci4E=', 'Staff', 'staff1.webp'),
(47, 'Nirjal ', 'Byanjankar', 'Nirjal', 'nirjal@gmail.com', '9842312323', 'Male', '1993-02-03', 'Lalitpur', 'ac1eQIIqzCb/kIXZ74UmwIrU2KhZJgmzSFR7Zpa7JT/axgqLQ+8OODnX465h7QUEC47uH9Y=', 'Customer', 'Thom Yorke.jpg'),
(48, 'Sumik', 'Malla', 'Sumik', 'sumik@gmail.com', '9843223423', 'Male', '2004-02-03', 'Kathmandu', 'bfSzRk/rXCmwz3dtVKUnao26KNA/g03skqeQK3mch9tnUE5iqkn36gLoMl53Zz6qguC5rxQ=', 'Customer', 'Thom Yorke.jpg'),
(49, 'Jimmy ', 'Page', 'Jimmy', 'jimmypage@gmail.com', '9854545454', 'male', '1992-02-02', 'Bhaktapur', '35Xw+Y1ONzC5pIYzFKdcScByhU0SX0qtgWUBb7X/DUdjpcmF8N6jEeqYwfEu2qzUAwsHCUo=', 'Staff', 'staff1.webp'),
(50, 'Rashihang', 'Rai', 'Rashihang Rai', 'rashihangrai@gmail.com', '9843947700', 'Male', '1993-02-03', 'Bhaktapur', 'fZbC8xRxLaUBNrDGLVe6ki+k4KW9KCSx78GR2uF/I73eBpAsUs/4UVSfD2HYbfzWOwBTZoo=', 'Customer', 'The Final Riot.jpg'),
(51, 'Samriddhi', 'Manandhar', 'Samriddhi', 'samriddhimanandhar@gmail.com', '9823123456', 'Male', '1993-02-03', 'Kathmandu', 'p3CUywx9XA9kYa7vez48H6i3K8rFPZXIXBvM/lzNEIMRIrwg09JcT6eQq0KPfvByCnyTODc=', 'Customer', 'Paramore.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  ADD PRIMARY KEY (`doctor_availability_id`),
  ADD KEY `doctor_availablity_fk` (`doctor_id`);

--
-- Indexes for table `doctor_user`
--
ALTER TABLE `doctor_user`
  ADD PRIMARY KEY (`user_id`,`doctor_id`),
  ADD KEY `doctor_fk` (`doctor_id`);

--
-- Indexes for table `doctor_user_appointment`
--
ALTER TABLE `doctor_user_appointment`
  ADD PRIMARY KEY (`user_id`,`doctor_id`,`appointment_id`),
  ADD KEY `appointment_fk` (`appointment_id`),
  ADD KEY `doctor_appointment_fk` (`doctor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  MODIFY `doctor_availability_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  ADD CONSTRAINT `doctor_availablity_fk` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`);

--
-- Constraints for table `doctor_user`
--
ALTER TABLE `doctor_user`
  ADD CONSTRAINT `doctor_fk` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`),
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `doctor_user_appointment`
--
ALTER TABLE `doctor_user_appointment`
  ADD CONSTRAINT `appointment_fk` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`),
  ADD CONSTRAINT `doctor_appointment_fk` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`),
  ADD CONSTRAINT `user_appointment_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
