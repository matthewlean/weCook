-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2017 at 01:57 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wecook`
--

-- --------------------------------------------------------

--
-- Table structure for table `colours`
--

DROP TABLE IF EXISTS `colours`;
CREATE TABLE `colours` (
  `id` int(11) NOT NULL,
  `colour_name` varchar(32) NOT NULL,
  `hex` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` (`id`, `colour_name`, `hex`) VALUES
(1, 'blue', '036aed'),
(2, 'red', 'ff3a2f'),
(3, 'green', '4cd964'),
(4, 'orange', 'ff9500'),
(5, 'yellow', 'ffcc00'),
(6, 'pink', 'ff2d55');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`) VALUES
(1, 'milk'),
(2, 'flour'),
(3, 'eggs'),
(4, 'butter'),
(10, 'sugar'),
(20, 'flour'),
(19, '2'),
(18, 'i2'),
(17, 'i'),
(21, 'flour'),
(22, 'flour'),
(23, 'milk'),
(24, 'bread'),
(25, 'egg'),
(26, 'i2'),
(27, 'Ingredient One '),
(28, 'Ingredient Two'),
(29, 'Ingredient 3'),
(30, 'Ingredient Two'),
(31, 'Ingredient 3'),
(32, 'Ingredient One '),
(33, 'one'),
(34, 'a'),
(35, '1'),
(36, '2'),
(37, '1'),
(38, 'i'),
(39, 'i1'),
(40, 'i2'),
(41, 'i1'),
(42, 'i2'),
(43, 'i3'),
(44, 'i2'),
(45, 'i1'),
(46, 'i3'),
(47, 'one1'),
(48, 'two2'),
(49, 'two2'),
(50, 'one1'),
(51, 'one1'),
(52, 'two2'),
(53, 'a'),
(54, 'b'),
(55, 'c'),
(56, 'c'),
(57, 'b'),
(58, 'a'),
(59, 'd'),
(60, 'a'),
(61, 'b'),
(62, 'c'),
(63, '1'),
(64, '2'),
(65, '2'),
(66, '1'),
(67, 'egg'),
(68, 'bread'),
(69, 'eggs'),
(70, 'flour'),
(71, 'chocolate/fudge bits'),
(72, 'chocolate/fudge bits'),
(73, 'flour'),
(74, 'eggs'),
(75, 'eggs'),
(76, 'flour'),
(77, 'chocolate/fudge bits'),
(78, 'chocolate/fudge bits'),
(79, 'flour'),
(80, 'eggs'),
(81, 'butter'),
(82, 'chocolate bits '),
(83, 'flour'),
(84, 'eggs'),
(85, 'Cocoa powder'),
(86, 'chocolate/toffee bits'),
(87, 'flour'),
(88, 'eggs'),
(89, 'egg'),
(90, 'milk'),
(91, 'flour'),
(92, 'Chocolate '),
(93, 'flour'),
(94, 'eggs'),
(95, 'flour'),
(96, 'eggs'),
(97, 'butter'),
(98, 'sugar'),
(99, 'eggs'),
(100, 'flour'),
(101, 'Chocolate '),
(102, 'butter'),
(103, 'sugar'),
(104, 'eggs'),
(105, 'flour'),
(106, 'butter'),
(107, 'flour'),
(108, 'eggs'),
(109, 'sugar'),
(110, 'ingredient'),
(111, '1'),
(112, 'sugar'),
(113, 'eggs'),
(114, 'flour'),
(115, 'butter'),
(116, 'one'),
(117, 'two'),
(118, 'two'),
(119, 'one'),
(120, 'one'),
(121, 'two'),
(122, 'green'),
(123, 'green'),
(124, 'ramen '),
(125, 'ramen '),
(126, 'egg'),
(127, 'Chocolate '),
(128, 'flour'),
(129, 'eggs'),
(130, 'cookies'),
(131, 'cookies'),
(132, 'and more cookies'),
(133, '2 spoons sugar'),
(134, '20ml water'),
(135, '2 spoons sugar'),
(136, '20ml water'),
(137, '50g flour'),
(138, 'eggs'),
(139, 'd'),
(140, '225g butter'),
(141, '110g caster sugar'),
(142, '275g plain flour'),
(143, '1 teaspoon ginger'),
(144, '75 milk chocolate chips'),
(145, '75 milk chocolate chips'),
(146, '1 teaspoon ginger'),
(147, '200g plain flour'),
(148, '110g caster sugar'),
(149, '225g butter'),
(150, '75g cocoa powder'),
(151, '3 tablespoons of honey'),
(152, 'crushed hazelnuts'),
(153, '200g dark chocolate'),
(154, '100g unsalted butter'),
(155, '250g caster sugar'),
(156, '4 large eggs'),
(157, '1tsp vanilla essence'),
(158, '60g plain flour'),
(159, '60g cocoa powder'),
(160, '100g soft brown sugar'),
(161, '100g caster sugar'),
(162, '100g butter'),
(163, '1 egg'),
(164, '1tsp vanilla extract'),
(165, '225g plain flour'),
(166, '140g milk chocolate'),
(167, '85g white chocolate chips'),
(168, '85g plain chocolate chips');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `cooktime` smallint(6) NOT NULL,
  `preptime` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `user_id`, `name`, `description`, `created`, `modified`, `parent_id`, `cooktime`, `preptime`) VALUES
(141, 2, 'Basic Cookie Recipe', 'This is a basic cookie recipe, add what you like to it! ', '2017-06-05 13:41:35', '2017-06-05 13:41:35', NULL, 15, 5),
(142, 10, 'Chocolate honey cookies', 'A variation on the Basic Cookie recipe by John', '2017-06-05 13:44:01', '2017-06-05 13:44:01', 141, 15, 5),
(143, 1, 'Chocolate Brownies', 'This is a simple chocolate brownie recipe. Dark chocolate and really gooey insides! the best way imo :)', '2017-06-05 13:51:02', '2017-06-05 13:51:02', NULL, 20, 10),
(144, 1, 'Triple Chocolate Cookies', 'Cookies with white, milk and dark chocolate, so so nice! ', '2017-06-05 13:57:12', '2017-06-05 13:57:12', 141, 10, 15);

-- --------------------------------------------------------

--
-- Table structure for table `recipes_ingredients`
--

DROP TABLE IF EXISTS `recipes_ingredients`;
CREATE TABLE `recipes_ingredients` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes_ingredients`
--

