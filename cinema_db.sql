-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 14 2018 г., 21:22
-- Версия сервера: 10.1.28-MariaDB
-- Версия PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cinema_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bron`
--

CREATE TABLE `bron` (
  `id` int(255) UNSIGNED NOT NULL,
  `num_ticket` int(255) NOT NULL,
  `kod_seansa` int(255) NOT NULL,
  `kod_mesta` int(255) NOT NULL,
  `kod_filma` int(255) NOT NULL,
  `n_stoimost` int(255) NOT NULL,
  `k_stoimost` int(255) NOT NULL,
  `day` date NOT NULL,
  `FIO` varchar(255) NOT NULL,
  `stoimost_broni` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `nazvanie` varchar(255) NOT NULL,
  `opisanie` varchar(2000) NOT NULL,
  `akters` varchar(1000) NOT NULL,
  `dlit` varchar(100) NOT NULL,
  `reiting` text NOT NULL,
  `janr` varchar(255) NOT NULL,
  `strana` varchar(255) NOT NULL,
  `rejiser` varchar(255) NOT NULL,
  `god_izdaniya` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`id`, `nazvanie`, `opisanie`, `akters`, `dlit`, `reiting`, `janr`, `strana`, `rejiser`, `god_izdaniya`) VALUES
(1, ' Pirates of the Caribbean', '1', '1', '1', '1', '1', '1', '1', 1),
(2, 'The Avengers', '1', '1', '1', '1', '1', '1', '1', 1),
(3, 'Jaws', '1', '1', '1', '1', '1', '1', '1', 1),
(4, 'SAW ', '1', '1', '1', '1', '1', '1', '1', 1),
(5, 'SAW 2', '1', '1', '1', '1', '1', '1', '1', 1),
(6, 'SAW 3', '1111', '1', '1', '1', '1', '1', '1', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `mesto`
--

CREATE TABLE `mesto` (
  `id` int(255) NOT NULL,
  `num_mesta` int(255) NOT NULL,
  `koef` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `seans`
--

CREATE TABLE `seans` (
  `id` int(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `tip_seansa` varchar(255) NOT NULL,
  `koef` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `seans`
--

INSERT INTO `seans` (`id`, `time`, `tip_seansa`, `koef`, `day`) VALUES
(6, 'q', 'w', 'e', 'r'),
(7, 'erwr', 'werr', 'sdaf', 'xzvc');

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE `tickets` (
  `id` int(255) UNSIGNED NOT NULL,
  `num_ticket` int(255) NOT NULL,
  `kod_seansa` int(255) NOT NULL,
  `kod_mesta` int(255) NOT NULL,
  `kod_filma` int(255) NOT NULL,
  `n_stoimost` int(255) NOT NULL,
  `k_stoimost` int(255) NOT NULL,
  `day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `vhod`
--

CREATE TABLE `vhod` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reg_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vhod`
--

INSERT INTO `vhod` (`id`, `login`, `password`, `reg_date`) VALUES
(1, 'nikita', '202cb962ac59075b964b07152d234b70', 1513014498),
(2, 'qwerty', 'd8578edf8458ce06fbc5bb76a58c5ca4', 1513017061),
(4, '123333', '202cb962ac59075b964b07152d234b70', 1513021091);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bron`
--
ALTER TABLE `bron`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kod_filma` (`kod_filma`),
  ADD KEY `kod_seansa` (`kod_seansa`,`kod_mesta`),
  ADD KEY `kod_mesta` (`kod_mesta`);

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Индексы таблицы `mesto`
--
ALTER TABLE `mesto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Индексы таблицы `seans`
--
ALTER TABLE `seans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kod_seansa` (`kod_seansa`),
  ADD KEY `kod_mesta` (`kod_mesta`,`kod_filma`),
  ADD KEY `kod_filma` (`kod_filma`);

--
-- Индексы таблицы `vhod`
--
ALTER TABLE `vhod`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bron`
--
ALTER TABLE `bron`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `mesto`
--
ALTER TABLE `mesto`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `seans`
--
ALTER TABLE `seans`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `vhod`
--
ALTER TABLE `vhod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `bron`
--
ALTER TABLE `bron`
  ADD CONSTRAINT `bron_ibfk_1` FOREIGN KEY (`kod_filma`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `bron_ibfk_2` FOREIGN KEY (`kod_mesta`) REFERENCES `mesto` (`id`),
  ADD CONSTRAINT `bron_ibfk_3` FOREIGN KEY (`kod_seansa`) REFERENCES `seans` (`id`);

--
-- Ограничения внешнего ключа таблицы `mesto`
--
ALTER TABLE `mesto`
  ADD CONSTRAINT `mesto_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tickets` (`kod_mesta`);

--
-- Ограничения внешнего ключа таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`kod_filma`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`kod_mesta`) REFERENCES `mesto` (`id`),
  ADD CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`kod_seansa`) REFERENCES `seans` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
