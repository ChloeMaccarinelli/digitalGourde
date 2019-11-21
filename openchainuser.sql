-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 12 2019 г., 12:52
-- Версия сервера: 10.3.15-MariaDB
-- Версия PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `openchainuser`
--

-- --------------------------------------------------------

--
-- Структура таблицы `banque`
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
-- Дамп данных таблицы `banque`
--

INSERT INTO `banque` (`NomCommercial`, `Email`, `Telephone`, `isVisible`, `Statut`, `Virement`) VALUES
('BRH', 'brh@haiti.ht', '5092299659', 1, 'Validé', 'actif'),
('BUH', 'locuxo@alltempmail.com', '0600000000', 1, 'validé', ''),
('BUHHT', 'locuxo@alltempmail.com', '0600000000', 1, 'validé', ''),
('CapitalBank', 'capitalbank@haiti.ht', '5092299650', 1, 'validé', 'actif'),
('Citibank', 'sdf@sdf.sdfs', '0758187762', 1, 'en cours', 'actif'),
('Sogebank', 'contact@sogebank.ht', '5092229500', 1, 'validé', 'bloquer');

-- --------------------------------------------------------

--
-- Структура таблицы `beneficiaire`
--

CREATE TABLE `beneficiaire` (
  `Id` int(11) NOT NULL,
  `Utilisateur_Email` varchar(255) NOT NULL,
  `Libelle` varchar(255) NOT NULL,
  `ClePub` varchar(255) NOT NULL,
  `Ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `beneficiaire`
--

INSERT INTO `beneficiaire` (`Id`, `Utilisateur_Email`, `Libelle`, `ClePub`, `Ajout`) VALUES
(16, 'gowowofir@theeasymail.com', 'Sogebank', 'XhYE4afjVxTeTmCNfKHX62BcJfgWBr4bVm', '2019-07-08'),
(17, 'katzenmaul@inbox.ru', 'Sogebank', 'XhYE4afjVxTeTmCNfKHX62BcJfgWBr4bVm', '2019-07-08'),
(18, 'kucibage@intempmail.com', 'Sogebank', 'XhYE4afjVxTeTmCNfKHX62BcJfgWBr4bVm', '2019-07-08'),
(19, 'kucibage@intempmail.com', 'Gowo Wofir', 'Xuu4bRBP9tkmskGbXCyhjRT3j21vFEivKQ', '2019-07-08'),
(20, 'gowowofir@theeasymail.com', 'Kuci Bage', 'XwEmM9PT1cBaEQrhasMVfyMxi9fpAbhxVX', '2019-07-08'),
(21, 'tayez@theeasymail.com', 'Sogebank', 'XhYE4afjVxTeTmCNfKHX62BcJfgWBr4bVm', '2019-07-08'),
(22, 'ks@mexvel.com', 'Sogebank', 'XhYE4afjVxTeTmCNfKHX62BcJfgWBr4bVm', '2019-07-10'),
(23, '3889898@mail.ru', 'Sogebank', 'XhYE4afjVxTeTmCNfKHX62BcJfgWBr4bVm', '2019-07-13');

-- --------------------------------------------------------

--
-- Структура таблицы `carte`
--

CREATE TABLE `carte` (
  `Id` int(12) NOT NULL,
  `Libelle` varchar(200) NOT NULL,
  `Portefeuille_Id` int(12) NOT NULL,
  `Creation` date DEFAULT NULL,
  `IsBlocked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `carte`
--

INSERT INTO `carte` (`Id`, `Libelle`, `Portefeuille_Id`, `Creation`, `IsBlocked`) VALUES
(24, 'carte déplacements deux', 191, '2019-07-08', 0),
(25, 'Carte de crédit', 193, '2019-07-08', 1),
(26, 'Carte bleue', 196, '2019-07-08', 1),
(27, 'Mastercard', 198, '2019-07-08', 0),
(28, 'Visa', 204, '2019-07-08', 0),
(29, 'libelle de la nouvelle carte', 188, '2019-08-31', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `document`
--

CREATE TABLE `document` (
  `Email` varchar(200) NOT NULL,
  `Piece_Identite` longblob DEFAULT NULL,
  `Justificatif_Domicile` longblob DEFAULT NULL,
  `Annonce_Legale` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `document`
--

-- --------------------------------------------------------

--
-- Структура таблицы `loginattempts`
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
-- Структура таблицы `monnie`
--

CREATE TABLE `monnie` (
  `Id` int(3) NOT NULL,
  `Nom` varchar(40) NOT NULL,
  `Unite` float NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `monnie`
--

INSERT INTO `monnie` (`Id`, `Nom`, `Unite`, `Type`) VALUES
(836, 'Dollar US', 0.01, 'physique'),
(838, 'Bitcoin', 0.0000097, 'electronique'),
(839, 'Euro', 0.0095, 'physique'),
(840, 'Livre Sterling', 0.00848, 'physique');

-- --------------------------------------------------------

--
-- Структура таблицы `motiftransaction`
--

CREATE TABLE `motiftransaction` (
  `Mutation_Hash` varchar(64) NOT NULL,
  `Motif` varchar(255) NOT NULL DEFAULT 'Aucun motif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `motiftransaction`
--

INSERT INTO `motiftransaction` (`Mutation_Hash`, `Motif`) VALUES
('196d8a8b6f69f4b0b14ec25b2694360637ca0d382cc52d504ed62e5acc2eb360', 'Dépôt HTG'),
('1f9e4d9c9508a27f6f07ea373c94fdd43982abd201675dd7ac0d1fc164738fd3', 'virement'),
('20e1905b65a34fc2c2ad76dda0ecc8d2cd5b4a8ad421c2dc3a7a0ba9fc23bbe2', 'Paiement'),
('2551b0b51afa8dd4ad886d45dcfb1caf5726665d157650c63df873c7fdd594d7', 'Commande nouvelle carte'),
('28bda5aa24112f12cd022074df041c95af484c341b285a2c254c63cc162678bd', 'Dépôt HTG'),
('2b131126c414d56525009efdd8f8ca6c5cba122f64e9f04af6a26ae3d397bbb1', 'Cotisations retraite'),
('2d02a2d57c9738b17ad54f3d1b69cf39247440a02f677c922f45fb7f6f1a0068', 'spasibo'),
('31f363516bb6a1fa32c424f2a5470620b540afb31ecde1fab96388f35cf726ad', 'Dépôt HTG'),
('35cb1af30da264bb4f5dfea4cbc42d3b4b82e2d180d8bd2c41e969e49eb7fcc9', 'Ouverture nouveau portefeuille'),
('391f3f5dd9232245d91eb02c296ce20238f6db064d7d353840fa6f80bfac8c88', 'virement'),
('4107be0b170c9630cdb51dcfe6ca42d3464032002ceac131d18230104c2c44fe', ''),
('4e44e5c0bc6909e3e6cad187acfa47111b22bd0b6ba82010ac076f4404eb96fd', 'virement'),
('57ac9aa0d58c33a0ba29ca7903dc416783dc27f595754fea12728e93348fd699', ''),
('57b120179ad97cee2905745950a1b2b06e99cee28997774e2bfc1f7edd36d5a9', 'Commande nouvelle carte'),
('59118e34b0db268b07ddbb14cf6c52a1026ee9db7160340769537d7dc63692b5', 'Commande nouvelle carte'),
('6f6dec4bdb45566fc52708e642d6b46cbee87a2d282596e2c3a0a619f2367e62', 'Ouverture nouveau portefeuille'),
('7401a4c30a2412433c2f0b0aee77e68a6bc4a75f308778c0f440d7c3a1d9844b', 'Commande nouvelle carte'),
('7b2fcbb76b4db85c938d3e5af3d91db43e5d338f8fbf372ac5f4d0883a2864c2', 'Un Motif'),
('7e282949b81505ca5116d65de339d2b808cbc827b2458eab82b40300eddd2275', 'Commande nouvelle carte'),
('83e46c33a14da1862fbd57034a630c2e34c9673c690afcc2ca61fad141fdd8df', 'Ouverture nouveau portefeuille'),
('8577082353d216a476871cd82660ae29ce50699ce5edafcf78bd1130ef7973ec', 'Remboursement'),
('a370dd22d4bde8db4fdca3fb21f1586b2f278ee59559d7323748af85c017e8cc', 'Dépôt HTG'),
('a4dd20b620b145a27787fc6ae4a34ada4bc4c2f6bda482777f21156d6b61802c', 'Ouverture nouveau portefeuille'),
('a702f7a79fa12f9e145c5ada27e7eaa223e3c6e5afe0a354e4cf8931f34befa4', 'Un Motif'),
('a9f008e6a25e33303934b88512d801da42c9ce1e8e0046e38e8c0d13ad26ed2f', 'Hallo'),
('c140b98b7e5f5e968cea3a05f609f5923cd23924687f8a906f1d49fc4f296e69', 'Remboursement TGV'),
('c4cbacbe8ab092b706255244d4a557fbff8724b368e00c8f4fd28f8770646692', 'Dépôt HTG'),
('cc097056288418d331b3ad577cdd6a061a23027629381ea023f5c468ac0a5510', 'Paiement'),
('cdbda9c30db7b16401da83cb3095c2922c71fbacb60452fbd2e8dcf9db31cd95', 'Ouverture nouveau portefeuille'),
('d48d7938b2298d808d94614462ad155083c96c40917d20f6244c55d5c21c3e0b', 'Ouverture nouveau portefeuille'),
('f956500bca5fd96c57dc0694ced1b87a6c397a071c049c43c58bb6c7ed1dc8c5', 'Paiement'),
('ff1b72b8973d245d31838b99f9b9f212ab56ec382104dd54fdb97afed66d812a', 'Paiement');

-- --------------------------------------------------------

--
-- Структура таблицы `parametre`
--

CREATE TABLE `parametre` (
  `Id` int(3) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Valeur` varchar(255) NOT NULL,
  `DateCreation` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `parametre`
--

INSERT INTO `parametre` (`Id`, `Nom`, `Description`, `Valeur`, `DateCreation`) VALUES
(75, 'montant max transaction', 'Le montant max de transaction autorisé', '10 000 DHTG', '2019-07-08');

-- --------------------------------------------------------

--
-- Структура таблицы `portefeuille`
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
-- Дамп данных таблицы `portefeuille`
--

INSERT INTO `portefeuille` (`Id`, `Utilisateur_Email`, `Libelle`, `Ouverture`, `ClePub`, `ClePrive`) VALUES
(48, 'brh@haiti.ht', 'Portefeuille de la BRH', '2019-07-08', 'XuWVK4kw19oM9aTH7EoceQVZJCJSweUKwg', '174e9c4cdaaecd00f19323831b7039bd$de15531b7cca1a5ec5ee5f64734280d63c20961c26ad23c47334d932999953357e78c11e714d22cfea87df73fa33bb32a8f3afeab8cce1437cb984a53a57703144f918c8d457761dfbb51a726007bb388f4ffd92de48da7f69d33d07ec6d7550582231c0ef470514c6205b0f93f19945'),
(188, 'contact@sogebank.ht', 'Portefeuille Principal', '2019-07-08', 'XhYE4afjVxTeTmCNfKHX62BcJfgWBr4bVm', 'f6a5feda5b3b216cb3ded028c34bede6$29717ea4348e13a021f50cfd5b359d025a4dd8e8dd38daa63ef8beae4d5fa1883ca9092d0b5ffeb4c4f8a50da505e5751c5d61a0a85f794945787ef9e6125539890111132758f7553926a3cb1546603b1b00bbcb9fe021d97644aa21e5f7cdcabedfbe5148fe32d7718dc3fd4a60a959'),
(190, 'capitalbank@haiti.ht', 'Portefeuille Principal', '2019-07-08', 'Xs6gm8KydXCZmQPZZzJPE5qDrwvaaCsBSn', '229b599c5409c8a4ee52925b08e9e21e$c5caf9d2e64d317890dc821dbafce755c7d39227e5f30eec27c04a31212aa2eeeaf96822b1016a944adecfff39103d5674c0248dd4499d6c8fff9dc103b3b2a9d4510829a407d6f76b37988b5f0dbc808d974235a94132bd34ebbb134b5e6e8d23e8428210d2fa919c027ef07c0ae098'),
(191, 'gowowofir@theeasymail.com', 'Portefeuille Principal', '2019-07-08', 'Xuu4bRBP9tkmskGbXCyhjRT3j21vFEivKQ', '9afb1695ea9b2599e4758c9553f8dcff$08c0de5f82d450b2a9c8ad0be54484e5ca4fa32c47df60478a49907c3c15fe4d3df1c7401b78c6c8bad44bc94d4c0d647c358aa5055f95e9bbfb87a117452174e8b8f92ccdd2bc3dd80499cd97b9229b746b1a0273e57df3b7f3058a8339a99d916d6eceef8d40035f1e76706f0c3e95'),
(192, 'gowowofir@theeasymail.com', 'Epargne', '2019-07-08', 'Xca3iT5avm2SabVbbbVZYhLL6XUxWHjeDQ', '2c9c41add3f17b5bab6fc8c440bb320f$cf99e7ccc859121c84cf53d1679948f5204e8a1ca07747d21c795d861cd7fefe25cdaca9133e0da9040e63f0a4844d10d99f436c387b076d4ffd7912c425d7688d35deffb31473989350c49785b8ecd22d8fc925ab63f81898cd168a381123ee0cfe4e1103931103a446ef7b7ee80431'),
(193, 'gowowofir@theeasymail.com', 'Livret A', '2019-07-08', 'Xmu38jUjzeXr6LkeLfbKHpy35HF2m2AZra', 'a1a37a2422b16107f01ba8c42f45f734$750ae5558f733d72808478fb51f3fdbf96a60822b5d1edb81fa8a6dd2c804f28f9c62630e928d2ffeeaa77022c0e73cca317aa29c2f1e6a75a83d05d030722c204e1bb73c81e3f83bd1c8035e211093be732d2ced1fb572bb3ad687b0d31f687dcfaac1ad32a2fe282a3edfcf8c6d899'),
(194, 'katzenmaul@inbox.ru', 'Portefeuille Principal', '2019-07-08', 'XriPXvFkjpMWHQBdaKVMdjYZgGaNJisxMx', '267863833e60afb2726cd4bb09740b1f$b44920a700c025d4a1360d4c6f2186cdb3d0b61e33f6296b67067ffb94c764364c3cbd3a5cbac29842b6a3632311c60fab9b4d78f662fdbeaf7c9aae7246e95e3a270d438a9b79b5c95a379c57556b65ee2f448258beff4337fbea3e298f7ea3f0da67b38459f5afa0c3ade0f693cca3'),
(195, 'gowowofir@theeasymail.com', 'Portefeuille charges', '2019-07-08', 'XfWrP9q59AAP4ihRcLQPeTRw154vUc8axR', '19ec699f76fe5d3e0cdb8e8e01e6dfe4$22a0e916536186d1370b6b6d8601ebb6f29d19f152e17f2b00da0c247d076e39bca84c3acff69061e4243814111c49cb1f93430b023b88478572b5b4565706197b69ac0af405db17b3d1298daf6d97767b4e0e0895d605b32c59433f0c1aea3a57f7721edeea89bafef182df80bc5754'),
(196, 'kucibage@intempmail.com', 'Portefeuille Principal', '2019-07-08', 'XwEmM9PT1cBaEQrhasMVfyMxi9fpAbhxVX', '567a054eb4220ed47bb582d06fedb114$08d111e10503fc32d8fec3c8a9a4d1fa90531cc8fc63edd47a7fa46959d71a0f62ffb871bd7914b27e1164ea719b053c02b4fddca3ca207bfe08b6584478494ab69e9bed96d55b65cbf4a1a031442156751426dcca618d92460d8cf68f04fe870683aff94a7d782ca27de9a4bb671608'),
(197, 'kucibage@intempmail.com', 'Epargne', '2019-07-08', 'XyPDVnXzuFPLqNV6PgXjPTL9MqJPy133Ew', 'ebf53dcd3907695ae7d4e63523544d98$d8b517558ba076fdbb06f3940e32cd22d12f0e4faeac918f364333eaadfb4c98583ecf7a51f8ccf9c4a2757744cb6748577b47698183b25018e1910598920743253c3bfe322cf27b4c698cc725114e1643a2b185216aae8618a22c61b2028f4b86c427b261fe7ac0177f184937dcef2d'),
(198, 'kucibage@intempmail.com', 'Frais pro', '2019-07-08', 'XxzeKiqR4fXh4UfV8XAHuEwmXzxRVT6srX', '9988adc29786de5f63e5b23bcbf6fc44$79a60f3345e51036c3aa2d29b5c3ccf52679cb88eb33b084a38f17b7e1df0e3af56cd0c5016326e969294fad4c845de59dab32794dd77779076fdbf06a7c5461534fd9a9157d4cb69024f12497bccd82553c5907f9d324f07ae0702b0f104539cf4c8ce6e4e7a8999dfd231bbcf06979'),
(199, 'citibank@gmail.com', 'Portefeuille Principal', '2019-07-08', 'Xu5dZMkjtHuhJjaue2HTg2EyrNztUcxnGs', '02cb5b2314b991bac958c7aeb02cc1c2$73a98550dcb0fc58a5113b456de84c6d18471478ab5e82d9b77b7028cf942a7f06c6df3d13c0f5195b64ac3441aaf5b51740de7e2a26550360c6a3f4bcd8ac3547cd71b24744e6d24d08edfbd1dac64fa4d6956c1d0ee95c20d4b156ae9fea4db6c26061b6f56c644c7ec454570a01c7'),
(203, 'locuxo@alltempmail.com', 'Portefeuille Principal', '2019-07-08', 'XxtgQ2QMK8nD4TtFZsaJPg1SvENUwoyNBe', '89551611ee9ab7b89b0ac7fc1114ad00$e844a82f4f052d74606648cfb5bcd8afcd276500b0398c9cc208729bb733c4036e7a134c14843c711123ad71a7fd0ac6231b7c6597d97d596122c8b0fbfdac4a5cbc56af36c2961f9a306d7478df83962095f528a0ebab5bdd1297835437079b1601d8e2b93d357c1809927aece13adc'),
(204, 'kucibage@intempmail.com', 'Livret A', '2019-07-08', 'Xk4ssea2CYF5ASQFnzTMRJyaq3FySNqokm', '756514c8ba38efc520a4e4dd638301bd$dd3a772cd8ac898eaa87f2cf77ea15027b5288e2ec101cdfe3cd1a1685f2ae4b34f253d75f10dee39a040bb06e05e641c3f8fa503380e29c53e1102c2e12e1b04f19963f93ce12c6f11c9be925f7018ab0aa88e7bbd45d19de55bb5f81ddec0e06517693e9cd69dbb4f065bd17ef73ae'),
(205, 'tayez@theeasymail.com', 'Portefeuille Principal', '2019-07-08', 'Xmx7TsmMGbZ8hKCC5GNQgWLAu9BTEffXuQ', '19badbcfce1acda4e7ebb156e6dec707$c4303ffde980d10af57f29463a53011f88eee97ee7f3362ffa7a87ae28513d28b799914c6b260b7c5c75ad04339d6db0613c572654c2081d1a28d5845630928fc0ce24dd23c5a9263256c101ab8687196088efa8aabaefe092fe7be125c5321bb988922f72352fe9978161ef96ced33b'),
(206, 'ks@mexvel.com', 'Portefeuille Principal', '2019-07-10', 'XoT84tixMXMqdXWDKKiam7yJkftVtShgVi', 'f6afc3dc458c85908395059936416f2c$7d3fa75bc9a2511e46e2ce80af14d35ea1f255fa5f52dfee74bc2b6cbd81d149b4afdaa1b8f34a5ecd71d63166fb8bf71e5c6469899586de0e0fade631a215d19273a8c7892a9f617a28e79e69607b90a291f3f513e57094e91441b8fd2f1dc7f3c7992fcf8f0740d1096c67e9201eba'),
(207, '3889898@mail.ru', 'Portefeuille Principal', '2019-07-13', 'Xs4vVXdUmkSkwwdqV7ahWeUk8rFiD5XddJ', '74b1b3ee7a14c1f842edafafa4341ed3$794863d5f708709187df6c835d1f93942cdce435641294beb0121d1018d677a8b3e3ec83ad961ea93bc937ce3248433aa83686edb24816cdafd5d1cb8cb6c32f9e3aa29833809c10cd97a9799f8fca155495bfb1feac8d385c2240297bb6511b31ed1a9c78a902b1e07830fc9cbb26f5');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `Id` int(1) NOT NULL,
  `Libelle` varchar(30) NOT NULL,
  `PermissionLevel` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `role`
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
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `Id` int(2) NOT NULL,
  `Libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`Id`, `Libelle`) VALUES
(1, 'En attente'),
(2, 'En cours'),
(3, 'Validé'),
(4, 'Pas valide'),
(5, 'Bloque');

-- --------------------------------------------------------

--
-- Структура таблицы `tokenverification`
--

CREATE TABLE `tokenverification` (
  `Email` varchar(200) NOT NULL,
  `Token` varchar(300) NOT NULL,
  `DateCreationToken` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tokenverification`
--

INSERT INTO `tokenverification` (`Email`, `Token`, `DateCreationToken`) VALUES
('brh@haiti.ht', 'mfTpfSI39uI2edKlzY~QRMoqa5JDEUYPSlkfBsSc7-zk6QN2v_6-ky.m2gj34EUnUDG0LIIVwkFTh0neTYdx7midlxOnZE1xdbr0dpAEo31izwy_r4ojOyPehqL9ip1nQ8acIOEGBekizZrduiFXBCOAEl7T-M0uir8tb-.we0gupxQYawU6ha.cRgMc8TjeatZZKL-pBnWX1gykvb_KZMxJAJEFaDjtJ3EmfVu-ldYVzER8g8NvMHfS_-_D~VCW35Ek5HOW.RGehbTWFyAn8NpBqFoPfE-tjmfqtgOFbCIc', '2019-07-07 22:10:53'),
('capitalbank@haiti.ht', 'uHa5plMiU-6GjDDzenN.jzcNsF~G3aq6P59sHbZeYd9sSyvcZVx7Z1M7CbRIgZXgltC-b-jw0nv1hQ0V3V_1D4AFZxzZQy4L0E1EYXBrV-hDeCtmLRsuAJThd-dzYD_nvjMK-Nj~-.OI.jzoXc54TrjWy..gf4NbCge7Ge2-c6BkZ56J.dUNjv8r03apr-qoezdxKkxuWHFLgoycdoRwN~mlUPUdI6P-yfvbkZXUtcheK2ak_2y9nEjgq1XdtX-~_UgELkXohcmiypNYtIDxakreWPrvO6UyaGiV0Eg-HDUy', '2019-07-07 22:54:40'),
('citibank@gmail.com', 'oRDim-eJ3ggKUCEoIJ1DqG9CGrdue4IbszLjpJd7r~vJX6wxVSqWbvec9v0lYc3KNujEJuioykGc~psPT5e45djlBlhogaFkAX_c4oxg~j5U4CTXDMQNkeQ-_iAy2J5THbskIcU_BzXOV5Hx0BWJZ.hRYPlKeiV3Ya9Oy3watZrCZuzNIvR0vkfWUHDfZFrD1C6LBJ3GGjsEcc.ZJnlzwpfe.A3d7g-DuXf6hoFtospqlQJh64hsVEUU17fHje4VrrHdGQ7UMDcy0YcDs9dcR4CLHV4qN1wSVK4C..a7Iwf0', '2019-07-08 04:06:29'),
('contact@sogebank.ht', 'OFFrlmY11bk3PVuO5xP4042KWEAFWTEed6Ns4w46CvqbcD54TE51q~E.Ui_yx~M-SMzfVKVGA0L3KvtvFzrJETpWC9qzzOZYTE1WV.B3ea7PEdpUOGz8QMY9EG-9K7OLBJX-LWK7DF3uGe9q1thZjv-EdfxnCx6AtW2EmHlEyJAQZ5PXFNXE1Z9z9_jyZiwh0khzgcVmQeWot..K62xicrcS1kNd9iB8R-AGlSvUCx.FQhlg~eYsa9qODZ3cIYzpkpM_DbMjkR-nZwYP_kwCEpj.PrWY19VfFJSQWkG.JbFt', '2019-07-07 22:30:51');

-- --------------------------------------------------------

--
-- Структура таблицы `utilisateur`
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
-- Дамп данных таблицы `utilisateur`
--

INSERT INTO `utilisateur` (`Email`, `Password`, `Nom`, `Prenom`, `Civilite`, `Situation_Familiale`, `Profession`, `Siret`, `Statut_Juridique`, `Secteur_Activite`, `Tel`, `Adresse`, `Ville`, `Code_Postal`, `Documents`, `Status`, `Banque`, `Date`, `IsEmailVerified`, `Role_Id`) VALUES
('3889898@mail.ru', '1+v2vYdzGbYjOBGdk8A6xA==$hKE4kBL4wdSJh8uhkyVKQHt3oHkVvUnzANUQZ6DojpxlMaWuvt6Lunw9SrAqZFCOSYAJ35I7F3a7vllghkeo4A==', 'Semenevna', 'Lidi', 'Mme', 'marie', 'domoxsaike', '', '', '', '8465473763', '7 andri ', 'nice', '87364', NULL, 3, 'Sogebank', '2019-07-13 09:09:35', 1, 4),
('brh@haiti.ht', 'io/6cBtPfIr681Zu2XNe0A==$kiceObEONN5KXGEsbaolnqgUZVTeWa39KjryH15ViYi+t5z6mEKDyRjMdCi1pSE2PTozWZL6V7hj1S3pUrR73A==', 'dd', 'zz', '', '', '', '750600496', '', '', '5092299659', 'Angle rues Pavée et du Quai', 'nice', '4746', NULL, 1, 'BRH', '2019-07-07 22:10:53', 0, 7),
('capitalbank@haiti.ht', 'ZSH6w5b0pOhfnhw6YSiPnA==$bDPg7Ye83p3jQzXYGi1l+EED8Vn+jk4gRgLpDwGrDHldGY8FK0P2Ayy+2eUZcoir3BVt+Yi6habqA2cdsxAtyA==', 'Roy', 'Bernard', '', '', '', '', '', '', '5092299650', '', '', '', NULL, 3, 'CapitalBank', '2019-07-07 22:54:39', 0, 6),
('citibank@gmail.com', 'n57LIm8H8l+ErtNpkcJt9g==$o/RVFUGdLAkU/st1ow2pp7KciyYlsSOG5hnPE9S59+zrEHsY15QReQp/PV1EFU3EH3IF/xnkf+AElLIRw2mwBQ==', 'karim', 'alad', '', '', '', '', '', '', '0758187762', 'edzd', '', '5200', NULL, 1, 'Citibank', '2019-07-08 04:06:29', 0, 3),
('contact@sogebank.ht', 'XgWN6zbPELR2+KtGrJN5OA==$eKGvXDD4KHSd/k7wK0HHxK3SaySMgMHtZ0zJLNgTCQlcHSXj2MKU62YEAPdET0UTNrlXKgt72xLGlZu1exWomQ==', 'Moscoso123', 'Robert', '', '', '', '36252187900034', '', '', '5092229500', 'Delmas 48, Route de Delmas', 'Port-au-Prince', '', NULL, 3, 'Sogebank', '2019-07-07 22:30:51', 1, 6),
('gowowofir@theeasymail.com', 'nb6GvGNAY1XoNdmdNxM90Q==$KxdIstuRw2Y97kq/hHNJ/9fwugqesJoKh6BW2DAMv69EquW4s7gwFj+r17Q1TuZFHz4QfCQlZcLZB7UA7Hg3pw==', 'Wofir', 'Gowo', 'M', 'marie', 'Artisan', '', '', '', '0610101010', '73 Rue Haiti', 'Port-au-Prince', '06000', NULL, 1, 'Sogebank', '2019-07-07 23:05:31', 1, 0),
('katzenmaul@inbox.ru', '3YNSZ5bj4pJ4X3sE+/xq6Q==$YZgEiQjYjzU7mxvo3nsl0+HFxLgUs0NgIkbn2YrJ//0Fe3RiPMP+8OIF43YktI5OF2XbSBgHpPgN0OGTW+x3dA==', 'Dubic', 'Patricia', 'Mme', 'marie', 'Peintre', '', '', '', '5775334354', 'Impasse Nezivar', 'Port-au-Prince', '66343', NULL, 3, 'Sogebank', '2019-07-07 23:48:35', 1, 4),
('ks@mexvel.com', 'CCd6hxrRm+91xK6Jp5YAOA==$VDIYgYbd+PaZGFDTwXeA/gXWXOdmWpMWNy+LHG/WGcohKwQ5D6wPmDWTakAFPGtqxvRyG2qxVBiGQ3/fAAVfsA==', 'Levxem', 'Mexvel', '', '', '', '', '', '', '', '', '', '', NULL, 3, 'Sogebank', '2019-07-10 20:08:50', 1, 4),
('kucibage@intempmail.com', 'Uld0LF3vF08A8ZKARkoPAw==$uH17nMLoWt0DOJ8ANrHvgWMaU1AU9pVeG0zawp2HPq3W1SHeSlrvcC5uUtJvyRXDa3njYcRZQPsOI7JlHXl7Hw==', 'Bage', 'Kuci', '', '', '', '485234324', 'SA', 'Médecine', '0650505050', '32 Boulevard du soleil', 'Port-au-Prince', '06000', NULL, 3, 'Sogebank', '2019-07-07 23:56:55', 1, 5),
('locuxo@alltempmail.com', 'HEJHYLTZQrRaZ3J89HD/tg==$SR3RGdaDs9RPa5OdJgh6J2kgWB7pZKp9z31B6T31ojcQYgkAAsxPVYpvUPhKPpdgLnppiz7drk9YhiaqQNK9Xw==', 'John', 'Does', '', '', '', '', '', '', '0600000000', '', 'Port-au-Prince', '', NULL, 3, 'BUHHT', '2019-07-08 16:46:34', 0, 6),
('tayez@theeasymail.com', 'ekFpHH27y90+CpeHynuzVw==$+L/k46AV9ZNlCp3QH93w29RMBhxyMUu/1+vJBLiPQ4IPCxhm1rCSpSStUA8Ya3OrL78pi/qCAatys+t6jfQG0A==', 'Doe', 'Jane', 'Mme', 'marie', 'Artisan', '', '', '', '0610101010', 'Rue des miracles', 'Port-au-Prince', '06000', NULL, 3, 'Sogebank', '2019-07-08 17:07:06', 1, 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `banque`
--
ALTER TABLE `banque`
  ADD PRIMARY KEY (`NomCommercial`);

--
-- Индексы таблицы `beneficiaire`
--
ALTER TABLE `beneficiaire`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Utilisateur_Email` (`Utilisateur_Email`);

--
-- Индексы таблицы `carte`
--
ALTER TABLE `carte`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Portefeuille_Id` (`Portefeuille_Id`);

--
-- Индексы таблицы `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`Email`),
  ADD KEY `Email` (`Email`);

--
-- Индексы таблицы `loginattempts`
--
ALTER TABLE `loginattempts`
  ADD PRIMARY KEY (`Email`),
  ADD KEY `Email` (`Email`);

--
-- Индексы таблицы `monnie`
--
ALTER TABLE `monnie`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `motiftransaction`
--
ALTER TABLE `motiftransaction`
  ADD PRIMARY KEY (`Mutation_Hash`),
  ADD UNIQUE KEY `Mutation_Hash` (`Mutation_Hash`);

--
-- Индексы таблицы `parametre`
--
ALTER TABLE `parametre`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `portefeuille`
--
ALTER TABLE `portefeuille`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `ClePub` (`ClePub`,`ClePrive`),
  ADD KEY `Utilisateur_Email` (`Utilisateur_Email`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `libelle` (`Libelle`),
  ADD UNIQUE KEY `Id_3` (`Id`),
  ADD KEY `Id` (`Id`),
  ADD KEY `Id_2` (`Id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `tokenverification`
--
ALTER TABLE `tokenverification`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `uniquetoken` (`Token`);

--
-- Индексы таблицы `utilisateur`
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
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `beneficiaire`
--
ALTER TABLE `beneficiaire`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `carte`
--
ALTER TABLE `carte`
  MODIFY `Id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `monnie`
--
ALTER TABLE `monnie`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=841;

--
-- AUTO_INCREMENT для таблицы `parametre`
--
ALTER TABLE `parametre`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT для таблицы `portefeuille`
--
ALTER TABLE `portefeuille`
  MODIFY `Id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `Id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `beneficiaire`
--
ALTER TABLE `beneficiaire`
  ADD CONSTRAINT `beneficiaire_ibfk_1` FOREIGN KEY (`Utilisateur_Email`) REFERENCES `utilisateur` (`Email`);

--
-- Ограничения внешнего ключа таблицы `carte`
--
ALTER TABLE `carte`
  ADD CONSTRAINT `carte_ibfk_1` FOREIGN KEY (`Portefeuille_Id`) REFERENCES `portefeuille` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `document_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `utilisateur` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `loginattempts`
--
ALTER TABLE `loginattempts`
  ADD CONSTRAINT `loginattempts_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `utilisateur` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `portefeuille`
--
ALTER TABLE `portefeuille`
  ADD CONSTRAINT `portefeuille_ibfk_3` FOREIGN KEY (`Utilisateur_Email`) REFERENCES `utilisateur` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tokenverification`
--
ALTER TABLE `tokenverification`
  ADD CONSTRAINT `tokenverification_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `utilisateur` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_2` FOREIGN KEY (`Role_Id`) REFERENCES `role` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `utilisateur_ibfk_3` FOREIGN KEY (`Status`) REFERENCES `status` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `utilisateur_ibfk_4` FOREIGN KEY (`Banque`) REFERENCES `banque` (`NomCommercial`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
