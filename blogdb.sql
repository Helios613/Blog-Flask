-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 10:39 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first post', 'firstpost@gmail.com', '123456789', 'first post', '2021-09-25 18:17:42'),
(2, 'testName', 'test@gmail.com', '4545454545', 'test message', '2021-09-25 18:31:21'),
(3, 'test', 'test@gmail.com', '9191919191', 'test', '2021-09-26 15:59:44'),
(4, 'test', 'test@gmail.com', '9191919191', 'test msg', '2021-09-26 16:02:13'),
(5, 'test', 'test@gmail.com', '9191919191', 'test msg', '2021-09-26 16:05:59'),
(6, 'test', 'test@gmail.com', '9191919191', 'test message', '2021-09-26 16:07:00'),
(7, 'Piyush Rajput', 'piyush.rajput2019@vitstudent.ac.in', '09167697371', 'dajkdaixik', '2021-09-30 00:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Man must explore, and this is exploration at its greatest', 'Problems look mighty small from 150 miles up', 'first-post', 'Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center because every point, or none, is center — an equal earth which all men occupy as equals. The airman\'s earth, if free men make it, will be truly round: a globe in practice, not in theory. Science cuts two ways, of course; its products can be used for both good and evil. But there\'s no turning back from science. The early warnings about technological dangers also come from science. What was most significant about the lunar voyage was not that man set foot on the Moon but that they set eye on the earth. A Chinese tale tells of some men sent to harm a young girl who, upon seeing her beauty, become her protectors rather than her violators. That\'s how I felt seeing the Earth for the first time. I could not help but love and cherish her. ', 'post-bg.jpg', '2021-10-02 14:04:45'),
(2, 'Science has not yet mastered prophecy', 'We predict too much for the next year and yet far too little for the next ten', 'second-post', 'It is quite understandable that as investors we want to get a sense of economies and markets so that we\r\ncan figure out what is going to happen next. Often I hear analysts and market strategists say things like,\r\n“Corporate earnings are coming in significantly better than [analyst] estimates and therefore market\r\nprice levels should be well supported for the balance of the year.” The prevailing sentiment around the\r\neconomy and markets was quite bullish going into this year, but then when the 10%+ correction\r\noccurred it was common to hear pundits say things like ‘this is a buying opportunity’ which suggests that\r\nwhatever concerns that caused the pullback in market prices were simply ‘wrong.’ This bullish view may\r\nprove to be right, but my career as an equity analyst and portfolio manager has taught me time and\r\nagain that we are well served to acknowledge that what we believe or want to happen isn’t always\r\nthe case. Therefore, we think it is sensible to remember that lots of other things can occur. ', 'sc-bg.jpg', '2021-10-02 11:46:09'),
(3, 'Failure is not an option', 'Many say exploration is part of our destiny, but it’s actually our duty to future generations', 'third-post', 'You’ve likely heard this dramatic line expertly crafted by screenwriters for the film Apollo 13 about a space mission gone wrong.  The story is an amazing one of the joint rescue effort of both hundreds of NASA technicians and engineers, and the astronauts themselves, to get them safely back to earth - alive.\r\n\r\nFor most of us however, failure is not only an option; it’s at times inevitable.  Businesses fail, relationships fail and people fail to reach their goals…all the time.  This is not always a bad thing.  In fact, most people who fail will tell you it pushed them on to bigger and better things. \r\n\r\nThat sentiment does not apply when it comes to our children.  Parents never want to see their children fail.  And of course, it’s with the best of intentions - not only do we want to shelter them from heartache, but we also want them to experience that euphoria of success, and of winning.    \r\n\r\nBut, the reality is, children need to fail.  Failure builds resiliency, the ability to cope, to carry on – and above all, to learn.  Children who are resilient are able to handle life’s challenges along their path into adulthood.  It makes them stronger.  But what of a child who never fails?  One who is perpetually sheltered from experiencing the disappointment of failure?  They will be missing out on valuable lessons on winning and losing which help them navigate their way through their life.\r\n\r\nIn recreation and sport, this can be seen through the introduction to the concept of healthy competition. \r\n\r\n', 'f-bg.jpg', '2021-10-02 11:54:07'),
(4, 'How Does the Stock Market Work?', 'Stocks, or shares of a company, represent ownership equity in the firm', 'fourth-post', 'If the thought of investing in the stock market scares you, you are not alone. Individuals with very limited experience in stock investing are either terrified by horror stories of the average investor losing 50% of their portfolio value for example, in the two bear markets that have already occurred in this millennium or are beguiled by \"hot tips\" that bear the promise of huge rewards but seldom pay off. It is not surprising, then, that the pendulum of investment sentiment is said to swing between fear and greed.\r\n\r\n\r\nThe reality is that investing in the stock market carries risk, but when approached in a disciplined manner, it is one of the most efficient ways to build up one\'s net worth. While the value of one\'s home typically accounts for most of the net worth of the average individual, most of the affluent and very rich generally have the majority of their wealth invested in stocks.﻿ In order to understand the mechanics of the stock market, let\'s begin by delving into the definition of a stock and its different types.\r\n\r\n\r\n', 'st-bg.jpg', '2021-10-02 11:55:51'),
(5, 'What is coding and why is it so important?', 'Coding, in the simplest of terms, is telling a computer what you want it to do', 'fifth-post', 'Coding, in the simplest of terms, is telling a computer what you want it to do, which involves typing in step-by-step commands for the computer to follow.\r\n\r\nComputers are not clever things, however they are very obedient. They will do exactly what you want them to do, so long as you tell them how to do it correctly.\r\n\r\nLearning to code has been likened to learning a foreign language, or perhaps more specifically a family of foreign languages.\r\n\r\nCode powers our digital world. Every website, smartphone app, computer program, calculator and even microwave relies on code in order to operate. This makes coders the architects and builders of the digital age. Over the next 10 years it is estimated that there will be 1.4 million jobs in computer sciences and only around 400,000 graduates qualified to do them.\r\n\r\nJobs not directly linked to computer sciences – such as banking, medicine and journalism – will also be affected by the need for at least an understanding of programming and coding.\r\n\r\nLinda Liukas, co-founder of coding workshop program Rail Girls, believes that coding is “the literacy of the 21st century” and the need for people to speak the ABC of programming is imminent.', 'c-bg.jpg', '2021-10-02 11:59:53');

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
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
