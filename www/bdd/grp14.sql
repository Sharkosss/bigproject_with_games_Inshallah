-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 13 Janvier 2023 à 02:54
-- Version du serveur :  5.6.20-log
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `grp14`
--
CREATE DATABASE IF NOT EXISTS `grp14` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `grp14`;

-- --------------------------------------------------------

--
-- Structure de la table `accueil`
--

CREATE TABLE IF NOT EXISTS `accueil` (
`id` int(11) NOT NULL,
  `equipe` varchar(120) NOT NULL,
  `log1n` varchar(120) NOT NULL,
  `contac1` varchar(120) NOT NULL,
  `acceilslidebar` varchar(120) NOT NULL,
  `createby` varchar(120) NOT NULL,
  `imgslidebar` varchar(120) NOT NULL,
  `slidebarblack` varchar(120) NOT NULL,
  `explication` varchar(120) NOT NULL,
  `carou1img` varchar(120) NOT NULL,
  `carou2img` varchar(120) NOT NULL,
  `carou3img` varchar(120) NOT NULL,
  `carou4img` varchar(120) NOT NULL,
  `carou1imgbk` varchar(120) NOT NULL,
  `paralaximg1` varchar(120) NOT NULL,
  `paralaximg2` varchar(120) NOT NULL,
  `titreequipe` varchar(120) NOT NULL,
  `presentationequipe` text NOT NULL,
  `presentationethan` varchar(120) NOT NULL,
  `ethan` text NOT NULL,
  `presentationleo` text NOT NULL,
  `leo` text NOT NULL,
  `imgeethan` varchar(120) NOT NULL,
  `imgleo` varchar(120) NOT NULL,
  `projetpresentation` varchar(120) NOT NULL,
  `textpresentation` text NOT NULL,
  `premierprojet` varchar(120) NOT NULL,
  `comperso` varchar(120) NOT NULL,
  `deuxiemeprojet` varchar(120) NOT NULL,
  `initiaalog` varchar(120) NOT NULL,
  `troisiemeprojet` varchar(120) NOT NULL,
  `htmlcss` varchar(120) NOT NULL,
  `nosprojos` varchar(120) NOT NULL,
  `blablaprojo` text NOT NULL,
  `resumcom` text NOT NULL,
  `resumalgo` text NOT NULL,
  `resumhtmlcss` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED AUTO_INCREMENT=3 ;

--
-- Contenu de la table `accueil`
--

INSERT INTO `accueil` (`id`, `equipe`, `log1n`, `contac1`, `acceilslidebar`, `createby`, `imgslidebar`, `slidebarblack`, `explication`, `carou1img`, `carou2img`, `carou3img`, `carou4img`, `carou1imgbk`, `paralaximg1`, `paralaximg2`, `titreequipe`, `presentationequipe`, `presentationethan`, `ethan`, `presentationleo`, `leo`, `imgeethan`, `imgleo`, `projetpresentation`, `textpresentation`, `premierprojet`, `comperso`, `deuxiemeprojet`, `initiaalog`, `troisiemeprojet`, `htmlcss`, `nosprojos`, `blablaprojo`, `resumcom`, `resumalgo`, `resumhtmlcss`) VALUES
(1, 'L''équipe', 'Login', 'Contact', 'Accueil ', 'Create by Ethan P et Léo G', '../img/javascript.jpg', '../img/black.jpg', 'EXPLICATION', '../img/header_guardia.jpg', '../img/corde.jpg', '../img/algo.jpg', '../img/css.jpg', '../img/principal.jpg', '../img/equipe.jpg', '../img/paralaximg2.jpg', 'Présentation de l''équipe', 'Ce projet à été réalisé par Ethan PetitJean et Léo GRISEY, vous pourrez retrouver sur ce site des résumés et des explications sur leurs projets.', 'Présentation Ethan PETITJEAN', 'Bonjour, \r\n<br>\r\nJe m''appelle Ethant PETITJEAN, je suis à Gardia en premiere année. J''ai choisi cette école pour la passion que je porte à l''informatique, et plus particulièrement à la Cybersécurité. \r\n            ', 'Présentation Léo GRISEY', 'Bonjour, \r\n<br>\r\nJe m''appelle Léo GRISEY, je suis à Gardia en premiere année et j''ai actullement 18ans. Je sors d''un lycée générale avec les options Maths et NSI. Et pourquoi cette école ? Pour ça pédagogie par projet qui m''a énormément intérréssée.\r\n             ', '../img/ethan1.jpg', '../img/leo.jpg', 'Présentation de nos projets', 'Parmis nos projets de cette année, nous en avons choisis 3 pour vous les présenter, \r\nvous pouvez les retrouver en swipant à droite !', 'Premier projet', 'Communication personnelle', 'Deuxième projet', 'Initiation à l''argorithmie', 'Troisième projet', 'HTML/CSS', 'Nos projets :', '<br>\r\n<p>Bienvenue sur notre site, vous pourrez retrouver trois des projets que nous avons réaliser cette année. \r\n<br>\r\n<br>\r\n¤ Le premier projet porte sur la communication personnelle,c''est a dire, sur la prise de parole en public.\r\n<br>\r\n<br>\r\n ¤ Le deuxième projet, porte lui, sur l''argorythmie et le python, l''objectif était de réaliser des minis jeux en programation.\r\n<br>\r\n<br>\r\n¤ Le troisième et dernier projet que nous vous présenterons ici, est sur l''HTML et le CSS, il faillait ici créer une page web respectant les normes SEO et les structures HTML.\r\n </p>', '<p>\r\nPour résumer, le projet communication personnelle, étais un projet "libre" les membres du groupe choisissaient un sujet qu''ils devront par la suite présenter devant un public. Le sujet que notre groupe a choisi de présenter, était la corde à sauter connectée Smart Rope Led.\r\n</p>', '<p>\r\nIci, pour reprendre l''idée générale de ce projet, nous avions pour objectifs de créer l''algorithme de minis jeux, et de les mettres par la suite en Python pour rajouter quelques easter eggs !\r\n</p>', '<p>\r\nPour ce dernier projet, le but était par groupe, de développer en HTML/CSS un site web de notre jeu préféré. Nous avons pour notre par choisi Candy Crush. Mais ce n''est pas tout, il faillait absolument mettre des menus ou encore des photos sur notre page !  \r\n</p>');

-- --------------------------------------------------------

--
-- Structure de la table `contact_from`
--

CREATE TABLE IF NOT EXISTS `contact_from` (
`id` int(11) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `contact_from`
--

INSERT INTO `contact_from` (`id`, `name`, `email`, `message`) VALUES
(1, 'drgdrgdrg', 'lucas1@gmal.fr', 'dgdrgdr'),
(2, 'jjjr', 'test@gmail.com', 'ujiokp'),
(3, 'aze', 'aze@aze.com', 'azeazeaze');

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `titlepage` varchar(120) NOT NULL,
  `descpro` text NOT NULL,
  `desccont` text NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `img4` varchar(100) NOT NULL,
  `imgbg` varchar(120) NOT NULL,
  `pronom` varchar(50) NOT NULL,
  `titlecomp1` varchar(50) NOT NULL,
  `titlecomp2` varchar(50) NOT NULL,
  `titlecomp3` varchar(50) NOT NULL,
  `titlecomp4` varchar(50) NOT NULL,
  `emoji1` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `emoji2` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `emoji3` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `emoji4` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `comp1` text NOT NULL,
  `comp2` text NOT NULL,
  `comp3` text NOT NULL,
  `comp4` text NOT NULL,
  `retour` text NOT NULL,
  `imgintervenant` varchar(120) NOT NULL,
  `nomintervenant` varchar(120) NOT NULL,
  `linkedinhttps` varchar(120) NOT NULL,
  `linkedin` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `project`
--

INSERT INTO `project` (`id`, `title`, `titlepage`, `descpro`, `desccont`, `img1`, `img2`, `img3`, `img4`, `imgbg`, `pronom`, `titlecomp1`, `titlecomp2`, `titlecomp3`, `titlecomp4`, `emoji1`, `emoji2`, `emoji3`, `emoji4`, `comp1`, `comp2`, `comp3`, `comp4`, `retour`, `imgintervenant`, `nomintervenant`, `linkedinhttps`, `linkedin`) VALUES
(1, 'Communication personnelle', 'Communication personnelle', '<P> Voici notre premier projet réalisé cette année, lors de ce dernier,''objecif etait de faire parler les apprenants devant une audiance. Pour cela, il était nécessaire de créer un powerpoint, ou un support de présentation. Une fois cela fais, il était nécessaire de connaitre sa présentation et de pouvoir parler avec prestance pour convaincre notre audiditoire. Ici, le sujet importait peux.</P>', '<p>\r\nNotre présentation, étais sur une corde à sauter, et nous avions pour objectif\r\nde la vendre en chantant ses mérites et ses avantages. \r\n<br>\r\nPour ça, nous avons réalisé un diaporama, contenant les bien fais de la corde à sauter, et pourquoi choisir cette corde à sauter connecté la.\r\n</p>', '../img/diapo1.jpg', '../img/diapo2.jpg', '../img/diapo3.jpg', '../img/diapo4.jpg', '../img/bgpj1', 'Project 1', 'Prise de parole en public', 'Soutenance orale devant un jury', 'Réponse aux questions', 'Tenue d’un argumentaire', '????', '????‍????', '❔', '????', 'Ici, la compétence attendu, est de savoir prendre la parole en public et de pouvoir\r\nse faire comprendre. C''est à dire tenue correcte, ne pas touner le dos par exemple, et bonne présentance.', 'Ici, la compétence attendu, et de savoir prendre la parole devant un jury, ne pas \r\nprendre peur et être convaincu de ce qu''on l''on dit, ne pas douter de soi.', 'Ici, la compétence attendu, et de savoir répondre à des questions sur un sujet que \r\nque l''on a travailé. Il faut maitriser son domaine, et ne pas se retrouver sans réponse.', 'Ici, la compétence attendu, et de savoir tenir des propos arguments, savoir se \r\njustifier ses choix. Il faut des arguments solide et recherché.', 'Nous trouvons que ce projet à été très intéressant sur de nombreux points, malgré une notation que nous ne comprennons pas.', '../img/sara.jpg', 'Intervenante : Sarah Peillon', 'https://www.linkedin.com/in/sarahpeillon/', 'Linkedin'),
(2, ' L''algorithmie avec Python  ', 'Initiation algorithmique', '<P>\r\nPour faire assez court, cette initiation avait pour but de nous permettre de revoir \r\nles bases de l''algorithmie, notament sur Larp, mais aussi de nous permettre de revoir ou de voir les bases du python. Pour les plus curieux, il était même possible de créer une interface graphique, soit avec Tkunter, soit avec Pygame.\r\n</P>', '<h5>Notre projet se décomposait en deux parties : </h5>\r\n<p>\r\n Première partie, nous présention l''algorithme et notre programme, pour que l''Intervenant puisse voir, notre code, et relever les erreurs. Ensuite nous lui avons fait une démonstration du déroulement de programme, et comment "actionner" les easter eegs.\r\n<br>\r\n<br>\r\nDeuxième partie, nous avons eux le droit à des questions sur VIM et Git, de cette \r\nmaniènère l''intervenant pouvait s''assurer que nous avions bien acqueris les compétences demandées, et que tout les membres du groupes avaient contribués au travail.\r\n</p>', '../img/PFCpy.jpg', '../img/morpion1.jpg', '../img/morpion2.jpg', '../img/morpion3.jpg', '../img/bgpj2', 'Projet 2 ', 'Connaître les bonnes pratiques de développement.', 'Comprendre les principes de base de l’algorithmiqu', 'Rédiger des algorithmes de base.', 'Dérouler des algorithmes sur papier.', '✔', '????', '????‍????', '????', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste laborum labore optio minima nisi, qui voluptatem inventore at provident, iure nulla error eaque, quibusdam delectus placeat quaerat maiores neque saepe.', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste laborum labore optio minima nisi, qui voluptatem inventore at provident, iure nulla error eaque, quibusdam delectus placeat quaerat maiores neque saepe.', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste laborum labore optio minima nisi, qui voluptatem inventore at provident, iure nulla error eaque, quibusdam delectus placeat quaerat maiores neque saepe.', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste laborum labore optio minima nisi, qui voluptatem inventore at provident, iure nulla error eaque, quibusdam delectus placeat quaerat maiores neque saepe.', 'Le projet etait plutôt intéressant dans l''enssemble, même si la programation n''est pas ce que l''on préfère. Nous avons également eu pas mal de problème et d''erreur.', '../img/github.jpg', 'Intervenant : Sylvain', '', 'Linkedin non fournis'),
(3, 'Développement Web avec HTML et CSS', 'Web HTML/CSS', 'Voici notre premier web, lors de ce dernier, l''objecif etait créé un site en HTML et CCS devant respecter certaines contraines et consignes imposées. Pour cela, il était nécessaire de connaitre de nombreuses normes, notament en CSS. Une fois cela fais, il était nécessaire d''avoir le site le plus léger possible pour un meilleur référencement naturel.', 'Notre site, avait pour sujet Candy Crush, et les nombreuses astuces et tips que l''on peut trouver entre le niveau 0 et le niveau 1000.  \r\n<br>\r\nC''est pour cette raison, que nous l''avons intitulé Candy Tuto. Vous pourrez avoir un aperçu de notre page ci-dessous, mais, le site est caché et accésible depuis ce site, à vous de le retrouver !!', '../img/site1.jpg', '../img/site2.jpg', '../img/site3.jpg', '../img/site4.jpg', '../img/bgpj3', 'Projet 3 ', 'Les balises HTML et HTML5', 'Les feuilles de styles CSS', 'Structure HTML d’un site', 'Esthétique d’un site', '????', '????', '????', '????', 'Ici, la compétence attendu, est de comprendre chaque balise, son fonctionnement, son utilité et son impact sur le référencement des pages.', 'Ici, la compétence attendu, et de comprendre comment structurer sa feuille de style, maîtriser le concept d’élément parent et enfant, connaître les propriétés de design web de base, maîtriser les héritages, les points de priorités.', 'Ici, la compétence attendu, et d''utiliser les bonnes balises pour les bonnes raisons, dans le bon ordre. Respect des règles du W3C et des sémantiques.', 'Ici, la compétence attendu, et de savoir designer de manière esthétique et ergonomique une page web.', 'Nous trouvons avons trouver ce projet très intéressant, malgré quelques difficulté, et un manque de temps pour finir le site comme nous l''avions en tête. Nous avons aussi manqué de temps pour certaines normes. De ce fait, la note n''a pas été à la hauteur de nos attentes, même si elle reste pas trop mal. ', '../img/avatar.jpg', 'Intervenant : Antoine Di Roberto', 'https://www.linkedin.com/in/antoine-di-roberto-8aa93768/', 'Linkedin');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(61) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `nom`, `admin`) VALUES
(6, 'a@a.a', '$2y$10$8q8t8dTzxSPeEDcsHumBX.Z4cB0lENZe3v4vA.RxsuB', 'aaa', 0),
(20, 'admin1@gmail.com', '$2y$10$bWG4DPOLFUhGbn/QRqwW.ekbTdrfb6HDxtt3ObyOZrG13lY.I0tpu', 'admin', 1),
(21, 'user@user.user', '$2y$10$kT18633eJ050HJzhxQ4gQu1sfKYPsMeq3b6EQD0DXL0GuojVF0X5e', 'user', 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `accueil`
--
ALTER TABLE `accueil`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contact_from`
--
ALTER TABLE `contact_from`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `project`
--
ALTER TABLE `project`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `accueil`
--
ALTER TABLE `accueil`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `contact_from`
--
ALTER TABLE `contact_from`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
