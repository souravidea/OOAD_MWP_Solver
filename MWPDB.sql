-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 05, 2019 at 06:47 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `MWPDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `attend`
--

CREATE TABLE IF NOT EXISTS `attend` (
  `sent_sl_no` int(5) NOT NULL,
  `agent` int(30) NOT NULL,
  `phenomena` int(30) NOT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `be`
--

CREATE TABLE IF NOT EXISTS `be` (
  `sent_sl_no` int(5) NOT NULL,
  `owner_name` varchar(30) DEFAULT NULL,
  `variable_name` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE IF NOT EXISTS `borrow` (
  `sent_sl_no` int(5) NOT NULL,
  `borrower` varchar(30) NOT NULL,
  `lender` varchar(30) DEFAULT NULL,
  `theme` varchar(30) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `break`
--

CREATE TABLE IF NOT EXISTS `break` (
  `sent_sl_no` int(5) NOT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE IF NOT EXISTS `buy` (
  `sent_sl_no` int(5) NOT NULL,
  `buyer` varchar(30) DEFAULT NULL,
  `seller` varchar(30) DEFAULT NULL,
  `goods` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE IF NOT EXISTS `cost` (
  `sent_sl_no` int(5) NOT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `second_owner` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crack`
--

CREATE TABLE IF NOT EXISTS `crack` (
  `sent_sl_no` int(5) NOT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crack`
--

INSERT INTO `crack` (`sent_sl_no`, `owner`, `item`, `variable_count`) VALUES
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25),
(3, 'sally', 'seashell', 25);

-- --------------------------------------------------------

--
-- Table structure for table `cut`
--

CREATE TABLE IF NOT EXISTS `cut` (
  `sent_sl_no` int(5) NOT NULL,
  `agent` varchar(30) NOT NULL,
  `source` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `pieces` int(10) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `decide`
--

CREATE TABLE IF NOT EXISTS `decide` (
  `sent_sl_no` int(5) NOT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `variable_name` varchar(30) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `decrement`
--

CREATE TABLE IF NOT EXISTS `decrement` (
  `sent_sl_no` int(5) NOT NULL,
  `primary_owner` varchar(30) DEFAULT NULL,
  `secondary_owner` varchar(30) DEFAULT NULL,
  `item_name` varchar(30) DEFAULT NULL,
  `item_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eat`
--

CREATE TABLE IF NOT EXISTS `eat` (
  `sent_sl_no` int(5) NOT NULL,
  `agent` varchar(30) DEFAULT NULL,
  `food` varchar(30) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `find`
--

CREATE TABLE IF NOT EXISTS `find` (
  `sent_sl_no` int(5) NOT NULL,
  `perceiver` varchar(30) NOT NULL,
  `sought_entity` varchar(50) DEFAULT NULL,
  `variable_count` int(20) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `finish`
--

CREATE TABLE IF NOT EXISTS `finish` (
  `sent_sl_no` int(5) NOT NULL,
  `agent` varchar(30) NOT NULL,
  `location` varchar(30) DEFAULT NULL,
  `activity` varchar(30) DEFAULT NULL,
  `result` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gather`
--

CREATE TABLE IF NOT EXISTS `gather` (
  `sent_sl_no` int(5) NOT NULL,
  `person` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gather`
--

INSERT INTO `gather` (`sent_sl_no`, `person`, `item`, `variable_count`) VALUES
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33),
(2, 'joan', 'book', 33);

-- --------------------------------------------------------

--
-- Table structure for table `generic`
--

CREATE TABLE IF NOT EXISTS `generic` (
  `sent_sl_no` int(5) NOT NULL,
  `primary_owner` varchar(30) DEFAULT NULL,
  `secondary_owner` varchar(30) DEFAULT NULL,
  `variable_name` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `get`
--

CREATE TABLE IF NOT EXISTS `get` (
  `sent_sl_no` int(5) NOT NULL,
  `receiver` varchar(30) DEFAULT NULL,
  `doner` varchar(30) DEFAULT NULL,
  `theme` varchar(30) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `give`
--

CREATE TABLE IF NOT EXISTS `give` (
  `sent_sl_no` int(2) NOT NULL,
  `doner` varchar(20) NOT NULL,
  `recipient` varchar(20) DEFAULT NULL,
  `variable_name` varchar(20) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL,
  `item_specific_attribute` varchar(20) DEFAULT NULL,
  `operation1` varchar(100) DEFAULT NULL,
  `operation2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sent_sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `go`
--

CREATE TABLE IF NOT EXISTS `go` (
  `sent_sl_no` int(5) NOT NULL,
  `agent` varchar(30) NOT NULL,
  `event` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grow`
--

CREATE TABLE IF NOT EXISTS `grow` (
  `sent_sl_no` int(5) NOT NULL,
  `agent` varchar(30) NOT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `have`
--

CREATE TABLE IF NOT EXISTS `have` (
  `sent_sl_no` int(5) NOT NULL,
  `owner_name` varchar(20) NOT NULL,
  `second_owner` varchar(30) DEFAULT NULL,
  `variable_name` varchar(20) DEFAULT NULL,
  `item_specific_attribute` varchar(20) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL,
  PRIMARY KEY (`sent_sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `increment`
--

CREATE TABLE IF NOT EXISTS `increment` (
  `sent_sl_no` int(5) NOT NULL,
  `primary_owner` varchar(30) DEFAULT NULL,
  `secondary_owner` varchar(30) DEFAULT NULL,
  `item_name` varchar(30) DEFAULT NULL,
  `item_count` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `join`
--

CREATE TABLE IF NOT EXISTS `join` (
  `sent_sl_no` int(5) NOT NULL,
  `agent` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loose`
--

CREATE TABLE IF NOT EXISTS `loose` (
  `sent_sl_no` int(5) NOT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lose`
--

CREATE TABLE IF NOT EXISTS `lose` (
  `sent_sl_no` int(5) NOT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `make`
--

CREATE TABLE IF NOT EXISTS `make` (
  `sent_sl_no` int(5) NOT NULL,
  `creator` varchar(30) DEFAULT NULL,
  `product` varchar(30) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `miss`
--

CREATE TABLE IF NOT EXISTS `miss` (
  `sent_sl_no` int(5) NOT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `miss`
--

INSERT INTO `miss` (`sent_sl_no`, `owner`, `item`, `variable_count`) VALUES
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 7),
(2, 'any', NULL, 41),
(2, 'any', NULL, 12),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'total', 4),
(3, 'keith', 'total', 4),
(3, 'keith', 'game', 4),
(3, 'keith', 'game', 4),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(2, 'tom', 'game', 7),
(3, 'keith', 'game', 4),
(2, 'any', NULL, 35);

-- --------------------------------------------------------

--
-- Table structure for table `MWP`
--

CREATE TABLE IF NOT EXISTS `MWP` (
  `problem_id` int(2) NOT NULL DEFAULT '1',
  `no_of_sentences` int(2) NOT NULL,
  `problem_category` varchar(25) NOT NULL DEFAULT 'addition_substraction',
  `owner_name` varchar(15) DEFAULT NULL,
  `variable_name` varchar(20) DEFAULT NULL,
  `item_specific_attribute` varchar(30) DEFAULT NULL,
  `verb` varchar(30) DEFAULT NULL,
  `result` int(10) DEFAULT '0',
  PRIMARY KEY (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MWP`
--

INSERT INTO `MWP` (`problem_id`, `no_of_sentences`, `problem_category`, `owner_name`, `variable_name`, `item_specific_attribute`, `verb`, `result`) VALUES
(1, 3, 'addition_substraction', 'they', 'balloon', 'yellow', 'have', 0);

-- --------------------------------------------------------

--
-- Table structure for table `negtransfer`
--

CREATE TABLE IF NOT EXISTS `negtransfer` (
  `sent_sl_no` int(5) NOT NULL,
  `primary_owner` varchar(30) DEFAULT NULL,
  `secondary_owner` varchar(30) DEFAULT NULL,
  `item_name` varchar(30) DEFAULT NULL,
  `item_count` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `NERlist`
--

CREATE TABLE IF NOT EXISTS `NERlist` (
  `sent_sl_no` int(2) NOT NULL,
  `word` varchar(50) NOT NULL,
  `ner` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `objectitem`
--

CREATE TABLE IF NOT EXISTS `objectitem` (
  `sent_sl_no` int(5) NOT NULL,
  `variable_name` varchar(20) DEFAULT NULL,
  `owner_name` varchar(30) DEFAULT NULL,
  `item_specific_attribute` varchar(20) DEFAULT NULL,
  `variable_count` int(5) DEFAULT NULL,
  `unit` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `objectitem`
--

INSERT INTO `objectitem` (`sent_sl_no`, `variable_name`, `owner_name`, `item_specific_attribute`, `variable_count`, `unit`) VALUES
(1, 'balloon', 'tom', 'yellow', 9, NULL),
(2, 'balloon', 'sara', 'yellow', 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `observation`
--

CREATE TABLE IF NOT EXISTS `observation` (
  `sent_sl_no` int(5) NOT NULL,
  `primary_owner` varchar(30) DEFAULT NULL,
  `secondary_owner` varchar(30) DEFAULT NULL,
  `item_name` varchar(30) DEFAULT NULL,
  `item_count` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `own`
--

CREATE TABLE IF NOT EXISTS `own` (
  `sent_sl_no` int(5) NOT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `own`
--

INSERT INTO `own` (`sent_sl_no`, `owner`, `item`, `variable_count`) VALUES
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(1, 'veronica', 'cat', 12),
(2, 'veronica', 'dog', 17),
(5, 'maurice', 'cat', 1),
(3, 'tom', 'game', 2),
(4, 'melanie', 'game', 4),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2),
(3, 'tom', 'game', 2);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE IF NOT EXISTS `owner` (
  `state_no` int(5) NOT NULL,
  `owner_name` varchar(15) NOT NULL,
  `owner_specific_attribute` varchar(20) DEFAULT NULL,
  `verb_lemma` varchar(20) DEFAULT NULL,
  `operator` varchar(20) DEFAULT NULL,
  `variable_name` varchar(15) DEFAULT NULL,
  `item_specific_attribute` varchar(30) DEFAULT NULL,
  `variable_count` int(4) DEFAULT NULL,
  `equation` varchar(80) DEFAULT NULL,
  `evaluated_value` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`state_no`, `owner_name`, `owner_specific_attribute`, `verb_lemma`, `operator`, `variable_name`, `item_specific_attribute`, `variable_count`, `equation`, `evaluated_value`) VALUES
(1, 'tom', NULL, 'have', NULL, 'balloon', 'yellow', 9, 'obj[0].variable_count=9;', 0),
(1, 'sara', NULL, 'have', NULL, 'balloon', 'yellow', 8, 'obj[1].variable_count=8;', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE IF NOT EXISTS `pay` (
  `sent_sl_no` int(5) NOT NULL,
  `buyer` varchar(30) DEFAULT NULL,
  `seller` varchar(30) DEFAULT NULL,
  `goods` varchar(30) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pick`
--

CREATE TABLE IF NOT EXISTS `pick` (
  `sent_sl_no` int(5) NOT NULL,
  `cognizer` varchar(30) NOT NULL,
  `second_owner` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE IF NOT EXISTS `place` (
  `sent_sl_no` int(5) NOT NULL,
  `agent` varchar(30) NOT NULL,
  `second_owner` varchar(30) DEFAULT NULL,
  `theme` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE IF NOT EXISTS `plan` (
  `sent_sl_no` int(5) NOT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`sent_sl_no`, `owner`, `item`, `variable_count`) VALUES
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(4, 'alyssa', 'game', 15),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', 'game', 16),
(3, 'nancy', 'game', 7),
(3, 'jason', NULL, 16),
(3, 'jason', NULL, 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16),
(3, 'jason', 'game', 16);

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE IF NOT EXISTS `plant` (
  `sent_sl_no` int(5) NOT NULL,
  `agent` varchar(30) NOT NULL,
  `location` varchar(30) DEFAULT NULL,
  `theme` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `play`
--

CREATE TABLE IF NOT EXISTS `play` (
  `sent_sl_no` int(5) NOT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `variable_name` varchar(30) DEFAULT NULL,
  `variable_count` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `postransfer`
--

CREATE TABLE IF NOT EXISTS `postransfer` (
  `sent_sl_no` int(5) NOT NULL,
  `primary_owner` varchar(30) DEFAULT NULL,
  `secondary_owner` varchar(30) DEFAULT NULL,
  `item_name` varchar(30) DEFAULT NULL,
  `item_count` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `sent_sl_no` int(5) NOT NULL,
  `buyer` varchar(30) DEFAULT NULL,
  `seller` varchar(30) DEFAULT NULL,
  `goods` varchar(30) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `receive`
--

CREATE TABLE IF NOT EXISTS `receive` (
  `sent_sl_no` int(5) NOT NULL,
  `recipient` varchar(30) NOT NULL,
  `doner` varchar(30) DEFAULT NULL,
  `theme` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE IF NOT EXISTS `sell` (
  `sent_sl_no` int(5) NOT NULL,
  `seller` varchar(30) DEFAULT NULL,
  `buyer` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sentence`
--

CREATE TABLE IF NOT EXISTS `sentence` (
  `sent_sl_no` int(2) NOT NULL,
  `sent_type` varchar(10) NOT NULL,
  `sentenceline` varchar(100) NOT NULL,
  `no_of_tokens` int(2) NOT NULL,
  `verb_name` varchar(10) DEFAULT NULL,
  `verb_lemma` varchar(20) DEFAULT NULL,
  `owner_name` varchar(15) DEFAULT NULL,
  `second_owner` varchar(20) DEFAULT NULL,
  `variable_name` varchar(20) DEFAULT NULL,
  `item_specific_attribute` varchar(30) DEFAULT NULL,
  `variable_count` int(8) DEFAULT '0',
  `pipeline_equation1` varchar(100) DEFAULT NULL,
  `pipeline_equation2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sent_sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sentence`
--

INSERT INTO `sentence` (`sent_sl_no`, `sent_type`, `sentenceline`, `no_of_tokens`, `verb_name`, `verb_lemma`, `owner_name`, `second_owner`, `variable_name`, `item_specific_attribute`, `variable_count`, `pipeline_equation1`, `pipeline_equation2`) VALUES
(1, 'normal', 'Tom has 9 yellow balloons .', 6, 'has', 'have', 'tom', NULL, 'balloon', 'yellow', 9, 'tom.variable_count=9;', NULL),
(2, 'normal', 'Sara has 8 yellow balloons .', 6, 'has', 'have', 'sara', NULL, 'balloon', 'yellow', 8, 'sara.variable_count=8;', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `serve`
--

CREATE TABLE IF NOT EXISTS `serve` (
  `sent_sl_no` int(5) NOT NULL,
  `server` varchar(30) DEFAULT NULL,
  `recipient` varchar(30) DEFAULT NULL,
  `theme` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spend`
--

CREATE TABLE IF NOT EXISTS `spend` (
  `sent_sl_no` int(5) NOT NULL,
  `agent` varchar(30) NOT NULL,
  `resource` varchar(30) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SRLdata`
--

CREATE TABLE IF NOT EXISTS `SRLdata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sent_sl_no` int(8) NOT NULL,
  `word` varchar(20) NOT NULL,
  `lemma` varchar(20) NOT NULL,
  `POS` varchar(20) DEFAULT NULL,
  `dependency` varchar(10) NOT NULL,
  `ispred` char(1) NOT NULL,
  `pred` varchar(30) DEFAULT NULL,
  `Args1` varchar(30) DEFAULT NULL,
  `Args2` varchar(30) DEFAULT NULL,
  `Args3` varchar(30) DEFAULT NULL,
  `Args4` varchar(20) DEFAULT NULL,
  `Args5` varchar(20) DEFAULT NULL,
  `Args6` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `SRLdata`
--

INSERT INTO `SRLdata` (`id`, `sent_sl_no`, `word`, `lemma`, `POS`, `dependency`, `ispred`, `pred`, `Args1`, `Args2`, `Args3`, `Args4`, `Args5`, `Args6`) VALUES
(1, 1, 'Tom', 'Tom', 'NNP', 'SUB', '_', '_', 'Total', '_', NULL, NULL, NULL, NULL),
(2, 1, 'has', 'have', 'VBZ', 'ROOT', 'Y', 'Inclusion', '_', '_', NULL, NULL, NULL, NULL),
(3, 1, '9', '9', 'CD', 'NMOD', '_', '_', '_', '_', NULL, NULL, NULL, NULL),
(4, 1, 'yellow', 'yellow', 'JJ', 'NMOD', 'Y', 'Emotion_directed', '_', '_', NULL, NULL, NULL, NULL),
(5, 1, 'balloons', 'balloon', 'NNS', 'OBJ', '_', '_', 'Part', 'Stimulus', NULL, NULL, NULL, NULL),
(6, 1, '.', '.', '.', 'P', '_', '_', '_', '_', NULL, NULL, NULL, NULL),
(8, 2, 'Sara', 'Sara', 'NNP', 'SUB', '_', '_', 'Total', '_', NULL, NULL, NULL, NULL),
(9, 2, 'has', 'have', 'VBZ', 'ROOT', 'Y', 'Inclusion', '_', '_', NULL, NULL, NULL, NULL),
(10, 2, '8', '8', 'CD', 'NMOD', '_', '_', '_', '_', NULL, NULL, NULL, NULL),
(11, 2, 'yellow', 'yellow', 'JJ', 'NMOD', 'Y', 'Emotion_directed', '_', '_', NULL, NULL, NULL, NULL),
(12, 2, 'balloons', 'balloon', 'NNS', 'OBJ', '_', '_', 'Part', 'Stimulus', NULL, NULL, NULL, NULL),
(13, 2, '.', '.', '.', 'P', '_', '_', '_', '_', NULL, NULL, NULL, NULL),
(15, 3, 'How', 'how', 'WRB', 'AMOD', '_', '_', '_', '_', '_', '_', NULL, NULL),
(16, 3, 'many', 'many', 'JJ', 'NMOD', 'Y', 'Quantity', 'Quantity', '_', '_', '_', NULL, NULL),
(17, 3, 'yellow', 'yellow', 'JJ', 'NMOD', 'Y', 'Emotion_directed', '_', '_', '_', '_', NULL, NULL),
(18, 3, 'balloons', 'balloon', 'NNS', 'SUB', '_', '_', 'Individuals', 'Experiencer', 'Agent', '_', NULL, NULL),
(19, 3, 'do', 'do', 'VBP', 'ROOT', 'Y', 'Intentionally_act', '_', '_', '_', '_', NULL, NULL),
(20, 3, 'they', 'they', 'PRP', 'SUB', '_', '_', '_', '_', '_', '_', NULL, NULL),
(21, 3, 'have', 'have', 'VBP', 'VMOD', '_', '_', '_', '_', 'Act', '_', NULL, NULL),
(22, 3, 'in', 'in', 'IN', 'VMOD', '_', '_', '_', '_', '_', '_', NULL, NULL),
(23, 3, 'total', 'total', 'NN', 'PMOD', 'Y', 'Completeness', '_', '_', '_', '_', NULL, NULL),
(24, 3, '?', '?', '.', 'P', '_', '_', '_', '_', '_', '_', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stack`
--

CREATE TABLE IF NOT EXISTS `stack` (
  `sent_sl_no` int(5) NOT NULL,
  `agent` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `sent_sl_no` int(5) NOT NULL,
  `agent` varchar(30) DEFAULT NULL,
  `theme` varchar(3) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `take`
--

CREATE TABLE IF NOT EXISTS `take` (
  `sent_sl_no` int(5) NOT NULL,
  `receiver` varchar(30) DEFAULT NULL,
  `doner` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tear`
--

CREATE TABLE IF NOT EXISTS `tear` (
  `sent_sl_no` int(5) NOT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `theme` varchar(30) DEFAULT NULL,
  `variable_count` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tear`
--

INSERT INTO `tear` (`sent_sl_no`, `owner`, `theme`, `variable_count`) VALUES
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 8),
(2, 'any', NULL, 6),
(2, 'any', NULL, 6),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'sandy', NULL, 5),
(2, 'sandy', NULL, 5),
(2, 'sandy', 'card', 5),
(2, 'sally', 'card', 9),
(2, 'dan', 'card', 8),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sally', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'sara', 'card', 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9),
(2, 'any', NULL, 6),
(2, 'any', NULL, 8),
(2, 'any', NULL, 9),
(2, 'any', NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `verb class`
--

CREATE TABLE IF NOT EXISTS `verb class` (
  `sl_no` int(5) NOT NULL AUTO_INCREMENT,
  `verb name` varchar(20) NOT NULL,
  `predicate` varchar(30) DEFAULT NULL,
  `args1` varchar(30) DEFAULT NULL,
  `args2` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `verblist`
--

CREATE TABLE IF NOT EXISTS `verblist` (
  `list_id` int(5) NOT NULL AUTO_INCREMENT,
  `verb_lemma` varchar(20) NOT NULL,
  `verb_category` varchar(20) NOT NULL,
  `operator1` varchar(10) DEFAULT NULL,
  `operator2` varchar(20) DEFAULT NULL,
  `operation1` varchar(80) DEFAULT NULL,
  `operation2` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `verblist`
--

INSERT INTO `verblist` (`list_id`, `verb_lemma`, `verb_category`, `operator1`, `operator2`, `operation1`, `operation2`) VALUES
(1, 'have', 'observation', NULL, NULL, 'owner_name.variable_name=variable_count', NULL),
(2, 'give', 'negetive transfer', '-', '+', 'doner.variable_name=doner.variable_name-variable_count', 'recipient.variable_name=recipient.variable_name+variable_count'),
(3, 'find', 'observation', NULL, NULL, 'perciver.variable_name=variable_count', NULL),
(4, 'cut', 'positive transfer', '-', '-', 'agent.variable_count=agent.variable_count+variable_count', NULL),
(5, 'be', 'observation', NULL, NULL, 'owner_name.variable_count=count', NULL),
(6, 'plant', 'increment', '+', '+', 'agent.variable_count=agent.variable_count+variable_count', NULL),
(7, 'serve', 'negetive transfer', '-', '+', 'server.variable_count=server.variable_count-variable_count', 'recipient.variable_count=recipient.variable_count+variable_count'),
(8, 'grow', 'observation', '+', '+', 'agent.variable_count=agent.variable_count+variable_count', NULL),
(9, 'pick', 'increment', '+', '-', 'cognizer.variable_count=cognizer.variable_count+variable_count', NULL),
(10, 'place', 'increment', '+', '+', 'agent.variable_count=agent.variable_count+variable_count', NULL),
(11, 'go', 'observation', '+', NULL, NULL, NULL),
(12, 'buy', 'positive transfer', '+', '-', 'buyer.variable_count=buyer.variable_count+x', 'seller.variable_count=seller.variable_count-x'),
(13, 'finish', 'observation', NULL, NULL, '', NULL),
(14, 'receive', 'positive transfer', '+', '-', '', NULL),
(15, 'spend', 'decrement', '-', NULL, '', NULL),
(16, 'attend', 'increment', '+', NULL, 'agent.variable_count=x', NULL),
(17, 'wash', 'observation', NULL, NULL, 'agent.variable_count=x', NULL),
(18, 'stack', 'increment', '+', '+', 'agent.variable_count=x', NULL),
(19, 'store', 'increment', '+', NULL, 'agent.variable_count=x', NULL),
(20, 'lose', 'decrement', '-', NULL, 'agent.variable_count=x', NULL),
(21, 'borrow', 'positive transfer', '+', '-', '', NULL),
(22, 'eat', 'decrement', '-', NULL, '', NULL),
(23, 'make', 'observation', NULL, NULL, '', NULL),
(24, 'take', 'positive transfer', '+', '-', '', NULL),
(25, 'decide', 'observation', NULL, NULL, '', NULL),
(26, 'sell', 'negetive transfer', '-', '+', '', NULL),
(27, 'purchase', 'positive transfer', '+', '-', '', NULL),
(28, 'join', 'increment', '+', NULL, '', NULL),
(29, 'get', 'positive transfer', '+', '-', '', NULL),
(30, 'pay', 'negetive transfer', '-', '+', '', NULL),
(31, 'own', 'observation', NULL, NULL, NULL, NULL),
(32, 'gather', 'observation', NULL, NULL, NULL, NULL),
(33, 'tear', 'decrement', '-', NULL, NULL, NULL),
(34, 'miss', 'decrement', '-', NULL, NULL, NULL),
(35, 'crack', 'decrement', '-', NULL, NULL, NULL),
(36, 'plan', 'observation', '+', NULL, NULL, NULL),
(37, 'cost', 'observation', '-', NULL, NULL, NULL),
(38, 'break', 'decrement', '-', NULL, NULL, NULL),
(39, 'play', 'observation', NULL, NULL, NULL, NULL),
(40, 'want', 'observation', NULL, NULL, NULL, NULL),
(41, 'clean', 'increment', '+', NULL, NULL, NULL),
(42, 'win', 'increment', '+', '+', NULL, NULL),
(43, 'defeat', 'decrement', '-', NULL, NULL, NULL),
(44, 'damage', 'bothdecrement', '-', '-', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `verbshema`
--

CREATE TABLE IF NOT EXISTS `verbshema` (
  `sent_sl_no` int(5) NOT NULL,
  `primary_owner` varchar(30) DEFAULT NULL,
  `secondary_owner` varchar(30) DEFAULT NULL,
  `variable_name` varchar(30) DEFAULT NULL,
  `variable_count` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `verbstable`
--

CREATE TABLE IF NOT EXISTS `verbstable` (
  `sent_sl_no` int(5) NOT NULL,
  `verb_name` varchar(20) NOT NULL,
  `verb_lemma` varchar(20) NOT NULL,
  `owner_name` varchar(20) DEFAULT NULL,
  `second_owner` varchar(20) DEFAULT NULL,
  `variable_name` varchar(20) DEFAULT NULL,
  `variable_count` int(10) DEFAULT NULL,
  PRIMARY KEY (`sent_sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verbstable`
--

INSERT INTO `verbstable` (`sent_sl_no`, `verb_name`, `verb_lemma`, `owner_name`, `second_owner`, `variable_name`, `variable_count`) VALUES
(1, 'has', 'have', 'tom', NULL, 'balloon', 9),
(2, 'has', 'have', 'sara', NULL, 'balloon', 8);

-- --------------------------------------------------------

--
-- Table structure for table `wash`
--

CREATE TABLE IF NOT EXISTS `wash` (
  `sent_sl_no` int(5) NOT NULL,
  `agent` varchar(30) DEFAULT NULL,
  `theme` varchar(30) DEFAULT NULL,
  `variable_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
