-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Lut 2019, 13:15
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
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf16_polish_ci,
  `body` text COLLATE utf16_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`post_id`, `post_data`, `title`, `body`) VALUES
(10, '2018-11-01 11:16:30', 'Spotkanie z rodzicami uczestników projektu \"Staze zagraniczne szansa na lepsze jutro\"', 'Przygotowania uczniów Zespolu Szkól Zawodowych w Sokólce do wyjazdu na staze, które odbeda na Malcie w ramach projektu \"Ponadnarodowa mobilnosc uczniów i absolwentów oraz kadry ksztalcenia zawodowego\", Program Operacyjny Wiedza Edukacja Rozwój 2014-2020 wspólfinansowany z Europejskiego Funduszu Spolecznego, \"Staze zagraniczne szansa na lepsze jutro\", nabieraja tempa. Podczas spotkania uczestników projektu wraz z rodzicami koordynatorzy przekazali informacje na temat projektu. Omówiono równiez sprawy podrózy i pobytu na Malcie. Na zakonczenie spotkania uczestnicy podpisali umowy przystapienia do projektu.'),
(11, '2018-11-12 11:17:01', 'Ogloszenie o naborze kandydatów na zajecia dodatkowe podnoszace kompetencje kluczowe oraz dodatkowe zajecia wyrównawcze z przedmiotów ogólnoksztalcacych i zawodowych w ramach projektu  				pn. „Kompetentni i wykwalifikowani” – II edycja', 'zajecia dodatkowe podnoszace kompetencje kluczowe z jezyka angielskiego,\n				zajecia dodatkowe podnoszace kompetencje kluczowe w zakresie narzedzi technologii informacyjno – komunikacyjnych (ICT),\n				dodatkowe zajecia wyrównawcze z przedmiotów ogólnoksztalcacych,\n				dodatkowe zajecia wyrównawcze z  przedmiotów zawodowych.\n				W naborze moga wziac udzial uczniowie szkól i placówek systemu oswiaty, dla których organem prowadzacym jest Powiat Sokólski, prowadzace ksztalcenie zawodowe,  tj. Zespól Szkól Zawodowych im. Elizy Orzeszkowej w Sokólce, Zespól Szkól Rolniczych im. mjr Henryka Dobrzanskiego – Hubala w Sokólce, Zespól Szkól w Dabrowie Bialostockiej, Zespól Szkól w Suchowoli oraz Specjalny Osrodek Szkolno – Wychowawczy im. Janusza Korczaka w Sokólce, spelniajacy warunki udzialu w projekcie okreslone Regulaminem rekrutacji i uczestnictwa w projekcie, stanowiacym zalacznik do uchwaly Nr 444/2018 Zarzadu Powiatu Sokólskiego z dnia 19 stycznia 2018 r. w sprawie przyjecia Regulaminu rekrutacji i uczestnictwa w projekcie pn. „Kompetentni i wykwalifikowani” wspólfinansowanego ze srodków Europejskiego Funduszu Spolecznego w ramach Regionalnego Programu Operacyjnego Województwa Podlaskiego  na lata 2014 – 2020, Os priorytetowa III Kompetencje i Kwalifikacje, Dzialanie 3.3 Ksztalcenie zawodowe mlodziezy na rzecz konkurencyjnosci podlaskiej gospodarki, Poddzialanie 3.3.1 Ksztalcenie zawodowe mlodziezy na rzecz konkurencyjnosci podlaskiej gospodarki – poza ZIT BOF, zmienionym uchwala Nr 459/2018 Zarzadu Powiatu Sokólskiego z dnia 21 lutego 2018 r. oraz uchwala Nr 528/2018 Zarzadu Powiatu Sokólskiego z dnia 29 sierpnia 2018 r.'),
(12, '2018-11-17 11:17:45', 'Ogloszenie o naborze kandydatów na zajecia dodatkowe podnoszace kompetencje kluczowe oraz dodatkowe zajecia wyrównawcze z przedmiotów ogólnoksztalcacych i zawodowych w ramach projektu  				pn. „Kompetentni i wykwalifikowani” – II edycja', 'W przeciwieństwie do rozpowszechnionych opinii, Lorem Ipsum nie jest tylko przypadkowym tekstem. Ma ono korzenie w klasycznej łacińskiej literaturze z 45 roku przed Chrystusem, czyli ponad 2000 lat temu! Richard McClintock, wykładowca łaciny na uniwersytecie Hampden-Sydney w Virginii, przyjrzał się uważniej jednemu z najbardziej niejasnych słów w Lorem Ipsum – consectetur – i po wielu poszukiwaniach odnalazł niezaprzeczalne źródło: Lorem Ipsum pochodzi z fragmentów (1.10.32 i 1.10.33) „de Finibus Bonorum et Malorum”, czyli „O granicy dobra i zła”, napisanej właśnie w 45 p.n.e. przez Cycerona. Jest to bardzo popularna w czasach renesansu rozprawa na temat etyki. Pierwszy wiersz Lorem Ipsum, „Lorem ipsum dolor sit amet...” pochodzi właśnie z sekcji 1.10.32.'),
(13, '2019-10-10 11:47:43', '<h3>sdffffffffffffffffffffff', '<h1>dfsdf</h1>'),
(14, '2018-11-12 12:47:45', 'sdffffffffffffffffffffff', 'sdfsdf'),
(15, '2018-12-13 12:47:46', 'sdffffffffffffffffffffff', 'sdfsdf'),
(18, '2018-11-12 21:26:39', 'asddsa', 'asdasd');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `PracownikID` int(11) NOT NULL,
  `Imie` varchar(255) COLLATE utf16_polish_ci NOT NULL,
  `Nazwisko` varchar(255) COLLATE utf16_polish_ci NOT NULL,
  `Wyksztalcenie` varchar(255) COLLATE utf16_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`PracownikID`, `Imie`, `Nazwisko`, `Wyksztalcenie`) VALUES
