-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Mar 2019, 10:27
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.3.1

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
(63, 'Mariusz Zabłocki ', 'ks. mgr'),
(64, 'Filip Zdrodowski', 'ks. mgr'),
(65, 'Tomasz Leszkowicz', 'mgr'),
(66, 'Bożena Marcińczyk', 'mgr'),
(67, 'Piotr Żywno', 'ks. mgr'),
(68, 'Grzegorz Zubiel', 'mgr'),
(69, 'Małgorzata Anna Krawiel', 'mgr'),
(70, 'Ryszard Kozioł', 'ks. mgr');

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
(117, 'Przedmioty zawodowe', NULL, NULL, '../img/pracownicy/2016/Nauczyciel6.jpg', '2015/2016', 30),
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
(192, 'Księgowość', NULL, NULL, '../img/pracownicy/2014/Basia.jpg', '2013/2014', 34);

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
  MODIFY `teacherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT dla tabeli `positions`
--
ALTER TABLE `positions`
  MODIFY `positionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

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
