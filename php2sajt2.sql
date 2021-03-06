-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 01:55 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php2sajt2`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id_activity` int(125) NOT NULL,
  `time` int(125) NOT NULL,
  `query` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id_activity`, `time`, `query`, `user_id`) VALUES
(1, 1584193419, 'SELECT * FROM categories', 1),
(2, 1584213966, 'INSERT', 1),
(3, 1584215668, 'INSERT', 1),
(4, 1584216106, 'INSERT category', 1),
(5, 1584225595, 'INSERT role', 1),
(6, 1584226192, 'INSERT user', 1),
(7, 1584226472, 'INSERT news', 1),
(8, 1584226790, 'UPDATE category', 1),
(9, 1584226928, 'UPDATE news', 1),
(10, 1584227045, 'INSERT category', 1),
(11, 1584227085, 'UDATE role', 1),
(12, 1584227198, 'UPDATE user', 1),
(13, 1584268815, 'SELECT user/logovanje', 1),
(14, 1584269094, 'INSERT user/registracija', 27),
(15, 1584388034, 'SELECT user/logovanje', 2),
(16, 1584392390, 'INSERT comment', 2),
(17, 1584398191, 'SELECT user/logovanje', 2),
(18, 1584398208, 'INSERT comment', 2),
(19, 1584399255, 'INSERT comment', 2),
(20, 1584399319, 'INSERT comment', 2),
(21, 1584400775, 'SELECT user/logovanje', 1),
(22, 1584408096, 'SELECT user/logovanje', 2),
(23, 1584408543, 'SELECT user/logovanje', 2),
(24, 1584410434, 'SELECT user/logovanje', 1),
(25, 1584410680, 'SELECT user/logovanje', 2),
(26, 1584410732, 'SELECT user/logovanje', 2),
(27, 1584474449, 'SELECT user/logovanje', 1),
(28, 1584474477, 'SELECT user/logovanje', 2),
(29, 1584474511, 'SELECT user/logovanje', 1),
(30, 1584475237, 'SELECT user/logovanje', 2),
(31, 1584476109, 'SELECT user/logovanje', 1),
(32, 1584476148, 'SELECT user/logovanje', 2),
(33, 1584476658, 'SELECT user/logovanje', 1),
(34, 1584477941, 'SELECT user/logovanje', 2),
(35, 1584478263, 'SELECT user/logovanje', 2),
(36, 1584478279, 'SELECT user/logovanje', 1),
(37, 1584478377, 'SELECT user/logovanje', 1),
(38, 1584478433, 'SELECT user/logovanje', 1),
(39, 1584482203, 'SELECT user/logovanje', 2),
(40, 1584483554, 'SELECT user/logovanje', 1),
(41, 1584483597, 'DELETE_news', 1),
(42, 1584484126, 'INSERT category', 1),
(43, 1584484179, 'SELECT user/logovanje', 2),
(44, 1584485412, 'INSERT user/registracija', 2),
(45, 1584485620, 'INSERT user/registracija', 2),
(46, 1584485723, 'UPDATE user', 2),
(47, 1584486888, 'UPDATE user', 2),
(48, 1584487001, 'UPDATE user', 2),
(49, 1584487065, 'SELECT user/logovanje', 1),
(50, 1584487178, 'SELECT user/logovanje', 1),
(51, 1584487307, 'SELECT user/logovanje', 1),
(52, 1584487399, 'SELECT user/logovanje', 1),
(53, 1584491549, 'SELECT user/logovanje', 1),
(54, 1584491594, 'SELECT user/logovanje', 2),
(55, 1584491637, 'SELECT user/logovanje', 1),
(56, 1584491759, 'SELECT user/logovanje', 1),
(57, 1584491775, 'SELECT user/logovanje', 2),
(58, 1584492013, 'SELECT user/logovanje', 1),
(59, 1584493210, 'SELECT user/logovanje', 1),
(60, 1584552348, 'SELECT user/logovanje', 2),
(61, 1584552362, 'UPDATE user', 2),
(62, 1584561365, 'SELECT user/logovanje', 1),
(63, 1584561399, 'INSERT news', 1),
(64, 1584564611, 'SELECT user/logovanje', 1),
(65, 1584631820, 'SELECT user/logovanje', 1),
(66, 1584633401, 'SELECT user/logovanje', 1),
(67, 1584636674, 'SELECT user/logovanje', 1),
(68, 1584707397, 'SELECT user/logovanje', 1),
(69, 1584899031, 'SELECT user/logovanje', 1),
(70, 1584905721, 'SELECT user/logovanje', 1),
(71, 1584906080, 'SELECT user/logovanje', 1),
(72, 1584906163, 'DELETE_news', 1),
(73, 1584906299, 'DELETE_news', 1),
(74, 1584998423, 'SELECT user/logovanje', 1),
(75, 1584998495, 'INSERT category', 1),
(76, 1584998500, 'DELETE_news', 1),
(77, 1584998545, 'INSERT category', 1),
(78, 1584998574, 'DELETE_category', 1),
(79, 1584998666, 'INSERT role', 1),
(80, 1584998669, 'DELETE_roles', 1),
(81, 1584998744, 'DELETE_user', 1),
(82, 1584998867, 'SELECT user/logovanje', 2),
(83, 1584998892, 'INSERT comment', 2),
(84, 1584998923, 'SELECT user/logovanje', 1),
(85, 1584998928, 'DELETE_news', 1),
(86, 1584998977, 'SELECT user/logovanje', 2),
(87, 1584998992, 'INSERT comment', 2),
(88, 1584999007, 'INSERT comment', 2),
(89, 1584999013, 'SELECT user/logovanje', 1),
(90, 1584999019, 'DELETE_comment', 1),
(91, 1584999780, 'INSERT category', 1),
(92, 1584999932, 'INSERT user', 1),
(93, 1585000013, 'INSERT role', 1),
(94, 1585000312, 'INSERT role', 1),
(95, 1585000540, 'UDATE role', 1),
(96, 1585001456, 'INSERT news', 1),
(97, 1585001891, 'SELECT user/logovanje', 2),
(98, 1585001904, 'INSERT comment', 2),
(99, 1585002504, 'INSERT comment', 2),
(100, 1585002548, 'INSERT comment', 2),
(101, 1585002645, 'SELECT user/logovanje', 1),
(102, 1585003038, 'UPDATE news', 1),
(103, 1585003161, 'INSERT news', 1),
(104, 1585003172, 'UPDATE news', 1),
(105, 1585003997, 'SELECT user/logovanje', 1),
(106, 1585004034, 'INSERT category', 1),
(107, 1585004042, 'DELETE_category', 1),
(108, 1585005239, 'INSERT category', 1),
(109, 1585005396, 'DELETE_category', 1),
(110, 1585005404, 'INSERT category', 1),
(111, 1585005416, 'INSERT category', 1),
(112, 1585005671, 'INSERT category', 1),
(113, 1585005702, 'INSERT category', 1),
(114, 1585005805, 'INSERT category', 1),
(115, 1585005960, 'INSERT category', 1),
(116, 1585005975, 'DELETE_category', 1),
(117, 1585005977, 'DELETE_category', 1),
(118, 1585005978, 'DELETE_category', 1),
(119, 1585005980, 'DELETE_category', 1),
(120, 1585005990, 'INSERT category', 1),
(121, 1585006053, 'INSERT category', 1),
(122, 1585006063, 'DELETE_category', 1),
(123, 1585006065, 'DELETE_category', 1),
(124, 1585006074, 'INSERT category', 1),
(125, 1585081464, 'SELECT user/logovanje', 1),
(126, 1585081510, 'INSERT category', 1),
(127, 1585088309, 'INSERT category', 1),
(128, 1585088336, 'DELETE_category', 1),
(129, 1585088340, 'DELETE_category', 1),
(130, 1585088349, 'INSERT category', 1),
(131, 1585088496, 'SELECT user/logovanje', 2),
(132, 1585097921, 'SELECT user/logovanje', 1),
(133, 1585097943, 'SELECT user/logovanje', 1),
(134, 1585101583, 'SELECT user/logovanje', 1),
(135, 1585102298, 'INSERT message', 3),
(136, 1585102318, 'SELECT user/logovanje', 1),
(137, 1585102331, 'DELETE_roles', 1),
(138, 1585102333, 'DELETE_roles', 1),
(139, 1585102335, 'DELETE_roles', 1),
(140, 1585102337, 'DELETE_roles', 1),
(141, 1585102338, 'DELETE_roles', 1),
(142, 1585102340, 'DELETE_roles', 1),
(143, 1585102342, 'DELETE_roles', 1),
(144, 1585102381, 'INSERT role', 1),
(145, 1585103533, 'INSERT message', 11),
(146, 1585104019, 'SELECT user/logovanje', 1),
(147, 1585104023, 'DELETE contac', 1),
(148, 1585189160, 'INSERT message', 11),
(149, 1585189444, 'INSERT message', 11),
(150, 1585189517, 'INSERT message', 11),
(151, 1585189616, 'INSERT message', 11),
(152, 1585190017, 'INSERT message', 11),
(153, 1585190333, 'INSERT message', 11),
(154, 1585190468, 'INSERT message', 11),
(155, 1585190551, 'INSERT message', 11),
(156, 1585190713, 'INSERT message', 11),
(157, 1585190938, 'INSERT message', 11),
(158, 1585191256, 'INSERT message', 11),
(159, 1585191478, 'INSERT message', 11),
(160, 1585231689, 'INSERT message', 11),
(161, 1585235685, 'SELECT user/logovanje', 2),
(162, 1585235981, 'SELECT user/logovanje', 1),
(163, 1585239720, 'INSERT message', 11),
(164, 1585240923, 'INSERT message', 11),
(165, 1585241029, 'INSERT message', 11),
(166, 1585248559, 'SELECT user/logovanje', 1),
(167, 1585253980, 'SELECT user/logovanje', 1),
(168, 1585254007, 'DELETE_comment', 1),
(169, 1585254016, 'DELETE contact', 1),
(170, 1585256310, 'SELECT user/logovanje', 1),
(171, 1585256489, 'SELECT user/logovanje', 1),
(172, 1585257049, 'SELECT user/logovanje', 1),
(173, 1585260422, 'INSERT user/registracija', 28),
(174, 1585260509, 'SELECT user/logovanje', 28),
(175, 1585260534, 'UPDATE user', 28),
(176, 1585260574, 'SELECT user/logovanje', 1),
(177, 1585260584, 'UPDATE category', 1),
(178, 1585260591, 'UPDATE category', 1),
(179, 1585260718, 'UPDATE category', 1),
(180, 1585260873, 'UPDATE news', 1),
(181, 1585260888, 'UPDATE news', 1),
(182, 1585260894, 'UPDATE news', 1),
(183, 1585261334, 'UPDATE category', 1),
(184, 1585261674, 'UPDATE news', 1),
(185, 1585261901, 'DELETE_comment', 1),
(186, 1585261912, 'DELETE contact', 1),
(187, 1585262106, 'DELETE contact', 1),
(188, 1585268209, 'SELECT user/logovanje', 1),
(189, 1585268219, 'DELETE_news', 1),
(190, 1585268222, 'DELETE_news', 1),
(191, 1585268224, 'DELETE_news', 1),
(192, 1585268226, 'DELETE_news', 1),
(193, 1585268228, 'DELETE_news', 1),
(194, 1585268233, 'DELETE_news', 1),
(195, 1585268237, 'DELETE_news', 1),
(196, 1585268246, 'DELETE_news', 1),
(197, 1585268252, 'DELETE_news', 1),
(198, 1585268256, 'DELETE_news', 1),
(199, 1585268265, 'DELETE_news', 1),
(200, 1585268273, 'DELETE_news', 1),
(201, 1585268290, 'DELETE_news', 1),
(202, 1585268296, 'DELETE_news', 1),
(203, 1585268428, 'INSERT news', 1),
(204, 1585268531, 'DELETE_category', 1),
(205, 1585268534, 'DELETE_category', 1),
(206, 1585268537, 'DELETE_category', 1),
(207, 1585268539, 'DELETE_category', 1),
(208, 1585268540, 'DELETE_category', 1),
(209, 1585268542, 'DELETE_category', 1),
(210, 1585268544, 'DELETE_category', 1),
(211, 1585268546, 'DELETE_category', 1),
(212, 1585268548, 'DELETE_category', 1),
(213, 1585268549, 'DELETE_category', 1),
(214, 1585268552, 'DELETE_category', 1),
(215, 1585268753, 'INSERT news', 1),
(216, 1585268922, 'INSERT news', 1),
(217, 1585269040, 'INSERT news', 1),
(218, 1585269135, 'INSERT news', 1),
(219, 1585269376, 'INSERT news', 1),
(220, 1585269567, 'INSERT news', 1),
(221, 1585269760, 'INSERT news', 1),
(222, 1585270030, 'INSERT news', 1),
(223, 1585270245, 'INSERT news', 1),
(224, 1585270442, 'INSERT news', 1),
(225, 1585270549, 'INSERT news', 1),
(226, 1585270718, 'SELECT user/logovanje', 1),
(227, 1585270806, 'INSERT news', 1),
(228, 1585270954, 'INSERT news', 1),
(229, 1585271037, 'INSERT news', 1),
(230, 1585271135, 'INSERT news', 1),
(231, 1585271216, 'INSERT news', 1),
(232, 1585271265, 'SELECT user/logovanje', 1),
(233, 1585271271, 'DELETE_user', 1),
(234, 1585271286, 'DELETE_user', 1),
(235, 1585271290, 'DELETE_user', 1),
(236, 1585271291, 'DELETE_user', 1),
(237, 1585271304, 'DELETE_user', 1),
(238, 1585271309, 'DELETE_user', 1),
(239, 1585271312, 'DELETE_user', 1),
(240, 1585271319, 'DELETE_user', 1),
(241, 1585271477, 'DELETE contact', 1),
(242, 1585271479, 'DELETE contact', 1),
(243, 1585271481, 'DELETE contact', 1),
(244, 1585271483, 'DELETE contact', 1),
(245, 1585271484, 'DELETE contact', 1),
(246, 1585271486, 'DELETE contact', 1),
(247, 1585271487, 'DELETE contact', 1),
(248, 1585271490, 'DELETE contact', 1),
(249, 1585271493, 'DELETE contact', 1),
(250, 1585271495, 'DELETE contact', 1),
(251, 1585271496, 'DELETE contact', 1),
(252, 1585271500, 'DELETE contact', 1),
(253, 1585271501, 'DELETE contact', 1),
(254, 1585271502, 'DELETE contact', 1),
(255, 1585271504, 'DELETE contact', 1),
(256, 1585271505, 'DELETE contact', 1),
(257, 1585271571, 'SELECT user/logovanje', 1),
(258, 1585272485, 'SELECT user/logovanje', 1),
(259, 1585272895, 'SELECT user/logovanje', 2),
(260, 1585272952, 'SELECT user/logovanje', 1),
(261, 1585273134, 'SELECT user/logovanje', 2),
(262, 1585273197, 'SELECT user/logovanje', 27),
(263, 1585273407, 'SELECT user/logovanje', 2),
(264, 1585274548, 'SELECT user/logovanje', 1),
(265, 1585276254, 'SELECT user/logovanje', 1),
(266, 1585314481, 'SELECT user/logovanje', 2),
(267, 1585314872, 'SELECT user/logovanje', 1),
(268, 1585318233, 'SELECT user/logovanje', 1),
(269, 1585320345, 'SELECT user/logovanje', 2),
(270, 1585333133, 'SELECT user/logovanje', 2),
(271, 1585335252, 'SELECT user/logovanje', 1),
(272, 1585335343, 'INSERT news', 1),
(273, 1585335703, 'INSERT news', 1),
(274, 1585335848, 'INSERT news', 1),
(275, 1585337037, 'INSERT role', 1),
(276, 1585337831, 'INSERT news', 1),
(277, 1585337873, 'UPDATE news', 1),
(278, 1585337939, 'UPDATE news', 1),
(279, 1585338802, 'DELETE_news', 1),
(280, 1585338807, 'DELETE_roles', 1),
(281, 1585338926, 'SELECT user/logovanje', 1),
(282, 1585339031, 'SELECT user/logovanje', 1),
(283, 1585339079, 'SELECT user/logovanje', 2),
(284, 1585339090, 'SELECT user/logovanje', 27),
(285, 1590854870, 'SELECT user/logovanje', 1),
(286, 1590859568, 'SELECT user/logovanje', 1),
(287, 1590882618, 'SELECT user/logovanje', 1),
(288, 1591025868, 'SELECT user/logovanje', 1),
(289, 1608763782, 'SELECT user/logovanje', 1),
(290, 1608847056, 'SELECT user/logovanje', 1),
(291, 1615296908, 'SELECT user/logovanje', 1),
(292, 1615296943, 'DELETE_user', 1),
(293, 1615297128, 'INSERT user', 1),
(294, 1615297316, 'DELETE_comment', 1),
(295, 1615297337, 'DELETE contact', 1),
(296, 1615297403, 'INSERT user/registracija', 29),
(297, 1615297411, 'SELECT user/logovanje', 29),
(298, 1615297512, 'UPDATE user', 29),
(299, 1615297658, 'SELECT user/logovanje', 29),
(300, 1615297705, 'SELECT user/logovanje', 1),
(301, 1615474505, 'SELECT user/logovanje', 1),
(302, 1615477113, 'UPDATE user', 1),
(303, 1615477276, 'UPDATE user', 1),
(304, 1615477294, 'UPDATE user', 1),
(305, 1615477312, 'UPDATE user', 1),
(306, 1615477337, 'DELETE_user', 1),
(307, 1615479692, 'UPDATE user', 1),
(308, 1615479708, 'UPDATE user', 1),
(309, 1615479731, 'UPDATE user', 1),
(310, 1615480534, 'UDATE role', 1),
(311, 1615480916, 'SELECT user/logovanje', 10),
(312, 1615480982, 'SELECT user/logovanje', 2),
(313, 1615488365, 'SELECT user/logovanje', 2),
(314, 1615491352, 'SELECT user/logovanje', 2),
(315, 1615491408, 'INSERT category', 2),
(316, 1615491412, 'DELETE_category', 1),
(317, 1615492033, 'SELECT user/logovanje', 10),
(318, 1615493107, 'SELECT user/logovanje', 2),
(319, 1615551298, 'SELECT user/logovanje', 2),
(320, 1615552657, 'UPDATE news', 2),
(321, 1615552673, 'UPDATE news', 2),
(322, 1615552743, 'INSERT news', 2),
(323, 1615552760, 'UPDATE news', 2),
(324, 1615554081, 'SELECT user/logovanje', 2),
(325, 1615554208, 'INSERT user/registracija', 30),
(326, 1615554215, 'SELECT user/logovanje', 30),
(327, 1615554233, 'SELECT user/logovanje', 2),
(328, 1615563836, 'SELECT user/logovanje', 2),
(329, 1615635803, 'SELECT user/logovanje', 2),
(330, 1615639570, 'SELECT user/logovanje', 2),
(331, 1615639690, 'SELECT user/logovanje', 2),
(332, 1615639773, 'SELECT user/logovanje', 2),
(333, 1615640496, 'SELECT user/logovanje', 2),
(334, 1615640553, 'SELECT user/logovanje', 2),
(335, 1615641008, 'SELECT user/logovanje', 2),
(336, 1615641192, 'SELECT user/logovanje', 2),
(337, 1615642324, 'SELECT user/logovanje', 2),
(338, 1615731649, 'SELECT user/logovanje', 10);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id_author` int(11) NOT NULL,
  `first_last_name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `text1` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `text2` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `text3` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `text4` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `no_index` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `image_path` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id_author`, `first_last_name`, `text1`, `text2`, `text3`, `text4`, `no_index`, `image_path`) VALUES
