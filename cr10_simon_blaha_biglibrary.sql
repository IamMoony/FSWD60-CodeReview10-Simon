-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2019 at 04:50 PM
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
(13, 'Groundstreet', 1344, 'Vienna', 'Ã–sterreich');

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
  `fk_Publ_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`Media_ID`, `Name`, `ISBN`, `Image`, `Descr`, `Publish_Date`, `fk_Type_ID`, `fk_Status_ID`, `fk_Publ_ID`) VALUES
(1, 'A Curve in the Road', '9781234567897', 'https://images-na.ssl-images-amazon.com/images/I/51agGKOM5mL.jpg', 'Abbie MacIntyre is living the dream in the picturesque Nova Scotia town she calls home. She is a successful surgeon, is married to a handsome cardiologist, and has a model teenage son who is only months away from going off to college.', '2004-03-04', 3, 1, 0),
(2, 'Stillhouse Lake', '9781234561423', 'https://images-na.ssl-images-amazon.com/images/I/51mKJqiPZXL._SY346_.jpg', 'While the world seems to be in love with the idea of tiny houses and minimalism, many of us simply can\'t purge it all and start from nothing. Yet a home with too much stuff is a home that is difficult to maintain, so where do we begin? Add in paralyzing emotional attachments and constant life challenges, and it can feel almost impossible to make real decluttering progress.', '2010-01-09', 3, 2, 0),
(5, 'Victory', '8842231243897', 'https://images-na.ssl-images-amazon.com/images/I/71-SN4SZw8L._SX522_.jpg', 'Album', '1982-12-05', 1, 1, 0),
(6, 'Rapture', '1231234321423', 'https://images-na.ssl-images-amazon.com/images/I/51J1WGwkXTL.jpg', 'Album', '1993-11-13', 4, 2, 0),
(7, 'Aaron Neville\'s Soulful Christmas', '1443234561423', 'https://images-na.ssl-images-amazon.com/images/I/81e2BXMxOtL._SL1400_.jpg', 'Album', '2003-08-14', 1, 1, 0),
(8, 'The Godfather 3-Movie Collection', '1432234328767', 'https://images-na.ssl-images-amazon.com/images/I/814rW3DCZgL._SL1500_.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '2003-07-18', 2, 1, 0),
(9, 'Harry Potter: The Complete 8-Film Collection (DVD)', '7654234561565', 'https://images-na.ssl-images-amazon.com/images/I/81MewemUevL._SL1500_.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '2010-01-18', 2, 1, 0),
(10, 'Mustard Seed', '5671234321423', 'https://images-na.ssl-images-amazon.com/images/I/51s64dhlsuL.jpg', 'Oberlin, Ohio, 1868. Lisbeth Johnson was born into privilege in the antebellum South. Jordan Freedman was born a slave to Mattie, Lisbeth’s beloved nurse. The women have an unlikely bond deeper than friendship. Three years after the Civil War, Lisbeth and Mattie are tending their homes and families while Jordan, an aspiring suffragette, teaches at an integrated school.', '2006-06-05', 3, 1, 0),
(11, 'Kind of Blue', '4563234561756', 'https://images-na.ssl-images-amazon.com/images/I/81CP1j-zprL._SL1500_.jpg', 'Album', '1968-07-10', 4, 2, 0),
(13, 'The Lion King Platinum Edition (DVD)', '5674234564667', 'https://images-na.ssl-images-amazon.com/images/I/51FWVqnSkaL.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '2001-05-16', 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `Publisher_ID` int(11) NOT NULL,
  `Publisher_Name` varchar(255) NOT NULL,
  `fk_Address_ID` int(11) NOT NULL,
  `fk_Size_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`Publisher_ID`, `Publisher_Name`, `fk_Address_ID`, `fk_Size_ID`) VALUES
(8, 'Penguin Random House', 1, 5),
(9, 'Hachette Livre', 2, 6),
(10, 'HarperCollins', 3, 4),
(11, 'Pearson Education', 4, 5),
(12, 'Bloomsbury', 5, 4);

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
  ADD KEY `fk_Publ_ID` (`fk_Publ_ID`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`Publisher_ID`),
  ADD KEY `fk_Address_ID` (`fk_Address_ID`),
  ADD KEY `fk_Size_ID` (`fk_Size_ID`);

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
  MODIFY `Address_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `Media_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `Publisher_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  ADD CONSTRAINT `media_ibfk_3` FOREIGN KEY (`fk_Status_ID`) REFERENCES `status` (`Status_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `publisher`
--
ALTER TABLE `publisher`
  ADD CONSTRAINT `publisher_ibfk_1` FOREIGN KEY (`fk_Address_ID`) REFERENCES `address` (`Address_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `publisher_ibfk_2` FOREIGN KEY (`fk_Size_ID`) REFERENCES `size` (`Size_ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
