-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 09:00 AM
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
-- Database: `realestatephp`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `image`) VALUES
(10, 'About Us', '<div >\r\n                        <h1 class=\"mb-4\">#1 Place To Find The Perfect Property</h1>\r\n<p>Welcome to Legacy Properties, your premier real estate booking system designed to streamline and enhance your property search experience. At Legacy Properties, we pride ourselves on offering a curated selection of properties that meet diverse needs and preferences. Whether you\'re searching for a new home, an investment property, or a vacation rental, our platform provides comprehensive listings with detailed descriptions, high-quality images, and virtual tours to help you make informed decisions. Our intuitive booking system allows you to easily schedule viewings, request additional information, and connect with experienced agents who are dedicated to guiding you through every step of the process. Discover the convenience and reliability of Legacy Properties, where finding your perfect property is made simple and efficient.</p>\r\n                        <p class=\"mb-4\">Our platform is the #1 place to find the perfect property, offering extensive listings, advanced search filters, and expert agents to ensure a seamless and satisfying experience</p>\r\n                        <p><i class=\"fa fa-check text-primary me-3\"></i>Extensive Listings: Access a comprehensive database of properties in various locations.</p>\r\n                        <p><i class=\"fa fa-check text-primary me-3\"></i>User-Friendly Platform: Easy-to-navigate interface for a seamless property search experience</p>\r\n                        <p><i class=\"fa fa-check text-primary me-3\"></i>Expert Agents: Professional and knowledgeable agents ready to assist you</p>\r\n                        <p><i class=\"fa fa-check text-primary me-3\"></i>Customer Satisfaction: High client satisfaction with numerous positive reviews and testimonials</p>\r\n                        <p><i class=\"fa fa-check text-primary me-3\"></i>Secure Transactions: Safe and secure booking and transaction process.</p>\r\n                                            </div>\r\n                </div>\r\n            </div>\r\n        </div>', 'view.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(10) NOT NULL,
  `auser` varchar(50) NOT NULL,
  `aemail` varchar(50) NOT NULL,
  `apass` varchar(50) NOT NULL,
  `adob` date NOT NULL,
  `aphone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `auser`, `aemail`, `apass`, `adob`, `aphone`) VALUES
(1, 'Kabir Ahmed', 'legacyproperties@gmail.com', 'admin@gmail.com', '2002-08-28', '9066228810');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cid` int(50) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `sid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cid`, `cname`, `sid`) VALUES
(14, 'Bengaluru', 16),
(15, 'Mangaluru', 16),
(16, 'Mysuru', 16),
(17, 'Chikkamangaluru', 16),
(18, 'Kalaburgi', 16),
(19, 'Hassan', 16),
(20, 'Udupi', 16),
(21, 'Shivamogga', 16),
(22, 'Tumakuru', 16),
(23, 'Davangere', 16),
(24, 'Kolar', 16),
(25, 'Mandya', 16),
(26, 'Madekeri', 16),
(27, 'Ramanagara', 16);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cid` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(8, 'Zoha', 'zoha@gmail.com', '7517578517', 'Enquiry', 'I wanted to Enquire about the apartments near bengaluru');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `fdescription` varchar(300) NOT NULL,
  `status` int(1) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `uid`, `fdescription`, `status`, `date`) VALUES
(3, 3, 'Exceptional service and seamless booking process!', 1, '2022-07-23 16:07:08'),
(8, 9, 'Found my dream home quickly and easily.', 1, '2022-07-23 21:51:09'),
(9, 10, 'Professional, knowledgeable agents who truly care', 1, '2023-07-23 21:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `pid` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `pcontent` longtext NOT NULL,
  `type` varchar(100) NOT NULL,
  `bhk` varchar(50) NOT NULL,
  `stype` varchar(100) NOT NULL,
  `bedroom` int(50) NOT NULL,
  `bathroom` int(50) NOT NULL,
  `balcony` int(50) NOT NULL,
  `kitchen` int(50) NOT NULL,
  `hall` int(50) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `size` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `feature` longtext NOT NULL,
  `pimage` varchar(300) NOT NULL,
  `pimage1` varchar(300) NOT NULL,
  `pimage2` varchar(300) NOT NULL,
  `pimage3` varchar(300) NOT NULL,
  `pimage4` varchar(300) NOT NULL,
  `uid` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `mapimage` varchar(300) NOT NULL,
  `topmapimage` varchar(300) NOT NULL,
  `groundmapimage` varchar(300) NOT NULL,
  `totalfloor` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `isFeatured` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`pid`, `title`, `pcontent`, `type`, `bhk`, `stype`, `bedroom`, `bathroom`, `balcony`, `kitchen`, `hall`, `floor`, `size`, `price`, `location`, `city`, `state`, `feature`, `pimage`, `pimage1`, `pimage2`, `pimage3`, `pimage4`, `uid`, `status`, `mapimage`, `topmapimage`, `groundmapimage`, `totalfloor`, `date`, `isFeatured`) VALUES
(25, 'Zills Home', '', 'house', '4 BHK', 'sale', 4, 2, 0, 1, 1, '2nd Floor', 1869, 219690, '39 Bailey Drive', 'Floson', 'Colotana', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'zillhms1.jpg', 'zillhms2.jpg', 'zillhms3.jpg', 'zillhms4.jpg', 'zillhms5.jpg', 30, 'available', 'floorplan_sample.jpg', 'zillhms7.jpg', 'zillhms6.jpg', '2 Floor', '2022-07-22 22:29:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `sid` int(50) NOT NULL,
  `sname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`sid`, `sname`) VALUES