(1, 'Aleksandra Fridl', 'Ro??ena sam 20.09.1982.godine. Zavr??ila Filozofski fakultet, smer etnologija i antropologija ali kako ??elim da u ??ivotu radim posao koji volim prona??la sam se u web programiranju. ', '\r\nUz veliku podr??ku porodice studiram Visoku ICT ??kolu.  ', 'Imam sina od ??est godine. ', 'Za potrebe izrade ovog sajta koriscene su vesti koje su u periodu izrade bile postavljene na sajtu https://www.danas.rs/.', '311/14', 'images/af.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_category`, `name_category`) VALUES
(1, 'Politika'),
(2, 'Ekonomija'),
(3, 'Dru??tvo'),
(4, 'Kultura'),
(7, 'Slobodno vreme'),
(8, 'Zena'),
(9, 'Sport'),
(12, 'Korona');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `text_comment` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `posted_at` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id_comment`, `text_comment`, `posted_at`, `user_id`, `news_id`) VALUES
(45, 'Bravo Profesore!', '1585272922', 2, 36),
(46, 'Hahahah presmesno!', '1585273157', 2, 39),
(47, 'Jel moguce da nam se ponavlja ova paranoja!', '1585273228', 27, 14),
(48, 'Bravo Mare Care!', '1585273253', 27, 26),
(49, 'Sada cemo se igrati vise nego ikad sa svojom decom!', '1585273285', 27, 28),
(50, 'Samo nam je jos to trebalo!', '1585273304', 27, 32),
(51, 'Ala Sajam deluje jezivo! Niko vise ne izlazi iz kuce!', '1585273345', 27, 30),
(52, 'Jok neces da nam vezes omcu oko vrata!', '1585273384', 27, 23),
(53, 'Bravo momci!', '1585273428', 2, 31),
(54, 'Kako li cemo bez Olimpijade!', '1585273455', 2, 24),
(55, 'A sto i ne bi?!', '1585273487', 2, 17),
(56, 'Amerikanci u svakoj corbi!', '1585273515', 2, 29),
(57, 'O ne opet kolaps u gradu!', '1585273578', 2, 20),
(58, 'Odlican tekst!', '1585273602', 2, 14),
(59, 'Anksioznost jos i zbog korone! Moglo nas je bar nesto zaobici!', '1585273683', 2, 33),
(60, 'Ovo je nesto posebno!', '1585333292', 2, 38),
(61, 'Nesto posebno!', '1585334915', 2, 38),
(62, 'Nesto posebno!', '1585335019', 2, 38),
(63, 'Stvarno dobro!', '1585335050', 2, 38),
(64, 'Super je', '1585335098', 2, 38),
(66, 'Bas volim drustvene igre!', '1615297688', 29, 28);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id_contact` int(11) NOT NULL,
  `title` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `first_last_name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `posted` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id_contact`, `title`, `text`, `email`, `first_last_name`, `posted`) VALUES
(18, 'Dusana Petrovica-Saneta 5/12', 'Noidjga09j', 'veljko@gmail.com', 'Veljko', '1585239720'),
(20, 'Vest', 'Kontaktirajte me povodom novih informacija o korona virusu.', 'igra.af@gmail.com', 'Aleksandra Fridl', '1585271787'),
(21, 'Vest', 'Kontaktirajte me povodom novih informacija o korona virusu.', 'igra.af@gmail.com', 'Aleksandra Fridl', '1585271787'),
(22, 'Sokantno', 'Imam informacije o drzanom vrhu.', 'mladjica@gmail.com', 'Mladen Jeremic', '1585271835'),
(23, 'Sokantno', 'Imam informacije o drzanom vrhu.', 'mladjica@gmail.com', 'Mladen Jeremic', '1585271835'),
(24, 'Obecanje', 'Obecala sam vam dalje poteze. Kontaktirajte me.', 'jeca@gmail.com', 'Jelena Jankovic', '1585271885'),
(25, 'Obecanje', 'Obecala sam vam dalje poteze. Kontaktirajte me.', 'jeca@gmail.com', 'Jelena Jankovic', '1585271885'),
(26, 'Poverljive info', 'Imam poverljive informacije. Kontaktirajte me.', 'ivanM@gmail.com', 'Ivan Mijalovic', '1585271949'),
(27, 'Poverljive info', 'Imam poverljive informacije. Kontaktirajte me.', 'ivanM@gmail.com', 'Ivan Mijalovic', '1585271949'),
(28, 'Kinezi', 'Imam dogovorene informacije.', 'andja@gmail.com', 'Andjela Vasiljev', '1585272029'),
(29, 'Pokusaj atentata', 'Saznao sam nesto novo. Kontakterijate me', 'slobe@gmail.com', 'Slobodan Domazet', '1585272074'),
(30, 'Trula Dinja', 'Saznao sam ono sto smo se dogovorili.', 'vasa@gmail.com', 'Vasa Carapic', '1585272110'),
(31, 'Fotke', 'Dostava.', 'gvozda@gmail.com', 'Gvozden Bedric', '1585272149'),
(32, 'Povratak otpisanih', 'Imam jos friska informacija.', 'muka@gmail.com', 'Muka Miric', '1585272201'),
(33, 'Ponesto o Rokfelerovima', 'Kontaktirajte me za dalje informacije.', 'sladja@gmail.com', 'Sladja MItrovic', '1585272264'),
(34, 'Policijski cas', 'Pravila policijskog casa. Kontaktirajte me.', 'milek@gmail.com', 'Milek Cizmic', '1585272313'),
(35, 'Pravila', 'Pravila se moraju postovati. Detaljinije uzivo. Kontaktirajte me.', 'devetar@gmail.com', 'Devetar Cokulic', '1585272371'),
(36, 'Korupcija', 'Zelim da dam izjavu  o korupciji u pozoristu.', 'ana@gmail.com', 'Ana Vujic', '1585272424');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id_menu` int(11) NOT NULL,
  `name_menu` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `user_menu` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `admin_menu` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `visitor_menu` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id_menu`, `name_menu`, `user_menu`, `admin_menu`, `visitor_menu`, `link`) VALUES
