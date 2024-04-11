-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2024 at 12:33 PM
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
-- Database: `bityeartwo2024`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `artid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `dateofcreation` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`artid`, `userid`, `title`, `contents`, `dateofcreation`) VALUES
(1, 3, 'java', '1) Java SE (Java Standard Edition)\r\nIt is a Java programming platform. It includes Java programming APIs such as java.lang, java.io, java.net, java.util, java.sql, java.math etc. It includes core topics like OOPs, String, Regex, Exception, Inner classes, Multithreading, I/O Stream, Networking, AWT, Swing, Reflection, Collection, etc.\r\n2) Java EE (Java Enterprise Edition)\r\nIt is an enterprise platform that is mainly used to develop web and enterprise applications. It is built on top of the Java SE platform. It includes topics like Servlet, JSP, Web Services, EJB, JPA, etc.\r\n', '2024-04-09 22:00:00'),
(2, 4, 'JVM', '1.JVM\r\nJVM (Java Virtual Machine) is an abstract machine. It is called a virtual machine because it doesn\'t physically exist.\r\n It is a specification that provides a runtime environment in which Java bytecode can be executed. It can also run those programs which are written in other languages and compiled to Java bytecode.\r\nJVMs are available for many hardware and software platforms. JVM, JRE, and JDK are platform dependent because the configuration of each OS is different from each other\r\n', '2024-10-06 22:00:00'),
(4, 6, 'CONSTRUCTTOR', 'A constructor in Java is a special method that is used to initialize objects. The constructor is called when an object of a class is created. It can be used to set initial values for object attributes.\r\n In Java, a constructor is a block of codes similar to the method.\r\nWhen is a constructor called?\r\nEvery time an object is created using new() keyword, at least one constructor is called. It calls a default constructor.\r\nNote: It is called constructor because it constructs the values at the time of object creation. It is not necessary to write a constructor for a class. It is because java compiler creates a default constructor if your class doesn\'t have any.\r\n', '2024-03-29 22:00:00'),
(5, 5, 'AVN', 'If statements in Java is used to control the program flow based on some condition, it\'s used to execute some statement code block if the expression evaluated to true; otherwise, it will get skipped. This statement is the simplest way to modify the control flow of the program.\r\n', '2024-04-13 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cid` int(11) NOT NULL,
  `contentid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cid`, `contentid`, `userid`) VALUES
