-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Temps de generació: 21-01-2021 a les 17:58:20
-- Versió del servidor: 10.4.11-MariaDB
-- Versió de PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `magda`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Estructura de la taula `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(8, '::1', 'admin', 1611246702);

-- --------------------------------------------------------

--
-- Estructura de la taula `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `date` varchar(200) NOT NULL,
  `text` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `projects`
--

INSERT INTO `projects` (`id`, `position`, `date`, `text`) VALUES
(1, 15, '2019 - 2024', 'EPSRC-JSPS International Core-to-Core Research Network on Polyoxometalate Science for Advanced Energy Materials, INPOMS, EP/S031170/1, Newcastle University, Newcastle, UK.\n'),
(2, 14, '2019', 'Travel grant for attending to conference conceded by Division of Vibrational Spectroscopy at the Swedish Chemical Society.\n'),
(3, 13, '2019', 'Travel grant for attending to conference conceded by Wenner-Gren Foundation.\n'),
(4, 12, '2019', 'Travel grant for attending to conference conceded by Wallenberg Foundation.\n'),
(5, 11, '2018', '70.000 core-hours/month of CPU supercomputing awarded by Swedish National Infrastructure for Computing (SNIC).\n'),
(6, 10, '2017', '5000 core-hours/month of CPU supercomputing awarded by Swedish National Infrastructure for Computing (SNIC).\n'),
(7, 9, '2017 - 2019', 'Postdoctoral stipend conceded by Kempe Foundation. Solution Dynamics and Protonation of Polyoxometalates, Kempe Foundation, Ume&aring; University, Ume&aring;, Sweden.\n'),
(8, 8, '2016', 'Short-Term Scientific Mission for pre-doctoral students funded by COST Action1203.\n'),
(9, 6, '2014', 'Travel Grant for attending to conference funded by COST Action1203.\n'),
(10, 5, '2013', 'Short-Term Scientific Mission for pre-doctoral students conceded by COST Action1203.\n'),
(11, 4, '2013', 'Short-Term Scientific Mission for pre-doctoral students funded by Rovira i Virgili University.'),
(12, 3, '2012 - 2016', 'URV PhD. Fellowship to develop my PhD, from Rovira i Virgili University.'),
(13, 2, '2011', 'Erasmus Mobility Research Fellow.'),
(14, 1, '2010', 'Research Collaboration Fellowship for organization of R&D activities conceded by Quantum Chemistry group, Rovira i Virgili University.'),
(15, 7, '2016', 'Travel Grant for attending to conference funded by COST Action1203.');

-- --------------------------------------------------------

--
-- Estructura de la taula `publications`
--

CREATE TABLE `publications` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `authors` varchar(10000) NOT NULL,
  `abstract` mediumtext DEFAULT NULL,
  `date` date NOT NULL,
  `journal` varchar(300) NOT NULL,
  `pmid` varchar(100) DEFAULT NULL,
  `doi` varchar(100) NOT NULL,
  `issn` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `publications`
--

