-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3307
-- Généré le : jeu. 02 mars 2023 à 13:29
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sandrine-coupart_dieteticienne`
--

-- --------------------------------------------------------

--
-- Structure de la table `allergen`
--

CREATE TABLE `allergen` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `allergen`
--

INSERT INTO `allergen` (`id`, `type`) VALUES
(1, 'Arachides'),
(2, 'Gluten'),
(3, 'Crustacés'),
(4, 'Oeufs'),
(5, 'Poissons'),
(6, 'Soja'),
(7, 'Produits laitiers'),
(8, 'Fruits à coques'),
(9, 'Céleri'),
(10, 'Moutarde'),
(11, 'Graines de sésame'),
(12, 'Lupin'),
(13, 'Mollusques'),
(14, 'Sulfites');

-- --------------------------------------------------------

--
-- Structure de la table `diet`
--

CREATE TABLE `diet` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `diet`
--

INSERT INTO `diet` (`id`, `type`) VALUES
(1, 'Protéiné'),
(2, 'Hypocalorique'),
(3, 'Végétarien'),
(4, 'Sans sel'),
(5, 'Hypoglucidique'),
(6, 'Végétalien');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221128140206', '2022-11-28 15:02:16', 642),
('DoctrineMigrations\\Version20221129110206', '2022-11-29 12:02:28', 783),
('DoctrineMigrations\\Version20221129143420', '2022-11-29 15:34:39', 1926),
('DoctrineMigrations\\Version20221129144224', '2022-11-29 15:42:37', 1713),
('DoctrineMigrations\\Version20221129182602', '2022-11-29 19:26:13', 1052),
('DoctrineMigrations\\Version20221202105952', '2022-12-02 12:00:05', 3520),
('DoctrineMigrations\\Version20221202110234', '2022-12-02 12:02:45', 983),
('DoctrineMigrations\\Version20221202141604', '2022-12-02 15:16:15', 1964),
('DoctrineMigrations\\Version20221202143050', '2022-12-02 15:31:00', 976),
('DoctrineMigrations\\Version20221205081533', '2022-12-05 09:15:44', 728);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:168:\\\"Bonjour </br>Vous avez reçus un message de <strong>laetitia decre</strong></br>Adresse email : <strong>laetitia.decre@gmail.com</strong> </br>Message : dsgdb</br></br>\\\";i:1;s:5:\\\"utf-8\\\";i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:12:\\\"test@test.fr\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:27:\\\"contact@sandrine-coupart.fr\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:38:\\\"Vous avez reçu une demande de contact\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2022-12-09 10:53:57', '2022-12-09 10:53:57', NULL),
(2, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:167:\\\"Bonjour </br>Vous avez reçus un message de <strong>laetitia decre</strong></br>Adresse email : <strong>laetitia.decre@gmail.com</strong> </br>Message : jjhj</br></br>\\\";i:1;s:5:\\\"utf-8\\\";i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:12:\\\"test@test.fr\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:27:\\\"contact@sandrine-coupart.fr\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:38:\\\"Vous avez reçu une demande de contact\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2022-12-09 10:54:08', '2022-12-09 10:54:08', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `recipe`
--

CREATE TABLE `recipe` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preparation_time` int(11) NOT NULL,
  `timeout` int(11) NOT NULL,
  `cooking_time` int(11) NOT NULL,
  `ingredients` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stage` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recipe`
--

