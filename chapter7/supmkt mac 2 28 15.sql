-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Feb 28, 2015 at 11:48 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUS_CODE` mediumint(8) unsigned NOT NULL,
  `CUS_LNAME` varchar(15) NOT NULL,
  `CUS_FNAME` varchar(15) NOT NULL,
  `CUS_INITIAL` char(1) DEFAULT NULL,
  `CUS_AREACODE` char(3) NOT NULL DEFAULT '615',
  `CUS_PHONE` char(8) NOT NULL,
  `CUS_BALANCE` decimal(9,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUS_CODE`, `CUS_LNAME`, `CUS_FNAME`, `CUS_INITIAL`, `CUS_AREACODE`, `CUS_PHONE`, `CUS_BALANCE`) VALUES
(12, 'Brown', 'John', 'M', '760', '123-4567', 1023.45),
(13, 'Smith', 'Mary', 'L', '619', '444-1111', 23.00),
(14, 'Doe', 'John', 'A', '909', '555-1212', 2480.83),
(15, 'Sunshine', 'Suzy', 'T', '615', '444-1869', 0.08),
(16, 'Timber', 'Lake', 'Q', '619', '222-3871', 44.21);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `INV_NUMBER` mediumint(8) unsigned NOT NULL,
  `CUS_CODE` mediumint(8) unsigned NOT NULL,
  `INV_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`INV_NUMBER`, `CUS_CODE`, `INV_DATE`) VALUES
(1, 12, '2014-11-05 16:00:00'),
(2, 13, '2014-11-12 16:00:00'),
(3, 14, '2014-11-05 16:00:00'),
(4, 15, '2014-12-08 16:00:00'),
(5, 16, '2014-09-12 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `line`
--

CREATE TABLE `line` (
  `INV_NUMBER` mediumint(8) unsigned NOT NULL,
  `LINE_NUMBER` decimal(2,0) NOT NULL,
  `P_CODE` varchar(10) NOT NULL,
  `LINE_UNITS` decimal(9,2) unsigned NOT NULL DEFAULT '0.00',
  `LINE_PRICE` decimal(9,2) unsigned NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `line`
--

INSERT INTO `line` (`INV_NUMBER`, `LINE_NUMBER`, `P_CODE`, `LINE_UNITS`, `LINE_PRICE`) VALUES
(100, 23, '4080', 100.00, 2054.64),
(200, 43, '1920', 200.00, 3083.29),
(300, 35, '1611', 10.00, 1090.00),
(400, 53, '4380', 40.00, 8000.00),
(500, 63, '4383', 80.00, 4333.18);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `P_CODE` varchar(10) NOT NULL,
  `P_DESCRIPT` varchar(35) NOT NULL,
  `P_INDATE` date NOT NULL,
  `P_QOH` smallint(6) NOT NULL,
  `P_MIN` smallint(6) NOT NULL,
  `P_PRICE` decimal(8,2) NOT NULL,
  `P_DISCOUNT` decimal(5,2) NOT NULL,
  `V_CODE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`P_CODE`, `P_DESCRIPT`, `P_INDATE`, `P_QOH`, `P_MIN`, `P_PRICE`, `P_DISCOUNT`, `V_CODE`) VALUES
('4080', 'Save the earth grocery sack', '2011-06-12', 25, 10, 16.00, 20.00, 1234),
('2620', 'Pink nalgene bottle', '2013-08-01', 14, 1, 10.99, 10.00, 5678),
('3620', 'Dansko professional oil clog black ', '2014-01-25', 6, 1, 119.99, 10.00, 91011),
('5620', 'Blue Breathe Sticky Yoga Mat', '2014-10-23', 10, 1, 18.99, 10.00, 121314),
('6820', 'Ecko Duffel Bag', '2013-05-01', 16, 1, 49.99, 20.00, 151617);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `V_CODE` int(11) NOT NULL,
  `V_NAME` varchar(35) NOT NULL,
  `V_CONTACT` varchar(15) NOT NULL,
  `V_AREACODE` char(3) NOT NULL,
  `V_PHONE` char(8) NOT NULL,
  `V_STATE` char(2) NOT NULL,
  `V_ORDER` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`V_CODE`, `V_NAME`, `V_CONTACT`, `V_AREACODE`, `V_PHONE`, `V_STATE`, `V_ORDER`) VALUES
(1234, 'Prana Yoga', 'Sally Whitman', '615', '555-1212', 'NV', '1'),
(5678, 'Nalgene Products', 'Bob Dixon', '615', '555-2130', 'CO', '2'),
(91011, 'Dansko Shoes', 'Bernadette Ande', '615', '555-5299', 'WI', '3'),
(121314, 'Gaiam', 'Alexander Green', '615', '555-9900', 'CA', '4'),
(151617, 'Mark Ecko Ltd.', 'Diane Freezepoi', '615', '555-8872', 'KS', '5');