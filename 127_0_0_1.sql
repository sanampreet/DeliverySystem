-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2016 at 12:56 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `deliverysystem`
--
CREATE DATABASE IF NOT EXISTS `deliverysystem` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `deliverysystem`;

-- --------------------------------------------------------

--
-- Table structure for table `addboy`
--

CREATE TABLE IF NOT EXISTS `addboy` (
  `id` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Age` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `fromT` varchar(100) NOT NULL,
  `toT` varchar(100) NOT NULL,
  `joiningdate` date NOT NULL,
  `Salary` varchar(100) NOT NULL,
  `Photograph` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addboy`
--

INSERT INTO `addboy` (`id`, `Name`, `Contact`, `Age`, `Address`, `fromT`, `toT`, `joiningdate`, `Salary`, `Photograph`) VALUES
('2', 'snama', '1520440000', '20', 'ssawdef', '10:00:00', '20:00:00', '2016-07-05', '2,000', 'images\\mypic.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `addloc`
--

CREATE TABLE IF NOT EXISTS `addloc` (
  `Location` varchar(200) NOT NULL,
  PRIMARY KEY (`Location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addloc`
--

INSERT INTO `addloc` (`Location`) VALUES
('FootBall chowk'),
('Model Town'),
('Urban Estate');

-- --------------------------------------------------------

--
-- Table structure for table `addorder`
--

CREATE TABLE IF NOT EXISTS `addorder` (
  `Orderno` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`Orderno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addorder`
--

INSERT INTO `addorder` (`Orderno`, `Name`, `Contact`, `Address`, `Date`) VALUES
(1, 'jaspreet', '9837497343', 'model town\njalandhar', '2016-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `admintable`
--

CREATE TABLE IF NOT EXISTS `admintable` (
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintable`
--

INSERT INTO `admintable` (`Username`, `Password`) VALUES
('sanam', '1207');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `Category` varchar(100) NOT NULL,
  PRIMARY KEY (`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Category`) VALUES
('Beverages'),
('Combos'),
('Extra Toppings'),
('mkjsd'),
('Non Veg Pizzas'),
('Side Orders'),
('Veg Pizzas');

-- --------------------------------------------------------

--
-- Table structure for table `emptable`
--

CREATE TABLE IF NOT EXISTS `emptable` (
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emptable`
--

INSERT INTO `emptable` (`Username`, `Password`) VALUES
('kajal', '1234'),
('sanam', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE IF NOT EXISTS `orderdetails` (
  `BillNo` int(100) NOT NULL AUTO_INCREMENT,
  `Orderno` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `products` varchar(200) NOT NULL,
  `Rate` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `ptotal` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `Final bill` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `Deliver boy` varchar(200) NOT NULL,
  PRIMARY KEY (`BillNo`),
  KEY `Order No` (`Orderno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`BillNo`, `Orderno`, `Name`, `Contact`, `Address`, `products`, `Rate`, `quantity`, `ptotal`, `total`, `discount`, `Final bill`, `date`, `Deliver boy`) VALUES
(1, 1, 'jaspreet', '9837497343', 'model town\njalandhar', 'Coke\nVeg Doubles\n', '35\n500\n', '2\n2\n', '70\n1000\n', '1070', '5', '1017', '2016-07-12', 'snama');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `Category` varchar(100) NOT NULL,
  `Subcategory` varchar(100) NOT NULL,
  `pid` int(100) NOT NULL AUTO_INCREMENT,
  `Product` varchar(100) NOT NULL,
  `Rate` int(100) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `Category` (`Category`),
  KEY `Subcategory` (`Subcategory`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Category`, `Subcategory`, `pid`, `Product`, `Rate`) VALUES
('Beverages', 'Krushers', 1, 'Alphanso Burst', 75),
('Extra Toppings', 'Veg Toppings', 2, 'Baby corn', 50),
('Extra Toppings', 'Non-Veg Toppings', 3, 'Barbeque Chicken', 70),
('Extra Toppings', 'Veg Toppings', 4, 'Black olives', 30),
('Side Orders', 'Dips', 5, 'Cheese Dip', 40),
('Side Orders', 'Dips', 6, 'Cheesy jalepeno Dip', 60),
('Extra Toppings', 'Non-Veg Toppings', 7, 'Chicken Salami.', 100),
('Side Orders', 'Chicken Delights', 8, 'Chicken Wings', 200),
('Beverages', 'Krushers', 9, 'Choco lash', 75),
('Side Orders', 'Desserts', 10, 'Choco lava Cake', 100),
('Beverages', 'Cold drinks', 11, 'Coke', 35),
('Extra Toppings', 'Veg Toppings', 12, 'Corn', 30),
('Extra Toppings', 'Veg Toppings', 13, 'Crisp Capsicums', 30),
('Side Orders', 'more', 14, 'Crispy chicken strips', 200),
('Beverages', 'Cold drinks', 15, 'Dew', 35),
('Beverages', 'Cold drinks', 16, 'Diet Coke', 45),
('Beverages', 'Cold drinks', 17, 'Fanta', 35),
('Extra Toppings', 'Veg Toppings', 18, 'Fresh Tomato', 30),
('Side Orders', 'Breads', 19, 'Garlic Bread', 80),
('Extra Toppings', 'Non-Veg Toppings', 20, 'Hot ''n'' Spicy Chicken', 100),
('Extra Toppings', 'Veg Toppings', 21, 'Jalapeno', 40),
('Side Orders', 'more', 22, 'Kids Meal', 200),
('Veg Pizzas', 'Small+regular base', 23, 'Margherita', 150),
('Combos', 'Mixed Combos', 24, 'Mixed Double Delight', 1000),
('Beverages', 'Krushers', 25, 'Mojito', 50),
('Extra Toppings', 'Veg Toppings', 26, 'Mushrooms', 30),
('Combos', 'Non-Veg Combos', 27, 'Non-Veg Doubles', 700),
('Side Orders', 'more', 28, 'Non-Veg pockets', 100),
('Side Orders', 'Pastas', 29, 'Non-Veg Red pasta', 150),
('Combos', 'Non-Veg Combos', 30, 'Non-Veg Singles', 500),
('Side Orders', 'more', 31, 'Non-Veg Subwich', 150),
('Side Orders', 'Pastas', 32, 'Non-Veg White pasta', 150),
('Extra Toppings', 'Veg Toppings', 33, 'Panner', 40),
('Beverages', 'Krushers', 34, 'Strawberry storm', 75),
('Side Orders', 'Breads', 35, 'Stuffed Garlic bread', 100),
('Combos', 'Veg Combos', 36, 'Veg Doubles', 500),
('Side Orders', 'more', 37, 'Veg pockets', 70),
('Side Orders', 'Pastas', 38, 'Veg Red pasta', 100),
('Combos', 'Veg Combos', 39, 'Veg Singles', 400),
('Side Orders', 'more', 40, 'Veg Subwich', 100),
('Side Orders', 'Pastas', 41, 'Veg White pasta', 100),
('Veg Pizzas', 'Small+cheese burst', 42, 'Margherita', 200),
('Veg Pizzas', 'Small+thin crust', 43, 'Margherita', 200),
('Beverages', 'Cold drinks', 44, 'abanba', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `Category` varchar(100) NOT NULL,
  `Subcategory` varchar(100) NOT NULL,
  PRIMARY KEY (`Subcategory`),
  KEY `Category` (`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`Category`, `Subcategory`) VALUES
('Beverages', 'assdwad'),
('Beverages', 'Cold drinks'),
('Beverages', 'hot drinks'),
('Beverages', 'Krushers'),
('Combos', 'Mixed Combos'),
('Combos', 'Non-Veg Combos'),
('Combos', 'Veg Combos'),
('Extra Toppings', 'Non-Veg Toppings'),
('Extra Toppings', 'Veg Toppings'),
('Non Veg Pizzas', 'N-Large+cheese burst'),
('Non Veg Pizzas', 'N-Large+regular base'),
('Non Veg Pizzas', 'N-Large+thin crust'),
('Non Veg Pizzas', 'N-Medium+cheese burst'),
('Non Veg Pizzas', 'N-Medium+regular base'),
('Non Veg Pizzas', 'N-Medium+thin crust'),
('Non Veg Pizzas', 'N-Small+cheese burst'),
('Non Veg Pizzas', 'N-Small+regular base'),
('Non Veg Pizzas', 'N-Small+thin crust'),
('Side Orders', 'Breads'),
('Side Orders', 'Chicken Delights'),
('Side Orders', 'Desserts'),
('Side Orders', 'Dips'),
('Side Orders', 'more'),
('Side Orders', 'Pastas'),
('Veg Pizzas', 'Large+cheese burst'),
('Veg Pizzas', 'Large+regular base'),
('Veg Pizzas', 'Large+thin crust'),
('Veg Pizzas', 'Medium+cheese burst'),
('Veg Pizzas', 'Medium+regular base'),
('Veg Pizzas', 'Medium+thin crust'),
('Veg Pizzas', 'Small+cheese burst'),
('Veg Pizzas', 'Small+regular base'),
('Veg Pizzas', 'Small+thin crust');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Category`) REFERENCES `category` (`Category`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`Subcategory`) REFERENCES `subcategory` (`Subcategory`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
