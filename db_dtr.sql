-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 02:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dtr`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(50) NOT NULL,
  `employee_id` int(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `img` varchar(200) NOT NULL,
  `img1` varchar(200) NOT NULL,
  `time_in` datetime NOT NULL DEFAULT current_timestamp(),
  `time_out` datetime NOT NULL,
  `overtime` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_credentials`
--

CREATE TABLE `tbl_credentials` (
  `user_id` int(50) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `employee_number` int(50) NOT NULL,
  `Department` varchar(200) NOT NULL,
  `Shift` varchar(200) NOT NULL,
  `dayoff1` varchar(200) NOT NULL,
  `img` varchar(300) NOT NULL,
  `contactnum` int(50) NOT NULL,
  `dayoff2` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `timein` varchar(200) NOT NULL,
  `timeout` varchar(200) NOT NULL,
  `overtime` varchar(200) NOT NULL,
  `team` varchar(200) NOT NULL,
  `user_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_credentials`
--

INSERT INTO `tbl_credentials` (`user_id`, `username`, `password`, `fname`, `mname`, `lname`, `employee_number`, `Department`, `Shift`, `dayoff1`, `img`, `contactnum`, `dayoff2`, `address`, `timein`, `timeout`, `overtime`, `team`, `user_type`) VALUES
(3, 'sample123@gmail.com', 'sample123', 'BAILEY', '', 'LUNA', 2023, 'Admin Staff', 'Graveyard', 'Monday', '310522170_842638446907567_7129249624923137600_n.jpg', 2147483647, 'Monday', 'Sanjuan City', '', '', '', '', ''),
(4, 'giangaleon69@gmail.com', 'giangaleon69', 'Gian', '', 'Galeon', 69420111, 'Admin Staff', 'Morning', 'Monday', 'IMG_5337.jpg', 2147483647, 'Tuesday', 'Sanjuan City', '', '', '', '', ''),
(7, 'pricesshusky12@gmail.com', 'pricesshusky', 'Princess', '', 'Husky', 534563, 'Admin Staff', 'Morning', 'Tuesday', 'channels4_profile.jpg', 2147483647, 'Thursday', 'Sanjuan City', '', '', '', '', ''),
(8, 'ivansison12@gmail.com', 'ivansison', 'Ivan', '', 'sison', 69420111, 'Dispatcher', 'Graveyard', 'Tuesday', 'IMG_5321.jpg', 2147483647, 'Wednesday', 'Sanjuan City', '', '', '', '', ''),
(9, 'jeromemontimar281121@gmail.com', 'jerome281121', 'Jerome', '', 'Montimar', 356456, 'Responder', 'Morning', 'Wednesday', 'man.png', 2147483647, 'Thursday', 'Sanjuan City', '', '', '', 'ALPHA', ''),
(17, 'nina.nachor30@gmail.com', 'nina.nachor30', 'Nina', '', 'Nachor', 5487, 'Cedoc', 'Morning', 'Tuesday', 'kapeko1.png', 2147483647, 'Thursday', '528 L Gruet Street Brgy Maytunas San Juan City', '', '', '', 'ALPHA', ''),
(18, 'sean@gmail.com', 'sean123', 'sean', '', 'punzal', 7894, 'Cedoc', 'Graveyard', 'Wednesday', 'logo_zamora.png', 121657113, 'Saturday', 'asd 213218954asd', '', '', '', 'ALPHA', ''),
(19, 'aaa@gmail.com', 'aaa123', 'aaa', '', 'bbb', 6789, 'Responder', 'Morning', 'Monday', 'tree4.jpg', 1234567891, 'Thursday', 'QC', '', '', '', 'ALPHA', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hotline`
--

CREATE TABLE `tbl_hotline` (
  `hotline_id` int(30) NOT NULL,
  `timeoncall` varchar(200) NOT NULL,
  `contactnum` varchar(200) NOT NULL,
  `nameofcaller` varchar(200) NOT NULL,
  `brgy` varchar(200) NOT NULL,
  `concern` varchar(200) NOT NULL,
  `actiontaken` varchar(200) NOT NULL,
  `calltaker` varchar(200) NOT NULL,
  `shift` varchar(200) NOT NULL,
  `todaydate` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_hotline`
--

INSERT INTO `tbl_hotline` (`hotline_id`, `timeoncall`, `contactnum`, `nameofcaller`, `brgy`, `concern`, `actiontaken`, `calltaker`, `shift`, `todaydate`) VALUES
(1, '23:46', '1241241241', 'KAI SOTTO', 'asdasfasf', 'asfasfasf', 'asfasfas', 'fasfas', 'Morning Shift', '2023-09-14'),
(3, '15:03', '031584984125', 'Dwight Whamos', 'DASFASFS', 'sfgagas', 'dasfgas', 'dasfasfas', 'Morning Shift', '2023-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offset`
--

CREATE TABLE `tbl_offset` (
  `offset_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `emp_id` varchar(200) NOT NULL,
  `qtr_week1` varchar(200) NOT NULL,
  `us_dayoff1` varchar(300) NOT NULL,
  `us_dayoff2` varchar(300) NOT NULL,
  `dt_abs1` varchar(300) NOT NULL,
  `dt_abs2` varchar(300) NOT NULL,
  `dt_offset1` varchar(200) NOT NULL,
  `dt_offset2` varchar(200) NOT NULL,
  `reason` varchar(300) NOT NULL,
  `status` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_offset`
--

INSERT INTO `tbl_offset` (`offset_id`, `name`, `emp_id`, `qtr_week1`, `us_dayoff1`, `us_dayoff2`, `dt_abs1`, `dt_abs2`, `dt_offset1`, `dt_offset2`, `reason`, `status`) VALUES
(1, 'asdfasdf', '4312412412412', '1-15', 'Monday', 'Monday', '2023-09-12', '2023-09-14', '2023-09-20', '2023-09-16', 'fasdfsadfxcvxzcvxc subo tt', ''),
(2, 'ally', '12345', '16-31', 'Monday', 'Tuesday', '2023-09-13', '2023-09-14', '2023-09-13', '2023-09-14', 'asasdasd', ''),
(3, 'Jerome', '2023', '16-31', 'Tuesday', 'Monday', '2023-09-06', '2023-09-15', '2023-09-16', '2023-09-16', 'U suck', 'Approved'),
(4, 'Gian Pwet', '2023', '16-31', 'Tuesday', 'Wednesday', '2023-09-13', '2023-09-15', '2023-09-13', '2023-09-15', 'IM sick of this shit', 'Approved'),
(5, 'Jojo', '2023', '1-15', 'Tuesday', 'Thursday', '2023-09-14', '2023-09-16', '2023-09-16', '2023-09-15', 'just minding my own shit', ''),
(7, 'sean', '7894', '1-15', 'Monday', 'Tuesday', '2023-09-16', '2023-09-17', '2023-09-19', '2023-09-20', 'asdasd', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_personnel`
--

CREATE TABLE `tbl_personnel` (
  `personnel_id` int(30) NOT NULL,
  `shift` varchar(300) NOT NULL,
  `date` varchar(300) NOT NULL,
  `personnelOnduty` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_personnel`
--

INSERT INTO `tbl_personnel` (`personnel_id`, `shift`, `date`, `personnelOnduty`) VALUES
(1, 'Morning Shift', '2023-09-14', 'Hello!?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report`
--

CREATE TABLE `tbl_report` (
  `team` varchar(200) NOT NULL,
  `ambulance` varchar(200) NOT NULL,
  `transport_officers` varchar(200) NOT NULL,
  `responder` varchar(200) NOT NULL,
  `dispatch_time` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `time_facility` varchar(200) NOT NULL,
  `concern` varchar(200) NOT NULL,
  `backtobase` varchar(200) NOT NULL,
  `dispatcher` varchar(200) NOT NULL,
  `radioops` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `report_id` int(30) NOT NULL,
  `shift` varchar(200) NOT NULL,
  `todaydate` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_report`
--

INSERT INTO `tbl_report` (`team`, `ambulance`, `transport_officers`, `responder`, `dispatch_time`, `location`, `time_facility`, `concern`, `backtobase`, `dispatcher`, `radioops`, `date`, `report_id`, `shift`, `todaydate`) VALUES
('Bravo', '900 Alpha', 'Robles, EMT', 'Galeon, Pagaduan, Montimar', '02:01', 'LTB', '02:50', 'Medical Case', '02:10', 'nachor', 'galeon', '2023-09-02', 5, 'Morning Shift', '2023-09-14'),
('Bravo', '900 Charlie', '900 Delta', 'Goku', '15:05', 'Maria Clara', '15:05', 'Trauma Case', '17:05', 'Vegeta', 'Whamos', '2023-09-14', 6, 'Morning Shift', '2023-09-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `tbl_credentials`
--
ALTER TABLE `tbl_credentials`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_hotline`
--
ALTER TABLE `tbl_hotline`
  ADD PRIMARY KEY (`hotline_id`);

--
-- Indexes for table `tbl_offset`
--
ALTER TABLE `tbl_offset`
  ADD PRIMARY KEY (`offset_id`);

--
-- Indexes for table `tbl_personnel`
--
ALTER TABLE `tbl_personnel`
  ADD PRIMARY KEY (`personnel_id`);

--
-- Indexes for table `tbl_report`
--
ALTER TABLE `tbl_report`
  ADD PRIMARY KEY (`report_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_credentials`
--
ALTER TABLE `tbl_credentials`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_hotline`
--
ALTER TABLE `tbl_hotline`
  MODIFY `hotline_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_offset`
--
ALTER TABLE `tbl_offset`
  MODIFY `offset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_personnel`
--
ALTER TABLE `tbl_personnel`
  MODIFY `personnel_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_report`
--
ALTER TABLE `tbl_report`
  MODIFY `report_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
