-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 16 avr. 2026 à 12:53
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : voyages
--

-- --------------------------------------------------------

--
-- Structure de la table doctrine_migration_versions
--

DROP TABLE IF EXISTS doctrine_migration_versions;
CREATE TABLE doctrine_migration_versions (
  version varchar(191) NOT NULL,
  executed_at datetime DEFAULT NULL,
  execution_time int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table doctrine_migration_versions
--

INSERT INTO doctrine_migration_versions (version, executed_at, execution_time) VALUES
('DoctrineMigrations\\Version20260120101940', '2026-01-20 10:24:04', 52),
('DoctrineMigrations\\Version20260120103805', '2026-01-20 10:39:52', 25),
('DoctrineMigrations\\Version20260120110029', '2026-01-20 11:01:03', 20),
('DoctrineMigrations\\Version20260226171021', '2026-02-26 17:20:07', 45),
('DoctrineMigrations\\Version20260302121415', '2026-03-02 12:16:42', 108),
('DoctrineMigrations\\Version20260303145507', '2026-03-03 14:55:57', 83),
('DoctrineMigrations\\Version20260303161826', '2026-03-03 16:19:29', 69);

-- --------------------------------------------------------

--
-- Structure de la table environnement
--

DROP TABLE IF EXISTS environnement;
CREATE TABLE environnement (
  id int NOT NULL,
  nom varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table environnement
--

INSERT INTO environnement (id, nom) VALUES
(1, 'Mer'),
(3, 'Terre'),
(4, 'Fleur'),
(5, 'Campagne'),
(6, 'Champ'),
(7, 'Foret'),
(8, 'Ville'),
(9, 'Montagne');

-- --------------------------------------------------------

--
-- Structure de la table messenger_messages
--

DROP TABLE IF EXISTS messenger_messages;
CREATE TABLE messenger_messages (
  id bigint NOT NULL,
  body longtext NOT NULL,
  headers longtext NOT NULL,
  queue_name varchar(190) NOT NULL,
  created_at datetime NOT NULL,
  available_at datetime NOT NULL,
  delivered_at datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table visite
--

DROP TABLE IF EXISTS visite;
CREATE TABLE visite (
  id int NOT NULL,
  ville varchar(50) NOT NULL,
  datecreation date DEFAULT NULL,
  note int DEFAULT NULL,
  avis longtext,
  tempmin int DEFAULT NULL,
  tempmax int DEFAULT NULL,
  pays varchar(50) NOT NULL,
  image_name varchar(255) DEFAULT NULL,
  image_size int DEFAULT NULL,
  updated_at datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table visite
--

INSERT INTO visite (id, ville, datecreation, note, avis, tempmin, tempmax, pays, image_name, image_size, updated_at) VALUES
(1, 'Buôn Ma Thuột', '2021-06-25', 0, 'egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula', -7, 25, 'Philippines', NULL, NULL, NULL),
(2, 'Sokoto', '2022-11-16', 9, 'lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat', -2, 2, 'Sweden', NULL, NULL, NULL),
(3, 'Mexico City', '2025-03-24', 11, 'dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed', -11, 18, 'China', NULL, NULL, NULL),
(4, 'Portigliola', '2023-08-04', 6, 'Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate', -30, 18, 'New Zealand', NULL, NULL, NULL),
(5, 'Jiangsu', '2025-12-12', 5, 'et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi', -25, 32, 'United Kingdom', NULL, NULL, NULL),
(6, 'Paarl', '2024-06-02', 17, 'mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada', -19, 31, 'Italy', NULL, NULL, NULL),
(7, 'Hartford', '2023-02-18', 1, 'luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget', -23, 33, 'Vietnam', NULL, NULL, NULL),
(8, 'Hà Tĩnh', '2026-10-15', 12, 'mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna.', -28, 1, 'China', NULL, NULL, NULL),
(9, 'Ourense', '2026-02-09', 1, 'amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam', -23, 22, 'New Zealand', NULL, NULL, NULL),
(10, 'Simpang', '2023-02-24', 10, 'at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean', -18, 13, 'Austria', NULL, NULL, NULL),
(11, 'Grand-Leez', '2020-08-31', 6, 'nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est', -16, 38, 'Colombia', NULL, NULL, NULL),
(12, 'Denderwindeke', '2026-01-29', 1, 'sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula', -10, 42, 'Brazil', NULL, NULL, NULL),
(13, 'Ham-sur-Sambre', '2026-11-22', 15, 'eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien.', -16, 8, 'China', NULL, NULL, NULL),
(14, 'Melitopol', '2025-03-05', 19, 'quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis,', -28, 6, 'Peru', NULL, NULL, NULL),
(15, 'Pietrarubbia', '2026-01-25', 6, 'ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie', -28, 41, 'Norway', NULL, NULL, NULL),
(16, 'Villahermosa', '2021-07-06', 7, 'eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et,', -26, 39, 'Colombia', NULL, NULL, NULL),
(17, 'Veenendaal', '2022-03-11', 1, 'Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor', -29, 45, 'Nigeria', NULL, NULL, NULL),
(18, 'Orekhovo-Zuyevo', '2022-08-25', 15, 'condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu', -11, 36, 'Costa Rica', NULL, NULL, NULL),
(19, 'Bergisch Gladbach', '2021-03-05', 7, 'nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie', -2, 12, 'Chile', NULL, NULL, NULL),
(20, 'Bergerac', '2023-07-21', 14, 'eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget,', -2, 48, 'Peru', NULL, NULL, NULL),
(21, 'O\'Higgins', '2026-06-14', 15, 'sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est,', -27, 32, 'Philippines', NULL, NULL, NULL),
(22, 'Palma de Mallorca', '2020-10-31', 17, 'pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.', -14, 49, 'Austria', NULL, NULL, NULL),
(23, 'Chongqing', '2022-02-23', 4, 'dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu', -4, 34, 'Pakistan', NULL, NULL, NULL),
(24, 'Poltava', '2021-07-27', 14, 'nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris.', -5, 21, 'Singapore', NULL, NULL, NULL),
(25, 'Thorembais-Saint-Trond', '2020-10-01', 4, 'risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend', -20, 24, 'Austria', NULL, NULL, NULL),
(26, 'Huissen', '2021-03-09', 7, 'tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy.', -24, 6, 'France', NULL, NULL, NULL),
(27, 'Kungälv', '2021-10-10', 17, 'bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est', -15, 20, 'Austria', NULL, NULL, NULL),
(28, 'Namsos', '2020-10-01', 10, 'leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est', -19, 11, 'Ireland', NULL, NULL, NULL),
(29, 'Nelson', '2021-06-06', 19, 'sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus', -14, 38, 'China', NULL, NULL, NULL),
(30, 'Bayeux', '2025-06-17', 8, 'Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam', 0, 20, 'South Africa', NULL, NULL, NULL),
(31, 'Gore', '2020-08-27', 2, 'ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit.', -8, 13, 'Australia', NULL, NULL, NULL),
(32, 'Arequipa', '2021-03-31', 6, 'et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus.', -4, 2, 'Indonesia', NULL, NULL, NULL),
(33, 'Watermaal-Bosvoorde', '2025-12-13', 17, 'Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo', -18, 48, 'Indonesia', NULL, NULL, NULL),
(34, 'Bollnäs', '2020-11-17', 14, 'facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis.', -9, 4, 'South Korea', NULL, NULL, NULL),
(35, 'Franeker', '2026-08-31', 15, 'felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi.', -18, 21, 'Germany', NULL, NULL, NULL),
(36, 'Tianjin', '2023-10-08', 3, 'aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui.', -7, 17, 'Belgium', NULL, NULL, NULL),
(37, 'Marbella', '2026-02-07', 11, 'a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie', -28, 35, 'Canada', NULL, NULL, NULL),
(38, 'Foz do Iguaçu', '2021-09-13', 11, 'vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,', -27, 10, 'Russian Federation', NULL, NULL, NULL),
(39, 'Candela', '2023-04-02', 17, 'Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras', -17, 38, 'China', NULL, NULL, NULL),
(40, 'Las Cabras', '2025-05-08', 16, 'orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac', -28, 37, 'China', NULL, NULL, NULL),
(41, 'Canlaon', '2020-06-13', 14, 'ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae,', -11, 40, 'South Korea', NULL, NULL, NULL),
(201, 'Paris', '2026-02-26', 14, 'Bof bof', 15, 16, 'France', NULL, NULL, NULL),
(43, 'Kitzbühel', '2024-11-24', 8, 'Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante', -1, 41, 'China', NULL, NULL, NULL),
(44, 'Johannesburg', '2021-12-15', 16, 'nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id', -15, 22, 'Philippines', NULL, NULL, NULL),
(45, 'Kessel', '2026-05-02', 14, 'sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel', -20, 48, 'Australia', NULL, NULL, NULL),
(46, 'Bydgoszcz', '2024-10-20', 18, 'egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum', -3, 46, 'Brazil', NULL, NULL, NULL),
(47, 'Cork', '2025-02-07', 13, 'Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor,', -2, 18, 'Colombia', NULL, NULL, NULL),
(48, 'Buôn Ma Thuột', '2025-11-21', 5, 'euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue', -11, 23, 'Austria', NULL, NULL, NULL),
(49, 'Lloydminster', '2020-10-03', 6, 'sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui.', -1, 48, 'Australia', NULL, NULL, NULL),
(50, 'Boryeong', '2026-09-20', 13, 'tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus.', -9, 9, 'New Zealand', NULL, NULL, NULL),
(51, 'Bollnäs', '2025-06-20', 12, 'amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at,', -19, 0, 'Austria', NULL, NULL, NULL),
(52, 'Potchefstroom', '2026-08-10', 10, 'enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.', -4, 33, 'France', NULL, NULL, NULL),
(53, 'Cork', '2024-08-04', 19, 'sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris', -26, 40, 'Sweden', NULL, NULL, NULL),
(54, 'Ciudad Apodaca', '2025-07-05', 19, 'lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam', -28, 49, 'Mexico', NULL, NULL, NULL),
(55, 'Hidalgo del Parral', '2024-11-10', 18, 'dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna', -17, 26, 'United States', NULL, NULL, NULL),
(56, 'Kỳ Sơn', '2026-03-22', 3, 'turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci', -8, 5, 'Spain', NULL, NULL, NULL),
(57, 'Cereté', '2022-05-31', 9, 'eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper', -27, 37, 'Belgium', NULL, NULL, NULL),
(58, 'Guaymas', '2021-01-05', 1, 'adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy', -1, 17, 'Pakistan', NULL, NULL, NULL),
(59, 'Wolfville', '2022-07-21', 6, 'lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet,', -7, 1, 'Spain', NULL, NULL, NULL),
(60, 'Dublin', '2025-04-02', 17, 'Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et,', -3, 11, 'New Zealand', NULL, NULL, NULL),
(61, 'Tczew', '2026-11-12', 11, 'orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at', -25, 25, 'Colombia', NULL, NULL, NULL),
(62, 'Montbéliard', '2021-01-20', 16, 'quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut', -9, 25, 'France', NULL, NULL, NULL),
(63, 'Okpoko', '2021-09-20', 17, 'eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in', -1, 41, 'United States', NULL, NULL, NULL),
(64, 'Nagar', '2024-11-19', 14, 'montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper', -10, 3, 'Germany', NULL, NULL, NULL),
(65, 'Lugo', '2025-11-11', 6, 'elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis.', -7, 1, 'Germany', NULL, NULL, NULL),
(66, 'Monfumo', '2026-06-19', 9, 'sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel', -28, 26, 'Singapore', NULL, NULL, NULL),
(68, 'Utrecht', '2024-06-29', 4, 'enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis.', -20, 34, 'South Africa', NULL, NULL, NULL),
(69, 'Yaroslavl', '2023-11-30', 17, 'iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor', -19, 15, 'Colombia', NULL, NULL, NULL),
(70, 'Rangiora', '2022-10-04', 13, 'dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede.', -6, 44, 'Austria', NULL, NULL, NULL),
(71, 'Curarrehue', '2026-01-14', 4, 'Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo.', -21, 44, 'Russian Federation', NULL, NULL, NULL),
(72, 'Yunnan', '2026-04-03', 2, 'Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus.', -2, 48, 'Sweden', NULL, NULL, NULL),
(73, 'Barranco Minas', '2023-06-09', 9, 'sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh.', -29, 18, 'Spain', NULL, NULL, NULL),
(74, 'Volgograd', '2024-10-01', 3, 'turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus.', -4, 1, 'Pakistan', NULL, NULL, NULL),
(75, 'Builth Wells', '2022-03-15', 19, 'imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed,', -6, 24, 'Italy', NULL, NULL, NULL),
(76, 'Jiutepec', '2024-08-22', 14, 'est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim.', -25, 36, 'United States', NULL, NULL, NULL),
(77, 'Jeongeup', '2025-04-05', 5, 'amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus', -27, 16, 'Vietnam', NULL, NULL, NULL),
(78, 'Kano', '2024-08-16', 18, 'ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi', -28, 18, 'Singapore', NULL, NULL, NULL),
(79, 'Liaoning', '2024-10-07', 6, 'ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper', -27, 47, 'Ukraine', NULL, NULL, NULL),
(80, 'Alta', '2022-02-22', 3, 'lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit', -14, 38, 'Canada', NULL, NULL, NULL),
(81, 'Novgorod', '2026-01-03', 5, 'suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non', -29, 15, 'Mexico', NULL, NULL, NULL),
(82, 'Rangiora', '2024-08-24', 17, 'sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum', -5, 16, 'France', NULL, NULL, NULL),
(83, 'Taguig', '2025-11-19', 17, 'metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,', -6, 23, 'Philippines', NULL, NULL, NULL),
(84, 'Opole', '2023-01-08', 8, 'non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id', -13, 34, 'France', NULL, NULL, NULL),
(85, 'Itanagar', '2023-11-08', 11, 'et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec,', -4, 20, 'United States', NULL, NULL, NULL),
(86, 'Oslo', '2026-01-30', 8, 'nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec', -11, 26, 'Spain', NULL, NULL, NULL),
(87, 'Ararat', '2020-05-08', 3, 'Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis', -14, 44, 'Peru', NULL, NULL, NULL),
(88, 'Kaluga', '2025-07-19', 18, 'faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor,', -3, 10, 'France', NULL, NULL, NULL),
(89, 'Mohmand Agency', '2020-12-25', 11, 'scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique', -7, 35, 'Russian Federation', NULL, NULL, NULL),
(90, 'Neerheylissem', '2020-11-21', 6, 'enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo,', -15, 13, 'South Korea', NULL, NULL, NULL),
(91, 'Campina Grande', '2025-11-28', 8, 'velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris', -9, 22, 'Spain', NULL, NULL, NULL),
(92, 'San José de Alajuela', '2020-08-02', 10, 'Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo', -17, 45, 'Indonesia', NULL, NULL, NULL),
(93, 'Clarksville', '2026-07-04', 12, 'eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula.', -28, 39, 'Costa Rica', NULL, NULL, NULL),
(94, 'Market Drayton', '2026-08-15', 2, 'Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in', -30, 29, 'China', NULL, NULL, NULL),
(95, 'Linz', '2021-10-18', 7, 'sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie', -22, 17, 'Ukraine', NULL, NULL, NULL),
(96, 'Hofors', '2022-06-28', 4, 'ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non', -19, 18, 'United States', NULL, NULL, NULL),
(97, 'Bischofshofen', '2020-08-24', 11, 'blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus', -12, 11, 'Canada', NULL, NULL, NULL),
(98, 'Manaure', '2025-07-24', 11, 'convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero', -23, 45, 'Germany', NULL, NULL, NULL),
(99, 'Gwangju', '2020-01-07', 14, 'et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu.', -16, 29, 'Italy', NULL, NULL, NULL),
(100, 'Heilongjiang', '2020-03-01', 19, 'nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero', -26, 40, 'Colombia', NULL, NULL, NULL),
(101, 'Buôn Ma Thuột', '2021-06-25', 0, 'egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula', -7, 25, 'Philippines', NULL, NULL, NULL),
(102, 'Sokoto', '2022-11-16', 9, 'lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat', -2, 2, 'Sweden', NULL, NULL, NULL),
(103, 'Mexico City', '2025-03-24', 11, 'dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed', -11, 18, 'China', NULL, NULL, NULL),
(104, 'Portigliola', '2023-08-04', 6, 'Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate', -30, 18, 'New Zealand', NULL, NULL, NULL),
(105, 'Jiangsu', '2025-12-12', 5, 'et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi', -25, 32, 'United Kingdom', NULL, NULL, NULL),
(106, 'Paarl', '2024-06-02', 17, 'mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada', -19, 31, 'Italy', NULL, NULL, NULL),
(107, 'Hartford', '2023-02-18', 1, 'luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget', -23, 33, 'Vietnam', NULL, NULL, NULL),
(108, 'Hà Tĩnh', '2026-10-15', 12, 'mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna.', -28, 1, 'China', NULL, NULL, NULL),
(109, 'Ourense', '2026-02-09', 1, 'amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam', -23, 22, 'New Zealand', NULL, NULL, NULL),
(110, 'Simpang', '2023-02-24', 10, 'at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean', -18, 13, 'Austria', NULL, NULL, NULL),
(111, 'Grand-Leez', '2020-08-31', 6, 'nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est', -16, 38, 'Colombia', NULL, NULL, NULL),
(112, 'Denderwindeke', '2026-01-29', 1, 'sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula', -10, 42, 'Brazil', NULL, NULL, NULL),
(113, 'Ham-sur-Sambre', '2026-11-22', 15, 'eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien.', -16, 8, 'China', NULL, NULL, NULL),
(114, 'Melitopol', '2025-03-05', 19, 'quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis,', -28, 6, 'Peru', NULL, NULL, NULL),
(115, 'Pietrarubbia', '2026-01-25', 6, 'ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie', -28, 41, 'Norway', NULL, NULL, NULL),
(116, 'Villahermosa', '2021-07-06', 7, 'eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et,', -26, 39, 'Colombia', NULL, NULL, NULL),
(117, 'Veenendaal', '2022-03-11', 1, 'Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor', -29, 45, 'Nigeria', NULL, NULL, NULL),
(118, 'Orekhovo-Zuyevo', '2022-08-25', 15, 'condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu', -11, 36, 'Costa Rica', NULL, NULL, NULL),
(119, 'Bergisch Gladbach', '2021-03-05', 7, 'nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie', -2, 12, 'Chile', NULL, NULL, NULL),
(120, 'Bergerac', '2023-07-21', 14, 'eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget,', -2, 48, 'Peru', NULL, NULL, NULL),
(121, 'O\'Higgins', '2026-06-14', 15, 'sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est,', -27, 32, 'Philippines', NULL, NULL, NULL),
(122, 'Palma de Mallorca', '2020-10-31', 17, 'pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.', -14, 49, 'Austria', NULL, NULL, NULL),
(123, 'Chongqing', '2022-02-23', 4, 'dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu', -4, 34, 'Pakistan', NULL, NULL, NULL),
(124, 'Poltava', '2021-07-27', 14, 'nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris.', -5, 21, 'Singapore', NULL, NULL, NULL),
(125, 'Thorembais-Saint-Trond', '2020-10-01', 4, 'risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend', -20, 24, 'Austria', NULL, NULL, NULL),
(126, 'Huissen', '2021-03-09', 7, 'tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy.', -24, 6, 'France', NULL, NULL, NULL),
(127, 'Kungälv', '2021-10-10', 17, 'bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est', -15, 20, 'Austria', NULL, NULL, NULL),
(128, 'Namsos', '2020-10-01', 10, 'leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est', -19, 11, 'Ireland', NULL, NULL, NULL),
(129, 'Nelson', '2021-06-06', 19, 'sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus', -14, 38, 'China', NULL, NULL, NULL),
(130, 'Bayeux', '2025-06-17', 8, 'Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam', 0, 20, 'South Africa', NULL, NULL, NULL),
(131, 'Gore', '2020-08-27', 2, 'ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit.', -8, 13, 'Australia', NULL, NULL, NULL),
(132, 'Arequipa', '2021-03-31', 6, 'et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus.', -4, 2, 'Indonesia', NULL, NULL, NULL),
(133, 'Watermaal-Bosvoorde', '2025-12-13', 17, 'Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo', -18, 48, 'Indonesia', NULL, NULL, NULL),
(134, 'Bollnäs', '2020-11-17', 14, 'facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis.', -9, 4, 'South Korea', NULL, NULL, NULL),
(135, 'Franeker', '2026-08-31', 15, 'felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi.', -18, 21, 'Germany', NULL, NULL, NULL),
(136, 'Tianjin', '2023-10-08', 3, 'aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui.', -7, 17, 'Belgium', NULL, NULL, NULL),
(137, 'Marbella', '2026-02-07', 11, 'a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie', -28, 35, 'Canada', NULL, NULL, NULL),
(138, 'Foz do Iguaçu', '2021-09-13', 11, 'vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,', -27, 10, 'Russian Federation', NULL, NULL, NULL),
(139, 'Candela', '2023-04-02', 17, 'Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras', -17, 38, 'China', NULL, NULL, NULL),
(140, 'Las Cabras', '2025-05-08', 16, 'orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac', -28, 37, 'China', NULL, NULL, NULL),
(141, 'Canlaon', '2020-06-13', 14, 'ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae,', -11, 40, 'South Korea', NULL, NULL, NULL),
(142, 'Rinconada', '2026-12-14', 14, 'tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur', -10, 43, 'Colombia', 'organization13-69a70d8da9cf6461239532.png', 99994, '2026-03-03 16:34:21'),
(143, 'Kitzbühel', '2024-11-24', 8, 'Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante', -1, 41, 'China', NULL, NULL, NULL),
(144, 'Johannesburg', '2021-12-15', 16, 'nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id', -15, 22, 'Philippines', NULL, NULL, NULL),
(145, 'Kessel', '2026-05-02', 14, 'sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel', -20, 48, 'Australia', NULL, NULL, NULL),
(146, 'Bydgoszcz', '2024-10-20', 18, 'egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum', -3, 46, 'Brazil', NULL, NULL, NULL),
(147, 'Cork', '2025-02-07', 13, 'Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor,', -2, 18, 'Colombia', NULL, NULL, NULL),
(148, 'Buôn Ma Thuột', '2025-11-21', 5, 'euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue', -11, 23, 'Austria', NULL, NULL, NULL),
(149, 'Lloydminster', '2020-10-03', 6, 'sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui.', -1, 48, 'Australia', NULL, NULL, NULL),
(150, 'Boryeong', '2026-09-20', 13, 'tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus.', -9, 9, 'New Zealand', NULL, NULL, NULL),
(151, 'Bollnäs', '2025-06-20', 12, 'amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at,', -19, 0, 'Austria', NULL, NULL, NULL),
(152, 'Potchefstroom', '2026-08-10', 10, 'enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.', -4, 33, 'France', NULL, NULL, NULL),
(153, 'Cork', '2024-08-04', 19, 'sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris', -26, 40, 'Sweden', NULL, NULL, NULL),
(154, 'Ciudad Apodaca', '2025-07-05', 19, 'lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam', -28, 49, 'Mexico', NULL, NULL, NULL),
(155, 'Hidalgo del Parral', '2024-11-10', 18, 'dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna', -17, 26, 'United States', NULL, NULL, NULL),
(156, 'Kỳ Sơn', '2026-03-22', 3, 'turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci', -8, 5, 'Spain', NULL, NULL, NULL),
(157, 'Cereté', '2022-05-31', 9, 'eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper', -27, 37, 'Belgium', NULL, NULL, NULL),
(158, 'Guaymas', '2021-01-05', 1, 'adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy', -1, 17, 'Pakistan', NULL, NULL, NULL),
(159, 'Wolfville', '2022-07-21', 6, 'lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet,', -7, 1, 'Spain', NULL, NULL, NULL),
(160, 'Dublin', '2025-04-02', 17, 'Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et,', -3, 11, 'New Zealand', NULL, NULL, NULL),
(161, 'Tczew', '2026-11-29', 11, 'orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at', -25, 25, 'Colombia', NULL, NULL, NULL),
(162, 'Montbéliard', '2021-01-20', 16, 'quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut', -9, 25, 'France', NULL, NULL, NULL),
(163, 'Okpoko', '2021-09-20', 17, 'eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in', -1, 41, 'United States', NULL, NULL, NULL),
(164, 'Nagar', '2024-11-19', 14, 'montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper', -10, 3, 'Germany', NULL, NULL, NULL),
(165, 'Lugo', '2025-11-11', 6, 'elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis.', -7, 1, 'Germany', NULL, NULL, NULL),
(166, 'Monfumo', '2026-06-19', 9, 'sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel', -28, 26, 'Singapore', NULL, NULL, NULL),
(167, 'Sousa', '2026-09-12', 12, 'vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi', -25, 39, 'Brazil', NULL, NULL, NULL),
(168, 'Utrecht', '2024-06-29', 4, 'enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis.', -20, 34, 'South Africa', NULL, NULL, NULL),
(169, 'Yaroslavl', '2023-11-30', 17, 'iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor', -19, 15, 'Colombia', NULL, NULL, NULL),
(170, 'Rangiora', '2022-10-04', 13, 'dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede.', -6, 44, 'Austria', NULL, NULL, NULL),
(171, 'Curarrehue', '2026-01-14', 4, 'Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo.', -21, 44, 'Russian Federation', NULL, NULL, NULL),
(172, 'Yunnan', '2026-04-03', 2, 'Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus.', -2, 48, 'Sweden', NULL, NULL, NULL),
(173, 'Barranco Minas', '2023-06-09', 9, 'sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh.', -29, 18, 'Spain', NULL, NULL, NULL),
(174, 'Volgograd', '2024-10-01', 3, 'turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus.', -4, 1, 'Pakistan', NULL, NULL, NULL),
(175, 'Builth Wells', '2022-03-15', 19, 'imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed,', -6, 24, 'Italy', NULL, NULL, NULL),
(176, 'Jiutepec', '2024-08-22', 14, 'est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim.', -25, 36, 'United States', NULL, NULL, NULL),
(177, 'Jeongeup', '2025-04-05', 5, 'amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus', -27, 16, 'Vietnam', NULL, NULL, NULL),
(178, 'Kano', '2024-08-16', 18, 'ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi', -28, 18, 'Singapore', NULL, NULL, NULL),
(179, 'Liaoning', '2024-10-07', 6, 'ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper', -27, 47, 'Ukraine', NULL, NULL, NULL),
(180, 'Alta', '2022-02-22', 3, 'lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit', -14, 38, 'Canada', NULL, NULL, NULL),
(181, 'Novgorod', '2026-01-03', 5, 'suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non', -29, 15, 'Mexico', NULL, NULL, NULL),
(182, 'Rangiora', '2024-08-24', 17, 'sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum', -5, 16, 'France', NULL, NULL, NULL);
INSERT INTO visite (id, ville, datecreation, note, avis, tempmin, tempmax, pays, image_name, image_size, updated_at) VALUES
(183, 'Taguig', '2025-11-19', 17, 'metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,', -6, 23, 'Philippines', NULL, NULL, NULL),
(184, 'Opole', '2023-01-08', 8, 'non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id', -13, 34, 'France', NULL, NULL, NULL),
(185, 'Itanagar', '2023-11-08', 11, 'et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec,', -4, 20, 'United States', NULL, NULL, NULL),
(186, 'Oslo', '2026-01-30', 8, 'nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec', -11, 26, 'Spain', NULL, NULL, NULL),
(187, 'Ararat', '2020-05-08', 3, 'Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis', -14, 44, 'Peru', NULL, NULL, NULL),
(188, 'Kaluga', '2025-07-19', 18, 'faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor,', -3, 10, 'France', NULL, NULL, NULL),
(189, 'Mohmand Agency', '2020-12-25', 11, 'scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique', -7, 35, 'Russian Federation', NULL, NULL, NULL),
(190, 'Neerheylissem', '2020-11-21', 6, 'enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo,', -15, 13, 'South Korea', NULL, NULL, NULL),
(191, 'Campina Grande', '2025-11-28', 8, 'velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris', -9, 22, 'Spain', NULL, NULL, NULL),
(192, 'San José de Alajuela', '2020-08-02', 10, 'Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo', -17, 45, 'Indonesia', NULL, NULL, NULL),
(193, 'Clarksville', '2026-07-04', 12, 'eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula.', -28, 39, 'Costa Rica', NULL, NULL, NULL),
(194, 'Market Drayton', '2026-08-15', 2, 'Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in', -30, 29, 'China', NULL, NULL, NULL),
(195, 'Linz', '2021-10-18', 7, 'sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie', -22, 17, 'Ukraine', NULL, NULL, NULL),
(196, 'Hofors', '2022-06-28', 4, 'ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non', -19, 18, 'United States', NULL, NULL, NULL),
(197, 'Bischofshofen', '2020-08-24', 11, 'blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus', -12, 11, 'Canada', NULL, NULL, NULL),
(198, 'Manaure', '2025-07-24', 11, 'convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero', -23, 45, 'Germany', NULL, NULL, NULL),
(199, 'Gwangju', '2020-01-07', 14, 'et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu.', -16, 29, 'Italy', NULL, NULL, NULL),
(200, 'Heilongjiang', '2020-03-01', 19, 'nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero', -26, 40, 'Colombia', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table visite_environnement
--

DROP TABLE IF EXISTS visite_environnement;
CREATE TABLE visite_environnement (
  visite_id int NOT NULL,
  environnement_id int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table visite_environnement
--

INSERT INTO visite_environnement (visite_id, environnement_id) VALUES
(8, 1),
(8, 4),
(8, 7),
(13, 3),
(13, 4),
(13, 8),
(13, 9),
(61, 4),
(142, 1),
(142, 3),
(142, 4),
(142, 5),
(161, 4),
(161, 5),
(161, 7),
(167, 3),
(167, 5),
(167, 6),
(167, 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table doctrine_migration_versions
--
ALTER TABLE doctrine_migration_versions
  ADD PRIMARY KEY (version);

--
-- Index pour la table environnement
--
ALTER TABLE environnement
  ADD PRIMARY KEY (id);

--
-- Index pour la table messenger_messages
--
ALTER TABLE messenger_messages
  ADD PRIMARY KEY (id),
  ADD KEY IDX_75EA56E0FB7336F0E3BD61CE16BA31DBBF396750 (queue_name,available_at,delivered_at,id);

--
-- Index pour la table visite
--
ALTER TABLE visite
  ADD PRIMARY KEY (id);

--
-- Index pour la table visite_environnement
--
ALTER TABLE visite_environnement
  ADD PRIMARY KEY (visite_id,environnement_id),
  ADD KEY IDX_6690F746C1C5DC59 (visite_id),
  ADD KEY IDX_6690F746BAFB82A1 (environnement_id);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table environnement
--
ALTER TABLE environnement
  MODIFY id int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table messenger_messages
--
ALTER TABLE messenger_messages
  MODIFY id bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table visite
--
ALTER TABLE visite
  MODIFY id int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
