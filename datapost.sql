-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Kwi 2019, 12:35
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
(89, 'Stanisław Jakubowicz', 'ks. mgr');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `imageName` text COLLATE utf8mb4_polish_ci,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `images`
--

INSERT INTO `images` (`id`, `imageName`, `post_id`) VALUES
(6, '1553619571_Capture.PNG', 7),
(7, '1553619571_pasy.jpg', 7),
(8, '1553619764_33545915708_1a5cccf860_c.jpg', 8),
(9, '1553619764_46506568775_89f00d282d_c.jpg', 8),
(10, '1553619764_33545915408_e1babf3c7b_c.jpg', 8),
(11, '1553619764_46506569775_bb919bd7e5_c.jpg', 8),
(12, '1553619764_46506569905_48c0929e3d_c.jpg', 8),
(13, '1553619764_46506569945_c095e0ef6f_c.jpg', 8),
(14, '1553619764_46506569985_c5025ff3e3_c.jpg', 8),
(15, '1553619764_46506570025_90e41ebbed_c.jpg', 8),
(16, '1553619764_46506570035_ca28df56b0_c.jpg', 8),
(17, '1553619764_46506570115_00a4344853_c.jpg', 8),
(18, '1553619764_46506570195_36b6c152e2_c.jpg', 8),
(19, '1553619764_46506570215_72e5dc7d31_c.jpg', 8),
(20, '1553619764_46506570325_29dd021be3_c.jpg', 8),
(21, '1553619764_46506570355_69c9754b77_c.jpg', 8),
(22, '1553619764_46506570555_96abf6e71b_c.jpg', 8),
(23, '1553619764_46506570625_9151b1bc43_c.jpg', 8),
(24, '1553619764_46506570715_dc0dbca9f4_c.jpg', 8),
(25, '1553619764_46506570825_5c44e008a5_c.jpg', 8),
(26, '1553619764_46698668714_5fe72a9b68_c.jpg', 8),
(27, '1553619764_46506570915_2b6583312a_c.jpg', 8),
(28, '1553619764_46698668824_7baa0345ba_c.jpg', 8),
(29, '1553619765_46698668944_0982c9503d_c.jpg', 8),
(30, '1553619765_46698669094_ba2f591f14_c.jpg', 8),
(31, '1553619765_46698669034_d9596d5b62_c.jpg', 8),
(32, '1553619765_47421832011_dbf9b49353_c.jpg', 8),
(33, '1553619765_47421831981_ecedcbaaf1_c.jpg', 8),
(34, '1553619765_47421832071_e87ba46483_c.jpg', 8),
(35, '1553619765_47421832221_4e236bde38_c.jpg', 8),
(36, '1553619765_47421833141_bd10cf9276_c.jpg', 8),
(37, '1553619765_47421833251_69b504dcdb_c.jpg', 8),
(38, '1553619765_47421833391_041401036e_c.jpg', 8),
(39, '1553619765_47421833521_bea94f4ae7_c.jpg', 8),
(40, '1553619765_47421833591_7edc6fede1_c.jpg', 8),
(41, '1553619765_47421833661_d5e3b440b1_c.jpg', 8);

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
(368, 'Język polski', '', NULL, '../img/pracownicy/2009/kazmierowicz.jpg', '2008/2009', 37),
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
(405, 'Księgowość', NULL, NULL, '../img/pracownicy/2009/zamojtuk.jpg', '2008/2009', 34);

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
(7, 'III Liga Futsalu', '<p>W dniu 15 marca 2019 roku w Wysokim Mazowieckim odbyła się czwarta kolejka III Ligi Futsalu Szkół Ponadgimnazjalnych Województwa Podlaskiego. Zespół Szkół Zawodowych w Sokółce w pierwszym pojedynku zmierzył się z gospodarzem turnieju, Centrum Kształcenia Zawodowego Wysokie Mazowieckie. Mecz rozpoczął się od ataków gospodarzy, ale to ZSZ w Sokółce strzelił pierwszego gola, aby po niespełna 6 minutach gry prowadzić już różnicą dwóch bramek. Nasi zawodnicy wiedzieli, że taki wynik to jeszcze nie wygrana, więc musieliśmy się skupić zarówno na ofensywie jak i defensywie. Pierwsza połowa zakończyła się wynikiem 3:1 dla naszego zespołu. Druga połowa również była bardzo emocjonująca i walki w niej nie mogło zabraknąć. Gospodarze zachęceni oklaskami swoich kibiców zdołali doprowadzić do remisu. Na 4 minuty przed zakończeniem spotkania został wzięty \"czas\", aby uspokoić grę. Opłaciło się to, bo w końcowych minutach zdołaliśmy strzelić jeszcze 2 gole i mecz zakończył się wynikiem 5:3 dla naszej drużyny. W drugim spotkaniu przyszło nam się zmierzyć z faworytami ligi, zespołem ZS Centrum Kształcenia Rolniczego Sejny. Niestety wyrównana walka toczyła się jedynie przez pierwsze 15 minut gry. Doświadczenie drużyny z Sejn, gdzie zawodnicy grają na co dzień w profesjonalnych zespołach była zbyt duża, aby nawiązać wyrównana grę. Tym razem musieliśmy uznać gorycz porażki, ulegając renomowanemu rywalowi.</p><br/>\n\n<p>Rafał Kozłowski, Omar Szczęsnowicz (obaj IV Tfi), Marek Łowczecki (IV Tm), Szymon Wąsowicz (III Tm), Dariusz Łowczecki, Kamil Maksimczyk (obaj II Tm), Sebastian Krempa (II wz), Mateusz Bartulewicz, Daniel Maksimczyk (obaj I T), Hubert Kazarez (I wz).</p>', '2019-03-26 16:59:31'),
(8, 'Wizyta uczniów klasy VIII D Szkoły Podstawowej nr 1 w Sokółce', '15 marca 2019 roku Zespół Szkół Zawodowych im. Elizy Orzeszkowej w Sokółce odwiedzili uczniowie klasy VIII D ze Szkoły Podstawowej Nr 1 w Sokółce wraz z doradcą zawodowym, panią Martą Doroszkiewicz. Pan dyrektor Grzegorz Zalewski wraz z kierownikiem Pracowni Ćwiczeń Technicznych Panem Mirosławem Osialem przedstawili uczniom ofertę edukacyjną szkoły, realizowane projekty praktyk zagranicznych na Malcie i praktyk krajowych w ramach programu \"Kompetentni i wykwalifikowani\".</br>\n\nUczniowie zwiedzili pracownie przedmiotowe i zawodowe oraz powstającą pracownię obrabiarek sterowanych numerycznie (CNC), gdzie pan Jerzy Szymaniuk przeprowadził krótkie warsztaty komputerowego rysunku i modelowania. Z wielkim zaangażowaniem uczniowie, szczególnie dziewczyny uczestniczyli w warsztatach tworzenia kul do kąpieli. Chętne osoby mogły skorzystać z wybranych zabiegów fryzjerskich, korzystając z uprzejmości naszych dziewczyn z klas fryzjerskich i nauczycielek przedmiotów zawodowych kierunku technik usług fryzjerskich: pań Elwiry Zabłockiej i Karoliny Roszkowskiej. Bardzo dziękujemy uczniom klasy VIII D i pani Marcie Doroszkiewicz za przybycie do naszej szkoły i zapoznanie się z jej ofertą.</br>', '2019-03-26 17:02:44');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(10) NOT NULL,
  `login` varchar(255) NOT NULL,
  `haslo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rejestracja` int(10) NOT NULL,
  `logowanie` int(10) NOT NULL,
  `ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `login`, `haslo`, `email`, `rejestracja`, `logowanie`, `ip`) VALUES
(1, 'admin', 'admin', 'admin@admin.pl', 1357063200, 1357063200, '127.0.0.1');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `emploees`
--
ALTER TABLE `emploees`
  ADD PRIMARY KEY (`teacherID`);

--
-- Indeksy dla tabeli `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

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
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `emploees`
--
ALTER TABLE `emploees`
  MODIFY `teacherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT dla tabeli `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT dla tabeli `positions`
--
ALTER TABLE `positions`
  MODIFY `positionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`);

--
-- Ograniczenia dla tabeli `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_ibfk_1` FOREIGN KEY (`teacherID`) REFERENCES `emploees` (`teacherID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;