(1, 'Grzegorz', 'Zalewski', 'mgr'),
(2, 'Lech ', 'Czarnowicz', 'mgr'),
(3, 'Mirosław Wojciech', 'Osial', 'mgr inż.'),
(4, 'Iwona', 'Mackiewicz-Kowalczuk', 'mgr'),
(5, 'Anna', 'Tolko', 'mgr'),
(6, 'Klaudia', 'Kmon-Ciuruk', 'mgr'),
(7, 'Renata', 'Maliszewska', 'mgr'),
(8, 'Aneta', 'Tymińska', 'mgr'),
(9, 'Sylwester Leon', 'Pakuła', 'mgr'),
(10, 'Krystyna', 'Grygiewicz', 'mgr'),
(11, 'Piotr', 'Dziakowski', 'mgr inż.'),
(12, 'Elwira', 'Zabłocka', 'mgr'),
(13, 'Maria', 'Sobolewska', 'mgr'),
(14, 'Jolanta', 'Lech', 'mgr'),
(15, 'Tomasz', 'Potapczyk', 'mgr'),
(16, 'Marek', 'Mozyrski', 'mgr inż.'),
(17, 'Karolina', 'Roszkowska', NULL),
(18, 'Jerzy', 'Szymaniuk', 'mgr inż.'),
(19, 'Dariusz', 'Ciostek', NULL),
(20, 'Bernard', 'Jasielczuk', 'mgr'),
(21, 'Justyn', 'Jaroszuk', 'ks. mgr '),
(22, 'Tomasz', 'Łapiak', 'ks. mgr'),
(23, 'Jolanta Stanisława', 'Siemieniako', 'mgr'),
(24, 'Izabela', 'Garkowska', 'mgr'),
(25, 'Iwona', 'Sarosiek', 'mgr'),
(26, 'Lucyna', 'Bakun', NULL),
(27, 'Elwira', 'Zabłocka', 'mgr'),
(28, 'Elżbieta', 'Komła', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowiska`
--

CREATE TABLE `stanowiska` (
  `StanowiskoID` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf16_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `stanowiska`
--

INSERT INTO `stanowiska` (`StanowiskoID`, `nazwa`) VALUES
(1, 'Dyrektor'),
(2, 'Wicedyrektor'),
(3, 'Kierownik Pracowni Ćwiczeń Technicznych'),
(4, 'Język polski'),
(5, 'Język angielski'),
(6, 'Język rosyjski'),
(7, 'Historia'),
(8, 'Wiedza o Społeczeństwie'),
(9, 'Matematyka'),
(10, 'Fizyka'),
(11, 'Chemia'),
(12, 'Biologia'),
(13, 'Przedmioty zawodowe'),
(14, 'Geografia'),
(15, 'Podstawy przedsiębiorczości'),
(16, 'Wychowanie fizyczne'),
(17, 'Edukacja dla bezpieczeństwa'),
(18, 'Praktyczna nauka zawodu'),
(19, 'Katecheza'),
(20, 'Biblioteka'),
(21, 'Pedagog szkolny'),
(22, 'Sekretariat'),
(23, 'Księgowość'),
(24, 'Woźna'),
(26, 'Wiedza o Kulturze');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowiska_pracownikow`
--

CREATE TABLE `stanowiska_pracownikow` (
  `id` int(11) NOT NULL,
  `PracownikID` int(11) DEFAULT NULL,
  `StanowiskoID` int(11) DEFAULT NULL,
  `rok` varchar(10) COLLATE utf16_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `stanowiska_pracownikow`
--

INSERT INTO `stanowiska_pracownikow` (`id`, `PracownikID`, `StanowiskoID`, `rok`) VALUES
(6, 5, 4, '2018/2019'),
(9, 8, 5, '2018/2019'),
(10, 9, 7, '2018/2019'),
(12, 4, 26, '2018/2019'),
(13, 10, 9, '2018/2019'),
(14, 2, 9, '2018/2019'),
(15, 11, 10, '2018/2019'),
(16, 12, 11, '2018/2019'),
(17, 13, 14, '2018/2019'),
(18, 12, 12, '2018/2019'),
(19, 13, 15, '2018/2019'),
(22, 14, 16, '2018/2019'),
(23, 2, 13, '2018/2019'),
(24, 11, 13, '2018/2019'),
(26, 17, 13, '2018/2019'),
(27, 18, 13, '2018/2019'),
(28, 12, 13, '2018/2019'),
(29, 1, 13, '2018/2019'),
(30, 19, 18, '2018/2019'),
(33, 21, 19, '2018/2019'),
(34, 22, 19, '2018/2019'),
(36, 24, 21, '2018/2019'),
(40, 2, 2, '2018/2019'),
(41, 3, 3, '2018/2019'),
(42, 4, 4, '2018/2019'),
(44, 6, 5, '2018/2019'),
(45, 7, 6, '2018/2019'),
(48, 9, 8, '2018/2019'),
(52, 11, 10, '2018/2019'),
(53, 12, 11, '2018/2019'),
(55, 12, 12, '2018/2019'),
(57, 14, 17, '2018/2019'),
(58, 15, 16, '2018/2019'),
(61, 11, 13, '2018/2019'),
(62, 16, 13, '2018/2019'),
(65, 12, 13, '2018/2019'),
(68, 20, 18, '2018/2019'),
(69, 3, 13, '2018/2019'),
(72, 23, 20, '2018/2019'),
(74, 25, 22, '2018/2019'),
(75, 26, 23, '2018/2019'),
(76, 27, 23, '2018/2019'),
(77, 1, 1, '2018/2019');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`PracownikID`);

--
-- Indeksy dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  ADD PRIMARY KEY (`StanowiskoID`);

--
-- Indeksy dla tabeli `stanowiska_pracownikow`
--
ALTER TABLE `stanowiska_pracownikow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PracownikID` (`PracownikID`),
  ADD KEY `StanowiskoID` (`StanowiskoID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `PracownikID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  MODIFY `StanowiskoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT dla tabeli `stanowiska_pracownikow`
--
ALTER TABLE `stanowiska_pracownikow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `stanowiska_pracownikow`
--
ALTER TABLE `stanowiska_pracownikow`
  ADD CONSTRAINT `stanowiska_pracownikow_ibfk_1` FOREIGN KEY (`PracownikID`) REFERENCES `pracownicy` (`PracownikID`),
  ADD CONSTRAINT `stanowiska_pracownikow_ibfk_2` FOREIGN KEY (`StanowiskoID`) REFERENCES `stanowiska` (`StanowiskoID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
