-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2022 at 02:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_details`
--

CREATE TABLE `event_details` (
  `EventID` int(10) NOT NULL,
  `EventName` varchar(100) NOT NULL,
  `EventDate` date NOT NULL,
  `EventTime` time NOT NULL,
  `EventCategory` varchar(100) NOT NULL,
  `EventDescription` text NOT NULL,
  `EventTicketPrice` double NOT NULL,
  `EventTicketTotal` int(11) NOT NULL,
  `EventTicketSold` int(11) NOT NULL,
  `VenueID` int(10) NOT NULL,
  `UserID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_details`
--

INSERT INTO `event_details` (`EventID`, `EventName`, `EventDate`, `EventTime`, `EventCategory`, `EventDescription`, `EventTicketPrice`, `EventTicketTotal`, `EventTicketSold`, `VenueID`, `UserID`) VALUES
(1, 'RAGA', '2022-02-14', '19:00:00', 'Music', 'Raga is a live music performance in front of an audience. The performance may be by a single musician, sometimes then called a recital, or by a musical ensemble, such as an orchestra, choir, or band.\r\nStudents can participate in three categories: SOLO, DUET and BAND.\r\nYou can play instruments of your interest too.\r\nThe winner will be chosen year-wise.', 0, 100, 1, 4, 'AUTAR002'),
(2, 'ALFAAZ', '2022-01-24', '15:00:00', 'Literature', 'Alfaaz, an Event of Ghazal, Poetry and Qawwali and the performance of upcoming talents in this field of Art and Literature. The Event is scheduled on the 24th of January, 2022 at 3:00 P.M. All the Lovers of Shayari, Ghazal and Poetry, as well as those Artistes/Poets who are keen on displaying their talents are cordially invited to actively participate in the Event. Eagerly waiting for a great response.\r\nInterested Students can participate.', 0, 2, 0, 2, 'AUTAR001'),
(3, 'TURN IT UP! DANCE COMPETITION', '2022-02-17', '15:00:00', 'Dance', ' We can\'t wait to Turn It Up with you! Turn It Up Dance is an event focusing on the best aspects of dance competition - fun, talent, friendship, skills, support and achievement. Not every dancer will go on to dance professionally, but each one deserves to be recognized for their passion and dedication to the art of dance. All That! Dancers, along with other dancers from all the years, will take the stage to showcase what they have been working on throughout the season. \r\n\r\nTurn It Up is open to all the students.\r\n Mark your calendars now ,This is a required event for team groups and soloists.\r\nInterested students can participate.', 0, 100, 1, 3, 'AUTAR001'),
(4, 'BIDDING LEAGUE', '2022-02-07', '17:00:00', 'Sports', 'Sport pertains to any form of competitive physical activity or game that aims to use, maintain or improve physical ability and skills while providing enjoyment to participants and, in some cases, entertainment to spectators.\r\nIn our college there are sports like:-\r\nCricket, Volleyball, Basketball, Badminton, Football, Handball, Table Tennis.\r\nInterested students can participate. ', 0, 100, 0, 5, 'AUTAR002'),
(5, 'DISPICS', '2022-02-25', '08:00:00', 'Media', 'Dispics in an online photography competition held at the time of fest where you can show your love towards photography. You can join the event and send photos clicked by you to the given email.\r\nStudents from any year can participate.', 0, 100, 0, 6, 'AUTAR001'),
(8, 'VERVE ', '2022-02-04', '16:00:00', 'Rampwalk', 'The \'Rampwalk\' is a walkway, platform, or clearing used by one to demonstrate clothing and accessories during a fashion show.\r\nThere will be three titles for the winners with the amazing cash prizes.\r\nThe three titles will be:\r\n1. Mr. & Ms. Verve\r\n2. Mr. & Ms. Flamboyant\r\n3. Mr. & Ms. Felicita \r\nInterested students can join to participate.', 0, 100, 0, 3, 'AUTAR002'),
(9, 'NUKKAD NATAK ', '2022-02-24', '00:00:00', 'Drama', 'Nukkad Natak is a form of theatrical performance and presentation in outdoor public spaces without a specific paying audience. These spaces can be anywhere, including shopping centres, car parks, recreational reserves, college or university campus and street corners. They are especially seen in outdoor spaces where there are large numbers of people.\r\nInterested students can participate. ', 0, 100, 0, 6, 'AUTAR002'),
(10, 'ABHIVYAKTI', '2022-02-25', '16:30:00', 'Theatre', 'Abhivyakti  is a collaborative form of performing art that uses live performers, usually actors or actresses, to present the experience of a real or imagined event before a live audience in a specific place, often a stage.\r\nStudents from any year can participate.', 0, 150, 0, 1, 'AUTAR001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_details`
--
ALTER TABLE `event_details`
  ADD PRIMARY KEY (`EventID`),
  ADD KEY `event_details_ibfk_1` (`VenueID`),
  ADD KEY `event_details_ibfk_3` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_details`
--
ALTER TABLE `event_details`
  MODIFY `EventID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_details`
--
ALTER TABLE `event_details`
  ADD CONSTRAINT `event_details_ibfk_1` FOREIGN KEY (`VenueID`) REFERENCES `venue_details` (`VenueID`),
  ADD CONSTRAINT `event_details_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `user_details` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
