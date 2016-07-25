-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 25 2016 г., 12:19
-- Версия сервера: 5.5.48
-- Версия PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `03ri`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dle_admin_logs`
--

CREATE TABLE IF NOT EXISTS `dle_admin_logs` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `action` int(11) NOT NULL DEFAULT '0',
  `extras` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_admin_logs`
--

INSERT INTO `dle_admin_logs` (`id`, `name`, `date`, `ip`, `action`, `extras`) VALUES
(1, 'admin', 1468932874, '::1', 82, ''),
(2, 'admin', 1468932878, '::1', 86, 'http://localhost/03ri/admin.php'),
(3, 'admin', 1468932895, '::1', 86, 'http://localhost/03ri/admin.php?mod=options&amp;action=syscon'),
(4, 'admin', 1468932895, '::1', 48, ''),
(5, 'admin', 1468932896, '::1', 86, 'http://localhost/03ri/admin.php?mod=options&amp;action=syscon'),
(6, 'admin', 1468933651, '::1', 86, 'http://localhost/03ri/admin.php?mod=options&amp;action=syscon'),
(7, 'admin', 1468933653, '::1', 86, 'http://localhost/03ri/admin.php?mod=editnews&amp;action=list'),
(8, 'admin', 1468933667, '::1', 86, 'http://localhost/03ri/admin.php?mod=editnews&amp;action=list'),
(9, 'admin', 1468934312, '::1', 86, 'http://localhost/03ri/admin.php?mod=editnews&amp;action=list'),
(10, 'admin', 1468934469, '::1', 86, 'http://localhost/03ri/admin.php?mod=main'),
(11, 'admin', 1468934474, '::1', 86, 'http://localhost/03ri/admin.php?mod=static'),
(12, 'admin', 1468934988, '::1', 86, 'http://localhost/03ri/admin.php?mod=static&amp;action=addnew'),
(13, 'admin', 1468934995, '::1', 86, 'http://localhost/03ri/admin.php?mod=static&amp;action=addnew'),
(14, 'admin', 1468934995, '::1', 59, 'about'),
(15, 'admin', 1468934996, '::1', 86, 'http://localhost/03ri/admin.php?mod=static&amp;action=addnew'),
(16, 'admin', 1468934998, '::1', 86, 'http://localhost/03ri/admin.php?mod=static'),
(17, 'admin', 1468935061, '::1', 86, 'http://localhost/03ri/admin.php?mod=static&amp;action=addnew'),
(18, 'admin', 1468935063, '::1', 86, 'http://localhost/03ri/admin.php?mod=static&amp;action=addnew'),
(19, 'admin', 1468935072, '::1', 86, 'http://localhost/03ri/admin.php?mod=static&amp;action=addnew'),
(20, 'admin', 1468935431, '::1', 86, 'http://localhost/03ri/admin.php?mod=static'),
(21, 'admin', 1468935646, '::1', 86, 'http://localhost/03ri/admin.php?mod=static&amp;action=doedit&amp;id=2'),
(22, 'admin', 1468935646, '::1', 60, 'about'),
(23, 'admin', 1468935657, '::1', 86, 'Direct DLE Adminpanel'),
(24, 'admin', 1468935757, '::1', 86, 'http://localhost/03ri/admin.php?mod=static&amp;action=doedit&amp;id=2'),
(25, 'admin', 1468935757, '::1', 60, 'about'),
(26, 'admin', 1468935777, '::1', 86, 'Direct DLE Adminpanel'),
(27, 'admin', 1468935789, '::1', 86, 'http://localhost/03ri/admin.php?mod=static&amp;action=doedit&amp;id=2'),
(28, 'admin', 1468935789, '::1', 60, 'about'),
(29, 'admin', 1468958781, '::1', 86, 'Direct DLE Adminpanel'),
(30, 'admin', 1468958963, '::1', 86, 'http://localhost/03ri/admin.php'),
(31, 'admin', 1468958970, '::1', 86, 'http://localhost/03ri/admin.php?mod=static'),
(32, 'admin', 1468958986, '::1', 86, 'http://localhost/03ri/admin.php?mod=static&amp;action=doedit&amp;id=2'),
(33, 'admin', 1468958987, '::1', 86, 'http://localhost/03ri/admin.php?mod=addnews&amp;action=addnews'),
(34, 'admin', 1468958989, '::1', 86, 'http://localhost/03ri/admin.php?mod=main'),
(35, 'admin', 1468959010, '::1', 86, 'http://localhost/03ri/admin.php?mod=static'),
(36, 'admin', 1468959254, '::1', 86, 'http://localhost/03ri/admin.php?mod=static&amp;action=addnew'),
(37, 'admin', 1468959256, '::1', 86, 'http://localhost/03ri/admin.php?mod=main'),
(38, 'admin', 1468959853, '::1', 86, 'http://localhost/03ri/admin.php?mod=static'),
(39, 'admin', 1468959855, '::1', 86, 'http://localhost/03ri/admin.php?mod=main'),
(40, 'admin', 1468959858, '::1', 86, 'http://localhost/03ri/admin.php?mod=static'),
(41, 'admin', 1468959874, '::1', 86, 'http://localhost/03ri/admin.php?mod=static&amp;action=addnew'),
(42, 'admin', 1468959874, '::1', 59, 'azamat'),
(43, 'admin', 1468959876, '::1', 86, 'http://localhost/03ri/admin.php?mod=static&amp;action=addnew'),
(44, 'admin', 1468959907, '::1', 86, 'http://localhost/03ri/admin.php?mod=static'),
(45, 'admin', 1468959908, '::1', 86, 'http://localhost/03ri/admin.php?mod=static'),
(46, 'admin', 1468959908, '::1', 40, ''),
(47, 'admin', 1468959910, '::1', 86, 'http://localhost/03ri/admin.php?mod=static'),
(48, 'admin', 1469019577, '127.0.0.1', 82, ''),
(49, 'admin', 1469019895, '127.0.0.1', 86, 'Direct DLE Adminpanel'),
(50, 'admin', 1469024068, '127.0.0.1', 86, 'http://03ri/admin.php'),
(51, 'admin', 1469024155, '127.0.0.1', 86, 'http://03ri/admin.php?mod=addnews&amp;action=addnews'),
(52, 'admin', 1469024174, '127.0.0.1', 86, 'http://03ri/admin.php?mod=options&amp;action=options'),
(53, 'admin', 1469024175, '127.0.0.1', 86, 'http://03ri/admin.php?mod=options&amp;action=options'),
(54, 'admin', 1469024185, '127.0.0.1', 86, 'http://03ri/admin.php?mod=templates&amp;user_hash=090364640974b7eb6d04bd08442f02da'),
(55, 'admin', 1469024191, '127.0.0.1', 86, 'http://03ri/admin.php?mod=options&amp;action=options'),
(56, 'admin', 1469024257, '127.0.0.1', 86, 'http://03ri/admin.php?mod=options&amp;action=options'),
(57, 'admin', 1469024265, '127.0.0.1', 86, 'http://03ri/admin.php?mod=main'),
(58, 'admin', 1469024272, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(59, 'admin', 1469024346, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(60, 'admin', 1469024357, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(61, 'admin', 1469024357, '127.0.0.1', 59, 'history'),
(62, 'admin', 1469024364, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(63, 'admin', 1469024394, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(64, 'admin', 1469024618, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=4'),
(65, 'admin', 1469024618, '127.0.0.1', 60, 'history'),
(66, 'admin', 1469024632, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=4'),
(67, 'admin', 1469024651, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(68, 'admin', 1469024765, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=4'),
(69, 'admin', 1469024765, '127.0.0.1', 60, 'history'),
(70, 'admin', 1469024768, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=4'),
(71, 'admin', 1469024804, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(72, 'admin', 1469024828, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=4'),
(73, 'admin', 1469024828, '127.0.0.1', 60, 'history'),
(74, 'admin', 1469024831, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=4'),
(75, 'admin', 1469025008, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(76, 'admin', 1469025090, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(77, 'admin', 1469025090, '127.0.0.1', 59, 'personnel'),
(78, 'admin', 1469026089, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(79, 'admin', 1469035043, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(80, 'admin', 1469102076, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(81, 'admin', 1469132295, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(82, 'admin', 1469132308, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=list'),
(83, 'admin', 1469132495, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=editnews&amp;id=1'),
(84, 'admin', 1469132495, '127.0.0.1', 25, 'Добро пожаловать'),
(85, 'admin', 1469132540, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=editnews&amp;id=1'),
(86, 'admin', 1469132547, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=list'),
(87, 'admin', 1469175875, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=list'),
(88, 'admin', 1469176108, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=editnews&amp;id=1'),
(89, 'admin', 1469176357, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=list'),
(90, 'admin', 1469176389, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=editnews&amp;id=2'),
(91, 'admin', 1469176389, '127.0.0.1', 25, 'Приобретение и оплата скрипта'),
(92, 'admin', 1469176396, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=editnews&amp;id=2'),
(93, 'admin', 1469176437, '127.0.0.1', 86, 'Direct DLE Adminpanel'),
(94, 'admin', 1469176475, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=editnews&amp;id=2'),
(95, 'admin', 1469283693, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=editnews&amp;id=2'),
(96, 'admin', 1469283702, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=list'),
(97, 'admin', 1469283715, '127.0.0.1', 86, 'http://03ri/admin.php?mod=addnews&amp;action=addnews'),
(98, 'admin', 1469283726, '127.0.0.1', 86, 'http://03ri/admin.php?mod=main'),
(99, 'admin', 1469283737, '127.0.0.1', 86, 'http://03ri/admin.php?mod=addnews&amp;action=addnews'),
(100, 'admin', 1469283738, '127.0.0.1', 86, 'http://03ri/admin.php?mod=addnews&amp;action=addnews'),
(101, 'admin', 1469283757, '127.0.0.1', 86, 'http://03ri/admin.php?mod=templates&amp;user_hash=ba980ff9f72840d217da5da513ef8109'),
(102, 'admin', 1469283766, '127.0.0.1', 86, 'http://03ri/admin.php?mod=addnews&amp;action=addnews'),
(103, 'admin', 1469283775, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=list'),
(104, 'admin', 1469283928, '127.0.0.1', 86, 'http://03ri/admin.php?mod=options&amp;action=options'),
(105, 'admin', 1469283936, '127.0.0.1', 86, 'http://03ri/admin.php?mod=addnews&amp;action=addnews'),
(106, 'admin', 1469283958, '127.0.0.1', 86, 'http://03ri/admin.php?mod=editnews&amp;action=list'),
(107, 'admin', 1469283963, '127.0.0.1', 86, 'http://03ri/admin.php?mod=main'),
(108, 'admin', 1469283974, '127.0.0.1', 86, 'http://03ri/admin.php?mod=main'),
(109, 'admin', 1469283979, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(110, 'admin', 1469284051, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=5'),
(111, 'admin', 1469284051, '127.0.0.1', 60, 'personnel'),
(112, 'admin', 1469284139, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=5'),
(113, 'admin', 1469284144, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(114, 'admin', 1469284165, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(115, 'admin', 1469284267, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=5'),
(116, 'admin', 1469284267, '127.0.0.1', 60, 'personnel'),
(117, 'admin', 1469284271, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=5'),
(118, 'admin', 1469284276, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(119, 'admin', 1469284320, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=5'),
(120, 'admin', 1469284320, '127.0.0.1', 60, 'personnel'),
(121, 'admin', 1469284325, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=5'),
(122, 'admin', 1469382328, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=5'),
(123, 'admin', 1469382881, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(124, 'admin', 1469382897, '127.0.0.1', 86, 'http://03ri/admin.php?mod=main'),
(125, 'admin', 1469382957, '127.0.0.1', 86, 'http://03ri/admin.php?mod=main'),
(126, 'admin', 1469382999, '127.0.0.1', 86, 'http://03ri/admin.php?mod=main'),
(127, 'admin', 1469383228, '127.0.0.1', 86, 'http://03ri/admin.php?mod=options&amp;action=syscon'),
(128, 'admin', 1469383228, '127.0.0.1', 48, ''),
(129, 'admin', 1469383232, '127.0.0.1', 86, 'http://03ri/admin.php?mod=options&amp;action=syscon'),
(130, 'admin', 1469383247, '127.0.0.1', 86, 'http://03ri/admin.php?mod=options&amp;action=syscon'),
(131, 'admin', 1469383247, '127.0.0.1', 48, ''),
(132, 'admin', 1469383250, '127.0.0.1', 86, 'http://03ri/admin.php?mod=options&amp;action=syscon'),
(133, 'admin', 1469395976, '127.0.0.1', 86, 'http://03ri/admin.php?mod=options&amp;action=syscon'),
(134, 'admin', 1469395979, '127.0.0.1', 86, 'http://03ri/admin.php?mod=main'),
(135, 'admin', 1469395986, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(136, 'admin', 1469396055, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(137, 'admin', 1469396055, '127.0.0.1', 59, 'rekvizit'),
(138, 'admin', 1469396059, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(139, 'admin', 1469397665, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(140, 'admin', 1469397710, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(141, 'admin', 1469397710, '127.0.0.1', 59, 'vakansii'),
(142, 'admin', 1469397714, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(143, 'admin', 1469398184, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(144, 'admin', 1469398200, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=7'),
(145, 'admin', 1469398200, '127.0.0.1', 60, 'vakansii'),
(146, 'admin', 1469398218, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=7'),
(147, 'admin', 1469399295, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(148, 'admin', 1469399329, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(149, 'admin', 1469399329, '127.0.0.1', 59, 'structura'),
(150, 'admin', 1469399332, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(151, 'admin', 1469400584, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(152, 'admin', 1469400634, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=8'),
(153, 'admin', 1469400634, '127.0.0.1', 60, 'structura'),
(154, 'admin', 1469400644, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=doedit&amp;id=8'),
(155, 'admin', 1469402581, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static'),
(156, 'admin', 1469402626, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew'),
(157, 'admin', 1469402626, '127.0.0.1', 59, 'kadrovaya'),
(158, 'admin', 1469402630, '127.0.0.1', 86, 'http://03ri/admin.php?mod=static&amp;action=addnew');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_admin_sections`
--

CREATE TABLE IF NOT EXISTS `dle_admin_sections` (
  `id` mediumint(8) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `allow_groups` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_banned`
--

CREATE TABLE IF NOT EXISTS `dle_banned` (
  `id` smallint(5) NOT NULL,
  `users_id` mediumint(8) NOT NULL DEFAULT '0',
  `descr` text NOT NULL,
  `date` varchar(15) NOT NULL DEFAULT '',
  `days` smallint(4) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_banners`
--

CREATE TABLE IF NOT EXISTS `dle_banners` (
  `id` smallint(5) NOT NULL,
  `banner_tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `short_place` tinyint(1) NOT NULL DEFAULT '0',
  `bstick` tinyint(1) NOT NULL DEFAULT '0',
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL DEFAULT '',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `fpage` tinyint(1) NOT NULL DEFAULT '0',
  `innews` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_banners`
--

INSERT INTO `dle_banners` (`id`, `banner_tag`, `descr`, `code`, `approve`, `short_place`, `bstick`, `main`, `category`, `grouplevel`, `start`, `end`, `fpage`, `innews`) VALUES
(1, 'header', 'Верхний баннер', '<div align="center"><a href="http://dle-news.ru/" target="_blank"><img src="http://localhost/03ri/templates/Default/images/_banner_.gif" style="border: none;" alt="" /></a></div>', 1, 0, 0, 0, '0', 'all', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_category`
--

CREATE TABLE IF NOT EXISTS `dle_category` (
  `id` mediumint(8) NOT NULL,
  `parentid` mediumint(8) NOT NULL DEFAULT '0',
  `posi` mediumint(8) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL DEFAULT '',
  `alt_name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `skin` varchar(50) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `news_sort` varchar(10) NOT NULL DEFAULT '',
  `news_msort` varchar(4) NOT NULL DEFAULT '',
  `news_number` smallint(5) NOT NULL DEFAULT '0',
  `short_tpl` varchar(40) NOT NULL DEFAULT '',
  `full_tpl` varchar(40) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `show_sub` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rss` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_category`
--

INSERT INTO `dle_category` (`id`, `parentid`, `posi`, `name`, `alt_name`, `icon`, `skin`, `descr`, `keywords`, `news_sort`, `news_msort`, `news_number`, `short_tpl`, `full_tpl`, `metatitle`, `show_sub`, `allow_rss`) VALUES
(1, 0, 1, 'Информация', 'main', '', '', '', '', '', '', 0, '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_comments`
--

CREATE TABLE IF NOT EXISTS `dle_comments` (
  `id` int(10) unsigned NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `autor` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `is_register` tinyint(1) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL DEFAULT '0',
  `vote_num` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_comments_files`
--

CREATE TABLE IF NOT EXISTS `dle_comments_files` (
  `id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_comment_rating_log`
--

CREATE TABLE IF NOT EXISTS `dle_comment_rating_log` (
  `id` int(10) unsigned NOT NULL,
  `c_id` int(11) NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `rating` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_complaint`
--

CREATE TABLE IF NOT EXISTS `dle_complaint` (
  `id` int(11) unsigned NOT NULL,
  `p_id` int(11) NOT NULL DEFAULT '0',
  `c_id` int(11) NOT NULL DEFAULT '0',
  `n_id` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `from` varchar(40) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_email`
--

CREATE TABLE IF NOT EXISTS `dle_email` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(10) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `use_html` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_email`
--

INSERT INTO `dle_email` (`id`, `name`, `template`, `use_html`) VALUES
(1, 'reg_mail', '{%username%},\r\n\r\nЭто письмо отправлено с сайта http://localhost/03ri/\r\n\r\nВы получили это письмо, так как этот e-mail адрес был использован при регистрации на сайте. Если Вы не регистрировались на этом сайте, просто проигнорируйте это письмо и удалите его. Вы больше не получите такого письма.\r\n\r\n------------------------------------------------\r\nВаш логин и пароль на сайте:\r\n------------------------------------------------\r\n\r\nЛогин: {%username%}\r\nПароль: {%password%}\r\n\r\n------------------------------------------------\r\nИнструкция по активации\r\n------------------------------------------------\r\n\r\nБлагодарим Вас за регистрацию.\r\nМы требуем от Вас подтверждения Вашей регистрации, для проверки того, что введённый Вами e-mail адрес - реальный. Это требуется для защиты от нежелательных злоупотреблений и спама.\r\n\r\nДля активации Вашего аккаунта, зайдите по следующей ссылке:\r\n\r\n{%validationlink%}\r\n\r\nЕсли и при этих действиях ничего не получилось, возможно Ваш аккаунт удалён. В этом случае, обратитесь к Администратору, для разрешения проблемы.\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/03ri/.', 0),
(2, 'feed_mail', '{%username_to%},\r\n\r\nДанное письмо вам отправил {%username_from%} с сайта http://localhost/03ri/\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nIP адрес отправителя: {%ip%}\r\nГруппа: {%group%}\r\n\r\n------------------------------------------------\r\nПомните, что администрация сайта не несет ответственности за содержание данного письма\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/03ri/', 0),
(3, 'lost_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на получение забытого пароля на сайте http://localhost/03ri/ Однако в целях безопасности все пароли хранятся в зашифрованном виде, поэтому мы не можем сообщить вам ваш старый пароль, поэтому если вы хотите сгенерировать новый пароль, зайдите по следующей ссылке: \r\n\r\n{%lostlink%}\r\n\r\nЕсли вы не делали запроса для получения пароля, то просто удалите данное письмо, ваш пароль храниться в надежном месте, и недоступен посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/03ri/', 0),
(4, 'new_news', 'Уважаемый администратор,\r\n\r\nуведомляем вас о том, что на сайт  http://localhost/03ri/ была добавлена новость, которая в данный момент ожидает модерации.\r\n\r\n------------------------------------------------\r\nКраткая информация о новости\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nЗаголовок новости: {%title%}\r\nКатегория: {%category%}\r\nДата добавления: {%date%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/03ri/', 0),
(5, 'comments', 'Уважаемый {%username_to%},\r\n\r\nуведомляем вас о том, что на сайт  http://localhost/03ri/ был добавлен комментарий к новости, на которую вы были подписаны.\r\n\r\n------------------------------------------------\r\nКраткая информация о комментарии\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nДата добавления: {%date%}\r\nСсылка на новость: {%link%}\r\n\r\n------------------------------------------------\r\nТекст комментария\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\n------------------------------------------------\r\n\r\nЕсли вы не хотите больше получать уведомлений о новых комментариях к данной новости, то проследуйте по данной ссылке: {%unsubscribe%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/03ri/', 0),
(6, 'pm', 'Уважаемый {%username%},\r\n\r\nуведомляем вас о том, что на сайте  http://localhost/03ri/ вам было отправлено персональное сообщение.\r\n\r\n------------------------------------------------\r\nКраткая информация о сообщении\r\n------------------------------------------------\r\n\r\nОтправитель: {%fromusername%}\r\nДата  получения: {%date%}\r\nЗаголовок: {%title%}\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/03ri/', 0),
(7, 'wait_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на обьединение  вашего аккаунта на сайте http://localhost/03ri/ с аккаунтом в социальной сети {%network%}.  Однако в целях безопасности вам необходимо подтвердить данное действие по следующей ссылке: \r\n\r\n------------------------------------------------\r\n{%link%}\r\n------------------------------------------------\r\n\r\nВнимание, в случае объединения аккаунтов, ваш основной пароль на сайте будет сброшен, и если вы входили на сайт используя ваш логин и пароль, то ваш пароль будет больше не действителен.\r\n\r\nЕсли вы не делали данного запроса, то просто удалите это письмо, данные вашего аккаунта хранятся в надежном месте, и недоступны посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/03ri/', 0),
(8, 'newsletter', '<html>\r\n<head>\r\n<title>{%title%}</title>\r\n<meta content="text/html; charset={%charset%}" http-equiv=Content-Type>\r\n<style type="text/css">\r\nhtml,body{\r\n    font-family: Verdana;\r\n    word-spacing: 0.1em;\r\n    letter-spacing: 0;\r\n    line-height: 1.5em;\r\n    font-size: 11px;\r\n}\r\n\r\np {\r\n	margin:0px;\r\n	padding: 0px;\r\n}\r\n\r\na:active,\r\na:visited,\r\na:link {\r\n	color: #4b719e;\r\n	text-decoration:none;\r\n}\r\n\r\na:hover {\r\n	color: #4b719e;\r\n	text-decoration: underline;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n{%content%}\r\n</body>\r\n</html>', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_files`
--

CREATE TABLE IF NOT EXISTS `dle_files` (
  `id` mediumint(8) NOT NULL,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `onserver` varchar(250) NOT NULL DEFAULT '',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `dcount` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_flood`
--

CREATE TABLE IF NOT EXISTS `dle_flood` (
  `f_id` int(11) unsigned NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `id` varchar(20) NOT NULL DEFAULT '',
  `flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_ignore_list`
--

CREATE TABLE IF NOT EXISTS `dle_ignore_list` (
  `id` int(10) unsigned NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `user_from` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_images`
--

CREATE TABLE IF NOT EXISTS `dle_images` (
  `id` int(10) unsigned NOT NULL,
  `images` text NOT NULL,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_links`
--

CREATE TABLE IF NOT EXISTS `dle_links` (
  `id` int(11) unsigned NOT NULL,
  `word` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `only_one` tinyint(1) NOT NULL DEFAULT '0',
  `replacearea` tinyint(1) NOT NULL DEFAULT '1',
  `rcount` tinyint(3) NOT NULL DEFAULT '0',
  `targetblank` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_login_log`
--

CREATE TABLE IF NOT EXISTS `dle_login_log` (
  `id` int(11) unsigned NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `count` smallint(6) NOT NULL DEFAULT '0',
  `date` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_logs`
--

CREATE TABLE IF NOT EXISTS `dle_logs` (
  `id` int(10) unsigned NOT NULL,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `rating` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_logs`
--

INSERT INTO `dle_logs` (`id`, `news_id`, `member`, `ip`, `rating`) VALUES
(1, 1, 'noname', '::1', 5),
(2, 3, 'noname', '::1', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_lostdb`
--

CREATE TABLE IF NOT EXISTS `dle_lostdb` (
  `id` mediumint(8) NOT NULL,
  `lostname` mediumint(8) NOT NULL DEFAULT '0',
  `lostid` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_mail_log`
--

CREATE TABLE IF NOT EXISTS `dle_mail_log` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `mail` varchar(50) NOT NULL DEFAULT '',
  `hash` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_notice`
--

CREATE TABLE IF NOT EXISTS `dle_notice` (
  `id` mediumint(8) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notice` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_pm`
--

CREATE TABLE IF NOT EXISTS `dle_pm` (
  `id` int(11) unsigned NOT NULL,
  `subj` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `user` mediumint(8) NOT NULL DEFAULT '0',
  `user_from` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `pm_read` tinyint(1) NOT NULL DEFAULT '0',
  `folder` varchar(10) NOT NULL DEFAULT '',
  `reply` tinyint(1) NOT NULL DEFAULT '0',
  `sendid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_poll`
--

CREATE TABLE IF NOT EXISTS `dle_poll` (
  `id` mediumint(8) unsigned NOT NULL,
  `news_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `frage` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `votes` mediumint(8) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `answer` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_poll_log`
--

CREATE TABLE IF NOT EXISTS `dle_poll_log` (
  `id` int(10) unsigned NOT NULL,
  `news_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_post`
--

CREATE TABLE IF NOT EXISTS `dle_post` (
  `id` int(11) NOT NULL,
  `autor` varchar(40) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `short_story` mediumtext NOT NULL,
  `full_story` mediumtext NOT NULL,
  `xfields` mediumtext NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `category` varchar(190) NOT NULL DEFAULT '0',
  `alt_name` varchar(190) NOT NULL DEFAULT '',
  `comm_num` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `fixed` tinyint(1) NOT NULL DEFAULT '0',
  `allow_br` tinyint(1) NOT NULL DEFAULT '1',
  `symbol` varchar(3) NOT NULL DEFAULT '',
  `tags` varchar(250) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_post`
--

INSERT INTO `dle_post` (`id`, `autor`, `date`, `short_story`, `full_story`, `xfields`, `title`, `descr`, `keywords`, `category`, `alt_name`, `comm_num`, `allow_comm`, `allow_main`, `approve`, `fixed`, `allow_br`, `symbol`, `tags`, `metatitle`) VALUES
(1, 'admin', '2016-07-19 13:33:43', '<div align=\\"center\\"><img src=\\"http://images.nationalgeographic.com/wpf/media-live/photos/000/936/cache/bear-road-denali_93621_990x742.jpg\\" alt=\\"\\" class=\\"fr-dii fr-draggable\\" /></div>Добро пожаловать на демонстрационную страницу движка DataLife Engine. DataLife Engine это многопользовательский новостной движок, обладающий большими функциональными возможностями. Движок предназначен в первую очередь для создание новостных блогов и сайтов с большим информационным контекстом. Однако он имеет большое количество настроек, которые позволяют использовать его практически для любых целей. Движок может быть интегрирован практически в любой существующий дизайн, и не имеет никаких ограничений по созданию шаблонов для него. Еще одной ключевой особенностью DataLife Engine является низкая нагрузка на системные ресурсы, Даже при очень большой аудитории сайта нагрузка не сервер будет минимальной, и вы не будете испытывать каких-либо проблем с отображением информации. Движок оптимизирован под поисковые системы. Обо всех функциональных особенностях вы сможете прочитать на <a href=\\"http://dle-news.ru/\\" target=\\"_blank\\" rel=\\"external noopener noreferrer\\">нашей странице</a>.<br /><br />Обсуждение скрипта по всем вопросам ведется <a href=\\"http://forum.dle-news.ru/index.php\\" target=\\"_blank\\" rel=\\"external noopener noreferrer\\">здесь</a>. Так же там Вы сможете получить оперативную помощь.', '', '', 'Добро пожаловать', 'Добро пожаловать на демонстрационную страницу движка DataLife Engine. DataLife Engine это многопользовательский новостной движок, обладающий большими функциональными возможностями. Движок', 'Движок, DataLife, Engine, практически, сможете, нагрузка, имеет, аудитории, минимальной, сайта, сервер, будет, будете, испытывать, очень, особенностью, ключевой, одной, является, низкая', '1', 'post1', 0, 1, 1, 1, 0, 0, '', 'по, новости', ''),
(2, 'admin', '2016-07-19 13:33:23', '<img class=\\"fr-dib fr-draggable\\" src=\\"https://s-media-cache-ak0.pinimg.com/564x/7d/84/3c/7d843c6b041995e068ef9eb9b2def590.jpg\\" />Уважаемые вебмастера хотим для вас сделать небольшое дополнение. Прежде чем обратиться с каким-либо вопросом в службу поддержки скрипта, убедитесь что вы тщательно прочитали документацию по скрипту и не нашли там для вас необходимого ответа. Мы оставляем за собой право игнорировать вопросы, поступившие к нам от пользователей, использующих некоммерческую версию скрипта или не оплативших лицензию, включающую в себя службу технической поддержки. Вы можете приобрести один из двух типов лицензии на DataLife Engine по вашему желанию:<br />- <b>Базовая лицензия.</b> При приобретении данной лицензии вы также получаете возможность получения бесплатно новых версий скрипта в течении <b>одного года</b>.<br /><br />- <b>Расширенная лицензия.</b> При приобретении данной лицензии вы получаете все что входит в базовую лицензию, а также дополнительно входит служба технической поддержки скрипта и разрешение на снятие копирайтов на скрипт с пользовательской части (видимой для обычных посетителей сайта).<br /><br /><b>Срок действия лицензии</b> составляет <span style=\\"color:#FF0000\\">1 год</span>, в течении которого вы бесплатно будете получать все последующие версии скрипта и обновления, а в случае приобретения расширенной лицензии, и тех. поддержку. После окончания срока лицензии вы можете ее продлить, либо использовать пожизненно бесплатно актуальную на тот момент времени версию скрипта.<br /><br /><b>Как оплатить скрипт вы можете прочитать на</b> <a href=\\"http://dle-news.ru/price.html\\" target=\\"_blank\\" rel=\\"external noopener noreferrer\\">http://dle-news.ru/price.html</a><br /><br />Помните что лицензия выдается только на один домен (проект) и не может использоваться на других сайтах, а также запрещена передача вашего файла лицензии третьим лицам.<br /><br /><b>С уважением,<br /><br />SoftNews Media Group</b>', '', '', 'Приобретение и оплата скрипта', 'Уважаемые вебмастера хотим для вас сделать небольшое дополнение. Прежде чем обратиться с каким-либо вопросом в службу поддержки скрипта, убедитесь что вы тщательно прочитали документацию по скрипту и', 'лицензии, скрипта, также, поддержки, бесплатно, можете, лицензия, технической, данной, входит, скрипт, течении, получаете, версию, приобретении, лицензию, службу, обновления, лицам, версии', '1', 'post2', 0, 1, 1, 1, 0, 0, '', 'по, новости', ''),
(3, 'admin', '2016-07-19 13:32:53', '<b>Техническая поддержка скрипта</b> осуществляется силами <a href="http://forum.dle-news.ru/index.php" target="_blank">форума поддержки</a>, а также по E-Mail. По мере поступления возникших у вас вопросов мы стараемся ответить на все ваши вопросы, но в связи с большим количеством посетителей, это не всегда является возможным. Поэтому гарантированная техническая поддержка предоставляется, только пользователям, которые прибрели расширенную лицензию на скрипт.<br /><br /><b>Услуги по технической поддержке скрипта включают в себя:</b><br /><br />1. Приоритетное получение ответа на вопросы, которые задают пользователи впервые столкнувшиеся со скриптом и естественно не знающие всех нюансов работы скрипта. В компетенции службы поддержки находится только помощь только по непосредственным сбоям самого скрипта, в случае если причиной некорректной работы скрипта явился ваш шаблон, не соответствующий требованиям скрипта, то в поддержке вам может быть отказано.<br /><br />2. Также вы получаете возможность одноразовой установки скрипта вам на сервер, включая настройку его до полной работоспособности с учетом текущих настроек сервера (иногда нужно верно отключить поддержку ЧПУ, включение специальных директив для Русского Апача, для верной загрузки картинок и прочее...).<br /><br />3. Вы получаете консультационную поддержку по работе со структурой скрипта, например у вас есть желание добавить небольшие изменения в скрипт для более удобной работы для вас, вы сможете сэкономить время на поиске нужного куска кода просто спросив у нас. Вам будет предоставлена консультация где это копать и как вообще лучше реализовать поставленную задачу. (Внимание мы не пишем за вас дополнительные модули, а только помогаем вам лучше разобраться со структурой скрипта, поэтому всегда задавайте вопросы по существу, вопросы типа: "как мне сделать такую фишку" могут быть проигнорированы службой поддержки).<br /><br />4. Еще одна из часто возникающих проблем это некорректное обновление скрипта, например во время обновления произошел сбой сервера, часть новых данных была внесена в базу и настройки, часть нет, в итоге вы получаете нерабочий скрипт, со всеми вытекающими последствиями. В данном случае для вас будет проведена ручная коррекция поврежденной структуры базы данных.<br /><br />В случае если вы не являетесь подписчиком дополнительной службы поддержки, ваши вопросы могут быть проигнорированы и оставлены без ответа.<br /><br /><b>С уважением,<br /><br />SoftNews Media Group</b>', '', '', 'Осуществление технической поддержки скрипта', '', '', '1', 'post4', 0, 1, 1, 1, 0, 1, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_post_extras`
--

CREATE TABLE IF NOT EXISTS `dle_post_extras` (
  `eid` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `news_read` int(11) NOT NULL DEFAULT '0',
  `allow_rate` tinyint(1) NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL DEFAULT '0',
  `vote_num` int(11) NOT NULL DEFAULT '0',
  `votes` tinyint(1) NOT NULL DEFAULT '0',
  `view_edit` tinyint(1) NOT NULL DEFAULT '0',
  `disable_index` tinyint(1) NOT NULL DEFAULT '0',
  `related_ids` varchar(255) NOT NULL DEFAULT '',
  `access` varchar(150) NOT NULL DEFAULT '',
  `editdate` int(11) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(40) NOT NULL DEFAULT '',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_post_extras`
--

INSERT INTO `dle_post_extras` (`eid`, `news_id`, `news_read`, `allow_rate`, `rating`, `vote_num`, `votes`, `view_edit`, `disable_index`, `related_ids`, `access`, `editdate`, `editor`, `reason`, `user_id`) VALUES
(1, 1, 6, 1, 5, 1, 0, 0, 0, '', '', 1469132497, 'admin', '', 1),
(2, 2, 1, 1, 0, 0, 0, 0, 0, '', '', 1469176390, 'admin', '', 1),
(3, 3, 2, 1, 5, 1, 0, 0, 0, '', '', 0, '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_post_log`
--

CREATE TABLE IF NOT EXISTS `dle_post_log` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `expires` varchar(15) NOT NULL DEFAULT '',
  `action` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_question`
--

CREATE TABLE IF NOT EXISTS `dle_question` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_read_log`
--

CREATE TABLE IF NOT EXISTS `dle_read_log` (
  `id` int(11) unsigned NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_rss`
--

CREATE TABLE IF NOT EXISTS `dle_rss` (
  `id` smallint(5) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `allow_main` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '0',
  `text_type` tinyint(1) NOT NULL DEFAULT '0',
  `date` tinyint(1) NOT NULL DEFAULT '0',
  `search` text NOT NULL,
  `max_news` tinyint(3) NOT NULL DEFAULT '0',
  `cookie` text NOT NULL,
  `category` smallint(5) NOT NULL DEFAULT '0',
  `lastdate` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_rss`
--

INSERT INTO `dle_rss` (`id`, `url`, `description`, `allow_main`, `allow_rating`, `allow_comm`, `text_type`, `date`, `search`, `max_news`, `cookie`, `category`, `lastdate`) VALUES
(1, 'http://dle-news.ru/rss.xml', 'Официальный сайт DataLife Engine', 1, 1, 1, 1, 1, '<div class="full-post-content row">{get}</div><div class="full-post-footer ignore-select">', 5, '', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_rssinform`
--

CREATE TABLE IF NOT EXISTS `dle_rssinform` (
  `id` smallint(5) NOT NULL,
  `tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `category` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `news_max` smallint(5) NOT NULL DEFAULT '0',
  `tmax` smallint(5) NOT NULL DEFAULT '0',
  `dmax` smallint(5) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `rss_date_format` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_rssinform`
--

INSERT INTO `dle_rssinform` (`id`, `tag`, `descr`, `category`, `url`, `template`, `news_max`, `tmax`, `dmax`, `approve`, `rss_date_format`) VALUES
(1, 'dle', 'Новости с Яндекса', '0', 'https://news.yandex.ru/index.rss', 'informer', 3, 0, 200, 1, 'j F Y H:i');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_sendlog`
--

CREATE TABLE IF NOT EXISTS `dle_sendlog` (
  `id` int(11) unsigned NOT NULL,
  `user` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_social_login`
--

CREATE TABLE IF NOT EXISTS `dle_social_login` (
  `id` int(11) NOT NULL,
  `sid` varchar(40) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL DEFAULT '',
  `provider` varchar(15) NOT NULL DEFAULT '',
  `wait` tinyint(1) NOT NULL DEFAULT '0',
  `waitlogin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_spam_log`
--

CREATE TABLE IF NOT EXISTS `dle_spam_log` (
  `id` int(11) unsigned NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `is_spammer` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_static`
--

CREATE TABLE IF NOT EXISTS `dle_static` (
  `id` mediumint(8) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `template` mediumtext NOT NULL,
  `allow_br` tinyint(1) NOT NULL DEFAULT '0',
  `allow_template` tinyint(1) NOT NULL DEFAULT '0',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `tpl` varchar(40) NOT NULL DEFAULT '',
  `metadescr` varchar(200) NOT NULL DEFAULT '',
  `metakeys` text NOT NULL,
  `views` mediumint(8) NOT NULL DEFAULT '0',
  `template_folder` varchar(50) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `allow_count` tinyint(1) NOT NULL DEFAULT '1',
  `sitemap` tinyint(1) NOT NULL DEFAULT '1',
  `disable_index` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_static`
--

INSERT INTO `dle_static` (`id`, `name`, `descr`, `template`, `allow_br`, `allow_template`, `grouplevel`, `tpl`, `metadescr`, `metakeys`, `views`, `template_folder`, `date`, `metatitle`, `allow_count`, `sitemap`, `disable_index`) VALUES
(1, 'dle-rules-page', 'Общие правила на сайте', '<b>Общие правила поведения на сайте:</b><br /><br />Начнем с того, что на сайте общаются сотни людей, разных религий и взглядов, и все они являются полноправными посетителями нашего сайта, поэтому если мы хотим чтобы это сообщество людей функционировало нам и необходимы правила. Мы настоятельно рекомендуем прочитать настоящие правила, это займет у вас всего минут пять, но сбережет нам и вам время и поможет сделать сайт более интересным и организованным.<br /><br />Начнем с того, что на нашем сайте нужно вести себя уважительно ко всем посетителям сайта. Не надо оскорблений по отношению к участникам, это всегда лишнее. Если есть претензии - обращайтесь к Админам или Модераторам (воспользуйтесь личными сообщениями). Оскорбление других посетителей считается у нас одним из самых тяжких нарушений и строго наказывается администрацией. <b>У нас строго запрещен расизм, религиозные и политические высказывания.</b> Заранее благодарим вас за понимание и за желание сделать наш сайт более вежливым и дружелюбным.<br /><br /><b>На сайте строго запрещено:</b> <br /><br />- сообщения, не относящиеся к содержанию статьи или к контексту обсуждения<br />- оскорбление и угрозы в адрес посетителей сайта<br />- в комментариях запрещаются выражения, содержащие ненормативную лексику, унижающие человеческое достоинство, разжигающие межнациональную рознь<br />- спам, а также реклама любых товаров и услуг, иных ресурсов, СМИ или событий, не относящихся к контексту обсуждения статьи<br /><br />Давайте будем уважать друг друга и сайт, на который Вы и другие читатели приходят пообщаться и высказать свои мысли. Администрация сайта оставляет за собой право удалять комментарии или часть комментариев, если они не соответствуют данным требованиям.<br /><br />При нарушении правил вам может быть дано <b>предупреждение</b>. В некоторых случаях может быть дан бан <b>без предупреждений</b>. По вопросам снятия бана писать администратору.<br /><br /><b>Оскорбление</b> администраторов или модераторов также караются <b>баном</b> - уважайте чужой труд.<br /><br /><div align="center">{ACCEPT-DECLINE}</div>', 1, 1, 'all', '', 'Общие правила', 'Общие правила', 1, '', 1468924423, '', 1, 1, 0),
(2, 'about', 'О нас', '<div class=\\"content\\"><p>20 лет Ингушетии. Станция скорой помощи на 30 тысяч вызовов в год Открытие современной станции скорой медицинской помощи в Назрани состоялось в начале 2012 года. Объект возведен в рамках федеральной целевой программы социально-экономического развития Ингушетии на 2010-2016 годы. На строительство станции было выделено около 180 млн. рублей. В течение 10 месяцев была построена станция, рассчитанная на 30 тысяч вызовов в год, с учётом населённости города Назрани, ближайших сельских поселений и близкого расположения федеральной автотрассы. При строительстве применялись материалы, которые впоследствии могут подвергаться дезинфекции, стерилизации, обработке.</p><img src=\\"templates/Default/img/about/about_1.jpg\\" class=\\"fr-fir fr-dii fr-draggable\\"><p>Чтобы понять глобальность и значимость этого «новоселья» для жителей Назрани, Назрановского района и столицы республики города Магаса, достаточно окунуться в прошлые будни скорой помощи. Еще недавно станция ютилась в приспособленном здании в центре Назрани. На территории, которую обслуживали всего 3 бригады медиков и 3 автомобиля, проживало около 230 тыс. человек. Сегодня Республиканская станция скорой медицинской помощи Ингушетии не имеет себе равных на Северном Кавказе, да и в целом по России не многие аналогичные учреждения смогут конкурировать с ней по уровню оснащенности, бытовым условиям, наличию спецтехники. Увеличился штат - вместо прежних 136, теперь здесь трудятся 250 человек.</p><img src=\\"templates/Default/img/about/about_2.jpg\\" class=\\"fr-fil fr-dii fr-draggable\\"><p>Существенно изменился автопарк, и в качественном, и в количественном отношении: на линию выходят новые, отлично оснащенные кареты скорой помощи, в их числе автомобили марок «Fiat» и «Ford». В общей сложности 10 машин работают на линии, и 5 находятся в резерве. На базе прекрасно оборудованного учебного класса начал работать учебно-методический центр, где врачи и фельдшеры (причем не только с этой станции, но также из других ЛПУ республики) могут повысить квалификацию с последующим получением соответствующих сертификатов. Этот социальный объект имеет огромное значение для республики, поэтому к нему пристальное внимание со стороны Главы Ингушетии и Правительства. Здесь оказываться качественная медицинская помощь, кроме того будет создано более 250 рабочих мест, что очень важно для нашей республики. Машины дооснащены необходимым оборудованием, бригады укомплектованы спецодеждой, установлены навигационные системы ГЛОНАСС/GPS, В планах руководства компьютеризация подстанции и создание единой базы данных, создание специализированных бригад - кардиологической, реанимационной, педиатрической, травматологической, гинекологической, хирургической. Открытие современной станции скорой медицинской помощи в Назрани состоялось в начале 2012 года. Скорая медицинская помощь - вид и система экстренной медицинской помощи больным и пострадавшим при угрожающих жизни и здоровью человека состояниях, травмах, оказываемой в местах происшествия: на улице, общественных местах, учреждениях, на дому и в пути следования, при доставке заболевшего в стационар.</p><h2>Вызов в любое время суток. Быстрое реагирование</h2><div class=\\"about-images-block\\"><img style=\\"width: 300px;\\" src=\\"templates/Default/img/about/about_3.jpg\\" class=\\"fr-fil fr-dii fr-draggable\\"><img style=\\"width: 300px;\\" src=\\"templates/Default/img/about/about_4.jpg\\" class=\\"fr-fil fr-dii fr-draggable\\"><img style=\\"width: 300px;\\" src=\\"templates/Default/img/about/about_5.jpg\\" class=\\"fr-fil fr-dii fr-draggable\\"><img style=\\"width: 300px;\\" src=\\"templates/Default/img/about/about_6.jpg\\" class=\\"fr-fil fr-dii fr-draggable\\"></div><p>Бригады высококвалифицированных врачей станции скорой медицинской помощи дежурят круглосуточно, 7 дней в неделю, 365 дней в году.<br><br>Бригада выезжает на вызов незамедлительно. Набирая телефон скорой помощи, Вы можете быть уверены, что неотложная помощьбудет оказана своевременно!<br><br>Бригада доезжает до пациента в зависимости от населенного пункта:<br></p><ul><li>Назрань — <b>6-9 минут</b></li><li>Альтиево — <b>5-10 минут</b></li><li>Гамурзиево — <b>8-9 минут</b></li><li>Барсуки — <b>7-9 минут</b></li><li>Плиево — <b>9-14 минут</b></li><li>Сурхахи — <b>10-12</b></li><li>Экажево — <b>6-10 минут</b></li><li>Али-Юрт — <b>8-10 минут</b></li><li>Яндаре — <b>12-15 минут</b></li><li>Кантышево — <b>13-14 минут</b></li><li>Долаково — <b>14-17 минут</b></li></ul><br><br>Норматив приезда<br>скорой помощи общепринятый по всей территории Российской Федерации - 20 минут.<br><br>Кареты скорой помощи круглосуточно несут дежурство и готовы в любой момент выехать на вызов. На станции есть автомастерская, где в любой момент можно устранить неисправность. Имеются все условиядля диагностики и качественного быстрого ремонта.<br><br>Скорая медицинская помощь - это комплекс мероприятий, направленных на оказание лечебной помощи при угрожающих здоровью и жизни пациента состояниях, к которым привели несчастные случаи или заболевания. Ее оказание связано с оперативностью и направлено на выведение пациента из критического состояния, стабилизацией состояния его здоровья и, при необходимости, доставкой в медицинское учреждение.<br><br>Большинство из нас на собственном опыте знают, что бывают ситуации в жизни, когда не только здоровье, но и жизнь человека зависят от вовремя оказанной медицинской помощи, и к каким последствиям может привести промедление при вызове скорой помощи (помните: телефон скорой помощи всегда должен быть под рукой!). Причем оказываемая помощь должна быть не только быстрой, но и качественной.<p><br></p><h2>Вид транспорта</h2><img style=\\"width: 100%;\\" src=\\"templates/Default/img/about/about_7.jpg\\" class=\\"fr-fil fr-dii fr-draggable\\"><div class=\\"about-image-hint\\" style=\\"margin-bottom: 5%;width:100%;text-align:center;float: left;\\"><h2>Автомобиль класса \\"А\\"</h2></div><img style=\\"width: 100%;\\" src=\\"templates/Default/img/about/about_8.jpg\\" class=\\"fr-fir fr-dii fr-draggable\\"><div class=\\"about-image-hint\\" style=\\"margin-bottom: 5%;width:100%;text-align:center;float: left;\\"><h2>Автомобиль класса \\"В\\"</h2></div><img style=\\"width: 100%;\\" src=\\"templates/Default/img/about/about_9.jpg\\" class=\\"fr-fil fr-dii fr-draggable\\"><div class=\\"about-image-hint\\" style=\\"margin-bottom: 5%;width:100%;text-align:center;float: left;\\"><h2>Автомобиль класса \\"В\\"</h2></div><img style=\\"width: 100%;\\" src=\\"templates/Default/img/about/about_10.jpg\\" class=\\"fr-fir fr-dii fr-draggable\\"><div class=\\"about-image-hint\\" style=\\"margin-bottom: 5%;width:100%;text-align:center;float: left;\\"><h2>Автомобиль класса \\"С\\"</h2></div><img style=\\"width: 100%;\\" src=\\"templates/Default/img/about/about_11.jpg\\" class=\\"fr-fil fr-dii fr-draggable\\"><div class=\\"about-image-hint\\" style=\\"margin-bottom: 5%;width:100%;text-align:center;float: left;\\"><h2>Автомобиль класса \\"С\\"</h2></div></div>', 2, 1, 'all', '', '20 лет Ингушетии. Станция скорой помощи на 30 тысяч вызовов в год Открытие современной станции скорой медицинской помощи в Назрани состоялось в начале 2012 года. Объект возведен в рамках федеральной', 'помощи, скорой, станции, медицинской, класса, Назрани, Ингушетии, помощь, республики, жизни, станция, пациента, только, медицинская, здоровью, любой, угрожающих, телефон, Скорая, момент', 722, '', 1468934995, '', 1, 1, 0),
(4, 'history', 'История скорой помощи', '<div class=\\"content\\"><h3>Введение</h3><p>При возникновении экстренных ситуаций, требующих оказания незамедлительной медицинской помощи, а также при внезапных обострениях хронических заболеваний больным оказывается скорая медицинская помощь. Служба скорой медицинской помощи представляет государственную систему, охватывающую всю страну и располагающую разветвленной сетью станций, подстанций, больниц скорой помощи, санитарной авиации и научно-исследовательских институтов.</p><p>Из эпохи раннего средневековья (XIV век) идет идея создания организации, оказывающей первую помощь страждущим. На дорогах, ведущих в Иерусалим, были организованы дома для оказания помощи путникам. В Голландии в 1417 г. была организована служба для оказания помощи тонущим на каналах страны. Первая станция скорой помощи была создана в Вене в 1881 г.</p><h3>Скорая помощь в царсской России</h3><p>Проект создания российской скорой медицинской помощи был представлен городским властям штаб-доктором Г.Л. Аттенгофером в 1818 г. и носил название \\"Проект заведения в Санкт-Петербурге для спасения обмирающих скоропостижно или подвергнувших жизнь опасности\\". Проект содержал основные положения об организации службы и инструкции по оказанию первой доврачебной помощи пострадавшим. Одобрения властей не последовало.</p><p>В 1844 г. Ф.П. Гаазу удалось открыть \\"Полицейскую больницу для бесприютных\\" в Москве. В ее задачи входило оказание бесплатной медицинской помощи при внезапных заболеваниях. Своим транспортом больница не располагала и оказывала помощь только доставленным в покои.</p><p>В 1896 г. проф. Н.А. Вельяминов разработал проект учреждения для оказания первой медицинской помощи в Санкт-Петербурге. В 1898 г. в Москве были организованы первые 3 станции скорой помощи. На каждой станции были конные кареты, носилки, лекарственные средства и перевязочный материал. В 1899 г. в Петербурге были открыты 5 станций, в 1902 г. в Киеве и еще в 16 городах России. Все станции создавались и содержались на деньги частных лиц; они обслуживались санитарами. На добровольных началах работали 50 врачей Петербурга в 1912 г.</p><h3>Скорая помощь дореволюционной России</h3><p>В 1917 г. при Военно-революционном комитете Петроградского совета рабочих и солдатских депутатов был создан медико-санитарный отдел для оказания неотложной медицинской помощи рабочим Петрограда. Под руководством Н.А. Семашко, З.П. Соловьева были разработаны основные организационные формы работы учреждений скорой медицинской помощи. Скорая медицинская помощь складывалась как служба, оказывающая помощь пострадавшим и тяжелобольным только в общественных местах, на улицах, на предприятиях и в учреждениях.</p><p>В 1919 г. на базе Шереметьевской больницы Москвы была открыта станция скорой медицинской помощи, которая в дальнейшем была преобразована в Московский НИИ скорой помощи им. Н.В. Склифосовского. В 1932 г. был организован Ленинградский НИИ скорой помощи, позднее получивший имя своего основателя выдающегося хирурга И.И. Джанелидзе. Эти институты и сейчас являются центрами организации и развития службы скорой помощи.</p><p>В довоенный период росло количество станций скорой помощи. В 1924 г. в стране было 33 станции, в 1940 г. уже 1275. Параллельно росло число больниц, укреплялась их материально-техническая база, совершенствовались организационные формы работы.</p><h3>Послевоенная скорая помощь</h3><p>Мощным толчком к дальнейшему развитию службы скорой помощи стало создание специализированных бригад. Первыми были организованы психиатрические бригады: в 1928 г. в Москве, затем в 1931 г. в Ленинграде. Скорая помощь стала обеспечиваться современным транспортом. Широкое распространение специализированные бригады получили в конце 50-хначале 60-х гг. В 1957-1958 гг. в Ленинграде была создана специализированная бригада для оказания помощи больным с тяжелыми травмами и шоком. Бригады были оснащены специальной аппаратурой и необходимым набором медикаментов и перевязочных средств. Опыт противошоковых специализированных бригад позволил организовать и другие узкопрофильные специализированные бригады такие, как кардиологические, токсикологические, педиатрические. Благодаря этому специализированная помощь была максимально приближена к пациенту, что не могло не сказаться на результатах лечения.</p><p>В 1970-1976 гг. в стране была проведена реорганизация скорой помощи объединены в единую две параллельно существовавшие службы скорой помощи:<br>1) оказывавшие экстренную медицинскую помощь на улице, в общественнх местах и учреждениях;<br>2) пункты неотложной помощи при поликлиниках, выполнявшие вызовы к больным на дом (в основном в вечернее и ночное время).</p><p>В 1968 г. определена дальнейшая стратегия совершенствования скорой помощи населению создание больниц скорой помощи, объединенных со станциями скорой помощи. Такая реорганизация позволила улучшить пока-затели работы выездных бригад и снизить смертность.</p><p>Организуются бригады интенсивной терапии, основной задачей которых является оказание высококвалифицированной экстренной помощи различным категориям тяжелобольных и пострадавших.</p><h3>Современная скорая помощь</h3><p>Современный этап развития скорой медицинской помощи характеризуется дальнейшим совершенствованием службы скорой медицинской помощи. Скорая помощь превратилась в мощную, достаточно хорошо оснащенную службу, в которой работает около 20 тыс. врачей и свыше 70 тыс. средних медицинских работников на 3000 станций и отделений скорой медицинской помощи. Ежегодно служба скорой медицинской помощи выполняет от 46 до 48 млн вызовов, оказывая медицинскую помощь более чем 50 млн граждан.</p><p>Основополагающим документом, которым руководствуются в работе сотрудники станций и отделений скорой медицинской помощи, является Приказ Министерства здравоохранения Российской Федерации от 26.03.1999 г. №100 \\"О совершенствовании организации скорой медицинской помощи населению Российской Федерации\\" (см. Прил. 1).</p><p>Дальнейшее повышение качества скорой медицинской помощи населению зависит от слаженности работы многих учреждений, от преемственности в работе службы СМП и поликлиник с позиций единой доктрины лечебно-диаг-ностической деятельности при оказании помощи больным, а также от укрепления материально-технической базы самих станций СМП, использования в работе стандартов оказания скорой медицинской помощи.</p></div>', 2, 1, 'all', '', 'h3Введение/h3              pПри возникновении экстренных ситуаций, требующих оказания незамедлительной медицинской помощи,                 а также при внезапных обострениях хронических заболеваний', 'помощи, скорой, медицинской, помощь, оказания, службы, станций, организации, больным, работы, бригады, станции, Скорая, больниц, работе, населению, Москве, скорая, России, бригад', 9, '', 1469024358, '', 1, 1, 0),
(5, 'personnel', 'Персонал', '<div class=\\"content\\"><div class=\\"personal-center-block\\"><div class=\\"chiefMedicalOfficer\\"><div class=\\"img\\"><div class=\\"border-img\\"><br></div></div><span>Главный врач<br></span><span>Оздоев А.Б.<br></span><span>тел.:22-24-10, 22-24-06<br></span></div><div class=\\"personnel-line\\"><div class=\\"personnel\\"><div class=\\"img img1\\"><div class=\\"border-img\\"><br></div></div><span>Заметитель главного врачаппо орг. и метод. работе<br></span><span>Газгиреев Б.Ш.<br></span><span>тел.: 22-24-07<br></span></div><div class=\\"personnel\\"><div class=\\"img img2\\"><div class=\\"border-img\\"><br></div></div><span>Заместитель главного врача по экономической части<br></span><span>Аушев Х.А.<br></span><span>тел.: 22-70-53<br></span></div><div class=\\"personnel\\"><div class=\\"img img3\\"><div class=\\"border-img\\"><br></div></div><span>Главный бухгалтер<br></span><span>Бахтиева Т.Х.<br></span><span>тел.: 22-24-11<br></span></div></div><div class=\\"personnel-line\\"><div class=\\"personnel\\"><div class=\\"img img4\\"><div class=\\"border-img\\"><br></div></div><span>Начальник ОК<br></span><span>Гайдаборшева Л.А.<br></span><span>тел.: 22-24-43<br></span></div><div class=\\"personnel\\"><div class=\\"img img5\\"><div class=\\"border-img\\"><br></div></div><span>Заместитель главного врача по ГО и ЧС<br></span><span>Эсиев У.Я.<br></span><span>тел.: 8(962)641-00-78<br></span></div><div class=\\"personnel\\"><div class=\\"img img6\\"><div class=\\"border-img\\"><br></div></div><span>Начальник юридического отдела<br></span><span>Сакалов А.Ю.<br></span><span>тел.: 8 928 733-99-39<br></span></div></div><div class=\\"personnel-line\\"><div class=\\"personnel\\"><div class=\\"img img7\\"><div class=\\"border-img\\"><br></div></div><span>Заместитель главного врача по медицинской части<br></span><span>Аушева Р.Р.<br></span><span>тел.: 22-24-16<br></span></div><div class=\\"personnel\\"><div class=\\"img img8\\"><div class=\\"border-img\\"><br></div></div><span>Старший врач<br></span><span>Дзаурова Н.Х.<br></span><span>тел.: 8 928 918-37-78<br></span></div><div class=\\"personnel\\"><div class=\\"img img9\\"><div class=\\"border-img\\"><br></div></div><span>Старший фельдшер<br></span><span>Мальсагова П.С.<br></span></div></div></div></div>', 2, 1, 'all', '', 'Главный врач Оздоев А.Б. тел.:22-24-10, 22-24-06  Заметитель главного врачаппо орг. и метод. работе Газгиреев Б.Ш. тел.: 22-24-07  Заместитель главного врача по экономической части Аушев Х.А. тел.:', 'главного, Заместитель, врача, части, Старший, Главный, Начальник, юридического, Сакалов, отдела, медицинской, Мальсагова, фельдшер, Дзаурова, Аушева, Эсиев, бухгалтер, метод, врачаппо, Заметитель', 55, '', 1469025091, '', 1, 1, 0),
(6, 'rekvizit', 'Реквизиты', '<div class="content"><div class="wrapperButtons"><div class="wrapperDownloadFile"><div class="wrapperText"><span>Режим работы РССМП</span></div><div class="wrapperImgDownload"><div class="imgDownload"><br></div></div></div><div class="wrapperDownloadFile"><div class="wrapperText"><span>Контакты</span></div><div class="wrapperImgDownload"><div class="imgDownload"><br></div></div></div><div class="wrapperDownloadFile"><div class="wrapperText"><span>Заработная плата</span></div><div class="wrapperImgDownload"><div class="imgDownload"><br></div></div></div><div class="wrapperDownloadFile"><div class="wrapperText largeText"><span>Лекарственные средства</span></div><div class="wrapperImgDownload"><div class="imgDownload"><br></div></div></div><div class="wrapperDownloadFile"><div class="wrapperText largeText"><span>Виды оказываемой медицинской помощи</span></div><div class="wrapperImgDownload"><div class="imgDownload"><br></div></div></div></div><div class="wrapperLisenses"><br></div></div>', 2, 1, 'all', '', 'Режим работы РССМП Контакты Заработная плата Лекарственные средства Виды оказываемой медицинской помощи', 'средства, оказываемой, медицинской, помощи, Лекарственные, плата, работы, РССМП, Контакты, Заработная, Режим', 13, '', 1469396056, '', 1, 1, 0),
(7, 'vakansii', 'Вакансии', '<div class=\\"content\\"><h3>Руководство ГБУ \\"Республиканская станция скорой медицинской помощи\\" проводит набор на государоственную службу по специальностям:</h3><span id=\\"small\\">1. Врач-педиатр</span><br><span id=\\"small\\">2. Врач-кардиолог</span><br><span id=\\"small\\">3. Выездной врач скорой помощи</span><br><p>От вас требуется ответственное отношение к выбранной специальности, умение оказывать медицинскую помощь больным и пострадавшим. Вас ожидает интересная работа, позволяющая приобрести большой профессиональный опыт, многопрофильная медицинская практика.</p><p><br></p><h3>СВЕДЕНИЯ О ДОЛЖНОСТЯХ:</h3><h5 id=\\"small\\">- ВРАЧ СКОРОЙ МЕДИЦИНСКОЙ ПОМОЩИ</h5><h5>Требования к квалификации:</h5><p>Высшее профессиональное образование по специальности \\"Лечебное дело\\" или \\"Педиатрия\\". Интернатура или (и) ординатура по специальности \\"Скорая медицинская помощь\\" или профессиональная переподготовка по специальности \\"Скорая медицинская помощь\\" при наличии послевузовского профессионального образования по одной из специальностей:</p><span id=\\"small\\">\\"Анестезиология-реаниматология\\"</span><br><span id=\\"small\\">\\"Общая врачебная практика (семейная медицина)\\"</span><br><span id=\\"small\\">\\"Терапия\\"</span><br><span id=\\"small\\">\\"Педиатрия\\"</span><br><span id=\\"small\\">\\"Хирургия\\"</span><br><p>Сертификат специалиста по специальности \\"Скорая медицинская помощь\\". Основные функции:</p><p><span id=\\"small\\">Оказание скорой медицинской помощи взрослому и детскому населению при состояниях, угрожающих здоровью или жизни пациентам, вызванных внезапными заболеваниями, несчастными случаями, травмами и отравлениями, как на месте происшествия, так и в пути следования в стационар.</span><br><span id=\\"small\\">Условия труда:</span><br><span id=\\"average\\">-Врачебные бригады обеспечены современными комфортабельными санитарными автомобилями, медицинской аппаратурой и радиосвязью.</span><br><span id=\\"average\\">-Бригады работают по сменному графику.</span><br><span id=\\"small\\">-Бригады располагаются на подстанциях во всех районах города, на которых созданы все условия для полноценной работы и отдыха персонала.</span><br><span id=\\"small\\">Оплата труда.</span><br><span id=\\"small\\">Предоставляемые отпуска:</span><br><span id=\\"average\\">Основной ежегодный оплачиваемый отпуск 28 календарных дней;</span><br><span id=\\"average\\">Ежегодные дополнительные оплачиваемые отпуска:</span><br></p><p id=\\"large\\">а) за работу с вредными и (или) опасными условиях труда по занимаемой должности;<br></p><p id=\\"large\\">б) за непрерывный стаж работы в составе выездной бригады свыше 3-х лет - 3 календарных дня.<br></p><p>Перечень документов для врачей:</p><span id=\\"small\\">1. Диплом об образовании (копия);</span><br><span id=\\"small\\">2. Сертификат специалиста скорой медицинской помощи, категория, удостоверение (копия);</span><br><span id=\\"small\\">3. Паспорт (копия);</span><br><span id=\\"small\\">4. ИНН (копия);</span><br><span id=\\"small\\">5. СНИЛС (копия);</span><br><span id=\\"small\\">6. Трудовая книжка;</span><br><span id=\\"small\\">7. Военный билет;</span><br><span id=\\"small\\">8. Фотографии (2 шт.)</span><br><span id=\\"small\\">9. Справка с места жительства</span><br><span id=\\"small\\">10. Справка о судимости;</span><br><span id=\\"small\\">11. Санитарная книжка.</span><br><h4>Наш адрес: Республика Ингушетия, г. Назрань, а/о Насыр-Корт, ул. Бакинская, 7\\"а\\".(трасса Ростов-Баку) Отдел кадров 8 (8732) 22-24-43</h4></div>', 2, 1, 'all', '', 'Руководство ГБУ Республиканская станция скорой медицинской помощи проводит набор на государоственную службу по специальностям:1. Врач-педиатр 2. Врач-кардиолог 3. Выездной врач скорой помощи От вас', 'специальности, копия, медицинская, помощь, помощи, медицинской, скорой, труда, Скорая, специалиста, Сертификат, Справка, отпуска, календарных, Педиатрия, работы, практика, книжка, Бригады, бригады', 6, '', 1469397711, '', 1, 1, 0),
(8, 'structura', 'Структура', '<div class=\\"content\\"><h1 id=\\"headerTextCenter\\">Станция скорой помощи располагает подстанциями в селах Кантышево, Сурхахи, Яндаре.<br>Благодаря им скорая медицинская помощь оказывается с наименьшими затратами времени на приезд к пациенту.</h1><div class=\\"wrapper-svg\\"><br></div></div>', 2, 1, 'all', '', 'Станция скорой помощи располагает подстанциями в селах Кантышево, Сурхахи, Яндаре. Благодаря им скорая медицинская помощь оказывается с наименьшими затратами времени на приезд к пациенту.', 'оказывается, помощь, медицинская, наименьшими, затратами, пациенту, приезд, времени, скорая, Благодаря, располагает, помощи, скорой, подстанциями, селах, Яндаре, Сурхахи, Кантышево, Станция', 32, '', 1469399330, '', 1, 1, 0),
(9, 'kadrovaya', 'Отделов кадров', '<div class="content"><div class="wrapperPersonalBlock"><div class="img"><br></div><h2>Начальник отдела кадров<br>Гайдаборшева Лейла Абдурахмановна<br>тел.: 22-24-43</h2><p>В ГБУ "Республиканская станция скорой медицинской помощи" ведется работа по трудоустройству населения. В 2012 году было принято на работу: 9 врачей, 39 фельдшера, 12 медицинских сестер, 23 водителя, 12 человек прочего персонала. В 2013 году было принято: 2 врача, 19 фельдшера, 3 медицинских сестры, 4 водителя, 3 человека прочего персонала. В 2014 году принято: 1 врач, 2 фельдшера, 2 водителя.</p></div></div>', 2, 1, 'all', '', 'Начальник отдела кадров Гайдаборшева Лейла Абдурахмановна тел.: 22-24-43В ГБУ Республиканская станция скорой медицинской помощи ведется работа по трудоустройству населения. В 2012 году было принято', 'фельдшера, водителя, принято, прочего, медицинских, персонала, врачей, работу, человек, человека, сестры, врача, населения, сестер, трудоустройству, Лейла, Абдурахмановна, Гайдаборшева, кадров, отдела', 3, '', 1469402627, '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_static_files`
--

CREATE TABLE IF NOT EXISTS `dle_static_files` (
  `id` mediumint(8) NOT NULL,
  `static_id` mediumint(8) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL DEFAULT '',
  `onserver` varchar(190) NOT NULL DEFAULT '',
  `dcount` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_subscribe`
--

CREATE TABLE IF NOT EXISTS `dle_subscribe` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_tags`
--

CREATE TABLE IF NOT EXISTS `dle_tags` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_tags`
--

INSERT INTO `dle_tags` (`id`, `news_id`, `tag`) VALUES
(1, 1, 'по'),
(2, 2, 'по'),
(3, 3, 'по'),
(4, 1, 'новости'),
(5, 2, 'новости');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_usergroups`
--

CREATE TABLE IF NOT EXISTS `dle_usergroups` (
  `id` smallint(5) NOT NULL,
  `group_name` varchar(50) NOT NULL DEFAULT '',
  `allow_cats` text NOT NULL,
  `allow_adds` tinyint(1) NOT NULL DEFAULT '1',
  `cat_add` text NOT NULL,
  `allow_admin` tinyint(1) NOT NULL DEFAULT '0',
  `allow_addc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_editc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_delc` tinyint(1) NOT NULL DEFAULT '0',
  `edit_allc` tinyint(1) NOT NULL DEFAULT '0',
  `del_allc` tinyint(1) NOT NULL DEFAULT '0',
  `moderation` tinyint(1) NOT NULL DEFAULT '0',
  `allow_all_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm` smallint(5) NOT NULL DEFAULT '0',
  `max_foto` varchar(10) NOT NULL DEFAULT '',
  `allow_files` tinyint(1) NOT NULL DEFAULT '0',
  `allow_hide` tinyint(1) NOT NULL DEFAULT '1',
  `allow_short` tinyint(1) NOT NULL DEFAULT '0',
  `time_limit` tinyint(1) NOT NULL DEFAULT '0',
  `rid` smallint(5) NOT NULL DEFAULT '0',
  `allow_fixed` tinyint(1) NOT NULL DEFAULT '0',
  `allow_feed` tinyint(1) NOT NULL DEFAULT '1',
  `allow_search` tinyint(1) NOT NULL DEFAULT '1',
  `allow_poll` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) NOT NULL DEFAULT '1',
  `captcha` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `allow_modc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '1',
  `allow_offline` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_file_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_signature` tinyint(1) NOT NULL DEFAULT '0',
  `allow_url` tinyint(1) NOT NULL DEFAULT '1',
  `news_sec_code` tinyint(1) NOT NULL DEFAULT '1',
  `allow_image` tinyint(1) NOT NULL DEFAULT '0',
  `max_signature` smallint(6) NOT NULL DEFAULT '0',
  `max_info` smallint(6) NOT NULL DEFAULT '0',
  `admin_addnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_comments` tinyint(1) NOT NULL DEFAULT '0',
  `admin_categories` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editusers` tinyint(1) NOT NULL DEFAULT '0',
  `admin_wordfilter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_xfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_userfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_static` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editvote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_blockip` tinyint(1) NOT NULL DEFAULT '0',
  `admin_banners` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rss` tinyint(1) NOT NULL DEFAULT '0',
  `admin_iptools` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rssinform` tinyint(1) NOT NULL DEFAULT '0',
  `admin_googlemap` tinyint(1) NOT NULL DEFAULT '0',
  `allow_html` tinyint(1) NOT NULL DEFAULT '1',
  `group_prefix` text NOT NULL,
  `group_suffix` text NOT NULL,
  `allow_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_size` tinyint(1) NOT NULL DEFAULT '0',
  `cat_allow_addnews` text NOT NULL,
  `flood_news` smallint(6) NOT NULL DEFAULT '0',
  `max_day_news` smallint(6) NOT NULL DEFAULT '0',
  `force_leech` tinyint(1) NOT NULL DEFAULT '0',
  `edit_limit` smallint(6) NOT NULL DEFAULT '0',
  `captcha_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm_day` smallint(6) NOT NULL DEFAULT '0',
  `max_mail_day` smallint(6) NOT NULL DEFAULT '0',
  `admin_tagscloud` tinyint(1) NOT NULL DEFAULT '0',
  `allow_vote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_complaint` tinyint(1) NOT NULL DEFAULT '0',
  `news_question` tinyint(1) NOT NULL DEFAULT '0',
  `comments_question` tinyint(1) NOT NULL DEFAULT '0',
  `max_comment_day` smallint(6) NOT NULL DEFAULT '0',
  `max_images` smallint(6) NOT NULL DEFAULT '0',
  `max_files` smallint(6) NOT NULL DEFAULT '0',
  `disable_news_captcha` smallint(6) NOT NULL DEFAULT '0',
  `disable_comments_captcha` smallint(6) NOT NULL DEFAULT '0',
  `pm_question` tinyint(1) NOT NULL DEFAULT '0',
  `captcha_feedback` tinyint(1) NOT NULL DEFAULT '1',
  `feedback_question` tinyint(1) NOT NULL DEFAULT '0',
  `files_type` varchar(255) NOT NULL DEFAULT '',
  `max_file_size` mediumint(9) NOT NULL DEFAULT '0',
  `files_max_speed` smallint(6) NOT NULL DEFAULT '0',
  `allow_lostpassword` tinyint(1) NOT NULL DEFAULT '1',
  `spamfilter` tinyint(1) NOT NULL DEFAULT '2',
  `allow_comments_rating` tinyint(1) NOT NULL DEFAULT '1',
  `max_edit_days` tinyint(1) NOT NULL DEFAULT '0',
  `spampmfilter` tinyint(1) NOT NULL DEFAULT '0',
  `force_reg` tinyint(1) NOT NULL DEFAULT '0',
  `force_reg_days` mediumint(9) NOT NULL DEFAULT '0',
  `force_reg_group` smallint(6) NOT NULL DEFAULT '4',
  `force_news` tinyint(1) NOT NULL DEFAULT '0',
  `force_news_count` mediumint(9) NOT NULL DEFAULT '0',
  `force_news_group` smallint(6) NOT NULL DEFAULT '4',
  `force_comments` tinyint(1) NOT NULL DEFAULT '0',
  `force_comments_count` mediumint(9) NOT NULL DEFAULT '0',
  `force_comments_group` smallint(6) NOT NULL DEFAULT '4',
  `force_rating` tinyint(1) NOT NULL DEFAULT '0',
  `force_rating_count` mediumint(9) NOT NULL DEFAULT '0',
  `force_rating_group` smallint(6) NOT NULL DEFAULT '4',
  `not_allow_cats` text NOT NULL,
  `allow_up_image` tinyint(1) NOT NULL DEFAULT '0',
  `allow_up_watermark` tinyint(1) NOT NULL DEFAULT '0',
  `allow_up_thumb` tinyint(1) NOT NULL DEFAULT '0',
  `up_count_image` smallint(6) NOT NULL DEFAULT '0',
  `up_image_side` varchar(20) NOT NULL DEFAULT '',
  `up_image_size` mediumint(9) NOT NULL DEFAULT '0',
  `up_thumb_size` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_usergroups`
--

INSERT INTO `dle_usergroups` (`id`, `group_name`, `allow_cats`, `allow_adds`, `cat_add`, `allow_admin`, `allow_addc`, `allow_editc`, `allow_delc`, `edit_allc`, `del_allc`, `moderation`, `allow_all_edit`, `allow_edit`, `allow_pm`, `max_pm`, `max_foto`, `allow_files`, `allow_hide`, `allow_short`, `time_limit`, `rid`, `allow_fixed`, `allow_feed`, `allow_search`, `allow_poll`, `allow_main`, `captcha`, `icon`, `allow_modc`, `allow_rating`, `allow_offline`, `allow_image_upload`, `allow_file_upload`, `allow_signature`, `allow_url`, `news_sec_code`, `allow_image`, `max_signature`, `max_info`, `admin_addnews`, `admin_editnews`, `admin_comments`, `admin_categories`, `admin_editusers`, `admin_wordfilter`, `admin_xfields`, `admin_userfields`, `admin_static`, `admin_editvote`, `admin_newsletter`, `admin_blockip`, `admin_banners`, `admin_rss`, `admin_iptools`, `admin_rssinform`, `admin_googlemap`, `allow_html`, `group_prefix`, `group_suffix`, `allow_subscribe`, `allow_image_size`, `cat_allow_addnews`, `flood_news`, `max_day_news`, `force_leech`, `edit_limit`, `captcha_pm`, `max_pm_day`, `max_mail_day`, `admin_tagscloud`, `allow_vote`, `admin_complaint`, `news_question`, `comments_question`, `max_comment_day`, `max_images`, `max_files`, `disable_news_captcha`, `disable_comments_captcha`, `pm_question`, `captcha_feedback`, `feedback_question`, `files_type`, `max_file_size`, `files_max_speed`, `allow_lostpassword`, `spamfilter`, `allow_comments_rating`, `max_edit_days`, `spampmfilter`, `force_reg`, `force_reg_days`, `force_reg_group`, `force_news`, `force_news_count`, `force_news_group`, `force_comments`, `force_comments_count`, `force_comments_group`, `force_rating`, `force_rating_count`, `force_rating_group`, `not_allow_cats`, `allow_up_image`, `allow_up_watermark`, `allow_up_thumb`, `up_count_image`, `up_image_side`, `up_image_size`, `up_thumb_size`) VALUES
(1, 'Администраторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_1.gif', 0, 1, 1, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '<b><span style="color:red">', '</span></b>', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 0, 2, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, '', 1, 1, 1, 3, '800x600', 300, '200x150'),
(2, 'Главные редакторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 2, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_2.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 1, 2, 1, 0, 0, 0, 0, 2, 0, 0, 2, 0, 0, 2, 0, 0, 2, '', 1, 1, 1, 3, '800x600', 300, '200x150'),
(3, 'Журналисты', 'all', 1, 'all', 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 50, '101', 1, 1, 1, 0, 3, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_3.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 1, 2, 1, 0, 0, 0, 0, 3, 0, 0, 3, 0, 0, 3, 0, 0, 3, '', 1, 1, 1, 3, '800x600', 300, '200x150'),
(4, 'Посетители', 'all', 1, 'all', 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 20, '101', 1, 1, 1, 0, 4, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_4.gif', 0, 1, 0, 1, 0, 1, 1, 1, 0, 500, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 1, 2, 1, 0, 2, 0, 0, 4, 0, 0, 4, 0, 0, 4, 0, 0, 4, '', 0, 0, 0, 1, '800x600', 300, '200x150'),
(5, 'Гости', 'all', 0, 'all', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 1, 0, 1, 0, 5, 0, 1, 1, 1, 0, 1, '{THEME}/images/icon_5.gif', 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 0, 2, 1, 0, 2, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0, 5, '', 0, 0, 0, 1, '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_users`
--

CREATE TABLE IF NOT EXISTS `dle_users` (
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `news_num` mediumint(8) NOT NULL DEFAULT '0',
  `comm_num` mediumint(8) NOT NULL DEFAULT '0',
  `user_group` smallint(5) NOT NULL DEFAULT '4',
  `lastdate` varchar(20) NOT NULL DEFAULT '',
  `reg_date` varchar(20) NOT NULL DEFAULT '',
  `banned` varchar(5) NOT NULL DEFAULT '',
  `allow_mail` tinyint(1) NOT NULL DEFAULT '1',
  `info` text NOT NULL,
  `signature` text NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT '',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `land` varchar(100) NOT NULL DEFAULT '',
  `favorites` text NOT NULL,
  `pm_all` smallint(5) NOT NULL DEFAULT '0',
  `pm_unread` smallint(5) NOT NULL DEFAULT '0',
  `time_limit` varchar(20) NOT NULL DEFAULT '',
  `xfields` text NOT NULL,
  `allowed_ip` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `logged_ip` varchar(40) NOT NULL DEFAULT '',
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `restricted_days` smallint(4) NOT NULL DEFAULT '0',
  `restricted_date` varchar(15) NOT NULL DEFAULT '',
  `timezone` varchar(100) NOT NULL DEFAULT '',
  `news_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `comments_reply_subscribe` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_users`
--

INSERT INTO `dle_users` (`email`, `password`, `name`, `user_id`, `news_num`, `comm_num`, `user_group`, `lastdate`, `reg_date`, `banned`, `allow_mail`, `info`, `signature`, `foto`, `fullname`, `land`, `favorites`, `pm_all`, `pm_unread`, `time_limit`, `xfields`, `allowed_ip`, `hash`, `logged_ip`, `restricted`, `restricted_days`, `restricted_date`, `timezone`, `news_subscribe`, `comments_reply_subscribe`) VALUES
('admin@03ri.ru', 'b8d3c8f4db0c248ac242dd6e098bbf85', 'admin', 1, 3, 0, 1, '1469402068', '1468924423', '', 1, '', '', '', '', '', '', 0, 0, '', '', '', '', '127.0.0.1', 0, 0, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_views`
--

CREATE TABLE IF NOT EXISTS `dle_views` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_vote`
--

CREATE TABLE IF NOT EXISTS `dle_vote` (
  `id` mediumint(8) NOT NULL,
  `category` text NOT NULL,
  `vote_num` mediumint(8) NOT NULL DEFAULT '0',
  `date` varchar(25) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `grouplevel` varchar(250) NOT NULL DEFAULT 'all'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `dle_vote`
--

INSERT INTO `dle_vote` (`id`, `category`, `vote_num`, `date`, `title`, `body`, `approve`, `start`, `end`, `grouplevel`) VALUES
(1, 'all', 0, '2016-07-19 13:33:43', 'Оцените работу движка', 'Лучший из новостных<br />Неплохой движок<br />Устраивает ... но ...<br />Встречал и получше<br />Совсем не понравился', 1, '', '', 'all');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_vote_result`
--

CREATE TABLE IF NOT EXISTS `dle_vote_result` (
  `id` int(10) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `vote_id` mediumint(8) NOT NULL DEFAULT '0',
  `answer` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_xfsearch`
--

CREATE TABLE IF NOT EXISTS `dle_xfsearch` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `tagname` varchar(50) NOT NULL DEFAULT '',
  `tagvalue` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `dle_admin_logs`
--
ALTER TABLE `dle_admin_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`);

--
-- Индексы таблицы `dle_admin_sections`
--
ALTER TABLE `dle_admin_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `dle_banned`
--
ALTER TABLE `dle_banned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`users_id`);

--
-- Индексы таблицы `dle_banners`
--
ALTER TABLE `dle_banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_category`
--
ALTER TABLE `dle_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_comments`
--
ALTER TABLE `dle_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `approve` (`approve`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rating` (`rating`),
  ADD FULLTEXT KEY `text` (`text`);

--
-- Индексы таблицы `dle_comments_files`
--
ALTER TABLE `dle_comments_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `author` (`author`);

--
-- Индексы таблицы `dle_comment_rating_log`
--
ALTER TABLE `dle_comment_rating_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `member` (`member`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `dle_complaint`
--
ALTER TABLE `dle_complaint`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `n_id` (`n_id`);

--
-- Индексы таблицы `dle_email`
--
ALTER TABLE `dle_email`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_files`
--
ALTER TABLE `dle_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Индексы таблицы `dle_flood`
--
ALTER TABLE `dle_flood`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `id` (`id`),
  ADD KEY `flag` (`flag`);

--
-- Индексы таблицы `dle_ignore_list`
--
ALTER TABLE `dle_ignore_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `user_from` (`user_from`);

--
-- Индексы таблицы `dle_images`
--
ALTER TABLE `dle_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `news_id` (`news_id`);

--
-- Индексы таблицы `dle_links`
--
ALTER TABLE `dle_links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_login_log`
--
ALTER TABLE `dle_login_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`),
  ADD KEY `date` (`date`);

--
-- Индексы таблицы `dle_logs`
--
ALTER TABLE `dle_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `member` (`member`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `dle_lostdb`
--
ALTER TABLE `dle_lostdb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lostid` (`lostid`);

--
-- Индексы таблицы `dle_mail_log`
--
ALTER TABLE `dle_mail_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Индексы таблицы `dle_notice`
--
ALTER TABLE `dle_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `dle_pm`
--
ALTER TABLE `dle_pm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folder` (`folder`),
  ADD KEY `user` (`user`),
  ADD KEY `user_from` (`user_from`),
  ADD KEY `pm_read` (`pm_read`);

--
-- Индексы таблицы `dle_poll`
--
ALTER TABLE `dle_poll`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Индексы таблицы `dle_poll_log`
--
ALTER TABLE `dle_poll_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `member` (`member`);

--
-- Индексы таблицы `dle_post`
--
ALTER TABLE `dle_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autor` (`autor`),
  ADD KEY `alt_name` (`alt_name`),
  ADD KEY `category` (`category`),
  ADD KEY `approve` (`approve`),
  ADD KEY `allow_main` (`allow_main`),
  ADD KEY `date` (`date`),
  ADD KEY `symbol` (`symbol`),
  ADD KEY `comm_num` (`comm_num`),
  ADD KEY `fixed` (`fixed`),
  ADD FULLTEXT KEY `short_story` (`short_story`,`full_story`,`xfields`,`title`);

--
-- Индексы таблицы `dle_post_extras`
--
ALTER TABLE `dle_post_extras`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rating` (`rating`),
  ADD KEY `news_read` (`news_read`);

--
-- Индексы таблицы `dle_post_log`
--
ALTER TABLE `dle_post_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `dle_question`
--
ALTER TABLE `dle_question`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_read_log`
--
ALTER TABLE `dle_read_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `dle_rss`
--
ALTER TABLE `dle_rss`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_rssinform`
--
ALTER TABLE `dle_rssinform`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_sendlog`
--
ALTER TABLE `dle_sendlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `date` (`date`),
  ADD KEY `flag` (`flag`);

--
-- Индексы таблицы `dle_social_login`
--
ALTER TABLE `dle_social_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`);

--
-- Индексы таблицы `dle_spam_log`
--
ALTER TABLE `dle_spam_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `is_spammer` (`is_spammer`);

--
-- Индексы таблицы `dle_static`
--
ALTER TABLE `dle_static`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD FULLTEXT KEY `template` (`template`);

--
-- Индексы таблицы `dle_static_files`
--
ALTER TABLE `dle_static_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `static_id` (`static_id`),
  ADD KEY `onserver` (`onserver`),
  ADD KEY `author` (`author`);

--
-- Индексы таблицы `dle_subscribe`
--
ALTER TABLE `dle_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `dle_tags`
--
ALTER TABLE `dle_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `tag` (`tag`);

--
-- Индексы таблицы `dle_usergroups`
--
ALTER TABLE `dle_usergroups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_users`
--
ALTER TABLE `dle_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `dle_views`
--
ALTER TABLE `dle_views`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_vote`
--
ALTER TABLE `dle_vote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `approve` (`approve`);

--
-- Индексы таблицы `dle_vote_result`
--
ALTER TABLE `dle_vote_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer` (`answer`),
  ADD KEY `vote_id` (`vote_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `dle_xfsearch`
--
ALTER TABLE `dle_xfsearch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `tagname` (`tagname`),
  ADD KEY `tagvalue` (`tagvalue`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `dle_admin_logs`
--
ALTER TABLE `dle_admin_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT для таблицы `dle_admin_sections`
--
ALTER TABLE `dle_admin_sections`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_banned`
--
ALTER TABLE `dle_banned`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_banners`
--
ALTER TABLE `dle_banners`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `dle_category`
--
ALTER TABLE `dle_category`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `dle_comments`
--
ALTER TABLE `dle_comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_comments_files`
--
ALTER TABLE `dle_comments_files`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_comment_rating_log`
--
ALTER TABLE `dle_comment_rating_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_complaint`
--
ALTER TABLE `dle_complaint`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_email`
--
ALTER TABLE `dle_email`
  MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `dle_files`
--
ALTER TABLE `dle_files`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_flood`
--
ALTER TABLE `dle_flood`
  MODIFY `f_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_ignore_list`
--
ALTER TABLE `dle_ignore_list`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_images`
--
ALTER TABLE `dle_images`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_links`
--
ALTER TABLE `dle_links`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_login_log`
--
ALTER TABLE `dle_login_log`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_logs`
--
ALTER TABLE `dle_logs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `dle_lostdb`
--
ALTER TABLE `dle_lostdb`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_mail_log`
--
ALTER TABLE `dle_mail_log`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_notice`
--
ALTER TABLE `dle_notice`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_pm`
--
ALTER TABLE `dle_pm`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_poll`
--
ALTER TABLE `dle_poll`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_poll_log`
--
ALTER TABLE `dle_poll_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_post`
--
ALTER TABLE `dle_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `dle_post_extras`
--
ALTER TABLE `dle_post_extras`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `dle_post_log`
--
ALTER TABLE `dle_post_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_question`
--
ALTER TABLE `dle_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_read_log`
--
ALTER TABLE `dle_read_log`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_rss`
--
ALTER TABLE `dle_rss`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `dle_rssinform`
--
ALTER TABLE `dle_rssinform`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `dle_sendlog`
--
ALTER TABLE `dle_sendlog`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_social_login`
--
ALTER TABLE `dle_social_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_spam_log`
--
ALTER TABLE `dle_spam_log`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_static`
--
ALTER TABLE `dle_static`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `dle_static_files`
--
ALTER TABLE `dle_static_files`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_subscribe`
--
ALTER TABLE `dle_subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_tags`
--
ALTER TABLE `dle_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `dle_usergroups`
--
ALTER TABLE `dle_usergroups`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `dle_users`
--
ALTER TABLE `dle_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `dle_views`
--
ALTER TABLE `dle_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_vote`
--
ALTER TABLE `dle_vote`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `dle_vote_result`
--
ALTER TABLE `dle_vote_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `dle_xfsearch`
--
ALTER TABLE `dle_xfsearch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
