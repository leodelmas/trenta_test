-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 13 mai 2020 à 14:05
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `trenta_test`
--

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200512170422', '2020-05-12 17:04:34');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `title`, `description`, `image`, `price`) VALUES
(61, 'Produit n°1', 'La super description du produit n°1.', 'http://via.placeholder.com/640x360', 74),
(62, 'Produit n°2', 'La super description du produit n°2.', 'http://via.placeholder.com/640x360', 82),
(63, 'Produit n°3', 'La super description du produit n°3.', 'http://via.placeholder.com/640x360', 97),
(64, 'Produit n°4', 'La super description du produit n°4.', 'http://via.placeholder.com/640x360', 93),
(65, 'Produit n°5', 'La super description du produit n°5.', 'http://via.placeholder.com/640x360', 87),
(66, 'Produit n°6', 'La super description du produit n°6.', 'http://via.placeholder.com/640x360', 74),
(67, 'Produit n°7', 'La super description du produit n°7.', 'http://via.placeholder.com/640x360', 75),
(68, 'Produit n°8', 'La super description du produit n°8.', 'http://via.placeholder.com/640x360', 84),
(69, 'Produit n°9', 'La super description du produit n°9.', 'http://via.placeholder.com/640x360', 25),
(70, 'Produit n°10', 'La super description du produit n°10.', 'http://via.placeholder.com/640x360', 68),
(71, 'Produit n°11', 'La super description du produit n°11.', 'http://via.placeholder.com/640x360', 64),
(72, 'Produit n°12', 'La super description du produit n°12.', 'http://via.placeholder.com/640x360', 12),
(73, 'Produit n°13', 'La super description du produit n°13.', 'http://via.placeholder.com/640x360', 71),
(74, 'Produit n°14', 'La super description du produit n°14.', 'http://via.placeholder.com/640x360', 89),
(75, 'Produit n°15', 'La super description du produit n°15.', 'http://via.placeholder.com/640x360', 66),
(76, 'Produit n°16', 'La super description du produit n°16.', 'http://via.placeholder.com/640x360', 90),
(77, 'Produit n°17', 'La super description du produit n°17.', 'http://via.placeholder.com/640x360', 99),
(78, 'Produit n°18', 'La super description du produit n°18.', 'http://via.placeholder.com/640x360', 27),
(79, 'Produit n°19', 'La super description du produit n°19.', 'http://via.placeholder.com/640x360', 66),
(80, 'Produit n°20', 'La super description du produit n°20.', 'http://via.placeholder.com/640x360', 32);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
