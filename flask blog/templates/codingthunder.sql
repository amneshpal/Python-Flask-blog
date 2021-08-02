-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 11:49 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(12) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'amnesg', '5665645445', 'g', '2021-07-26 10:59:49', 'firstpost@gmail.com'),
(5, 'santosh', '9837155538', 'hello mummy', '2021-07-26 15:30:15', 'santoshpal016@gmail.com'),
(6, 'Amnesh', '55538', 'h', '2021-07-27 10:13:08', 'amneshpal016@gmail.com'),
(7, 'Amnesh', '55538', 'h', '2021-07-27 10:31:25', 'amneshpal016@gmail.com'),
(8, 'Amnesh', '55538', 'h', '2021-07-27 10:31:34', 'amneshpal016@gmail.com'),
(9, 'Amnesh', '55538', 'h', '2021-07-27 10:33:24', 'amneshpal016@gmail.com'),
(10, 'Amnesh', '55538', 'g', '2021-07-27 10:41:51', 'amneshpal016@gmail.com'),
(11, 'shwetapal', '9837155538', ' hello mam i need a help', '2021-07-27 10:43:52', 'shwetapal@gmail.com'),
(12, 'a', '', '', '2021-07-27 12:41:53', ''),
(13, 'Amnesh', '55538', 'h', '2021-07-27 12:42:21', 'amneshpal016@gmail.com'),
(14, 'vansh', '9870861625', 'p', '2021-07-29 16:01:27', 'vansh@gmail.com'),
(15, 'vansh', '9870861625', 'p', '2021-07-29 16:02:12', 'vansh@gmail.com'),
(16, 'vansh', '9870861625', 'p', '2021-07-29 16:03:36', 'vansh@gmail.com'),
(17, 'vansh', '9870861625', 'p', '2021-07-29 16:05:44', 'vansh@gmail.com'),
(18, 'Defence', '0983 715 553', 'h', '2021-07-29 16:06:01', 'amneshpal016@gmail.com'),
(19, 'Defence', '0983 715 553', 'hhh', '2021-07-31 10:43:22', 'amneshpal016@gmail.com'),
(20, 'Defence', '0983 715 553', 'hhh', '2021-07-31 10:44:19', 'amneshpal016@gmail.com'),
(21, 'Defence', '0983 715 553', 'hhh', '2021-07-31 10:44:24', 'amneshpal016@gmail.com'),
(22, 'Defence', '0983 715 553', 'hhh', '2021-07-31 10:44:31', 'amneshpal016@gmail.com'),
(23, 'Defence', '0983 715 553', 'h', '2021-07-31 10:47:17', 'amneshpal016@gmail.com'),
(24, 'Defence', '0983 715 553', 'h', '2021-07-31 10:51:51', 'amneshpal016@gmail.com'),
(25, 'Defence', '0983 715 553', '8', '2021-07-31 10:53:00', 'amneshpal016@gmail.com'),
(26, 'Defence', '0983 715 553', '8', '2021-07-31 10:53:52', 'amneshpal016@gmail.com'),
(27, 'Amnesh', '55538', '55', '2021-07-31 10:54:51', 'amneshpal016@gmail.com'),
(28, 'Amnesh', '55538', 'hi', '2021-08-02 12:47:14', 'abhishekpal016@gmail.com'),
(29, 'hj', 'fd', 'f', '2021-08-02 12:58:21', 'fgh'),
(30, '', '', '', '2021-08-02 12:59:50', '');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `heading` varchar(110) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`, `heading`, `comment`) VALUES
(1, 'this is\"Python\" course', 'Here we learn intersting concept', 'first-post', 'Python is a programming language that lets you work quickly\r\nand integrate systems more effectively.', '', '2021-07-31 23:01:54', 'cheapter first', 'hi'),
(2, 'This is \"HTML\" course', 'we learn HTML on an easy way', 'second_post', 'As stated above, any file can be loaded as a template, regardless of file extension. Adding a .jinja extension, like user.html.jinja may make it easier for some IDEs or editor plugins, but is not required. Autoescaping, introduced later, can be applied based on file extension, so you’ll need to take the extra suffix into account in that case.\r\n\r\nAnother good heuristic for identifying templates is that they are in a templates folder, regardless of extension. This is a common layout for projects.\r\n\r\nVariables', '', '2021-07-29 17:38:39', 'cheapter first', 'nice website!!!!'),
(3, 'This is \"CSS\" course', 'Css is a beauty of Programming', 'Template variables are defined by the context dict', 'It’s important to know that the outer double-curly braces are not part of the variable, but the print statement. If you access variables inside tags don’t put the braces around them.\r\n\r\nIf a variable or attribute does not exist, you will get back an undefined value. What you can do with that kind of value depends on the application configuration: the default behavior is to evaluate to an empty string if printed or iterated over, and to fail for every other operation.\r\n\r\nImplementation\r\nFor the sake of convenience, foo.bar in Jinja does the following things on the Python layer:\r\n\r\ncheck for an attribute called bar on foo (getattr(foo, \'bar\'))\r\n\r\nif there is not, check for an item \'bar\' in foo (foo.__getitem__(\'bar\'))\r\n\r\nif there is not, return an undefined object.', '', '2021-07-28 19:18:11', '0', 'hello'),
(4, 'This is \"js\" course', 'engine of website', 'For example, {{ name|striptags|title }} will remov', 'Beside filters, there are also so-called “tests” available. Tests can be used to test a variable against a common expression. To test a variable or expression, you add is plus the name of the test after the variable. For example, to find out if a variable is defined, you can do name is defined, which will then return true or false depending on whether name is defined in the current template context.\r\n\r\nTests can accept arguments, too. If the test only takes one argument, you can leave out the parentheses. For example, the following two expressions do the same thing:\r\n\r\n{% if loop.index is divisibleby 3 %}\r\n{% if loop.index is divisibleby(3) %}\r\nThe List of Builtin Tests below describes all the builtin tests.\r\n\r\nComments\r\nTo comment-out part of a line in a template, use the comment synta', '', '2021-07-28 19:19:58', '0', ''),
(6, 'This is \"c++\"', 'Mother Language c /c++', 'g', 'f', 'g.png', '2021-07-29 15:30:00', '0', ''),
(7, 'This is \"java \"', 'wenderfull programming language', 'o', 'o', 'ab.png', '2021-07-29 15:59:44', '0', ''),
(10, 'a', 'm', 'n', 'e', '', '2021-08-02 08:29:07', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