INSERT INTO `publications` (`id`, `title`, `authors`, `abstract`, `date`, `journal`, `pmid`, `doi`, `issn`) VALUES
(1, 'Microwave Synthesis of Alkali-Free Hexaniobate, Decaniobate, and Hexatantalate Polyoxometalate Ions', 'Mark A. Rambaran, Magda Pascual‐Borràs and C. André Ohlin', 'Microwave preparation of polyoxoniobates and ‐tantalates afford a more rapid alternative to conventional hydrothermal methods of synthesis, in addition to allowing for the use of anhydrous niobium pentoxide <em>in lieu</em> of niobic acid, albeit with diminished yields. Limitations associated with the pH at which different oxides can be activated and how this affects the accessibility of different products are also discussed.\n', '2019-09-22', 'European Journal of Inorganic Chemistry, 2019, 35, 3913-3918', NULL, '10.1002/ejic.201900750', NULL),
(2, 'Protonation and water exchange kinetics in sandwich polyoxometalates', 'C. André Ohlin and Magda Pascual Borràs', 'Density functional theory is used to explore the locus and consequences of protonation in [Zn<sub>4</sub>(HO)<sub>2</sub>(PW<sub>9</sub>O<sub>34</sub>)<sub>2</sub>]<sup>10&minus;</sup>. The results are used to explain recent observations regarding the contrasting pH effects on the water-ligand exchange in [Mn<sub>4</sub>(H<sub>2</sub>O)<sub>2</sub>(P<sub>2</sub>W<sub>15</sub>O<sub>56</sub>)<sub>2</sub>]<sup>16&minus;</sup> and [Co<sub>4</sub>(H<sub>2</sub>O)<sub>2</sub>(P<sub>2</sub>W<sub>15</sub>O<sub>56</sub>)<sub>2</sub>]<sup>16&minus;</sup>, and the general effect of protonation on solvent exchange in metal oxides is discussed.\n', '2018-09-05', 'Dalton Transactions, 2018, 47, 13602-13607', '30207367', '10.1039/c8dt02342e', NULL),
(3, 'Direct Single- and Double-Side Triol-Functionalization of the Mixed Type Anderson Polyoxotungstate [Cr(OH)<sub>3</sub>W<sub>6</sub>O<sub>21</sub>]<sup>6-</sup>', 'Nadiia I. Gumerova, Tania Caldera Fraile, Alexander Roller, Gerald Giester, Magda Pascual-Borràs, C. André Ohlin and Annette Rompel', 'Since the first successful triol-functionalization of the Anderson polyoxometalates, the six protons of their central octahedron X(OH)<sub>6</sub> (X&mdash;heteroatom, p- or d-element) have been considered as a prerequisite for their functionalization with tripodal alcohols, and therefore, the functionalization of Anderson structures from the unprotonated sides have never been reported. Here, we describe the triol-functionalization of [Cr(OH)<sub>3</sub>W<sub>6</sub>O<sub>21</sub>]<sup>6&ndash;</sup> leading to the single-side grafted anions [Cr(OCH<sub>2</sub>)<sub>3</sub>CRW<sub>6</sub>O<sub>21</sub>]<sup>6&ndash;</sup> (<strong>CrW<sub>6</sub>-tris-R</strong>, R = &minus;C<sub>2</sub>H<sub>5</sub>, &minus;NH<sub>2</sub>, &minus;CH<sub>2</sub>OH) and the unprecedented double-side functionalized anion [Cr((OCH<sub>2</sub>)<sub>3</sub>CC<sub>2</sub>H<sub>5</sub>)<sub>2</sub>W<sub>6</sub>O<sub>18</sub>]<sup>3&ndash;</sup> (<strong>CrW<sub>6</sub>-(tris-C<sub>2</sub>H<sub>5</sub>)<sub>2</sub></strong>), despite the lack of protons in the parent anion in the solid state. <strong>CrW<sub>6</sub>-(tris-C<sub>2</sub>H<sub>5</sub>)<sub>2</sub></strong> demonstrates the first example of double-side functionalized Anderson POT with the partially one-side protonated corresponding parent anion. The new heteropolytungstates were characterized by single-crystal X-ray diffraction, elemental analysis, Fourier-transform infrared spectroscopy, thermal gravimetric analysis, cyclic voltammetry, and electrospray ionization mass spectrometry. Density functional theory calculations were performed to investigate and compare the stability among the different isomers of the parent anion [Cr(OH)<sub>3</sub>W<sub>6</sub>O<sub>21</sub>]<sup>6&ndash;</sup>.\n', '2018-12-13', 'Inorganic Chemisty, 2019, 58, 1, 106-113', '30543282', '10.1021/acs.inorgchem.8b01740', NULL),
(4, 'Bonding Insights from Structural and Spectroscopic Comparisons of {SnW<sub>5</sub>} and {TiW<sub>5</sub>} Alkoxido- and Aryloxido-Substituted Lindqvist Polyoxometalates', 'Dr. Balamurugan Kandasamy, Prof. Peter G. Bruce, Prof. William Clegg, Dr. Ross W. Harrington, Dr. Antonio Rodríguez‐Fortea, Dr. Magda Pascual‐Borrás and Dr. R. John Errington', 'Incorporation of {MX}<sup>n +</sup> groups into polyoxometalates (POMs) provides the means not only to introduce reactivity and functionality but also to tune the electronic properties of the oxide framework by varying M, X and <em>n.</em>&nbsp;In order to elucidate the factors responsible for differences in reactivity between {TiW<sub>5</sub>} and {SnW<sub>5</sub>} Lindqvist‐type hexametalates, a series of alkoxido‐ and aryloxido‐tin substituted POMs (<em>n</em> Bu<sub>4</sub>N)<sub>3</sub>[(RO)SnW<sub>5</sub>O<sub>18</sub>] (R=Me, Et, <em>i</em> Pr and <em>t</em> Bu) and (<em>n</em> Bu<sub>4</sub>N)<sub>3</sub>[(ArO)SnW<sub>5</sub>O<sub>18</sub>] (Ar=C<sub>6</sub>H<sub>5</sub>, 4‐MeC<sub>6</sub>H<sub>5</sub>, 4‐<em>t</em> BuC<sub>6</sub>H<sub>5</sub>, 4‐HOC<sub>6</sub>H<sub>4</sub>, 3‐HOC<sub>6</sub>H<sub>4</sub> and 2‐CHOC<sub>6</sub>H<sub>4</sub>) has been structurally characterised and studied by multinuclear NMR (<sup>1</sup>H, <sup>13</sup>C, <sup>17</sup>O, <sup>119</sup>Sn and <sup>183</sup>W) and FTIR spectroscopy. Spectroscopic and structural parameters were compared with those of titanium‐substituted homologues and, when coupled with theoretical studies, indicated that Sn&minus;OR and Sn&minus;OAr bonds are ionic with little &pi;‐contribution, whereas Ti&minus;OR and Ti&minus;OAr bonds are more covalent with &pi;‐bonding that is more prevalent for Ti&minus;OR than Ti&minus;OAr. This experimental and theoretical analysis of bonding in a homologous series of reactive POMs is the most extensive and detailed to date, and reveals factors which account for significant differences in reactivity between tin and titanium congeners.\n', '2018-02-21', 'Chemistry European Journal, 2018, 24, 2750-2757', '29315880', '10.1002/chem.201705547', NULL),
(5, 'Synthesis, Structure, and Antibacterial Activity of a Thallium(III)-Containing Polyoxometalate, [Tl<sub>2</sub>{<em>B</em>-β-SiW<sub>8</sub>O<sub>30</sub>(OH)}<sub>2</sub>]<sup>12-</sup>', 'Wassim W. Ayass, Tamás Fodor, Zhengguo Lin, Rachelle M. Smith, Xiaolin Xing, Khaled Abdallah, Imre Tóth, László Zékány, Magda Pascual-Borràs, Antonio Rodríguez-Fortea, Josep M. Poblet, Linyuan Fan, Jie Cao, Bineta Keita, Matthias S. Ullrich and Ulrich Kortz', 'We have synthesized and structurally characterized the first discrete thallium-containing polyoxometalate, [Tl<sub>2</sub>{<em>B</em>-&beta;-SiW<sub>8</sub>O<sub>30</sub>(OH)}<sub>2</sub>]<sup>12&ndash;</sup> (<strong>1</strong>). Polyanion <strong>1</strong> was characterized in the solid-state and shown to be solution-stable by <sup>203/205</sup>Tl NMR, electrospray ionization mass spectrometry, and electrochemical studies. The antibacterial activity of <strong>1</strong> was also investigated.\n', '2016-10-05', 'Inorganic Chemistry, 2016, 55, 20, 10118-10121', '27704800', '10.1021/acs.inorgchem.6b01921', NULL),
(6, 'Accurate calculation of (<sup>31</sup>)P NMR chemical shifts in polyoxometalates', 'Magda Pascual-Borràs, Xavier López and Josep M. Poblet  ', 'We search for the best density functional theory strategy for the determination of <sup>31</sup>P nuclear magnetic resonance (NMR) chemical shifts, &delta;(<sup>31</sup>P), in polyoxometalates. Among the variables governing the quality of the quantum modelling, we tackle herein the influence of the functional and the basis set. The spin&ndash;orbit and solvent effects were routinely included. To do so we analysed the family of structures &alpha;-[P<sub>2</sub>W<sub>18&minus;x</sub>M<sub>x</sub>O<sub>62</sub>]<sup>n&minus;</sup> with M = Mo<sup>VI</sup>, V<sup>V</sup> or Nb<sup>V</sup>; [P<sub>2</sub>W<sub>17</sub>O<sub>62</sub>(M&prime;R)]<sup>n&minus;</sup> with M&prime; = Sn<sup>IV</sup>, Ge<sup>IV</sup> and Ru<sup>II</sup> and [PW<sub>12&minus;x</sub>M<sub>x</sub>O<sub>40</sub>]<sup>n&minus;</sup> with M = Pd<sup>IV</sup>, Nb<sup>V</sup> and Ti<sup>IV</sup>. The main results suggest that, to date, the best procedure for the accurate calculation of &delta;(<sup>31</sup>P) in polyoxometalates is the combination of TZP/PBE//TZ2P/OPBE (for NMR//optimization step). The hybrid functionals (PBE0, B3LYP) tested herein were applied to the NMR step, besides being more CPU-consuming, do not outperform pure GGA functionals. Although previous studies on <sup>183</sup>W NMR suggested that the use of very large basis sets like QZ4P were needed for geometry optimization, the present results indicate that TZ2P suffices if the functional is optimal. Moreover, scaling corrections were applied to the results providing low mean absolute errors below 1 ppm for &delta;(<sup>31</sup>P), which is a step forward in order to confirm or predict chemical shifts in polyoxometalates. Finally, <em>via</em> a simplified molecular model, we establish how the small variations in &delta;(<sup>31</sup>P) arise from energy changes in the occupied and virtual orbitals of the PO<sub>4</sub> group.\n', '2015-02-23', 'Physical Chemistry Chemical Physics, 2015, 17, 8723-8731', '25738630', '10.1039/c4cp05016a', NULL),
(7, '<sup>17</sup>O NMR chemical shifts in oxometalates: from the simplest monometallic species to mixed-metal polyoxometalates', 'Magda Pascual-Borràs, Xavier López, Antonio Rodríguez-Fortea, R. John Errington and Josep M. Poblet', 'We report a theoretical analysis on <sup>17</sup>O NMR chemical shifts for a family of prototypical polyoxometalate anions. The huge diversity of structures and compositions in this family of oxometalates provides a unique resource for evaluating the influence of the metal type and connectivity over the resonance of <sup>17</sup>O nuclei. For a set of 75 signals, we show that DFT calculations performed with the GGA-type OPBE functional, including spin&ndash;orbit and scaling corrections, provide a mean absolute error &lt;30 ppm, a small value considering that the range of &delta;(<sup>17</sup>O) values in these systems is &sim;1200 ppm. For terminal M=O oxygens, the chemical shifts primarily depend on the energy gap between &pi;<sup>*</sup><sub>M&ndash;O</sub> and &sigma;<sub>M&ndash;O</sub> orbitals. When M is in its highest oxidation state, the energy of &pi;<sup>*</sup><sub>M&ndash;O</sub> increases as we replace M going to the left and down in the periodic table. Consequently, we must expect large energy gaps and upfield shifts for O atoms linked to more electropositive ions. Although there is not a direct relationship between &delta;(<sup>17</sup>O) and the negative charge of the oxygen, it is not entirely wrong to correlate atomic charge and chemical shift because the ionicity of the M&ndash;O bond, the orbital energy gap and the charge density of oxygen are related. The <sup>17</sup>O NMR chemical shifts move upfield with an increasing number of bound metal ions because of the larger energy gap in the involved orbitals. Finally, we explored the effect of protonation on &delta;(<sup>17</sup>O) in oxometalates and demonstrated that <sup>17</sup>O NMR can be a powerful tool to identify the site(s) of protonation at low pH.\n', '2014-03-17', 'Chemical Science, 2014, 5, 2031-2042', NULL, '10.1039/c4sc00083h', '2041-6520');

-- --------------------------------------------------------

--
-- Estructura de la taula `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$08$200Z6ZZbp3RAEXoaWcMA6uJOFicwNZaqk4oDhqTUiFXFe63MG.Daa', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1611246840, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Estructura de la taula `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Índexs per a la taula `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la taula `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la taula `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la taula `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la taula `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la taula `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
