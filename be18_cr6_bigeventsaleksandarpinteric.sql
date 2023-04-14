-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 08:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be18_cr6_bigeventsaleksandarpinteric`
--
CREATE DATABASE IF NOT EXISTS `be18_cr6_bigeventsaleksandarpinteric` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be18_cr6_bigeventsaleksandarpinteric`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230414103517', '2023-04-14 12:35:35', 26);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `time` datetime NOT NULL,
  `description` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `link` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `time`, `description`, `image`, `capacity`, `email`, `phone`, `address`, `zip`, `city`, `link`, `type`) VALUES
(1, 'Concert of the year', '2023-06-15 20:00:00', 'Don\'t miss the concert of the year with world-renowned artists!', 'https://cdn.pixabay.com/photo/2016/11/22/19/15/audience-1850119__340.jpg', 500, 'info@example.com', '+1 123 456 7890', '123 Main St', '12345', 'Anytowna', 'https://example.com/music', 'music'),
(2, 'Annual Charity Gala', '2023-07-10 18:00:00', 'Join us for a night of giving and making a difference in our community!', 'https://cdn.pixabay.com/photo/2017/02/10/12/03/volunteer-2055015__340.png', 200, 'donations@example.com', '+1 555 123 4567', '456 Oak Ave', '54321', 'Cityville', 'https://example.com/charity', 'charity'),
(3, 'Movie Screening', '2023-07-28 19:30:00', 'Join us for a special screening of the latest blockbuster movie!', 'https://cdn.pixabay.com/photo/2020/04/20/18/10/cinema-5069314__340.jpg', 150, 'tickets@example.com', '+1 555 555 55551', '789 Elm St', '98765', 'Townsville', 'https://example.com/movie', 'movie'),
(4, 'Summer Sports Camp', '2023-07-15 09:00:00', 'Get ready for a summer filled with sports, games, and fun!', 'https://cdn.pixabay.com/photo/2014/11/07/00/00/volleyball-520093__340.jpg', 50, 'tickets@example.com', '+1 555 789 1234', '321 Maple Rd', '45678', 'Suburbia', 'https://example.com/sports', 'sport'),
(5, 'Theater Play', '2023-06-30 19:00:00', 'Experience the magic of theater with our latest production!', 'https://cdn.pixabay.com/photo/2019/11/07/20/48/cinema-4609877__340.jpg', 100, 'tickets@example.com', '+1 555 555 5555', '123 Main St', '12345', 'Anytown', 'https://example.com/theater', 'art'),
(6, 'Summer Music Festival', '2023-08-05 12:00:00', 'Join us for a day of music, food, and fun in the sun!', 'https://cdn.pixabay.com/photo/2017/07/21/23/57/concert-2527495__340.jpg', 1000, 'info@example.com', '+1 123 456 7890', '456 Oak Ave', '54321', 'Cityville', 'https://example.com/music', 'music'),
(7, 'Community Cleanup', '2023-07-20 10:00:00', 'Join us as we come together to clean up our community and make it a better place!', 'https://cdn.pixabay.com/photo/2019/04/23/07/45/wheelbarrow-4148756__340.png', 50, 'volunteers@example.com', '+1 555 123 4567', '789 Elm St', '98765', 'Townsville', 'https://example.com/cleanup', 'community'),
(8, 'Art Exhibition', '2023-08-01 18:00:00', 'Experience the beauty and creativity of local artists!', 'https://cdn.pixabay.com/photo/2019/02/14/07/28/painting-3995999__340.jpg', 200, 'tickets@example.com', '+1 555 789 1234', '321 Maple Rd', '45678', 'Suburbia', 'https://example.com/art', 'art'),
(9, 'Science Fair', '2023-09-01 09:00:00', 'Discover the wonders of science with interactive exhibits and demonstrations!', 'https://cdn.pixabay.com/photo/2011/12/13/14/31/earth-11015__340.jpg', 500, 'info@example.com', '+1 123 456 7890', '123 Main St', '12345', 'Anytown', 'https://example.com/science', 'community'),
(10, 'Dance Performance', '2023-08-15 19:30:00', 'Experience the energy and excitement of our latest dance performance!', 'https://cdn.pixabay.com/photo/2016/10/20/08/36/woman-1754895__340.jpg', 150, 'tickets@example.com', '+1 555 555 5555', '456 Oak Ave', '54321', 'Cityville', 'https://example.com/dance', 'art');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