(16, 'Karnataka'),
(17, 'Maharashtra'),
(18, 'Bihar'),
(19, 'Andhra Pradesh'),
(20, 'Arunachal Pradesh'),
(21, 'Assam'),
(22, 'Chattisgarh'),
(23, 'Goa'),
(24, 'Gujarat'),
(25, 'Harayana'),
(26, 'Himachal Pradesh'),
(27, 'Jharkhan'),
(28, 'Kerala'),
(29, 'Madhya Pradesh'),
(30, 'Manipur'),
(31, 'Meghalaya'),
(32, 'Mizoram'),
(33, 'Nagaland'),
(34, 'Odisha'),
(35, 'Punjab'),
(36, 'Rajasthan'),
(37, 'Sikkim'),
(38, 'Tamil Nadu'),
(39, 'Tripura'),
(40, 'Telangana'),
(41, 'Uttar Pradesh'),
(42, 'Uttarkhand'),
(43, 'West Bengal'),
(44, 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(50) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `uphone` varchar(20) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `uimage` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `uphone`, `upass`, `utype`, `uimage`) VALUES
(1, 'Kabir Ahmed', 'kabir@gmial.com', '9066228810', '231c6a0f62c79bf968964f5920718160da4431a9', 'agent', '1526c7ba-4e67-43ca-899e-f7be2f780853.jfif'),
(2, 'Abdul Farhan', 'farhan@gmail.com', '6363013142', '53df43516ef76445486d1c7926c7dfb19f37d15d', 'agent', 'farhan.jpg'),
(3, 'Rishab', 'rishab@gmail.com', '1277627161', 'e12b15c526b9f5717405c054531acc155dc562d9', 'user', 'about-me.png'),
(4, 'Mohammed Kaif', 'kaif@gmail.com', '732793539 ', 'bbf4ca4fa54df10e62285e9887e686e8f402870c', 'agent', 'testimonial-2.jpg'),
(5, 'Mir Haroon', 'mir@gmail.com', '6361468923', 'f53bf4b157c8926d0e06b19ae4e36b710ac5257e', 'agent', 'mir.jpg'),
(6, 'Abrar Ahmed', 'abrar@gmail.com', '9066804042', '996bba177c00b4b620c293d47d037453b5c752cc', 'agent', 'testimonial-1.jpg'),
(7, 'Gowtham C', 'gowtham@gmail.com', '7395967134', 'ca4c1ab4e17a8954e246ad9805a706c5bd0c5566', 'agent', 'gowtham.jpg'),
(8, 'Mohammed Haseeb', 'haseeb@gmail.com', '8217873384', '004152a77a820a1b5444201bdceb3d686d69a9a8', 'builder', 'testimonial-3.jpg'),
(9, 'Alisha', 'alisha@gmail.com', '1277627161', '7cd942f52919e268cd5c678bca7dc354d31abdef', 'user', 'testimonial-4.jpg'),
(10, 'Zoha', 'zoha@gmail.com', '7517578517', '6635a0cce9c5213128419fd2bbb3f46944ece23a', 'user', 'testimonial-4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `pid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
