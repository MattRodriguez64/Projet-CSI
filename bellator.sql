-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 19 Octobre 2021 à 07:05
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bellator`
--

-- --------------------------------------------------------

--
-- Structure de la table `pro_sante`
--

CREATE TABLE `pro_sante` (
  `id_prosante` int(11) NOT NULL,
  `secteur` varchar(75) NOT NULL,
  `num_tel` varchar(11) NOT NULL,
  `lieu` varchar(100) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `age` int(11) NOT NULL,
  `sexe` varchar(3) NOT NULL,
  `email` varchar(125) NOT NULL,
  `mdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

CREATE TABLE `rdv` (
  `id_rdv` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_prosante` int(11) NOT NULL,
  `date_rdv` date NOT NULL,
  `horaire` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `releve_activite`
--

CREATE TABLE `releve_activite` (
  `id_releveactivite` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nombre_pas` int(11) NOT NULL,
  `tps_jog` time NOT NULL,
  `date_releve` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `releve_forme`
--

CREATE TABLE `releve_forme` (
  `id_releveforme` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `poids` float NOT NULL,
  `taille` int(11) NOT NULL,
  `tour_de_taille` int(11) NOT NULL,
  `tour_de_hanche` int(11) NOT NULL,
  `tour_de_poitrine` int(11) NOT NULL,
  `tour_de_cou` int(11) NOT NULL,
  `imc` int(11) NOT NULL,
  `date_releve` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `age` int(11) NOT NULL,
  `sexe` varchar(3) NOT NULL,
  `email` varchar(125) NOT NULL,
  `mdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `pro_sante`
--
ALTER TABLE `pro_sante`
  ADD PRIMARY KEY (`id_prosante`);

--
-- Index pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD PRIMARY KEY (`id_rdv`);

--
-- Index pour la table `releve_activite`
--
ALTER TABLE `releve_activite`
  ADD PRIMARY KEY (`id_releveactivite`);

--
-- Index pour la table `releve_forme`
--
ALTER TABLE `releve_forme`
  ADD PRIMARY KEY (`id_releveforme`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `pro_sante`
--
ALTER TABLE `pro_sante`
  MODIFY `id_prosante` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rdv`
--
ALTER TABLE `rdv`
  MODIFY `id_rdv` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `releve_activite`
--
ALTER TABLE `releve_activite`
  MODIFY `id_releveactivite` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `releve_forme`
--
ALTER TABLE `releve_forme`
  MODIFY `id_releveforme` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
