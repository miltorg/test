-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 18 2023 г., 11:04
-- Версия сервера: 10.3.31-MariaDB-log-cll-lve
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u2977s7ys_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `message2`
--

CREATE TABLE `message2` (
  `nid` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` text NOT NULL,
  `int_id` varchar(16) NOT NULL,
  `str` text NOT NULL,
  `address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `message2`
--

INSERT INTO `message2` (`nid`, `created`, `id`, `int_id`, `str`, `address`) VALUES
(1, '2012-02-13 10:39:22', '120213143629.COM_FM_END.205359@whois.somehost.ru\n', '1RwtJa-0009RI-2d', '1RwtJa-0009RI-2d <= tpxmuwr@somehost.ru H=mail.somehost.com [84.154.134.45] P=esmtp S=1289 id=120213143629.COM_FM_END.205359@whois.somehost.ru\n ', 'tpxmuwr@somehost.ru'),
(2, '2012-02-13 10:39:22', '120213143629.COM_FM_END.125492@whois.somehost.ru\n', '1RwtJa-0009RI-5L', '1RwtJa-0009RI-5L <= tpxmuwr@somehost.ru H=mail.somehost.com [84.154.134.45] P=esmtp S=1260 id=120213143629.COM_FM_END.125492@whois.somehost.ru\n ', 'tpxmuwr@somehost.ru');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `message2`
--
ALTER TABLE `message2`
  ADD PRIMARY KEY (`nid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `message2`
--
ALTER TABLE `message2`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1562;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
