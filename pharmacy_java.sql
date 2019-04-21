-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 02:42 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pharmacy_java`
--
CREATE DATABASE IF NOT EXISTS `pharmacy_java` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pharmacy_java`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `name`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `billid` int(11) NOT NULL AUTO_INCREMENT,
  `billdate` date NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `mob` varchar(15) NOT NULL,
  `orderid` varchar(150) NOT NULL,
  `custid` int(11) NOT NULL,
  PRIMARY KEY (`billid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`billid`, `billdate`, `cust_name`, `mob`, `orderid`, `custid`) VALUES
(1, '2018-12-05', 'customer', '3423423', '1812051216591259', 1),
(4, '2018-12-05', 'Sharath', '7353737783', '1812050132461246', 2),
(5, '2018-12-05', 'Umesh', '9741707609', '1812050135371237', 3),
(6, '2018-12-05', 'Sachin', '746135598', '1812050136571257', 0),
(7, '2018-12-05', 'arun', '789456123', '1812050414291229', 0),
(8, '2018-12-05', 'sharath', '7353737783', '1812050415401240', 2),
(9, '2018-12-07', 'sharath', '7353737783', '181207095808128', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cartid` int(11) NOT NULL AUTO_INCREMENT,
  `medid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `orderid` varchar(150) NOT NULL,
  `status` int(11) NOT NULL,
  `custid` int(11) NOT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `medid`, `qty`, `orderid`, `status`, `custid`) VALUES
(1, 1, 1, '1812051216591259', 1, 1),
(2, 2, 5, '1812051216591259', 1, 1),
(4, 1, 2, '181205123102122', 1, 1),
(5, 1, 1, '181205123102122', 1, 1),
(6, 5, 1, '1812050128521252', 1, 0),
(7, 5, 1, '1812050132461246', 1, 2),
(8, 3, 1, '1812050135371237', 1, 3),
(9, 3, 1, '1812050136571257', 1, 0),
(10, 5, 1, '1812050414291229', 1, 0),
(11, 5, 1, '1812050415401240', 1, 2),
(12, 3, 1, '181207095808128', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `custid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `mob` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `gender` varchar(20) NOT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custid`, `name`, `email`, `pass`, `mob`, `address`, `gender`) VALUES
(1, 'customer', 'customer@gmail.com', '123456', '3432423423', 'hubli', 'Male'),
(2, 'Sharath', 'sharath@gmail.com', '123456', '7353737783', 'Ranebennur', 'Male'),
(3, 'Umesh', 'umesh@gmail.com', '123456', '9741707609', 'Haveri', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
  `medid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `expiry` date NOT NULL,
  `rackno` int(11) NOT NULL,
  `row` int(11) NOT NULL,
  `contents` varchar(1000) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`medid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medid`, `name`, `type`, `price`, `expiry`, `rackno`, `row`, `contents`, `stock`) VALUES
(3, 'Cipla', 'Tablet', 50, '2019-01-20', 3, 1, 'Cold', 497),
(4, 'Dolopher', 'Tablet', 60, '2019-08-28', 5, 3, 'fever', 1000),
(5, 'AmruthBindu', 'Syrup', 60, '2020-02-28', 6, 3, 'Cuff', 496);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staffid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `mob` varchar(15) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(300) NOT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `fname`, `lname`, `email`, `pass`, `mob`, `gender`, `address`) VALUES
(2, 'Ramu', 'Patil', 'ramu@gmail.com', '123456', '7353737783', 'Male', 'Ranebennur');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
