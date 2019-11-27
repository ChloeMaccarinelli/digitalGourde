-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 27 nov. 2019 à 11:32
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `openchainuser`
--

-- --------------------------------------------------------

--
-- Structure de la table `banque`
--

CREATE TABLE `banque` (
  `NomCommercial` varchar(32) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Telephone` varchar(15) NOT NULL,
  `isVisible` tinyint(1) NOT NULL,
  `Statut` varchar(20) NOT NULL,
  `Virement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `banque`
--

INSERT INTO `banque` (`NomCommercial`, `Email`, `Telephone`, `isVisible`, `Statut`, `Virement`) VALUES
('BRH', 'chloemaccarinelli@gmail.com', '4588452021', 1, 'Validé', 'actif'),
('CapitalBank', 'capitalbank@haiti.ht', '5092299650', 1, 'validé', 'actif'),
('Sogebank', 'maccarinellichloe08@gmail.com', '5092229500', 1, 'validé', 'actif');

-- --------------------------------------------------------

--
-- Structure de la table `beneficiaire`
--

CREATE TABLE `beneficiaire` (
  `Id` int(11) NOT NULL,
  `Utilisateur_Email` varchar(255) NOT NULL,
  `Libelle` varchar(255) NOT NULL,
  `ClePub` varchar(255) NOT NULL,
  `Ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `carte`
--

CREATE TABLE `carte` (
  `Id` int(12) NOT NULL,
  `Libelle` varchar(200) NOT NULL,
  `Portefeuille_Id` int(12) NOT NULL,
  `Creation` date DEFAULT NULL,
  `IsBlocked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

CREATE TABLE `document` (
  `Email` varchar(200) NOT NULL,
  `Piece_Identite` longblob DEFAULT NULL,
  `Justificatif_Domicile` longblob DEFAULT NULL,
  `Annonce_Legale` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `loginattempts`
--

CREATE TABLE `loginattempts` (
  `Email` varchar(200) NOT NULL,
  `LoginAttempts` int(3) NOT NULL,
  `Attempt1` timestamp NULL DEFAULT current_timestamp(),
  `Attempt2` timestamp NULL DEFAULT NULL,
  `Attempt3` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `monnie`
--

CREATE TABLE `monnie` (
  `Id` int(3) NOT NULL,
  `Nom` varchar(40) NOT NULL,
  `Unite` float NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `monnie`
--

INSERT INTO `monnie` (`Id`, `Nom`, `Unite`, `Type`) VALUES
(836, 'Dollar US', 0.01, 'physique'),
(838, 'Bitcoin', 0.0000097, 'electronique'),
(839, 'Euro', 0.0095, 'physique'),
(840, 'Livre Sterling', 0.00848, 'physique');

-- --------------------------------------------------------

--
-- Structure de la table `motiftransaction`
--

CREATE TABLE `motiftransaction` (
  `Mutation_Hash` varchar(64) NOT NULL,
  `Motif` varchar(255) NOT NULL DEFAULT 'Aucun motif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `motiftransaction`
--

INSERT INTO `motiftransaction` (`Mutation_Hash`, `Motif`) VALUES
('196d8a8b6f69f4b0b14ec25b2694360637ca0d382cc52d504ed62e5acc2eb360', 'Dépôt HTG'),
('1ebf45ebf03d222e1dca299c695f1e0b77ada30408ca04bd83c8a6d04b43eb49', 'Dépôt HTG'),
('1f9e4d9c9508a27f6f07ea373c94fdd43982abd201675dd7ac0d1fc164738fd3', 'virement'),
('20e1905b65a34fc2c2ad76dda0ecc8d2cd5b4a8ad421c2dc3a7a0ba9fc23bbe2', 'Paiement'),
('2551b0b51afa8dd4ad886d45dcfb1caf5726665d157650c63df873c7fdd594d7', 'Commande nouvelle carte'),
('28bda5aa24112f12cd022074df041c95af484c341b285a2c254c63cc162678bd', 'Dépôt HTG'),
('2b131126c414d56525009efdd8f8ca6c5cba122f64e9f04af6a26ae3d397bbb1', 'Cotisations retraite'),
('2d02a2d57c9738b17ad54f3d1b69cf39247440a02f677c922f45fb7f6f1a0068', 'spasibo'),
('31f363516bb6a1fa32c424f2a5470620b540afb31ecde1fab96388f35cf726ad', 'Dépôt HTG'),
('34570b470548186afab8f34cb686cc87ed93e65a77f0ebc1f752515c6877e6ea', ''),
('35cb1af30da264bb4f5dfea4cbc42d3b4b82e2d180d8bd2c41e969e49eb7fcc9', 'Ouverture nouveau portefeuille'),
('391f3f5dd9232245d91eb02c296ce20238f6db064d7d353840fa6f80bfac8c88', 'virement'),
('4107be0b170c9630cdb51dcfe6ca42d3464032002ceac131d18230104c2c44fe', ''),
('4e44e5c0bc6909e3e6cad187acfa47111b22bd0b6ba82010ac076f4404eb96fd', 'virement'),
('57ac9aa0d58c33a0ba29ca7903dc416783dc27f595754fea12728e93348fd699', ''),
('57b120179ad97cee2905745950a1b2b06e99cee28997774e2bfc1f7edd36d5a9', 'Commande nouvelle carte'),
('59118e34b0db268b07ddbb14cf6c52a1026ee9db7160340769537d7dc63692b5', 'Commande nouvelle carte'),
('6a2e20d4f86bbbb98448336d559ceee03b248c85e86f90de41ce6f04d60d5f74', ''),
('6f6dec4bdb45566fc52708e642d6b46cbee87a2d282596e2c3a0a619f2367e62', 'Ouverture nouveau portefeuille'),
('7401a4c30a2412433c2f0b0aee77e68a6bc4a75f308778c0f440d7c3a1d9844b', 'Commande nouvelle carte'),
('7b2fcbb76b4db85c938d3e5af3d91db43e5d338f8fbf372ac5f4d0883a2864c2', 'Un Motif'),
('7e282949b81505ca5116d65de339d2b808cbc827b2458eab82b40300eddd2275', 'Commande nouvelle carte'),
('7e9623486f4a2eecac2b22746e999502a5ea88933845771b6ef9f38888d05c7d', 'Paiement'),
('83e46c33a14da1862fbd57034a630c2e34c9673c690afcc2ca61fad141fdd8df', 'Ouverture nouveau portefeuille'),
('849a678cdb29ad7926674ecc6f6a057099a612075ea006d9e32fdb41d5d22024', 'Paiement'),
('8577082353d216a476871cd82660ae29ce50699ce5edafcf78bd1130ef7973ec', 'Remboursement'),
('8e02f2ded8bf544c76566b8db3312179ee62bd40448a429faf5274ddd3c1cabc', ''),
('8e0cbe8e8933c506f5fe4d1e636870493cbbf79afef03cf08d8a5664d2bacadd', ''),
('a370dd22d4bde8db4fdca3fb21f1586b2f278ee59559d7323748af85c017e8cc', 'Dépôt HTG'),
('a4dd20b620b145a27787fc6ae4a34ada4bc4c2f6bda482777f21156d6b61802c', 'Ouverture nouveau portefeuille'),
('a702f7a79fa12f9e145c5ada27e7eaa223e3c6e5afe0a354e4cf8931f34befa4', 'Un Motif'),
('a9f008e6a25e33303934b88512d801da42c9ce1e8e0046e38e8c0d13ad26ed2f', 'Hallo'),
('c140b98b7e5f5e968cea3a05f609f5923cd23924687f8a906f1d49fc4f296e69', 'Remboursement TGV'),
('c4cbacbe8ab092b706255244d4a557fbff8724b368e00c8f4fd28f8770646692', 'Dépôt HTG'),
('cc097056288418d331b3ad577cdd6a061a23027629381ea023f5c468ac0a5510', 'Paiement'),
('cdbda9c30db7b16401da83cb3095c2922c71fbacb60452fbd2e8dcf9db31cd95', 'Ouverture nouveau portefeuille'),
('d48d7938b2298d808d94614462ad155083c96c40917d20f6244c55d5c21c3e0b', 'Ouverture nouveau portefeuille'),
('d5665c5a59bed502c16030a9aab23025402e6abba7ebd118dfd5f8ab818b36db', ''),
('ec711ddf6cee94aabd5e822e88df1f3526e16c4ec456b2fe711fd63a3615ce16', 'Dépôt HTG'),
('f956500bca5fd96c57dc0694ced1b87a6c397a071c049c43c58bb6c7ed1dc8c5', 'Paiement'),
('ff1b72b8973d245d31838b99f9b9f212ab56ec382104dd54fdb97afed66d812a', 'Paiement');

-- --------------------------------------------------------

--
-- Structure de la table `parametre`
--

CREATE TABLE `parametre` (
  `Id` int(3) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Valeur` varchar(255) NOT NULL,
  `DateCreation` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `parametre`
--

INSERT INTO `parametre` (`Id`, `Nom`, `Description`, `Valeur`, `DateCreation`) VALUES
(75, 'montant max transaction', 'Le montant max de transaction autorisé', '100000 DHTG', '2019-07-08');

-- --------------------------------------------------------

--
-- Structure de la table `portefeuille`
--

CREATE TABLE `portefeuille` (
  `Id` int(12) NOT NULL,
  `Utilisateur_Email` varchar(200) NOT NULL,
  `Libelle` varchar(100) NOT NULL,
  `Ouverture` date NOT NULL,
  `ClePub` varchar(200) NOT NULL,
  `ClePrive` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `portefeuille`
--

INSERT INTO `portefeuille` (`Id`, `Utilisateur_Email`, `Libelle`, `Ouverture`, `ClePub`, `ClePrive`) VALUES
(209, 'chloemaccarinelli@gmail.com', 'Portefeuille Principal', '2019-11-27', 'XmZqHr5dtXTLQPm1X3TM354aukGCNHZrhr', '51f0a32b60e9aefae57c9e357c2312f7$991fa25a0717b96e9e7634187b01c72941a2f149e23862f806f46098eedda4e51177c443fbe57566cbaa137ecaf9270f1f0a0f35703a9e095d950419d8872fdecf61a33a975bdaada84238ece9f4990f5dac8f15ac6cb902396482200b6854f1bf292bbd4c21c52cbdea66f97cf50694'),
(219, 'maccarinellichloe08@gmail.com', 'Portefeuille Principal', '2019-11-27', 'XuMV8WQLDPXjBmbnssj7vCbubsCbEotAC9', '8eb047b92b0552bfa282720bfedf3607$1c4ad749f86bb5420b8153210c8adb10be723794e3c3e1635d2a4325a66c439a0e8872904978ebdec6b161d5bd5baeeac340a1b0d0736b57f1d9c469e87c0620337c9343a2428cd758642e018ba0173765451de7fa504fd1aec2c1c05e459aa09897b807cf2736fffce7255806b0a9ec'),
(220, 'arnominator@hotmail.fr', 'Portefeuille Principal', '2019-11-27', 'Xs17prgUmVjcRpauMZ5rF6fGqNkqrTiLk2', '02f4791b91afeb2888e411c157678592$fc1eb8f26f4b3acf0a9fcffe03d4410a13be1ca54471438c12ab043e91976e7cd3dfdf3630fe8454abf28a5ceefb128fd25eade83b4da4a94d388b0572b3f160f9d2d71954d0e0b9c340deaa3f89d80a25c6d269693f84905cb80bd94d1414604323052f65db2f3ed2aa514ded58d82d'),
(221, 'maccarinellichloe@gmail.com', 'Portefeuille Principal', '2019-11-27', 'XkWf7ZQbsKMseejToxQ8zhe51J4kLXBfjj', 'b02e1e7d8e70ac3432dcae50a8995300$214ee3f16e6479f9acc1f355350ae40fbb61046fe996bea705d54de62b38cf388149d888fc78b41c3f8724cf9fa5565e67a228a503c9fec62b92ae224eb57ebe5ebc1ec65eedf49eaafa6c7725c07a46afdc4cbac74d74b269b742f11d41d21284a5bebdd93af2bcf8f80e26180cc12e');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `Id` int(1) NOT NULL,
  `Libelle` varchar(30) NOT NULL,
  `PermissionLevel` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`Id`, `Libelle`, `PermissionLevel`) VALUES
(0, 'Public', 0),
(1, 'DemandeParticulier', 0),
(2, 'DemandeCommercant', 0),
(3, 'DemandeBanque', 0),
(4, 'Particulier', 1),
(5, 'Commercant', 1),
(6, 'Banque', 2),
(7, 'Admin', 3);

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `Id` int(2) NOT NULL,
  `Libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `status`
--

INSERT INTO `status` (`Id`, `Libelle`) VALUES
(1, 'En attente'),
(2, 'En cours'),
(3, 'Validé'),
(4, 'Pas valide'),
(5, 'Bloque');

-- --------------------------------------------------------

--
-- Structure de la table `tokenverification`
--

CREATE TABLE `tokenverification` (
  `Email` varchar(200) NOT NULL,
  `Token` varchar(300) NOT NULL,
  `DateCreationToken` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tokenverification`
--

INSERT INTO `tokenverification` (`Email`, `Token`, `DateCreationToken`) VALUES
('arnominator@hotmail.fr', 'QbPIxfp8_~Cm5Y5008k-QmQg7gs7z5ogyIE~G~fN7I3wnDLZ5H9Vq_CjlG0GUU4o-H1bFN2~MfHxpzzDWSwgnprFGZwy4zi0XjvNVQvLvt3R5k1lx1f4wnyc5741qFu_Rl4aGb1s7_IQH3V4TV6Kr~Djuu~hvtHGZt4F8SQF9YW2ICioxoLz7f0nVB9mVPjXjB1eRxRyarRK61wxjA5c1g70U1era4~HXHNjLaMEihOC0Qw5mnQZst1R7M9BdbuKPKXN6E_jOS~nn~4UomB92~WSJ~VL8hEh0b_9Vn3Ipvv_', '2019-11-27 09:34:12'),
('chloemaccarinelli@gmail.com', 'acEihv8CqhRuu.EUhknH-VnmfZHz3AZlksw3wrMcJwGJfUkPFd9Rlcd7ZbkYMgqoSk2NSrKAfKF0KGxQvuOYs0Fni_dJbe6BVMyqNcI8yqMjUaJwt-Sj~2vVggyEg1TPB9TYUfLNUjhW_GdjcSxbvqpaF1EM_aZs7QKQT3l.ibreIKiLXNgRFYSy_6cw_ShAFwOgrtjse8A9I7Al_p_2F0axk9R9u-U9IQqPm_B4AV~vkN~rqGStT9Rz6BNNff13pJbVNK07djMTWTFxgHFmh2MJNCa5XXmV7X8y0SeUSfHl', '2019-11-27 09:53:21'),
('maccarinellichloe08@gmail.com', '80I4u5IxDWEYV4pL7oD3DsQeSGGfRne9XrIt7gsZ2BsqLt8uIm..XHH0uzD4fntokU3Dq3lCtvURTD~GLEq9-4.om5G_EQ3cDVnBLr-cVE~x_dT~W1Z5c0omtYRYSEWceEbMMQAbt03n~NuJXqKZwiY1Ud~tRUb9BpMCuOxkHYmWs0LBobspeD-5ZAYxPOFHktfqrS~ECJu5G5yFxE7FlnsIGXKL4vin4MARZQZ-sW6k7ifcOWO8seQDcz7TX9tr6DlOhGLB-8c4DemJcS7mf5LrRgIfNAF_EKTo9_4Nz53Y', '2019-11-27 09:31:51'),
('maccarinellichloe@gmail.com', 'cMfDnAc7Q0eYbtd~IcrNkVNTkkr0xWtXt~wvnZi67S~MaUQonpipqcxHUKKdmEXqiJclMkXjLLirSUWqZCbc0xEYdAnzv0hZYQBJgIasCRP-ORAK1CInqor9_ey6AIqhpcKUCqUEFn5IJLMEj6rl6thVO1mIB6-PORH9yI.n0R7pR7UVrKokdlaK5th0raXkythcJ01lu_M4q8qfP3sfG35VmvBXm_muJYL3Fw9NpBoga9WWZeWLf~Lnpg8rzhQQ~7jCjt8z5fOvcbSyUlTE.exB8oAB~Vx.wGC-h~x6BkJr', '2019-11-27 09:35:46');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `Email` varchar(200) NOT NULL,
  `Password` varchar(300) NOT NULL,
  `Nom` varchar(15) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `Civilite` varchar(10) NOT NULL,
  `Situation_Familiale` varchar(20) NOT NULL,
  `Profession` varchar(50) NOT NULL,
  `Siret` varchar(14) NOT NULL,
  `Statut_Juridique` varchar(255) NOT NULL,
  `Secteur_Activite` varchar(255) NOT NULL,
  `Tel` varchar(15) NOT NULL,
  `Adresse` varchar(200) NOT NULL,
  `Ville` varchar(50) NOT NULL,
  `Code_Postal` varchar(15) NOT NULL,
  `Documents` int(12) DEFAULT NULL,
  `Status` int(2) NOT NULL DEFAULT 1,
  `Banque` varchar(32) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsEmailVerified` tinyint(1) NOT NULL DEFAULT 0,
  `Role_Id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`Email`, `Password`, `Nom`, `Prenom`, `Civilite`, `Situation_Familiale`, `Profession`, `Siret`, `Statut_Juridique`, `Secteur_Activite`, `Tel`, `Adresse`, `Ville`, `Code_Postal`, `Documents`, `Status`, `Banque`, `Date`, `IsEmailVerified`, `Role_Id`) VALUES
('arnominator@hotmail.fr', 'fuoWy53vImFzDiQu2unKMA==$FnDNl2SE7G9X2ktVxJhwfZezazR70d5SjNSuqIwru13iGUex7IU802am1rmKgQlPs0nfu7oNo1PnzTAGfLwj0w==', 'Fernando', 'Arno', '', '', '', '', '', '', '', '', '', '', NULL, 3, 'Sogebank', '2019-11-27 09:34:12', 1, 4),
('chloemaccarinelli@gmail.com', 'g/vLH65EGs4ElSDFSXlgow==$QbXSb3X5Le+jWk6wZTmLFDvj0F/F9TlF3vTN6FlFOwQfWpa1zXsJUAUb1CT2P2aSr92Ro+URzVkoKo6V926tDw==', 'Maccarinelli', 'Chloe', '', '', '', '', '', '', '', '', '', '', NULL, 3, 'Sogebank', '2019-11-27 09:53:21', 1, 7),
('maccarinellichloe08@gmail.com', 'H/iAnJ0Zc1sbfRmfbqtMwA==$ALfLB492PkTvqiuQkn003fmBV0bsFaNXuxNgjCfmEpI6W5bUCQISATUYbIax+MvgCQvvcyOoeNOzFibP0mNkvg==', 'Durant', 'Lola', '', '', '', '', '', '', '', '', '', '', NULL, 3, 'Sogebank', '2019-11-27 09:31:51', 1, 6),
('maccarinellichloe@gmail.com', 'RSMF2hfl4Prr6J5puV/SCw==$FfhlJQm+adgF4RVV/MoWQ77v+nXLl4rLFDExnXCyJ7F5rGzCJVyyp1fHuXAKj/Fz3+3rwxc1vBxhuZgm4bKOmA==', 'FerMacca', 'chloe', '', '', '', '', '', '', '', '', '', '', NULL, 3, 'Sogebank', '2019-11-27 09:35:46', 1, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `banque`
--
ALTER TABLE `banque`
  ADD PRIMARY KEY (`NomCommercial`);

--
-- Index pour la table `beneficiaire`
--
ALTER TABLE `beneficiaire`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Utilisateur_Email` (`Utilisateur_Email`);

--
-- Index pour la table `carte`
--
ALTER TABLE `carte`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Portefeuille_Id` (`Portefeuille_Id`);

--
-- Index pour la table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`Email`),
  ADD KEY `Email` (`Email`);

--
-- Index pour la table `loginattempts`
--
ALTER TABLE `loginattempts`
  ADD PRIMARY KEY (`Email`),
  ADD KEY `Email` (`Email`);

--
-- Index pour la table `monnie`
--
ALTER TABLE `monnie`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `motiftransaction`
--
ALTER TABLE `motiftransaction`
  ADD PRIMARY KEY (`Mutation_Hash`),
  ADD UNIQUE KEY `Mutation_Hash` (`Mutation_Hash`);

--
-- Index pour la table `parametre`
--
ALTER TABLE `parametre`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `portefeuille`
--
ALTER TABLE `portefeuille`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `ClePub` (`ClePub`,`ClePrive`),
  ADD KEY `Utilisateur_Email` (`Utilisateur_Email`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `libelle` (`Libelle`),
  ADD UNIQUE KEY `Id_3` (`Id`),
  ADD KEY `Id` (`Id`),
  ADD KEY `Id_2` (`Id`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `tokenverification`
--
ALTER TABLE `tokenverification`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `uniquetoken` (`Token`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `Email_2` (`Email`),
  ADD KEY `Banque` (`Banque`),
  ADD KEY `Email` (`Email`),
  ADD KEY `documents` (`Documents`),
  ADD KEY `Role_Id` (`Role_Id`),
  ADD KEY `Role_Id_2` (`Role_Id`),
  ADD KEY `Role_Id_3` (`Role_Id`),
  ADD KEY `Status` (`Status`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `beneficiaire`
--
ALTER TABLE `beneficiaire`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `carte`
--
ALTER TABLE `carte`
  MODIFY `Id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `monnie`
--
ALTER TABLE `monnie`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=843;

--
-- AUTO_INCREMENT pour la table `parametre`
--
ALTER TABLE `parametre`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `portefeuille`
--
ALTER TABLE `portefeuille`
  MODIFY `Id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
  MODIFY `Id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `beneficiaire`
--
ALTER TABLE `beneficiaire`
  ADD CONSTRAINT `beneficiaire_ibfk_1` FOREIGN KEY (`Utilisateur_Email`) REFERENCES `utilisateur` (`Email`);

--
-- Contraintes pour la table `carte`
--
ALTER TABLE `carte`
  ADD CONSTRAINT `carte_ibfk_1` FOREIGN KEY (`Portefeuille_Id`) REFERENCES `portefeuille` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `document_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `utilisateur` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `loginattempts`
--
ALTER TABLE `loginattempts`
  ADD CONSTRAINT `loginattempts_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `utilisateur` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `portefeuille`
--
ALTER TABLE `portefeuille`
  ADD CONSTRAINT `portefeuille_ibfk_3` FOREIGN KEY (`Utilisateur_Email`) REFERENCES `utilisateur` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `tokenverification`
--
ALTER TABLE `tokenverification`
  ADD CONSTRAINT `tokenverification_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `utilisateur` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_2` FOREIGN KEY (`Role_Id`) REFERENCES `role` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `utilisateur_ibfk_3` FOREIGN KEY (`Status`) REFERENCES `status` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `utilisateur_ibfk_4` FOREIGN KEY (`Banque`) REFERENCES `banque` (`NomCommercial`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