(1, 'Po??etna', '1', '0', '1', ''),
(2, 'Anketa', '', '', '1', ''),
(3, 'Autor', '1', '0', '1', ''),
(4, 'Kontakt', '', '', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id_news` int(125) NOT NULL,
  `title_news` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8_unicode_ci NOT NULL,
  `text_news` text COLLATE utf8_unicode_ci NOT NULL,
  `picture_path` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(125) NOT NULL,
  `posted_date` int(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `title_news`, `subtitle`, `text_news`, `picture_path`, `category_id`, `posted_date`) VALUES
(5, 'NDMBGD: U odsustvu pravne za??tite bojkot izbora jedino re??enje', 'Inicijativa Ne davimo Beograd saop??tila je danas da je odba??ena krivi??na prijava koju su podneli Drugom osnovnom javnom tu??ila??tvu protiv nepoznatih po??inilaca koji su u toku izborne kampanje 2018. godine sabotirali njihove skupove, pozivali na nasilje i ??irili la??i o toj organzaciji.', '\r\n10. mart 2020.\r\n\r\nTra??ite...\r\n\r\nDnevni list Danas Dnevni list Danas\r\nNaslovna\r\nNOVO\r\nPolitika\r\nIZBORI 2020\r\nDijalog\r\nDru??tvo\r\nEkonomija\r\nSvet\r\nSport\r\nKultura\r\n??ivot\r\nAuto\r\nIT\r\nLjudi\r\nBeograd\r\nBBC\r\nDodatak Nedelja\r\nPo??etna ?? Politika ?? IZBORI 2020 ?? NDMBGD: U odsustvu pravne za??tite bojkot izbora jedino re??enje\r\n\r\nIZBORI 2020\r\nNDMBGD: U odsustvu pravne za??tite bojkot izbora jedino re??enje\r\nInicijativa Ne davimo Beograd saop??tila je danas da je odba??ena krivi??na prijava koju su podneli Drugom osnovnom javnom tu??ila??tvu protiv nepoznatih po??inilaca koji su u toku izborne kampanje 2018. godine sabotirali njihove skupove, pozivali na nasilje i ??irili la??i o toj organzaciji.\r\n\r\n0Pi??e: Beta10. marta 2020. 10.59\r\n  Istinomer  \r\nNDMBGD: U odsustvu pravne za??tite bojkot izbora jedino re??enje 1\r\nFoto: Facebook/ Ne davimo Beograd\r\n\r\n???Desni??arski ekstremisti koji su radili po nalogu vlasti i vr??ili pritiske na inicijativu Ne davimo Beograd na ovaj na??in za??ti??eni od odgovornosti???, navela je ta inicijativa u saop??tenju i ocenila da je to ???jasan znak??? da d??ava nema nameru da obezbedi ravnopravne izborne uslove za sve politi??ke aktere i da ??e sve uraditi da opstruira i ugu??i oponente.\r\n\r\nKako su iz te inicijative dodali, protiv aktivista Ne davimo Beograd gomilaju sudski procesi i kazne kojima vlast poku??avada ih ???pravno izmori??? i da spre??i njihov rad, a sli??ne napade i pritiske trpe sve opozicione organizacije i situacija je gora nego 2018.\r\n\r\n???U ovakvoj atmosferi, ne samo odsustva pravne za??tite, ve?? i o??igledne namere dr??avne opstrukcije na??eg rada, uvereni smo da je bojkot la??iranih izbora jedina ispravna odluka???, dodaje se u saop??tenju uz poziv gra??anima da im se pridru??e u bojkotu.\r\n\r\nU saop??tenju se navodi da je Inicijativa ne davimo Beograd tokom 2018. bila meta brojnih napada i optu??bi, la??i, pretnji i pritisaka, a da su ??albe gradskoj izbornoj komisiji i Upravnom i Ustavnom sudu ostale nere??ene.', 'images/ne-davimo-beograd.jpg', 3, 1583835469),
(14, '???Variola vera??? je pri??a o bolesti dru??tva', 'Pro??lo je skoro 50 godina (1972) od epidemije velikih boginja (variola vera) u Jugoslaviji. Bio je to skandalozni, ne??uveni slu??aj pojave jedne iskorenjene tropske bolesti u Evropi.', 'Meni je trebalo deset godina da otkrijem istinu o tom bizarnom doga??aju jer su detalji o njemu bri??ljivo sakrivani. Me??u zvani??nicima je vladala neka vrsta zavere ??utanja i tek kada sam nai??ao na dva hrabra lekara, koji su mi otkrili pravu istinu, shvatio sam za??to se ta stvar toliko zata??kava.\r\n\r\nRadilo se u stvari ne toliko o medicinskom koliko o dru??tvenom oboljenju; ve?? tada se, naime, naoko nerazru??iva tvr??ava, koja se zvala Jugoslavija, opasno zaljuljala. Ali to su znali samo oni u vrhu. Ja sam imao samo predose??aj da je stvar opasna ne samo za stanovni??tvo ve?? i te kako za vlast.\r\n\r\nGodine 1982. najzad sam uspeo da snimim film ???Variola vera???, koji je predstavljao relativno vernu rekonstrukciju doga??aja iz decenije pre toga, sa ne??to izmena u faktografiji i prerade stvarnih li??nosti, onoliko koliko sam smatrao da mi dozvoljava licentia poetica.\r\n\r\nFilm se kolebao izme??u dva ??anra: filma katastrofe i horora. Kasnije ga je britanski ??asopis za filmsku estetiku Sight & Sound, koji izdaje Britanski filmski institut, uvrstio me??u sto najboljih horor ostvarenja svih vremena pa mu je ta odrednica i ostala. Kada sam, me??utim, 1984. ???Variolu??? prikazao studentima Kolumbija Univerziteta u NJujorku i rekao im kako je to pri??a o bolesti dru??tva oni su me gledali za??u??eno. Nisu, naime, kao mi koji smo dolazili iz socijalizma, bili naviknuti na postupak u kome se neko putem alegorija i metafora izra??ava o dru??tvenim pitanjima.\r\n\r\nTaj film je bio veoma gledan u zemlji. Namerno ne upotrebljavam izraz popularan jer su gledaoci, koji su i sami imali se??anja na te u??asne dane, iz bioskopskih sala izlazili prepadnuti. Ali taj strah ih je, izgleda, privla??io. Kao da su se, gledaju??i ???Variolu???, kona??no o??istili od ne??ega ??to je u njima ostalo zakopano deset godina.\r\n\r\nPoneko mi i dan-danas pomene koliko se silno napla??io gledaju??i ???Variolu???. Ja sam, da priznam, ??eleo da moj film krene u ne??to drugom smeru, da ismeva na?? mentalitet, ali ispalo je ovako kako je ispalo. Znate, filmovi ponekad imaju svoj put koji ne mo??e promeniti ni sam autor.\r\n\r\nSada, kada se bauk pandemije ponovo nadvio nad nama, shvatam kako se od ???Variole??? do danas nije mnogo toga promenilo. Ista ona nespremnost za hvatanje uko??tac sa isku??enjem, ista neprofesionalnost, isti strah za, pre svega, sopstvene pozicije, opet ona zata??kavanja, ponovo sve te la??i. Neshvatanje kako je izbegavanje istine, ma kakva ona bila, pogubno.\r\n\r\nU prvi plan ponovo, ba?? kao 1972, isturaju se ne borci nego pajaci, koji misle da je dovoljno da opona??aju svog o??ajno neduhovitog vo??u. Ne razumeju da nije u pitanju to da se ljudi smire, nego da se za??tite. Jer ??e ako, ne daj Bo??e, epidemija poprimi jo?? dramati??nije razmere i sami prestati da se cerekaju nad trenutkom istine.', 'images/1584226472.jpg', 4, 1584226472),
(17, 'Vu??i?? koristi koronu za predizbornu kampanju', 'Dok iz sveta sti??u primeri politi??ara koji su zbog mogu??e izlo??enosti korona virusu odlu??ili da se samoizoluju, predsednik Srbije Aleksandar Vu??i?? nema nameru da se testira na covid-19 iako je prisustvovao konferenciji u Americi na kojoj je bilo dvoje zara??enih koronom.', 'Kako ka??e, iza poziva da preduzme preventivne mere stoji ??elja opozicije da ga stavi u karantin do izbora.\r\n\r\n??? Ju??e je jedan politi??ar rekao: ???Hajde da odlo??imo izbore???. A onda: ???Ako bi moglo jo?? i da Vu??i?? umre???. To ne smeju da ka??u naglas jer nije pristojno, ali bi to verovatno re??ilo problem. Ili: ???Ako bismo mogli Vu??i??a da strpamo u karantin, bar do 26. aprila. To bi nam re??ilo problem ??? rekao je predsednik, dodaju??i da ni to ne bi pomoglo opoziciji da pobedi.\r\n\r\nAleksandar Vu??i?? prisustvovao je konferenciji Ameri??ko-izraelskog komiteta za javne poslove, koja je okupila 20.000 u??esnika, pro??le nedelje, a na kojoj je bilo dvoje zara??enih koronom. Na istom doga??aju bio je i republikanski senator Ted Kruz, koji je ju??e obavestio javnost da ??e naredne dane provesti u ku??noj izolaciji po??to se ispostavilo da je razgovarao sa jednim od obolelih. Kruz je saop??tio da su izuzetno male ??anse da je zara??en koronom, po??to je susret sa zara??enim bio kratak, ali da je zbog opreza i ??estih kontakata sa svojim bira??ima odlu??io da ostane u svom domu u Teksasu ove nedelje.\r\n\r\nProfesor FPN-a ??or??e Pavi??evi?? smatra da bi odgovorno pona??anje predsednika Republike u ovom slu??aju podrazumevalo da se predsednik ili testira na virus, ili da uveri gra??ane da nije bio izlo??en koroni, ili da ode u samoizolaciju.\r\n\r\n??? Ovde ne govorimo samo o politi??koj ve?? i gra??anskoj i moralnoj odgovornosti, dodaje Pavi??evi??.\r\n\r\nPo njegovom mi??ljenju sve izjave predsednika Vu??i??a o koroni, uklju??uju??i i odgovor TV N1 da ??e se testirati kada ova televizija reprizira film ???Vladalac???, deo su predizborne kampanje.\r\n\r\n??? Sada se na sve gleda iz ugla predizborne kampanje. U tom kontekstu treba ??itati i njegove izjave ??? sada bi svi da me stave u karantin ??? ka??e Pavi??evi??.\r\n\r\nIna??e pored Teda Kruza, i portugalski predsednik Marselo Rebelo de Souza izabrao je samoizolaciju i to nakon ??to je primio grupu studenata iz ??kole u kojoj je naknadno otkriveno da je jedan u??enik zara??en korona virusom. Kako je saop??teno iz predsedni??ke kancelarije, prvi ??ovek dr??ave na taj na??in ??eli da pru??i primer kako se sprovode preventivne mere.\r\n\r\nU Srbiji je do sada registrovan jedan oboleli od korone dok su prema poslednjim podacima Ministarstva zdravlja do sada testirane 94 osobe.\r\n\r\nOdgovaraju??i na pitanje ??ta bi predsednik Vu??i?? trebalo da uradi nakon povratka sa pomenute konferencije u kontekstu odgovornog pona??anja, epidemiolog Zoran Radovanovi?? ka??e za Danas da razli??ite zemlje na razli??ite na??ine postupaju u borbi protiv ??irenja korona, a da u Srbiji vlada relaksiraniji pristup.\r\n\r\nKada je re?? o predsedniku Vu??i??u, Radovanovi?? isti??e da bi on trebalo da prati protokol kao i svi ostali gra??ani, ??to u ovom slu??aju zna??i da bi trebalo da se obrati Gradskom zavodu za javno zdravlje ako dobije temperaturu ili ostale simptome infekcije.\r\n\r\n??? Mala je mogu??nost da je Vu??i?? na konferenciji na kojoj je bilo 20.000 naleteo na dvojicu zara??enih. Mo??da je neko iz njegovog obezbe??enja bio u kontaktu sa zara??enim, ali je i to mali rizik ??? ka??e Radovanovi??.\r\n\r\nOn ipak isti??e da predsednik ima sklonost da se pona??a kao polubog i da zaboravlja da se zakoni ove zemlje odnose na njega kao i na sve druge, podse??aju??i na doga??aj pro??le godine kada se usred sezone gripa fotografisao bez maske sa de??akom koji se le??io na Odeljenju hematoonkologije Instituta za majku i dete.\r\n\r\n??? Predsednik mora da zna da je ravnopravan sa ostalim i da se i na njega odnose zakoni ove zemlje. Ne mo??e partijska knji??ica ili funkcija da pravi razliku izme??u ljudi, zaklju??uje Radovanovi??.\r\n\r\nSrbin zara??en koronom na brodu u Americi\r\n\r\nNa brodu Grand Princess, na kome je registrovan odre??eni broj lica zara??enih korona virusom, nalazi se 34 dr??avljana Srbije, od ??ega je 33 ??lanova posade i jedan putnik. Me??u zara??enima je i jedan Srbin, koji se nalazi u izolaciji i sada se ose??a dobro, saop??tilo je ju??e Ministarstvo spoljnih poslova. Iz Ministarstva su objasnili da ??e svi ??lanovi posade ostati na brodu tokom dvonedeljnog karantina dok ??e putnici biti preba??eni u zemlje porekla, nakon ??to brod bude usidren.\r\n\r\nOsnovna poruka nije stigla do gra??ana\r\n\r\nEpidemiolog Zoran Radovanovi?? ka??e da osnovna poruka o korona virusu nije doprla do gra??ana i zdravstvenih radnika. ???Ako ste bili u podru??ju gde ima zara??enih i pri tome imate simptome poput temperature ili ka??lja, treba da se javite gradskom zavodu za javno zdravlje, koji ??e proceniti situaciju. To je osnovna poruka koja izgleda nije do??la ni do gra??ana ni do zdravstvenih radnika???, isti??e Radovanovi??.\r\n\r\n', 'images/aleksandarvucic-1.jpg', 1, 1582192849),
(20, 'U ponedeljak ponovo protesti taksista', 'Predstavnik Ugovorne privredne taksi komore Srbije Bo??ko Vukojevi?? izjavio je danas da taksisti u ponedeljak, 7. oktobra nastavljaju sa protestima na beogradskim ulicama i sa dvo??asovnom blokadom prometnih saobra??ajnica, kao i s protestom ispred zgrade Vlade Srbije.\r\n', 'U ponedeljak ponovo protesti taksista\r\nEkonomija\r\nU ponedeljak ponovo protesti taksista\r\nPredstavnik Ugovorne privredne taksi komore Srbije Bo??ko Vukojevi?? izjavio je danas da taksisti u ponedeljak, 7. oktobra nastavljaju sa protestima na beogradskim ulicama i sa dvo??asovnom blokadom prometnih saobra??ajnica, kao i s protestom ispred zgrade Vlade Srbije.\r\n\r\n9Pi??e: Beta06. oktobra 2019. 13.34 Izmenjeno: 13.35\r\n  Istinomer  \r\n\r\nFoto: Lj. Bukvi??\r\n\r\n?????elim da demantujem vest koja je iza??la da taksisti u ponedeljak ne??e iza??i na ulice, to je ??ista dezinformacija. Taksisti ??e definitivno iza??i na proteste, nikada nismo ni razmi??ljali da ih prekinemo, samo ih od ponedeljka ne??emo radikalizovati zbog posete turskog predsednika Erdogana, po??to ne ??elimo da od na??ih esnafskih problema pravimo me??unarodni problem i ??aljemo lo??u sliku o Srbiji???, rekao je Vukojevi?? za N1.\r\n\r\nOni su ranije najavljivali da ??e od ponedeljka radikalizovati protest tako ??to ??e blokirati i mostove.\r\n\r\nTurski predsednik je u zvani??noj poseti Srbiji 7. i 8. oktobra.\r\n\r\nOrganizatori protesta poru??uju da ??e taksisiti na ulicama biti sve dok im dr??ava ne ispuni zahtev ??? a to je, kako navode, da po??ne da se primenjuje Zakon o prevozu putnika, kako bi se zabranio rad, kako ka??u, nelegalnim prevoznicima koji posluju uz pomo?? aplikacije.', 'images/politika.jpg', 2, 1579597205),
(23, 'Merkel odbila ideju o korona obveznicama', 'Nema??ka kancelarka Angela Merkel izrazila je danas, na evropskoj video konferenciji protivljenje ideji o izdavanju ???korona obveznica???, kao odgovor na krizu koju je izazvao ovaj virus.', 'Tu ideju su predlo??ilii francuski i italijanski lider kao mogu??i odgovor.\r\n\r\n???Stav Nema??ke, ali i drugih u??esnika, je da ne prihvataju koncept izdavanja zajedni??kih evropskih obveznica za podr??ku ekonomiji???, istakla je Merkelova, sumiraju??i dana??nje video konferencije evropskih lidera posve??enoj novom korona virusu i na??inima za suo??avanje sa njim.', 'images/1585268428.jpg', 2, 1585268428),
(24, 'Organizatori OI u Tokiju polako sabiraju tro??kove odlaganja', 'Organizacija Olimpijskih Igara u Tokiju je trebalo da bude jedna od ??tedljivijih, ali je ipak po??etnu procenu bud??eta (7,3 milijarde dolara) i te kako prebacila i zvani??no stigla do 12 milijardi i 600 miliona.', '???Jedan po jedan, moramo da osiguramo da se svaki problem na koji nai??emo re??i???, rekao je predsednik Organizacionog odbora To??iro Muta na otvaranju sastanka udarne grupe formirane po odlaganju Igara, ???Dodatni tro??kovi ??e, koliko pretpostavljamo, biti veliki. Pored toga ??to je sve prakti??no pripremljeno za odr??avanje Olimpijskih igara, sledi nam jo?? mnogo napora. Neke planove moramo da apdejtujemo, a neke da izbri??emo. Bi??e to iskustvo koje niko nikada nije imao i siguran sam da ??emo uspeti???, rekao je Muta. \r\n\r\nOn nije mogao da ponudi procenu koliko bi odlaganje moglo da ko??ta organizaciju, ali tira??ni Nikkei tvrdi da bi novo iznajmljivanje objekata, prebukiranje hotela i dodatni tro??kovi za sve koji su ve?? uposleni, pre svega na plate moglo da iznosi 2,7 milijardi dolara. O ??teti za privredu Tokija jo?? niko javno ne govori.\r\n\r\nSa ovim pove??anjem tro??kova dupliran je po??etni bud??et, iako je malo toga novog sagra??eno jer su ve?? imali izuzetne sportske objekte ??irom prestonice. Tako ??e igre u Japanu do??i na drugo mesto najskupljih svih vremena, a prvo kad su Letnje u pitanju.\r\n\r\nZa Zimske igre u So??iju 2014. Rusija je prakti??no izgradila novi grad na obali Crnog mora sa svim mogu??im sportskim i prate??im objektima, pa ??ak i pistu za Formulu 1. ??to je ko??talo ??ak 21,9 milijardu dolara.', 'images/1585268753.jpg', 9, 1585268753),
(25, 'Ku??ne ve??be za zatezanje i oblikovanje', 'Kada ljudi razmi??ljaju o ve??banju kako bi smr??ali, ??esto pretpostavljaju da to zna??i trening samo u teretani, ali postoje i ku??ne ve??be za zatezanje i oblikovanje.', 'U situaciji kada su teretane zatvorene, pa ??ak i kada nisu, ku??ne ve??be za zatezanje i oblikovanje su odli??na opcija i za mr??avljenje i za dobijanje novih mi??i??a. Na ovaj na??in radite ne??to i lepo i korisno: posve??ujete se sebi i svom zdravlju kroz fizi??ku aktivnost i ostajete kod ku??e.\r\n\r\nAko se rade pravilno i dosledno, ku??ne ve??be za zatezanje i oblikovanje mogu biti efikasne kao i ve??banje u teretani. Klju??no je fokusirati se na trening snage. Iako ??ete ??eleti da eventualno ubacite kardio elemente u svoje ku??ne ve??be za zatezanje i oblikovanje, po??nite ipak tako ??to ??ete ispraviti osnovne stvari.\r\n\r\n<b>Ku??ne ve??be za po??etnike </b>\r\n\r\nAko niste dugo ve??bali i ??elite da po??nete dok ste kod ku??e, ku??ne ve??be za zatezanje i oblikovanje treba uglavnom da se fokusiraju na velike mi??i??e koji pru??aju stabilnost i snagu. Nije vam potrebna specijalna oprema, a ve??be mo??ete raditi odjednom ili ih podeliti u serije tokom dana.\r\n\r\nBilo koje ku??ne ve??be za zatezanje i oblikovanje bi bilo dobro da radite u dva do tri seta od 10 do 12 ponavljanja svake ve??be. Ako za po??etak mo??ete samo ??etiri ili ??est, i to je u redu. Cilj je izvesti ku??ne ve??be za zatezanje i oblikovanje tako da se telo do poslednjeg ponavljanja lagano trese. Iz nedelje u nedelju, cilj je da pove??ate ponavljanja dok ne budete bili u mogu??nosti da dostignete do tri serije od 12 ponavljanja.\r\n\r\nEvo ??etiri ku??ne ve??be za zatezanje i oblikovanje kojima mo??ete pokrenuti svoj program treninga kod ku??e:\r\n\r\nSklekovi: savr??ena forma je klju??na kada radite sklekove. Po??nite sa varijacijom koju mo??ete zavr??iti, ali sa dobrom tehnikom. Ove ku??ne ve??be za zatezanje i oblikovanje bi trebalo da radite uporno, da napredujete do slede??eg nivoa kada ??ete mo??i da uradite 10 do 12 ponavljanja bez spu??tanja le??a, kratkih pauza ili nestabilnog podrhtavanja.\r\nIskoraci: po??nite sa jednostavnim setom iskoraka na nazad, koji poma??u u oblikovanju zadnjice i butina. Koristite zid ili stolicu za balansiranje ako vam je potrebno. Kada budete mogli da uradite 10 do 12 ove ku??ne ve??be za zatezanje i oblikovanje, i to svakom nogom bez podr??ke, probajte prednji iskorak ili druga??iju varijaciju.\r\n??u??njevi: ??u??njevi pokre??u velike mi??i??e u donjem delu va??eg tela i poma??u da oblikujete zadnjicu i butine. Uvek radite ??u??njeve sa stopalima u ??irini kukova. Ove ku??ne ve??be za zatezanje i oblikovanje trebalo bi da se rade tako da kukovi budu iza vas kao da sedate u stolicu.\r\n???Daska???: ova ve??ba ja??a mi??i??e abdomena i le??ne mi??i??e. Po??nite dr??anjem ove pozicije 15 sekundi. Kako budete ja??ali, napredujte do 30 i eventualno 90 sekundi. ??to se ti??e ove ku??ne ve??be za zatezanje i oblikovanje, ona deluje najjednostavnije, ali je u stvari, mo??e se re??i, najte??a.\r\nZa ove ku??ne ve??be za zatezanje i oblikovanje potrebno je da imate dovoljno energije, pa se nemojte zavaravati idejom da bi trebalo da jedete ??to manje. Suprotno tome, hranite se dobro i slobodno se zasladite: ??e??er je pogonsko gorivo na??eg organizma. Razvijajte svoju snagu malo po malo uz ku??ne ve??be za zatezanje i oblikovanje i ostanite kod ku??e!', 'images/1585268922.jpg', 8, 1585268922),
(26, 'Marko Louis: Izazov je svirati pred publikom koju ne vidi??', 'Na??alost, ??ovek se uglavnom ???probudi??? tek kada do??e do problema, kada je ugro??ena sloboda ili zdravlje, a va??no je da smo svaki dan zahvalni na tome ??to smo zdravi i da to shvatimo ozbiljno, bez obzira na virus.', 'Solidarnost je najbitnija u ovom trenutku jer moramo da vodimo ra??una jedni o drugima. Ovo je period kada su ugro??eni svi. Nema podele. Svi smo isti ??? kazao je za Danas Marko Louis, muzi??ar koji je zbog nemogu??nosti da nastupi u??ivo pred publikom odlu??io da odr??i online koncert ???Quarantine Live Session???, na njegovom Instagram profilu i Youtube kanalu, danas u 18 sati.\r\n\r\nPosle dva objavljena singla koji najavljuju novi album planiran za kraj godine, ???Ninana??? i duet sa Lenom Kova??evi?? ??? pesma ???Kraj???, Marko Louis je trebalo da, u sklopu regionalne turneje, ima i koncert u Kombank dvorani. Me??utim, zbog izbijanja vanrednog stanja, samim tim i nemogu??nosti da se dru??i sa svojom publikom, Louis je odlu??io da ljubitelje ???balkanskog soula??? obraduje online koncertom.\r\n\r\n??? Ve?? mi veoma nedostaje da pevam i sviram pred publikom i nisam ja prvi koji se setio ovoga ali mislim da je trenutno jedini na??in kako izvo??a?? mo??e da deli svoj performans. Mnogo sam sre??an povodom kako je publika reagovala na moju objavu i komentari su prelepi. Nikada nisam radio ne??to sli??no i moram da priznam da je izazov za mene da nastupam pred publikom koju ne vidim. Bi??u sam sa svojim instrumentima i mislim da mo??e interesantno da ispadne ??? smatra Louis.\r\n\r\nOn ka??e da ovaj period koristi da se dru??i sa porodicom i da radi stvari za koje nikada ???nije bilo vremena???, kao na primer da kuva.', 'images/1585269040.jpg', 4, 1585269040),
(27, 'U Kragujevcu jo?? dvojica zara??enih', 'U Klini??kom centru u Kragujevcu hospitalizovana su jo?? dvojica pacijenata zara??enih korona virusom, saop??teno je iz Instituta za javno zdravlje.', 'Epidemiolog Predrag Deli?? novinarima je rekao da je jedan novooboleli iz Kraljeva, a drugi sa podru??ja Kragujevca. U toj zdravstvenoj ustanovi le??i se ukupno 18 pacijenata zara??enih virusom korona.\r\n\r\nKragujeva??kom Institutu od po??etka epidemije Institut ???Torlak??? je, prema re??ima Predraga Deli??a, potvrdio jedanaest pozitivnih na korona virus od ukupno 70 analiziranih uzoraka.\r\n\r\nSa ???Torlaka??? su ju??e stigli negativni rezultati za 24 od 28 poslatih uzoraka. Gradona??elnik Kragujevca Radomir Nikoli?? prekju??e je najavio da ??e u kragujeva??kim apotekama za??titnih maski biti od ??etvrtka, te da ??e gra??ani mo??i da kupe po tri komada, ali ih apotekama u centru grada ju??e nije bilo.', 'images/1585269134.jpg', 12, 1585269134),
(28, 'Dru??tvene igre: Zabava na sigurnom za celu porodicu', 'U trenutku kada je mno??tvo doga??aja otkazano i ne preporu??uje se boravak u zatvorenim prostorima sa puno ljudi, ku??na izolacija je jedna od preporuka.', 'U takvim okolnostima nije neobi??no da vam posle nekog vremena postane dosadno. Zbog toga vam u narednim redovima donosimo nekoliko preporuka za dru??tvene igre u kojima mogu u??ivati ??lanovi cele porodice, u zatvorenom, na bezbednom, pi??e City Magazine u novom broju.\r\n\r\nStari dobri klasici:\r\n\r\nMonopol -\r\n\r\nIgra koju verovatno ve??ina ljudi poznaje i igrala je u nekom trenutku, a koja je mnogima bila jedna od prvih lekcija o zna??enju novca i mudrog ulaganja. Nije sve suvoparno kao ??to zvu??i, veoma je zabavno praviti imperiju ku??u po ku??u i hotel po hotel, ali ukoliko nameravate da se pona??ate neodgovorno, sledi kazna po d??epu. Postoji u bezbroj varijanti, sa mnogim filmovima, serijama i video igrama kao inspiracijom.\r\n\r\nBroj igra??a: 2-8.\r\n\r\nVreme postavke: 2-5 minuta.\r\n\r\nProse??no trajanje partije: 20-180 minuta.\r\n\r\nRiziko - \r\n\r\nJo?? jedan klasik poznat mnogima, koji tako??e postoji u nebrojenim varijacijama. Nisu sve mape iste ni pravila jednaka, ali sigurno je da ovde niko nikome nije prijatelj, u pitanju je rat. Dobar za strate??ko razmi??ljanje i ja??anje znanja iz geografije, lo?? za ja??anje prijateljstava. Zanimljiviji je sa maksimalnim brojem igra??a.\r\n\r\nBroj igra??a: 2-6.\r\n\r\nVreme postavke: 5-15 minuta.\r\n\r\nProse??no trajanje partije: 1-8 sati.\r\n\r\nKluedo - \r\n\r\nOva igra je ve??i uspeh do??ivela na me??unarodnoj sceni nego kod nas, ali svakako je vredna va??e pa??nje. U pitanju je misterija u kojoj  je ubijen jedan ??ovek, a na igra??ima je da otkriju ko je to u??inio, gde i ??ime. Partija je neizvesnija ??to je vi??e igra??a, jer je tako te??e pogoditi sve brzo, ve?? treba malo mozgati.\r\n\r\nBroj igra??a: 2-6.\r\n\r\nVreme postavke: 5 minuta.\r\n\r\nProse??no trajanje partije: 10-60 minuta.\r\n\r\nNovije popularne igre.\r\n\r\nCatan - \r\n\r\nJedna od najpopularnijih modernih igara, koja ima razna takmi??enja ??irom sveta. Igra se na tabli sastavljenoj od heksagona (??estougaonih polja) na kojoj je cilj da gra??enjem puta i sakupljanjem resursa dostignete odre??eni broj poena. Postoje razne ekspanzije, koje osnovnu igru di??u na jo?? kompleksniji nivo i omogu??avaju igranje vi??e igra??a.\r\n\r\nBroj igra??a: 2-12, zavisno od verzije.\r\n\r\nVreme postavke: 15 minuta.\r\n\r\nProse??no trajanje partije: 1-2 sata.\r\n\r\nCarcassonne - \r\n\r\nOkru??enje je srednjevekovno, a igra tako ??to se postavljanjem plo??ica sa okru??enjem tra??i dobro mesto za svoje ???sledbenike??? i skupljanje poena na razne na??ine. Igra je mnogo zanimljivija nego ??to deluje na prvi pogled, a ona tako??e ima razne ekspanzije, koje produ??avaju i uslo??njavaju iskustvo igranja.\r\n\r\nBroj igra??a: 2-8, zavisno od verzije.\r\n\r\nVreme postavke: 1-5 minuta.\r\n\r\nProse??no trajanje partije: 30-90 minuta.\r\n\r\nDixit - \r\n\r\nOvde je u pitanju igra sa karticama, koja je dobar pokazatelj ma??te i kreativnosti igra??a. Svi uzimaju ??est karata u ruku i igra?? ??iji je red opisuje svoju kartu sa koliko god re??i po??eli. Potom svi igra??i iz svoje ruke biraju kartu koja najvi??e odgovara tom opisu i na kraju poku??avaju da prona??u originalnu kartu. Postoje i setovi dodatnih karata, razli??ite tematike.\r\n\r\nBroj igra??a: 3-6.\r\n\r\nVreme postavke: 2-3 minuta.\r\n\r\nProse??no trajanje partije: 30 minuta.\r\n\r\nTicket to Ride - \r\n\r\nIgra je posve??ena vozovima i cilj je na kraju imati ??to vi??e ??elezni??kih linija, i to ??to du??ih. Igra??i to ??ine sakupljanjem kartica vozova, kartica destinacija i postavljanjem vozova na mapu linija. Potrebno je napraviti ravnote??u izme??u prevelikog ??irenja i opasnosti od toga da drugi igra?? preuzme va??u rutu. Tako??e ima brojne ekspanzije sa novim mapama.\r\n\r\nBroj igra??a: 2-5.\r\n\r\nVreme postavke: manje od 5 minuta.\r\n\r\nProse??no trajanje partije: 1-2 sata.', 'images/1585269376.jpeg', 7, 1585269376),
(29, 'Njujork tajms: Korona virus i Amerikanci doprineli padu Kurtijeve vlade', 'Spor oko odgovora na pandemiju korona virusa jedan je od razloga zbog kojih je kosovskom premijeru Aljbinu Kurtiju parlament uskratio poverenje, ali kriti??ari ka??u da je ulogu u tome imala i ameri??ka diplomatija, pi??e danas ameri??ki Njujork tajms.', 'List pi??e da je vlada Kosova prva vlada koja je pala zahvaljuju??i delom i krizi izazvanoj ??irenjem korona virusa.\r\n\r\nKurti ??e ostati vr??ilac du??nosti do formiranja nove vlade, ali nakon ju??era??njeg glasanja u parlamentu Kosovo ostaje bez sna??nog vodjstva u trenutku kada ve??ina vlada drugih zemalja poku??ava da pro??iri svoja obla????enja u borbi protiv pandemije, dodaje NYT.\r\n\r\nList pi??e da su rezultat glasanja pozdravile SAD ??ije su diplomate vr??ile sna??an pritisak na Kurtija od kako je njegova vlada stupila na du??nost, zbog toga ??to se protivio nekim apsektima ameri??kog mirovnog plana za region.\r\n\r\nOdluku su, me??utim, osudile Francuska i Nema??ka koje su u zajedni??kom saop??tenju navele da je obaranje vlade nesmotreno tokom pandemije.\r\n\r\n???Kosovu je potrebna stabilna i potpuno funkcionalna vlada da se suo??i sa krizom???, navodi se u nema??ko-francuskom saop??tenju.\r\n\r\nList podse??a da je nepoverenje Kurtijevoj vladi delom posledica svadje njegove partije sa manjim koalicionim partnerom oko uvodjenja restrikcija u svakodnevni ??ivot gradjana na Kosovu zbog epidemije korona virusa.\r\n\r\nKurtijevi koalicioni partneri podr??avali su uvo??enje vanrednog stanja ??ime bi ve??a ovla????enja pripala Kurtijevom politi??kom rivalu Ha??imu Ta??iju koji, kao predsednik Kosova, u redovnim okolnostima ima cremonijalnu ulogu u politi??kom ??ivotu.\r\n\r\nAli, kako navodi NYT, glasanje u Skup??tini Kosova tako??e je skrenulo pa??nju i na diplomatiju administracije predsednika SAD Donalda Trampa na Balkanu.\r\n\r\nIako je korona virus bio glavni povod za pokretanje inicijative, pad Kurtijeve vlade, izazvan je i mnogo dubljim neslaganjem oko na??ina re??avanja vi??edecenijskog spora Kosova i Srbije. U raspravi je Kurti, dugogodi??nji aktivista ostao na suprotnoj strani i od Ta??ija i od Trampove administracije, navodi NYT.\r\n\r\n???To je vrlo jasna posledica igre koju Amerikanci trenutno igraju???, rekao je biv??i izaslanik EU na Kosovu Volfgang Petri??.\r\n\r\nKampanja bombardovanja pod vo??stvom Amerike pomogla je Kosovu da se oslobodi vlasti Srbije 1999, ali balkanski susedi nikada nisu potpisali kona??ni mirovni sporazum, dodaje NYT.\r\n\r\nList podse??a da je Srbija s uspehom izlobirala kod nekoliko desetina zemalja da ne priznaju nezavisnost Kosova a da je Kosvo zauzvart uvelo takse na robu iz Srbije ??to je njenoj privredi nanelo ??tetu.\r\n\r\nAmri??ki dnevnik navodi da je i pre dolaska Kurtija na vlast Trampova administracija poku??ala je da okon??ai spor tako ??to ??e posredovati u postizanju dogovora izmedju Ta??ija i predsednika Srbije Aleksandra Vu??i??a.\r\n\r\nKao put ka kona??nom re??enju SAD su podsticale Kosovo da ukine takse kao gest dobre volje prema srpskoj vladi, a nadaju??i se brzom dogovoru, ameri??ke diplomate su ??ak raspravljale o nekad nezamislivoj ideji povratka delova Kosova Srbijiu, alarmiraju??i evropske ??elnike koji su se bojali da bi taj korak mogao ponovo pokrenuti etni??ki sukob.\r\n\r\nAli, nakon ??to je u februaru formirao svoju koaliciju Kurti je odmah radio na usporavanju procesa i time se suprotstavio Va??ingtonu, pi??e list.\r\n\r\nU strahu da je Ta??i potajno mo??da ve?? pristao na podelu Kosova, Kurti se pozavo na svoje ustavno pravo da vodi pregovore sa Beogradom umesto Ta??ija i da zadr??i takse kao sredstvo za odr??avanje pritiska na vladu Srbije.\r\n\r\nKurti je time do??ao u direktan konflikt sa Ta??ijem i specijalnim izaslanikom predsednika SAD Ri??ardom Grenelom, dodaje list.\r\n\r\nKako bi prisilile Kurtija da ukine takse, SAD su zamrzle vi??e miliona dolara pomo??i Kosovu, a sin ppedsednika SAD, Donald Tramp Junior javno se slo??io sa ameri??kim senatorom koji je predlo??io povla??enje ameri??kih mirovnih snaga sa Kosova, podse??a list i dodaje da je to prepla??ilo Kosovare, koji ameri??ko vojno prisustvo vide kao vitalnu garanciju bezbednosti zemlje.\r\n\r\nNYT dodaje da su i biv??i Kurtijevi koalicioni partneri naveli pritisak SAD kao jedan od razloga za povla??enje iz njegove vlade.\r\n\r\n???To je neka vrsta ???Rambo??? diplomatije???, rekao je Petri??. ???Sru??i??e demokratski izabranu valdu kao kolateralnu ??tetu???, dodao je on.', 'images/1585269567.jpg', 1, 1585269567),
(30, 'Nestorovi??: Sutra po??inje sa radom objekat na Sajmu', 'Pulmolog Branislav Nestorovi?? rekao je ve??eras, po zavr??etku sednice Kriznog ??taba, da sutra u 14 sati po??inje sa radom objekat na Sajmu, jer dolaze avioni sa dr??avljanima Srbije.', 'On je objasnio da se putnici moraju testirati, pa ??e oni koji su pozitivni na korona virus i??i tu u privremenu bolnicu, a oni koji su negativni idu ku??i uz obaveznu samoizolaciju.\r\n\r\nMi smo se na sednici bavili pitanjem pro??irenog testiranja, jer je to napor za zdravstveni sistem. Cilj je da imamo 5.000 testova dnevno, rekao je Nestorovi?? za TV Prva.\r\n\r\nValjevo je ostalo kao problem, vide??emo kako se situacija razvija, rekao je on i dodao da je Ni??, koji je bio temprirana bomba, sada sre??en.\r\n\r\nBeorad je potencijalno problem i ponovo bih apelovao na gra??ane da po??tuju mere. Mi smo u tre??oj nedelji epidemije, za sada se dr??imo dobro sa osamdesetak ljudi dnevno, ??to nije veliki broj, rekao je Nestorovi??.\r\n\r\nZdravstveni sistem se za sada dobro nosi, a poku??a??emo jedan broj lak??ih pacijenata iz ???Dragi??e Mi??ovi????? da prebacimo na Sajam, da ne optere??ujemo Zemunsku bolnicu, kazao je Nestrovi??.', 'images/1585269759.jpg', 12, 1585269759),
(31, 'Najbogatiji nema??ki klubovi poma??u ostalim', '??etiri najbogatija nema??ka fudbalska kluba obe??ala su danas 20 miliona evra kao podr??ku drugim timovima koji se bore za finansijski opstanak zbog pandemije korona virusa.', 'Bajern Minhen, Borusija Dortmund, Lajpcig i Bajer Leverkuzen ??e odsutati od 12,5 miliona evra, jo?? neraspore??enog nova od TV prava i doda??e jo?? 7,5 sopstvenih sredstava.\r\n\r\nTa ??etiri kluba su ove sezone igrala Ligu ??ampiona, ??to im je omogu??ilo dodatni prihod.\r\n\r\nNema??ka fudbalska liga, koja nadgleda dva najja??a takmi??enja u toj zemlji, odlu??i??e kako ??e rasporediti novac.\r\n\r\nLiga je ranije saop??tila da strahuje da bi mnogi klubovi mogli da se suo??e sa finansijskim kolapsom ako se takmi??enja ne nastave.\r\n\r\nDirektor Bajerna Karl-Hajnc Rumenige je rekao da je va??no pru??iti podr??ku u ovim te??kim vremenima.', 'images/1585270030.jpg', 9, 1585270030),
(32, 'Distanca, maska i druga??iji seks ??? potpuno novi ??ivot pod koronom', 'Za??to je bitna distanca? U ??ivotu smo ve?? odavno primetili da oko nas postoji prostor koji je nevidljiv iako fizi??ki i duhovno postoje??i.', '26. mart 2020.\r\n\r\nDnevni list Danas\r\n\r\nNaslovna\r\nNOVO\r\nPolitika\r\nDijalog\r\nDru??tvo\r\nEkonomija\r\nSvet\r\nSport\r\nKultura\r\n??ivot\r\nAuto\r\nIT\r\nLjudi\r\nBeograd\r\nBBC\r\nDodatak NedeljaSpecijalni dodaci\r\nPo??etna ?? ??ivot ?? Distanca, maska i druga??iji seks ??? potpuno novi ??ivot pod koronom\r\n\r\n??ivot\r\nDistanca, maska i druga??iji seks ??? potpuno novi ??ivot pod koronom\r\nZa??to je bitna distanca? U ??ivotu smo ve?? odavno primetili da oko nas postoji prostor koji je nevidljiv iako fizi??ki i duhovno postoje??i.\r\n\r\n3Pi??e: Zoran Vuj??i??24. marta 2020. 07.37 Izmenjeno: 16.31\r\n  Istinomer  \r\nDistanca, maska i druga??iji seks - potpuno novi ??ivot pod koronom 1\r\nFoto: Pixabay/ sasint\r\nOsetimo kada nam je neko preblizu, budi se nagon odbojnosti. Spremnosti na udaljavanje ili akciju. Vremenom i dru??tvenim normama pravila i pona??anja su se promenila.\r\n\r\nNeprihvatljivo je da nekoga gurnete, samo zato ??to vam se unosi u lice. Kao ??to je i SADA glupo dozvoliti da vam se neko pribli??i. Pa, makar on bio i va??e unu??e ili va??a baba. Evolutivna za??tita o??uvanja prostora se te??ko ponovo stvara. Ali zato se ne??ove??nost i glupost kataliti??ki umno??avaju.\r\n\r\nSvaki oblik disanja stvara aerosol. ??ta je aerosol? To su fine, stabilne kapljice magle raspr??ene po prosturu. One za sebe lepe ??estice pra??ine, me??usobno se sudaraju, postaju ve??e i na kraju padaju na zemlju (pod). Kijanjem ili ka??ljanjem izbacuju se i kapljice i aerosol. Domet aerosola je do 2 m u trenutku izbacivanja iz usta.\r\n\r\nKorona virus se UGLAVNOM prenosi od zara??ene osobe na nezara??enu osobu kontaktom. Taj kontakt mo??e da bude vidljiv (poljubac, ka??ljanje, kijanje) ili nevidljiv ??? tako??e ka??ljanje i kijanje, ali od osoba koje se ne vide, ali su bili par minuta tu, pre nego ??to ste do??li u taj prostor. Zato CDC savetuje 6 stopa ili 2 metra.\r\n\r\nNeverovatno je kako je pragmatizam ta 2 metra pretvorio u generalne savete od 1 metra, a pona??anje bez logike na 20, 30 cm. Ljudi se ljube, grle, rukuju. A op??ti savet je dat na slici ni??e.\r\n\r\nI dok Kinezi i Koreanci spaljuju novac ili ga stavljaju u karantin dok virus ne izgubi vijabilnost, kod nas je na ceni apsolutna nedisciplina. U ovom trenutku mnogi koji ??ive u nekim daleko razvijenijim zemljama znaju da se i tamo pona??aju kao kod nas u trenutku gostovanja ??aljivog doktora. Neozbiljno i neodgovorno. Skoro gostuju??i na N1, ??ak je i doktorka iz Italije rekla da su prazni trgovi koji se slikaju ??? obmana i da se ljudi pona??aju neodgovorno.\r\n\r\nNe razumem takvo pona??anje!! Hrabrost nije, pa mora da je TOTALNA glupost i hazarderstvo!\r\n\r\nLekari, apotekari, medicinske sestre i svi ostali u lancu le??enja padaju s nogu, u zoni su rizika, kao uostalom i svi koji ne mogu da rade od ku??e. Neka divna ekipa dobrovoljno (preko FB udru??ena) se ubija dan-no?? da smisle kako da se naprave novi viziri i maske (od ideje, pravljenja, distribucije) (Nauka u Srbiji).\r\n\r\nNeodgovorni se za to vreme ??etkaju. Svi ste ih videli, a mo??da neki od vas aktivno tome doprinose. U Engleskoj su zabrane tr??anja po parkovima na snazi. Stotine slu??ajeva po Srbiji s razdrljenim maskama, ??e??a??i, pljuva??i, pu??a??i i telefon-zavisnici, majke i deca u gomilama s ljudima koji izlaze iz Lidla, Ideje, Maksija, sve sa na po 20 cm udaljenosti.\r\n\r\nU Beogradu Ko??utnjak, po Srbiji druge zone ??? isto. Nikada vi??e d??ogera, rekreativaca. Stari i dalje poha??aju kurs tezgarenja i ??etnje. Ne razumem! Da li smo toliko glup narod? Zar toliko ljudi ne shvata ??ta zna??i samoizolacija.\r\n\r\nUz sve uvek se jave teoreti??ari zavere, neznalice ili zlonamerni, koje ??ire gomile dezinformacija. Neke od njih su sumirane u ispiranju usta, limunu, belom luku, slanini, rakiji i sl., kao i da virus ne postoji, da je svaka informacija o njemu ili izazvanim smrtima la??irana. Koliko neko mora da bude tup pa da poveruje u tako ne??to, gde bi se sinhronizovale sve velike sile i mali sateliti u jedinstvenu la??? Mnogo.\r\n\r\nNe dovodite sebe u stanje panike i grozni??avog razmi??ljanja koji je doktor u pravu.\r\n\r\nSada se javljaju razni lekari gladni TV pa??nje koji daju pogre??ne savete o tome ??ta mo??e, a ??ta ne mo??e da ubije virus. Najta??niju i jedino merodavnu listu donosi EPA. Ja sam je detaljno prou??io i obradio u prethodnom blogu (hemija). Na dodatna pitanja sam odgovorio kod Negoslave na blogu.\r\n\r\nNema potreba da pi??emo, ni Zoran hemi??ar, Pera veterinar ili Katarina TV lekar i da dajemo druga??ije ??? kako mi mislimo smernice. I da smo u pravu nema dokaza. CDC pravi preporuke na osnovu EPA liste. Te smernice ne donose lekari ve?? grupa stru??njaka. Eksperata. Zato pratite ??ta ka??e EPA.\r\n\r\nKako mnogi od vas nisu hemi??ari ja ??u listu i dalje pomno pratiti i ???prevoditi??? je na jezik ne-hemi??ara. Jer u osnovi reakcija dezinfekcije je hemija. Nije ni biologija, ni fizika, a tek nije medicina. Ne znam ni??ta o le??enju Korone. I povodom raznih izjava koji lek sme, a koji ne sme da se koristi, od brufena do antimalarika koji le??e Koronu, moramo biti strpljivi da se donese neki STVARNI i PREPORU??ENI lekarski sudovi. Ne uzimajte ni??ta na svoju ruku kao prevenciju, jer niko ne zna koje su mogu??e komplikacije i nusefekti.\r\n\r\nAko virus u??e u organizam mo??da je lek tu negde blizu, ali sigurno nije u prethodno nabrojanoj hrani. Jer da jeste ne bismo se ni podlegli. Pominju se razne kombinacije, trenutno je sva svetska nau??na i stru??na ma??inerija okrenuta razmi??ljanju kako da spre??i virus da se ???zaka??i??? za ??eliju.\r\n\r\nBez obzira da li su to inhibitori ekspresije na??ih proteina ili ne??ega ??to ??e reagovati s virusom. Ne korisrite la??i koje se ??ire internetom, a ???savetuju??? ih izmi??ljeni kineski ili italijanski lekari. Jednom ??e svi koji su ??irili takve la??ne vesti i krivi??no odgovarati. Do tada vez rukovanja, ljubljenja i grljenja!! I Dr??ite rastojanje od 2 metra!!!\r\n\r\nA seks?\r\n\r\nKupovni seks Sada??nji na??in ??ivota je uzdrmao industriju seks radnica i radnika. Nema potrebe da navodim linkove, ali ono ??to jeste zabrinjavaju??e je da svaka restrikcija pomera granice onoga ??to zahtevaju ???mu??terije???.\r\n\r\nTako da je za sada sigurnije gledati Pornhub koji je mnogima po svetu dao povoljne uslove gledanja (Italija, USA) i koristiti alternativna sredstva u seksu, nego koristiti usluge ???prodava??ica ljubavi???.\r\n\r\nSeks za jednu no?? Prili??no zabrinuti ???aktivisti??? stalno postavljaju pitanja brojnim agencijama koje uz CDC daju preporuke. Za sada je jedina preporuka ??? budite odgovorni. Ako ste bolesni ili imate sumnjive simptome izbegavajte nove seksualne avanture. (Opet nije moja li??na ptreporuka, ve?? preporuka eksperata).\r\n\r\nSeks stalnih parova u izolaciji Ako ste u izolaciji i zdravi nema razloga da se ne upra??njava seks.\r\n\r\nSeks stalnih parova bez izolacije Ako oba partnera rade ili bar jedan, postoji mogu??nost inficiranja, pa time i prenosa infekcije. Kako je po mi??ljenju eksperata Covid 19 bolest koja se ne prenosi seksom ne postoji ozbiljan rizik od razboljevanja, ali???\r\n\r\nAli obuhvata savet izbegavanja ljubljenja (ako ste zara??eni ili je partner(ka) zara??en), kao i zabranu oralno-analnog seksa, zbog, za sada samo SUMNJE, da se virus prenosi i fekalnim putem.\r\n\r\nDefinitivnog odgovora nema, ba?? kao ??to jo?? nema ni definitivne potvrde da se neko inficirao preko zara??enih povr??ina. A pravila prevencije oko povr??ina i ruku su toliko puta ponavljana.\r\n\r\nDa podsetimo virus opstaje u vazduhu oko 3 sata, na podu 1-2 dana, na ??eli??nim pov??inama do 9 dana. Perite ruke sapunom minimalno 20 sekundi. Dezinfikujte ruke ako niste u stanju da ih operete 70% etanolom. Varikina (0,1% nije za ruke, jer brzo o??te??uje ko??u) je dobra za pod. Kad god mo??ete nosite rukavice, masku, vizir. Bolje spre??iti ??? nego le??iti.\r\n\r\nStalno postavljano pitanje, ??esto nedogovorno komentarisano od ???eksperata???. Dok se stalno simulira pona??anje kapljica aerosola i kako te ??estice lete u na??em okru??enju, gomila tzv. eksperata ???ZNA??? da maske imaju samo za??titnu funkciju za spre??avanje ??irenja infekcije. A da nemaju efekat na zdrave i da ih zdrave bezveze tro??e.\r\n\r\nOvo je tolika glupost, da je prosto neverovatno kako neko sebi daje za pravo da emituje takve komentare. Opet druga glupava krajnost je da se platnena (??ivena) maska mo??e ceo dan dr??ati na licu, a uve??e iskuvati i sve je ok. Nije. Maske funkcioni??u tako ??to spre??avaju dotok kapljica do vas. Svaka maska ??titi, ??to tvrdim od po??etka ove infekcije.\r\n\r\nZa??to? Zato ??to se virus koji je izuzetno mali, pre??nika od 0,05 do 0,18 mikrona ne nalazi kao pu????ano tane, go i ubita??an. On je u kapljicama i pominjanom aerosolu, ??esto okru??en i mukusom (??to mu omogu??ava du??e ???pre??ivljavanje??? van organizma). Virus nije ??ivo bi??e, ne mora da se hrani da bi pre??iveo. Njegova struktura mo??e da bude fizi??ki ili hemijski o??te??ena, pa se tada pretvara u ne??kodljivu nevidljivu fleku.\r\n\r\nPrava linija odbrane bi bila RUKAVICE ??? VIZIR ??? NAO??ARI ??? MASKA, za sve prodava??ice hrane, apotekare i sve druge zdravstvene radnike, koji su u kontaktu s pacijentima. Za one koji nisu u zdravstvu RUKAVICE ??? NAO??ARI ??? MASKA za izla??enje i rad, jer maska je preventivna mera od aerosola. Na??alost nepotpuna, jer aerosol mo??e da prodre i kroz o??i.\r\n\r\nAutor je redovni profesor Hemijskog fakulteta, a tekst preuzet sa njegovog bloga.', 'images/1585270245.jpg', 8, 1585270245),
(33, 'Kako se izboriti s anksiozno????u izazvanom korona virusom?', 'Kako virus korona nastavlja globalno ??irenje i broj dijagnostifikovanih slu??ajeva COVID-19 i dalje raste, anksioznost vezana za epidemiju tako??e raste.', 'Iako je ose??aj zabrinutosti, kao odgovor na pretnju normalna ljudska reakcija, dugotrajna i intenzivna zabrinutost mo??e potkopati konstruktivne reakcije na krizu.\r\n\r\nSlede??i predlozi, zasnovani na psiholo??koj nauci i mogu vam pomo??i da se re??ite anksioznosti izazvane korona virusom.\r\n\r\n1. Nemojte potcenjivati sopstvenu otpornost\r\nMnogi se brinu ??ta ako se virus detektuje u mom bliskom okru??enju, u gradu, na poslu ili u ??koli. Brinu se kako ??e se nositi sa karantinom, izolacijom, le??enjem, simptomima, kako to izgleda???\r\n\r\nLjudski umovi su dobri u predvi??anju najgoreg, pi??e portal Stetoskop.info. Ali istra??ivanja pokazuju da ljudi imaju tendenciju da precenjuju koliko ??e na njih lo??e uticati negativni doga??aji i potcenjuju koliko ??e se dobro nositi sa njima i prilagoditi se te??kim situacijama.\r\n\r\nImajte na umu da ste otporniji nego ??to mislite. To vam mo??e pomo??i da ubla??ite va??u anksioznost. U tim momentima zaboravljamo na sopstvene snage i resurse.\r\n\r\nMogu??i su i emocionalni izlivi usled stresnih doga??aja, dozvolite sebi da izrazite emocije, izrazite zabrinutost, tugu, neprijatnost.\r\n\r\nIzrazite emocije pla??om ili na neki drugi prihvatljiv na??in (sve je dozvoljeno dok ??titite sebe i druge). Sve u cilju uspostavljanja emocionalne kontrole.\r\n\r\nOna se uspostavlja postepenim prihvatanjem opre??nih (ambivalentnih) emocija i ohrabrivanjem sebe. Tako ??to ??e osoba uveravati sebe da ima dovoljno snage i izdr??ljivosti da podnese novonastalu situaciju.\r\n\r\n2. Nemojte precenjivanju pretnju\r\nKorona virus mo??e biti opasan, sa procenjenom smrtno??c??u od 1,4 odsto do 2,3 odsto. Zato svi treba da budu ozbiljni u pogledu preduzimanja svih razumnih mera predostro??nosti protiv infekcije.\r\n\r\nPostoje odre??eni koraci koje mo??ete preduzeti kako biste umanjili rizik od dobijanja novog korona virusa. Ve??ina su to zdravorazumske mere, poput temeljnog pranja ruku, dezinfekcije naj??e??c??e kori??c??enih ku??nih povr??ina, dr??anja ruku dalje od lica i kijanje u maramicu.\r\n\r\nAli ljudi tako??e treba da shvate da imaju tendenciju da preuveli??avaju opasnost od nepoznatih pretnji u pore??enju sa onima koje ve?? poznaju, poput sezonskog gripa ili saobra??ajnih nesre??a.\r\n\r\nPrikupljanjem informacija i znanja o konkretnom doga??aju koji je izazvao krizu osoba poja??ava sopstvenu kontrolu nad situacijom, nije bespomo??na. Baspomo??nost nam zatvara vrata pred mogu??nostima.\r\n\r\nPreuzimanjem konkretnih akcija umanjujete tenziju, vra??ate pouzdanje u sopstvene snage i razvijate ose??aj kompetentnosti.\r\n\r\nKonstantno senzacionalno medijsko izve??tavanje doprinosi precenjivanju opasnosti, ??to dovodi do poja??anog straha i dalje eskalacije uo??ene opasnosti.\r\n\r\nDa biste smanjili anksioznost, ograni??ite svoju izlo??enost vestima o korona virusu na ne vi??e od 30 minuta dnevno.\r\n\r\nI zapamtite da postajemo anksiozniji kada se suo??imo sa situacijama koje su neizvesne. Anksioznost dodatno doprinosi da sve ocenjujemo ugro??avaju??e.\r\n\r\n3. Toleri??ite neizvesnost\r\nNesigurnost ??ini ljude osetljivijima, ono ??to je neizvesno tuma??imo kao potencijalno veoma opasno, nismo sigurni da li ??e se sve dobro zavr??iti.\r\n\r\nOna je sastavni deo ??ivota, ali u zavisnosti od toga kakav stav zauzmemo prema neizvesnosti, razli??ito ??emo reagovati.\r\n\r\nLjudi imaju potrebu da kontoli??u mnoge stvari, na taj na??in stvaraju sebi sigurnu sredinu i budu??nost. Me??utim, koliko je to u realnosti mogu??e potpuno?!\r\n\r\n??ivot ne mo??emo potpuno kontrolisati, jer da mo??emo to ne bi bio ??ivot. Sve ??to je ??ivo i razvija se, ne mo??e se kontrolisati. Tu ??injenicu jednostavno treba prihvatiti.\r\n\r\nTako??e, treba imati na umu da se ne suo??avate prvi put sa neizvesnim situacijama. Ve?? posedujete li??ne resurse jer imate iskustvo sa drugim stresorima. Svako prevazila??enje prepreka vodi nas ka li??nom rastu i razvoju.\r\n\r\nStudija tokom pandemije H1N1 iz 2009. godine pokazala je da su ljudi, koji su te??e prihvatili neizvesnost situacije, imali poja??ane simptome anksioznosti.\r\n\r\nRe??enje je nau??iti da se postepeno suo??avamo sa frustracijama u svakodnevnom ??ivotu, jer na taj na??in uzgra??ujemo imunitet psihe. Postajemo otporniji na uzro??nike, i da uzro??nika nema bili bi potpuno slaba??ni. Na?? organizam je tako osmi??ljen da funkcioni??e. Treba povratiti veru u sebe jer ste mnoge neizvesne situacije ve?? prevazi??li.\r\n\r\n4. Re??ite paradoks anksioznosti\r\nAnksioznost raste proporcionalno tome koliko se ??ovek poku??ava re??iti toga. Ili kako je Karl Jung rekao, ???Ono ??emu se opire?? opstaje??????\r\n\r\nBorba protiv anksioznosti mo??e imati razli??ite oblike. Ljudi bi mogli da odvrate pa??nju pi??em, hranom ili nekim neadekvatnim aktivnostima koje bi primenjivali vi??e nego ina??e (razvijali zavisnost).\r\n\r\nOni mogu vi??e puta da tra??e uveravanje od prijatelja, porodice ili zdravstvenih stru??njaka da ??e sve biti u redu, ili ??e mo??da opsesivno proveravati vesti u nadi da c??e smiriti svoje strahove.\r\n\r\nIako takva pona??anja mogu trenutno da pomognu, dugoro??no mogu pogor??ati anksioznost. Izbegavanjem anksioznosti ??inimo da se ona uporno vra??a.\r\n\r\nUmesto toga, dozvolite ispoljavanje va??ih anksioznih misli, ose??anja i fizi??kih manifestacija, prihvatajuc??i anksioznost kao adekvatnu reakciju u datom trenutku za vas.\r\n\r\nKada se pojave talasi koronavirusne anksioznosti, primetite i opi??ite to iskustvo sebi ili drugima bez samoosu??ivanja i predvi??anja.\r\n\r\nOduprite se nagonu da pobegnete ili smirite svoje strahove opsesivno ??itajuc??i a??uriranja virusa. Paradoksalno je da ??e suo??avanje sa anksiozno??c??u u trenutku dovesti do manje anksioznosti tokom vremena.\r\n\r\n5. Prevazi??i egzistencijalnu anksioznost\r\nZdravstvene pretnje pokre??u strah koji je u osnovi svih strahova: strah od smrti.\r\n\r\nKada se suo??e sa informacijama o sopstvenoj smrtnosti, ljudi bi mogli postati opsednuti anksiozno????u vezanom za zdravlje i hiperfokusirani na bilo koje znake bolesti.\r\n\r\nPoku??ajte da se pove??ete sa ??ivotnom svrhom i izvorima smisla, bilo da je u osnovi duhovnost, odnosi ili potraga za nekim drugim izvorom.\r\n\r\nUklju??ite se u ne??to va??no ??to odla??ete godinama i preuzmite odgovornost za to kako ??ivite svoj ??ivot. Fokusiranje ili otkrivanjem ???za??to???, mo??e vam pomoc??i da se nosite sa neizbe??nom anksiozno??c??u.\r\n\r\n6. Pove??ati brigu o sebi\r\nTokom situacija koje izazivaju anksioznost, va??no je setiti se isprobanih strategija za spre??avanje i smanjenje anksioznosti.\r\n\r\nOsigurajte adekvatan san, redovno ve??bajte, hranite se zdravo, provodite vreme u prirodi i koristite tehnike opu??tanja kada ste pod stresom.\r\n\r\nDavanje prioriteta ovakvim pona??anjima tokom koronavirusne krize mo??ete uticati na pove??anje va??eg psiholo??kog blagostanja i ja??anju imunolo??kog sistema.\r\n\r\nDa biste lak??e prevazi??li neprijatan ??ivotni doga??aj potrebno je prona??i nov izvor satisfakcije i li??nog zadovoljstva. Potrebno je da punimo energiju kako bismo ??to bolje odreagovali u datom momentu.\r\n\r\n7. Po??alite se nekome ako vam je potrebna podr??ka\r\nLjudi koji su ranjivi na anksioznost i srodne poreme??aje mogli bi da smatraju da je epidemija korona virusa posebno neodoljiva. Shodno tome, mogu se javiti simptomi anksioznosti koji ometaju rad, odr??avanje bliskih odnosa, dru??enje ili brigu o sebi i drugima.\r\n\r\nIako ??ete se mo??da ose??ati bespomo??nim tokom ovog stresnog perioda, primena ovih strategija mo??e vam pomo??i da anksioznost ne postane problem sam po sebi i omogu??i vam da kroz epidemiju pro??ete efikasnije.\r\n\r\n8. Preusmerite pa??nju\r\nNa?? um je stvoren da nas za??titi. Kao takvi, mi smo pristrasni da razmi??ljamo o potencijalnim pretnjama. Kad se na??ete prepuni razmi??ljanja o zastra??ujuc??im stvarima koje bi se mogle dogoditi, va??no je da zapamtite ovu tendenciju precenjivanja verovatno??e za lo?? ishod.\r\n\r\nDa, mogu??e je da se moglo dogoditi ne??to lo??e. Priznajte ove brige, ali ve??bajte da preusmerite svoj um na sada??njost. Meditacija vam mo??e veoma pomo??i u tome.\r\n\r\nOgrani??ite izlaganje vestima. Postoji neverovatan broj vesti i jo?? beskrajna ponuda informacija dostupnih na dru??tvenim medijima.\r\n\r\nAko ste zabrinuti zbog COVID-19, mo??da ??ete provesti dosta vremena u potrazi za a??uriranjima i proveravanjem. To je obi??no kontraproduktivno, jer prodajna mesta i mre??e dru??tvenih medija crpe katastrofalne ili senzacionalne pri??e kako bi dobili preglede.\r\n\r\nOgrani??ite se proveravaju??i vesti jednom dnevno. Isklju??ite automatska obave??tenja o vestima na va??em pametnom telefonu. Verujte da ??ete, ukoliko postoji va??an razvoj doga??aja, brzo ??uti o tome.', 'images/1585270442.jpg', 7, 1585270442);
INSERT INTO `news` (`id_news`, `title_news`, `subtitle`, `text_news`, `picture_path`, `category_id`, `posted_date`) VALUES
(34, 'Kancelarija episkopa ba??kog Irineja odgovorila na napade u ???soro??evskim medijima???', '???Preosve??eni vladika Irinej, kao gra??anin koji spada u grupu ljudi starijih od 65 godina, nalazi u propisanoj izolaciji, odnosno da boravi u svom domu u Novom Sadu, odakle prati i svakodnevna bogoslu??enja preko eparhijskog radija Beseda, a kuda mu sve??tenici i ??akoni donose sveto Pri??e????e kad god se slu??i sveta Liturgija???', 'Episkopove Kancelarije se oglasila povodom napisa u medijima da se vladika navodno sakrio u Vladi??anskom dvoru, a vernike izlo??io rirziku zaraze.\r\n\r\nVladi??ina kancelarija oakrakterisala je te napade kao ???plansku, koordinisanu i klevetni??ku medijsku kampanje auto??ovinisti??kih medija i grupa na dru??tvenim mre??ama protiv Eparhije ba??ke i Preosve??enog episkopa ba??kog g. Irineja???.\r\n\r\n ???Vladika Irinej obavlja sve redovne aktivnosti i crkvene poslove, ali, po??tuju??i u svemu mere koje je propisala Vlada Republike Srbije, ne izlazi iz svoga doma. U njemu se moli i radi i, kao ??lan Svetog Arhijerejskog Sinoda, u stalnom je kontaktu sa Njegovom Sveto????u Patrijarhom srpskim g. Irinejem, drugim ??lanovima Svetog Sinoda i ostalim eparhijskim arhijerejima Srpske Pravoslavne Crkve, sve??tenstvom Eparhije ba??ke i poverenim mu eparhiotima???, navodi Kancelarija episkopa.\r\n\r\nU nastavku saop??tenja ka??e se da klevete i uvrede iznose ???mediji sa soro??evskog i ko zna jo?? ??ijeg platnog spiska, kao i zlonamerne grupe i pojedinci??? predstavljaju nevi??en govor mr??nje i poziv na versku netrpeljivost i diskriminaciju, te dodaje da ???mrzitelji Crkve Bo??je i klevetnici Episkopa ba??kog g. Irineja povre??uju mere odre??ene odlukom o progla??enju vanrednog stanja i druge va??e??e i obavezuju??e mere jer preko dru??tvenih mre??a izazivaju paniku i pozivaju na nepo??tovanje mere izolacije, odnosno samoizolacije. O??ekujemo da nadle??ni dr??avni organi u ovom slu??aju brzo reaguju jer posledice ovakvih napada i harangi u vreme trajanja vanrednog stanja mogu biti velike???.\r\n\r\nKancelarija episkopa ba??kog Irineja ocenjuje da centar ???tobo??e nezavisnog novinarstva, nije bez razloga instaliran usred Srpske Atine???, ne navode??i o kom centru se radi, ni ko su ti pla??enici, ali se dodaje da ti koji kritikuju crkvu ???na oba oka ??mure i ostaju bezglasni kada se njihov u??itelj i promoter nazovinezavisnog istra??iva??kog novinarstva ??etka po novosadskim prodavnicama bez maske i rukavica i time ugro??ava i sebe i druge???.', 'images/1585270549.jpg', 3, 1585270549),
(35, 'Dve naprednja??ke liste u Kragujevcu', 'Virus i vanredno stanje nisu odvratili dr Vladicu Stanojevi??a da sa svojom listom iza??e na lokalne izbore u centru ??umadije.', 'Korona virus i njime uzrokovano vanredno stanje u Srbiji, i u Kragujevcu su  privremeno obustavili (pred)izborne aktivnosti, ali nisu odvratili poznatog ??umadijskog aktivistu  Srpske napredne stranke (SNS) i direktora kragujeva??kog  Zavoda za zbrinjavanje odraslih ???Male P??elice??? Vladicu Stanojevi??a da na  predstoje??im lokalnim izborima predvodi, ka ??to smo ve?? i najavili,  listu grupe gra??ana ???Dr Vladica Stanojevi?????.\r\n\r\nNaprotiv, Stanojevi?? je na??em listu ju??e kazao ???da mu je potreban jo?? jedan dan da prikupi potreban broj potpisa podr??ke Kragujev??ana za svoju listu???, koju ??e Gradskoj izbornoj komisiji da preda odmah po ukidanju vanrednog stanja, kad god to bude bilo.\r\n\r\nStanojevi?? je na??em listu  potvrdio i da je i dalje ??lan Srpske naprene stranke, i time demantovao ??pekulacije da je isklju??en, ili pred isklju??enjem iz SNS.\r\n\r\nVe??ina odborni??kih kandidata na listi ??iji je nosilac, prema njegovim re??ima, tako??e su ??lanovi SNS, koji su nezadovoljni situacijom u Kragujevcu.\r\n\r\n??? Na republi??kom nivou i dalje, naravno, podr??avamo predsednika Srbije i lidera SNS Aleksandra Vu??i??a, ali na lokalu na izbore idemo kao grupa nezadovoljnih gra??ana, nezavisno od liste koju je formirao Gradski odbor SNS, ka??e  Stanojevi??, koji je  odbio da komentari??e  na??e pitanje da li je, nakon odluke da na izboreb iza??e  mimo odluke centrale stranke, bilo reakcije iz vrha SNS i(li) od Aleksandra Vu??i??a.\r\n\r\nNa?? sagovornik tvrdi i da ni sa kim na kragujeva??koj politi??koj sceni nema dogovor o postizbornoj koaliciji.\r\n\r\nNavodi da je u dobrim odnosima i sa liderom Zajedno za ??umadiju Veroljubom Stevanovi??em, i sa nosiocem liste SPS-JS Slavicom ??uki?????Dejanovi??, kao i sa ve??inom ostalih u??esnika u izbornom nadmetanju, ali da ni sa kim od njih nijh nije razgovarao o saradnji posle izbora.\r\n\r\nDemantuje i ??pekulacije da je njegovo u??e????e na izborima, mimo odluke vrha stranke, politi??ki manevar, kako bi se, uprkos izrazitooj nepopularnosti aktuelne naprednja??ke gradske vlasti predvo??ene Radomirom Nikoli??em, obezbedilo da dve kolone SNS imaju ve??inu u gradskoj Skup??tini i nakon predstoje??ih izbora. -Ponavljam, ni sa kim nemamo nikakve dogovore. Idemo na izbore potpuno samostalno, a posle njih ??emo, shodno ostvareno  rezultatu, razgovarati o saradnji i mogu??im koalicijima sa ostali u??esnicima, kazao je  Stanojevi?? za na?? list, napominju??i da je njegova lista do uvo??enja vanrednog stanja u Srbiji prikupila oko 1.000 potpisa podr??ke, te da o??ekuje da ??e preostalu potrebnu podr??ku Kragujev??ana da obezbedi za jedan dana.\r\n\r\nSrpska napredna stranka sa koalicionim partnerima na lokalnim izborima u Kragujevcu nastupa sa listom ???Aleksandar Vu??i??-za na??u decu???.\r\n\r\nPrvi na toj listi je ??lan SNS, indendant Nikola Da??i??, zvani ???Luftika???,  i na njoj, kao ??to je ve?? poznato,  nema aktuelnog gradona??elnika iz redova naprednjaka, Radomira Nikoli??a, koji je, krajem minule sedmice izjavio da se sa vrhom SNS nije dogovarao, samim tim ni dogovorio o njegovom novom anga??manu na nekoj od javnih funkcija.\r\n\r\nPodsetimo da je raskol u  Srpskoj naprednoj stranci u Kragujevcu, pre nekoliko meseci, postao javan nakon ??to se pojedinim medijima pojavio tekst u kojem je ???grupa nezadovoljnih radnika ???Elektro??umadije??? optu??ila narodnog poslanika SNS i savetnika u tom javnom preduze??u Gorana Kova??evi??a da je, navodnim manipulativnim rabotama, ???obrisao??? porodi??ni dug za struju od oko 1,5 miliona dinara.\r\n\r\nReaguju??i, Kova??evi?? je ustvrdio da  iza ove optu??be ne stoji nikakva ???grupa nezadovoljnih radnika EPS-a???, ve?? izvesni ???Bumbar???, ??ija ??e ??elja da postane gradona??elnik Kragujevca da ostane, kako je ocenio, ???sanak pusti???.\r\n\r\nMarljivim i strpljivim istra??iva??kim radom, i uz pomo?? insajdera iz SNS-a, uspeli smo da de??ifrujemo da je stanoviti ???Bumbar??? niko drugi do dr Vladica Stanojevi??.\r\n\r\nOdmah potom, na lokalnim portalima i dru??tvenim mre??ama krenuo je bezobzirni obra??un pozava??anih naprednja??kh klanova, u kojem su iznete gomile ???prljavog ve??a??? jedne i druge strane.\r\n\r\nSukob nije uspeo da spre??i ni vrh stranke koji je, krajem pro??log meseca, nalo??io me??usobno zakrvljenim naprednjacima da ???smire strasti i do??ivljaje???.\r\n\r\nPrimirje je trajalo jedva nekih desetak dana, a sukob je ponovo eskalirao posle obznanjivanja da ??e nolsilac liste SNS u Kragujevcu da bude kum Radomira Nikoli??a, Nikola  Da??i?? ??? Luftika, da je drugi na njoj Stanojevi??ev ???arhineprijatelj???, narodni poslanik I savetnik u EPS-u Goran Kova??evi??, a da Vladice Stanojevi??a  toj listi nema ni ???na klupi za rezerve???.\r\n\r\nPoznavaocima ??umadijskih politi??kih (ne)prilika bio je to jasan signal da ??e Vladica Stanojevi??, koji je, u me??uvremenu progla??en i za najmu??karca u jugolisto??noj Evropi, da formira svoju (pred)izbornu listu???', 'images/1585270806.jpg', 1, 1585270806),
(36, 'Jovo Baki??: Predsednik SNS je opasniji od korone', 'Ve?? sada je jasno da globalno dru??tvo ne??e biti isto posle vi??emese??ne vladavine Covid-19, a to ??e se odraziti i na Srbiju.', 'Duboka privredna recesija ve?? sada je predvidiva, ali ne mo??e se ta??no predvideti njena dubina i razmere, kao i kakve ??e posledice ostaviti u razli??itim delovima svetskog kapitalisti??kog sistema. Ako sudimo na osnovu iskustva, Srbija ??e, kao deo periferije tog sistema, biti izlo??ena, nakon protoka odre??enog vremena, najja??im udarima. Kapitalizam ??e se braniti autoritarnim sredstvima, kao i uvek kada je u o??trijoj krizi, i tu sada??nji predsednik vidi svoju priliku da sledi svetao primer svoga u??itelja Mila ??ukanovi??a u poku??aju ostvarivanja do??ivotne li??ne vlasti ??? ka??e za Danas sociolog Jovo Baki??, odgovaraju??i na pitanje kakve ??e posledice  na narod i dr??avu proizvesti vanredno stanje, ali i strah i panika od virusa.\r\n\r\n* Koliko pomno slu??ate svakodnevna obra??anja predsednika i kako na vas deluju uvedene restriktivne mere?\r\n\r\n??? Da sam psiholog ili psihijatar, svakako bi mi taj slu??aj bio veoma zanimljiv. No, po??to nisam ni jedno ni drugo, zabrinut sam, jer taj usplahireni i neodgovorni ??ovek, koji se usled o??ajnog stanja na??eg dru??tveno-ekonomskog i politi??kog sistema nalazi na ??elu dr??ave, unosi dodatnu nervozu i paniku me??u gra??ane. Utoliko, predsednik SNS-a predstavlja kudikamo ve??u opasnost za dru??tvo od korone kojom se krunisao. Uop??te nije bilo neophodno uvo??enje vanrednog stanja (stru??njaci su preporu??ivali progla??enje vanredne situacije), a vide??emo da li ??e predsednik SNS-a i njegovi saradnici poku??ati da love u mutnom produ??uju??i ga i nakon prolaska opasnosti od pandemije. Imaju??i u vidu lik i delo sada??njeg predsednika SNS-a, ne bi me to iznenadilo, a nadam se da bi mnoge gra??ane naljutilo.\r\n\r\n* Neke va??e opozicione kolege tvrde da predsednik Srbije u??iva u vanrednom stanju i potpunoj dominaciji?\r\n\r\n??? Nema nikakve dileme da je tako. ??tavi??e, izvinjavam se ??to izlazim iz okvira moje struke, nije isklju??eno da je re?? i o orgazmi??kom do??ivljaju.\r\n\r\n* Svakodnevno se ??uju i kritike da je Srbija zakasnila sa merama u borbi protiv ovog virusa i da je doprinela konfuziji koja se kretala od toga da je to najsme??niji virus, do toga da je to toliko ozbiljno da ??emo morati da se oprostimo od nekih najbli??ih.\r\n\r\n??? Svakako je zadocnela. Doktor Nestorovi?? je svojim neodgovornim izjavama ve?? obezbedio neslavno mesto u istoriji Srbije. Svakako je to slu??aj i s predsednikom SNS-a. No, ta neodgovornost u izjavama bila je pra??ena neodgovornim delanjem, pa ima slu??ajeva, u prvoj dekadi marta, ljudi koji su danima prethodno boravili u Teheranu, pa preko aerodroma u Milanu stizali u Srbiju (na beogradskom aerodromu samo bi im izmerili temperaturu), a da zatim uop??te nisu boravili u izolaciji, ve?? su mogli, zavisno od toga da li su zara??eni i koliko im je bogat dru??tveni ??ivot, zaraziti i na stotine ljudi. Naravno, nakon takve neodgovornosti, usledio je strah od katastrofalnog stanja u kojem se nalazi na?? zdravstveni sistem i njegovog sloma. Svejedno, predsednik SNS-a i njegova pripravnica na ??elu vlade nisu se pona??ali kao dr??avnici, ve?? kao uspani??eni i kukavni stran??ari.\r\n\r\n * Stroge mere su ipak uvedene, a jedna od najnovijih je i vi??e testiranja i hospitalizacija na Beogradskom sajmu.\r\n\r\n??? Svetska zdravstvena organizacija od po??etka insistira na ve??em broju testiranja, ali tek je pod uticajem kineskih stru??njaka na??a vlast na to pristala. Ako kineska iskustva govore da su takve mere potrebne i ako na??i epidemiolozi dele taj stav, nikako se ne bih protivio.\r\n\r\n* Uprkos ??irenju virusa jedan broj poslodavaca opredelio se za otpu??tanje radnika, ostavljaju??i ih tako ??ak i bez socijalnog i zdravstvenog osiguranja. Kako na to, kao levi??ar, gledate?\r\n\r\n??? ??to bi rekao predsednik SNS-a, to je kapitalizam. Uistinu jeste. No, u vanrednom stanju bi ??ak i kapitalisti??ka dr??ava mogla da zabrani ne??ove??no postupanje. Re?? je, me??utim, o tome da je ova vlast u funkciji kapitalisti??ke ne??ove??nosti. No, i malim preduze??ima treba vratiti ??etvrtinu upla??enog pro??logodi??njeg poreza, jer se i ona nalaze pod ogromnim udarom.\r\n\r\n * Izbori su raspisani u vreme kada je u Italiji bilo 50.000 obolelih i hiljade mrtvih u Kini. Zar niko nije mogao da predvidi da ??e to sti??i i do nas i da ??e izbori morati da se odlo??e?\r\n\r\n??? Naravno da je moglo, ali kao ??to naglasih, na ??elu dr??ave nisu dr??avnici ve?? stran??ari. Na stranu sada jo?? poraznija ??injenica da je na??u dr??avu ve?? ranije otela mafija, te da je autoritarni sistem u funkciji mafija??kog vladanja nad gra??anima. U tom smislu, kruna lepo stoji predsedniku SNS-a.\r\n\r\n* S obzirom da su sada izbori odlo??eno za izvesno vreme, da li ??ete razmisliti da kada im do??e vreme na njih ipak iza??ete?\r\n\r\n??? Verujte da u ovom trenutku uop??te ne razmi??ljam o izborima.\r\n\r\n * Kako podnosite vanredno stanje, policijski ??as i svakodnevno bombardovanje negativnim informacijama?\r\n\r\n??? Od kada znam za sebe prolazim kroz razli??ite dru??tvene krize. Brzo se privikavam na nove situacije. Mentalnu higijenu odr??avam poja??anim ??itanjem i u??enjem organizovanja daljinskog studiranja. Trudim se da ne izlazim kada ne moram iz ku??e i da izbegavam gu??vu. Nabavljam namirnice, pomalo fizi??ki ve??bam (trebalo bi vi??e i ??itam remek-delo Karla Krausa ???Posljednji dani ??ove??anstva???). Nema zajem??ene sigurnosti, ali ni ???smrti bez sudnjega dana???.', 'images/1585270954.jpg', 1, 1585270954),
(37, '??ade?? tra??i od Evrope da Srbiju uklju??i u sistem ???zelenih koridora???', 'Predsednik Privredne komore Srbije (PKS) i Komorskog investicionog foruma Zapadnog Balkana (KIF ZB6) Marko ??ade?? uputio je danas apel predsednici Evropske komisije Ursuli von der Lajen da se Zapadni Balkan uklju??i u sistem ???zelenih koridora??? Evropske unije, saop??tila je PKS.', '???Tako bi se i kompanijama iz na??eg regiona omogu??io br??i i lak??i transport hrane, lekova, medicinske opreme, ali i sirovina za proizvodnju i gotovih proizvoda za izvoz???, rekao je ??ade??.\r\n\r\nPisma sa zahtevom za podr??ku i prevazila??enje problema sa kojima se suo??avaju kompanije Zapadnog Balkana u transportu robe tokom pandemije upu??ena su i evropskim komesarima za trgovinu i pro??irenje Filu Hoganu i Oliveru Verheljiju.\r\n\r\nDa bi ubrzala transport svih vrsta proizvoda, koji je zna??ajno usporen zbog mera za??tite granica i stanovni??tva, Evropska unija je uvela ???zelene trake???, kako bi, uz manje papirologije, smanjila kilometarske kolone i obezbedila da kamioni ne ??ekaju vi??e od 15 minuta na unutra??njim evropskim granicama.', 'images/1585271037.jpg', 1, 1585271037),
(38, 'Kako borba protiv korone uti??e na dijalog Beograda i Pri??tine?', 'Dijalog Srbije i Kosova odavno ne postoji, borba protiv korona virusa bacila je na potpunu marginu poku??aje da se dijalog obnovi, a po mi??ljenju koordinatora Nacionalnog konventa o EU za Poglavlje 35 Dragi??e Mija??i??a, borba protiv pandemije mogla bi pozitivno da uti??e na odnose Beograda i Pri??tine.', 'Korona virus mo??e da bude jedna prekretnica, ta??ka saradnje izme??u kosovske i srpske vlasti i treba iskoristiti tu ??ansu za saradnju, rekao je Mija??i?? za Glas Amerike.\r\n\r\nDijalog je obustavljen, ja prosto ne verujem da dok traje ova pandemija mo??e da do??e do obnove bilo kakvih pregovora. Prosto je fokus na o??uvanju ??ivota, ekonomije i na??ih dru??tava.\r\n\r\n??ta ??e se desiti nakon korone, to ne mo??emo da znamo u ovom trenutku. Tu su izbori u Srbiji, tu su izbori u Americi, ukazao je Mija??i??.\r\n\r\nOn prime??uje i da se Aljbin Kurti, kao premijer, vi??e bavio poku??ajima da u??vrsti svoju vlast, nego borbom protiv pandemije i da je i to jedan od razloga za pad njegove vlade.\r\n\r\nSkup??tina Kosova izglasala je u sredu uve??e nepoverenje vladi Aljbina Kurtija, koji ostaje na sceni samo kao tehni??ki premijer, a pobednik u ovoj igri, kosovski predsednik Ha??im Ta??i, ve?? je najavio konsultacije o novom premijeru.', 'images/1585271135.jpg', 1, 1585271135),
(39, 'Vulin: Kurtijeva Vlada pala zbog sukoba SAD i Nema??ke', 'Ministar odbrane Aleksandar Vulin ocenio je ve??eras da je pad vlade premijera Aljbina Kurtija posledica ???sna??nog??? sukoba SAD i Nema??ke u kome je po njegovim re??ima, ???Grenelova buldo??er diplomatija ovaj put nadvladala???.', 'Gostuju??i na televiziji Pink, ministar je kazao da je o??ekuje velike promene u Pri??tini posle izglasavanja nepoverenja Kurtijevoj vladi.\r\n\r\n???Do??e to na isto, svi se tamo sla??u po pitanju odnosa prema Srbiji ali je do??lo do promene odnosa snaga velikih sila kada je re?? o Kosovu i Metohiji???, ocenio je Vulin.\r\n\r\nSkup??tina Kosova je sino?? sa 82 glasa za, 32 protiv i 1 uzdr??anim glasom opozvala Vladu premijera Aljbina Kurtija.\r\n\r\nZahtev za opoziv je podneo Demokratski savez Kosova koji je bio koalicioni partner Kurtijevog Samoopredeljenja.', 'images/1585271216.jpg', 1, 1615552673),
(42, 'Dusana Petrovica-Saneta 5/12', 'U Srbiji je do 18 ??asova registrovano ukupno 35 potvr??enih slu??ajeva, prenosi COVID 19.', 'asdasd', 'images/1585335848.jpg', 0, 1585335848),
(43, 'Nesto', 'NestO POSEBNO', 'HDFAHROIG NESTP', 'images/1615552743.png', 8, 1615552760);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL,
  `name_role` varchar(125) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id_role`, `name_role`) VALUES
