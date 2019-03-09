-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 09-Mar-2019 às 11:13
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zan`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `sis_users`
--

DROP TABLE IF EXISTS `sis_users`;
CREATE TABLE IF NOT EXISTS `sis_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_nm` varchar(250) NOT NULL DEFAULT '',
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_registered_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_status` int(11) NOT NULL DEFAULT '1',
  `occupation_id` int(10) NOT NULL DEFAULT '1',
  `user_telefone` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sis_users`
--

INSERT INTO `sis_users` (`user_id`, `user_nm`, `user_login`, `user_pass`, `user_email`, `user_registered_dt`, `user_status`, `occupation_id`, `user_telefone`) VALUES
(1, 'Guto', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'angelo', '2016-12-12 20:23:35', 1, 1, '0'),
(2, 'Caio', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'adrianokn@yahoo.com.br', '2017-01-01 20:23:35', 1, 1, '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ts_pages`
--

DROP TABLE IF EXISTS `ts_pages`;
CREATE TABLE IF NOT EXISTS `ts_pages` (
  `page_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `page_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `page_content` longtext NOT NULL,
  `page_title` text NOT NULL,
  `page_url` text NOT NULL,
  `page_description` longtext,
  `page_keywords` longtext,
  `page_status` varchar(20) NOT NULL DEFAULT 'publish',
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ts_pages`
--

INSERT INTO `ts_pages` (`page_id`, `page_author`, `page_date`, `page_content`, `page_title`, `page_url`, `page_description`, `page_keywords`, `page_status`) VALUES
(1, 1, '2017-02-25 16:44:43', '\r\n', 'Início', '', NULL, NULL, 'publish'),
(17, 0, '2018-08-30 03:00:00', '', 'sobre', 'sobre', NULL, NULL, 'publish'),
(19, 1, '2019-01-25 02:00:00', 'tratamentos-corporais', 'tratamentos-corporais', 'tratamentos-corporais', 'tratamentos-corporais', 'tratamentos-corporais', 'publish'),
(20, 1, '2019-01-28 02:00:00', 'Massagem', 'Massagem', 'massagem', 'massagem', NULL, 'publish'),
(21, 1, '2019-01-28 02:00:00', 'carboxiterpia', 'carboxiterpia', 'carboxiterpia', 'carboxiterpia', 'carboxiterpia', 'publish'),
(22, 1, '2019-01-28 02:00:00', 'peeling-de-diamante', 'peeling-de-diamante', 'peeling-de-diamante', 'peeling-de-diamante', 'peeling-de-diamante', 'publish'),
(23, 1, '2019-01-28 02:00:00', 'peeling-quimico', 'peeling-quimico', 'peeling-quimico', 'peeling-quimico', 'peeling-quimico', 'publish'),
(24, 1, '2019-01-28 02:00:00', 'hidratacao', 'hidratacao', 'hidratacao', 'hidratacao', 'hidratacao', 'publish'),
(25, 1, '2019-01-28 02:00:00', 'radiofrequencia-facial', 'radiofrequencia-facial', 'radiofrequencia-facial', 'radiofrequencia-facial', 'radiofrequencia-facial', 'publish'),
(26, 1, '2019-01-28 02:00:00', 'limpeza-pele', 'limpeza-pele', 'limpeza-pele', 'limpeza-pele', 'limpeza-pele', 'publish'),
(27, 1, '2019-01-28 02:00:00', 'microagulhamento', 'microagulhamento', 'microagulhamento', 'microagulhamento', 'microagulhamento', 'publish'),
(29, 1, '2019-01-28 10:47:28', 'drenagem-facial', 'drenagem-facial', 'drenagem-facial', 'drenagem-facial', 'drenagem-facial', 'publish'),
(30, 1, '2019-01-28 12:26:43', 'criolipolise', 'criolipolise', 'criolipolise', 'criolipolise', 'criolipolise', 'publish'),
(31, 1, '2019-01-28 12:31:26', 'lipocavitacao', 'lipocavitacao', 'lipocavitacao', 'lipocavitacao', 'lipocavitacao', 'publish'),
(32, 1, '2019-01-28 19:06:57', 'carboxiterapia-corporal', 'carboxiterapia-corporal', 'carboxiterapia-corporal', 'carboxiterapia-corporal', 'carboxiterapia-corporal', 'publish'),
(33, 1, '2019-01-28 19:11:34', 'radiofrequencia-corporal', 'radiofrequencia-corporal', 'radiofrequencia-corporal', 'radiofrequencia-corporal', 'radiofrequencia-corporal', 'publish'),
(34, 1, '2019-01-28 19:15:50', 'drenagem-linfatica', 'drenagem-linfatica', 'drenagem-linfatica', 'drenagem-linfatica', 'drenagem-linfatica', 'publish'),
(35, 1, '2019-01-28 19:38:53', 'drenagem-metodo-joana-medrado', 'drenagem-metodo-joana-medrado', 'drenagem-metodo-joana-medrado', 'drenagem-metodo-joana-medrado', 'drenagem-metodo-joana-medrado', 'publish'),
(36, 1, '2019-01-28 19:42:40', 'drenagem-pos-operatoria', 'drenagem-pos-operatoria', 'drenagem-pos-operatoria', 'drenagem-pos-operatoria', 'drenagem-pos-operatoria', 'publish'),
(37, 1, '2019-01-29 19:44:57', 'massagem-modeladora', 'massagem-modeladora', 'massagem-modeladora', 'massagem-modeladora', 'massagem-modeladora', 'publish'),
(38, 0, '2019-01-29 20:03:41', 'massagem-relaxante', 'massagem-relaxante', 'massagem-relaxante', 'massagem-relaxante', 'massagem-relaxante', 'publish'),
(39, 1, '2019-01-30 19:12:11', 'massagem-reike', 'massagem-reike', 'massagem-reike', 'massagem-reike', 'massagem-reike', 'publish'),
(40, 1, '2019-01-30 19:17:05', 'pump-up', 'pump-up', 'pump-up', 'pump-up', 'pump-up', 'publish'),
(41, 1, '2019-01-30 19:26:55', 'massagem-estimulacao', 'massagem-estimulacao', 'massagem-estimulacao', 'massagem-estimulacao', 'massagem-estimulacao', 'publish'),
(42, 1, '2019-01-30 19:43:13', 'massagem-endermologia', 'massagem-endermologia', 'massagem-endermologia', 'massagem-endermologia', 'massagem-endermologia', 'publish'),
(43, 1, '2019-01-30 19:46:56', 'massagem-gomagem', 'massagem-gomagem', 'massagem-gomagem', 'massagem-gomagem', 'massagem-gomagem', 'publish'),
(44, 0, '2019-01-30 19:55:05', 'massagem-flaci10', 'massagem-flaci10', 'massagem-flaci10', 'massagem-flaci10', 'massagem-flaci10', 'publish'),
(45, 1, '2019-01-25 02:00:00', 'tratamentos corporais', 'tratamentos Corporais', 'tratamentos-corporais', 'tratamentos Corporais', 'tratamentos Corporais', 'publish'),
(47, 1, '2019-02-05 12:33:32', 'tratamentos-faciais', 'tratamentos-faciais', 'tratamentos-faciais', 'tratamentos-faciais', 'tratamentos-faciais', 'publish');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ts_pages_admin`
--

DROP TABLE IF EXISTS `ts_pages_admin`;
CREATE TABLE IF NOT EXISTS `ts_pages_admin` (
  `page_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `page_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `page_content` longtext NOT NULL,
  `page_title` text NOT NULL,
  `page_url` text NOT NULL,
  `page_description` longtext,
  `page_keywords` longtext,
  `page_status` varchar(20) NOT NULL DEFAULT 'publish',
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ts_pages_admin`
--

INSERT INTO `ts_pages_admin` (`page_id`, `page_author`, `page_date`, `page_content`, `page_title`, `page_url`, `page_description`, `page_keywords`, `page_status`) VALUES
(1, 1, '2017-02-25 13:44:43', '\r\n', 'Início', '', NULL, NULL, 'publish'),
(17, 0, '2018-08-30 00:00:00', '', 'sobre', 'sobre', NULL, NULL, 'publish');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ts_servicos`
--

DROP TABLE IF EXISTS `ts_servicos`;
CREATE TABLE IF NOT EXISTS `ts_servicos` (
  `id_servicos` int(11) NOT NULL AUTO_INCREMENT,
  `nm_servicos` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_servicos`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `ts_servicos`
--

INSERT INTO `ts_servicos` (`id_servicos`, `nm_servicos`) VALUES
(1, 'Tratamentos Faciais'),
(2, 'Tratamentos Corporais'),
(3, 'Massagem Relaxantes / Terapêutica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ts_servicos_categoria`
--

DROP TABLE IF EXISTS `ts_servicos_categoria`;
CREATE TABLE IF NOT EXISTS `ts_servicos_categoria` (
  `id_servicos_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(30) COLLATE utf8_bin NOT NULL,
  `conteudo` int(11) NOT NULL,
  `id_servicos` int(11) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `data` timestamp NOT NULL,
  PRIMARY KEY (`id_servicos_categoria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
