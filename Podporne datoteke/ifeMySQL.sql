-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Gostitelj: localhost
-- Čas nastanka: 30. okt 2017 ob 15.28
-- Različica strežnika: 5.5.58-0+deb8u1
-- Različica PHP: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Zbirka podatkov: `ife`
--

-- --------------------------------------------------------

--
-- Struktura tabele `clanilaboratorija`
--

CREATE TABLE IF NOT EXISTS `clanilaboratorija` (
  `IDLab` tinyint(3) unsigned NOT NULL,
  `IDZaposlenega` int(11) NOT NULL,
  `VlogaZaposlenega` varchar(10) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `clanilaboratorija`
--

INSERT INTO `clanilaboratorija` (`IDLab`, `IDZaposlenega`, `VlogaZaposlenega`) VALUES
(14, 6, 'clan'),
(14, 7, 'clan'),
(14, 8, 'clan'),
(14, 10, 'clan'),
(14, 11, 'clan'),
(14, 12, 'clan'),
(14, 13, 'clan');

-- --------------------------------------------------------

--
-- Struktura tabele `dogodek`
--

CREATE TABLE IF NOT EXISTS `dogodek` (
  `ID` int(11) NOT NULL,
  `Ime` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `Datum` date NOT NULL,
  `OpisDogodka` longtext NOT NULL,
  `Lokacija` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `Link` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `Ura` time NOT NULL,
  `IDProstora` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `dogodek`
--

INSERT INTO `dogodek` (`ID`, `Ime`, `Datum`, `OpisDogodka`, `Lokacija`, `Link`, `Ura`, `IDProstora`) VALUES
(23, 'Festival inovativnih idej', '2017-06-26', 'Lorem Ipsum', 'Fakulteta za elektrotehniko, avla', 'https:\\Lorem Ipsum', '15:00:00', 1),
(24, 'Karierfest', '2018-05-03', 'Lorem Ipsum', 'Fakulteta za elektrotehniko, avla', 'https:\\Lorem Ipsum', '06:00:00', 1),
(25, 'Zakljucna zabava', '2017-12-31', 'Lorem Ipsum', 'Fakulteta za elektrotehniko, avla', 'https:\\Lorem Ipsum', '07:30:00', 1),
(26, 'Sprejem Brucev', '2017-08-07', 'Lorem Ipsum', 'Fakulteta za elektrotehniko, avla', 'https:\\Lorem Ipsum', '09:40:00', 1),
(27, 'Novoletna proslava', '2018-12-31', 'Lorem Ipsum', 'Fakulteta za elektrotehniko, avla', 'https:\\Lorem Ipsum', '23:59:59', 0);

-- --------------------------------------------------------

--
-- Struktura tabele `govorilne ure`
--

CREATE TABLE IF NOT EXISTS `govorilne ure` (
`ID` smallint(6) NOT NULL,
  `Besedilo` longtext NOT NULL,
  `IDZaposlenega` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `govorilne ure`
--

INSERT INTO `govorilne ure` (`ID`, `Besedilo`, `IDZaposlenega`) VALUES
(3, 'Po dogovoru', 6),
(4, 'Po dogovoru', 7),
(6, 'Po dogovoru', 8),
(7, 'Po dogovoru', 10),
(8, 'Po dogovoru', 11),
(9, 'Po dogovoru', 12),
(10, 'Po dogovoru', 13);

-- --------------------------------------------------------

--
-- Struktura tabele `izpit`
--

CREATE TABLE IF NOT EXISTS `izpit` (
  `ID` int(11) NOT NULL,
  `Datum` date NOT NULL,
  `Ura` time DEFAULT NULL,
  `IDTipIzpita` tinyint(3) unsigned NOT NULL,
  `Polaganje` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabele `izpitstudent`
--

CREATE TABLE IF NOT EXISTS `izpitstudent` (
  `IDStudent` int(11) NOT NULL,
  `IDIzpit` int(11) NOT NULL,
  `Tocke` tinyint(3) unsigned DEFAULT NULL,
  `Ocena` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabele `jed`
--

CREATE TABLE IF NOT EXISTS `jed` (
`ID` smallint(6) NOT NULL,
  `TipJedi` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `Opis` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `jed`
--

INSERT INTO `jed` (`ID`, `TipJedi`, `Opis`) VALUES
(1, 'juha', 'Špinacna juha'),
(2, 'juha', 'Prežganka z jajcem'),
(3, 'juha', 'Porova juha'),
(4, 'juha', 'Juha iz suhih strocnic'),
(5, 'juha', 'Goveja/gobova juha'),
(6, 'enoloncnica', 'Perutninska obara'),
(7, 'enoloncnica', 'Bograc'),
(8, 'enoloncnica', 'Pasulj s kranjsko klobaso'),
(9, 'sladica', 'Jabolcni zavitek'),
(10, 'sladica', 'Panakota z gozdnimi sadeži'),
(11, 'sladica', 'Gratinirane palacinke s skuto'),
(12, 'sladica', 'Biskvit z višnjami'),
(13, 'sladica', 'Sadna pita'),
(14, 'glavna jed', 'Štefani pecenka'),
(15, 'glavna jed', 'Sv.vrat na žaru'),
(16, 'glavna jed', 'Pišcancji zrezek s šparglji'),
(17, 'glavna jed', 'Krompirjevi njoki'),
(18, 'glavna jed', 'Zrezek z rožmarinom'),
(19, 'glavna jed', 'Telecja bakalca'),
(20, 'glavna jed', 'Pišcancji file v koruznem ovoju pecen na žaru'),
(21, 'glavna jed', 'Nadevane bucke s paradižnikovo omako'),
(22, 'glavna jed', 'Rižota z lignji'),
(23, 'glavna jed', 'Mesna lazanja'),
(24, 'glavna jed', 'Rižota z grahom, korenjem in svinjskim mesom'),
(25, 'glavna jed', 'Z limono marinirana pišcancja stegna pecena na žaru na posteljici iz rukole'),
(26, 'glavna jed', 'Ocvrta cvetaca'),
(27, 'glavna jed', 'Tortilja z mletim mesom'),
(28, 'glavna jed', 'Žar klobasa'),
(29, 'glavna jed', 'Puranja pecenka'),
(30, 'glavna jed', 'Polnozrnate testenine z gobovo omako in ribanim sirom'),
(31, 'glavna jed', 'Sv. file v listnatem testu'),
(32, 'glavna jed', 'Kuhana govedina'),
(33, 'glavna jed', 'Perutninski paprikaš'),
(34, 'glavna jed', 'Zloženka iz buck, jajcevcev in paradižnika'),
(35, 'glavna jed', 'Ocvrt oslic'),
(36, 'priloga', 'Pommes frites'),
(37, 'priloga', 'Pommes frites, ajvar'),
(38, 'priloga', 'Riž z koruzo, korenjem in grahom'),
(39, 'priloga', 'Gorgonzolna omaka'),
(40, 'priloga', 'Ocvrti krompirjevi krhklji'),
(41, 'priloga', 'Špinacni rezanci'),
(42, 'priloga', 'Dušeno korenje, ocvrt krompircek, jogurtova omaka z zelišci'),
(43, 'priloga', 'Slan krompir'),
(44, 'priloga', 'Krompirjevi kroketi'),
(45, 'priloga', 'Blitva s krompirjem'),
(46, 'priloga', 'Riž s fižolom, korenjem, cvetaco in grahom, sirova omaka'),
(47, 'priloga', 'Pire krompir, ajvar'),
(48, 'priloga', 'Pire krompir'),
(49, 'priloga', 'Maslen riž z zelišci/pražen krompir, kremna špinaca'),
(50, 'priloga', 'Pražen krompir, kremna špinaca'),
(51, 'priloga', 'Testenine-svedri'),
(52, 'priloga', 'Pražen krompir'),
(53, 'priloga', 'Blitva s krompirjem'),
(54, 'solata', 'sestavljena solata');

-- --------------------------------------------------------

--
-- Struktura tabele `katedra`
--

CREATE TABLE IF NOT EXISTS `katedra` (
`ID` int(11) NOT NULL,
  `Ime` varchar(65) CHARACTER SET utf8mb4 NOT NULL,
  `Opis` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `katedra`
--

INSERT INTO `katedra` (`ID`, `Ime`, `Opis`) VALUES
(1, 'Katedra za osnove elektrotehnike, matematiko in fiziko', 'Lorem Ipsum'),
(2, 'Katedra za elektroenergetske sisteme in naprave', 'Lorem Ipsum'),
(3, 'Katedra za elektroniko', 'Lorem Ipsum'),
(4, 'Katedra za merjenja in robotiko', 'Lorem Ipsum'),
(5, 'Katedra za mikroelektronske tehnologije', 'Lorem Ipsum'),
(6, 'Katedra za mehatroniko', 'Lorem Ipsum'),
(7, 'Katedra za sisteme, avtomatiko in kibernetiko', 'Lorem Ipsum'),
(8, 'Katedra za informacijske in komunikacijske tehnologije', 'Lorem Ipsum'),
(9, 'Katedra za biomedicinsko tehniko', 'Lorem Ipsum');

-- --------------------------------------------------------

--
-- Struktura tabele `laboratorij`
--

CREATE TABLE IF NOT EXISTS `laboratorij` (
`ID` tinyint(3) unsigned NOT NULL,
  `Ime` varchar(85) CHARACTER SET utf8mb4 NOT NULL,
  `Akronim` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `Opis` longtext NOT NULL,
  `IDKatedre` int(11) NOT NULL,
  `Tajnica` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `laboratorij`
--

INSERT INTO `laboratorij` (`ID`, `Ime`, `Akronim`, `Opis`, `IDKatedre`, `Tajnica`) VALUES
(1, 'Laboratorij za preskrbo z elektricno energijo', 'LPEE', 'Lorem Ipsum', 2, NULL),
(3, 'Laboratorij za bioelektromagnetiko', 'LBEM', 'LoremIpsum', 1, NULL),
(4, 'Laboratorij za biofiziko', 'LBF', 'LoremIpsum', 1, NULL),
(5, 'Laboratorij za fiziko', 'LF', 'LoremIpsum', 1, NULL),
(6, 'Laboratorij za razsvetljavo in fotometrijo', 'LRF', 'LoremIpsum', 2, NULL),
(7, 'Laboratorij za merjenje in kakovost', 'LMK', 'LoremIpsum', 4, NULL),
(8, 'Laboratorij za robotiko', 'LR', 'LoremIpsum', 4, NULL),
(9, 'Laboratorij za mikroelektroniko', 'LME', 'LoremIpsum', 5, NULL),
(10, 'Laboratorij za biokibernetiko', 'LBK', 'LoremIpsum', 9, NULL),
(11, 'Laboratorij za multimedijo', 'LMM', 'LoremIpsum', 8, NULL),
(12, 'Laboratorij za sevanje in optiko', 'LSO', 'LoremIpsum', 8, NULL),
(13, 'Laboratorij za informacijske tehnologije', 'LaIT', 'LoremIpsum', 8, NULL),
(14, 'Laboratorij za telekomunikacije', 'LT', 'LoremIpsum', 8, '284'),
(15, 'Laboratorij za uporabniku prilagojene komunikacije in ambientno inteligenco', 'LUPKAI', 'LoremIpsum', 8, NULL);

-- --------------------------------------------------------

--
-- Struktura tabele `ltnazivi`
--

CREATE TABLE IF NOT EXISTS `ltnazivi` (
  `ID` tinyint(3) unsigned NOT NULL,
  `Naziv` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `ltnazivi`
--

INSERT INTO `ltnazivi` (`ID`, `Naziv`) VALUES
(1, 'uni. dipl. inž. el.');

-- --------------------------------------------------------

--
-- Struktura tabele `ltprogram`
--

CREATE TABLE IF NOT EXISTS `ltprogram` (
`ID` int(11) NOT NULL,
  `Ime` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `Stopnja` tinyint(3) unsigned NOT NULL,
  `Tip` varchar(15) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12311413 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `ltprogram`
--

INSERT INTO `ltprogram` (`ID`, `Ime`, `Stopnja`, `Tip`) VALUES
(10530613, 'Elektroteh', 3, 'doktorat'),
(11420613, 'Elektroteh', 2, 'magisterij'),
(11421414, 'Multimedij', 2, 'magisterij'),
(12210613, 'Elektroteh', 1, 'univerzitetni'),
(12211414, 'Multimedij', 1, 'univerziteni'),
(12310106, 'Aplikativn', 1, 'visokošolski'),
(12311412, 'Multimedij', 1, 'visokošolski');

-- --------------------------------------------------------

--
-- Struktura tabele `ltprostor`
--

CREATE TABLE IF NOT EXISTS `ltprostor` (
`ID` smallint(6) NOT NULL,
  `Ime` char(10) NOT NULL,
  `Stavba` char(1) NOT NULL,
  `Nadstropje` char(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `ltprostor`
--

INSERT INTO `ltprostor` (`ID`, `Ime`, `Stavba`, `Nadstropje`) VALUES
(1, 'AZ104-KAB', 'A', '4'),
(4, 'BN510-KAB', 'B', '5'),
(5, 'BN513-LTI', 'B', '5'),
(6, 'BN513A/1-L', 'B', '5'),
(7, 'BN513B-LT1', 'B', '5'),
(8, 'DN006B-MMC', 'A', '2'),
(9, 'BN210-KAB', 'B', '2'),
(10, 'BN512-KAB', 'B', '5'),
(11, 'BN414/1-LT', 'B', '4');

-- --------------------------------------------------------

--
-- Struktura tabele `ltsemester`
--

CREATE TABLE IF NOT EXISTS `ltsemester` (
  `ID` tinyint(3) unsigned NOT NULL,
  `SemesterIzvajanja` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `Zacetek` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `Konec` varchar(30) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `ltsemester`
--

INSERT INTO `ltsemester` (`ID`, `SemesterIzvajanja`, `Zacetek`, `Konec`) VALUES
(1, 'zimski', '1. polovica oktobra.', 'Konec prve polovice januarja.'),
(2, 'poletni', '2. polovica januarja', 'Konec prve polovice julija.');

-- --------------------------------------------------------

--
-- Struktura tabele `ltsteber`
--

CREATE TABLE IF NOT EXISTS `ltsteber` (
  `ID` char(10) CHARACTER SET utf8mb4 NOT NULL,
  `Opis` varchar(25) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `ltsteber`
--

INSERT INTO `ltsteber` (`ID`, `Opis`) VALUES
('ISP', 'Izbirni splošni'),
('IST', 'Izbirni strokovni'),
('OSP', 'Obvezni splošni'),
('OST', 'Obvezni strokovni');

-- --------------------------------------------------------

--
-- Struktura tabele `lttipizpit`
--

CREATE TABLE IF NOT EXISTS `lttipizpit` (
  `ID` tinyint(3) unsigned NOT NULL,
  `Opis` varchar(25) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `lttipizpit`
--

INSERT INTO `lttipizpit` (`ID`, `Opis`) VALUES
(1, 'Kolokvij                 '),
(2, 'PopravniKolokvij         '),
(3, 'Teoreticni               '),
(4, 'Prakticni                ');

-- --------------------------------------------------------

--
-- Struktura tabele `lttipzaposlenega`
--

CREATE TABLE IF NOT EXISTS `lttipzaposlenega` (
`ID` tinyint(3) unsigned NOT NULL,
  `Opis` varchar(35) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `lttipzaposlenega`
--

INSERT INTO `lttipzaposlenega` (`ID`, `Opis`) VALUES
(1, 'Redni profesorji'),
(2, 'Izredni profesorji'),
(3, 'Docenti'),
(4, 'Predavatelji in višji predavatelji'),
(5, 'Asistenti'),
(6, 'Tehniški sodelavci'),
(7, 'Raziskovalci'),
(8, 'Ostale službe'),
(9, 'Zunanji sodelavci');

-- --------------------------------------------------------

--
-- Struktura tabele `nasporedu`
--

CREATE TABLE IF NOT EXISTS `nasporedu` (
`IDKosila` int(11) NOT NULL,
  `IDJedi` smallint(6) NOT NULL,
  `Datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabele `odzivi`
--

CREATE TABLE IF NOT EXISTS `odzivi` (
  `ID` int(11) NOT NULL,
  `Komentar` longtext NOT NULL,
  `Datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabele `pedagogpredmet`
--

CREATE TABLE IF NOT EXISTS `pedagogpredmet` (
  `IDPedagog` int(11) NOT NULL,
  `IDPredmet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `pedagogpredmet`
--

INSERT INTO `pedagogpredmet` (`IDPedagog`, `IDPredmet`) VALUES
(8, 64114),
(10, 64190),
(11, 64190),
(12, 64114),
(13, 64190);

-- --------------------------------------------------------

--
-- Struktura tabele `predmet`
--

CREATE TABLE IF NOT EXISTS `predmet` (
  `ID` int(11) NOT NULL,
  `Ime` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `Akronim` varchar(15) NOT NULL,
  `KreditneTocke` tinyint(3) unsigned NOT NULL,
  `Letnik` char(1) NOT NULL,
  `IDSteber` char(10) CHARACTER SET utf8mb4 NOT NULL,
  `Predavanja` tinyint(3) unsigned NOT NULL DEFAULT '45',
  `LaboratorijskeVaje` tinyint(3) unsigned NOT NULL DEFAULT '30',
  `AvditorneVaje` tinyint(3) unsigned NOT NULL DEFAULT '15',
  `IDSemestra` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `predmet`
--

INSERT INTO `predmet` (`ID`, `Ime`, `Akronim`, `KreditneTocke`, `Letnik`, `IDSteber`, `Predavanja`, `LaboratorijskeVaje`, `AvditorneVaje`, `IDSemestra`) VALUES
(63202, 'Osnove matematicne analize', 'OMA', 6, '1', 'OSP', 45, 15, 15, '1'),
(63207, 'Linearna algebra', 'LA', 6, '1', 'OSP', 45, 30, 0, '2'),
(63212, 'Arhitektura racunalniških sistemov', 'ARS', 6, '1', 'OSP', 45, 30, 0, '2'),
(63249, 'Elektronsko poslovanje (FRI)', 'EP', 6, '3', 'ISP', 45, 30, 0, '1'),
(63250, 'Organizacija in management (FRI)', 'OM', 6, '3', 'ISP', 45, 30, 0, '2'),
(63251, 'Poslovna inteligenca', 'PI', 6, '3', 'OST', 45, 30, 0, '1'),
(63255, 'Spletno programiranje', 'SP', 6, '3', 'OST', 45, 30, 0, '1'),
(63262, 'Zanesljivost in zmogljivost racunalniških sistemov (FRI)', 'ZZRS', 6, '2', 'ISP', 45, 30, 0, '2'),
(63269, 'Racunalniška grafika in tehnologija iger', 'RGTI', 6, '2', 'OST', 45, 30, 0, '1'),
(63271, 'Osnove oblikovanja (FRI)', 'OO', 6, '2', 'OSP', 45, 30, 0, '2'),
(63277, 'Programiranje 1', 'P1', 6, '1', 'OST', 45, 30, 0, '1'),
(63278, 'Programiranje 2 (FRI)', 'P2', 6, '1', 'OST', 45, 30, 0, '2'),
(64101, 'Matematika I', 'M1', 9, '1', 'OSP', 60, 0, 45, '1'),
(64103, 'Osnove elektrotehnike I', 'OE1', 8, '1', 'OST', 60, 15, 30, '1'),
(64104, 'Osnove programiranja', 'OP', 5, '1', 'OST', 30, 15, 15, '1'),
(64105, 'Matematika II', 'M2', 9, '1', 'OSP', 60, 15, 30, '2'),
(64107, 'Osnove elektrotehnike II', 'OE2', 8, '1', 'OST', 60, 30, 15, '2'),
(64108, 'Programiranje mikrokrmilnikov', 'PM', 5, '1', 'OST', 30, 15, 15, '2'),
(64111, 'Matematika III', 'M3', 9, '2', 'OSP', 60, 15, 30, '1'),
(64112, 'Meritve', 'ME', 7, '2', 'OST', 45, 45, 0, '1'),
(64113, 'Digitalne strukture', 'DS', 7, '2', 'OST', 45, 30, 15, '1'),
(64114, 'Komunikacijski sistemi', 'KS', 7, '2', 'OST', 45, 30, 15, '1'),
(64115, 'Matematika IV', 'M4', 9, '2', 'OSP', 45, 15, 15, '2'),
(64116, 'Merilna instrumentacija', 'MI', 5, '2', 'OST', 30, 30, 0, '2'),
(64117, 'Elektricni stroji', 'ES', 7, '2', 'OST', 45, 30, 15, '2'),
(64118, 'Polprevodniška elektronika', 'PE', 7, '2', 'OST', 45, 30, 15, '2'),
(64119, 'Avtomatsko vodenje sistemov', 'AVS', 5, '2', 'IST', 45, 15, 0, '2'),
(64120, 'Digitalni elektronski sistemi', 'DES', 5, '2', 'IST', 30, 30, 0, '2'),
(64121, 'Energetika in okolje', 'EO', 5, '2', 'IST', 30, 30, 0, '2'),
(64122, 'Informacijski sistemi', 'IS', 5, '2', 'IST', 45, 15, 0, '2'),
(64123, 'Gradniki sistemov vodenja', 'GSV', 7, '3', 'OST', 45, 45, 0, '1'),
(64124, 'Analiza linearnih sistemov', 'ALS', 7, '3', 'OST', 45, 30, 15, '1'),
(64125, 'Signali', 'SG', 6, '3', 'OST', 45, 30, 0, '1'),
(64126, 'Osnove robotike', 'OR', 5, '3', 'OST', 30, 30, 0, '1'),
(64127, 'Optoelektronika', 'OE', 5, '3', 'IST', 30, 30, 0, '1'),
(64128, 'Osnove mehatronike', 'OM', 5, '3', 'IST', 30, 30, 0, '1'),
(64129, 'Inteligentni sistemi', 'IS', 5, '3', 'IST', 45, 15, 0, '1'),
(64130, 'Numericne metode', 'NM', 5, '3', 'IST', 30, 30, 0, '1'),
(64131, 'Elektronika v avtomatiki', 'EA', 7, '3', 'OST', 45, 45, 0, '2'),
(64132, 'Industrijski krmilni in regulacijski sistemi', 'IKRS', 7, '3', 'OST', 45, 45, 0, '2'),
(64133, 'Racunalniška simulacija', 'RS', 6, '3', 'OST', 45, 30, 0, '2'),
(64134, 'Navidezna resnicnost (Modul A)', 'NRmA', 5, '3', 'ISP', 30, 30, 0, '2'),
(64135, 'Slikovna informatika (Modul A)', 'SImA', 5, '3', 'ISP', 30, 30, 0, '2'),
(64136, 'Nacrtovanje vgrajenih sistemov (Modul B)', 'NVSmB', 5, '3', 'ISP', 30, 30, 0, '2'),
(64137, 'Programiranje vgrajenih sistemov (Modul B)', 'PVSmB', 5, '3', 'ISP', 30, 30, 0, '2'),
(64138, 'Nizkonapetostne elektroenergetske inštalacije (Modul C)', 'NEImC', 5, '3', 'ISP', 30, 30, 0, '2'),
(64139, 'Programirljivi krmilni sistemi (Modul C)', 'PKSmC', 5, '3', 'ISP', 30, 30, 0, '2'),
(64140, 'Svetovni splet (Modul D)', 'SSmD', 5, '3', 'ISP', 45, 15, 0, '2'),
(64141, 'Multimedijski sistemi (Modul D)', 'MSmD', 5, '3', 'ISP', 45, 15, 0, '2'),
(64142, 'Projektno vodenje, inovativnost in timsko delo (Modul E)', 'PITmE', 5, '3', 'ISP', 30, 30, 0, '2'),
(64143, 'Zasnova in razvoj izdelkov (Modul E)', 'ZRImE', 5, '3', 'ISP', 30, 30, 0, '2'),
(64146, 'Elektronske komponente in senzorji', 'EKS', 6, '3', 'ISP', 45, 15, 15, '1'),
(64147, 'Mehanika in termodinamika (Fizika I)', 'MT', 8, '1', 'OSP', 60, 0, 45, '1'),
(64148, 'Atomika in optika (Fizika II)', 'AO', 8, '1', 'OSP', 60, 0, 45, '2'),
(64154, 'Govorne in slikovne tehnologije', 'GST', 6, '2', 'ISP', 45, 30, 0, '2'),
(64174, 'Digitalna obdelava signalov', 'DOS', 7, '2', 'OST', 45, 45, 0, '2'),
(64176, 'Telekomunikacijski protokoli', 'TKP', 6, '2', 'ISP', 45, 30, 0, '2'),
(64190, 'Uvod v multimedijske sisteme', 'UMMS', 6, '1', 'OST', 45, 15, 15, '1'),
(64191, 'Karierna komunikacija', 'KK', 6, '1', 'OSP', 45, 0, 30, '1'),
(64192, 'Tehnološke osnove multmedije', 'TOMM', 7, '1', 'OST', 45, 15, 15, '2'),
(64193, 'Internetni sistemi', 'IS', 6, '2', 'OST', 45, 15, 15, '1'),
(64194, 'Radijski in televizijski sistemi', 'RTVS', 6, '2', 'OST', 45, 15, 15, '1'),
(64195, 'Informacijsko-komunikacijske tehnologije in družba', 'IKT', 6, '2', 'OSP', 45, 0, 30, '1'),
(64196, 'Studijska in snemalna tehnika', 'SST', 6, '3', 'OSP', 45, 30, 0, '2'),
(64197, 'Multimedijske vsebine', 'MMV', 6, '3', 'OST', 45, 30, 0, '1'),
(64198, 'Varnost komunikacij in zašcita vsebin', 'VKZV', 6, '3', 'OST', 45, 30, 0, '1'),
(64199, 'Montaža in postprodukcija', 'MPP', 6, '3', 'OSP', 30, 45, 0, '2'),
(64256, 'Akustika v komunikacijah', 'AK', 6, '2', 'OST', 45, 30, 0, '1'),
(64270, 'Terminalske naprave in uporabniški vmesniki', 'TNUV', 6, '3', 'OST', 45, 30, 0, '2'),
(64271, 'Mobilni in telematski sistemi', 'MTS', 6, '2', 'OST', 45, 30, 0, '2');

-- --------------------------------------------------------

--
-- Struktura tabele `predmetizpit`
--

CREATE TABLE IF NOT EXISTS `predmetizpit` (
  `IDPredmeta` int(11) NOT NULL,
  `IDIzpita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabele `predmetsmer`
--

CREATE TABLE IF NOT EXISTS `predmetsmer` (
  `IDPredmet` int(11) NOT NULL,
  `IDSmer` int(11) NOT NULL,
  `Letnik` varchar(10) NOT NULL,
  `IDSemester` tinyint(3) unsigned NOT NULL,
  `Tip` char(5) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabele `skoda`
--

CREATE TABLE IF NOT EXISTS `skoda` (
`ID` int(11) NOT NULL,
  `Opis` longtext NOT NULL,
  `Lokacija` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `PotDoSlikeSkode` longtext NOT NULL,
  `DatumObvestila` date NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'Obvesceno',
  `PredvidenDatumOdpravitveSkode` date NOT NULL,
  `IDPrijavitelja` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `skoda`
--

INSERT INTO `skoda` (`ID`, `Opis`, `Lokacija`, `PotDoSlikeSkode`, `DatumObvestila`, `Status`, `PredvidenDatumOdpravitveSkode`, `IDPrijavitelja`) VALUES
(1, 'gvx', 'Studio', 'C:\\Shares', '2017-05-29', 'Obvesceno', '2017-06-12', 12);

-- --------------------------------------------------------

--
-- Struktura tabele `smer`
--

CREATE TABLE IF NOT EXISTS `smer` (
  `ID` int(11) NOT NULL,
  `IDProgram` int(11) NOT NULL,
  `Ime` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `Akronim` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `Naziv` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `AkronimNaziva` varchar(25) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `smer`
--

INSERT INTO `smer` (`ID`, `IDProgram`, `Ime`, `Akronim`, `Naziv`, `AkronimNaziva`) VALUES
(101230106, 12310106, 'Avtomatika(VS)', 'AV(VS)', 'diplomirani inženir elektrotehnike [VS]', 'dipl. inž. el. [VS]'),
(101230613, 12210613, 'Avtomatika', 'AV', 'diplomirani inženir elektrotehnike [UN]', 'dipl. inž. el. [UN]'),
(106010106, 12310106, 'Energetska tehnika in avtomatizacija postrojev(VS)', 'EA(VS)', 'diplomirani inženir elektrotehnike [VS]', 'dipl. inž. el. [VS]'),
(106140613, 12210613, 'Energetika in mehatronika', 'EM', 'diplomirani inženir elektrotehnike [UN]', 'dipl. inž. el. [UN]'),
(106210106, 12310106, 'Elektronika(VS)', 'ET(VS)', 'diplomirani inženir elektrotehnike [VS]', 'dipl. inž. el. [VS]'),
(106210613, 12210613, 'Elektronika', 'ET', 'diplomirani inženir elektrotehnike [UN]', 'dipl. inž. el. [UN]'),
(114121412, 12311412, 'Multimedijske komunikacije(VS)', 'MK(VS)', 'diplomirani inženir multimedijskih komunikacij [VS]', 'dipl. inž. mm. kom. [VS]'),
(114141414, 12211414, 'Multimedija', 'MM', 'diplomirani inženir multimedije [UN]', 'dipl. inž. mm. [UN]'),
(121120106, 12310106, 'Tehniška kakovost(VS)', 'TK(VS)', 'diplomirani inženir elektrotehnike [VS]', 'dipl. inž. el. [VS]'),
(121130106, 12310106, 'Telekomunikacije(VS)', 'TL(VS)', 'diplomirani inženir elektrotehnike [VS]', 'dipl. inž. el. [VS]'),
(121130613, 12210613, 'Telekomunikacije', 'TL', 'diplomirani inženir elektrotehnike [UN]', 'dipl. inž. el. [UN]'),
(201100613, 11420613, 'Avtomatika in informatika', 'AI', 'magister inženir elektrotehnike', 'mag. inž. el'),
(202210613, 11420613, 'Biomedicinska tehnika', 'BT', 'magister inženir elektrotehnike', 'mag. inž. el'),
(206060613, 11420613, 'Elektroenergetika', 'EE', 'magister inženir elektrotehnike', 'mag. inž. el'),
(206210613, 11420613, 'Elektronika', 'ET', 'magister inženir elektrotehnike', 'mag. inž. el'),
(214141414, 11421414, 'Multimedija', 'MM', 'magister inženir multimedije', 'mag. inž. mm.'),
(214210613, 11420613, 'Mehatronika', 'MT', 'magister inženir elektrotehnike', 'mag. inž. el'),
(218020613, 11420613, 'Robotika', 'RB', 'magister inženir elektrotehnike', 'mag. inž. el'),
(221130613, 11420613, 'Telekomunikacije', 'TL', 'magister inženir elektrotehnike', 'mag. inž. el'),
(306130613, 10530613, 'Elektrotehnika', 'EL', 'doktor znanosti', 'dr.');

-- --------------------------------------------------------

--
-- Struktura tabele `smerstudent`
--

CREATE TABLE IF NOT EXISTS `smerstudent` (
  `IDSmer` int(11) NOT NULL,
  `IDStudent` int(11) NOT NULL,
  `Letnik` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabele `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `ID` int(11) NOT NULL,
  `Ime` varchar(40) CHARACTER SET utf8mb4 NOT NULL,
  `Priimek` varchar(40) NOT NULL,
  `StudentskiMail` char(4) NOT NULL,
  `Geslo` varchar(64) CHARACTER SET utf8mb4 NOT NULL,
  `SteviloPrijavBrezCertifikata` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `Telefon` char(15) NOT NULL,
  `DomaciNaslov` varchar(64) NOT NULL,
  `DomacaPostnaStevilka` int(11) NOT NULL,
  `IDProgram` int(11) NOT NULL,
  `IDTipMaila` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `student`
--

INSERT INTO `student` (`ID`, `Ime`, `Priimek`, `StudentskiMail`, `Geslo`, `SteviloPrijavBrezCertifikata`, `Telefon`, `DomaciNaslov`, `DomacaPostnaStevilka`, `IDProgram`, `IDTipMaila`) VALUES
(6432017, 'Ana Marija', 'Janežic', '6789', 'v', 100, '042871134', 'Obrezija 11', 1411, 12210613, 1),
(6450009, 'Iza', 'Majcen', '2222', 'v', 100, '041356331', 'Crna vas 29', 1000, 12211414, 1),
(6450025, 'Timotej', 'Holzer', '0912', 'fr', 98, '040721227', 'Smrecje 27', 1354, 12210613, 1),
(6451003, 'Anej', 'Hozjan', '6729', 'fr', 80, '061753903', 'Smrekarjeva ulica 21', 6310, 12211414, 1),
(6452012, 'Miha', 'Podobnikar', '0975', 'rwkfkl                  ', 100, '041675839', 'Moste 24', 1218, 12210613, 1),
(6470031, 'Nadja', 'Messner', '4312', '3564                                    ', 73, '031462173', 'Jelovška cesta 4', 4264, 12211414, 1),
(64160021, 'Aleksander', 'Kovac', '3900', '8d8cdc9d4c7bb98883f7ccd31aaa6c663f5320c97731bce188efa379', 100, '040724968', 'Lendavske gorice 409a', 9220, 12211414, 1);

-- --------------------------------------------------------

--
-- Struktura tabele `sysdiagrams`
--

CREATE TABLE IF NOT EXISTS `sysdiagrams` (
  `name` varchar(160) NOT NULL,
  `principal_id` int(11) NOT NULL,
`diagram_id` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `definition` longblob
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `sysdiagrams`
--

INSERT INTO `sysdiagrams` (`name`, `principal_id`, `diagram_id`, `version`, `definition`) VALUES
('iFE', 1, 1, 1, 0xd0cf11e0a1b11ae1000000000000000000000000000000003e000300feff0900060000000000000000000000010000000100000000000000001000003d00000001000000feffffff0000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdffffff3f000000030000000400000005000000060000000700000008000000090000000a0000000b0000000c0000000d0000000e000000feffffff100000001100000012000000130000001400000015000000160000001700000018000000190000001a0000001b0000001c0000001d0000001e0000001f000000200000002100000022000000230000002400000025000000260000002700000028000000290000002a0000002b0000002c0000002d0000002e0000002f000000300000003100000032000000330000003400000035000000360000003700000038000000390000003a0000003b0000003c000000fefffffffeffffff65000000feffffff4100000042000000430000004400000045000000460000004700000048000000490000004a0000004b0000004c0000004d0000004e0000004f000000500000005100000052000000530000005400000055000000560000005700000058000000590000005a0000005b0000005c0000005d0000005e0000005f0000006000000061000000620000006300000064000000feffffff660000006700000068000000feffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff52006f006f007400200045006e00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500ffffffffffffffff020000000000000000000000000000000000000000000000000000000000000020257c8955ead2013e00000040080000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201ffffffffffffffffffffffff00000000000000000000000000000000000000000000000000000000000000000000000002000000e2180000000000006f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000ffffffff0000000000000000000000000000000000000000000000000000000000000000000000000f000000aa5b000000000000010043006f006d0070004f0062006a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000005f00000000000000000434000a1e500c05000080cc0000000f00ffff46000000cc000000007d0000604f0000a435000080430100495b01004c110000e3300000de805b10f195d011b0a000aa00bdcb5c000008003000000000020000030000003c006b0000000900000000000000d9e6b0e91c81d011ad5100a0c90f5739f43b7f847f61c74385352986e1d552f8a0327db2d86295428d98273c25a2da2d00002800430000000000000053444dd2011fd1118e63006097d2df4834c9d2777977d811907000065b840d9c00002800430000000000000051444dd2011fd1118e63006097d2df4834c9d2777977d811907000065b840d9c53000000ec17000000d3010000003000a509000007000080040000009c02000000800000050000805363684772696400a2300000fa9cffff536b6f646169640000003000a50900000700008005000000a00200000080000007000080536368477269640018caffffca9e00004b6174656472610000003400a5090000070000800c000000a402000000800000090000805363684772696400da80ffff3ad5ffff6c7450726f6772616d00000000003400a50900000700008012000000a4020000008000000900008053636847726964004a790000605400006c7450726f73746f7200000000003000a509000007000080090000009c02000000800000050000805363684772696400b6d1ffffc8640000497a70697469640000007800a5090000070000801f00000052000000018000004e000080436f6e74726f6c0044abffffcd7b000052656c6174696f6e736869702027494453747564656e7461202d3e204944202853747564656e742927206265747765656e202753747564656e742720616e642027497a70697453747564656e7427000000002800b50100000700008020000000310000006700000002800000436f6e74726f6c00ada3ffff137e000000003400a5090000070000800a000000aa020000008000000c0000805363684772696400a8b2ffffce7c0000497a70697453747564656e7400007400a5090000070000802e00000062000000018000004c000080436f6e74726f6c002bb5ffff582b000052656c6174696f6e7368697020274944507265646d6574202d3e2049442028507265646d65742927206265747765656e2027507265646d65742720616e642027507265646d6574536d65722700002800b5010000070000802f000000310000006500000002800000436f6e74726f6c008bbbffff8834000000007800a5090000070000803400000052000000018000004e000080436f6e74726f6c002bb5ffffa261000052656c6174696f6e7368697020274944507265646d657461202d3e2049442028507265646d65742927206265747765656e2027507265646d65742720616e642027507265646d6574497a70697427090100002800b50100000700008035000000310000006700000002800000436f6e74726f6c00a4a6ffff5266000000003400a5090000070000801a000000a6020000008000000a000080536368477269640006cdffff483f00006c74546970497a706974000000007800a5090000070000803a00000052000000018000004e000080436f6e74726f6c002defffff425c000052656c6174696f6e7368697020274944546970497a70697461202d3e20494420286c74546970497a7069742927206265747765656e20276c74546970497a7069742720616e642027497a70697427090100002800b5010000070000803b000000310000006f00000002800000436f6e74726f6c001ae1ffff3f61000000007000a5090000070000803c000000520000000180000048000080436f6e74726f6c00b5d0ffff5c75000052656c6174696f6e7368697020274944497a70697461202d3e2049442028497a7069742927206265747765656e2027497a7069742720616e642027497a70697453747564656e742700002800b5010000070000803d000000310000005f00000002800000436f6e74726f6c0077c6ffff097a000000007000a5090000070000803e000000520000000180000048000080436f6e74726f6c00dbb9ffff100b000052656c6174696f6e7368697020274944202d3e2049442853656d65737465722927206265747765656e20276c7453656d65737465722720616e642027507265646d6574536d65722700002800b5010000070000803f000000310000005700000002800000436f6e74726f6c0049b0ffff0715000000007400a5090000070000804000000052000000018000004c000080436f6e74726f6c007f8effff9205000052656c6174696f6e736869702027494453747564656e74202d3e204944202853747564656e742927206265747765656e202753747564656e742720616e642027536d657253747564656e742700002800b50100000700008041000000310000006500000002800000436f6e74726f6c00c590ffffd42d000000007c00a50900000700008045000000620000000180000052000080436f6e74726f6c00d05000000562000052656c6174696f6e736869702027494450726f73746f72202d3e204944202850726f73746f722927206265747765656e20276c7450726f73746f722720616e6420275a61706f736c656e50726f73746f7227000000002800b50100000700008046000000310000006500000002800000436f6e74726f6c00ef5500003369000000003000a5090000070000804e000000a20200000080000008000080536368477269640080250000f65400006c744e617a69766900007800a509000007000080610000005a000000018000004f000080436f6e74726f6c00aac0ffffa730000052656c6174696f6e73686970202749445072656d657461202d3e2049442028507265646d65742927206265747765656e2027507265646d65742720616e64202750656461676f67507265646d6574270000002800b50100000700008062000000310000006500000002800000436f6e74726f6c0059e8ffffdd3b000000007400a5090000070000806c00000052000000018000004b000080436f6e74726f6c00431500009d44000052656c6174696f6e736869702027464b5f54656c65666f6e736b615f5a61706f736c656e6927206265747765656e20275a61706f736c656e692720616e64202754656c65666f6e736b61270000002800b5010000070000806d000000310000006100000002800000436f6e74726f6c00891700002154000000007c00a5090000070000806e000000520000000180000051000080436f6e74726f6c005f0800000e57000052656c6174696f6e736869702027464b5f476f766f72696c6e65207572655f5a61706f736c656e6927206265747765656e20275a61706f736c656e692720616e642027476f766f72696c6e65207572652703000000002800b5010000070000806f000000310000006700000002800000436f6e74726f6c00a50a0000605f000000003800a50900000700008057000000ac020000008000000d00008053636847726964001cf3ffffa8480000476f766f72696c6e652075726508000000008000a50900000700008070000000520000000180000055000080436f6e74726f6c0023320000a369000052656c6174696f6e736869702027464b5f5a61706f736c656e50726f73746f725f5a61706f736c656e6927206265747765656e20275a61706f736c656e692720616e6420275a61706f736c656e50726f73746f722700000000002800b50100000700008071000000310000006b00000002800000436f6e74726f6c69622a00003369000000003800a50900000700008044000000b0020000008000000f0000805363684772696400e8350000a46a00005a61706f736c656e50726f73746f720000006c00a50900000700008072000000620000000180000043000080436f6e74726f6c007cdaffffaf03000052656c6174696f6e736869702027464b5f507265646d6574536d65725f536d657227206265747765656e2027536d65722720616e642027507265646d6574536d6572270000002800b50100000700008073000000310000005900000002800000436f6e74726f6c00d8dbffff2d13000000003400a50900000700008010000000a8020000008000000b000080536368477269640046baffff32190000507265646d6574536d65720000003400a50900000700008065000000a6020000008000000a0000805363684772696400a60e00002634000054656c65666f6e736b61000000006800a5090000070000807f00000062000000018000003f000080436f6e74726f6c002aa1ffffd5ecffff52656c6174696f6e736869702027464b5f536d65725f6c7450726f6772616d27206265747765656e20276c7450726f6772616d2720616e642027536d6572270000002800b50100000700008080000000310000005500000002800000436f6e74726f6c0022d4ffff24f1ffff00002c00a5090000070000800d0000009a0200000080000004000080536368477269640074f5ffffdef4ffff536d657200007000a509000007000080810000005a0000000180000047000080436f6e74726f6c00233200000b62000052656c6174696f6e736869702027464b5f5a61706f736c656e695f6c744e617a69766927206265747765656e20276c744e617a6976692720616e6420275a61706f736c656e69270000002800b50100000700008082000000310000005d00000002800000436f6e74726f6c00da2f00000768000000003000a50900000700008087000000a202000000800000080000805363684772696400e89ffffff60900006c7453746562657200007400a5090000070000808e000000520000000180000049000080436f6e74726f6c00e79effff7020000052656c6174696f6e7368697020274944537465626572202d3e20494420286c745374656265722927206265747765656e20276c745374656265722720616e642027507265646d6574276e742700002800b5010000070000808f000000310000006500000002800000436f6e74726f6c002e92ffff6830000000003000a50900000700008008000000a0020000008000000700008053636847726964008896ffff983a0000507265646d65740000003800a50900000700008013000000b20200000080000010000080536368477269640054240000b6b200006c745469705a61706f736c656e65676100007400a509000007000080910000005a000000018000004b000080436f6e74726f6c00cd300000c17c000052656c6174696f6e736869702027464b5f5a61706f736c656e4a655f5a61706f736c656e6927206265747765656e20275a61706f736c656e692720616e6420275a61706f736c656e4a65272700002800b50100000700008092000000310000006100000002800000436f6e74726f6c003c2b00003589000000008400a50900000700008093000000520000000180000059000080436f6e74726f6c00614200008994000052656c6174696f6e736869702027464b5f5a61706f736c656e4a655f6c745469705a61706f736c656e65676127206265747765656e20276c745469705a61706f736c656e6567612720616e6420275a61706f736c656e4a652700000000002800b50100000700008094000000310000006f00000002800000436f6e74726f6c00a7440000f7a1000000003400a50900000700008090000000a6020000008000000a000080536368477269640062430000d68300005a61706f736c656e4a65720000006c00a509000007000080a0000000520000000180000043000080436f6e74726f6c0052b7ffff09f5ffff52656c6174696f6e736869702027464b5f536d657253747564656e745f536d657227206265747765656e2027536d65722720616e642027536d657253747564656e74270000002800b501000007000080a1000000310000005900000002800000436f6e74726f6c0071cbffff99f4ffff00003400a5090000070000800e000000a8020000008000000b0000805363684772696472808fffff0af6ffff536d657253747564656e740000007000a509000007000080a2000000520000000180000045000080436f6e74726f6c007787ffff8decffff52656c6174696f6e736869702027464b5f53747564656e745f6c7450726f6772616d27206265747765656e20276c7450726f6772616d2720616e64202753747564656e742700000000002800b501000007000080a3000000310000005b00000002800000436f6e74726f6c00347cffff8939000000003400a5090000070000800f000000a6020000008000000a0000805363684772696400dcbaffff24faffff6c7453656d6573746572000000003000a509000007000080ae000000a20200000080000008000080536368477269640008bcffff368d00005469704d61696c6100003400a50900000700008067000000a40200000080000009000080536368477269640060090000786900005a61706f736c656e6961000000006c00a509000007000080b1000000520000000180000043000080436f6e74726f6c0044abffff358c000052656c6174696f6e736869702027464b5f53747564656e745f5469704d61696c6127206265747765656e20275469704d61696c612720616e64202753747564656e74276400002800b501000007000080b2000000310000005900000002800000436f6e74726f6c692caeffffc58b000000003000a50900000700008001000000a0020000008000000700008053636847726964007888ffff666c000053747564656e740000007000a509000007000080b60000005a0000000180000047000080436f6e74726f6c0065f4ffffbd7c000052656c6174696f6e736869702027464b5f5a61706f736c656e695f5469704d61696c6127206265747765656e20275469704d61696c612720616e6420275a61706f736c656e69272700002800b501000007000080b7000000310000005d00000002800000436f6e74726f6c00831400006991000000007c00a509000007000080bb0000005a0000000180000053000080436f6e74726f6c0092000000e930000052656c6174696f6e736869702027464b5f50656461676f67507265646d65745f5a61706f736c656e6927206265747765656e20275a61706f736c656e692720616e64202750656461676f67507265646d6574271100002800b501000007000080bc000000310000006900000002800000436f6e74726f6c007d2400005d30000000003800a50900000700008016000000ae020000008000000e00008053636847726964009adeffff6621000050656461676f67507265646d6574000000008800a509000007000080bd00000052000000018000005d000080436f6e74726f6c00731500008398000052656c6174696f6e736869702027464b5f436c616e694c61626f7261746f72696a615f4c61626f7261746f72696a27206265747765656e20274c61626f7261746f72696a2720616e642027436c616e694c61626f7261746f72696a612703000000002800b501000007000080be000000310000007300000002800000436f6e74726f6c00b81000001398000000008400a509000007000080c1000000520000000180000059000080436f6e74726f6c000d1e0000c17c000052656c6174696f6e736869702027464b5f436c616e694c61626f7261746f72696a615f5a61706f736c656e6927206265747765656e20275a61706f736c656e692720616e642027436c616e694c61626f7261746f72696a612700690000002800b501000007000080c2000000310000006f00000002800000436f6e74726f6c000f0e0000a089000000003c00a50900000700008095000000b402000000800000110000805363684772696400781e0000a08c0000436c616e694c61626f7261746f72696a61002e0000007000a509000007000080c3000000520000000180000047000080436f6e74726f6c00bdc7fffff175000052656c6174696f6e736869702027464b5f507265646d6574497a7069745f497a70697427206265747765656e2027497a7069742720616e642027507265646d6574497a706974272700002800b501000007000080c4000000310000005d00000002800000436f6e74726f6c00b0c7ffff8175000000003400a50900000700008033000000aa020000008000000c00008053636847726964008eaeffffe2680000507265646d6574497a70697400006c00a509000007000080c5000000620000000180000041000080436f6e74726f6c006d5c0000354e000052656c6174696f6e736869702027464b5f446f676f64656b5f446f676f64656b27206265747765656e2027446f676f64656b2720616e642027446f676f64656b2700000000002800b501000007000080c6000000310000005700000002800000436f6e74726f6c006f6b0000a94d000000003000a50900000700008002000000a002000000800000070000805363684772696400d638000064320000446f676f64656b0000003400a50900000700008006000000a8020000008000000b000080536368477269640024faffff849900004c61626f7261746f72696a6500007400a509000007000080cb000000520000000180000049000080436f6e74726f6c0037f5ffffc99d000052656c6174696f6e736869702027464b5f4c61626f7261746f72696a5f4b61746564726127206265747765656e20274b6174656472612720616e6420274c61626f7261746f72696a271f371100002800b501000007000080cc000000310000005f00000002800000436f6e74726f6c00aaf0ffff0fa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000214334120800000006340000fc32000078563412070000001401000053006b006f006400610000005f006900640020003d00200063006f006c002e006f0062006a006500630074005f0069006400200061006e00640020006900640063002e0063006f006c0075006d006e005f006900640020003d00200063006f006c002e0063006f006c0075006d006e005f006900640020006c0065006600740020006f00750074006500720020006a006f0069006e0020007300790073002e0063006f006d00700075007400650064005f0063006f006c0075006d006e007300200063006d00630020006f006e00200063006d0063002e006f0062006a006500630074005f006900640020003d00000000000000000000000100000005000000540000002c0000002c0000002c000000340000000000000000000000a729000097210000000000002d0100000c0000000c000000070000001c010000f708000053070000a40100000d02000077010000dd0400001b030000e00100001b030000ed030000b2020000000000000100000006340000fc320000000000000a0000000a00000002000000020000001c0100006c1b00000000000001000000f21300004e06000000000000010000000100000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000005400000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000600000053006b006f0064006100000021433412080000004b2c0000b81100007856341207000000140100004b00610074006500640072006100000069006e0064006f00770073002e0046006f0072006d0073002c002000560065007200730069006f006e003d0034002e0030002e0030002e0030002c002000430075006c0074007500720065003d006e00650075007400720061006c002c0020005000750062006c00690063004b006500790054006f006b0065006e003d00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c0000003400000000000000000000004b2c0000b8110000000000002d0100000d0000000c000000070000001c010000f70800005307000049020000df020000fe010000dd04000056040000940200005604000073050000c00300000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000005800000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f000000080000004b00610074006500640072006100000021433412080000007c2100000a1a00007856341207000000140100006c007400500072006f006700720061006d00000064006f00770073002e0046006f0072006d0073002c002000560065007200730069006f006e003d0034002e0030002e0030002e0030002c002000430075006c0074007500720065003d006e00650075007400720061006c002c0020005000750062006c00690063004b006500790054006f006b0065006e003d00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c0000003400000000000000000000007c2100000a1a0000000000002d0100000d0000000c000000070000001c010000dc05000046050000a40100000d02000077010000ce0400001b030000e00100001b030000ed030000b20200000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000005c00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000a0000006c007400500072006f006700720061006d000000214334120800000000240000ad0f00007856341207000000140100006c007400500072006f00730074006f007200000064006f00770073002e0046006f0072006d0073002c002000560065007200730069006f006e003d0034002e0030002e0030002e0030002c002000430075006c0074007500720065003d006e00650075007400720061006c002c0020005000750062006c00690063004b006500790054006f006b0065006e003d00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c00000034000000000000000000000000240000ad0f0000000000002d0100000d0000000c000000070000001c010000f70800005307000049020000df020000fe010000dd04000056040000940200005604000073050000c00300000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000005c00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000a0000006c007400500072006f00730074006f00720000002143341208000000572900004b13000078563412070000001401000049007a0070006900740000002e00570069006e0064006f00770073002e0046006f0072006d0073002c002000560065007200730069006f006e003d0034002e0030002e0030002e0030002c002000430075006c0074007500720065003d006e00650075007400720061006c002c0020005000750062006c00690063004b006500790054006f006b0065006e003d00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c000000340000000000000000000000572900004b130000000000002d0100000d0000000c000000070000001c010000f70800005307000049020000df020000fe010000dd04000056040000940200005604000073050000c00300000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000005400000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000600000049007a00700069007400000002000b0070acffff647d0000a8b2ffff647d00000000000002000000f0f0f00000000000000000000000000000000000010000002000000000000000ada3ffff137e0000fb0e00005801000064000000010000020000fb0e000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d611a0049004400530074007500640065006e007400610020002d003e0020004900440020002800530074007500640065006e007400290021433412080000007d210000d10c000078563412070000001401000049007a00700069007400530074007500640065006e007400000073002e0046006f0072006d0073002c002000560065007200730069006f006e003d0034002e0030002e0030002e0030002c002000430075006c0074007500720065003d006e00650075007400720061006c002c0020005000750062006c00690063004b006500790054006f006b0065006e003d00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c0000003400000000000000000000007d210000d10c0000000000002d0100000d0000000c000000070000001c010000f70800005307000049020000df020000fe010000dd04000056040000940200005604000073050000c00300000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000006200000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000d00000049007a00700069007400530074007500640065006e007400000004000b00c2b6ffff983a0000c2b6ffffae360000dcbaffffae360000dcbaffff132e00000000000002000000f0f0f00000000000000000000000000000000000010000002f000000000000008bbbffff88340000c10e00005801000040000000010000020000c10e000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d6119004900440050007200650064006d006500740020002d003e002000490044002000280050007200650064006d0065007400290002000b00c2b6ffff59640000c2b6ffffe26800000000000002000000f0f0f00000000000000000000000000000000000010000003500000000000000a4a6ffff526600006f0f0000580100003e0000000100000200006f0f000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d611a004900440050007200650064006d0065007400610020002d003e002000490044002000280050007200650064006d006500740029002143341208000000b1240000b11f00007856341207000000140100006c00740054006900700049007a007000690074000000c207000000000000000000000000000000000000000000000000006071400000000000407040000000000000f03f00000000000000000000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f03f000000000000000044b647540000000000000000e4b8475464254854589cc207589cc2070200000002000000000000000000000000000000000000000200000000000000000000000000000000008243000082c30000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c000000340000000000000000000000b1240000b11f0000000000002d0100000d0000000c000000070000001c010000060900006207000049020000df020000fe010000ec04000056040000940200005604000073050000c00300000000000001000000391300003403000000000000000000000000000002000000020000001c010000060900000000000001000000391300003403000000000000000000000000000002000000020000001c010000060900000100000000000000391300003403000000000000000000000000000002000000020000001c010000060900000000000000000000d13100000923000000000000000000000d00000004000000040000001c01000006090000aa0a00009006000078563412040000005e00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000b0000006c00740054006900700049007a00700069007400000002000b00c4f0fffff95e0000c4f0ffffc86400000000000002000000f0f0f00000000000000000000000000000000000010000003b000000000000001ae1ffff3f610000fb0e00005801000033000000010000020000fb0e000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d611e004900440054006900700049007a00700069007400610020002d003e00200049004400200028006c00740054006900700049007a00700069007400290002000b004cd2ffff137800004cd2ffffce7c00000000000002000000f0f0f00000000000000000000000000000000000010000003d0000000000000077c6ffff097a0000260b0000580100003a000000010000020000260b000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d6116004900440049007a00700069007400610020002d003e002000490044002000280049007a00700069007400290002000b0072bbffffc70d000072bbffff321900000000000002000000f0f0f00000000000000000000000000000000000010000003f0000000000000049b0ffff071500007a0a000058010000480000000100000200007a0a000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d6112004900440020002d003e002000490044002800530065006d0065007300740065007200290002000b001690ffff666c00001690ffff4d0800000000000002000000f0f0f00000000000000000000000000000000000010000004100000000000000c590ffffd42d00004e0e0000580100003e0000000100000200004e0e000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d61190049004400530074007500640065006e00740020002d003e0020004900440020002800530074007500640065006e007400290004000b004a7900009c630000a36500009c630000a36500003a6b0000fc5100003a6b00000000000002000000f0f0f00000000000000000000000000000000000010000004600000000000000ef55000033690000a10d00005801000045000000010000020000a10d000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d61190049004400500072006f00730074006f00720020002d003e0020004900440020002800500072006f00730074006f00720029002143341208000000b1190000cc0f00007856341207000000140100006c0074004e0061007a006900760069000000993ed7d6563fdcdb5b3feae9693f0000803f0000803fd7d6563fdcdb5b3feae9693f0000803f0000003f000000000000000000000000adac2c3e3333333f000000000000000000000000e1e0603d6666663f000000000000000000000000c1c0403c0000803f000000000000000000000000000000008a000000de000000030000000000000006000000f0ffffff00000000fa000000fe000000030000000000000006000000f0ffffff00000000e8000000fe000000010000000300000005000000e8ffffff00000000e8000000fe00000002000000030000000500000000000000000000000000000005000000540000002c0000002c0000002c000000340000000000000000000000b1190000cc0f0000000000002d0100000d0000000c000000070000001c01000064050000dc05000049020000df020000fe0100006009000056040000940200005604000073050000c00300000000000001000000060d00004f03000000000000000000000000000002000000020000001c010000640500000000000001000000060d00004f03000000000000000000000000000002000000020000001c010000640500000100000000000000060d00004f03000000000000000000000000000002000000020000001c010000640500000000000000000000861f00001224000000000000000000000d00000004000000040000001c0100006405000063060000ed03000078563412040000005a00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f000000090000006c0074004e0061007a00690076006900000003000b00d6c1ffff2e3b0000960000002e3b000096000000623300000000000002000000f0f0f0000000000000000000000000000000000001000000620000000000000059e8ffffdd3b0000c10e00005801000036000000010000020000c10e000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d611900490044005000720065006d0065007400610020002d003e002000490044002000280050007200650064006d0065007400290002000b00da16000078690000da160000584700000000000002000000f0f0f00000000000000000000000000000000000010000006d000000000000008917000021540000a10d0000580100003d000000010000020000a10d000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d61170046004b005f00540065006c00650066006f006e0073006b0061005f005a00610070006f0073006c0065006e00690002000b00f609000078690000f6090000c95900000000000002000000f0f0f00000000000000000000000000000000000010000006f00000000000000a50a0000605f0000fb0e0000580100003d000000010000020000fb0e000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d611a0046004b005f0047006f0076006f00720069006c006e00650020007500720065005f005a00610070006f0073006c0065006e0069002143341208000000ad1d00002111000078563412070000001401000047006f0076006f00720069006c006e006500200075007200650000000000000000001440000000000000244000000000000014400000000000407840000000000000f03f0000000000000000000000000100000001000000000000000000000000000000000000000000f03f0000000000000000000000000000000000000000000000000000000000000000000000000000000044b6df640000000000000000e4b8df646425e06478961113789611130200000002000000000000000000000000000000000000000200000000002041000020410000a04000002041000020410000a04000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c000000340000000000000000000000ad1d000021110000000000002d0100000d0000000c000000070000001c010000640500007404000049020000df020000fe010000ee02000056040000940200005604000073050000c00300000000000001000000060d00004f03000000000000000000000000000002000000020000001c010000640500000000000001000000060d00004f03000000000000000000000000000002000000020000001c010000640500000100000000000000060d00004f03000000000000000000000000000002000000020000001c010000640500000000000000000000861f00001224000000000000000000000d00000004000000040000001c0100006405000063060000ed03000078563412040000006400000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000e00000047006f0076006f00720069006c006e0065002000750072006500000002000b004f3300003a6b0000e83500003a6b00000000000002000000f0f0f00000000000000000000000000000000000010000007100000000000000622a0000336900008f10000058010000400000000100000200008f10000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d611c0046004b005f005a00610070006f0073006c0065006e00500072006f00730074006f0072005f005a00610070006f0073006c0065006e0069002143341208000000141c0000c71200007856341207000000140100005a00610070006f0073006c0065006e00500072006f00730074006f00720000000000803f0000803fd0cf4f3fd7d6563fe6e5653f0000803f00407040000000000000f03f00000000000000000000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f03f000000000000000044b6df640000000000000000e4b8df646425e06438a7201338a720130200000002000000000000000000000000000000000000000200000000000000000000000000000000008243000082c30000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c000000340000000000000000000000141c0000c7120000000000002d0100000d0000000c000000070000001c01000035070000eb05000049020000df020000fe010000ed03000056040000940200005604000073050000c00300000000000001000000201000003403000000000000000000000000000002000000020000001c010000350700000000000001000000201000003403000000000000000000000000000002000000020000001c010000350700000100000000000000201000003403000000000000000000000000000002000000020000001c010000350700000000000000000000b92800007323000000000000000000000d00000004000000040000001c010000350700008e0800004605000078563412040000006800000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f000000100000005a00610070006f0073006c0065006e00500072006f00730074006f007200000004000b0074f5ffff4605000024e9ffff4605000024e9ffffc8190000a8dbffffc81900000000000002000000f0f0f00000000000000000000000000000000000010000007300000000000000d8dbffff2d1300009d0c0000580100003d0000000100000200009d0c000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d61130046004b005f0050007200650064006d006500740053006d00650072005f0053006d0065007200214334120800000062210000e114000078563412070000001401000050007200650064006d006500740053006d00650072000000770073002e0046006f0072006d0073002c002000560065007200730069006f006e003d0034002e0030002e0030002e0030002c002000430075006c0074007500720065003d006e00650075007400720061006c002c0020005000750062006c00690063004b006500790054006f006b0065006e003d00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c00000034000000000000000000000062210000e1140000000000002d0100000d0000000c000000070000001c010000f70800005307000049020000df020000fe010000dd04000056040000940200005604000073050000c00300000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000006000000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000c00000050007200650064006d006500740053006d0065007200000021433412080000005520000032130000785634120700000014010000540065006c00650066006f006e0073006b0061000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c0000003400000000000000000000005520000032130000000000002d0100000d0000000c000000070000001c010000dc050000b004000049020000df020000fe010000ce04000056040000940200005604000073050000c00300000000000001000000930b00004f03000000000000000000000000000002000000020000001c010000830400000000000001000000930b00004f03000000000000000000000000000002000000020000001c010000830400000100000000000000930b00004f03000000000000000000000000000002000000020000001c0100008304000000000000000000002f1b00009624000000000000000000000d00000004000000040000001c01000083040000550500004803000078563412040000005e00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000b000000540065006c00650066006f006e0073006b006100000004000b0056a2ffff6ceeffff67dfffff6ceeffff67dfffff74f5ffff74f5ffff74f5ffff0000000002000000f0f0f0000000000000000000000000000000000001000000800000000000000022d4ffff24f1ffff960a00005801000046000000010000020000960a000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d61110046004b005f0053006d00650072005f006c007400500072006f006700720061006d0021433412080000006b2200005d11000078563412070000001401000053006d006500720000006d002e00570069006e0064006f00770073002e0046006f0072006d0073002c002000560065007200730069006f006e003d0034002e0030002e0030002e0030002c002000430075006c0074007500720065003d006e00650075007400720061006c002c0020005000750062006c00690063004b006500790054006f006b0065006e003d00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c0000003400000000000000000000006b2200005d110000000000002d0100000d0000000c000000070000001c010000f70800005307000049020000df020000fe010000dd04000056040000940200005604000073050000c00300000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000005200000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000500000053006d0065007200000003000b00983a0000c2640000983a00000e6a00004f3300000e6a00000000000002000000f0f0f00000000000000000000000000000000000010000008200000000000000da2f0000076800009a0b0000580100003c0000000100000200009a0b000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d61150046004b005f005a00610070006f0073006c0065006e0069005f006c0074004e0061007a00690076006900214334120800000094150000311900007856341207000000140100006c0074005300740065006200650072000000d0108487782100000000000000000000244000000000004070400000000000c070400000000000001440000000000000f03f00000000000000000000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f03f000000000000000044b6b86e0000000000000000e4b8b86e6425b96ea0877821a087782102000000020000000000000000000000000000000000000002000000000020410000824300002041008084430000a0400000824300000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c0000003400000000000000000000009415000031190000000000002d0100000d0000000c000000070000001c01000035070000eb050000fe01000076020000b3010000ed030000b10300003a020000b1030000b0040000390300000000000001000000201000003403000000000000000000000000000002000000020000001c010000350700000000000001000000201000003403000000000000000000000000000002000000020000001c010000350700000100000000000000201000003403000000000000000000000000000002000000020000001c010000350700000000000000000000b92800007323000000000000000000000d00000004000000040000001c010000350700008e0800004605000078563412040000005a00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f000000090000006c007400530074006500620065007200000002000b007ea0ffff272300007ea0ffff983a00000000000002000000f0f0f00000000000000000000000000000000000010000008f000000000000002e92ffff68300000a10d0000580100003c000000010000020000a10d000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d6119004900440053007400650062006500720020002d003e00200049004400200028006c007400530074006500620065007200290021433412080000004e2b0000c129000078563412070000001401000050007200650064006d0065007400000069006e0064006f00770073002e0046006f0072006d0073002c002000560065007200730069006f006e003d0034002e0030002e0030002e0030002c002000430075006c0074007500720065003d006e00650075007400720061006c002c0020005000750062006c00690063004b006500790054006f006b0065006e003d00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c0000003400000000000000000000004e2b0000c1290000000000002d0100000d0000000c000000070000001c010000f70800005307000049020000df020000fe010000dd04000056040000940200005604000073050000c00300000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000005800000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000800000050007200650064006d006500740000002143341208000000d12000007d1e00007856341207000000140100006c0074005400690070005a00610070006f0073006c0065006e00650067006100000072006d0073002c002000560065007200730069006f006e003d0034002e0030002e0030002e0030002c002000430075006c0074007500720065003d006e00650075007400720061006c002c0020005000750062006c00690063004b006500790054006f006b0065006e003d00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c000000340000000000000000000000d12000007d1e0000000000002d0100000d0000000c000000070000001c010000f70800005307000049020000df020000fe010000dd04000056040000940200005604000073050000c00300000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000006a00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f000000110000006c0074005400690070005a00610070006f0073006c0065006e00650067006100000003000b0064320000787f0000643200008688000062430000868800000000000002000000f0f0f000000000000000000000000000000000000100000092000000000000003c2b000035890000da0d0000580100003e000000010000020000da0d000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d61170046004b005f005a00610070006f0073006c0065006e004a0065005f005a00610070006f0073006c0065006e00690002000b00f8430000b6b20000f8430000449700000000000002000000f0f0f00000000000000000000000000000000000010000009400000000000000a7440000f7a10000e9110000580100003b000000010000020000e911000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d611e0046004b005f005a00610070006f0073006c0065006e004a0065005f006c0074005400690070005a00610070006f0073006c0065006e006500670061002143341208000000982400006e1300007856341207000000140100005a00610070006f0073006c0065006e004a0065000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c000000340000000000000000000000982400006e130000000000002d0100000d0000000c000000070000001c01000036060000b004000049020000df020000fe010000ce04000056040000940200005604000073050000c00300000000000001000000201000003403000000000000000000000000000002000000020000001c010000350700000000000001000000201000003403000000000000000000000000000002000000020000001c010000350700000100000000000000201000003403000000000000000000000000000002000000020000001c010000350700000000000000000000b92800007323000000000000000000000d00000004000000040000001c010000350700008e0800004605000078563412040000005e00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000b0000005a00610070006f0073006c0065006e004a006500000002000b0074f5ffffa0f6ffff7eb8ffffa0f6ffff0000000002000000f0f0f0000000000000000000000000000000000001000000a10000000000000071cbffff99f4ffff630c0000580100003d000000010000020000630c000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d61130046004b005f0053006d0065007200530074007500640065006e0074005f0053006d00650072002143341208000000fe2800004312000078563412070000001401000053006d0065007200530074007500640065006e0074000000770073002e0046006f0072006d0073002c002000560065007200730069006f006e003d0034002e0030002e0030002e0030002c002000430075006c0074007500720065003d006e00650075007400720061006c002c0020005000750062006c00690063004b006500790054006f006b0065006e003d00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c000000340000000000000000000000fe28000043120000000000002d0100000d0000000c000000070000001c010000ca08000053070000fe01000076020000b3010000dd040000b10300003a020000b1030000b0040000390300000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000006000000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000c00000053006d0065007200530074007500640065006e007400000002000b000e89ffff44efffff0e89ffff666c00000000000002000000f0f0f0000000000000000000000000000000000001000000a300000000000000347cffff893900002b0c0000580100003c0000000100000200002b0c000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d61140046004b005f00530074007500640065006e0074005f006c007400500072006f006700720061006d00214334120800000074220000a31300007856341207000000140100006c007400530065006d006500730074006500720000006f00770073002e0046006f0072006d0073002c002000560065007200730069006f006e003d0034002e0030002e0030002e0030002c002000430075006c0074007500720065003d006e00650075007400720061006c002c0020005000750062006c00690063004b006500790054006f006b0065006e003d00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c00000034000000000000000000000074220000a3130000000000002d0100000d0000000c000000070000001c010000f70800005307000049020000df020000fe010000dd04000056040000940200005604000073050000c00300000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000005e00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000b0000006c007400530065006d006500730074006500720000002143341208000000893900000c0f00007856341207000000140100005400690070004d00610069006c00610000006e0064006f00770073002e0046006f0072006d0073002c002000560065007200730069006f006e003d0034002e0030002e0030002e0030002c002000430075006c0074007500720065003d006e00650075007400720061006c002c0020005000750062006c00690063004b006500790054006f006b0065006e003d00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c000000340000000000000000000000893900000c0f0000000000002d0100000d0000000c000000070000001c010000460500008c0a000049020000df020000fe0100006504000056040000940200005604000073050000c00300000000000001000000f50a00003d04000000000000000000000000000002000000020000001c010000930300000000000001000000f50a00003d04000000000000000000000000000002000000020000001c010000930300000100000000000000f50a00003d04000000000000000000000000000002000000020000001c010000930300000000000000000000761700003e26000000000000000000000d00000004000000040000001c01000093030000380400009402000078563412040000005a00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f000000090000005400690070004d00610069006c00610000002143341208000000ef290000001600007856341207000000140100005a00610070006f0073006c0065006e006900000024727e13000000000000000000607140000000000000244000000000000014400000000000406f40000000000000f03f0000000000000000000000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f03f0000000000000000000000000000000044b6df640000000000000000e4b8df646425e06440727e1340727e130200000002000000000000000000000000000000000000000200000000008b430000204100808d430000204100008b430000704100000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c000000340000000000000000000000ef29000000160000000000002d0100000d0000000c000000070000001c01000072060000a005000049020000df020000fe0100004605000056040000940200005604000073050000c00300000000000001000000201000003403000000000000000000000000000002000000020000001c010000350700000000000001000000201000003403000000000000000000000000000002000000020000001c010000350700000100000000000000201000003403000000000000000000000000000002000000020000001c010000350700000000000000000000b92800007323000000000000000000000d00000004000000040000001c010000350700008e0800004605000078563412040000005c00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000a0000005a00610070006f0073006c0065006e006900000002000b0008bcffffcc8d000070acffffcc8d00000000000002000000f0f0f0000000000000000000000000000000000001000000b2000000000000002caeffffc58b0000440b0000580100003c000000010000020000440b000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d61130046004b005f00530074007500640065006e0074005f005400690070004d00610069006c0061002143341208000000f823000046270000785634120700000014010000530074007500640065006e0074000000000000000055aaffffd5802b00000000000055aaffd5802b0000000000000000000000000000002b80aad5d5ffd5802b00000000000055aaffd5802b000000000000000000000000000055aad58080aaffd5802b00000000000055aaffd5802b0000000000000000000000002b80d5aa550055aaffd5802b00000000000055aaffffffffffffffffffffffaa55000055aaffaa55000055aaffd5802b00000000000055aaffd5802b0000000000000000002b80d5d5802b00000055aaffd5802b00000000000055aaffd5802b00000000000000000055aaffffffffffffff000000000000000000000000000005000000540000002c0000002c0000002c000000340000000000000000000000f823000046270000000000002d0100000b0000000c000000070000001c01000016080000ed03000049020000df020000fe0100001a04000056040000940200005604000073050000c00300000000000001000000853c0000aa1e000000000000090000000900000002000000020000001c010000672000000000000001000000f21300004e06000000000000010000000100000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000005800000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f00000008000000530074007500640065006e007400000003000b0091f5ffffba900000da160000ba900000da160000787f00000000000002000000f0f0f0000000000000000000000000000000000001000000b70000000000000083140000699100000d0c0000580100003c0000000100000200000d0c000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d61150046004b005f005a00610070006f0073006c0065006e0069005f005400690070004d00610069006c00610003000b0054240000786900005424000064320000be010000643200000000000002000000f0f0f0000000000000000000000000000000000001000000bc000000000000007d2400005d30000002110000580100003e0000000100000200000211000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d611b0046004b005f00500065006400610067006f00670050007200650064006d00650074005f005a00610070006f0073006c0065006e006900214334120800000024230000fc110000785634120700000014010000500065006400610067006f00670050007200650064006d0065007400000000006c99ba45fbf02c49afcfce1d4b93cb9a04000000020000000000106600000001000020000000c2b11f6cdb58f0b941eb5a477f246cf3404947b1ac156d7ea9d61014f71df1b8000000000e80000000020000200000004e25fa31090f1955c8e9ab48917bbd3c433483271383c7d4620bf84ff95b78f160000000c386dc1607d4929143e5416f882358702d9f0b23ea542cb1a42666dd1b591bbdc6430885d0c13cb0f203e92b5b734dd5a90fcc96055c320fd961a1dab921c3c949c4924d036d584b9c2fdfd50992375a8d7f4efa000000000000000000000000000005000000540000002c0000002c0000002c00000034000000000000000000000024230000fc110000000000002d0100000d0000000c000000070000001c010000720600000a05000049020000df020000fe0100004605000056040000940200005604000073050000c00300000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000006600000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000f000000500065006400610067006f00670050007200650064006d0065007400000002000b009f1600001a9a0000781e00001a9a00000000000002000000f0f0f0000000000000000000000000000000000001000000be00000000000000b810000013980000af110000580100003c000000010000020000af11000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d61200046004b005f0043006c0061006e0069004c00610062006f007200610074006f00720069006a0061005f004c00610062006f007200610074006f00720069006a0002000b00a41f0000787f0000a41f0000a08c00000000000002000000f0f0f0000000000000000000000000000000000001000000c2000000000000000f0e0000a0890000e61000005801000056000000010000020000e610000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d611e0046004b005f0043006c0061006e0069004c00610062006f007200610074006f00720069006a0061005f005a00610070006f0073006c0065006e00690021433412080000001d1c00000513000078563412070000001401000043006c0061006e0069004c00610062006f007200610074006f00720069006a00610000006f00720069006a006100000000000000a9a8a83e0000003f000000000000000000000000adac2c3e3333333f000000000000000000000000e1e0603d6666663f000000000000000000000000c1c0403c0000803f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c0000003400000000000000000000001d1c000005130000000000002d0100000d0000000c000000070000001c01000035070000eb05000049020000df020000fe010000ed03000056040000940200005604000073050000c00300000000000001000000201000003403000000000000000000000000000002000000020000001c010000350700000000000001000000201000003403000000000000000000000000000002000000020000001c010000350700000100000000000000201000003403000000000000000000000000000002000000020000001c010000350700000000000000000000b92800007323000000000000000000000d00000004000000040000001c010000350700008e0800004605000078563412040000006c00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000001200000043006c0061006e0069004c00610062006f007200610074006f00720069006a006100000002000b00b6d1ffff88770000e9c8ffff887700000000000002000000f0f0f0000000000000000000000000000000000001000000c400000000000000b0c7ffff81750000f10b0000580100003d000000010000020000f10b000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d61150046004b005f0050007200650064006d006500740049007a007000690074005f0049007a0070006900740021433412080000005b1a0000800f000078563412070000001401000050007200650064006d006500740049007a0070006900740000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002c0000002c0000002c0000003400000000000000000000005b1a0000800f0000000000002d0100000d0000000c000000070000001c010000640500007404000049020000df020000fe010000ee02000056040000940200005604000073050000c00300000000000001000000060d00004f03000000000000000000000000000002000000020000001c010000640500000000000001000000060d00004f03000000000000000000000000000002000000020000001c010000640500000100000000000000060d00004f03000000000000000000000000000002000000020000001c010000640500000000000000000000861f00001224000000000000000000000d00000004000000040000001c0100006405000063060000ed03000078563412040000006200000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000d00000050007200650064006d006500740049007a00700069007400000004000b004a790000f6540000726b0000f6540000726b0000b04f0000995d0000b04f00000000000002000000f0f0f0000000000000000000000000000000000001000000c6000000000000006f6b0000a94d00002b0c0000580100003c0000000100000200002b0c000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d61120046004b005f0044006f0067006f00640065006b005f0044006f0067006f00640065006b002143341208000000c3240000f81d000078563412070000001401000044006f0067006f00640065006b000000080000001038b40a000000001038b40a0835d30a050000000000000003000000000000000000000000010000000100000000000098709b70d085a570b8ecde7070000000180000009605000060000000300000003e000000000000000000e03f000000000000e03f000000000000354000000000000035400000000097050000300000003e000000000000000000f03f000000000000f03f00000000000034400000000000003440150000000000000010000000220000009505000096050000100000000700000098050000270000001c0000001b000000980500000000000000000000000000000000000005000000540000002c0000002c0000002c000000340000000000000000000000c3240000f81d0000000000002d010000080000000c000000070000001c010000720600000906000049020000df020000fe0100004605000056040000940200005604000073050000c00300000000000001000000cf1500005c14000000000000060000000600000002000000020000001c0100008c0a00000000000001000000f21300004e06000000000000010000000100000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000005800000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000800000044006f0067006f00640065006b00000021433412080000007b1c00001d1800007856341207000000140100004c00610062006f007200610074006f00720069006a0000004fc297eb010000006c99ba45fbf02c49afcfce1d4b93cb9a04000000020000000000106600000001000020000000c2b11f6cdb58f0b941eb5a477f246cf3404947b1ac156d7ea9d61014f71df1b8000000000e80000000020000200000004e25fa31090f1955c8e9ab48917bbd3c433483271383c7d4620bf84ff95b78f160000000c386dc1607d4929143e5416f882358702d9f0b23ea542cb1a42666dd1b591bbdc6430885d0c13cb0f203e92b5b734dd5a90fcc96055c320fd961a1dab921c3c949c4924d036d584b9c2fdfd50992375a8d7f4efa000000000000000000000000000005000000540000002c0000002c0000002c0000003400000000000000000000007b1c00001d180000000000002d0100000d0000000c000000070000001c010000fb0400005604000049020000df020000fe010000de03000056040000940200005604000073050000c00300000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000000000001000000f21300000804000000000000000000000000000002000000020000001c010000f70800000100000000000000f21300000804000000000000000000000000000002000000020000001c010000f7080000000000000000000055320000dd23000000000000000000000d00000004000000040000001c010000f70800009b0a00008106000078563412040000006000000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000c0000004c00610062006f007200610074006f00720069006a00000002000b0063f6ffff609f000024faffff609f00000000000002000000f0f0f0000000000000000000000000000000000001000000cc00000000000000aaf0ffff0fa00000d70c0000580100003f000000010000020000d70c000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d61160046004b005f004c00610062006f007200610074006f00720069006a005f004b00610074006500640072006100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000fefffffffeffffff0400000005000000060000000700000008000000090000000a0000000b0000000c0000000d0000000e0000000f000000100000001100000012000000130000001400000015000000160000001700000018000000190000001a0000001b0000001c0000001d0000001e0000001f000000fefffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0100feff030a0000ffffffff00000000000000000000000000000000170000004d6963726f736f66742044445320466f726d20322e300010000000456d626564646564204f626a6563740000000000f439b271000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000c0000000b0000004e61bc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000dbe6b0e91c81d011ad5100a0c90f573900000200d04a6a8955ead201020200001048450000000000000000000000000000000000f20100004400610074006100200053006f0075007200630065003d00380033002e003200310032002e003100320036002e003100370032005c00530051004c0045005800500052004500530053003b0049006e0069007400690061006c00200043006100740061006c006f0067003d006900460045003b005000650072007300690073007400200053006500630075007200690074007900200049006e0066006f003d0054007200750065003b0055007300650072002000490044003d00730061003b004d0075006c007400690070006c00650041006300740069007600650052006500730075006c00740053006500740073003d00460061006c00730065003b0043006f006e006e0065000300440064007300530074007200650061006d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000ffffffff00000000000000000000000000000000000000000000000000000000000000000000000040000000f24800000000000053006300680065006d00610020005500440056002000440065006600610075006c0074000000000000000000000000000000000000000000000000000000000026000200ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000020000001600000000000000440053005200450046002d0053004300480045004d0041002d0043004f004e00540045004e0054005300000000000000000000000000000000000000000000002c0002010500000007000000ffffffff00000000000000000000000000000000000000000000000000000000000000000000000003000000060700000000000053006300680065006d00610020005500440056002000440065006600610075006c007400200050006f007300740020005600360000000000000000000000000036000200ffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000002000000012000000000000000c0000004c110000e33000000100260000007300630068005f006c006100620065006c0073005f00760069007300690062006c0065000000010000000b0000001e000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003000370030002c0031002c0031003000300035002c0035002c0031003000350030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0038003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c0031003600360035000000020000000200000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003600350030002c0031002c0031003500340035002c0035002c0031003300350030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003700300030000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c0031003600360035000000040000000400000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003200390035002c0031002c0031003800370035002c0035002c0031003200340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0037003000320030000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c0031003600360035000000050000000500000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003200390035002c0031002c0031003800370035002c0035002c0031003200340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c0031003600360035000000060000000600000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003800000034002c0030002c003200380034002c0030002c0031003200370035002c0031002c0031003100310030002c0035002c003900390030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c0031003600360035000000080000000800000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003200390035002c0031002c0031003800370035002c0035002c0031003200340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c0031003600360035000000090000000900000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003200390035002c0031002c0031003800370035002c0035002c0031003200340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c00310036003600350000000a0000000a00000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003200390035002c0031002c0031003800370035002c0035002c0031003200340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c00310036003600350000000c0000000c00000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003500300030002c0031002c0031003300350030002c0035002c0031003200330030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c00310036003600350000000d0000000d00000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003200390035002c0031002c0031003800370035002c0035002c0031003200340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c00310036003600350000000e0000000e00000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003200350030002c0031002c0031003800370035002c0035002c0031003200340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c00310036003600350000000f0000000f00000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003200390035002c0031002c0031003800370035002c0035002c0031003200340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c0031003600360035000000100000001000000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003200390035002c0031002c0031003800370035002c0035002c0031003200340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c0031003600360035000000120000001200000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003200390035002c0031002c0031003800370035002c0035002c0031003200340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c0031003600360035000000130000001300000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003200390035002c0031002c0031003800370035002c0035002c0031003200340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c0031003600360035000000160000001600000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003600350030002c0031002c0031003200390030002c0035002c0031003300350030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200390035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003200390035002c00310032002c0032003700310035002c00310031002c00310036003600350000001a0000001a00000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003300310030002c0031002c0031003800390030002c0035002c0031003200360030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003300310030002c00310032002c0032003700330030002c00310031002c00310036003800300000001f0000001f000000000000004600000001d4e47101000000640062006f00000049004400530074007500640065006e007400610020002d003e0020004900440020002800530074007500640065006e007400290000000000000000000000c4020000000020000000200000001f0000000800000001214e1158214e110000000000000000ad0700000000002e0000002e00000000000000440000000100000001000000640062006f0000004900440050007200650064006d006500740020002d003e002000490044002000280050007200650064006d0065007400290000000000000000000000c402000000002f0000002f0000002e0000000800000001274e1118274e110000000000000000ad070000000000330000003300000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003800000034002c0030002c003200380034002c0030002c0031003300380030002c0031002c0031003100340030002c0035002c003700350030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0031003300380030000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003300380030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003300380030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003300380030002c00310032002c0031003600330035002c00310031002c0031003000300035000000340000003400000000000000460000000100270001000000640062006f0000004900440050007200650064006d0065007400610020002d003e002000490044002000280050007200650064006d0065007400290000000000000000000000c402000000003500000035000000340000000800000001274e11d8274e110000000000000000ad0700000000003a0000003a000000000000004e000000010fd91701000000640062006f0000004900440054006900700049007a00700069007400610020002d003e00200049004400200028006c00740054006900700049007a00700069007400290000000000000000000000c402000000003b0000003b0000003a0000000800000001274e1198274e110000000000000000ad0700000000003c0000003c000000000000003e000000010fd91701000000640062006f0000004900440049007a00700069007400610020002d003e002000490044002000280049007a00700069007400290000000000000000000000c402000000003d0000003d0000003c0000000800000001094e1158094e110000000000000000ad0700000000003e0000003e00000000000000360000000100000001000000640062006f0000004900440020002d003e002000490044002800530065006d0065007300740065007200290000000000000000000000c402000000003f0000003f0000003e0000000800000001284e11d8284e110000000000000000ad0700000000004000000040000000000000004400000001d4e47101000000640062006f00000049004400530074007500640065006e00740020002d003e0020004900440020002800530074007500640065006e007400290000000000000000000000c402000000004100000041000000400000000800000001284e1158284e110000000000000000ad070000000000440000004400000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003800340035002c0031002c0031003500310035002c0035002c0031003000300035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003800340035002c00310032002c0032003100390030002c00310031002c0031003300350030000000450000004500000000000000440000000100010001000000640062006f00000049004400500072006f00730074006f00720020002d003e0020004900440020002800500072006f00730074006f007200290000000000000000000000c402000000004600000046000000450000000800000001274e1158274e110000000000000000ad0700000000004e0000004e00000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003300380030002c0031002c0031003500300030002c0035002c0032003400300030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0031003300380030000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003300380030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003300380030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003300380030002c00310032002c0031003600330035002c00310031002c0031003000300035000000570000005700000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003800000034002c0030002c003200380034002c0030002c0031003300380030002c0031002c0031003100340030002c0035002c003700350030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0031003300380030000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003300380030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003300380030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003300380030002c00310032002c0031003600330035002c00310031002c00310030003000350000006100000061000000000000004400000001d4e47101000000640062006f000000490044005000720065006d0065007400610020002d003e002000490044002000280050007200650064006d0065007400290000000000000000000000c402000000006200000062000000610000000800000001224e1198224e110000000000000000ad070000000000650000006500000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003500300030002c0031002c0031003200300030002c0035002c0031003200330030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0031003100350035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003100350035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003100350035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003c00000034002c0030002c003200380034002c0030002c0031003100350035002c00310032002c0031003300360035002c00310031002c003800340030000000670000006700000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003600350030002c0031002c0031003400340030002c0035002c0031003300350030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003800340035002c00310032002c0032003100390030002c00310031002c00310033003500300000006c0000006c0000000000000040000000010fd91701000000640062006f00000046004b005f00540065006c00650066006f006e0073006b0061005f005a00610070006f0073006c0065006e00690000000000000000000000c402000000006d0000006d0000006c0000000800000001224e1118224e110000000000000000ad0700000000006e0000006e00000000000000460000000100000001000000640062006f00000046004b005f0047006f0076006f00720069006c006e00650020007500720065005f005a00610070006f0073006c0065006e00690000000000000000000000c402000000006f0000006f0000006e0000000800000001204e1158204e110000000000000000ad0700000000007000000070000000000000004a0000000100350001000000640062006f00000046004b005f005a00610070006f0073006c0065006e00500072006f00730074006f0072005f005a00610070006f0073006c0065006e00690000000000000000000000c402000000007100000071000000700000000800000001124e11d8124e110000000000000000ad07000000000072000000720000000000000038000000013e541101000000640062006f00000046004b005f0050007200650064006d006500740053006d00650072005f0053006d006500720000000000000000000000c4020000000073000000730000007200000008000000011c4e11581c4e110000000000000000ad0700000000007f0000007f000000000000003400000001836c1101000000640062006f00000046004b005f0053006d00650072005f006c007400500072006f006700720061006d0000000000000000000000c4020000000080000000800000007f00000008000000011b4e11981b4e110000000000000000ad0700000000008100000081000000000000003c00000001592d1101000000640062006f00000046004b005f005a00610070006f0073006c0065006e0069005f006c0074004e0061007a0069007600690000000000000000000000c4020000000082000000820000008100000008000000011b4e11581b4e110000000000000000ad070000000000870000008700000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003800340035002c0031002c0031003500310035002c0035002c0031003000300035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003800340035002c00310032002c0032003100390030002c00310031002c00310033003500300000008e0000008e000000000000004400000001d4e47101000000640062006f0000004900440053007400650062006500720020002d003e00200049004400200028006c007400530074006500620065007200290000000000000000000000c402000000008f0000008f0000008e0000000800000001204e1118204e110000000000000000ad070000000000900000009000000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003500390030002c0031002c0031003200300030002c0035002c0031003200330030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003800340035002c00310032002c0032003100390030002c00310031002c003100330035003000000091000000910000000000000040000000010fd91701000000640062006f00000046004b005f005a00610070006f0073006c0065006e004a0065005f005a00610070006f0073006c0065006e00690000000000000000000000c4020000000092000000920000009100000008000000011b4e11181b4e110000000000000000ad0700000000009300000093000000000000004e000000010fd91701000000640062006f00000046004b005f005a00610070006f0073006c0065006e004a0065005f006c0074005400690070005a00610070006f0073006c0065006e0065006700610000000000000000000000c4020000000094000000940000009300000008000000011f4e11d81f4e110000000000000000ad070000000000950000009500000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003800340035002c0031002c0031003500310035002c0035002c0031003000300035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003800340035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003800340035002c00310032002c0032003100390030002c00310031002c0031003300350030000000a0000000a000000000000000380000000100630001000000640062006f00000046004b005f0053006d0065007200530074007500640065006e0074005f0053006d006500720000000000000000000000c40200000000a1000000a1000000a000000008000000011d4e11d81d4e110000000000000000ad070000000000a2000000a2000000000000003a000000010fd91701000000640062006f00000046004b005f00530074007500640065006e0074005f006c007400500072006f006700720061006d0000000000000000000000c40200000000a3000000a3000000a200000008000000011d4e11581d4e110000000000000000ad070000000000ae000000ae00000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000030000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003300350030002c0031002c0032003700300030002c0035002c0031003100320035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001c00000032002c0030002c003200380034002c0030002c003900310035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001c00000032002c0030002c003200380034002c0030002c003900310035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001c00000032002c0030002c003200380034002c0030002c003900310035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003a00000034002c0030002c003200380034002c0030002c003900310035002c00310032002c0031003000380030002c00310031002c003600360030000000b1000000b1000000000000003800000001d8cb1701000000640062006f00000046004b005f00530074007500640065006e0074005f005400690070004d00610069006c00610000000000000000000000c40200000000b2000000b2000000b10000000800000001204e11d8204e110000000000000000ad070000000000b6000000b6000000000000003c00000001592d1101000000640062006f00000046004b005f005a00610070006f0073006c0065006e0069005f005400690070004d00610069006c00610000000000000000000000c40200000000b7000000b7000000b600000008000000011b4e11d81b4e110000000000000000ad070000000000bb000000bb00000000000000480000000100000001000000640062006f00000046004b005f00500065006400610067006f00670050007200650064006d00650074005f005a00610070006f0073006c0065006e00690000000000000000000000c40200000000bc000000bc000000bb00000008000000011c4e11981c4e110000000000000000ad070000000000bd000000bd00000000000000520000000140f57101000000640062006f00000046004b005f0043006c0061006e0069004c00610062006f007200610074006f00720069006a0061005f004c00610062006f007200610074006f00720069006a0000000000000000000000c40200000000be000000be000000bd00000008000000011f4e11981f4e110000000000000000ad070000000000c1000000c1000000000000004e0000000112297701000000640062006f00000046004b005f0043006c0061006e0069004c00610062006f007200610074006f00720069006a0061005f005a00610070006f0073006c0065006e00690000000000000000000000c40200000000c2000000c2000000c100000008000000011a4e11581a4e110000000000000000ad070000000000c3000000c3000000000000003c000000010fd91701000000640062006f00000046004b005f0050007200650064006d006500740049007a007000690074005f0049007a0070006900740000000000000000000000c40200000000c4000000c4000000c30000000800000001204e1198204e110000000000000000ad070000000000c5000000c500000000000000360000000100000001000000640062006f00000046004b005f0044006f0067006f00640065006b005f0044006f0067006f00640065006b0000000000000000000000c40200000000c6000000c6000000c500000008000000011c4e11d81c4e110000000000000000ad070000000000cb000000cb000000000000003e000000010fd91701000000640062006f00000046004b005f004c00610062006f007200610074006f00720069006a005f004b0061007400650064007200610000000000000000000000c40200000000cc000000cc000000cb0000000800000001424e1198424e110000000000000000ad0f00000100008c00000040000000010000000e00000018000000010000001f000000010000000a000000b100000070000000cb00000005000000060000009500000070000000bd00000006000000950000005f0000008a0000003400000008000000330000006d0000001a0000002e00000008000000100000006c000000010000006100000008000000160000009300000073000000c30000000900000033000000c8000000890000003c000000090000000a000000010000006a000000a20000000c000000010000001b000000000000007f0000000c0000000d000000c500000072000000720000000d00000010000000a800000071000000a00000000d0000000e000000760000008b0000003e0000000f000000100000000100000002000000c5000000120000000200000078000000dd000000450000001200000044000000aa0000005f0000009300000013000000900000006a000000010000003a0000001a000000090000007900000068000000810000004e00000067000000470000008d000000700000006700000044000000910000005e0000006e0000006700000057000000000000004d0000006c00000067000000650000002c0000001b0000009100000067000000900000008b00000088000000bb00000067000000160000005a000000af000000c100000067000000950000004b000000020000008e00000087000000080000000100000020000000b6000000ae00000067000000cd0000002d000000b1000000ae00000001000000c2000000e9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000630074002000540069006d0065006f00750074003d00330030003b0054007200750073007400530065007200760065007200430065007200740069006600690063006100740065003d0054007200750065003b005000610063006b00650074002000530069007a0065003d0034003000390036003b004100700070006c00690063006100740069006f006e0020004e0061006d0065003d0022004d006900630072006f0073006f00660074002000530051004c00200053006500720076006500720020004d0061006e006100670065006d0065006e0074002000530074007500640069006f00220000000080050008000000690046004500000000022600120000005400690070004d00610069006c006100000008000000640062006f000000000226002400000043006c0061006e0069004c00610062006f007200610074006f00720069006a006100000008000000640062006f00000000022600160000005a00610070006f0073006c0065006e004a006500000008000000640062006f00000000022600120000006c007400530074006500620065007200000008000000640062006f00000000022600140000005a00610070006f0073006c0065006e006900000008000000640062006f0000000002260016000000540065006c00650066006f006e0073006b006100000008000000640062006f000000000226001c00000047006f0076006f00720069006c006e0065002000750072006500000008000000640062006f00000000022600120000006c0074004e0061007a00690076006900000008000000640062006f00000000022600200000005a00610070006f0073006c0065006e00500072006f00730074006f007200000008000000640062006f000000000226001a00000050007200650064006d006500740049007a00700069007400000008000000640062006f00000000022600160000006c00740054006900700049007a00700069007400000008000000640062006f000000000226001e000000500065006400610067006f00670050007200650064006d0065007400000008000000640062006f00000000022600220000006c0074005400690070005a00610070006f0073006c0065006e00650067006100000008000000640062006f00000000022600140000006c007400500072006f00730074006f007200000008000000640062006f000000000226001800000050007200650064006d006500740053006d0065007200000008000000640062006f00000000022600160000006c007400530065006d0065007300740065007200000008000000640062006f000000000226001800000053006d0065007200530074007500640065006e007400000008000000640062006f000000000226000a00000053006d0065007200000008000000640062006f00000000022600140000006c007400500072006f006700720061006d00000008000000640062006f000000000226001a00000049007a00700069007400530074007500640065006e007400000008000000640062006f000000000226000c00000049007a00700069007400000008000000640062006f000000000226001000000050007200650064006d0065007400000008000000640062006f00000000022600180000004c00610062006f007200610074006f00720069006a00000008000000640062006f00000000022600100000004b00610074006500640072006100000008000000640062006f000000000226000c00000053006b006f0064006100000008000000640062006f000000000226001000000044006f0067006f00640065006b00000008000000640062006f0000000002240010000000530074007500640065006e007400000008000000640062006f00000001000000d68509b3bb6bf2459ab8371664f0327008004e0000007b00310036003300340043004400440037002d0030003800380038002d0034003200450033002d0039004600410032002d004200360044003300320035003600330042003900310044007d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000c0000000b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214);

-- --------------------------------------------------------

--
-- Struktura tabele `telefonska`
--

CREATE TABLE IF NOT EXISTS `telefonska` (
`ID` int(11) NOT NULL,
  `Tip` char(7) NOT NULL,
  `IDZaposlenega` int(11) NOT NULL,
  `Cifra` char(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `telefonska`
--

INSERT INTO `telefonska` (`ID`, `Tip`, `IDZaposlenega`, `Cifra`) VALUES
(2, 'tel', 7, '116'),
(4, 'tel', 6, '813'),
(5, 'tel', 8, '802'),
(7, 'tel', 10, '885'),
(9, 'tel', 11, '101'),
(11, 'tel', 12, '844'),
(13, 'tel', 13, '107');

-- --------------------------------------------------------

--
-- Struktura tabele `tipmaila`
--

CREATE TABLE IF NOT EXISTS `tipmaila` (
  `ID` tinyint(3) unsigned NOT NULL,
  `Domena` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `Vloga` varchar(25) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `tipmaila`
--

INSERT INTO `tipmaila` (`ID`, `Domena`, `Vloga`) VALUES
(1, 'student.uni-lj.si', 'Študent'),
(2, 'fe.uni-lj.si', 'Profesor');

-- --------------------------------------------------------

--
-- Struktura tabele `zaposleni`
--

CREATE TABLE IF NOT EXISTS `zaposleni` (
`ID` int(11) NOT NULL,
  `Ime` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `Priimek` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `IDNaziva` tinyint(3) unsigned NOT NULL,
  `IDTipMaila` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `zaposleni`
--

INSERT INTO `zaposleni` (`ID`, `Ime`, `Priimek`, `IDNaziva`, `IDTipMaila`) VALUES
(6, 'Andrej', 'Bajželj', 1, 2),
(7, 'Jože', 'Guna', 1, 2),
(8, 'Andrej', 'Štern', 1, 2),
(10, 'Klemen', 'Pečnik', 1, 2),
(11, 'Matevž', 'Pogačnik', 1, 2),
(12, 'Matevž', 'Pustišek', 1, 2),
(13, 'Urban', 'Sedlar', 1, 2);

-- --------------------------------------------------------

--
-- Struktura tabele `zaposlenje`
--

CREATE TABLE IF NOT EXISTS `zaposlenje` (
  `IDZaposlenega` int(11) NOT NULL,
  `IDTipa` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `zaposlenje`
--

INSERT INTO `zaposlenje` (`IDZaposlenega`, `IDTipa`) VALUES
(6, 6),
(7, 5),
(8, 4),
(10, 4),
(11, 2),
(12, 2),
(13, 3);

-- --------------------------------------------------------

--
-- Struktura tabele `zaposlenprostor`
--

CREATE TABLE IF NOT EXISTS `zaposlenprostor` (
  `IDZaposlen` int(11) NOT NULL,
  `IDProstor` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `zaposlenprostor`
--

INSERT INTO `zaposlenprostor` (`IDZaposlen`, `IDProstor`) VALUES
(6, 5),
(7, 5),
(8, 7),
(10, 7),
(11, 9),
(12, 10),
(13, 11);

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `clanilaboratorija`
--
ALTER TABLE `clanilaboratorija`
 ADD KEY `FK_ClaniLaboratorija_Zaposleni` (`IDZaposlenega`), ADD KEY `FK_ClaniLaboratorija_Laboratorij` (`IDLab`);

--
-- Indeksi tabele `dogodek`
--
ALTER TABLE `dogodek`
 ADD PRIMARY KEY (`ID`), ADD KEY `FK_Dogodek_Dogodek` (`IDProstora`);

--
-- Indeksi tabele `govorilne ure`
--
ALTER TABLE `govorilne ure`
 ADD PRIMARY KEY (`ID`), ADD KEY `FK_Govorilne ure_Zaposleni` (`IDZaposlenega`);

--
-- Indeksi tabele `izpit`
--
ALTER TABLE `izpit`
 ADD PRIMARY KEY (`ID`), ADD KEY `IDTipIzpita -> ID (ltTipIzpit)` (`IDTipIzpita`);

--
-- Indeksi tabele `izpitstudent`
--
ALTER TABLE `izpitstudent`
 ADD KEY `IDIzpita -> ID (Izpit)` (`IDIzpit`), ADD KEY `IDStudenta -> ID (Student)` (`IDStudent`);

--
-- Indeksi tabele `jed`
--
ALTER TABLE `jed`
 ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `katedra`
--
ALTER TABLE `katedra`
 ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `laboratorij`
--
ALTER TABLE `laboratorij`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `A` (`Ime`,`Akronim`), ADD KEY `FK_Laboratorij_Katedra` (`IDKatedre`);

--
-- Indeksi tabele `ltnazivi`
--
ALTER TABLE `ltnazivi`
 ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `ltprogram`
--
ALTER TABLE `ltprogram`
 ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `ltprostor`
--
ALTER TABLE `ltprostor`
 ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `ltsemester`
--
ALTER TABLE `ltsemester`
 ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `ltsteber`
--
ALTER TABLE `ltsteber`
 ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `lttipizpit`
--
ALTER TABLE `lttipizpit`
 ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `lttipzaposlenega`
--
ALTER TABLE `lttipzaposlenega`
 ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `nasporedu`
--
ALTER TABLE `nasporedu`
 ADD PRIMARY KEY (`IDKosila`), ADD KEY `FK_NaSporedu_Jed` (`IDJedi`);

--
-- Indeksi tabele `odzivi`
--
ALTER TABLE `odzivi`
 ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `pedagogpredmet`
--
ALTER TABLE `pedagogpredmet`
 ADD KEY `IDPremeta -> ID (Predmet)` (`IDPredmet`), ADD KEY `FK_PedagogPredmet_Zaposleni` (`IDPedagog`);

--
-- Indeksi tabele `predmet`
--
ALTER TABLE `predmet`
 ADD PRIMARY KEY (`ID`), ADD KEY `IDSteber -> ID (ltSteber)` (`IDSteber`);

--
-- Indeksi tabele `predmetizpit`
--
ALTER TABLE `predmetizpit`
 ADD KEY `FK_PredmetIzpit_Izpit` (`IDIzpita`), ADD KEY `IDPredmeta -> ID (Predmet)` (`IDPredmeta`);

--
-- Indeksi tabele `predmetsmer`
--
ALTER TABLE `predmetsmer`
 ADD KEY `IDPredmet -> ID (Predmet)` (`IDPredmet`), ADD KEY `ID -> ID(Semester)` (`IDSemester`), ADD KEY `FK_PredmetSmer_Smer` (`IDSmer`);

--
-- Indeksi tabele `skoda`
--
ALTER TABLE `skoda`
 ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `smer`
--
ALTER TABLE `smer`
 ADD PRIMARY KEY (`ID`), ADD KEY `FK_Smer_ltProgram` (`IDProgram`);

--
-- Indeksi tabele `smerstudent`
--
ALTER TABLE `smerstudent`
 ADD KEY `FK_SmerStudent_Smer` (`IDSmer`), ADD KEY `IDStudent -> ID (Student)` (`IDStudent`);

--
-- Indeksi tabele `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `UQ__Student__203380EF838605CC` (`StudentskiMail`), ADD KEY `FK_Student_TipMaila` (`IDTipMaila`), ADD KEY `FK_Student_ltProgram` (`IDProgram`);

--
-- Indeksi tabele `sysdiagrams`
--
ALTER TABLE `sysdiagrams`
 ADD PRIMARY KEY (`diagram_id`), ADD UNIQUE KEY `UK_principal_name` (`principal_id`,`name`);

--
-- Indeksi tabele `telefonska`
--
ALTER TABLE `telefonska`
 ADD PRIMARY KEY (`ID`), ADD KEY `FK_Telefonska_Zaposleni` (`IDZaposlenega`);

--
-- Indeksi tabele `tipmaila`
--
ALTER TABLE `tipmaila`
 ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `zaposleni`
--
ALTER TABLE `zaposleni`
 ADD PRIMARY KEY (`ID`), ADD KEY `FK_Zaposleni_ltNazivi` (`IDNaziva`), ADD KEY `FK_Zaposleni_TipMaila` (`IDTipMaila`);

--
-- Indeksi tabele `zaposlenje`
--
ALTER TABLE `zaposlenje`
 ADD KEY `FK_ZaposlenJe_Zaposleni` (`IDZaposlenega`), ADD KEY `FK_ZaposlenJe_ltTipZaposlenega` (`IDTipa`);

--
-- Indeksi tabele `zaposlenprostor`
--
ALTER TABLE `zaposlenprostor`
 ADD KEY `FK_ZaposlenProstor_Zaposleni` (`IDZaposlen`), ADD KEY `IDProstor -> ID (Prostor)` (`IDProstor`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `govorilne ure`
--
ALTER TABLE `govorilne ure`
MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT tabele `jed`
--
ALTER TABLE `jed`
MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT tabele `katedra`
--
ALTER TABLE `katedra`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT tabele `laboratorij`
--
ALTER TABLE `laboratorij`
MODIFY `ID` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT tabele `ltprogram`
--
ALTER TABLE `ltprogram`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12311413;
--
-- AUTO_INCREMENT tabele `ltprostor`
--
ALTER TABLE `ltprostor`
MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT tabele `lttipzaposlenega`
--
ALTER TABLE `lttipzaposlenega`
MODIFY `ID` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT tabele `nasporedu`
--
ALTER TABLE `nasporedu`
MODIFY `IDKosila` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabele `skoda`
--
ALTER TABLE `skoda`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT tabele `sysdiagrams`
--
ALTER TABLE `sysdiagrams`
MODIFY `diagram_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT tabele `telefonska`
--
ALTER TABLE `telefonska`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT tabele `zaposleni`
--
ALTER TABLE `zaposleni`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Omejitve tabel za povzetek stanja
--

--
-- Omejitve za tabelo `clanilaboratorija`
--
ALTER TABLE `clanilaboratorija`
ADD CONSTRAINT `FK_ClaniLaboratorija_Laboratorij` FOREIGN KEY (`IDLab`) REFERENCES `laboratorij` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_ClaniLaboratorija_Zaposleni` FOREIGN KEY (`IDZaposlenega`) REFERENCES `zaposleni` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `dogodek`
--
ALTER TABLE `dogodek`
ADD CONSTRAINT `FK_Dogodek_Dogodek` FOREIGN KEY (`IDProstora`) REFERENCES `ltprostor` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `govorilne ure`
--
ALTER TABLE `govorilne ure`
ADD CONSTRAINT `FK_Govorilne ure_Zaposleni` FOREIGN KEY (`IDZaposlenega`) REFERENCES `zaposleni` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `izpit`
--
ALTER TABLE `izpit`
ADD CONSTRAINT `IDTipIzpita -> ID (ltTipIzpit)` FOREIGN KEY (`IDTipIzpita`) REFERENCES `lttipizpit` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `izpitstudent`
--
ALTER TABLE `izpitstudent`
ADD CONSTRAINT `IDIzpita -> ID (Izpit)` FOREIGN KEY (`IDIzpit`) REFERENCES `izpit` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `IDStudenta -> ID (Student)` FOREIGN KEY (`IDStudent`) REFERENCES `student` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `laboratorij`
--
ALTER TABLE `laboratorij`
ADD CONSTRAINT `FK_Laboratorij_Katedra` FOREIGN KEY (`IDKatedre`) REFERENCES `katedra` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `nasporedu`
--
ALTER TABLE `nasporedu`
ADD CONSTRAINT `FK_NaSporedu_Jed` FOREIGN KEY (`IDJedi`) REFERENCES `jed` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `pedagogpredmet`
--
ALTER TABLE `pedagogpredmet`
ADD CONSTRAINT `FK_PedagogPredmet_Zaposleni` FOREIGN KEY (`IDPedagog`) REFERENCES `zaposleni` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `IDPremeta -> ID (Predmet)` FOREIGN KEY (`IDPredmet`) REFERENCES `predmet` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `predmet`
--
ALTER TABLE `predmet`
ADD CONSTRAINT `IDSteber -> ID (ltSteber)` FOREIGN KEY (`IDSteber`) REFERENCES `ltsteber` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `predmetizpit`
--
ALTER TABLE `predmetizpit`
ADD CONSTRAINT `FK_PredmetIzpit_Izpit` FOREIGN KEY (`IDIzpita`) REFERENCES `izpit` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `IDPredmeta -> ID (Predmet)` FOREIGN KEY (`IDPredmeta`) REFERENCES `predmet` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `predmetsmer`
--
ALTER TABLE `predmetsmer`
ADD CONSTRAINT `FK_PredmetSmer_Smer` FOREIGN KEY (`IDSmer`) REFERENCES `smer` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `ID -> ID(Semester)` FOREIGN KEY (`IDSemester`) REFERENCES `ltsemester` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `IDPredmet -> ID (Predmet)` FOREIGN KEY (`IDPredmet`) REFERENCES `predmet` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `smer`
--
ALTER TABLE `smer`
ADD CONSTRAINT `FK_Smer_ltProgram` FOREIGN KEY (`IDProgram`) REFERENCES `ltprogram` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `smerstudent`
--
ALTER TABLE `smerstudent`
ADD CONSTRAINT `FK_SmerStudent_Smer` FOREIGN KEY (`IDSmer`) REFERENCES `smer` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `IDStudent -> ID (Student)` FOREIGN KEY (`IDStudent`) REFERENCES `student` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `student`
--
ALTER TABLE `student`
ADD CONSTRAINT `FK_Student_TipMaila` FOREIGN KEY (`IDTipMaila`) REFERENCES `tipmaila` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Student_ltProgram` FOREIGN KEY (`IDProgram`) REFERENCES `ltprogram` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `telefonska`
--
ALTER TABLE `telefonska`
ADD CONSTRAINT `FK_Telefonska_Zaposleni` FOREIGN KEY (`IDZaposlenega`) REFERENCES `zaposleni` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `zaposleni`
--
ALTER TABLE `zaposleni`
ADD CONSTRAINT `FK_Zaposleni_TipMaila` FOREIGN KEY (`IDTipMaila`) REFERENCES `tipmaila` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Zaposleni_ltNazivi` FOREIGN KEY (`IDNaziva`) REFERENCES `ltnazivi` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `zaposlenje`
--
ALTER TABLE `zaposlenje`
ADD CONSTRAINT `FK_ZaposlenJe_Zaposleni` FOREIGN KEY (`IDZaposlenega`) REFERENCES `zaposleni` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_ZaposlenJe_ltTipZaposlenega` FOREIGN KEY (`IDTipa`) REFERENCES `lttipzaposlenega` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `zaposlenprostor`
--
ALTER TABLE `zaposlenprostor`
ADD CONSTRAINT `FK_ZaposlenProstor_Zaposleni` FOREIGN KEY (`IDZaposlen`) REFERENCES `zaposleni` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `IDProstor -> ID (Prostor)` FOREIGN KEY (`IDProstor`) REFERENCES `ltprostor` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