(1, 'admin'),
(2, 'korisnik'),
(11, 'Neautorizovan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `first_name` varchar(125) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(125) CHARACTER SET latin1 NOT NULL,
  `user_name` varchar(125) CHARACTER SET latin1 NOT NULL,
  `password` varchar(125) CHARACTER SET latin1 NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `first_name`, `last_name`, `user_name`, `password`, `role_id`) VALUES
(2, 'Zika', 'Zikic', 'Zika', 'e10adc3949ba59abbe56e057f20f883e', 1),
(3, 'Mika', 'Mikic', 'mikica', 'e10adc3949ba59abbe56e057f20f883e', 2),
(4, 'Misko', 'Misic', 'misko', '984cefd6d27eb0471fc401a493a4fdff', 2),
(5, 'Misko', 'Misic', 'misko', '984cefd6d27eb0471fc401a493a4fdff', 2),
(9, 'Zika', 'Zikic', 'zika', '14e1b600b1fd579f47433b88e8d85291', 2),
(10, 'Misko', 'Misic', 'misa', 'e10adc3949ba59abbe56e057f20f883e', 2),
(11, 'Milica', 'Milic', 'mici', 'e10adc3949ba59abbe56e057f20f883e', 2),
(12, 'Pera', 'Detlic', 'pera', 'e10adc3949ba59abbe56e057f20f883e', 2),
(13, 'Mica', 'Micic', 'mica', 'e10adc3949ba59abbe56e057f20f883e', 2),
(15, 'Leo', 'Micic', 'leo', 'b59c67bf196a4758191e42f76670ceba', 2),
(18, 'Mica', 'Janjic', 'janjic', '2be9bd7a3434f7038ca27d1918de58bd', 2),
(20, 'Alex', 'Fridl', 'akok', 'e10adc3949ba59abbe56e057f20f883e', 2),
(21, 'Vesa', 'Vesic', 'vesa', 'e10adc3949ba59abbe56e057f20f883e', 2),
(22, 'Pera', 'Peric', 'perica', 'e10adc3949ba59abbe56e057f20f883e', 2),
(23, 'Mira', 'Markovic', 'mira', 'e10adc3949ba59abbe56e057f20f883e', 2),
(28, 'Mladen', 'Jeremic', 'Mladja', 'e10adc3949ba59abbe56e057f20f883e', 2),
(29, 'Milica', 'Harizanov', 'H', 'b59c67bf196a4758191e42f76670ceba', 2),
(30, 'Goran', 'Vesic', 'veske', 'e10adc3949ba59abbe56e057f20f883e', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id_activity`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id_author`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id_activity` int(125) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(125) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
