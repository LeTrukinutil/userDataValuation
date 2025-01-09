-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 09 jan. 2025 à 22:08
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
-- Base de données : `businesslookup`
--

-- --------------------------------------------------------

--
-- Structure de la table `ape_naf_code`
--

CREATE TABLE `ape_naf_code` (
  `code` char(6) NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ape_naf_code`
--

INSERT INTO `ape_naf_code` (`code`, `label`) VALUES
('0000Z', 'Activité inconnue'),
('0111Z', 'Culture de céréales (à l\'exception du riz), de légumineuses et de graines oléagineuses'),
('0112Z', 'Culture du riz'),
('0113Z', 'Culture de légumes, de melons, de racines et de tubercules'),
('0114Z', 'Culture de la canne à sucre'),
('0115Z', 'Culture du tabac'),
('0116Z', 'Culture de plantes à fibres'),
('0119Z', 'Autres cultures non permanentes'),
('0121Z', 'Culture de la vigne'),
('0122Z', 'Culture de fruits tropicaux et subtropicaux'),
('0123Z', 'Culture d\'agrumes'),
('0124Z', 'Culture de fruits à pépins et à noyau'),
('0125Z', 'Culture d\'autres fruits d\'arbres ou d\'arbustes et de fruits à coque'),
('0126Z', 'Culture de fruits oléagineux'),
('0127Z', 'Culture de plantes à boissons'),
('0128Z', 'Culture de plantes à épices, aromatiques, médicinales et pharmaceutiques'),
('0129Z', 'Autres cultures permanentes'),
('0130Z', 'Reproduction de plantes'),
('0141Z', 'Élevage de vaches laitières'),
('0142Z', 'Élevage d\'autres bovins et de buffles'),
('0143Z', 'Élevage de chevaux et d\'autres équidés'),
('0144Z', 'Élevage de chameaux et d\'autres camélidés'),
('0145Z', 'Élevage d\'ovins et de caprins'),
('0146Z', 'Élevage de porcins'),
('0147Z', 'Élevage de volailles'),
('0149Z', 'Élevage d\'autres animaux'),
('0150Z', 'Culture et élevage associés'),
('0161Z', 'Activités de soutien aux cultures'),
('0162Z', 'Activités de soutien à la production animale'),
('0163Z', 'Traitement primaire des récoltes'),
('0164Z', 'Traitement des semences'),
('0170Z', 'Chasse, piégeage et services annexes'),
('0210Z', 'Sylviculture et autres activités forestières'),
('0220Z', 'Exploitation forestière'),
('0230Z', 'Récolte de produits forestiers non ligneux poussant à l\'état sauvage'),
('0240Z', 'Services de soutien à l\'exploitation forestière'),
('0311Z', 'Pêche en mer'),
('0312Z', 'Pêche en eau douce'),
('0321Z', 'Aquaculture en mer'),
('0322Z', 'Aquaculture en eau douce'),
('0510Z', 'Extraction de houille'),
('0520Z', 'Extraction de lignite'),
('0610Z', 'Extraction de pétrole brut'),
('0620Z', 'Extraction de gaz naturel'),
('0710Z', 'Extraction de minerais de fer'),
('0721Z', 'Extraction de minerais d\'uranium et de thorium'),
('0729Z', 'Extraction d\'autres minerais de métaux non ferreux'),
('0811Z', 'Extraction de pierres ornementales et de construction, de calcaire industriel, de gypse, de craie et d\'ardoise'),
('0812Z', 'Exploitation de gravières et sablières, extraction d\'argiles et de kaolin'),
('0891Z', 'Extraction des minéraux chimiques et d\'engrais minéraux'),
('0892Z', 'Extraction de tourbe'),
('0893Z', 'Production de sel'),
('0899Z', 'Autres activités extractives n.c.a.'),
('0910Z', 'Activités de soutien à l\'extraction d\'hydrocarbures'),
('0990Z', 'Activités de soutien aux autres industries extractives'),
('1011Z', 'Transformation et conservation de la viande de boucherie'),
('1012Z', 'Transformation et conservation de la viande de volaille'),
('1013A', 'Préparation industrielle de produits à base de viande'),
('1013B', 'Charcuterie'),
('1020Z', 'Transformation et conservation de poisson, de crustacés et de mollusques'),
('1031Z', 'Transformation et conservation de pommes de terre'),
('1032Z', 'Préparation de jus de fruits et légumes'),
('1039A', 'Autre transformation et conservation de légumes'),
('1039B', 'Transformation et conservation de fruits'),
('1041A', 'Fabrication d\'huiles et graisses brutes'),
('1041B', 'Fabrication d\'huiles et graisses raffinées'),
('1042Z', 'Fabrication de margarine et graisses comestibles similaires'),
('1051A', 'Fabrication de lait liquide et de produits frais'),
('1051B', 'Fabrication de beurre'),
('1051C', 'Fabrication de fromage'),
('1051D', 'Fabrication d\'autres produits laitiers'),
('1052Z', 'Fabrication de glaces et sorbets'),
('1061A', 'Meunerie'),
('1061B', 'Autres activités du travail des grains'),
('1062Z', 'Fabrication de produits amylacés'),
('1071A', 'Fabrication industrielle de pain et de pâtisserie fraîche'),
('1071B', 'Cuisson de produits de boulangerie'),
('1071C', 'Boulangerie et boulangerie-pâtisserie'),
('1071D', 'Pâtisserie'),
('1072Z', 'Fabrication de biscuits, biscottes et pâtisseries de conservation'),
('1073Z', 'Fabrication de pâtes alimentaires'),
('1081Z', 'Fabrication de sucre'),
('1082Z', 'Fabrication de cacao, chocolat et de produits de confiserie'),
('1083Z', 'Transformation du thé et du café'),
('1084Z', 'Fabrication de condiments et assaisonnements'),
('1085Z', 'Fabrication de plats préparés'),
('1086Z', 'Fabrication d\'aliments homogénéisés et diététiques'),
('1089Z', 'Fabrication d\'autres produits alimentaires n.c.a.'),
('1091Z', 'Fabrication d\'aliments pour animaux de ferme'),
('1092Z', 'Fabrication d\'aliments pour animaux de compagnie'),
('1101Z', 'Production de boissons alcooliques distillées'),
('1102A', 'Fabrication de vins effervescents'),
('1102B', 'Vinification'),
('1103Z', 'Fabrication de cidre et de vins de fruits'),
('1104Z', 'Production d\'autres boissons fermentées non distillées'),
('1105Z', 'Fabrication de bière'),
('1106Z', 'Fabrication de malt'),
('1107A', 'Industrie des eaux de table'),
('1107B', 'Production de boissons rafraîchissantes'),
('1200Z', 'Fabrication de produits à base de tabac'),
('1310Z', 'Préparation de fibres textiles et filature'),
('1320Z', 'Tissage'),
('1330Z', 'Ennoblissement textile'),
('1391Z', 'Fabrication d\'étoffes à mailles'),
('1392Z', 'Fabrication d\'articles textiles, sauf habillement'),
('1393Z', 'Fabrication de tapis et moquettes'),
('1394Z', 'Fabrication de ficelles, cordes et filets'),
('1395Z', 'Fabrication de non-tissés, sauf habillement'),
('1396Z', 'Fabrication d\'autres textiles techniques et industriels'),
('1399Z', 'Fabrication d\'autres textiles n.c.a.'),
('1411Z', 'Fabrication de vêtements en cuir'),
('1412Z', 'Fabrication de vêtements de travail'),
('1413Z', 'Fabrication de vêtements de dessus'),
('1414Z', 'Fabrication de vêtements de dessous'),
('1419Z', 'Fabrication d\'autres vêtements et accessoires'),
('1420Z', 'Fabrication d\'articles en fourrure'),
('1431Z', 'Fabrication d\'articles chaussants à mailles'),
('1439Z', 'Fabrication d\'autres articles à mailles'),
('1511Z', 'Apprêt et tannage des cuirs - préparation et teinture des fourrures'),
('1512Z', 'Fabrication d\'articles de voyage, de maroquinerie et de sellerie'),
('1520Z', 'Fabrication de chaussures'),
('1610A', 'Sciage et rabotage du bois, hors imprégnation'),
('1610B', 'Imprégnation du bois'),
('1621Z', 'Fabrication de placage et de panneaux de bois'),
('1622Z', 'Fabrication de parquets assemblés'),
('1623Z', 'Fabrication de charpentes et d\'autres menuiseries'),
('1624Z', 'Fabrication d\'emballages en bois'),
('1629Z', 'Fabrication d\'objets divers en bois - fabrication d\'objets en liège, vannerie et sparterie'),
('1711Z', 'Fabrication de pâte à papier'),
('1712Z', 'Fabrication de papier et de carton'),
('1721A', 'Fabrication de carton ondulé'),
('1721B', 'Fabrication de cartonnages'),
('1721C', 'Fabrication d\'emballages en papier'),
('1722Z', 'Fabrication d\'articles en papier à usage sanitaire ou domestique'),
('1723Z', 'Fabrication d\'articles de papeterie'),
('1724Z', 'Fabrication de papiers peints'),
('1729Z', 'Fabrication d\'autres articles en papier ou en carton'),
('1811Z', 'Imprimerie de journaux'),
('1812Z', 'Autre imprimerie (labeur)'),
('1813Z', 'Activités de pré-presse'),
('1814Z', 'Reliure et activités connexes'),
('1820Z', 'Reproduction d\'enregistrements'),
('1910Z', 'Cokéfaction'),
('1920Z', 'Raffinage du pétrole'),
('2011Z', 'Fabrication de gaz industriels'),
('2012Z', 'Fabrication de colorants et de pigments'),
('2013A', 'Enrichissement et retraitement de matières nucléaires'),
('2013B', 'Fabrication d\'autres produits chimiques inorganiques de base n.c.a.'),
('2014Z', 'Fabrication d\'autres produits chimiques organiques de base'),
('2015Z', 'Fabrication de produits azotés et d\'engrais'),
('2016Z', 'Fabrication de matières plastiques de base'),
('2017Z', 'Fabrication de caoutchouc synthétique'),
('2020Z', 'Fabrication de pesticides et d\'autres produits agrochimiques'),
('2030Z', 'Fabrication de peintures, vernis, encres et mastics'),
('2041Z', 'Fabrication de savons, détergents et produits d\'entretien'),
('2042Z', 'Fabrication de parfums et de produits pour la toilette'),
('2051Z', 'Fabrication de produits explosifs'),
('2052Z', 'Fabrication de colles'),
('2053Z', 'Fabrication d\'huiles essentielles'),
('2059Z', 'Fabrication d\'autres produits chimiques n.c.a.'),
('2060Z', 'Fabrication de fibres artificielles ou synthétiques'),
('2110Z', 'Fabrication de produits pharmaceutiques de base'),
('2120Z', 'Fabrication de préparations pharmaceutiques'),
('2211Z', 'Fabrication et rechapage de pneumatiques'),
('2219Z', 'Fabrication d\'autres articles en caoutchouc'),
('2221Z', 'Fabrication de plaques, feuilles, tubes et profilés en matières plastiques'),
('2222Z', 'Fabrication d\'emballages en matières plastiques'),
('2223Z', 'Fabrication d\'éléments en matières plastiques pour la construction'),
('2229A', 'Fabrication de pièces techniques à base de matières plastiques'),
('2229B', 'Fabrication de produits de consommation courante en matières plastiques'),
('2311Z', 'Fabrication de verre plat'),
('2312Z', 'Façonnage et transformation du verre plat'),
('2313Z', 'Fabrication de verre creux'),
('2314Z', 'Fabrication de fibres de verre'),
('2319Z', 'Fabrication et façonnage d\'autres articles en verre, y compris verre technique'),
('2320Z', 'Fabrication de produits réfractaires'),
('2331Z', 'Fabrication de carreaux en céramique'),
('2332Z', 'Fabrication de briques, tuiles et produits de construction, en terre cuite'),
('2341Z', 'Fabrication d\'articles céramiques à usage domestique ou ornemental'),
('2342Z', 'Fabrication d\'appareils sanitaires en céramique'),
('2343Z', 'Fabrication d\'isolateurs et pièces isolantes en céramique'),
('2344Z', 'Fabrication d\'autres produits céramiques à usage technique'),
('2349Z', 'Fabrication d\'autres produits céramiques'),
('2351Z', 'Fabrication de ciment'),
('2352Z', 'Fabrication de chaux et plâtre'),
('2361Z', 'Fabrication d\'éléments en béton pour la construction'),
('2362Z', 'Fabrication d\'éléments en plâtre pour la construction'),
('2363Z', 'Fabrication de béton prêt à l\'emploi'),
('2364Z', 'Fabrication de mortiers et bétons secs'),
('2365Z', 'Fabrication d\'ouvrages en fibre-ciment'),
('2369Z', 'Fabrication d\'autres ouvrages en béton, en ciment ou en plâtre'),
('2370Z', 'Taille, façonnage et finissage de pierres'),
('2391Z', 'Fabrication de produits abrasifs'),
('2399Z', 'Fabrication d\'autres produits minéraux non métalliques n.c.a.'),
('2410Z', 'Sidérurgie'),
('2420Z', 'Fabrication de tubes, tuyaux, profilés creux et accessoires correspondants en acier'),
('2431Z', 'Étirage à froid de barres'),
('2432Z', 'Laminage à froid de feuillards'),
('2433Z', 'Profilage à froid par formage ou pliage'),
('2434Z', 'Tréfilage à froid'),
('2441Z', 'Production de métaux précieux'),
('2442Z', 'Métallurgie de l\'aluminium'),
('2443Z', 'Métallurgie du plomb, du zinc ou de l\'étain'),
('2444Z', 'Métallurgie du cuivre'),
('2445Z', 'Métallurgie des autres métaux non ferreux'),
('2446Z', 'Élaboration et transformation de matières nucléaires'),
('2451Z', 'Fonderie de fonte'),
('2452Z', 'Fonderie d\'acier'),
('2453Z', 'Fonderie de métaux légers'),
('2454Z', 'Fonderie d\'autres métaux non ferreux'),
('2511Z', 'Fabrication de structures métalliques et de parties de structures'),
('2512Z', 'Fabrication de portes et fenêtres en métal'),
('2521Z', 'Fabrication de radiateurs et de chaudières pour le chauffage central'),
('2529Z', 'Fabrication d\'autres réservoirs, citernes et conteneurs métalliques'),
('2530Z', 'Fabrication de générateurs de vapeur, à l\'exception des chaudières pour le chauffage central'),
('2540Z', 'Fabrication d\'armes et de munitions'),
('2550A', 'Forge, estampage, matriçage - métallurgie des poudres'),
('2550B', 'Découpage, emboutissage'),
('2561Z', 'Traitement et revêtement des métaux'),
('2562A', 'Décolletage'),
('2562B', 'Mécanique industrielle'),
('2571Z', 'Fabrication de coutellerie'),
('2572Z', 'Fabrication de serrures et de ferrures'),
('2573A', 'Fabrication de moules et modèles'),
('2573B', 'Fabrication d\'autres outillages'),
('2591Z', 'Fabrication de fûts et emballages métalliques similaires'),
('2592Z', 'Fabrication d\'emballages métalliques légers'),
('2593Z', 'Fabrication d\'articles en fils métalliques, de chaînes et de ressorts'),
('2594Z', 'Fabrication de vis et de boulons'),
('2599A', 'Fabrication d\'articles métalliques ménagers'),
('2599B', 'Fabrication d\'autres articles métalliques'),
('2611Z', 'Fabrication de composants électroniques'),
('2612Z', 'Fabrication de cartes électroniques assemblées'),
('2620Z', 'Fabrication d\'ordinateurs et d\'équipements périphériques'),
('2630Z', 'Fabrication d\'équipements de communication'),
('2640Z', 'Fabrication de produits électroniques grand public'),
('2651A', 'Fabrication d\'équipements d\'aide à la navigation'),
('2651B', 'Fabrication d\'instrumentation scientifique et technique'),
('2652Z', 'Horlogerie'),
('2660Z', 'Fabrication d\'équipements d\'irradiation médicale, d\'équipements électromédicaux et électrothérapeutiques'),
('2670Z', 'Fabrication de matériels optique et photographique'),
('2680Z', 'Fabrication de supports magnétiques et optiques'),
('2711Z', 'Fabrication de moteurs, génératrices et transformateurs électriques'),
('2712Z', 'Fabrication de matériel de distribution et de commande électrique'),
('2720Z', 'Fabrication de piles et d\'accumulateurs électriques'),
('2731Z', 'Fabrication de câbles de fibres optiques'),
('2732Z', 'Fabrication d\'autres fils et câbles électroniques ou électriques'),
('2733Z', 'Fabrication de matériel d\'installation électrique'),
('2740Z', 'Fabrication d\'appareils d\'éclairage électrique'),
('2751Z', 'Fabrication d\'appareils électroménagers'),
('2752Z', 'Fabrication d\'appareils ménagers non électriques'),
('2790Z', 'Fabrication d\'autres matériels électriques'),
('2811Z', 'Fabrication de moteurs et turbines, à l\'exception des moteurs d\'avions et de véhicules'),
('2812Z', 'Fabrication d\'équipements hydrauliques et pneumatiques'),
('2813Z', 'Fabrication d\'autres pompes et compresseurs'),
('2814Z', 'Fabrication d\'autres articles de robinetterie'),
('2815Z', 'Fabrication d\'engrenages et d\'organes mécaniques de transmission'),
('2821Z', 'Fabrication de fours et brûleurs'),
('2822Z', 'Fabrication de matériel de levage et de manutention'),
('2823Z', 'Fabrication de machines et d\'équipements de bureau (à l\'exception des ordinateurs et équipements périphériques)'),
('2824Z', 'Fabrication d\'outillage portatif à moteur incorporé'),
('2825Z', 'Fabrication d\'équipements aérauliques et frigorifiques industriels'),
('2829A', 'Fabrication d\'équipements d\'emballage, de conditionnement et de pesage'),
('2829B', 'Fabrication d\'autres machines d\'usage général'),
('2830Z', 'Fabrication de machines agricoles et forestières'),
('2841Z', 'Fabrication de machines-outils pour le travail des métaux'),
('2849Z', 'Fabrication d\'autres machines-outils'),
('2891Z', 'Fabrication de machines pour la métallurgie'),
('2892Z', 'Fabrication de machines pour l\'extraction ou la construction'),
('2893Z', 'Fabrication de machines pour l\'industrie agro-alimentaire'),
('2894Z', 'Fabrication de machines pour les industries textiles'),
('2895Z', 'Fabrication de machines pour les industries du papier et du carton'),
('2896Z', 'Fabrication de machines pour le travail du caoutchouc ou des plastiques'),
('2899A', 'Fabrication de machines d\'imprimerie'),
('2899B', 'Fabrication d\'autres machines spécialisées'),
('2910Z', 'Construction de véhicules automobiles'),
('2920Z', 'Fabrication de carrosseries et remorques'),
('2931Z', 'Fabrication d\'équipements électriques et électroniques automobiles'),
('2932Z', 'Fabrication d\'autres équipements automobiles'),
('3011Z', 'Construction de navires et de structures flottantes'),
('3012Z', 'Construction de bateaux de plaisance'),
('3020Z', 'Construction de locomotives et d\'autre matériel ferroviaire roulant'),
('3030Z', 'Construction aéronautique et spatiale'),
('3040Z', 'Construction de véhicules militaires de combat'),
('3091Z', 'Fabrication de motocycles'),
('3092Z', 'Fabrication de bicyclettes et de véhicules pour invalides'),
('3099Z', 'Fabrication d\'autres équipements de transport n.c.a.'),
('3101Z', 'Fabrication de meubles de bureau et de magasin'),
('3102Z', 'Fabrication de meubles de cuisine'),
('3103Z', 'Fabrication de matelas'),
('3109A', 'Fabrication de sièges d\'ameublement d\'intérieur'),
('3109B', 'Fabrication d\'autres meubles et industries connexes de l\'ameublement'),
('3211Z', 'Frappe de monnaie'),
('3212Z', 'Fabrication d\'articles de joaillerie et bijouterie'),
('3213Z', 'Fabrication d\'articles de bijouterie fantaisie et articles similaires'),
('3220Z', 'Fabrication d\'instruments de musique'),
('3230Z', 'Fabrication d\'articles de sport'),
('3240Z', 'Fabrication de jeux et jouets'),
('3250A', 'Fabrication de matériel médico-chirurgical et dentaire'),
('3250B', 'Fabrication de lunettes'),
('3291Z', 'Fabrication d\'articles de brosserie'),
('3299Z', 'Autres activités manufacturières n.c.a.'),
('3311Z', 'Réparation d\'ouvrages en métaux'),
('3312Z', 'Réparation de machines et équipements mécaniques'),
('3313Z', 'Réparation de matériels électroniques et optiques'),
('3314Z', 'Réparation d\'équipements électriques'),
('3315Z', 'Réparation et maintenance navale'),
('3316Z', 'Réparation et maintenance d\'aéronefs et d\'engins spatiaux'),
('3317Z', 'Réparation et maintenance d\'autres équipements de transport'),
('3319Z', 'Réparation d\'autres équipements'),
('3320A', 'Installation de structures métalliques, chaudronnées et de tuyauterie'),
('3320B', 'Installation de machines et équipements mécaniques'),
('3320C', 'Conception d\'ensemble et assemblage sur site industriel d\'équipements de contrôle des processus industriels'),
('3320D', 'Installation d\'équipements électriques, de matériels électroniques et optiques ou d\'autres matériels'),
('3511Z', 'Production d\'électricité'),
('3512Z', 'Transport d\'électricité'),
('3513Z', 'Distribution d\'électricité'),
('3514Z', 'Commerce d\'électricité'),
('3521Z', 'Production de combustibles gazeux'),
('3522Z', 'Distribution de combustibles gazeux par conduites'),
('3523Z', 'Commerce de combustibles gazeux par conduites'),
('3530Z', 'Production et distribution de vapeur et d\'air conditionné'),
('3600Z', 'Captage, traitement et distribution d\'eau'),
('3700Z', 'Collecte et traitement des eaux usées'),
('3811Z', 'Collecte des déchets non dangereux'),
('3812Z', 'Collecte des déchets dangereux'),
('3821Z', 'Traitement et élimination des déchets non dangereux'),
('3822Z', 'Traitement et élimination des déchets dangereux'),
('3831Z', 'Démantèlement d\'épaves'),
('3832Z', 'Récupération de déchets triés'),
('3900Z', 'Dépollution et autres services de gestion des déchets'),
('4110A', 'Promotion immobilière de logements'),
('4110B', 'Promotion immobilière de bureaux'),
('4110C', 'Promotion immobilière d\'autres bâtiments'),
('4110D', 'Supports juridiques de programmes'),
('4120A', 'Construction de maisons individuelles'),
('4120B', 'Construction d\'autres bâtiments'),
('4211Z', 'Construction de routes et autoroutes'),
('4212Z', 'Construction de voies ferrées de surface et souterraines'),
('4213A', 'Construction d\'ouvrages d\'art'),
('4213B', 'Construction et entretien de tunnels'),
('4221Z', 'Construction de réseaux pour fluides'),
('4222Z', 'Construction de réseaux électriques et de télécommunications'),
('4291Z', 'Construction d\'ouvrages maritimes et fluviaux'),
('4299Z', 'Construction d\'autres ouvrages de génie civil n.c.a.'),
('4311Z', 'Travaux de démolition'),
('4312A', 'Travaux de terrassement courants et travaux préparatoires'),
('4312B', 'Travaux de terrassement spécialisés ou de grande masse'),
('4313Z', 'Forages et sondages'),
('4321A', 'Travaux d\'installation électrique dans tous locaux'),
('4321B', 'Travaux d\'installation électrique sur la voie publique'),
('4322A', 'Travaux d\'installation d\'eau et de gaz en tous locaux'),
('4322B', 'Travaux d\'installation d\'équipements thermiques et de climatisation'),
('4329A', 'Travaux d\'isolation'),
('4329B', 'Autres travaux d\'installation n.c.a.'),
('4331Z', 'Travaux de plâtrerie'),
('4332A', 'Travaux de menuiserie bois et PVC'),
('4332B', 'Travaux de menuiserie métallique et serrurerie'),
('4332C', 'Agencement de lieux de vente'),
('4333Z', 'Travaux de revêtement des sols et des murs'),
('4334Z', 'Travaux de peinture et vitrerie'),
('4339Z', 'Autres travaux de finition'),
('4391A', 'Travaux de charpente'),
('4391B', 'Travaux de couverture par éléments'),
('4399A', 'Travaux d\'étanchéification'),
('4399B', 'Travaux de montage de structures métalliques'),
('4399C', 'Travaux de maçonnerie générale et gros œuvre de bâtiment'),
('4399D', 'Autres travaux spécialisés de construction'),
('4399E', 'Location avec opérateur de matériel de construction'),
('4511Z', 'Commerce de voitures et de véhicules automobiles légers'),
('4519Z', 'Commerce d\'autres véhicules automobiles'),
('4520A', 'Entretien et réparation de véhicules automobiles légers'),
('4520B', 'Entretien et réparation d\'autres véhicules automobiles'),
('4531Z', 'Commerce de gros d\'équipements automobiles'),
('4532Z', 'Commerce de détail d\'équipements automobiles'),
('4540Z', 'Commerce et réparation de motocycles'),
('4611Z', 'Intermédiaires du commerce en matières premières agricoles, animaux vivants, matières premières textiles et produits semi-finis'),
('4612A', 'Centrales d\'achat de carburant'),
('4612B', 'Autres intermédiaires du commerce en combustibles, métaux, minéraux et produits chimiques'),
('4613Z', 'Intermédiaires du commerce en bois et matériaux de construction'),
('4614Z', 'Intermédiaires du commerce en machines, équipements industriels, navires et avions'),
('4615Z', 'Intermédiaires du commerce en meubles, articles de ménage et quincaillerie'),
('4616Z', 'Intermédiaires du commerce en textiles, habillement, fourrures, chaussures et articles en cuir'),
('4617A', 'Centrales d\'achat alimentaires'),
('4617B', 'Autres intermédiaires du commerce en denrées, boissons et tabac'),
('4618Z', 'Intermédiaires spécialisés dans le commerce d\'autres produits spécifiques'),
('4619A', 'Centrales d\'achat non alimentaires'),
('4619B', 'Autres intermédiaires du commerce en produits divers'),
('4621Z', 'Commerce de gros (commerce interentreprises) de céréales, de tabac non manufacturé, de semences et d\'aliments pour le bétail'),
('4622Z', 'Commerce de gros (commerce interentreprises) de fleurs et plantes'),
('4623Z', 'Commerce de gros (commerce interentreprises) d\'animaux vivants'),
('4624Z', 'Commerce de gros (commerce interentreprises) de cuirs et peaux'),
('4631Z', 'Commerce de gros (commerce interentreprises) de fruits et légumes'),
('4632A', 'Commerce de gros (commerce interentreprises) de viandes de boucherie'),
('4632B', 'Commerce de gros (commerce interentreprises) de produits à base de viande'),
('4632C', 'Commerce de gros (commerce interentreprises) de volailles et gibier'),
('4633Z', 'Commerce de gros (commerce interentreprises) de produits laitiers, œufs, huiles et matières grasses comestibles'),
('4634Z', 'Commerce de gros (commerce interentreprises) de boissons'),
('4635Z', 'Commerce de gros (commerce interentreprises) de produits à base de tabac'),
('4636Z', 'Commerce de gros (commerce interentreprises) de sucre, chocolat et confiserie'),
('4637Z', 'Commerce de gros (commerce interentreprises) de café, thé, cacao et épices'),
('4638A', 'Commerce de gros (commerce interentreprises) de poissons, crustacés et mollusques'),
('4638B', 'Commerce de gros (commerce interentreprises) alimentaire spécialisé divers'),
('4639A', 'Commerce de gros (commerce interentreprises) de produits surgelés'),
('4639B', 'Commerce de gros (commerce interentreprises) alimentaire non spécialisé'),
('4641Z', 'Commerce de gros (commerce interentreprises) de textiles'),
('4642Z', 'Commerce de gros (commerce interentreprises) d\'habillement et de chaussures'),
('4643Z', 'Commerce de gros (commerce interentreprises) d\'appareils électroménagers'),
('4644Z', 'Commerce de gros (commerce interentreprises) de vaisselle, verrerie et produits d\'entretien'),
('4645Z', 'Commerce de gros (commerce interentreprises) de parfumerie et de produits de beauté'),
('4646Z', 'Commerce de gros (commerce interentreprises) de produits pharmaceutiques'),
('4647Z', 'Commerce de gros (commerce interentreprises) de meubles, de tapis et d\'appareils d\'éclairage'),
('4648Z', 'Commerce de gros (commerce interentreprises) d\'articles d\'horlogerie et de bijouterie'),
('4649Z', 'Commerce de gros (commerce interentreprises) d\'autres biens domestiques'),
('4651Z', 'Commerce de gros (commerce interentreprises) d\'ordinateurs, d\'équipements informatiques périphériques et de logiciels'),
('4652Z', 'Commerce de gros (commerce interentreprises) de composants et d\'équipements électroniques et de télécommunication'),
('4661Z', 'Commerce de gros (commerce interentreprises) de matériel agricole'),
('4662Z', 'Commerce de gros (commerce interentreprises) de machines-outils'),
('4663Z', 'Commerce de gros (commerce interentreprises) de machines pour l\'extraction, la construction et le génie civil'),
('4664Z', 'Commerce de gros (commerce interentreprises) de machines pour l\'industrie textile et l\'habillement'),
('4665Z', 'Commerce de gros (commerce interentreprises) de mobilier de bureau'),
('4666Z', 'Commerce de gros (commerce interentreprises) d\'autres machines et équipements de bureau'),
('4669A', 'Commerce de gros (commerce interentreprises) de matériel électrique'),
('4669B', 'Commerce de gros (commerce interentreprises) de fournitures et équipements industriels divers'),
('4669C', 'Commerce de gros (commerce interentreprises) de fournitures et équipements divers pour le commerce et les services'),
('4671Z', 'Commerce de gros (commerce interentreprises) de combustibles et de produits annexes'),
('4672Z', 'Commerce de gros (commerce interentreprises) de minerais et métaux'),
('4673A', 'Commerce de gros (commerce interentreprises) de bois et de matériaux de construction'),
('4673B', 'Commerce de gros (commerce interentreprises) d\'appareils sanitaires et de produits de décoration'),
('4674A', 'Commerce de gros (commerce interentreprises) de quincaillerie'),
('4674B', 'Commerce de gros (commerce interentreprises) de fournitures pour la plomberie et le chauffage'),
('4675Z', 'Commerce de gros (commerce interentreprises) de produits chimiques'),
('4676Z', 'Commerce de gros (commerce interentreprises) d\'autres produits intermédiaires'),
('4677Z', 'Commerce de gros (commerce interentreprises) de déchets et débris'),
('4690Z', 'Commerce de gros (commerce interentreprises) non spécialisé'),
('4711A', 'Commerce de détail de produits surgelés'),
('4711B', 'Commerce d\'alimentation générale'),
('4711C', 'Supérettes'),
('4711D', 'Supermarchés'),
('4711E', 'Magasins multi-commerces'),
('4711F', 'Hypermarchés'),
('4719A', 'Grands magasins'),
('4719B', 'Autres commerces de détail en magasin non spécialisé'),
('4721Z', 'Commerce de détail de fruits et légumes en magasin spécialisé'),
('4722Z', 'Commerce de détail de viandes et de produits à base de viande en magasin spécialisé'),
('4723Z', 'Commerce de détail de poissons, crustacés et mollusques en magasin spécialisé'),
('4724Z', 'Commerce de détail de pain, pâtisserie et confiserie en magasin spécialisé'),
('4725Z', 'Commerce de détail de boissons en magasin spécialisé'),
('4726Z', 'Commerce de détail de produits à base de tabac en magasin spécialisé'),
('4729Z', 'Autres commerces de détail alimentaires en magasin spécialisé'),
('4730Z', 'Commerce de détail de carburants en magasin spécialisé'),
('4741Z', 'Commerce de détail d\'ordinateurs, d\'unités périphériques et de logiciels en magasin spécialisé'),
('4742Z', 'Commerce de détail de matériels de télécommunication en magasin spécialisé'),
('4743Z', 'Commerce de détail de matériels audio et vidéo en magasin spécialisé'),
('4751Z', 'Commerce de détail de textiles en magasin spécialisé'),
('4752A', 'Commerce de détail de quincaillerie, peintures et verres en petites surfaces (moins de 400 m2)'),
('4752B', 'Commerce de détail de quincaillerie, peintures et verres en grandes surfaces (400 m2 et plus)'),
('4753Z', 'Commerce de détail de tapis, moquettes et revêtements de murs et de sols en magasin spécialisé'),
('4754Z', 'Commerce de détail d\'appareils électroménagers en magasin spécialisé'),
('4759A', 'Commerce de détail de meubles'),
('4759B', 'Commerce de détail d\'autres équipements du foyer'),
('4761Z', 'Commerce de détail de livres en magasin spécialisé'),
('4762Z', 'Commerce de détail de journaux et papeterie en magasin spécialisé'),
('4763Z', 'Commerce de détail d\'enregistrements musicaux et vidéo en magasin spécialisé'),
('4764Z', 'Commerce de détail d\'articles de sport en magasin spécialisé'),
('4765Z', 'Commerce de détail de jeux et jouets en magasin spécialisé'),
('4771Z', 'Commerce de détail d\'habillement en magasin spécialisé'),
('4772A', 'Commerce de détail de la chaussure'),
('4772B', 'Commerce de détail de maroquinerie et d\'articles de voyage'),
('4773Z', 'Commerce de détail de produits pharmaceutiques en magasin spécialisé'),
('4774Z', 'Commerce de détail d\'articles médicaux et orthopédiques en magasin spécialisé'),
('4775Z', 'Commerce de détail de parfumerie et de produits de beauté en magasin spécialisé'),
('4776Z', 'Commerce de détail de fleurs, plantes, graines, engrais, animaux de compagnie et aliments pour ces animaux en magasin spécialisé'),
('4777Z', 'Commerce de détail d\'articles d\'horlogerie et de bijouterie en magasin spécialisé'),
('4778A', 'Commerces de détail d\'optique'),
('4778B', 'Commerces de détail de charbons et combustibles'),
('4778C', 'Autres commerces de détail spécialisés divers'),
('4779Z', 'Commerce de détail de biens d\'occasion en magasin'),
('4781Z', 'Commerce de détail alimentaire sur éventaires et marchés'),
('4782Z', 'Commerce de détail de textiles, d\'habillement et de chaussures sur éventaires et marchés'),
('4789Z', 'Autres commerces de détail sur éventaires et marchés'),
('4791A', 'Vente à distance sur catalogue général'),
('4791B', 'Vente à distance sur catalogue spécialisé'),
('4799A', 'Vente à domicile'),
('4799B', 'Vente par automates et autres commerces de détail hors magasin, éventaires ou marchés n.c.a.'),
('4910Z', 'Transport ferroviaire interurbain de voyageurs'),
('4920Z', 'Transports ferroviaires de fret'),
('4931Z', 'Transports urbains et suburbains de voyageurs'),
('4932Z', 'Transports de voyageurs par taxis'),
('4939A', 'Transports routiers réguliers de voyageurs'),
('4939B', 'Autres transports routiers de voyageurs'),
('4939C', 'Téléphériques et remontées mécaniques'),
('4941A', 'Transports routiers de fret interurbains'),
('4941B', 'Transports routiers de fret de proximité'),
('4941C', 'Location de camions avec chauffeur'),
('4942Z', 'Services de déménagement'),
('4950Z', 'Transports par conduites'),
('5010Z', 'Transports maritimes et côtiers de passagers'),
('5020Z', 'Transports maritimes et côtiers de fret'),
('5030Z', 'Transports fluviaux de passagers'),
('5040Z', 'Transports fluviaux de fret'),
('5110Z', 'Transports aériens de passagers'),
('5121Z', 'Transports aériens de fret'),
('5122Z', 'Transports spatiaux'),
('5210A', 'Entreposage et stockage frigorifique'),
('5210B', 'Entreposage et stockage non frigorifique'),
('5221Z', 'Services auxiliaires des transports terrestres'),
('5222Z', 'Services auxiliaires des transports par eau'),
('5223Z', 'Services auxiliaires des transports aériens'),
('5224A', 'Manutention portuaire'),
('5224B', 'Manutention non portuaire'),
('5229A', 'Messagerie, fret express'),
('5229B', 'Affrètement et organisation des transports'),
('5310Z', 'Activités de poste dans le cadre d\'une obligation de service universel'),
('5320Z', 'Autres activités de poste et de courrier'),
('5510Z', 'Hôtels et hébergement similaire'),
('5520Z', 'Hébergement touristique et autre hébergement de courte durée'),
('5530Z', 'Terrains de camping et parcs pour caravanes ou véhicules de loisirs'),
('5590Z', 'Autres hébergements'),
('5610A', 'Restauration traditionnelle'),
('5610B', 'Cafétérias et autres libres-services'),
('5610C', 'Restauration de type rapide'),
('5621Z', 'Services des traiteurs'),
('5629A', 'Restauration collective sous contrat'),
('5629B', 'Autres services de restauration n.c.a.'),
('5630Z', 'Débits de boissons'),
('5811Z', 'Édition de livres'),
('5812Z', 'Édition de répertoires et de fichiers d\'adresses'),
('5813Z', 'Édition de journaux'),
('5814Z', 'Édition de revues et périodiques'),
('5819Z', 'Autres activités d\'édition'),
('5821Z', 'Édition de jeux électroniques'),
('5829A', 'Édition de logiciels système et de réseau'),
('5829B', 'Edition de logiciels outils de développement et de langages'),
('5829C', 'Edition de logiciels applicatifs'),
('5911A', 'Production de films et de programmes pour la télévision'),
('5911B', 'Production de films institutionnels et publicitaires'),
('5911C', 'Production de films pour le cinéma'),
('5912Z', 'Post-production de films cinématographiques, de vidéo et de programmes de télévision'),
('5913A', 'Distribution de films cinématographiques'),
('5913B', 'Edition et distribution vidéo'),
('5914Z', 'Projection de films cinématographiques'),
('5920Z', 'Enregistrement sonore et édition musicale'),
('6010Z', 'Édition et diffusion de programmes radio'),
('6020A', 'Édition de chaînes généralistes'),
('6020B', 'Édition de chaînes thématiques'),
('6110Z', 'Télécommunications filaires'),
('6120Z', 'Télécommunications sans fil'),
('6130Z', 'Télécommunications par satellite'),
('6190Z', 'Autres activités de télécommunication'),
('6201Z', 'Programmation informatique'),
('6202A', 'Conseil en systèmes et logiciels informatiques'),
('6202B', 'Tierce maintenance de systèmes et d\'applications informatiques'),
('6203Z', 'Gestion d\'installations informatiques'),
('6209Z', 'Autres activités informatiques'),
('6311Z', 'Traitement de données, hébergement et activités connexes'),
('6312Z', 'Portails Internet'),
('6391Z', 'Activités des agences de presse'),
('6399Z', 'Autres services d\'information n.c.a.'),
('6411Z', 'Activités de banque centrale'),
('6419Z', 'Autres intermédiations monétaires'),
('6420Z', 'Activités des sociétés holding'),
('6430Z', 'Fonds de placement et entités financières similaires'),
('6491Z', 'Crédit-bail'),
('6492Z', 'Autre distribution de crédit'),
('6499Z', 'Autres activités des services financiers, hors assurance et caisses de retraite, n.c.a.'),
('6511Z', 'Assurance vie'),
('6512Z', 'Autres assurances'),
('6520Z', 'Réassurance'),
('6530Z', 'Caisses de retraite'),
('6611Z', 'Administration de marchés financiers'),
('6612Z', 'Courtage de valeurs mobilières et de marchandises'),
('6619A', 'Supports juridiques de gestion de patrimoine mobilier'),
('6619B', 'Autres activités auxiliaires de services financiers, hors assurance et caisses de retraite, n.c.a.'),
('6621Z', 'Évaluation des risques et dommages'),
('6622Z', 'Activités des agents et courtiers d\'assurances'),
('6629Z', 'Autres activités auxiliaires d\'assurance et de caisses de retraite'),
('6630Z', 'Gestion de fonds'),
('6810Z', 'Activités des marchands de biens immobiliers'),
('6820A', 'Location de logements'),
('6820B', 'Location de terrains et d\'autres biens immobiliers'),
('6831Z', 'Agences immobilières'),
('6832A', 'Administration d\'immeubles et autres biens immobiliers'),
('6832B', 'Supports juridiques de gestion de patrimoine immobilier'),
('6910Z', 'Activités juridiques'),
('6920Z', 'Activités comptables'),
('7010Z', 'Activités des sièges sociaux'),
('7021Z', 'Conseil en relations publiques et communication'),
('7022Z', 'Conseil pour les affaires et autres conseils de gestion'),
('7111Z', 'Activités d\'architecture'),
('7112A', 'Activité des géomètres'),
('7112B', 'Ingénierie, études techniques'),
('7120A', 'Contrôle technique automobile'),
('7120B', 'Analyses, essais et inspections techniques'),
('7211Z', 'Recherche-développement en biotechnologie'),
('7219Z', 'Recherche-développement en autres sciences physiques et naturelles'),
('7220Z', 'Recherche-développement en sciences humaines et sociales'),
('7311Z', 'Activités des agences de publicité'),
('7312Z', 'Régie publicitaire de médias'),
('7320Z', 'Études de marché et sondages'),
('7410Z', 'Activités spécialisées de design'),
('7420Z', 'Activités photographiques'),
('7430Z', 'Traduction et interprétation'),
('7490A', 'Activité des économistes de la construction'),
('7490B', 'Activités spécialisées, scientifiques et techniques diverses'),
('7500Z', 'Activités vétérinaires'),
('7711A', 'Location de courte durée de voitures et de véhicules automobiles légers'),
('7711B', 'Location de longue durée de voitures et de véhicules automobiles légers'),
('7712Z', 'Location et location-bail de camions'),
('7721Z', 'Location et location-bail d\'articles de loisirs et de sport'),
('7722Z', 'Location de vidéocassettes et disques vidéo'),
('7729Z', 'Location et location-bail d\'autres biens personnels et domestiques'),
('7731Z', 'Location et location-bail de machines et équipements agricoles'),
('7732Z', 'Location et location-bail de machines et équipements pour la construction'),
('7733Z', 'Location et location-bail de machines de bureau et de matériel informatique'),
('7734Z', 'Location et location-bail de matériels de transport par eau'),
('7735Z', 'Location et location-bail de matériels de transport aérien'),
('7739Z', 'Location et location-bail d\'autres machines, équipements et biens matériels n.c.a.'),
('7740Z', 'Location-bail de propriété intellectuelle et de produits similaires, à l\'exception des œuvres soumises à copyright'),
('7810Z', 'Activités des agences de placement de main-d\'œuvre'),
('7820Z', 'Activités des agences de travail temporaire'),
('7830Z', 'Autre mise à disposition de ressources humaines'),
('7911Z', 'Activités des agences de voyage'),
('7912Z', 'Activités des voyagistes'),
('7990Z', 'Autres services de réservation et activités connexes'),
('8010Z', 'Activités de sécurité privée'),
('8020Z', 'Activités liées aux systèmes de sécurité'),
('8030Z', 'Activités d\'enquête'),
('8110Z', 'Activités combinées de soutien lié aux bâtiments'),
('8121Z', 'Nettoyage courant des bâtiments'),
('8122Z', 'Autres activités de nettoyage des bâtiments et nettoyage industriel'),
('8129A', 'Désinfection, désinsectisation, dératisation'),
('8129B', 'Autres activités de nettoyage n.c.a.'),
('8130Z', 'Services d\'aménagement paysager'),
('8211Z', 'Services administratifs combinés de bureau'),
('8219Z', 'Photocopie, préparation de documents et autres activités spécialisées de soutien de bureau'),
('8220Z', 'Activités de centres d\'appels'),
('8230Z', 'Organisation de foires, salons professionnels et congrès'),
('8291Z', 'Activités des agences de recouvrement de factures et des sociétés d\'information financière sur la clientèle'),
('8292Z', 'Activités de conditionnement'),
('8299Z', 'Autres activités de soutien aux entreprises n.c.a.'),
('8411Z', 'Administration publique générale'),
('8412Z', 'Administration publique (tutelle) de la santé, de la formation, de la culture et des services sociaux, autre que sécurité sociale'),
('8413Z', 'Administration publique (tutelle) des activités économiques'),
('8421Z', 'Affaires étrangères'),
('8422Z', 'Défense'),
('8423Z', 'Justice'),
('8424Z', 'Activités d\'ordre public et de sécurité'),
('8425Z', 'Services du feu et de secours'),
('8430A', 'Activités générales de sécurité sociale'),
('8430B', 'Gestion des retraites complémentaires'),
('8430C', 'Distribution sociale de revenus'),
('8510Z', 'Enseignement pré-primaire'),
('8520Z', 'Enseignement primaire'),
('8531Z', 'Enseignement secondaire général'),
('8532Z', 'Enseignement secondaire technique ou professionnel'),
('8541Z', 'Enseignement post-secondaire non supérieur'),
('8542Z', 'Enseignement supérieur'),
('8551Z', 'Enseignement de disciplines sportives et d\'activités de loisirs'),
('8552Z', 'Enseignement culturel'),
('8553Z', 'Enseignement de la conduite'),
('8559A', 'Formation continue d\'adultes'),
('8559B', 'Autres enseignements'),
('8560Z', 'Activités de soutien à l\'enseignement'),
('8610Z', 'Activités hospitalières'),
('8621Z', 'Activité des médecins généralistes'),
('8622A', 'Activités de radiodiagnostic et de radiothérapie'),
('8622B', 'Activités chirurgicales'),
('8622C', 'Autres activités des médecins spécialistes'),
('8623Z', 'Pratique dentaire'),
('8690A', 'Ambulances'),
('8690B', 'Laboratoires d\'analyses médicales'),
('8690C', 'Centres de collecte et banques d\'organes'),
('8690D', 'Activités des infirmiers et des sages-femmes'),
('8690E', 'Activités des professionnels de la rééducation, de l\'appareillage et des pédicures-podologues'),
('8690F', 'Activités de santé humaine non classées ailleurs'),
('8710A', 'Hébergement médicalisé pour personnes âgées'),
('8710B', 'Hébergement médicalisé pour enfants handicapés'),
('8710C', 'Hébergement médicalisé pour adultes handicapés et autre hébergement médicalisé'),
('8720A', 'Hébergement social pour handicapés mentaux et malades mentaux'),
('8720B', 'Hébergement social pour toxicomanes'),
('8730A', 'Hébergement social pour personnes âgées'),
('8730B', 'Hébergement social pour handicapés  physiques'),
('8790A', 'Hébergement social pour enfants en difficultés'),
('8790B', 'Hébergement social pour adultes et familles en difficultés et autre hébergement social'),
('8810A', 'Aide à domicile'),
('8810B', 'Accueil ou accompagnement sans hébergement d\'adultes handicapés ou de personnes âgées'),
('8810C', 'Aide par le travail'),
('8891A', 'Accueil de jeunes enfants'),
('8891B', 'Accueil ou accompagnement sans hébergement d\'enfants handicapés'),
('8899A', 'Autre accueil ou accompagnement sans hébergement d\'enfants et d\'adolescents'),
('8899B', 'Action sociale sans hébergement n.c.a.'),
('9001Z', 'Arts du spectacle vivant'),
('9002Z', 'Activités de soutien au spectacle vivant'),
('9003A', 'Création artistique relevant des arts plastiques'),
('9003B', 'Autre création artistique'),
('9004Z', 'Gestion de salles de spectacles'),
('9101Z', 'Gestion des bibliothèques et des archives'),
('9102Z', 'Gestion des musées'),
('9103Z', 'Gestion des sites et monuments historiques et des attractions touristiques similaires'),
('9104Z', 'Gestion des jardins botaniques et zoologiques et des réserves naturelles'),
('9200Z', 'Organisation de jeux de hasard et d\'argent'),
('9311Z', 'Gestion d\'installations sportives'),
('9312Z', 'Activités de clubs de sports'),
('9313Z', 'Activités des centres de culture physique'),
('9319Z', 'Autres activités liées au sport'),
('9321Z', 'Activités des parcs d\'attractions et parcs à thèmes'),
('9329Z', 'Autres activités récréatives et de loisirs'),
('9411Z', 'Activités des organisations patronales et consulaires'),
('9412Z', 'Activités des organisations professionnelles'),
('9420Z', 'Activités des syndicats de salariés'),
('9491Z', 'Activités des organisations religieuses'),
('9492Z', 'Activités des organisations politiques'),
('9499Z', 'Autres organisations fonctionnant par adhésion volontaire'),
('9511Z', 'Réparation d\'ordinateurs et d\'équipements périphériques'),
('9512Z', 'Réparation d\'équipements de communication'),
('9521Z', 'Réparation de produits électroniques grand public'),
('9522Z', 'Réparation d\'appareils électroménagers et d\'équipements pour la maison et le jardin'),
('9523Z', 'Réparation de chaussures et d\'articles en cuir'),
('9524Z', 'Réparation de meubles et d\'équipements du foyer'),
('9525Z', 'Réparation d\'articles d\'horlogerie et de bijouterie'),
('9529Z', 'Réparation d\'autres biens personnels et domestiques'),
('9601A', 'Blanchisserie-teinturerie de gros'),
('9601B', 'Blanchisserie-teinturerie de détail'),
('9602A', 'Coiffure'),
('9602B', 'Soins de beauté'),
('9603Z', 'Services funéraires'),
('9604Z', 'Entretien corporel'),
('9609Z', 'Autres services personnels n.c.a.'),
('9700Z', 'Activités des ménages en tant qu\'employeurs de personnel domestique'),
('9810Z', 'Activités indifférenciées des ménages en tant que producteurs de biens pour usage propre'),
('9820Z', 'Activités indifférenciées des ménages en tant que producteurs de services pour usage propre'),
('9900Z', 'Activités des organisations et organismes extraterritoriaux');

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` bigint(20) NOT NULL,
  `siren` char(9) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `created_at`, `user_id`, `siren`, `content`) VALUES
