-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Mar 2019, 07:16
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
-- Indeksy dla tabeli `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

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
-- AUTO_INCREMENT dla tabeli `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
