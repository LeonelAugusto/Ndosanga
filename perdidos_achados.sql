-- --------------------------------------------------------
-- Anfitrião:                    localhost
-- Versão do servidor:           5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for perdidos_achados
CREATE DATABASE IF NOT EXISTS `perdidos_achados` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `perdidos_achados`;

-- Dumping structure for table perdidos_achados.achados
CREATE TABLE IF NOT EXISTS `achados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_id` bigint(20) unsigned NOT NULL,
  `categoria_id` bigint(20) unsigned NOT NULL,
  `localizacao_id` bigint(20) unsigned DEFAULT NULL,
  `data` date NOT NULL,
  `utilizador_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `achados_estado_id_foreign` (`estado_id`),
  KEY `achados_categoria_id_foreign` (`categoria_id`),
  KEY `achados_utilizador_id_foreign` (`utilizador_id`),
  KEY `achados_localizacao_id_foreign` (`localizacao_id`),
  CONSTRAINT `achados_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `achados_estado_id_foreign` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`),
  CONSTRAINT `achados_localizacao_id_foreign` FOREIGN KEY (`localizacao_id`) REFERENCES `localizacoes` (`id`),
  CONSTRAINT `achados_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `utilizadores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.achados: ~58 rows (approximately)
/*!40000 ALTER TABLE `achados` DISABLE KEYS */;
INSERT INTO `achados` (`id`, `descricao`, `estado_id`, `categoria_id`, `localizacao_id`, `data`, `utilizador_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Encontrei um menino perdido', 1, 1, NULL, '2019-07-02', 1, NULL, NULL, NULL),
	(2, 'Encontrei um menino perdido', 2, 1, NULL, '2002-07-19', 1, NULL, '2019-07-02 05:51:34', '2019-07-02 05:51:34'),
	(3, 'Encontrei um menino perdido', 2, 1, 1, '2005-07-19', 1, NULL, '2019-07-05 01:01:08', '2019-07-05 01:01:08'),
	(4, 'Está perdida', 2, 1, 2, '2005-07-19', 1, NULL, '2019-07-05 01:13:59', '2019-07-05 01:13:59'),
	(5, 'Está perdida', 2, 1, 3, '2005-07-19', 1, '2019-07-25 10:49:18', '2019-07-05 01:15:09', '2019-07-25 10:49:18'),
	(6, 'Está perdida', 2, 1, 4, '2005-07-19', 1, NULL, '2019-07-05 01:16:13', '2019-07-05 01:16:13'),
	(7, 'Está perdida', 2, 1, 5, '2005-07-19', 1, NULL, '2019-07-05 01:16:39', '2019-07-05 01:16:39'),
	(8, 'Está perdida', 2, 1, 6, '2005-07-19', 1, '2019-07-25 11:18:19', '2019-07-05 01:22:45', '2019-07-25 11:18:19'),
	(9, 'Encontrei um menino perdido', 2, 1, 7, '2005-07-19', 1, '2019-07-25 11:18:27', '2019-07-05 01:29:29', '2019-07-25 11:18:27'),
	(10, 'Encontrei um menino perdido', 2, 1, 8, '2005-07-19', 1, '2019-07-25 18:58:09', '2019-07-05 01:30:11', '2019-07-25 18:58:09'),
	(11, 'Encontrei um menino perdido', 2, 1, 9, '2005-07-19', 1, '2019-07-25 10:50:45', '2019-07-05 01:31:12', '2019-07-25 10:50:45'),
	(12, 'Encontrei um menino perdido', 2, 1, 10, '2005-07-19', 1, '2019-07-25 10:52:28', '2019-07-05 01:31:40', '2019-07-25 10:52:28'),
	(13, 'Encontrei um menino perdido', 2, 1, 11, '2005-07-19', 1, '2019-07-25 10:54:24', '2019-07-05 01:32:05', '2019-07-25 10:54:24'),
	(14, 'Está perdida', 2, 1, 12, '2005-07-19', 1, '2019-07-25 10:56:32', '2019-07-05 01:32:29', '2019-07-25 10:56:32'),
	(15, 'Está perdida', 2, 1, 13, '2005-07-19', 1, '2019-07-25 10:58:21', '2019-07-05 01:33:07', '2019-07-25 10:58:21'),
	(16, 'Está perdida', 2, 1, 14, '2005-07-19', 1, '2019-07-25 11:00:04', '2019-07-05 01:33:46', '2019-07-25 11:00:04'),
	(17, 'Está perdida', 2, 1, 15, '2005-07-19', 1, '2019-07-25 11:00:34', '2019-07-05 01:34:38', '2019-07-25 11:00:34'),
	(18, 'Está perdida', 2, 1, 16, '2005-07-19', 1, '2019-07-25 11:02:59', '2019-07-05 01:49:09', '2019-07-25 11:02:59'),
	(19, 'Está perdida', 2, 1, 17, '2005-07-19', 1, '2019-07-25 11:04:24', '2019-07-05 01:50:13', '2019-07-25 11:04:24'),
	(20, 'Está perdida', 2, 1, 18, '2005-07-19', 1, '2019-07-25 11:05:35', '2019-07-05 01:51:40', '2019-07-25 11:05:35'),
	(21, 'Está perdida', 2, 1, 19, '2005-07-19', 1, '2019-07-25 11:05:42', '2019-07-05 01:52:14', '2019-07-25 11:05:42'),
	(22, 'Está perdida', 2, 1, 20, '2005-07-19', 1, '2019-07-25 11:05:50', '2019-07-05 01:54:12', '2019-07-25 11:05:50'),
	(23, 'Está perdida', 2, 1, 21, '2005-07-19', 1, '2019-07-25 11:05:56', '2019-07-05 01:54:56', '2019-07-25 11:05:56'),
	(24, 'Está perdida', 2, 1, 22, '2005-07-19', 1, '2019-07-25 11:06:03', '2019-07-05 01:56:05', '2019-07-25 11:06:03'),
	(25, 'Está perdida', 2, 1, 23, '2005-07-19', 1, NULL, '2019-07-05 01:56:54', '2019-07-05 01:56:54'),
	(27, 'Está perdida', 2, 1, 25, '2005-07-19', 1, '2019-08-04 15:46:32', '2019-07-05 02:08:39', '2019-08-04 15:46:32'),
	(28, 'Encontrei um menino perdido', 2, 1, 26, '2005-07-19', 1, NULL, '2019-07-05 02:17:41', '2019-07-05 02:17:41'),
	(29, 'Encontrei um menino perdido', 2, 1, 27, '2005-07-19', 1, '2019-08-04 15:45:43', '2019-07-05 03:32:38', '2019-08-04 15:45:43'),
	(30, 'Encontrei um menino perdido', 2, 1, 28, '2021-07-19', 1, NULL, '2019-07-21 13:34:36', '2019-07-21 13:34:36'),
	(31, 'Está perdida', 2, 3, 53, '2011-09-19', 1, NULL, '2019-09-11 16:37:00', '2019-09-11 16:37:00'),
	(32, 'Está perdida', 2, 1, 54, '2012-09-19', 1, '2019-09-12 19:59:09', '2019-09-12 19:41:54', '2019-09-12 19:59:09'),
	(33, 'Está perdida', 2, 1, 57, '2012-09-19', 1, '2019-09-12 19:59:15', '2019-09-12 19:46:06', '2019-09-12 19:59:15'),
	(34, 'Está perdida', 2, 1, 58, '2012-09-19', 1, NULL, '2019-09-12 19:49:15', '2019-09-12 19:49:15'),
	(35, 'Está perdida', 2, 1, 59, '2012-09-19', 1, '2019-09-12 19:59:20', '2019-09-12 19:50:40', '2019-09-12 19:59:20'),
	(36, 'Está perdida', 2, 1, 60, '2012-09-19', 1, '2019-09-12 19:59:25', '2019-09-12 19:51:46', '2019-09-12 19:59:25'),
	(37, 'Está perdida', 2, 1, 61, '2012-09-19', 1, '2019-09-12 19:59:32', '2019-09-12 19:52:09', '2019-09-12 19:59:32'),
	(38, 'Está perdida', 2, 1, 62, '2012-09-19', 1, '2019-09-12 19:59:37', '2019-09-12 19:52:34', '2019-09-12 19:59:37'),
	(39, 'Está perdida', 2, 1, 63, '2012-09-19', 1, '2019-09-12 19:59:41', '2019-09-12 19:53:21', '2019-09-12 19:59:41'),
	(40, 'Está perdida', 2, 1, 64, '2012-09-19', 1, '2019-09-12 19:59:47', '2019-09-12 19:56:54', '2019-09-12 19:59:47'),
	(41, 'Está perdida', 2, 1, 65, '2012-09-19', 1, NULL, '2019-09-12 19:57:16', '2019-09-12 19:57:16'),
	(42, 'Está perdida', 2, 1, 66, '2012-09-19', 1, NULL, '2019-09-12 19:58:13', '2019-09-12 19:58:13'),
	(43, 'Está perdida', 2, 1, 67, '2012-09-19', 1, '2019-09-12 19:59:52', '2019-09-12 19:58:26', '2019-09-12 19:59:52'),
	(44, 'Está perdida', 2, 1, 68, '2012-09-19', 1, NULL, '2019-09-12 20:10:38', '2019-09-12 20:10:38'),
	(45, 'Está perdida', 2, 1, 69, '2012-09-19', 1, NULL, '2019-09-12 20:11:10', '2019-09-12 20:11:10'),
	(46, 'Está perdida', 2, 1, 70, '2012-09-19', 1, NULL, '2019-09-12 20:11:29', '2019-09-12 20:11:29'),
	(47, 'Está perdida', 2, 3, 75, '2012-09-19', 1, NULL, '2019-09-12 23:28:45', '2019-09-12 23:28:45'),
	(48, 'Está perdida', 2, 3, 76, '2012-09-19', 1, NULL, '2019-09-12 23:29:32', '2019-09-12 23:29:32'),
	(49, 'Está perdida', 2, 3, 77, '2012-09-19', 1, NULL, '2019-09-12 23:30:53', '2019-09-12 23:30:53'),
	(50, 'Está perdida', 2, 2, 78, '2001-10-19', 1, NULL, '2019-10-01 10:56:25', '2019-10-01 10:56:25'),
	(51, 'Está perdida', 2, 2, 79, '2001-10-19', 1, NULL, '2019-10-01 11:00:40', '2019-10-01 11:00:40'),
	(52, 'Está perdida', 2, 2, 80, '2001-10-19', 1, '2019-10-01 11:04:40', '2019-10-01 11:01:29', '2019-10-01 11:04:40'),
	(53, 'Está perdida', 2, 2, 81, '2001-10-19', 1, NULL, '2019-10-01 11:15:08', '2019-10-01 11:15:08'),
	(54, 'Está perdida', 2, 2, 82, '2001-10-19', 1, NULL, '2019-10-01 11:17:42', '2019-10-01 11:17:42'),
	(58, 'Está perdida', 2, 5, 86, '2002-10-19', 1, NULL, '2019-10-02 14:39:55', '2019-10-02 14:39:55'),
	(59, 'Está perdida', 2, 5, 87, '2002-10-19', 1, NULL, '2019-10-02 14:40:18', '2019-10-02 14:40:18'),
	(60, 'Está perdida', 2, 5, 88, '2002-10-19', 1, NULL, '2019-10-02 14:43:50', '2019-10-02 14:43:50'),
	(61, 'Está perdida', 2, 5, 89, '2002-10-19', 1, NULL, '2019-10-02 14:44:09', '2019-10-02 14:44:09'),
	(62, 'Está perdida', 2, 5, 90, '2002-10-19', 2, NULL, '2019-10-02 14:45:30', '2019-10-02 14:45:30');
