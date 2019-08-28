-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Kwi 2019, 16:38
-- Wersja serwera: 10.1.35-MariaDB
-- Wersja PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `datapost`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasy`
--

CREATE TABLE `klasy` (
  `id` int(11) NOT NULL,
  `kierunek` varchar(255) COLLATE ucs2_polish_ci DEFAULT NULL,
  `nazwa` varchar(255) COLLATE ucs2_polish_ci NOT NULL,
  `wychowawca` varchar(255) COLLATE ucs2_polish_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE ucs2_polish_ci DEFAULT NULL,
  `opis` varchar(255) COLLATE ucs2_polish_ci DEFAULT NULL,
  `rok` varchar(255) COLLATE ucs2_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_polish_ci;

--
-- Zrzut danych tabeli `klasy`
--

INSERT INTO `klasy` (`id`, `kierunek`, `nazwa`, `wychowawca`, `photo_path`, `opis`, `rok`) VALUES
(1, 'Technik Technologii Drewna', 'I Td', 'Jolanta Siemieniako', '../img/static/klasy/2006/ITd.jpg', NULL, '2005/2006'),
(2, 'Technik Technologii Drewna', 'II Td', 'Marian Sobolewski', '../img/static/klasy/2006/IITd.jpg', NULL, '2005/2006'),
(3, 'Technik Technologii Drewna', 'III Td', 'Grzegorz Zalewski', '../img/static/klasy/2006/IIITd.jpg', NULL, '2005/2006'),
(4, 'Technik Technologii Drewna', 'IV Td', 'Wacław Rećko', '../img/static/klasy/2006/IVTd.jpg', NULL, '2005/2006'),
(5, 'Technik Ekonomista', 'I Te', 'Bartosz Wojciechowski', '../img/static/klasy/2006/ITe.jpg', NULL, '2005/2006'),
(6, 'Technik Ekonomista', 'II Te', 'Jolanta Modzelewska', '../img/static/klasy/2006/IITe.jpg', NULL, '2005/2006'),
(7, 'Technik Ekonomista', 'III Te', 'Barbara Czechowicz', '../img/static/klasy/2006/IIITe.jpg', NULL, '2005/2006'),
(8, 'Technik Technologii odzieży', 'IV To', 'Krystyna Grygiewicz', '../img/static/klasy/2006/IVTo.jpg', NULL, '2005/2006'),
(9, 'Technik Mechanik', 'I Tm', 'Jerzy Szymaniuk', '../img/static/klasy/2006/ITm.jpg', NULL, '2005/2006'),
(10, 'Technik Mechanik', 'II Tma', 'Jolanta Kaźmierowicz', '../img/static/klasy/2006/IITma.jpg', NULL, '2005/2006'),
(11, 'Technik Mechanik', 'II Tmb', 'Renata Maliszewska', '../img/static/klasy/2006/IITmb.jpg', NULL, '2005/2006'),
(12, 'Technik Mechanik', 'III Tm', 'Sylwester Pakuła\r\n', '../img/static/klasy/2006/IIITm.jpg', NULL, '2005/2006'),
(13, 'Technik Mechanik', 'IV Tma', 'Marek Mozyrski', '../img/static/klasy/2006/IVTma.jpg', NULL, '2005/2006'),
(14, 'Technik Mechanik', 'IV Tmb', 'Iwona Mackiewicz-Kowalczuk', '../img/static/klasy/2006/IVTmb.jpg', NULL, '2005/2006'),
(15, 'Mechanik', 'III m', 'Teresa Wojdołowicz-Michalak\r\n', '', NULL, '2005/2006'),
(16, 'Zarządzanie Informacją ', 'I Lpia', 'Anna Tolko', '../img/static/klasy/2006/ILpia.jpg', NULL, '2005/2006'),
(17, 'Zarządzanie Informacją ', 'I Lpib', 'Piotr Dziakowski', '../img/static/klasy/2006/ILpib.jpg', NULL, '2005/2006'),
(18, 'Zarządzanie Informacją ', 'II Lpia', 'Jolanta Lech', '../img/static/klasy/2006/IILpia.jpg', NULL, '2005/2006'),
(19, 'Zarządzanie Informacją ', 'II Lpib', 'Lech Czarnowicz', '../img/static/klasy/2006/IILpib.jpg', NULL, '2005/2006'),
(20, 'Zarządzanie Informacją ', 'III Lpia', 'Ewa Mozerska', '../img/static/klasy/2006/IIILpia.jpg', NULL, '2005/2006'),
(21, 'Zarządzanie Informacją ', 'III Lpib', 'Grażyna Małachwiej', '../img/static/klasy/2006/IIILpib.jpg', NULL, '2005/2006'),
(22, 'Leśnictwo', 'III Lpl', 'Maria Sobolewska', '../img/static/klasy/2006/IIILpl.jpg', NULL, '2005/2006'),
(23, 'Technik Mechanik', 'I Tm', 'Marek Mozyrski', '../img/static/klasy/2007/ITm.jpg', NULL, '2006/2007'),
(24, 'Technik Mechanik', 'II Tm', 'Jerzy Szymaniuk', '../img/static/klasy/2007/IITm.jpg', NULL, '2006/2007'),
(25, 'Technik Mechanik', 'III Tma', 'Jolanta Kaźmierowicz', '../img/static/klasy/2007/IIITma.jpg', NULL, '2006/2007'),
(26, 'Technik Mechanik', 'III Tmb', 'Renata Maliszewska', '../img/static/klasy/2007/IIITmb.jpg', NULL, '2006/2007'),
(27, 'Technik Mechanik', 'IV Tm', 'Sylwester Pakuła', '../img/static/klasy/2007/IVTm.jpg', NULL, '2006/2007'),
(28, 'Wielozawodowy', 'I wz', 'Maria Sobolewska', '../img/static/klasy/2007/Iwz.jpg', NULL, '2006/2007'),
(29, 'Technik Technologii Drewna', 'I Td', 'Ewa Mozerska', '../img/static/klasy/2007/ITd.jpg', NULL, '2006/2007'),
(30, 'Technik Technologii Drewna', 'II Td', 'Jolanta Siemieniako', '../img/static/klasy/2007/IITd.jpg', NULL, '2006/2007'),
(31, 'Technik Technologii Drewna', 'III Td', 'Marian Sobolewski', '../img/static/klasy/2007/IIITd.jpg', NULL, '2006/2007'),
(32, 'Technik Technologii Drewna', 'IV Td', 'Grzegorz Zalewski', '../img/static/klasy/2007/IVTd.jpg', NULL, '2006/2007'),
(33, 'Technik Ekonomista', 'I Te', 'Iwona Skowrońska-Klimowicz', '../img/static/klasy/2007/ITe.jpg', NULL, '2006/2007'),
(34, 'Technik Ekonomista', 'II Te', 'Iwona Mackiewicz-Kowalczuk', '../img/static/klasy/2007/IITe.jpg', NULL, '2006/2007'),
(35, 'Technik Ekonomista', 'III Te', 'Krystyna Grygiewicz', '../img/static/klasy/2007/IIITe.jpg', NULL, '2006/2007'),
(36, 'Technik Ekonomista', 'IV Te', 'Barbara Czechowicz', '../img/static/klasy/2007/IVTe.jpg', NULL, '2006/2007'),
(37, 'Zarządzanie Informacją', 'I Lpi', 'Grażyna Małachwiej', '../img/static/klasy/2007/ILpi.jpg', NULL, '2006/2007'),
(38, 'Zarządzanie Informacją', 'II Lpia\r\n', 'Anna Tolko\r\n', '../img/static/klasy/2007/IILpia.jpg', NULL, '2006/2007'),
(39, 'Zarządzanie Informacją', 'II Lpib', ' Piotr Dziakowski', '../img/static/klasy/2007/IILpib.jpg', NULL, '2006/2007'),
(40, 'Zarządzanie Informacją', 'III Lpia', 'Jolanta Lech', '../img/static/klasy/2007/IIILpia.jpg', NULL, '2006/2007'),
(41, 'Zarządzanie Informacją', 'III Lpib', 'Lech Czarnowicz', '../img/static/klasy/2007/IIILpib.jpg', NULL, '2006/2007'),
(42, 'Technik Mechanik', 'I Tm', 'Sylwester Pakuła', '../img/static/klasy/2008/ITm.jpg', NULL, '2007/2008'),
(43, 'Technik Mechanik', 'II Tm', 'Marek Mozyrski', '../img/static/klasy/2008/IITm.jpg', NULL, '2007/2008'),
(44, 'Technik Mechanik', 'III Tm', 'Jerzy Szymaniuk', '../img/static/klasy/2008/IIITm.jpg', NULL, '2007/2008'),
(45, 'Technik Mechanik', 'IV Tma', 'Jolanta Kaźmierowicz', '../img/static/klasy/2008/IVTma.jpg', NULL, '2007/2008'),
(46, 'Technik Mechanik', 'IV Tmb', 'Renata Maliszewska', '../img/static/klasy/2008/IVTmb.jpg', NULL, '2007/2008'),
(47, 'Wielozawodowa', 'I wz', 'Lech Czarnowicz', '../img/static/klasy/2008/Iwz.jpg', NULL, '2007/2008'),
(48, 'Wielozawodowa', 'II wz', 'Maria Sobolewska', '../img/static/klasy/2008/IIwz.jpg', NULL, '2007/2008'),
(49, 'Technik Technologii Drewna', 'I Td', 'Krystyna Grzesik', '../img/static/klasy/2008/ITd.jpg', NULL, '2007/2008'),
(50, 'Technik Technologii Drewna', 'II Td', 'Grzegorz Zalewski', '../img/static/klasy/2008/IITd.jpg', NULL, '2007/2008'),
(51, 'Technik Technologii Drewna', 'III Td', 'Jolanta Siemieniako', '../img/static/klasy/2008/IIItd.jpg', NULL, '2007/2008'),
(52, 'Technik Technologii Drewna', 'IV Td', 'Marian Sobolewski', '../img/static/klasy/2008/IVtd.jpg', NULL, '2007/2008'),
(53, 'Technik Ekonomista', 'I Te', 'Barbara Czechowicz', '../img/static/klasy/2008/ITe2.jpg', NULL, '2007/2008'),
(54, 'Technik Ekonomista', 'II Te', 'Iwona Skowrońska-Klimowicz', '../img/static/klasy/2008/IITe.jpg', NULL, '2007/2008'),
(55, 'Technik Ekonomista', 'III Te', 'Iwona Mackiewicz-Kowalczuk', '../img/static/klasy/2008/IIITe.jpg', NULL, '2007/2008'),
(56, 'Technik Ekonomista', 'IV Te', 'Krystyna Grygiewicz', '../img/static/klasy/2008/IVTe.jpg', NULL, '2007/2008'),
(57, 'Zarządzanie Informacją', 'I Lpi', 'Małgorzata Krawiel', '../img/static/klasy/2008/ILpi.jpg', NULL, '2007/2008'),
(58, 'Zarządzanie Informacją', 'II Lpi', 'Grażyna Małachwiej', '../img/static/klasy/2008/IILpi.jpg', NULL, '2007/2008'),
(59, 'Zarządzanie Informacją', 'III Lpia', 'Anna Tolko', '../img/static/klasy/2008/IIILpia.jpg', NULL, '2007/2008'),
(60, 'Zarządzanie Informacją', 'III Lpib', 'Piotr Dziakowski', '../img/static/klasy/2008/IIILpib.jpg', NULL, '2007/2008'),
(61, 'Technik Mechanik', 'I Tm', 'Anna Tolko', '../img/static/klasy/2009/ITm.jpg', NULL, '2008/2009'),
(62, 'Technik Mechanik', 'II Tm', 'Sylwester Pakuła', '../img/static/klasy/2009/IITm.jpg', NULL, '2008/2009'),
(63, 'Technik Mechanik', 'III Tm', 'Marek Mozyrski', '../img/static/klasy/2009/IIITm.jpg', NULL, '2008/2009'),
(64, 'Technik Mechanik', 'IV Tm', 'Jerzy Szymaniuk', '../img/static/klasy/2009/IVTm.jpg', NULL, '2008/2009'),
(65, 'Technik Mechanik', 'I wz', 'Piotr Dziakowski', '../img/static/klasy/2009/Iwz.jpg', NULL, '2008/2009'),
(66, 'Wielozawodowa', 'II wz', 'Lech Czarnowicz', '../img/static/klasy/2009/IIwz.jpg', NULL, '2008/2009'),
(67, 'Wielozawodowa', 'III wz', 'Maria Sobolewska', '../img/static/klasy/2009/IIIwz.jpg', NULL, '2008/2009'),
(68, 'Technik Technologii Drewna', 'I Td', 'Krystyna Grygiewicz', '../img/static/klasy/2009/ITd.jpg', NULL, '2008/2009'),
(69, 'Technik Technologii Drewna', 'II Td', 'Krystyna Grzesik', '../img/static/klasy/2009/IITd.jpg', NULL, '2008/2009'),
(70, 'Technik Technologii Drewna', 'IIII Td', 'Grzegorz Zalewski', '../img/static/klasy/2009/IIITd.jpg', NULL, '2008/2009'),
(71, 'Technik Technologii Drewna', 'IV Td', 'Jolanta Siemieniako', '../img/static/klasy/2009/IVTd.jpg', NULL, '2008/2009'),
(72, 'Technik Ekonomista', 'II Te', 'Barbara Czechowicz', '../img/static/klasy/2009/IITe.jpg', NULL, '2008/2009'),
(73, 'Technik Ekonomista', 'III Te', 'Iwona Skowrońska-Klimowicz', '../img/static/klasy/2009/IIITe.jpg', NULL, '2008/2009'),
(74, 'Technik Ekonomista', 'IV Te', 'Iwona Mackiewicz-Kowalczuk', '../img/static/klasy/2009/IVTe.jpg', NULL, '2008/2009'),
(75, 'Zarządzanie Informacją', 'I Lpi', 'Renata Maliszewska', '../img/static/klasy/2009/ILpi.jpg', NULL, '2008/2009'),
(76, 'Zarządzanie Informacją', 'II Lpi', 'Małgorzata Krawiel / Jolanta Lech', '../img/static/klasy/2009/IILpi.jpg', NULL, '2008/2009'),
(77, 'Zarządzanie Informacją', 'III Lpi', 'Grażyna Małachwiej', '../img/static/klasy/2009/IILpi.jpg', NULL, '2008/2009'),
(78, 'Technik Mechanik', 'I Tma', 'Jerzy Szymaniuk', '../img/static/klasy/2010/ITma.jpg', NULL, '2009/2010'),
(79, 'Technik Mechanik', 'I Tmb', 'Tomasz Potapczyk', '../img/static/klasy/2010/ITmb.jpg', NULL, '2009/2010'),
(80, 'Technik Mechanik', 'II Tm', 'Anna Tolko', '../img/static/klasy/2010/IITm.jpg', NULL, '2009/2010'),
(81, 'Technik Mechanik', 'III Tm', 'Sylwester Pakuła', '../img/static/klasy/2010/IIITm.jpg', NULL, '2009/2010'),
(82, 'Technik Mechanik', 'IV Tm', 'Marek Mozyrski', '../img/static/klasy/2010/IVTm.jpg', NULL, '2009/2010'),
(83, 'Wielozawodowa', 'Iwz', 'Jolanta Siemieniako', '../img/static/klasy/2010/Iwz.jpg', NULL, '2009/2010'),
(84, 'Wielozawodowa', 'IIwz', 'Piotr Dziakowski', '../img/static/klasy/2010/IIwz.jpg', NULL, '2009/2010'),
(85, 'Wielozawodowa', 'IIIwz', 'Lech Czarnowicz', '../img/static/klasy/2010/IIIwz.jpg', NULL, '2009/2010'),
(86, 'Technik Technologii Drewna', 'II Td', 'Krystyna Grygiewicz', '../img/static/klasy/2010/IITd.jpg', NULL, '2009/2010'),
(87, 'Technik Technologii Drewna', 'III Td', 'Krystyna Grzesik', '../img/static/klasy/2010/IIITd.jpg', NULL, '2009/2010'),
(88, 'Technik Technologii Drewna', 'IV Td', 'Grzegorz Zalewski', '../img/static/klasy/2010/IVTd.jpg', NULL, '2009/2010'),
(89, 'Technik Ekonomista', 'III Te', 'Barbara Czechowicz', '../img/static/klasy/2010/IIITe.jpg', NULL, '2009/2010'),
(90, 'Technik Ekonomista', 'IV Te', 'Iwona Skowrońska', '../img/static/klasy/2010/IVTe.jpg', NULL, '2009/2010'),
(91, 'Zarządzanie Informacją', 'I Lpi', 'Aneta Tymińska', '../img/static/klasy/2010/ILpi.jpg', NULL, '2009/2010'),
(92, 'Zarządzanie Informacją', 'II Lpi', 'Renata Maliszewska', '../img/static/klasy/2010/IILpi.jpg', NULL, '2009/2010'),
(93, 'Zarządzanie Informacją', 'III Lpi', 'Małgorzata Krawiel', '../img/static/klasy/2010/IIILpi.jpg', NULL, '2009/2010'),
(94, 'Technik Mechanik', 'I Tm', 'Maria Sobolewska', '../img/static/klasy/2011/ITm.jpg', NULL, '2010/2011'),
(95, 'Technik Mechanik', 'II Tma', 'Jerzy Szymaniuk', '../img/static/klasy/2011/IITma.jpg', NULL, '2010/2011'),
(96, 'Technik Mechanik', 'II Tmb', 'Tomasz Potapczyk', '../img/static/klasy/2011/IITmb.jpg', NULL, '2010/2011'),
(97, 'Technik Mechanik', 'III Tm', 'Anna Tolko', '../img/static/klasy/2011/IIITm.jpg', NULL, '2010/2011'),
(98, 'Technik Mechanik', 'IV Tm', 'Sylwester Pakuła', '../img/static/klasy/2011/IVTm.jpg', NULL, '2010/2011'),
(99, 'Wielozawodowa', 'I wz', 'Lech Czarnowicz', '../img/static/klasy/2011/Iwz.jpg', NULL, '2010/2011'),
(100, 'Wielozawodowa', 'II wz', 'Jolanta Siemieniako', '../img/static/klasy/2011/IIwz.jpg', NULL, '2010/2011'),
(101, 'Wielozawodowa', 'III wz', 'Piotr Dziakowski', '../img/static/klasy/2011/IIIwz.jpg', NULL, '2010/2011'),
(102, 'Technik Technologii Drewna', 'III Td', 'Krystyna Grygiewicz', '../img/static/klasy/2011/IIITd.jpg', NULL, '2010/2011'),
(103, 'Technik Technologii Drewna', 'IV Td', 'Iwona Mackiewicz-Kowalczuk', '../img/static/klasy/2011/IVTd.jpg', NULL, '2010/2011'),
(104, 'Technik Ekonomista', 'IV Te', 'Barbara Czechowicz', '../img/static/klasy/2011/IVTe.jpg', NULL, '2010/2011'),
(105, 'Zarządzanie Informacją', 'I Lpi', 'Jolanta Lech', '../img/static/klasy/2011/ILpi.jpg', NULL, '2010/2011'),
(106, 'Zarządzanie Informacją', 'II Lpi', 'Aneta Tymińska', '../img/static/klasy/2011/IILpi.jpg', NULL, '2010/2011'),
(107, 'Zarządzanie Informacją', 'III Lpi', 'Renata Maliszewska', '../img/static/klasy/2011/IIILpi.jpg', NULL, '2010/2011'),
(108, 'Technik Mechanik', 'I Tm', 'Renata Maliszewska', '../img/static/klasy/2012/ITm.jpg', NULL, '2011/2012'),
(109, 'Technik Mechanik', 'II Tm', 'Sylwester Pakuła', '../img/static/klasy/2012/IITm.jpg', NULL, '2011/2012'),
(110, 'Technik Mechanik', 'III Tma', 'Jerzy Szymaniuk', '../img/static/klasy/2012/IIITma.jpg', NULL, '2011/2012'),
(111, 'Technik Mechanik', 'III Tmb', 'Tomasz Potapczyk', '../img/static/klasy/2012/IIITmb.jpg', NULL, '2011/2012'),
(112, 'Technik Mechanik', 'IV Tm', 'Anna Tolko', '../img/static/klasy/2012/IVTm.jpg', NULL, '2011/2012'),
(113, 'Mechaniczny i Wielozawodowy', 'I m', 'Wacław Rećko', '../img/static/klasy/2012/Im.jpg', NULL, '2011/2012'),
(114, 'Mechaniczny i Wielozawodowy', 'II wz', 'Małgorzata Krawiel', '../img/static/klasy/2012/IIwz.jpg', NULL, '2011/2012'),
(115, 'Technik Technologii Drewna', 'IV Td', 'Krystyna Grygiewicz', '../img/static/klasy/2012/IIITd.jpg', NULL, '2011/2012'),
(116, 'Zarządzanie Informacją', 'II Lpi', 'Jolanta Lech', '../img/static/klasy/2012/IILpi.jpg', NULL, '2011/2012'),
(117, 'Zarządzanie Informacją', 'III Lpi', 'Aneta Tymińska', '../img/static/klasy/2012/IIILpi.jpg', NULL, '2011/2012'),
(118, 'Technik Mechanik', 'I Tm', 'Piotr Dziakowski', '../img/static/klasy/2013/1TM.jpg', 'tak', '2012/2013'),
(119, 'Technik Mechanik', 'II Tm', 'Renata Maliszewska', '../img/static/klasy/2013/2TM.jpg', NULL, '2012/2013'),
(120, 'Technik Mechanik', 'III Tm', 'Sylwester Pakuła', '../img/static/klasy/2013/3TM.jpg', 'tak', '2012/2013'),
(121, 'Technik Mechanik', 'IV Tma', 'Jerzy Szymaniuk', '../img/static/klasy/2013/4TMa.jpg', 'tak', '2012/2013'),
(122, 'Technik Mechanik', 'IV Tmb', 'Tomasz Potapczyk', '../img/static/klasy/2013/4TMb.jpg', 'tak', '2012/2013'),
(123, 'Mechaniczny i Wielozawodowy', 'II m', 'Grzegorz Zubiel', '../img/static/klasy/2013/Im.jpg', NULL, '2012/2013'),
(124, 'Mechaniczny i Wielozawodowy', 'I wz', 'Iwona Mackiewicz-Kowalczuk', '../img/static/klasy/2013/1WZ.jpg', 'tak', '2012/2013'),
(125, 'Mechaniczny i Wielozawodowy', 'III wz', 'Małgorzata Krawiel', '../img/static/klasy/2013/IIwz.jpg', NULL, '2012/2013'),
(126, 'Technik Usług Fryzjerskich i Technik Informatyk', 'I Tfi', 'Marek Mozyrski', '../img/static/klasy/2013/1TFI.jpg', 'tak', '2012/2013'),
(127, 'Zarządzanie Informacją', 'III Lpi', 'Jolanta Lech', '../img/static/klasy/2013/3LPi.jpg', 'tak', '2012/2013'),
(128, 'Technik Mechanik', 'I Tm', 'Anna Tolko', '../img/static/klasy/2014/ITm.jpg', 'tak', '2013/2014'),
(129, 'Technik Mechanik', 'II Tm', 'Piotr Dziakowski\r\n', 'NIE MA', NULL, '2013/2014'),
(130, 'Technik Mechanik', 'III Tm', 'Renata Maliszewska', '../img/static/klasy/2014/IIITm.jpg', 'tak', '2013/2014'),
(131, 'Technik Mechanik', 'IV Tm', 'Sylwester Pakuła', '../img/static/klasy/2014/IVTm.jpg', 'tak', '2013/2014'),
(132, 'Mechaniczny i Wielozawodowy', 'III m', 'Grzegorz Zubiel', '../img/static/klasy/2014/Im.jpg', NULL, '2013/2014'),
(133, 'Mechaniczny i Wielozawodowy', 'I wz', 'Klaudia Kmon - Ciuruk\r\n', '../img/static/klasy/2014/Iwz.jpg', 'tak', '2013/2014'),
(134, 'Mechaniczny i Wielozawodowy', 'II wz', 'Iwona Mackiewicz-Kowalczuk', '../img/static/klasy/2014/IIwz.jpg', NULL, '2013/2014'),
(135, 'Technik Usług Fryzjerskich i Technik Informatyk', 'I Tfi', 'Małgorzata Krawiel', '../img/static/klasy/2014/ITfi.jpg', 'tak', '2013/2014'),
(136, 'Technik Usług Fryzjerskich i Technik Informatyk', 'II Tfi', 'Marek Mozyrski', '../img/static/klasy/2014/IITfi.jpg', 'tak', '2013/2014'),
(137, 'Technik Mechanik', 'I Tm', 'Jerzy Szymaniuk', 'NIE MA', NULL, '2014/2015'),
(138, 'Technik Mechanik', 'II Tm', 'Anna Tolko', '../img/static/klasy/2015/ITm.jpg', 'tak', '2014/2015'),
(139, 'Technik Mechanik', 'III Tm', 'Piotr Dziakowski\r\n', '../img/static/klasy/2015/IIITm.jpg', NULL, '2014/2015'),
(140, 'Technik Mechanik', 'IV Tm', ' Renata Maliszewska', '../img/static/klasy/2015/IVTm.jpg', NULL, '2014/2015'),
(141, 'Mechaniczny i Wielozawodowy', 'I wz', 'Krystyna Grygiewicz', '../img/static/klasy/2015/Iwz.jpg', NULL, '2014/2015'),
(142, 'Mechaniczny i Wielozawodowy', 'II wz', 'Klaudia Kmon - Ciuruk\r\n', '../img/static/klasy/2015/IIwz.jpg', NULL, '2014/2015'),
(143, 'Mechaniczny i Wielozawodowy', 'III wz', 'Iwona Mackiewicz-Kowalczuk', 'NIE MA', NULL, '2014/2015'),
(144, 'Technik Usług Fryzjerskich i Technik Informatyk', 'I Tfi', 'Sylwester Pakuła', 'NIE MA', NULL, '2014/2015'),
(145, 'Technik Usług Fryzjerskich i Technik Informatyk', 'II Tfi', 'Aneta Tymińska', '../img/static/klasy/2015/IITfi.jpg', NULL, '2014/2015'),
(146, 'Technik Usług Fryzjerskich i Technik Informatyk', 'III Tfi', 'Marek Mozyrski', '../img/static/klasy/2015/IIITi.jpg', NULL, '2014/2015'),
(147, 'Wielozawodowa', 'I wz', 'Iwona Mackiewicz-Kowalczuk', '../img/static/klasy/2016/I_wz.jpg', NULL, '2015/2016'),
(148, 'Wielozawodowa', 'II wz', 'Krystyna Grygiewicz', '../img/static/klasy/2016/II_wz.jpg', NULL, '2015/2016'),
(149, 'Wielozawodowa', 'III wz', 'Klaudia Kmon-Ciuruk / Izabela Garkowska', '../img/static/klasy/2016/III_wz.jpg', NULL, '2015/2016'),
(150, 'Technik Mechanik', 'I Tm', 'Renata Maliszewska', '../img/static/klasy/2016/I_Tm.jpg', NULL, '2015/2016'),
(151, 'Technik Mechanik', 'II Tm', 'Jerzy Szymaniuk', '../img/static/klasy/2016/II_Tm.jpg', NULL, '2015/2016'),
(152, 'Technik Mechanik', 'III Tm', 'Anna Tolko', '../img/static/klasy/2016/III_Tm.jpg', NULL, '2015/2016'),
(153, 'Technik Mechanik', 'IV Tm', 'Piotr Dziakowski', '../img/static/klasy/2016/IV_Tm.jpg', NULL, '2015/2016'),
(154, 'Technik Usług Fryzjerskich i Technik Informatyk', 'I Tfi', 'Edyta Jelska', '../img/static/klasy/2016/I_Tfi.jpg', NULL, '2015/2016'),
(155, 'Technik Usług Fryzjerskich i Technik Informatyk', 'II Tfi', 'Sylwester Pakuła', '../img/static/klasy/2016/II_Tfi.jpg', NULL, '2015/2016'),
(156, 'Technik Usług Fryzjerskich i Technik InformatykTechnik Usług Fryzjerskich i Technik Informatyk', 'III Tfi', 'Aneta Tymińska', '../img/static/klasy/2016/III_Tfi.jpg', NULL, '2015/2016'),
(157, 'Technik Usług Fryzjerskich i Technik Informatyk', 'IV Tfi', 'Elwira Zabłocka', '../img/static/klasy/2016/IV_Tfi.jpg', NULL, '2015/2016'),
(158, 'Wielozawodowa', 'I wz', 'Jolanta Lech', '../img/static/klasy/2017/1_WZ.jpg', 'tak', '2016/2017'),
(159, 'Wielozawodowa', 'II wz', 'Iwona Mackiewicz-Kowalczuk', '../img/static/klasy/2017/2_WZ.jpg', 'tak', '2016/2017'),
(160, 'Wielozawodowa', 'III wz', 'Krystyna Grygiewicz', '../img/static/klasy/2017/3_WZ.jpg', 'tak', '2016/2017'),
(161, 'Technik Mechanik', 'I Tm', 'Piotr Dziakowski', '../img/static/klasy/2017/1_TM.jpg', 'tak', '2016/2017'),
(162, 'Technik Mechanik', 'II Tm', 'Renata Maliszewska', '../img/static/klasy/2017/2_TM.jpg', 'tak', '2016/2017'),
(163, 'Technik Mechanik', 'III Tm', 'Jerzy Szymaniuk', '../img/static/klasy/2017/3_TM.jpg', 'tak', '2016/2017'),
(164, 'Technik Mechanik', 'IV Tm', 'Anna Tolko', '../img/static/klasy/2017/4_TM.jpg', 'tak', '2016/2017'),
(165, 'Technik Usług Fryzjerskich i Technik Informatyk', 'I Tfi', 'Marek Mozyrski', '../img/static/klasy/2017/1_TFI.jpg', 'tak', '2016/2017'),
(166, 'Technik Usług Fryzjerskich i Technik Informatyk', 'II Tfi', 'Edyta Jelska', '../img/static/klasy/2017/2_TFI.jpg', 'tak', '2016/2017'),
(167, 'Technik Usług Fryzjerskich i Technik Informatyk', 'III Tfi', 'Sylwester Pakuła', '../img/static/klasy/2017/3_TFI.jpg', 'tak', '2016/2017'),
(168, 'Technik Usług Fryzjerskich i Technik Informatyk', 'IV Tfi', 'Aneta Tymińska', '../img/static/klasy/2017/4_TFI.jpg', 'tak', '2016/2017'),
(169, 'BARDZO', 'GRUPOWA', 'FOTKA', '../img/static/klasy/2017/ZSZ_all.jpg', 'tak', '2016/2017'),
(170, 'Klasa Wielozawodowa', 'I wz', 'Aneta Tymińska', '../img/static/klasy/2018/1_WZ.jpg', NULL, '2017/2018'),
(171, 'Klasa Wielozawodowa', 'II wz', 'Jolanta Lech', '../img/static/klasy/2018/2_WZ.jpg', NULL, '2017/2018'),
(172, 'Klasa Wielozawodowa', 'III wz', 'Iwona Mackiewicz-Kowalczuk', '../img/static/klasy/2018/3_WZ.jpg', NULL, '2017/2018'),
(173, 'Technik Mechanik', 'I Tm', 'Anna Tolko', '../img/static/klasy/2018/1_TM.jpg', NULL, '2017/2018'),
(174, 'Technik Mechanik', 'II Tm', 'Piotr Dziakowski', '../img/static/klasy/2018/2_TM.jpg', NULL, '2017/2018'),
(175, 'Technik Mechanik', 'III Tm', 'Renata Maliszewska', '../img/static/klasy/2018/3_TM.jpg', NULL, '2017/2018'),
(176, 'Technik Mechanik', 'IV Tm', 'Jerzy Szymaniuk', '../img/static/klasy/2018/4_TM.jpg', NULL, '2017/2018'),
(177, 'Technik Usług Fryzjerskich i Technik Informatyk', 'I Tfi', 'Klaudia Kmon-Ciuruk', '../img/static/klasy/2018/1_Tfi.jpg', NULL, '2017/2018'),
(178, 'Technik Usług Fryzjerskich i Technik Informatyk', 'II Tfi', 'Jolanta Siemieniako', '../img/static/klasy/2018/2_Tfi.jpg', NULL, '2017/2018'),
(179, 'Technik Usług Fryzjerskich i Technik Informatyk', 'III Tfi', 'Edyta Jelska', '../img/static/klasy/2018/3_Tfi.jpg', NULL, '2017/2018'),
(180, 'Technik Usług Fryzjerskich i Technik Informatyk', 'IV Tfi', 'Sylwester Pakuła', '../img/static/klasy/2018/4_Tfi.jpg', NULL, '2017/2018'),
(181, 'Wielozawodowa', 'I wz', 'Krystyna Grygiewicz', '../img/static/klasy/2019/1_WZ.jpg', 'tak', '2018/2019'),
(182, 'Wielozawodowa', 'II wz', 'Aneta Tymińska', '../img/static/klasy/2019/2_WZ.jpg', 'tak', '2018/2019'),
(183, 'Wielozawodowa', 'III wz', 'Jolanta Lech', 'NIE MA', 'tak', '2018/2019'),
(184, 'Technik Usług Fryzjerskich, Technik Informatyk i Technik Mechanik', 'I T', 'Iwona Mackiewicz-Kowalczuk', '../img/static/klasy/2019/1_T.jpg', 'tak', '2018/2019'),
(185, 'Technik Usług Fryzjerskich i Technik Informatyk', 'II Tfi', 'Klaudia Kmon-Ciuruk', '../img/static/klasy/2019/2_Tfi.jpg', 'tak', '2018/2019'),
(186, 'Technik Usług Fryzjerskich i Technik Informatyk', 'III Tfi', 'Marek Mozyrski', '../img/static/klasy/2019/3_Tfi.jpg', 'tak', '2018/2019'),
(187, 'Technik Usług Fryzjerskich i Technik Informatyk', 'IV Tfi', 'Elwira Zabłocka', '../img/static/klasy/2019/4_Tfi.jpg', 'tak', '2018/2019'),
(188, 'Technik Mechanik', 'II Tm', 'Anna Tolko', '../img/static/klasy/2019/2_Tm.jpg', 'tak', '2018/2019'),
(189, 'Technik Mechanik', 'III Tm', 'Piotr Dziakowski', 'NIE MA', 'tak', '2018/2019'),
(190, 'Technik Mechanik', 'IV Tm', 'Renata Maliszewska', 'NIE MA', 'tak', '2018/2019');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klasy`
--
ALTER TABLE `klasy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `klasy`
--
ALTER TABLE `klasy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
