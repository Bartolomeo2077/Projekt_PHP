-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 11:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmywypo`
--

-- --------------------------------------------------------

--
-- Table structure for table `filmy`
--

CREATE TABLE `filmy` (
  `filmID` int(11) NOT NULL,
  `tytul` varchar(64) NOT NULL,
  `opis` text NOT NULL,
  `zdjecie` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filmy`
--

INSERT INTO `filmy` (`filmID`, `tytul`, `opis`, `zdjecie`, `trailer`) VALUES
(1, 'Władca Pierścieni: Drużyna Pierścienia', 'Podróż hobbita z Shire i jego ośmiu towarzyszy, której celem jest zniszczenie potężnego pierścienia pożądanego przez Czarnego Władcę - Saurona.', 'pic1.jpg', 'https://www.youtube.com/embed/1meEW-aE334'),
(2, 'MISSION: IMPOSSIBLE - DEAD RECKONING - PART ONE', 'Ethan Hunt wraz z ekipą IMF trafiają na trop tajnej broni, która w nieodpowiednich rękach może zagrozić losom całego świata.', 'pic2.jpg', 'https://www.youtube.com/embed/avz06PDqDbM'),
(3, 'JOHN WICK 4', 'John Wick odkrywa sposób na pokonanie Gildii Zabójców. Zanim jednak odzyska wolność, będzie musiał stawić czoła nowemu wrogowi i jego sojusznikom, z którymi stoczy walki na kilku kontynentach.', 'pic3.jpg', 'https://www.youtube.com/embed/fHEjBpRJiNI'),
(4, 'Oppenheimer', 'Historia amerykańskiego naukowca J. Roberta Oppenheimera i jego roli w stworzeniu bomby atomowej.', 'pic4.jpg', 'https://www.youtube.com/embed/n6--w4ZMXaI'),
(5, 'SpongeBob: Na suchym lądzie', 'Gdy zostaje wykradziony sekretny przepis na kraboburgery, SpongeBob łączy siły ze swoim wrogiem Planktonem, by pokonać nikczemnego złodzieja.', 'pic5.jpg', 'https://www.youtube.com/embed/lK2kUmtcYgk'),
(6, 'Gwiezdne wojny: Skywalker. Odrodzenie', 'Członkowie Ruchu Oporu stawiają czoła nowej organizacji militarnej zwanej Ostatecznym Porządkiem, dowodzonej przez odrodzonego Imperatora Palpatine\'a.', 'pic6.jpg', 'https://www.youtube.com/embed/adzYW5DZoWs'),
(7, 'Star Trek: W nieznane', 'Kapitan Kirk wraz z załogą USS Enterprise odbywa pięcioletnią misję, podczas której natyka się na złowrogą kosmiczną rasę dowodzoną przez demonicznego Kralla.', 'pic7.jpg', 'https://www.youtube.com/embed/F3iMgIVfTCI'),
(13, 'Pitbul-porzadki', 'Znowu ten vegeta vol.2', 'pitbull_nowe_porzadki.jpg', 'https://www.youtube.com/embed/xF2f4LIi3vc'),
(14, 'Polityka', 'Film Patryka Vegi', 'polityka.jpg', 'https://www.youtube.com/embed/jTZgRj1D0_4');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `rola` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `rola`) VALUES
(1, 'admin'),
(2, 'użytkownik'),
(3, 'gość');

-- --------------------------------------------------------

--
-- Table structure for table `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(24) NOT NULL,
  `email` varchar(32) NOT NULL,
  `haslo` varchar(256) NOT NULL,
  `rolaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `nazwa`, `email`, `haslo`, `rolaID`) VALUES
(20, 'Bartolomeo', 'bartek69@hotmail.com', 'haslo', 1),
(21, 'Patryk', 'Vegeta@lubie.pl', 'vega', 2);

-- --------------------------------------------------------

--
-- Table structure for table `wypozyczenie`
--

CREATE TABLE `wypozyczenie` (
  `id` int(11) NOT NULL,
  `uzytkownikID` int(11) NOT NULL,
  `filmID` int(11) NOT NULL,
  `wypozyczony` date NOT NULL,
  `zwrot` date NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wypozyczenie`
--

INSERT INTO `wypozyczenie` (`id`, `uzytkownikID`, `filmID`, `wypozyczony`, `zwrot`, `expired`) VALUES
(49, 20, 1, '2023-09-20', '2023-09-21', 1),
(50, 20, 3, '2023-09-20', '2023-09-21', 1),
(51, 20, 2, '2023-09-24', '2023-10-01', 0),
(52, 21, 1, '2023-09-24', '2023-10-01', 0),
(53, 21, 2, '2023-09-24', '2023-10-01', 0),
(54, 21, 3, '2023-08-24', '2023-09-01', 1),
(55, 21, 4, '2023-09-24', '2023-10-01', 0),
(56, 21, 5, '2023-09-24', '2023-10-01', 0),
(57, 20, 3, '2023-09-25', '2023-10-02', 0),
(60, 21, 3, '2023-09-25', '2023-10-02', 0),
(62, 20, 13, '2023-09-25', '2023-10-02', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`filmID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rolaID` (`rolaID`);

--
-- Indexes for table `wypozyczenie`
--
ALTER TABLE `wypozyczenie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uzytkownikID` (`uzytkownikID`,`filmID`),
  ADD KEY `filmID` (`filmID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmy`
--
ALTER TABLE `filmy`
  MODIFY `filmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wypozyczenie`
--
ALTER TABLE `wypozyczenie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD CONSTRAINT `uzytkownicy_ibfk_1` FOREIGN KEY (`rolaID`) REFERENCES `role` (`id`);

--
-- Constraints for table `wypozyczenie`
--
ALTER TABLE `wypozyczenie`
  ADD CONSTRAINT `wypozyczenie_ibfk_1` FOREIGN KEY (`filmID`) REFERENCES `filmy` (`filmID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wypozyczenie_ibfk_2` FOREIGN KEY (`uzytkownikID`) REFERENCES `uzytkownicy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
