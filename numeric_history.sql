-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 oct. 2021 à 11:54
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `numeric_history`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `petit_apercu` text DEFAULT NULL,
  `historique` longtext DEFAULT NULL,
  `nom_image` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`id`, `nom`, `petit_apercu`, `historique`, `nom_image`) VALUES
(1, 'Al-Khwârizmî', 'Muhammad Mûsâ al-Khwârizmî était membre de la maison de la sagesse de Bagdad. De grands savants y œuvraient à traduire les ouvrages des civilisations antiques, afin que l’empire abbasside ait les moyens d’accomplir son essor. ', 'Muhammad Mûsâ al-Khwârizmî était membre de la maison de la sagesse de Bagdad. De grands savants y œuvraient à traduire les ouvrages des civilisations antiques, afin que l’empire abbasside ait les moyens d’accomplir son essor. Parmi les nombreux ouvrages savants qu’il avait réalisé, un allait le rendre célèbre : une synthèse sur les calculs complexes incluant des inconnues, des variables… Ce livre a introduit en occident le système de numérotation décimale  – celui dont l’alphabet va de 0 à 9 – et toutes les règles élémentaires de calcul qui s’y rapportent : ce qu’on appelle aujourd’hui l’algèbre. Son nom est d’ailleurs à l’origine du terme « algorithme ».\r\nSa renommée lui a valu de son vivant d’être convoqué par le calife Al’Mamun. Ce dernier voulait entendre de lui une prédiction sur le temps qui lui restait à vivre. Le savant, fier de cette confiance, prit un ton grave en fermant les yeux et improvisa une réponse : « Je vois, ô Calife, un très long règne. Déjà vingt années passées, encore cinquante à venir. »\r\nLe Calife Al’Mamun fut ravi. Mais dix jours plus tard, il mourut. Al-Khwârizmî fut ainsi reconnu comme le père des mathématiques, jamais comme prophète.\r\n\r\n', 'toff/Al-Khwârizmî.jfif'),
(2, 'Euclide', 'Euclide est l’auteur du premier véritable livre de mathématiques de l’histoire', 'grand mathématicien de l’Antiquité grecque dont la vie nous est très peu connue, Euclide est l’auteur du premier véritable livre de mathématiques de l’histoire, Les éléments. Il y décrit l’un des plus vieux algorithmes encore utilisés aujourd’hui : l’algorithme d’Euclide. Celui-ci est désormais enseigné au collège, et est utilisé pour l’étude des nombres entiers, l’arithmétique.', 'toff/euclide.jpg'),
(3, 'George Boole', 'George Boole, qui a inventé l’algèbre binaire', 'L’Angleterre du 19e siècle, et surtout les universités victoriennes ont fourni un certain nombre de mathématiciens précurseurs qui ont préparé le monde numérique d’aujourd’hui.\r\nParmi eux, George Boole, qui a inventé l’algèbre binaire en tentant de rattacher le raisonnement logique aux mathématiques, et non plus à la philosophie. Il voulait ainsi traduire des concepts en formules, leur appliquer certaines lois et ensuite retraduire le résultat en termes logiques. Ainsi, son algèbre n’accepte que deux valeurs numériques : 0 et 1. 1 désigne une proposition vraie, et 0 une proposition fausse. Cette algèbre repose sur trois lois : ET, OU, NON.\r\nCes travaux furent d’une grande importance théorique au 19e siècle. Ils furent aussi d’une grande importance pratique un siècle plus tard avec le développement de l’informatique. Dans de nombreux langages de programmation, le terme booléen désigne un type de données ne pouvant prendre que deux valeurs. Et chaque micro-ordinateur fonctionne aujourd’hui à l’aide d’éléments électroniques réalisant les fonctions ET, OU ou NON, mais aussi NOR ou NAND\r\n', 'toff/George-Boole.jpg'),
(4, 'Joseph-Marie Jacquard', 'Grâce à son savoir en mécanique et à son éducation dans le milieu des canuts tisseurs de soie, il conçoit en 1801 un nouveau type de métier à tisser qui porte depuis son nom : le métier Jacquard.', 'Inventeur français né à Lyon sous l’Ancien Régime pendant le règne de Louis XV, Joseph-Marie Jacquard est fils d’un maître-fabricant en soie. Grâce à son savoir en mécanique et à son éducation dans le milieu des canuts tisseurs de soie, il conçoit en 1801 un nouveau type de métier à tisser qui porte depuis son nom : le métier Jacquard.\r\nCette invention permet d’assister les ouvriers pour tisser des motifs compliqués sur le tissu, à l’aide d’un système complexe d’aiguilles, de crochets guidés par des cartes perforées à l’avance. Comme le motif obtenu dépend de la carte perforée utilisée, on peut en quelque sorte « programmer » un même métier Jacquard de différentes manières et obtenir à chaque fois des dessins différents sur le tissu. Ainsi cette machine est une des toutes premières capables de « lire » une suite d’instructions écrites dans un « langage machine » et de l’exécuter. Tout comme nos ordinateurs modernes, même si eux peuvent également modifier les données qu’ils ont en mémoire et appliquer d’autres types d’instructions permettant des utilisations plus variées.\r\n\r\n\r\n', 'toff/JosephMarieJacquard.jpg'),
(5, 'Ada Lovelace', 'De son nom complet Augusta Ada King, comtesse de Lovelace, née Ada Byron le 10 décembre 1815 à Londres et morte le 27 novembre 1852 à Marylebone dans la même ville, est une pionnière de la science informatique.', 'Ada Lovelace, de son nom complet Augusta Ada King, comtesse de Lovelace, née Ada Byron le 10 décembre 1815 à Londres et morte le 27 novembre 1852 à Marylebone dans la même ville, est une pionnière de la science informatique.\r\nElle est principalement connue pour avoir réalisé le premier véritable programme informatique, lors de son travail sur un ancêtre de l\'ordinateur : la machine analytique de Charles Babbage. Dans ses notes, on trouve en effet le premier programme publiéWoolley 1, destiné à être exécuté par une machine, ce qui fait considérer Ada Lovelace comme « le premier programmeur du monde1 ». Elle a également entrevu et décrit certaines possibilités offertes par les calculateurs universels, allant bien au-delà du calcul numérique et de ce qu\'imaginaient Babbage et ses contemporainsWoolley 2,Swade 1.\r\nElle est assez connue dans les pays anglo-saxons et en Allemagne, notamment dans les milieux féministes ; elle est moins connue en France, mais de nombreux développeurs connaissent le langage Ada, nommé en son honneur.\r\n\r\n', 'toff/Ada_lovelace.jpg'),
(6, 'John Von Neumann', 'John Von Neumann a fait partie des savants qui ont participé au développement de la bombe atomique et de la bombe à hydrogène. C’est d’ailleurs l’exposition aux fortes radiations lors de ses nombreux tests qui a raccourci sa vie.', '(1903 - 1957)\r\nJohn Von Neumann\r\nD’origine hongroise, ce génie précoce est l’un des nombreux savants d’Europe centrale à avoir émigré aux Etats Unis pendant l’occupation nazie. Il s’est intéressé à de nombreuses disciplines, mais en informatique, on a donné son nom à l’organisation de base des ordinateurs. Cette organisation distingue quatre composantes : une unité arithmétique et logique qui effectue les opérations de base, une unité de contrôle chargée du séquencement des opérations, la mémoire qui contient les données et le programme qui commande au traitement de ces données, et enfin les dispositifs d’entrées et sorties qui permettent à l’ordinateur de communiquer avec le monde extérieur. La paternité de ses travaux est cependant contestée.\r\nCe n’est pas le seul à avoir travaillé sur la machine informatique. On le considère aujourd’hui comme l’un des pères de l’ordinateur, avec Turing et bien d’autres…\r\n   	\r\n\r\n', 'toff/neumann.jpg'),
(7, 'Hedy Lamarr', 'Elle a marqué l\'histoire scientifique des télécommunications en inventant en collaboration avec le compositeur George Antheil, pianiste et inventeur comme elle, un moyen de coder des transmissions (étalement de spectre par saut de fréquence).', 'Hedy Lamarr, née Hedwig Eva Maria Kiesler le 9 novembre 1914 à Vienne (Autriche-Hongrie) et morte le 19 janvier 2000 à Casselberry (Floride, États-Unis), est une actrice, productrice de cinéma et inventrice autrichienne naturalisée américaine, désignée en son temps comme la « plus belle femme du monde ».\r\nAu cours de sa carrière cinématographique, elle a joué sous la direction des plus grands réalisateurs de l\'époque : King Vidor, Jack Conway, Victor Fleming, Jacques Tourneur, Marc Allégret, Cecil B. DeMille ou Clarence Brown.\r\nOutre sa carrière au cinéma, elle a marqué l\'histoire scientifique des télécommunications en inventant en collaboration avec le compositeur George Antheil, pianiste et inventeur comme elle, un moyen de coder des transmissions (étalement de spectre par saut de fréquence). Il s\'agit d\'un principe de transmission toujours utilisé pour le positionnement par satellites (GPS, etc.), les liaisons chiffrées militaires ou dans certaines techniques Wi-Fi.\r\n\r\n', 'toff/Hedy_Lamarr.jpg'),
(8, 'Alan Mathison Turing', 'Pour résoudre le problème fondamental de la décidabilité en arithmétiques, il présente en 1936 une expérience de pensée que l\'on nommera ensuite machine de Turing et des concepts de programme et de programmation, qui prendront tout leur sens avec la diffusion des ordinateurs, dans la seconde moitié du xxe siècle. ', 'Alan Mathison Turing, né le 23 juin 1912 à Londres et mort le 7 juin 1954 à Wilmslow, est un mathématicien et cryptologue britannique, auteur de travaux qui fondent scientifiquement l\'informatique.\r\nPour résoudre le problème fondamental de la décidabilité en arithmétiques, il présente en 1936 une expérience de pensée que l\'on nommera ensuite machine de Turing et des concepts de programme et de programmation, qui prendront tout leur sens avec la diffusion des ordinateurs, dans la seconde moitié du xxe siècle. Son modèle a contribué à établir la thèse de Church, qui définit le concept mathématique intuitif de fonction calculable.\r\nDurant la Seconde Guerre mondiale, il joue un rôle majeur dans la cryptanalyse de la machine Enigma utilisée par les armées allemandes : l\'invention de machines usant de procédés électroniques , les bombes1, fera passer le décryptage à plusieurs milliers de messages par jour. Ce travail secret ne sera connu du public que dans les années 1970. Après la guerre, il travaille sur un des tout premiers ordinateurs, puis contribue au débat sur la possibilité de l\'intelligence artificielle, en proposant le test de Turing. Vers la fin de sa vie, il s\'intéresse à des modèles de morphogenèse du vivant conduisant aux « structures de Turing ».\r\nPoursuivi en justice en 1952 pour homosexualité, il choisit, pour éviter la prison, la castration chimique par prise d\'œstrogènes. Il est retrouvé mort par empoisonnement au cyanure le 8 juin 1954 dans la chambre de sa maison à Wilmslow. La reine Élisabeth II le reconnaît comme héros de guerre et le gracie à titre posthume en 2013.\r\n\r\n', 'toff/alan_turing.jpeg'),
(9, 'Martin cooper', 'Il est considéré comme l\'inventeur du premier combiné téléphonique portable et la première personne à avoir effectué un appel téléphonique sur un téléphone cellulaire portatif.\r\n', 'Martin Cooper, né le 26 décembre 1928 à Chicago, est considéré comme l\'inventeur du premier combiné téléphonique portable et la première personne à avoir effectué un appel téléphonique sur un téléphone cellulaire portatif.\r\nMartin Cooper a grandi à Chicago. En 1950, il obtient son diplôme en génie électrique à l\'Institut de technologie de l\'Illinois, puis en 1957, sa maîtrise du même institut. En 2004, un doctorat honorifique lui est décerné.\r\nAprès quatre ans dans l\'US Navy où il sert sur des destroyers et des sous-marins, il travaille pendant un an dans une entreprise de télécommunications. Embauché par Motorola en 1954, il travaille sur le développement de produits portables, dont les premières radios portables de poche pour le département de la police de Chicago en 1967. Il dirige ensuite la recherche cellulaire chez Motorola.\r\nLe 3 avril 1973, alors directeur général de la division communication de Motorola, il se trouve à quelques pas de l\'hôtel Hilton Midtown (en) de Manhattan, à New York. Il tient dans la main un objet prototype volumineux comme une brique, lourd comme un ordinateur portable de l\'époque (1,5 kg)[réf. nécessaire] et muni d’une antenne longue de 10 cm. Avec ce terminal, qu’il a conçu de toutes pièces avec le soutien d’une équipe de sept personnes, il effectue le premier appel téléphonique en extérieur sans être dans une voiture. Il choisit comme destinataire Joel Engel, son rival et néanmoins confrère chez Bell Labs, chargé de la recherche et du développement de l’opérateur AT&T à l’époque1. L’expérience est un succès. L’idée du téléphone portable devient une réalité.\r\nIl s\'est inspiré du capitaine Kirk parlant dans son communicateur (série télévisée Star Trek)2.\r\nSon nom est porté sur le brevet américain 3.906.1663 \"radiotéléphonie\" déposé le 17 octobre 1973.\r\nDepuis 1992, il est le PDG et fondateur de ArrayComm, une société développant, à San José en Californie, une technologie radio qui exploite le spectre hertzien.\r\nEn 2003, Cooper a reçu le Wharton Infosys Business Transformation Award pour ses innovations technologiques dans le domaine de la communication, et en 2009 le prix Prince des Asturies.\r\n\r\n', 'toff/Martin_cooper.jpeg'),
(10, 'Blaise Pascal', 'À 19 ans2,3, il invente la première machine à calculer4,5 et après trois ans de développement et une cinquantaine de prototypes', 'Blaise Pascal, né le 19 juin 1623 à Clermont (aujourd\'hui Clermont-Ferrand) en Auvergne et mort le 19 août 1662 à Paris, est un mathématicien, physicien, inventeur, philosophe, moraliste et théologien français1.\r\nEnfant précoce, il est éduqué par son père. Les premiers travaux de Pascal concernent les sciences naturelles et appliquées. Il contribue de manière importante à l’étude des fluides et clarifie les concepts de pression et de vide en étendant le travail de Torricelli. Il est l\'auteur de textes importants sur la méthode scientifique.\r\nÀ 19 ans2,3, il invente la première machine à calculer4,5 et après trois ans de développement et une cinquantaine de prototypes, il la présente à ses contemporains en la dédiant au chancelier Séguier6. Dénommée machine d’arithmétique, puis roue pascaline et enfin pascaline, il en construit une vingtaine d\'exemplaires dans la décennie suivante7.\r\nMathématicien de premier ordre, il crée deux nouveaux champs de recherche majeurs :\r\ntout d’abord, il publie un traité de géométrie projective à seize ans ;\r\nensuite il développe en 1654 une méthode de résolution du « problème des partis » qui, donnant naissance au cours du xviiie siècle au calcul des probabilités, influencera fortement les théories économiques modernes et les sciences sociales.\r\nAprès une expérience mystique qu\'il éprouve en novembre 16548,9, il se consacre à la réflexion philosophique et religieuse, sans toutefois renoncer aux travaux scientifiques. Il écrit pendant cette période Les Provinciales et les Pensées, publiées seulement après sa mort qui survient deux mois après son 39e anniversaire, alors qu’il a été longtemps malade.\r\nLe 8 juillet 2017, dans un entretien10 au quotidien italien La Repubblica, le pape François annonce que Blaise Pascal « mériterait la béatification » et qu\'il envisageait de lancer la procédure officielle.\r\n\r\n', 'toff/blaisepascal.jpg'),
(11, 'Larry Page et Sergey Brin', 'Les co-fondateurs de google', 'Google est incontestablement le roi d’Internet. Avec 30 000 milliards de documents répertoriés, et plus de 3,3 milliards de requêtes de recherche par jour, le moteur de recherche est devenu, au fil des ans, un outil indispensable des temps modernes. Mais comme pour toute entreprise, et toute invention humaine, il y a bien évidemment des humains derrière cette société multimilliardaire. Moins connus que Bill Gates ou Steve Jobs, les fondateurs de Google sont cependant tout aussi impressionnants ; et voici notamment une biographie de Larry Page, l’un des créateurs de Google.\r\nLawrence Edward « Larry » Page est un entrepreneur américain et informaticien américain qui, avec Sergey Brin, a cofondé Google Inc., le géant des moteurs de recherche. Larry Page est la neuvième personne la plus riche du monde ; on a estimé sa fortune à une valeur nette de 47,6 milliards de dollars en 2018. Il est actuellement PDG de la société Alphabet, la société géante englobant Google, YouTube et d’autres sociétés du même secteur.\r\n\r\n', 'toff/google.jpg'),
(12, 'Raymond Samuel Tomlinson ', 'a mis en œuvre le premier programme de messagerie sur le système ARPANET , précurseur d\'Internet, en 1971 ; [5] [6] [7] [8] C\'était le premier système capable d\'envoyer du courrier entre les utilisateurs sur différents hôtes connectés à ARPANET', 'Raymond Samuel Tomlinson (23 avril 1941 - 5 mars 2016) était un programmeur informatique américain pionnier [1] [2] [3] [4] qui a mis en œuvre le premier programme de messagerie sur le système ARPANET , précurseur d\'Internet, en 1971 ; [5] [6] [7] [8] C\'était le premier système capable d\'envoyer du courrier entre les utilisateurs sur différents hôtes connectés à ARPANET. Auparavant, le courrier ne pouvait être envoyé qu\'à d\'autres personnes qui utilisaient le même ordinateur. Pour y parvenir, il a utilisé le signe @ pour séparer le nom d\'utilisateur du nom de leur machine, un schéma qui a été utilisé dans les adresses e-mail depuis. [9] Le Temple de la renommée de l\'Internetdans son compte rendu de son travail a commenté « Le programme de courrier électronique de Tomlinson a provoqué une révolution complète, en changeant fondamentalement la façon dont les gens communiquent »\r\n', 'toff/Ray_tomlinson.jpg'),
(13, 'Charles Babbage', 'Il fut le premier à énoncer le principe d\'un ordinateur.', 'Charles Babbage, né le 26 décembre 1791 et mort le 18 octobre 1871 à Londres, est un polymathe, mathématicien et inventeur visionnaire britannique du xixe siècle qui fut l\'un des principaux précurseurs de l\'informatique.\r\nIl fut le premier à énoncer le principe d\'un ordinateur. C\'est en 1834, pendant le développement d\'une machine à calculer destinée au calcul et à l\'impression de tables mathématiques (la machine à différences) qu\'il eut l\'idée d\'y incorporer des cartes du métier Jacquard, dont la lecture séquentielle donnerait des instructions et des données à sa machine, et donc imagina l\'ancêtre mécanique des ordinateurs d\'aujourd\'hui. Il n\'acheva jamais sa machine analytique, mais il passa le reste de sa vie à la concevoir dans les moindres détails et à en construire un prototype. Un de ses fils en construisit l\'unité centrale (le moulin) et l\'imprimante en 1888 et fit une démonstration réussie de calcul de table à l\'académie royale d\'astronomie en 19081.\r\nC\'est entre 1847 et 1849 que Charles Babbage entreprit d\'utiliser les avancées technologiques de sa machine analytique pour concevoir les plans d\'une deuxième machine à différences no 2 qui, à spécifications égales, demandait trois fois moins de pièces que la précédente.\r\nEn 1991, à partir de ces plans, on a pu reconstruire une partie de cette machine qui fonctionne parfaitement en utilisant les techniques qui étaient disponibles au xixe siècle ce qui montre qu\'elle aurait pu être construite du vivant de Charles Babbage.\r\n\r\n', 'toff/charle_babbage.jpeg'),
(14, 'Grace Brewster Murray Hop', 'Hopper a été la première à concevoir la théorie des langages de programmation indépendants de la machine', 'Grace Brewster Murray Hopper ( née Murray le 9 décembre 1906 - 1er janvier 1992) était une informaticienne américaine et contre - amiral de la marine des États-Unis . [1] L\'une des premières programmeuses de l\' ordinateur Harvard Mark I , elle était une pionnière de la programmation informatique qui a inventé l\'un des premiers linkers . Hopper a été la première à concevoir la théorie des langages de programmation indépendants de la machine, et le langage de programmation FLOW-MATIC qu\'elle a créé en utilisant cette théorie a ensuite été étendu pour créer COBOL , un premier langage de programmation de haut niveau encore utilisé aujourd\'hui', 'toff/grace-hopper.jpg'),
(15, 'Steven Paul Jobs', 'Jobs est largement reconnu comme un pionnier de la révolution de l\'ordinateur personneldes années 1970 et 1980, avec son premier partenaire commercial et co-fondateur d\'Apple, Steve Wozniak ', 'Steven Paul Jobs ( / dʒ ɒ b z / ; 24 février 1955 - 5 octobre 2011 ) était un magnat des affaires américain , designer industriel , investisseur et propriétaire de médias . Il a été président, chef de la direction (PDG) et co-fondateur d\' Apple Inc. ; le président et actionnaire majoritaire de Pixar ; membre du conseil d\'administration de The Walt Disney Company suite à son acquisition de Pixar ; et le fondateur, président et PDG de NeXT . Jobs est largement reconnu comme un pionnier de la révolution de l\'ordinateur personneldes années 1970 et 1980, avec son premier partenaire commercial et co-fondateur d\'Apple, Steve Wozniak .\r\n', 'toff/steve_jobs.jpg'),
(16, 'Thomas Edison', ' Edison invente cette un télégraphe duplex, qui devient multiplex', 'Thomas Edison naît le 11 février 1847 à Milan aux États-Unis dans une famille modeste de cette ville de l\'Ohio. C\'est un enfant précoce, qui dévore de nombreux livres et possède, dès l\'âge de 10 ans, son petit laboratoire de chimie. Intéressé par le télégraphe et les trains, il débute sa carrière en 1866 en travaillant comme télégraphiste. Edison invente cette même année un télégraphe duplex, qui devient multiplex en 1869 et qu\'il commercialise au début des années 1870 pour gérer les cours de la Bourse. Avec l\'argent récolté, il crée son propre laboratoire de recherche en 1874 et dépose de nombreux brevets. Il invente le phonographe en 1877, qui enregistre et reproduit tous les sons de manière mécanique.', 'toff/thomas_edison.jpg'),
(17, 'Timothy John Berners-Lee', 'Principal inventeur du World Wide Web (WWW) ', 'Timothy John Berners-Lee, né le 8 juin 1955 à Londres, est un informaticien britannique, principal inventeur du World Wide Web (WWW) au tournant des années 1990 lors de ses travaux au CERN. En juillet 2004, il est fait chevalier par la reine Élisabeth II pour ce travail et son nom officiel devient Sir Timothy John Berners-Lee. Depuis 1994, il préside le World Wide Web Consortium (W3C), organisme qu\'il a fondé. Il est lauréat du prix Turing 2016.\r\nTim Berners-Lee est considéré comme l\'inventeur du HTML en 1992. Il fut aidé à ses débuts par l\'ingénieur et informaticien belge Robert Cailliau qui cosigna notamment avec lui, en novembre 1990, un document désormais entré dans l\'Histoire et intitulé « WorldWideWeb : Proposition pour un projet hypertexte».', 'toff/Tim-Berners-Lee-640.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;