-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 03 oct. 2024 à 07:56
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `2024-10-03`
--

-- --------------------------------------------------------

--
-- Structure de la table `jeux_video`
--

DROP TABLE IF EXISTS `jeux_video`;
CREATE TABLE IF NOT EXISTS `jeux_video` (
  `ID` int UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `id_possesseur` int DEFAULT NULL,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'No name',
  `console` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'No console',
  `prix` double DEFAULT '0',
  `nbre_joueurs_max` int DEFAULT '0',
  `commentaires` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_ajout` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_modif` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `jeux_video`
--

INSERT INTO `jeux_video` (`ID`, `id_possesseur`, `nom`, `console`, `prix`, `nbre_joueurs_max`, `commentaires`, `date_ajout`, `date_modif`) VALUES
(1, 2, 'Super Mario Bros', 'NES', 4, 1, 'Un jeu d\'anthologie !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(2, 5, 'Sonic', 'Megadrive', 2, 1, 'Pour moi, le meilleur jeu du monde !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(3, 2, 'Zelda : ocarina of time', 'Nintendo 64', 15, 1, 'Un jeu grand, beau et complet comme on en voit rarement de nos jours', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(4, 2, 'Mario Kart 64', 'Nintendo 64', 25, 4, 'Un excellent jeu de kart !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(5, 4, 'Super Smash Bros Melee', 'GameCube', 55, 4, 'Un jeu de baston délirant !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(6, 5, 'Dead or Alive', 'Xbox', 60, 4, 'Le plus beau jeu de baston jamais créé', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(7, 5, 'Dead or Alive Xtreme Beach Volley Ball', 'Xbox', 60, 4, 'Un jeu de beach volley de toute beauté o_O', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(8, 4, 'Enter the Matrix', 'PC', 45, 1, 'Plutôt bof comme jeu, mais ça complète bien le film', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(9, 4, 'Max Payne 2', 'PC', 50, 1, 'Très réaliste, une sorte de film noir sur fond d\'histoire d\'amour. A essayer !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(10, 2, 'Yoshi\'s Island', 'SuperNES', 6, 1, 'Le paradis des Yoshis :o)', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(11, 2, 'Commandos 3', 'PC', 44, 12, 'Un bon jeu d\'action où on dirige un commando pendant la 2ème guerre mondiale !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(12, 5, 'Final Fantasy X', 'PS2', 40, 1, 'Encore un Final Fantasy mais celui la est encore plus beau !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(13, 2, 'Pokemon Rubis', 'GBA', 44, 4, 'Pika-Pika-chu !!!', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(14, 4, 'Starcraft', 'PC', 19, 8, 'Le meilleur jeux pc de tout les temps !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(15, 4, 'Grand Theft Auto 3', 'PS2', 30, 1, 'Comme dans les autres Gta on ecrase tout le monde :) .', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(16, 4, 'Homeworld 2', 'PC', 45, 6, 'Superbe ! o_O', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(17, 5, 'Aladin', 'SuperNES', 10, 1, 'Comme le dessin Animé !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(18, 4, 'Super Mario Bros 3', 'SuperNES', 10, 2, 'Le meilleur Mario selon moi.', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(19, 2, 'SSX 3', 'Xbox', 56, 2, 'Un très bon jeu de snow !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(20, 5, 'Star Wars : Jedi outcast', 'Xbox', 33, 1, 'Encore un jeu sur star-wars où on se prend pour Luke Skywalker !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(21, 5, 'Actua Soccer 3', 'PS', 30, 2, 'Un jeu de foot assez bof ...', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(22, 2, 'Time Crisis 3', 'PS2', 40, 1, 'Un troisième volet efficace mais pas vraiment surprenant', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(23, 5, 'X-FILES', 'PS', 25, 1, 'Un jeu censé ressembler a la série mais assez raté ...', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(24, 5, 'Soul Calibur 2', 'Xbox', 54, 1, 'Un jeu bien axé sur le combat', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(25, 2, 'Diablo', 'PS', 20, 1, 'Comme sur PC mais la c\'est sur un ecran de télé :) !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(26, 5, 'Street Fighter 2', 'Megadrive', 10, 2, 'Le célèbre jeu de combat !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(27, 2, 'Gundam Battle Assault 2', 'PS', 29, 1, 'Jeu japonais dont le gameplay est un peu limité. Peu de robots malheureusement', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(28, 2, 'Spider-Man', 'Megadrive', 15, 1, 'Vivez l\'aventure de l\'homme araignée', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(29, 4, 'Midtown Madness 3', 'Xbox', 59, 6, 'Dans la suite des autres versions de Midtown Madness', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(30, 2, 'Tetris', 'Gameboy', 5, 1, 'Qui ne connait pas ? ', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(31, 4, 'The Rocketeer', 'NES', 2, 1, 'Un super un film et un jeu de m*rde ...', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(32, 5, 'Pro Evolution Soccer 3', 'PS2', 59, 2, 'Un petit jeu de foot sur PS2', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(33, 4, 'Ice Hockey', 'NES', 7, 2, 'Jamais joué mais a mon avis ca parle de hockey sur glace ... =)', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(34, 2, 'Sydney 2000', 'Dreamcast', 15, 2, 'Les JO de Sydney dans votre salon !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(35, 5, 'NBA 2k', 'Dreamcast', 12, 2, 'A votre avis :p ?', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(36, 4, 'Aliens Versus Predator : Extinction', 'PS2', 20, 2, 'Un shoot\'em up pour pc', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(37, 2, 'Crazy Taxi', 'Dreamcast', 11, 1, 'Conduite de taxi en folie !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(38, 3, 'Le Maillon Faible', 'PS2', 10, 1, 'Le jeu de l\'émission', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(39, 4, 'FIFA 64', 'Nintendo 64', 25, 2, 'Le premier jeu de foot sur la N64 =) !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(40, 2, 'Qui Veut Gagner Des Millions', 'PS2', 10, 1, 'Le jeu de l\'émission', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(41, 6, 'Monopoly', 'Nintendo 64', 21, 4, 'Bheuuu le monopoly sur N64 !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(42, 1, 'Taxi 3', 'PS2', 19, 4, 'Un jeu de voiture sur le film', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(43, 2, 'Indiana Jones Et Le Tombeau De L\'Empereur', 'PS2', 25, 1, 'Notre aventurier préféré est de retour !!!', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(44, 3, 'F-ZERO', 'GBA', 25, 4, 'Un super jeu de course futuriste !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(45, 3, 'Harry Potter Et La Chambre Des Secrets', 'Xbox', 30, 1, 'Abracadabra !! Le célebre magicien est de retour !', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(46, 1, 'Half-Life', 'PC', 15, 32, 'L\'autre meilleur jeu de tout les temps (surtout ses mods).', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(47, 6, 'Myst III Exile', 'Xbox', 49, 1, 'Un jeu de réflexion', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(48, 6, 'Wario World', 'Gamecube', 40, 4, 'Wario vs Mario ! Qui gagnera ! ?', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(49, 2, 'Rollercoaster Tycoon', 'Xbox', 29, 1, 'Jeu de gestion d\'un parc d\'attraction', '2024-04-30 16:17:29', '2024-04-30 16:17:29'),
(50, 5, 'Splinter Cell', 'Xbox', 53, 1, 'Jeu magnifique !', '2024-04-30 16:17:29', '2024-04-30 16:17:29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
