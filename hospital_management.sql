-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2020 at 08:43 PM
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
-- Database: `hospital_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission_management`
--

CREATE TABLE `admission_management` (
  `admission_no` varchar(20) NOT NULL,
  `patient_id` varchar(12) DEFAULT NULL,
  `patient_disease` varchar(10) DEFAULT NULL,
  `patient_room` varchar(10) DEFAULT NULL,
  `patient_DOSUB` varchar(20) DEFAULT NULL,
  `patient_DODIS` varchar(20) DEFAULT NULL,
  `bill_status` varchar(15) DEFAULT NULL,
  `assign_doctor` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admission_management`
--

INSERT INTO `admission_management` (`admission_no`, `patient_id`, `patient_disease`, `patient_room`, `patient_DOSUB`, `patient_DODIS`, `bill_status`, `assign_doctor`) VALUES
('1', '18201069', 'Fever', '213', '24/07/2020', '27/09/2020', 'paid', '4653516'),
('2', '18201070', 'Asthma', '214', '14/05/2020', 'running', 'Half Paid', '6546519'),
('3', '18201071', 'Cancer', '216', '19/07/2020', 'running', 'Due', '356868'),
('4', '18201072', 'Tonsil', '305', '02/09/2020', 'running', 'Due', '5646546'),
('5', '18201074', 'Food poiso', '302', '29/08/2020', '10/09/2020', 'Paid', '7654654'),
('6', '18201091', 'Heart Dise', '310', '09/09/2020', 'running', 'Due', '356868'),
('7', '18201084', 'Covid 19', '300', '27/09/2020', 'running', 'Half Paid', '4653516');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `p_id` varchar(12) DEFAULT NULL,
  `bill_no` int(11) NOT NULL,
  `admission_fee` decimal(9,2) DEFAULT NULL,
  `surgeon_fee` decimal(9,2) DEFAULT NULL,
  `ward_fee` decimal(9,2) DEFAULT NULL,
  `equipment_fee` decimal(9,2) DEFAULT NULL,
  `diagnostic` decimal(9,2) DEFAULT NULL,
  `maintanance_fee` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`p_id`, `bill_no`, `admission_fee`, `surgeon_fee`, `ward_fee`, `equipment_fee`, `diagnostic`, `maintanance_fee`) VALUES
('18201072', 124, '5000.00', '7000.00', '5000.00', '2500.00', '3000.00', '2000.00'),
('18201074', 187, '5000.00', '8000.00', '8500.00', '5000.00', '7000.00', '2000.00'),
('18201069', 384, '5000.00', '7000.00', '500.00', '2500.00', '4000.00', '2000.00'),
('18201091', 416, '5000.00', '8000.00', '8500.00', '3000.00', '3000.00', '2000.00'),
('18201070', 681, '5000.00', '8000.00', '5000.00', '3000.00', '2500.00', '2000.00'),
('18201071', 816, '5000.00', '6000.00', '11500.00', '2000.00', '3000.00', '2000.00'),
('18201084', 837, '5000.00', '10000.00', '10000.00', '1500.00', '1000.00', '2000.00');

-- --------------------------------------------------------

--
-- Table structure for table `cabin_info`
--

CREATE TABLE `cabin_info` (
  `cabin_no` varchar(12) NOT NULL,
  `cabin_type` varchar(10) DEFAULT NULL,
  `cabin_booked` varchar(12) DEFAULT NULL,
  `cabin_luxury_item` varchar(10) DEFAULT NULL,
  `cabin_free` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cabin_info`
--

INSERT INTO `cabin_info` (`cabin_no`, `cabin_type`, `cabin_booked`, `cabin_luxury_item`, `cabin_free`) VALUES
('213', 'Standard S', '18201069', 'Internet', 'NO'),
('214', 'Deluxe Sin', '18201070', 'TV , AC, I', 'NO'),
('216', 'Double Bed', '18201071', 'Internet', 'NO'),
('300', 'Standard S', '18201084', 'TV', 'NO'),
('302', 'Standard S', '18201074', 'Internet,A', 'NO'),
('305', 'Double Bed', '18201072', 'TV,Interne', 'NO'),
('310', 'Luxury Sin', '18201091', 'Internet,A', 'NO'),
('415', NULL, NULL, NULL, 'YES'),
('420', NULL, NULL, NULL, 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctors_id` varchar(12) NOT NULL,
  `doctors_name` varchar(15) NOT NULL,
  `doctors_gender` varchar(8) NOT NULL,
  `doctors_ph_no` varchar(12) NOT NULL,
  `doctors_expertise` varchar(15) NOT NULL,
  `doctors_room` varchar(10) NOT NULL,
  `doctors_visiting_hour` varchar(20) NOT NULL,
  `doctors_qualification` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctors_id`, `doctors_name`, `doctors_gender`, `doctors_ph_no`, `doctors_expertise`, `doctors_room`, `doctors_visiting_hour`, `doctors_qualification`) VALUES
('356868', 'Prof. Dr. Sarwa', 'Male', '1819494530', 'Cancer – Oncolo', '120', '9PM-10PM', 'MBBS, DIH ( DU '),
('4653516', 'Dr. Gopen Kumar', 'Male', '880-2-961234', 'Pediatric Neuro', '110', '8PM-10PM', 'MBBS, DCH, FCPS'),
('5646546', 'Dr. Mohammad Ja', 'Male', '880-2-654684', 'Acute medical e', '124', '8PM-10PM', 'MBBS(Ctg), MRCP'),
('6546519', 'Professor Dr. A', 'Male', '8610793-8', 'Medicine and Ch', '154', '7PM- 9PM', 'MBBS(DMC) FCPS('),
('7654654', 'Professor (Dr.)', 'Male', '184646437', 'Interventional ', '178', '6PM-9PM', 'MBBS, MD (Cardi');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` varchar(12) NOT NULL,
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
('18201069', 'Abdulla Bin Ami', 'male', 23, '26/03/1997', '1686453482', 'Dhaka'),
('18201070', 'Shahriar Shafin', 'Male', 20, '07/02/2000', '1915463846', 'Dinajpur'),
('18201071', 'Imran Nazir', 'Male', 24, '15/12/1996', '1846165468', 'Sirajgong'),
('18201072', 'Tumpa Shaha', 'Female', 23, '20/09/2000', '1715464846', 'Netrokona'),
('18201074', 'Tahmid Sakib', 'Male', 21, '07/03/1999', '1843153465', 'Naoga'),
('18201084', 'Nishat Shahrin', 'Female', 19, '11/07/2001', '1546462187', 'Dhaka'),
('18201091', 'Nipa Khatun', 'Female', 18, '02/02/2002', '17154686531', 'Pabna');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(15) DEFAULT NULL,
  `staff_gender` varchar(6) DEFAULT NULL,
  `staff_contact` varchar(12) DEFAULT NULL,
  `working_area` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_gender`, `staff_contact`, `working_area`) VALUES
