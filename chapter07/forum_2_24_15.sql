-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 25, 2015 at 05:22 AM
-- Server version: 5.6.17-debug-log
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE IF NOT EXISTS `forums` (
`forum_id` tinyint(3) unsigned NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`forum_id`, `name`) VALUES
(5, 'CSS'),
(4, 'HTML'),
(6, 'Kindling'),
(7, 'Modern Dance'),
(1, 'MySQL'),
(2, 'PHP'),
(3, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`message_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_id` tinyint(3) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL,
  `subject` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `date_entered` datetime NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `parent_id`, `forum_id`, `user_id`, `subject`, `body`, `date_entered`) VALUES
(1, 0, 1, 1, 'Question about normalization.', 'I''m confused about normalization. For the second normal form (2NF), I read...', '2015-02-25 04:59:45'),
(2, 0, 1, 2, 'Database Design', 'I''m creating a new database and am having problems with the structure. How many tables should I have?...', '2015-02-25 04:59:45'),
(3, 2, 1, 2, 'Database Design', 'The number of tables your database includes...', '2015-02-25 04:59:45'),
(4, 0, 1, 3, 'Database Design', 'Okay, thanks!', '2015-02-25 04:59:45'),
(5, 0, 2, 3, 'PHP Errors', 'I''m using the scripts from Chapter 3 and I can''t get the first calculator example to work. When I submit the form...', '2015-02-25 04:59:45'),
(6, 5, 2, 1, 'PHP Errors', 'What version of PHP are you using?', '2015-02-25 04:59:45'),
(7, 6, 2, 3, 'PHP Errors', 'Version 5.2', '2015-02-25 04:59:45'),
(8, 7, 2, 1, 'PHP Errors', 'In that case, try the debugging steps outlined in Chapter 7.', '2015-02-25 04:59:45'),
(9, 0, 3, 2, 'Chicago Bulls', 'Can the Bulls really win it all this year?', '2015-02-25 04:59:45'),
(10, 9, 3, 1, 'Chicago Bulls', 'I don''t know, but they sure look good!', '2015-02-25 04:59:45'),
(11, 0, 5, 3, 'CSS Resources', 'Where can I found out more information about CSS?', '2015-02-25 04:59:45'),
(12, 11, 5, 1, 'CSS Resources', 'Read Elizabeth Castro''s excellent book on (X)HTML and CSS. Or search Google on "CSS".', '2015-02-25 04:59:45'),
(13, 0, 4, 3, 'HTML vs. XHTML', 'What are the differences between HTML and XHTML?', '2015-02-25 04:59:45'),
(14, 13, 4, 1, 'HTML vs. XHTML', 'XHTML is a cross between HTML and XML. The differences are largely syntactic. Blah, blah, blah...', '2015-02-25 04:59:45'),
(15, 0, 6, 4, 'Why?', 'Why do you have a forum dedicated to kindling? Don''t you deal mostly with PHP, MySQL, and so forth?', '2015-02-25 04:59:45'),
(16, 0, 2, 3, 'Dynamic HTML using PHP', 'Can I use PHP to dynamically generate HTML on the fly? Thanks...', '2015-02-25 04:59:45'),
(17, 16, 2, 1, 'Dynamic HTML using PHP', 'You most certainly can.', '2015-02-25 04:59:45'),
(18, 17, 2, 3, 'Dynamic HTML using PHP, still not clear', 'Um, how?', '2015-02-25 04:59:45'),
(19, 18, 2, 2, 'Dynamic HTML using PHP, clearer?', 'I think what Larry is trying to say is that you should buy and read his book.', '2015-02-25 04:59:45'),
(20, 15, 6, 4, 'Why? Why? Why?', 'Really, why?', '2015-02-25 04:59:45'),
(21, 20, 6, 1, 'Because', 'Because', '2015-02-25 04:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` mediumint(8) unsigned NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` char(40) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `pass`, `first_name`, `last_name`, `email`) VALUES
(1, 'troutster', 'e727d1464ae12436e899a726da5b2f11d8381b26', 'Larry', 'Ullman', 'lu@example.com'),
(2, 'funny man', 'ab87d24bdc7452e55738deb5f868e1f16dea5ace', 'David', 'Brent', 'db@example.com'),
(3, 'Gareth', '0d73e0a895b147446cba85df36b3e7d1e4ecec97', 'Gareth', 'Keenan', 'gk@example.com'),
(4, 'tim', '4cb0c3898531df6f039fc8fbeacf5c8ad15393c1', 'Tim', 'Canterbury', 'tc@example.com'),
(5, 'finchy', '45c30192fc7a8849b45f10573663ff63500f5431', 'Chris', 'Finch', 'cf@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
 ADD PRIMARY KEY (`forum_id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `forum_id` (`forum_id`), ADD KEY `user_id` (`user_id`), ADD KEY `date_entered` (`date_entered`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `email` (`email`), ADD KEY `login` (`pass`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
MODIFY `forum_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