INSERT INTO `recipe` (`id`, `title`, `description`, `preparation_time`, `timeout`, `cooking_time`, `ingredients`, `stage`, `slug`, `illustration`) VALUES
(3, 'tarte carotte et courgette', 'Tarte de saison parfait pour vos légers diners accompagné d\'une salade verte', 15, 0, 40, '<div>4 oeufs<br>1 pâte feuilletée<br>1 yaourt brassé<br>2 carottes<br>1 courgette<br>125 ml de lait demi-écrémé<br>1 càs de moutarde à l’ancienne<br>1 càc de cumin<br>1 càc de paprika<br>1 càc de curry Madras<br>1 pincée de sel</div>', '<div>Préchauffez le four à 180°C.<br>Râpez les carottes et la courgette.<br>Préparez l’appareil à tarte : mélangez les oeufs, le lait et le yaourt.<br>Ajoutez les épices puis salez.<br>Ajoutez les légumes râpés.<br>Disposez la pâte dans un moule à tarte.<br>Piquez la pâte à la fourchette et ajoutez la moutarde à l’ancienne.<br>Ajoutez le mélange aux légumes.<br>Cuire au four pendant 40 minutes.</div>', 'tarte-carotte-et-courgette', '76763d620b57cb68751e9fbe66180ed4b259dd63.jpg'),
(4, 'Salade aux oeufs brouillés', 'salade', 10, 0, 8, '<div>Salade<br>1 tomate<br>1 avocat mûr à point<br>40 g d’emmental ou gruyère<br>4 tomates séchées<br>2 CAS de graines de courge<br>4 oeufs<br>Huile d’olive, huile de noix<br>Sel, poivre</div>', '<div>Préparez les ingrédients : lavez et essorez la salade verte.<br>Lavez et coupez la tomate en dés.<br>Coupez les tomates séchées, l’avocat et l’emmental en petits morceaux.<br>Cuire les oeufs avec un filet d’huile d’olive.<br>Disposez les ingrédients dans les assiettes creuses : salade, tomates, avocat, emmental.<br>Assaisonnez avec huile de noix et un peu de vinaigre de cidre.<br>Disposez les oeufs brouillés sur le dessus.<br>Salez et poivrez à votre convenance.<br>Ajoutez si besoin une tranche de pain grillée.</div>', 'salade-aux-oeufs-brouilles', 'a87092fc46eeacbada93b77a1af994de759d8a50.jpg'),
(5, 'Crème vanille', 'un dessert apprécier de tous', 10, 60, 5, '<div>50 cl de lait demi-écrémé<br>18 g de fécule de maïs<br>1 CAS d’arôme naturel vanille<br>2 jaunes d’oeufs<br>30 g de sucre complet<br>1/2 sachet de sucre vanillé</div>', '<div>Mélangez les jaunes d’oeufs avec le sucre complet et le sucre vanillé.<br>Ajoutez la fécule de maïs, l’arôme de vanille, puis fouettez.<br>Faites chauffer le lait sans le faire bouillir et remuez régulièrement.<br>Une fois bien chaud, incorporez-le à la première préparation.<br>Remuez.<br>Mettez l’ensemble de la préparation dans votre casserole puis chauffez à nouveau tout en remuant.<br>Remplissez vos petits pots de crème.<br>Laissez refroidir puis mettez le tout au frais durant au moins 1h pour que les crèmes se figent.</div>', 'creme-vanille', '4acf5f50846b31d76cb29bfe40fe0798cef9375d.jpg'),
(6, 'Bento-box complète', 'un repas végétarien équilibré et intéressant pour votre santé', 15, 60, 20, '<div>Quinoa cuit (équitable ou quinoa français)<br>Brocoli<br>Houmous de pois chiches<br>Tahini<br>Huile d’olive<br>1 pomme<br>Quelques fruits rouges décongelés<br>1 yaourt nature</div>', '<div>Cuire 1 volume de quinoa dans 2 volumes d’eau salée.<br>Cuire les fleurettes de brocolis à la vapeur.<br>Préparez l’houmous en mixant pois chiches, huile d’olive et tahini.</div><div>Cuire dans une poêle anti-adhésive la pomme coupée en lamelles.<br>Laissez refroidir.<br>Vous y ajouterez yaourt et fruits décongelés à la fin.<br>Disposez le tout dans votre bento box.<br>Tout est prêt, pour un repas végétarien équilibré et intéressant pour votre santé.</div>', 'bento-box-complete', '9e0ecf11b9eadc700ce004b724b8379539b7635c.jpg'),
(7, 'Cookies moelleux diététiques', NULL, 10, 0, 12, '<div>100 g de farine de blé semi-complète<br>100 g de flocons d’avoine<br>20 g de poudre d’amandes<br>100 g de chocolat pâtissier 70% de cacao<br>2 oeufs<br>60 g de beurre<br>1 càc de bicarbonate alimentaire<br>20 g de noisettes entières</div>', '<div>Préchauffez votre four à 180°C.<br>D’abord, mélangez les aliments secs ensemble : farine, flocons d’avoine, poudre d’amandes et bicarbonate.<br>D’autre part, mélangez les aliments liquides : le beurre fondu et les oeufs.<br>Ajoutez le mélange liquide aux produits secs.<br>Travaillez au fouet pour obtenir une pâte à cookies homogène.<br>Cassez le chocolat en grosses pépites.<br>Ajoutez les pépites et les noisettes.<br>Mélangez.<br>Façonnez des petites boules et aplatissez-les un peu.<br>Les cookies vont gonfler à la cuisson.<br>Cuire 12 minutes au four à 180°C.</div>', 'cookies-moelleux-dietetiques', '80da9f3680cfeb745d51a53dd975c832b9d3cdae.jpg'),
(8, 'Nouilles de blé et épinards', NULL, 15, 0, 10, '<div>250 g de nouilles de blé<br>500 g d’épinards hachés surgelés<br>30 cl de lait de coco<br>400 g de crevettes<br>3 CAS de curry Madras<br>2 CAS de cumin<br>1 CAS de piment d’Espelette<br>1 pincée de sel<br>1 filet d’huile d’olive</div>', '<div>Décortiquez les crevettes et les faire revenir dans une poêle avec un filet d’huile d’olive.<br>Ajoutez les épinards aux crevettes puis mélangez jusqu’à ce qu’ils soient décongelés.<br>Incorporez le lait de coco et les épices.<br>Cuire les nouilles 3 minutes dans l’eau bouillante. Egouttez.<br>Ajoutez les nouilles au mélange crevettes-épinards.<br>Salez légèrement et servez.</div>', 'nouilles-de-ble-et-epinards', 'b9db63aa3c6a436f7fa26715601925ddf74258d7.jpg'),
(9, 'Pizza végétarienne', 'Faite vous plaisir en réalisant votre pizza', 10, 0, 20, '<div>1 pâte à pizza (choisissez-là sans huile de palme)<br>tapenade de tomates séchées ou un coulis de tomates<br>5 tomates allongées<br>1 boule de mozzarella de bufflonne<br>6 champignons de Paris</div>', '<div>Préchauffez le four à 180°C.<br>Préparez vos légumes pour la garniture.<br>Ôtez les extrémités du tronc des champignons et essuyez-les avec un torchon humide, coupez-les en lamelles.<br>Lavez et coupez les tomates en tranches.</div><div>Coupez en tranches la mozzarella.<br>Préparez la pizza.<br>Badigeonnez de coulis de tomates ou de tapenade de tomates séchées.</div><div>Ajoutez les tomates, les champignons et la mozzarella.<br>Cuire au four pendant 15 à 20 minutes.Vous pouvez aussi y mettre quelques olives noires !<br>Pour l’accompagner et avoir un bon apport en fibres, j’ai ajouté des haricots verts frais cuits à l’eau et une salade de tomates fraîches vinaigrette à l’huile d’olive, vinaigre balsamique et échalotes.<br><br></div>', 'pizza-vegetarienne', 'e194757794455bd29985bf624944babeef3b81dd.jpg'),
(10, 'Pancakes salés au chorizo', 'recettes pour 10 pancakes', 5, 0, 2, '<div>250 g de farine semi-complète<br>20 cl de lait demi-écrémé<br>2 oeufs<br>100 g de pommes de terre<br>100 g de gruyère<br>1 courgette râpée<br>150 g de chorizo<br>Paprika<br>Origan<br>1 sachet de levure chimique<br>1 CAS d’huile d’olive + huile d’olive pour la cuisson</div>', '<div>Préparez les ingrédients pour garnir les pancakes.<br>Cuire les pommes de terre à l’eau puis épluchez-les et coupez-les en petits morceaux.<br>Lavez, épluchez et râpez la courgette.<br>Epluchez le chorizo et coupez-le en petits dés.<br>Dans un saladier, mélangez la farine et la levure, les oeufs, le lait et l’huile d’olive.<br>Mélangez.<br>Ajoutez le gruyère, le chorizo, la courgette, le paprika et l’origan.<br>Mélangez à nouveau.<br>Badigeonnez d’huile d’olive une poêle à crêpe.<br>Cuire vos pancakes 2 minutes de chaque côté.</div>', 'pancakes-sales-au-chorizo', 'fba020773e013c243e75156aedba039b59a546cc.jpg'),
(11, 'Risotto de potimarron', NULL, 30, 0, 20, '<div>1/2 potimarron<br>200 g de riz rond<br>1 échalote<br>1 bouillon de légumes bio<br>1L d’eau<br>100 g de champignons<br>2 CAS d’huile d’olive<br>Sel</div>', '<div>Lavez, épluchez, et coupez en cubes le potimarron. Emincez finement l’échalote. Dissoudre le bouillon dans 1L d’eau bouillante.<br>Faites revenir l’échalote avec l’huile d’olive quelques minutes, puis ajoutez le riz. Laissez cuire 5 minutes et remuez.<br>Ajoutez du bouillon à hauteur. Laissez cuire à couvert jusqu’à ce qu’il n’y ait plus d’eau (les cubes de potimarron doivent être bien tendres), puis renouvelez l’opération.<br>Au bout de 20 minutes de cuisson, ajoutez les cubes de potimarron. Poursuivez la cuisson avec le bouillon puis salez au dernier moment.<br>Préparez les champignons à part, coupez-les en fines lamelles. Les faire revenir rapidement à la poêle avec de l’huile d’olive et du thym.<br>Une fois le riz bien cuit, servez le risotto, décorez de champignons et de thym.</div>', 'risotto-de-potimarron', '73e0f49694a45dd4fe07114f3ef0c6669657cb45.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `recipe_allergen`
--

CREATE TABLE `recipe_allergen` (
  `recipe_id` int(11) NOT NULL,
  `allergen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recipe_allergen`
--

INSERT INTO `recipe_allergen` (`recipe_id`, `allergen_id`) VALUES
(3, 2),
(3, 4),
(3, 7),
(3, 10),
(4, 4),
(4, 7),
(4, 8),
(5, 2),
(5, 4),
(5, 7),
(6, 2),
(6, 7),
(7, 4),
(7, 8),
(8, 2),
(8, 3),
(8, 7),
(9, 2),
(9, 7),
(10, 2),
(10, 4),
(10, 7);

-- --------------------------------------------------------

--
-- Structure de la table `recipe_diet`
--

CREATE TABLE `recipe_diet` (
  `recipe_id` int(11) NOT NULL,
  `diet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recipe_diet`
--

INSERT INTO `recipe_diet` (`recipe_id`, `diet_id`) VALUES
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 2),
(5, 3),
(6, 2),
(6, 4),
(6, 5),
(6, 6),
(7, 2),
(8, 1),
(9, 3),
(10, 1),
(11, 3);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`) VALUES
(2, 'admin@sandrine-coupart.fr', '[\"ROLE_ADMIN\"]', '$2y$13$wa05ORK5WfSvyp.G/KWAEO.0GcjUYLolP30ZfuN7x8U1QaB.Wy07K', 'Sandrine', 'Coupart'),
(5, 'laetitia.decre@gmail.com', '[]', '$2y$13$77.83ifPWuo79.zHnZRHVeoFWRQD3ZwBzPMUqzK9HwSsmyqdqTrOm', 'DECRE', 'Laetitia');

-- --------------------------------------------------------

--
-- Structure de la table `user_allergen`
--

CREATE TABLE `user_allergen` (
  `user_id` int(11) NOT NULL,
  `allergen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_allergen`
--

INSERT INTO `user_allergen` (`user_id`, `allergen_id`) VALUES
(5, 3);

-- --------------------------------------------------------

--
-- Structure de la table `user_diet`
--

CREATE TABLE `user_diet` (
  `user_id` int(11) NOT NULL,
  `diet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_diet`
--

INSERT INTO `user_diet` (`user_id`, `diet_id`) VALUES
(5, 2);

-- --------------------------------------------------------

--
-- Structure de la table `user_recipe`
--

CREATE TABLE `user_recipe` (
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_recipe`
--

INSERT INTO `user_recipe` (`user_id`, `recipe_id`) VALUES
(5, 3),
(5, 5),
(5, 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `allergen`
--
ALTER TABLE `allergen`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diet`
--
ALTER TABLE `diet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recipe_allergen`
--
ALTER TABLE `recipe_allergen`
  ADD PRIMARY KEY (`recipe_id`,`allergen_id`),
  ADD KEY `IDX_532FAD5059D8A214` (`recipe_id`),
  ADD KEY `IDX_532FAD506E775A4A` (`allergen_id`);

--
-- Index pour la table `recipe_diet`
--
ALTER TABLE `recipe_diet`
  ADD PRIMARY KEY (`recipe_id`,`diet_id`),
  ADD KEY `IDX_E2FF3FFF59D8A214` (`recipe_id`),
  ADD KEY `IDX_E2FF3FFFE1E13ACE` (`diet_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_allergen`
--
ALTER TABLE `user_allergen`
  ADD PRIMARY KEY (`user_id`,`allergen_id`),
  ADD KEY `IDX_C532ECCEA76ED395` (`user_id`),
  ADD KEY `IDX_C532ECCE6E775A4A` (`allergen_id`);

--
-- Index pour la table `user_diet`
--
ALTER TABLE `user_diet`
  ADD PRIMARY KEY (`user_id`,`diet_id`),
  ADD KEY `IDX_E76529E9A76ED395` (`user_id`),
  ADD KEY `IDX_E76529E9E1E13ACE` (`diet_id`);

--
-- Index pour la table `user_recipe`
--
ALTER TABLE `user_recipe`
  ADD PRIMARY KEY (`user_id`,`recipe_id`),
  ADD KEY `IDX_BFDAAA0AA76ED395` (`user_id`),
  ADD KEY `IDX_BFDAAA0A59D8A214` (`recipe_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `allergen`
--
ALTER TABLE `allergen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `diet`
--
ALTER TABLE `diet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `recipe_allergen`
--
ALTER TABLE `recipe_allergen`
  ADD CONSTRAINT `FK_532FAD5059D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_532FAD506E775A4A` FOREIGN KEY (`allergen_id`) REFERENCES `allergen` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `recipe_diet`
--
ALTER TABLE `recipe_diet`
  ADD CONSTRAINT `FK_E2FF3FFF59D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E2FF3FFFE1E13ACE` FOREIGN KEY (`diet_id`) REFERENCES `diet` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_allergen`
--
ALTER TABLE `user_allergen`
  ADD CONSTRAINT `FK_C532ECCE6E775A4A` FOREIGN KEY (`allergen_id`) REFERENCES `allergen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C532ECCEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_diet`
--
ALTER TABLE `user_diet`
  ADD CONSTRAINT `FK_E76529E9A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E76529E9E1E13ACE` FOREIGN KEY (`diet_id`) REFERENCES `diet` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_recipe`
--
ALTER TABLE `user_recipe`
  ADD CONSTRAINT `FK_BFDAAA0A59D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BFDAAA0AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
