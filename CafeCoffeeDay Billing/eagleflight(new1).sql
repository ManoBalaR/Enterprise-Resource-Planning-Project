-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2018 at 10:38 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eagleflight`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `Username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`Username`, `password`) VALUES
('shiva', '12345'),
('dhivya', '123456'),
('sowmi', '123'),
('mano', '123');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(40) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('bala@123.com', '8855'),
('dhiva123@gmail.com', 'dhiva123'),
('dhivyachandrasekar1198@gmail.com', 'dhivya123'),
('fjvheruhg', '12345'),
('himano1', '123'),
('kirthana26@gmail.com', 'kirthu'),
('kirthana96@gmail.com', 'kirthu'),
('kirthana98@gmail.com', 'kirthana'),
('loki@gmail.com', '123456'),
('mano123@gmail.com', 'mano123'),
('nagan@gmail.com', '123'),
('naveen@123gmail.com', '57076682'),
('navin@gmail.com', '3344'),
('shiva', '12345'),
('shivateja@gmail.com', '1234'),
('sivateja12345@gmail.com', '123456789'),
('sowmiya', '12345'),
('sowmiya806@gmail.com', 'kalaichelvi'),
('vicky.nagan@gmail.com', 'nagan');

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE `orderproduct` (
  `Pro_name` varchar(20) NOT NULL,
  `Pro_ID` varchar(15) NOT NULL,
  `Total_Cost` int(14) NOT NULL,
  `Quantity` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`Pro_name`, `Pro_ID`, `Total_Cost`, `Quantity`) VALUES
('Cold Coffee', '02', 210, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Prod_ID` varchar(9) NOT NULL,
  `Product_name` varchar(15) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(9) NOT NULL,
  `Amount_paid` int(9) NOT NULL,
  `remaining_amount` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Prod_ID`, `Product_name`, `Quantity`, `Price`, `Amount_paid`, `remaining_amount`) VALUES
('01', 'Red Velvet Cake', 0, -20, 100, -10),
('02', 'Cold Coffee', 3, 210, 220, -10);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_Id` int(5) NOT NULL,
  `Product_Name` varchar(20) NOT NULL,
  `Quantity` varchar(5) NOT NULL,
  `Price` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_Id`, `Product_Name`, `Quantity`, `Price`) VALUES
(1, 'Red Velvet Cake', '15', '45'),
(2, 'Cold Coffee', '20', '70'),
(3, 'American Burger', '60', '90'),
(4, 'Sandwich', '55', '75'),
(5, 'Tea Powder', '30', '145');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`fname`, `lname`, `username`, `email`, `password`) VALUES
('mano', 'bala', 'himano1', 'hi/2gma.c', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
