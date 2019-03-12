-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Mar 2019, 22:58
-- Wersja serwera: 10.1.36-MariaDB
-- Wersja PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `dataposts`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `emploees`
--

CREATE TABLE `emploees` (
  `teacherID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `emploees`
--

INSERT INTO `emploees` (`teacherID`, `name`, `degree`) VALUES
(1, 'Grzegorz Zalewski', 'mgr'),
(2, 'Lech Czarnowicz', 'mgr'),
(3, 'Mirosław Wojciech Osial', 'mgr inż.'),
(4, 'Iwona Mackiewicz-Kowalczuk', 'mgr'),
(5, 'Anna Tolko', 'mgr '),
(6, 'Klaudia Kmon-Ciuruk', 'mgr '),
(7, 'Renata Maliszewska', 'mgr '),
(8, 'Aneta Tymińska', 'mgr '),
(9, 'Sylwester Leon Pakuła', 'mgr '),
(10, 'Krystyna Grygiewicz', 'mgr '),
(11, 'Piotr Dziakowski', 'mgr inż.'),
(12, 'Elwira Zabłocka', 'mgr '),
(13, 'Maria Sobolewska', 'mgr inż.'),
(14, 'Jolanta Lech', 'mgr '),
(15, 'Tomasz Potapczyk', 'mgr '),
(16, 'Marek Mozyrski', 'mgr inż.'),
(17, 'Karolina Roszkowska', ''),
(18, 'Jerzy Szymaniuk', 'mgr inż.'),
(19, 'Dariusz Ciostek', ''),
(20, 'Bernard Jasielczuk', 'mgr '),
(21, 'Justyn Jaroszuk', 'ks. mgr'),
(22, 'Tomasz Łapiak', 'ks. mgr'),
(23, 'Jolanta Stanisława Siemieniako', 'mgr '),
(24, 'Izabela Garkowska', 'mgr '),
(25, 'Iwona Sarosiek', 'mgr '),
(26, 'Lucyna Bakun', ''),
(27, 'Elwira Zalewska', 'mgr '),
(28, 'Elżbieta Komła', ''),
(29, 'Andrzej Zajczyk', 'mgr '),
(30, 'Edyta Jelska', 'mgr'),
(31, 'Tomasz Miłkowski', 'mgr '),
(32, 'Andrzej Kułak', 'mgr '),
(33, 'Józef Żak', 'mgr '),
(34, 'Barbara Żamojtuk', NULL),
(35, 'Jan Zabłudowski ', 'mgr inż.'),
(36, 'Wacław Rećko ', 'mgr '),
(37, 'Jolanta Kaźmierowicz ', 'mgr '),
(38, ' Klaudia Adrianna Kmon ', 'mgr '),
(39, 'Małgorzata Anna Krawiel ', 'mgr '),
(40, 'Krystyna Kowalczuk ', 'mgr '),
(41, ' Elżbieta Zofia Mazur ', 'mgr '),
(42, 'Ewa Mozerska ', 'mgr '),
(43, 'Bartosz Wojciechowski ', 'mgr '),
(44, 'Katarzyna Szoka ', 'mgr '),
(45, 'Anna Bogdan ', 'mgr '),
(46, 'Jolanta Modzelewska ', 'mgr '),
(47, 'Grażyna Małachwiej ', 'mgr '),
(48, 'Stanisław Sawoń ', 'mgr '),
(49, 'Anna Bogdan ', 'mgr '),
(50, ' Mirosław Kałuski ', 'mgr '),
(51, ' Barbara Czechowicz ', ''),
(52, 'Piotr Jarosław Jarek ', 'mgr '),
(53, 'Iwona Skowrońska-Klimowicz ', 'mgr '),
(54, 'Marian Sobolewski ', 'mgr inż.'),
(55, 'Teresa Wojdołowicz-Michalak ', 'inż.'),
(56, 'Krystyna Jaźwińska ', ''),
(57, 'Romuald Klimuszko ', ''),
(58, 'Michał Parfieniuk ', ''),
(59, 'Stanisław Szumiński ', 'lic.'),
(60, 'Alfred Świetlicki ', ''),
(61, ' Leszek Bogdan Giemza ', 'ks. mgr'),
(62, 'Jarosław Grygiewicz', 'ks. lic.'),
(63, 'Mariusz Zabłocki ', 'ks. mgr');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `positions`
--

CREATE TABLE `positions` (
  `positionID` int(11) NOT NULL,
  `position` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `position2` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `position3` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `rok` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `teacherID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `positions`
--

INSERT INTO `positions` (`positionID`, `position`, `position2`, `position3`, `photo_path`, `rok`, `teacherID`) VALUES
(1, 'Dyrektor', 'Przedmioty Zawodowe', NULL, '../img/pracownicy/2018/gz.jpg', '2018/2019', 1),
(2, 'Wicedyrektor', 'Matematyka', 'Przedmioty zawodowe', '../img/pracownicy/2018/lc.jpg', '2018/2019', 2),
(3, 'Kierownik Pracowni Ćwiczeń Technicznych', 'Praktyczna nauka zawodu', NULL, '../img/pracownicy/2018/mwo.jpg', '2018/2019', 3),
(4, 'Język polski', 'Wiedza o Kulturze', NULL, '../img/pracownicy/2018/imk.jpg', '2018/2019', 4),
(5, 'Język polski', NULL, NULL, '../img/pracownicy/2018/at.jpg', '2018/2019', 5),
(6, 'Język angielski', NULL, NULL, '../img/pracownicy/2018/kkc.jpg', '2018/2019', 6),
(7, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2018/rm.jpg', '2018/2019', 7),
(8, 'Język angielski', NULL, NULL, '../img/pracownicy/2018/ta.jpg', '2018/2019', 8),
(9, 'Historia', 'Wiedza o Społeczeństwie', NULL, '../img/pracownicy/2018/slp.jpg', '2018/2019', 9),
(10, 'Matematyka', NULL, NULL, '../img/pracownicy/2018/kg.jpg', '2018/2019', 10),
(11, 'Fizyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2018/pd.jpg', '2018/2019', 11),
(12, 'Chemia', 'Biologia', 'Przedmioty zawodowe', '../img/pracownicy/2018/ze.jpg', '2018/2019', 12),
(13, 'Geografia', 'Podstawy przediębiorczości', NULL, '../img/pracownicy/2018/ms.jpg', '2018/2019', 13),
(14, 'Edukacja dla bezpieczeństwa', 'Wychowanie fizyczne', NULL, '../img/pracownicy/2018/jl.jpg', '2018/2019', 14),
(15, 'Wychowanie fizyczne', '', NULL, '../img/pracownicy/2018/tp.jpg', '2018/2019', 15),
(16, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2018/mm.jpg', '2018/2019', 16),
(17, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2018/kr.jpg', '2018/2019', 17),
(18, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2018/js.jpg', '2018/2019', 18),
(19, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2018/mCiostekD.jpg', '2018/2019', 19),
(20, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2018/bj.jpg', '2018/2019', 20),
(21, 'Katecheza', NULL, NULL, '../img/pracownicy/2018/Jaroszuk.jpg', '2018/2019', 21),
(22, 'Katecheza', NULL, NULL, '../img/pracownicy/2018/tl.jpg', '2018/2019', 22),
(23, 'Biblioteka', NULL, NULL, '../img/pracownicy/2018/jss.jpg', '2018/2019', 23),
(24, 'Pedagog szkolny', NULL, NULL, '../img/pracownicy/2018/ig.jpg', '2018/2019', 24),
(25, 'Sekretariat', NULL, NULL, '../img/pracownicy/2018/is.jpg', '2018/2019', 25),
(26, 'Księgowość', NULL, NULL, '../img/pracownicy/2018/lb.jpg', '2018/2019', 26),
(27, 'Księgowość', NULL, NULL, '../img/pracownicy/2018/ez.jpg', '2018/2019', 27),
(28, 'Woźna', NULL, NULL, '../img/pracownicy/2018/ek.jpg', '2018/2019', 28),
(30, 'Dyrektor', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2018/gz.jpg', '2017/2018', 1),
(31, 'Wicedyrektor', 'Matematyka', 'Przedmioty zawodowe', '../img/pracownicy/2018/lc.jpg', '2017/2018', 2),
(32, 'Kierownik Pracowni Ćwiczeń Technicznych', 'Praktyczna nauka zawodu', NULL, '../img/pracownicy/2018/mwo.jpg', '2017/2018', 3),
(33, 'Język polski', 'Wiedza o Kulturze', NULL, '../img/pracownicy/2018/imk.jpg', '2017/2018', 4),
(34, 'Język polski', NULL, NULL, '../img/pracownicy/2018/at.jpg', '2017/2018', 5),
(35, 'Język angielski', NULL, NULL, '../img/pracownicy/2018/kkc.jpg', '2017/2018', 6),
(36, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2018/rm.jpg', '2017/2018', 7),
(37, 'Język angielski', NULL, NULL, '../img/pracownicy/2018/at.jpg', '2017/2018', 8),
(38, 'Historia', 'Wiedza o Społeczeństwie', NULL, '../img/pracownicy/2018/slp.jpg', '2017/2018', 9),
(39, 'Matematyka', NULL, NULL, '../img/pracownicy/2018/kg.jpg', '2017/2018', 10),
(40, 'Fizyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2018/pd.jpg', '2017/2018', 11),
(41, 'Chemia', 'Biologia', 'Przedmioty zawodowe', '../img/pracownicy/2018/ze.jpg', '2017/2018', 12),
(42, 'Geografia', 'Podstawy przedsiębiorczości', NULL, '../img/pracownicy/2018/ms.jpg', '2017/2018', 13),
(43, 'Edukacja dla bezpieczeństwa', 'Praktyczna nauka zawodu', NULL, '../img/pracownicy/2018/az.jpg', '2017/2018', 29),
(44, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2018/jl.jpg', '2017/2018', 14),
(45, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2018/tp.jpg', '2017/2018', 15),
(46, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2018/ej.jpg', '2017/2018', 30),
(47, 'Przedmioty zawodowe', NULL, NULL, 'brak', '2017/2018', 31),
(48, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2018/js.jpg', '2017/2018', 18),
(49, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2018/ak.jpg', '2017/2018', 32),
(50, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2018/jz.jpg', '2017/2018', 33),
(51, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2018/bj.jpg', '2017/2018', 20),
(52, 'Katecheza', NULL, NULL, '../img/pracownicy/2018/Jaroszuk.jpg', '2017/2018', 21),
(53, 'Katecheza', NULL, NULL, '../img/pracownicy/2018/tl.jpg', '2017/2018', 22),
(54, 'Biblioteka', NULL, NULL, '../img/pracownicy/2018/jss.jpg', '2017/2018', 23),
(55, 'Pedagog szkolny', NULL, NULL, '../img/pracownicy/2018/ig.jpg', '2017/2018', 24),
(56, 'Sekretariat', NULL, NULL, '../img/pracownicy/2018/is.jpg', '2017/2018', 25),
(57, 'Sekretariat', NULL, NULL, '../img/pracownicy/2018/ez.jpg', '2017/2018', 27),
(58, 'Księgowość', NULL, NULL, '../img/pracownicy/2018/lb.jpg', '2017/2018', 26),
(59, 'Księgowość', NULL, NULL, '../img/pracownicy/2018/bz.jpg', '2017/2018', 34),
(60, 'Woźna', NULL, NULL, '../img/pracownicy/2018/ek.jpg', '2017/2018', 28),
(61, 'Dyrektor', 'Przedmioty zawodowe', NULL, NULL, '2005/2006', 35),
(62, 'Wicedyrektor', 'Przedmioty zawodowe', NULL, NULL, '2005/2006', 36),
(63, 'Kierownik Pracowni Ćwiczeń Technicznych', 'Przedmioty zawodowe', NULL, NULL, '2005/2006', 3),
(64, 'Język polski', NULL, NULL, NULL, '2005/2006', 37),
(65, 'Język polski', NULL, NULL, NULL, '2005/2006', 4),
(66, 'Język polski', 'Biblioteka', NULL, NULL, '2005/2006', 23),
(67, 'Język polski', '', NULL, NULL, '2005/2006', 5);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `emploees`
--
ALTER TABLE `emploees`
  ADD PRIMARY KEY (`teacherID`);

--
-- Indeksy dla tabeli `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`positionID`),
  ADD KEY `teacherID` (`teacherID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `emploees`
--
ALTER TABLE `emploees`
  MODIFY `teacherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT dla tabeli `positions`
--
ALTER TABLE `positions`
  MODIFY `positionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_ibfk_1` FOREIGN KEY (`teacherID`) REFERENCES `emploees` (`teacherID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