/*!40000 ALTER TABLE `achados` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.achados_imagens
CREATE TABLE IF NOT EXISTS `achados_imagens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imagem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `achado_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `achados_imagens_achado_id_foreign` (`achado_id`),
  CONSTRAINT `achados_imagens_achado_id_foreign` FOREIGN KEY (`achado_id`) REFERENCES `achados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.achados_imagens: ~67 rows (approximately)
/*!40000 ALTER TABLE `achados_imagens` DISABLE KEYS */;
INSERT INTO `achados_imagens` (`id`, `imagem`, `achado_id`, `created_at`, `updated_at`) VALUES
	(1, '1562289309.JPG', 5, '2019-07-05 01:15:09', '2019-07-05 01:15:09'),
	(2, '1562289765.jpg', 8, '2019-07-05 01:22:45', '2019-07-05 01:22:45'),
	(3, '1562290169.jpg', 9, '2019-07-05 01:29:29', '2019-07-05 01:29:29'),
	(4, '1562290211.jpg', 10, '2019-07-05 01:30:11', '2019-07-05 01:30:11'),
	(5, '1562290272.jpg', 11, '2019-07-05 01:31:12', '2019-07-05 01:31:12'),
	(6, '1562290300.jpg', 12, '2019-07-05 01:31:40', '2019-07-05 01:31:40'),
	(7, '1562290325.jpg', 13, '2019-07-05 01:32:05', '2019-07-05 01:32:05'),
	(8, '1562290349.jpg', 14, '2019-07-05 01:32:29', '2019-07-05 01:32:29'),
	(9, '1562290387.jpg', 15, '2019-07-05 01:33:07', '2019-07-05 01:33:07'),
	(10, '1562290426.jpg', 16, '2019-07-05 01:33:46', '2019-07-05 01:33:46'),
	(11, '1562290478.jpg', 17, '2019-07-05 01:34:38', '2019-07-05 01:34:38'),
	(12, '1562291349.jpg', 18, '2019-07-05 01:49:09', '2019-07-05 01:49:09'),
	(13, '1562291413.jpg', 19, '2019-07-05 01:50:13', '2019-07-05 01:50:13'),
	(14, '1562291500.jpg', 20, '2019-07-05 01:51:40', '2019-07-05 01:51:40'),
	(15, '1562291534.jpg', 21, '2019-07-05 01:52:14', '2019-07-05 01:52:14'),
	(16, '1562291652.jpg', 22, '2019-07-05 01:54:12', '2019-07-05 01:54:12'),
	(17, '1562291696.jpg', 23, '2019-07-05 01:54:56', '2019-07-05 01:54:56'),
	(18, '1562291765.jpg', 24, '2019-07-05 01:56:05', '2019-07-05 01:56:05'),
	(19, '1562291815.jpg', 25, '2019-07-05 01:56:55', '2019-07-05 01:56:55'),
	(20, '1562292519.jpg', 27, '2019-07-05 02:08:39', '2019-07-05 02:08:39'),
	(21, '1562293061.jpg', 28, '2019-07-05 02:17:41', '2019-07-05 02:17:41'),
	(22, '1562297558.jpg', 29, '2019-07-05 03:32:38', '2019-07-05 03:32:38'),
	(23, '1563716076.jpg', 30, '2019-07-21 13:34:36', '2019-07-21 13:34:36'),
	(24, '15683173140.png', 32, '2019-09-12 19:41:54', '2019-09-12 19:41:54'),
	(25, '15683173141.png', 32, '2019-09-12 19:41:54', '2019-09-12 19:41:54'),
	(26, '15683173142.png', 32, '2019-09-12 19:41:54', '2019-09-12 19:41:54'),
	(27, '15683173143.png', 32, '2019-09-12 19:41:54', '2019-09-12 19:41:54'),
	(28, '15683175660.png', 33, '2019-09-12 19:46:06', '2019-09-12 19:46:06'),
	(29, '15683175661.png', 33, '2019-09-12 19:46:06', '2019-09-12 19:46:06'),
	(30, '15683175662.png', 33, '2019-09-12 19:46:06', '2019-09-12 19:46:06'),
	(31, '15683175663.png', 33, '2019-09-12 19:46:06', '2019-09-12 19:46:06'),
	(32, '01568317840.png', 35, '2019-09-12 19:50:40', '2019-09-12 19:50:40'),
	(33, '11568317840.png', 35, '2019-09-12 19:50:40', '2019-09-12 19:50:40'),
	(34, '21568317841.png', 35, '2019-09-12 19:50:41', '2019-09-12 19:50:41'),
	(35, '31568317841.png', 35, '2019-09-12 19:50:41', '2019-09-12 19:50:41'),
	(36, '01568317906.png', 36, '2019-09-12 19:51:46', '2019-09-12 19:51:46'),
	(37, '11568317906.png', 36, '2019-09-12 19:51:46', '2019-09-12 19:51:46'),
	(38, '21568317906.png', 36, '2019-09-12 19:51:46', '2019-09-12 19:51:46'),
	(39, '31568317906.png', 36, '2019-09-12 19:51:46', '2019-09-12 19:51:46'),
	(40, '1568317929.png', 37, '2019-09-12 19:52:09', '2019-09-12 19:52:09'),
	(41, '1568317929.png', 37, '2019-09-12 19:52:09', '2019-09-12 19:52:09'),
	(42, '1568317929.png', 37, '2019-09-12 19:52:09', '2019-09-12 19:52:09'),
	(43, '1568317929.png', 37, '2019-09-12 19:52:09', '2019-09-12 19:52:09'),
	(44, '1568317954.png', 38, '2019-09-12 19:52:34', '2019-09-12 19:52:34'),
	(45, '1568317954.png', 38, '2019-09-12 19:52:34', '2019-09-12 19:52:34'),
	(46, '1568317955.png', 38, '2019-09-12 19:52:35', '2019-09-12 19:52:35'),
	(47, '1568317955.png', 38, '2019-09-12 19:52:35', '2019-09-12 19:52:35'),
	(48, '15683180010.png', 39, '2019-09-12 19:53:21', '2019-09-12 19:53:21'),
	(49, '15683180011.png', 39, '2019-09-12 19:53:21', '2019-09-12 19:53:21'),
	(50, '15683180012.png', 39, '2019-09-12 19:53:21', '2019-09-12 19:53:21'),
	(51, '15683180013.png', 39, '2019-09-12 19:53:21', '2019-09-12 19:53:21'),
	(52, '15683182150.png', 40, '2019-09-12 19:56:55', '2019-09-12 19:56:55'),
	(53, '15683183060.png', 43, '2019-09-12 19:58:26', '2019-09-12 19:58:26'),
	(54, '15683183061.png', 43, '2019-09-12 19:58:26', '2019-09-12 19:58:26'),
	(55, '15683183062.png', 43, '2019-09-12 19:58:26', '2019-09-12 19:58:26'),
	(56, '15683183063.png', 43, '2019-09-12 19:58:26', '2019-09-12 19:58:26'),
	(57, '15683190890.png', 46, '2019-09-12 20:11:29', '2019-09-12 20:11:29'),
	(58, '15683190901.png', 46, '2019-09-12 20:11:30', '2019-09-12 20:11:30'),
	(59, '15683190902.png', 46, '2019-09-12 20:11:30', '2019-09-12 20:11:30'),
	(60, '15683190903.png', 46, '2019-09-12 20:11:30', '2019-09-12 20:11:30'),
	(61, '15683310530.png', 49, '2019-09-12 23:30:53', '2019-09-12 23:30:53'),
	(62, '15683310541.png', 49, '2019-09-12 23:30:54', '2019-09-12 23:30:54'),
	(63, '15699276890.jpg', 52, '2019-10-01 11:01:29', '2019-10-01 11:01:29'),
	(64, '15699276891.jpg', 52, '2019-10-01 11:01:29', '2019-10-01 11:01:29'),
	(65, '15699286620.jpg', 54, '2019-10-01 11:17:42', '2019-10-01 11:17:42'),
	(66, '15699286621.jpg', 54, '2019-10-01 11:17:42', '2019-10-01 11:17:42'),
	(67, '15700275300.jpg', 62, '2019-10-02 14:45:30', '2019-10-02 14:45:30');
