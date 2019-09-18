-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Wrz 2019, 07:13
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.2

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
-- Struktura tabeli dla tabeli `conn`
--

CREATE TABLE `conn` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

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
(34, 'Barbara Żamojtuk', ''),
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
(63, 'Mariusz Zabłocki ', 'ks. mgr'),
(64, 'Filip Zdrodowski', 'ks. mgr'),
(65, 'Tomasz Leszkowicz', 'mgr'),
(66, 'Bożena Marcińczyk', 'mgr'),
(67, 'Piotr Żywno', 'ks. mgr'),
(68, 'Grzegorz Zubiel', 'mgr'),
(69, 'Małgorzata Anna Krawiel', 'mgr'),
(70, 'Ryszard Kozioł', 'ks. mgr'),
(71, 'Urszula Bronowicz', 'mgr'),
(72, 'Romuald Klimuszko', ''),
(73, 'Wacław Rećko', 'mgr'),
(74, 'Katarzyna Szoka', 'mgr'),
(75, 'Marlena Burak', 'mgr'),
(76, 'Czesława Turowska', ''),
(77, 'Urszula Drewniak', 'mgr'),
(78, 'Krystyna Grzesik', 'mgr'),
(79, 'Rafał Firs', 'mgr'),
(80, 'Alina Jakimiec', 'mgr'),
(81, 'Elżbieta Zofia Mazur', 'mgr'),
(82, 'Anna Puchalska', 'mgr'),
(83, 'Grażyna Małachwiej', 'mgr'),
(84, 'Krystyna Grzesik', 'mgr'),
(85, 'Anna Bogdan', 'mgr'),
(86, 'Barbara Czechowicz', 'mgr '),
(87, 'Iwona Skowrońska-Klimowicz', 'mgr'),
(88, 'Urszula Turowska', ''),
(89, 'Stanisław Jakubowicz', 'ks. mgr'),
(90, 'Małgorzata Dziewiątkowska', 'mgr'),
(91, 'Paweł Piotr Zalewski', 'ks. mgr'),
(92, 'Marlena Muszyńska', 'lic.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `imagegroup`
--

CREATE TABLE `imagegroup` (
  `id` int(11) NOT NULL,
  `id_group` int(11) DEFAULT NULL,
  `id_image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `image_name` text COLLATE utf8mb4_polish_ci NOT NULL,
  `main_image` bit(1) NOT NULL,
  `position` char(50) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

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
(65, 'Technik Mechanik', 'I wz', 'Piotr Dziakowski', NULL, NULL, '2008/2009'),
(66, 'Wielozawodowa', 'II wz', 'Lech Czarnowicz', NULL, NULL, '2008/2009'),
(67, 'Wielozawodowa', 'III wz', 'Maria Sobolewska', NULL, NULL, '2008/2009'),
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
(85, 'Wielozawodowa', 'IIIwz', 'Lech Czarnowicz', NULL, NULL, '2009/2010'),
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
(101, 'Wielozawodowa', 'III wz', 'Piotr Dziakowski', NULL, NULL, '2010/2011'),
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
(47, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2018/Nauczyciel7.jpg', '2017/2018', 31),
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
(67, 'Język polski', '', NULL, NULL, '2005/2006', 5),
(69, 'Dyrektor', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2016/Nauczyciel6.jpg', '2016/2017', 1),
(70, 'Wicedyrektor', 'Matematyka', 'Przedmioty zawodowe', '../img/pracownicy/2016/Nauczyciel14.jpg', '2016/2017', 2),
(71, 'Kierownik Pracowni Ćwiczeń Technicznych', NULL, NULL, '../img/pracownicy/2016/mMirek.jpg', '2016/2017', 3),
(72, 'Język polski', 'Wiedza o Kulturze', NULL, '../img/pracownicy/2016/Nauczyciel3.jpg', '2016/2017', 4),
(73, 'Język polski', NULL, NULL, '../img/pracownicy/2016/Nauczyciel1.jpg', '2016/2017', 5),
(74, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2016/RenatkaM.jpg', '2016/2017', 7),
(75, 'Język angielski', NULL, NULL, '../img/pracownicy/2016/Nauczyciel4.jpg', '2016/2017', 8),
(76, 'Historia', 'Wiedza o Społeczeństwie', NULL, '../img/pracownicy/2016/Ja.jpg', '2016/2017', 9),
(77, 'Matematyka', NULL, NULL, '../img/pracownicy/2016/Nauczyciel5.jpg', '2016/2017', 10),
(78, 'Fizyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2016/Nauczyciel12.jpg', '2016/2017', 11),
(79, 'Chemia', 'Biologia', 'Przedmioty zawodowe', '../img/pracownicy/2016/Nauczyciel11.jpg', '2016/2017', 12),
(80, 'Geografia', 'Podstawy przedsiębiorczości', NULL, '../img/pracownicy/2016/mMariaS.jpg', '2016/2017', 13),
(81, 'Edukacja dla bezpieczeństwa', 'Wychowanie fizyczne', NULL, '../img/pracownicy/2016/lech.jpg', '2016/2017', 14),
(82, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2016/Nauczyciel9.jpg', '2016/2017', 15),
(83, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2016/Nauczyciel8.jpg', '2016/2017', 30),
(84, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2016/mMarek_M14.jpg', '2016/2017', 16),
(85, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2016/JurekSz.jpg', '2016/2017', 18),
(86, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2016/BenekJ.jpg', '2016/2017', 20),
(92, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2016/mAZajczyk.jpg', '2016/2017', 29),
(93, 'Katecheza', NULL, NULL, '../img/pracownicy/2016/jaroszuk.jpg', '2016/2017', 21),
(94, 'Katecheza', NULL, NULL, '../img/pracownicy/2016/zdrodowski.jpg', '2016/2017', 64),
(95, 'Biblioteka', NULL, NULL, '../img/pracownicy/2016/Nauczyciel2.jpg', '2016/2017', 23),
(96, 'Pedagog szkolny', NULL, NULL, '../img/pracownicy/2016/Nauczyciel13.jpg', '2016/2017', 24),
(97, 'Sekretariat', NULL, NULL, '../img/pracownicy/2016/IwonaS.jpg', '2016/2017', 25),
(98, 'Sekretariat', NULL, NULL, '../img/pracownicy/2016/ElwiraZalewska.jpg', '2016/2017', 27),
(99, 'Księgowość', NULL, NULL, '../img/pracownicy/2016/Lucyna.jpg', '2016/2017', 26),
(100, 'Księgowość', NULL, NULL, '../img/pracownicy/2016/Basia.jpg', '2016/2017', 34),
(101, 'Dyrektor', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2016/Nauczyciel6.jpg', '2015/2016', 1),
(102, 'Wicedyrektor', 'Matematyka', 'Przedmioty zawodowe', '../img/pracownicy/2016/Nauczyciel14.jpg', '2015/2016', 2),
(103, 'Kierownik Pracowni Ćwiczeń Technicznych', NULL, NULL, '../img/pracownicy/2016/mMirek.jpg', '2015/2016', 3),
(104, 'Język polski', 'Wiedza o Kulturze', NULL, '../img/pracownicy/2016/Nauczyciel3.jpg', '2015/2016', 4),
(105, 'Język polski', NULL, NULL, '../img/pracownicy/2016/Nauczyciel1.jpg', '2015/2016', 5),
(106, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2016/RenatkaM.jpg', '2015/2016', 7),
(107, 'Język angielski', NULL, NULL, '../img/pracownicy/2016/Nauczyciel4.jpg', '2015/2016', 8),
(108, 'Język angielski', NULL, NULL, '../img/pracownicy/2016/mKlaudia.jpg', '2015/2016', 38),
(109, 'Historia', 'Wiedza o Społeczeństwie', NULL, '../img/pracownicy/2016/Ja.jpg', '2015/2016', 9),
(110, 'Matematyka', NULL, NULL, '../img/pracownicy/2016/Nauczyciel5.jpg', '2015/2016', 10),
(111, 'Fizyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2016/Nauczyciel12.jpg', '2015/2016', 11),
(112, 'Chemia', 'Biologia', 'Przedmioty zawodowe', '../img/pracownicy/2016/Nauczyciel11.jpg', '2015/2016', 12),
(113, 'Geografia', NULL, NULL, '../img/pracownicy/2016/mMariaS.jpg', '2015/2016', 13),
(114, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2016/Nauczyciel9.jpg', '2015/2016', 15),
(115, 'Edukacja dla bezpieczeństwa', NULL, NULL, '../img/pracownicy/2016/Nauczyciel15.jpg', '2015/2016', 66),
(116, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2016/Nauczyciel10.jpg', '2015/2016', 65),
(117, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2016/Nauczyciel8.jpg', '2015/2016', 30),
(118, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2016/Nauczyciel7.jpg', '2015/2016', 31),
(119, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2016/JurekSz.jpg', '2015/2016', 18),
(121, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2016/mAZajczyk.jpg', '2015/2016', 29),
(123, 'Katecheza', NULL, NULL, '../img/pracownicy/2016/jaroszuk.jpg', '2015/2016', 21),
(124, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2016/BenekJ.jpg', '2015/2016', 20),
(125, 'Katecheza', NULL, NULL, '../img/pracownicy/2016/zywno.jpg', '2015/2016', 67),
(126, 'Biblioteka', NULL, NULL, '../img/pracownicy/2016/Nauczyciel2.jpg', '2015/2016', 23),
(127, 'Pedagog szkolny', NULL, NULL, '../img/pracownicy/2016/Nauczyciel13.jpg', '2015/2016', 24),
(128, 'Sekretariat', NULL, NULL, '../img/pracownicy/2016/IwonaS.jpg', '2015/2016', 25),
(129, 'Sekretariat', NULL, NULL, '../img/pracownicy/2016/ElwiraZalewska.jpg', '2015/2016', 27),
(130, 'Księgowość', NULL, NULL, '../img/pracownicy/2016/Lucyna.jpg', '2015/2016', 26),
(131, 'Księgowość', NULL, NULL, '../img/pracownicy/2016/Basia.jpg', '2015/2016', 34),
(132, 'Dyrektor', 'Historia', NULL, '../img/pracownicy/2015/GrzesiekZ.jpg', '2014/2015', 1),
(133, 'Wicedyrektor', 'Matematyka', 'Przedmioty zawodowe', '../img/pracownicy/2015/LechCz.jpg', '2014/2015', 2),
(134, 'Kierownik Pracowni Ćwiczeń Technicznych', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2015/mMirek.jpg', '2014/2015', 3),
(135, 'Język polski', 'Wiedza o Kulturze', NULL, '../img/pracownicy/2015/IwonaMK.jpg', '2014/2015', 4),
(136, 'Język polski', 'Biblioteka', NULL, '../img/pracownicy/2015/mJolaS.jpg', '2014/2015', 23),
(137, 'Język polski', NULL, NULL, '../img/pracownicy/2015/AniaT.jpg', '2014/2015', 5),
(138, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2015/RenatkaM.jpg', '2014/2015', 7),
(139, 'Język angielski', NULL, NULL, '../img/pracownicy/2015/mAneta.jpg', '2014/2015', 8),
(140, 'Język angielski', NULL, NULL, '../img/pracownicy/2015/mKlaudia.jpg', '2014/2015', 38),
(141, 'Historia', 'Wiedza o Społeczeństwie', NULL, '../img/pracownicy/2015/Ja.jpg', '2014/2015', 9),
(142, 'Matematyka', NULL, NULL, '../img/pracownicy/2015/KrysiaG.jpg', '2014/2015', 10),
(143, 'Fizyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2015/mPiotrekDz.jpg', '2014/2015', 11),
(144, 'Chemia', 'Biologia', NULL, '../img/pracownicy/2015/ElwiraZ.jpg', '2014/2015', 12),
(145, 'Geografia', NULL, NULL, '../img/pracownicy/2015/mMariaS.jpg', '2014/2015', 13),
(146, 'Edukacja dla bezpieczeństwa', 'Wychowanie fizyczne', NULL, '../img/pracownicy/2015/lech.jpg', '2014/2015', 14),
(147, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2015/TomekP.jpg', '2014/2015', 15),
(148, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2015/mZubiel1.jpg', '2014/2015', 68),
(149, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2015/mMarek_M14.jpg', '2014/2015', 16),
(150, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2015/mJelska.jpg', '2014/2015', 30),
(151, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2015/JurekSz.jpg', '2014/2015', 18),
(152, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2015/BenekJ.jpg', '2014/2015', 20),
(153, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2015/mAZajczyk.jpg', '2014/2015', 29),
(154, 'Katecheza', NULL, NULL, '../img/pracownicy/2015/jaroszuk.jpg', '2014/2015', 21),
(155, 'Katecheza', NULL, NULL, '../img/pracownicy/2015/zywno.jpg', '2014/2015', 67),
(156, 'Pedagog szkolny', NULL, NULL, '../img/pracownicy/2015/IzaG.jpg', '2014/2015', 24),
(157, 'Sekretariat', NULL, NULL, '../img/pracownicy/2015/IwonaS.jpg', '2014/2015', 25),
(158, 'Sekretariat', NULL, NULL, '../img/pracownicy/2015/ElwiraZalewska.jpg', '2014/2015', 27),
(159, 'Księgowość', NULL, NULL, '../img/pracownicy/2015/Lucyna.jpg', '2014/2015', 26),
(160, 'Księgowość', NULL, NULL, '../img/pracownicy/2015/Basia.jpg', '2014/2015', 34),
(161, 'Dyrektor', 'Historia', NULL, '../img/pracownicy/2014/GrzesiekZ.jpg', '2013/2014', 1),
(162, 'Wicedyrektor', 'Matematyka', 'Przedmioty zawodowe', '../img/pracownicy/2014/LechCz.jpg', '2013/2014', 2),
(163, 'Kierownik Pracowni Ćwiczeń Technicznych', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2014/mMirek.jpg', '2013/2014', 3),
(164, 'Język polski', 'Wiedza o Kulturze', NULL, '../img/pracownicy/2014/IwonaMK.jpg', '2013/2014', 4),
(165, 'Język polski', 'Biblioteka', NULL, '../img/pracownicy/2014/mJolaS.jpg', '2013/2014', 23),
(166, 'Język polski', NULL, NULL, '../img/pracownicy/2014/AniaT.jpg', '2013/2014', 5),
(167, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2014/mGosiaK.jpg', '2013/2014', 69),
(168, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2014/RenatkaM.jpg', '2013/2014', 7),
(169, 'Język angielski', NULL, NULL, '../img/pracownicy/2014/mAneta.jpg', '2013/2014', 8),
(170, 'Język angielski', NULL, NULL, '../img/pracownicy/2014/mKlaudia.jpg', '2013/2014', 38),
(171, 'Historia', 'Wiedza o Społeczeństwie', NULL, '../img/pracownicy/2014/Ja.jpg', '2013/2014', 9),
(172, 'Matematyka', NULL, NULL, '../img/pracownicy/2014/KrysiaG.jpg', '2013/2014', 10),
(173, 'Fizyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2014/mPiotrekDz.jpg', '2013/2014', 11),
(174, 'Chemia', 'Biologia', NULL, '../img/pracownicy/2014/ElwiraZ.jpg', '2013/2014', 12),
(175, 'Geografia', NULL, NULL, '../img/pracownicy/2014/mMariaS.jpg', '2013/2014', 13),
(176, 'Edukacja dla bezpieczeństwa', 'Wychowanie fizyczne', NULL, '../img/pracownicy/2014/lech.jpg', '2013/2014', 14),
(177, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2014/TomekP.jpg', '2013/2014', 15),
(178, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2014/mZubiel1.jpg', '2013/2014', 68),
(179, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2014/MarekM.jpg', '2013/2014', 16),
(180, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2014/mJelska.jpg', '2013/2014', 30),
(181, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2014/JurekSz.jpg', '2013/2014', 18),
(182, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2014/mCiostekD.jpg', '2013/2014', 19),
(183, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2014/BenekJ.jpg', '2013/2014', 20),
(184, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2014/mAZajczyk.jpg', '2013/2014', 29),
(185, 'Katecheza', NULL, NULL, '../img/pracownicy/2014/jaroszuk.jpg', '2013/2014', 21),
(186, 'Katecheza', NULL, NULL, '../img/pracownicy/2014/koziol.jpg', '2013/2014', 70),
(187, 'Katecheza', NULL, NULL, '../img/pracownicy/2014/zywno.jpg', '2013/2014', 67),
(188, 'Pedagog szkolny', NULL, NULL, '../img/pracownicy/2014/IzaG.jpg', '2013/2014', 24),
(189, 'Sekretariat', NULL, NULL, '../img/pracownicy/2014/IwonaS.jpg', '2013/2014', 25),
(190, 'Sekretariat', NULL, NULL, '../img/pracownicy/2014/ElwiraZalewska.jpg', '2013/2014', 27),
(191, 'Księgowość', NULL, NULL, '../img/pracownicy/2014/Lucyna.jpg', '2013/2014', 26),
(192, 'Księgowość', NULL, NULL, '../img/pracownicy/2014/Basia.jpg', '2013/2014', 34),
(193, 'Dyrektor', 'Historia', NULL, '../img/pracownicy/2014/GrzesiekZ.jpg', '2012/2013', 1),
(194, 'Wicedyrektor', 'Matematyka', 'Przedmioty zawodowe', '../img/pracownicy/2014/LechCz.jpg', '2012/2013', 2),
(195, 'Kierownik Pracowni Ćwiczeń Technicznych', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2014/mMirek.jpg', '2012/2013', 3),
(196, 'Język polski', 'Wiedza o Kulturze', NULL, '../img/pracownicy/2014/IwonaMK.jpg', '2012/2013', 4),
(197, 'Język polski', 'Biblioteka', NULL, '../img/pracownicy/2014/mJolaS.jpg', '2012/2013', 23),
(198, 'Język polski', NULL, NULL, '../img/pracownicy/2014/AniaT.jpg', '2012/2013', 5),
(199, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2014/mGosiaK.jpg', '2012/2013', 69),
(200, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2014/RenatkaM.jpg', '2012/2013', 7),
(201, 'Język angielski', NULL, NULL, '../img/pracownicy/2014/mAneta.jpg', '2012/2013', 8),
(202, 'Język angielski', NULL, NULL, '../img/pracownicy/2014/mKlaudia.jpg', '2012/2013', 38),
(203, 'Historia', 'Wiedza o Społeczeństwie', NULL, '../img/pracownicy/2014/Ja.jpg', '2012/2013', 9),
(204, 'Matematyka', NULL, NULL, '../img/pracownicy/2014/KrysiaG.jpg', '2012/2013', 10),
(205, 'Fizyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2014/mPiotrekDz.jpg', '2012/2013', 11),
(206, 'Chemia', 'Biologia', NULL, '../img/pracownicy/2014/ElwiraZ.jpg', '2012/2013', 12),
(207, 'Geografia', NULL, NULL, '../img/pracownicy/2014/mMariaS.jpg', '2012/2013', 13),
(208, 'Edukacja dla bezpieczeństwa', 'Wychowanie fizyczne', NULL, '../img/pracownicy/2014/lech.jpg', '2012/2013', 14),
(209, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2014/TomekP.jpg', '2012/2013', 15),
(210, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2014/mZubiel1.jpg', '2012/2013', 68),
(211, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2014/MarekM.jpg', '2012/2013', 16),
(212, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2014/mJelska.jpg', '2012/2013', 30),
(213, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2014/JurekSz.jpg', '2012/2013', 18),
(214, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2014/mCiostekD.jpg', '2012/2013', 19),
(215, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2014/BenekJ.jpg', '2012/2013', 20),
(216, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2014/mAZajczyk.jpg', '2012/2013', 29),
(217, 'Katecheza', NULL, NULL, '../img/pracownicy/2014/jaroszuk.jpg', '2012/2013', 21),
(218, 'Katecheza', NULL, NULL, '../img/pracownicy/2014/koziol.jpg', '2012/2013', 70),
(219, 'Katecheza', NULL, NULL, '../img/pracownicy/2014/zywno.jpg', '2012/2013', 67),
(220, 'Pedagog szkolny', NULL, NULL, '../img/pracownicy/2014/IzaG.jpg', '2012/2013', 24),
(221, 'Sekretariat', NULL, NULL, '../img/pracownicy/2014/IwonaS.jpg', '2012/2013', 25),
(222, 'Sekretariat', NULL, NULL, '../img/pracownicy/2014/ElwiraZalewska.jpg', '2012/2013', 27),
(223, 'Księgowość', NULL, NULL, '../img/pracownicy/2014/Lucyna.jpg', '2012/2013', 26),
(256, 'Księgowość', NULL, NULL, '../img/pracownicy/2014/Basia.jpg', '2012/2013', 34),
(257, 'Dyrektor', 'Historia', NULL, '../img/pracownicy/2012/GrzesiekZ.jpg', '2011/2012', 1),
(258, 'Wicedyrektor', 'Matematyka', 'Przedmioty zawodowe', '../img/pracownicy/2012/LechCz.jpg', '2011/2012', 2),
(259, 'Biblioteka', 'Język polski', NULL, '../img/pracownicy/2012/mJolaS.jpg', '2011/2012', 23),
(260, 'Kierownik Pracowni Ćwiczeń Technicznych', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2012/mMirek.jpg', '2011/2012', 3),
(261, 'Język polski', 'Wiedza o Kulturze', NULL, '../img/pracownicy/2012/IwonaMK.jpg', '2011/2012', 4),
(262, 'Język polski', NULL, NULL, '../img/pracownicy/2012/AniaT.jpg', '2011/2012', 5),
(263, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2012/mGosiaK.jpg', '2011/2012', 69),
(264, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2012/RenatkaM.jpg', '2011/2012', 7),
(265, 'Język angielski', NULL, NULL, '../img/pracownicy/2012/mAneta.jpg', '2011/2012', 8),
(266, 'Język angielski', NULL, NULL, '../img/pracownicy/2012/mKlaudia.jpg', '2011/2012', 38),
(267, 'Historia', 'Wiedza o Społeczeństwie', NULL, '../img/pracownicy/2012/Ja.jpg', '2011/2012', 9),
(268, 'Matematyka', NULL, NULL, '../img/pracownicy/2012/KrysiaG.jpg', '2011/2012', 10),
(269, 'Fizyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2012/mPiotrekDz.jpg', '2011/2012', 11),
(270, 'Chemia', NULL, NULL, '../img/pracownicy/2012/UlaB.jpg', '2011/2012', 71),
(271, 'Chemia', 'Biologia', NULL, '../img/pracownicy/2012/ElwiraZ.jpg', '2011/2012', 12),
(272, 'Geografia', NULL, NULL, '../img/pracownicy/2012/mMariaS.jpg', '2011/2012', 13),
(273, 'Edukacja dla bezpieczeństwa', 'Wychowanie fizyczne', NULL, '../img/pracownicy/2012/lech.jpg', '2011/2012', 14),
(274, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2012/TomekP.jpg', '2011/2012', 15),
(275, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2012/mZubiel1.jpg', '2011/2012', 68),
(276, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2012/MarekM.jpg', '2011/2012', 16),
(277, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2012/JurekSz.jpg', '2011/2012', 18),
(278, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2012/mWacek.jpg', '2011/2012', 73),
(279, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2012/mCiostekD.jpg', '2011/2012', 19),
(280, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2012/BenekJ.jpg', '2011/2012', 20),
(281, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2012/mRomekK.jpg', '2011/2012', 72),
(282, 'Praktyczna nauka zawodu', NULL, NULL, '../img/pracownicy/2012/mAZajczyk.jpg', '2011/2012', 29),
(283, 'Katecheza', NULL, NULL, '../img/pracownicy/2012/jaroszuk.jpg', '2011/2012', 21),
(284, 'Katecheza', NULL, NULL, '../img/pracownicy/2012/koziol.jpg', '2011/2012', 70),
(285, 'Katecheza', NULL, NULL, '../img/pracownicy/2012/zywno.jpg', '2011/2012', 67),
(286, 'Biblioteka', NULL, NULL, '../img/pracownicy/2012/KasiaSz.jpg', '2011/2012', 74),
(287, 'Pedagog szkolny', NULL, NULL, '../img/pracownicy/2012/IzaG.jpg', '2011/2012', 24),
(288, 'Sekretariat', NULL, NULL, '../img/pracownicy/2012/IwonaS.jpg', '2011/2012', 25),
(289, 'Sekretariat', NULL, NULL, '../img/pracownicy/2012/ElwiraZalewska.jpg', '2011/2012', 27),
(290, 'Księgowość', NULL, NULL, '../img/pracownicy/2012/Lucyna.jpg', '2011/2012', 26),
(291, 'Księgowość', NULL, NULL, '../img/pracownicy/2012/Basia.jpg', '2011/2012', 34),
(292, 'Dyrektor', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2011/zabludowski.jpg', '2010/2011', 35),
(293, 'Wicedyrektor', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2011/recko.jpg', '2010/2011', 73),
(294, 'Kierownik Pracowni Ćwiczeń Technicznych', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2011/osial.jpg', '2010/2011', 3),
(295, 'Język polski', 'Wiedza o Kulturze', NULL, '../img/pracownicy/2011/mackiewicz.jpg', '2010/2011', 4),
(296, 'Język polski', 'Biblioteka', NULL, '../img/pracownicy/2011/siemieniako.jpg', '2010/2011', 23),
(297, 'Język polski', NULL, NULL, '../img/pracownicy/2011/tolko.jpg', '2010/2011', 5),
(298, 'Język angielski', NULL, NULL, '../img/pracownicy/2011/burak.jpg', '2010/2011', 75),
(299, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2011/krawiel.jpg', '2010/2011', 69),
(300, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2011/maliszewska.jpg', '2010/2011', 7),
(301, 'Język angielski', NULL, NULL, '../img/pracownicy/2011/tyminska.jpg', '2010/2011', 8),
(302, 'Historia', 'Wiedza o Społeczeństwie', NULL, '../img/pracownicy/2011/pakula.jpg', '2010/2011', 9),
(303, 'Historia', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2011/zalewski.jpg', '2010/2011', 1),
(304, 'Matematyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2011/czarnowicz.jpg', '2010/2011', 2),
(305, 'Matematyka', NULL, NULL, '../img/pracownicy/2011/grygiewicz.jpg', '2010/2011', 10),
(306, 'Fizyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2011/dziakowski.jpg', '2010/2011', 11),
(307, 'Chemia', NULL, NULL, '../img/pracownicy/2011/bronowicz.jpg', '2010/2011', 71),
(308, 'Chemia', 'Biologia', NULL, '../img/pracownicy/2011/zablocka.jpg', '2010/2011', 12),
(309, 'Geografia', NULL, NULL, '../img/pracownicy/2011/sobolewska.jpg', '2010/2011', 13),
(310, 'Edukacja dla bezpieczeństwa\r\n', 'Wychowanie fizyczne', NULL, '../img/pracownicy/2011/lech.jpg', '2010/2011', 14),
(311, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2011/potapczyk.jpg', '2010/2011', 15),
(312, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2011/zubiel.jpg', '2010/2011', 68),
(313, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2011/mozyrski.jpg', '2010/2011', 16),
(314, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2011/czechowicz.jpg', '2010/2011', 51),
(315, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2011/szymaniuk.jpg', '2010/2011', 18),
(316, 'Katecheza', NULL, NULL, '../img/pracownicy/2011/jaroszuk.jpg', '2010/2011', 21),
(317, 'Katecheza', NULL, NULL, '../img/pracownicy/2011/koziol.jpg', '2010/2011', 70),
(318, 'Katecheza', NULL, NULL, '../img/pracownicy/2011/zywno.jpg', '2010/2011', 67),
(319, 'Biblioteka', NULL, NULL, '../img/pracownicy/2011/szoka.jpg', '2010/2011', 74),
(320, 'Pedagog szkolny', NULL, NULL, '../img/pracownicy/2011/garkowska.jpg', '2010/2011', 24),
(321, 'Sekretariat', NULL, NULL, '../img/pracownicy/2011/sarosiek.jpg', '2010/2011', 25),
(322, 'Sekretariat', NULL, NULL, '../img/pracownicy/2011/turowskacz.jpg', '2010/2011', 76),
(323, 'Księgowość', NULL, NULL, '../img/pracownicy/2011/bakun.jpg', '2010/2011', 26),
(324, 'Księgowość', NULL, NULL, '../img/pracownicy/2011/zamojtuk.jpg', '2010/2011', 34),
(325, 'Dyrektor', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2010/zabludowski.jpg', '2009/2010', 35),
(326, 'wicedyrektor', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2010/recko.jpg', '2009/2010', 73),
(327, 'Kierownik Pracowni Ćwiczeń Technicznych', NULL, NULL, '../img/pracownicy/2010/osial.jpg', '2009/2010', 3),
(328, 'Język polski', NULL, NULL, '../img/pracownicy/2010/kazmierowicz.jpg', '2009/2010', 37),
(329, 'Język polski', 'Wiedza o Kulturze', NULL, '../img/pracownicy/2010/mackiewicz.jpg', '2009/2010', 4),
(330, 'Język polski', 'Biblioteka', NULL, '../img/pracownicy/2010/siemieniako.jpg', '2009/2010', 23),
(331, 'Język polski', NULL, NULL, '../img/pracownicy/2010/tolko.jpg', '2009/2010', 5),
(332, 'Język angielski', NULL, NULL, '../img/pracownicy/2010/burak.jpg', '2009/2010', 75),
(333, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2010/drewniak.jpg', '2009/2010', 77),
(334, 'Język angielski', NULL, NULL, '../img/pracownicy/2010/kmon.jpg', '2009/2010', 38),
(335, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2010/krawiel.jpg', '2009/2010', 69),
(336, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2010/maliszewska.jpg', '2009/2010', 7),
(337, 'Język niemiecki', NULL, NULL, '../img/pracownicy/2010/mazur.jpg', '2009/2010', 41),
(338, 'Język angielski', NULL, NULL, '../img/pracownicy/2010/tyminska.jpg', '2009/2010', 8),
(339, 'Historia', 'Wiedza o Społeczeństwie', NULL, '../img/pracownicy/2010/pakula.jpg', '2009/2010', 9),
(340, 'Historia', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2010/zalewski.jpg', '2009/2010', 1),
(341, 'Matematyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2010/czarnowicz.jpg', '2009/2010', 2),
(342, 'Matematyka', NULL, NULL, '../img/pracownicy/2010/grygiewicz.jpg', '2009/2010', 10),
(343, 'Fizyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2010/dziakowski.jpg', '2009/2010', 11),
(344, 'Chemia', NULL, NULL, '../img/pracownicy/2010/malachwiej.jpg', '2009/2010', 47),
(345, 'Biologia', NULL, NULL, '../img/pracownicy/2010/grzesik.jpg', '2009/2010', 78),
(346, 'Geografia', NULL, NULL, '../img/pracownicy/2010/sobolewska.jpg', '2009/2010', 13),
(347, 'Edukacja dla bezpieczeństwa', 'Wychowanie fizyczne', NULL, '../img/pracownicy/2010/lech.jpg', '2009/2010', 14),
(348, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2010/firs.jpg', '2009/2010', 79),
(349, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2010/potapczyk.jpg', '2009/2010', 15),
(350, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2010/zubiel.jpg', '2009/2010', 68),
(351, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2010/bogdan.jpg', '2009/2010', 45),
(352, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2010/mozyrski.jpg', '2009/2010', 16),
(353, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2010/czechowicz.jpg', '2009/2010', 51),
(354, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2010/skowronska.jpg', '2009/2010', 53),
(355, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2010/szymaniuk.jpg', '2009/2010', 18),
(356, 'Katecheza', NULL, NULL, '../img/pracownicy/2010/jaroszuk.jpg', '2009/2010', 21),
(357, 'Katecheza', NULL, NULL, '../img/pracownicy/2010/koziol.jpg', '2009/2010', 70),
(358, 'Katecheza', NULL, NULL, '../img/pracownicy/2010/zywno.jpg', '2009/2010', 67),
(359, 'Biblioteka', NULL, NULL, '../img/pracownicy/2010/szoka.jpg', '2009/2010', 74),
(360, 'Pedagog szkolny', NULL, NULL, '../img/pracownicy/2010/garkowska.jpg', '2009/2010', 24),
(361, 'Sekretariat', NULL, NULL, '../img/pracownicy/2010/sarosiek.jpg', '2009/2010', 25),
(362, 'Sekretariat', NULL, NULL, '../img/pracownicy/2010/turowskacz.jpg', '2009/2010', 76),
(363, 'Księgowość', NULL, NULL, '../img/pracownicy/2010/bakun.jpg', '2009/2010', 26),
(364, 'Księgowość', NULL, NULL, '../img/pracownicy/2010/zamojtuk.jpg', '2009/2010', 34),
(365, 'Dyrektor', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2009/zabludowski.jpg', '2008/2009', 35),
(366, 'Wicedyrektor', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2009/recko.jpg', '2008/2009', 73),
(367, 'Kierownik Pracowni Ćwiczeń Technicznych', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2009/osial.jpg', '2008/2009', 3),
(368, 'Język polski', NULL, NULL, '../img/pracownicy/2009/kazmierowicz.jpg', '2008/2009', 37),
(369, 'Język polski', 'Wiedza o Kulturze', NULL, '../img/pracownicy/2009/mackiewicz.jpg', '2008/2009', 4),
(370, 'Język polski', 'Biblioteka', NULL, '../img/pracownicy/2009/siemieniako.jpg', '2008/2009', 23),
(371, 'Język polski', NULL, NULL, '../img/pracownicy/2009/tolko.jpg', '2008/2009', 5),
(372, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2009/jakimiec.jpg', '2008/2009', 80),
(373, 'Język angielski', NULL, NULL, '../img/pracownicy/2009/kmon.jpg', '2008/2009', 6),
(374, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2009/krawiel.jpg', '2008/2009', 69),
(375, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2009/maliszewska.jpg', '2008/2009', 7),
(376, 'Język niemiecki', NULL, NULL, '../img/pracownicy/2009/mazur.jpg', '2008/2009', 81),
(377, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2009/puchalska.jpg', '2008/2009', 82),
(378, 'Język angielski', NULL, NULL, '../img/pracownicy/2009/tyminska.jpg', '2008/2009', 8),
(379, 'Historia', 'Wiedza o Społeczeństwie', NULL, '../img/pracownicy/2009/pakula.jpg', '2008/2009', 9),
(380, 'Historia', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2009/zalewski.jpg', '2008/2009', 1),
(381, 'Wiedza o Społeczeństwie', 'Biblioteka', NULL, '../img/pracownicy/2009/szoka.jpg', '2008/2009', 74),
(382, 'Matematyka', NULL, NULL, '../img/pracownicy/2009/czarnowicz.jpg', '2008/2009', 2),
(383, 'Matematyka', NULL, NULL, '../img/pracownicy/2009/grygiewicz.jpg', '2008/2009', 10),
(384, 'Fizyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2009/dziakowski.jpg', '2008/2009', 11),
(385, 'Chemia', NULL, NULL, '../img/pracownicy/2009/malachwiej.jpg', '2008/2009', 83),
(386, 'Biologia', NULL, NULL, '../img/pracownicy/2009/grzesik.jpg', '2008/2009', 78),
(387, 'Geografia', NULL, NULL, '../img/pracownicy/2009/sobolewska.jpg', '2008/2009', 13),
(388, 'Edukacja dla bezpieczeństwa', 'Wychowanie fizyczne', NULL, '../img/pracownicy/2009/lech.jpg', '2008/2009', 14),
(389, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2009/potapczyk.jpg', '2008/2009', 15),
(390, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2009/zubiel.jpg', '2008/2009', 68),
(391, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2009/bogdan.jpg', '2008/2009', 85),
(392, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2009/mozyrski.jpg', '2008/2009', 16),
(393, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2009/czechowicz.jpg', '2008/2009', 86),
(394, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2009/skowronska.jpg', '2008/2009', 87),
(395, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2009/sobolewski.jpg', '2008/2009', 54),
(396, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2009/szymaniuk.jpg', '2008/2009', 18),
(397, 'Katacheza', NULL, NULL, '../img/pracownicy/2009/jaroszuk.jpg', '2008/2009', 21),
(398, 'Katecheza', NULL, NULL, '../img/pracownicy/2009/jakubowicz.jpg', '2008/2009', 89),
(399, 'Katacheza', NULL, NULL, '../img/pracownicy/2009/zywno.jpg', '2008/2009', 67),
(400, 'Pedagog szkolny', NULL, NULL, '../img/pracownicy/2009/garkowska.jpg', '2008/2009', 24),
(401, 'Sekretariat', NULL, NULL, '../img/pracownicy/2009/sarosiek.jpg', '2008/2009', 25),
(402, 'Sekretariat', NULL, NULL, '../img/pracownicy/2009/turowskacz.jpg', '2008/2009', 76),
(403, 'Sekretariat', NULL, NULL, '../img/pracownicy/2009/turowskau.jpg', '2008/2009', 88),
(404, 'Księgowość', NULL, NULL, '../img/pracownicy/2009/bakun.jpg', '2008/2009', 26),
(405, 'Księgowość', NULL, NULL, '../img/pracownicy/2009/zamojtuk.jpg', '2008/2009', 34),
(406, 'Dyrektor', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2008/zabludowski.jpg', '2007/2008', 35),
(407, 'Wicedyrektor', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2008/recko.jpg', '2007/2008', 73),
(408, 'Kierownik Pracowni Ćwiczeń Technicznych', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2008/osial.jpg', '2007/2008', 3),
(409, 'Język polski', NULL, NULL, '../img/pracownicy/2008/kazmierowicz.jpg', '2007/2008', 37),
(410, 'Język polski', 'Wiedza o Kulturze', NULL, '../img/pracownicy/2008/mackiewicz.jpg', '2007/2008', 4),
(411, 'Język polski', 'Biblioteka', NULL, '../img/pracownicy/2008/siemieniako.jpg', '2007/2008', 23),
(412, 'Język polski', NULL, NULL, '../img/pracownicy/2008/tolko.jpg', '2007/2008', 5),
(413, 'Język angielski', NULL, NULL, '../img/pracownicy/2008/dziewiatkowska.jpg', '2007/2008', 90),
(414, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2008/jakimiec.jpg', '2007/2008', 80),
(415, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2008/krawiel.jpg', '2007/2008', 69),
(416, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2008/maliszewska.jpg', '2007/2008', 7),
(417, 'Język niemiecki', NULL, NULL, '../img/pracownicy/2008/mazur.jpg', '2007/2008', 81),
(418, 'Język angielski', NULL, NULL, '../img/pracownicy/2008/tyminska.jpg', '2007/2008', 8),
(419, 'Historia', 'Wiedza o Społeczeństwie', NULL, '../img/pracownicy/2008/pakula.jpg', '2007/2008', 9),
(420, 'Historia', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2008/zalewski.jpg', '2007/2008', 1),
(421, 'Wiedza o Społeczeństwie', 'Biblioteka', NULL, '../img/pracownicy/2008/szoka.jpg', '2007/2008', 74),
(422, 'Matematyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2008/bogdan.jpg', '2007/2008', 85),
(423, 'Matematyka', NULL, NULL, '../img/pracownicy/2008/czarnowicz.jpg', '2007/2008', 2),
(424, 'Matematyka', NULL, NULL, '../img/pracownicy/2008/grygiewicz.jpg', '2007/2008', 10),
(425, 'Fizyka', NULL, NULL, '../img/pracownicy/2008/dziakowski.jpg', '2007/2008', 11),
(426, 'Chemia', NULL, NULL, '../img/pracownicy/2008/malachwiej.jpg', '2007/2008', 83),
(427, 'Biologia', NULL, NULL, '../img/pracownicy/2008/grzesik.jpg', '2007/2008', 84),
(428, 'Geografia', NULL, NULL, '../img/pracownicy/2008/sobolewska.jpg', '2007/2008', 13),
(429, 'Edukacja dla bezpieczeństwa', 'Wychowanie fizyczne', NULL, '../img/pracownicy/2008/lech.jpg', '2007/2008', 14),
(430, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2008/potapczyk.jpg', '2007/2008', 15),
(431, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2008/zubiel.jpg', '2007/2008', 68),
(432, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2008/mozyrski.jpg', '2007/2008', 16),
(433, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2008/czechowicz.jpg', '2007/2008', 86),
(434, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2008/skowronska.jpg', '2007/2008', 87),
(435, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2008/sobolewski.jpg', '2007/2008', 54),
(436, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2008/szymaniuk.jpg', '2007/2008', 18),
(437, 'Katecheza', NULL, NULL, '../img/pracownicy/2008/grygiewiczx.jpg', '2007/2008', 62),
(438, 'Katecheza', NULL, NULL, '../img/pracownicy/2008/zalewskix.jpg', '2007/2008', 91),
(439, 'Katecheza', NULL, NULL, '../img/pracownicy/2008/zywno.jpg', '2007/2008', 67),
(440, 'Pedagog szkolny', NULL, NULL, '../img/pracownicy/2008/garkowska.jpg', '2007/2008', 24),
(441, 'Sekretariat', NULL, NULL, '../img/pracownicy/2008/turowskacz.jpg', '2007/2008', 76),
(442, 'Sekretariat', NULL, NULL, '../img/pracownicy/2008/turowskau.jpg', '2007/2008', 88),
(443, 'Księgowość', NULL, NULL, '../img/pracownicy/2008/bakun.jpg', '2007/2008', 26),
(444, 'Księgowość', NULL, NULL, '../img/pracownicy/2008/sarosiek.jpg', '2007/2008', 25),
(445, 'Księgowość', NULL, NULL, '../img/pracownicy/2008/zamojtuk.jpg', '2007/2008', 34),
(446, 'Dyrektor', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2007/zabludowski.jpg', '2006/2007', 35),
(447, 'Wicedyrektor', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2007/recko.jpg', '2006/2007', 73),
(448, 'Kierownik Pracowni Ćwiczeń Technicznych', 'Przedmioty zawodowe', '', '../img/pracownicy/2007/osial.jpg', '2006/2007', 3),
(449, 'Język polski', NULL, NULL, '../img/pracownicy/2007/kazmierowicz.jpg', '2006/2007', 37),
(450, 'Język polski', NULL, NULL, '../img/pracownicy/2007/mackiewicz.jpg', '2006/2007', 4),
(451, 'Język polski', 'Biblioteka', NULL, '../img/pracownicy/2007/siemieniako.jpg', '2006/2007', 23),
(452, 'Język polski', NULL, NULL, '../img/pracownicy/2007/tolko.jpg', '2006/2007', 5),
(453, 'Język angielski', NULL, NULL, '../img/pracownicy/2007/kmon.jpg', '2006/2007', 6),
(454, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2007/krawiel.jpg', '2006/2007', 69),
(455, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2007/maliszewska.jpg', '2006/2007', 7),
(456, 'Język rosyjski', NULL, NULL, '../img/pracownicy/2007/muszynska.jpg', '2006/2007', 92),
(457, 'Język niemiecki', NULL, NULL, '../img/pracownicy/2007/mazur.jpg', '2006/2007', 81),
(458, 'Język rosyjski', 'Wiedza o Kulturze', NULL, '../img/pracownicy/2007/mozerska.jpg', '2006/2007', 42),
(459, 'Historia', 'Wiedza o społeczeństwie', NULL, '../img/pracownicy/2007/pakula.jpg', '2006/2007', 9),
(460, 'Historia', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2007/zalewski.jpg', '2006/2007', 1),
(461, 'Wiedza o Społeczeństwie', 'Biblioteka', NULL, '../img/pracownicy/2007/szoka.jpg', '2006/2007', 74),
(462, 'Matematyka', 'Przedmioty zawodowe', NULL, '../img/pracownicy/2007/bogdan.jpg', '2006/2007', 85),
(463, 'Matematyka', NULL, NULL, '../img/pracownicy/2007/czarnowicz.jpg', '2006/2007', 2),
(464, 'Matematyka', NULL, NULL, '../img/pracownicy/2007/grygiewicz.jpg', '2006/2007', 10),
(465, 'Fizyka', NULL, NULL, '../img/pracownicy/2007/dziakowski.jpg', '2006/2007', 11),
(466, 'Chemia', NULL, NULL, '../img/pracownicy/2007/malachwiej.jpg', '2006/2007', 83),
(467, 'Biologia', NULL, NULL, '../img/pracownicy/2007/grzesik.jpg', '2006/2007', 78),
(468, 'Geografia', NULL, NULL, '../img/pracownicy/2007/sobolewska.jpg', '2006/2007', 13),
(469, 'Edukacja dla bezpieczeństwa', 'Wychowanie fizyczne\r\n', NULL, '../img/pracownicy/2007/lech.jpg', '2006/2007', 14),
(470, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2007/potapczyk.jpg', '2006/2007', 15),
(471, 'Wychowanie fizyczne', NULL, NULL, '../img/pracownicy/2007/zubiel.jpg', '2006/2007', 68),
(472, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2007/mozyrski.jpg', '2006/2007', 16),
(473, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2007/czechowicz.jpg', '2006/2007', 86),
(474, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2007/skowronska.jpg', '2006/2007', 87),
(475, 'Przedmioty zawodowe', 'Praktyczna nauka zawodu', NULL, '../img/pracownicy/2007/sobolewski.jpg', '2006/2007', 54),
(476, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2007/szymaniuk.jpg', '2006/2007', 18),
(477, 'Katecheza', NULL, NULL, '../img/pracownicy/2007/giemza.jpg', '2006/2007', 61),
(478, 'Katecheza', NULL, NULL, '../img/pracownicy/2007/grygiewiczx.jpg', '2006/2007', 62),
(479, 'Katecheza', NULL, NULL, '../img/pracownicy/2007/zalewskix.jpg', '2006/2007', 91),
(480, 'Pedagog szkolny\r\n', NULL, NULL, '../img/pracownicy/2007/garkowska.jpg', '2006/2007', 24),
(481, 'Sekretariat', NULL, NULL, '../img/pracownicy/2007/turowskacz.jpg', '2006/2007', 76),
(482, 'Sekretariat', NULL, NULL, '../img/pracownicy/2007/turowskau.jpg', '2006/2007', 88),
(483, 'Księgowość', NULL, NULL, '../img/pracownicy/2007/bakun.jpg', '2006/2007', 26),
(484, 'Księgowość', NULL, NULL, '../img/pracownicy/2007/zamojtuk.jpg', '2006/2007', 34),
(485, 'Księgowość', NULL, NULL, '../img/pracownicy/2007/sarosiek.jpg', '2006/2007', 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_polish_ci NOT NULL,
  `body` text COLLATE utf8mb4_polish_ci NOT NULL,
  `post_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `body`, `post_data`) VALUES
(2, 'nastepny posrt ', '16 kwietnia 2019 roku na hali przy Zespole Szkół w Sokółce odbyły się XX Mistrzostwa Szkół Ponadgimnazjalnych Powiatu Sokólskiego w Ortografii. W konkursie wzięło udział czworo uczniów Zespołu Szkół Zawodowych w Sokółce: Kamila Borys, Amelia Doroszkiewicz (obie I T), Klaudia Łysik i Marcin Strzałkowski (oboje II Tfi). Jak pozostałych 23 uczestników zmagali się z bardzo trudnym dyktandem pt. \"Sportowe igrzyska\", a na koniec wszyscy otrzymali dyplomy uczestnictwa.\r\n\r\nOpiekę nad uczniami sprawowała pani Jolanta Siemieniako.', '2019-04-22 15:16:35'),
(3, 'HAHAHAH jezfasdf ', '16 kwietnia 2019 roku na hali przy Zespole Szkół w Sokółce odbyły się XX Mistrzostwa Szkół Ponadgimnazjalnych Powiatu Sokólskiego w Ortografii. W konkursie wzięło udział czworo uczniów Zespołu Szkół Zawodowych w Sokółce: Kamila Borys, Amelia Doroszkiewicz (obie I T), Klaudia Łysik i Marcin Strzałkowski (oboje II Tfi). Jak pozostałych 23 uczestników zmagali się z bardzo trudnym dyktandem pt. \"Sportowe igrzyska\", a na koniec wszyscy otrzymali dyplomy uczestnictwa.\r\n\r\nOpiekę nad uczniami sprawowała pani Jolanta Siemieniako.', '2019-04-22 15:16:44'),
(5, 'HAHAHAH jezfasdf adsf21', '16 kwietnia 2019 roku na hali przy Zespole Szkół w Sokółce odbyły się XX Mistrzostwa Szkół Ponadgimnazjalnych Powiatu Sokólskiego w Ortografii. W konkursie wzięło udział czworo uczniów Zespołu Szkół Zawodowych w Sokółce: Kamila Borys, Amelia Doroszkiewicz (obie I T), Klaudia Łysik i Marcin Strzałkowski (oboje II Tfi). Jak pozostałych 23 uczestników zmagali się z bardzo trudnym dyktandem pt. \"Sportowe igrzyska\", a na koniec wszyscy otrzymali ', '2019-04-21 22:00:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samorzad`
--

CREATE TABLE `samorzad` (
  `id` int(11) NOT NULL,
  `imie` varchar(255) COLLATE ucs2_polish_ci DEFAULT NULL,
  `klasa` varchar(10) COLLATE ucs2_polish_ci DEFAULT NULL,
  `rok` varchar(10) COLLATE ucs2_polish_ci DEFAULT NULL,
  `stanowiskoID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_polish_ci;

--
-- Zrzut danych tabeli `samorzad`
--

INSERT INTO `samorzad` (`id`, `imie`, `klasa`, `rok`, `stanowiskoID`) VALUES
(1, 'Omar Szczęsnowicz', 'IV Tfi', '2018/2019', 1),
(2, 'Paulina Żukiewicz', 'II Tfi', '2018/2019', 2),
(3, 'Natalia Paszko', 'II wz', '2018/2019', 3),
(4, 'Monika Nowik', 'IV Tfi', '2018/2019', 4),
(5, 'Wiktoria Czepiel', 'I T', '2018/2019', 4),
(6, 'Klaudia Łysik', 'II Tfi', '2018/2019', 5),
(7, 'Klaudia Biziuk ', 'IV Tfi', '2018/2019', 5),
(8, 'Magdalena Kunda', 'IV Tfi', '2018/2019', 5),
(9, 'Klaudia Pawełko', 'IV Tfi', '2018/2019', 5),
(10, 'Dominika Iwanowska', 'I T', '2018/2019', 5),
(11, 'Kamila Cholewska', 'I T', '2018/2019', 5),
(12, 'Wiktoria Czepiel', 'I T', '2018/2019', 5),
(13, 'Kacper Babynko', 'IV Tm', '2018/2019', 6),
(14, 'Mateusz Wiski', 'IV Tm', '2018/2019', 6),
(15, 'Paweł Olechno', 'III Tm', '2018/2019', 6),
(16, 'Patryk Rafalczuk', 'II Tfi', '2018/2019', 6),
(17, 'Maciej Kiemiesz', 'II Tm', '2018/2019', 6),
(18, 'Tomasz Paszko', 'III Tfi', '2018/2019', 7),
(19, 'Piotr Jacewicz', 'III Tm', '2018/2019', 7),
(20, 'Szymon Wąsowicz', 'III Tm', '2018/2019', 7),
(21, 'Michał Gojko', 'III Tm', '2018/2019', 7),
(22, 'Daniel Maksimczyk', 'II Tm', '2018/2019', 8),
(23, 'Łukasz Czajkowski', 'I wz', '2018/2019', 8),
(24, 'mgr Elwira Zabłocka', '', '2018/2019', 9),
(25, 'mgr Renata Maliszewska', '', '2018/2019', 9),
(26, 'Aneta Gojko ', 'IV Tfi', '2017/2018', 1),
(27, 'Omar Szczęsnowicz', 'III Tfi', '2017/2018', 2),
(28, 'Kamil Dutkiewicz', 'II wz', '2017/2018', 2),
(29, 'Karolina Jurczenia', 'IV Tfi', '2017/2018', 3),
(30, 'Monika Nowik', 'III Tfi', '2017/2018', 4),
(31, 'Monika Nowik', 'III Tfi', '2017/2018', 5),
(32, 'Klaudia Biziuk', 'III Tfi', '2017/2018', 5),
(33, 'Magdalena Kunda', 'III Tfi', '2017/2018', 5),
(34, 'Klaudia Pawełko', 'III Tfi', '2017/2018', 5),
(35, 'Kacper Babynko', 'III Tm', '2017/2018', 6),
(36, 'Mateusz Wiski', 'II Tm', '2017/2018', 6),
(37, 'Paweł Olechno', 'I Tm', '2017/2018', 6),
(38, 'Kamil Sołowiej', 'II Tfi', '2017/2018', 7),
(39, 'Maciej Kułak', 'III Tfi', '2017/2018', 7),
(40, 'Szymon Wąsowicz', 'II Tm', '2017/2018', 7),
(41, 'Kamil Kirpsza', 'I Tm', '2017/2018', 7),
(42, 'Maciej Kiemiesz', 'I Tm', '2017/2018', 7),
(43, 'Michał Gojko', 'II Tm', '2017/2018', 7),
(44, 'Paweł Borowik', 'IV Tm', '2017/2018', 8),
(45, 'Patryk Bułatewicz', 'IV Tm', '2017/2018', 8),
(46, 'mgr Renata Maliszewska', '', '2017/2018', 9),
(47, 'mgr Elwira Zabłocka', '', '2017/2018', 9),
(48, 'Aneta Gojko', 'III Tfi', '2016/2017', 1),
(49, 'Marta Grynczel', 'IV Tfi', '2016/2017', 2),
(50, 'Tomasz Paszko', 'I Tfi', '2016/2017', 3),
(51, 'Patrycja Maliszewska', 'IV Tfi', '2016/2017', 4),
(52, 'Monika Nowik', 'II Tfi', '2016/2017', 5),
(53, 'Klaudia Biziuk', 'II Tfi', '2016/2017', 5),
(54, 'Magdalena Kunda', 'II Tfi', '2016/2017', 5),
(55, 'Kacper Babynko', 'II Tm', '2016/2017', 6),
(56, 'Szymon Szlachta', 'II Tm', '2016/2017', 6),
(57, 'Patryk Sawoń', 'II Tm', '2016/2017', 6),
(58, 'Wojciech Chociej', 'I Tm', '2016/2017', 7),
(59, 'Adrian Jakimik', 'I Tm', '2016/2017', 7),
(60, 'Szymon Wąsowicz', 'I Tm', '2016/2017', 7),
(61, 'Angelika Szulewska', 'III Tfi', '2016/2017', 8),
(62, 'mgr Renata Maliszewska', '', '2016/2017', 9),
(63, 'mgr Elwira Zabłocka', '', '2016/2017', 9),
(64, 'Aneta Gojko', 'II Tfi', '2015/2016', 1),
(65, 'Adrian Macutkiewicz', 'IV Tm', '2015/2016', 2),
(66, 'Karolina Jurczenia', 'II Tfi', '2015/2016', 3),
(67, 'Monika Nowik', 'I Tfi', '2015/2016', 4),
(68, 'Angelika Szulewska', 'II Tfi', '2015/2016', 5),
(69, 'Klaudia Biziuk', 'I Tfi', '2015/2016', 5),
(70, 'Magdalena Kunda', 'I Tfi', '2015/2016', 5),
(71, 'Dominika Beczyńska', 'V Tfi', '2015/2016', 5),
(72, 'Dominika Pużuk', 'V Tfi', '2015/2016', 5),
(73, 'Michał Kozłowski', 'I Tm', '2015/2016', 6),
(74, 'Krystian Białous', 'I Tm', '2015/2016', 6),
(75, 'Patycja Maliszewska', 'III Tfi', '2015/2016', 6),
(76, 'Marcin Fiedorczyk', 'II Tfi', '2015/2016', 7),
(77, 'Paweł Laskowski ', 'IV Tm', '2015/2016', 7),
(78, 'Paweł Klimuk', 'IV Tm', '2015/2016', 7),
(79, 'Gabriela Dowgiert', 'III Tfi', '2015/2016', 8),
(80, 'Ewelina Zielenkiewicz', 'III Tfi', '2015/2016', 8),
(81, 'mgr Renata Maliszewska', '', '2015/2016', 9),
(82, 'mgr Elwira Zabłocka', '', '2015/2016', 9),
(83, 'Julia Kułak', 'III Tfi', '2014/2015', 1),
(84, 'Aneta Gojko', 'I Tf', '2014/2015', 2),
(85, 'Dawid  Czajkowski', 'III Tm', '2014/2015', 3),
(86, 'Edyta Aniśko', 'III Tfi', '2014/2015', 4),
(87, 'Dominika Beczyńska', 'III Tfi', '2014/2015', 5),
(88, 'Dominika Pużuk', 'III Tfi', '2014/2015', 5),
(89, 'Edyta Kucharewicz ', 'III Tfi', '2014/2015', 5),
(90, 'Paula Dziedzicka', 'III Tfi', '2014/2015', 5),
(91, 'Joanna Narel', 'III Tfi', '2014/2015', 5),
(92, 'Karolina Sieminiako', 'I Tfi', '2014/2015', 6),
(93, 'Ewa Bondaryk', 'I wz', '2014/2015', 6),
(94, 'Monika Wysocka', 'I wz', '2014/2015', 6),
(95, 'Kamila Kisiel', 'II Tfi', '2014/2015', 6),
(96, 'Gabriela Dowgiert', 'II Tfi', '2014/2015', 6),
(97, 'Piotr Daszuta', 'II Tm', '2014/2015', 7),
(98, 'Marek Klejbuk', 'IV Tm', '2014/2015', 7),
(99, 'Łukasz Hołownia ', 'IV Tm', '2014/2015', 7),
(100, 'Grzegorz Doroszkiewicz', 'IV Tm', '2014/2015', 7),
(101, 'Patryk Gieniusz', 'IV Tm', '2014/2015', 7),
(102, 'Paweł Laskowski', 'III Tm', '2014/2015', 8),
(103, 'Paweł Klimiuk', 'III Tm', '2014/2015', 8),
(104, 'mgr Renata Maliszewska', '', '2014/2015', 9),
(105, 'mgr Aneta Tymińska', '', '2014/2015', 9),
(106, 'Julia Kułak', 'II Tfi', '2013/2014', 1),
(107, 'Dawid Czajkowski', 'I Tm', '2013/2014', 2),
(108, 'Patryk Gieniusz ', 'III Tm', '2013/2014', 3),
(109, 'Edyta Aniśko', 'II Tfi', '2013/2014', 4),
(110, 'Dominika Beczyńska', 'II Tfi', '2013/2014', 5),
(111, 'Karolina Krawczyk', 'II Tfi', '2013/2014', 5),
(112, 'Marek Klejbuk', 'III Tm', '2013/2014', 5),
(113, 'Grzegorz Doroszkiewicz', 'III Tm', '2013/2014', 5),
(114, 'Iza Szamreto', 'II Tfi', '2013/2014', 5),
(115, 'Patryk Gieniusz', 'III Tm', '2013/2014', 5),
(116, 'Norman Hećman', 'I Tfi', '2013/2014', 7),
(117, 'Kamil Iwaszkiewicz', 'I Tm', '2013/2014', 7),
(118, 'Gabriela Dowgiert', 'I Tfi', '2013/2014', 6),
(119, 'Tomasz Fiłonowicz', 'I Tm', '2013/2014', 6),
(120, 'Rafał Andruszkiewicz', 'I Tm', '2013/2014', 6),
(121, 'Maciej Burniewicz', 'III Tm', '2013/2014', 8),
(122, 'mgr Renata Maliszewska', '', '2013/2014', 9),
(123, 'mgr Aneta Tymińska', '', '2013/2014', 9),
(124, 'Karolina Drożdżewicz', 'III Lpi', '2012/2013', 1),
(125, 'Maciej Burniewicz ', 'II Tm', '2012/2013', 2),
(126, 'Małgorzata Borys', 'III Lpi', '2012/2013', 3),
(127, 'Monika Jacewicz', 'III Lpi', '2012/2013', 4),
(128, 'Adrian Jopich', 'III Tm', '2012/2013', 4),
(129, 'Patryk Gieniusz', 'II Tm', '2012/2013', 5),
(130, 'Patryk Wojszel', 'II Tm', '2012/2013', 5),
(131, 'Iwona Bućko', 'III Lpi', '2012/2013', 5),
(132, 'Paulina Kondrat', 'III Lpi', '2012/2013', 5),
(133, 'Mateusz Czepiel ', 'II Tm', '2012/2013', 5),
(134, 'Mateusz Czepiel', 'II Tm', '2012/2013', 5),
(135, 'Rafał Dzienis', 'IV Tma', '2012/2013', 7),
(136, 'Emil Jackiewicz', 'IVTm', '2012/2013', 7),
(137, 'Julia Kułak', 'I Tfi', '2012/2013', 7),
(138, 'Edyta Aniśko', 'I Tfi', '2012/2013', 7),
(139, 'Paweł Kilimuk', 'I Tm', '2012/2013', 6),
(140, 'Paweł Kaskowski', 'I Tm', '2012/2013', 6),
(141, 'Dawid Jurkowski', 'IV Tmb', '2012/2013', 6),
(142, 'Rafał Orpik', 'III Tm', '2012/2013', 8),
(143, 'mgr Renata Maliszewska', '', '2012/2013', 9),
(144, 'mgr Aneta Tymińska', '', '2012/2013', 9),
(145, 'Monika Damszel', 'III Lpi', '2011/2012', 1),
(146, 'Paulina Kondrat ', 'II Lpi', '2011/2012', 2),
(147, 'Marcin Górski', 'IV Tm', '2011/2012', 3),
(148, '\r\nMarta Taudul', 'III Lpi', '2011/2012', 4),
(149, 'Adrian Jopich', 'II Tm', '2011/2012', 4),
(150, 'Paulina Gardziejczyk', 'III Lpi', '2011/2012', 5),
(151, 'Urszula Dowgier', 'III Lpi', '2011/2012', 5),
(152, 'Aniela Krawiel', 'III Lpi', '2011/2012', 5),
(153, 'Karolina Drożdżewicz', 'III Lpi', '2011/2012', 5),
(154, 'Dawid Kaźmierowicz', 'IV Tm', '2011/2012', 7),
(155, 'Emil Jackiewicz', 'III Tm', '2011/2012', 7),
(156, 'Marcin Woronowicz', 'IV Tm', '2011/2012', 7),
(157, 'Rafał Dzienis', 'III Tma', '2011/2012', 7),
(158, 'Paweł Wierzbicki', 'II Lpi', '2011/2012', 6),
(159, 'Paulina Safarowicz', 'III Lpi', '2011/2012', 6),
(160, 'Małgorzata Borys', 'II Lpi', '2011/2012', 6),
(161, 'Ewelina Nowik', 'II Lpi', '2011/2012', 6),
(162, 'Edyta Lingo', 'III Lpi', '2011/2012', 8),
(163, 'Rafał Orpik', 'II Tm', '2011/2012', 8),
(164, 'mgr Renata Maliszewska', '', '2011/2012', 9),
(165, 'mgr Aneta Tymińska', '', '2011/2012', 9),
(167, 'Magdalena Acewicz', 'III Lpi', '2010/2011', 1),
(168, 'Monika Damszel', 'II Lpi', '2010/2011', 2),
(169, 'Ewa Mozolewska', 'III Lpi', '2010/2011', 3),
(170, 'Marta Taudul', 'II Lpi', '2010/2011', 4),
(171, 'Dawid Birkos', 'II Lpi', '2010/2011', 4),
(172, 'Marlena Pawełko', 'IV Te', '2010/2011', 5),
(173, 'Marlena Aniśko', 'IV Te', '2010/2011', 5),
(174, 'Magdalena Szydłowska', 'IV Te', '2010/2011', 5),
(175, 'Paulina Gardziejczyk', 'II Lpi', '2010/2011', 5),
(176, 'Edyta Lingo', 'II Lpi', '2010/2011', 5),
(177, 'Karolina Drożdżewicz', 'I Lpi', '2010/2011', 5),
(178, 'Paulina Kondrat', 'I Lpi', '2010/2011', 5),
(179, 'Patryk Puziuk', 'IV Td', '2010/2011', 7),
(180, 'Dawid Kaźmierowicz', 'III Tm', '2010/2011', 7),
(181, 'Marcin Woronowicz', 'III Tm', '2010/2011', 7),
(182, 'Rafał Dzienis', 'II Tma', '2010/2011', 7),
(183, 'Katarzyna Kasiukiewicz', 'III Lpi', '2010/2011', 6),
(184, 'Natalia Chwiedźko', 'III Lpi', '2010/2011', 6),
(185, 'Gabriela Tomaszycka', 'III Lpi', '2010/2011', 6),
(186, 'Piotr Czarnecki', 'IV Td', '2010/2011', 6),
(187, 'Paulina Kisiel', 'II Lpi', '2010/2011', 6),
(188, 'Paweł Skórski', 'IV Tm', '2010/2011', 8),
(189, 'Adam Hrynkiewicz', 'IV Tm', '2010/2011', 8),
(190, 'mgr Renata Maliszewska', '', '2010/2011', 9),
(191, 'mgr Grzegorz Zalewski', '', '2010/2011', 9),
(192, 'Bogusława Borys', 'IV Te', '2009/2010', 1),
(193, 'Magdalena Acewicz', 'II Lpi', '2009/2010', 2),
(194, 'Ewa Mozolewska', 'II Lpi', '2009/2010', 3),
(195, 'Katarzyna Kasiukiewicz', 'II Lpi', '2009/2010', 4),
(196, 'Natalia Chwiedźko', 'II Lpi', '2009/2010', 4),
(197, 'Marlena Pawełko', 'III Te', '2009/2010', 5),
(198, 'Monika Miltyk', 'III Te', '2009/2010', 5),
(199, 'Marlena Aniśko', 'III Te', '2009/2010', 5),
(200, 'Magdalena Szydłowska', 'III Te', '2009/2010', 5),
(201, 'Paulina Gardziejczyk ', 'I Lpi', '2009/2010', 5),
(202, 'Piotr Czarnecki', 'III Td', '2009/2010', 7),
(203, 'Patryk Puziuk', 'III Td', '2009/2010', 7),
(204, 'Maciej Puciłowski', 'III Td', '2009/2010', 7),
(205, 'Dawid Kaźmierowicz', 'II Tm', '2009/2010', 7),
(206, 'Marcin Woronowicz', 'II Tm', '2009/2010', 7),
(207, 'Karol Pacuk', 'IV Tm', '2009/2010', 6),
(208, 'Ewa Maciejczyk', 'III Lpi', '2009/2010', 6),
(209, 'Gabriela Tomaszycka', 'II Lpi', '2009/2010', 6),
(210, 'Monika Damszel', 'I Lpi', '2009/2010', 6),
(211, 'Diana Murmyło', 'I Lpi', '2009/2010', 6),
(212, 'Paulina Kisiel', 'II Lpi', '2009/2010', 6),
(213, 'Kamil Woronowicz', 'II Lpi', '2009/2010', 6),
(214, 'Paulina Szumowska', 'II Lpi', '2009/2010', 6),
(215, 'Paweł Skórski ', 'III Tm', '2009/2010', 8),
(216, 'Agnieszka Pul ', 'I Lpi', '2009/2010', 8),
(217, 'mgr Iwona Skowrońska', '', '2009/2010', 9),
(218, 'mgr Klaudia Adrianna Kmon-Ciuruk', '', '2009/2010', 9),
(219, 'Bogusława Borys', 'III Te', '2008/2009', 1),
(220, 'Dawid Kazimierowicz ', 'I Tm', '2008/2009', 2),
(221, 'Martyna Śliż', 'III Te', '2008/2009', 4),
(222, 'Damian Rygasiewicz', 'III Te', '2008/2009', 6),
(223, 'Ewa Lingo', 'II Lpi', '2008/2009', 6),
(224, 'Edyta Cilulko', 'III Lpi', '2008/2009', 6),
(225, 'Radosław Dowgiert', 'II Td', '2008/2009', 7),
(226, 'Piotr Józefowicz', 'II Td', '2008/2009', 7),
(227, 'Maciej Puciłowski', 'II Td', '2008/2009', 7),
(228, 'Ewelina Banaś', 'III Te', '2008/2009', 5),
(229, 'Żaneta Gejdel ', 'III Te', '2008/2009', 5),
(230, 'Bogusława Borys', 'III Te', '2008/2009', 5),
(231, 'Martyna Śliż', 'III Te', '2008/2009', 5),
(232, 'Magdalena Rećko ', 'III Te', '2008/2009', 5),
(233, 'Monika Czaplińska', 'II Lpi', '2008/2009', 5),
(234, 'Tomasz Olszewski', 'III Tm', '2008/2009', 10),
(235, 'Łukasz Sokołowski ', 'I Lpi', '2008/2009', 10),
(236, 'Mariusz Woronowicz', 'I Tm', '2008/2009', 10),
(237, 'Piotr Sławiński', 'II Tm', '2008/2009', 10),
(238, 'Paweł Skórski', 'II Tm', '2008/2009', 8),
(239, 'Łukasz Bielecki', 'IV Te', '2008/2009', 8),
(240, 'Małgorzata Woronowicz', 'III Lpi', '2008/2009', 8),
(241, 'mgr Iwona Skowrońska-Klimowicz', '', '2008/2009', 9),
(242, 'mgr Klaudia Adrianna Kmon-Ciuruk', '', '2008/2009', 9),
(243, 'Beata Harasimowicz', 'IV Te', '2007/2008', 1),
(244, 'Bogusława Borys', 'II Te', '2007/2008', 2),
(245, 'Martyna Śliż', 'II Te', '2007/2008', 4),
(246, 'Julita Błahuszewska ', 'I Te', '2007/2008', 3),
(247, 'Paweł Glebowicz', 'III Td', '2007/2008', 6),
(248, 'Tomasz Lis', 'II Tm', '2007/2008', 6),
(249, 'Patrycja Sobolewska', 'III Lpia', '2007/2008', 5),
(250, 'Natalia Małachwiej', 'III Lpia', '2007/2008', 5),
(251, 'Ewa Lingo', 'I Lpi', '2007/2008', 5),
(252, 'Monika Jaźwińska', 'I Te', '2007/2008', 5),
(253, 'Agnieszka Bułkowska', 'IV Te', '2007/2008', 5),
(254, 'Izabela Dźwil', 'IV Te', '2007/2008', 5),
(255, 'Małgorzata Sujeta', 'III Lpib', '2007/2008', 5),
(256, 'Karol Puszko', 'IV Te', '2007/2008', 11),
(257, 'Agnieszka Czarnowicz', 'III Te', '2007/2008', 11),
(258, 'Damian Rygasiewicz', 'II Te', '2007/2008', 7),
(259, 'Paweł Zajczyk', 'III Td', '2007/2008', 7),
(260, 'Łukasz Bielecki', 'III Te', '2007/2008', 8),
(261, 'Małgorzata Woronowicz', 'II Lpi', '2007/2008', 8),
(262, 'mgr Iwona Skowrońska-Klimowicz', '', '2007/2008', 9),
(263, 'mgr Klaudia Kmon-Ciuruk', '', '2007/2008', 9),
(264, ' mgr Małgorzata Krawiel', '', '2007/2008', 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowiska`
--

CREATE TABLE `stanowiska` (
  `stanowiskoID` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE ucs2_polish_ci DEFAULT NULL,
  `img` varchar(255) COLLATE ucs2_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_polish_ci;

--
-- Zrzut danych tabeli `stanowiska`
--

INSERT INTO `stanowiska` (`stanowiskoID`, `nazwa`, `img`) VALUES
(1, 'Przewodniczący', '../img/static/przewodniczacy.png'),
(2, 'Wiceprzewodniczący', '../img/static/viceprzewodniczacy.png'),
(3, 'Skarbnik', '../img/static/skarbnik.png'),
(4, 'Protokolant/Sekretarz', '../img/static/protocol.png'),
(5, 'Sekcja dekoracyjna', '../img/static/dekoracja.png'),
(6, 'Sekcja kulturalno-rozrywkowa', '../img/static/kulturowa.jpg'),
(7, 'Sekcja gospodarcza', '../img/static/gospodarcza.png'),
(8, 'Sekcja skarg, wniosków i życzeń', '../img/static/skargi.png'),
(9, 'Opiekun Samorządu Szkolnego', '../img/static/opiekun.png'),
(10, 'Sekcja Techniczna', '../img/static/technik.jpg'),
(11, 'Sekcja Naukowa', '../img/static/science.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `teag_name` char(100) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `tags`
--

INSERT INTO `tags` (`tag_id`, `teag_name`) VALUES
(1, 'sport'),
(2, 'wolontariat'),
(3, 'konkurs');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `conn`
--
ALTER TABLE `conn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_post` (`id_post`),
  ADD KEY `id_tag` (`id_tag`);

--
-- Indeksy dla tabeli `emploees`
--
ALTER TABLE `emploees`
  ADD PRIMARY KEY (`teacherID`);

--
-- Indeksy dla tabeli `imagegroup`
--
ALTER TABLE `imagegroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_image` (`id_image`);

--
-- Indeksy dla tabeli `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indeksy dla tabeli `klasy`
--
ALTER TABLE `klasy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`positionID`),
  ADD KEY `teacherID` (`teacherID`);

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indeksy dla tabeli `samorzad`
--
ALTER TABLE `samorzad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stanowiskoID` (`stanowiskoID`);

--
-- Indeksy dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  ADD PRIMARY KEY (`stanowiskoID`);

--
-- Indeksy dla tabeli `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `conn`
--
ALTER TABLE `conn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `emploees`
--
ALTER TABLE `emploees`
  MODIFY `teacherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT dla tabeli `imagegroup`
--
ALTER TABLE `imagegroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `klasy`
--
ALTER TABLE `klasy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT dla tabeli `positions`
--
ALTER TABLE `positions`
  MODIFY `positionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `samorzad`
--
ALTER TABLE `samorzad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  MODIFY `stanowiskoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `conn`
--
ALTER TABLE `conn`
  ADD CONSTRAINT `conn_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `posts` (`post_id`),
  ADD CONSTRAINT `conn_ibfk_2` FOREIGN KEY (`id_tag`) REFERENCES `tags` (`tag_id`);

--
-- Ograniczenia dla tabeli `imagegroup`
--
ALTER TABLE `imagegroup`
  ADD CONSTRAINT `imagegroup_ibfk_1` FOREIGN KEY (`id_image`) REFERENCES `images` (`image_id`);

--
-- Ograniczenia dla tabeli `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_ibfk_1` FOREIGN KEY (`teacherID`) REFERENCES `emploees` (`teacherID`);

--
-- Ograniczenia dla tabeli `samorzad`
--
ALTER TABLE `samorzad`
  ADD CONSTRAINT `samorzad_ibfk_1` FOREIGN KEY (`stanowiskoID`) REFERENCES `stanowiska` (`stanowiskoID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
