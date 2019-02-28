-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Lut 2019, 20:46
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
  `PracownikID` int(11) NOT NULL,
  `StanowiskoID` int(11) NOT NULL,
  `rok` varchar(10) COLLATE ucs2_polish_ci DEFAULT NULL,
  `zdjecie` varchar(255) COLLATE ucs2_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_polish_ci;

--
-- Zrzut danych tabeli `stanowiska_pracownikow`
--

INSERT INTO `stanowiska_pracownikow` (`PracownikID`, `StanowiskoID`, `rok`, `zdjecie`) VALUES
(1, 1, '2018/2019', 'gz.jpg'),
(1, 13, '2018/2019', 'gz.jpg'),
(2, 2, '2018/2019', 'lc.jpg'),
(2, 9, '2018/2019', 'lc.jpg'),
(2, 13, '2018/2019', 'lc.jpg'),
(3, 3, '2018/2019', 'mwo.jpg'),
(4, 4, '2018/2019', 'imk.jpg'),
(4, 22, '2018/2019', 'is.jpg'),
(4, 26, '2018/2019', 'imk.jpg'),
(5, 4, '2018/2019', 'at.jpg'),
(6, 5, '2018/2019', 'kkc.jpg'),
(7, 6, '2018/2019', 'rm.jpg'),
(8, 5, '2018/2019', 'ta.jpg'),
(9, 7, '2018/2019', 'slp.jpg'),
(9, 8, '2018/2019', 'slp.jpg'),
(10, 9, '2018/2019', 'kg.jpg'),
(11, 10, '2018/2019', 'pd.jpg'),
(11, 13, '2018/2019', 'pd.jpg'),
(12, 11, '2018/2019', 'ze.jpg'),
(12, 12, '2018/2019', 'ze.jpg'),
(12, 13, '2018/2019', 'ze.jpg'),
(13, 14, '2018/2019', 'ms.jpg'),
(13, 15, '2018/2019', 'ms.jpg'),
(14, 16, '2018/2019', 'jl.jpg'),
(14, 17, '2018/2019', 'jl.jpg'),
(15, 16, '2018/2019', 'tp.jpg'),
(16, 13, '2018/2019', 'mm.jpg'),
(17, 13, '2018/2019', 'kr.jpg'),
(18, 13, '2018/2019', 'js.jpg'),
(19, 18, '2018/2019', 'mCiostekD.jpg'),
(20, 18, '2018/2019', 'bj.jpg'),
(21, 19, '2018/2019', 'jaroszuk.jpg'),
(22, 19, '2018/2019', 'tl.jpg'),
(23, 20, '2018/2019', 'jss.jpg'),
(24, 21, '2018/2019', 'ig.jpg'),
(26, 23, '2018/2019', 'lb.jpg'),
(27, 23, '2018/2019', 'ez.jpg'),
(28, 24, '2018/2019', 'ek.jpg');

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
  ADD PRIMARY KEY (`PracownikID`,`StanowiskoID`),
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