(18201048, 'Zahir', 'Male', '1546648434', '300'),
(18201053, 'Eva', 'Female', '156435843', '214'),
(18201059, 'Rifat', 'Male', '1685481351', '305'),
(18201061, 'Sizan', 'Male', '17667816', '216'),
(18201065, 'Ayman', 'Male', '18468150', '213'),
(18201083, 'Laka', 'Female', '1843158432', '310'),
(18201089, 'Sinzon', 'Female', '17615345', '302');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission_management`
--
ALTER TABLE `admission_management`
  ADD PRIMARY KEY (`admission_no`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `patient_room` (`patient_room`),
  ADD KEY `assign_doctor` (`assign_doctor`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_no`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `cabin_info`
--
ALTER TABLE `cabin_info`
  ADD PRIMARY KEY (`cabin_no`),
  ADD KEY `cabin_booked` (`cabin_booked`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctors_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `working_area` (`working_area`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admission_management`
--
ALTER TABLE `admission_management`
  ADD CONSTRAINT `admission_management_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `admission_management_ibfk_2` FOREIGN KEY (`patient_room`) REFERENCES `cabin_info` (`cabin_no`),
  ADD CONSTRAINT `admission_management_ibfk_3` FOREIGN KEY (`assign_doctor`) REFERENCES `doctor` (`doctors_id`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `patient` (`patient_id`);

--
-- Constraints for table `cabin_info`
--
ALTER TABLE `cabin_info`
  ADD CONSTRAINT `cabin_info_ibfk_1` FOREIGN KEY (`cabin_booked`) REFERENCES `patient` (`patient_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`working_area`) REFERENCES `cabin_info` (`cabin_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
