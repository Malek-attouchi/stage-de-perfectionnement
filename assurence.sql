-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 22 avr. 2024 à 01:39
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `assurence`
--

-- --------------------------------------------------------

--
-- Structure de la table `assureurs`
--

CREATE TABLE `assureurs` (
  `id` int(11) NOT NULL,
  `assureur` varchar(100) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `assureurs`
--

INSERT INTO `assureurs` (`id`, `assureur`, `adresse`, `ville`) VALUES
(4, 'Acoris', '6/8 Viaduc Kennedy', 'Nancy Cedex'),
(5, 'ACTUDATA', '26 Rue des Sablons', 'Montmagny'),
(6, 'Adrea Mutuelle Besançon', '67 rue des Cras', 'BESANCON cedex'),
(7, 'Adrea Mutuelle Bourg en Bresse', '58 rue Bourgmayer', 'BOURG-EN-BRESSE cedex'),
(8, 'Adrea Mutuelle Caen', '12 avenue du Six Juin', 'CAEN Cedex 9'),
(9, 'Adrea Mutuelle Chambéry', '130 Galerie de la Chartreuse -Barberaz', 'CHAMBERY Cedex'),
(10, 'Adrea Mutuelle Grenoble', '226, cours de la Libération', 'Grenoble Cedex 2'),
(11, 'Adrea Mutuelle Moulins', '11 rue Marcellin Desboutin', 'Moulins Cedex'),
(12, 'Adrea Mutuelle Mâcon', '24 bis rue Lacretelle', 'Mâcon cedex'),
(13, 'Adrea Mutuelle Nimes', '393 rue de lHostellerie', 'NIMES cedex 9'),
(14, 'AFI Assurances', '12 rue du Bois Guillaume', 'Evry Cedex'),
(15, 'Afi Esca', '2 quai Kleber', 'Strasbourg Cedex'),
(16, 'AG2R La Mondiale', '32, avenue Emile Zola', 'Mons-en-Baroeul'),
(17, 'AGEO', '14 Rue Frédéric et Irène Joliot-Curie', 'Châlons en Champagne Cedex'),
(18, 'AGF - Allianz', '1 cours Michelet', 'Paris La Défense Cedex'),
(19, 'AGIPI', '12 avenue pierre Mendès France', 'Schiltigheim cedex'),
(20, 'Agir Mutuelles', '50, place Mazelle', 'Metz Cedex 1'),
(21, 'AGPM', 'Rue Nicolas Appert', 'Toulon Cedex 9'),
(22, 'Allsecur', 'Service Gestion Santé', 'Reims'),
(23, 'Almerys', '46 rue du ressort', 'Clermont Ferrand Cedex 9'),
(24, 'Alptis Assurances', '25 cours Albert Thomas', 'Lyon Cedex 03'),
(25, 'Amaguiz', '8-10 rue dAstorg', 'Paris Cedex 08'),
(26, 'AMPLI Mutuelle', '27 boulevard Berthier', 'Paris Cedex 17'),
(27, 'Aon Assurances', '31 - 35 rue de la Fédération', 'Paris'),
(28, 'APGIS', '12, rue Massue', 'Vincennes cedex'),
(29, 'Apicil', '38, rue François Peissel', 'Caluire et Cuire'),
(30, 'Apivia', 'CS 30000', 'Niort Cedex 9'),
(31, 'April', '114 boulevard Marius Vivier Merle', 'Lyon Cedex 03'),
(32, 'Aprionis', '139/147, rue Paul Vaillant-Couturier', 'Malakoff'),
(33, 'APRS', '950 Route des Colles', 'BIOT-SOPHIA ANTIPOLIS CEDEX'),
(34, 'Apréva', '2 rue des Canonniers', 'Valenciennes'),
(35, 'APS Prévoyance', 'BP 285', 'AVIGNON CEDEX 1'),
(36, 'Aréas', '49 rue de Miromesnil', 'Paris Cedex 08'),
(37, 'ASAF et AFPS', '950 Route des Colles', 'BIOT-SOPHIA ANTIPOLIS CEDEX'),
(38, 'ASFE', 'MSH INTERNATIONAL Season', 'Paris'),
(39, 'ASSU 2000', '40 Avenue de Bobigny', 'Noisy-le-Sec'),
(40, 'Assurances Mutuelles de Picardie AMP', '2 Rue de l’Ile Mystérieuse', 'BOVES'),
(41, 'ASSUREMA', '243 AVENUE CUGNOT', 'MONTEUX'),
(42, 'AssurOne - AssurOnline', '153 rue de Guise', 'Saint-Quentin'),
(43, 'Assurpeople', '153, rue de guise', 'St Quentin'),
(44, 'Assuréo', '40 Avenue de Bobigny', 'Noisy-le-Sec'),
(45, 'Audiens', '74, rue Jean Bleuzen', 'Vanves'),
(46, 'AvoCotés', '7 Rue JEAN PERRIN', 'GELLAINVILLE'),
(47, 'Axa', '313 Terrasses de lArche', 'Nanterre Cedex'),
(48, 'AÉSIO mutuelle', '4 rue du Général Foy', 'Paris'),
(49, 'Baloo', '118 Rue Roger Mathurin', 'Marseille'),
(50, 'Banque Populaire Santé', 'Centre de Gestion de Tours', 'NIORT Cedex 9'),
(51, 'BNP Paribas Cardif', 'Protection Santé', 'Wasquehal Cedex'),
(52, 'Caisse dEpargne - BPCE', 'Espace Santé Caisse dEpargne', 'NIORT Cedex 9'),
(53, 'Carrefour', 'TSA 91417', 'NANTERRE CEDEX 9'),
(54, 'CCMO', '6 avenue du Beauvaisis', 'Beauvais Cedex'),
(55, 'Cegema', '679 Avenue du Dr Julien Lefebvre', 'Villeneuve-Loubet'),
(56, 'Choralis - Mutuelle Le Libre Choix', 'Boulevard de lEurope', 'MAUBEUGE'),
(57, 'CIC', '63 chemin Antoine Pardon', 'Tassin la Demi Lune'),
(58, 'CNP', '4 place Raoul Dautry', 'PARIS CEDEX 15'),
(59, 'Cocoon Assurance', '4 rue Berteaux Dumas', 'NEUILLY-SUR-SEINE cedex'),
(60, 'Coverity', '15 boulevard Sadi Carnot', 'Châtellerault'),
(61, 'Crédit Mutuel Arkéa - Suravenir', '2 rue Vasco de Gama', 'Nantes cedex 9'),
(62, 'Direct Assurance', '950 Route des Colles', 'BIOT-SOPHIA ANTIPOLIS CEDEX'),
(63, 'ECA Assurances', '92-98 Boulevard Victor Hugo', 'Clichy'),
(64, 'EMOA Mutuelle', 'Service Relations adhérents', 'Six-Fours-les-Plages cedex'),
(65, 'Energie mutuelle', '66 avenue du Maine', 'Paris'),
(66, 'Eovi Mcd mutuelle', '173 rue de Bercy', 'Paris Cedex 12'),
(67, 'EURALPHA', '4 RUE DE LA BANQUE', 'VESOUL CEDEX'),
(68, 'Euro-Assurance', '6 rue Gracchus Babeuf', 'Noisy-le-Sec Cedex'),
(69, 'Filhet-Allard', 'Rue Cervantès Mérignac', 'Bordeaux Cedex 9'),
(70, 'Filiassur', 'BP 71013', 'Le Havre Cedex'),
(71, 'FMA Assurances', 'CS 60039', 'Monteux'),
(72, 'France Mutuelle', 'CS 1160110', 'PARIS Cedex 2'),
(73, 'Gan', '8-10 rue dAstorg', 'Paris Cedex 08'),
(74, 'Generali', '2 rue Pillet-Will', 'Paris'),
(75, 'GMF', '148 rue Anatole France', 'Levallois Perret Cedex'),
(76, 'Gras Savoye', 'Immeuble Quai 33', 'Puteaux Cedex'),
(77, 'Groupama', '8-10 rue dAstorg', 'Paris Cedex 08'),
(78, 'Groupama Antilles-Guyane', '10 Lotissement Bardinet Dillon', 'FORT DE France'),
(79, 'Groupama Centre atlantique', '2, avenue de Limoges', 'Niort Cedex 9'),
(80, 'Groupama Centre-Manche', 'Parc Tertiaire du Jardin dEntreprises', 'Chartres Cedex'),
(81, 'Groupama Grand Est', '101, route de Hausbergen', 'Strasbourg Cedex'),
(82, 'Groupama Loire-Bretagne', '23, boulevard Solférino', 'Rennes cedex'),
(83, 'Groupama Méditerranée', '24 Parc du Golf', 'Aix-en-Provence Cedex 3'),
(84, 'Groupama Nord-Est', '2 rue Léon Patoux', 'Reims Cedex 2'),
(85, 'Groupama Oc', '14 rue Vidailhan', 'BALMA CEDEX'),
(86, 'Groupama Océan Indien', '7 Rue André Lardy', 'Sainte Marie'),
(87, 'Groupama Paris Val de Loire', '60 bd Duhamel du Monceau', 'Olivet Cedex'),
(88, 'Groupe Henner', '14, boulevard du Général Leclerc', 'Neuilly-sur-Seine'),
(89, 'Génération', '12 bis rue de Kerogan', 'Quimper Cedex 9'),
(90, 'Harmonie Mutuelle', 'TSA 90130', 'TOURS Cedex 1'),
(91, 'HCR', '1 A 13 RUE DENISE BUISSON', 'MONTREUIL'),
(92, 'HEYME', '10 rue Léon Paulet', 'Marseille'),
(93, 'HEYME (ex-MEP)', '10 rue Léon Paulet', 'Marseille'),
(94, 'HEYME (ex-SMEREP)', '10 rue Léon Paulet', 'Marseille'),
(95, 'Humanis - Vienne', '23, cours Romestang', 'Vienne'),
(96, 'Humanis - Montpellier', 'Parc Euromédecine', 'Montpellier cedex 4'),
(97, 'Humanis - Rennes', '2 square René Cassin', 'Rennes Cedex 7'),
(98, 'Humanis - Bordeaux', '351 boulevard du Président Wilson', 'Bordeaux cedex'),
(99, 'Humanis - Bourgoin Jallieu', '10, place Carnot', 'Bourgoin-Jallieu'),
(100, 'Humanis - Chalon sur Saone', '23, rue du Général Leclerc', 'Chalon'),
(101, 'Humanis - Délégation régionale - Dijon', '6 rue René Char', 'Dijon'),
(102, 'Humanis - Délégation régionale - Lyon', '20 boulevard Eugène Deruelle', 'Lyon cedex 3'),
(103, 'Humanis - Délégation régionale - Nancy', '4 rue des Carmes', 'Nancy'),
(104, 'Humanis - Délégation régionale - Reims', '34 rue de Talleyrand', 'Reims'),
(105, 'Humanis - Lyon Lafayette', '174, cours Lafayette', 'Lyon'),
(106, 'Humanis - Marseille', '65 avenue Jules Cantini', 'Marseille cedex 20'),
(107, 'Humanis - Montreuil', '93 rue Marceau', 'Montreuil Cedex'),
(108, 'Humanis - Strasbourg', '8 rue Thomas Mann', 'Strasbourg'),
(109, 'Humanis - Thonon les Bains', '8, avenue du Général de Gaulle', 'Thonon les Bains'),
(110, 'Humanis – Agence Radiance - Amiens', '3 rue Georges Leclanché', 'Alençon'),
(111, 'Humanis – Agence Radiance - Grenoble', '22, cours Berriat', 'Grenoble'),
(112, 'Humanis – Agence Radiance - Lille', '8 boulevard Vauban', 'Lille'),
(113, 'Humanis – Agence radiance - Rouen', '36/38, rue Grand Pont', 'Rouen'),
(114, 'Humanis – Aix les Bains', '5, avenue de Verdun', 'Aix-les-Bains'),
(115, 'Humanis – Albertville', '92, rue de la République', 'Albertville'),
(116, 'Humanis – Annecy', '17, rue Jean Jaurès', 'Annecy'),
(117, 'Humanis – Annemasse', '26, rue du Chablais', 'Annemasse'),
(118, 'Humanis – Autun', '2, avenue Charles de Gaulle', 'Autun'),
(119, 'Humanis – Auxerre', '48, rue du Temple', 'Auxerre'),
(120, 'Humanis – Chambéry Colonne', '20, boulevard de la Colonne', 'Chambéry'),
(121, 'Humanis – Chambéry Leysse', '55 allée Albert Sylvestre', 'Chambéry'),
(122, 'Humanis – Cluses', '1, rue du Faubourg Saint-Nicolas', 'Cluses'),
(123, 'Humanis – Dijon René Char', '6 rue René Char', 'Dijon'),
(124, 'Humanis – Dijon République', '5 place de la République', 'Dijon'),
(125, 'Humanis – Dunkerque', '25/27 place Jean Bart', 'Dunkerque'),
(126, 'Humanis – Lyon Vendôme', '97, rue Vendôme', 'Lyon'),
(127, 'Humanis – Macon', '2, rue Philibert Laguiche', 'Mâcon'),
(128, 'Humanis – Montbard', '39, Rue dAbrantès', 'Montbard'),
(129, 'Humanis – Nevers', '7, rue des Ardilliers', 'Nevers'),
(130, 'Humanis – Roubaix', '13, rue Pierre Motte', 'Roubaix'),
(131, 'Humanis – Saint Jean de Maurienne', '29, rue de lOrme', 'Saint Jean de Maurienne'),
(132, 'Humanis – Sallanches', '49, rue Péchet', 'Sallanches'),
(133, 'Humanis – Villefranche sur Saône', '629 rue Nationale', 'Villefranche'),
(134, 'Hélium', '4 rue Léon Patoux', 'Reims Cedex 2'),
(135, 'Ibaméo', '110 Boulevard de la Salle', 'Boigny-sur-Bionne'),
(136, 'Identités Mutuelle', '85 rue Edouard Vaillant', 'Levallois-Perret'),
(137, 'Imperio Assurances', '18 à 20 rue Clément Bayard', 'Levallois Perret'),
(138, 'Intériale Mutuelle', 'CS 50005', 'LILLE CEDEX'),
(139, 'Ipsec Prévoyance', 'Tour Egée', 'COURBEVOIE CEDEX'),
(140, 'IRCEM Mutuelle', '261 avenue des Nations Unies', 'Roubaix Cedex 1'),
(141, 'KIASSURE', '515 Avenue du Prado', 'Marseille'),
(142, 'Klesia Mutuelle', 'TSA 50009', 'PARIS CEDEX 11'),
(143, 'LEquité', '2 rue Pillet-Will', 'Paris'),
(144, 'La Banque Postale', '30 boulevard Gallieni', 'Issy-les-Moulineaux'),
(145, 'La Mutuelle Familiale', '52 rue dHauteville', 'Paris cedex 10'),
(146, 'La Mutuelle Générale', '1-11 rue Brillat Savarin', 'Paris Cedex 13'),
(147, 'La Mutuelle Générale - Orange', 'TSA 10391', 'Le Kremlin-Bicêtre Cedex'),
(148, 'La Médicale', 'Service clients', 'Paris cedex 15'),
(149, 'Lamie mutuelle', '18 rue Léon Jouhaux', 'PARIS'),
(150, 'LMDE', 'TSA 97001', 'Lille Cedex 9'),
(151, 'LMP', '11 Rue Albert Sarraut', 'Versailles'),
(152, 'M Comme Mutuelle', '88 Boulevard de la Liberté', 'Lille'),
(153, 'Maaf', 'Chauray', 'Niort Cedex 9'),
(154, 'Macif', '2 et 4 rue de Pied de Fond', 'Niort Cedex 9'),
(155, 'MACSF', 'Cours du Triangle', 'PUTEAUX'),
(156, 'MAEE', '1 rue de lAbbé Roger Derry', 'Paris Cedex 15'),
(157, 'Maif', '200 avenue Salvador Allende', 'Niort Cedex 9'),
(158, 'Malakoff Médéric', '21 rue Laffitte', 'Paris Cedex 09'),
(159, 'MAPA Santé', '1 rue Anatole Contré', 'Saint Jean dAngély'),
(160, 'Matmut', '66 rue de Sotteville', 'Rouen'),
(161, 'Maxance', '6 rue Gracchus Babeuf', 'Noisy Le sec'),
(162, 'MC602', '52 rue de Sévigné', 'PARIS'),
(163, 'MCA', '6 Route de Rouffach', 'Colmar'),
(164, 'MCDéf', '4 rue Georges Picquart', 'PARIS'),
(165, 'MCN', '37 Rue du 11 Novembre', 'CAEN'),
(166, 'Mercer', 'TSA 51801', 'Chartres cedex'),
(167, 'MGEFI', '6 rue Bouchardon', 'Paris Cedex 10'),
(168, 'MGEL', '44 Cours Léopold', 'NANCY'),
(169, 'MGEL - Epinal', '18 quai du Musée', 'EPINAL'),
(170, 'MGEL - Metz', '11 blvd Sérot', 'METZ'),
(171, 'MGEL - Mulhouse', '45 avenue du Président Kennedy', 'MULHOUSE'),
(172, 'MGEL - Nancy', '3 rue des Carmes', 'NANCY'),
(173, 'MGEL - Reims', '12 rue des Capucins', 'REIMS'),
(174, 'MGEL - Strasbourg', '4 rue de Londres', 'STRASBOURG'),
(175, 'MGEL - Troyes', '76 rue du Général De Gaulle', 'TROYES'),
(176, 'MGEL - Vandoeuvre', '3 boulevard des Aiguillettes', 'VANDOEUVRE'),
(177, 'MGEN', '3 Square Max Hymans', 'Paris Cedex 15'),
(178, 'MGET', '76/78 Avenue de Fontainebleau', 'Kremlin Bicetre Cedex'),
(179, 'MGP', '8 Rue Thomas Edison', 'Créteil Cedex'),
(180, 'MIEL Mutuelle', 'Services Clients', 'Saint-Etienne Cedex'),
(181, 'MIF-PA', '3/5 all des Marines', 'Bayonne'),
(182, 'Milligestion', '1 BIS BOULEVARD FAIDHERBE', 'CAMBRAI'),
(183, 'MMA', '14 Boulevard Marie et Alexandre Oyon', 'Le Mans Cedex 9'),
(184, 'MMJ', '53 Rue de Rivoli', 'Paris'),
(185, 'MNFCT', '3 rue Franklin', 'MONTREUIL CEDEX'),
(186, 'MNH', '331 avenue dAntibes Amilly', 'Montargis Cedex'),
(187, 'MNPAF - Air France', 'Centre de gestion', 'Issy-les-Moulineaux CEDEX'),
(188, 'MNT', '4 rue dAthènes', 'Paris'),
(189, 'Mornay', '184 rue Blaise Pascal', 'Guilherand-Granges'),
(190, 'MPGR', '62 quai de la Rapée', 'PARIS CEDEX 12'),
(191, 'MSAé Airbus', 'AIRBUS HELICOPTERS', 'Marignane Cedex'),
(192, 'Mutest', '11 boulevard du Président Wilson', '67082 Strasbourg Cedex'),
(193, 'Mutualia', '1 rue André Gatoux', 'ARRAS Cedex'),
(194, 'Mutuelle Bleue', '25 Place de la Madeleine', 'PARIS'),
(195, 'Mutuelle de Poitiers Assurance', 'Bois du Fief Clairet', 'Poitiers Cedex 9'),
(196, 'Mutuelle du Rempart', '4 – 6 boulevard de Strasbourg', 'Toulouse Cedex 7'),
(197, 'Mutuelle Entrain', '5 Boulevard Camille Flammarion', 'Marseille'),
(198, 'Mutuelle Générale de Santé', '22 rue Malmaison', 'Bagnolet Cedex'),
(199, 'Mutuelle générale des cheminots', 'TSA 91347', 'PARIS CEDEX 13'),
(200, 'Mutuelle Intégrance', '89 rue Damrémont', 'PARIS Cedex 18'),
(201, 'Mutuelle Just', '53 Avenue de Verdun', 'Valenciennes Cedex'),
(202, 'Mutuelle Marseille Métropole', '4 rue Venture', 'Marseille'),
(203, 'Mutuelle MGC', 'Service Adhérent', 'Paris Cedex 13'),
(204, 'Mutuelle MIC', '73/75 Rue Brillat Savarin', 'Paris'),
(205, 'Mutuelle MIE', 'Immeuble le Péricentre', 'Fontenay-sous-Bois cedex'),
(206, 'Mutuelle Mieux Etre', '171 avenue Ledru-Rollin', 'Paris cedex 11'),
(207, 'Mutuelle MOS', 'Immeuble Apogée B', 'Dijon'),
(208, 'Mutuelle Prévifrance', '80 Rue Matabiau', 'Toulouse'),
(209, 'Mutuelle RATP', 'Tour GAMMA A-B', 'Paris CEDEX 12'),
(210, 'Mutuelle Renault', '9 rue de Clamart', 'Boulogne-Billancourt Cedex'),
(211, 'Mutuelle Saint-Christophe', '227 rue Saint-Jacques', 'Paris Cedex 05'),
(212, 'Mutuelle Saint-Martin', '3 rue Duguay-Trouin', 'Paris Cedex 06'),
(213, 'Mutuelle SMI', '2 rue de Laborde', 'Paris Cedex'),
(214, 'Mutuelle SoLyon', '18 rue Gabriel Péri', 'Villeurbanne'),
(215, 'Mutuelle UMC', 'Secteur Relations Adhérents', 'PARIS'),
(216, 'Mutuelle Verte', '78 Cours Lafayette', 'Toulon Cedex 9'),
(217, 'Mutuelle Vitali', 'Service Vitali Santé', 'ANGOULEME Cedex 9'),
(218, 'Mutuelles du Pays-Haut', '10 Avenue de Saintignon', 'LONGWY Cedex'),
(219, 'MVS MUTUELLE', '44 cours Léopold', 'NANCY'),
(220, 'Myriade', '353 boulevard du Président Wilson', 'Bordeaux Cedex'),
(221, 'Novalis Taitbout', '93 rue Marceau', 'Montreuil Cedex'),
(222, 'Novelia', '30 Boulevard de la Tour dAuvergne', 'Rennes Cedex'),
(223, 'Néoliane', '455 promenade des anglais', 'Nice'),
(224, 'Ociane - Rétractation', '35 rue Claude Bonnier', 'BORDEAUX'),
(225, 'Ociane groupe Matmut', '66 rue de Sotteville', 'Rouen'),
(226, 'Pacifica - crédit agricole', '8/10 Boulevard de Vaugirard', 'Paris Cedex 15'),
(227, 'Pacifica - LCL', '8/10 Boulevard de Vaugirard', 'Paris Cedex 15'),
(228, 'Pop Santé', 'TSA 37189', 'NANTERRE CEDEX 9'),
(229, 'Praeconis', '6 Rue Paul Morel', 'VESOUL CEDEX'),
(230, 'Prevoir', '19 rue dAumale', 'Paris Cedex 09'),
(231, 'Pro BTP', '7 rue du Regard', 'Paris'),
(232, 'Prévadiès', '143 rue Blomet', 'Paris'),
(233, 'Quattro Assurances', 'La croix blanche', 'ST CERE'),
(234, 'Radiance groupe Humanis', '95 Rue Vendôme', 'Lyon Cedex 06'),
(235, 'REPAM', '217 cours Lafayette', 'LYON Cedex 06'),
(236, 'Ritchaard Santé Assurance', '15 rue Aux Loups', 'MONTSOULT'),
(237, 'Réunica', '104-110 boulevard Haussmann', 'Paris'),
(238, 'Samassur', '37 rue Roger Renzo', 'Marseille'),
(239, 'Santiane', '455 Promenade des Anglais', 'Nice'),
(240, 'Santéclaire', '7 Mail Pablo Picasso', 'Nantes'),
(241, 'SGSanté', '14 rue Joliot Curie', 'Châlons en Champagne Cedex'),
(242, 'SMAB', '32 rue de la préfecture', 'DIJON'),
(243, 'Smatis', '6 rue du Piave', 'ANGOULEME CEDEX 9'),
(244, 'SMEBA', '42 boulevard du Roi René', 'ANGERS CEDEX 01'),
(245, 'SMECO', '43 rue Jaboulay', 'LYON CEDEX 07'),
(246, 'SMENO', 'CS 90027', 'LILLE Cedex'),
(247, 'SMERAG', '1 avenue dEstrée', 'Cayenne'),
(248, 'SMERAG Guadeloupe', 'BP 379', 'Pointe-à-Pitre cedex'),
(249, 'SMERAG Guyane', 'BP 662', 'Cayenne cedex'),
(250, 'SMERAG Martinique', 'CS 61136', 'Fort-de-France cedex'),
(251, 'SMEREB', '43 rue Jaboulay', 'LYON CEDEX 07'),
(252, 'SMERRA', '43 rue Jaboulay', 'LYON CEDEX 07'),
(253, 'SMGP', '16 Boulevard du Général Leclerc', 'CLICHY CEDEX'),
(254, 'Société Générale Sogecap', 'Service Prestations', 'Reims'),
(255, 'Sofinco / Caci', 'Gestion des contrats Prévoyance', 'La Madeleine Cedex'),
(256, 'Solimut', '47 rue Maurice Flandin', 'Lyon'),
(257, 'Solly Azar', '60 rue de la Chaussée dAntin', 'Paris Cedex 09'),
(258, 'SPVIE Assurances', '26 rue Pagès', 'SURESNES'),
(259, 'Suravenir', '2 rue Vasco de Gama', 'Nantes Cedex 9'),
(260, 'SwissLife', 'TSA 36003', 'Lille Cedex'),
(261, 'Sérénis Assurances', '34 rue du Wacken', 'Strasbourg Cedex 9'),
(262, 'Tepee', '47 Place Alphonse Fiquet', 'Amiens'),
(263, 'Thélem assurance', 'Château du Croc', 'Chécy Cedex'),
(264, 'UCR (Milligestion)', '1 BIS BOULEVARD FAIDHERBE', 'CAMBRAI'),
(265, 'uMEn', '5 Rue de Palestro', 'PARIS'),
(266, 'Unéo', '48 rue Barbès', 'Montrouge Cedex');

-- --------------------------------------------------------

--
-- Structure de la table `contactform_data`
--

CREATE TABLE `contactform_data` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Prenom` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  `Sujet` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contactform_data`
--

INSERT INTO `contactform_data` (`id`, `Nom`, `Prenom`, `Email`, `Telephone`, `Sujet`) VALUES
(47, 'attouchi', 'malek', 'malek@gmail.com', '20143422', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `form_data`
--

CREATE TABLE `form_data` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `assureur` varchar(255) DEFAULT NULL,
  `numcontrat` varchar(255) DEFAULT NULL,
  `motifselect` varchar(255) DEFAULT NULL,
  `motiftext` text DEFAULT NULL,
  `fileinputs` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `form_data`
--

INSERT INTO `form_data` (`id`, `nom`, `prenom`, `email`, `phone`, `assureur`, `numcontrat`, `motifselect`, `motiftext`, `fileinputs`) VALUES
(191, 'intissar', 'Attouchi', 'attouchim58@gmail.com', '12335678', 'AGF - Allianz', '2505', 'Contrat reconduit sans notification (Loi Chatel)', 'achet de la poste\". Je vous serais reconnaissant(e) de bien vouloir prendre en considération ma demande dès réception de ce courrier recommandé, et de me faire parvenir une correspondance confirmant la résiliation de mon contrat.\r\n\r\nJe vous prie d\'agréer, Madame, Monsieur, l\'expression de mes salutations distinguées.', NULL),
(192, 'Malek', 'Attouchi', 'wa@test.fr', '12345678', 'Afi Esca', '12345', 'Résiliation à tout moment après la 1ère année', 'Madame, Monsieur,\r\n\r\nPar la présente, je vous notifie ma volonté de résilier, aujourd\'hui et par le biais de ce courrier recommandé, mon contrat de mutuelle n° [numerocontrat] que j\'ai souscrit auprès de votre établissement. Ce contrat a été en vigueur depuis plus d\'un an.\r\n\r\nConformément aux dispositions énoncées dans la loi n° 2019-733 du 14 juillet 2019, je suis en droit de demander la résiliation de mon contrat sans encourir de pénalités ou de frais supplémentaires. Je vous saurais gré de bien vouloir prendre en compte ma demande dès réception de cette lettre recommandée, et de me faire parvenir une confirmation écrite indiquant la date de résiliation de mon contrat, ainsi que les modalités de remboursement des cotisations excédentaires que j\'ai versées.\r\n\r\nDans l\'attente de votre retour, je vous prie d\'agréer, Madame, Monsieur, l\'expression de mes salutations distinguées.', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `motifs`
--

CREATE TABLE `motifs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Lettre_motif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `motifs`
--

INSERT INTO `motifs` (`id`, `name`, `Lettre_motif`) VALUES
(1, 'Résiliation à tout moment après la 1ère année', 'Madame, Monsieur,\r\n\r\nPar la présente, je vous notifie ma volonté de résilier, aujourd\'hui et par le biais de ce courrier recommandé, mon contrat de mutuelle n° [numerocontrat] que j\'ai souscrit auprès de votre établissement. Ce contrat a été en vigueur depuis plus d\'un an.\r\n\r\nConformément aux dispositions énoncées dans la loi n° 2019-733 du 14 juillet 2019, je suis en droit de demander la résiliation de mon contrat sans encourir de pénalités ou de frais supplémentaires. Je vous saurais gré de bien vouloir prendre en compte ma demande dès réception de cette lettre recommandée, et de me faire parvenir une confirmation écrite indiquant la date de résiliation de mon contrat, ainsi que les modalités de remboursement des cotisations excédentaires que j\'ai versées.\r\n\r\nDans l\'attente de votre retour, je vous prie d\'agréer, Madame, Monsieur, l\'expression de mes salutations distinguées.'),
(2, 'Contrat reconduit sans notification (Loi Chatel)', 'Madame, Monsieur,\n\nPar la présente, je vous notifie, par le biais de ce courrier recommandé, ma volonté de résilier mon contrat d\'assurance santé n° [numerocontrat] que j\'ai souscrit auprès de votre établissement, en raison de sa reconduction automatique sans notification de votre part.\n\nConformément à l\'article L113-15-1 du Code des assurances, qui stipule que \"pour les contrats à tacite reconduction couvrant les personnes physiques en dehors de leurs activités professionnelles, la date limite d\'exercice par l\'assuré du droit à dénonciation du contrat doit être rappelée avec chaque avis d\'échéance annuelle de prime ou de cotisation. [...] Lorsque cette information ne lui a pas été [...], l\'assuré peut mettre un terme au contrat, sans pénalités, à tout moment à compter de la date de reconduction en envoyant une lettre recommandée à l\'assureur\", je souhaite exercer mon droit de résiliation de mon contrat d\'assurance santé, sans encourir de pénalités.\n\nSelon les dispositions de cet article, \"la résiliation prend effet le lendemain de la date figurant sur le cachet de la poste\". Je vous serais reconnaissant(e) de bien vouloir prendre en considération ma demande dès réception de ce courrier recommandé, et de me faire parvenir une correspondance confirmant la résiliation de mon contrat.\n\nJe vous prie d\'agréer, Madame, Monsieur, l\'expression de mes salutations distinguées.'),
(3, 'Adhésion à une mutuelle santé obligatoire', 'Madame, Monsieur,\n\nPar la présente, je vous notifie, par le biais de ce courrier recommandé, ma volonté de résilier mon contrat de mutuelle n° [numerocontrat] que j\'ai souscrit auprès de votre établissement, en raison de la mise en place d\'une mutuelle collective obligatoire au sein de mon entreprise.\n\nVeuillez trouver ci-joint une attestation émanant de mon employeur, qui confirme cette obligation et me contraint à résilier le contrat d\'assurance santé nous liant. Ma nouvelle couverture santé sera en vigueur à partir du ../../..., et je vous saurais gré de prendre en compte ma demande de résiliation à compter de cette date.\n\nJe vous prie de bien vouloir m\'envoyer un courrier confirmant la résiliation de mon contrat, ainsi qu\'un remboursement des cotisations perçues en trop, correspondant à la période pendant laquelle le risque n\'a pas été engagé.\n\nJe vous remercie de votre attention et vous prie d\'agréer, Madame, Monsieur, l\'expression de mes salutations distinguées.'),
(4, 'Augmentation de prime supérieure à celle prévue au contrat', 'Madame, Monsieur,\n\nPar la présente, je vous notifie, par le biais de ce courrier recommandé, ma volonté de résilier mon contrat d\'assurance santé n° [numerocontrat] que j\'ai souscrit auprès de votre établissement, suite à une récente modification des conditions contractuelles.\n\nConformément à l\'article L121-110 du Code de la consommation, \"tout projet de modification des conditions contractuelles à l\'initiative du professionnel est communiqué par écrit par ce professionnel au consommateur au moins un mois avant son entrée en vigueur, assorti de l\'information, énoncée de manière claire, précise et visible, selon laquelle ce dernier peut, tant qu\'il n\'a pas expressément accepté les nouvelles conditions, résilier le contrat, sans pénalité de résiliation et sans droit à dédommagement, jusque dans un délai de trois mois après l\'entrée en vigueur de la modification.\"\n\nPar conséquent, je souhaite exercer mon droit de résiliation de mon contrat, sans encourir de pénalités. Je vous saurais gré de bien vouloir prendre en compte ma demande dès réception de ce courrier recommandé, et de m\'adresser une correspondance confirmant la date de résiliation de mon contrat.\n\nJe vous remercie de votre attention et vous prie d\'agréer, Madame, Monsieur, l\'expression de mes salutations distinguées.'),
(5, 'Avis d\'échéance reçu hors délai', 'Madame, Monsieur,\n\nPar la présente, je vous notifie, par le biais de ce courrier recommandé, ma volonté de résilier mon contrat de mutuelle n° [numerocontrat] souscrit auprès de votre établissement, en raison du retard de réception de mon avis d\'échéance.\n\nConformément à l\'article L113-15-1 du Code des assurances, qui stipule que \"pour les contrats à tacite reconduction couvrant les personnes physiques en dehors de leurs activités professionnelles, la date limite d\'exercice par l\'assuré du droit à dénonciation du contrat doit être rappelée avec chaque avis d\'échéance annuelle de prime ou de cotisation. Lorsque cet avis lui est adressé moins de quinze jours avant cette date, ou lorsqu\'il lui est adressé après cette date, l\'assuré est informé avec cet avis qu\'il dispose d\'un délai de vingt jours suivant la date d\'envoi de cet avis pour dénoncer la reconduction du contrat\", je souhaite donc exercer mon droit de résiliation de mon contrat d\'assurance santé, sans encourir de pénalités.\n\nConformément aux dispositions de cet article, \"la résiliation prend effet le lendemain de la date figurant sur le cachet de la poste\". Je vous serais reconnaissant(e) de bien vouloir prendre en compte ma demande dès réception de ce courrier recommandé, et de m\'adresser une correspondance confirmant la résiliation de mon contrat.\n\nJe vous remercie de votre attention et vous prie d\'agréer, Madame, Monsieur, l\'expression de mes salutations distinguées.'),
(6, 'Autres raisons', 'Par la présente, je vous adresse un courrier recommandé afin de vous signifier ma volonté de résilier le contrat n° [numerocontrat] qui nous lie.\nJe vous prie de bien vouloir prendre en compte ma demande et de m\'envoyer, en retour, une confirmation écrite de la résiliation du contrat.\n\nJe vous remercie de votre attention et vous prie d\'agréer, Madame, Monsieur, mes salutations les plus respectueuses.');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(17, 'malek', 'malek'),
(18, 'med', 'med'),
(19, 'attouchi', 'attouchi');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `assureurs`
--
ALTER TABLE `assureurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contactform_data`
--
ALTER TABLE `contactform_data`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `form_data`
--
ALTER TABLE `form_data`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `motifs`
--
ALTER TABLE `motifs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `assureurs`
--
ALTER TABLE `assureurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT pour la table `contactform_data`
--
ALTER TABLE `contactform_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `form_data`
--
ALTER TABLE `form_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT pour la table `motifs`
--
ALTER TABLE `motifs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
