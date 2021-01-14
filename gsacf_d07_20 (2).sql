-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-01-14 12:17:58
-- サーバのバージョン： 10.4.17-MariaDB
-- PHP のバージョン: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d07_20`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `golf_table`
--

CREATE TABLE `golf_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `play` date NOT NULL,
  `place` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `golf_table`
--

INSERT INTO `golf_table` (`id`, `username`, `password`, `menu`, `play`, `place`, `created_at`, `updated_at`) VALUES
(13, 'hoge', '', '200', '2021-01-11', '', '2021-01-11 08:24:27', '2021-01-11 11:15:28'),
(14, 'hoge', '', '300', '2021-01-12', '', '2021-01-11 08:27:08', '2021-01-11 11:15:38'),
(15, 'サザエさん', '', '100', '2021-01-11', '', '2021-01-11 08:58:27', '2021-01-11 11:06:50'),
(18, '猿', '', '400', '2021-01-13', '', '2021-01-13 20:19:18', '2021-01-13 20:19:18'),
(19, '杉山俊範', '', '300', '2021-01-13', '', '2021-01-13 22:19:19', '2021-01-13 22:19:19'),
(20, '杉山俊範', '', '550', '2021-01-12', '', '2021-01-13 22:36:27', '2021-01-13 22:36:27'),
(21, '山田太郎', '', '60', '2021-01-11', '', '2021-01-13 22:41:42', '2021-01-13 22:41:42'),
(22, 'タラちゃん', '', '400', '2021-01-15', 'https://net-takae.com/golf/westside.html', '2021-01-14 19:38:09', '2021-01-14 19:54:10'),
(23, 'ジロー', '', '150', '2021-01-13', 'https://net-takae.com/golf/westside.html', '2021-01-14 19:54:50', '2021-01-14 19:55:37');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(3, 'メシ', '2020-12-19', '2020-12-19 16:04:07', '2020-12-19 16:04:07'),
(4, '12345', '2020-12-23', '2020-12-19 17:11:04', '2020-12-19 17:11:04'),
(5, '101', '2020-12-24', '2020-12-19 17:12:40', '2020-12-19 17:12:40'),
(6, 'gragrwg', '2020-12-24', '2020-12-19 17:14:19', '2020-12-19 17:14:19'),
(7, '課題', '2020-12-24', '2020-12-19 17:18:22', '2020-12-19 17:18:22'),
(9, '食事', '2020-12-24', '2020-12-23 00:01:09', '2020-12-23 00:01:09');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '杉山俊範', 'qwer', 0, 0, '2021-01-09 16:43:57', '2021-01-09 16:43:57'),
(2, '山田太郎', 'yamada', 0, 0, '2021-01-09 17:09:05', '2021-01-09 17:09:05'),
(3, 'タラちゃん', '121212', 0, 0, '2021-01-11 09:12:39', '2021-01-11 09:12:39');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `golf_table`
--
ALTER TABLE `golf_table`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `golf_table`
--
ALTER TABLE `golf_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- テーブルの AUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- テーブルの AUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
