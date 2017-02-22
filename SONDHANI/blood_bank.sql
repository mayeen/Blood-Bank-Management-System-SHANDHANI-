-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2016 at 04:42 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE IF NOT EXISTS `blood_bank` (
  `id` int(11) NOT NULL,
  `blood_count` int(11) DEFAULT NULL,
  `blood_group` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id`, `blood_count`, `blood_group`) VALUES
(1, 1, 'A+'),
(2, 0, 'A-'),
(3, 1, 'B+'),
(4, 0, 'B-'),
(5, 0, 'O+'),
(6, 0, 'O-'),
(7, 1, 'AB+'),
(8, 0, 'AB-');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE IF NOT EXISTS `camp` (
  `camp_id` int(11) NOT NULL,
  `camp_name` varchar(45) DEFAULT NULL,
  `camp_date` varchar(45) DEFAULT NULL,
  `camp_location` varchar(45) DEFAULT NULL,
  `camp_city` varchar(45) DEFAULT NULL,
  `camp_state` varchar(45) DEFAULT NULL,
  `camp_blood_collection` varchar(45) NOT NULL DEFAULT '0,0,0,0,0,0,0,0',
  `camp_total_amount` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`camp_id`, `camp_name`, `camp_date`, `camp_location`, `camp_city`, `camp_state`, `camp_blood_collection`, `camp_total_amount`) VALUES
(3, 'Guru Ravidas camp', '23/03/2015', 'ACET, Manawala', 'Amritsar', 'Punjab', '0,0,2,0,0,0,0,0', '2'),
(4, 'Amar Camp', '23/03/2015', 'Khalsa college', 'Amritsar', 'Punjab', '0,0,1,0,0,0,1,0', '2'),
(5, 'donation 1', '15/02/2016', 'Sohrawardi Hospital, Dhaka', 'Dhaka', 'Bangladesh', '1,0,0,0,0,0,0,0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE IF NOT EXISTS `donor` (
  `donor_id` int(11) NOT NULL,
  `donor_name` varchar(45) DEFAULT NULL,
  `father_name` varchar(40) NOT NULL,
  `mother_name` varchar(40) NOT NULL,
  `donor_dob` varchar(11) NOT NULL,
  `donor_sex` varchar(40) NOT NULL,
  `donor_occupation` varchar(40) NOT NULL,
  `donor_weight` int(11) NOT NULL,
  `bp_systolic` int(11) NOT NULL,
  `bp_diastolic` int(11) NOT NULL,
  `present_address` varchar(100) NOT NULL,
  `permanent_address` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `last_donation_date` varchar(11) NOT NULL,
  `regular_donor` varchar(4) NOT NULL,
  `donor_blood_group` varchar(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donor_id`, `donor_name`, `father_name`, `mother_name`, `donor_dob`, `donor_sex`, `donor_occupation`, `donor_weight`, `bp_systolic`, `bp_diastolic`, `present_address`, `permanent_address`, `email`, `last_donation_date`, `regular_donor`, `donor_blood_group`) VALUES
(12, 'assadas', 'adasdas', 'asdasdasd', '12/02/1986', 'Female', 'asdsadsadas', 11, 11, 11, 'dasdas', 'dadasdasd', 'sadadasd', '10/02/2015', 'Yes', 'B+'),
(13, 'asdasdas', 'asdasdsa', 'asdasdsadas', '04/02/1992', 'Male', 'asdasd', 11, 22, 22, 'dsadsadas', 'asdasd', 'asdasdasdasasd', '13/02/2007', 'Yes', 'A-');

-- --------------------------------------------------------

--
-- Table structure for table `donors_in_camp`
--

CREATE TABLE IF NOT EXISTS `donors_in_camp` (
  `id` int(11) NOT NULL,
  `donor_id` int(11) DEFAULT NULL,
  `camp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donors_in_camp`
--

INSERT INTO `donors_in_camp` (`id`, `donor_id`, `camp_id`) VALUES
(1, 1, 3),
(2, 1, 3),
(3, 2, 4),
(4, 1, 4),
(5, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(45) DEFAULT NULL,
  `hospital_address` varchar(300) DEFAULT NULL,
  `hospital_city` varchar(45) DEFAULT NULL,
  `hospital_state` varchar(45) DEFAULT NULL,
  `hospital_phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospital_id`, `hospital_name`, `hospital_address`, `hospital_city`, `hospital_state`, `hospital_phone`) VALUES
(1, 'Amandeep Hospital', 'Near Rani ka Bagh', 'Amritsar', 'Punjab', '1832228659');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `user_name` varchar(30) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_name`, `password`, `email`) VALUES
('admin', 'admin', 'sidharth_thukral@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `supply`
--

CREATE TABLE IF NOT EXISTS `supply` (
  `supply_id` int(11) NOT NULL,
  `hospital_id` varchar(45) DEFAULT NULL,
  `supply_date` varchar(45) DEFAULT NULL,
  `supply_blood_group` varchar(45) DEFAULT NULL,
  `supply_total_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supply`
--

INSERT INTO `supply` (`supply_id`, `hospital_id`, `supply_date`, `supply_blood_group`, `supply_total_amount`) VALUES
(1, '1', '23/03/2015', '0,0,1,0,0,0,0,0', 1),
(2, '1', '23/03/2015', '0,0,1,0,0,0,0,0', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`camp_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `donors_in_camp`
--
ALTER TABLE `donors_in_camp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `supply`
--
ALTER TABLE `supply`
  ADD PRIMARY KEY (`supply_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_bank`
--
ALTER TABLE `blood_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `camp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `donors_in_camp`
--
ALTER TABLE `donors_in_camp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supply`
--
ALTER TABLE `supply`
  MODIFY `supply_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
