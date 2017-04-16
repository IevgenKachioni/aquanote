-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2017 at 11:56 AM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aqua_note`
--

-- --------------------------------------------------------

--
-- Table structure for table `genus`
--

CREATE TABLE `genus` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sub_family` varchar(255) DEFAULT NULL,
  `species_count` int(10) UNSIGNED DEFAULT NULL,
  `fun_fact` varchar(255) DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genus`
--

INSERT INTO `genus` (`id`, `name`, `sub_family`, `species_count`, `fun_fact`, `is_published`) VALUES
(28, 'Hippocampus', 'Culpa consequatur.', 93263, 'Accusamus nihil repellat vero omnis voluptates id amet et.', 1),
(29, 'Asterias', 'Suscipit qui.', 46721, 'Quam ipsam voluptatem cupiditate sed natus debitis voluptas.', 0),
(30, 'Hippocampus', 'Laudantium sit.', 41789, 'Dignissimos error et itaque quibusdam tempora velit.', 1),
(31, 'Hippocampus', 'Ut velit soluta.', 69263, 'Debitis et saepe eum sint dolorem delectus.', 1),
(32, 'Balaena', 'Ipsum inventore sed.', 90529, 'Qui suscipit a deserunt laudantium quibusdam.', 1),
(33, 'Balaena', 'Nostrum soluta qui.', 21198, 'Velit reiciendis aperiam et fuga.', 0),
(34, 'Aurelia', 'Nisi placeat cumque.', 44669, 'Modi saepe architecto unde non dicta eveniet exercitationem.', 1),
(35, 'Aurelia', 'Porro sed magni.', 2034, 'Voluptas sint non voluptates.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20170402171750');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genus`
--
ALTER TABLE `genus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genus`
--
ALTER TABLE `genus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
