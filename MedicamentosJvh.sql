-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysqlDawes:3306
-- Tiempo de generación: 07-11-2022 a las 12:21:54
-- Versión del servidor: 5.7.22
-- Versión de PHP: 8.0.19

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
  `id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `description` varchar(150) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Category`
--

INSERT INTO `Category` (`id`, `name`, `description`) VALUES
('111-91-9516', 'EGF UV SHIELD', 'Elbow enthesopathy NEC'),
('120-98-0857', 'Equaline Cough DM', 'NB feeding problems'),
('127-12-4600', 'Diovan', 'Malfunc oth device/graft'),
('141-36-2851', 'Medi Stem Collagen Toner', 'C5-c7 fx-op/cen cord syn'),
('146-22-1354', 'Sodium Bicarbonate', 'Fracture two ribs-open'),
('147-48-4989', 'Levofloxacin', 'Mal neo hepatic flexure'),
('157-42-6683', 'Antibacterial Foam Hand Wash', 'Opn subdur hem-coma NOS'),
('164-84-2043', 'Multaq', 'Dis of biliary tract NOS'),
('165-05-3957', 'Sulfamethoxazole and Trimethoprim', 'Adult sexual abuse'),
('167-26-5999', 'fluticasone propionate', 'Rat bite'),
('179-77-2570', 'Clindamycin hydrochloride', 'Parox tachycardia NOS'),
('180-40-7346', 'Bupropion Hydrochloride', 'Hodgkins granulom abdom'),
('184-48-3929', 'Family Wellness Antifungal', 'Lactat dis NOS-antepart'),
('187-44-5782', 'Atenolol and Chlorthalidone', 'Malocc-Angles class II'),
('190-58-7645', 'Saline Laxative', 'Cystitis NOS'),
('203-83-0282', 'Cold Relief', 'Instrmnt fail in surgery'),
('205-78-8658', 'CELEXA', 'TB of bladder-unspec'),
('226-95-5925', 'Humco Hydrogen Peroxide', 'Rhinoscleroma'),
('249-36-7994', 'Amoxicillin', 'Inf arthritis NOS-mult'),
('284-36-4948', 'Methocarbamol', 'Lipidoses'),
('284-93-9652', 'Equisetum Viscum', 'Thyroid dysfunc-antepart'),
('286-39-9370', 'CLEANpHIRST Alcohol Free Antiseptic Hand Sanitizer', 'Wheezing'),
('299-29-4255', 'Oxy Daily Defense Exfoliating Face Scrub', 'Reduc deform up limb NOS'),
('301-94-8430', 'Diltiazem Hydrochloride', 'Compl reattached finger'),
('302-21-6255', 'CLONIDINE HYDROCHLORIDE', 'Laryngotrach anomaly NEC'),
('304-18-9945', 'PureLife Topical Anesthetic', 'Lym dplt unsp xtrndl org'),
('311-76-9814', 'Coppertone Wet n Clear', 'Post-op foreign body NOS'),
('312-83-0016', 'Lettuce', 'Cellulitis, site NEC'),
('318-57-1622', 'Muscle rub', 'Open wound gum-compl'),
('319-40-8413', 'Best Choice Bisacodyl Laxative', 'Prim angl-clos glauc NOS'),
('333-02-4312', 'LANOXIN', 'Bact food poisoning NEC'),
('339-22-9904', 'Standardized Perennial Rye Grass', 'W/craft fall NEC-power'),
('352-38-8305', 'Renvela', 'Prim TB complex-no exam'),
('354-19-4934', 'Candida albicans', 'Chr erythrm w remision'),
('369-21-3408', 'Sulfamethoxazole and Trimethoprim', 'Prs ara wo inf w ntr/st'),
('374-21-8968', 'Anti-Aging Foundation SPF 15 Shade 100', 'Fet growth ret 2500+g'),
('384-33-7638', 'Prazosin Hydrochloride', 'Effects electric current'),
('393-28-8838', 'Olay Fresh Effects BB', 'Glaucoma w iris anomaly'),
('395-32-7214', 'Anchor Foaming Hand Sanitizer', 'Nontrauma hema soft tiss'),
('402-47-4581', 'OXYMORPHONE HYDROCHLORIDE', 'Fx up radius NEC/NOS-cl'),
('410-81-0419', 'Clopidogrel bisulfate', 'Erythema multiforme maj'),
('420-72-9068', 'PANTOPRAZOLE SODIUM', 'Cl skull fx NEC-coma NOS'),
('425-39-4578', 'Haloperidol', 'Cornea degeneration NEC'),
('429-98-3812', 'FACTIVE', 'Adv eff antimalarials'),
('437-42-4354', 'Puritan Hand Sanitizer', 'Retinoph prematr,stage 2'),
('453-63-7230', 'Hawaiian Tropic Island Sport SPF 30', 'School recess,camp'),
('469-79-4903', 'Terocin', 'Mild/NOS preeclamp-unsp'),
('475-34-5685', 'RosaRex', 'Mix dis conduct/emotion'),
('479-44-0750', 'Lamotrigine', 'Cesarean deliv NOS-unsp'),
('482-68-4124', 'Anger', 'Bone & cartilage dis NOS'),
('485-14-1628', 'Bryophyllum Conchae', 'Trauma compart synd NEC'),
('491-66-3961', 'Acyclovir', 'Screen for gu cond NEC'),
('495-80-3346', 'Promethazine Hydrochloride', 'Fall NOS'),
('505-26-4077', 'Fentanyl Citrate', 'Ant subcaps pol cataract'),
('515-77-4618', 'Quinapril', 'Bone cyst NEC'),
('517-70-8030', 'Macrodantin', 'Chorioretinitis NOS'),
('520-19-4680', 'Benazepril Hydrochloride', 'Smell and taste problem'),
('527-37-3079', 'Dilantin', 'Drug depend preg-unspec'),
('530-23-2457', 'Additox', '1st deg burn abdomn wall'),
('558-02-5110', 'Citroma Magnesium Citrate', 'Foreign bdy ext eye NEC'),
('560-54-0366', 'Eszopiclone', 'Assault-gasoline bomb'),
('579-78-1884', 'THINKSPORT', '3rd deg burn ankle'),
('580-76-9973', 'Triamterene and Hydrochlorothiazide', 'Fem genital mutilate NEC'),
('584-22-0367', 'Western (Sierra) Juniper', 'Leptospirosis NOS'),
('584-41-6980', 'Cephalexin', 'Intravag tors sperm cord'),
('594-38-0082', 'Neosporin Original', 'Diseases of lips'),
('605-24-2777', 'Publix Burn Relief', 'Anaerobic meningitis'),
('616-17-0288', 'GOODSENSE IRRITATION RELIEF EYE DROPS', 'Deep 3 deg brn head-mult'),
('616-83-1001', 'Childrens Growth and Development', 'Poison-gas/vapor NEC'),
('623-24-5064', 'Purell Advanced Hand Sanitizer Refreshing Florals', 'Ca in situ resp sys NOS'),
('624-08-3126', 'Childrens Colic RELIEF', 'CHF NOS'),
('638-49-5025', 'Wart Control', 'Kidney laceration-closed'),
('642-18-6963', 'Multi-Symptom Allergy', 'Lymphosarcoma thorax'),
('651-39-8369', 'Testosterone Cypionate', 'Fx dorsal vertebra-open'),
('652-64-2732', 'Hourglass Illusion Tinted Moisturizer Ivory', 'RR acc w explos-pedest'),
('663-58-3801', 'Levothyroxine Sodium', 'Urethral fistula'),
('683-29-2121', 'HAWAIIAN Tropic', 'Cl skl base fx-prol coma'),
('704-55-1282', 'Diclofenac Sodium', '30-39% bdy brn/3 deg NOS'),
('708-67-5316', 'Minocycline Hydrochloride', 'Cognition sign/sympt NEC'),
('716-98-4606', 'Acetaminophen', 'Kaschin-beck dis-unspec'),
('725-03-9381', 'Lice MD', 'Fm hx prostate malig'),
('727-79-9286', 'Berry Scented Hand Sanitizer', 'Mal neo lip, inner NOS'),
('728-37-3143', 'Oxymorphone hydrochloride', 'Pinta NOS'),
('750-78-2704', 'Fetzima', 'Ridden anim acc-pers NEC'),
('751-64-4421', 'Asmanex', 'Ocular penetration NOS'),
('756-16-4489', 'Dr. Jart Bounce Beauty Balm 02 Medium-Deep', 'Fall from ladder'),
('773-28-7509', 'Claravis', 'Glucocorticoid deficient'),
('788-45-8455', 'Amoxicillin', 'Lt-for-dates 1000-1249g'),
('797-32-0073', 'Climate Adaptation Hot and Humid', 'Scorpion sting'),
('803-51-2538', 'No7 Stay Perfect Foundation Sunscreen SPF 15', 'Drug allergy NEC'),
('805-04-8814', 'Naproxen Sodium', 'Abn histologic find NEC'),
('819-65-6984', 'Panama Jack', 'TB of bronchus-unspec'),
('828-21-7499', 'Lycoris rubus whitening', 'Accid-caustic substance'),
('830-04-0501', 'Oxygen', 'Fetal mal 1500-1749g'),
('847-59-2850', 'Daytime Cold Flu Relief', 'Mal neo carotid body'),
('851-04-6606', 'Smart Sense Acid Reducer', 'Av block-2nd degree NEC'),
('862-43-7456', 'Sei Bella Age-Defying Liquid Foundation', 'Psychogen endocrine dis'),
('877-89-2940', 'EQUALINE', 'Uns mono leuk w rmsion'),
('884-69-8623', 'East Sycamore', 'Mountain,rock/wall climb'),
('896-89-9013', 'Ultra-TechneKow', 'Mat anesth/analg aff NB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Medicine`
--

CREATE TABLE `Medicine` (
  `id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` double NOT NULL,
  `category` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Medicine`
--

INSERT INTO `Medicine` (`id`, `name`, `description`, `price`, `category`) VALUES
('104-30-7425', 'OXAZEPAM', 'Contusion of unsp ring finger w damage to nail, subs encntr', 31.44, '402-47-4581'),
('104-40-1268', 'losartan potassium', 'Pedal cycle rider injured pick-up truck, pk-up/van', 96.1, '180-40-7346'),
('124-01-1880', 'CEFUROXIME AXETIL', 'Oth fracture of left femur, subs for clos fx w nonunion', 25.97, '485-14-1628'),
('124-82-8998', 'Oxygen', 'Laceration w fb of pharynx and cervical esophagus, init', 94.76, '286-39-9370'),
('124-86-6893', 'Hydrogen Peroxide', 'Complete traumatic amputation at level between hip and knee', 52.64, '249-36-7994'),
('126-65-8522', 'Diphenhydramine HCl', 'Sprain of left acromioclavicular joint, subsequent encounter', 74.96, '333-02-4312'),
('128-70-1751', 'AVOBENZONE, OCTOCRYLENE, OXYBENZONE', 'Unspecified open wound of right breast, subsequent encounter', 44.92, '374-21-8968'),
('129-28-9242', 'famotidine, calcium carbonate and magnesium hydroxide', 'Disp fx of lateral epicondyle of l humerus, init for opn fx', 13.07, '624-08-3126'),
('129-89-9094', 'Warfarin Sodium', 'Unsp fracture of shaft of unsp radius, init for clos fx', 79.43, '164-84-2043'),
('139-29-4470', 'Midazolam hydrochloride', 'Fracture of base of skull, unspecified side, 7thB', 82.39, '584-22-0367'),
('145-14-4178', 'Citalopram Hydrobromide', 'Lordosis, unspecified, lumbar region', 60.93, '146-22-1354'),
('158-06-1617', 'CHLORPHENIRAMINE MALEATE', 'Adverse effect of sulfonamides, initial encounter', 90.95, '505-26-4077'),
('184-67-2074', 'Acetaminophen', 'Acute hematogenous osteomyelitis, unspecified shoulder', 45.86, '560-54-0366'),
('189-44-2679', 'meloxicam', 'Unspecified transplanted organ and tissue infection', 71.62, '482-68-4124'),
('191-08-2126', 'WITCH HAZEL', 'Low vision, both eyes', 51.59, '616-17-0288'),
('196-90-6131', 'Octinoxate and Oxybenzone', 'Toxic effect of unspecified substance, assault, init encntr', 15.46, '819-65-6984'),
('209-53-7067', 'amitriptyline hydrochloride', 'Nondisp fx of distal phalanx of left great toe, sequela', 65.6, '520-19-4680'),
('212-94-7959', 'entecavir', 'Nondisp seg fx shaft of l femr, 7thE', 34.99, '803-51-2538'),
('216-44-0923', 'Julep Solace Oil-Free Sunscreen Broad Spectrum', 'Corrosion of unspecified degree of hand, unspecified site', 94.39, '623-24-5064'),
('224-33-9090', 'Hydralazine Hydrochloride', 'Pauciarticular juvenile rheumatoid arthritis, knee', 74.2, '339-22-9904'),
('225-49-1668', 'Alcohol', 'Resorption atelectasis without respiratory distress syndrome', 11.37, '605-24-2777'),
('230-60-9879', 'Lansoprazole', 'Oth disp fx of base of first MC bone, right hand, sequela', 29.21, '515-77-4618'),
('239-87-9886', 'carboplatin', 'Person injured in unsp nonmotor-vehicle accident, nontraffic', 81.89, '683-29-2121'),
('248-59-5995', 'Hydrochlorothiazide', 'Burn of first deg mult sites of shldr/up lmb, except wrs/hnd', 93.48, '384-33-7638'),
('253-24-1385', 'ARNICA MONTANA', 'FERRUM PHOSPHORICUM', 63.07, '120-98-0857'),
('255-69-5370', 'Pyrithione Zinc', 'Nontraumatic ischemic infarction of muscle, unsp lower leg', 83.74, '453-63-7230'),
('284-97-8231', 'Natrum Muriaticum, Ranunculus Bulbosus', 'Animal-rider injured in collision w mtr veh, init encntr', 43.57, '157-42-6683'),
('300-70-9522', 'OCTINOXATE, OCTISALATE, TITANIUM DIOXIDE', 'Maternal care for oth isoimmun, first trimester, fetus 1', 58.9, '579-78-1884'),
('304-58-5554', 'Octinoxate and Oxybenzone', 'Other specified persistent mood disorders', 79.15, '708-67-5316'),
('310-82-1088', 'lamivudine and zidovudine', 'Fx condylar process of mandible, unspecified side, 7thB', 77.01, '429-98-3812'),
('317-93-7868', 'methylprednisolone acetate', 'Injury of trigeminal nerve, unspecified side, init encntr', 75.9, '141-36-2851'),
('325-87-0358', 'Famotidine, Calcium Carbonate, Magnesium Hydroxide', 'Other specified bursopathies, multiple sites', 19.82, '728-37-3143'),
('335-85-0652', 'Topiramate', 'Unsp traum displ spondylolysis of 5th cervcal vert, 7thD', 92.78, '184-48-3929'),
('342-82-4607', 'calcitonin salmon', 'Gout due to renal impairment, unspecified wrist', 14.82, '425-39-4578'),
('350-12-5953', 'Triclosan', 'Nondisp fx of greater trochanter of l femr, 7thQ', 45.83, '304-18-9945'),
('358-78-5966', 'naltrexone', 'Malformation of placenta, unspecified, second trimester', 92.38, '638-49-5025'),
('363-06-2343', 'Arnica montana', 'Avena sativa, ', 88.36, '663-58-3801'),
('363-31-2987', 'Diltiazem Hydrochloride', 'Other infective (teno)synovitis, unspecified hip', 31.84, '716-98-4606'),
('376-17-3203', 'Ranitidine', 'Breakdown of vascular dialysis catheter, sequela', 23.14, '205-78-8658'),
('402-33-1674', 'HYDROCODONE BITARTRATE, ACETAMINOPHEN', 'External constriction of unspecified upper arm, subs encntr', 97.81, '847-59-2850'),
('418-03-1324', 'Avena sativa', 'Staphyloma', 96.4, '616-83-1001'),
('419-57-0196', 'Octinoxate and Titanium Dioxide', 'Maternal care for damage to fetus from alcohol, fetus 2', 94.58, '877-89-2940'),
('421-32-2345', 'Lidocaine Hydrochloride and Epinephrine', 'Pneumococcal arthritis, unspecified hand', 22.21, '187-44-5782'),
('425-02-3345', 'Diphenhydramine HCl, Phenylephrine HCl', 'Other injury of unspecified kidney, sequela', 90.44, '750-78-2704'),
('425-24-1737', 'Isosorbide mononitrate', 'Congenital cirrhosis (of liver)', 53.6, '580-76-9973'),
('446-65-3907', 'benzocaine and benzethonium chloride', 'Zygomatic fracture, left side, 7thG', 84.35, '179-77-2570'),
('455-62-8194', 'Acetaminophen', 'Dextromethorphan', 41.7, '369-21-3408'),
('457-29-2452', 'mesalamine', 'Inappropriate temperature in local application and packing', 76.92, '395-32-7214'),
('482-44-1584', 'carbidopa, levodopa and entacapone', 'Nondisp fx of ', 73.25, '469-79-4903'),
('482-64-2006', 'Naproxen Sodium', 'Non-pressure chronic ulcer of other part of lower leg', 78.08, '284-93-9652'),
('506-43-2257', 'Hydrochlorothiazide', 'Congenital glaucoma', 42.64, '651-39-8369'),
('513-87-8360', 'dimethicone', 'Failed trial of labor, unspecified', 15.32, '420-72-9068'),
('514-18-5333', 'Octinoxate and Oxybenzone', 'Burn of unspecified degree of unspecified thigh', 13.85, '558-02-5110'),
('525-64-7796', 'Giant, Short, Western Ragweed Mix', 'Nondisp fx of neck of second MC bone, left hand, sequela', 53.63, '410-81-0419'),
('536-84-6441', 'DOG EPITHELIA', 'Cystoid macular edema following cataract surgery, bilateral', 59.4, '495-80-3346'),
('539-17-7702', 'sulindac', 'Unspecified foreign body in pharynx causing other injury', 91.91, '479-44-0750'),
('545-45-2260', 'Oxygen', 'Other disorders of choroid', 10.37, '704-55-1282'),
('570-09-4650', 'VERATRUM ALBUM ROOT', 'Contusion of wrist and hand', 81.82, '517-70-8030'),
('570-32-3355', 'Ciprofloxacin', 'Measles keratitis and keratoconjunctivitis', 76.91, '147-48-4989'),
('578-94-1189', 'Lorazepam', 'Malignant neoplasm of head, face and neck', 60.38, '527-37-3079'),
('590-56-1864', 'Methimazole', 'Overexertion from repetitive movements', 28.44, '851-04-6606'),
('591-65-7320', 'Escitalopram', 'Pnctr w foreign body of unsp cheek and TMJ area, init', 62.34, '312-83-0016'),
('603-52-4917', 'Darkleaves Mugwort', 'Corrosions of left ear drum, initial encounter', 73.89, '111-91-9516'),
('606-58-0214', 'BORIC ACID', 'Unsp open wound of right middle finger with damage to nail', 51.44, '165-05-3957'),
('611-31-6148', 'Aconitum napellus, Arsenicum album', 'Belladonna', 91.58, '896-89-9013'),
('611-51-1416', 'THYROID', 'Exposure to tanning bed, subsequent encounter', 56.42, '773-28-7509'),
('629-89-8848', 'Sodium Fluoride', 'Toxic eff of corrosv acids and acid-like substnc, acc, subs', 12.95, '354-19-4934'),
('635-61-4058', 'Prednisone', 'Dysthymic disorder', 45.48, '828-21-7499'),
('643-62-7797', 'metoprolol tartrate', 'Toxic eff of nitrodrv/aminodrv of benzn/homolog, asslt, subs', 67.37, '393-28-8838'),
('649-15-3879', 'Avobenzone Homosalate Octisalate Octocrylene Oxybenzone', 'Encntr for exam for nrml cmprsn and ctrl in clncl rsrch prog', 42.7, '203-83-0282'),
('657-71-6000', 'Glycerin', 'Sltr-haris Type I physl fx low end ulna, r arm, 7thK', 47.74, '751-64-4421'),
('664-91-0947', 'Meloxicam', 'Congenital malform', 98.86, '725-03-9381'),
('671-93-0050', 'Famotidine', 'Other calcification of muscle, upper arm', 63.15, '594-38-0082'),
('683-06-7768', 'Benzocaine and Menthol', 'Sltr-haris Type III physl fx low end l tibia, 7thP', 27.13, '167-26-5999'),
('700-33-0506', 'Hydralazine Hydrochloride', 'Oblique fracture of shaft of humerus', 52.44, '642-18-6963'),
('701-20-7190', 'Magnesium hydroxide', 'Generalized atherosclerosis', 93.41, '884-69-8623'),
('718-38-4668', 'Clobetasol Propionate', 'Minor laceration of right pulmonary blood vessels, sequela', 80.05, '299-29-4255'),
('733-03-8144', 'ALCOHOL', 'Migraine without aura, intractable', 34.68, '788-45-8455'),
('749-21-4474', 'Ibuprofen', 'Laceration with foreign body, left ankle', 23.03, '127-12-4600'),
('753-31-0295', 'Walnut Black Pollen', 'Other rupture of muscle (nontraumatic), right thigh', 52.94, '318-57-1622'),
('754-52-3385', 'Naproxen Sodium', 'Corrosion of 3rd deg mu sites of unsp ankle and foot, init', 43.49, '862-43-7456'),
('757-55-0088', 'NITROGEN', 'Abscess of lung and mediastinum', 17.83, '301-94-8430'),
('758-70-3997', 'Bismuth subsalicylate', 'Disp fx of med condyle of unsp humer, 7thG', 51.6, '584-41-6980'),
('761-58-2391', 'TRICLOSAN', 'Mtrcy passenger injured in clsn w pedl cyc in traf, init', 77.71, '830-04-0501'),
('765-08-0461', 'SERTRALINE HYDROCHLORIDE', 'Corrosion of third degree of unspecified axilla, sequela', 46.79, '530-23-2457'),
('780-33-2906', 'Simvastatin', 'Underdosing of chloramphenicol group, initial encounter', 35.58, '311-76-9814'),
('792-42-5523', 'thiothixene', 'Toxic effect of venom of spider, accidental (unintentional)', 19.57, '437-42-4354'),
('798-47-2292', 'Nandrolone Decanoate', 'Puncture wound without foreign body, left thigh', 34.39, '190-58-7645'),
('802-55-7255', 'Paroxetine Hydrochloride', 'Erysipeloid, unspecified', 31.06, '226-95-5925'),
('806-14-9832', 'Carvedilol', 'Path fx in oth disease, l hand, subs for fx w routn heal', 54.97, '491-66-3961'),
('823-01-0056', 'Magnesium hydroxide', 'Dislocation of jaw, left side, subsequent encounter', 68.06, '652-64-2732'),
('823-17-6434', 'Aluminum Sesquichlorohydrate', 'Primary blast injury of colon', 94.2, '284-36-4948'),
('830-96-4692', 'Amoxicillin', 'Burn of first degree of left palm, sequela', 22.8, '475-34-5685'),
('862-13-3551', 'TITANIUM DIOXIDE, OCTINOXATE, ZINC OXIDE', 'Derang of medial meniscus due to old tear/inj, left knee', 54.14, '352-38-8305'),
('863-27-0860', 'LIDOCAINE', 'Nondisp bicondylar fx r tibia, 7thJ', 76.39, '727-79-9286'),
('867-51-9846', 'Nitrogen', 'Contusion of fallopian tube, unilateral, initial encounter', 10.79, '319-40-8413'),
('867-61-1801', 'Hydroquinone', 'Puncture wound without foreign body of unsp part of thorax', 72.68, '302-21-6255'),
('870-73-3951', 'Diphenhydramine HCl', 'Neoplasm of uncrt behavior of lip, oral cavity and pharynx', 38.83, '756-16-4489'),
('874-27-0954', 'Aluminum Chlorohydrate', 'Sltr-haris Type I physl fx upr end rad, l arm, 7thD', 30.63, '797-32-0073'),
('897-63-3072', 'ivacaftor', 'Salter-Harris Type II physeal fracture of metatarsal', 82.12, '805-04-8814');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase`
--

CREATE TABLE `purchase` (
  `idMedicine` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(50) CHARACTER SET utf8 NOT NULL,
  `purchase_price` double NOT NULL,
  `purchase_date` date NOT NULL,
  `cod` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `purchase`
--

INSERT INTO `purchase` (`idMedicine`, `user`, `purchase_price`, `purchase_date`, `cod`, `quantity`) VALUES
('104-30-7425', 'aobrogane8', 39.08, '2022-06-24', 19, 58),
('104-40-1268', 'emilson4', 76.25, '2022-05-19', 85, 80),
('124-01-1880', 'lmarsie6', 92.44, '2022-09-26', 77, 14),
('124-82-8998', 'mzavittieri1', 20.42, '2022-01-29', 2, 23),
('124-86-6893', 'emilson4', 12.88, '2022-07-01', 95, 87),
('126-65-8522', 'chellewell0', 32.48, '2022-10-02', 31, 89),
('128-70-1751', 'lmarsie6', 46.74, '2022-08-15', 97, 45),
('129-28-9242', 'mnenci2', 60.84, '2022-10-25', 83, 90),
('129-89-9094', 'ryakutin3', 85.19, '2022-07-04', 14, 43),
('139-29-4470', 'ryakutin3', 56.67, '2022-09-22', 74, 81),
('145-14-4178', 'lmarsie6', 21.67, '2022-09-18', 67, 63),
('158-06-1617', 'aobrogane8', 48.53, '2022-10-22', 69, 94),
('184-67-2074', 'jdenman9', 79.87, '2022-05-24', 100, 77),
('189-44-2679', 'eregis5', 45.34, '2022-06-06', 56, 48),
('191-08-2126', 'mzavittieri1', 64.51, '2022-03-11', 22, 71),
('196-90-6131', 'ryakutin3', 78.46, '2022-10-23', 24, 70),
('209-53-7067', 'lmarsie6', 98.35, '2022-06-19', 87, 62),
('212-94-7959', 'aobrogane8', 12.08, '2022-03-10', 49, 69),
('216-44-0923', 'rarno7', 42.51, '2022-02-14', 8, 5),
('224-33-9090', 'mzavittieri1', 53.33, '2022-02-05', 52, 23),
('225-49-1668', 'jdenman9', 19.12, '2022-01-29', 80, 34),
('230-60-9879', 'chellewell0', 63.35, '2022-04-15', 41, 15),
('239-87-9886', 'eregis5', 91.05, '2022-03-23', 46, 100),
('248-59-5995', 'emilson4', 22.45, '2022-04-07', 5, 38),
('253-24-1385', 'mzavittieri1', 69.21, '2022-03-13', 12, 20),
('255-69-5370', 'mnenci2', 80.28, '2022-02-23', 63, 62),
('284-97-8231', 'aobrogane8', 18.33, '2022-04-29', 79, 53),
('300-70-9522', 'chellewell0', 50.95, '2022-03-28', 91, 29),
('304-58-5554', 'emilson4', 63.09, '2022-07-26', 75, 24),
('310-82-1088', 'rarno7', 50.42, '2022-04-14', 78, 7),
('317-93-7868', 'jdenman9', 85.39, '2022-02-20', 90, 69),
('325-87-0358', 'ryakutin3', 98.06, '2022-01-14', 94, 60),
('335-85-0652', 'eregis5', 75.81, '2021-11-23', 26, 76),
('342-82-4607', 'eregis5', 34.5, '2022-03-07', 36, 96),
('350-12-5953', 'jdenman9', 23.52, '2022-08-11', 10, 88),
('358-78-5966', 'emilson4', 72.06, '2021-11-23', 15, 92),
('363-06-2343', 'jdenman9', 31.48, '2022-04-15', 30, 16),
('363-31-2987', 'mnenci2', 67.18, '2022-07-19', 93, 93),
('376-17-3203', 'aobrogane8', 57.53, '2022-08-02', 29, 23),
('402-33-1674', 'rarno7', 36.32, '2022-06-15', 68, 58),
('418-03-1324', 'mzavittieri1', 97.95, '2022-08-17', 72, 61),
('419-57-0196', 'eregis5', 18.14, '2022-07-09', 76, 23),
('421-32-2345', 'mzavittieri1', 19.06, '2022-04-12', 62, 33),
('425-02-3345', 'lmarsie6', 35.5, '2022-09-15', 57, 77),
('425-24-1737', 'eregis5', 86.93, '2022-10-06', 96, 60),
('446-65-3907', 'jdenman9', 12.42, '2022-05-01', 60, 10),
('455-62-8194', 'mzavittieri1', 42.23, '2022-09-13', 92, 96),
('457-29-2452', 'chellewell0', 86.32, '2022-08-21', 81, 99),
('482-44-1584', 'ryakutin3', 39.73, '2022-10-10', 4, 50),
('482-64-2006', 'jdenman9', 52.65, '2022-03-07', 70, 19),
('506-43-2257', 'emilson4', 37.11, '2022-09-16', 45, 78),
('513-87-8360', 'mnenci2', 78.82, '2022-10-29', 3, 22),
('514-18-5333', 'aobrogane8', 86.15, '2021-12-25', 9, 77),
('525-64-7796', 'lmarsie6', 29.1, '2022-03-30', 27, 61),
('536-84-6441', 'chellewell0', 17.81, '2022-02-14', 71, 66),
('539-17-7702', 'emilson4', 62.1, '2022-09-03', 25, 32),
('545-45-2260', 'lmarsie6', 91.51, '2022-06-01', 47, 18),
('570-09-4650', 'chellewell0', 46.45, '2022-07-25', 61, 72),
('570-32-3355', 'eregis5', 35.67, '2022-10-23', 86, 44),
('578-94-1189', 'lmarsie6', 37.99, '2022-04-15', 17, 10),
('590-56-1864', 'aobrogane8', 89.28, '2022-09-05', 59, 31),
('591-65-7320', 'chellewell0', 70.94, '2022-10-09', 11, 23),
('603-52-4917', 'eregis5', 45.22, '2022-01-10', 66, 28),
('606-58-0214', 'eregis5', 18.37, '2021-12-10', 16, 73),
('611-31-6148', 'ryakutin3', 23.41, '2022-04-30', 44, 40),
('611-51-1416', 'mzavittieri1', 72.95, '2021-11-29', 42, 10),
('629-89-8848', 'chellewell0', 93.47, '2022-01-29', 51, 21),
('635-61-4058', 'aobrogane8', 77.87, '2022-02-07', 89, 94),
('643-62-7797', 'mnenci2', 31.07, '2022-09-28', 43, 37),
('649-15-3879', 'aobrogane8', 87.69, '2022-10-26', 39, 60),
('657-71-6000', 'jdenman9', 66.37, '2021-11-26', 50, 29),
('664-91-0947', 'chellewell0', 80.43, '2021-11-12', 1, 70),
('671-93-0050', 'ryakutin3', 11.64, '2022-07-28', 64, 20),
('683-06-7768', 'emilson4', 59.85, '2022-06-10', 55, 29),
('700-33-0506', 'jdenman9', 21.59, '2022-05-31', 40, 50),
('701-20-7190', 'mzavittieri1', 98.08, '2022-09-22', 32, 47),
('718-38-4668', 'rarno7', 23.93, '2022-04-17', 58, 15),
('733-03-8144', 'mnenci2', 31.88, '2022-09-18', 23, 12),
('749-21-4474', 'ryakutin3', 61.81, '2022-01-15', 54, 12),
('753-31-0295', 'rarno7', 76.55, '2022-06-09', 18, 21),
('754-52-3385', 'lmarsie6', 39.57, '2022-09-07', 37, 81),
('757-55-0088', 'mnenci2', 65.25, '2022-10-04', 33, 23),
('758-70-3997', 'eregis5', 47.9, '2022-06-26', 6, 59),
('761-58-2391', 'mnenci2', 90.89, '2022-05-17', 13, 45),
('765-08-0461', 'mzavittieri1', 95.06, '2022-05-05', 82, 71),
('780-33-2906', 'jdenman9', 43.31, '2022-05-07', 20, 66),
('792-42-5523', 'chellewell0', 62.9, '2022-08-30', 21, 22),
('798-47-2292', 'ryakutin3', 44.43, '2022-07-02', 34, 30),
('802-55-7255', 'rarno7', 49.41, '2022-03-02', 98, 11),
('806-14-9832', 'emilson4', 41.05, '2021-11-08', 65, 61),
('823-01-0056', 'rarno7', 35.2, '2022-10-21', 88, 77),
('823-17-6434', 'aobrogane8', 62.21, '2022-01-18', 99, 90),
('830-96-4692', 'ryakutin3', 52.33, '2022-01-28', 84, 5),
('862-13-3551', 'rarno7', 29.07, '2022-09-06', 48, 92),
('863-27-0860', 'mnenci2', 80.56, '2022-04-17', 73, 10),
('867-51-9846', 'mnenci2', 23.8, '2022-07-22', 53, 80),
('867-61-1801', 'lmarsie6', 88.41, '2022-09-25', 7, 20),
('870-73-3951', 'rarno7', 21.96, '2022-06-15', 28, 78),
('874-27-0954', 'emilson4', 12.2, '2022-09-24', 35, 88),
('897-63-3072', 'rarno7', 27.97, '2021-12-10', 38, 83);

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
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Users`
--

INSERT INTO `Users` (`user`, `password`, `name`, `surname`, `birthday`, `gender`, `admin`) VALUES
('aobrogane8', 'd41d8cd98f00b204e9800998ecf8427e', 'Ann-marie', "O\'Brogane", '2003-02-03', 'F', 0),
('chellewell0', 'd41d8cd98f00b204e9800998ecf8427e', 'Candie', 'Hellewell', '2017-02-02', 'F', 0),
('emilson4', 'd41d8cd98f00b204e9800998ecf8427e', 'Erik', 'Milson', '2009-11-04', 'M', 1),
('eregis5', 'd41d8cd98f00b204e9800998ecf8427e', 'Ebba', 'Regis', '2002-03-30', 'F', 1),
('inma', 'd40dbcae0e7088fc4a7e1768cf8771da', 'inma', 'Olias', '1990-02-02', 'F', 1),
('javi', 'a14f8a540e78dae706d255750010a0f8', 'javi', 'villarreal', '2003-04-28', 'M', 1),
('jdenman9', 'd41d8cd98f00b204e9800998ecf8427e', 'Jayson', 'Denman', '2012-03-07', 'M', 0),
('lmarsie6', 'd41d8cd98f00b204e9800998ecf8427e', 'Lefty', 'Marsie', '2018-08-16', 'M', 1),
('mnenci2', 'd41d8cd98f00b204e9800998ecf8427e', 'Minetta', 'Nenci', '2016-12-27', 'F', 0),
('mzavittieri1', 'd41d8cd98f00b204e9800998ecf8427e', 'Morgan', 'Zavittieri', '2009-04-26', 'M', 0),
('rarno7', 'd41d8cd98f00b204e9800998ecf8427e', 'Raff', 'Arno', '2004-11-17', 'M', 1),
('ryakutin3', 'd41d8cd98f00b204e9800998ecf8427e', 'Raine', 'Yakutin', '2002-09-29', 'F', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Medicine`
--
ALTER TABLE `Medicine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_P` (`category`);

--
-- Indices de la tabla `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`idMedicine`,`user`,`cod`),
  ADD KEY `user` (`user`);

--
-- Indices de la tabla `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`user`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Medicine`
--
ALTER TABLE `Medicine`
  ADD CONSTRAINT `FK_P` FOREIGN KEY (`category`) REFERENCES `Category` (`id`);

--
-- Filtros para la tabla `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`user`) REFERENCES `Users` (`user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`idMedicine`) REFERENCES `Medicine` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