(1, 2, 6),
(2, 1, 4),
(3, 4, 2),
(4, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `fid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `friendid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`fid`, `userid`, `friendid`) VALUES
(1, 5, 2),
(3, 3, 2),
(4, 4, 6),
(5, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `lid` int(11) NOT NULL,
  `contentid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`lid`, `contentid`, `userid`) VALUES
(1, 4, 5),
(2, 2, 6),
(3, 1, 3),
(5, 4, 5),
(7, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `multimedia`
--

CREATE TABLE `multimedia` (
  `mid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `type` enum('image','video','audio') DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `multimedia`
--

INSERT INTO `multimedia` (`mid`, `userid`, `type`, `location`, `upload_date`) VALUES
(1, 6, 'image', 'https://wallper.com/image1.jpg', '2024-04-20 22:00:00'),
(2, 4, 'video', 'https://allvideos.com/video1.mp4', '2024-01-01 22:00:00'),
(3, 2, 'audio', 'https://mixallvideo.com/audio1.mp3', '2024-02-03 22:00:00'),
(4, 5, 'image', 'https://allpicturesandimages.com/image2.png', '2024-04-29 22:00:00'),
(5, 5, 'image', 'https://allpicturesandimages.com/image2.png', '2024-04-29 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `pid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `Campus` varchar(100) DEFAULT NULL,
  `College` varchar(100) DEFAULT NULL,
  `School` varchar(100) DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `Level` varchar(50) DEFAULT NULL,
  `GroupName` varchar(50) DEFAULT NULL,
  `Regnumber` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`pid`, `userid`, `Campus`, `College`, `School`, `Department`, `Level`, `GroupName`, `Regnumber`) VALUES
(1, 6, 'Huye ', 'CBE', 'School of Business', 'eeconomics', '2', 'B', '22209988'),
(3, 2, 'Nyagatare', 'College of Education', 'School of Education', 'Curriculum and Instruction', '3', 'A', '222032323'),
(4, 4, 'Kayonza ', 'College of Engineering', 'Electrical Engineering', 'Electrical Engineering', '1', 'C', '222017864'),
(6, 5, 'Gikondo ', 'College of Arts and Sciences', 'School of Psychology', 'Psychology', '4', 'A', '222011111');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `rid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `rolename` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`rid`, `userid`, `rolename`) VALUES
(1, 5, 'Admin'),
(8, 3, 'COLLABO'),
(9, 6, 'COLLABO'),
(10, 8, 'COLLABO'),
(11, 9, 'COLLABO');

-- --------------------------------------------------------

--
-- Table structure for table `unlike`
--

CREATE TABLE `unlike` (
  `lid` int(11) NOT NULL,
  `contentid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unlike`
--

INSERT INTO `unlike` (`lid`, `contentid`, `userid`) VALUES
(1, 5, 3),
(2, 2, 6),
(3, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `activation_code` varchar(50) DEFAULT NULL,
  `is_activated` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `email`, `telephone`, `password`, `creationdate`, `activation_code`, `is_activated`) VALUES
(2, 'abasabeza', 'honore', 'abao', 'AABAO@gmail.com', '0786182877', '$2y$10$.sHCqkblwkRyJ3l0MCvIguhsSi3h2.k1jDWbgDajhUpzqcE9.lxD.', '2024-04-01 13:31:30', NULL, 0),
(3, 'twahirwa', 'enock', 'twahirwaenock', 'twahirwaenock@gmail.com', '0785867511', '$2y$10$Nwkdq04stucdK8NyY3T6N.SR/gZSL.I5U5pg8EEN3fsZQoE.NZqty', '2024-04-01 14:06:29', 'as33', 0),
(4, 'ndayiragije', 'jean paul', 'ndayihean', 'ndayiragije@gmail.com', '0788854323', '$2y$10$2Rzs6Dig6kyD6AnN3leGyuOCeORnANZ8gM1LdqF6/vRrLRIxzXrp2', '2024-04-01 14:08:42', 'as33', 0),
(5, 'rurangwa', 'samson', 'samrura', 'rurangwa@gmail.com', '0787564342', '$2y$10$ac5.8YOnFSR3XVltYHlHh.sKy7RRWwiYv5w1Xr1O.7Sw3J8P47o3K', '2024-04-01 14:14:06', 'DCD32', 0),
(6, 'iradukunda', 'divine', 'iradukunda', 'iradukunda@gmail.com', '0788753424', '$2y$10$xF9bFM5CRuk.kV1kk/6z0ekXi7546/w5lGCxgQLLRtqDErmMiDTiC', '2024-04-02 14:45:58', '998877', 0),
(7, 'shema', 'aloys', 'shema', 'shema@gmail.com', '078565445434', '$2y$10$Ifg5Sv3rwSK4sfXP8VrIP.IqfR9/1zSlNYMC2USsaB1/ywi8r3K/.', '2024-04-11 07:36:01', '12', 0),
(8, 'nsabimana', 'jean paul', 'nsabiii', 'nsabimana@gmail.com', '07856453434', '$2y$10$2Rzs6Dig6kyD6AnN3leGyuOCeORnANZ8gM1LdqF6/vRrLRIxzXrp2', '2024-04-11 08:58:36', '12', 0),
(9, 'muragijimana uwase ', 'marie louise', 'muragijimana', 'muragijimana@gmail.com', '0786466334', '$2y$10$2Rzs6Dig6kyD6AnN3leGyuOCeORnANZ8gM1LdqF6/vRrLRIxzXrp2', '2024-04-11 09:01:35', '12', 0),
(10, 'uwiduhaye', 'emima', 'emima', 'uwiduhaye@gmail.com', '0787564342', '$2y$10$2Rzs6Dig6kyD6AnN3leGyuOCeORnANZ8gM1LdqF6/vRrLRIxzXrp2', '2024-04-11 09:04:13', '12', 0),
(11, 'dukundimana', 'francine', 'fanny', 'dukundimana@gmail.com', '078574356', '$2y$10$2Rzs6Dig6kyD6AnN3leGyuOCeORnANZ8gM1LdqF6/vRrLRIxzXrp2', '2024-04-11 09:04:13', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`artid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `contentid` (`contentid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `friendid` (`friendid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `contentid` (`contentid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `unlike`
--
ALTER TABLE `unlike`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `contentid` (`contentid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `artid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `unlike`
--
ALTER TABLE `unlike`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`contentid`) REFERENCES `article` (`artid`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`friendid`) REFERENCES `user` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`contentid`) REFERENCES `article` (`artid`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD CONSTRAINT `multimedia_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `unlike`
--
ALTER TABLE `unlike`
  ADD CONSTRAINT `unlike_ibfk_1` FOREIGN KEY (`contentid`) REFERENCES `article` (`artid`),
  ADD CONSTRAINT `unlike_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
