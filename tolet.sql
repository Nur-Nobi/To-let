-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2019 at 01:04 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tolet`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE IF NOT EXISTS `advertise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `division` varchar(50) NOT NULL,
  `district` varchar(30) NOT NULL,
  `upazila` varchar(100) NOT NULL,
  `area` varchar(50) NOT NULL,
  `house` varchar(30) NOT NULL,
  `houseType` varchar(30) NOT NULL,
  `month` varchar(50) NOT NULL,
  `rent` int(6) NOT NULL,
  `image` varchar(255) NOT NULL,
  `descrip` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`id`, `email`, `name`, `phone`, `division`, `district`, `upazila`, `area`, `house`, `houseType`, `month`, `rent`, `image`, `descrip`) VALUES
(33, 'jewelcste@gmail.com', 'Jewel', '01676319480', '1', '1', '1', '2', 'Anmol', '2', 'April', 799, './assets/images/4.jpg', 'Natural View.3 room flat.with attach bathroom.'),
(34, 'jewelcste@gmail.com', 'Jewel', '01676319480', '1', '1', '2', '4', '28', '2', 'July', 6000, './assets/images/apartment-architecture-blue-sky-358636.jpg', 'Natural View'),
(35, 'jewelcste@gmail.com', 'Jewel', '01676319480', '1', '1', '1', '2', 'Heaven', '2', 'July', 6000, './assets/images/3.jpg', 'Natural View.3 room flat.with attach bathroom.'),
(36, 'jewelcste@gmail.com', 'Jewel', '01676319480', '1', '1', '2', '3', 'Buiyan House, 21, 57', '1', 'May', 6000, './assets/images/1.jpg', 'Natural View.3 room flat.with attach bathroom.');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `upazila_id` int(5) NOT NULL,
  `area_name` varchar(50) NOT NULL,
  PRIMARY KEY (`area_id`),
  KEY `upazila_id` (`upazila_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `upazila_id`, `area_name`) VALUES
(1, 1, 'Danmondi 4/A'),
(2, 1, 'Danmondi 32'),
(3, 2, 'Kalabagan qtr'),
(4, 2, 'Green Road');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `dis_id` int(11) NOT NULL AUTO_INCREMENT,
  `division_id` int(11) NOT NULL,
  `dis_name` varchar(50) NOT NULL,
  PRIMARY KEY (`dis_id`),
  KEY `division_id` (`division_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`dis_id`, `division_id`, `dis_name`) VALUES
(1, 1, 'Dhaka'),
(2, 1, 'Narayanganj'),
(3, 2, 'Chittagong'),
(4, 2, 'Feni');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE IF NOT EXISTS `division` (
  `div_id` int(11) NOT NULL AUTO_INCREMENT,
  `div_name` varchar(50) NOT NULL,
  PRIMARY KEY (`div_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`div_id`, `div_name`) VALUES
(1, 'Dhaka'),
(2, 'Chittagong');

-- --------------------------------------------------------

--
-- Table structure for table `housetype`
--

CREATE TABLE IF NOT EXISTS `housetype` (
  `hou_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`hou_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `housetype`
--

INSERT INTO `housetype` (`hou_id`, `type_name`) VALUES
(1, 'Flat'),
(2, 'Mess');

-- --------------------------------------------------------

--
-- Table structure for table `upazila`
--

CREATE TABLE IF NOT EXISTS `upazila` (
  `up_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_id` int(5) NOT NULL,
  `up_name` varchar(50) NOT NULL,
  PRIMARY KEY (`up_id`),
  KEY `district_id` (`district_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `upazila`
--

INSERT INTO `upazila` (`up_id`, `district_id`, `up_name`) VALUES
(1, 1, 'Danmondi'),
(2, 1, 'Kalabagan'),
(3, 1, 'New Market'),
(4, 1, 'Ramna'),
(5, 4, 'Feni Sadar'),
(6, 4, 'Fulgazi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `password`) VALUES
(7, 'Nur Nobi', 'nurnobi319@gmail.com', '01676323896', '1234'),
(8, 'Jewel', 'jewelcste@gmail.com', '01676319480', '12345'),
(10, 'Kamrul Hassan', 'kamrul@gmail.com', '01676323896', '123456'),
(14, 'Mahid Ahmed Moshi', 'moshi@gmail.com', '01676319480', '12345'),
(15, 'Rakib Hasan', 'rakib33@gmail.com', '5939438054', '12345');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`upazila_id`) REFERENCES `upazila` (`up_id`);

--
-- Constraints for table `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `district_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `division` (`div_id`);

--
-- Constraints for table `upazila`
--
ALTER TABLE `upazila`
  ADD CONSTRAINT `upazila_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `district` (`dis_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
