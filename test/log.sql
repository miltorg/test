-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 18 2023 г., 11:06
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
-- Структура таблицы `log`
--

CREATE TABLE `log` (
  `nid` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `int_id` text NOT NULL,
  `str` text NOT NULL,
  `address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `log`
--

INSERT INTO `log` (`nid`, `created`, `int_id`, `str`, `address`) VALUES
(3, '2012-02-13 10:39:57', '1RwtJY-0009RI-E4', '1RwtJY-0009RI-E4 => bnkahhv@mail.ru R=dnslookup T=remote_smtp H=mxs.mail.ru [94.100.176.20] C=\"250 OK id=1RwtK9-0004SS-Fm\"\n ', 'bnkahhv@mail.ru'),
(4, '2012-02-13 10:39:57', '1RwtJY-0009RI-E4', '1RwtJY-0009RI-E4 -> ldtyzggfqejxo@mail.ru R=dnslookup T=remote_smtp H=mxs.mail.ru [94.100.176.20] C=\"250 OK id=1RwtK9-0004SS-Fm\"\n ', 'ldtyzggfqejxo@mail.ru');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`nid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `log`
--
ALTER TABLE `log`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
