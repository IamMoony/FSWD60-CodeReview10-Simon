-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2019 at 01:10 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_simon_blaha_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `Address_ID` int(11) NOT NULL,
  `Street` text,
  `ZIP-Code` int(11) DEFAULT NULL,
  `City` text,
  `Country` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`Address_ID`, `Street`, `ZIP-Code`, `City`, `Country`) VALUES
(1, 'Bookstreet', 1423, 'Manchester', 'UK'),
(2, 'Harvardstreet', 1234, 'London', 'UK'),
(3, 'Sesamestreet', 1010, 'London', 'UK'),
(4, 'Readingstreet', 1552, 'Birmingham', 'UK'),
(5, 'Industrystreet', 1223, 'Birmingham', 'UK'),
(6, 'Test', 1234, 'test', 'test'),
(7, 'Groundstreet', 1234, 'Vienna', 'Austria'),
(8, 'Groundstreet2', 1234, 'Vienna', 'Austria'),
(9, 'Groundstreet', 1234, 'Vienna', 'Austria'),
(10, 'test2', 12345, 'test', 'test'),
(11, 'test', 12346, 'test', 'test'),
(12, 'Groundstreet', 1234, 'Vienna', 'Austria'),
(13, 'Groundstreet', 1344, 'Vienna', 'Ã–sterreich'),
(14, 'Siliconvalleystreet', 1550, 'San Francisco', 'USA'),
(15, 'Wallstreet', 1001, 'New York', 'USA'),
(16, 'Wallstreet', 1001, 'New York', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `Media_ID` int(11) NOT NULL,
  `Name` text,
  `ISBN` varchar(13) DEFAULT NULL,
  `Image` text,
  `Descr` text,
  `Publish_Date` date DEFAULT NULL,
  `fk_Type_ID` int(11) NOT NULL,
  `fk_Status_ID` int(11) NOT NULL,
  `fk_Publisher_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`Media_ID`, `Name`, `ISBN`, `Image`, `Descr`, `Publish_Date`, `fk_Type_ID`, `fk_Status_ID`, `fk_Publisher_ID`) VALUES
(45, 'Aaron Neville\'s Soulful Christmas', '1231234321423', 'https://images-na.ssl-images-amazon.com/images/I/81e2BXMxOtL._SL1400_.jpg', 'Album', '2001-01-01', 1, 1, 3),
(47, 'Harry Potter: The Complete 8-Film Collection (DVD)', '9781234567897', 'https://images-na.ssl-images-amazon.com/images/I/51njIl%2B33yL.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', '2001-05-16', 2, 1, 5),
(48, 'The Godfather 3-Movie Collection', '4563234561756', 'https://images-na.ssl-images-amazon.com/images/I/814rW3DCZgL._SL1500_.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', '2010-11-23', 2, 1, 4),
(49, 'The Lion King Region Free', '1231234321423', 'https://images-na.ssl-images-amazon.com/images/I/81iZhj0TzdL._SL1500_.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', '2001-01-01', 2, 1, 4),
(50, 'The Chronic Explicit Lyrics', '4563234561756', 'https://images-na.ssl-images-amazon.com/images/I/71mlUmU1TVL._SL1500_.jpg', 'Album', '1991-03-16', 4, 2, 3),
(51, 'The Score - Fugees', '9781234561423', 'https://images-na.ssl-images-amazon.com/images/I/61HHxUKqdYL._SL1500_.jpg', 'Album', '1995-03-02', 4, 2, 3),
(52, 'Reanimation - Linkin Park ', '7654234561565', 'https://images-na.ssl-images-amazon.com/images/I/61db-y993yL.jpg', 'Album', '2003-08-14', 2, 2, 3),
(53, 'Mustard Seed', '1231234321423', 'https://images-na.ssl-images-amazon.com/images/I/51s64dhlsuL.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', '2010-01-09', 3, 1, 6),
(54, 'Paper Wife: A Novel', '1443234561423', 'https://images-na.ssl-images-amazon.com/images/I/51pS3ZRhtPL.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', '2004-03-04', 3, 1, 7),
(55, 'Trail of Broken Wings', '9781234561423', 'https://images-na.ssl-images-amazon.com/images/I/51QoeMRbsvL.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', '2005-03-25', 3, 2, 1),
(56, 'The LEGO® Movie 2: The Second Part Soundtrack', '4563234561756', 'https://images-na.ssl-images-amazon.com/images/I/81mrU6UAqOL._SL1500_.jpg', 'Soundtrack', '2015-03-10', 1, 1, 3),
(57, 'Settle Here', '9781234561423', 'https://images-na.ssl-images-amazon.com/images/I/61KGtRRcJtL._SL1500_.jpg', 'Album', '2017-08-08', 1, 2, 3),
(58, '', '1234567123456', 'https://images-na.ssl-images-amazon.com/images/I/91sz46CbwVL._SL1500_.jpg', 'test', '1999-02-12', 3, 1, 2),
(59, '', '1234567123456', 'https://images-na.ssl-images-amazon.com/images/I/91sz46CbwVL._SL1500_.jpg', 'test', '1999-02-12', 3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `Publisher_ID` int(11) NOT NULL,
  `Publisher_Name` text NOT NULL,
  `fk_Address_ID` int(11) NOT NULL,
  `fk_Size_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`Publisher_ID`, `Publisher_Name`, `fk_Address_ID`, `fk_Size_ID`) VALUES
(1, 'Pearson', 1, 6),
(2, 'Informa', 5, 5),
(3, 'Sony Music Entertainment GmbH', 3, 6),
(4, '20th Century Fox', 7, 6),
(5, 'Warner Bros.', 4, 6),
(6, 'EKSMO', 14, 5),
(7, 'WEKA', 15, 5);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `Size_ID` int(11) NOT NULL,
  `Size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`Size_ID`, `Size`) VALUES
(4, 'Small'),
(5, 'Medium'),
(6, 'Big');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `Status_ID` int(11) NOT NULL,
  `Status` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`Status_ID`, `Status`) VALUES
(1, 'Available'),
(2, 'Not Available');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `Type_ID` int(11) NOT NULL,
  `Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`Type_ID`, `Type`) VALUES
(1, 'CD'),
(2, 'DVD'),
(3, 'Book'),
(4, 'Vinyl');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`Address_ID`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`Media_ID`),
  ADD KEY `fk_Type_ID` (`fk_Type_ID`),
  ADD KEY `fk_Status_ID` (`fk_Status_ID`),
  ADD KEY `fk_Publisher_ID` (`fk_Publisher_ID`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`Publisher_ID`),
  ADD KEY `fk_Size_ID` (`fk_Size_ID`),
  ADD KEY `fk_Address_ID` (`fk_Address_ID`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`Size_ID`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`Status_ID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`Type_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `Address_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `Media_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `Publisher_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `Size_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `Status_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`fk_Type_ID`) REFERENCES `type` (`Type_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `media_ibfk_3` FOREIGN KEY (`fk_Status_ID`) REFERENCES `status` (`Status_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `media_ibfk_4` FOREIGN KEY (`fk_Publisher_ID`) REFERENCES `publisher` (`Publisher_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `publisher`
--
ALTER TABLE `publisher`
  ADD CONSTRAINT `publisher_ibfk_1` FOREIGN KEY (`fk_Size_ID`) REFERENCES `size` (`Size_ID`),
  ADD CONSTRAINT `publisher_ibfk_2` FOREIGN KEY (`fk_Address_ID`) REFERENCES `address` (`Address_ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
