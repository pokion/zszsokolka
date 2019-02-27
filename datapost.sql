-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Lis 2018, 07:40
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

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
