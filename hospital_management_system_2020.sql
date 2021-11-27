-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2020 at 04:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management_system_2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission_management`
--

CREATE TABLE `admission_management` (
  `patient_id` int(11) NOT NULL,
  `patient_disease` varchar(10) NOT NULL,
  `patient_DOSUB` varchar(20) NOT NULL,
  `patient_DODIS` varchar(20) NOT NULL,
  `room_no` int(15) DEFAULT NULL,
  `bill_no` varchar(20) NOT NULL,
  `bill_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admission_management`
--

INSERT INTO `admission_management` (`patient_id`, `patient_disease`, `patient_DOSUB`, `patient_DODIS`, `room_no`, `bill_no`, `bill_status`) VALUES
(18201069, 'Fever', '24/07/2020', '27/09/2020', 213, '001', 'paid'),
(18201070, 'Asthma', '14/05/2020', 'running', 214, '002', 'Half Paid'),
(18201071, 'Cancer', '19/07/2020', 'running', 216, '003', 'Due'),
(18201072, 'Tonsil', '02/09/2020', 'running', 305, '004', 'Due'),
(18201074, 'Food poiso', '29/08/2020', '10/09/2020', 302, '005', 'Paid'),
(18201084, 'Covid 19', '27/09/2020', 'running', 300, '007', 'Half Paid'),
(18201091, 'Heart Dise', '09/09/2020', 'running', 310, '006', 'Due');

-- --------------------------------------------------------

--
-- Table structure for table `bill_info`
--

CREATE TABLE `bill_info` (
  `room_fee` decimal(6,2) DEFAULT NULL,
  `med_fee` decimal(5,2) DEFAULT NULL,
  `equipment_fee` decimal(5,2) DEFAULT NULL,
  `admission_fee` decimal(6,2) DEFAULT NULL,
  `nursing_fee` decimal(6,2) DEFAULT NULL,
  `parking_fee` decimal(6,2) DEFAULT NULL,
  `Lab_fee` decimal(6,2) DEFAULT NULL,
  `bill_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctors_id` int(10) NOT NULL,
  `doctors_name` varchar(15) NOT NULL,
  `doctors_gender` varchar(8) NOT NULL,
  `doctors_ph_no` varchar(12) NOT NULL,
  `doctors_expertise` varchar(15) NOT NULL,
  `doctors_room` int(15) NOT NULL,
  `doctors_visiting_hour` varchar(20) NOT NULL,
  `doctors_qualification` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctors_id`, `doctors_name`, `doctors_gender`, `doctors_ph_no`, `doctors_expertise`, `doctors_room`, `doctors_visiting_hour`, `doctors_qualification`) VALUES
(356868, 'Prof. Dr. Sarwa', 'Male', '1819494530', 'Cancer – Oncolo', 220, '9PM-10PM', 'MBBS, DIH ( DU '),
(4653516, 'Dr. Gopen Kumar', 'Male', '8802961234', 'Pediatric Neuro', 215, '8PM-10PM', 'MBBS, DCH, FCPS'),
(5646546, 'Dr. Mohammad Ja', 'Male', '8802654684', 'Acute medical e', 301, '8PM-10PM', 'MBBS(Ctg), MRCP'),
(6546465, 'Dr. Abdul Hamid', 'Male', '88028143312', 'Chest, Asthma &', 110, '6PM- 8PM', 'MBBS, DTCD, MRI'),
(6546519, 'Professor Dr. A', 'Male', '86107938', '	\r\nMedicine and', 313, '7PM- 9PM', 'MBBS(DMC) FCPS('),
(7654654, 'Professor (Dr.)', 'Male', '184646437', 'Interventional ', 305, '6PM-9PM', 'MBBS, MD (Cardi');

-- --------------------------------------------------------

--
-- Table structure for table `med_info`
--

CREATE TABLE `med_info` (
  `med_name` varchar(15) NOT NULL,
  `med_code` int(7) NOT NULL,
  `med_quantity` int(50) NOT NULL,
  `med_company` varchar(15) NOT NULL,
  `med_price` decimal(4,2) NOT NULL,
  `med_description` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(15) NOT NULL,
  `patient_gender` varchar(6) NOT NULL,
  `patient_age` int(5) NOT NULL,
  `patient_DOB` varchar(20) NOT NULL,
  `patient_contact` varchar(12) NOT NULL,
  `patient_adress` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_name`, `patient_gender`, `patient_age`, `patient_DOB`, `patient_contact`, `patient_adress`) VALUES
(18201069, 'Abdulla', 'male', 23, '26/03/1997', '1686453482', 'Dhaka'),
(18201070, 'Shahriar Shafin', 'Male', 20, '07/02/2000', '1915463846', 'Dinajpur'),
(18201071, 'Imran Nazir', 'Male', 24, '15/12/1996', '1846165468', 'Sirajgong'),
(18201072, 'Tumpa Shaha', 'Female', 23, '20/09/2000', '1715464846', 'Netrokona'),
(18201074, 'Tahmid Sakib', 'Male', 21, '07/03/1999', '1843153465', 'Naoga'),
(18201084, 'Nishat Shahrin', 'Female', 19, '11/07/2001', '1546462187', 'Dhaka'),
(18201091, 'Nipa Khatun', 'Female', 18, '02/02/2002', '17154686531', 'Pabna');

-- --------------------------------------------------------

--
-- Table structure for table `room_info`
--

CREATE TABLE `room_info` (
  `room_no` int(15) NOT NULL,
  `room_type` varchar(15) DEFAULT NULL,
  `room_status` varchar(15) NOT NULL,
  `room_luxury_item` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_info`
--

INSERT INTO `room_info` (`room_no`, `room_type`, `room_status`, `room_luxury_item`) VALUES
(213, 'Standard Single', 'Abdulla Bin Ami', 'Internet'),
(214, 'Deluxe Single', 'Abdulla Bin Ami', 'TV , AC, Intern'),
(216, 'Double Bedded R', 'Shahriar Shafin', 'Internet'),
(300, 'Standard Single', 'Nipa Khatun', 'TV'),
(302, 'Standard Single', 'Tahmid Sakib', 'Internet,AC'),
(305, 'Double Bedded R', 'Tumpa Shaha', 'TV,Internet'),
(310, 'Luxury Single', 'Nishat Shahrin', 'Internet,AC'),
(415, NULL, 'available', NULL),
(420, NULL, 'available', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission_management`
--
ALTER TABLE `admission_management`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `bill_info`
--
ALTER TABLE `bill_info`
  ADD PRIMARY KEY (`bill_no`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctors_id`);

--
-- Indexes for table `med_info`
--
ALTER TABLE `med_info`
  ADD PRIMARY KEY (`med_code`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `room_info`
--
ALTER TABLE `room_info`
  ADD PRIMARY KEY (`room_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission_management`
--
ALTER TABLE `admission_management`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18201092;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctors_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7654655;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18201092;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