(7, '2025-01-09 10:29:41', 1, '884692849', 'qdsdq'),
(8, '2025-01-09 10:46:03', 1, '884692849', '((((goiuyb(btv\'rc\"xeé&zwa²<'),
(9, '2025-01-09 11:01:05', 2, '884692849', 'MEC WTF JURE ???'),
(10, '2025-01-09 11:14:14', 1, '838987451', 'gros fdp'),
(11, '2025-01-09 11:14:45', 2, '838987451', 'toi meme');

-- --------------------------------------------------------

--
-- Structure de la table `company`
--

CREATE TABLE `company` (
  `siren` char(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` tinyint(4) DEFAULT NULL CHECK (`rating` between 0 and 5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `company`
--

INSERT INTO `company` (`siren`, `name`, `rating`) VALUES
('838987451', 'AUTO 49000', NULL),
('884692849', 'MINSK BY CAP SUD', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `company_type`
--

CREATE TABLE `company_type` (
  `code` varchar(3) NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `company_type`
--

INSERT INTO `company_type` (`code`, `label`) VALUES
('ETI', 'Entreprises de Taille Intermédiaire'),
('GE', 'Grandes Entreprises'),
('PME', 'Petites et Moyennes Entreprises');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `legal_category`
--

CREATE TABLE `legal_category` (
  `code` int(11) NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `legal_category`
--

INSERT INTO `legal_category` (`code`, `label`) VALUES
(1000, 'Entrepreneur individuel'),
(1100, 'Artisan-commerçant'),
(1200, 'Commerçant'),
(1300, 'Artisan'),
(1400, 'Officier public ou ministériel'),
(1500, 'Profession libérale'),
(1600, 'Exploitant agricole'),
(1700, 'Agent commercial'),
(1800, 'Associé gérant de Société'),
(1900, '(Autre) Personne physique'),
(2110, 'Indivision entre personnes physiques'),
(2120, 'Indivision avec personne morale'),
(2210, 'Société créée de fait entre personnes physiques'),
(2220, 'Société créée de fait avec personne morale'),
(2310, 'Société en participation entre personnes physiques'),
(2320, 'Société en participation avec personne morale'),
(2385, 'Société en participation de professions libérales'),
(2400, 'Fiducie'),
(2700, 'Paroisse hors zone concordataire'),
(2900, 'Autre groupement de droit privé non doté de la personnalité morale'),
(3110, 'Représentation ou agence commerciale d\'état ou organisme public étranger immatriculé au RCS'),
(3120, 'Société commerciale étrangère immatriculée au RCS'),
(3205, 'Organisation internationale'),
(3210, 'État, collectivité ou établissement public étranger'),
(3220, 'Société étrangère non immatriculée au RCS'),
(3290, 'Autre personne morale de droit étranger'),
(4110, 'Établissement public national à caractère industriel ou commercial doté d\'un comptable public'),
(4120, 'Établissement public national à caractère industriel ou commercial non doté d\'un comptable public'),
(4130, 'Exploitant public'),
(4140, 'Établissement public local à caractère industriel ou commercial'),
(4150, 'Régie d\'une collectivité locale à caractère industriel ou commercial'),
(4160, 'Institution Banque de France'),
(5191, 'Société de caution mutuelle'),
(5192, 'Société coopérative de banque populaire'),
(5193, 'Caisse de crédit maritime mutuel'),
(5194, 'Caisse (fédérale) de crédit mutuel'),
(5195, 'Association coopérative inscrite (droit local Alsace Moselle)'),
(5196, 'Caisse d\'épargne et de prévoyance à forme coopérative'),
(5202, 'Société en nom collectif'),
(5203, 'Société en nom collectif coopérative'),
(5306, 'Société en commandite simple'),
(5307, 'Société en commandite simple coopérative'),
(5308, 'Société en commandite par actions'),
(5309, 'Société en commandite par actions coopérative'),
(5370, 'Société de Participations Financières de Profession Libérale Société en commandite par actions (SPFPL SCA)'),
(5385, 'Société d\'exercice libéral en commandite par actions'),
(5410, 'SARL nationale'),
(5415, 'SARL d\'économie mixte'),
(5422, 'SARL immobilière pour le commerce et l\'industrie (SICOMI)'),
(5426, 'SARL immobilière de gestion'),
(5430, 'SARL d’aménagement foncier et d\'équipement rural (SAFER)'),
(5431, 'SARL mixte d\'intérêt agricole (SMIA)'),
(5432, 'SARL d\'intérêt collectif agricole (SICA)'),
(5442, 'SARL d\'attribution'),
(5443, 'SARL coopérative de construction'),
(5451, 'SARL coopérative de consommation'),
(5453, 'SARL coopérative artisanale'),
(5454, 'SARL coopérative d\'intérêt maritime'),
(5455, 'SARL coopérative de transport'),
(5458, 'SARL coopérative ouvrière de production (SCOP)'),
(5459, 'SARL union de sociétés coopératives'),
(5460, 'Autre SARL coopérative'),
(5470, 'Société de Participations Financières de Profession Libérale Société à responsabilité limitée (SPFPL SARL)'),
(5485, 'Société d\'exercice libéral à responsabilité limitée'),
(5498, 'SARL unipersonnelle'),
(5499, 'Société à responsabilité limitée (sans autre indication)'),
(5505, 'SA à participation ouvrière à conseil d\'administration'),
(5510, 'SA nationale à conseil d\'administration'),
(5515, 'SA d\'économie mixte à conseil d\'administration'),
(5520, 'Fonds à forme sociétale à conseil d\'administration'),
(5522, 'SA immobilière pour le commerce et l’industrie (SICOMI) à conseil d\'administration'),
(5525, 'SA immobilière d’investissement à conseil d\'administration'),
(5530, 'SA d’aménagement foncier et d’équipement rural (SAFER) à conseil d\'administration'),
(5531, 'Société anonyme mixte d\'intérêt agricole (SMIA) à conseil d\'administration'),
(5532, 'SA d’intérêt collectif agricole (SICA) à conseil d\'administration'),
(5542, 'SA d’attribution à conseil d\'administration'),
(5543, 'SA coopérative de construction à conseil d\'administration'),
(5546, 'SA de HLM à conseil d\'administration'),
(5547, 'SA coopérative de production de HLM à conseil d\'administration'),
(5548, 'SA de crédit immobilier à conseil d\'administration'),
(5551, 'SA coopérative de consommation à conseil d\'administration'),
(5552, 'SA coopérative de commerçants-détaillants à conseil d\'administration'),
(5553, 'SA coopérative artisanale à conseil d\'administration'),
(5554, 'SA coopérative (d\'intérêt) maritime à conseil d\'administration'),
(5555, 'SA coopérative de transport à conseil d\'administration'),
(5558, 'SA coopérative ouvrière de production (SCOP) à conseil d\'administration'),
(5559, 'SA union de sociétés coopératives à conseil d\'administration'),
(5560, 'Autre SA coopérative à conseil d\'administration'),
(5570, 'Société de Participations Financières de Profession Libérale Société anonyme à conseil d\'administration (SPFPL SA à conseil d\'administration)'),
(5585, 'Société d\'exercice libéral à forme anonyme à conseil d\'administration'),
(5599, 'SA à conseil d’administration (s.a.i.)'),
(5605, 'SA à participation ouvrière à directoire'),
(5610, 'SA nationale à directoire'),
(5615, 'SA d\'économie mixte à directoire'),
(5620, 'Fonds à forme sociétale à directoire'),
(5622, 'SA immobilière pour le commerce et l\'industrie (SICOMI) à directoire'),
(5625, 'SA immobilière d\'investissement à directoire'),
(5630, 'Safer anonyme à directoire'),
(5631, 'SA mixte d\'intérêt agricole (SMIA)'),
(5632, 'SA d\'intérêt collectif agricole (SICA)'),
(5642, 'SA d\'attribution à directoire'),
(5643, 'SA coopérative de construction à directoire'),
(5646, 'SA de HLM à directoire'),
(5647, 'Société coopérative de production de HLM anonyme à directoire'),
(5648, 'SA de crédit immobilier à directoire'),
(5651, 'SA coopérative de consommation à directoire'),
(5652, 'SA coopérative de commerçants-détaillants à directoire'),
(5653, 'SA coopérative artisanale à directoire'),
(5654, 'SA coopérative d\'intérêt maritime à directoire'),
(5655, 'SA coopérative de transport à directoire'),
(5658, 'SA coopérative ouvrière de production (SCOP) à directoire'),
(5659, 'SA union de sociétés coopératives à directoire'),
(5660, 'Autre SA coopérative à directoire'),
(5670, 'Société de Participations Financières de Profession Libérale Société anonyme à Directoire (SPFPL SA à directoire)'),
(5685, 'Société d\'exercice libéral à forme anonyme à directoire'),
(5699, 'SA à directoire (s.a.i.)'),
(5710, 'SAS, société par actions simplifiée'),
(5720, 'Société par actions simplifiée à associé unique ou société par actions simplifiée unipersonnelle'),
(5770, 'Société de Participations Financières de Profession Libérale Société par actions simplifiée (SPFPL SAS)'),
(5785, 'Société d\'exercice libéral par action simplifiée'),
(5800, 'Société européenne'),
(6100, 'Caisse d’Épargne et de Prévoyance'),
(6210, 'Groupement européen d\'intérêt économique (GEIE)'),
(6220, 'Groupement d\'intérêt économique (GIE)'),
(6316, 'Coopérative d\'utilisation de matériel agricole en commun (CUMA)'),
(6317, 'Société coopérative agricole'),
(6318, 'Union de sociétés coopératives agricoles'),
(6411, 'Société d’assurance à forme mutuelle'),
(6511, 'Sociétés Interprofessionnelles de Soins Ambulatoires'),
(6521, 'Société civile de placement collectif immobilier (SCPI)'),
(6532, 'Société civile d\'intérêt collectif agricole (SICA)'),
(6533, 'Groupement agricole d\'exploitation en commun (GAEC)'),
(6534, 'Groupement foncier agricole'),
(6535, 'Groupement agricole foncier'),
(6536, 'Groupement forestier'),
(6537, 'Groupement pastoral'),
(6538, 'Groupement foncier et rural'),
(6539, 'Société civile foncière'),
(6540, 'Société civile immobilière'),
(6541, 'Société civile immobilière de construction-vente'),
(6542, 'Société civile d\'attribution'),
(6543, 'Société civile coopérative de construction'),
(6544, 'Société civile immobilière d\' accession progressive à la propriété'),
(6551, 'Société civile coopérative de consommation'),
(6554, 'Société civile coopérative d\'intérêt maritime'),
(6558, 'Société civile coopérative entre médecins'),
(6560, 'Autre société civile coopérative'),
(6561, 'SCP d\'avocats'),
(6562, 'SCP d\'avocats aux conseils'),
(6563, 'SCP d\'avoués d\'appel'),
(6564, 'SCP d\'huissiers'),
(6565, 'SCP de notaires'),
(6566, 'SCP de commissaires-priseurs'),
(6567, 'SCP de greffiers de tribunal de commerce'),
(6568, 'SCP de conseils juridiques'),
(6569, 'SCP de commissaires aux comptes'),
(6571, 'SCP de médecins'),
(6572, 'SCP de dentistes'),
(6573, 'SCP d\'infirmiers'),
(6574, 'SCP de masseurs-kinésithérapeutes'),
(6575, 'SCP de directeurs de laboratoire d\'analyse médicale'),
(6576, 'SCP de vétérinaires'),
(6577, 'SCP de géomètres experts'),
(6578, 'SCP d\'architectes'),
(6585, 'Autre société civile professionnelle'),
(6588, 'Société civile laitière'),
(6589, 'Société civile de moyens'),
(6595, 'Caisse locale de crédit mutuel'),
(6596, 'Caisse de crédit agricole mutuel'),
(6597, 'Société civile d\'exploitation agricole'),
(6598, 'Exploitation agricole à responsabilité limitée'),
(6599, 'Autre société civile'),
(6901, 'Autre personne de droit privé inscrite au registre du commerce et des sociétés'),
(7111, 'Autorité constitutionnelle'),
(7112, 'Autorité administrative ou publique indépendante'),
(7113, 'Ministère'),
(7120, 'Service central d\'un ministère'),
(7150, 'Service du ministère de la Défense'),
(7160, 'Service déconcentré à compétence nationale d\'un ministère (hors Défense)'),
(7171, 'Service déconcentré de l\'État à compétence (inter) régionale'),
(7172, 'Service déconcentré de l\'État à compétence (inter) départementale'),
(7179, '(Autre) Service déconcentré de l\'État à compétence territoriale'),
(7190, 'Ecole nationale non dotée de la personnalité morale'),
(7210, 'Commune et commune nouvelle'),
(7220, 'Département'),
(7225, 'Collectivité et territoire d\'Outre Mer'),
(7229, '(Autre) Collectivité territoriale'),
(7230, 'Région'),
(7312, 'Commune associée et commune déléguée'),
(7313, 'Section de commune'),
(7314, 'Ensemble urbain'),
(7321, 'Association syndicale autorisée'),
(7322, 'Association foncière urbaine'),
(7323, 'Association foncière de remembrement'),
(7331, 'Établissement public local d\'enseignement'),
(7340, 'Pôle métropolitain'),
(7341, 'Secteur de commune'),
(7342, 'District urbain'),
(7343, 'Communauté urbaine'),
(7344, 'Métropole'),
(7345, 'Syndicat intercommunal à vocation multiple (SIVOM)'),
(7346, 'Communauté de communes'),
(7347, 'Communauté de villes'),
(7348, 'Communauté d\'agglomération'),
(7349, 'Autre établissement public local de coopération non spécialisé ou entente'),
(7351, 'Institution interdépartementale ou entente'),
(7352, 'Institution interrégionale ou entente'),
(7353, 'Syndicat intercommunal à vocation unique (SIVU)'),
(7354, 'Syndicat mixte fermé'),
(7355, 'Syndicat mixte ouvert'),
(7356, 'Commission syndicale pour la gestion des biens indivis des communes'),
(7357, 'Pôle d\'équilibre territorial et rural (PETR)'),
(7361, 'Centre communal d\'action sociale'),
(7362, 'Caisse des écoles'),
(7363, 'Caisse de crédit municipal'),
(7364, 'Établissement d\'hospitalisation'),
(7365, 'Syndicat inter hospitalier'),
(7366, 'Établissement public local social et médico-social'),
(7367, 'Centre Intercommunal d\'action sociale (CIAS)'),
(7371, 'Office public d\'habitation à loyer modéré (OPHLM)'),
(7372, 'Service départemental d\'incendie et de secours (SDIS)'),
(7373, 'Etablissement public local culturel'),
(7378, 'Régie d\'une collectivité locale à caractère administratif'),
(7379, '(Autre) Établissement public administratif local'),
(7381, 'Organisme consulaire'),
(7382, 'Établissement public national ayant fonction d\'administration centrale'),
(7383, 'Établissement public national à caractère scientifique culturel et professionnel'),
(7384, 'Autre établissement public national d\'enseignement'),
(7385, 'Autre établissement public national administratif à compétence territoriale limitée'),
(7389, 'Établissement public national à caractère administratif'),
(7410, 'Groupement d\'intérêt public (GIP)'),
(7430, 'Établissement public des cultes d\'Alsace-Lorraine'),
(7450, 'Etablissement public administratif, cercle et foyer dans les armées'),
(7470, 'Groupement de coopération sanitaire à gestion publique'),
(7490, 'Autre personne morale de droit administratif'),
(8110, 'Régime général de la Sécurité Sociale'),
(8120, 'Régime spécial de Sécurité Sociale'),
(8130, 'Institution de retraite complémentaire'),
(8140, 'Mutualité sociale agricole'),
(8150, 'Régime maladie des non-salariés non agricoles'),
(8160, 'Régime vieillesse ne dépendant pas du régime général de la Sécurité Sociale'),
(8170, 'Régime d\'assurance chômage'),
(8190, 'Autre régime de prévoyance sociale'),
(8210, 'Mutuelle'),
(8250, 'Assurance mutuelle agricole'),
(8290, 'Autre organisme mutualiste'),
(8310, 'Comité central d\'entreprise'),
(8311, 'Comité d\'établissement'),
(8410, 'Syndicat de salariés'),
(8420, 'Syndicat patronal'),
(8450, 'Ordre professionnel ou assimilé'),
(8470, 'Centre technique industriel ou comité professionnel du développement économique'),
(8490, 'Autre organisme professionnel'),
(8510, 'Institution de prévoyance'),
(8520, 'Institution de retraite supplémentaire'),
(9110, 'Syndicat de copropriété'),
(9150, 'Association syndicale libre'),
(9210, 'Association non déclarée'),
(9220, 'Association déclarée'),
(9221, 'Association déclarée d’insertion par l’économique'),
(9222, 'Association intermédiaire'),
(9223, 'Groupement d\'employeurs'),
(9224, 'Association d’avocats à responsabilité professionnelle individuelle'),
(9230, 'Association déclarée, reconnue d’utilité publique'),
(9240, 'Congrégation'),
(9260, 'Association de droit local (Bas-Rhin, Haut-Rhin et Moselle)'),
(9300, 'Fondation'),
(9900, 'Autre personne morale de droit privé'),
(9970, 'Groupement de coopération sanitaire à gestion privée');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('SpFOVvGDVxWCSm7jF8VkpTKW8SeKQDnW5zLKsUDV', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVDVuV21lRkxnQWNkU0N0bmczTko2Y2E1ZGNEZW1SWklGa3U4VW9nciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jc3YtdXBsb2FkIjt9czoxNDoic2VhcmNoX3Jlc3VsdHMiO2E6Njp7aTowO2E6MjY6e3M6NToic2lyZW4iO3M6OToiNTMxNzU3MDI5IjtzOjExOiJub21fY29tcGxldCI7czoxNDoiQ0FQIFNVRCBGUkFOQ0UiO3M6MTg6Im5vbV9yYWlzb25fc29jaWFsZSI7czoxNDoiQ0FQIFNVRCBGUkFOQ0UiO3M6NToic2lnbGUiO047czoyMToibm9tYnJlX2V0YWJsaXNzZW1lbnRzIjtpOjYyNjtzOjI5OiJub21icmVfZXRhYmxpc3NlbWVudHNfb3V2ZXJ0cyI7aTo1MTU7czo1OiJzaWVnZSI7YTo0NTp7czoxOToiYWN0aXZpdGVfcHJpbmNpcGFsZSI7czo2OiI0My4yMkIiO3M6MzU6ImFjdGl2aXRlX3ByaW5jaXBhbGVfcmVnaXN0cmVfbWV0aWVyIjtOO3M6MzA6ImFubmVlX3RyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7czo0OiIyMDIyIjtzOjc6ImFkcmVzc2UiO3M6MzU6Ijg1IFJVRSBDT05ET1JDRVQgMzgwOTAgVkFVTFgtTUlMSUVVIjtzOjE5OiJjYXJhY3RlcmVfZW1wbG95ZXVyIjtzOjE6Ik4iO3M6NToiY2VkZXgiO047czoxODoiY29kZV9wYXlzX2V0cmFuZ2VyIjtOO3M6MTE6ImNvZGVfcG9zdGFsIjtzOjU6IjM4MDkwIjtzOjc6ImNvbW11bmUiO3M6NToiMzg1MzAiO3M6MTg6ImNvbXBsZW1lbnRfYWRyZXNzZSI7TjtzOjExOiJjb29yZG9ubmVlcyI7czoxODoiNDUuNjI0Mzc4LDUuMTc0NTI2IjtzOjEzOiJkYXRlX2NyZWF0aW9uIjtzOjEwOiIyMDE1LTA4LTA2IjtzOjE5OiJkYXRlX2RlYnV0X2FjdGl2aXRlIjtzOjEwOiIyMDIyLTAzLTMxIjtzOjE0OiJkYXRlX2Zlcm1ldHVyZSI7TjtzOjE2OiJkYXRlX21pc2VfYV9qb3VyIjtOO3M6MjI6ImRhdGVfbWlzZV9hX2pvdXJfaW5zZWUiO3M6MTk6IjIwMjQtMDMtMzBUMTI6Mjc6NDEiO3M6MTE6ImRlcGFydGVtZW50IjtzOjI6IjM4IjtzOjIxOiJkaXN0cmlidXRpb25fc3BlY2lhbGUiO047czo0OiJlcGNpIjtzOjk6IjI0MzgwMDYwNCI7czo5OiJlc3Rfc2llZ2UiO2I6MTtzOjE4OiJldGF0X2FkbWluaXN0cmF0aWYiO3M6MToiQSI7czoxMToiZ2VvX2FkcmVzc2UiO3M6MzU6Ijg1IFJ1ZSBDb25kb3JjZXQgMzgwOTAgVmF1bHgtTWlsaWV1IjtzOjY6Imdlb19pZCI7czoxNjoiMzg1MzBfMDAzOV8wMDA4NSI7czoxNzoiaW5kaWNlX3JlcGV0aXRpb24iO047czo4OiJsYXRpdHVkZSI7czo5OiI0NS42MjQzNzgiO3M6MTM6ImxpYmVsbGVfY2VkZXgiO047czoxNToibGliZWxsZV9jb21tdW5lIjtzOjEyOiJWQVVMWC1NSUxJRVUiO3M6MjQ6ImxpYmVsbGVfY29tbXVuZV9ldHJhbmdlciI7TjtzOjIxOiJsaWJlbGxlX3BheXNfZXRyYW5nZXIiO047czoxMjoibGliZWxsZV92b2llIjtzOjk6IkNPTkRPUkNFVCI7czoxNToibGlzdGVfZW5zZWlnbmVzIjtOO3M6MTI6Imxpc3RlX2ZpbmVzcyI7TjtzOjEyOiJsaXN0ZV9pZF9iaW8iO047czoxMDoibGlzdGVfaWRjYyI7TjtzOjI4OiJsaXN0ZV9pZF9vcmdhbmlzbWVfZm9ybWF0aW9uIjtOO3M6OToibGlzdGVfcmdlIjtOO3M6OToibGlzdGVfdWFpIjtOO3M6OToibG9uZ2l0dWRlIjtzOjg6IjUuMTc0NTI2IjtzOjE0OiJub21fY29tbWVyY2lhbCI7TjtzOjExOiJudW1lcm9fdm9pZSI7czoyOiI4NSI7czo2OiJyZWdpb24iO3M6MjoiODQiO3M6NToic2lyZXQiO3M6MTQ6IjUzMTc1NzAyOTAwMDI0IjtzOjMwOiJzdGF0dXRfZGlmZnVzaW9uX2V0YWJsaXNzZW1lbnQiO3M6MToiTyI7czoyNDoidHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtzOjI6IjAwIjtzOjk6InR5cGVfdm9pZSI7czozOiJSVUUiO31zOjE5OiJhY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjY6IjQzLjIyQiI7czoyMDoiY2F0ZWdvcmllX2VudHJlcHJpc2UiO3M6MzoiUE1FIjtzOjE5OiJjYXJhY3RlcmVfZW1wbG95ZXVyIjtOO3M6MjY6ImFubmVlX2NhdGVnb3JpZV9lbnRyZXByaXNlIjtzOjQ6IjIwMjIiO3M6MTM6ImRhdGVfY3JlYXRpb24iO3M6MTA6IjIwMTEtMDQtMDEiO3M6MTQ6ImRhdGVfZmVybWV0dXJlIjtOO3M6MTY6ImRhdGVfbWlzZV9hX2pvdXIiO3M6MTk6IjIwMjUtMDEtMDhUMTU6MzM6NDUiO3M6MjI6ImRhdGVfbWlzZV9hX2pvdXJfaW5zZWUiO3M6MTk6IjIwMjQtMDMtMjJUMTQ6MjY6MDYiO3M6MjA6ImRhdGVfbWlzZV9hX2pvdXJfcm5lIjtzOjE5OiIyMDI0LTA1LTE5VDE2OjQ5OjMzIjtzOjEwOiJkaXJpZ2VhbnRzIjthOjM6e2k6MDthOjc6e3M6Mzoibm9tIjtzOjU6Ik1BSVJFIjtzOjc6InByZW5vbXMiO3M6MTI6Ik1JQ0hFTCBFTUlMRSI7czoxODoiYW5uZWVfZGVfbmFpc3NhbmNlIjtzOjQ6IjE5NTkiO3M6MTc6ImRhdGVfZGVfbmFpc3NhbmNlIjtzOjc6IjE5NTktMDkiO3M6NzoicXVhbGl0ZSI7czo3OiJHw6lyYW50IjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRnJhbsOnYWlzZSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToxO2E6NDp7czo1OiJzaXJlbiI7czo5OiI0NDUxNjQ0MjkiO3M6MTI6ImRlbm9taW5hdGlvbiI7czoxNjoiVEVPUkVNIEFSRVNYUEVSVCI7czo3OiJxdWFsaXRlIjtzOjMzOiJDb21taXNzYWlyZSBhdXggY29tcHRlcyB0aXR1bGFpcmUiO3M6MTQ6InR5cGVfZGlyaWdlYW50IjtzOjE1OiJwZXJzb25uZSBtb3JhbGUiO31pOjI7YTo0OntzOjU6InNpcmVuIjtzOjk6Ijc3NTcyNjQxNyI7czoxMjoiZGVub21pbmF0aW9uIjtzOjc6IktQTUcgU0EiO3M6NzoicXVhbGl0ZSI7czozMzoiQ29tbWlzc2FpcmUgYXV4IGNvbXB0ZXMgdGl0dWxhaXJlIjtzOjE0OiJ0eXBlX2RpcmlnZWFudCI7czoxNToicGVyc29ubmUgbW9yYWxlIjt9fXM6MTg6ImV0YXRfYWRtaW5pc3RyYXRpZiI7czoxOiJBIjtzOjE2OiJuYXR1cmVfanVyaWRpcXVlIjtzOjQ6IjU0OTkiO3M6Mjc6InNlY3Rpb25fYWN0aXZpdGVfcHJpbmNpcGFsZSI7czoxOiJGIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO3M6MjoiMDAiO3M6MzA6ImFubmVlX3RyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7czo0OiIyMDIyIjtzOjE2OiJzdGF0dXRfZGlmZnVzaW9uIjtzOjE6Ik8iO3M6MjM6Im1hdGNoaW5nX2V0YWJsaXNzZW1lbnRzIjthOjI6e2k6MDthOjI5OntzOjE5OiJhY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjY6IjQzLjIyQiI7czoxMjoiYW5jaWVuX3NpZWdlIjtiOjA7czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO3M6NzoiYWRyZXNzZSI7czo0NzoiTEQgTEEgQk9SREVSSUUgREUgTEEgUk9DSEUgTEEgQk9SREUgNDk2OTAgQ09ST04iO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTiI7czoxMToiY29kZV9wb3N0YWwiO3M6NToiNDk2OTAiO3M6NzoiY29tbXVuZSI7czo1OiI0OTEwOSI7czoxMzoiZGF0ZV9jcmVhdGlvbiI7czoxMDoiMjAxOS0xMC0wMSI7czoxOToiZGF0ZV9kZWJ1dF9hY3Rpdml0ZSI7czoxMDoiMjAxOS0xMC0wMSI7czoxNDoiZGF0ZV9mZXJtZXR1cmUiO047czo0OiJlcGNpIjtzOjk6IjIwMDA3MTY3OCI7czo5OiJlc3Rfc2llZ2UiO2I6MDtzOjE4OiJldGF0X2FkbWluaXN0cmF0aWYiO3M6MToiQSI7czo2OiJnZW9faWQiO047czo4OiJsYXRpdHVkZSI7TjtzOjE1OiJsaWJlbGxlX2NvbW11bmUiO3M6NToiQ09ST04iO3M6MTU6Imxpc3RlX2Vuc2VpZ25lcyI7TjtzOjEyOiJsaXN0ZV9maW5lc3MiO047czoxMjoibGlzdGVfaWRfYmlvIjtOO3M6MTA6Imxpc3RlX2lkY2MiO047czoyODoibGlzdGVfaWRfb3JnYW5pc21lX2Zvcm1hdGlvbiI7TjtzOjk6Imxpc3RlX3JnZSI7TjtzOjk6Imxpc3RlX3VhaSI7TjtzOjk6ImxvbmdpdHVkZSI7TjtzOjE0OiJub21fY29tbWVyY2lhbCI7TjtzOjY6InJlZ2lvbiI7czoyOiI1MiI7czo1OiJzaXJldCI7czoxNDoiNTMxNzU3MDI5MDM5NjAiO3M6MzA6InN0YXR1dF9kaWZmdXNpb25fZXRhYmxpc3NlbWVudCI7czoxOiJPIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047fWk6MTthOjI5OntzOjE5OiJhY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjY6IjM1LjExWiI7czoxMjoiYW5jaWVuX3NpZWdlIjtiOjA7czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO3M6NzoiYWRyZXNzZSI7czoyOToiTEQgTEEgQk9VUkRJTklFUkUgNDk2OTAgQ09ST04iO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTiI7czoxMToiY29kZV9wb3N0YWwiO3M6NToiNDk2OTAiO3M6NzoiY29tbXVuZSI7czo1OiI0OTEwOSI7czoxMzoiZGF0ZV9jcmVhdGlvbiI7czoxMDoiMjAxOS0xMi0wMyI7czoxOToiZGF0ZV9kZWJ1dF9hY3Rpdml0ZSI7czoxMDoiMjAxOS0xMi0wMyI7czoxNDoiZGF0ZV9mZXJtZXR1cmUiO047czo0OiJlcGNpIjtzOjk6IjIwMDA3MTY3OCI7czo5OiJlc3Rfc2llZ2UiO2I6MDtzOjE4OiJldGF0X2FkbWluaXN0cmF0aWYiO3M6MToiQSI7czo2OiJnZW9faWQiO3M6MTI6IjQ5MTA5XzdhcWx3NiI7czo4OiJsYXRpdHVkZSI7czo5OiI0Ny4xMTE5OTEiO3M6MTU6ImxpYmVsbGVfY29tbXVuZSI7czo1OiJDT1JPTiI7czoxNToibGlzdGVfZW5zZWlnbmVzIjtOO3M6MTI6Imxpc3RlX2ZpbmVzcyI7TjtzOjEyOiJsaXN0ZV9pZF9iaW8iO047czoxMDoibGlzdGVfaWRjYyI7TjtzOjI4OiJsaXN0ZV9pZF9vcmdhbmlzbWVfZm9ybWF0aW9uIjtOO3M6OToibGlzdGVfcmdlIjtOO3M6OToibGlzdGVfdWFpIjtOO3M6OToibG9uZ2l0dWRlIjtzOjk6Ii0wLjY1MjY5NyI7czoxNDoibm9tX2NvbW1lcmNpYWwiO047czo2OiJyZWdpb24iO3M6MjoiNTIiO3M6NToic2lyZXQiO3M6MTQ6IjUzMTc1NzAyOTA0MzMxIjtzOjMwOiJzdGF0dXRfZGlmZnVzaW9uX2V0YWJsaXNzZW1lbnQiO3M6MToiTyI7czoyNDoidHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO319czo4OiJmaW5hbmNlcyI7YToxOntpOjIwMjA7YToyOntzOjI6ImNhIjtpOjMxNTM5NTU1O3M6MTI6InJlc3VsdGF0X25ldCI7aTotOTgxNjM2MDt9fXM6MTE6ImNvbXBsZW1lbnRzIjthOjIxOntzOjI1OiJjb2xsZWN0aXZpdGVfdGVycml0b3JpYWxlIjtOO3M6MzI6ImNvbnZlbnRpb25fY29sbGVjdGl2ZV9yZW5zZWlnbmVlIjtiOjA7czoxMDoibGlzdGVfaWRjYyI7TjtzOjE3OiJlZ2Fwcm9fcmVuc2VpZ25lZSI7YjoxO3M6MTU6ImVzdF9hc3NvY2lhdGlvbiI7YjowO3M6NzoiZXN0X2JpbyI7YjowO3M6Mjc6ImVzdF9lbnRyZXByZW5ldXJfaW5kaXZpZHVlbCI7YjowO3M6MjY6ImVzdF9lbnRyZXByZW5ldXJfc3BlY3RhY2xlIjtiOjA7czo3OiJlc3RfZXNzIjtiOjA7czoxMDoiZXN0X2ZpbmVzcyI7YjowO3M6MjM6ImVzdF9vcmdhbmlzbWVfZm9ybWF0aW9uIjtiOjA7czoxMjoiZXN0X3F1YWxpb3BpIjtiOjA7czoyODoibGlzdGVfaWRfb3JnYW5pc21lX2Zvcm1hdGlvbiI7TjtzOjc6ImVzdF9yZ2UiO2I6MDtzOjE4OiJlc3Rfc2VydmljZV9wdWJsaWMiO2I6MDtzOjg6ImVzdF9zaWFlIjtiOjA7czoxOToiZXN0X3NvY2lldGVfbWlzc2lvbiI7YjowO3M6NzoiZXN0X3VhaSI7YjowO3M6MjM6ImlkZW50aWZpYW50X2Fzc29jaWF0aW9uIjtOO3M6Mjk6InN0YXR1dF9lbnRyZXByZW5ldXJfc3BlY3RhY2xlIjtOO3M6OToidHlwZV9zaWFlIjtOO319aToxO2E6MjY6e3M6NToic2lyZW4iO3M6OToiODg0NjkyODQ5IjtzOjExOiJub21fY29tcGxldCI7czoxNjoiTUlOU0sgQlkgQ0FQIFNVRCI7czoxODoibm9tX3JhaXNvbl9zb2NpYWxlIjtzOjE2OiJNSU5TSyBCWSBDQVAgU1VEIjtzOjU6InNpZ2xlIjtOO3M6MjE6Im5vbWJyZV9ldGFibGlzc2VtZW50cyI7aToxODg7czoyOToibm9tYnJlX2V0YWJsaXNzZW1lbnRzX291dmVydHMiO2k6MTgxO3M6NToic2llZ2UiO2E6NDU6e3M6MTk6ImFjdGl2aXRlX3ByaW5jaXBhbGUiO3M6NjoiNzEuMTJCIjtzOjM1OiJhY3Rpdml0ZV9wcmluY2lwYWxlX3JlZ2lzdHJlX21ldGllciI7TjtzOjMwOiJhbm5lZV90cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047czo3OiJhZHJlc3NlIjtzOjQ4OiI2MyBSVUUgRFUgTU9SRUxMT04gMzgwNzAgU0FJTlQtUVVFTlRJTi1GQUxMQVZJRVIiO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTiI7czo1OiJjZWRleCI7TjtzOjE4OiJjb2RlX3BheXNfZXRyYW5nZXIiO047czoxMToiY29kZV9wb3N0YWwiO3M6NToiMzgwNzAiO3M6NzoiY29tbXVuZSI7czo1OiIzODQ0OSI7czoxODoiY29tcGxlbWVudF9hZHJlc3NlIjtOO3M6MTE6ImNvb3Jkb25uZWVzIjtzOjE4OiI0NS42NjM3MjgsNS4wOTg2MDciO3M6MTM6ImRhdGVfY3JlYXRpb24iO3M6MTA6IjIwMjEtMDktMzAiO3M6MTk6ImRhdGVfZGVidXRfYWN0aXZpdGUiO3M6MTA6IjIwMjMtMDMtMjAiO3M6MTQ6ImRhdGVfZmVybWV0dXJlIjtOO3M6MTY6ImRhdGVfbWlzZV9hX2pvdXIiO047czoyMjoiZGF0ZV9taXNlX2Ffam91cl9pbnNlZSI7czoxOToiMjAyNC0wMy0zMFQxMzozMDoyNiI7czoxMToiZGVwYXJ0ZW1lbnQiO3M6MjoiMzgiO3M6MjE6ImRpc3RyaWJ1dGlvbl9zcGVjaWFsZSI7TjtzOjQ6ImVwY2kiO3M6OToiMjQzODAwNjA0IjtzOjk6ImVzdF9zaWVnZSI7YjoxO3M6MTg6ImV0YXRfYWRtaW5pc3RyYXRpZiI7czoxOiJBIjtzOjExOiJnZW9fYWRyZXNzZSI7czo0ODoiNjMgUnVlIGR1IE1vcmVsbG9uIDM4MDcwIFNhaW50LVF1ZW50aW4tRmFsbGF2aWVyIjtzOjY6Imdlb19pZCI7czoxNjoiMzg0NDlfMDM0M18wMDA2MyI7czoxNzoiaW5kaWNlX3JlcGV0aXRpb24iO047czo4OiJsYXRpdHVkZSI7czo5OiI0NS42NjM3MjgiO3M6MTM6ImxpYmVsbGVfY2VkZXgiO047czoxNToibGliZWxsZV9jb21tdW5lIjtzOjIzOiJTQUlOVC1RVUVOVElOLUZBTExBVklFUiI7czoyNDoibGliZWxsZV9jb21tdW5lX2V0cmFuZ2VyIjtOO3M6MjE6ImxpYmVsbGVfcGF5c19ldHJhbmdlciI7TjtzOjEyOiJsaWJlbGxlX3ZvaWUiO3M6MTE6IkRVIE1PUkVMTE9OIjtzOjE1OiJsaXN0ZV9lbnNlaWduZXMiO047czoxMjoibGlzdGVfZmluZXNzIjtOO3M6MTI6Imxpc3RlX2lkX2JpbyI7TjtzOjEwOiJsaXN0ZV9pZGNjIjtOO3M6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo5OiJsaXN0ZV9yZ2UiO047czo5OiJsaXN0ZV91YWkiO047czo5OiJsb25naXR1ZGUiO3M6ODoiNS4wOTg2MDciO3M6MTQ6Im5vbV9jb21tZXJjaWFsIjtOO3M6MTE6Im51bWVyb192b2llIjtzOjI6IjYzIjtzOjY6InJlZ2lvbiI7czoyOiI4NCI7czo1OiJzaXJldCI7czoxNDoiODg0NjkyODQ5MDA2NzkiO3M6MzA6InN0YXR1dF9kaWZmdXNpb25fZXRhYmxpc3NlbWVudCI7czoxOiJPIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047czo5OiJ0eXBlX3ZvaWUiO3M6MzoiUlVFIjt9czoxOToiYWN0aXZpdGVfcHJpbmNpcGFsZSI7czo2OiIzNS4xMVoiO3M6MjA6ImNhdGVnb3JpZV9lbnRyZXByaXNlIjtzOjI6IkdFIjtzOjE5OiJjYXJhY3RlcmVfZW1wbG95ZXVyIjtOO3M6MjY6ImFubmVlX2NhdGVnb3JpZV9lbnRyZXByaXNlIjtzOjQ6IjIwMjIiO3M6MTM6ImRhdGVfY3JlYXRpb24iO3M6MTA6IjIwMjAtMDYtMTkiO3M6MTQ6ImRhdGVfZmVybWV0dXJlIjtOO3M6MTY6ImRhdGVfbWlzZV9hX2pvdXIiO3M6MTk6IjIwMjUtMDEtMDhUMTY6NTk6MzciO3M6MjI6ImRhdGVfbWlzZV9hX2pvdXJfaW5zZWUiO3M6MTk6IjIwMjQtMTItMTFUMTQ6NTg6MjEiO3M6MjA6ImRhdGVfbWlzZV9hX2pvdXJfcm5lIjtzOjE5OiIyMDI0LTA1LTE5VDE2OjQ5OjMzIjtzOjEwOiJkaXJpZ2VhbnRzIjthOjM6e2k6MDthOjc6e3M6Mzoibm9tIjtzOjE4OiJDT1NUQS1NVUxBIChDT1NUQSkiO3M6NzoicHJlbm9tcyI7czo2OiJHQUVUQU4iO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTg3IjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTg3LTEwIjtzOjc6InF1YWxpdGUiO3M6MTc6IlByw6lzaWRlbnQgZGUgU0FTIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRnJhbsOnYWlzZSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToxO2E6Nzp7czozOiJub20iO3M6NzoiRCdBTUlDTyI7czo3OiJwcmVub21zIjtzOjE1OiJBTlRPTklOTyBEQU5JRUwiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTgzIjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTgzLTEyIjtzOjc6InF1YWxpdGUiO3M6MTk6IkRpcmVjdGV1ciBHw6luw6lyYWwiO3M6MTE6Im5hdGlvbmFsaXRlIjtzOjEwOiJGcmFuw6dhaXNlIjtzOjE0OiJ0eXBlX2RpcmlnZWFudCI7czoxNzoicGVyc29ubmUgcGh5c2lxdWUiO31pOjI7YTo0OntzOjU6InNpcmVuIjtzOjk6Ijc3NTcyNjQxNyI7czoxMjoiZGVub21pbmF0aW9uIjtzOjc6IktQTUcgU0EiO3M6NzoicXVhbGl0ZSI7czozMzoiQ29tbWlzc2FpcmUgYXV4IGNvbXB0ZXMgdGl0dWxhaXJlIjtzOjE0OiJ0eXBlX2RpcmlnZWFudCI7czoxNToicGVyc29ubmUgbW9yYWxlIjt9fXM6MTg6ImV0YXRfYWRtaW5pc3RyYXRpZiI7czoxOiJBIjtzOjE2OiJuYXR1cmVfanVyaWRpcXVlIjtzOjQ6IjU3MTAiO3M6Mjc6InNlY3Rpb25fYWN0aXZpdGVfcHJpbmNpcGFsZSI7czoxOiJEIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO3M6MTY6InN0YXR1dF9kaWZmdXNpb24iO3M6MToiTyI7czoyMzoibWF0Y2hpbmdfZXRhYmxpc3NlbWVudHMiO2E6MTp7aTowO2E6Mjk6e3M6MTk6ImFjdGl2aXRlX3ByaW5jaXBhbGUiO3M6NjoiMzUuMTFaIjtzOjEyOiJhbmNpZW5fc2llZ2UiO2I6MDtzOjMwOiJhbm5lZV90cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047czo3OiJhZHJlc3NlIjtzOjM1OiJMQSBCT1JERVJJRSBERSBMQSBST0NIRSA0OTY5MCBDT1JPTiI7czoxOToiY2FyYWN0ZXJlX2VtcGxveWV1ciI7czoxOiJOIjtzOjExOiJjb2RlX3Bvc3RhbCI7czo1OiI0OTY5MCI7czo3OiJjb21tdW5lIjtzOjU6IjQ5MTA5IjtzOjEzOiJkYXRlX2NyZWF0aW9uIjtzOjEwOiIyMDIzLTAyLTI4IjtzOjE5OiJkYXRlX2RlYnV0X2FjdGl2aXRlIjtzOjEwOiIyMDIzLTAyLTI4IjtzOjE0OiJkYXRlX2Zlcm1ldHVyZSI7TjtzOjQ6ImVwY2kiO3M6OToiMjAwMDcxNjc4IjtzOjk6ImVzdF9zaWVnZSI7YjowO3M6MTg6ImV0YXRfYWRtaW5pc3RyYXRpZiI7czoxOiJBIjtzOjY6Imdlb19pZCI7czoxMDoiNDkxMDlfMDEwNSI7czo4OiJsYXRpdHVkZSI7czo5OiI0Ny4xMjcwNzUiO3M6MTU6ImxpYmVsbGVfY29tbXVuZSI7czo1OiJDT1JPTiI7czoxNToibGlzdGVfZW5zZWlnbmVzIjtOO3M6MTI6Imxpc3RlX2ZpbmVzcyI7TjtzOjEyOiJsaXN0ZV9pZF9iaW8iO047czoxMDoibGlzdGVfaWRjYyI7TjtzOjI4OiJsaXN0ZV9pZF9vcmdhbmlzbWVfZm9ybWF0aW9uIjtOO3M6OToibGlzdGVfcmdlIjtOO3M6OToibGlzdGVfdWFpIjtOO3M6OToibG9uZ2l0dWRlIjtzOjk6Ii0wLjY1MjE2NSI7czoxNDoibm9tX2NvbW1lcmNpYWwiO3M6Mjg6IkxFR0VSIEdBRUMgTEEgVkFMTEVFIEJBVCA4MTEiO3M6NjoicmVnaW9uIjtzOjI6IjUyIjtzOjU6InNpcmV0IjtzOjE0OiI4ODQ2OTI4NDkwMDg0NCI7czozMDoic3RhdHV0X2RpZmZ1c2lvbl9ldGFibGlzc2VtZW50IjtzOjE6Ik8iO3M6MjQ6InRyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7Tjt9fXM6ODoiZmluYW5jZXMiO2E6MTp7aToyMDIzO2E6Mjp7czoyOiJjYSI7aTo3NzM0MDY7czoxMjoicmVzdWx0YXRfbmV0IjtpOi03ODk1MDk7fX1zOjExOiJjb21wbGVtZW50cyI7YToyMTp7czoyNToiY29sbGVjdGl2aXRlX3RlcnJpdG9yaWFsZSI7TjtzOjMyOiJjb252ZW50aW9uX2NvbGxlY3RpdmVfcmVuc2VpZ25lZSI7YjowO3M6MTA6Imxpc3RlX2lkY2MiO047czoxNzoiZWdhcHJvX3JlbnNlaWduZWUiO2I6MDtzOjE1OiJlc3RfYXNzb2NpYXRpb24iO2I6MDtzOjc6ImVzdF9iaW8iO2I6MDtzOjI3OiJlc3RfZW50cmVwcmVuZXVyX2luZGl2aWR1ZWwiO2I6MDtzOjI2OiJlc3RfZW50cmVwcmVuZXVyX3NwZWN0YWNsZSI7YjowO3M6NzoiZXN0X2VzcyI7YjoxO3M6MTA6ImVzdF9maW5lc3MiO2I6MDtzOjIzOiJlc3Rfb3JnYW5pc21lX2Zvcm1hdGlvbiI7YjowO3M6MTI6ImVzdF9xdWFsaW9waSI7YjowO3M6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo3OiJlc3RfcmdlIjtiOjA7czoxODoiZXN0X3NlcnZpY2VfcHVibGljIjtiOjA7czo4OiJlc3Rfc2lhZSI7YjowO3M6MTk6ImVzdF9zb2NpZXRlX21pc3Npb24iO2I6MDtzOjc6ImVzdF91YWkiO2I6MDtzOjIzOiJpZGVudGlmaWFudF9hc3NvY2lhdGlvbiI7TjtzOjI5OiJzdGF0dXRfZW50cmVwcmVuZXVyX3NwZWN0YWNsZSI7TjtzOjk6InR5cGVfc2lhZSI7Tjt9fWk6MjthOjI2OntzOjU6InNpcmVuIjtzOjk6IjQxNDk5Mzk5OCI7czoxMToibm9tX2NvbXBsZXQiO3M6ODE6IkNBSVNTRSBSRUcgQ1JFRElUIEFHUkkgTVVUVUVMIEFOSk9VIE1BSU4gKENSRURJVCBBR1JJQ09MRSBERSBMJ0FOSk9VIEVUIERVIE1BSU5FKSI7czoxODoibm9tX3JhaXNvbl9zb2NpYWxlIjtzOjQwOiJDQUlTU0UgUkVHIENSRURJVCBBR1JJIE1VVFVFTCBBTkpPVSBNQUlOIjtzOjU6InNpZ2xlIjtOO3M6MjE6Im5vbWJyZV9ldGFibGlzc2VtZW50cyI7aTozNTI7czoyOToibm9tYnJlX2V0YWJsaXNzZW1lbnRzX291dmVydHMiO2k6MjQwO3M6NToic2llZ2UiO2E6NDU6e3M6MTk6ImFjdGl2aXRlX3ByaW5jaXBhbGUiO3M6NjoiNjQuMTlaIjtzOjM1OiJhY3Rpdml0ZV9wcmluY2lwYWxlX3JlZ2lzdHJlX21ldGllciI7TjtzOjMwOiJhbm5lZV90cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO3M6NDoiMjAyMiI7czo3OiJhZHJlc3NlIjtzOjQwOiI3NyBBVkVOVUUgT0xJVklFUiBNRVNTSUFFTiA3MjAwMCBMRSBNQU5TIjtzOjE5OiJjYXJhY3RlcmVfZW1wbG95ZXVyIjtzOjE6Ik4iO3M6NToiY2VkZXgiO047czoxODoiY29kZV9wYXlzX2V0cmFuZ2VyIjtOO3M6MTE6ImNvZGVfcG9zdGFsIjtzOjU6IjcyMDAwIjtzOjc6ImNvbW11bmUiO3M6NToiNzIxODEiO3M6MTg6ImNvbXBsZW1lbnRfYWRyZXNzZSI7TjtzOjExOiJjb29yZG9ubmVlcyI7czoxODoiNDguMDE1NTMzLDAuMTUyOTI2IjtzOjEzOiJkYXRlX2NyZWF0aW9uIjtzOjEwOiIyMDE4LTAzLTAxIjtzOjE5OiJkYXRlX2RlYnV0X2FjdGl2aXRlIjtzOjEwOiIyMDE4LTAzLTAxIjtzOjE0OiJkYXRlX2Zlcm1ldHVyZSI7TjtzOjE2OiJkYXRlX21pc2VfYV9qb3VyIjtOO3M6MjI6ImRhdGVfbWlzZV9hX2pvdXJfaW5zZWUiO3M6MTk6IjIwMjQtMDYtMThUMDU6MDg6MzAiO3M6MTE6ImRlcGFydGVtZW50IjtzOjI6IjcyIjtzOjIxOiJkaXN0cmlidXRpb25fc3BlY2lhbGUiO047czo0OiJlcGNpIjtzOjk6IjI0NzIwMDEzMiI7czo5OiJlc3Rfc2llZ2UiO2I6MTtzOjE4OiJldGF0X2FkbWluaXN0cmF0aWYiO3M6MToiQSI7czoxMToiZ2VvX2FkcmVzc2UiO3M6NDA6Ijc3IGF2ZW51ZSBPbGl2aWVyIE1lc3NpYWVuIDcyMDAwIExlIE1hbnMiO3M6NjoiZ2VvX2lkIjtzOjE2OiI3MjE4MV8zODQyXzAwMDc3IjtzOjE3OiJpbmRpY2VfcmVwZXRpdGlvbiI7TjtzOjg6ImxhdGl0dWRlIjtzOjk6IjQ4LjAxNTUzMyI7czoxMzoibGliZWxsZV9jZWRleCI7TjtzOjE1OiJsaWJlbGxlX2NvbW11bmUiO3M6NzoiTEUgTUFOUyI7czoyNDoibGliZWxsZV9jb21tdW5lX2V0cmFuZ2VyIjtOO3M6MjE6ImxpYmVsbGVfcGF5c19ldHJhbmdlciI7TjtzOjEyOiJsaWJlbGxlX3ZvaWUiO3M6MTY6Ik9MSVZJRVIgTUVTU0lBRU4iO3M6MTU6Imxpc3RlX2Vuc2VpZ25lcyI7TjtzOjEyOiJsaXN0ZV9maW5lc3MiO047czoxMjoibGlzdGVfaWRfYmlvIjtOO3M6MTA6Imxpc3RlX2lkY2MiO2E6MTp7aTowO3M6NDoiNzUwMSI7fXM6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo5OiJsaXN0ZV9yZ2UiO047czo5OiJsaXN0ZV91YWkiO047czo5OiJsb25naXR1ZGUiO3M6ODoiMC4xNTI5MjYiO3M6MTQ6Im5vbV9jb21tZXJjaWFsIjtOO3M6MTE6Im51bWVyb192b2llIjtzOjI6Ijc3IjtzOjY6InJlZ2lvbiI7czoyOiI1MiI7czo1OiJzaXJldCI7czoxNDoiNDE0OTkzOTk4MDM0NTYiO3M6MzA6InN0YXR1dF9kaWZmdXNpb25fZXRhYmxpc3NlbWVudCI7czoxOiJPIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO3M6MjoiNDIiO3M6OToidHlwZV92b2llIjtzOjY6IkFWRU5VRSI7fXM6MTk6ImFjdGl2aXRlX3ByaW5jaXBhbGUiO3M6NjoiNjQuMTlaIjtzOjIwOiJjYXRlZ29yaWVfZW50cmVwcmlzZSI7czoyOiJHRSI7czoxOToiY2FyYWN0ZXJlX2VtcGxveWV1ciI7TjtzOjI2OiJhbm5lZV9jYXRlZ29yaWVfZW50cmVwcmlzZSI7czo0OiIyMDIyIjtzOjEzOiJkYXRlX2NyZWF0aW9uIjtzOjEwOiIxOTk3LTExLTIzIjtzOjE0OiJkYXRlX2Zlcm1ldHVyZSI7TjtzOjE2OiJkYXRlX21pc2VfYV9qb3VyIjtzOjE5OiIyMDI1LTAxLTA4VDE0OjIyOjI2IjtzOjIyOiJkYXRlX21pc2VfYV9qb3VyX2luc2VlIjtzOjE5OiIyMDI0LTEyLTIzVDE5OjAwOjA0IjtzOjIwOiJkYXRlX21pc2VfYV9qb3VyX3JuZSI7czoxOToiMjAyNC0wNS0xOVQxNjo0OTozMyI7czoxMDoiZGlyaWdlYW50cyI7YToyNTp7aTowO2E6Nzp7czozOiJub20iO3M6MTQ6IkNMRVJDIChBUklBVVgpIjtzOjc6InByZW5vbXMiO3M6MTA6Ik1BUklFLUFOTkUiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTU5IjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTU5LTA4IjtzOjc6InF1YWxpdGUiO3M6MTQ6IkFkbWluaXN0cmF0ZXVyIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToxO2E6Nzp7czozOiJub20iO3M6NzoiQVNTRVJBWSI7czo3OiJwcmVub21zIjtzOjIxOiJERU5JUyBHSUxCRVJUIEJFUk5BUkQiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTY1IjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTY1LTAzIjtzOjc6InF1YWxpdGUiO3M6MTQ6IkFkbWluaXN0cmF0ZXVyIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToyO2E6Nzp7czozOiJub20iO3M6NToiQkFNQVMiO3M6NzoicHJlbm9tcyI7czoyMjoiRkxPUkVOQ0UgSkVBTk5FIE1BUllTRSI7czoxODoiYW5uZWVfZGVfbmFpc3NhbmNlIjtzOjQ6IjE5NjkiO3M6MTc6ImRhdGVfZGVfbmFpc3NhbmNlIjtzOjc6IjE5NjktMDEiO3M6NzoicXVhbGl0ZSI7czoxNDoiQWRtaW5pc3RyYXRldXIiO3M6MTE6Im5hdGlvbmFsaXRlIjtzOjEwOiJGUkFOw4dBSVNFIjtzOjE0OiJ0eXBlX2RpcmlnZWFudCI7czoxNzoicGVyc29ubmUgcGh5c2lxdWUiO31pOjM7YTo3OntzOjM6Im5vbSI7czo5OiJCTEFOQ0hBUkQiO3M6NzoicHJlbm9tcyI7czo2OiJNSUNIRUwiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTY1IjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTY1LTA0IjtzOjc6InF1YWxpdGUiO3M6MTQ6IkFkbWluaXN0cmF0ZXVyIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aTo0O2E6Nzp7czozOiJub20iO3M6MTg6IlRSVUJFUlQgKEJMQU5DSE9OKSI7czo3OiJwcmVub21zIjtzOjU6IkFHTkVTIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NDoiMTk2NCI7czoxNzoiZGF0ZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk2NC0wMSI7czo3OiJxdWFsaXRlIjtzOjE0OiJBZG1pbmlzdHJhdGV1ciI7czoxMToibmF0aW9uYWxpdGUiO3M6MTA6IkZSQU7Dh0FJU0UiO3M6MTQ6InR5cGVfZGlyaWdlYW50IjtzOjE3OiJwZXJzb25uZSBwaHlzaXF1ZSI7fWk6NTthOjc6e3M6Mzoibm9tIjtzOjY6IkJPVVZFVCI7czo3OiJwcmVub21zIjtzOjEwOiJDSFJJU1RPUEhFIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NDoiMTk2NCI7czoxNzoiZGF0ZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk2NC0xMCI7czo3OiJxdWFsaXRlIjtzOjE0OiJBZG1pbmlzdHJhdGV1ciI7czoxMToibmF0aW9uYWxpdGUiO3M6MTA6IkZSQU7Dh0FJU0UiO3M6MTQ6InR5cGVfZGlyaWdlYW50IjtzOjE3OiJwZXJzb25uZSBwaHlzaXF1ZSI7fWk6NjthOjc6e3M6Mzoibm9tIjtzOjg6IkJSQVNTRVVSIjtzOjc6InByZW5vbXMiO3M6NjoiSFVHVUVTIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NDoiMTk2NSI7czoxNzoiZGF0ZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk2NS0wNiI7czo3OiJxdWFsaXRlIjtzOjE5OiJEaXJlY3RldXIgR8OpbsOpcmFsIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aTo3O2E6Nzp7czozOiJub20iO3M6NzoiQlJJRElFUiI7czo3OiJwcmVub21zIjtzOjc6IlBBVFJJQ0UiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTYzIjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTYzLTA3IjtzOjc6InF1YWxpdGUiO3M6MTQ6IkFkbWluaXN0cmF0ZXVyIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aTo4O2E6Nzp7czozOiJub20iO3M6NzoiQ0hBVVZJTiI7czo3OiJwcmVub21zIjtzOjM6IkxVQyI7czoxODoiYW5uZWVfZGVfbmFpc3NhbmNlIjtzOjQ6IjE5NTgiO3M6MTc6ImRhdGVfZGVfbmFpc3NhbmNlIjtzOjc6IjE5NTgtMTIiO3M6NzoicXVhbGl0ZSI7czoxNDoiQWRtaW5pc3RyYXRldXIiO3M6MTE6Im5hdGlvbmFsaXRlIjtzOjEwOiJGUkFOw4dBSVNFIjtzOjE0OiJ0eXBlX2RpcmlnZWFudCI7czoxNzoicGVyc29ubmUgcGh5c2lxdWUiO31pOjk7YTo3OntzOjM6Im5vbSI7czo5OiJDSEVWUkVVSUwiO3M6NzoicHJlbm9tcyI7czoyODoiR1VJTExBVU1FIEZSw4lEw4lSSUMgUk9NVUFMRCI7czoxODoiYW5uZWVfZGVfbmFpc3NhbmNlIjtzOjQ6IjE5NzYiO3M6MTc6ImRhdGVfZGVfbmFpc3NhbmNlIjtzOjc6IjE5NzYtMDEiO3M6NzoicXVhbGl0ZSI7TjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToxMDthOjc6e3M6Mzoibm9tIjtzOjc6IkRPTEJFQVUiO3M6NzoicHJlbm9tcyI7czo2OiJKRVJPTUUiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTY2IjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTY2LTA1IjtzOjc6InF1YWxpdGUiO3M6MTQ6IkFkbWluaXN0cmF0ZXVyIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToxMTthOjc6e3M6Mzoibm9tIjtzOjE5OiJCRVNTT05ORUFVIChEVVBPTlQpIjtzOjc6InByZW5vbXMiO3M6ODoiTkFUSEFMSUUiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTczIjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTczLTA3IjtzOjc6InF1YWxpdGUiO3M6MTQ6IkFkbWluaXN0cmF0ZXVyIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToxMjthOjc6e3M6Mzoibm9tIjtzOjY6IkRVVkVBVSI7czo3OiJwcmVub21zIjtzOjc6IlBBVFJJQ0UiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTY1IjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTY1LTAxIjtzOjc6InF1YWxpdGUiO3M6MTQ6IkFkbWluaXN0cmF0ZXVyIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToxMzthOjc6e3M6Mzoibm9tIjtzOjE4OiJUQVZBTk8gKEZPVVJSRUFVWCkiO3M6NzoicHJlbm9tcyI7czoxNToiQU5OQUJFTCBKT1NJQU5FIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NDoiMTk3MCI7czoxNzoiZGF0ZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk3MC0wOCI7czo3OiJxdWFsaXRlIjtzOjE0OiJBZG1pbmlzdHJhdGV1ciI7czoxMToibmF0aW9uYWxpdGUiO3M6MTA6IkZSQU7Dh0FJU0UiO3M6MTQ6InR5cGVfZGlyaWdlYW50IjtzOjE3OiJwZXJzb25uZSBwaHlzaXF1ZSI7fWk6MTQ7YTo3OntzOjM6Im5vbSI7czoxNDoiQklHT1QgKEdBU0RPTikiO3M6NzoicHJlbm9tcyI7czo5OiJGUkFOQ09JU0UiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTU3IjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTU3LTA2IjtzOjc6InF1YWxpdGUiO3M6MTQ6IkFkbWluaXN0cmF0ZXVyIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToxNTthOjc6e3M6Mzoibm9tIjtzOjg6IkdVSUxBVU1FIjtzOjc6InByZW5vbXMiO3M6MzoiR1VZIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NDoiMTk1OCI7czoxNzoiZGF0ZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk1OC0wNSI7czo3OiJxdWFsaXRlIjtzOjU6IkF1dHJlIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToxNjthOjc6e3M6Mzoibm9tIjtzOjE4OiJQRUNVTElFUiAoTEVCTEFOQykiO3M6NzoicHJlbm9tcyI7czo5OiJGUkFOQ09JU0UiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTU4IjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTU4LTA2IjtzOjc6InF1YWxpdGUiO3M6MTQ6IkFkbWluaXN0cmF0ZXVyIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToxNzthOjc6e3M6Mzoibm9tIjtzOjEwOiJMRVRPVVJORVVSIjtzOjc6InByZW5vbXMiO3M6NzoiR09OVFJBTiI7czoxODoiYW5uZWVfZGVfbmFpc3NhbmNlIjtzOjQ6IjE5NzYiO3M6MTc6ImRhdGVfZGVfbmFpc3NhbmNlIjtzOjc6IjE5NzYtMDMiO3M6NzoicXVhbGl0ZSI7czoxNDoiQWRtaW5pc3RyYXRldXIiO3M6MTE6Im5hdGlvbmFsaXRlIjtzOjEwOiJGUkFOw4dBSVNFIjtzOjE0OiJ0eXBlX2RpcmlnZWFudCI7czoxNzoicGVyc29ubmUgcGh5c2lxdWUiO31pOjE4O2E6Nzp7czozOiJub20iO3M6NToiTE9SSU4iO3M6NzoicHJlbm9tcyI7czo5OiJWRVJPTklRVUUiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTc0IjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTc0LTEyIjtzOjc6InF1YWxpdGUiO3M6MTQ6IkFkbWluaXN0cmF0ZXVyIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToxOTthOjc6e3M6Mzoibm9tIjtzOjY6Ik1FTkFSRCI7czo3OiJwcmVub21zIjtzOjQ6IkxPSUMiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTU5IjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTU5LTExIjtzOjc6InF1YWxpdGUiO3M6MTQ6IkFkbWluaXN0cmF0ZXVyIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToyMDthOjc6e3M6Mzoibm9tIjtzOjU6Ik1PTMOJIjtzOjc6InByZW5vbXMiO3M6NjoiU0FORElFIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NDoiMTk4MCI7czoxNzoiZGF0ZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk4MC0wMyI7czo3OiJxdWFsaXRlIjtzOjU6IkF1dHJlIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToyMTthOjc6e3M6Mzoibm9tIjtzOjc6IlNPVUxBUkQiO3M6NzoicHJlbm9tcyI7czo2OiJEQU1JRU4iO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTc3IjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTc3LTA2IjtzOjc6InF1YWxpdGUiO3M6MTQ6IkFkbWluaXN0cmF0ZXVyIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToyMjthOjc6e3M6Mzoibm9tIjtzOjc6IlRFU1RBUkQiO3M6NzoicHJlbm9tcyI7czo2OiJYQVZJRVIiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTYxIjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTYxLTA5IjtzOjc6InF1YWxpdGUiO3M6MTQ6IkFkbWluaXN0cmF0ZXVyIjtzOjExOiJuYXRpb25hbGl0ZSI7czoxMDoiRlJBTsOHQUlTRSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTc6InBlcnNvbm5lIHBoeXNpcXVlIjt9aToyMzthOjQ6e3M6NToic2lyZW4iO3M6OToiMzQ0MzY2MzE1IjtzOjEyOiJkZW5vbWluYXRpb24iO3M6MTk6IkVSTlNUICYgWU9VTkcgQVVESVQiO3M6NzoicXVhbGl0ZSI7czozMzoiQ29tbWlzc2FpcmUgYXV4IGNvbXB0ZXMgdGl0dWxhaXJlIjtzOjE0OiJ0eXBlX2RpcmlnZWFudCI7czoxNToicGVyc29ubmUgbW9yYWxlIjt9aToyNDthOjQ6e3M6NToic2lyZW4iO3M6OToiNzg0ODI0MTUzIjtzOjEyOiJkZW5vbWluYXRpb24iO3M6NjoiTUFaQVJTIjtzOjc6InF1YWxpdGUiO3M6MzM6IkNvbW1pc3NhaXJlIGF1eCBjb21wdGVzIHRpdHVsYWlyZSI7czoxNDoidHlwZV9kaXJpZ2VhbnQiO3M6MTU6InBlcnNvbm5lIG1vcmFsZSI7fX1zOjE4OiJldGF0X2FkbWluaXN0cmF0aWYiO3M6MToiQSI7czoxNjoibmF0dXJlX2p1cmlkaXF1ZSI7czo0OiI2NTk2IjtzOjI3OiJzZWN0aW9uX2FjdGl2aXRlX3ByaW5jaXBhbGUiO3M6MToiSyI7czoyNDoidHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtzOjI6IjUxIjtzOjMwOiJhbm5lZV90cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO3M6NDoiMjAyMiI7czoxNjoic3RhdHV0X2RpZmZ1c2lvbiI7czoxOiJPIjtzOjIzOiJtYXRjaGluZ19ldGFibGlzc2VtZW50cyI7YToxOntpOjA7YToyOTp7czoxOToiYWN0aXZpdGVfcHJpbmNpcGFsZSI7czo1OiI2NS4xRCI7czoxMjoiYW5jaWVuX3NpZWdlIjtiOjA7czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO3M6NzoiYWRyZXNzZSI7czozMDoiMTAgUlVFIERVIENPTU1FUkNFIDQ5NjkwIENPUk9OIjtzOjE5OiJjYXJhY3RlcmVfZW1wbG95ZXVyIjtzOjE6Ik4iO3M6MTE6ImNvZGVfcG9zdGFsIjtzOjU6IjQ5NjkwIjtzOjc6ImNvbW11bmUiO3M6NToiNDkxMDkiO3M6MTM6ImRhdGVfY3JlYXRpb24iO3M6MTA6IjE5OTgtMDctMDEiO3M6MTk6ImRhdGVfZGVidXRfYWN0aXZpdGUiO3M6MTA6IjIwMDQtMDQtMTMiO3M6MTQ6ImRhdGVfZmVybWV0dXJlIjtzOjEwOiIyMDA0LTA0LTEzIjtzOjQ6ImVwY2kiO3M6OToiMjAwMDcxNjc4IjtzOjk6ImVzdF9zaWVnZSI7YjowO3M6MTg6ImV0YXRfYWRtaW5pc3RyYXRpZiI7czoxOiJGIjtzOjY6Imdlb19pZCI7czoxNjoiNDkxMDlfMDIxMF8wMDAxMCI7czo4OiJsYXRpdHVkZSI7czo5OiI0Ny4xMjY4MjciO3M6MTU6ImxpYmVsbGVfY29tbXVuZSI7czo1OiJDT1JPTiI7czoxNToibGlzdGVfZW5zZWlnbmVzIjtOO3M6MTI6Imxpc3RlX2ZpbmVzcyI7TjtzOjEyOiJsaXN0ZV9pZF9iaW8iO047czoxMDoibGlzdGVfaWRjYyI7TjtzOjI4OiJsaXN0ZV9pZF9vcmdhbmlzbWVfZm9ybWF0aW9uIjtOO3M6OToibGlzdGVfcmdlIjtOO3M6OToibGlzdGVfdWFpIjtOO3M6OToibG9uZ2l0dWRlIjtzOjk6Ii0wLjY0NjA2OCI7czoxNDoibm9tX2NvbW1lcmNpYWwiO047czo2OiJyZWdpb24iO3M6MjoiNTIiO3M6NToic2lyZXQiO3M6MTQ6IjQxNDk5Mzk5ODAxMzg1IjtzOjMwOiJzdGF0dXRfZGlmZnVzaW9uX2V0YWJsaXNzZW1lbnQiO3M6MToiTyI7czoyNDoidHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO319czo4OiJmaW5hbmNlcyI7TjtzOjExOiJjb21wbGVtZW50cyI7YToyMTp7czoyNToiY29sbGVjdGl2aXRlX3RlcnJpdG9yaWFsZSI7TjtzOjMyOiJjb252ZW50aW9uX2NvbGxlY3RpdmVfcmVuc2VpZ25lZSI7YjoxO3M6MTA6Imxpc3RlX2lkY2MiO2E6Mjp7aTowO3M6NDoiOTk5OSI7aToxO3M6NDoiNzUwMSI7fXM6MTc6ImVnYXByb19yZW5zZWlnbmVlIjtiOjE7czoxNToiZXN0X2Fzc29jaWF0aW9uIjtiOjA7czo3OiJlc3RfYmlvIjtiOjA7czoyNzoiZXN0X2VudHJlcHJlbmV1cl9pbmRpdmlkdWVsIjtiOjA7czoyNjoiZXN0X2VudHJlcHJlbmV1cl9zcGVjdGFjbGUiO2I6MDtzOjc6ImVzdF9lc3MiO2I6MTtzOjEwOiJlc3RfZmluZXNzIjtiOjA7czoyMzoiZXN0X29yZ2FuaXNtZV9mb3JtYXRpb24iO2I6MDtzOjEyOiJlc3RfcXVhbGlvcGkiO2I6MDtzOjI4OiJsaXN0ZV9pZF9vcmdhbmlzbWVfZm9ybWF0aW9uIjtOO3M6NzoiZXN0X3JnZSI7YjowO3M6MTg6ImVzdF9zZXJ2aWNlX3B1YmxpYyI7YjowO3M6ODoiZXN0X3NpYWUiO2I6MDtzOjE5OiJlc3Rfc29jaWV0ZV9taXNzaW9uIjtiOjA7czo3OiJlc3RfdWFpIjtiOjA7czoyMzoiaWRlbnRpZmlhbnRfYXNzb2NpYXRpb24iO047czoyOToic3RhdHV0X2VudHJlcHJlbmV1cl9zcGVjdGFjbGUiO047czo5OiJ0eXBlX3NpYWUiO047fX1pOjM7YToyNjp7czo1OiJzaXJlbiI7czo5OiI0MDgzNDQ3NTIiO3M6MTE6Im5vbV9jb21wbGV0IjtzOjM1OiJKQ00gKENJTU0gSU1NT0JJTElFUiAtIElNTU9MSUFJU09OKSI7czoxODoibm9tX3JhaXNvbl9zb2NpYWxlIjtzOjM6IkpDTSI7czo1OiJzaWdsZSI7TjtzOjIxOiJub21icmVfZXRhYmxpc3NlbWVudHMiO2k6MjUyO3M6Mjk6Im5vbWJyZV9ldGFibGlzc2VtZW50c19vdXZlcnRzIjtpOjMyO3M6NToic2llZ2UiO2E6NDU6e3M6MTk6ImFjdGl2aXRlX3ByaW5jaXBhbGUiO3M6NjoiNjguMzFaIjtzOjM1OiJhY3Rpdml0ZV9wcmluY2lwYWxlX3JlZ2lzdHJlX21ldGllciI7TjtzOjMwOiJhbm5lZV90cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO3M6NDoiMjAyMiI7czo3OiJhZHJlc3NlIjtzOjU0OiI1NSBBVkVOVUUgSkVBTiBLVU5UWk1BTk4gMzgzMzAgTU9OVEJPTk5PVC1TQUlOVC1NQVJUSU4iO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTiI7czo1OiJjZWRleCI7TjtzOjE4OiJjb2RlX3BheXNfZXRyYW5nZXIiO047czoxMToiY29kZV9wb3N0YWwiO3M6NToiMzgzMzAiO3M6NzoiY29tbXVuZSI7czo1OiIzODI0OSI7czoxODoiY29tcGxlbWVudF9hZHJlc3NlIjtOO3M6MTE6ImNvb3Jkb25uZWVzIjtzOjE4OiI0NS4yMTY1MjcsNS44MDc4NTMiO3M6MTM6ImRhdGVfY3JlYXRpb24iO3M6MTA6IjIwMTktMDQtMDEiO3M6MTk6ImRhdGVfZGVidXRfYWN0aXZpdGUiO3M6MTA6IjIwMjQtMDctMzEiO3M6MTQ6ImRhdGVfZmVybWV0dXJlIjtOO3M6MTY6ImRhdGVfbWlzZV9hX2pvdXIiO047czoyMjoiZGF0ZV9taXNlX2Ffam91cl9pbnNlZSI7czoxOToiMjAyNC0xMC0wOVQwNToyMzozOCI7czoxMToiZGVwYXJ0ZW1lbnQiO3M6MjoiMzgiO3M6MjE6ImRpc3RyaWJ1dGlvbl9zcGVjaWFsZSI7TjtzOjQ6ImVwY2kiO3M6OToiMjAwMDE4MTY2IjtzOjk6ImVzdF9zaWVnZSI7YjoxO3M6MTg6ImV0YXRfYWRtaW5pc3RyYXRpZiI7czoxOiJBIjtzOjExOiJnZW9fYWRyZXNzZSI7czo1NDoiNTUgQXZlbnVlIEplYW4gS3VudHptYW5uIDM4MzMwIE1vbnRib25ub3QtU2FpbnQtTWFydGluIjtzOjY6Imdlb19pZCI7czoxNjoiMzgyNDlfMDExNV8wMDA1NSI7czoxNzoiaW5kaWNlX3JlcGV0aXRpb24iO047czo4OiJsYXRpdHVkZSI7czo5OiI0NS4yMTY1MjciO3M6MTM6ImxpYmVsbGVfY2VkZXgiO047czoxNToibGliZWxsZV9jb21tdW5lIjtzOjIzOiJNT05UQk9OTk9ULVNBSU5ULU1BUlRJTiI7czoyNDoibGliZWxsZV9jb21tdW5lX2V0cmFuZ2VyIjtOO3M6MjE6ImxpYmVsbGVfcGF5c19ldHJhbmdlciI7TjtzOjEyOiJsaWJlbGxlX3ZvaWUiO3M6MTQ6IkpFQU4gS1VOVFpNQU5OIjtzOjE1OiJsaXN0ZV9lbnNlaWduZXMiO2E6MTp7aTowO3M6Mjk6IkNJTU0gSU1NT0JJTElFUiAtIElNTU9MSUFJU09OIjt9czoxMjoibGlzdGVfZmluZXNzIjtOO3M6MTI6Imxpc3RlX2lkX2JpbyI7TjtzOjEwOiJsaXN0ZV9pZGNjIjtOO3M6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo5OiJsaXN0ZV9yZ2UiO047czo5OiJsaXN0ZV91YWkiO047czo5OiJsb25naXR1ZGUiO3M6ODoiNS44MDc4NTMiO3M6MTQ6Im5vbV9jb21tZXJjaWFsIjtzOjI5OiJDSU1NIElNTU9CSUxJRVIgLSBJTU1PTElBSVNPTiI7czoxMToibnVtZXJvX3ZvaWUiO3M6MjoiNTUiO3M6NjoicmVnaW9uIjtzOjI6Ijg0IjtzOjU6InNpcmV0IjtzOjE0OiI0MDgzNDQ3NTIwMjEyNyI7czozMDoic3RhdHV0X2RpZmZ1c2lvbl9ldGFibGlzc2VtZW50IjtzOjE6Ik8iO3M6MjQ6InRyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7czoyOiIwMSI7czo5OiJ0eXBlX3ZvaWUiO3M6NjoiQVZFTlVFIjt9czoxOToiYWN0aXZpdGVfcHJpbmNpcGFsZSI7czo2OiI2OC4zMVoiO3M6MjA6ImNhdGVnb3JpZV9lbnRyZXByaXNlIjtzOjM6IlBNRSI7czoxOToiY2FyYWN0ZXJlX2VtcGxveWV1ciI7TjtzOjI2OiJhbm5lZV9jYXRlZ29yaWVfZW50cmVwcmlzZSI7czo0OiIyMDIyIjtzOjEzOiJkYXRlX2NyZWF0aW9uIjtzOjEwOiIxOTk2LTExLTA3IjtzOjE0OiJkYXRlX2Zlcm1ldHVyZSI7TjtzOjE2OiJkYXRlX21pc2VfYV9qb3VyIjtzOjE5OiIyMDI1LTAxLTA4VDE3OjU2OjAyIjtzOjIyOiJkYXRlX21pc2VfYV9qb3VyX2luc2VlIjtzOjIzOiIyMDI1LTAxLTAxVDEzOjA4OjU4LjU4OCI7czoyMDoiZGF0ZV9taXNlX2Ffam91cl9ybmUiO3M6MTk6IjIwMjQtMDUtMTlUMTY6NDk6MzMiO3M6MTA6ImRpcmlnZWFudHMiO2E6Mzp7aTowO2E6Nzp7czozOiJub20iO3M6NzoiTUlSSUJFTCI7czo3OiJwcmVub21zIjtzOjc6IkFVUkVMSUUiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo0OiIxOTgwIjtzOjE3OiJkYXRlX2RlX25haXNzYW5jZSI7czo3OiIxOTgwLTA3IjtzOjc6InF1YWxpdGUiO3M6MTk6IkRpcmVjdGV1ciBHw6luw6lyYWwiO3M6MTE6Im5hdGlvbmFsaXRlIjtzOjEwOiJGcmFuw6dhaXNlIjtzOjE0OiJ0eXBlX2RpcmlnZWFudCI7czoxNzoicGVyc29ubmUgcGh5c2lxdWUiO31pOjE7YTo3OntzOjM6Im5vbSI7czo3OiJNSVJJQkVMIjtzOjc6InByZW5vbXMiO3M6MTg6IkpFQU4tQ0xBVURFIERBTklFTCI7czoxODoiYW5uZWVfZGVfbmFpc3NhbmNlIjtzOjQ6IjE5NTEiO3M6MTc6ImRhdGVfZGVfbmFpc3NhbmNlIjtzOjc6IjE5NTEtMDkiO3M6NzoicXVhbGl0ZSI7czoxNzoiUHLDqXNpZGVudCBkZSBTQVMiO3M6MTE6Im5hdGlvbmFsaXRlIjtzOjEwOiJGcmFuw6dhaXNlIjtzOjE0OiJ0eXBlX2RpcmlnZWFudCI7czoxNzoicGVyc29ubmUgcGh5c2lxdWUiO31pOjI7YTo0OntzOjU6InNpcmVuIjtzOjk6IjMzNDIxMzc5MCI7czoxMjoiZGVub21pbmF0aW9uIjtzOjE0OiJNQVpBUlMgR09VUkdVRSI7czo3OiJxdWFsaXRlIjtzOjMzOiJDb21taXNzYWlyZSBhdXggY29tcHRlcyB0aXR1bGFpcmUiO3M6MTQ6InR5cGVfZGlyaWdlYW50IjtzOjE1OiJwZXJzb25uZSBtb3JhbGUiO319czoxODoiZXRhdF9hZG1pbmlzdHJhdGlmIjtzOjE6IkEiO3M6MTY6Im5hdHVyZV9qdXJpZGlxdWUiO3M6NDoiNTcxMCI7czoyNzoic2VjdGlvbl9hY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjE6IkwiO3M6MjQ6InRyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7czoyOiIwMSI7czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtzOjQ6IjIwMjIiO3M6MTY6InN0YXR1dF9kaWZmdXNpb24iO3M6MToiTyI7czoyMzoibWF0Y2hpbmdfZXRhYmxpc3NlbWVudHMiO2E6MTp7aTowO2E6Mjk6e3M6MTk6ImFjdGl2aXRlX3ByaW5jaXBhbGUiO3M6NToiNzAuM0EiO3M6MTI6ImFuY2llbl9zaWVnZSI7YjowO3M6MzA6ImFubmVlX3RyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7TjtzOjc6ImFkcmVzc2UiO3M6Mjc6IjEgUlVFIE5BVElPTkFMRSA0OTY5MCBDT1JPTiI7czoxOToiY2FyYWN0ZXJlX2VtcGxveWV1ciI7czoxOiJOIjtzOjExOiJjb2RlX3Bvc3RhbCI7czo1OiI0OTY5MCI7czo3OiJjb21tdW5lIjtzOjU6IjQ5MTA5IjtzOjEzOiJkYXRlX2NyZWF0aW9uIjtzOjEwOiIyMDAzLTA5LTIzIjtzOjE5OiJkYXRlX2RlYnV0X2FjdGl2aXRlIjtzOjEwOiIyMDA1LTExLTE0IjtzOjE0OiJkYXRlX2Zlcm1ldHVyZSI7czoxMDoiMjAwNS0xMS0xNCI7czo0OiJlcGNpIjtzOjk6IjIwMDA3MTY3OCI7czo5OiJlc3Rfc2llZ2UiO2I6MDtzOjE4OiJldGF0X2FkbWluaXN0cmF0aWYiO3M6MToiRiI7czo2OiJnZW9faWQiO3M6MTY6IjQ5MTA5XzAxNTFfMDAwMDEiO3M6ODoibGF0aXR1ZGUiO3M6OToiNDcuMTI3MDY4IjtzOjE1OiJsaWJlbGxlX2NvbW11bmUiO3M6NToiQ09ST04iO3M6MTU6Imxpc3RlX2Vuc2VpZ25lcyI7YToxOntpOjA7czoxNToiQ0lNTSBJTU1PQklMSUVSIjt9czoxMjoibGlzdGVfZmluZXNzIjtOO3M6MTI6Imxpc3RlX2lkX2JpbyI7TjtzOjEwOiJsaXN0ZV9pZGNjIjtOO3M6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo5OiJsaXN0ZV9yZ2UiO047czo5OiJsaXN0ZV91YWkiO047czo5OiJsb25naXR1ZGUiO3M6OToiLTAuNjQ2MzM0IjtzOjE0OiJub21fY29tbWVyY2lhbCI7TjtzOjY6InJlZ2lvbiI7czoyOiI1MiI7czo1OiJzaXJldCI7czoxNDoiNDA4MzQ0NzUyMDA0NzciO3M6MzA6InN0YXR1dF9kaWZmdXNpb25fZXRhYmxpc3NlbWVudCI7czoxOiJPIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047fX1zOjg6ImZpbmFuY2VzIjthOjE6e2k6MjAyMzthOjI6e3M6MjoiY2EiO2k6MDtzOjEyOiJyZXN1bHRhdF9uZXQiO2k6LTY5NTQwMjt9fXM6MTE6ImNvbXBsZW1lbnRzIjthOjIxOntzOjI1OiJjb2xsZWN0aXZpdGVfdGVycml0b3JpYWxlIjtOO3M6MzI6ImNvbnZlbnRpb25fY29sbGVjdGl2ZV9yZW5zZWlnbmVlIjtiOjA7czoxMDoibGlzdGVfaWRjYyI7TjtzOjE3OiJlZ2Fwcm9fcmVuc2VpZ25lZSI7YjowO3M6MTU6ImVzdF9hc3NvY2lhdGlvbiI7YjowO3M6NzoiZXN0X2JpbyI7YjowO3M6Mjc6ImVzdF9lbnRyZXByZW5ldXJfaW5kaXZpZHVlbCI7YjowO3M6MjY6ImVzdF9lbnRyZXByZW5ldXJfc3BlY3RhY2xlIjtiOjA7czo3OiJlc3RfZXNzIjtiOjA7czoxMDoiZXN0X2ZpbmVzcyI7YjowO3M6MjM6ImVzdF9vcmdhbmlzbWVfZm9ybWF0aW9uIjtiOjA7czoxMjoiZXN0X3F1YWxpb3BpIjtiOjA7czoyODoibGlzdGVfaWRfb3JnYW5pc21lX2Zvcm1hdGlvbiI7TjtzOjc6ImVzdF9yZ2UiO2I6MDtzOjE4OiJlc3Rfc2VydmljZV9wdWJsaWMiO2I6MDtzOjg6ImVzdF9zaWFlIjtiOjA7czoxOToiZXN0X3NvY2lldGVfbWlzc2lvbiI7YjowO3M6NzoiZXN0X3VhaSI7YjowO3M6MjM6ImlkZW50aWZpYW50X2Fzc29jaWF0aW9uIjtOO3M6Mjk6InN0YXR1dF9lbnRyZXByZW5ldXJfc3BlY3RhY2xlIjtOO3M6OToidHlwZV9zaWFlIjtOO319aTo0O2E6MjY6e3M6NToic2lyZW4iO3M6OToiMzI5NTQzMTEwIjtzOjExOiJub21fY29tcGxldCI7czozODoiU0FSTCBBVSBWSU4gREUgRlJBTkNFIChUT05UT04gQkFDQ0hVUykiO3M6MTg6Im5vbV9yYWlzb25fc29jaWFsZSI7czoyMToiU0FSTCBBVSBWSU4gREUgRlJBTkNFIjtzOjU6InNpZ2xlIjtOO3M6MjE6Im5vbWJyZV9ldGFibGlzc2VtZW50cyI7aToyNjtzOjI5OiJub21icmVfZXRhYmxpc3NlbWVudHNfb3V2ZXJ0cyI7aToxMTtzOjU6InNpZWdlIjthOjQ1OntzOjE5OiJhY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjY6IjQ2LjM0WiI7czozNToiYWN0aXZpdGVfcHJpbmNpcGFsZV9yZWdpc3RyZV9tZXRpZXIiO047czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtzOjQ6IjIwMjIiO3M6NzoiYWRyZXNzZSI7czoxOToiTEUgUkVWRSA0OTY5MCBDT1JPTiI7czoxOToiY2FyYWN0ZXJlX2VtcGxveWV1ciI7czoxOiJPIjtzOjU6ImNlZGV4IjtOO3M6MTg6ImNvZGVfcGF5c19ldHJhbmdlciI7TjtzOjExOiJjb2RlX3Bvc3RhbCI7czo1OiI0OTY5MCI7czo3OiJjb21tdW5lIjtzOjU6IjQ5MTA5IjtzOjE4OiJjb21wbGVtZW50X2FkcmVzc2UiO047czoxMToiY29vcmRvbm5lZXMiO3M6MTk6IjQ3LjEyOTk1NCwtMC42MDk4OTYiO3M6MTM6ImRhdGVfY3JlYXRpb24iO3M6MTA6IjE5ODQtMDMtMDEiO3M6MTk6ImRhdGVfZGVidXRfYWN0aXZpdGUiO3M6MTA6IjIwMjMtMDQtMDEiO3M6MTQ6ImRhdGVfZmVybWV0dXJlIjtOO3M6MTY6ImRhdGVfbWlzZV9hX2pvdXIiO047czoyMjoiZGF0ZV9taXNlX2Ffam91cl9pbnNlZSI7czoxOToiMjAyNC0wMy0zMFQwMzozNjoyMSI7czoxMToiZGVwYXJ0ZW1lbnQiO3M6MjoiNDkiO3M6MjE6ImRpc3RyaWJ1dGlvbl9zcGVjaWFsZSI7TjtzOjQ6ImVwY2kiO3M6OToiMjAwMDcxNjc4IjtzOjk6ImVzdF9zaWVnZSI7YjoxO3M6MTg6ImV0YXRfYWRtaW5pc3RyYXRpZiI7czoxOiJBIjtzOjExOiJnZW9fYWRyZXNzZSI7czoyOToiTGlldSBEaXQgTGUgUsOqdmUgNDk2OTAgQ29yb24iO3M6NjoiZ2VvX2lkIjtzOjEyOiI0OTEwOV9iMDl0YWgiO3M6MTc6ImluZGljZV9yZXBldGl0aW9uIjtOO3M6ODoibGF0aXR1ZGUiO3M6OToiNDcuMTI5OTU0IjtzOjEzOiJsaWJlbGxlX2NlZGV4IjtOO3M6MTU6ImxpYmVsbGVfY29tbXVuZSI7czo1OiJDT1JPTiI7czoyNDoibGliZWxsZV9jb21tdW5lX2V0cmFuZ2VyIjtOO3M6MjE6ImxpYmVsbGVfcGF5c19ldHJhbmdlciI7TjtzOjEyOiJsaWJlbGxlX3ZvaWUiO3M6NzoiTEUgUkVWRSI7czoxNToibGlzdGVfZW5zZWlnbmVzIjthOjE6e2k6MDtzOjE0OiJUT05UT04gQkFDQ0hVUyI7fXM6MTI6Imxpc3RlX2ZpbmVzcyI7TjtzOjEyOiJsaXN0ZV9pZF9iaW8iO047czoxMDoibGlzdGVfaWRjYyI7YToxOntpOjA7czo0OiIwNDkzIjt9czoyODoibGlzdGVfaWRfb3JnYW5pc21lX2Zvcm1hdGlvbiI7TjtzOjk6Imxpc3RlX3JnZSI7TjtzOjk6Imxpc3RlX3VhaSI7TjtzOjk6ImxvbmdpdHVkZSI7czo5OiItMC42MDk4OTYiO3M6MTQ6Im5vbV9jb21tZXJjaWFsIjtzOjE0OiJUT05UT04gQkFDQ0hVUyI7czoxMToibnVtZXJvX3ZvaWUiO047czo2OiJyZWdpb24iO3M6MjoiNTIiO3M6NToic2lyZXQiO3M6MTQ6IjMyOTU0MzExMDAwMDEyIjtzOjMwOiJzdGF0dXRfZGlmZnVzaW9uX2V0YWJsaXNzZW1lbnQiO3M6MToiTyI7czoyNDoidHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtzOjI6IjAyIjtzOjk6InR5cGVfdm9pZSI7Tjt9czoxOToiYWN0aXZpdGVfcHJpbmNpcGFsZSI7czo2OiI0Ni4zNFoiO3M6MjA6ImNhdGVnb3JpZV9lbnRyZXByaXNlIjtzOjM6IlBNRSI7czoxOToiY2FyYWN0ZXJlX2VtcGxveWV1ciI7TjtzOjI2OiJhbm5lZV9jYXRlZ29yaWVfZW50cmVwcmlzZSI7czo0OiIyMDIyIjtzOjEzOiJkYXRlX2NyZWF0aW9uIjtzOjEwOiIxOTg0LTAzLTAxIjtzOjE0OiJkYXRlX2Zlcm1ldHVyZSI7TjtzOjE2OiJkYXRlX21pc2VfYV9qb3VyIjtzOjE5OiIyMDI1LTAxLTA4VDEzOjMyOjQ0IjtzOjIyOiJkYXRlX21pc2VfYV9qb3VyX2luc2VlIjtzOjE5OiIyMDI0LTA0LTE2VDA1OjIyOjQ5IjtzOjIwOiJkYXRlX21pc2VfYV9qb3VyX3JuZSI7czoxOToiMjAyNC0wNS0xOVQxNjo0OTozMyI7czoxMDoiZGlyaWdlYW50cyI7YToxOntpOjA7YTo3OntzOjM6Im5vbSI7czo3OiJCT1VSR0VUIjtzOjc6InByZW5vbXMiO3M6NjoiUElFUlJFIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NDoiMTk4NyI7czoxNzoiZGF0ZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk4Ny0wNyI7czo3OiJxdWFsaXRlIjtzOjE3OiJQcsOpc2lkZW50IGRlIFNBUyI7czoxMToibmF0aW9uYWxpdGUiO3M6MTA6IkZyYW7Dp2Fpc2UiO3M6MTQ6InR5cGVfZGlyaWdlYW50IjtzOjE3OiJwZXJzb25uZSBwaHlzaXF1ZSI7fX1zOjE4OiJldGF0X2FkbWluaXN0cmF0aWYiO3M6MToiQSI7czoxNjoibmF0dXJlX2p1cmlkaXF1ZSI7czo0OiI1NzEwIjtzOjI3OiJzZWN0aW9uX2FjdGl2aXRlX3ByaW5jaXBhbGUiO3M6MToiRyI7czoyNDoidHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtzOjI6IjExIjtzOjMwOiJhbm5lZV90cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO3M6NDoiMjAyMiI7czoxNjoic3RhdHV0X2RpZmZ1c2lvbiI7czoxOiJPIjtzOjIzOiJtYXRjaGluZ19ldGFibGlzc2VtZW50cyI7YToxOntpOjA7YToyOTp7czoxOToiYWN0aXZpdGVfcHJpbmNpcGFsZSI7czo2OiI0Ni4zNFoiO3M6MTI6ImFuY2llbl9zaWVnZSI7YjowO3M6MzA6ImFubmVlX3RyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7czo0OiIyMDIyIjtzOjc6ImFkcmVzc2UiO3M6MTk6IkxFIFJFVkUgNDk2OTAgQ09ST04iO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTyI7czoxMToiY29kZV9wb3N0YWwiO3M6NToiNDk2OTAiO3M6NzoiY29tbXVuZSI7czo1OiI0OTEwOSI7czoxMzoiZGF0ZV9jcmVhdGlvbiI7czoxMDoiMTk4NC0wMy0wMSI7czoxOToiZGF0ZV9kZWJ1dF9hY3Rpdml0ZSI7czoxMDoiMjAyMy0wNC0wMSI7czoxNDoiZGF0ZV9mZXJtZXR1cmUiO047czo0OiJlcGNpIjtzOjk6IjIwMDA3MTY3OCI7czo5OiJlc3Rfc2llZ2UiO2I6MTtzOjE4OiJldGF0X2FkbWluaXN0cmF0aWYiO3M6MToiQSI7czo2OiJnZW9faWQiO3M6MTI6IjQ5MTA5X2IwOXRhaCI7czo4OiJsYXRpdHVkZSI7czo5OiI0Ny4xMjk5NTQiO3M6MTU6ImxpYmVsbGVfY29tbXVuZSI7czo1OiJDT1JPTiI7czoxNToibGlzdGVfZW5zZWlnbmVzIjthOjE6e2k6MDtzOjE0OiJUT05UT04gQkFDQ0hVUyI7fXM6MTI6Imxpc3RlX2ZpbmVzcyI7TjtzOjEyOiJsaXN0ZV9pZF9iaW8iO047czoxMDoibGlzdGVfaWRjYyI7YToxOntpOjA7czo0OiIwNDkzIjt9czoyODoibGlzdGVfaWRfb3JnYW5pc21lX2Zvcm1hdGlvbiI7TjtzOjk6Imxpc3RlX3JnZSI7TjtzOjk6Imxpc3RlX3VhaSI7TjtzOjk6ImxvbmdpdHVkZSI7czo5OiItMC42MDk4OTYiO3M6MTQ6Im5vbV9jb21tZXJjaWFsIjtzOjE0OiJUT05UT04gQkFDQ0hVUyI7czo2OiJyZWdpb24iO3M6MjoiNTIiO3M6NToic2lyZXQiO3M6MTQ6IjMyOTU0MzExMDAwMDEyIjtzOjMwOiJzdGF0dXRfZGlmZnVzaW9uX2V0YWJsaXNzZW1lbnQiO3M6MToiTyI7czoyNDoidHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtzOjI6IjAyIjt9fXM6ODoiZmluYW5jZXMiO2E6MTp7aToyMDIzO2E6Mjp7czoyOiJjYSI7aToxNzk1Mzg0O3M6MTI6InJlc3VsdGF0X25ldCI7aToyNDcyMTt9fXM6MTE6ImNvbXBsZW1lbnRzIjthOjIxOntzOjI1OiJjb2xsZWN0aXZpdGVfdGVycml0b3JpYWxlIjtOO3M6MzI6ImNvbnZlbnRpb25fY29sbGVjdGl2ZV9yZW5zZWlnbmVlIjtiOjE7czoxMDoibGlzdGVfaWRjYyI7YToxOntpOjA7czo0OiIwNDkzIjt9czoxNzoiZWdhcHJvX3JlbnNlaWduZWUiO2I6MDtzOjE1OiJlc3RfYXNzb2NpYXRpb24iO2I6MDtzOjc6ImVzdF9iaW8iO2I6MDtzOjI3OiJlc3RfZW50cmVwcmVuZXVyX2luZGl2aWR1ZWwiO2I6MDtzOjI2OiJlc3RfZW50cmVwcmVuZXVyX3NwZWN0YWNsZSI7YjowO3M6NzoiZXN0X2VzcyI7YjowO3M6MTA6ImVzdF9maW5lc3MiO2I6MDtzOjIzOiJlc3Rfb3JnYW5pc21lX2Zvcm1hdGlvbiI7YjowO3M6MTI6ImVzdF9xdWFsaW9waSI7YjowO3M6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo3OiJlc3RfcmdlIjtiOjA7czoxODoiZXN0X3NlcnZpY2VfcHVibGljIjtiOjA7czo4OiJlc3Rfc2lhZSI7YjowO3M6MTk6ImVzdF9zb2NpZXRlX21pc3Npb24iO2I6MDtzOjc6ImVzdF91YWkiO2I6MDtzOjIzOiJpZGVudGlmaWFudF9hc3NvY2lhdGlvbiI7TjtzOjI5OiJzdGF0dXRfZW50cmVwcmVuZXVyX3NwZWN0YWNsZSI7TjtzOjk6InR5cGVfc2lhZSI7Tjt9fWk6NTthOjI2OntzOjU6InNpcmVuIjtzOjk6IjIxNDkwMTA5MiI7czoxMToibm9tX2NvbXBsZXQiO3M6MTY6IkNPTU1VTkUgREUgQ09ST04iO3M6MTg6Im5vbV9yYWlzb25fc29jaWFsZSI7czoxNjoiQ09NTVVORSBERSBDT1JPTiI7czo1OiJzaWdsZSI7TjtzOjIxOiJub21icmVfZXRhYmxpc3NlbWVudHMiO2k6MTc7czoyOToibm9tYnJlX2V0YWJsaXNzZW1lbnRzX291dmVydHMiO2k6ODtzOjU6InNpZWdlIjthOjQ1OntzOjE5OiJhY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjY6Ijg0LjExWiI7czozNToiYWN0aXZpdGVfcHJpbmNpcGFsZV9yZWdpc3RyZV9tZXRpZXIiO047czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtzOjQ6IjIwMjIiO3M6NzoiYWRyZXNzZSI7czozMjoiMiBSVUUgREFWSUQgRCdBTkdFUlMgNDk2OTAgQ09ST04iO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTyI7czo1OiJjZWRleCI7TjtzOjE4OiJjb2RlX3BheXNfZXRyYW5nZXIiO047czoxMToiY29kZV9wb3N0YWwiO3M6NToiNDk2OTAiO3M6NzoiY29tbXVuZSI7czo1OiI0OTEwOSI7czoxODoiY29tcGxlbWVudF9hZHJlc3NlIjtOO3M6MTE6ImNvb3Jkb25uZWVzIjtzOjE5OiI0Ny4xMjc5ODcsLTAuNjQ1NzczIjtzOjEzOiJkYXRlX2NyZWF0aW9uIjtzOjEwOiIyMDAxLTA2LTAxIjtzOjE5OiJkYXRlX2RlYnV0X2FjdGl2aXRlIjtzOjEwOiIyMDA4LTAxLTAxIjtzOjE0OiJkYXRlX2Zlcm1ldHVyZSI7TjtzOjE2OiJkYXRlX21pc2VfYV9qb3VyIjtOO3M6MjI6ImRhdGVfbWlzZV9hX2pvdXJfaW5zZWUiO3M6MTk6IjIwMjQtMDMtMzBUMDI6MDk6NTYiO3M6MTE6ImRlcGFydGVtZW50IjtzOjI6IjQ5IjtzOjIxOiJkaXN0cmlidXRpb25fc3BlY2lhbGUiO047czo0OiJlcGNpIjtzOjk6IjIwMDA3MTY3OCI7czo5OiJlc3Rfc2llZ2UiO2I6MTtzOjE4OiJldGF0X2FkbWluaXN0cmF0aWYiO3M6MToiQSI7czoxMToiZ2VvX2FkcmVzc2UiO3M6MzU6IjIgUnVlICBEYXZpZCBk4oCZQW5nZXJzIDQ5NjkwIENvcm9uIjtzOjY6Imdlb19pZCI7czoxNjoiNDkxMDlfMDIyMF8wMDAwMiI7czoxNzoiaW5kaWNlX3JlcGV0aXRpb24iO047czo4OiJsYXRpdHVkZSI7czo5OiI0Ny4xMjc5ODciO3M6MTM6ImxpYmVsbGVfY2VkZXgiO047czoxNToibGliZWxsZV9jb21tdW5lIjtzOjU6IkNPUk9OIjtzOjI0OiJsaWJlbGxlX2NvbW11bmVfZXRyYW5nZXIiO047czoyMToibGliZWxsZV9wYXlzX2V0cmFuZ2VyIjtOO3M6MTI6ImxpYmVsbGVfdm9pZSI7czoxNDoiREFWSUQgRCdBTkdFUlMiO3M6MTU6Imxpc3RlX2Vuc2VpZ25lcyI7YToxOntpOjA7czo2OiJNQUlSSUUiO31zOjEyOiJsaXN0ZV9maW5lc3MiO047czoxMjoibGlzdGVfaWRfYmlvIjtOO3M6MTA6Imxpc3RlX2lkY2MiO2E6MTp7aTowO3M6NDoiNTAyMSI7fXM6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo5OiJsaXN0ZV9yZ2UiO047czo5OiJsaXN0ZV91YWkiO047czo5OiJsb25naXR1ZGUiO3M6OToiLTAuNjQ1NzczIjtzOjE0OiJub21fY29tbWVyY2lhbCI7TjtzOjExOiJudW1lcm9fdm9pZSI7czoxOiIyIjtzOjY6InJlZ2lvbiI7czoyOiI1MiI7czo1OiJzaXJldCI7czoxNDoiMjE0OTAxMDkyMDAwNTMiO3M6MzA6InN0YXR1dF9kaWZmdXNpb25fZXRhYmxpc3NlbWVudCI7czoxOiJPIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO3M6MjoiMTIiO3M6OToidHlwZV92b2llIjtzOjM6IlJVRSI7fXM6MTk6ImFjdGl2aXRlX3ByaW5jaXBhbGUiO3M6NjoiODQuMTFaIjtzOjIwOiJjYXRlZ29yaWVfZW50cmVwcmlzZSI7czozOiJQTUUiO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO047czoyNjoiYW5uZWVfY2F0ZWdvcmllX2VudHJlcHJpc2UiO3M6NDoiMjAyMiI7czoxMzoiZGF0ZV9jcmVhdGlvbiI7czoxMDoiMTk4My0wMy0wMSI7czoxNDoiZGF0ZV9mZXJtZXR1cmUiO047czoxNjoiZGF0ZV9taXNlX2Ffam91ciI7czoxOToiMjAyNS0wMS0wOFQxMzoxMTo0MCI7czoyMjoiZGF0ZV9taXNlX2Ffam91cl9pbnNlZSI7czoxOToiMjAyNC0xMi0wNVQxNToyMjoyNCI7czoyMDoiZGF0ZV9taXNlX2Ffam91cl9ybmUiO047czoxMDoiZGlyaWdlYW50cyI7YTowOnt9czoxODoiZXRhdF9hZG1pbmlzdHJhdGlmIjtzOjE6IkEiO3M6MTY6Im5hdHVyZV9qdXJpZGlxdWUiO3M6NDoiNzIxMCI7czoyNzoic2VjdGlvbl9hY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjE6Ik8iO3M6MjQ6InRyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7czoyOiIxMiI7czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtzOjQ6IjIwMjIiO3M6MTY6InN0YXR1dF9kaWZmdXNpb24iO3M6MToiTyI7czoyMzoibWF0Y2hpbmdfZXRhYmxpc3NlbWVudHMiO2E6MTc6e2k6MDthOjI5OntzOjE5OiJhY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjY6Ijg0LjExWiI7czoxMjoiYW5jaWVuX3NpZWdlIjtiOjA7czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtzOjQ6IjIwMjIiO3M6NzoiYWRyZXNzZSI7czozMjoiMiBSVUUgREFWSUQgRCdBTkdFUlMgNDk2OTAgQ09ST04iO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTyI7czoxMToiY29kZV9wb3N0YWwiO3M6NToiNDk2OTAiO3M6NzoiY29tbXVuZSI7czo1OiI0OTEwOSI7czoxMzoiZGF0ZV9jcmVhdGlvbiI7czoxMDoiMjAwMS0wNi0wMSI7czoxOToiZGF0ZV9kZWJ1dF9hY3Rpdml0ZSI7czoxMDoiMjAwOC0wMS0wMSI7czoxNDoiZGF0ZV9mZXJtZXR1cmUiO047czo0OiJlcGNpIjtzOjk6IjIwMDA3MTY3OCI7czo5OiJlc3Rfc2llZ2UiO2I6MTtzOjE4OiJldGF0X2FkbWluaXN0cmF0aWYiO3M6MToiQSI7czo2OiJnZW9faWQiO3M6MTY6IjQ5MTA5XzAyMjBfMDAwMDIiO3M6ODoibGF0aXR1ZGUiO3M6OToiNDcuMTI3OTg3IjtzOjE1OiJsaWJlbGxlX2NvbW11bmUiO3M6NToiQ09ST04iO3M6MTU6Imxpc3RlX2Vuc2VpZ25lcyI7YToxOntpOjA7czo2OiJNQUlSSUUiO31zOjEyOiJsaXN0ZV9maW5lc3MiO047czoxMjoibGlzdGVfaWRfYmlvIjtOO3M6MTA6Imxpc3RlX2lkY2MiO2E6MTp7aTowO3M6NDoiNTAyMSI7fXM6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo5OiJsaXN0ZV9yZ2UiO047czo5OiJsaXN0ZV91YWkiO047czo5OiJsb25naXR1ZGUiO3M6OToiLTAuNjQ1NzczIjtzOjE0OiJub21fY29tbWVyY2lhbCI7TjtzOjY6InJlZ2lvbiI7czoyOiI1MiI7czo1OiJzaXJldCI7czoxNDoiMjE0OTAxMDkyMDAwNTMiO3M6MzA6InN0YXR1dF9kaWZmdXNpb25fZXRhYmxpc3NlbWVudCI7czoxOiJPIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO3M6MjoiMTIiO31pOjE7YToyOTp7czoxOToiYWN0aXZpdGVfcHJpbmNpcGFsZSI7czo2OiI0Mi45OVoiO3M6MTI6ImFuY2llbl9zaWVnZSI7YjowO3M6MzA6ImFubmVlX3RyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7TjtzOjc6ImFkcmVzc2UiO3M6Mzk6Ik1BSVJJRSAyIFJVRSBEQVZJRCBEJ0FOR0VSUyA0OTY5MCBDT1JPTiI7czoxOToiY2FyYWN0ZXJlX2VtcGxveWV1ciI7czoxOiJOIjtzOjExOiJjb2RlX3Bvc3RhbCI7czo1OiI0OTY5MCI7czo3OiJjb21tdW5lIjtzOjU6IjQ5MTA5IjtzOjEzOiJkYXRlX2NyZWF0aW9uIjtzOjEwOiIyMDAxLTA2LTAxIjtzOjE5OiJkYXRlX2RlYnV0X2FjdGl2aXRlIjtzOjEwOiIyMDA4LTAxLTAxIjtzOjE0OiJkYXRlX2Zlcm1ldHVyZSI7TjtzOjQ6ImVwY2kiO3M6OToiMjAwMDcxNjc4IjtzOjk6ImVzdF9zaWVnZSI7YjowO3M6MTg6ImV0YXRfYWRtaW5pc3RyYXRpZiI7czoxOiJBIjtzOjY6Imdlb19pZCI7czoxNjoiNDkxMDlfMDIyMF8wMDAwMiI7czo4OiJsYXRpdHVkZSI7czo5OiI0Ny4xMjc5ODciO3M6MTU6ImxpYmVsbGVfY29tbXVuZSI7czo1OiJDT1JPTiI7czoxNToibGlzdGVfZW5zZWlnbmVzIjthOjE6e2k6MDtzOjM0OiJMT1RJU1NFTUVOVCBDT01NVU5BTCBNT1VMSU4gTkVVRiAzIjt9czoxMjoibGlzdGVfZmluZXNzIjtOO3M6MTI6Imxpc3RlX2lkX2JpbyI7TjtzOjEwOiJsaXN0ZV9pZGNjIjtOO3M6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo5OiJsaXN0ZV9yZ2UiO047czo5OiJsaXN0ZV91YWkiO047czo5OiJsb25naXR1ZGUiO3M6OToiLTAuNjQ1NzczIjtzOjE0OiJub21fY29tbWVyY2lhbCI7TjtzOjY6InJlZ2lvbiI7czoyOiI1MiI7czo1OiJzaXJldCI7czoxNDoiMjE0OTAxMDkyMDAwNjEiO3M6MzA6InN0YXR1dF9kaWZmdXNpb25fZXRhYmxpc3NlbWVudCI7czoxOiJPIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047fWk6MjthOjI5OntzOjE5OiJhY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjY6IjQyLjk5WiI7czoxMjoiYW5jaWVuX3NpZWdlIjtiOjA7czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO3M6NzoiYWRyZXNzZSI7czozOToiTUFJUklFIDIgUlVFIERBVklEIEQnQU5HRVJTIDQ5NjkwIENPUk9OIjtzOjE5OiJjYXJhY3RlcmVfZW1wbG95ZXVyIjtzOjE6Ik4iO3M6MTE6ImNvZGVfcG9zdGFsIjtzOjU6IjQ5NjkwIjtzOjc6ImNvbW11bmUiO3M6NToiNDkxMDkiO3M6MTM6ImRhdGVfY3JlYXRpb24iO3M6MTA6IjIwMDMtMDEtMDEiO3M6MTk6ImRhdGVfZGVidXRfYWN0aXZpdGUiO3M6MTA6IjIwMDgtMDEtMDEiO3M6MTQ6ImRhdGVfZmVybWV0dXJlIjtOO3M6NDoiZXBjaSI7czo5OiIyMDAwNzE2NzgiO3M6OToiZXN0X3NpZWdlIjtiOjA7czoxODoiZXRhdF9hZG1pbmlzdHJhdGlmIjtzOjE6IkEiO3M6NjoiZ2VvX2lkIjtzOjE2OiI0OTEwOV8wMjIwXzAwMDAyIjtzOjg6ImxhdGl0dWRlIjtzOjk6IjQ3LjEyNzk4NyI7czoxNToibGliZWxsZV9jb21tdW5lIjtzOjU6IkNPUk9OIjtzOjE1OiJsaXN0ZV9lbnNlaWduZXMiO2E6MTp7aTowO3M6MjM6IkxPVElTU0VNRU5UIEZBUklORUFVIElJIjt9czoxMjoibGlzdGVfZmluZXNzIjtOO3M6MTI6Imxpc3RlX2lkX2JpbyI7TjtzOjEwOiJsaXN0ZV9pZGNjIjtOO3M6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo5OiJsaXN0ZV9yZ2UiO047czo5OiJsaXN0ZV91YWkiO047czo5OiJsb25naXR1ZGUiO3M6OToiLTAuNjQ1NzczIjtzOjE0OiJub21fY29tbWVyY2lhbCI7TjtzOjY6InJlZ2lvbiI7czoyOiI1MiI7czo1OiJzaXJldCI7czoxNDoiMjE0OTAxMDkyMDAwOTUiO3M6MzA6InN0YXR1dF9kaWZmdXNpb25fZXRhYmxpc3NlbWVudCI7czoxOiJPIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047fWk6MzthOjI5OntzOjE5OiJhY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjY6IjQyLjk5WiI7czoxMjoiYW5jaWVuX3NpZWdlIjtiOjA7czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO3M6NzoiYWRyZXNzZSI7czozOToiTUFJUklFIDIgUlVFIERBVklEIEQnQU5HRVJTIDQ5NjkwIENPUk9OIjtzOjE5OiJjYXJhY3RlcmVfZW1wbG95ZXVyIjtzOjE6Ik4iO3M6MTE6ImNvZGVfcG9zdGFsIjtzOjU6IjQ5NjkwIjtzOjc6ImNvbW11bmUiO3M6NToiNDkxMDkiO3M6MTM6ImRhdGVfY3JlYXRpb24iO3M6MTA6IjIwMDgtMDMtMDQiO3M6MTk6ImRhdGVfZGVidXRfYWN0aXZpdGUiO3M6MTA6IjIwMDgtMDMtMDQiO3M6MTQ6ImRhdGVfZmVybWV0dXJlIjtOO3M6NDoiZXBjaSI7czo5OiIyMDAwNzE2NzgiO3M6OToiZXN0X3NpZWdlIjtiOjA7czoxODoiZXRhdF9hZG1pbmlzdHJhdGlmIjtzOjE6IkEiO3M6NjoiZ2VvX2lkIjtzOjE2OiI0OTEwOV8wMjIwXzAwMDAyIjtzOjg6ImxhdGl0dWRlIjtzOjk6IjQ3LjEyNzk4NyI7czoxNToibGliZWxsZV9jb21tdW5lIjtzOjU6IkNPUk9OIjtzOjE1OiJsaXN0ZV9lbnNlaWduZXMiO2E6MTp7aTowO3M6Mjc6IkxPVElTU0VNRU5UIExFUyBCT1VTU0FJTlMgMiI7fXM6MTI6Imxpc3RlX2ZpbmVzcyI7TjtzOjEyOiJsaXN0ZV9pZF9iaW8iO047czoxMDoibGlzdGVfaWRjYyI7TjtzOjI4OiJsaXN0ZV9pZF9vcmdhbmlzbWVfZm9ybWF0aW9uIjtOO3M6OToibGlzdGVfcmdlIjtOO3M6OToibGlzdGVfdWFpIjtOO3M6OToibG9uZ2l0dWRlIjtzOjk6Ii0wLjY0NTc3MyI7czoxNDoibm9tX2NvbW1lcmNpYWwiO047czo2OiJyZWdpb24iO3M6MjoiNTIiO3M6NToic2lyZXQiO3M6MTQ6IjIxNDkwMTA5MjAwMTI5IjtzOjMwOiJzdGF0dXRfZGlmZnVzaW9uX2V0YWJsaXNzZW1lbnQiO3M6MToiTyI7czoyNDoidHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO31pOjQ7YToyOTp7czoxOToiYWN0aXZpdGVfcHJpbmNpcGFsZSI7czo2OiI0Mi45OVoiO3M6MTI6ImFuY2llbl9zaWVnZSI7YjowO3M6MzA6ImFubmVlX3RyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7TjtzOjc6ImFkcmVzc2UiO3M6MzI6IjIgUlVFIERBVklEIEQnQU5HRVJTIDQ5NjkwIENPUk9OIjtzOjE5OiJjYXJhY3RlcmVfZW1wbG95ZXVyIjtzOjE6Ik4iO3M6MTE6ImNvZGVfcG9zdGFsIjtzOjU6IjQ5NjkwIjtzOjc6ImNvbW11bmUiO3M6NToiNDkxMDkiO3M6MTM6ImRhdGVfY3JlYXRpb24iO3M6MTA6IjIwMTItMDMtMjciO3M6MTk6ImRhdGVfZGVidXRfYWN0aXZpdGUiO3M6MTA6IjIwMTItMDMtMjciO3M6MTQ6ImRhdGVfZmVybWV0dXJlIjtOO3M6NDoiZXBjaSI7czo5OiIyMDAwNzE2NzgiO3M6OToiZXN0X3NpZWdlIjtiOjA7czoxODoiZXRhdF9hZG1pbmlzdHJhdGlmIjtzOjE6IkEiO3M6NjoiZ2VvX2lkIjtzOjE2OiI0OTEwOV8wMjIwXzAwMDAyIjtzOjg6ImxhdGl0dWRlIjtzOjk6IjQ3LjEyNzk4NyI7czoxNToibGliZWxsZV9jb21tdW5lIjtzOjU6IkNPUk9OIjtzOjE1OiJsaXN0ZV9lbnNlaWduZXMiO2E6MTp7aTowO3M6MjI6IkxPVElTU0VNRU5UIExFUyBHRU5FVFMiO31zOjEyOiJsaXN0ZV9maW5lc3MiO047czoxMjoibGlzdGVfaWRfYmlvIjtOO3M6MTA6Imxpc3RlX2lkY2MiO047czoyODoibGlzdGVfaWRfb3JnYW5pc21lX2Zvcm1hdGlvbiI7TjtzOjk6Imxpc3RlX3JnZSI7TjtzOjk6Imxpc3RlX3VhaSI7TjtzOjk6ImxvbmdpdHVkZSI7czo5OiItMC42NDU3NzMiO3M6MTQ6Im5vbV9jb21tZXJjaWFsIjtOO3M6NjoicmVnaW9uIjtzOjI6IjUyIjtzOjU6InNpcmV0IjtzOjE0OiIyMTQ5MDEwOTIwMDEzNyI7czozMDoic3RhdHV0X2RpZmZ1c2lvbl9ldGFibGlzc2VtZW50IjtzOjE6Ik8iO3M6MjQ6InRyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7Tjt9aTo1O2E6Mjk6e3M6MTk6ImFjdGl2aXRlX3ByaW5jaXBhbGUiO3M6NjoiNDIuOTlaIjtzOjEyOiJhbmNpZW5fc2llZ2UiO2I6MDtzOjMwOiJhbm5lZV90cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047czo3OiJhZHJlc3NlIjtzOjM5OiJNQUlSSUUgMiBSVUUgREFWSUQgRCdBTkdFUlMgNDk2OTAgQ09ST04iO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTiI7czoxMToiY29kZV9wb3N0YWwiO3M6NToiNDk2OTAiO3M6NzoiY29tbXVuZSI7czo1OiI0OTEwOSI7czoxMzoiZGF0ZV9jcmVhdGlvbiI7czoxMDoiMjAxOC0wMy0yMiI7czoxOToiZGF0ZV9kZWJ1dF9hY3Rpdml0ZSI7czoxMDoiMjAxOC0wMy0yMiI7czoxNDoiZGF0ZV9mZXJtZXR1cmUiO047czo0OiJlcGNpIjtzOjk6IjIwMDA3MTY3OCI7czo5OiJlc3Rfc2llZ2UiO2I6MDtzOjE4OiJldGF0X2FkbWluaXN0cmF0aWYiO3M6MToiQSI7czo2OiJnZW9faWQiO3M6MTY6IjQ5MTA5XzAyMjBfMDAwMDIiO3M6ODoibGF0aXR1ZGUiO3M6OToiNDcuMTI3OTg3IjtzOjE1OiJsaWJlbGxlX2NvbW11bmUiO3M6NToiQ09ST04iO3M6MTU6Imxpc3RlX2Vuc2VpZ25lcyI7YToxOntpOjA7czozMToiTE9USVNTRU1FTlQgTEUgQ09URUFVIERVIFBJTklFUiI7fXM6MTI6Imxpc3RlX2ZpbmVzcyI7TjtzOjEyOiJsaXN0ZV9pZF9iaW8iO047czoxMDoibGlzdGVfaWRjYyI7TjtzOjI4OiJsaXN0ZV9pZF9vcmdhbmlzbWVfZm9ybWF0aW9uIjtOO3M6OToibGlzdGVfcmdlIjtOO3M6OToibGlzdGVfdWFpIjtOO3M6OToibG9uZ2l0dWRlIjtzOjk6Ii0wLjY0NTc3MyI7czoxNDoibm9tX2NvbW1lcmNpYWwiO047czo2OiJyZWdpb24iO3M6MjoiNTIiO3M6NToic2lyZXQiO3M6MTQ6IjIxNDkwMTA5MjAwMTUyIjtzOjMwOiJzdGF0dXRfZGlmZnVzaW9uX2V0YWJsaXNzZW1lbnQiO3M6MToiTyI7czoyNDoidHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO31pOjY7YToyOTp7czoxOToiYWN0aXZpdGVfcHJpbmNpcGFsZSI7czo2OiI2OC4yMEIiO3M6MTI6ImFuY2llbl9zaWVnZSI7YjowO3M6MzA6ImFubmVlX3RyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7TjtzOjc6ImFkcmVzc2UiO3M6Mzk6Ik1BSVJJRSAyIFJVRSBEQVZJRCBEJ0FOR0VSUyA0OTY5MCBDT1JPTiI7czoxOToiY2FyYWN0ZXJlX2VtcGxveWV1ciI7czoxOiJOIjtzOjExOiJjb2RlX3Bvc3RhbCI7czo1OiI0OTY5MCI7czo3OiJjb21tdW5lIjtzOjU6IjQ5MTA5IjtzOjEzOiJkYXRlX2NyZWF0aW9uIjtzOjEwOiIyMDIxLTAzLTI1IjtzOjE5OiJkYXRlX2RlYnV0X2FjdGl2aXRlIjtzOjEwOiIyMDIzLTExLTE1IjtzOjE0OiJkYXRlX2Zlcm1ldHVyZSI7TjtzOjQ6ImVwY2kiO3M6OToiMjAwMDcxNjc4IjtzOjk6ImVzdF9zaWVnZSI7YjowO3M6MTg6ImV0YXRfYWRtaW5pc3RyYXRpZiI7czoxOiJBIjtzOjY6Imdlb19pZCI7czoxNjoiNDkxMDlfMDIyMF8wMDAwMiI7czo4OiJsYXRpdHVkZSI7czo5OiI0Ny4xMjc5ODciO3M6MTU6ImxpYmVsbGVfY29tbXVuZSI7czo1OiJDT1JPTiI7czoxNToibGlzdGVfZW5zZWlnbmVzIjthOjE6e2k6MDtzOjE1OiJNQUlTT04gREUgU0FOVEUiO31zOjEyOiJsaXN0ZV9maW5lc3MiO047czoxMjoibGlzdGVfaWRfYmlvIjtOO3M6MTA6Imxpc3RlX2lkY2MiO047czoyODoibGlzdGVfaWRfb3JnYW5pc21lX2Zvcm1hdGlvbiI7TjtzOjk6Imxpc3RlX3JnZSI7TjtzOjk6Imxpc3RlX3VhaSI7TjtzOjk6ImxvbmdpdHVkZSI7czo5OiItMC42NDU3NzMiO3M6MTQ6Im5vbV9jb21tZXJjaWFsIjtOO3M6NjoicmVnaW9uIjtzOjI6IjUyIjtzOjU6InNpcmV0IjtzOjE0OiIyMTQ5MDEwOTIwMDE2MCI7czozMDoic3RhdHV0X2RpZmZ1c2lvbl9ldGFibGlzc2VtZW50IjtzOjE6Ik8iO3M6MjQ6InRyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7Tjt9aTo3O2E6Mjk6e3M6MTk6ImFjdGl2aXRlX3ByaW5jaXBhbGUiO3M6NjoiODYuMjFaIjtzOjEyOiJhbmNpZW5fc2llZ2UiO2I6MDtzOjMwOiJhbm5lZV90cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047czo3OiJhZHJlc3NlIjtzOjMwOiIzIFJVRSBDSEFOVEVMRVZFTlQgNDk2OTAgQ09ST04iO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTiI7czoxMToiY29kZV9wb3N0YWwiO3M6NToiNDk2OTAiO3M6NzoiY29tbXVuZSI7czo1OiI0OTEwOSI7czoxMzoiZGF0ZV9jcmVhdGlvbiI7czoxMDoiMjAyNC0wNy0wMSI7czoxOToiZGF0ZV9kZWJ1dF9hY3Rpdml0ZSI7czoxMDoiMjAyNC0wNy0wMSI7czoxNDoiZGF0ZV9mZXJtZXR1cmUiO047czo0OiJlcGNpIjtzOjk6IjIwMDA3MTY3OCI7czo5OiJlc3Rfc2llZ2UiO2I6MDtzOjE4OiJldGF0X2FkbWluaXN0cmF0aWYiO3M6MToiQSI7czo2OiJnZW9faWQiO3M6MTY6IjQ5MTA5XzAxMDZfMDAwMDMiO3M6ODoibGF0aXR1ZGUiO3M6ODoiNDcuMTI4ODYiO3M6MTU6ImxpYmVsbGVfY29tbXVuZSI7czo1OiJDT1JPTiI7czoxNToibGlzdGVfZW5zZWlnbmVzIjthOjE6e2k6MDtzOjI1OiJDRU5UUkUgTVVOSUNJUEFMIERFIFNBTlRFIjt9czoxMjoibGlzdGVfZmluZXNzIjtOO3M6MTI6Imxpc3RlX2lkX2JpbyI7TjtzOjEwOiJsaXN0ZV9pZGNjIjtOO3M6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo5OiJsaXN0ZV9yZ2UiO047czo5OiJsaXN0ZV91YWkiO047czo5OiJsb25naXR1ZGUiO3M6OToiLTAuNjM3NDExIjtzOjE0OiJub21fY29tbWVyY2lhbCI7TjtzOjY6InJlZ2lvbiI7czoyOiI1MiI7czo1OiJzaXJldCI7czoxNDoiMjE0OTAxMDkyMDAxNzgiO3M6MzA6InN0YXR1dF9kaWZmdXNpb25fZXRhYmxpc3NlbWVudCI7czoxOiJPIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047fWk6ODthOjI5OntzOjE5OiJhY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjU6Ijc1LjFBIjtzOjEyOiJhbmNpZW5fc2llZ2UiO2I6MDtzOjMwOiJhbm5lZV90cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047czo3OiJhZHJlc3NlIjtzOjM2OiIyNSBSVUUgSk9BQ0hJTSBEVSBCRUxMQVkgNDk2OTAgQ09ST04iO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTyI7czoxMToiY29kZV9wb3N0YWwiO3M6NToiNDk2OTAiO3M6NzoiY29tbXVuZSI7czo1OiI0OTEwOSI7czoxMzoiZGF0ZV9jcmVhdGlvbiI7czoxMDoiMTk4My0wMy0wMSI7czoxOToiZGF0ZV9kZWJ1dF9hY3Rpdml0ZSI7czoxMDoiMjAwMS0wNi0wMSI7czoxNDoiZGF0ZV9mZXJtZXR1cmUiO3M6MTA6IjIwMDEtMDYtMDEiO3M6NDoiZXBjaSI7czo5OiIyMDAwNzE2NzgiO3M6OToiZXN0X3NpZWdlIjtiOjA7czoxODoiZXRhdF9hZG1pbmlzdHJhdGlmIjtzOjE6IkYiO3M6NjoiZ2VvX2lkIjtzOjE2OiI0OTEwOV8wMjQwXzAwMDI1IjtzOjg6ImxhdGl0dWRlIjtzOjk6IjQ3LjEyNzAxOSI7czoxNToibGliZWxsZV9jb21tdW5lIjtzOjU6IkNPUk9OIjtzOjE1OiJsaXN0ZV9lbnNlaWduZXMiO2E6MTp7aTowO3M6NjoiTUFJUklFIjt9czoxMjoibGlzdGVfZmluZXNzIjtOO3M6MTI6Imxpc3RlX2lkX2JpbyI7TjtzOjEwOiJsaXN0ZV9pZGNjIjtOO3M6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo5OiJsaXN0ZV9yZ2UiO047czo5OiJsaXN0ZV91YWkiO047czo5OiJsb25naXR1ZGUiO3M6OToiLTAuNjQ1NDIxIjtzOjE0OiJub21fY29tbWVyY2lhbCI7TjtzOjY6InJlZ2lvbiI7czoyOiI1MiI7czo1OiJzaXJldCI7czoxNDoiMjE0OTAxMDkyMDAwMTIiO3M6MzA6InN0YXR1dF9kaWZmdXNpb25fZXRhYmxpc3NlbWVudCI7czoxOiJPIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047fWk6OTthOjI5OntzOjE5OiJhY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjU6IjgwLjFaIjtzOjEyOiJhbmNpZW5fc2llZ2UiO2I6MDtzOjMwOiJhbm5lZV90cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047czo3OiJhZHJlc3NlIjtzOjM2OiIyMyBSVUUgSk9BQ0hJTSBEVSBCRUxMQVkgNDk2OTAgQ09ST04iO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTiI7czoxMToiY29kZV9wb3N0YWwiO3M6NToiNDk2OTAiO3M6NzoiY29tbXVuZSI7czo1OiI0OTEwOSI7czoxMzoiZGF0ZV9jcmVhdGlvbiI7czoxMDoiMTk4My0xMi0yMSI7czoxOToiZGF0ZV9kZWJ1dF9hY3Rpdml0ZSI7czoxMDoiMjAwMi0xMi0yNSI7czoxNDoiZGF0ZV9mZXJtZXR1cmUiO3M6MTA6IjIwMDItMTItMjUiO3M6NDoiZXBjaSI7czo5OiIyMDAwNzE2NzgiO3M6OToiZXN0X3NpZWdlIjtiOjA7czoxODoiZXRhdF9hZG1pbmlzdHJhdGlmIjtzOjE6IkYiO3M6NjoiZ2VvX2lkIjtzOjE2OiI0OTEwOV8wMjQwXzAwMDIzIjtzOjg6ImxhdGl0dWRlIjtzOjk6IjQ3LjEyNjkzNSI7czoxNToibGliZWxsZV9jb21tdW5lIjtzOjU6IkNPUk9OIjtzOjE1OiJsaXN0ZV9lbnNlaWduZXMiO2E6MTp7aTowO3M6MzA6IkVDT0xFIEVMRU1FTlRBSVJFIEEuU1QgRVhVUEVSWSI7fXM6MTI6Imxpc3RlX2ZpbmVzcyI7TjtzOjEyOiJsaXN0ZV9pZF9iaW8iO047czoxMDoibGlzdGVfaWRjYyI7TjtzOjI4OiJsaXN0ZV9pZF9vcmdhbmlzbWVfZm9ybWF0aW9uIjtOO3M6OToibGlzdGVfcmdlIjtOO3M6OToibGlzdGVfdWFpIjtOO3M6OToibG9uZ2l0dWRlIjtzOjk6Ii0wLjY0NTAxOCI7czoxNDoibm9tX2NvbW1lcmNpYWwiO047czo2OiJyZWdpb24iO3M6MjoiNTIiO3M6NToic2lyZXQiO3M6MTQ6IjIxNDkwMTA5MjAwMDIwIjtzOjMwOiJzdGF0dXRfZGlmZnVzaW9uX2V0YWJsaXNzZW1lbnQiO3M6MToiTyI7czoyNDoidHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO31pOjEwO2E6Mjk6e3M6MTk6ImFjdGl2aXRlX3ByaW5jaXBhbGUiO3M6NToiNzAuMUMiO3M6MTI6ImFuY2llbl9zaWVnZSI7YjowO3M6MzA6ImFubmVlX3RyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7TjtzOjc6ImFkcmVzc2UiO3M6NDM6Ik1BSVJJRSAyNSBSVUUgSk9BQ0hJTSBEVSBCRUxMQVkgNDk2OTAgQ09ST04iO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTiI7czoxMToiY29kZV9wb3N0YWwiO3M6NToiNDk2OTAiO3M6NzoiY29tbXVuZSI7czo1OiI0OTEwOSI7czoxMzoiZGF0ZV9jcmVhdGlvbiI7czoxMDoiMTk5OS0xMC0wMSI7czoxOToiZGF0ZV9kZWJ1dF9hY3Rpdml0ZSI7czoxMDoiMjAwMS0wNi0wMSI7czoxNDoiZGF0ZV9mZXJtZXR1cmUiO3M6MTA6IjIwMDEtMDYtMDEiO3M6NDoiZXBjaSI7czo5OiIyMDAwNzE2NzgiO3M6OToiZXN0X3NpZWdlIjtiOjA7czoxODoiZXRhdF9hZG1pbmlzdHJhdGlmIjtzOjE6IkYiO3M6NjoiZ2VvX2lkIjtzOjE2OiI0OTEwOV8wMjQwXzAwMDI1IjtzOjg6ImxhdGl0dWRlIjtzOjk6IjQ3LjEyNzAxOSI7czoxNToibGliZWxsZV9jb21tdW5lIjtzOjU6IkNPUk9OIjtzOjE1OiJsaXN0ZV9lbnNlaWduZXMiO2E6MTp7aTowO3M6MjA6IkxPVElTU0VNRU5UIENPTU1VTkFMIjt9czoxMjoibGlzdGVfZmluZXNzIjtOO3M6MTI6Imxpc3RlX2lkX2JpbyI7TjtzOjEwOiJsaXN0ZV9pZGNjIjtOO3M6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo5OiJsaXN0ZV9yZ2UiO047czo5OiJsaXN0ZV91YWkiO047czo5OiJsb25naXR1ZGUiO3M6OToiLTAuNjQ1NDIxIjtzOjE0OiJub21fY29tbWVyY2lhbCI7TjtzOjY6InJlZ2lvbiI7czoyOiI1MiI7czo1OiJzaXJldCI7czoxNDoiMjE0OTAxMDkyMDAwMzgiO3M6MzA6InN0YXR1dF9kaWZmdXNpb25fZXRhYmxpc3NlbWVudCI7czoxOiJPIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047fWk6MTE7YToyOTp7czoxOToiYWN0aXZpdGVfcHJpbmNpcGFsZSI7czo1OiI5MC4wQSI7czoxMjoiYW5jaWVuX3NpZWdlIjtiOjA7czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO3M6NzoiYWRyZXNzZSI7czoyNzoiTUFJUklFIExFIEJPVVJHIDQ5NjkwIENPUk9OIjtzOjE5OiJjYXJhY3RlcmVfZW1wbG95ZXVyIjtzOjE6Ik4iO3M6MTE6ImNvZGVfcG9zdGFsIjtzOjU6IjQ5NjkwIjtzOjc6ImNvbW11bmUiO3M6NToiNDkxMDkiO3M6MTM6ImRhdGVfY3JlYXRpb24iO3M6MTA6IjE5OTktMTItMjUiO3M6MTk6ImRhdGVfZGVidXRfYWN0aXZpdGUiO3M6MTA6IjIwMDEtMDYtMDEiO3M6MTQ6ImRhdGVfZmVybWV0dXJlIjtzOjEwOiIyMDAxLTA2LTAxIjtzOjQ6ImVwY2kiO3M6OToiMjAwMDcxNjc4IjtzOjk6ImVzdF9zaWVnZSI7YjowO3M6MTg6ImV0YXRfYWRtaW5pc3RyYXRpZiI7czoxOiJGIjtzOjY6Imdlb19pZCI7czoxMDoiNDkxMDlfMDAxOSI7czo4OiJsYXRpdHVkZSI7czo5OiI0Ny4xMjY0ODYiO3M6MTU6ImxpYmVsbGVfY29tbXVuZSI7czo1OiJDT1JPTiI7czoxNToibGlzdGVfZW5zZWlnbmVzIjthOjE6e2k6MDtzOjI0OiJTRVJWSUNFIEQnQVNTQUlOSVNTRU1FTlQiO31zOjEyOiJsaXN0ZV9maW5lc3MiO047czoxMjoibGlzdGVfaWRfYmlvIjtOO3M6MTA6Imxpc3RlX2lkY2MiO047czoyODoibGlzdGVfaWRfb3JnYW5pc21lX2Zvcm1hdGlvbiI7TjtzOjk6Imxpc3RlX3JnZSI7TjtzOjk6Imxpc3RlX3VhaSI7TjtzOjk6ImxvbmdpdHVkZSI7czo5OiItMC42NDQ1NTUiO3M6MTQ6Im5vbV9jb21tZXJjaWFsIjtOO3M6NjoicmVnaW9uIjtzOjI6IjUyIjtzOjU6InNpcmV0IjtzOjE0OiIyMTQ5MDEwOTIwMDA0NiI7czozMDoic3RhdHV0X2RpZmZ1c2lvbl9ldGFibGlzc2VtZW50IjtzOjE6Ik8iO3M6MjQ6InRyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7Tjt9aToxMjthOjI5OntzOjE5OiJhY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjY6IjM3LjAwWiI7czoxMjoiYW5jaWVuX3NpZWdlIjtiOjA7czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO3M6NzoiYWRyZXNzZSI7czozOToiTUFJUklFIDIgUlVFIERBVklEIEQnQU5HRVJTIDQ5NjkwIENPUk9OIjtzOjE5OiJjYXJhY3RlcmVfZW1wbG95ZXVyIjtzOjE6Ik4iO3M6MTE6ImNvZGVfcG9zdGFsIjtzOjU6IjQ5NjkwIjtzOjc6ImNvbW11bmUiO3M6NToiNDkxMDkiO3M6MTM6ImRhdGVfY3JlYXRpb24iO3M6MTA6IjIwMDEtMDYtMDEiO3M6MTk6ImRhdGVfZGVidXRfYWN0aXZpdGUiO3M6MTA6IjIwMTMtMDctMDEiO3M6MTQ6ImRhdGVfZmVybWV0dXJlIjtzOjEwOiIyMDEzLTA3LTAxIjtzOjQ6ImVwY2kiO3M6OToiMjAwMDcxNjc4IjtzOjk6ImVzdF9zaWVnZSI7YjowO3M6MTg6ImV0YXRfYWRtaW5pc3RyYXRpZiI7czoxOiJGIjtzOjY6Imdlb19pZCI7czoxNjoiNDkxMDlfMDIyMF8wMDAwMiI7czo4OiJsYXRpdHVkZSI7czo5OiI0Ny4xMjc5ODciO3M6MTU6ImxpYmVsbGVfY29tbXVuZSI7czo1OiJDT1JPTiI7czoxNToibGlzdGVfZW5zZWlnbmVzIjthOjE6e2k6MDtzOjI0OiJTRVJWSUNFIEQgQVNTQUlOSVNTRU1FTlQiO31zOjEyOiJsaXN0ZV9maW5lc3MiO047czoxMjoibGlzdGVfaWRfYmlvIjtOO3M6MTA6Imxpc3RlX2lkY2MiO047czoyODoibGlzdGVfaWRfb3JnYW5pc21lX2Zvcm1hdGlvbiI7TjtzOjk6Imxpc3RlX3JnZSI7TjtzOjk6Imxpc3RlX3VhaSI7TjtzOjk6ImxvbmdpdHVkZSI7czo5OiItMC42NDU3NzMiO3M6MTQ6Im5vbV9jb21tZXJjaWFsIjtOO3M6NjoicmVnaW9uIjtzOjI6IjUyIjtzOjU6InNpcmV0IjtzOjE0OiIyMTQ5MDEwOTIwMDA3OSI7czozMDoic3RhdHV0X2RpZmZ1c2lvbl9ldGFibGlzc2VtZW50IjtzOjE6Ik8iO3M6MjQ6InRyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7Tjt9aToxMzthOjI5OntzOjE5OiJhY3Rpdml0ZV9wcmluY2lwYWxlIjtzOjY6IjQyLjk5WiI7czoxMjoiYW5jaWVuX3NpZWdlIjtiOjA7czozMDoiYW5uZWVfdHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO3M6NzoiYWRyZXNzZSI7czozOToiTUFJUklFIDIgUlVFIERBVklEIEQnQU5HRVJTIDQ5NjkwIENPUk9OIjtzOjE5OiJjYXJhY3RlcmVfZW1wbG95ZXVyIjtzOjE6Ik4iO3M6MTE6ImNvZGVfcG9zdGFsIjtzOjU6IjQ5NjkwIjtzOjc6ImNvbW11bmUiO3M6NToiNDkxMDkiO3M6MTM6ImRhdGVfY3JlYXRpb24iO3M6MTA6IjIwMDEtMTItMjUiO3M6MTk6ImRhdGVfZGVidXRfYWN0aXZpdGUiO3M6MTA6IjIwMTEtMTItMzEiO3M6MTQ6ImRhdGVfZmVybWV0dXJlIjtzOjEwOiIyMDExLTEyLTMxIjtzOjQ6ImVwY2kiO3M6OToiMjAwMDcxNjc4IjtzOjk6ImVzdF9zaWVnZSI7YjowO3M6MTg6ImV0YXRfYWRtaW5pc3RyYXRpZiI7czoxOiJGIjtzOjY6Imdlb19pZCI7czoxNjoiNDkxMDlfMDIyMF8wMDAwMiI7czo4OiJsYXRpdHVkZSI7czo5OiI0Ny4xMjc5ODciO3M6MTU6ImxpYmVsbGVfY29tbXVuZSI7czo1OiJDT1JPTiI7czoxNToibGlzdGVfZW5zZWlnbmVzIjthOjE6e2k6MDtzOjMyOiJMT1RJU1NFTUVOVCBDT01NVU5BTCBMQSBGT05UQUlORSI7fXM6MTI6Imxpc3RlX2ZpbmVzcyI7TjtzOjEyOiJsaXN0ZV9pZF9iaW8iO047czoxMDoibGlzdGVfaWRjYyI7TjtzOjI4OiJsaXN0ZV9pZF9vcmdhbmlzbWVfZm9ybWF0aW9uIjtOO3M6OToibGlzdGVfcmdlIjtOO3M6OToibGlzdGVfdWFpIjtOO3M6OToibG9uZ2l0dWRlIjtzOjk6Ii0wLjY0NTc3MyI7czoxNDoibm9tX2NvbW1lcmNpYWwiO047czo2OiJyZWdpb24iO3M6MjoiNTIiO3M6NToic2lyZXQiO3M6MTQ6IjIxNDkwMTA5MjAwMDg3IjtzOjMwOiJzdGF0dXRfZGlmZnVzaW9uX2V0YWJsaXNzZW1lbnQiO3M6MToiTyI7czoyNDoidHJhbmNoZV9lZmZlY3RpZl9zYWxhcmllIjtOO31pOjE0O2E6Mjk6e3M6MTk6ImFjdGl2aXRlX3ByaW5jaXBhbGUiO3M6NjoiNDIuOTlaIjtzOjEyOiJhbmNpZW5fc2llZ2UiO2I6MDtzOjMwOiJhbm5lZV90cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047czo3OiJhZHJlc3NlIjtzOjM5OiJNQUlSSUUgMiBSVUUgREFWSUQgRCdBTkdFUlMgNDk2OTAgQ09ST04iO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTiI7czoxMToiY29kZV9wb3N0YWwiO3M6NToiNDk2OTAiO3M6NzoiY29tbXVuZSI7czo1OiI0OTEwOSI7czoxMzoiZGF0ZV9jcmVhdGlvbiI7czoxMDoiMjAwNC0wMS0wMSI7czoxOToiZGF0ZV9kZWJ1dF9hY3Rpdml0ZSI7czoxMDoiMjAxMi0xMi0yNSI7czoxNDoiZGF0ZV9mZXJtZXR1cmUiO3M6MTA6IjIwMTItMTItMjUiO3M6NDoiZXBjaSI7czo5OiIyMDAwNzE2NzgiO3M6OToiZXN0X3NpZWdlIjtiOjA7czoxODoiZXRhdF9hZG1pbmlzdHJhdGlmIjtzOjE6IkYiO3M6NjoiZ2VvX2lkIjtzOjE2OiI0OTEwOV8wMjIwXzAwMDAyIjtzOjg6ImxhdGl0dWRlIjtzOjk6IjQ3LjEyNzk4NyI7czoxNToibGliZWxsZV9jb21tdW5lIjtzOjU6IkNPUk9OIjtzOjE1OiJsaXN0ZV9lbnNlaWduZXMiO2E6MTp7aTowO3M6MjY6IkxPVElTU0VNRU5UIExBIEZPTlRBSU5FIElJIjt9czoxMjoibGlzdGVfZmluZXNzIjtOO3M6MTI6Imxpc3RlX2lkX2JpbyI7TjtzOjEwOiJsaXN0ZV9pZGNjIjtOO3M6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo5OiJsaXN0ZV9yZ2UiO047czo5OiJsaXN0ZV91YWkiO047czo5OiJsb25naXR1ZGUiO3M6OToiLTAuNjQ1NzczIjtzOjE0OiJub21fY29tbWVyY2lhbCI7TjtzOjY6InJlZ2lvbiI7czoyOiI1MiI7czo1OiJzaXJldCI7czoxNDoiMjE0OTAxMDkyMDAxMDMiO3M6MzA6InN0YXR1dF9kaWZmdXNpb25fZXRhYmxpc3NlbWVudCI7czoxOiJPIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047fWk6MTU7YToyOTp7czoxOToiYWN0aXZpdGVfcHJpbmNpcGFsZSI7czo2OiI0Mi45OVoiO3M6MTI6ImFuY2llbl9zaWVnZSI7YjowO3M6MzA6ImFubmVlX3RyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7TjtzOjc6ImFkcmVzc2UiO3M6NDM6Ik1BSVJJRSAyNSBSVUUgSk9BQ0hJTSBEVSBCRUxMQVkgNDk2OTAgQ09ST04iO3M6MTk6ImNhcmFjdGVyZV9lbXBsb3lldXIiO3M6MToiTiI7czoxMToiY29kZV9wb3N0YWwiO3M6NToiNDk2OTAiO3M6NzoiY29tbXVuZSI7czo1OiI0OTEwOSI7czoxMzoiZGF0ZV9jcmVhdGlvbiI7czoxMDoiMjAwNS0xMC0wMSI7czoxOToiZGF0ZV9kZWJ1dF9hY3Rpdml0ZSI7czoxMDoiMjAxMy0wNS0yMyI7czoxNDoiZGF0ZV9mZXJtZXR1cmUiO3M6MTA6IjIwMTMtMDUtMjMiO3M6NDoiZXBjaSI7czo5OiIyMDAwNzE2NzgiO3M6OToiZXN0X3NpZWdlIjtiOjA7czoxODoiZXRhdF9hZG1pbmlzdHJhdGlmIjtzOjE6IkYiO3M6NjoiZ2VvX2lkIjtzOjE2OiI0OTEwOV8wMjQwXzAwMDI1IjtzOjg6ImxhdGl0dWRlIjtzOjk6IjQ3LjEyNzAxOSI7czoxNToibGliZWxsZV9jb21tdW5lIjtzOjU6IkNPUk9OIjtzOjE1OiJsaXN0ZV9lbnNlaWduZXMiO2E6MTp7aTowO3M6Mjk6IkxPVElTU0VNRU5UIExFIENMT1MgRFUgTU9VTElOIjt9czoxMjoibGlzdGVfZmluZXNzIjtOO3M6MTI6Imxpc3RlX2lkX2JpbyI7TjtzOjEwOiJsaXN0ZV9pZGNjIjtOO3M6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo5OiJsaXN0ZV9yZ2UiO047czo5OiJsaXN0ZV91YWkiO047czo5OiJsb25naXR1ZGUiO3M6OToiLTAuNjQ1NDIxIjtzOjE0OiJub21fY29tbWVyY2lhbCI7TjtzOjY6InJlZ2lvbiI7czoyOiI1MiI7czo1OiJzaXJldCI7czoxNDoiMjE0OTAxMDkyMDAxMTEiO3M6MzA6InN0YXR1dF9kaWZmdXNpb25fZXRhYmxpc3NlbWVudCI7czoxOiJPIjtzOjI0OiJ0cmFuY2hlX2VmZmVjdGlmX3NhbGFyaWUiO047fWk6MTY7YToyOTp7czoxOToiYWN0aXZpdGVfcHJpbmNpcGFsZSI7czo2OiI4NC4xMloiO3M6MTI6ImFuY2llbl9zaWVnZSI7YjowO3M6MzA6ImFubmVlX3RyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7czo0OiIyMDIyIjtzOjc6ImFkcmVzc2UiO3M6Mzk6Ik1BSVJJRSAyIFJVRSBEQVZJRCBEJ0FOR0VSUyA0OTY5MCBDT1JPTiI7czoxOToiY2FyYWN0ZXJlX2VtcGxveWV1ciI7czoxOiJPIjtzOjExOiJjb2RlX3Bvc3RhbCI7czo1OiI0OTY5MCI7czo3OiJjb21tdW5lIjtzOjU6IjQ5MTA5IjtzOjEzOiJkYXRlX2NyZWF0aW9uIjtzOjEwOiIyMDE0LTAzLTE5IjtzOjE5OiJkYXRlX2RlYnV0X2FjdGl2aXRlIjtzOjEwOiIyMDI0LTA3LTAxIjtzOjE0OiJkYXRlX2Zlcm1ldHVyZSI7czoxMDoiMjAyNC0wNy0wMSI7czo0OiJlcGNpIjtzOjk6IjIwMDA3MTY3OCI7czo5OiJlc3Rfc2llZ2UiO2I6MDtzOjE4OiJldGF0X2FkbWluaXN0cmF0aWYiO3M6MToiRiI7czo2OiJnZW9faWQiO3M6MTY6IjQ5MTA5XzAyMjBfMDAwMDIiO3M6ODoibGF0aXR1ZGUiO3M6OToiNDcuMTI3OTg3IjtzOjE1OiJsaWJlbGxlX2NvbW11bmUiO3M6NToiQ09ST04iO3M6MTU6Imxpc3RlX2Vuc2VpZ25lcyI7YToxOntpOjA7czoyNToiQ0VOVFJFIE1VTklDSVBBTCBERSBTQU5URSI7fXM6MTI6Imxpc3RlX2ZpbmVzcyI7YToxOntpOjA7czo5OiI0OTAwMTk1NjkiO31zOjEyOiJsaXN0ZV9pZF9iaW8iO047czoxMDoibGlzdGVfaWRjYyI7YToxOntpOjA7czo0OiI1MDIxIjt9czoyODoibGlzdGVfaWRfb3JnYW5pc21lX2Zvcm1hdGlvbiI7TjtzOjk6Imxpc3RlX3JnZSI7TjtzOjk6Imxpc3RlX3VhaSI7TjtzOjk6ImxvbmdpdHVkZSI7czo5OiItMC42NDU3NzMiO3M6MTQ6Im5vbV9jb21tZXJjaWFsIjtOO3M6NjoicmVnaW9uIjtzOjI6IjUyIjtzOjU6InNpcmV0IjtzOjE0OiIyMTQ5MDEwOTIwMDE0NSI7czozMDoic3RhdHV0X2RpZmZ1c2lvbl9ldGFibGlzc2VtZW50IjtzOjE6Ik8iO3M6MjQ6InRyYW5jaGVfZWZmZWN0aWZfc2FsYXJpZSI7czoyOiIwMSI7fX1zOjg6ImZpbmFuY2VzIjtOO3M6MTE6ImNvbXBsZW1lbnRzIjthOjIxOntzOjI1OiJjb2xsZWN0aXZpdGVfdGVycml0b3JpYWxlIjthOjQ6e3M6NDoiY29kZSI7czo1OiI0OTEwOSI7czoxMDoiY29kZV9pbnNlZSI7czo1OiI0OTEwOSI7czo0OiJlbHVzIjthOjE4OntpOjA7YTo1OntzOjM6Im5vbSI7czo1OiJCQUNMRSI7czo3OiJwcmVub21zIjtzOjk6IkJlbmVkaWN0ZSI7czoxODoiYW5uZWVfZGVfbmFpc3NhbmNlIjtzOjc6IjE5ODAtMDIiO3M6ODoiZm9uY3Rpb24iO047czo0OiJzZXhlIjtzOjE6IkYiO31pOjE7YTo1OntzOjM6Im5vbSI7czo2OiJCSUJBUkQiO3M6NzoicHJlbm9tcyI7czo2OiJHYWVsbGUiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo3OiIxOTgxLTEwIjtzOjg6ImZvbmN0aW9uIjtOO3M6NDoic2V4ZSI7czoxOiJGIjt9aToyO2E6NTp7czozOiJub20iO3M6ODoiQk9VU1NFQVUiO3M6NzoicHJlbm9tcyI7czo3OiJKZXJlbWllIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk5MC0wMiI7czo4OiJmb25jdGlvbiI7TjtzOjQ6InNleGUiO3M6MToiTSI7fWk6MzthOjU6e3M6Mzoibm9tIjtzOjg6IkNIQUxPUElOIjtzOjc6InByZW5vbXMiO3M6OToiQ2hyaXN0aW5lIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk3MS0wNiI7czo4OiJmb25jdGlvbiI7czoyMjoiM8OobWUgYWRqb2ludCBhdSBNYWlyZSI7czo0OiJzZXhlIjtzOjE6IkYiO31pOjQ7YTo1OntzOjM6Im5vbSI7czo4OiJDSEFVVkVBVSI7czo3OiJwcmVub21zIjtzOjc6IkxhdXJlbnQiO3M6MTg6ImFubmVlX2RlX25haXNzYW5jZSI7czo3OiIxOTY1LTA3IjtzOjg6ImZvbmN0aW9uIjtOO3M6NDoic2V4ZSI7czoxOiJNIjt9aTo1O2E6NTp7czozOiJub20iO3M6NjoiQ1JVQVJEIjtzOjc6InByZW5vbXMiO3M6OToiQ2hyaXN0aW5lIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk3Mi0wMyI7czo4OiJmb25jdGlvbiI7TjtzOjQ6InNleGUiO3M6MToiRiI7fWk6NjthOjU6e3M6Mzoibm9tIjtzOjc6IkRJWE5FVUYiO3M6NzoicHJlbm9tcyI7czo1OiJBbGFpbiI7czoxODoiYW5uZWVfZGVfbmFpc3NhbmNlIjtzOjc6IjE5NjQtMDkiO3M6ODoiZm9uY3Rpb24iO3M6MjI6IjLDqG1lIGFkam9pbnQgYXUgTWFpcmUiO3M6NDoic2V4ZSI7czoxOiJNIjt9aTo3O2E6NTp7czozOiJub20iO3M6NToiRFVQw4kiO3M6NzoicHJlbm9tcyI7czo3OiJPbGl2aWVyIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk3My0wNSI7czo4OiJmb25jdGlvbiI7TjtzOjQ6InNleGUiO3M6MToiTSI7fWk6ODthOjU6e3M6Mzoibm9tIjtzOjc6IkdBQklMTEUiO3M6NzoicHJlbm9tcyI7czo4OiJGYWJpZW5uZSI7czoxODoiYW5uZWVfZGVfbmFpc3NhbmNlIjtzOjc6IjE5NzUtMTIiO3M6ODoiZm9uY3Rpb24iO047czo0OiJzZXhlIjtzOjE6IkYiO31pOjk7YTo1OntzOjM6Im5vbSI7czo4OiJHVUlMQkVSVCI7czo3OiJwcmVub21zIjtzOjY6IkNlbGluZSI7czoxODoiYW5uZWVfZGVfbmFpc3NhbmNlIjtzOjc6IjE5ODAtMDEiO3M6ODoiZm9uY3Rpb24iO047czo0OiJzZXhlIjtzOjE6IkYiO31pOjEwO2E6NTp7czozOiJub20iO3M6NzoiSEVSQVVMVCI7czo3OiJwcmVub21zIjtzOjU6Ikdhw6tsIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk4My0wOCI7czo4OiJmb25jdGlvbiI7TjtzOjQ6InNleGUiO3M6MToiTSI7fWk6MTE7YTo1OntzOjM6Im5vbSI7czo4OiJMQU5DRUxPVCI7czo3OiJwcmVub21zIjtzOjU6IkRhdmlkIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk4NC0wMiI7czo4OiJmb25jdGlvbiI7TjtzOjQ6InNleGUiO3M6MToiTSI7fWk6MTI7YTo1OntzOjM6Im5vbSI7czo2OiJMRUdFQVkiO3M6NzoicHJlbm9tcyI7czo4OiJFbW1hbnVlbCI7czoxODoiYW5uZWVfZGVfbmFpc3NhbmNlIjtzOjc6IjE5NzQtMDMiO3M6ODoiZm9uY3Rpb24iO047czo0OiJzZXhlIjtzOjE6Ik0iO31pOjEzO2E6NTp7czozOiJub20iO3M6OToiTUFSQ09OTkVUIjtzOjc6InByZW5vbXMiO3M6NjoiUm9tYWluIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk3Ny0wNSI7czo4OiJmb25jdGlvbiI7TjtzOjQ6InNleGUiO3M6MToiTSI7fWk6MTQ7YTo1OntzOjM6Im5vbSI7czo2OiJNQVJUSU4iO3M6NzoicHJlbm9tcyI7czo4OiJQaGlsaXBwZSI7czoxODoiYW5uZWVfZGVfbmFpc3NhbmNlIjtzOjc6IjE5NjYtMDEiO3M6ODoiZm9uY3Rpb24iO047czo0OiJzZXhlIjtzOjE6Ik0iO31pOjE1O2E6NTp7czozOiJub20iO3M6MTA6IlJFVkVJTExFUkUiO3M6NzoicHJlbm9tcyI7czo3OiJKb8OrbGxlIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk2Mi0wNyI7czo4OiJmb25jdGlvbiI7czoyMDoiMWVyIGFkam9pbnQgYXUgTWFpcmUiO3M6NDoic2V4ZSI7czoxOiJGIjt9aToxNjthOjU6e3M6Mzoibm9tIjtzOjg6IlNPVVJJU1NFIjtzOjc6InByZW5vbXMiO3M6OToiVGjDqXLDqHNlIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk0OS0wOSI7czo4OiJmb25jdGlvbiI7TjtzOjQ6InNleGUiO3M6MToiRiI7fWk6MTc7YTo1OntzOjM6Im5vbSI7czo3OiJURVNUQVJEIjtzOjc6InByZW5vbXMiO3M6NjoiWGF2aWVyIjtzOjE4OiJhbm5lZV9kZV9uYWlzc2FuY2UiO3M6NzoiMTk2MS0wOSI7czo4OiJmb25jdGlvbiI7czo1OiJNYWlyZSI7czo0OiJzZXhlIjtzOjE6Ik0iO319czo2OiJuaXZlYXUiO3M6NzoiY29tbXVuZSI7fXM6MzI6ImNvbnZlbnRpb25fY29sbGVjdGl2ZV9yZW5zZWlnbmVlIjtiOjE7czoxMDoibGlzdGVfaWRjYyI7YToxOntpOjA7czo0OiI1MDIxIjt9czoxNzoiZWdhcHJvX3JlbnNlaWduZWUiO2I6MDtzOjE1OiJlc3RfYXNzb2NpYXRpb24iO2I6MDtzOjc6ImVzdF9iaW8iO2I6MDtzOjI3OiJlc3RfZW50cmVwcmVuZXVyX2luZGl2aWR1ZWwiO2I6MDtzOjI2OiJlc3RfZW50cmVwcmVuZXVyX3NwZWN0YWNsZSI7YjowO3M6NzoiZXN0X2VzcyI7YjowO3M6MTA6ImVzdF9maW5lc3MiO2I6MTtzOjIzOiJlc3Rfb3JnYW5pc21lX2Zvcm1hdGlvbiI7YjowO3M6MTI6ImVzdF9xdWFsaW9waSI7YjowO3M6Mjg6Imxpc3RlX2lkX29yZ2FuaXNtZV9mb3JtYXRpb24iO047czo3OiJlc3RfcmdlIjtiOjA7czoxODoiZXN0X3NlcnZpY2VfcHVibGljIjtiOjE7czo4OiJlc3Rfc2lhZSI7YjowO3M6MTk6ImVzdF9zb2NpZXRlX21pc3Npb24iO2I6MDtzOjc6ImVzdF91YWkiO2I6MDtzOjIzOiJpZGVudGlmaWFudF9hc3NvY2lhdGlvbiI7TjtzOjI5OiJzdGF0dXRfZW50cmVwcmVuZXVyX3NwZWN0YWNsZSI7TjtzOjk6InR5cGVfc2lhZSI7Tjt9fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1736450694);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('U6vK47R0kqBI95PopdtZ29KS0XXjxRpLeea92wmC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieXJuVnI2UDJZaVpGQ1g3TzhqUFFBbkZ5anU3S01kemNBS2JnaUJ4ZCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1736455616);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Amine Derbel', 'derbel.amine.49@gmail.com', NULL, '$2y$12$Khm1yJKl1XDv.VVxcc7feuoG1XPR6uFm0zJpdyCigWtoyZZJBuZC2', 'zR2elViaSQuf3I3rVz62toF4Azg6omt87rPK2jMjQtsUf2FsvD7gXbwULiy8', '2025-01-07 12:26:56', '2025-01-07 12:26:56'),
(2, 'CACACACACCAACAC', 'maimlecaca@caca.fr', NULL, '$2y$12$tMLQHzkfIUN0lFrOgLF/Aei084zx7JKw0wJNdjACHgieihzOqHSlW', NULL, '2025-01-09 09:59:55', '2025-01-09 09:59:55');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ape_naf_code`
--
ALTER TABLE `ape_naf_code`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_siren` (`siren`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`siren`);

--
-- Index pour la table `company_type`
--
ALTER TABLE `company_type`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `legal_category`
--
ALTER TABLE `legal_category`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `idx_user_id` (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_siren` FOREIGN KEY (`siren`) REFERENCES `company` (`siren`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
