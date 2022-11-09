-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysqlDawes:3306
-- Tiempo de generación: 09-11-2022 a las 07:18:53
-- Versión del servidor: 5.7.22
-- Versión de PHP: 8.0.19

CREATE DATABASE MedicamentosJvh;
USE MedicamentosJvh;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `MedicamentosJvh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Category`
--

CREATE TABLE `Category` (
  `id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `description` varchar(150) CHARACTER SET utf8 NOT NULL,
  
  CONSTRAINT pk_c PRIMARY KEY (id)
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Category`
--

INSERT INTO `Category` (`id`, `name`, `description`) VALUES
(1, 'Qdryl Allergy', 'id consequat in'),
(2, 'AZITHROMYCIN', 'etiam pretium'),
(3, 'DAILY MOISTURIZING', 'duis ac'),
(4, 'Zhenweilong Huoluo You', 'suscipit a feugiat'),
(5, 'Treatment Set TS351315', 'erat quisque erat'),
(6, 'Secret Clinical Strength Advanced', 'porta'),
(7, 'Enoxaparin Sodium', 'posuere cubilia'),
(8, 'Colgate', 'ultrices enim lorem'),
(9, 'Fluoxetine', 'amet sapien dignissim'),
(10, 'Ibuprofen', 'etiam'),
(11, 'Adult Low Dose Aspirin', 'convallis tortor'),
(12, 'Chloraseptic Sore Throat Max Liquid Center', 'lacinia erat vestibulum'),
(13, 'Methocarbamol', 'vestibulum eget'),
(14, 'DR. RECKEWEG R26 Remisin', 'sem'),
(15, 'Bacto Plus', 'habitasse platea dictumst'),
(16, 'Cilostazol', 'eget tempus'),
(17, 'Leader Adult Tussin', 'ut nulla'),
(18, 'ESIKA Extreme Moisturizing SPF 16', 'porta volutpat'),
(19, 'COMETRIQ', 'vestibulum'),
(20, 'Valium', 'ipsum primis in'),
(21, 'Coppertone Sport AccuSpray', 'platea dictumst etiam'),
(22, 'LYM D', 'pede malesuada'),
(23, 'tizanidine hydrochloride', 'venenatis turpis enim'),
(24, 'Ceftriaxone', 'sit amet cursus'),
(25, 'Care One Cold Multi Symptom', 'habitasse'),
(26, 'Warfarin Sodium', 'in'),
(27, 'UltrasolSunscreen', 'commodo vulputate justo'),
(28, 'Good Neighbor Pharmacy Cold', 'nisl nunc'),
(29, 'CELEBREX', 'nec'),
(30, 'GPS Topical Anesthetic', 'rhoncus mauris enim'),
(31, 'Hydrocodone Bitartrate and Acetaminophen', 'ante ipsum'),
(32, 'Royal Antibacterial Raspberry Hand Cleanse', 'feugiat non pretium'),
(33, 'rexall ibuprofen', 'cras non'),
(34, 'Circulatone', 'eleifend pede'),
(35, 'Paroxetine', 'augue luctus tincidunt'),
(36, 'H-E-B Dead Sea Organics Protect and Perfect Day Broad Spectrum SPF15', 'nisi volutpat'),
(37, 'CRYSTAL MIRACLE MULTI', 'vestibulum'),
(38, 'Protriptyline Hydrochloride', 'justo in'),
(39, 'Microban', 'tortor risus'),
(40, 'SHISEIDO RADIANT LIFTING FOUNDATION', 'praesent blandit'),
(41, 'Amlodipine and Valsartan', 'sapien'),
(42, 'aspirin free', 'morbi odio'),
(43, 'Air', 'vivamus vestibulum'),
(44, 'Urecholine', 'vulputate elementum'),
(45, 'Hard Candy Correction Creme', 'et eros vestibulum'),
(46, 'Body Luxuries French Lavender Waterless Anti-bacterial Hand Sanitizer', 'orci pede'),
(47, 'Ionite APF', 'erat'),
(48, 'Ibuprofen', 'nullam molestie nibh'),
(49, 'Venlafaxine Hydrochloride', 'odio'),
(50, 'Triamcinolone Acetonide', 'duis mattis'),
(51, 'Sucralfate', 'duis at'),
(52, 'Pecan Pollen', 'suspendisse potenti cras'),
(53, 'Day Time Cold/Flu Relief', 'sed justo'),
(54, 'LBEL HYDRATESS', 'dapibus'),
(55, 'Super Restorative Foundation True Lift SPF 15 Tint 06', 'in consequat ut'),
(56, 'PredniSONE', 'sit amet cursus'),
(57, 'Cymbalta', 'in'),
(58, 'ELIGARD', 'velit'),
(59, 'Thyrostat', 'quis libero'),
(60, 'Tretinoin', 'adipiscing lorem vitae'),
(61, 'cefazolin', 'viverra diam'),
(62, 'Acetazolamide', 'nec condimentum'),
(63, 'CardinalHealth alcohol prep pads LARGE', 'non velit'),
(64, 'Klor-Con', 'sed nisl nunc'),
(65, 'Cetirizine Hydrochloride', 'neque aenean auctor'),
(66, 'Xenon', 'consequat metus'),
(67, 'NU-DERM SUNFADER', 'vulputate vitae'),
(68, 'Aztreonam', 'rutrum'),
(69, 'Childrens Pain and Fever', 'cras in'),
(70, 'hydrocodone bitartrate and acetaminophen', 'nisi volutpat eleifend'),
(71, 'Topiramate', 'ut ultrices vel'),
(72, 'Daily Moisturizer Broad-Spectrum SPF 30', 'turpis'),
(73, 'Nitrogen', 'morbi sem mauris'),
(74, 'TopCare Ibuprofen', 'nulla ac'),
(75, 'Nivea For Men Sensitive', 'donec'),
(76, 'Estrogen', 'pellentesque at'),
(77, 'Cellular Laboratories De-Aging Sunscreen Broad Spectrum SPF 50 Plus', 'aliquet maecenas leo'),
(78, 'Upset Stomach, Constipation', 'vehicula consequat'),
(79, 'Synthroid', 'dui'),
(80, 'PredniSONE', 'quis orci'),
(81, 'Italian Rye Grass', 'quis lectus suspendisse'),
(82, 'Mycophenolate Mofetil', 'morbi a ipsum'),
(83, 'Gelsemium Sempervirens 30c', 'sodales'),
(84, 'ZOLINZA', 'suspendisse'),
(85, 'Sunscreen Creme SPF 37', 'purus sit amet'),
(86, 'FLUTICASONE PROPIONATE', 'aliquet pulvinar'),
(87, 'Cuprum 17 Special Order', 'rutrum nulla'),
(88, 'VIREX', 'in congue'),
(89, 'Mitomycin', 'placerat'),
(90, 'Bonogen Plus', 'consequat'),
(91, 'Haloperidol', 'amet'),
(92, 'Citalopram', 'molestie hendrerit'),
(93, 'Maximum Strength Laxative', 'ultrices vel augue'),
(94, 'Alfuzosin hydrochloride', 'tempor convallis nulla'),
(95, 'TCX Skincare', 'proin'),
(96, 'Lamotrigine', 'et eros vestibulum'),
(97, 'Duloxetine', 'eu'),
(98, 'Aspirin', 'dignissim vestibulum vestibulum'),
(99, 'ck one all day perfection face makeup', 'nulla dapibus'),
(100, 'Ondansetron Hydrochloride', 'praesent id');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Medicine`
--

CREATE TABLE `Medicine` (
  `id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 NOT NULL UNIQUE,
  `description` varchar(150) CHARACTER SET utf8 NOT NULL,
  `price` double NOT NULL,
  `Category` int(11) NOT NULL,
  
  CONSTRAINT pk_m PRIMARY KEY (id),
    CONSTRAINT fk_c FOREIGN KEY (Category) REFERENCES Category(id)
    
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Medicine`
--

INSERT INTO `Medicine` (`id`, `name`, `description`, `price`, `Category`) VALUES
(1, 'Duloxetine', 'Extravasation of vesicant antineoplastic chemotherapy, subs', 72.4, 1),
(2, 'Polycarbophil', 'Blister (nonthermal), right lower leg, sequela', 70.37, 2),
(3, 'ZINC OXIDE', 'Central serous chorioretinopathy, unspecified eye', 40.7, 3),
(4, 'Sodium Fluor', 'Oth disp fx of base of 1st MC bone, unsp hand, 7thK', 90.03, 4),
(5, 'DIETHYLPROPION HYDROCHLORIDE', 'Laceration of right quadriceps muscle, fascia and tendon', 57.21, 5),
(6, 'metoprolol succinate', 'Rupture in Descemets membrane', 88.69, 6),
(7, 'Tramadol Hydrochloride and Acetaminophen', 'Subluxation of midcarpal joint of left wrist, init encntr', 33.21, 7),
(8, 'Carbidopa and Levodopa', 'Poisoning by cardi-stim glycos/drug simlar act, self-harm', 64.08, 8),
(9, 'Meclizine', 'Poisoning by diagnostic agents, accidental, init', 54.22, 9),
(10, 'Hydralazine Hydrochloride', 'Nondisp comminuted fx shaft of humerus, unsp arm, sequela', 84.42, 10),
(11, 'Wormwook', 'Displ suprcndl fx w intrcndl extn low end unsp femr, 7thN', 91.88, 11),
(12, 'arnica montana, bellis perennis', 'Unsp physeal fx lower end of l tibia, subs for fx w nonunion', 88.8, 12),
(13, 'Aesculos 30c, Antimonium Tart 30c, Arsenicum 30c', 'init', 35.34, 13),
(14, 'LIDOCAINE HYDROCHLORIDE', 'Nondisp intartic fx r calcaneus, subs for fx w routn heal', 55.13, 14),
(15, 'Dapsone', 'Antipruritics', 90.06, 15),
(16, 'RANITIDINE HYDROCHLORIDE', 'Nondisp transverse fx shaft of r ulna, 7thP', 82.04, 16),
(17, 'Felodipine', 'Thyrotoxicosis, unspecified with thyrotoxic crisis or storm', 78.71, 17),
(18, 'clonazepamium', 'Pnctr w/o fb of low back and pelv w penet retroperiton, sqla', 76.82, 18),
(19, 'TESTOSTERONE', 'Quadruplets, some liveborn', 95.33, 19),
(20, 'cefazolin sodium', 'Autoinflammatory syndrome, unspecified', 24.2, 20),
(21, 'Phenylephrine HCl', 'Unsp fracture of shaft of right tibia, init for clos fx', 75.87, 21),
(22, 'Piperacillin and Tazobactam', 'Oth fracture of left pubis, subs for fx w delay heal', 80.53, 22),
(23, 'House Fly', 'Occup of snowmobile injured in nontraffic accident, sequela', 25.85, 23),
(24, 'Ramipril', 'Anterior subluxation of right ulnohumeral joint, subs encntr', 29.36, 24),
(25, 'Ondansetron', 'Inj to rider of nonrecr wtrcrft puld beh oth wtrcrft, init', 48.1, 25),
(26, 'Oxygen', 'Underdosing of anthelminthics, subsequent encounter', 66.42, 26),
(27, ' Octisalate, Octocrylene, and Oxybenzone', 'Unsp nondisp fx of 2nd cervcal vert, 7thG', 29.14, 27),
(28, 'Tacrolimus', 'Disp fx of distal phalanx of thmb, subs for fx w delay heal', 38.34, 28),
(29, 'Gabapentin', 'Onchocerciasis with endophthalmitis', 73.14, 29),
(30, 'Carvedilol', 'Nondisp osteochon fx l patella, 7thE', 42.95, 30),
(31, 'Antimon. crud., Arsenicum alb., Berber. vulg', 'Wedge comprsn fx third lelay heal', 79.27, 31),
(32, 'GENTAMICIN SULFATE', 'Enophthalmos due to atrophy of orbital tissue, unsp eye', 90.3, 32),
(33, 'temazepam', 'Infectious mononucleosis, unspecified with meningitis', 95.96, 33),
(34, 'Sodium Chloro', 'Minor laceration of left pulmonary blood vessels', 50.89, 34),
(35, 'HYPERICUM PERFORATUM', 'Folate deficiency anemia', 71.81, 35),
(36, 'Hydrochloride Sodico', 'Corrosion of first degree of right forearm, sequela', 40.86, 36),
(37, 'OCTINOXATE, OXYBENZONE', 'Nondisplaced apophyseal fracture of right femur, init', 48.1, 37),
(38, 'SODIUM CHLORIDE', 'Carbuncle of left upper limb', 53.85, 38),
(39, 'Octinoxate and Titanium Dioxide', 'Other subluxation of left ulnohumeral joint', 71.2, 39),
(40, 'Warfarin Sodium', 'Person outside bus injured in nonclsn trnsp accident nontraf', 58.53, 40),
(41, 'Clonazepam', 'Unsp physeal fx lower end of l tibia, subs for fx w malunion', 84.93, 41),
(42, 'Lycopodium clavatum, ', 'Unsp inj intrinsic musc/fasc/tend finger at wrs/hnd lv, subs', 37.38, 42),
(43, 'Oxybenzone, Octinoxate, Octisalate, Homosalate, and Avobenzone', 'Contusion of eyelid and periocular area', 25.65, 43),
(44, 'Pioglitazone', 'Arthritis due to Lyme disease', 17.23, 44),
(45, 'ADENOSINE', 'Oth postproc endocrine and metabolic comp and disorders', 99.36, 45),
(46, 'Cytarabine', 'Displ suprcndl fx w/o intrcndl extn low end r femr, 7thD', 33.11, 46),
(47, 'gemfibrozil', 'Complete lesion at C8 level of cervical spinal cord, subs', 36.69, 47),
(48, 'Alcohol', 'Absence and agenesis of lacrimal apparatus', 43.97, 48),
(49, 'olea europaea pollen', 'Retained (old) magnetic fb in post wall of globe, unsp eye', 11.78, 49),
(50, 'Fexofenadine Hydrochloride', 'Toxic effect of ketones, undetermined, initial encounter', 19.64, 50),
(51, 'Mushroom', 'Corrosion of unspecified degree of left elbow', 30.78, 51),
(52, 'benztropine mesylate', 'Pnctr w fb of l idx fngr w/o damage to nail, sequela', 64.78, 52),
(53, 'Horse Epithelium', 'Displaced apophyseal fracture of right femur, init', 28.09, 53),
(54, 'Polyethylene Glycol 400 and Propylene Glycol', 'Shock following (induced) termination of pregnancy', 72.43, 54),
(55, 'Acetaminophen', 'Azoospermia due to systemic disease', 97.13, 55),
(56, 'Tolnaftate 1%', 'Abrasion of unspecified thumb, subsequent encounter', 96.27, 56),
(57, 'ETHYL ALCOHOL', 'Nondisp transverse fx shaft of r fibula, 7thH', 64.22, 57),
(58, 'Mercurius Vivus', 'Fracture of manubrium, subs for fx w delay heal', 85.95, 58),
(59, 'Theophylline', 'Nondisp commnt fx r patella, subs for clos fx w routn heal', 74.47, 59),
(60, 'Olanzapine', 'Unsp pedal cyclist injured in collision w hv veh nontraf', 56.65, 60),
(61, 'Antihemophilic Factor, Recombinant', 'Hemorrhoids in pregnancy, unspecified trimester', 51.07, 61),
(62, 'abciximab', 'Occup of bus injured in clsn w nonmtr vehicle nontraf, init', 31.87, 62),
(63, 'fentanyl ', 'Inj unsp blood vessel at shldr/up arm, right arm', 76.32, 63),
(64, 'Acetaminophen, Chlorpheniramine maleate', 'Other subluxation of left wrist and hand, sequela', 81.58, 64),
(65, 'FENTANYL CITRATE', 'Poisn by butyrophen/thiothixen neuroleptc, slf-hrm, sequela', 32.24, 65),
(66, 'CHLOROXYLENOL', 'Assault by unspecified explosive, subsequent encounter', 70.97, 66),
(67, 'Acetylcysteine', 'Crushing injury of left great toe, subsequent encounter', 44, 67),
(68, 'Valacyclovir Hydrochloride', 'Traum subrac hem w LOC w death d/t oth cause bf consc, init', 62.87, 68),
(69, 'Bryonia Stannum', 'Sprain of medial collateral ligament of right knee, init', 84.86, 69),
(70, 'Phentermine Hydrochloride', 'Other subluxation of right knee, subsequent encounter', 73.96, 70),
(71, 'Alcoholium', 'Dislocation of distal interphaln joint of r idx fngr, init', 80.29, 71),
(72, 'Levothyroxine Sodium', '30 weeks gestation of pregnancy', 59.6, 72),
(73, 'GLYCERIN', 'Spastic entropion of left eye, unspecified eyelid', 81.91, 73),
(74, 'Standardized Mite D. farinae', 'Athscl autol vein bypass of r leg w ulcer oth prt low leg', 39.34, 74),
(75, 'Calcium polycarbophil', 'Blister (nonthermal) of hand', 82.21, 75),
(76, 'amoxicillin', 'Sltr-haris Type II physl fx upr end l fibula, 7thK', 20.43, 76),
(77, 'Octisalate, Octocrylene, and Oxybenzone', 'Partial traumatic MCP amputation of finger, subs', 25.26, 77),
(78, 'hydromorphone hydrochloride', 'Disp fx of unsp tibial spin, 7thF', 24.03, 78),
(79, 'HYDROCODONE BITARTRATE AND ACETAMINOPHEN', 'Oth disp fx of base of 1st MC bone, r hand, 7thP', 56.78, 79),
(80, 'Sildenafil citrate', 'Nondisp oblique fracture of shaft of right tibia, sequela', 64.9, 80),
(81, 'Petrolatum', 'Urge incontinence', 36.77, 81),
(82, 'Misoprostol', 'Puncture wound with foreign body of left buttock', 18.81, 82),
(83, 'Avobenzone, Homosalate, Octisalate, Octocrylene, and Oxybenzone', 'Adverse effect of ganglionic blocking drugs, sequela', 53.33, 83),
(84, 'Salsolinol hydrochloride, Cholesterinum', 'Encntr for suprvsn of normal first preg, second trimester', 55.91, 84),
(85, 'Dextrose Monohydrate, Sodium Chloride, Sodium Lactate, Calcium Chloride, Magnesium Chloride', 'Underweight', 86.12, 85),
(86, 'BENZOYL PEROXIDE', 'Toxic effect of taipan venom, assault, sequela', 70.21, 86),
(87, 'Loratadine', 'Other hypertrophic osteoarthropathy, right forearm', 48.28, 87),
(88, 'codeine sulfate', 'Monoplg low lmb following oth nontraumatic intcrn hemorrhage', 32.09, 88),
(89, 'Donepezil Hydrochloride', 'Insect bite (nonvenomous) of unspecified elbow, subs encntr', 38.92, 89),
(90, 'articaine hydrochloride and epinephrine bitartrate', 'Nondisp fx of lateral condyle of unspecified femur', 32.69, 90),
(91, 'Bahia Grass', 'Other localized connective tissue disorders', 59.17, 91),
(92, 'phenylephrine hydrochloride', 'Type 2 diab w hyprosm w/o nonket hyprgly-hypros coma (NKHHC)', 93.73, 92),
(93, 'Tetracycline Hydrochloride', 'Oth disrd of ear in diseases classified elsewhere, bilateral', 57.25, 93),
(94, 'Warfarin', 'Disp fx of med malleolus of unsp tibia, 7thE', 59.58, 94),
(95, 'TITANIUM DIOXIDE', 'Nondisp fx of post pro of left talus, subs for fx w nonunion', 66.98, 95),
(96, 'Venlafaxine', 'Oth fracture of T9-T10 vertebra, subs for fx w routn heal', 12.51, 96),
(97, 'TITANIUM DIOXIDE, OCTINOXATE, ZINC OXIDE', 'Adverse effect of other opioids', 57.02, 97),
(98, 'lisinopril', 'Poisoning by oth psychostimulants, undetermined, subs encntr', 60.97, 98),
(99, 'Titanium Dioxide, Zinc Oxide, and Octinoxate', 'Nondisp fx of nk of scapula, r shldr, subs for fx w nonunion', 87.56, 99),
(100, 'aluminum hydroxide, magnesium hydroxide, dimethicone', 'Mech compl of internal fixation device of left humerus', 37.24, 100);

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `Users`
--

CREATE TABLE `Users` (
  `user` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `surname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(1) CHARACTER SET utf8 NOT NULL,
  `admin` tinyint(1) NOT NULL,
  
  CONSTRAINT pk_users PRIMARY KEY (user)
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Users`
--

INSERT INTO `Users` (`user`, `password`, `name`, `surname`, `birthday`, `gender`, `admin`) VALUES
('cbrittles8', 'd41d8cd98f00b204e9800998ecf8427e', 'Ced', 'Brittles', '2021-01-25', 'M', 0),
('dfoxall3', 'd41d8cd98f00b204e9800998ecf8427e', 'Dena', 'Foxall', '2014-04-02', 'F', 1),
('ghourahan5', 'd41d8cd98f00b204e9800998ecf8427e', 'Gerta', 'Hourahan', '2001-09-03', 'F', 0),
('gjefford6', 'd41d8cd98f00b204e9800998ecf8427e', 'Guillaume', 'Jefford', '2007-12-13', 'M', 1),
('ibehr0', 'd41d8cd98f00b204e9800998ecf8427e', 'Inigo', 'Behr', '2001-02-09', 'M', 1),
('inma', 'd40dbcae0e7088fc4a7e1768cf8771da', 'Inmaculada', 'Olias', '2016-04-03', 'F', 1),
('javi', 'a14f8a540e78dae706d255750010a0f8', 'Javier', 'Villarreal', '2016-04-03', 'M', 1),
('jsartain1', 'd41d8cd98f00b204e9800998ecf8427e', 'Jeffrey', 'Sartain', '2012-04-26', 'M', 0),
('kmaskell2', 'd41d8cd98f00b204e9800998ecf8427e', 'Keefe', 'Maskell', '2019-09-26', 'M', 0),
('lstefi9', 'd41d8cd98f00b204e9800998ecf8427e', 'Levin', 'Stefi', '2016-04-03', 'M', 0),
('mfalloon7', 'd41d8cd98f00b204e9800998ecf8427e', 'Marthena', 'Falloon', '2020-04-06', 'F', 0),
('pniland4', 'd41d8cd98f00b204e9800998ecf8427e', 'Piggy', 'Niland', '2000-11-13', 'M', 1);




CREATE TABLE `purchase` (
  `idMedicine` int(11) NOT NULL,
  `user` varchar(50) CHARACTER SET utf8 NOT NULL,
  `purchase_price` double NOT NULL,
  `purchase_date` date NOT NULL,
  `cod` int(11) NOT NULL,
  `cuantity` int(11) NOT NULL,
  
     CONSTRAINT pk_cod PRIMARY KEY (cod,idMedicine,user),
    CONSTRAINT fk_pr FOREIGN KEY (idMedicine) REFERENCES Medicine(id),
    CONSTRAINT fk_pur FOREIGN KEY (user) REFERENCES Users(user)
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `purchase`
--

INSERT INTO `purchase` (`idMedicine`, `user`, `purchase_price`, `purchase_date`, `cod`, `cuantity`) VALUES
(1, 'ibehr0', 89.08, '2022-08-23', 1, 82),
(2, 'jsartain1', 55.84, '2022-10-20', 2, 53),
(3, 'kmaskell2', 62.05, '2022-01-23', 3, 53),
(4, 'dfoxall3', 51.79, '2022-03-19', 4, 60),
(5, 'pniland4', 71.91, '2022-04-21', 5, 23),
(6, 'ghourahan5', 61.1, '2022-07-13', 6, 40),
(7, 'gjefford6', 88.83, '2022-11-06', 7, 7),
(8, 'mfalloon7', 34.97, '2022-10-03', 8, 57),
(9, 'cbrittles8', 54.85, '2022-01-08', 9, 16),
(10, 'lstefi9', 33.47, '2022-08-07', 10, 12),
(11, 'ibehr0', 78.04, '2021-12-13', 11, 89),
(12, 'jsartain1', 96.43, '2022-11-06', 12, 29),
(13, 'kmaskell2', 59.96, '2022-08-30', 13, 14),
(14, 'dfoxall3', 58.29, '2021-12-17', 14, 6),
(15, 'pniland4', 14.7, '2022-02-07', 15, 52),
(16, 'ghourahan5', 78.61, '2022-10-02', 16, 58),
(17, 'gjefford6', 52.95, '2022-03-22', 17, 86),
(18, 'mfalloon7', 15.73, '2022-05-09', 18, 95),
(19, 'cbrittles8', 52.16, '2022-03-28', 19, 39),
(20, 'lstefi9', 66.24, '2022-04-01', 20, 18),
(21, 'ibehr0', 60.7, '2022-05-09', 21, 57),
(22, 'jsartain1', 62.62, '2022-05-09', 22, 81),
(23, 'kmaskell2', 76.97, '2022-04-10', 23, 24),
(24, 'dfoxall3', 92.01, '2022-09-12', 24, 14),
(25, 'pniland4', 52.25, '2022-06-17', 25, 4),
(26, 'ghourahan5', 55.82, '2022-08-06', 26, 45),
(27, 'gjefford6', 99.72, '2022-11-06', 27, 15),
(28, 'mfalloon7', 40.47, '2022-01-18', 28, 53),
(29, 'cbrittles8', 67.89, '2022-10-09', 29, 87),
(30, 'lstefi9', 61.01, '2022-09-02', 30, 35),
(31, 'ibehr0', 77.39, '2021-12-25', 31, 34),
(32, 'jsartain1', 75.32, '2022-01-14', 32, 26),
(33, 'kmaskell2', 74.11, '2021-12-29', 33, 5),
(34, 'dfoxall3', 23.62, '2022-03-19', 34, 44),
(35, 'pniland4', 22.02, '2021-12-18', 35, 35),
(36, 'ghourahan5', 96.24, '2022-05-12', 36, 70),
(37, 'gjefford6', 62.44, '2022-09-30', 37, 56),
(38, 'mfalloon7', 45.03, '2022-05-24', 38, 61),
(39, 'cbrittles8', 21.2, '2022-09-02', 39, 52),
(40, 'lstefi9', 97.06, '2022-04-04', 40, 29),
(41, 'ibehr0', 14.42, '2022-10-20', 41, 80),
(42, 'jsartain1', 20.74, '2022-10-04', 42, 58),
(43, 'kmaskell2', 11.2, '2021-12-07', 43, 59),
(44, 'dfoxall3', 57.1, '2022-06-01', 44, 27),
(45, 'pniland4', 96.47, '2022-03-06', 45, 75),
(46, 'ghourahan5', 15.34, '2022-07-31', 46, 21),
(47, 'gjefford6', 28.7, '2022-07-29', 47, 96),
(48, 'mfalloon7', 51.45, '2021-12-17', 48, 38),
(49, 'cbrittles8', 35.73, '2022-03-03', 49, 81),
(50, 'lstefi9', 60.84, '2022-01-27', 50, 89),
(51, 'ibehr0', 95.29, '2022-07-06', 51, 67),
(52, 'jsartain1', 38.22, '2022-10-05', 52, 56),
(53, 'kmaskell2', 96.38, '2021-11-30', 53, 48),
(54, 'dfoxall3', 64.11, '2022-03-19', 54, 89),
(55, 'pniland4', 47.46, '2022-09-01', 55, 64),
(56, 'ghourahan5', 10.78, '2022-05-12', 56, 79),
(57, 'gjefford6', 21.96, '2022-04-05', 57, 28),
(58, 'mfalloon7', 88.28, '2022-06-12', 58, 32),
(59, 'cbrittles8', 95.49, '2022-03-18', 59, 93),
(60, 'lstefi9', 47, '2021-12-27', 60, 33),
(61, 'ibehr0', 29.06, '2022-08-23', 61, 57),
(62, 'jsartain1', 73.8, '2022-05-07', 62, 5),
(63, 'kmaskell2', 93.38, '2022-04-21', 63, 58),
(64, 'dfoxall3', 43.42, '2022-04-12', 64, 48),
(65, 'pniland4', 64.8, '2022-08-31', 65, 67),
(66, 'ghourahan5', 10.72, '2022-08-16', 66, 23),
(67, 'gjefford6', 36.17, '2022-08-28', 67, 6),
(68, 'mfalloon7', 84.81, '2022-06-12', 68, 90),
(69, 'cbrittles8', 12.63, '2022-08-21', 69, 83),
(70, 'lstefi9', 51.05, '2022-01-06', 70, 38),
(71, 'ibehr0', 53.62, '2022-02-15', 71, 99),
(72, 'jsartain1', 57.33, '2022-06-13', 72, 28),
(73, 'kmaskell2', 85.16, '2022-03-14', 73, 81),
(74, 'dfoxall3', 96.59, '2022-04-06', 74, 5),
(75, 'pniland4', 27.35, '2022-09-26', 75, 52),
(76, 'ghourahan5', 88.48, '2022-01-16', 76, 41),
(77, 'gjefford6', 38.41, '2022-06-30', 77, 7),
(78, 'mfalloon7', 95.39, '2022-07-28', 78, 74),
(79, 'cbrittles8', 63.48, '2022-10-26', 79, 82),
(80, 'lstefi9', 52.24, '2022-02-25', 80, 37),
(81, 'ibehr0', 63.86, '2022-08-10', 81, 39),
(82, 'jsartain1', 87.82, '2022-01-07', 82, 33),
(83, 'kmaskell2', 35.39, '2022-10-12', 83, 27),
(84, 'dfoxall3', 10.57, '2021-11-11', 84, 4),
(85, 'pniland4', 22.85, '2022-07-12', 85, 58),
(86, 'ghourahan5', 73.42, '2022-06-08', 86, 47),
(87, 'gjefford6', 25.51, '2022-06-11', 87, 24),
(88, 'mfalloon7', 46.75, '2022-04-05', 88, 80),
(89, 'cbrittles8', 99.55, '2022-02-24', 89, 64),
(90, 'lstefi9', 73.07, '2022-06-10', 90, 70),
(91, 'ibehr0', 97.1, '2021-12-21', 91, 90),
(92, 'jsartain1', 86.84, '2022-05-19', 92, 24),
(93, 'kmaskell2', 58.36, '2022-02-02', 93, 8),
(94, 'dfoxall3', 77.79, '2022-05-13', 94, 75),
(95, 'pniland4', 60.15, '2021-12-19', 95, 39),
(96, 'ghourahan5', 35.99, '2022-07-15', 96, 57),
(97, 'gjefford6', 63.9, '2022-02-03', 97, 54),
(98, 'mfalloon7', 25.65, '2021-11-16', 98, 53),
(99, 'cbrittles8', 96.35, '2022-06-23', 99, 90),
(100, 'lstefi9', 87.05, '2022-05-09', 100, 85);

-- --------------------------------------------------------



--
-- Índices para tablas volcadas
--

--

COMMIT;

CREATE USER 'villarreal'@'%' IDENTIFIED BY 'javier';
GRANT ALL PRIVILEGES ON MedicamentosJvh.* to 'villarreal'@'%';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
