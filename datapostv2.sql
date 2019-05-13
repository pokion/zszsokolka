-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Maj 2019, 19:53
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
-- Baza danych: `datapostv2`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `images`
--

CREATE TABLE `images` (
  `id_image` int(11) NOT NULL,
  `image_name` text COLLATE ucs2_polish_ci,
  `id_posts` int(11) DEFAULT NULL,
  `main_img` bit(1) NOT NULL,
  `position` varchar(55) COLLATE ucs2_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_polish_ci;

--
-- Zrzut danych tabeli `images`
--

INSERT INTO `images` (`id_image`, `image_name`, `id_posts`, `main_img`, `position`) VALUES
(21, '5cd9ab92d2e0a_47525232402_9f9e8265da_c.jpg', 16, b'1', ''),
(22, '5cd9ab992b871_33701300038_f45419fd0d_c.jpg', 16, b'0', NULL),
(23, '5cd9ab992cee5_40612095393_f126f06ed5_c.jpg', 16, b'0', NULL),
(24, '5cd9ab992d3c8_47525232252_9d07246f40_c.jpg', 16, b'0', NULL),
(25, '5cd9ab992d66c_47525232332_6e68046147_c.jpg', 16, b'0', NULL),
(26, '5cd9ab993132a_47525232362_d521f40435_c.jpg', 16, b'0', NULL),
(27, '5cd9ab99322a7_47525232512_6fd3fbb554_c.jpg', 16, b'0', NULL),
(28, '5cd9ac2a73016_47525233312_41e4db63cc_c.jpg', 17, b'1', ''),
(29, '5cd9ac428f78c_47525233142_9406f21c53_c.jpg', 17, b'0', NULL),
(30, '5cd9ac4290c40_47525233202_6ac0f31f70_c.jpg', 17, b'0', NULL),
(31, '5cd9ac4291188_47525233312_41e4db63cc_c.jpg', 17, b'0', NULL),
(32, '5cd9ac4291556_47578136961_752de03e63_c.jpg', 17, b'0', NULL),
(33, '5cd9ac4297c4b_47578137021_c52efe96de_c.jpg', 17, b'0', NULL),
(34, '5cd9ac4297b6f_47578136981_e483b9b184_c.jpg', 17, b'0', NULL),
(35, '5cd9ac429ec94_47578137061_df4f683be4_c.jpg', 17, b'0', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `title` text COLLATE ucs2_polish_ci NOT NULL,
  `body` text COLLATE ucs2_polish_ci NOT NULL,
  `tags_id` text COLLATE ucs2_polish_ci,
  `post_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_polish_ci;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `body`, `tags_id`, `post_data`) VALUES
(15, 'coś tam coś tam lotem ipsum doloro sit amet', 'coś tam coś tam lotem ipsum doloro sit amet', ',2,3', '2019-05-13 17:38:34'),
(16, 'coś tam coś tam lotem ipsum doloro sit amet', 'coś tam coś tam lotem ipsum doloro sit amet', ',2,3', '2019-05-13 17:39:59'),
(17, 'dawsdasdsadqwadfqw asd sad asd ', 'as dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv zas dsa dasd asd asd sad sad dsad fxvczv z', ',1,2,5', '2019-05-13 17:41:23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` char(100) COLLATE ucs2_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_polish_ci;

--
-- Zrzut danych tabeli `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_name`) VALUES
(1, 'wolontariat'),
(2, 'pedagog'),
(3, 'sport'),
(4, 'wyjazdy'),
(5, 'konkurs');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_posts` (`id_posts`);

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indeksy dla tabeli `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `images`
--
ALTER TABLE `images`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_posts`) REFERENCES `posts` (`post_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