/*!40000 ALTER TABLE `achados_imagens` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.animais_achadas
CREATE TABLE IF NOT EXISTS `animais_achadas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_animal_id` bigint(20) unsigned NOT NULL,
  `cor_pelo_id` bigint(20) unsigned NOT NULL,
  `raca_id` bigint(20) unsigned NOT NULL,
  `achado_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `animais_achadas_tipo_animal_id_foreign` (`tipo_animal_id`),
  KEY `animais_achadas_cor_pelo_id_foreign` (`cor_pelo_id`),
  KEY `animais_achadas_raca_id_foreign` (`raca_id`),
  KEY `animais_achadas_achado_id_foreign` (`achado_id`),
  CONSTRAINT `animais_achadas_achado_id_foreign` FOREIGN KEY (`achado_id`) REFERENCES `achados` (`id`) ON DELETE CASCADE,
  CONSTRAINT `animais_achadas_cor_pelo_id_foreign` FOREIGN KEY (`cor_pelo_id`) REFERENCES `cor_pelos` (`id`),
  CONSTRAINT `animais_achadas_raca_id_foreign` FOREIGN KEY (`raca_id`) REFERENCES `racas` (`id`),
  CONSTRAINT `animais_achadas_tipo_animal_id_foreign` FOREIGN KEY (`tipo_animal_id`) REFERENCES `tipo_animais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.animais_achadas: ~0 rows (approximately)
/*!40000 ALTER TABLE `animais_achadas` DISABLE KEYS */;
INSERT INTO `animais_achadas` (`id`, `tipo_animal_id`, `cor_pelo_id`, `raca_id`, `achado_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, 1, 54, '2019-10-01 11:17:42', '2019-10-01 11:17:42');
/*!40000 ALTER TABLE `animais_achadas` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.animais_perdidos
CREATE TABLE IF NOT EXISTS `animais_perdidos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_animal_id` bigint(20) unsigned NOT NULL,
  `cor_pelo_id` bigint(20) unsigned NOT NULL,
  `raca_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `animais_perdidos_tipo_animal_id_foreign` (`tipo_animal_id`),
  KEY `animais_perdidos_cor_pelo_id_foreign` (`cor_pelo_id`),
  KEY `animais_perdidos_raca_id_foreign` (`raca_id`),
  CONSTRAINT `animais_perdidos_cor_pelo_id_foreign` FOREIGN KEY (`cor_pelo_id`) REFERENCES `cor_pelos` (`id`),
  CONSTRAINT `animais_perdidos_raca_id_foreign` FOREIGN KEY (`raca_id`) REFERENCES `racas` (`id`),
  CONSTRAINT `animais_perdidos_tipo_animal_id_foreign` FOREIGN KEY (`tipo_animal_id`) REFERENCES `tipo_animais` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.animais_perdidos: ~0 rows (approximately)
/*!40000 ALTER TABLE `animais_perdidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `animais_perdidos` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.bairros
CREATE TABLE IF NOT EXISTS `bairros` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comuna_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bairros_comuna_id_foreign` (`comuna_id`),
  CONSTRAINT `bairros_comuna_id_foreign` FOREIGN KEY (`comuna_id`) REFERENCES `comunas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.bairros: ~0 rows (approximately)
/*!40000 ALTER TABLE `bairros` DISABLE KEYS */;
/*!40000 ALTER TABLE `bairros` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.carros_achados
CREATE TABLE IF NOT EXISTS `carros_achados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.carros_achados: ~0 rows (approximately)
/*!40000 ALTER TABLE `carros_achados` DISABLE KEYS */;
/*!40000 ALTER TABLE `carros_achados` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.categorias: ~5 rows (approximately)
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`id`, `designacao`, `descricao`, `created_at`, `updated_at`) VALUES
	(1, 'Pessoa', 'Relacionado a pessoa perdida ou achada', NULL, NULL),
	(2, 'Animal', NULL, '2019-08-13 17:32:00', '2019-08-13 17:32:00'),
	(3, 'Documento', NULL, '2019-08-13 17:32:54', '2019-08-13 17:32:54'),
	(4, 'Carro', NULL, NULL, NULL),
	(5, 'Objectos em geral', NULL, NULL, NULL);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.comunas
CREATE TABLE IF NOT EXISTS `comunas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comunas_municipio_id_foreign` (`municipio_id`),
  CONSTRAINT `comunas_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.comunas: ~21 rows (approximately)
/*!40000 ALTER TABLE `comunas` DISABLE KEYS */;
INSERT INTO `comunas` (`id`, `designacao`, `municipio_id`, `created_at`, `updated_at`) VALUES
	(3, 'Forte de Sta. Rita', 3, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(4, 'Lucira', 3, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(5, 'Bentiaba', 3, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(6, 'Comuna Kiende', 7, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(7, 'Balombo', 7, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(8, 'Arimba', 32, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(9, 'Cacula', 32, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(10, 'Malembo', 38, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(11, 'Cueio', 47, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(12, 'Caiundo', 47, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(13, 'Quimbamba', 57, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(14, 'Luena', 57, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(15, 'Cahama', 72, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(16, 'Saurimo', 81, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(17, 'Maquela do Zombo', 96, '2019-07-04 19:20:19', '2019-07-04 19:20:19'),
	(18, 'Andulo', 98, '2019-07-04 19:20:20', '2019-07-04 19:20:20'),
	(19, 'Ambriz', 107, '2019-07-04 19:20:20', '2019-07-04 19:20:20'),
	(20, 'Bela Vista', 107, '2019-07-04 19:20:20', '2019-07-04 19:20:20'),
	(21, 'Cambulo', 113, '2019-07-04 19:20:20', '2019-07-04 19:20:20'),
	(22, 'Amboim', 123, '2019-07-04 19:20:20', '2019-07-04 19:20:20'),
	(23, 'Bailundo', 149, '2019-07-04 19:20:20', '2019-07-04 19:20:20');
/*!40000 ALTER TABLE `comunas` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.cores
CREATE TABLE IF NOT EXISTS `cores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.cores: ~7 rows (approximately)
/*!40000 ALTER TABLE `cores` DISABLE KEYS */;
INSERT INTO `cores` (`id`, `designacao`) VALUES
	(1, 'Azul'),
	(2, 'Branca'),
	(3, 'Amarela'),
	(4, 'Preta'),
	(5, 'Cizenta'),
	(6, 'Verde'),
	(7, 'Rosa');
/*!40000 ALTER TABLE `cores` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.cor_pelos
CREATE TABLE IF NOT EXISTS `cor_pelos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.cor_pelos: ~3 rows (approximately)
/*!40000 ALTER TABLE `cor_pelos` DISABLE KEYS */;
INSERT INTO `cor_pelos` (`id`, `designacao`, `created_at`, `updated_at`) VALUES
	(1, 'Branca', NULL, NULL),
	(2, 'Preta', NULL, NULL),
	(3, 'Castanha', NULL, NULL);
/*!40000 ALTER TABLE `cor_pelos` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.descricaos
CREATE TABLE IF NOT EXISTS `descricaos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.descricaos: ~0 rows (approximately)
/*!40000 ALTER TABLE `descricaos` DISABLE KEYS */;
INSERT INTO `descricaos` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
	(1, 'Desapareceu de casa o menino de ', NULL, NULL);
/*!40000 ALTER TABLE `descricaos` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.documentos_achados
CREATE TABLE IF NOT EXISTS `documentos_achados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_documento_id` bigint(20) unsigned NOT NULL,
  `achado_id` bigint(20) unsigned DEFAULT NULL,
  `numero` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_emissao` date DEFAULT NULL,
  `data_expiracao` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documento_achado_tipo_documento_id_foreign` (`tipo_documento_id`),
  KEY `documentos_achados_achado_id_foreign` (`achado_id`),
  CONSTRAINT `documento_achado_tipo_documento_id_foreign` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documentos` (`id`),
  CONSTRAINT `documentos_achados_achado_id_foreign` FOREIGN KEY (`achado_id`) REFERENCES `achados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.documentos_achados: ~0 rows (approximately)
/*!40000 ALTER TABLE `documentos_achados` DISABLE KEYS */;
INSERT INTO `documentos_achados` (`id`, `tipo_documento_id`, `achado_id`, `numero`, `data_emissao`, `data_expiracao`, `created_at`, `updated_at`) VALUES
	(1, 2, 49, '23456789', '2011-09-11', '2019-09-29', '2019-09-12 23:30:53', '2019-09-12 23:30:53');
/*!40000 ALTER TABLE `documentos_achados` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.documentos_perdidos
CREATE TABLE IF NOT EXISTS `documentos_perdidos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_emissao` date NOT NULL,
  `entidade_emissora_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentos_perdidos_entidade_emissora_id_foreign` (`entidade_emissora_id`),
  CONSTRAINT `documentos_perdidos_entidade_emissora_id_foreign` FOREIGN KEY (`entidade_emissora_id`) REFERENCES `entidade_emissoras` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.documentos_perdidos: ~0 rows (approximately)
/*!40000 ALTER TABLE `documentos_perdidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos_perdidos` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.entidade_emissoras
CREATE TABLE IF NOT EXISTS `entidade_emissoras` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.entidade_emissoras: ~4 rows (approximately)
/*!40000 ALTER TABLE `entidade_emissoras` DISABLE KEYS */;
INSERT INTO `entidade_emissoras` (`id`, `designacao`, `created_at`, `updated_at`) VALUES
	(1, 'Arquivo de Identificação civil', NULL, NULL),
	(2, 'Direcção Nacional de Viação e Transito', NULL, NULL),
	(3, 'Serviço de Emigração Estrangeira', NULL, NULL),
	(4, 'Ministerio da Educação', NULL, NULL);
/*!40000 ALTER TABLE `entidade_emissoras` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.estados
CREATE TABLE IF NOT EXISTS `estados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.estados: ~3 rows (approximately)
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` (`id`, `designacao`, `descricao`, `created_at`, `updated_at`) VALUES
	(1, 'Pendente', 'Aguardando a confirmaçao da polícia ', NULL, NULL),
	(2, 'Aceite', 'Confirmado pela polícia', NULL, NULL),
	(3, 'Entregue', 'Intem entregue ao destinatário', NULL, NULL);
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.generos
CREATE TABLE IF NOT EXISTS `generos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.generos: ~3 rows (approximately)
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` (`id`, `designacao`) VALUES
	(1, 'Masculino'),
	(2, 'Feminina'),
	(3, 'Outro');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.localizacoes
CREATE TABLE IF NOT EXISTS `localizacoes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bairro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posto_policial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comuna_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `localizacoes_comuna_id_foreign` (`comuna_id`),
  CONSTRAINT `localizacoes_comuna_id_foreign` FOREIGN KEY (`comuna_id`) REFERENCES `comunas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.localizacoes: ~90 rows (approximately)
/*!40000 ALTER TABLE `localizacoes` DISABLE KEYS */;
INSERT INTO `localizacoes` (`id`, `bairro`, `rua`, `posto_policial`, `comuna_id`, `created_at`, `updated_at`) VALUES
	(1, '0', '22', '1', 6, '2019-07-05 01:01:08', '2019-07-05 01:01:08'),
	(2, '0', '22', '1', 6, '2019-07-05 01:13:59', '2019-07-05 01:13:59'),
	(3, '0', '22', '1', 6, '2019-07-05 01:15:09', '2019-07-05 01:15:09'),
	(4, '0', '22', '1', 6, '2019-07-05 01:16:13', '2019-07-05 01:16:13'),
	(5, '0', '22', '1', 6, '2019-07-05 01:16:39', '2019-07-05 01:16:39'),
	(6, '0', '22', '1', 6, '2019-07-05 01:22:45', '2019-07-05 01:22:45'),
	(7, '0', '22', '1', 6, '2019-07-05 01:29:28', '2019-07-05 01:29:28'),
	(8, '0', '22', '1', 6, '2019-07-05 01:30:11', '2019-07-05 01:30:11'),
	(9, '0', '22', '1', 6, '2019-07-05 01:31:12', '2019-07-05 01:31:12'),
	(10, '0', '22', '1', 6, '2019-07-05 01:31:40', '2019-07-05 01:31:40'),
	(11, '0', '22', '1', 6, '2019-07-05 01:32:04', '2019-07-05 01:32:04'),
	(12, '0', '22', '1', 6, '2019-07-05 01:32:29', '2019-07-05 01:32:29'),
	(13, '0', '22', '1', 6, '2019-07-05 01:33:07', '2019-07-05 01:33:07'),
	(14, '0', '22', '1', 6, '2019-07-05 01:33:46', '2019-07-05 01:33:46'),
	(15, '0', '22', '1', 6, '2019-07-05 01:34:38', '2019-07-05 01:34:38'),
	(16, '0', '22', '1', 6, '2019-07-05 01:49:09', '2019-07-05 01:49:09'),
	(17, '0', '22', '1', 6, '2019-07-05 01:50:12', '2019-07-05 01:50:12'),
	(18, '0', '22', '1', 6, '2019-07-05 01:51:40', '2019-07-05 01:51:40'),
	(19, '0', '22', '1', 6, '2019-07-05 01:52:14', '2019-07-05 01:52:14'),
	(20, '0', '22', '1', 6, '2019-07-05 01:54:12', '2019-07-05 01:54:12'),
	(21, '0', '22', '1', 6, '2019-07-05 01:54:56', '2019-07-05 01:54:56'),
	(22, '0', '22', '1', 6, '2019-07-05 01:56:05', '2019-07-05 01:56:05'),
	(23, '0', '22', '1', 6, '2019-07-05 01:56:54', '2019-07-05 01:56:54'),
	(24, '0', '', '0', 7, '2019-07-05 02:07:36', '2019-07-05 02:07:36'),
	(25, '0', '22', '1', 7, '2019-07-05 02:08:39', '2019-07-05 02:08:39'),
	(26, '0', '555', '1', 6, '2019-07-05 02:17:41', '2019-07-05 02:17:41'),
	(27, '0', 'Ruas das rabudas', '2', 7, '2019-07-05 03:32:38', '2019-07-05 03:32:38'),
	(28, '0', '22', '1', 22, '2019-07-21 13:34:36', '2019-07-21 13:34:36'),
	(29, '0', '22', '1', 13, '2019-08-05 02:29:09', '2019-08-05 02:29:09'),
	(30, '0', '22', '1', 13, '2019-08-05 02:32:47', '2019-08-05 02:32:47'),
	(31, '0', '22', '1', 13, '2019-08-05 02:44:40', '2019-08-05 02:44:40'),
	(32, '0', '22', '1', 13, '2019-08-05 02:47:08', '2019-08-05 02:47:08'),
	(33, '0', '22', '1', 13, '2019-08-05 02:51:30', '2019-08-05 02:51:30'),
	(34, '0', '22', '1', 10, '2019-08-08 11:45:27', '2019-08-08 11:45:27'),
	(35, '0', '22', '1', 10, '2019-08-08 11:48:35', '2019-08-08 11:48:35'),
	(36, '0', '22', '1', 10, '2019-08-08 11:48:41', '2019-08-08 11:48:41'),
	(37, '0', '22', '1', 10, '2019-08-08 11:48:47', '2019-08-08 11:48:47'),
	(38, '0', '22', '1', 10, '2019-08-08 11:48:57', '2019-08-08 11:48:57'),
	(39, '0', '22', '1', 10, '2019-08-08 11:55:39', '2019-08-08 11:55:39'),
	(40, '0', '22', '1', 10, '2019-08-08 11:57:21', '2019-08-08 11:57:21'),
	(41, '0', '22', '1', 10, '2019-08-08 11:58:55', '2019-08-08 11:58:55'),
	(42, '0', '22', '1', 10, '2019-08-08 12:00:45', '2019-08-08 12:00:45'),
	(43, '0', '22', '1', 10, '2019-08-08 12:00:55', '2019-08-08 12:00:55'),
	(44, '0', '22', '1', 10, '2019-08-08 12:14:36', '2019-08-08 12:14:36'),
	(45, '0', '22', '1', 10, '2019-08-08 12:37:00', '2019-08-08 12:37:00'),
	(46, '0', '22', '1', 10, '2019-08-08 12:44:31', '2019-08-08 12:44:31'),
	(47, '0', '22', '1', 10, '2019-08-08 12:44:37', '2019-08-08 12:44:37'),
	(48, '0', '22', '1', 10, '2019-08-08 12:44:57', '2019-08-08 12:44:57'),
	(49, '0', '22', '1', 10, '2019-08-08 12:45:59', '2019-08-08 12:45:59'),
	(50, '0', '22', '1', 10, '2019-08-08 12:48:07', '2019-08-08 12:48:07'),
	(51, '0', '22', '1', 10, '2019-08-08 12:56:17', '2019-08-08 12:56:17'),
	(52, 'Ndembo', '22', NULL, 6, '2019-08-08 15:08:15', '2019-08-08 15:08:15'),
	(53, '0', '23', '0', 17, '2019-09-11 16:37:00', '2019-09-11 16:37:00'),
	(54, '0', '34', '0', 17, '2019-09-12 19:41:54', '2019-09-12 19:41:54'),
	(55, '0', '34', '0', 17, '2019-09-12 19:43:05', '2019-09-12 19:43:05'),
	(56, '0', '34', '0', 17, '2019-09-12 19:43:49', '2019-09-12 19:43:49'),
	(57, '0', '34', '0', 17, '2019-09-12 19:46:06', '2019-09-12 19:46:06'),
	(58, '0', '34', '0', 17, '2019-09-12 19:49:15', '2019-09-12 19:49:15'),
	(59, '0', '34', '0', 17, '2019-09-12 19:50:40', '2019-09-12 19:50:40'),
	(60, '0', '34', '0', 17, '2019-09-12 19:51:46', '2019-09-12 19:51:46'),
	(61, '0', '34', '0', 17, '2019-09-12 19:52:09', '2019-09-12 19:52:09'),
	(62, '0', '34', '0', 17, '2019-09-12 19:52:34', '2019-09-12 19:52:34'),
	(63, '0', '34', '0', 17, '2019-09-12 19:53:21', '2019-09-12 19:53:21'),
	(64, '0', '34', '0', 17, '2019-09-12 19:56:54', '2019-09-12 19:56:54'),
	(65, '0', '34', '0', 17, '2019-09-12 19:57:16', '2019-09-12 19:57:16'),
	(66, '0', '34', '0', 17, '2019-09-12 19:58:12', '2019-09-12 19:58:12'),
	(67, '0', '34', '0', 17, '2019-09-12 19:58:26', '2019-09-12 19:58:26'),
	(68, '0', '89', '0', 17, '2019-09-12 20:10:38', '2019-09-12 20:10:38'),
	(69, '0', '89', '0', 17, '2019-09-12 20:11:09', '2019-09-12 20:11:09'),
	(70, '0', '89', '0', 17, '2019-09-12 20:11:29', '2019-09-12 20:11:29'),
	(71, '0', '22', '0', 6, '2019-09-12 22:54:51', '2019-09-12 22:54:51'),
	(72, '0', '22', '0', 6, '2019-09-12 22:55:16', '2019-09-12 22:55:16'),
	(73, '0', '22', '0', 6, '2019-09-12 23:22:51', '2019-09-12 23:22:51'),
	(74, '0', '22', '0', 6, '2019-09-12 23:26:07', '2019-09-12 23:26:07'),
	(75, '0', '22', '0', 6, '2019-09-12 23:28:45', '2019-09-12 23:28:45'),
	(76, '0', '22', '0', 6, '2019-09-12 23:29:32', '2019-09-12 23:29:32'),
	(77, '0', '22', '0', 6, '2019-09-12 23:30:53', '2019-09-12 23:30:53'),
	(78, '0', '22', '0', 19, '2019-10-01 10:56:25', '2019-10-01 10:56:25'),
	(79, '0', '22', '0', 19, '2019-10-01 11:00:40', '2019-10-01 11:00:40'),
	(80, '0', '22', '0', 19, '2019-10-01 11:01:29', '2019-10-01 11:01:29'),
	(81, '0', '22', '0', 19, '2019-10-01 11:15:08', '2019-10-01 11:15:08'),
	(82, '0', '22', '0', 19, '2019-10-01 11:17:42', '2019-10-01 11:17:42'),
	(83, '0', '4444', '0', 20, '2019-10-02 14:04:07', '2019-10-02 14:04:07'),
	(84, '0', '4444', '0', 20, '2019-10-02 14:36:15', '2019-10-02 14:36:15'),
	(85, '0', '4444', '0', 20, '2019-10-02 14:37:56', '2019-10-02 14:37:56'),
	(86, '0', '4444', '0', 20, '2019-10-02 14:39:55', '2019-10-02 14:39:55'),
	(87, '0', '4444', '0', 20, '2019-10-02 14:40:18', '2019-10-02 14:40:18'),
	(88, '0', '4444', '0', 20, '2019-10-02 14:43:50', '2019-10-02 14:43:50'),
	(89, '0', '4444', '0', 20, '2019-10-02 14:44:08', '2019-10-02 14:44:08'),
	(90, '0', '4444', '0', 20, '2019-10-02 14:45:30', '2019-10-02 14:45:30');
/*!40000 ALTER TABLE `localizacoes` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.migrations: ~36 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2013_06_23_161706_create_tipo_utilizadores_table', 1),
	(2, '2014_10_12_000000_create_users_table', 1),
	(3, '2014_10_12_100000_create_password_resets_table', 1),
	(4, '2017_06_23_141913_create_provincias_table', 1),
	(5, '2017_06_23_142000_create_municipios_table', 1),
	(6, '2017_06_23_142228_create_comunas_table', 1),
	(7, '2017_06_23_142253_create_bairros_table', 1),
	(8, '2017_06_23_142313_create_ruas_table', 1),
	(9, '2018_06_23_140304_create_estados_table', 1),
	(11, '2019_06_19_003826_create_categorias_table', 1),
	(12, '2019_06_21_234548_create_achados_table', 1),
	(13, '2019_06_23_144600_create_achados_imagens_table', 1),
	(14, '2019_06_23_145347_create_pessoas_achadas_table', 1),
	(18, '2016_06_23_210756_create_racas_table', 3),
	(19, '2016_06_23_210832_create_cor_pelos_table', 3),
	(20, '2018_06_23_210720_create_tipo_animals_table', 3),
	(21, '2017_06_23_210720_create_tipo_animals_table', 4),
	(22, '2019_06_23_203705_create_animais_perdidos_table', 4),
	(23, '2018_06_23_213038_create_entidade_emissoras_table', 5),
	(24, '2016_06_23_213038_create_entidade_emissoras_table', 6),
	(25, '2019_06_23_203800_create_documentos_perdidos_table', 6),
	(27, '2016_06_23_183851_create_perdidos_table', 7),
	(28, '2019_06_23_203626_create_pessoas_perdidas_table', 7),
	(29, '2018_06_23_140350_create_localizacaos_table', 8),
	(30, '2019_06_30_102018_create_animais_achadas_table', 8),
	(31, '2019_06_30_102311_create_documentos_achados_table', 8),
	(32, '2019_06_30_102341_create_carros_achados_table', 8),
	(33, '2019_06_30_102527_create_objectos_achados_table', 8),
	(34, '2019_06_30_102552_create_objectos_perdidos_table', 8),
	(35, '2019_08_04_181200_create_titulos_table', 9),
	(36, '2019_08_08_120729_create_perdidos_imagens_table', 10),
	(37, '2016_06_01_000001_create_oauth_auth_codes_table', 11),
	(38, '2016_06_01_000002_create_oauth_access_tokens_table', 11),
	(39, '2016_06_01_000003_create_oauth_refresh_tokens_table', 11),
	(40, '2016_06_01_000004_create_oauth_clients_table', 11),
	(41, '2016_06_01_000005_create_oauth_personal_access_clients_table', 11);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.municipios
CREATE TABLE IF NOT EXISTS `municipios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `municipios_provincia_id_foreign` (`provincia_id`),
  CONSTRAINT `municipios_provincia_id_foreign` FOREIGN KEY (`provincia_id`) REFERENCES `provincias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.municipios: ~155 rows (approximately)
/*!40000 ALTER TABLE `municipios` DISABLE KEYS */;
INSERT INTO `municipios` (`id`, `designacao`, `provincia_id`, `created_at`, `updated_at`) VALUES
	(1, 'Bibala', 16, '2019-07-04 19:19:53', '2019-07-04 19:19:53'),
	(2, 'Camulo', 16, '2019-07-04 19:19:53', '2019-07-04 19:19:53'),
	(3, 'Namibe', 16, '2019-07-04 19:19:53', '2019-07-04 19:19:53'),
	(4, 'Tômbua', 16, '2019-07-04 19:19:53', '2019-07-04 19:19:53'),
	(5, 'Virei', 16, '2019-07-04 19:19:53', '2019-07-04 19:19:53'),
	(6, 'Cuimba', 18, '2019-07-04 19:19:53', '2019-07-04 19:19:53'),
	(7, 'Mbanza Kongo', 18, '2019-07-04 19:19:53', '2019-07-04 19:19:53'),
	(8, 'Noqui', 18, '2019-07-04 19:19:53', '2019-07-04 19:19:53'),
	(9, 'N\'Zeto', 18, '2019-07-04 19:19:53', '2019-07-04 19:19:53'),
	(10, 'Soyo', 18, '2019-07-04 19:19:53', '2019-07-04 19:19:53'),
	(11, 'Tomboco', 2, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(12, 'Balombo', 2, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(13, 'Baía Farta', 2, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(14, 'Benguela', 2, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(15, 'Bocoio', 2, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(16, 'Caimbambo', 2, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(17, 'Catumbela', 2, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(18, 'Chongoroi', 2, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(19, 'Cubal', 2, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(20, 'Ganda', 2, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(21, 'Lobito', 2, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(22, 'Caconda', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(23, 'Cacula', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(24, 'Caluquembe', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(25, 'Chiange', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(26, 'Chibia', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(27, 'Chicomba', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(28, 'Chipindo', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(29, 'Humpata', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(30, 'Jamba', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(31, 'Kuvango', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(32, 'Lubango', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(33, 'Matala', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(34, 'Quilengues', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(35, 'Quipungo', 7, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(36, 'Belize', 4, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(37, 'Buco-Zau', 4, '2019-07-04 19:19:54', '2019-07-04 19:19:54'),
	(38, 'Cabinda', 4, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(39, 'Cacongo', 4, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(40, 'Calai', 8, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(41, 'Cuangar', 8, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(42, 'Cuchi', 8, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(43, 'Cuito Cuanavale', 8, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(44, 'Dirico', 8, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(45, 'Longa', 8, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(46, 'Mavinga', 8, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(47, 'Menongue', 8, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(48, 'Rivungo', 8, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(49, 'Cacuso', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(50, 'Calandula', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(51, 'Cambundi-Catembo', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(52, 'Cangandala', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(53, 'Caombo', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(54, 'Cuaba Nzogo', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(55, 'Cunda-Diaza', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(56, 'Luquembo', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(57, 'Malange', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(58, 'Marimba', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(59, 'Massango', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(60, 'Caculama-Mucari', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(61, 'Quela', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(62, 'Quirima', 14, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(63, 'Alto Zambeze', 15, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(64, 'Bundas', 15, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(65, 'Camanongue', 15, '2019-07-04 19:19:55', '2019-07-04 19:19:55'),
	(66, 'Cameia', 15, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(67, 'Luau', 15, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(68, 'Lucano', 15, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(69, 'Luchazes', 15, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(70, 'Léua', 15, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(71, 'Moxico', 15, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(72, 'Cahama', 5, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(73, 'Cuanhama', 5, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(74, 'Curoca', 5, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(75, 'Cuvelay', 5, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(76, 'Namacunde', 5, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(77, 'Ombadja', 5, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(78, 'Cacolo', 13, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(79, 'Dala', 13, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(80, 'Muconda', 13, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(81, 'Saurimo', 13, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(82, 'Alto Cauale', 17, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(83, 'Ambuíla', 17, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(84, 'Bembe', 17, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(85, 'Buengas', 17, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(86, 'Bungo', 17, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(87, 'Damba', 17, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(88, 'Macocola', 17, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(89, 'Mucaba', 17, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(90, 'Negage', 17, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(91, 'Puri', 17, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(92, 'Quimbele', 17, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(93, 'Quitexe', 17, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(94, 'Sanza Pombo', 17, '2019-07-04 19:19:56', '2019-07-04 19:19:56'),
	(95, 'Songo', 17, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(96, 'Uíge', 17, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(97, 'Maquela do Zombo', 17, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(98, 'Andulo', 3, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(99, 'Camacupa', 3, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(100, 'Catabola', 3, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(101, 'Chinguar', 3, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(102, 'Chitembo', 3, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(103, 'Cuemba', 3, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(104, 'Cunhinga', 3, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(105, 'Kuito', 3, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(106, 'Nharea', 3, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(107, 'Ambriz', 1, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(108, 'Dande', 1, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(109, 'Dembos', 1, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(110, 'Bula Atumba', 1, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(111, 'Nambuangongo', 1, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(112, 'Pango Aluquêm', 1, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(113, 'Cambulo', 12, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(114, 'Capenda-Camulemba', 12, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(115, 'Caungula', 12, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(116, 'Chitato (Tchitato)', 12, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(117, 'Cuango', 12, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(118, 'Cuilo', 12, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(119, 'Lóvua', 12, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(120, 'Lubalo', 12, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(121, 'Lucapa', 12, '2019-07-04 19:19:57', '2019-07-04 19:19:57'),
	(122, 'Xá Muteba', 12, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(123, 'Amboim', 10, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(124, 'Cassongue', 10, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(125, 'Conda', 10, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(126, 'Ebo', 10, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(127, 'Libolo', 10, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(128, 'Mussende', 10, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(129, 'Porto Amboim', 10, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(130, 'Quibala', 10, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(131, 'Quilenda', 10, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(132, 'Seles', 10, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(133, 'Sumbe', 10, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(134, 'Waku Kungo', 10, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(135, 'Ambaca', 9, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(136, 'Banga', 9, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(137, 'Bolongongo', 9, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(138, 'Cambambe', 9, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(139, 'Cazengo', 9, '2019-07-04 19:19:58', '2019-07-04 19:19:58'),
	(140, 'Golungo Alto', 9, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(141, 'Gonguembo', 9, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(142, 'Lucala', 9, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(143, 'Quiculungo', 9, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(144, 'Samba Caju', 9, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(145, 'Bailundo', 6, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(146, 'Catchiungo', 6, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(147, 'Caála', 6, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(148, 'Ekunha', 6, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(149, 'Huambo', 6, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(150, 'Londuimbale', 6, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(151, 'Longongo', 6, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(152, 'Mungo', 6, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(153, 'Tchicala-Tcholoanga', 6, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(154, 'Tchindjenje', 6, '2019-07-04 19:19:59', '2019-07-04 19:19:59'),
	(155, 'Ucuma', 6, '2019-07-04 19:19:59', '2019-07-04 19:19:59');
/*!40000 ALTER TABLE `municipios` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utilizador_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_utilizador_id_index` (`utilizador_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.oauth_access_tokens: ~5 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `utilizador_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('0873da2413bdc94b629da3b721141121461895d3bf0986d88d912a2d8f367177207c7b4bf55471a7', 1, 2, NULL, '[]', 0, '2019-10-10 01:50:38', '2019-10-10 01:50:38', '2020-10-10 01:50:38'),
	('1b246c6c1896c0882b4e89b47447ba79d2aa5419ddfe02d7aaac0d511cc2fd5dc536990d855d9223', 1, 2, NULL, '[]', 0, '2019-10-02 20:44:30', '2019-10-02 20:44:30', '2020-10-02 20:44:30'),
	('d9ae36849fb0a3801b58ae87aed136541b9a114d067eb8418c147d8ea53cc323534cf40186dc2a71', 3, 3, NULL, '["*"]', 0, '2019-12-05 17:43:30', '2019-12-05 17:43:30', '2020-12-05 16:43:30'),
	('faf33e8656fb74ee271a0d424a7c6eb7d8cb65bcebd2208aaba375c0046e4fa6de7345fe416959b9', 1, 2, NULL, '[]', 0, '2019-10-10 01:49:06', '2019-10-10 01:49:06', '2020-10-10 01:49:06'),
	('fbedd388ea73db9ac3188b4bb63f5e0311594ac1378785cda2dba3d24756b9df208b383851b20420', 1, 2, NULL, '[]', 0, '2019-10-10 02:00:16', '2019-10-10 02:00:16', '2020-10-10 02:00:16');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utilizador_id` bigint(20) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.oauth_auth_codes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `utilizador_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_utilizador_id_index` (`utilizador_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.oauth_clients: ~3 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `utilizador_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Perdidos-Achados Personal Access Client', 'p1NL7qtRWliSfAeZItNsjHEgmOLbOgw6fLWt1Bbp', 'http://localhost', 1, 0, 0, '2019-10-02 19:57:22', '2019-10-02 19:57:22'),
	(2, NULL, 'Perdidos-Achados Password Grant Client', 'Qgr8ICT8TfH2DgLnMlHeG7l8IrhPa6y7Ohl0po5D', 'http://localhost', 0, 1, 0, '2019-10-02 19:57:22', '2019-10-02 19:57:22'),
	(3, NULL, '12345678', 'FgdNhqNruAgSS1WYoG8iyc5DysEYfkrs5cPG2V6S', 'http://localhost', 0, 1, 0, '2019-10-10 01:41:52', '2019-10-10 01:41:52');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.oauth_personal_access_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2019-10-02 19:57:22', '2019-10-02 19:57:22');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.oauth_refresh_tokens: ~5 rows (approximately)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
	('41414979d344d9bef75dddad0b7517457ba9aa4ea1735a1e29f5b92254d80c9ae871868c950b8fbf', 'd9ae36849fb0a3801b58ae87aed136541b9a114d067eb8418c147d8ea53cc323534cf40186dc2a71', 0, '2020-12-05 16:43:30'),
	('8b525ac84c9d0ccd53ff0d05ed1bd103863e06c62770130120747845c6115f55e0cbadbf0b06ee65', '0873da2413bdc94b629da3b721141121461895d3bf0986d88d912a2d8f367177207c7b4bf55471a7', 0, '2020-10-10 01:50:38'),
	('aaa803c46d3868bc799179b2c314e7c6c062b9f6018ade9b2c0114749a40050d802e2e81bfee3063', 'fbedd388ea73db9ac3188b4bb63f5e0311594ac1378785cda2dba3d24756b9df208b383851b20420', 0, '2020-10-10 02:00:16'),
	('cf1a90cec7412dd09b3de064d0556f819dd10a4bda1b3254dbfd2430915564b9f2a93dffe765853e', 'faf33e8656fb74ee271a0d424a7c6eb7d8cb65bcebd2208aaba375c0046e4fa6de7345fe416959b9', 0, '2020-10-10 01:49:06'),
	('dfc9bb05f1e627283eb8e0f16c815bbe2815680f02e809d046e28c220a20c36f7075019ed868fc8b', '1b246c6c1896c0882b4e89b47447ba79d2aa5419ddfe02d7aaac0d511cc2fd5dc536990d855d9223', 0, '2020-10-02 20:44:30');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.objectos_achados
CREATE TABLE IF NOT EXISTS `objectos_achados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cor_id` bigint(20) unsigned NOT NULL,
  `achado_id` bigint(20) unsigned NOT NULL,
  `designacao` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descricao` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `objectos_achados_cor_id_foreign` (`cor_id`),
  KEY `objectos_achados_achado_id_foreign` (`achado_id`),
  CONSTRAINT `objectos_achados_achado_id_foreign` FOREIGN KEY (`achado_id`) REFERENCES `achados` (`id`),
  CONSTRAINT `objectos_achados_cor_id_foreign` FOREIGN KEY (`cor_id`) REFERENCES `cores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.objectos_achados: ~0 rows (approximately)
/*!40000 ALTER TABLE `objectos_achados` DISABLE KEYS */;
INSERT INTO `objectos_achados` (`id`, `cor_id`, `achado_id`, `designacao`, `descricao`, `created_at`, `updated_at`) VALUES
	(1, 1, 62, 'Sapato', 'Numero 42, encontrei na escola.', '2019-10-02 14:45:30', '2019-10-02 14:45:30');
/*!40000 ALTER TABLE `objectos_achados` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.objectos_perdidos
CREATE TABLE IF NOT EXISTS `objectos_perdidos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.objectos_perdidos: ~0 rows (approximately)
/*!40000 ALTER TABLE `objectos_perdidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `objectos_perdidos` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.perdidos
CREATE TABLE IF NOT EXISTS `perdidos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descricao_id` bigint(20) unsigned NOT NULL,
  `estado_id` bigint(20) unsigned NOT NULL,
  `categoria_id` bigint(20) unsigned NOT NULL,
  `localizacao_id` bigint(20) unsigned NOT NULL,
  `data` date NOT NULL,
  `utilizador_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `perdidos_estado_id_foreign` (`estado_id`),
  KEY `perdidos_categoria_id_foreign` (`categoria_id`),
  KEY `perdidos_utilizador_id_foreign` (`utilizador_id`),
  KEY `perdidos_localizacao_id_foreign` (`localizacao_id`),
  KEY `FK_perdidos_descricaos` (`descricao_id`),
  CONSTRAINT `FK_perdidos_descricaos` FOREIGN KEY (`descricao_id`) REFERENCES `descricaos` (`id`),
  CONSTRAINT `perdidos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `perdidos_estado_id_foreign` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`),
  CONSTRAINT `perdidos_localizacao_id_foreign` FOREIGN KEY (`localizacao_id`) REFERENCES `localizacoes` (`id`),
  CONSTRAINT `perdidos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `utilizadores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.perdidos: ~8 rows (approximately)
/*!40000 ALTER TABLE `perdidos` DISABLE KEYS */;
INSERT INTO `perdidos` (`id`, `descricao_id`, `estado_id`, `categoria_id`, `localizacao_id`, `data`, `utilizador_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, 1, 45, '2008-08-19', 1, '2019-08-08 14:36:47', '2019-08-08 12:37:00', '2019-08-08 14:36:47'),
	(2, 1, 2, 1, 46, '2008-08-19', 1, '2019-08-08 14:37:13', '2019-08-08 12:44:31', '2019-08-08 14:37:13'),
	(3, 1, 2, 1, 47, '2008-08-19', 1, '2019-08-08 14:49:10', '2019-08-08 12:44:37', '2019-08-08 14:49:10'),
	(4, 1, 2, 1, 48, '2008-08-19', 1, '2019-08-08 14:49:21', '2019-08-08 12:44:57', '2019-08-08 14:49:21'),
	(5, 1, 2, 1, 49, '2008-08-19', 1, '2019-08-08 14:49:26', '2019-08-08 12:45:59', '2019-08-08 14:49:26'),
	(6, 1, 2, 1, 50, '2008-08-19', 1, '2019-08-08 14:49:32', '2019-08-08 12:48:07', '2019-08-08 14:49:32'),
	(7, 1, 2, 1, 51, '2008-08-19', 1, NULL, '2019-08-08 12:56:17', '2019-08-08 12:56:17'),
	(8, 1, 2, 1, 52, '2008-08-19', 1, NULL, '2019-08-08 15:08:15', '2019-08-08 15:08:15');
/*!40000 ALTER TABLE `perdidos` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.perdidos_imagens
CREATE TABLE IF NOT EXISTS `perdidos_imagens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imagem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perdido_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `perdidos_imagens_perdido_id_foreign` (`perdido_id`),
  CONSTRAINT `perdidos_imagens_perdido_id_foreign` FOREIGN KEY (`perdido_id`) REFERENCES `perdidos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.perdidos_imagens: ~9 rows (approximately)
/*!40000 ALTER TABLE `perdidos_imagens` DISABLE KEYS */;
INSERT INTO `perdidos_imagens` (`id`, `imagem`, `perdido_id`, `created_at`, `updated_at`) VALUES
	(1, '1565266476.jpg', 3, '2019-08-08 12:14:36', '2019-08-08 12:14:36'),
	(2, '1565267820.jpg', 1, '2019-08-08 12:37:00', '2019-08-08 12:37:00'),
	(3, '1565268271.jpg', 2, '2019-08-08 12:44:31', '2019-08-08 12:44:31'),
	(4, '1565268277.jpg', 3, '2019-08-08 12:44:37', '2019-08-08 12:44:37'),
	(5, '1565268297.jpg', 4, '2019-08-08 12:44:57', '2019-08-08 12:44:57'),
	(6, '1565268359.jpg', 5, '2019-08-08 12:45:59', '2019-08-08 12:45:59'),
	(7, '1565268488.jpg', 6, '2019-08-08 12:48:08', '2019-08-08 12:48:08'),
	(8, '1565268977.jpg', 7, '2019-08-08 12:56:17', '2019-08-08 12:56:17'),
	(9, '1565276895.jpg', 8, '2019-08-08 15:08:15', '2019-08-08 15:08:15');
/*!40000 ALTER TABLE `perdidos_imagens` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.pessoas_achadas
CREATE TABLE IF NOT EXISTS `pessoas_achadas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero_id` bigint(20) unsigned NOT NULL,
  `idade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `altura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mae` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `outras_informacoes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `achado_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pessoas_achadas_achado_id_foreign` (`achado_id`),
  KEY `pessoas_achadas_genero_id_foreign` (`genero_id`),
  CONSTRAINT `pessoas_achadas_achado_id_foreign` FOREIGN KEY (`achado_id`) REFERENCES `achados` (`id`),
  CONSTRAINT `pessoas_achadas_genero_id_foreign` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.pessoas_achadas: ~16 rows (approximately)
/*!40000 ALTER TABLE `pessoas_achadas` DISABLE KEYS */;
INSERT INTO `pessoas_achadas` (`id`, `nome`, `genero_id`, `idade`, `altura`, `pai`, `mae`, `outras_informacoes`, `achado_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Mario', 1, '5', '3', 'Antonio', 'Maria', 'blabla', 1, NULL, NULL, NULL),
	(2, 'Sony Ericson', 1, '23', '1.8', 'Pedro', 'Nsimba', 'Sengundo ele, vive com seu avo....', 25, NULL, '2019-07-05 01:56:55', '2019-07-05 01:56:55'),
	(3, 'Augusto Mariano', 1, '23', '1.8', 'Andre', 'Maria', 'Testando....', 27, NULL, '2019-07-05 02:08:39', '2019-07-05 02:08:39'),
	(4, 'Salvador Diogo', 1, '30', '1.8', 'João', 'Isabel', 'Vive com a sua tia Maria', 28, NULL, '2019-07-05 02:17:41', '2019-07-05 02:17:41'),
	(5, 'Marcia', 2, '23', '1.3', 'Afonso', 'Joana', 'Ountas info...', 29, NULL, '2019-07-05 03:32:38', '2019-07-05 03:32:38'),
	(6, 'Ansemo', 1, '36', '1.14', 'Anselmo', 'Maria', 'Estuda no colegio xxxx', 30, NULL, '2019-07-21 13:34:36', '2019-07-21 13:34:36'),
	(7, 'Teste', 1, '7', '1', 'Paulo', 'Madalena', 'qualquer coisa', 32, NULL, '2019-09-12 19:41:54', '2019-09-12 19:41:54'),
	(8, 'Teste', 1, '7', '1', 'Paulo', 'Madalena', 'qualquer coisa', 33, NULL, '2019-09-12 19:46:06', '2019-09-12 19:46:06'),
	(9, 'Teste', 1, '7', '1', 'Paulo', 'Madalena', 'qualquer coisa', 35, NULL, '2019-09-12 19:50:41', '2019-09-12 19:50:41'),
	(10, 'Teste', 1, '7', '1', 'Paulo', 'Madalena', 'qualquer coisa', 36, NULL, '2019-09-12 19:51:46', '2019-09-12 19:51:46'),
	(11, 'Teste', 1, '7', '1', 'Paulo', 'Madalena', 'qualquer coisa', 37, NULL, '2019-09-12 19:52:09', '2019-09-12 19:52:09'),
	(12, 'Teste', 1, '7', '1', 'Paulo', 'Madalena', 'qualquer coisa', 40, NULL, '2019-09-12 19:56:55', '2019-09-12 19:56:55'),
	(13, 'Teste', 1, '7', '1', 'Paulo', 'Madalena', 'qualquer coisa', 41, NULL, '2019-09-12 19:57:16', '2019-09-12 19:57:16'),
	(14, 'Teste', 1, '7', '1', 'Paulo', 'Madalena', 'qualquer coisa', 42, NULL, '2019-09-12 19:58:13', '2019-09-12 19:58:13'),
	(15, 'Teste', 1, '7', '1', 'Paulo', 'Madalena', 'qualquer coisa', 43, NULL, '2019-09-12 19:58:26', '2019-09-12 19:58:26'),
	(16, 'Teste', 1, '8', '1.5', 'Pedro', 'Maria', 'ddddddddddddddddddddddddddddddd', 46, NULL, '2019-09-12 20:11:29', '2019-09-12 20:11:29');
/*!40000 ALTER TABLE `pessoas_achadas` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.pessoas_perdidas
CREATE TABLE IF NOT EXISTS `pessoas_perdidas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero_id` bigint(20) unsigned NOT NULL,
  `idade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `altura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mae` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `outras_informacoes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perdido_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pessoas_perdidas_perdido_id_foreign` (`perdido_id`),
  KEY `pessoas_perdidos_genero_id_foreign` (`genero_id`),
  CONSTRAINT `pessoas_perdidas_perdido_id_foreign` FOREIGN KEY (`perdido_id`) REFERENCES `perdidos` (`id`),
  CONSTRAINT `pessoas_perdidos_genero_id_foreign` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.pessoas_perdidas: ~6 rows (approximately)
/*!40000 ALTER TABLE `pessoas_perdidas` DISABLE KEYS */;
INSERT INTO `pessoas_perdidas` (`id`, `nome`, `genero_id`, `idade`, `altura`, `pai`, `mae`, `outras_informacoes`, `perdido_id`, `created_at`, `updated_at`) VALUES
	(1, 'Loy Gonçalves', 1, '8', '1', 'Pedro', 'Joana', 'Outras info', 2, '2019-08-08 12:44:31', '2019-08-08 12:44:31'),
	(2, 'Loy Gonçalves', 1, '8', '1', 'Pedro', 'Joana', 'Outras info', 3, '2019-08-08 12:44:38', '2019-08-08 12:44:38'),
	(3, 'Loy Gonçalves', 1, '8', '1', 'Pedro', 'Joana', 'Outras info', 5, '2019-08-08 12:45:59', '2019-08-08 12:45:59'),
	(4, 'Loy Gonçalves', 1, '8', '1', 'Pedro', 'Joana', 'Outras info', 6, '2019-08-08 12:48:08', '2019-08-08 12:48:08'),
	(5, 'Loy Gonçalves', 1, '8', '1', 'Pedro', 'Joana', 'Outras info', 7, '2019-08-08 12:56:17', '2019-08-08 12:56:17'),
	(6, 'Fulana', 1, '10', '1.2', 'Filipe António', 'Maria Joana', 'Outras infos', 8, '2019-08-08 15:08:15', '2019-08-08 15:08:15');
/*!40000 ALTER TABLE `pessoas_perdidas` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.provincias
CREATE TABLE IF NOT EXISTS `provincias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.provincias: ~18 rows (approximately)
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` (`id`, `designacao`, `created_at`, `updated_at`) VALUES
	(1, 'Bengo', NULL, NULL),
	(2, 'Benguela', NULL, NULL),
	(3, 'Bié', NULL, NULL),
	(4, 'Cabinda', NULL, NULL),
	(5, 'Cunene', NULL, NULL),
	(6, 'Huambo', NULL, NULL),
	(7, 'Huíla', NULL, NULL),
	(8, 'Kuando Kubango', NULL, NULL),
	(9, 'Kwanza Norte', NULL, NULL),
	(10, 'Kwanza Sul', NULL, NULL),
	(11, 'Luanda', NULL, NULL),
	(12, 'Lunda Norte', NULL, NULL),
	(13, 'Lunda Sul', NULL, NULL),
	(14, 'Malange', NULL, NULL),
	(15, 'Moxico', NULL, NULL),
	(16, 'Namibe', NULL, NULL),
	(17, 'Uíge', NULL, NULL),
	(18, 'Zaire', NULL, NULL);
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.racas
CREATE TABLE IF NOT EXISTS `racas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_animal_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `racas_tipo_animal_id_foreign` (`tipo_animal_id`),
  CONSTRAINT `racas_tipo_animal_id_foreign` FOREIGN KEY (`tipo_animal_id`) REFERENCES `tipo_animais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.racas: ~3 rows (approximately)
/*!40000 ALTER TABLE `racas` DISABLE KEYS */;
INSERT INTO `racas` (`id`, `designacao`, `tipo_animal_id`, `created_at`, `updated_at`) VALUES
	(1, 'Bit Bol', 1, NULL, NULL),
	(2, 'Rafeiro', 1, NULL, NULL),
	(3, 'Pastor Alemão', 1, NULL, NULL);
/*!40000 ALTER TABLE `racas` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.ruas
CREATE TABLE IF NOT EXISTS `ruas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bairro_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ruas_bairro_id_foreign` (`bairro_id`),
  CONSTRAINT `ruas_bairro_id_foreign` FOREIGN KEY (`bairro_id`) REFERENCES `bairros` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.ruas: ~0 rows (approximately)
/*!40000 ALTER TABLE `ruas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ruas` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.tipo_animais
CREATE TABLE IF NOT EXISTS `tipo_animais` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.tipo_animais: ~7 rows (approximately)
/*!40000 ALTER TABLE `tipo_animais` DISABLE KEYS */;
INSERT INTO `tipo_animais` (`id`, `designacao`, `created_at`, `updated_at`) VALUES
	(1, 'Cão', NULL, NULL),
	(2, 'Gato', NULL, NULL),
	(3, 'Macaco', NULL, NULL),
	(4, 'Cabrito', NULL, NULL),
	(5, 'Ovelha', NULL, NULL),
	(6, 'Boi', NULL, NULL),
	(7, 'Cavalo', NULL, NULL);
/*!40000 ALTER TABLE `tipo_animais` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.tipo_animais_cor_pelos
CREATE TABLE IF NOT EXISTS `tipo_animais_cor_pelos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_animal_id` bigint(20) unsigned DEFAULT NULL,
  `cor_pelo_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo_animais_copr_pelos_tipo_animal_id_foreign` (`tipo_animal_id`),
  KEY `tipo_animais_copr_pelos_cor_pelo_id_foreign` (`cor_pelo_id`),
  CONSTRAINT `tipo_animais_copr_pelos_cor_pelo_id_foreign` FOREIGN KEY (`cor_pelo_id`) REFERENCES `cor_pelos` (`id`),
  CONSTRAINT `tipo_animais_copr_pelos_tipo_animal_id_foreign` FOREIGN KEY (`tipo_animal_id`) REFERENCES `tipo_animais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.tipo_animais_cor_pelos: ~3 rows (approximately)
/*!40000 ALTER TABLE `tipo_animais_cor_pelos` DISABLE KEYS */;
INSERT INTO `tipo_animais_cor_pelos` (`id`, `tipo_animal_id`, `cor_pelo_id`) VALUES
	(1, 1, 1),
	(2, 1, 2),
	(3, 1, 3);
/*!40000 ALTER TABLE `tipo_animais_cor_pelos` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.tipo_documentos
CREATE TABLE IF NOT EXISTS `tipo_documentos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entidade_emissora_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `designacao` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo_documentos_entidade_emissora_id_foreign` (`entidade_emissora_id`),
  CONSTRAINT `tipo_documentos_entidade_emissora_id_foreign` FOREIGN KEY (`entidade_emissora_id`) REFERENCES `entidade_emissoras` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.tipo_documentos: ~5 rows (approximately)
/*!40000 ALTER TABLE `tipo_documentos` DISABLE KEYS */;
INSERT INTO `tipo_documentos` (`id`, `entidade_emissora_id`, `designacao`) VALUES
	(1, 1, 'BI'),
	(2, 3, 'PASSPORTE'),
	(3, 1, 'Cédula'),
	(4, 1, 'Certidão'),
	(5, 4, 'Certificado');
/*!40000 ALTER TABLE `tipo_documentos` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.tipo_utilizadores
CREATE TABLE IF NOT EXISTS `tipo_utilizadores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.tipo_utilizadores: ~3 rows (approximately)
/*!40000 ALTER TABLE `tipo_utilizadores` DISABLE KEYS */;
INSERT INTO `tipo_utilizadores` (`id`, `designacao`, `descricao`, `created_at`, `updated_at`) VALUES
	(1, 'Administrador', 'Utilizador com todos previlégios no sistema', NULL, NULL),
	(2, 'Funcionário', 'Utilizador que trabalha na policia nacional ou um trabalhador do Ndosanga', NULL, NULL),
	(3, 'Cidadão', 'Utilizador com previlegio de Registar(denuciar) um perdido', NULL, NULL);
/*!40000 ALTER TABLE `tipo_utilizadores` ENABLE KEYS */;

-- Dumping structure for table perdidos_achados.utilizadores
CREATE TABLE IF NOT EXISTS `utilizadores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_utilizador_id` bigint(20) unsigned NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `utilizadores_email_unique` (`email`),
  KEY `utilizadores_tipo_utilizador_id_foreign` (`tipo_utilizador_id`),
  CONSTRAINT `utilizadores_tipo_utilizador_id_foreign` FOREIGN KEY (`tipo_utilizador_id`) REFERENCES `tipo_utilizadores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perdidos_achados.utilizadores: ~4 rows (approximately)
/*!40000 ALTER TABLE `utilizadores` DISABLE KEYS */;
INSERT INTO `utilizadores` (`id`, `nome`, `foto`, `email`, `tipo_utilizador_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Ndongala Nguinamau', NULL, 'ndongalamd@gmail.com', 1, NULL, '$2y$10$xHbFVHH7V13kgXJ7bjgfH.pohWIO2wP5rlf3apphcMarLDmpB3lGW', NULL, '2019-06-23 17:12:01', '2019-06-23 17:12:01', NULL),
	(2, 'Zua Dos Santos', '1564072041.jpg', 'zuadossantos@gmail.com', 2, NULL, '$2y$10$q1b90c/lowK.sVkrEeKP8O6.kkPkK/uWUxkQ2gksBdY48ZTEYvPV6', NULL, '2019-07-25 16:27:21', '2019-07-25 16:27:21', NULL),
	(3, 'Leonel', '1564072173.jpg', 'leonel@gmail.com', 1, NULL, '$2y$10$tm0CIt7rhRMildcj8Ci5uOmd5UosDvY7nXzS9/boBkF/aWHnXm.g6', NULL, '2019-07-25 16:29:33', '2019-07-25 16:29:33', NULL),
	(4, 'Teste22', '1570615274.png', 'teste22@gmail.com', 2, NULL, '$2y$10$IEXx8nX29OaZ0dI5Y5GNAuLXZOeW5X8cIqsu1hWqc.581XQI0FAim', NULL, '2019-10-09 10:01:14', '2019-10-09 10:01:14', NULL);
/*!40000 ALTER TABLE `utilizadores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
