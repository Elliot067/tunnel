-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 02 mai 2022 à 11:14
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dendo`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prix` varchar(45) DEFAULT NULL,
  `info` varchar(45) DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `categorie` text NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `prix`, `info`, `nom`, `categorie`, `image`) VALUES
(1, '1299', 'poids du vélo : 4kg', 'Orbean occam', 'VTT', '/assets/image/Orbean_occam.jpg'),
(2, '1599', 'poids du vélo : 15kg', 'Orbea oiz', 'VTT', '/assets/image/Orbea_oiz.jpg'),
(3, '899 ', 'poids du vélo : 12kg', 'Orbea turbo', 'VTT', '/assets/image/Orbea_turbo.jpg'),
(4, '1499', '	poids du vélo : 14,2kg', 'Lapierre spicy', 'VTT', '/assets/image/Lapierre_spicy.jpg'),
(5, '1499', '	poids du vélo : 14kg', 'Trek powerfly', 'VTT', '/assets/image/Trek_powerfly.jpg'),
(6, '899', 'poids du vélo : 10.50 kg', 'Speedster 50', 'ROUTE', '/assets/image/Speedster_50.jpg'),
(7, '1499', 'poids du vélo : 7.80kg', 'Al 464 P', 'ROUTE', '/assets/image/A1464_P.jpg'),
(8, '1499', 'poids du vélo : 10.80kg', 'TERRA H40', 'ROUTE', '/assets/image/Terra_H40.jpg'),
(9, '2099', 'poids du vélo : 9.87kg', 'Contessa Addict 35', 'ROUTE', '/assets/image/Contessa_addict35.jpg'),
(10, '1499', 'poids du vélo : 8.90kg', 'Teammachine ALR ONE 2021', 'ROUTE', '/assets/image/Teammachine_One.jpg'),
(11, '599', 'poids du vélo : 13.83kg', 'Le Loft 7D Step-Thru', 'VILLE', '/assets/image/Le_Loft.jpg'),
(12, '699', 'poids du vélo : 13.00kg', 'Sub Cross 50 Lady', 'VILLE', '/assets/image/Sub_Cross50.jpg'),
(13, '799', 'poids du vélo : 13.64kg', 'Sub Cross 40 Men', 'VILLE', '/assets/image/Sub_Cross40.jpg'),
(14, '899', 'poids du vélo : 11.40kg', 'CARPE 15', 'VILLE', '/assets/image/Carpe15.jpg'),
(15, '1024', 'poids du vélo : 13.20kg', 'District 2 Equipped', 'VILLE', '/assets/image/District_equipped.jpg'),
(21, '1499', 'poids du vélo : 10.50 kg', 'Guiberteau', 'VTT', '/assets/image/Orbea_turbo.jpg'),
(22, '1499', 'poids du vélo : 10.50 kg', 'Guiberteau', 'VTT', '/assets/image/Orbea_turbo.jpg'),
(23, '1499', 'poids du vélo : 10.50 kg', 'test', 'VTT', '/assets/image/Orbea_turbo.jpg'),
(24, '1499', 'poids du vélo : 10.50 kg', 'test', 'VTT', '/assets/image/Orbea_turbo.jpg'),
(25, '1499', 'poids du vélo : 10.50 kg', 'test', 'VTT', '/assets/image/Orbea_turbo.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(45) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`, `parent_id`) VALUES
(1, 'VELO', NULL),
(2, 'TYPE', 1),
(3, 'TAILLE', 1),
(4, 'FREINS', 1),
(5, 'SUSPENSION', 1),
(6, 'COULEUR', 1),
(7, 'CADRE', 1),
(8, 'Vtt', 2),
(9, 'Route', 2),
(10, 'Ville', 2),
(11, 'S', 3),
(12, 'M', 3),
(13, 'L', 3),
(14, 'semi-rigide', 5),
(15, 'tout suspendu', 5),
(16, 'GRIS', 6),
(17, 'ROUGE', 6),
(18, 'ORANGE', 6),
(19, 'NOIR', 6),
(20, 'BLANC', 6);

-- --------------------------------------------------------

--
-- Structure de la table `categorie_has_article`
--

DROP TABLE IF EXISTS `categorie_has_article`;
CREATE TABLE IF NOT EXISTS `categorie_has_article` (
  `Categorie_id` int(11) NOT NULL,
  `Article_id` int(11) NOT NULL,
  PRIMARY KEY (`Categorie_id`,`Article_id`),
  KEY `fk_Categorie_has_Article_Article1_idx` (`Article_id`),
  KEY `fk_Categorie_has_Article_Categorie_idx` (`Categorie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie_has_article`
--

INSERT INTO `categorie_has_article` (`Categorie_id`, `Article_id`) VALUES
(8, 1),
(11, 1),
(12, 1),
(13, 1),
(15, 1),
(16, 1),
(17, 1),
(8, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(18, 2),
(19, 2),
(8, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(16, 3),
(20, 3),
(8, 4),
(11, 4),
(12, 4),
(13, 4),
(15, 4),
(17, 4),
(8, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(19, 5),
(9, 6),
(11, 6),
(12, 6),
(13, 6),
(16, 6),
(19, 6),
(9, 7),
(11, 7),
(12, 7),
(13, 7),
(19, 7),
(9, 8),
(12, 8),
(13, 8),
(17, 8),
(19, 8),
(9, 9),
(13, 9),
(20, 9),
(9, 10),
(11, 10),
(12, 10),
(13, 10),
(16, 10),
(10, 11),
(11, 11),
(12, 11),
(16, 11),
(20, 11),
(10, 12),
(11, 12),
(12, 12),
(13, 12),
(20, 12),
(10, 13),
(11, 13),
(12, 13),
(13, 13),
(16, 13),
(19, 13),
(10, 14),
(11, 14),
(12, 14),
(17, 14),
(10, 15),
(12, 15),
(13, 15),
(16, 15);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `civilite` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `portable` varchar(45) DEFAULT NULL,
  `newsletter` tinyint(4) DEFAULT NULL,
  `dateCreation` datetime DEFAULT NULL,
  `UserCreation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `Commande_id` int(11) NOT NULL AUTO_INCREMENT,
  `Recap_produit` varchar(100) NOT NULL,
  `Prix_total` float NOT NULL,
  `Id_utilisateur` int(11) NOT NULL,
  PRIMARY KEY (`Commande_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`Commande_id`, `Recap_produit`, `Prix_total`, `Id_utilisateur`) VALUES
(1, 'a:1:{i:7;i:1;}', 1798.8, 1),
(2, 'a:1:{i:7;i:1;}', 0, 1),
(4, 'a:1:{i:7;i:1;}', 1798.8, 1),
(5, 'a:3:{i:6;i:2;i:9;i:1;i:13;i:1;}', 5635.2, 1),
(3, 'a:7:{i:6;i:3;i:9;i:1;i:13;i:1;i:7;i:1;i:8;i:1;i:10;i:1;i:11;i:1;}', 12829.2, 6);

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

DROP TABLE IF EXISTS `livraison`;
CREATE TABLE IF NOT EXISTS `livraison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(45) DEFAULT NULL,
  `adresse` varchar(45) NOT NULL,
  `adresse_Complementaire` varchar(45) DEFAULT NULL,
  `codePostal` int(11) NOT NULL,
  `ville` varchar(45) NOT NULL,
  `pays` varchar(45) NOT NULL,
  `adresse_principale` varchar(45) NOT NULL,
  `adresse_facturation` varchar(45) NOT NULL,
  `datecreation` datetime DEFAULT NULL,
  `userCreation` varchar(45) DEFAULT NULL,
  `Client_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`Client_id`),
  KEY `fk_Livraison_Client1_idx` (`Client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(40) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `email` varchar(70) NOT NULL,
  `tel` int(11) NOT NULL,
  `password` text NOT NULL,
  `admin` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `prenom`, `nom`, `email`, `tel`, `password`, `admin`) VALUES
(1, 'Elliot', 'Guiberteau', 'test@gmail.com', 751976461, '$2y$12$4yk3.XcQ7T.i0h2O4ExR0O2yLz3Ha6CEF/XN9aSbHIbHdv8LK.Myu', 1),
(14, 'Elliot', 'Guiberteau', 'teambubdddble67@gmail.com', 768315933, '$2y$12$JGOhteOtRUPQ2xQScL1sLu02zzQLzHJ8dCOlgP1i96rTA01zihGjS', 1),
(15, 'Elliot', 'Guiberteau', 'teambuddddbble67@gmail.com', 768315933, '$2y$12$zEEDcEgw3kVC29lBHR3KSexA/.kkwvmNRckOLGa9UvmkcblmmApHK', 1),
(16, 'Elliot', 'Guiberteau', 'teddddambubble67@gmail.com', 768315933, '$2y$12$Z4UNDbU9kpEvRyF/5PequuWp09p4V40U/sQ2H8druj7qz6ZS/zctG', 0),
(17, 'Elliot', 'Guiberteau', 'teambubble67@gmail.comdddd', 768315933, '$2y$12$J9Ho7OFPTOObNxZ0a6cHpum1A8LBzJSqO3M3DjM0N/PWEghHCZ1QG', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categorie_has_article`
--
ALTER TABLE `categorie_has_article`
  ADD CONSTRAINT `fk_Categorie_has_Article_Article1` FOREIGN KEY (`Article_id`) REFERENCES `article` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Categorie_has_Article_Categorie` FOREIGN KEY (`Categorie_id`) REFERENCES `categorie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD CONSTRAINT `fk_Livraison_Client1` FOREIGN KEY (`Client_id`) REFERENCES `client` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
