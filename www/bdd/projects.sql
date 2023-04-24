-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 20 Avril 2023 à 18:25
-- Version du serveur :  5.6.20-log
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `projects`
--

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
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
  `projectname` varchar(50) NOT NULL,
  `titlecomp1` varchar(50) NOT NULL,
  `titlecomp2` varchar(50) NOT NULL,
  `titlecomp3` varchar(50) NOT NULL,
  `titlecomp4` varchar(50) NOT NULL,
  `comp1` text NOT NULL,
  `comp2` text NOT NULL,
  `comp3` text NOT NULL,
  `comp4` text NOT NULL,
  `retour` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `projects`
--

INSERT INTO `projects` (`id`, `title`, `titlepage`, `descpro`, `desccont`, `img1`, `img2`, `img3`, `img4`, `imgbg`, `projectname`, `titlecomp1`, `titlecomp2`, `titlecomp3`, `titlecomp4`, `comp1`, `comp2`, `comp3`, `comp4`, `retour`) VALUES
(1, 'Communication personnelle', 'Communication personnelle', 'Voici mon premier projet réalisé cette année dont l''objectif était d''apprendre à parler en public devant une audience. Pour cela, nous devions mon groupe et moi créer un support de présentation efficace, comme un powerpoint par exemple. Ensuite, il était essentiel de bien connaître notre présentation et de la présenter avec prestance afin de convaincre notre auditoire. Dans ce projet, le sujet importait peu car l''objectif principal était de développer nos compétences en prise de parole en public et en présentation.', '<p>Pour notre présentation de la corde à sauter, nous avons décidé de mettre en avant les avantages pour la santé de l''utilisation de cet équipement sportif. Nous avons donc inclus des données scientifiques et des témoignages d''experts pour montrer comment la corde à sauter peut améliorer la condition physique et aider à brûler des calories efficacement. Nous avons également souligné les avantages supplémentaires d''une corde à sauter connectée, tels que le suivi des données d''entraînement et les fonctionnalités de coaching personnalisées.<br><br>  Pour rendre notre présentation plus attrayante visuellement, nous avons utilisé des images et des vidéos pour montrer comment utiliser la corde à sauter correctement, ainsi que les différents types d''exercices que l''on peut faire avec elle. Nous avons également inclus des détails sur la durabilité et la qualité de fabrication de la corde à sauter, pour convaincre notre public de sa valeur à long terme.</p>', 'pj1/diapo1.jpg', 'pj1/diapo2.jpg', 'pj1/diapo3.jpg', 'pj1/diapo4.jpg', 'pj1/bgpj1', 'Communication personnelle', 'Prise de parole en public', 'Soutenance orale devant un jury', 'Réponse aux questions', 'Tenue d’un argumentaire', 'Ici, la compétence attendu, est de savoir prendre la parole en public et de pouvoir\r\nse faire comprendre. C''est à dire tenue correcte, ne pas touner le dos par exemple, et bonne présentance.', 'Ici, la compétence attendu, et de savoir prendre la parole devant un jury, ne pas \r\nprendre peur et être convaincu de ce qu''on l''on dit, ne pas douter de soi.', 'Ici, la compétence attendu, et de savoir répondre à des questions sur un sujet que \r\nque l''on a travailé. Il faut maitriser son domaine, et ne pas se retrouver sans réponse.', 'Ici, la compétence attendu, et de savoir tenir des propos arguments, savoir se \r\njustifier ses choix. Il faut des arguments solide et recherché.', 'En résumé, ce projet m''a permis de développer mes compétences,  en prise de parole en public et en soutenance orale en présentant  de manière professionnelle et concise. J''ai appris à structurer mon argumentaire et à répondre aux questions de manière efficace et professionnelle. Je suis convaincu que ces compétences me seront utiles dans tous les domaines professionnels.'),
(2, ' L''algorithmie avec Python  ', ' L''algorithmie avec Python  ', 'Durant cette année, j''ai réalisé plusieurs projets en lien avec Python. Le premier m''a permis de me familiariser avec les structures de données et les algorithmes classiques tels que les boucles, les conditions, les tableaux, les listes et les fonctions. Le deuxième projet était quant à lui axé sur le web scraping, où j''ai appris à utiliser des bibliothèques telles que Beautiful Soup et Requests pour extraire des données d''un site web.', 'Dans le deuxième projet Python, j''ai utilisé le web scraping pour extraire des données d''un site web de musique, plus précisément des références sur les basses électriques. J''ai utilisé les bibliothèques Beautiful Soup et Requests pour naviguer dans le code HTML du site web, trouver les informations pertinentes et les extraire. J''ai ensuite stocké toutes ces informations dans un fichier CSV pour pouvoir les utiliser plus tard. <br><br> Le web scraping est une technique qui consiste à extraire automatiquement des données d''un site web en utilisant un programme informatique. Il permet de récupérer des informations qui ne sont pas facilement accessibles autrement, telles que des données de prix, des avis de clients, des informations de produits, etc. Le principe du web scraping consiste à envoyer une requête au serveur du site web pour récupérer le code HTML de la page, puis à extraire les données souhaitées en utilisant des bibliothèques telles que Beautiful Soup. Cependant, il est important de noter que le web scraping peut violer les conditions d''utilisation du site web et peut être illégal dans certains cas, il est donc important de vérifier la légalité avant de procéder.', 'pj2/PFCpy.jpg', 'pj2/morpion1.jpg', 'pj2/morpion2.jpg', 'pj2/morpion3.jpg', 'pj2/bgpj2', 'Python', 'Connaître les bonnes pratiques de développement.', 'Comprendre les principes de base de l’algorithmiqu', 'Rédiger des algorithmes de base.', 'Dérouler des algorithmes sur papier.', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste laborum labore optio minima nisi, qui voluptatem inventore at provident, iure nulla error eaque, quibusdam delectus placeat quaerat maiores neque saepe.', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste laborum labore optio minima nisi, qui voluptatem inventore at provident, iure nulla error eaque, quibusdam delectus placeat quaerat maiores neque saepe.', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste laborum labore optio minima nisi, qui voluptatem inventore at provident, iure nulla error eaque, quibusdam delectus placeat quaerat maiores neque saepe.', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste laborum labore optio minima nisi, qui voluptatem inventore at provident, iure nulla error eaque, quibusdam delectus placeat quaerat maiores neque saepe.', 'En conclusion, ce projet Python axé sur le web scraping a été très intéressant et enrichissant pour moi. J''ai pu acquérir de nouvelles compétences en programmation et découvrir de nouvelles bibliothèques Python telles que Beautiful Soup et Requests. Bien que j''ai commis quelques erreurs au début, j''ai appris de mes erreurs et je suis satisfait du résultat final. Dans l''ensemble, ce projet a été une expérience positive pour moi et m''a donné envie d''explorer davantage le monde de la programmation et du web scraping.'),
(3, 'Web avec CSS, HTML, JS, Framework, PHP et MySql', 'Dévellopement Web', '<p>Voici notre premier web, lors de ce dernier, l''objecif etait créé un site en HTML et CCS devant respecter certaines contraines et consignes imposées. Pour cela, il était nécessaire de connaitre de nombreuses normes, notament en CSS. Une fois cela fais, il était nécessaire d''avoir le site le plus léger possible pour un meilleur référencement naturel.</p>', 'Notre site, avait pour sujet Candy Crush, et les nombreuses astuces et tips que l''on peut trouver entre le niveau 0 et le niveau 1000.  \r\n<br>\r\nC''est pour cette raison, que nous l''avons intitulé Candy Tuto. Vous pourrez avoir un aperçu de notre page ci-dessous, mais, le site est caché et accésible depuis ce site, à vous de le retrouver !!', 'pj3/site1.jpg', 'pj3/site2.jpg', 'pj3/site3.jpg', 'pj3/site4.jpg', 'pj3/bgpj3', 'Dévellopement Web ', 'Les balises HTML et HTML5', 'Les feuilles de styles CSS', 'Structure HTML d’un site', 'Esthétique d’un site', 'Ici, la compétence attendu, est de comprendre chaque balise, son fonctionnement, son utilité et son impact sur le référencement des pages.', 'Ici, la compétence attendu, et de comprendre comment structurer sa feuille de style, maîtriser le concept d’élément parent et enfant, connaître les propriétés de design web de base, maîtriser les héritages, les points de priorités.', 'Ici, la compétence attendu, et d''utiliser les bonnes balises pour les bonnes raisons, dans le bon ordre. Respect des règles du W3C et des sémantiques.', 'Ici, la compétence attendu, et de savoir designer de manière esthétique et ergonomique une page web.', 'Nous trouvons avons trouver ce projet très intéressant, malgré quelques difficulté, et un manque de temps pour finir le site comme nous l''avions en tête. Nous avons aussi manqué de temps pour certaines normes. De ce fait, la note n''a pas été à la hauteur de nos attentes, même si elle reste pas trop mal. '),
(4, 'Mise en place d''un réseau d''entreprise', 'Réseaux', '<p>Le projet consiste donc à concevoir et à mettre en place un réseau informatique qui permettra aux employés de l''entreprise de travailler efficacement tout en garantissant la sécurité et la confidentialité des données de l''entreprise. Ce projet implique également la sélection et l''installation du matériel et des logiciels nécessaires pour mettre en place le réseau, ainsi que la formation des employés sur l''utilisation du réseau et les bonnes pratiques de sécurité informatique.</p>', 'Le projet consiste à mettre en place une infrastructure réseau complète pour l''entreprise afin d''assurer une gestion efficace des ressources informatiques et une sécurité accrue des données. Le déploiement de l''Active Directory permettra de centraliser la gestion des utilisateurs et des ordinateurs, simplifiant ainsi les tâches d''administration et de maintenance.<br><br> La mise en place d''un serveur proxy permettra de contrôler et de surveiller le trafic Internet en filtrant les sites web et en détectant les menaces potentielles. La création d''un serveur web performant permettra d''héberger le site web de l''entreprise, garantissant ainsi une accessibilité et une disponibilité optimales.<br><br>Pour renforcer la sécurité du réseau, un pare-feu sera installé pour empêcher les intrusions externes et limiter les risques d''attaques. Enfin, la création de zones de sécurité permettra de diviser le réseau en segments isolés, afin de limiter la propagation de toute éventuelle infection ou attaque à l''intérieur du réseau.<br><br>Dans l''ensemble, la mise en place de cette infrastructure réseau complète permettra à l''entreprise de bénéficier d''un environnement informatique sûr, fiable et performant, garantissant ainsi une productivité et une efficacité accrues de ses employés.', '', '', '', '', '', 'Réseaux', '', '', '', '', '', '', '', '', ''),
(5, 'Initiation au langage C', 'Initiation au langage C', '', '', '', '', '', '', '', 'Le C', '', '', '', '', '', '', '', '', ''),
(6, 'Création d''une mindmap des risques cyber', 'Risques cybers', '', '', '', '', '', '', '', 'Cybersécurité', '', '', '', '', '', '', '', '', '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `projects`
--
ALTER TABLE `projects`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `projects`
--
ALTER TABLE `projects`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
