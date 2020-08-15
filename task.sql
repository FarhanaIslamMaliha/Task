-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2020 at 05:07 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sectionId` varchar(255) DEFAULT NULL,
  `sectionName` varchar(255) DEFAULT NULL,
  `webPublicationDate` timestamp NULL DEFAULT NULL,
  `webTitle` varchar(255) DEFAULT NULL,
  `webUrl` varchar(255) DEFAULT NULL,
  `apiUrl` varchar(255) DEFAULT NULL,
  `isHosted` tinyint(1) DEFAULT NULL,
  `pillarId` varchar(255) DEFAULT NULL,
  `pillarName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `type`, `sectionId`, `sectionName`, `webPublicationDate`, `webTitle`, `webUrl`, `apiUrl`, `isHosted`, `pillarId`, `pillarName`) VALUES
('business/2020/aug/15/uk-firms-solar-power-breakthrough-could-make-worlds-most-efficient-panels-by-2021', 'article', 'business', 'Business', '2020-08-14 17:00:26', 'UK firm\'s solar power breakthrough could make world\'s most efficient panels by 2021', 'https://www.theguardian.com/business/2020/aug/15/uk-firms-solar-power-breakthrough-could-make-worlds-most-efficient-panels-by-2021', 'https://content.guardianapis.com/business/2020/aug/15/uk-firms-solar-power-breakthrough-could-make-worlds-most-efficient-panels-by-2021', 0, 'pillar/news', 'News'),
('crosswords/prize/28213', 'crossword', 'crosswords', 'Crosswords', '2020-08-14 17:00:26', 'Prize crossword No 28,213', 'https://www.theguardian.com/crosswords/prize/28213', 'https://content.guardianapis.com/crosswords/prize/28213', 0, 'pillar/lifestyle', 'Lifestyle'),
('crosswords/weekend/502', 'crossword', 'crosswords', 'Crosswords', '2020-08-14 17:00:26', 'Weekend crossword No 502', 'https://www.theguardian.com/crosswords/weekend/502', 'https://content.guardianapis.com/crosswords/weekend/502', 0, 'pillar/lifestyle', 'Lifestyle'),
('us-news/live/2020/aug/14/state-troopers-portland-donald-trump-joe-biden-kamala-harris-coronavirus-covid-19-live-updates', 'liveblog', 'us-news', 'US news', '2020-08-14 18:16:50', 'Obama condemns Trump attempt to \'kneecap\' USPS to discourage voting â€“ as it happened', 'https://www.theguardian.com/us-news/live/2020/aug/14/state-troopers-portland-donald-trump-joe-biden-kamala-harris-coronavirus-covid-19-live-updates', 'https://content.guardianapis.com/us-news/live/2020/aug/14/state-troopers-portland-donald-trump-joe-biden-kamala-harris-coronavirus-covid-19-live-updates', 0, 'pillar/news', 'News'),
('world/2020/aug/14/sheer-fear-mental-health-impacts-of-covid-19-come-to-fore', 'article', 'world', 'World news', '2020-08-14 17:01:22', '\'Sheer fear\': mental health impacts of Covid-19 come to fore', 'https://www.theguardian.com/world/2020/aug/14/sheer-fear-mental-health-impacts-of-covid-19-come-to-fore', 'https://content.guardianapis.com/world/2020/aug/14/sheer-fear-mental-health-impacts-of-covid-19-come-to-fore', 0, 'pillar/news', 'News'),
('world/2020/aug/14/us-iran-un-arms-embargo-nuclear-deal', 'article', 'world', 'World news', '2020-08-14 17:21:20', 'US sees embarrassing UN defeat over Iran arms embargo proposal', 'https://www.theguardian.com/world/2020/aug/14/us-iran-un-arms-embargo-nuclear-deal', 'https://content.guardianapis.com/world/2020/aug/14/us-iran-un-arms-embargo-nuclear-deal', 0, 'pillar/news', 'News'),
('world/2020/aug/15/new-zealand-lockdown-everything-was-normal-and-then-it-wasnt', 'article', 'world', 'World news', '2020-08-14 20:49:28', 'New Zealand lockdown: Everything was normal and then it wasn\'t', 'https://www.theguardian.com/world/2020/aug/15/new-zealand-lockdown-everything-was-normal-and-then-it-wasnt', 'https://content.guardianapis.com/world/2020/aug/15/new-zealand-lockdown-everything-was-normal-and-then-it-wasnt', 0, 'pillar/news', 'News'),
('world/2020/aug/15/the-press-has-to-go-on-hong-kong-media-tycoon-jimmy-lai-defies-beijing', 'article', 'world', 'World news', '2020-08-14 18:38:38', '\'The press has to go on\': Hong Kong media tycoon Jimmy Lai defies Beijing', 'https://www.theguardian.com/world/2020/aug/15/the-press-has-to-go-on-hong-kong-media-tycoon-jimmy-lai-defies-beijing', 'https://content.guardianapis.com/world/2020/aug/15/the-press-has-to-go-on-hong-kong-media-tycoon-jimmy-lai-defies-beijing', 0, 'pillar/news', 'News'),
('world/2020/aug/15/uk-to-mark-75th-anniversary-of-victory-over-japan-day', 'article', 'world', 'World news', '2020-08-14 17:01:26', 'UK to mark 75th anniversary of Victory over Japan Day', 'https://www.theguardian.com/world/2020/aug/15/uk-to-mark-75th-anniversary-of-victory-over-japan-day', 'https://content.guardianapis.com/world/2020/aug/15/uk-to-mark-75th-anniversary-of-victory-over-japan-day', 0, 'pillar/news', 'News'),
('world/live/2020/aug/14/coronavirus-live-news-france-says-uk-quarantine-will-lead-to-reciprocal-measures-as-global-deaths-pass-750000', 'liveblog', 'world', 'World news', '2020-08-14 17:18:20', 'France infections accelerate; Spain to close nightclubs and ban public smoking â€“ as it happened', 'https://www.theguardian.com/world/live/2020/aug/14/coronavirus-live-news-france-says-uk-quarantine-will-lead-to-reciprocal-measures-as-global-deaths-pass-750000', 'https://content.guardianapis.com/world/live/2020/aug/14/coronavirus-live-news-france-says-uk-quarantine-will-lead-to-reciprocal-measures-as-global-deaths-pass-750000', 0, 'pillar/news', 'News'),
('world/live/2020/aug/15/coronavirus-live-news-victoria-in-australia-adds-303-cases-as-restrictions-tighten-in-europe', 'liveblog', 'world', 'World news', '2020-08-14 20:10:29', 'Coronavirus live news: Victoria in Australia adds 303 cases as restrictions tighten in Europe', 'https://www.theguardian.com/world/live/2020/aug/15/coronavirus-live-news-victoria-in-australia-adds-303-cases-as-restrictions-tighten-in-europe', 'https://content.guardianapis.com/world/live/2020/aug/15/coronavirus-live-news-victoria-in-australia-adds-303-cases-as-restrictions-tighten-in-europe', 0, 'pillar/news', 'News');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
