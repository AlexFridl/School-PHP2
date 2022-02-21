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
(1, 'Aleksandra Fridl', 'Rođena sam 20.09.1982.godine. Završila Filozofski fakultet, smer etnologija i antropologija ali kako želim da u životu radim posao koji volim pronašla sam se u web programiranju. ', '\r\nUz veliku podršku porodice studiram Visoku ICT školu.  ', 'Imam sina od šest godine. ', 'Za potrebe izrade ovog sajta koriscene su vesti koje su u periodu izrade bile postavljene na sajtu https://www.danas.rs/.', '311/14', 'images/af.jpg');

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
(3, 'Društvo'),
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
(1, 'Početna', '1', '0', '1', ''),
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
(5, 'NDMBGD: U odsustvu pravne zaštite bojkot izbora jedino rešenje', 'Inicijativa Ne davimo Beograd saopštila je danas da je odbačena krivična prijava koju su podneli Drugom osnovnom javnom tužilaštvu protiv nepoznatih počinilaca koji su u toku izborne kampanje 2018. godine sabotirali njihove skupove, pozivali na nasilje i širili laži o toj organzaciji.', '\r\n10. mart 2020.\r\n\r\nTražite...\r\n\r\nDnevni list Danas Dnevni list Danas\r\nNaslovna\r\nNOVO\r\nPolitika\r\nIZBORI 2020\r\nDijalog\r\nDruštvo\r\nEkonomija\r\nSvet\r\nSport\r\nKultura\r\nŽivot\r\nAuto\r\nIT\r\nLjudi\r\nBeograd\r\nBBC\r\nDodatak Nedelja\r\nPočetna » Politika » IZBORI 2020 » NDMBGD: U odsustvu pravne zaštite bojkot izbora jedino rešenje\r\n\r\nIZBORI 2020\r\nNDMBGD: U odsustvu pravne zaštite bojkot izbora jedino rešenje\r\nInicijativa Ne davimo Beograd saopštila je danas da je odbačena krivična prijava koju su podneli Drugom osnovnom javnom tužilaštvu protiv nepoznatih počinilaca koji su u toku izborne kampanje 2018. godine sabotirali njihove skupove, pozivali na nasilje i širili laži o toj organzaciji.\r\n\r\n0Piše: Beta10. marta 2020. 10.59\r\n  Istinomer  \r\nNDMBGD: U odsustvu pravne zaštite bojkot izbora jedino rešenje 1\r\nFoto: Facebook/ Ne davimo Beograd\r\n\r\n„Desničarski ekstremisti koji su radili po nalogu vlasti i vršili pritiske na inicijativu Ne davimo Beograd na ovaj način zaštićeni od odgovornosti“, navela je ta inicijativa u saopštenju i ocenila da je to „jasan znak“ da džava nema nameru da obezbedi ravnopravne izborne uslove za sve političke aktere i da će sve uraditi da opstruira i uguši oponente.\r\n\r\nKako su iz te inicijative dodali, protiv aktivista Ne davimo Beograd gomilaju sudski procesi i kazne kojima vlast pokušavada ih „pravno izmori“ i da spreči njihov rad, a slične napade i pritiske trpe sve opozicione organizacije i situacija je gora nego 2018.\r\n\r\n„U ovakvoj atmosferi, ne samo odsustva pravne zaštite, već i očigledne namere državne opstrukcije našeg rada, uvereni smo da je bojkot lažiranih izbora jedina ispravna odluka“, dodaje se u saopštenju uz poziv građanima da im se pridruže u bojkotu.\r\n\r\nU saopštenju se navodi da je Inicijativa ne davimo Beograd tokom 2018. bila meta brojnih napada i optužbi, laži, pretnji i pritisaka, a da su žalbe gradskoj izbornoj komisiji i Upravnom i Ustavnom sudu ostale nerešene.', 'images/ne-davimo-beograd.jpg', 3, 1583835469),
(14, '„Variola vera“ je priča o bolesti društva', 'Prošlo je skoro 50 godina (1972) od epidemije velikih boginja (variola vera) u Jugoslaviji. Bio je to skandalozni, nečuveni slučaj pojave jedne iskorenjene tropske bolesti u Evropi.', 'Meni je trebalo deset godina da otkrijem istinu o tom bizarnom događaju jer su detalji o njemu brižljivo sakrivani. Među zvaničnicima je vladala neka vrsta zavere ćutanja i tek kada sam naišao na dva hrabra lekara, koji su mi otkrili pravu istinu, shvatio sam zašto se ta stvar toliko zataškava.\r\n\r\nRadilo se u stvari ne toliko o medicinskom koliko o društvenom oboljenju; već tada se, naime, naoko nerazrušiva tvrđava, koja se zvala Jugoslavija, opasno zaljuljala. Ali to su znali samo oni u vrhu. Ja sam imao samo predosećaj da je stvar opasna ne samo za stanovništvo već i te kako za vlast.\r\n\r\nGodine 1982. najzad sam uspeo da snimim film „Variola vera“, koji je predstavljao relativno vernu rekonstrukciju događaja iz decenije pre toga, sa nešto izmena u faktografiji i prerade stvarnih ličnosti, onoliko koliko sam smatrao da mi dozvoljava licentia poetica.\r\n\r\nFilm se kolebao između dva žanra: filma katastrofe i horora. Kasnije ga je britanski časopis za filmsku estetiku Sight & Sound, koji izdaje Britanski filmski institut, uvrstio među sto najboljih horor ostvarenja svih vremena pa mu je ta odrednica i ostala. Kada sam, međutim, 1984. „Variolu“ prikazao studentima Kolumbija Univerziteta u NJujorku i rekao im kako je to priča o bolesti društva oni su me gledali začuđeno. Nisu, naime, kao mi koji smo dolazili iz socijalizma, bili naviknuti na postupak u kome se neko putem alegorija i metafora izražava o društvenim pitanjima.\r\n\r\nTaj film je bio veoma gledan u zemlji. Namerno ne upotrebljavam izraz popularan jer su gledaoci, koji su i sami imali sećanja na te užasne dane, iz bioskopskih sala izlazili prepadnuti. Ali taj strah ih je, izgleda, privlačio. Kao da su se, gledajući „Variolu“, konačno očistili od nečega što je u njima ostalo zakopano deset godina.\r\n\r\nPoneko mi i dan-danas pomene koliko se silno naplašio gledajući „Variolu“. Ja sam, da priznam, želeo da moj film krene u nešto drugom smeru, da ismeva naš mentalitet, ali ispalo je ovako kako je ispalo. Znate, filmovi ponekad imaju svoj put koji ne može promeniti ni sam autor.\r\n\r\nSada, kada se bauk pandemije ponovo nadvio nad nama, shvatam kako se od „Variole“ do danas nije mnogo toga promenilo. Ista ona nespremnost za hvatanje ukoštac sa iskušenjem, ista neprofesionalnost, isti strah za, pre svega, sopstvene pozicije, opet ona zataškavanja, ponovo sve te laži. Neshvatanje kako je izbegavanje istine, ma kakva ona bila, pogubno.\r\n\r\nU prvi plan ponovo, baš kao 1972, isturaju se ne borci nego pajaci, koji misle da je dovoljno da oponašaju svog očajno neduhovitog vođu. Ne razumeju da nije u pitanju to da se ljudi smire, nego da se zaštite. Jer će ako, ne daj Bože, epidemija poprimi još dramatičnije razmere i sami prestati da se cerekaju nad trenutkom istine.', 'images/1584226472.jpg', 4, 1584226472),
(17, 'Vučić koristi koronu za predizbornu kampanju', 'Dok iz sveta stižu primeri političara koji su zbog moguće izloženosti korona virusu odlučili da se samoizoluju, predsednik Srbije Aleksandar Vučić nema nameru da se testira na covid-19 iako je prisustvovao konferenciji u Americi na kojoj je bilo dvoje zaraženih koronom.', 'Kako kaže, iza poziva da preduzme preventivne mere stoji želja opozicije da ga stavi u karantin do izbora.\r\n\r\n– Juče je jedan političar rekao: „Hajde da odložimo izbore“. A onda: „Ako bi moglo još i da Vučić umre“. To ne smeju da kažu naglas jer nije pristojno, ali bi to verovatno rešilo problem. Ili: „Ako bismo mogli Vučića da strpamo u karantin, bar do 26. aprila. To bi nam rešilo problem – rekao je predsednik, dodajući da ni to ne bi pomoglo opoziciji da pobedi.\r\n\r\nAleksandar Vučić prisustvovao je konferenciji Američko-izraelskog komiteta za javne poslove, koja je okupila 20.000 učesnika, prošle nedelje, a na kojoj je bilo dvoje zaraženih koronom. Na istom događaju bio je i republikanski senator Ted Kruz, koji je juče obavestio javnost da će naredne dane provesti u kućnoj izolaciji pošto se ispostavilo da je razgovarao sa jednim od obolelih. Kruz je saopštio da su izuzetno male šanse da je zaražen koronom, pošto je susret sa zaraženim bio kratak, ali da je zbog opreza i čestih kontakata sa svojim biračima odlučio da ostane u svom domu u Teksasu ove nedelje.\r\n\r\nProfesor FPN-a Đorđe Pavićević smatra da bi odgovorno ponašanje predsednika Republike u ovom slučaju podrazumevalo da se predsednik ili testira na virus, ili da uveri građane da nije bio izložen koroni, ili da ode u samoizolaciju.\r\n\r\n– Ovde ne govorimo samo o političkoj već i građanskoj i moralnoj odgovornosti, dodaje Pavićević.\r\n\r\nPo njegovom mišljenju sve izjave predsednika Vučića o koroni, uključujući i odgovor TV N1 da će se testirati kada ova televizija reprizira film „Vladalac“, deo su predizborne kampanje.\r\n\r\n– Sada se na sve gleda iz ugla predizborne kampanje. U tom kontekstu treba čitati i njegove izjave – sada bi svi da me stave u karantin – kaže Pavićević.\r\n\r\nInače pored Teda Kruza, i portugalski predsednik Marselo Rebelo de Souza izabrao je samoizolaciju i to nakon što je primio grupu studenata iz škole u kojoj je naknadno otkriveno da je jedan učenik zaražen korona virusom. Kako je saopšteno iz predsedničke kancelarije, prvi čovek države na taj način želi da pruži primer kako se sprovode preventivne mere.\r\n\r\nU Srbiji je do sada registrovan jedan oboleli od korone dok su prema poslednjim podacima Ministarstva zdravlja do sada testirane 94 osobe.\r\n\r\nOdgovarajući na pitanje šta bi predsednik Vučić trebalo da uradi nakon povratka sa pomenute konferencije u kontekstu odgovornog ponašanja, epidemiolog Zoran Radovanović kaže za Danas da različite zemlje na različite načine postupaju u borbi protiv širenja korona, a da u Srbiji vlada relaksiraniji pristup.\r\n\r\nKada je reč o predsedniku Vučiću, Radovanović ističe da bi on trebalo da prati protokol kao i svi ostali građani, što u ovom slučaju znači da bi trebalo da se obrati Gradskom zavodu za javno zdravlje ako dobije temperaturu ili ostale simptome infekcije.\r\n\r\n– Mala je mogućnost da je Vučić na konferenciji na kojoj je bilo 20.000 naleteo na dvojicu zaraženih. Možda je neko iz njegovog obezbeđenja bio u kontaktu sa zaraženim, ali je i to mali rizik – kaže Radovanović.\r\n\r\nOn ipak ističe da predsednik ima sklonost da se ponaša kao polubog i da zaboravlja da se zakoni ove zemlje odnose na njega kao i na sve druge, podsećajući na događaj prošle godine kada se usred sezone gripa fotografisao bez maske sa dečakom koji se lečio na Odeljenju hematoonkologije Instituta za majku i dete.\r\n\r\n– Predsednik mora da zna da je ravnopravan sa ostalim i da se i na njega odnose zakoni ove zemlje. Ne može partijska knjižica ili funkcija da pravi razliku između ljudi, zaključuje Radovanović.\r\n\r\nSrbin zaražen koronom na brodu u Americi\r\n\r\nNa brodu Grand Princess, na kome je registrovan određeni broj lica zaraženih korona virusom, nalazi se 34 državljana Srbije, od čega je 33 članova posade i jedan putnik. Među zaraženima je i jedan Srbin, koji se nalazi u izolaciji i sada se oseća dobro, saopštilo je juče Ministarstvo spoljnih poslova. Iz Ministarstva su objasnili da će svi članovi posade ostati na brodu tokom dvonedeljnog karantina dok će putnici biti prebačeni u zemlje porekla, nakon što brod bude usidren.\r\n\r\nOsnovna poruka nije stigla do građana\r\n\r\nEpidemiolog Zoran Radovanović kaže da osnovna poruka o korona virusu nije doprla do građana i zdravstvenih radnika. „Ako ste bili u području gde ima zaraženih i pri tome imate simptome poput temperature ili kašlja, treba da se javite gradskom zavodu za javno zdravlje, koji će proceniti situaciju. To je osnovna poruka koja izgleda nije došla ni do građana ni do zdravstvenih radnika“, ističe Radovanović.\r\n\r\n', 'images/aleksandarvucic-1.jpg', 1, 1582192849),
(20, 'U ponedeljak ponovo protesti taksista', 'Predstavnik Ugovorne privredne taksi komore Srbije Boško Vukojević izjavio je danas da taksisti u ponedeljak, 7. oktobra nastavljaju sa protestima na beogradskim ulicama i sa dvočasovnom blokadom prometnih saobraćajnica, kao i s protestom ispred zgrade Vlade Srbije.\r\n', 'U ponedeljak ponovo protesti taksista\r\nEkonomija\r\nU ponedeljak ponovo protesti taksista\r\nPredstavnik Ugovorne privredne taksi komore Srbije Boško Vukojević izjavio je danas da taksisti u ponedeljak, 7. oktobra nastavljaju sa protestima na beogradskim ulicama i sa dvočasovnom blokadom prometnih saobraćajnica, kao i s protestom ispred zgrade Vlade Srbije.\r\n\r\n9Piše: Beta06. oktobra 2019. 13.34 Izmenjeno: 13.35\r\n  Istinomer  \r\n\r\nFoto: Lj. Bukvić\r\n\r\n„Želim da demantujem vest koja je izašla da taksisti u ponedeljak neće izaći na ulice, to je čista dezinformacija. Taksisti će definitivno izaći na proteste, nikada nismo ni razmišljali da ih prekinemo, samo ih od ponedeljka nećemo radikalizovati zbog posete turskog predsednika Erdogana, pošto ne želimo da od naših esnafskih problema pravimo međunarodni problem i šaljemo lošu sliku o Srbiji“, rekao je Vukojević za N1.\r\n\r\nOni su ranije najavljivali da će od ponedeljka radikalizovati protest tako što će blokirati i mostove.\r\n\r\nTurski predsednik je u zvaničnoj poseti Srbiji 7. i 8. oktobra.\r\n\r\nOrganizatori protesta poručuju da će taksisiti na ulicama biti sve dok im država ne ispuni zahtev – a to je, kako navode, da počne da se primenjuje Zakon o prevozu putnika, kako bi se zabranio rad, kako kažu, nelegalnim prevoznicima koji posluju uz pomoć aplikacije.', 'images/politika.jpg', 2, 1579597205),
(23, 'Merkel odbila ideju o korona obveznicama', 'Nemačka kancelarka Angela Merkel izrazila je danas, na evropskoj video konferenciji protivljenje ideji o izdavanju „korona obveznica“, kao odgovor na krizu koju je izazvao ovaj virus.', 'Tu ideju su predložilii francuski i italijanski lider kao mogući odgovor.\r\n\r\n„Stav Nemačke, ali i drugih učesnika, je da ne prihvataju koncept izdavanja zajedničkih evropskih obveznica za podršku ekonomiji“, istakla je Merkelova, sumirajući današnje video konferencije evropskih lidera posvećenoj novom korona virusu i načinima za suočavanje sa njim.', 'images/1585268428.jpg', 2, 1585268428),
(24, 'Organizatori OI u Tokiju polako sabiraju troškove odlaganja', 'Organizacija Olimpijskih Igara u Tokiju je trebalo da bude jedna od štedljivijih, ali je ipak početnu procenu budžeta (7,3 milijarde dolara) i te kako prebacila i zvanično stigla do 12 milijardi i 600 miliona.', '“Jedan po jedan, moramo da osiguramo da se svaki problem na koji naiđemo reši“, rekao je predsednik Organizacionog odbora Toširo Muta na otvaranju sastanka udarne grupe formirane po odlaganju Igara, „Dodatni troškovi će, koliko pretpostavljamo, biti veliki. Pored toga što je sve praktično pripremljeno za održavanje Olimpijskih igara, sledi nam još mnogo napora. Neke planove moramo da apdejtujemo, a neke da izbrišemo. Biće to iskustvo koje niko nikada nije imao i siguran sam da ćemo uspeti“, rekao je Muta. \r\n\r\nOn nije mogao da ponudi procenu koliko bi odlaganje moglo da košta organizaciju, ali tiražni Nikkei tvrdi da bi novo iznajmljivanje objekata, prebukiranje hotela i dodatni troškovi za sve koji su već uposleni, pre svega na plate moglo da iznosi 2,7 milijardi dolara. O šteti za privredu Tokija još niko javno ne govori.\r\n\r\nSa ovim povećanjem troškova dupliran je početni budžet, iako je malo toga novog sagrađeno jer su već imali izuzetne sportske objekte širom prestonice. Tako će igre u Japanu doći na drugo mesto najskupljih svih vremena, a prvo kad su Letnje u pitanju.\r\n\r\nZa Zimske igre u Sočiju 2014. Rusija je praktično izgradila novi grad na obali Crnog mora sa svim mogućim sportskim i pratećim objektima, pa čak i pistu za Formulu 1. Što je koštalo čak 21,9 milijardu dolara.', 'images/1585268753.jpg', 9, 1585268753),
(25, 'Kućne vežbe za zatezanje i oblikovanje', 'Kada ljudi razmišljaju o vežbanju kako bi smršali, često pretpostavljaju da to znači trening samo u teretani, ali postoje i kućne vežbe za zatezanje i oblikovanje.', 'U situaciji kada su teretane zatvorene, pa čak i kada nisu, kućne vežbe za zatezanje i oblikovanje su odlična opcija i za mršavljenje i za dobijanje novih mišića. Na ovaj način radite nešto i lepo i korisno: posvećujete se sebi i svom zdravlju kroz fizičku aktivnost i ostajete kod kuće.\r\n\r\nAko se rade pravilno i dosledno, kućne vežbe za zatezanje i oblikovanje mogu biti efikasne kao i vežbanje u teretani. Ključno je fokusirati se na trening snage. Iako ćete želeti da eventualno ubacite kardio elemente u svoje kućne vežbe za zatezanje i oblikovanje, počnite ipak tako što ćete ispraviti osnovne stvari.\r\n\r\n<b>Kućne vežbe za početnike </b>\r\n\r\nAko niste dugo vežbali i želite da počnete dok ste kod kuće, kućne vežbe za zatezanje i oblikovanje treba uglavnom da se fokusiraju na velike mišiće koji pružaju stabilnost i snagu. Nije vam potrebna specijalna oprema, a vežbe možete raditi odjednom ili ih podeliti u serije tokom dana.\r\n\r\nBilo koje kućne vežbe za zatezanje i oblikovanje bi bilo dobro da radite u dva do tri seta od 10 do 12 ponavljanja svake vežbe. Ako za početak možete samo četiri ili šest, i to je u redu. Cilj je izvesti kućne vežbe za zatezanje i oblikovanje tako da se telo do poslednjeg ponavljanja lagano trese. Iz nedelje u nedelju, cilj je da povećate ponavljanja dok ne budete bili u mogućnosti da dostignete do tri serije od 12 ponavljanja.\r\n\r\nEvo četiri kućne vežbe za zatezanje i oblikovanje kojima možete pokrenuti svoj program treninga kod kuće:\r\n\r\nSklekovi: savršena forma je ključna kada radite sklekove. Počnite sa varijacijom koju možete završiti, ali sa dobrom tehnikom. Ove kućne vežbe za zatezanje i oblikovanje bi trebalo da radite uporno, da napredujete do sledećeg nivoa kada ćete moći da uradite 10 do 12 ponavljanja bez spuštanja leđa, kratkih pauza ili nestabilnog podrhtavanja.\r\nIskoraci: počnite sa jednostavnim setom iskoraka na nazad, koji pomažu u oblikovanju zadnjice i butina. Koristite zid ili stolicu za balansiranje ako vam je potrebno. Kada budete mogli da uradite 10 do 12 ove kućne vežbe za zatezanje i oblikovanje, i to svakom nogom bez podrške, probajte prednji iskorak ili drugačiju varijaciju.\r\nČučnjevi: čučnjevi pokreću velike mišiće u donjem delu vašeg tela i pomažu da oblikujete zadnjicu i butine. Uvek radite čučnjeve sa stopalima u širini kukova. Ove kućne vežbe za zatezanje i oblikovanje trebalo bi da se rade tako da kukovi budu iza vas kao da sedate u stolicu.\r\n„Daska”: ova vežba jača mišiće abdomena i leđne mišiće. Počnite držanjem ove pozicije 15 sekundi. Kako budete jačali, napredujte do 30 i eventualno 90 sekundi. Što se tiče ove kućne vežbe za zatezanje i oblikovanje, ona deluje najjednostavnije, ali je u stvari, može se reći, najteža.\r\nZa ove kućne vežbe za zatezanje i oblikovanje potrebno je da imate dovoljno energije, pa se nemojte zavaravati idejom da bi trebalo da jedete što manje. Suprotno tome, hranite se dobro i slobodno se zasladite: šećer je pogonsko gorivo našeg organizma. Razvijajte svoju snagu malo po malo uz kućne vežbe za zatezanje i oblikovanje i ostanite kod kuće!', 'images/1585268922.jpg', 8, 1585268922),
(26, 'Marko Louis: Izazov je svirati pred publikom koju ne vidiš', 'Nažalost, čovek se uglavnom „probudi“ tek kada dođe do problema, kada je ugrožena sloboda ili zdravlje, a važno je da smo svaki dan zahvalni na tome što smo zdravi i da to shvatimo ozbiljno, bez obzira na virus.', 'Solidarnost je najbitnija u ovom trenutku jer moramo da vodimo računa jedni o drugima. Ovo je period kada su ugroženi svi. Nema podele. Svi smo isti – kazao je za Danas Marko Louis, muzičar koji je zbog nemogućnosti da nastupi uživo pred publikom odlučio da održi online koncert „Quarantine Live Session“, na njegovom Instagram profilu i Youtube kanalu, danas u 18 sati.\r\n\r\nPosle dva objavljena singla koji najavljuju novi album planiran za kraj godine, „Ninana“ i duet sa Lenom Kovačević – pesma „Kraj“, Marko Louis je trebalo da, u sklopu regionalne turneje, ima i koncert u Kombank dvorani. Međutim, zbog izbijanja vanrednog stanja, samim tim i nemogućnosti da se druži sa svojom publikom, Louis je odlučio da ljubitelje „balkanskog soula“ obraduje online koncertom.\r\n\r\n– Već mi veoma nedostaje da pevam i sviram pred publikom i nisam ja prvi koji se setio ovoga ali mislim da je trenutno jedini način kako izvođač može da deli svoj performans. Mnogo sam srećan povodom kako je publika reagovala na moju objavu i komentari su prelepi. Nikada nisam radio nešto slično i moram da priznam da je izazov za mene da nastupam pred publikom koju ne vidim. Biću sam sa svojim instrumentima i mislim da može interesantno da ispadne – smatra Louis.\r\n\r\nOn kaže da ovaj period koristi da se druži sa porodicom i da radi stvari za koje nikada „nije bilo vremena“, kao na primer da kuva.', 'images/1585269040.jpg', 4, 1585269040),
(27, 'U Kragujevcu još dvojica zaraženih', 'U Kliničkom centru u Kragujevcu hospitalizovana su još dvojica pacijenata zaraženih korona virusom, saopšteno je iz Instituta za javno zdravlje.', 'Epidemiolog Predrag Delić novinarima je rekao da je jedan novooboleli iz Kraljeva, a drugi sa područja Kragujevca. U toj zdravstvenoj ustanovi leči se ukupno 18 pacijenata zaraženih virusom korona.\r\n\r\nKragujevačkom Institutu od početka epidemije Institut „Torlak“ je, prema rečima Predraga Delića, potvrdio jedanaest pozitivnih na korona virus od ukupno 70 analiziranih uzoraka.\r\n\r\nSa „Torlaka“ su juče stigli negativni rezultati za 24 od 28 poslatih uzoraka. Gradonačelnik Kragujevca Radomir Nikolić prekjuče je najavio da će u kragujevačkim apotekama zaštitnih maski biti od četvrtka, te da će građani moći da kupe po tri komada, ali ih apotekama u centru grada juče nije bilo.', 'images/1585269134.jpg', 12, 1585269134),
(28, 'Društvene igre: Zabava na sigurnom za celu porodicu', 'U trenutku kada je mnoštvo događaja otkazano i ne preporučuje se boravak u zatvorenim prostorima sa puno ljudi, kućna izolacija je jedna od preporuka.', 'U takvim okolnostima nije neobično da vam posle nekog vremena postane dosadno. Zbog toga vam u narednim redovima donosimo nekoliko preporuka za društvene igre u kojima mogu uživati članovi cele porodice, u zatvorenom, na bezbednom, piše City Magazine u novom broju.\r\n\r\nStari dobri klasici:\r\n\r\nMonopol -\r\n\r\nIgra koju verovatno većina ljudi poznaje i igrala je u nekom trenutku, a koja je mnogima bila jedna od prvih lekcija o značenju novca i mudrog ulaganja. Nije sve suvoparno kao što zvuči, veoma je zabavno praviti imperiju kuću po kuću i hotel po hotel, ali ukoliko nameravate da se ponašate neodgovorno, sledi kazna po džepu. Postoji u bezbroj varijanti, sa mnogim filmovima, serijama i video igrama kao inspiracijom.\r\n\r\nBroj igrača: 2-8.\r\n\r\nVreme postavke: 2-5 minuta.\r\n\r\nProsečno trajanje partije: 20-180 minuta.\r\n\r\nRiziko - \r\n\r\nJoš jedan klasik poznat mnogima, koji takođe postoji u nebrojenim varijacijama. Nisu sve mape iste ni pravila jednaka, ali sigurno je da ovde niko nikome nije prijatelj, u pitanju je rat. Dobar za strateško razmišljanje i jačanje znanja iz geografije, loš za jačanje prijateljstava. Zanimljiviji je sa maksimalnim brojem igrača.\r\n\r\nBroj igrača: 2-6.\r\n\r\nVreme postavke: 5-15 minuta.\r\n\r\nProsečno trajanje partije: 1-8 sati.\r\n\r\nKluedo - \r\n\r\nOva igra je veći uspeh doživela na međunarodnoj sceni nego kod nas, ali svakako je vredna vaše pažnje. U pitanju je misterija u kojoj  je ubijen jedan čovek, a na igračima je da otkriju ko je to učinio, gde i čime. Partija je neizvesnija što je više igrača, jer je tako teže pogoditi sve brzo, već treba malo mozgati.\r\n\r\nBroj igrača: 2-6.\r\n\r\nVreme postavke: 5 minuta.\r\n\r\nProsečno trajanje partije: 10-60 minuta.\r\n\r\nNovije popularne igre.\r\n\r\nCatan - \r\n\r\nJedna od najpopularnijih modernih igara, koja ima razna takmičenja širom sveta. Igra se na tabli sastavljenoj od heksagona (šestougaonih polja) na kojoj je cilj da građenjem puta i sakupljanjem resursa dostignete određeni broj poena. Postoje razne ekspanzije, koje osnovnu igru dižu na još kompleksniji nivo i omogućavaju igranje više igrača.\r\n\r\nBroj igrača: 2-12, zavisno od verzije.\r\n\r\nVreme postavke: 15 minuta.\r\n\r\nProsečno trajanje partije: 1-2 sata.\r\n\r\nCarcassonne - \r\n\r\nOkruženje je srednjevekovno, a igra tako što se postavljanjem pločica sa okruženjem traži dobro mesto za svoje „sledbenike“ i skupljanje poena na razne načine. Igra je mnogo zanimljivija nego što deluje na prvi pogled, a ona takođe ima razne ekspanzije, koje produžavaju i usložnjavaju iskustvo igranja.\r\n\r\nBroj igrača: 2-8, zavisno od verzije.\r\n\r\nVreme postavke: 1-5 minuta.\r\n\r\nProsečno trajanje partije: 30-90 minuta.\r\n\r\nDixit - \r\n\r\nOvde je u pitanju igra sa karticama, koja je dobar pokazatelj mašte i kreativnosti igrača. Svi uzimaju šest karata u ruku i igrač čiji je red opisuje svoju kartu sa koliko god reči poželi. Potom svi igrači iz svoje ruke biraju kartu koja najviše odgovara tom opisu i na kraju pokušavaju da pronađu originalnu kartu. Postoje i setovi dodatnih karata, različite tematike.\r\n\r\nBroj igrača: 3-6.\r\n\r\nVreme postavke: 2-3 minuta.\r\n\r\nProsečno trajanje partije: 30 minuta.\r\n\r\nTicket to Ride - \r\n\r\nIgra je posvećena vozovima i cilj je na kraju imati što više železničkih linija, i to što dužih. Igrači to čine sakupljanjem kartica vozova, kartica destinacija i postavljanjem vozova na mapu linija. Potrebno je napraviti ravnotežu između prevelikog širenja i opasnosti od toga da drugi igrač preuzme vašu rutu. Takođe ima brojne ekspanzije sa novim mapama.\r\n\r\nBroj igrača: 2-5.\r\n\r\nVreme postavke: manje od 5 minuta.\r\n\r\nProsečno trajanje partije: 1-2 sata.', 'images/1585269376.jpeg', 7, 1585269376),
(29, 'Njujork tajms: Korona virus i Amerikanci doprineli padu Kurtijeve vlade', 'Spor oko odgovora na pandemiju korona virusa jedan je od razloga zbog kojih je kosovskom premijeru Aljbinu Kurtiju parlament uskratio poverenje, ali kritičari kažu da je ulogu u tome imala i američka diplomatija, piše danas američki Njujork tajms.', 'List piše da je vlada Kosova prva vlada koja je pala zahvaljujući delom i krizi izazvanoj širenjem korona virusa.\r\n\r\nKurti će ostati vršilac dužnosti do formiranja nove vlade, ali nakon jučerašnjeg glasanja u parlamentu Kosovo ostaje bez snažnog vodjstva u trenutku kada većina vlada drugih zemalja pokušava da proširi svoja oblašćenja u borbi protiv pandemije, dodaje NYT.\r\n\r\nList piše da su rezultat glasanja pozdravile SAD čije su diplomate vršile snažan pritisak na Kurtija od kako je njegova vlada stupila na dužnost, zbog toga što se protivio nekim apsektima američkog mirovnog plana za region.\r\n\r\nOdluku su, međutim, osudile Francuska i Nemačka koje su u zajedničkom saopštenju navele da je obaranje vlade nesmotreno tokom pandemije.\r\n\r\n„Kosovu je potrebna stabilna i potpuno funkcionalna vlada da se suoči sa krizom“, navodi se u nemačko-francuskom saopštenju.\r\n\r\nList podseća da je nepoverenje Kurtijevoj vladi delom posledica svadje njegove partije sa manjim koalicionim partnerom oko uvodjenja restrikcija u svakodnevni život gradjana na Kosovu zbog epidemije korona virusa.\r\n\r\nKurtijevi koalicioni partneri podržavali su uvođenje vanrednog stanja čime bi veća ovlašćenja pripala Kurtijevom političkom rivalu Hašimu Tačiju koji, kao predsednik Kosova, u redovnim okolnostima ima cremonijalnu ulogu u političkom životu.\r\n\r\nAli, kako navodi NYT, glasanje u Skupštini Kosova takođe je skrenulo pažnju i na diplomatiju administracije predsednika SAD Donalda Trampa na Balkanu.\r\n\r\nIako je korona virus bio glavni povod za pokretanje inicijative, pad Kurtijeve vlade, izazvan je i mnogo dubljim neslaganjem oko načina rešavanja višedecenijskog spora Kosova i Srbije. U raspravi je Kurti, dugogodišnji aktivista ostao na suprotnoj strani i od Tačija i od Trampove administracije, navodi NYT.\r\n\r\n„To je vrlo jasna posledica igre koju Amerikanci trenutno igraju“, rekao je bivši izaslanik EU na Kosovu Volfgang Petrič.\r\n\r\nKampanja bombardovanja pod vođstvom Amerike pomogla je Kosovu da se oslobodi vlasti Srbije 1999, ali balkanski susedi nikada nisu potpisali konačni mirovni sporazum, dodaje NYT.\r\n\r\nList podseća da je Srbija s uspehom izlobirala kod nekoliko desetina zemalja da ne priznaju nezavisnost Kosova a da je Kosvo zauzvart uvelo takse na robu iz Srbije što je njenoj privredi nanelo štetu.\r\n\r\nAmrički dnevnik navodi da je i pre dolaska Kurtija na vlast Trampova administracija pokušala je da okončai spor tako što će posredovati u postizanju dogovora izmedju Tačija i predsednika Srbije Aleksandra Vučića.\r\n\r\nKao put ka konačnom rešenju SAD su podsticale Kosovo da ukine takse kao gest dobre volje prema srpskoj vladi, a nadajući se brzom dogovoru, američke diplomate su čak raspravljale o nekad nezamislivoj ideji povratka delova Kosova Srbijiu, alarmirajući evropske čelnike koji su se bojali da bi taj korak mogao ponovo pokrenuti etnički sukob.\r\n\r\nAli, nakon što je u februaru formirao svoju koaliciju Kurti je odmah radio na usporavanju procesa i time se suprotstavio Vašingtonu, piše list.\r\n\r\nU strahu da je Tači potajno možda već pristao na podelu Kosova, Kurti se pozavo na svoje ustavno pravo da vodi pregovore sa Beogradom umesto Tačija i da zadrži takse kao sredstvo za održavanje pritiska na vladu Srbije.\r\n\r\nKurti je time došao u direktan konflikt sa Tačijem i specijalnim izaslanikom predsednika SAD Ričardom Grenelom, dodaje list.\r\n\r\nKako bi prisilile Kurtija da ukine takse, SAD su zamrzle više miliona dolara pomoći Kosovu, a sin ppedsednika SAD, Donald Tramp Junior javno se složio sa američkim senatorom koji je predložio povlačenje američkih mirovnih snaga sa Kosova, podseća list i dodaje da je to preplašilo Kosovare, koji američko vojno prisustvo vide kao vitalnu garanciju bezbednosti zemlje.\r\n\r\nNYT dodaje da su i bivši Kurtijevi koalicioni partneri naveli pritisak SAD kao jedan od razloga za povlačenje iz njegove vlade.\r\n\r\n„To je neka vrsta ‘Rambo’ diplomatije“, rekao je Petrič. „Srušiće demokratski izabranu valdu kao kolateralnu štetu“, dodao je on.', 'images/1585269567.jpg', 1, 1585269567),
(30, 'Nestorović: Sutra počinje sa radom objekat na Sajmu', 'Pulmolog Branislav Nestorović rekao je večeras, po završetku sednice Kriznog štaba, da sutra u 14 sati počinje sa radom objekat na Sajmu, jer dolaze avioni sa državljanima Srbije.', 'On je objasnio da se putnici moraju testirati, pa će oni koji su pozitivni na korona virus ići tu u privremenu bolnicu, a oni koji su negativni idu kući uz obaveznu samoizolaciju.\r\n\r\nMi smo se na sednici bavili pitanjem proširenog testiranja, jer je to napor za zdravstveni sistem. Cilj je da imamo 5.000 testova dnevno, rekao je Nestorović za TV Prva.\r\n\r\nValjevo je ostalo kao problem, videćemo kako se situacija razvija, rekao je on i dodao da je Niš, koji je bio temprirana bomba, sada sređen.\r\n\r\nBeorad je potencijalno problem i ponovo bih apelovao na građane da poštuju mere. Mi smo u trećoj nedelji epidemije, za sada se držimo dobro sa osamdesetak ljudi dnevno, što nije veliki broj, rekao je Nestorović.\r\n\r\nZdravstveni sistem se za sada dobro nosi, a pokušaćemo jedan broj lakših pacijenata iz „Dragiše Mišović“ da prebacimo na Sajam, da ne opterećujemo Zemunsku bolnicu, kazao je Nestrović.', 'images/1585269759.jpg', 12, 1585269759),
(31, 'Najbogatiji nemački klubovi pomažu ostalim', 'Četiri najbogatija nemačka fudbalska kluba obećala su danas 20 miliona evra kao podršku drugim timovima koji se bore za finansijski opstanak zbog pandemije korona virusa.', 'Bajern Minhen, Borusija Dortmund, Lajpcig i Bajer Leverkuzen će odsutati od 12,5 miliona evra, još neraspoređenog nova od TV prava i dodaće još 7,5 sopstvenih sredstava.\r\n\r\nTa četiri kluba su ove sezone igrala Ligu šampiona, što im je omogućilo dodatni prihod.\r\n\r\nNemačka fudbalska liga, koja nadgleda dva najjača takmičenja u toj zemlji, odlučiće kako će rasporediti novac.\r\n\r\nLiga je ranije saopštila da strahuje da bi mnogi klubovi mogli da se suoče sa finansijskim kolapsom ako se takmičenja ne nastave.\r\n\r\nDirektor Bajerna Karl-Hajnc Rumenige je rekao da je važno pružiti podršku u ovim teškim vremenima.', 'images/1585270030.jpg', 9, 1585270030),
(32, 'Distanca, maska i drugačiji seks – potpuno novi život pod koronom', 'Zašto je bitna distanca? U životu smo već odavno primetili da oko nas postoji prostor koji je nevidljiv iako fizički i duhovno postojeći.', '26. mart 2020.\r\n\r\nDnevni list Danas\r\n\r\nNaslovna\r\nNOVO\r\nPolitika\r\nDijalog\r\nDruštvo\r\nEkonomija\r\nSvet\r\nSport\r\nKultura\r\nŽivot\r\nAuto\r\nIT\r\nLjudi\r\nBeograd\r\nBBC\r\nDodatak NedeljaSpecijalni dodaci\r\nPočetna » Život » Distanca, maska i drugačiji seks – potpuno novi život pod koronom\r\n\r\nŽivot\r\nDistanca, maska i drugačiji seks – potpuno novi život pod koronom\r\nZašto je bitna distanca? U životu smo već odavno primetili da oko nas postoji prostor koji je nevidljiv iako fizički i duhovno postojeći.\r\n\r\n3Piše: Zoran Vujčić24. marta 2020. 07.37 Izmenjeno: 16.31\r\n  Istinomer  \r\nDistanca, maska i drugačiji seks - potpuno novi život pod koronom 1\r\nFoto: Pixabay/ sasint\r\nOsetimo kada nam je neko preblizu, budi se nagon odbojnosti. Spremnosti na udaljavanje ili akciju. Vremenom i društvenim normama pravila i ponašanja su se promenila.\r\n\r\nNeprihvatljivo je da nekoga gurnete, samo zato što vam se unosi u lice. Kao što je i SADA glupo dozvoliti da vam se neko približi. Pa, makar on bio i vaše unuče ili vaša baba. Evolutivna zaštita očuvanja prostora se teško ponovo stvara. Ali zato se nečovečnost i glupost katalitički umnožavaju.\r\n\r\nSvaki oblik disanja stvara aerosol. Šta je aerosol? To su fine, stabilne kapljice magle raspršene po prosturu. One za sebe lepe čestice prašine, međusobno se sudaraju, postaju veće i na kraju padaju na zemlju (pod). Kijanjem ili kašljanjem izbacuju se i kapljice i aerosol. Domet aerosola je do 2 m u trenutku izbacivanja iz usta.\r\n\r\nKorona virus se UGLAVNOM prenosi od zaražene osobe na nezaraženu osobu kontaktom. Taj kontakt može da bude vidljiv (poljubac, kašljanje, kijanje) ili nevidljiv – takođe kašljanje i kijanje, ali od osoba koje se ne vide, ali su bili par minuta tu, pre nego što ste došli u taj prostor. Zato CDC savetuje 6 stopa ili 2 metra.\r\n\r\nNeverovatno je kako je pragmatizam ta 2 metra pretvorio u generalne savete od 1 metra, a ponašanje bez logike na 20, 30 cm. Ljudi se ljube, grle, rukuju. A opšti savet je dat na slici niže.\r\n\r\nI dok Kinezi i Koreanci spaljuju novac ili ga stavljaju u karantin dok virus ne izgubi vijabilnost, kod nas je na ceni apsolutna nedisciplina. U ovom trenutku mnogi koji žive u nekim daleko razvijenijim zemljama znaju da se i tamo ponašaju kao kod nas u trenutku gostovanja šaljivog doktora. Neozbiljno i neodgovorno. Skoro gostujući na N1, čak je i doktorka iz Italije rekla da su prazni trgovi koji se slikaju – obmana i da se ljudi ponašaju neodgovorno.\r\n\r\nNe razumem takvo ponašanje!! Hrabrost nije, pa mora da je TOTALNA glupost i hazarderstvo!\r\n\r\nLekari, apotekari, medicinske sestre i svi ostali u lancu lečenja padaju s nogu, u zoni su rizika, kao uostalom i svi koji ne mogu da rade od kuće. Neka divna ekipa dobrovoljno (preko FB udružena) se ubija dan-noć da smisle kako da se naprave novi viziri i maske (od ideje, pravljenja, distribucije) (Nauka u Srbiji).\r\n\r\nNeodgovorni se za to vreme šetkaju. Svi ste ih videli, a možda neki od vas aktivno tome doprinose. U Engleskoj su zabrane trčanja po parkovima na snazi. Stotine slučajeva po Srbiji s razdrljenim maskama, češaći, pljuvači, pušači i telefon-zavisnici, majke i deca u gomilama s ljudima koji izlaze iz Lidla, Ideje, Maksija, sve sa na po 20 cm udaljenosti.\r\n\r\nU Beogradu Košutnjak, po Srbiji druge zone – isto. Nikada više džogera, rekreativaca. Stari i dalje pohađaju kurs tezgarenja i šetnje. Ne razumem! Da li smo toliko glup narod? Zar toliko ljudi ne shvata šta znači samoizolacija.\r\n\r\nUz sve uvek se jave teoretičari zavere, neznalice ili zlonamerni, koje šire gomile dezinformacija. Neke od njih su sumirane u ispiranju usta, limunu, belom luku, slanini, rakiji i sl., kao i da virus ne postoji, da je svaka informacija o njemu ili izazvanim smrtima lažirana. Koliko neko mora da bude tup pa da poveruje u tako nešto, gde bi se sinhronizovale sve velike sile i mali sateliti u jedinstvenu laž? Mnogo.\r\n\r\nNe dovodite sebe u stanje panike i grozničavog razmišljanja koji je doktor u pravu.\r\n\r\nSada se javljaju razni lekari gladni TV pažnje koji daju pogrešne savete o tome šta može, a šta ne može da ubije virus. Najtačniju i jedino merodavnu listu donosi EPA. Ja sam je detaljno proučio i obradio u prethodnom blogu (hemija). Na dodatna pitanja sam odgovorio kod Negoslave na blogu.\r\n\r\nNema potreba da pišemo, ni Zoran hemičar, Pera veterinar ili Katarina TV lekar i da dajemo drugačije – kako mi mislimo smernice. I da smo u pravu nema dokaza. CDC pravi preporuke na osnovu EPA liste. Te smernice ne donose lekari već grupa stručnjaka. Eksperata. Zato pratite šta kaže EPA.\r\n\r\nKako mnogi od vas nisu hemičari ja ću listu i dalje pomno pratiti i „prevoditi“ je na jezik ne-hemičara. Jer u osnovi reakcija dezinfekcije je hemija. Nije ni biologija, ni fizika, a tek nije medicina. Ne znam ništa o lečenju Korone. I povodom raznih izjava koji lek sme, a koji ne sme da se koristi, od brufena do antimalarika koji leče Koronu, moramo biti strpljivi da se donese neki STVARNI i PREPORUČENI lekarski sudovi. Ne uzimajte ništa na svoju ruku kao prevenciju, jer niko ne zna koje su moguće komplikacije i nusefekti.\r\n\r\nAko virus uđe u organizam možda je lek tu negde blizu, ali sigurno nije u prethodno nabrojanoj hrani. Jer da jeste ne bismo se ni podlegli. Pominju se razne kombinacije, trenutno je sva svetska naučna i stručna mašinerija okrenuta razmišljanju kako da spreči virus da se „zakači“ za ćeliju.\r\n\r\nBez obzira da li su to inhibitori ekspresije naših proteina ili nečega što će reagovati s virusom. Ne korisrite laži koje se šire internetom, a „savetuju“ ih izmišljeni kineski ili italijanski lekari. Jednom će svi koji su širili takve lažne vesti i krivično odgovarati. Do tada vez rukovanja, ljubljenja i grljenja!! I Držite rastojanje od 2 metra!!!\r\n\r\nA seks?\r\n\r\nKupovni seks Sadašnji način života je uzdrmao industriju seks radnica i radnika. Nema potrebe da navodim linkove, ali ono što jeste zabrinjavajuće je da svaka restrikcija pomera granice onoga što zahtevaju „mušterije“.\r\n\r\nTako da je za sada sigurnije gledati Pornhub koji je mnogima po svetu dao povoljne uslove gledanja (Italija, USA) i koristiti alternativna sredstva u seksu, nego koristiti usluge „prodavačica ljubavi“.\r\n\r\nSeks za jednu noć Prilično zabrinuti „aktivisti“ stalno postavljaju pitanja brojnim agencijama koje uz CDC daju preporuke. Za sada je jedina preporuka – budite odgovorni. Ako ste bolesni ili imate sumnjive simptome izbegavajte nove seksualne avanture. (Opet nije moja lična ptreporuka, već preporuka eksperata).\r\n\r\nSeks stalnih parova u izolaciji Ako ste u izolaciji i zdravi nema razloga da se ne upražnjava seks.\r\n\r\nSeks stalnih parova bez izolacije Ako oba partnera rade ili bar jedan, postoji mogućnost inficiranja, pa time i prenosa infekcije. Kako je po mišljenju eksperata Covid 19 bolest koja se ne prenosi seksom ne postoji ozbiljan rizik od razboljevanja, ali…\r\n\r\nAli obuhvata savet izbegavanja ljubljenja (ako ste zaraženi ili je partner(ka) zaražen), kao i zabranu oralno-analnog seksa, zbog, za sada samo SUMNJE, da se virus prenosi i fekalnim putem.\r\n\r\nDefinitivnog odgovora nema, baš kao što još nema ni definitivne potvrde da se neko inficirao preko zaraženih površina. A pravila prevencije oko površina i ruku su toliko puta ponavljana.\r\n\r\nDa podsetimo virus opstaje u vazduhu oko 3 sata, na podu 1-2 dana, na čeličnim povšinama do 9 dana. Perite ruke sapunom minimalno 20 sekundi. Dezinfikujte ruke ako niste u stanju da ih operete 70% etanolom. Varikina (0,1% nije za ruke, jer brzo oštećuje kožu) je dobra za pod. Kad god možete nosite rukavice, masku, vizir. Bolje sprečiti – nego lečiti.\r\n\r\nStalno postavljano pitanje, često nedogovorno komentarisano od „eksperata“. Dok se stalno simulira ponašanje kapljica aerosola i kako te čestice lete u našem okruženju, gomila tzv. eksperata „ZNA“ da maske imaju samo zaštitnu funkciju za sprečavanje širenja infekcije. A da nemaju efekat na zdrave i da ih zdrave bezveze troše.\r\n\r\nOvo je tolika glupost, da je prosto neverovatno kako neko sebi daje za pravo da emituje takve komentare. Opet druga glupava krajnost je da se platnena (šivena) maska može ceo dan držati na licu, a uveče iskuvati i sve je ok. Nije. Maske funkcionišu tako što sprečavaju dotok kapljica do vas. Svaka maska štiti, što tvrdim od početka ove infekcije.\r\n\r\nZašto? Zato što se virus koji je izuzetno mali, prečnika od 0,05 do 0,18 mikrona ne nalazi kao puščano tane, go i ubitačan. On je u kapljicama i pominjanom aerosolu, često okružen i mukusom (što mu omogućava duže „preživljavanje“ van organizma). Virus nije živo biće, ne mora da se hrani da bi preživeo. Njegova struktura može da bude fizički ili hemijski oštećena, pa se tada pretvara u neškodljivu nevidljivu fleku.\r\n\r\nPrava linija odbrane bi bila RUKAVICE – VIZIR – NAOČARI – MASKA, za sve prodavačice hrane, apotekare i sve druge zdravstvene radnike, koji su u kontaktu s pacijentima. Za one koji nisu u zdravstvu RUKAVICE – NAOČARI – MASKA za izlaženje i rad, jer maska je preventivna mera od aerosola. Nažalost nepotpuna, jer aerosol može da prodre i kroz oči.\r\n\r\nAutor je redovni profesor Hemijskog fakulteta, a tekst preuzet sa njegovog bloga.', 'images/1585270245.jpg', 8, 1585270245),
(33, 'Kako se izboriti s anksioznošću izazvanom korona virusom?', 'Kako virus korona nastavlja globalno širenje i broj dijagnostifikovanih slučajeva COVID-19 i dalje raste, anksioznost vezana za epidemiju takođe raste.', 'Iako je osećaj zabrinutosti, kao odgovor na pretnju normalna ljudska reakcija, dugotrajna i intenzivna zabrinutost može potkopati konstruktivne reakcije na krizu.\r\n\r\nSledeći predlozi, zasnovani na psihološkoj nauci i mogu vam pomoči da se rešite anksioznosti izazvane korona virusom.\r\n\r\n1. Nemojte potcenjivati sopstvenu otpornost\r\nMnogi se brinu šta ako se virus detektuje u mom bliskom okruženju, u gradu, na poslu ili u školi. Brinu se kako će se nositi sa karantinom, izolacijom, lečenjem, simptomima, kako to izgleda…\r\n\r\nLjudski umovi su dobri u predviđanju najgoreg, piše portal Stetoskop.info. Ali istraživanja pokazuju da ljudi imaju tendenciju da precenjuju koliko će na njih loše uticati negativni događaji i potcenjuju koliko će se dobro nositi sa njima i prilagoditi se teškim situacijama.\r\n\r\nImajte na umu da ste otporniji nego što mislite. To vam može pomoći da ublažite vašu anksioznost. U tim momentima zaboravljamo na sopstvene snage i resurse.\r\n\r\nMogući su i emocionalni izlivi usled stresnih događaja, dozvolite sebi da izrazite emocije, izrazite zabrinutost, tugu, neprijatnost.\r\n\r\nIzrazite emocije plačom ili na neki drugi prihvatljiv način (sve je dozvoljeno dok štitite sebe i druge). Sve u cilju uspostavljanja emocionalne kontrole.\r\n\r\nOna se uspostavlja postepenim prihvatanjem oprečnih (ambivalentnih) emocija i ohrabrivanjem sebe. Tako što će osoba uveravati sebe da ima dovoljno snage i izdržljivosti da podnese novonastalu situaciju.\r\n\r\n2. Nemojte precenjivanju pretnju\r\nKorona virus može biti opasan, sa procenjenom smrtnošću od 1,4 odsto do 2,3 odsto. Zato svi treba da budu ozbiljni u pogledu preduzimanja svih razumnih mera predostrožnosti protiv infekcije.\r\n\r\nPostoje određeni koraci koje možete preduzeti kako biste umanjili rizik od dobijanja novog korona virusa. Većina su to zdravorazumske mere, poput temeljnog pranja ruku, dezinfekcije najčešće korišćenih kućnih površina, držanja ruku dalje od lica i kijanje u maramicu.\r\n\r\nAli ljudi takođe treba da shvate da imaju tendenciju da preuveličavaju opasnost od nepoznatih pretnji u poređenju sa onima koje već poznaju, poput sezonskog gripa ili saobraćajnih nesreća.\r\n\r\nPrikupljanjem informacija i znanja o konkretnom događaju koji je izazvao krizu osoba pojačava sopstvenu kontrolu nad situacijom, nije bespomoćna. Baspomoćnost nam zatvara vrata pred mogućnostima.\r\n\r\nPreuzimanjem konkretnih akcija umanjujete tenziju, vraćate pouzdanje u sopstvene snage i razvijate osećaj kompetentnosti.\r\n\r\nKonstantno senzacionalno medijsko izveštavanje doprinosi precenjivanju opasnosti, što dovodi do pojačanog straha i dalje eskalacije uočene opasnosti.\r\n\r\nDa biste smanjili anksioznost, ograničite svoju izloženost vestima o korona virusu na ne više od 30 minuta dnevno.\r\n\r\nI zapamtite da postajemo anksiozniji kada se suočimo sa situacijama koje su neizvesne. Anksioznost dodatno doprinosi da sve ocenjujemo ugrožavajuće.\r\n\r\n3. Tolerišite neizvesnost\r\nNesigurnost čini ljude osetljivijima, ono što je neizvesno tumačimo kao potencijalno veoma opasno, nismo sigurni da li će se sve dobro završiti.\r\n\r\nOna je sastavni deo života, ali u zavisnosti od toga kakav stav zauzmemo prema neizvesnosti, različito ćemo reagovati.\r\n\r\nLjudi imaju potrebu da kontolišu mnoge stvari, na taj način stvaraju sebi sigurnu sredinu i budućnost. Međutim, koliko je to u realnosti moguće potpuno?!\r\n\r\nŽivot ne možemo potpuno kontrolisati, jer da možemo to ne bi bio život. Sve što je živo i razvija se, ne može se kontrolisati. Tu činjenicu jednostavno treba prihvatiti.\r\n\r\nTakođe, treba imati na umu da se ne suočavate prvi put sa neizvesnim situacijama. Već posedujete lične resurse jer imate iskustvo sa drugim stresorima. Svako prevazilaženje prepreka vodi nas ka ličnom rastu i razvoju.\r\n\r\nStudija tokom pandemije H1N1 iz 2009. godine pokazala je da su ljudi, koji su teže prihvatili neizvesnost situacije, imali pojačane simptome anksioznosti.\r\n\r\nRešenje je naučiti da se postepeno suočavamo sa frustracijama u svakodnevnom životu, jer na taj način uzgrađujemo imunitet psihe. Postajemo otporniji na uzročnike, i da uzročnika nema bili bi potpuno slabašni. Naš organizam je tako osmišljen da funkcioniše. Treba povratiti veru u sebe jer ste mnoge neizvesne situacije već prevazišli.\r\n\r\n4. Rešite paradoks anksioznosti\r\nAnksioznost raste proporcionalno tome koliko se čovek pokušava rešiti toga. Ili kako je Karl Jung rekao, „Ono čemu se opireš opstaje…„\r\n\r\nBorba protiv anksioznosti može imati različite oblike. Ljudi bi mogli da odvrate pažnju pićem, hranom ili nekim neadekvatnim aktivnostima koje bi primenjivali više nego inače (razvijali zavisnost).\r\n\r\nOni mogu više puta da traže uveravanje od prijatelja, porodice ili zdravstvenih stručnjaka da će sve biti u redu, ili će možda opsesivno proveravati vesti u nadi da će smiriti svoje strahove.\r\n\r\nIako takva ponašanja mogu trenutno da pomognu, dugoročno mogu pogoršati anksioznost. Izbegavanjem anksioznosti činimo da se ona uporno vraća.\r\n\r\nUmesto toga, dozvolite ispoljavanje vaših anksioznih misli, osećanja i fizičkih manifestacija, prihvatajući anksioznost kao adekvatnu reakciju u datom trenutku za vas.\r\n\r\nKada se pojave talasi koronavirusne anksioznosti, primetite i opišite to iskustvo sebi ili drugima bez samoosuđivanja i predviđanja.\r\n\r\nOduprite se nagonu da pobegnete ili smirite svoje strahove opsesivno čitajući ažuriranja virusa. Paradoksalno je da će suočavanje sa anksioznošću u trenutku dovesti do manje anksioznosti tokom vremena.\r\n\r\n5. Prevazići egzistencijalnu anksioznost\r\nZdravstvene pretnje pokreću strah koji je u osnovi svih strahova: strah od smrti.\r\n\r\nKada se suoče sa informacijama o sopstvenoj smrtnosti, ljudi bi mogli postati opsednuti anksioznošću vezanom za zdravlje i hiperfokusirani na bilo koje znake bolesti.\r\n\r\nPokušajte da se povežete sa životnom svrhom i izvorima smisla, bilo da je u osnovi duhovnost, odnosi ili potraga za nekim drugim izvorom.\r\n\r\nUključite se u nešto važno što odlažete godinama i preuzmite odgovornost za to kako živite svoj život. Fokusiranje ili otkrivanjem „zašto“, može vam pomoći da se nosite sa neizbežnom anksioznošću.\r\n\r\n6. Povećati brigu o sebi\r\nTokom situacija koje izazivaju anksioznost, važno je setiti se isprobanih strategija za sprečavanje i smanjenje anksioznosti.\r\n\r\nOsigurajte adekvatan san, redovno vežbajte, hranite se zdravo, provodite vreme u prirodi i koristite tehnike opuštanja kada ste pod stresom.\r\n\r\nDavanje prioriteta ovakvim ponašanjima tokom koronavirusne krize možete uticati na povećanje vašeg psihološkog blagostanja i jačanju imunološkog sistema.\r\n\r\nDa biste lakše prevazišli neprijatan životni događaj potrebno je pronaći nov izvor satisfakcije i ličnog zadovoljstva. Potrebno je da punimo energiju kako bismo što bolje odreagovali u datom momentu.\r\n\r\n7. Požalite se nekome ako vam je potrebna podrška\r\nLjudi koji su ranjivi na anksioznost i srodne poremećaje mogli bi da smatraju da je epidemija korona virusa posebno neodoljiva. Shodno tome, mogu se javiti simptomi anksioznosti koji ometaju rad, održavanje bliskih odnosa, druženje ili brigu o sebi i drugima.\r\n\r\nIako ćete se možda osećati bespomoćnim tokom ovog stresnog perioda, primena ovih strategija može vam pomoći da anksioznost ne postane problem sam po sebi i omogući vam da kroz epidemiju prođete efikasnije.\r\n\r\n8. Preusmerite pažnju\r\nNaš um je stvoren da nas zaštiti. Kao takvi, mi smo pristrasni da razmišljamo o potencijalnim pretnjama. Kad se nađete prepuni razmišljanja o zastrašujućim stvarima koje bi se mogle dogoditi, važno je da zapamtite ovu tendenciju precenjivanja verovatnoće za loš ishod.\r\n\r\nDa, moguće je da se moglo dogoditi nešto loše. Priznajte ove brige, ali vežbajte da preusmerite svoj um na sadašnjost. Meditacija vam može veoma pomoći u tome.\r\n\r\nOgraničite izlaganje vestima. Postoji neverovatan broj vesti i još beskrajna ponuda informacija dostupnih na društvenim medijima.\r\n\r\nAko ste zabrinuti zbog COVID-19, možda ćete provesti dosta vremena u potrazi za ažuriranjima i proveravanjem. To je obično kontraproduktivno, jer prodajna mesta i mreže društvenih medija crpe katastrofalne ili senzacionalne priče kako bi dobili preglede.\r\n\r\nOgraničite se proveravajući vesti jednom dnevno. Isključite automatska obaveštenja o vestima na vašem pametnom telefonu. Verujte da ćete, ukoliko postoji važan razvoj događaja, brzo čuti o tome.', 'images/1585270442.jpg', 7, 1585270442);
INSERT INTO `news` (`id_news`, `title_news`, `subtitle`, `text_news`, `picture_path`, `category_id`, `posted_date`) VALUES
(34, 'Kancelarija episkopa bačkog Irineja odgovorila na napade u „soroševskim medijima“', '„Preosvećeni vladika Irinej, kao građanin koji spada u grupu ljudi starijih od 65 godina, nalazi u propisanoj izolaciji, odnosno da boravi u svom domu u Novom Sadu, odakle prati i svakodnevna bogosluženja preko eparhijskog radija Beseda, a kuda mu sveštenici i đakoni donose sveto Pričešće kad god se služi sveta Liturgija“', 'Episkopove Kancelarije se oglasila povodom napisa u medijima da se vladika navodno sakrio u Vladičanskom dvoru, a vernike izložio rirziku zaraze.\r\n\r\nVladičina kancelarija oakrakterisala je te napade kao „plansku, koordinisanu i klevetničku medijsku kampanje autošovinističkih medija i grupa na društvenim mrežama protiv Eparhije bačke i Preosvećenog episkopa bačkog g. Irineja“.\r\n\r\n „Vladika Irinej obavlja sve redovne aktivnosti i crkvene poslove, ali, poštujući u svemu mere koje je propisala Vlada Republike Srbije, ne izlazi iz svoga doma. U njemu se moli i radi i, kao član Svetog Arhijerejskog Sinoda, u stalnom je kontaktu sa Njegovom Svetošću Patrijarhom srpskim g. Irinejem, drugim članovima Svetog Sinoda i ostalim eparhijskim arhijerejima Srpske Pravoslavne Crkve, sveštenstvom Eparhije bačke i poverenim mu eparhiotima“, navodi Kancelarija episkopa.\r\n\r\nU nastavku saopštenja kaže se da klevete i uvrede iznose „mediji sa soroševskog i ko zna još čijeg platnog spiska, kao i zlonamerne grupe i pojedinci“ predstavljaju neviđen govor mržnje i poziv na versku netrpeljivost i diskriminaciju, te dodaje da „mrzitelji Crkve Božje i klevetnici Episkopa bačkog g. Irineja povređuju mere određene odlukom o proglašenju vanrednog stanja i druge važeće i obavezujuće mere jer preko društvenih mreža izazivaju paniku i pozivaju na nepoštovanje mere izolacije, odnosno samoizolacije. Očekujemo da nadležni državni organi u ovom slučaju brzo reaguju jer posledice ovakvih napada i harangi u vreme trajanja vanrednog stanja mogu biti velike“.\r\n\r\nKancelarija episkopa bačkog Irineja ocenjuje da centar „tobože nezavisnog novinarstva, nije bez razloga instaliran usred Srpske Atine“, ne navodeći o kom centru se radi, ni ko su ti plaćenici, ali se dodaje da ti koji kritikuju crkvu „na oba oka žmure i ostaju bezglasni kada se njihov učitelj i promoter nazovinezavisnog istraživačkog novinarstva šetka po novosadskim prodavnicama bez maske i rukavica i time ugrožava i sebe i druge“.', 'images/1585270549.jpg', 3, 1585270549),
(35, 'Dve naprednjačke liste u Kragujevcu', 'Virus i vanredno stanje nisu odvratili dr Vladicu Stanojevića da sa svojom listom izađe na lokalne izbore u centru Šumadije.', 'Korona virus i njime uzrokovano vanredno stanje u Srbiji, i u Kragujevcu su  privremeno obustavili (pred)izborne aktivnosti, ali nisu odvratili poznatog šumadijskog aktivistu  Srpske napredne stranke (SNS) i direktora kragujevačkog  Zavoda za zbrinjavanje odraslih “Male Pčelice” Vladicu Stanojevića da na  predstojećim lokalnim izborima predvodi, ka što smo već i najavili,  listu grupe građana “Dr Vladica Stanojević”.\r\n\r\nNaprotiv, Stanojević je našem listu juče kazao “da mu je potreban još jedan dan da prikupi potreban broj potpisa podrške Kragujevčana za svoju listu”, koju će Gradskoj izbornoj komisiji da preda odmah po ukidanju vanrednog stanja, kad god to bude bilo.\r\n\r\nStanojević je našem listu  potvrdio i da je i dalje član Srpske naprene stranke, i time demantovao špekulacije da je isključen, ili pred isključenjem iz SNS.\r\n\r\nVećina odborničkih kandidata na listi čiji je nosilac, prema njegovim rečima, takođe su članovi SNS, koji su nezadovoljni situacijom u Kragujevcu.\r\n\r\n– Na republičkom nivou i dalje, naravno, podržavamo predsednika Srbije i lidera SNS Aleksandra Vučića, ali na lokalu na izbore idemo kao grupa nezadovoljnih građana, nezavisno od liste koju je formirao Gradski odbor SNS, kaže  Stanojević, koji je  odbio da komentariše  naše pitanje da li je, nakon odluke da na izboreb izađe  mimo odluke centrale stranke, bilo reakcije iz vrha SNS i(li) od Aleksandra Vučića.\r\n\r\nNaš sagovornik tvrdi i da ni sa kim na kragujevačkoj političkoj sceni nema dogovor o postizbornoj koaliciji.\r\n\r\nNavodi da je u dobrim odnosima i sa liderom Zajedno za Šumadiju Veroljubom Stevanovićem, i sa nosiocem liste SPS-JS Slavicom Đukić–Dejanović, kao i sa većinom ostalih učesnika u izbornom nadmetanju, ali da ni sa kim od njih nijh nije razgovarao o saradnji posle izbora.\r\n\r\nDemantuje i špekulacije da je njegovo učešće na izborima, mimo odluke vrha stranke, politički manevar, kako bi se, uprkos izrazitooj nepopularnosti aktuelne naprednjačke gradske vlasti predvođene Radomirom Nikolićem, obezbedilo da dve kolone SNS imaju većinu u gradskoj Skupštini i nakon predstojećih izbora. -Ponavljam, ni sa kim nemamo nikakve dogovore. Idemo na izbore potpuno samostalno, a posle njih ćemo, shodno ostvareno  rezultatu, razgovarati o saradnji i mogućim koalicijima sa ostali učesnicima, kazao je  Stanojević za naš list, napominjući da je njegova lista do uvođenja vanrednog stanja u Srbiji prikupila oko 1.000 potpisa podrške, te da očekuje da će preostalu potrebnu podršku Kragujevčana da obezbedi za jedan dana.\r\n\r\nSrpska napredna stranka sa koalicionim partnerima na lokalnim izborima u Kragujevcu nastupa sa listom „Aleksandar Vučić-za našu decu“.\r\n\r\nPrvi na toj listi je član SNS, indendant Nikola Dašić, zvani “Luftika”,  i na njoj, kao što je već poznato,  nema aktuelnog gradonačelnika iz redova naprednjaka, Radomira Nikolića, koji je, krajem minule sedmice izjavio da se sa vrhom SNS nije dogovarao, samim tim ni dogovorio o njegovom novom angažmanu na nekoj od javnih funkcija.\r\n\r\nPodsetimo da je raskol u  Srpskoj naprednoj stranci u Kragujevcu, pre nekoliko meseci, postao javan nakon što se pojedinim medijima pojavio tekst u kojem je “grupa nezadovoljnih radnika “Elektrošumadije” optužila narodnog poslanika SNS i savetnika u tom javnom preduzeću Gorana Kovačevića da je, navodnim manipulativnim rabotama, “obrisao” porodični dug za struju od oko 1,5 miliona dinara.\r\n\r\nReagujući, Kovačević je ustvrdio da  iza ove optužbe ne stoji nikakva “grupa nezadovoljnih radnika EPS-a”, već izvesni “Bumbar”, čija će želja da postane gradonačelnik Kragujevca da ostane, kako je ocenio, “sanak pusti”.\r\n\r\nMarljivim i strpljivim istraživačkim radom, i uz pomoć insajdera iz SNS-a, uspeli smo da dešifrujemo da je stanoviti “Bumbar” niko drugi do dr Vladica Stanojević.\r\n\r\nOdmah potom, na lokalnim portalima i društvenim mrežama krenuo je bezobzirni obračun pozavađanih naprednjačkh klanova, u kojem su iznete gomile “prljavog veša” jedne i druge strane.\r\n\r\nSukob nije uspeo da spreči ni vrh stranke koji je, krajem prošlog meseca, naložio međusobno zakrvljenim naprednjacima da “smire strasti i doživljaje”.\r\n\r\nPrimirje je trajalo jedva nekih desetak dana, a sukob je ponovo eskalirao posle obznanjivanja da će nolsilac liste SNS u Kragujevcu da bude kum Radomira Nikolića, Nikola  Dašić – Luftika, da je drugi na njoj Stanojevićev “arhineprijatelj”, narodni poslanik I savetnik u EPS-u Goran Kovačević, a da Vladice Stanojevića  toj listi nema ni “na klupi za rezerve”.\r\n\r\nPoznavaocima šumadijskih političkih (ne)prilika bio je to jasan signal da će Vladica Stanojević, koji je, u međuvremenu proglašen i za najmuškarca u jugolistočnoj Evropi, da formira svoju (pred)izbornu listu…', 'images/1585270806.jpg', 1, 1585270806),
(36, 'Jovo Bakić: Predsednik SNS je opasniji od korone', 'Već sada je jasno da globalno društvo neće biti isto posle višemesečne vladavine Covid-19, a to će se odraziti i na Srbiju.', 'Duboka privredna recesija već sada je predvidiva, ali ne može se tačno predvideti njena dubina i razmere, kao i kakve će posledice ostaviti u različitim delovima svetskog kapitalističkog sistema. Ako sudimo na osnovu iskustva, Srbija će, kao deo periferije tog sistema, biti izložena, nakon protoka određenog vremena, najjačim udarima. Kapitalizam će se braniti autoritarnim sredstvima, kao i uvek kada je u oštrijoj krizi, i tu sadašnji predsednik vidi svoju priliku da sledi svetao primer svoga učitelja Mila Đukanovića u pokušaju ostvarivanja doživotne lične vlasti – kaže za Danas sociolog Jovo Bakić, odgovarajući na pitanje kakve će posledice  na narod i državu proizvesti vanredno stanje, ali i strah i panika od virusa.\r\n\r\n* Koliko pomno slušate svakodnevna obraćanja predsednika i kako na vas deluju uvedene restriktivne mere?\r\n\r\n– Da sam psiholog ili psihijatar, svakako bi mi taj slučaj bio veoma zanimljiv. No, pošto nisam ni jedno ni drugo, zabrinut sam, jer taj usplahireni i neodgovorni čovek, koji se usled očajnog stanja našeg društveno-ekonomskog i političkog sistema nalazi na čelu države, unosi dodatnu nervozu i paniku među građane. Utoliko, predsednik SNS-a predstavlja kudikamo veću opasnost za društvo od korone kojom se krunisao. Uopšte nije bilo neophodno uvođenje vanrednog stanja (stručnjaci su preporučivali proglašenje vanredne situacije), a videćemo da li će predsednik SNS-a i njegovi saradnici pokušati da love u mutnom produžujući ga i nakon prolaska opasnosti od pandemije. Imajući u vidu lik i delo sadašnjeg predsednika SNS-a, ne bi me to iznenadilo, a nadam se da bi mnoge građane naljutilo.\r\n\r\n* Neke vaše opozicione kolege tvrde da predsednik Srbije uživa u vanrednom stanju i potpunoj dominaciji?\r\n\r\n– Nema nikakve dileme da je tako. Štaviše, izvinjavam se što izlazim iz okvira moje struke, nije isključeno da je reč i o orgazmičkom doživljaju.\r\n\r\n* Svakodnevno se čuju i kritike da je Srbija zakasnila sa merama u borbi protiv ovog virusa i da je doprinela konfuziji koja se kretala od toga da je to najsmešniji virus, do toga da je to toliko ozbiljno da ćemo morati da se oprostimo od nekih najbližih.\r\n\r\n– Svakako je zadocnela. Doktor Nestorović je svojim neodgovornim izjavama već obezbedio neslavno mesto u istoriji Srbije. Svakako je to slučaj i s predsednikom SNS-a. No, ta neodgovornost u izjavama bila je praćena neodgovornim delanjem, pa ima slučajeva, u prvoj dekadi marta, ljudi koji su danima prethodno boravili u Teheranu, pa preko aerodroma u Milanu stizali u Srbiju (na beogradskom aerodromu samo bi im izmerili temperaturu), a da zatim uopšte nisu boravili u izolaciji, već su mogli, zavisno od toga da li su zaraženi i koliko im je bogat društveni život, zaraziti i na stotine ljudi. Naravno, nakon takve neodgovornosti, usledio je strah od katastrofalnog stanja u kojem se nalazi naš zdravstveni sistem i njegovog sloma. Svejedno, predsednik SNS-a i njegova pripravnica na čelu vlade nisu se ponašali kao državnici, već kao uspaničeni i kukavni strančari.\r\n\r\n * Stroge mere su ipak uvedene, a jedna od najnovijih je i više testiranja i hospitalizacija na Beogradskom sajmu.\r\n\r\n– Svetska zdravstvena organizacija od početka insistira na većem broju testiranja, ali tek je pod uticajem kineskih stručnjaka naša vlast na to pristala. Ako kineska iskustva govore da su takve mere potrebne i ako naši epidemiolozi dele taj stav, nikako se ne bih protivio.\r\n\r\n* Uprkos širenju virusa jedan broj poslodavaca opredelio se za otpuštanje radnika, ostavljajući ih tako čak i bez socijalnog i zdravstvenog osiguranja. Kako na to, kao levičar, gledate?\r\n\r\n– Što bi rekao predsednik SNS-a, to je kapitalizam. Uistinu jeste. No, u vanrednom stanju bi čak i kapitalistička država mogla da zabrani nečovečno postupanje. Reč je, međutim, o tome da je ova vlast u funkciji kapitalističke nečovečnosti. No, i malim preduzećima treba vratiti četvrtinu uplaćenog prošlogodišnjeg poreza, jer se i ona nalaze pod ogromnim udarom.\r\n\r\n * Izbori su raspisani u vreme kada je u Italiji bilo 50.000 obolelih i hiljade mrtvih u Kini. Zar niko nije mogao da predvidi da će to stići i do nas i da će izbori morati da se odlože?\r\n\r\n– Naravno da je moglo, ali kao što naglasih, na čelu države nisu državnici već strančari. Na stranu sada još poraznija činjenica da je našu državu već ranije otela mafija, te da je autoritarni sistem u funkciji mafijaškog vladanja nad građanima. U tom smislu, kruna lepo stoji predsedniku SNS-a.\r\n\r\n* S obzirom da su sada izbori odloženo za izvesno vreme, da li ćete razmisliti da kada im dođe vreme na njih ipak izađete?\r\n\r\n– Verujte da u ovom trenutku uopšte ne razmišljam o izborima.\r\n\r\n * Kako podnosite vanredno stanje, policijski čas i svakodnevno bombardovanje negativnim informacijama?\r\n\r\n– Od kada znam za sebe prolazim kroz različite društvene krize. Brzo se privikavam na nove situacije. Mentalnu higijenu održavam pojačanim čitanjem i učenjem organizovanja daljinskog studiranja. Trudim se da ne izlazim kada ne moram iz kuće i da izbegavam gužvu. Nabavljam namirnice, pomalo fizički vežbam (trebalo bi više i čitam remek-delo Karla Krausa „Posljednji dani čovečanstva“). Nema zajemčene sigurnosti, ali ni „smrti bez sudnjega dana“.', 'images/1585270954.jpg', 1, 1585270954),
(37, 'Čadež traži od Evrope da Srbiju uključi u sistem „zelenih koridora“', 'Predsednik Privredne komore Srbije (PKS) i Komorskog investicionog foruma Zapadnog Balkana (KIF ZB6) Marko Čadež uputio je danas apel predsednici Evropske komisije Ursuli von der Lajen da se Zapadni Balkan uključi u sistem „zelenih koridora“ Evropske unije, saopštila je PKS.', '„Tako bi se i kompanijama iz našeg regiona omogućio brži i lakši transport hrane, lekova, medicinske opreme, ali i sirovina za proizvodnju i gotovih proizvoda za izvoz“, rekao je Čadež.\r\n\r\nPisma sa zahtevom za podršku i prevazilaženje problema sa kojima se suočavaju kompanije Zapadnog Balkana u transportu robe tokom pandemije upućena su i evropskim komesarima za trgovinu i proširenje Filu Hoganu i Oliveru Verheljiju.\r\n\r\nDa bi ubrzala transport svih vrsta proizvoda, koji je značajno usporen zbog mera zaštite granica i stanovništva, Evropska unija je uvela “zelene trake”, kako bi, uz manje papirologije, smanjila kilometarske kolone i obezbedila da kamioni ne čekaju više od 15 minuta na unutrašnjim evropskim granicama.', 'images/1585271037.jpg', 1, 1585271037),
(38, 'Kako borba protiv korone utiče na dijalog Beograda i Prištine?', 'Dijalog Srbije i Kosova odavno ne postoji, borba protiv korona virusa bacila je na potpunu marginu pokušaje da se dijalog obnovi, a po mišljenju koordinatora Nacionalnog konventa o EU za Poglavlje 35 Dragiše Mijačića, borba protiv pandemije mogla bi pozitivno da utiče na odnose Beograda i Prištine.', 'Korona virus može da bude jedna prekretnica, tačka saradnje između kosovske i srpske vlasti i treba iskoristiti tu šansu za saradnju, rekao je Mijačić za Glas Amerike.\r\n\r\nDijalog je obustavljen, ja prosto ne verujem da dok traje ova pandemija može da dođe do obnove bilo kakvih pregovora. Prosto je fokus na očuvanju života, ekonomije i naših društava.\r\n\r\nŠta će se desiti nakon korone, to ne možemo da znamo u ovom trenutku. Tu su izbori u Srbiji, tu su izbori u Americi, ukazao je Mijačić.\r\n\r\nOn primećuje i da se Aljbin Kurti, kao premijer, više bavio pokušajima da učvrsti svoju vlast, nego borbom protiv pandemije i da je i to jedan od razloga za pad njegove vlade.\r\n\r\nSkupština Kosova izglasala je u sredu uveče nepoverenje vladi Aljbina Kurtija, koji ostaje na sceni samo kao tehnički premijer, a pobednik u ovoj igri, kosovski predsednik Hašim Tači, već je najavio konsultacije o novom premijeru.', 'images/1585271135.jpg', 1, 1585271135),
(39, 'Vulin: Kurtijeva Vlada pala zbog sukoba SAD i Nemačke', 'Ministar odbrane Aleksandar Vulin ocenio je večeras da je pad vlade premijera Aljbina Kurtija posledica „snažnog“ sukoba SAD i Nemačke u kome je po njegovim rečima, „Grenelova buldožer diplomatija ovaj put nadvladala“.', 'Gostujući na televiziji Pink, ministar je kazao da je očekuje velike promene u Prištini posle izglasavanja nepoverenja Kurtijevoj vladi.\r\n\r\n„Dođe to na isto, svi se tamo slažu po pitanju odnosa prema Srbiji ali je došlo do promene odnosa snaga velikih sila kada je reč o Kosovu i Metohiji“, ocenio je Vulin.\r\n\r\nSkupština Kosova je sinoć sa 82 glasa za, 32 protiv i 1 uzdržanim glasom opozvala Vladu premijera Aljbina Kurtija.\r\n\r\nZahtev za opoziv je podneo Demokratski savez Kosova koji je bio koalicioni partner Kurtijevog Samoopredeljenja.', 'images/1585271216.jpg', 1, 1615552673),
(42, 'Dusana Petrovica-Saneta 5/12', 'U Srbiji je do 18 časova registrovano ukupno 35 potvrđenih slučajeva, prenosi COVID 19.', 'asdasd', 'images/1585335848.jpg', 0, 1585335848),
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