INSERT INTO `recipes_ingredients` (`id`, `recipe_id`, `ingredient_id`) VALUES
(192, 143, 155),
(191, 143, 154),
(190, 143, 153),
(200, 144, 163),
(187, 142, 150),
(197, 144, 160),
(199, 144, 162),
(186, 142, 149),
(195, 143, 158),
(194, 143, 157),
(198, 144, 161),
(185, 142, 148),
(196, 143, 159),
(193, 143, 156),
(184, 142, 147),
(183, 142, 146),
(182, 142, 145),
(181, 141, 144),
(180, 141, 143),
(179, 141, 142),
(178, 141, 141),
(177, 141, 140),
(189, 142, 152),
(188, 142, 151),
(201, 144, 164),
(202, 144, 165),
(203, 144, 166),
(204, 144, 167),
(205, 144, 168);

-- --------------------------------------------------------

--
-- Table structure for table `recipes_versions`
--

DROP TABLE IF EXISTS `recipes_versions`;
CREATE TABLE `recipes_versions` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `version_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes_versions`
--

INSERT INTO `recipes_versions` (`id`, `recipe_id`, `version_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 1),
(6, 2, 3),
(7, 2, 4),
(26, 14, 2),
(25, 14, 1),
(27, 14, 3),
(55, 106, 18),
(54, 106, 17);

-- --------------------------------------------------------

--
-- Table structure for table `steps`
--

DROP TABLE IF EXISTS `steps`;
CREATE TABLE `steps` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `description` varchar(144) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` (`id`, `recipe_id`, `description`, `position`) VALUES
(1, 34, 'This is step 1 of the first recipe', 0),
(2, 1, 'This is step 2 of the first recipe', 2),
(3, 1, 'test', 1),
(4, 1, 'hello world', 3),
(5, 1, 'step 5', 5),
(22, 7, 'test desc 2 ', 0),
(15, 2, 'test2', 0),
(23, 7, 'test desc', 0),
(12, 5, '1', 0),
(21, 7, 'test desc ', 0),
(26, 8, 'testrr', 0),
(28, 14, 'Test Description ', 1),
(31, 14, 'step 2', 2),
(54, 32, 'step', 0),
(55, 61, 'c', 1),
(56, 61, 'd', 2),
(57, 62, 'step one ', 1),
(58, 62, 'step two', 2),
(59, 63, '3', 1),
(60, 63, '4', 2),
(61, 64, '3', 1),
(62, 64, '4', 2),
(63, 65, 'test', 1),
(64, 65, 'test', 2),
(65, 66, 'test', 1),
(66, 66, 'test', 2),
(67, 67, 'test', 1),
(68, 67, 'test', 2),
(69, 68, 'st1', 1),
(70, 68, 'st2', 2),
(71, 69, 'step 1', 1),
(72, 69, 'stpe 2', 2),
(73, 70, '3', 1),
(74, 70, 't', 2),
(75, 70, '3', 3),
(76, 70, '4', 4),
(77, 70, '5', 5),
(78, 71, 'fgfg', 1),
(79, 71, 'fgfg', 2),
(80, 71, '3', 3),
(81, 71, '4', 4),
(82, 71, '5', 5),
(83, 72, '1', 1),
(84, 72, '2', 2),
(85, 72, '3', 3),
(86, 72, '4', 4),
(87, 72, '5', 5),
(88, 73, '3', 1),
(89, 73, '4', 2),
(90, 73, '5', 3),
(91, 73, '6', 4),
(92, 73, '7', 5),
(93, 74, '1', 1),
(94, 74, '2', 2),
(95, 74, '3', 3),
(96, 74, '4', 4),
(97, 74, '5', 5),
(98, 75, '1', 1),
(99, 75, '2', 2),
(100, 75, '3', 3),
(101, 75, '4', 4),
(102, 75, '5', 5),
(103, 76, '1', 1),
(104, 76, '2', 2),
(105, 76, '3', 3),
(106, 76, '4', 4),
(107, 76, '5', 5),
(108, 77, '1', 1),
(109, 77, '2', 2),
(110, 77, '3', 3),
(111, 77, '4', 4),
(112, 77, '5', 5),
(113, 78, '1', 1),
(114, 78, '2', 2),
(115, 78, '3', 3),
(116, 78, '4', 4),
(117, 78, '5', 5),
(118, 79, '1', 1),
(119, 79, '2', 2),
(120, 79, '3', 3),
(121, 79, '4', 4),
(122, 79, '5', 5),
(123, 80, '1', 1),
(124, 80, '2', 2),
(125, 80, '3', 3),
(126, 80, '4', 4),
(127, 80, '5', 5),
(128, 81, 'q', 1),
(129, 81, '2', 2),
(130, 81, 'r', 3),
(131, 81, 'g', 4),
(132, 81, 'fc', 5),
(133, 82, 'g', 1),
(134, 82, 'f', 2),
(135, 82, 'f', 3),
(136, 82, 'd', 4),
(137, 82, 's', 5),
(138, 83, 'd', 1),
(139, 83, '3', 2),
(140, 83, 'r', 3),
(141, 83, '5', 4),
(142, 83, 'e', 5),
(143, 84, '1', 1),
(144, 84, '2', 2),
(145, 84, '3', 3),
(146, 84, '4', 4),
(147, 84, '5', 5),
(148, 85, '1', 1),
(149, 85, '2', 2),
(150, 85, '3', 3),
(151, 85, '4', 4),
(152, 85, '5', 5),
(153, 86, '1', 1),
(154, 86, '2', 2),
(155, 86, '3', 3),
(156, 86, '4', 4),
(157, 86, '5', 5),
(158, 87, '1', 1),
(159, 87, '2', 2),
(160, 87, '3', 3),
(161, 87, '4', 4),
(162, 87, '5', 5),
(163, 88, '1', 1),
(164, 88, '2', 2),
(165, 88, '3', 3),
(166, 88, '4', 4),
(167, 88, '5', 5),
(168, 89, '1', 1),
(169, 89, '2', 2),
(170, 89, '3', 3),
(171, 89, '4', 4),
(172, 89, '5', 5),
(173, 90, '1', 1),
(174, 90, '2', 2),
(175, 90, '3', 3),
(176, 90, '4', 4),
(177, 90, '5', 5),
(178, 91, '1', 1),
(179, 91, 'UU', 2),
(180, 91, 'H', 3),
(181, 91, 'I', 4),
(182, 91, 'H', 5),
(183, 92, '1', 1),
(184, 92, 'UU', 2),
(185, 92, 'H', 3),
(186, 92, 'I', 4),
(187, 92, 'H', 5),
(188, 93, '1', 1),
(189, 93, 'UU', 2),
(190, 93, 'H', 3),
(191, 93, 'I', 4),
(192, 93, 'H', 5),
(193, 94, '1', 1),
(194, 94, '2', 2),
(195, 94, '3', 3),
(196, 94, '4', 4),
(197, 94, '5', 5),
(198, 95, '1', 1),
(199, 95, '2', 2),
(200, 95, '3', 3),
(201, 95, '4', 4),
(202, 95, '5', 5),
(203, 96, '1', 1),
(204, 96, '2', 2),
(205, 96, '3', 3),
(206, 96, '4', 4),
(207, 96, '5', 5),
(208, 97, '1', 1),
(209, 97, '2', 2),
(210, 97, '3', 3),
(211, 97, '4', 4),
(212, 97, '5', 5),
(213, 98, '1', 1),
(214, 98, '2', 2),
(215, 98, '3', 3),
(216, 98, '4', 4),
(217, 98, '5', 5),
(218, 99, '1', 1),
(219, 99, '2', 2),
(220, 99, '3', 3),
(221, 99, '4', 4),
(222, 99, '5', 5),
(223, 100, 'one ', 1),
(224, 100, 'two ', 2),
(225, 100, 'three', 3),
(226, 100, 'four', 4),
(227, 100, 'five', 5),
(228, 101, '1', 1),
(229, 101, '2', 2),
(230, 101, '3', 3),
(231, 101, 'four', 4),
(232, 101, '5', 5),
(233, 102, '1', 1),
(234, 102, 'two ', 2),
(235, 102, '3', 3),
(236, 102, '5', 4),
(237, 102, '5', 5),
(238, 103, '1', 1),
(239, 103, '2', 2),
(240, 103, '3', 3),
(241, 103, '4', 4),
(242, 103, 'd', 5),
(243, 104, '1', 1),
(244, 105, '1', 1),
(245, 105, '2', 2),
(249, 107, '1', 1),
(250, 108, 'Step One ', 1),
(251, 108, 'Step Two ', 2),
(252, 108, '3', 3),
(253, 108, 'Step One ', 1),
(254, 108, 'Step Two ', 2),
(255, 108, '3', 3),
(256, 108, '4', 4),
(257, 109, '1', 1),
(258, 109, '2', 1),
(259, 109, 'three', 2),
(260, 110, 'method', 1),
(261, 110, 'a', 1),
(262, 111, 'one', 1),
(263, 111, 'two', 1),
(264, 111, 'three', 2),
(265, 111, 'four', 3),
(266, 112, '1', 1),
(267, 112, '2', 1),
(268, 113, '1', 1),
(269, 113, '2', 2),
(270, 113, '3', 3),
(271, 114, 'one', 1),
(272, 114, 'two', 2),
(273, 115, 'one', 1),
(274, 115, 'two ', 2),
(275, 115, 'three', 3),
(279, 116, 'one', 1),
(277, 114, 'two', 2),
(278, 114, '3', 3),
(280, 116, 'two', 2),
(281, 116, 'three', 3),
(282, 116, 'one', 1),
(283, 116, 'two', 2),
(284, 116, 'three', 3),
(285, 116, 'four', 4),
(286, 116, 'one', 1),
(287, 117, '1', 1),
(288, 117, '2', 2),
(292, 117, '2', 2),
(291, 117, '1', 1),
(293, 117, '3', 3),
(294, 117, '4', 4),
(295, 118, 'one', 1),
(296, 118, 'two ', 2),
(297, 118, 'three', 3),
(302, 14, 'Test Description ', 1),
(300, 118, 'three', 3),
(301, 118, '4', 4),
(303, 14, 'step 2', 2),
(304, 106, 'Mix in all the dry and wet ingredients', 1),
(305, 106, 'Add the chocolate and fudge bits', 2),
(306, 106, 'Cook in the oven for 12mins, leave to cool then enjoy! ', 3),
(316, 122, 'cook in the oven for 12 mins', 2),
(315, 122, 'mix all the ingredients in a bowl ', 1),
(314, 121, 'add toffee', 2),
(313, 121, 'get the cookies ', 1),
(317, 122, 'enjoy! :) ', 3),
(318, 123, 'Mix the ingredients together ', 1),
(319, 123, 'Cook the brownies ', 2),
(320, 123, 'Enjoy! ', 3),
(321, 124, 'Mix all the ingredients together in a mixing bowl', 1),
(322, 124, 'Place on tray and put in oven for 12 mins', 2),
(323, 124, 'Remove from tray and let cool', 3),
(324, 124, 'Enjoy :)', 4),
(368, 136, 'one ', 3),
(367, 135, 'enjoy', 3),
(365, 135, 'go to the shops and buy some cookies', 1),
(328, 125, 'Mix all the ingredients together in a mixing bowl', 1),
(329, 125, 'Place on tray and put in oven for 12 mins', 2),
(330, 125, 'Remove from tray and let cool', 3),
(331, 125, 'Enjoy !', 4),
(332, 126, 'Mix all the ingredients together in a mixing bowl', 1),
(333, 126, 'Place on tray and put in oven for 12 mins', 2),
(334, 126, 'Remove from tray and let cool', 3),
(335, 126, 'Enjoy !', 4),
(336, 127, 'one', 1),
(337, 128, '1', 1),
(338, 129, 'Mix all the ingredients together in a mixing bowl', 1),
(339, 129, 'Place on tray and put in oven for 12 mins', 2),
(340, 129, 'Remove from tray and let cool', 3),
(341, 129, 'Enjoy !', 4),
(342, 130, '1', 1),
(343, 130, '2', 2),
(344, 130, '3', 3),
(345, 130, '1', 1),
(346, 130, '2', 2),
(347, 130, 'three', 3),
(348, 130, '1', 1),
(349, 130, '2', 2),
(350, 130, 'three', 3),
(351, 130, '1', 1),
(352, 130, '2', 2),
(353, 130, 'three', 3),
(354, 131, '1', 1),
(355, 132, '1', 1),
(356, 133, 'Open ramen packet ', 1),
(357, 133, 'boil water and add ramen ', 2),
(358, 133, 'you have ramen', 3),
(359, 134, 'Open ramen packet ', 1),
(360, 134, 'boil water and add ramen and egg', 2),
(361, 134, 'you have ramen but now with an egg', 3),
(366, 135, 'go home and eat said cookies ', 2),
(369, 136, '2', 1),
(370, 136, 'three ', 2),
(371, 136, 'four ', 4),
(372, 137, ' step one ', 1),
(373, 137, 'step two', 2),
(374, 137, 'step three', 3),
(375, 138, ' step one ', 1),
(376, 138, 'step two', 2),
(377, 138, 'step three', 3),
(378, 138, 'new step four', 4),
(379, 139, 'Mix the ingredients together ', 1),
(380, 140, 'd', 1),
(381, 141, 'Preheat the oven at 170oC (375oF) or gas mark 3.', 1),
(382, 141, 'Cream the butter in a large bowl or in a food mixer until it is soft. Add the sugar and beat until the mixture is light and fluffy.', 2),
(383, 141, 'Sift the flour into the mixture and add optional ingredients. Bring the mixture together in a figure of eight until it forms a dough.', 3),
(384, 141, 'Using your hands, make walnut sized balls and place them slightly apart from eachother on a tray (You don\'t need to grease or line a tray). Flat', 4),
(385, 141, 'Place the cookies onto a cooling rack and leave them there for around 15 mins. Once cool serve.', 5),
(386, 142, 'Preheat the oven at 170oC (375oF) or gas mark 3.', 1),
(387, 142, 'Cream the butter in a large bowl or in a food mixer until it is soft. Add the sugar and beat until the mixture is light and fluffy.', 2),
(388, 142, 'Sift the flour into the mixture and add optional ingredients. Bring the mixture together in a figure of eight until it forms a dough.', 3),
(389, 142, 'Using your hands, make walnut sized balls and place them slightly apart from eachother on a tray (You don\'t need to grease or line a tray). Flat', 4),
(390, 142, 'Place the cookies onto a cooling rack and leave them there for around 15 mins. Once cool serve.', 5),
(391, 143, 'Heat the oven to 180c/ gas mark 4.', 1),
(392, 143, 'Break up the chocolate and melt in the microwave or over a bain marie', 2),
(393, 143, 'Put the butter and sugar into the bowl and mix, also adding the eggs and vanilla essence', 3),
(394, 143, 'Spoon the cooled melted chocolate onto the mixture and combine, also add the cocoa powder', 4),
(395, 143, 'Spoon the mixture into a tin lined with brown paper, cook or 20 mins or until firm to touch', 5),
(396, 143, 'Remove from the tin onto a wire cooling rack, leave for a while, cut into squares and enjoy! ', 6),
(397, 144, 'Preheat the oven at 200C / gas 6', 1),
(398, 144, 'Mix sugar, butter , egg, vanilla flour and half melted milk chocolate', 2),
(399, 144, ' Add white and plain chocolate chips and combine', 3),
(400, 144, 'Use a ice-cream scoop to get equal sizes, place on trays and cook for 9 mins', 4),
(401, 144, 'Remove cookies when they are golden brown, leave to cool, drizzle with the remaining melted chocolate and enjoy! ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `colour_id` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `colour_id`, `created`, `modified`) VALUES
(1, 'matt', 'mttlean@gmail.com', '$2y$10$Q65/gUFq8L49EEeFiipRneVePypfjNZfSdMnYCsMj0DsKHzTpdh4W', 1, '2017-03-19 22:51:01', '2017-03-19 22:53:10'),
(2, 'John', 'john@mail.com', '$2y$10$e2tfHLLVeU.m1oc38mXsJ.ciCbEQZPBdoxGA7hXztOMHK3PnFhi2q', 2, '2017-03-21 15:10:09', '2017-03-21 16:16:22'),
(11, 'Fred', 'fred@mail.com', '$2y$10$OmuUz7LTpIMCkV2A9uQCg.DHZg1gdbU/UypdzGiF0fiD3kxjCUdlq', 3, '2017-05-26 17:25:24', '2017-05-26 17:25:24'),
(10, 'shaun', 'shaun@mail.com', '$2y$10$ftoOepD3p7kQlX23PDP.tuH60NoxuCLshfUBHbuktdgP1jIu/SFDO', 6, '2017-05-22 14:29:09', '2017-05-22 14:29:09'),
(12, 'Hector', 'hector@mail.com', '$2y$10$V0sQ2nOUkBwpRO6W6U8FXu.bxs.4/O/hY8jxY.GF6pm7Z/KQk1IX6', 5, '2017-05-27 10:56:10', '2017-05-27 10:56:10'),
(13, 'david', 'david@mail.com', '$2y$10$4QMnLifkAJN2UXoa0KxcueOiisOfczzf4EAivhTi3j6xgty0HxbyW', 1, '2017-06-01 20:41:58', '2017-06-01 20:41:58'),
(14, 'Roger', 'roger@mail.com', '$2y$10$ZRa2dSe/NmlztxbmQUkDIOy5NcuFkF/jzr3c7BI97/fqV6uvRLSsu', 2, '2017-06-04 19:35:00', '2017-06-04 19:35:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes_ingredients`
--
ALTER TABLE `recipes_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes_versions`
--
ALTER TABLE `recipes_versions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `steps`
--
ALTER TABLE `steps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colours`
--
ALTER TABLE `colours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `recipes_ingredients`
--
ALTER TABLE `recipes_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `recipes_versions`
--
ALTER TABLE `recipes_versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `steps`
--
ALTER TABLE `steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
