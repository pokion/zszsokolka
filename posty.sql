-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Sie 2019, 19:43
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
(144, '5d3a30de27310_47739926301_43054b51eb_c.jpg', 5, b'1', ''),
(145, '5d3a30e779494_32796355397_bcf755096e_c.jpg', 5, b'0', NULL),
(146, '5d3a30e77c6c4_32796355537_55f3d754d4_c.jpg', 5, b'0', NULL),
(147, '5d3a30e77ee6f_32796356117_42a3079712_c.jpg', 5, b'0', NULL),
(148, '5d3a30e781f42_32796356197_0940fb1411_c.jpg', 5, b'0', NULL),
(149, '5d3a30e786e2b_32796356527_b570acdfc2_c.jpg', 5, b'0', NULL),
(150, '5d3a30e785827_32796356427_8bf76a7b44_c.jpg', 5, b'0', NULL),
(151, '5d3a30e79a7cb_32796356877_da58ee4eaa_c.jpg', 5, b'0', NULL),
(152, '5d3a30e7a93bc_32796356967_f26d0ba07b_c.jpg', 5, b'0', NULL),
(153, '5d3a30e7aab28_33862734628_6747bfe484_c.jpg', 5, b'0', NULL),
(154, '5d3a30e7ab641_33862734678_62876304a5_c.jpg', 5, b'0', NULL),
(155, '5d3a30e7ab66b_33862734528_f9436cbbdd_c.jpg', 5, b'0', NULL),
(156, '5d3a30e7ab6c1_33862734738_f5581efdec_c.jpg', 5, b'0', NULL),
(157, '5d3a30e7ad244_33862734838_4b07cdf55a_c.jpg', 5, b'0', NULL),
(158, '5d3a30e7b1619_33862735008_d8ec336a31_c.jpg', 5, b'0', NULL),
(159, '5d3a30e7b63c9_33862735018_4aac26d019_c.jpg', 5, b'0', NULL),
(160, '5d3a30e7bbba6_33862735168_22f615d405_c.jpg', 5, b'0', NULL),
(161, '5d3a30e7bc4f4_33862735238_a29ac63848_c.jpg', 5, b'0', NULL),
(162, '5d3a30e7bc982_33862735258_cb7c13a113_c.jpg', 5, b'0', NULL),
(163, '5d3a30e7bb4dc_33862735148_cce2dcef81_c.jpg', 5, b'0', NULL),
(164, '5d3a30e7bf9a9_33862735408_9259df5742_c.jpg', 5, b'0', NULL),
(165, '5d3a30e7c49a2_33862735538_386bfa3838_c.jpg', 5, b'0', NULL),
(166, '5d3a30e7cb924_33862735668_dee7976088_c.jpg', 5, b'0', NULL),
(167, '5d3a30e7cc2d3_33862735708_685ec5a9ce_c.jpg', 5, b'0', NULL),
(168, '5d3a30e7ccb0a_33862735768_e72dba110d_c.jpg', 5, b'0', NULL),
(169, '5d3a30e7d530e_33862735778_7bf3dccf93_c.jpg', 5, b'0', NULL),
(170, '5d3a30e7d61b2_33862735848_6eef34027b_c.jpg', 5, b'0', NULL),
(171, '5d3a30e7db19c_33862735878_c36f5c8dd6_c.jpg', 5, b'0', NULL),
(172, '5d3a30e7e028c_33862735978_0ff115b29b_c.jpg', 5, b'0', NULL),
(173, '5d3a30e7e0df0_33862736128_428d002971_c.jpg', 5, b'0', NULL),
(174, '5d3a30e7e080c_33862736048_61e8e72324_c.jpg', 5, b'0', NULL),
(175, '5d3a30e7e45e5_33862736288_8ee5fcd27b_c.jpg', 5, b'0', NULL),
(176, '5d3a30e7e4719_33862736398_10f63939b1_c.jpg', 5, b'0', NULL),
(177, '5d3a30e7e9d0c_33862736478_08b6b4b5dc_c.jpg', 5, b'0', NULL),
(178, '5d3a30e7ef96f_33862736588_109798dce2_c.jpg', 5, b'0', NULL),
(179, '5d3a30e7f008c_33862736738_9a474c4a74_c.jpg', 5, b'0', NULL),
(180, '5d3a30e8003d4_33862736988_12ab83e4e8_c.jpg', 5, b'0', NULL),
(181, '5d3a30e800ab7_40773261613_112424c675_c.jpg', 5, b'0', NULL),
(182, '5d3a30e8012d3_40773261683_84a5fa1a7e_c.jpg', 5, b'0', NULL),
(183, '5d3a30e80605f_46823224405_14b0689da9_c.jpg', 5, b'0', NULL),
(184, '5d3a30e80a79b_46823224475_7889fb33a1_c.jpg', 5, b'0', NULL),
(185, '5d3a30e80ad9d_46823224605_b0d2659828_c.jpg', 5, b'0', NULL),
(186, '5d3a30e810424_46823224715_33a6955479_c.jpg', 5, b'0', NULL),
(187, '5d3a30e811054_46950474694_9f4cbe1bfb_c.jpg', 5, b'0', NULL),
(188, '5d3a30e8109a5_46823224925_8606ba9215_c.jpg', 5, b'0', NULL),
(189, '5d3a30e814ace_46950475384_2bd6a5efc7_c.jpg', 5, b'0', NULL),
(190, '5d3a30e81e9c6_46950475434_208c871d96_c.jpg', 5, b'0', NULL),
(191, '5d3a30e81f313_46950475514_61850e2a1f_c.jpg', 5, b'0', NULL),
(192, '5d3a30e8234be_46950475594_7261548e8f_c.jpg', 5, b'0', NULL),
(193, '5d3a30e8294fa_46950475724_14a82de6f8_c.jpg', 5, b'0', NULL),
(194, '5d3a30e829d8e_46950475934_56b0df4826_c.jpg', 5, b'0', NULL),
(195, '5d3a30e828ac0_46950475684_18e0296184_c.jpg', 5, b'0', NULL),
(196, '5d3a30e83edd9_46950475994_57d75b97dc_c.jpg', 5, b'0', NULL),
(197, '5d3a30e83f8e5_47686885342_4f60cfd3b2_c.jpg', 5, b'0', NULL),
(198, '5d3a30e843ba2_47686885412_8dd973479b_c.jpg', 5, b'0', NULL),
(199, '5d3a30e848b60_47686885542_c4cafac2ab_c.jpg', 5, b'0', NULL),
(200, '5d3a30e848d2a_47686885642_2c49901dce_c.jpg', 5, b'0', NULL),
(201, '5d3a30e8496a4_47686885722_fd7c31d055_c.jpg', 5, b'0', NULL),
(202, '5d3a30e84c538_47739924001_8699f4e72a_c.jpg', 5, b'0', NULL),
(203, '5d3a30e851eb0_47739924171_ab3322bcc7_c.jpg', 5, b'0', NULL),
(204, '5d3a30e85264b_47739924221_042b89a29d_c.jpg', 5, b'0', NULL),
(205, '5d3a30e856ac4_47739924381_bf0dd27db5_c.jpg', 5, b'0', NULL),
(206, '5d3a30e85618b_47739924301_81f9f2e2be_c.jpg', 5, b'0', NULL),
(207, '5d3a30e85c344_47739924521_84fe09e483_c.jpg', 5, b'0', NULL),
(208, '5d3a30e85cf41_47739924591_ae78abff2c_c.jpg', 5, b'0', NULL),
(209, '5d3a30e86adc4_47739924631_81427ec355_c.jpg', 5, b'0', NULL),
(210, '5d3a30e86b23d_47739924801_7edb812ff8_c.jpg', 5, b'0', NULL),
(211, '5d3a30e86e9a8_47739924971_43b417c73c_c.jpg', 5, b'0', NULL),
(212, '5d3a30e86f4a3_47739925051_bf59928333_c.jpg', 5, b'0', NULL),
(213, '5d3a30e86fb44_47739925181_519e5989d3_c.jpg', 5, b'0', NULL),
(214, '5d3a30e8876de_47739925261_7ef7ae4943_c.jpg', 5, b'0', NULL),
(215, '5d3a30e888187_47739925411_d37fd02b67_c.jpg', 5, b'0', NULL),
(216, '5d3a30e889070_47739925481_ef6d447e54_c.jpg', 5, b'0', NULL),
(217, '5d3a30e897e47_47739925571_6acd11ee7e_c.jpg', 5, b'0', NULL),
(218, '5d3a30e8984fc_47739925711_97a1611558_c.jpg', 5, b'0', NULL),
(219, '5d3a30e8aeef7_47739925821_d2c4baa098_c.jpg', 5, b'0', NULL),
(220, '5d3a30e8af9df_47739925901_a0642b2951_c.jpg', 5, b'0', NULL),
(221, '5d3a30e8c71a0_47739926111_afaa4b0232_c.jpg', 5, b'0', NULL),
(222, '5d3a30e8c5ca2_47739926051_541de5422d_c.jpg', 5, b'0', NULL),
(223, '5d3a30e8c7c4c_47739926221_b92a2c9eee_c.jpg', 5, b'0', NULL),
(224, '5d3a31d620a24_40773032053_65b719d00d_c.jpg', 6, b'1', ''),
(225, '5d3a31dcf0474_40773032113_77ee089697_c.jpg', 6, b'0', NULL),
(226, '5d3a31dcef10c_32796107917_e8b3964251_c.jpg', 6, b'0', NULL),
(227, '5d3a31dcf3b45_46822984685_01b59523ce_c.jpg', 6, b'0', NULL),
(228, '5d3a31dd00cda_46822984735_9f07028d8b_c.jpg', 6, b'0', NULL),
(229, '5d3a31dd013d9_46822984845_1dc676fb36_c.jpg', 6, b'0', NULL),
(230, '5d3a31dd01e7f_46822984905_365315c7e8_c.jpg', 6, b'0', NULL),
(231, '5d3a31dd17ce7_46822984935_39d6c30cfb_c.jpg', 6, b'0', NULL),
(232, '5d3a31dd18822_46950237374_1c50d2671c_c.jpg', 6, b'0', NULL),
(233, '5d3a31dd1cb0c_46950237464_96750edbf0_c.jpg', 6, b'0', NULL),
(234, '5d3a32b518e0b_47739772741_6b044a4dd9_c.jpg', 7, b'1', ''),
(235, '5d3a32bcde969_32796214487_24449b102d_c.jpg', 7, b'0', NULL),
(236, '5d3a32bce195a_32796214667_5c9f9e73c5_c.jpg', 7, b'0', NULL),
(237, '5d3a32bce4434_32796214807_4d6266de36_c.jpg', 7, b'0', NULL),
(238, '5d3a32bce69c3_32796214937_be59fcd37f_c.jpg', 7, b'0', NULL),
(239, '5d3a32bce7ea1_32796215097_d9c9860028_c.jpg', 7, b'0', NULL),
(240, '5d3a32bceb2e4_33862604458_59948507b8_c.jpg', 7, b'0', NULL),
(241, '5d3a32bd08e14_33862605188_5a01db2014_c.jpg', 7, b'0', NULL),
(242, '5d3a32bd10633_33862605408_55c37f8d86_c.jpg', 7, b'0', NULL),
(243, '5d3a32bd1114d_40773135053_5427112434_c.jpg', 7, b'0', NULL),
(244, '5d3a32bd1201e_40773135213_1e89525826_c.jpg', 7, b'0', NULL),
(245, '5d3a32bd1800c_46950332774_a3715945c5_c.jpg', 7, b'0', NULL),
(246, '5d3a32bd187a6_46950332874_be59fcd37f_c.jpg', 7, b'0', NULL),
(247, '5d3a32bd28530_46950332934_d4042061a2_c.jpg', 7, b'0', NULL),
(248, '5d3a32bd2c964_46950333024_14ed4bd7f0_c.jpg', 7, b'0', NULL),
(249, '5d3a32bd2d347_46950333084_3f65cf9869_c.jpg', 7, b'0', NULL),
(250, '5d3a32bd2e635_47686724342_ca5d7511df_c.jpg', 7, b'0', NULL),
(251, '5d3a32bd2ef75_47686724442_04d7812218_c.jpg', 7, b'0', NULL),
(252, '5d3a32bd2f162_47686724372_036a108844_c.jpg', 7, b'0', NULL),
(253, '5d3a32bd30ded_47686724472_788110a6e3_c.jpg', 7, b'0', NULL),
(254, '5d3a32bd3ab35_47686724512_9b934a55e1_c.jpg', 7, b'0', NULL),
(255, '5d3a32bd3b38a_47686724532_479ccf506a_c.jpg', 7, b'0', NULL),
(256, '5d3a32bd3ee46_47686724612_c765ec0a57_c.jpg', 7, b'0', NULL),
(257, '5d3a32bd3ff5d_47686724692_f5d566c56b_c.jpg', 7, b'0', NULL),
(258, '5d3a32bd3f228_47686724652_9fb62c34cb_c.jpg', 7, b'0', NULL),
(259, '5d3a32bd43a7d_47686724752_b23aef0138_c.jpg', 7, b'0', NULL),
(260, '5d3a32bd49d86_47686724852_21dda64bc6_c.jpg', 7, b'0', NULL),
(261, '5d3a32bd4ec3f_47686724932_079fe9beb2_c.jpg', 7, b'0', NULL),
(262, '5d3a32bd4f24a_47686725022_f5ae6874a3_c.jpg', 7, b'0', NULL),
(263, '5d3a32bd4fa23_47686725142_794d86951b_c.jpg', 7, b'0', NULL),
(264, '5d3a32bd5338c_47739772131_450c837c12_c.jpg', 7, b'0', NULL),
(265, '5d3a32bd5423c_47739772291_0520db2e44_c.jpg', 7, b'0', NULL),
(266, '5d3a32bd573eb_47739772421_fd66abe113_c.jpg', 7, b'0', NULL),
(267, '5d3a32bd5cb48_47739772521_1c440181d9_c.jpg', 7, b'0', NULL),
(268, '5d3a32bd5d8e4_47739772651_48a69839b7_c.jpg', 7, b'0', NULL),
(269, '5d3a33bdabe50_46713076945_b0b115c92c_c.jpg', 8, b'1', ''),
(270, '5d3a33c37ee78_40662200103_02c4f3ff99_c.jpg', 8, b'0', NULL),
(271, '5d3a33c3818de_40662200193_a299768ec9_c.jpg', 8, b'0', NULL),
(272, '5d3a33c38888f_40662200283_7bc5c93991_c.jpg', 8, b'0', NULL),
(273, '5d3a33c38a937_40662200343_372ac63585_c.jpg', 8, b'0', NULL),
(274, '5d3a33c38bb8a_40662200413_b54ff5ea0d_c.jpg', 8, b'0', NULL),
(275, '5d3a33c38cd2e_46713076955_00e5f2b4f8_c.jpg', 8, b'0', NULL),
(276, '5d3a33c38d8b9_46713077075_9ceb81922a_c.jpg', 8, b'0', NULL),
(277, '5d3a33c394691_46713077115_47932063fa_c.jpg', 8, b'0', NULL),
(278, '5d3a33c39d532_46713077215_cede907aae_c.jpg', 8, b'0', NULL),
(279, '5d3a33c3a1a63_46713077235_9023731afe_c.jpg', 8, b'0', NULL),
(280, '5d3a33c3a20ea_46904353454_4bd60ed673_c.jpg', 8, b'0', NULL),
(281, '5d3a33c3a1f02_46713077315_448b19aaf4_c.jpg', 8, b'0', NULL),
(282, '5d3a33c3a3266_46904353534_a3f7b52b96_c.jpg', 8, b'0', NULL),
(283, '5d3a33c3b5d97_46904353554_1ea342dccc_c.jpg', 8, b'0', NULL),
(284, '5d3a33c3b9e3d_46904353614_5cbdae3ec4_c.jpg', 8, b'0', NULL),
(285, '5d3a39b8e6560_47575950072_426fa8e085_c.jpg', 9, b'1', ''),
(286, '5d3a39c0bb349_32686167017_b98b4022bc_c.jpg', 9, b'0', NULL),
(287, '5d3a39c0bd916_46904463244_7d5950cdb3_c.jpg', 9, b'0', NULL),
(288, '5d3a39c0bddfb_47628688211_e0e8bebf21_c.jpg', 9, b'0', NULL),
(289, '5d3a39c0bdfb7_47575950182_f57aa3663e_c.jpg', 9, b'0', NULL),
(290, '5d3a39c0bc520_46713173375_997ef1499e_c.jpg', 9, b'0', NULL),
(291, '5d3a39c0bd158_46904463134_0865b77a27_c.jpg', 9, b'0', NULL),
(292, '5d3a39c0cb4ca_47628688381_ae3ea30b9d_c.jpg', 9, b'0', NULL),
(293, '5d3a3b38d211b_47578137321_cbf89033e7_c.jpg', 10, b'1', ''),
(294, '5d3a3b3fc839e_33701300038_f45419fd0d_c.jpg', 10, b'0', NULL),
(295, '5d3a3b3fca7c6_40612095393_f126f06ed5_c.jpg', 10, b'0', NULL),
(296, '5d3a3b3fcf8c8_40612095793_45a06b403b_c.jpg', 10, b'0', NULL),
(297, '5d3a3b3fd39a0_40612095893_49cfe6e46e_c.jpg', 10, b'0', NULL),
(298, '5d3a3b3fd57dd_47525232252_9d07246f40_c.jpg', 10, b'0', NULL),
(299, '5d3a3b3fd6135_47525232332_6e68046147_c.jpg', 10, b'0', NULL),
(300, '5d3a3b3fd6cf4_47525232362_d521f40435_c.jpg', 10, b'0', NULL),
(301, '5d3a3b3fd7eba_47525232402_9f9e8265da_c.jpg', 10, b'0', NULL),
(302, '5d3a3b3fe0c64_47525232512_6fd3fbb554_c.jpg', 10, b'0', NULL),
(303, '5d3a3b3fe155f_47525232622_cf5a9ec63d_c.jpg', 10, b'0', NULL),
(304, '5d3a3b3fe4ed7_47525232732_83d857e173_c.jpg', 10, b'0', NULL),
(305, '5d3a3b3fe506b_47525232772_61ac4da62b_c.jpg', 10, b'0', NULL),
(306, '5d3a3b3fe9083_47525232842_cc99c1a4ce_c.jpg', 10, b'0', NULL),
(307, '5d3a3b3fe9702_47525232972_3abc5d681b_c.jpg', 10, b'0', NULL),
(308, '5d3a3b3fef134_47525233042_b7bf57c30d_c.jpg', 10, b'0', NULL),
(309, '5d3a3b3fefa42_47525233072_9fe8e6a391_c.jpg', 10, b'0', NULL),
(310, '5d3a3b3ff3664_47525233142_9406f21c53_c.jpg', 10, b'0', NULL),
(311, '5d3a3b3ff39a7_47525233202_6ac0f31f70_c.jpg', 10, b'0', NULL),
(312, '5d3a3b4005209_47525233312_41e4db63cc_c.jpg', 10, b'0', NULL),
(313, '5d3a3b40056fc_47578136881_dc4b4e80df_c.jpg', 10, b'0', NULL),
(314, '5d3a3b400941c_47578136961_752de03e63_c.jpg', 10, b'0', NULL),
(315, '5d3a3b40098bf_47578136981_e483b9b184_c.jpg', 10, b'0', NULL),
(316, '5d3a3b400f425_47578137021_c52efe96de_c.jpg', 10, b'0', NULL),
(317, '5d3a3b400f8b6_47578137061_df4f683be4_c.jpg', 10, b'0', NULL),
(318, '5d3a3b4022f45_47578137081_b7f7e3d8b6_c.jpg', 10, b'0', NULL),
(319, '5d3a3b4036faf_47578137151_61ac4da62b_c.jpg', 10, b'0', NULL),
(320, '5d3a3b403863e_47578137261_ef9a08328c_c.jpg', 10, b'0', NULL),
(321, '5d3a3b4039227_47578137391_15be70ee0c_c.jpg', 10, b'0', NULL),
(322, '5d3a3b4039ca7_47578137411_8e1a06f2fd_c.jpg', 10, b'0', NULL),
(323, '5d3a3b40375e8_47578137201_e735586fea_c.jpg', 10, b'0', NULL),
(324, '5d3a3b40487b8_47578137431_9785aa29e4_c.jpg', 10, b'0', NULL),
(325, '5d3a3c592d51d_32685963507_c2918608c7_c.jpg', 11, b'0', NULL),
(326, '5d3a3c592ee05_33751205888_6d5483b177_c.jpg', 11, b'0', NULL),
(327, '5d3a3c592fa46_33751205868_bd975e312c_c.jpg', 11, b'0', NULL),
(328, '5d3a3c592fd3d_40662116463_b8057fbcc8_c.jpg', 11, b'0', NULL),
(329, '5d4707cf9f70e_40611931423_c2f7d05057_c.jpg', 12, b'1', ''),
(330, '5d4707de5ef56_40611931463_4db4f85deb_c.jpg', 12, b'0', NULL),
(331, '5d4707de610df_40611931593_3f15b7a4bc_c.jpg', 12, b'0', NULL),
(332, '5d4707de68038_40611931613_1013a3914e_c.jpg', 12, b'0', NULL),
(333, '5d4707de67fe7_40611931703_c5a10214c6_c.jpg', 12, b'0', NULL),
(334, '5d4707de67fbd_40611931853_d981ee4f96_c.jpg', 12, b'0', NULL),
(335, '5d4707de703d0_40611931933_78c56172e8_c.jpg', 12, b'0', NULL),
(336, '5d4707de70501_40611931803_a1e5d3feb7_c.jpg', 12, b'0', NULL),
(337, '5d4707de71c7a_40611932033_d8e0bb5338_c.jpg', 12, b'0', NULL),
(338, '5d4707de7a123_40611932083_b6737ebc62_c.jpg', 12, b'0', NULL),
(339, '5d4707de7e5bd_46662449135_d7c49b00b9_c.jpg', 12, b'0', NULL),
(340, '5d4707de7ebb0_46662449225_fcd5e7c56c_c.jpg', 12, b'0', NULL),
(341, '5d4707de7f572_46662449235_a972e5312d_c.jpg', 12, b'0', NULL),
(342, '5d4707de81ab1_46662449245_168e22329c_c.jpg', 12, b'0', NULL),
(343, '5d4707de82654_46662449305_01172929de_c.jpg', 12, b'0', NULL),
(344, '5d4707de8ca31_47525075472_d5308da4dd_c.jpg', 12, b'0', NULL),
(345, '5d4707de96d9b_47525075632_c3f2c8d359_c.jpg', 12, b'0', NULL),
(346, '5d4707de96c85_47525075862_1d4395e197_c.jpg', 12, b'0', NULL),
(347, '5d470c563ee5d_46853615094_edceb5ab75_c.jpg', 13, b'1', ''),
(348, '5d470c653506c_32635025127_f136ea7a51_c.jpg', 13, b'0', NULL),
(349, '5d470c65366a2_40611373463_255197dda8_c.jpg', 13, b'0', NULL),
(350, '5d470c65370fd_46853615014_59280ae804_c.jpg', 13, b'0', NULL),
(351, '5d470c653758c_46853615214_d8af364261_c.jpg', 13, b'0', NULL),
(352, '5d470c6541545_46853615424_0789c3f094_c.jpg', 13, b'0', NULL),
(353, '5d470c6541752_46853615324_dcb5144ded_c.jpg', 13, b'0', NULL),
(354, '5d470c6547474_46853615244_e4b7389120_c.jpg', 13, b'0', NULL),
(355, '5d470c65492d7_46853615444_5109f654fc_c.jpg', 13, b'0', NULL),
(356, '5d470c65506e6_46853615474_1ac92d2cdf_c.jpg', 13, b'0', NULL),
(357, '5d470c6557723_46853615484_97374a59c0_c.jpg', 13, b'0', NULL),
(358, '5d470c65588eb_46853615534_f3cf5d8009_c.jpg', 13, b'0', NULL),
(359, '5d470c6559263_46853615564_ceed661d34_c.jpg', 13, b'0', NULL),
(360, '5d470c65602f3_46853615614_5aef818788_c.jpg', 13, b'0', NULL),
(361, '5d470c6566637_47577449151_857abd56cf_c.jpg', 13, b'0', NULL),
(362, '5d470c65722b6_47577449201_4e3174ffe6_c.jpg', 13, b'0', NULL),
(363, '5d470c6573107_47577449231_515aa01a20_c.jpg', 13, b'0', NULL),
(364, '5d470c6576ea8_47577449311_c391f2d868_c.jpg', 13, b'0', NULL),
(365, '5d470c6577ca2_47577449381_7e7a6088ac_c.jpg', 13, b'0', NULL),
(390, '5d49e9a876efb_47577343171_c22a3fa7e0_c.jpg', 16, b'1', ''),
(391, '5d49e9b2dc618_40611264973_9bd373425c_c.jpg', 16, b'0', NULL),
(392, '5d49e9b2ddc89_40611264983_a456a95d29_c.jpg', 16, b'0', NULL),
(393, '5d49e9b2e0315_40611264993_6e184efaf6_c.jpg', 16, b'0', NULL),
(394, '5d49e9b2e17bf_40611265013_efdb7a1866_c.jpg', 16, b'0', NULL),
(395, '5d49e9b2e1eec_40611265043_bf5ebe0a07_c.jpg', 16, b'0', NULL),
(396, '5d49e9b2e1fcc_40611265033_a943b78176_c.jpg', 16, b'0', NULL),
(397, '5d49e9b304fe4_40611265053_8a289cc6c3_c.jpg', 16, b'0', NULL),
(398, '5d49e9b30508b_40611265073_84f6d31c2b_c.jpg', 16, b'0', NULL),
(399, '5d49e9b310712_40611265113_edaf11f08b_c.jpg', 16, b'0', NULL),
(400, '5d49e9b30fa88_40611265103_75f631c4b1_c.jpg', 16, b'0', NULL),
(401, '5d49e9b3133a0_40611265153_cfdf06ffef_c.jpg', 16, b'0', NULL),
(402, '5d49e9b31103f_40611265123_c9cdd8f926_c.jpg', 16, b'0', NULL),
(403, '5d49e9b3235d9_40611265173_ebb789f1f3_c.jpg', 16, b'0', NULL),
(404, '5d49e9b32418c_40611265183_f4c083a62e_c.jpg', 16, b'0', NULL),
(405, '5d49e9b324a9c_40611265213_08dcd15546_c.jpg', 16, b'0', NULL),
(406, '5d49e9b336201_40611265223_668d30e1a3_c.jpg', 16, b'0', NULL),
(407, '5d49e9b336f85_47577343211_fa59f80929_c.jpg', 16, b'0', NULL),
(408, '5d49e9b337675_47577343261_8fb28b3f4e_c.jpg', 16, b'0', NULL),
(409, '5d49e9b33c1b6_47577343281_dfd2f44b34_c.jpg', 16, b'0', NULL),
(410, '5d49e9b33cf94_47577343461_db4ef6970e_c.jpg', 16, b'0', NULL),
(411, '5d49e9b34239e_47577343531_c9c2b656aa_c.jpg', 16, b'0', NULL),
(412, '5d49e9b348da9_47577343651_97f2a25e96_c.jpg', 16, b'0', NULL),
(413, '5d49e9b3483c6_47577343581_f6a8df8ca6_c.jpg', 16, b'0', NULL),
(414, '5d49edeb54926_47478804832_6febfd7359_c.jpg', 17, b'1', ''),
(415, '5d49ee430bdad_33654913488_7a4c30235a_c.jpg', 17, b'0', NULL),
(416, '5d49ee430c33d_33654913548_7bc4619edd_c.jpg', 17, b'0', NULL),
(417, '5d49ee430e587_33654913618_35d0bd38ff_c.jpg', 17, b'0', NULL),
(418, '5d49ee43122d0_33654913708_c9fea1d8d3_c.jpg', 17, b'0', NULL),
(419, '5d49ee431d6e4_33654913828_bc0ab06965_c.jpg', 17, b'0', NULL),
(420, '5d49ee431d685_33654913778_81398fb723_c.jpg', 17, b'0', NULL),
(421, '5d49ee431f190_33654913928_ff65d559e6_c.jpg', 17, b'0', NULL),
(422, '5d49ee432d4fe_33654914018_fed9879952_c.jpg', 17, b'0', NULL),
(423, '5d49ee4331c6b_47478804672_7e92f879b5_c.jpg', 17, b'0', NULL),
(424, '5d49ee4333d1c_47478804692_f4bfc82af9_c.jpg', 17, b'0', NULL),
(425, '5d49ee4333f1e_47478804712_d7aa825705_c.jpg', 17, b'0', NULL),
(426, '5d49ee43401cd_47478804742_9f7a204ce7_c.jpg', 17, b'0', NULL),
(427, '5d49ee434609e_47478804802_789870aaaa_c.jpg', 17, b'0', NULL),
(428, '5d49ee435ca92_47478804872_b8756212f0_c.jpg', 17, b'0', NULL),
(429, '5d49ee435c639_47478804812_27d6df5b74_c.jpg', 17, b'0', NULL),
(430, '5d49ee436267c_47478804902_77083fd252_c.jpg', 17, b'0', NULL),
(431, '5d49ee436347e_47478804932_d052739a4b_c.jpg', 17, b'0', NULL),
(432, '5d49ee4368a59_47478805002_d19b4eed13_c.jpg', 17, b'0', NULL),
(433, '5d49ee4369718_47478805022_05f181aa72_c.jpg', 17, b'0', NULL),
(434, '5d49ee436a6bb_47478805072_b0505d2a7d_c.jpg', 17, b'0', NULL),
(435, '5d49ee4370c7f_47478805122_f9fa2d26ed_c.jpg', 17, b'0', NULL),
(436, '5d49ee4378b5c_47478805152_22df9fed16_c.jpg', 17, b'0', NULL),
(437, '5d49ee437f0d7_47478805162_3af9a0c792_c.jpg', 17, b'0', NULL),
(438, '5d49ee437f913_47478805222_6443e03bc1_c.jpg', 17, b'0', NULL),
(439, '5d49ee43831e5_47478805232_c34742d512_c.jpg', 17, b'0', NULL),
(440, '5d49ee43852f4_47478805282_b62d3e93a0_c.jpg', 17, b'0', NULL),
(441, '5d49ee438ce09_47478805322_41bc54879c_c.jpg', 17, b'0', NULL),
(442, '5d49ee438dedc_47478805342_8f38372970_c.jpg', 17, b'0', NULL),
(443, '5d49ee43995c1_47478805382_a05f188969_c.jpg', 17, b'0', NULL),
(444, '5d49ee439a212_47478805412_8ae673acba_c.jpg', 17, b'0', NULL),
(445, '5d49ee439a764_47478805432_b1dbcf0994_c.jpg', 17, b'0', NULL),
(446, '5d49f23d60d4d_32589123537_e0c8fa8ee0_c.jpg', 18, b'0', NULL),
(447, '5d49f23d63777_32589123577_292f89defc_c.jpg', 18, b'0', NULL),
(448, '5d49f23d667c6_32589123667_fdce2159f5_c.jpg', 18, b'0', NULL),
(449, '5d49f23d71fa5_32589124507_79df34b771_c.jpg', 18, b'0', NULL),
(450, '5d49f23d72fc8_32589125097_c9e167bf8e_c.jpg', 18, b'0', NULL),
(451, '5d49f23d72eb4_32589124927_cb1232cde9_c.jpg', 18, b'0', NULL),
(452, '5d49f23d7def5_32589125217_b86c623d33_c.jpg', 18, b'0', NULL),
(453, '5d49f23d825a9_40565465993_df77a6013b_c.jpg', 18, b'0', NULL),
(454, '5d49f23d945a6_40565467833_6601233f07_c.jpg', 18, b'0', NULL),
(455, '5d49f23d93f8e_40565467283_4d270ff135_c.jpg', 18, b'0', NULL),
(456, '5d49f23d97eae_40565467943_f8e0e63937_c.jpg', 18, b'0', NULL),
(457, '5d49f23da036a_46807796894_1a19f9c5b2_c.jpg', 18, b'0', NULL),
(458, '5d49f23da6429_46807797064_22e8eaef99_c.jpg', 18, b'0', NULL),
(459, '5d49f23daa241_46807797114_cc378276b6_c.jpg', 18, b'0', NULL),
(460, '5d49f23dacf2a_46807797134_07f6370c9d_c.jpg', 18, b'0', NULL),
(461, '5d49f65e152e7_32635121697_7b00176ebe_c.jpg', 19, b'0', NULL),
(462, '5d49f65e15f80_32635121767_6b078363b8_c.jpg', 19, b'0', NULL),
(463, '5d49f65e16bc2_32635121797_230287b6b0_c.jpg', 19, b'0', NULL),
(464, '5d49f65e22737_40611489623_52df2a569e_c.jpg', 19, b'0', NULL),
(465, '5d49f65e22745_40611489583_aa5439b94a_c.jpg', 19, b'0', NULL),
(466, '5d49f65e2357c_40611489663_4af471b1f2_c.jpg', 19, b'0', NULL),
(467, '5d4c7eabea0fc_40514737263_930077d763_c.jpg', 20, b'0', NULL),
(468, '5d4c7eabea0f8_46757466714_b519576c56_c.jpg', 20, b'0', NULL),
(469, '5d4c7eabea176_33604221748_2d878e475a_c.jpg', 20, b'0', NULL),
(470, '5d4c7eabee03c_47427934182_1069560593_c.jpg', 20, b'0', NULL),
(471, '5d4c7eabee0ad_47427934112_4fc3f46c1e_c.jpg', 20, b'0', NULL),
(472, '5d4c7eabee152_47427934202_9aa166452a_c.jpg', 20, b'0', NULL),
(473, '5d4c7eac082f3_47427934332_346641b71a_c.jpg', 20, b'0', NULL),
(474, '5d4c7eac0f221_47427934492_d7ce84911a_c.jpg', 20, b'0', NULL),
(475, '5d4c7eac0fc6e_47480867851_0cea6ed3f5_c.jpg', 20, b'0', NULL),
(476, '5d4c7eac106b7_47480867991_efb9508026_c.jpg', 20, b'0', NULL),
(479, '5d4c7ec24eb40_47480868181_f8bd2d41a3_c.jpg', 20, b'1', ''),
(480, '5d4c7f60f1cba_47480868071_437f560b67_c.jpg', 20, b'0', NULL),
(481, '5d4c87f2c99ae_46712979945_6ed6ddfcb3_c.jpg', 21, b'1', ''),
(482, '5d4c880708437_32685958247_966115595c_c.jpg', 21, b'0', NULL),
(483, '5d4c88070a880_32685958337_3a7d4164c1_c.jpg', 21, b'0', NULL),
(484, '5d4c88070b24b_32685958477_f5d6017c6e_c.jpg', 21, b'0', NULL),
(485, '5d4c88071255a_33751201018_d7e38e5b4e_c.jpg', 21, b'0', NULL),
(486, '5d4c880712672_33751201038_4da50ed96f_c.jpg', 21, b'0', NULL),
(487, '5d4c880712555_33751201098_6828258227_c.jpg', 21, b'0', NULL),
(488, '5d4c880717353_33751201108_7562812f5d_c.jpg', 21, b'0', NULL),
(489, '5d4c880718e85_33751201118_275fde186f_c.jpg', 21, b'0', NULL),
(490, '5d4c880729286_46712980035_462f1d2898_c.jpg', 21, b'0', NULL),
(491, '5d4c88072f938_46712980125_cc2889b0e2_c.jpg', 21, b'0', NULL);

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
(5, 'Zakończenie roku szkolnego klas maturalnych i Akademia z okazji Rocznicy Uchwalenia Konstytucji 3 Maja', '<p>26 kwietnia 2019 roku w <b>Zespole Szkół Zawodowych im. Elizy Orzeszkowej w Sokółce</b> odbyło się uroczyste zakończenie roku szkolnego 2018/2019 dla uczniów klas maturalnych. Uroczystość była połączona z apelem poświęconym 228. Rocznicy Uchwalenia Konstytucji 3 Maja. Swoją obecnością zaszczycili nas: Kierownik Referatu Oświaty w Starostwie Powiatowym w Sokółce, pani <b>Anetta Zubrzycka</b> i rodzice uczniów klas maturalnych. Na początku pan dyrektor Grzegorz Zalewski przywitał uczniów i przybyłych gości, po czym oddał mikrofon młodzieży. Uczniowie klas młodszych przygotowani przez panie <b>Annę Tolko i Klaudię Kmon-Ciuruk</b> przedstawili akademię poświęconą wydarzeniom w Polsce, które działy się 3 maja 1791 roku. Konstytucja 3 Maja była pierwszą europejską i drugą na świecie po amerykańskiej. Stanowiła próbę stworzenia nowoczesnego systemu władzy w Rzeczpospolitej z jej trójpodziałem oraz próbę wzmocnienia i zreformowania naszego państwa. Dziękujemy uczniom za piękną lekcję historii naszego państwa.</p>\r\n\r\n<p>W drugiej części uroczystości Koło Teatralne pod kierownictwem pani <b>Jolanty Siemieniako</b> przedstawiło abiturientom, pozostałym uczniom i gościom skecze na wesoło, w kabaretowy sposób nawiązując do rzeczywistości szkolnej i zbliżających się matur. Po części artystycznej głos zabrała pani Anetta Zubrzycka, która przeczytała list Starosty Sokólskiego, pana Piotra Rećko skierowany do naszych maturzystów. List był formą złożenia życzeń abiturientom naszej szkoły wobec wyzwań maturalnych jak i życiowych czekających przed przyszłymi maturzystami. Po pani Zubrzyckiej głos zabrał pan dyrektor i również złożył abiturientom życzenia z okazji zakończenia szkoły. Wspomniał również bardzo aktywny udział uczniów klas maturalnych we wszystkich aspektach życia szkoły. Uczniowie ci stanowili trzon reprezentacji szkoły w różnych dyscyplinach sportowych, brali aktywny udział w wolontariacie i w pracach samorządu szkolnego.</p>\r\n\r\n<p>Następnie pan dyrektor wspólnie z panią Anettą Zubrzycką wręczył uczniom świadectwa ukończenia szkoły z wyróżnieniem oraz stypendia sportowo-artystyczne i naukowe Starosty Sokólskiego dla wyróżniającej się młodzieży klas młodszych. Kolejnym etapem uroczystości było wręczanie przez pana dyrektora wraz z nauczycielami - opiekunami poszczególnych grup pamiątkowych dyplomów i statuetek dla uczniów klas maturalnych reprezentujących szkołę w różnorodnych zawodach sportowych - w siatkówce, piłce nożnej, futsalu, piłce ręcznej, tenisie stołowym, w rozgrywkach szachowych, w biegach narciarskich, w zawodach w wyciskaniu sztangi i w zawodach lekkoatletycznych oraz dla uczniów uczestniczących w wolontariacie szkolnym, w pracach samorządu szkolnego, szkolnego koła teatralnego reprezentujących szkołę w poczcie sztandarowym.</p>\r\n\r\n<p>Po zakończeniu uroczystości w szkole uczniowie klas IV Technikum fryzjersko-informatycznego i mechanicznego udali się na boisko szkolne, gdzie wspólnie zasadzili Drzewo Pamięci. Wszystkim naszym absolwentom życzymy wszystkiego dobrego, niech się spełnią wasze marzenia i zamiary. Życzymy wam zdania matur i powodzenia w waszym życiu, miejcie jak najwięcej powodów do radości i do zadowolenia.</p>', ',1', '2019-04-25 22:45:18'),
(6, 'Paczki dla kombatantów', '<p>W marcu i kwietniu bieżącego roku młodzież wszystkich klas <b>Zespołu Szkół Zawodowych w Sokółce</b> przygotowała świąteczne paczki żywnościowe Kombatantom i Żołnierzom AK. Paczki za pośrednictwem dyrektora <b>Szkoły Podstawowej w Kuźnicy, pana Krzysztofa Pawłowskiego</b>, zostały przekazane potrzebującym, mieszkającym na Białorusi. Serdeczne podziękowania wychowawcom i uczniom za okazane zrozumienie, pomoc i życzliwość.</p>\r\n\r\n<p>Koordynacją akcji zajmowała się pani <b>Izabela Garkowska.</b></p>', ',3', '2019-04-16 22:49:04'),
(7, 'Szkolny Turniej Siatkówki', '<p>W ostatni dzień przed przerwą świąteczną, czyli 17 kwietnia 2019 roku w szkolnej sali sportowej odbył się Szkolny Turniej Siatkówki. Wzięły w nim udział reprezentacje trzech <b>klas: IV Tfi, III Tm i III Tfi</b>. Zawody, rozgrywane systemem \"każdy z każdym\", zakończyły się zwycięstwem uczniów klasy <b>III Tfi</b>. Serdeczne gratulacje!</p>', ',2,4', '2019-04-16 22:39:51'),
(8, 'XVII Mistrzostwa Województwa Podlaskiego Szkół Ponadgimnazjalnych w Wyciskaniu Sztangi Leżąc', '<p>W dniu 16 kwietnia 2019 roku w białostockim \"Mechaniaku\" odbyła się kolejna, bo już <b>XVII edycja Mistrzostw Województwa Podlaskiego Szkół Ponadgimnazjalnych w Wyciskaniu Sztangi Leżąc. Zespół Szkół Zawodowych w Sokółce</b> reprezentowało dwóch zawodników: <b>Paweł Gawrysiak (IV Tm), który zajął pierwsze miejsce</b> w kategorii do 93 kg z wynikiem 160 kg oraz <b>pierwsze miejsce w kategorii open!</b> Czwarty w swojej kategorii i swoim debiucie w tej randze zawodów był <b>Seweryn Fornal (III Tm)</b>, podnosząc ostatecznie 100 kg. Bardzo dobra organizacja oraz nagrody zdobyte przez zawodników z pewnością podniosły rangę zawodów. Wszyscy uczestnicy pokazali ogromną siłę, znakomitą technikę i zaangażowanie.</p>\r\n\r\n<p>Opiekunem naszych siłaczy był pan <b>Tomasz Potapczyk</b>.</p>', ',4', '2019-04-15 22:57:12'),
(9, 'XX Mistrzostwa Szkół Ponadgimnazjalnych w Ortografii', '<p>16 kwietnia 2019 roku na hali przy Zespole Szkół w Sokółce odbyły się <b>XX Mistrzostwa Szkół Ponadgimnazjalnych Powiatu Sokólskiego w Ortografii</b>. W konkursie wzięło udział czworo uczniów <b>Zespołu Szkół Zawodowych w Sokółce: Kamila Borys, Amelia Doroszkiewicz (obie I T), Klaudia Łysik i Marcin Strzałkowski (oboje II Tfi)</b>. Jak pozostałych 23 uczestników zmagali się z bardzo trudnym dyktandem pt. \"Sportowe igrzyska\", a na koniec wszyscy otrzymali dyplomy uczestnictwa.</p>\r\n<p>Opiekę nad uczniami sprawowała pani <b>Jolanta Siemieniako</b>.</p>', ',5', '2019-04-15 22:10:00'),
(10, 'Sukcesy uczniów ZSZ na Mistrzostwach Polski w Boksie', '<p>8 kwietnia 2019 roku na sali treningowej UKS Boxing Sokółka, która znajduje się w Zespole Szkół w Sokółce Starosta Sokólski pan Piotr Rećko podziękował zawodnikom klubu za ich wytrwałą i ciężką pracę oraz pogratulował im osiągniętych sukcesów. Nagrodzonymi byli w większości obecni i byli uczniowie <b>Zespołu Szkół Zawodowych im. Elizy Orzeszkowej w Sokółce</b>e. Brązowy medal XVIII Mistrzostw Polski Juniorek w Boksie w 2019 roku zdobyła <b>Zuzanna Olechno, uczennica klasy I Technikum fryzjerskiego</b>. Kolejny nagrodzony, <b>Kamil Kirpsza, uczeń klasy II Technikum mechanicznego</b> wywalczył srebrny medal XXVI Mistrzostw Polski Juniorów w Boksie w 2019 roku. Nagrodzoną multimedalistką, byłą uczennicą klasy IV Technikum fryzjerskiego, była <b>Aneta Gojko</b>, która jest dwukrotną złotą medalistką: XIX Mistrzostw Polski Seniorek w Boksie w 2019 roku i Młodzieżową Mistrzynią Polski z 2018 roku. Nagrodę z rąk Pana Starosty otrzymał także <b>Juliusz Ignatowicz</b>, uczeń Zespołu Szkół Rolniczych, który w XXVI Mistrzostwach Polski Juniorów w Boksie w 2019 roku zdobył brązowy medal. Podziękowania z rąk Pana Starosty przyjął również <b>Tomasz Potapczyk</b>, trener UKS Boxing Sokółka, który przygotował zawodników do walk w Mistrzostwach Polski</p>\r\n\r\n<p>Gratulujemy sukcesów naszym uczniom i ich trenerowi, życzymy im dalszych zwycięskich walk w kolejnych Mistrzostwach Polski Juniorów i Seniorów.</p>', ',4', '2019-04-07 23:29:09'),
(11, 'Wyjazd do teatru', '<p>5 kwietnia 2019 roku uczniowie <b>Zespołu Szkół Zawodowych w Sokółce</b> odwiedzili Teatr im. A. Węgierki w Białymstoku, by obejrzeć spektakl pt. \"Obława\". Treść przedstawienia oparta jest na autentycznych wspomnieniach ludzi, którzy przeżyli obławę NKWD na polskich żołnierzy AK w lasach augustowskich. Zaginęło wtedy bez wieści 600 osób, a ich grobów do dzisiaj nie odnaleziono. Młodzieży bardzo podobała się współczesna forma spektaklu, szczególnie muzyka. W skupieniu wsłuchiwali się w monologi aktorów i przeżywali poszczególne sceny. Ten spektakl na długo zostanie w pamięci uczniów.</p>\r\n<p>Opiekę nad uczniami sprawowały panie: <b>Renata Maliszewska i Jolanta Siemieniako</b>.</p>', ',6', '2019-04-04 23:33:50'),
(12, 'Kolejna wizyta byłego ucznia Adama Surowca', '<p>4 kwietnia 2019 roku <b>Zespół Szkół Zawodowych im. Elizy Orzeszkowej w Sokółce</b> po raz drugi odwiedził <b>Adam Surowiec</b>, były uczeń Technikum informatycznego. Adam walczy z ESBS (Emotional Speech Blocks Syndrome), co po polsku znaczy Syndrom Emocjonalnych Bloków Mowy. Rozwiązania problemu Adama od 4 lutego 2019 roku podjął się ośrodek w Mikołowie - NOWA MOWA - NEW SPEECH SP. Z O.O. Jest aktualnie w trakcie drugiego etapu nauki nowej mowy, które polega na doskonaleniu umiejętności mówienia. Zbiórka pieniędzy na naukę nowej mowy na stronie pomagam.pl przyniosła bardzo pozytywne efekty, za które Adam jest bardzo wdzięczny i dziękuje za wszystkie, choćby drobne datki. Jednocześnie prosi o dalsze finansowe wsparcie, gdyż przed nim jeszcze dziesięciu trzydniowych wyjazdów do Mikołowa. Te wyjazdy w ramach drugiego i trzeciego etapu nauki nowej mowy mają na celu dalszy rozwój płynnego mówienia.</p>\r\n\r\n<p>Adam spotkał się ze swoimi młodszymi o 2 lub 3 lata koleżankami i kolegami z klas III i IV technikum fryzjersko-informatycznego i III technikum mechanicznego, którzy pamiętali go jeszcze z czasów szkolnych. Mimo stresu związanego z występem Adam poradził sobie bardzo dobrze, płynnie mówił o sobie i odpowiadał na pytania zadawane przez uczniów i nauczycieli. Po trzech tygodniach od poprzedniej wizyty widać bardzo duży postęp w rozwoju nowej mowy u Adama, więc gratulujemy mu rozwoju umiejętności mówienia i czekamy na dalsze postępy.</p>\r\n', ',7', '2019-04-04 16:29:31'),
(13, 'Wizyta uczniów klasy III C gimnazjum Szkoły Podstawowej nr 1 w Sokółce', '<p>2 kwietnia 2019 roku <b>Zespół Szkół Zawodowych im. Elizy Orzeszkowej w Sokółce</b> odwiedzili uczniowie klasy III C gimnazjum ze Szkoły Podstawowej Nr 1 w Sokółce wraz z wychowawcą, panią Sylwią Multan-Kilczewską. Pan dyrektor Grzegorz Zalewski wraz z wicedyrektorem Lechem Czarnowiczem oraz kierownikiem Pracowni Ćwiczeń Technicznych Panem Mirosławem Osialem przedstawili uczniom ofertę edukacyjną szkoły, realizowane projekty praktyk zagranicznych na Malcie i praktyk krajowych w ramach programu \"Kompetentni i wykwalifikowani\".</p>\r\n\r\n<p>Uczniowie zwiedzili pracownie przedmiotowe i zawodowe oraz powstającą pracownię obrabiarek sterowanych numerycznie (CNC), gdzie pan Jerzy Szymaniuk przeprowadził krótkie warsztaty komputerowego rysunku i modelowania. W tym czasie dziewczęta z wielkim zaangażowaniem uczestniczyły w warsztatach tworzenia kul do kąpieli. Bardzo dziękujemy uczniom klasy III C i pani Sylwii Multan-Kilczewskiej za przybycie do naszej szkoły i zapoznanie się z jej ofertą.</p>', ',2', '2019-04-02 16:49:12'),
(16, 'II Liga Siatkówki Chłopców', '<p>W \"Prima Aprilis\", czyli 1 kwietnia 2019 roku w hali sportowej Zespołu Szkół w Niećkowie siatkarze <b>Zespołu Szkół Zawodowych w Sokółce</b> rozegrali ostatni turniej II Ligi Siatkówki Chłopców Szkół Ponadgimnazjalnych Województwa Podlaskiego. Drużyna ZSZ zmierzyła się na nim z doskonale dysponowanymi gospodarzami oraz liderem rozgrywek, ulegając po wyrównanej walce w pierwszym meczu <b>ZS Niećkowo 0:2 (20:25, 22:25)</b>, by w drugim spotkaniu wydrzeć punkt niepokonanym siatkarzom z <b>ZS 6 Suwałki 1:2 (25:18, 11:25, 5:15)</b>. Coraz lepsza jakość gry w końcówce sezonu pozwala spokojnie myśleć o przyszłym roku szkolnym, a w tym sezonie zespół zajął w II Lidze <b>VIII miejsce</b>.</p>\r\n<p style=\"text-decoration: underline; margin-top: 30px;\">Skład ZSZ:</p>\r\n<p><b>1 - Omar Szczęsnowicz (III Tfi), 3 - Kacper Gudalewski (I T), 4 - Patryk Olechno (III Tfi), 5 - Rafał Kozłowski (IV Tfi), 6 - Maciej Kiemiesz (II Tm), 7 - Andrzej Błahuszewski (III Tfi), 8 - Bartosz Mróz (I T), 9 - Dawid Łopatecki (I T), 11 - Tomasz Paszko (III Tfi), 12 - Patryk Panasiuk (IV Tfi), 13 - Paweł Olechno (III Tm).</b></p>\r\n<br><br>\r\n<span style=\"margin-left: 30px;\">Trener: Grzegorz Zalewski.</span>\r\n<h3 style=\"margin-left: 0pt; text-align: center;\">Końcowa tabela II Ligi:</h3>\r\n\r\n<table style=\"border: 3px solid gray; margin: 0pt auto; text-align: center;\" border=\"1\" bordercolor=\"gray\" cellpadding=\"3\" cellspacing=\"0\">\r\n  <tbody>\r\n    <tr style=\"background-color: rgb(211, 211, 211);\">\r\n      <th>Miejsce</th>\r\n      <th width=\"200\">Drużyna</th>\r\n      <th>Punkty</th>\r\n      <th>Sety</th>\r\n    </tr>\r\n    <tr style=\"color: rgb(65, 105, 225); font-weight: bold;\">\r\n      <td style=\"color: rgb(0, 0, 0);\">1</td>\r\n      <td align=\"left\">ZS 6 Suwałki</td>\r\n      <td>31</td>\r\n      <td>22:2</td>\r\n    </tr>\r\n    <tr style=\"color: rgb(65, 105, 225); font-weight: bold;\">\r\n      <td style=\"color: rgb(0, 0, 0);\">2</td>\r\n      <td align=\"left\">ZSE Białystok</td>\r\n      <td>30</td>\r\n      <td>22:2</td>\r\n    </tr>\r\n    <tr>\r\n      <td>3</td>\r\n      <td align=\"left\">ZST Białystok</td>\r\n      <td>22</td>\r\n      <td>16:8</td>\r\n	</tr>\r\n    <tr>\r\n      <td>4</td>\r\n      <td align=\"left\">ZS Niećkowo</td>\r\n      <td>21</td>\r\n      <td>16:8</td>\r\n	</tr>\r\n    <tr>\r\n      <td>5</td>\r\n      <td align=\"left\">ZS 1 Bielsk Podlaski</td>\r\n      <td>21</td>\r\n      <td>16:10</td>\r\n	</tr>\r\n	<tr>\r\n      <td>6</td>\r\n      <td align=\"left\">ZS Sokółka</td>\r\n      <td>17</td>\r\n      <td>14:12</td>\r\n    </tr>\r\n	  <tr>\r\n      <td>7</td>\r\n      <td align=\"left\">ZSOiZ Czyżew</td>\r\n      <td>14</td>\r\n      <td>12:15</td>\r\n    </tr>\r\n    <tr style=\"font-weight: bold; background-color: yellow;\">\r\n      <td>8</td>\r\n      <td align=\"left\">ZSZ Sokółka</td>\r\n      <td>12</td>\r\n      <td>11:17</td>\r\n    </tr>\r\n    <tr>\r\n      <td>9</td>\r\n      <td align=\"left\">ZSZ Wysokie Mazowieckie</td>\r\n      <td>10</td>\r\n      <td>8:17</td>\r\n    </tr>\r\n    <tr>\r\n      <td>10</td>\r\n      <td align=\"left\">ZSR Ostrożany</td>\r\n      <td>10</td>\r\n      <td>8:18</td>\r\n    </tr>\r\n    <tr style=\"color: red;\">\r\n      <td style=\"color: rgb(0, 0, 0);\">11</td>\r\n      <td align=\"left\">ZS 4 Bielsk Podlaski</td>\r\n      <td>7</td>\r\n      <td>6:19</td>\r\n    </tr>\r\n    <tr style=\"color: red;\">\r\n      <td style=\"color: rgb(0, 0, 0);\">12</td>\r\n      <td align=\"left\">ZS CKR Janów</td>\r\n      <td>-2</td>\r\n      <td>1:22</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<p style=\"color: rgb(65, 105, 225); font-size: 15px; text-indent: 0pt; text-align: center;\">• - awans do I Ligi <span style=\"color: red; margin-left: 55px;\">• - spadek z II Ligi</span></p>\r\n<br>\r\n<b>Wyniki wszystkich rozegranych do tej pory spotkań znajdują się</b> <a href=\"http://zszsokolka.pl/pliki/Liga_siatkowka_ch_2018.pdf\" target=\"_blank\"><span style=\"font-size: 17px;\">tutaj...</span></a>\r\n<br><br>', ',4', '2019-04-01 20:58:26'),
(17, 'Wizyta uczniów Szkoły Podstawowej z Janowszczyzny', '<p>29 marca 2019 roku <b>Zespół Szkół Zawodowych im. Elizy Orzeszkowej w Sokółce</b> odwiedziła młodzież z klasy VIII <b>Szkoły Podstawowej w Janowszczyźnie</b>. Pan dyrektor Grzegorz Zalewski wraz z panem Markiem Mozyrskim i kierownikiem Pracowni Ćwiczeń Technicznych Panem Mirosławem Osialem przedstawili uczniom ofertę edukacyjną szkoły, realizowane projekty praktyk zagranicznych we Włoszech i na Malcie oraz staży krajowych w ramach programu \"Kompetentni i wykwalifikowani\".</p>\r\n\r\n<p>Uczniowie zwiedzili pracownie przedmiotowe i zawodowe oraz powstającą pracownię obrabiarek sterowanych numerycznie (CNC), gdzie pan Jerzy Szymaniuk przeprowadził krótkie warsztaty komputerowego rysunku i modelowania. Dziewczyny z wielkim zaangażowaniem uczestniczyły w warsztatach tworzenia kul do kąpieli, chętne mogły skorzystać z wybranych zabiegów fryzjerskich, dzięki uprzejmości uczennic z klas fryzjerskich i nauczycielki przedmiotów zawodowych kierunku technik usług fryzjerskich, pani Karoliny Roszkowskiej. Bardzo dziękujemy uczniom z Janowszczyzny za przybycie do naszej szkoły i zapoznanie się z jej ofertą.</p>', ',2', '2019-03-29 22:24:16'),
(18, 'III Liga Siatkówki Dziewcząt', '<p>28 marca 2019 roku w hali sportowej przy Zespole Szkół w Sokółce siatkarki <b>Zespołu Szkół Zawodowych w Sokółce</b> rozegrały piąty turniej III Ligi Siatkówki Dziewcząt Szkół Ponadgimnazjalnych Województwa Podlaskiego. Na \"własnej\" hali dziewczęta pokazały niezłe umiejętności, zdobywając kolejne ligowe punkty. Wprawdzie w pierwszym meczu uległy wprawdzie faworyzowanej ekipie <b>I LO Zambrów 0:2 (14:25, 15:25)</b>, lecz w drugim spotkaniu rozgromiły wręcz ekipę <b>ZS 1 Zambrów 2:0 (25:9, 25:10)</b>. Zwycięstwo to zapewniło siatkarkom ZSZ utrzymanie w III Lidze po raz drugi z rzędu... Serdeczne gratulacje całej drużynie!</p>\r\n\r\n<p style=\"text-decoration: underline; margin-left: 30px;\">Skład zespołu:</p>\r\n<b>Klaudia Biziuk, Kamila Chorąży, Monika Nowik, Klaudia Pawełko (wszystkie IV Tfi), Magdalena Gieniusz, Martyna Safarowicz (obie II wz).</b><br>\r\n<span style=\"margin-left: 30px;\">Trener: Jolanta Lech.</span>\r\n<h3 style=\"margin-left: 0pt; text-align: center;\">Końcowa tabela III Ligi:</h3>\r\n<br><br>\r\n<table style=\"border: 3px solid gray; margin: 0pt auto; text-align: center;\" border=\"1\" bordercolor=\"gray\" cellpadding=\"3\" cellspacing=\"0\">\r\n  <tbody>\r\n    <tr style=\"background-color: rgb(211, 211, 211);\">\r\n      <th>Miejsce</th>\r\n      <th width=\"200\">Drużyna</th>\r\n      <th>Punkty</th>\r\n      <th>Sety</th>\r\n    </tr>\r\n    <tr style=\"color: rgb(65, 105, 225); font-weight: bold;\">\r\n      <td style=\"color: rgb(0, 0, 0);\">1</td>\r\n      <td align=\"left\">II LO DNJB Hajnówka</td>\r\n      <td>29</td>\r\n      <td>20:1</td>\r\n    </tr>\r\n    <tr style=\"color: rgb(65, 105, 225); font-weight: bold;\">\r\n      <td style=\"color: rgb(0, 0, 0);\">2</td>\r\n      <td align=\"left\">XIV LO Białystok</td>\r\n      <td>26</td>\r\n      <td>18:4</td>\r\n    </tr>\r\n    <tr>\r\n      <td>3</td>\r\n      <td align=\"left\">I LO Zambrów</td>\r\n      <td>21</td>\r\n      <td>15:7</td>\r\n	</tr>\r\n    <tr>\r\n      <td>4</td>\r\n      <td align=\"left\">ZSZ Wysokie Mazowieckie</td>\r\n      <td>20</td>\r\n      <td>14:7</td>\r\n	</tr>\r\n    <tr>\r\n      <td>5</td>\r\n      <td align=\"left\">ZSOiT Białystok</td>\r\n      <td>17</td>\r\n      <td>12:9</td>\r\n	</tr>\r\n	<tr>\r\n      <td>6</td>\r\n      <td align=\"left\">ZSR Sokółka</td>\r\n      <td>14</td>\r\n      <td>10:12</td>\r\n    </tr>\r\n	  <tr style=\"font-weight: bold; background-color: yellow;\">\r\n      <td>7</td>\r\n      <td align=\"left\">ZSZ Sokółka</td>\r\n      <td>13</td>\r\n      <td>10:11</td>\r\n    </tr>\r\n    <tr>\r\n      <td>8</td>\r\n      <td align=\"left\">I LO Łapy</td>\r\n      <td>9</td>\r\n      <td>8:13</td>\r\n    </tr>\r\n    <tr>\r\n      <td>9</td>\r\n      <td align=\"left\">ZS CKR Rudka</td>\r\n      <td>7</td>\r\n      <td>5:16</td>\r\n    </tr>\r\n    <tr>\r\n      <td>10</td>\r\n      <td align=\"left\">ZSOiZ Czyżew</td>\r\n      <td>3</td>\r\n      <td>2:18</td>\r\n    </tr>\r\n    <tr style=\"color: red;\">\r\n      <td style=\"color: rgb(0, 0, 0);\">11</td>\r\n      <td align=\"left\">ZS 1 Zambrów</td>\r\n      <td>3</td>\r\n      <td>2:18</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n<p style=\"color: rgb(65, 105, 225); font-size: 15px; text-indent: 0pt; text-align: center;\">• - awans do II Ligi <span style=\"color: red; margin-left: 55px;\">• - spadek z III Ligi</span></p>\r\n<b>Wyniki wszystkich rozegranych do tej pory spotkań znajdują się </b><a href=\"http://zszsokolka.pl/pliki/Liga_siatkowka_dz_2018.pdf\">tutaj...</a><br><br>', ',4', '2019-03-28 22:35:07'),
(19, 'Targi edukacyjne z projektu \"Dobry zawód - fajne życie\"', '<img src=\"http://zszsokolka.pl/obrazki/dzfz.jpg\" style=\"width:130px; margin:30 10 40 10; float:left;\">\r\n<p>28 marca 2019 roku delegacja <b>Zespołu Szkół Zawodowych im. Elizy Orzeszkowej w Sokółce</b> wzięła udział w targach edukacyjnych w Białymstoku w ramach projektu \"Dobry zawód - fajne życie\". Projekt realizowany jest w ramach Regionalnego Programu Operacyjnego Województwa Podlaskiego na lata 2014-2020, a jego liderem jest Białostocka Fundacja Kształcenia Kadr. Nasza szkoła jako jedna z dziesięciu szkół ponadgimnazjalnych w województwie podlaskim zakwalifikowała się do udziału w projekcie. Udział w projekcie zagwarantował szkole udział w kampanii promocyjnej projektu, w tym stoisko na targach edukacyjno-zawodowych na Stadionie Miejskim w Białymstoku.</p>\r\n\r\n<p>ZSZ na targach reprezentowali <b>Aneta Tymińska i Lech Czarnowicz</b>.</p>', '', '2019-03-28 22:51:52'),
(20, '\"Młodzież Zapobiega Pożarom\"', '<p>27 marca w Komendzie Powiatowej Państwowej Straży Pożarnej w Sokółce przeprowadzono powiatowe eliminacje do Ogólnopolskiego Turnieju Wiedzy Pożarniczej \"Młodzież Zapobiega Pożarom\". Z <b>Zespołu Szkół Zawodowych w Sokółce</b> wzięli w nich udział uczniowie z <b>klasy III Tm - Kacper Piekarski, Piotr Jacewicz i Michał Gojko</b>.</p>\r\n<p>Nie udało się nam co prawda zakwalifikować się do eliminacji wojewódzkich, jednak już samo uczestnictwo w konkursie i przygotowanie się do niego daje wiedzę, która jest niezbędna do ratowania ludzkiego życia.</p>\r\n\r\nDziękuję uczestnikom i życzę powodzenia w następnych konkursach.\r\n<p style=\"float: right;margin-right: 30px\">Izabela Garkowska</p>\r\n<br><br>', '', '2019-03-27 21:00:37'),
(21, 'Konkurs \"Poliglota\"', '<p>26 marca 2019 roku w ZSR w Sokółce odbył się <b>III Powiatowy Konkurs Angielsko-Rosyjski \"Poliglota\"</b> pod patronatem Starosty Sokólskiego. W konkursie wzięło udział 19 uczniów: 9 ze szkół gimnazjalnych i podstawowych z Sokółki, Starej Kamionki, Babik, Janowszczyzny oraz 10 uczniów ze szkół średnich z Sokółki (ZSZ, ZSR, LO), Janowa i Dąbrowy Białostockiej.</p>\n<p>Uczniowie mięli do rozwiązania w formie pisemnej 6 zadań w językach angielskim i rosyjskim z zakresu: słuchania ze zrozumieniem, czytania ze zrozumieniem, gramatyki i leksyki.</p>\n<p>Naszą szkołę reprezentowali uczniowie: <b>Przemysław Krawiel i Patryk Olechno z klasy III Technikum informatycznego</b>.</p>\n<p>Uczniów do konkursu przygotowały panie: <b>Renata Maliszewska i Aneta Tymińska</b>.</p>', ',5', '2019-03-26 21:37:34');

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
(1, 'Zakończenie roku'),
(2, 'Impreza szkolna'),
(3, 'Wolontariat'),
(4, 'Sport'),
(5, 'Konkurs'),
(6, 'Wycieczka'),
(7, 'Pomocna dłoń');

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
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
