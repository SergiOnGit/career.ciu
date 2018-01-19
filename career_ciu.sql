-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2018 at 11:52 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u256447530_scar`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_staff`
--

CREATE TABLE `academic_staff` (
  `id` int(11) NOT NULL,
  `title_ge` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `fname_ge` varchar(255) DEFAULT NULL,
  `fname_en` varchar(255) DEFAULT NULL,
  `fname_ru` varchar(255) DEFAULT NULL,
  `rank_ge` varchar(255) DEFAULT NULL,
  `rank_en` varchar(255) DEFAULT NULL,
  `rank_ru` varchar(255) DEFAULT NULL,
  `cv_ge` text,
  `cv_en` text,
  `cabinet_ge` varchar(255) NOT NULL,
  `cabinet_en` varchar(255) NOT NULL,
  `cabinet_ru` varchar(255) NOT NULL,
  `cv_ru` text,
  `facult_id` int(11) DEFAULT NULL,
  `direction_id` int(11) DEFAULT NULL,
  `email` varchar(510) DEFAULT NULL,
  `phone` varchar(510) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `active_ge` tinyint(1) NOT NULL DEFAULT '0',
  `active_en` tinyint(1) NOT NULL DEFAULT '0',
  `active_ru` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announces`
--

CREATE TABLE `announces` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug_ge` varchar(255) DEFAULT NULL,
  `slug_en` varchar(255) DEFAULT NULL,
  `slug_ru` varchar(255) DEFAULT NULL,
  `title_ge` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `descr_ge` varchar(255) DEFAULT NULL,
  `descr_en` varchar(255) DEFAULT NULL,
  `descr_ru` varchar(255) DEFAULT NULL,
  `text_ge` text,
  `text_en` text,
  `text_ru` text,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `active_ge` tinyint(1) NOT NULL DEFAULT '0',
  `active_en` tinyint(1) NOT NULL DEFAULT '1',
  `active_ru` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) UNSIGNED NOT NULL,
  `title_ge` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `target` enum('_self','_blank') NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `active_ge` tinyint(1) NOT NULL DEFAULT '0',
  `active_en` tinyint(1) NOT NULL DEFAULT '0',
  `active_ru` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title_ge`, `title_en`, `title_ru`, `link`, `target`, `image`, `active_ge`, `active_en`, `active_ru`) VALUES
(105, 'პარტნიორი 2', 'partner 2', '', '', '_self', '/uploads/images/partners/partner3.png', 1, 1, 0),
(106, 'პარტნიორი 3', 'partner 3', 'партнер 3', 'https://www.ktg-tbilisi.ge/', '_blank', '/uploads/images/partners/partner5.png', 1, 1, 1),
(107, 'dsadsa', 'dsa', 'dsa', 'http://www.gwp.ge/', '_blank', '/uploads/images/partners/partner4.png', 1, 1, 1),
(108, 'CopyPrint', 'CopyPrint', 'CopyPrint', 'http://copyprint.ge/', '_self', '/uploads/images/partners/partner3.png', 1, 1, 1),
(111, 'ინსტაგრამის ბანერი', 'insta banner', 'rustagram', 'https://www.instagram.com/', '_blank', '/uploads/images/banners/partner1.png', 1, 1, 1),
(112, 'ნაეკის საიტი', '', '', 'http://naec.ge', '_blank', '/uploads/images/0dfc961c93a74fc67f77ac0e95f6909f.jpg', 1, 0, 0),
(113, 'გამოცდების ეროვნული ცენტრი', '', '', 'http://naec.ge/#/ge/index', '_blank', '/uploads/images/banners/ban1.png', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('09j5g3s288a5v7n69equ40nmqar2o6tq', '149.3.117.234', 1515612088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631323031373b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('0ud5ta1rdrdivgnpki12jfm04oe2d1kq', '149.3.117.234', 1515606404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353630363430343b),
('18ffiehnhfeek177sj5472rlp50marf8', '178.134.152.206', 1515590364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353539303334343b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('242eoee012reesunkgab374arv99lsqm', '149.3.117.234', 1515359583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353335393538313b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('26k7i3tnvj9t395scee36h5jhmmfgpi0', '149.3.117.234', 1515358675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353335383436323b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('2kapclv96etrkqnrk3bun0jnr6ts051e', '149.3.117.234', 1515357783, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353335373531383b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('352fe48lg0abrd8qo0gghnsksh86t58u', '149.3.117.234', 1515611515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631313235363b),
('3dqq5rbg7k1dretung9etike3aho408s', '149.3.117.234', 1515358326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353335383037343b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('4nqojvp83rb2d8k28qvutil4el4v211i', '66.249.93.67', 1515404729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353430343730353b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('5djm1jo8mfdn9iur6r3ne4ahvutbre51', '149.3.117.234', 1515361911, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353336313637343b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('5fk83l5lv2k924cq02mhgloccf2dhlta', '149.3.117.234', 1515616193, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631353931373b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('5kejt1u3vuvn6qcgovjiheve1uhgqqfd', '149.3.117.234', 1515617976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631373937363b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('5s4lbqpa6qjgf5a0fe011h72pk856b52', '178.134.152.206', 1515589235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353538393233343b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('79c4flegnebauhtos0iao74nsvlt0dr1', '149.3.117.234', 1515616265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631363236353b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('93ad5s8bgi1o2ddegko1elh2a43s7sfm', '149.3.117.234', 1515611660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631313631353b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('9b47v0pudqbbo0bcl86bgt4utgi4ah8q', '66.249.93.67', 1515501628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353530313336393b),
('9db655hkvkupvmbc5hv68uttp85orijq', '149.3.117.234', 1515356347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353335363039323b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('a07tdos9r1rero986q5rkud1paakfufi', '149.3.117.234', 1515357442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353335373136313b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('b07qfu89vltcho42gi7lavosn5522am1', '178.134.152.206', 1515394567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353339343436393b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('b38k9h6oa5pl433ec11337dpecl6l26l', '178.134.152.206', 1516270555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363237303238303b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('b6to5rkr82nmt2h00i09p0upt408eop6', '149.3.117.234', 1515359092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353335383835393b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('bcbr9r0ki02cj4r5lu3q3rq1m41a16ev', '149.3.117.234', 1515617269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631373236393b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('blikc72kji5htab6ml5i9l1u1cbgbmkj', '178.134.152.206', 1515405202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353430353230323b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('bu4ai9mmhu5pfv561tkshci3pb8mdif5', '149.3.117.234', 1515361225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353336313030303b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('e8er6r9a5d44l3en08oav9ti29atmff9', '178.134.152.206', 1516191904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363139313839363b),
('f1cnod4lr2b908178k4huf733oat4qfm', '149.3.117.234', 1515363044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353336323734363b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('f3iape2buet48no7j7gohs2uj1r97udn', '149.3.117.234', 1515614383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631343138333b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('f4pf1cl56lo2jl86fefrf5bu694morrt', '149.3.117.234', 1515360613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353336303337303b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('ftnk19fnkgsd45v0jlo9ofbgi5do20ri', '109.205.46.206', 1516357061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363335373035353b),
('g0f3fftkdln909t9mpkjkrtqhhhkmqro', '178.134.152.206', 1515404918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353430343931383b),
('g1kh75r13qstjnpjqi8qa28g5tr9gmaq', '149.3.117.234', 1515363347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353336333334373b),
('ga9tujukjvm1mon1gnem166dgdejs2qi', '149.3.117.234', 1515361501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353336313332333b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('hlj3vj136e26otie4hcki1aqmthdn5pk', '178.134.152.206', 1515404802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353430343530313b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('j00td94moc0fsq2dlqqu1db38cj973fs', '149.3.117.234', 1515617262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631363936383b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('l84r94egi35bmgf4qtuou62u38idrb00', '149.3.117.234', 1515356967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353335363831373b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('lsr5lct7arg42uvol3m8pt1o90lk9jme', '66.249.93.67', 1515501832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353530313731343b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('m6ph25u22ch3ih91u48eu3kok41stfha', '178.134.152.206', 1516271904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363237313732383b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('m98mj7e5l42sr0i0j1rtc7ta23cmrvo3', '149.3.117.234', 1515362668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353336323433323b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('nn8de92el0v446lh5eo1g9dehuv6b2r5', '66.249.93.70', 1515506437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353530363433373b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('oeq3a4qfibiskgv5024r59al9l4erfgn', '178.134.152.206', 1515401770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353430313639383b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('ot8tsennmcc838bbugql68eo0k6jhjsm', '149.3.117.234', 1515359458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353335393137383b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('otlht72ed33oh6naijqrvt7i1uv8jo4t', '178.134.152.206', 1515404306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353430343133333b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('oupe2j7opcecg3hhi77flsrshh6lkatt', '149.3.117.234', 1515360287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353335393939353b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('p2ioulbs9i0983aee5iga1hj5h609a2r', '149.3.117.234', 1515356752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353335363531313b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('pjmioke9t4vlvmm6kjvvic0c8fbq9hsi', '178.134.152.206', 1515591179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353539303939363b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('pklegal3uh5s5nikampgvcfr3slb2374', '178.134.152.206', 1515397197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353339373039363b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('pu9q98ll2ltjll27du4310a2l0eqprju', '178.134.152.206', 1515588885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353538383835353b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('q2snuln6i2jh2r9h5jp3544qvj2cqo7f', '149.3.117.234', 1515362301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353336323034373b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('q5ccj47roju3mh23bl5qmkmamkj60op8', '149.3.117.234', 1515617946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631373637353b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('q9u8hslc4c74u063oo7cjlc6nhv06e7n', '178.134.152.206', 1516271179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363237303939363b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('qmtao4kd0kidkanbiv82t6gsvf81lhl3', '178.134.152.206', 1515590763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353539303636343b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('qmudlocf0n10ocv389f1tkg2bfocv8ge', '178.134.152.206', 1516270992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363237303538353b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('qumk1o1kh90cv4b1808aftokpn4bd1ra', '149.3.117.234', 1515610669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631303635343b),
('r7i85t3g2btqru6mekdpm4gd12pmltp5', '149.3.117.234', 1515615535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631353234373b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('rqgpaimnmq427in427uakifv21ibb50a', '149.3.117.234', 1515615795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631353534383b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('rtbhvmrb5tgllvuo9lshnlu56npud94t', '66.249.93.72', 1515404688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353430343339353b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('t7r33fcg7tspa3p7vujp09n66v78clfl', '178.134.152.206', 1515655857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353635353835373b),
('uma83cfpdb1kuc0b2m3aok3uvr9hs8a9', '109.205.46.206', 1516351169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363335313036333b),
('v2hgvrr8fgivuftbko4j5nrmkqo336gp', '149.3.117.234', 1515612731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631323635333b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('v5bo5ck41idvnc96f9o6lcm1nu30c9dj', '178.134.152.206', 1515405251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353430353230323b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('v7dk5u7ocf59elkpb57afq191k2j7hff', '149.3.117.234', 1515700351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353730303335313b),
('vkvsdtlm2dusdgvjftd2bt1smseql2av', '178.134.152.206', 1515590120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353538393938363b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('vt0jgl1htug6d6d71rn1vvn92e5q2ool', '149.3.117.234', 1515615200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353631343933333b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b),
('vv13qgqiidgs6pl2kt53gv4gtrnjegm1', '178.134.152.206', 1516272714, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363237323730373b656d61696c7c733a31393a2261646d696e406361726565722e6369752e6765223b);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) UNSIGNED NOT NULL,
  `address_ge` varchar(255) DEFAULT NULL,
  `address_en` varchar(255) DEFAULT NULL,
  `address_ru` varchar(255) DEFAULT NULL,
  `building_ge` varchar(255) DEFAULT NULL,
  `building_en` varchar(255) DEFAULT NULL,
  `building_ru` varchar(255) DEFAULT NULL,
  `bus_ge` text,
  `bus_en` text,
  `bus_ru` text,
  `metro_ge` text,
  `metro_en` text,
  `metro_ru` text,
  `email` varchar(535) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address_ge`, `address_en`, `address_ru`, `building_ge`, `building_en`, `building_ru`, `bus_ge`, `bus_en`, `bus_ru`, `metro_ge`, `metro_en`, `metro_ru`, `email`, `phone`, `fax`) VALUES
(1, 'ქ. თბილისი, მგალობლიშვილის ქ. 13', 'St. Tbilisi, Mgaloblishvili str. 13', 'misamarti rusulad', '0141, თბილისი, ნაძალადევის რაიონი, სანზონა, ჩარგლის ქუჩა N 73', '0141, Tbilisi, Nadzaladevi district, Sanzona, Chargali street N 73', '0141, Тбилиси, район Надзаладеви, Санзона, улица Чарнали N 73', 'ავტობუსი: # 17; 31; 94; 95.,სამარშრუტო მიკროავტობუსი: # 49; 31;', 'Bus: # 17; 31; 94; 95.,Mini minibus: # 49; 31;', 'Автобус: # 17; 31; 94; 95.,Мини-микроавтобус: # 49; 31;', 'მეტრო ', 'subway', 'метро', 'info@site.ge,dsads@dsad.das,zuka@gmail.com ', '599-14-56-88,455-988-989', '(+995 32) 261 10 06');

-- --------------------------------------------------------

--
-- Table structure for table `directions`
--

CREATE TABLE `directions` (
  `id` tinyint(2) NOT NULL,
  `title_ge` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `active_ge` tinyint(1) NOT NULL DEFAULT '0',
  `active_en` tinyint(1) NOT NULL DEFAULT '0',
  `active_ru` tinyint(1) NOT NULL DEFAULT '0',
  `sort` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` tinyint(2) NOT NULL,
  `title_ge` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `active_ge` tinyint(1) NOT NULL DEFAULT '0',
  `active_en` tinyint(1) NOT NULL DEFAULT '0',
  `active_ru` tinyint(1) NOT NULL DEFAULT '0',
  `sort` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `title_ge`, `title_en`, `title_ru`, `active_ge`, `active_en`, `active_ru`, `sort`) VALUES
(7, 'ბიზნესის ფაკულტეტი', 'Faculty of Business', 'Факультет бизнеса', 1, 1, 1, 0),
(8, 'სამართლის ფაკულტეტი', 'Faculty of Law', 'Юридический факультет', 1, 1, 1, 0),
(9, 'სოციალურ მეცნიერებათა ფაკულტეტი', 'Faculty of Social Sciences', 'Факультет социальных наук', 1, 1, 1, 0),
(10, 'მედიცინის ფაკულტეტი', 'Faculty of Medicine', 'Медицинский факультет', 1, 1, 1, 0),
(11, 'მევენახეობა-მეღვინეობის ფაკულტეტი', '', '', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `font_awesome_icons`
--

CREATE TABLE `font_awesome_icons` (
  `id` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `font_awesome_icons`
--

INSERT INTO `font_awesome_icons` (`id`, `data`) VALUES
(1, 'fa-500px,fa-address-book,fa-address-book-o,fa-address-card,fa-address-card-o,fa-adjust,fa-adn,fa-align-center,fa-align-justify,fa-align-left,fa-align-right,fa-amazon,fa-ambulance,fa-american-sign-language-interpreting,fa-anchor,fa-android,fa-angellist,fa-angle-double-down,fa-angle-double-left,fa-angle-double-right,fa-angle-double-up,fa-angle-down,fa-angle-left,fa-angle-right,fa-angle-up,fa-apple,fa-archive,fa-area-chart,fa-arrow-circle-down,fa-arrow-circle-left,fa-arrow-circle-o-down,fa-arrow-circle-o-left,fa-arrow-circle-o-right,fa-arrow-circle-o-up,fa-arrow-circle-right,fa-arrow-circle-up,fa-arrow-down,fa-arrow-left,fa-arrow-right,fa-arrow-up,fa-arrows,fa-arrows-alt,fa-arrows-h,fa-arrows-v,fa-assistive-listening-systems,fa-asterisk,fa-at,fa-audio-description,fa-backward,fa-balance-scale,fa-ban,fa-bandcamp,fa-bar-chart,fa-barcode,fa-bars,fa-bath,fa-battery-empty,fa-battery-full,fa-battery-half,fa-battery-quarter,fa-battery-three-quarters,fa-bed,fa-beer,fa-behance,fa-behance-square,fa-bell,fa-bell-o,fa-bell-slash,fa-bell-slash-o,fa-bicycle,fa-binoculars,fa-birthday-cake,fa-bitbucket,fa-bitbucket-square,fa-black-tie,fa-blind,fa-bluetooth,fa-bluetooth-b,fa-bold,fa-bolt,fa-bomb,fa-book,fa-bookmark,fa-bookmark-o,fa-braille,fa-briefcase,fa-btc,fa-bug,fa-building,fa-building-o,fa-bullhorn,fa-bullseye,fa-bus,fa-buysellads,fa-calculator,fa-calendar,fa-calendar-check-o,fa-calendar-minus-o,fa-calendar-o,fa-calendar-plus-o,fa-calendar-times-o,fa-camera,fa-camera-retro,fa-car,fa-caret-down,fa-caret-left,fa-caret-right,fa-caret-square-o-down,fa-caret-square-o-left,fa-caret-square-o-right,fa-caret-square-o-up,fa-caret-up,fa-cart-arrow-down,fa-cart-plus,fa-cc,fa-cc-amex,fa-cc-diners-club,fa-cc-discover,fa-cc-jcb,fa-cc-mastercard,fa-cc-paypal,fa-cc-stripe,fa-cc-visa,fa-certificate,fa-chain-broken,fa-check,fa-check-circle,fa-check-circle-o,fa-check-square,fa-check-square-o,fa-chevron-circle-down,fa-chevron-circle-left,fa-chevron-circle-right,fa-chevron-circle-up,fa-chevron-down,fa-chevron-left,fa-chevron-right,fa-chevron-up,fa-child,fa-chrome,fa-circle,fa-circle-o,fa-circle-o-notch,fa-circle-thin,fa-clipboard,fa-clock-o,fa-clone,fa-cloud,fa-cloud-download,fa-cloud-upload,fa-code,fa-code-fork,fa-codepen,fa-codiepie,fa-coffee,fa-cog,fa-cogs,fa-columns,fa-comment,fa-comment-o,fa-commenting,fa-commenting-o,fa-comments,fa-comments-o,fa-compass,fa-compress,fa-connectdevelop,fa-contao,fa-copyright,fa-creative-commons,fa-credit-card,fa-credit-card-alt,fa-crop,fa-crosshairs,fa-css3,fa-cube,fa-cubes,fa-cutlery,fa-dashcube,fa-database,fa-deaf,fa-delicious,fa-desktop,fa-deviantart,fa-diamond,fa-digg,fa-dot-circle-o,fa-download,fa-dribbble,fa-dropbox,fa-drupal,fa-edge,fa-eercast,fa-eject,fa-ellipsis-h,fa-ellipsis-v,fa-empire,fa-envelope,fa-envelope-o,fa-envelope-open,fa-envelope-open-o,fa-envelope-square,fa-envira,fa-eraser,fa-etsy,fa-eur,fa-exchange,fa-exclamation,fa-exclamation-circle,fa-exclamation-triangle,fa-expand,fa-expeditedssl,fa-external-link,fa-external-link-square,fa-eye,fa-eye-slash,fa-eyedropper,fa-facebook,fa-facebook-official,fa-facebook-square,fa-fast-backward,fa-fast-forward,fa-fax,fa-female,fa-fighter-jet,fa-file,fa-file-archive-o,fa-file-audio-o,fa-file-code-o,fa-file-excel-o,fa-file-image-o,fa-file-o,fa-file-pdf-o,fa-file-powerpoint-o,fa-file-text,fa-file-text-o,fa-file-video-o,fa-file-word-o,fa-files-o,fa-film,fa-filter,fa-fire,fa-fire-extinguisher,fa-firefox,fa-first-order,fa-flag,fa-flag-checkered,fa-flag-o,fa-flask,fa-flickr,fa-floppy-o,fa-folder,fa-folder-o,fa-folder-open,fa-folder-open-o,fa-font,fa-font-awesome,fa-fonticons,fa-fort-awesome,fa-forumbee,fa-forward,fa-foursquare,fa-free-code-camp,fa-frown-o,fa-futbol-o,fa-gamepad,fa-gavel,fa-gbp,fa-genderless,fa-get-pocket,fa-gg,fa-gg-circle,fa-gift,fa-git,fa-git-square,fa-github,fa-github-alt,fa-github-square,fa-gitlab,fa-glass,fa-glide,fa-glide-g,fa-globe,fa-google,fa-google-plus,fa-google-plus-official,fa-google-plus-square,fa-google-wallet,fa-graduation-cap,fa-gratipay,fa-grav,fa-h-square,fa-hacker-news,fa-hand-lizard-o,fa-hand-o-down,fa-hand-o-left,fa-hand-o-right,fa-hand-o-up,fa-hand-paper-o,fa-hand-peace-o,fa-hand-pointer-o,fa-hand-rock-o,fa-hand-scissors-o,fa-hand-spock-o,fa-handshake-o,fa-hashtag,fa-hdd-o,fa-header,fa-headphones,fa-heart,fa-heart-o,fa-heartbeat,fa-history,fa-home,fa-hospital-o,fa-hourglass,fa-hourglass-end,fa-hourglass-half,fa-hourglass-o,fa-hourglass-start,fa-houzz,fa-html5,fa-i-cursor,fa-id-badge,fa-id-card,fa-id-card-o,fa-ils,fa-imdb,fa-inbox,fa-indent,fa-industry,fa-info,fa-info-circle,fa-inr,fa-instagram,fa-internet-explorer,fa-ioxhost,fa-italic,fa-joomla,fa-jpy,fa-jsfiddle,fa-key,fa-keyboard-o,fa-krw,fa-language,fa-laptop,fa-lastfm,fa-lastfm-square,fa-leaf,fa-leanpub,fa-lemon-o,fa-level-down,fa-level-up,fa-life-ring,fa-lightbulb-o,fa-line-chart,fa-link,fa-linkedin,fa-linkedin-square,fa-linode,fa-linux,fa-list,fa-list-alt,fa-list-ol,fa-list-ul,fa-location-arrow,fa-lock,fa-long-arrow-down,fa-long-arrow-left,fa-long-arrow-right,fa-long-arrow-up,fa-low-vision,fa-magic,fa-magnet,fa-male,fa-map,fa-map-marker,fa-map-o,fa-map-pin,fa-map-signs,fa-mars,fa-mars-double,fa-mars-stroke,fa-mars-stroke-h,fa-mars-stroke-v,fa-maxcdn,fa-meanpath,fa-medium,fa-medkit,fa-meetup,fa-meh-o,fa-mercury,fa-microchip,fa-microphone,fa-microphone-slash,fa-minus,fa-minus-circle,fa-minus-square,fa-minus-square-o,fa-mixcloud,fa-mobile,fa-modx,fa-money,fa-moon-o,fa-motorcycle,fa-mouse-pointer,fa-music,fa-neuter,fa-newspaper-o,fa-object-group,fa-object-ungroup,fa-odnoklassniki,fa-odnoklassniki-square,fa-opencart,fa-openid,fa-opera,fa-optin-monster,fa-outdent,fa-pagelines,fa-paint-brush,fa-paper-plane,fa-paper-plane-o,fa-paperclip,fa-paragraph,fa-pause,fa-pause-circle,fa-pause-circle-o,fa-paw,fa-paypal,fa-pencil,fa-pencil-square,fa-pencil-square-o,fa-percent,fa-phone,fa-phone-square,fa-picture-o,fa-pie-chart,fa-pied-piper,fa-pied-piper-alt,fa-pied-piper-pp,fa-pinterest,fa-pinterest-p,fa-pinterest-square,fa-plane,fa-play,fa-play-circle,fa-play-circle-o,fa-plug,fa-plus,fa-plus-circle,fa-plus-square,fa-plus-square-o,fa-podcast,fa-power-off,fa-print,fa-product-hunt,fa-puzzle-piece,fa-qq,fa-qrcode,fa-question,fa-question-circle,fa-question-circle-o,fa-quora,fa-quote-left,fa-quote-right,fa-random,fa-ravelry,fa-rebel,fa-recycle,fa-reddit,fa-reddit-alien,fa-reddit-square,fa-refresh,fa-registered,fa-renren,fa-repeat,fa-reply,fa-reply-all,fa-retweet,fa-road,fa-rocket,fa-rss,fa-rss-square,fa-rub,fa-safari,fa-scissors,fa-scribd,fa-search,fa-search-minus,fa-search-plus,fa-sellsy,fa-server,fa-share,fa-share-alt,fa-share-alt-square,fa-share-square,fa-share-square-o,fa-shield,fa-ship,fa-shirtsinbulk,fa-shopping-bag,fa-shopping-basket,fa-shopping-cart,fa-shower,fa-sign-in,fa-sign-language,fa-sign-out,fa-signal,fa-simplybuilt,fa-sitemap,fa-skyatlas,fa-skype,fa-slack,fa-sliders,fa-slideshare,fa-smile-o,fa-snapchat,fa-snapchat-ghost,fa-snapchat-square,fa-snowflake-o,fa-sort,fa-sort-alpha-asc,fa-sort-alpha-desc,fa-sort-amount-asc,fa-sort-amount-desc,fa-sort-asc,fa-sort-desc,fa-sort-numeric-asc,fa-sort-numeric-desc,fa-soundcloud,fa-space-shuttle,fa-spinner,fa-spoon,fa-spotify,fa-square,fa-square-o,fa-stack-exchange,fa-stack-overflow,fa-star,fa-star-half,fa-star-half-o,fa-star-o,fa-steam,fa-steam-square,fa-step-backward,fa-step-forward,fa-stethoscope,fa-sticky-note,fa-sticky-note-o,fa-stop,fa-stop-circle,fa-stop-circle-o,fa-street-view,fa-strikethrough,fa-stumbleupon,fa-stumbleupon-circle,fa-subscript,fa-subway,fa-suitcase,fa-sun-o,fa-superpowers,fa-superscript,fa-table,fa-tablet,fa-tachometer,fa-tag,fa-tags,fa-tasks,fa-taxi,fa-telegram,fa-television,fa-tencent-weibo,fa-terminal,fa-text-height,fa-text-width,fa-th,fa-th-large,fa-th-list,fa-themeisle,fa-thermometer-empty,fa-thermometer-full,fa-thermometer-half,fa-thermometer-quarter,fa-thermometer-three-quarters,fa-thumb-tack,fa-thumbs-down,fa-thumbs-o-down,fa-thumbs-o-up,fa-thumbs-up,fa-ticket,fa-times,fa-times-circle,fa-times-circle-o,fa-tint,fa-toggle-off,fa-toggle-on,fa-trademark,fa-train,fa-transgender,fa-transgender-alt,fa-trash,fa-trash-o,fa-tree,fa-trello,fa-tripadvisor,fa-trophy,fa-truck,fa-try,fa-tty,fa-tumblr,fa-tumblr-square,fa-twitch,fa-twitter,fa-twitter-square,fa-umbrella,fa-underline,fa-undo,fa-universal-access,fa-university,fa-unlock,fa-unlock-alt,fa-upload,fa-usb,fa-usd,fa-user,fa-user-circle,fa-user-circle-o,fa-user-md,fa-user-o,fa-user-plus,fa-user-secret,fa-user-times,fa-users,fa-venus,fa-venus-double,fa-venus-mars,fa-viacoin,fa-viadeo,fa-viadeo-square,fa-video-camera,fa-vimeo,fa-vimeo-square,fa-vine,fa-vk,fa-volume-control-phone,fa-volume-down,fa-volume-off,fa-volume-up,fa-weibo,fa-weixin,fa-whatsapp,fa-wheelchair,fa-wheelchair-alt,fa-wifi,fa-wikipedia-w,fa-window-close,fa-window-close-o,fa-window-maximize,fa-window-minimize,fa-window-restore,fa-windows,fa-wordpress,fa-wpbeginner,fa-wpexplorer,fa-wpforms,fa-wrench,fa-xing,fa-xing-square,fa-y-combinator,fa-yahoo,fa-yelp,fa-yoast,fa-youtube,fa-youtube-play,fa-youtube-square');

-- --------------------------------------------------------

--
-- Table structure for table `google_forms`
--

CREATE TABLE `google_forms` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug_ge` varchar(255) DEFAULT NULL,
  `slug_en` varchar(255) DEFAULT NULL,
  `slug_ru` varchar(255) DEFAULT NULL,
  `title_ge` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `link_ge` varchar(255) DEFAULT NULL,
  `link_en` varchar(255) DEFAULT NULL,
  `link_ru` varchar(255) DEFAULT NULL,
  `target_ge` enum('_self','_blank') NOT NULL,
  `target_en` enum('_self','_blank') DEFAULT NULL,
  `target_ru` enum('_self','_blank') DEFAULT NULL,
  `show_in_header` tinyint(1) DEFAULT '0',
  `active_ge` tinyint(1) NOT NULL DEFAULT '0',
  `active_en` tinyint(1) NOT NULL DEFAULT '0',
  `active_ru` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `google_forms`
--

INSERT INTO `google_forms` (`id`, `slug_ge`, `slug_en`, `slug_ru`, `title_ge`, `title_en`, `title_ru`, `link_ge`, `link_en`, `link_ru`, `target_ge`, `target_en`, `target_ru`, `show_in_header`, `active_ge`, `active_en`, `active_ru`) VALUES
(52, 'გამოკითხვა', '', '-1', 'გამოკითხვა', '', '', '', '', '', '_blank', '_self', '_self', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` tinyint(1) NOT NULL,
  `title` varchar(30) NOT NULL,
  `code` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `code`) VALUES
(1, 'ქართული', 'ge'),
(2, 'ინგლისური', 'en'),
(3, 'რუსული', 'ru');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug_ge` varchar(255) DEFAULT NULL,
  `slug_en` varchar(255) DEFAULT NULL,
  `slug_ru` varchar(255) DEFAULT NULL,
  `title_ge` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `type_ge` tinyint(1) NOT NULL DEFAULT '0',
  `type_en` tinyint(1) NOT NULL DEFAULT '0',
  `type_ru` tinyint(1) DEFAULT '0',
  `link_ge` varchar(255) DEFAULT NULL,
  `link_en` varchar(255) DEFAULT NULL,
  `link_ru` varchar(255) DEFAULT NULL,
  `target_ge` enum('_self','_blank') NOT NULL DEFAULT '_self',
  `target_en` enum('_self','_blank') DEFAULT '_self',
  `target_ru` enum('_self','_blank') DEFAULT '_self',
  `descr_ge` varchar(255) DEFAULT NULL,
  `descr_en` varchar(255) DEFAULT NULL,
  `descr_ru` varchar(255) DEFAULT NULL,
  `text_ge` text,
  `text_en` text,
  `text_ru` text,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `parent` tinyint(4) NOT NULL DEFAULT '0',
  `active_ge` tinyint(1) NOT NULL DEFAULT '0',
  `active_en` tinyint(1) NOT NULL DEFAULT '0',
  `active_ru` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `slug_ge`, `slug_en`, `slug_ru`, `title_ge`, `title_en`, `title_ru`, `type_ge`, `type_en`, `type_ru`, `link_ge`, `link_en`, `link_ru`, `target_ge`, `target_en`, `target_ru`, `descr_ge`, `descr_en`, `descr_ru`, `text_ge`, `text_en`, `text_ru`, `sort`, `parent`, `active_ge`, `active_en`, `active_ru`) VALUES
(3, 'ჩვენ-შესახებ', 'About-us', 'О-нас', 'ჩვენ შესახებ', 'About us', 'О нас', 1, 1, 1, '', '', 'https://translate.google.com', '_self', '_self', '_self', 'კავკასიის საერთაშორისო უნივერსიტეტის კარიერული განვითარების ცენტრი', 'How can a person guarantee to be with you forever when he/her doesn’t know himself/herself how long he/she going to last.', 'Самые горячие распродажи приложений и игр из магазинов App Store и Google Play — в нашей ежедневной рубрике. Лайфхакер отбирает для вас и ваших гаджетов только лучшее!', '<p>კავკასიის საერთაშორისო უნივერსიტეტის კარიერული განვითარების ცენტრი წარმოადგენს უნივერსიტეტის სტრუქტურულ ერთეულს. ცენტრი ფუნქციონირებს 2012 წლიდან.</p>\r\n\r\n<p>ცენტრის მიზნები და ამოცანები.</p>\r\n\r\n<p>1. ცენტრის მიზანს წარმოადგენს აბიტურიენტთა, სტუდენტთა, კურსდამთავრებულთა კარიერული და პროფესიული განვითარების ხელშეწყობა.</p>\r\n\r\n<p>2. ცენტრის ამოცანები:</p>\r\n\r\n<p>2.1 აბიტურიენტების, სტუდენტების და კურსდამთავრებულების კარიერული ინფორმაციით, განათლებით და კონსულტირებით უზრუნველყოფა;</p>\r\n\r\n<p>2.2 მჭიდრო ურთიერთობის დამყარება კავკასიის საერთაშორისო უნივერსიტეტსა და ადგილობრივ და საერთაშორისო დამსაქმებელ ორგანიზაციებთან.</p>\r\n\r\n<p>ცენტრის საქმიანობის ძირითადი მიმართულებები.</p>\r\n\r\n<p>1. პროფესიული ორიენტაციის და კარიერული დაგეგმარების შესახებ კონსულტაციების გაწევა.</p>\r\n\r\n<p>2. დასაქმებისა და კარიერული წინსვლის ხელშემწყობი ღონისძიებებისა და პროექტების ორგანიზება.</p>\r\n\r\n<p>3. სოციოლოგიური კვლევების ჩატარება (შრომის ბაზრის, სტუდენტების დასაქმების მაჩვენებლები და ა.შ.)</p>\r\n\r\n<p>4. სტუდენტთა და კურსდამთავრებულთა სამუშაოს ძიების სტრატეგიის შემუშავება.</p>\r\n\r\n<p>5. პოტენციურ დამსაქმებლთა ბაზის წარმოება/განახლება.</p>\r\n\r\n<p>6. სამსახურის მაძიებელთა მონაცემთა ბაზის წარმოება/განახლება.</p>\r\n\r\n<p>კონსულტაციები ტარდება ყოველდღე, შაბათ-კვირის გარდა, 10:00-18:00 სთ., კსუ-ს ცენტრალური კორპუსის, 513&nbsp;აუდ..</p>\r\n', '<p id=\"e5fc\" name=\"e5fc\">On a daily basis we meet new people, we buy or have new stuffs, we make memories, experience new feelings, time, knowledge. All of these have to last at some point and begin with new,&nbsp;<em>This includes even your own body. Isn&rsquo;t it? and you were expecting others to be permanent</em>.</p>\r\n\r\n<p id=\"42ea\" name=\"42ea\">You must have memories of your childhood when you started writing with a pen, wore a suit for the time, your friends from the elementary schools, your best friend of that time. You just recalled his/her name or you are still thinking who was it? If it is the latter don&rsquo;t worry it have to happen because we just can&rsquo;t change the nature of the world. which says everything which is created needs to be destroyed. Some cool engineers and science fellows must be thinking of energy. So if it is changing its form then the original one doesn&rsquo;t exists so its temporary too.</p>\r\n\r\n<p id=\"db28\" name=\"db28\">Many of us have lost our dear one&rsquo;s who once promised to be with us forever, its sometimes funny and sad, By lost I mean the ones who are dead and who left us for a reason or may be for no reason but believe me it is something that you just can&rsquo;t control, So why fear about it.</p>\r\n\r\n<p><img data-src=\"https://cdn-images-1.medium.com/max/800/1*o2Pd_BOJFdVtEdm45fjuLg.jpeg\" src=\"https://cdn-images-1.medium.com/max/800/1*o2Pd_BOJFdVtEdm45fjuLg.jpeg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p id=\"a51d\" name=\"a51d\">Actually I believe the biggest mistake that we do is to believe that a thing or person will be with us till our last step of life.&nbsp;That is rarely going to happen my friend and even if it did happen, may be you are being too selfish. I am still in my 20&rsquo;s and already realised it, they are going to promise you to be with you forever or sometimes it us who expect them to with us forever. The whole key is that just live your present, don&rsquo;t worry about the future, Its human nature that it wants to play safe and be lazy. I know many of my friends for whom I have done too many things with some level of expectation and 99% I regret them later, not those things that I&rsquo;ve done but those expectations and feeling of being together and permanent. Or in very simple words</p>\r\n\r\n<blockquote id=\"43ff\" name=\"43ff\">How can a person guarantee to be with you forever when he/her doesn&rsquo;t know himself/herself how long he/she going to last.</blockquote>\r\n\r\n<p id=\"c7af\" name=\"c7af\">Personal life is not the only important thing that we should not accept to be permanent. Being temporary is equally applicable on other dimensions of life that includes your professional life.</p>\r\n', '<h2>5 железных правил ближайших 30&nbsp;дней</h2>\r\n\r\n<ol>\r\n	<li><strong>Выпивайте в день 1,5&ndash;2&nbsp;литра воды, помимо чая, кофе, компотов и питьевых йогуртов.</strong>&nbsp;Начинайте каждое утро со стакана чистой воды. Берите на работу бутылочку воды и ставьте рядом с собой, чтобы не забывать пить. Буквально через несколько дней это войдёт в привычку. Но помните, что пить можно не менее чем через час после еды.</li>\r\n	<li><strong>Вычеркните из своего рациона сладости, хлеб, фастфуд, жирную, жареную пищу.</strong>&nbsp;Всё это лучше заменить фруктами, запечёнными блюдами и витаминными салатами. Если без сладкого станет совсем тоскливо, разрешается съесть кусочек горького шоколада. И да, ходите в магазин только сытым. На голодный желудок вы рискуете соблазниться едой, которая противоречит принципам правильного питания.</li>\r\n	<li><strong>Завтрак, обед и лёгкий ужин должны приходиться на одно и то же время.</strong>&nbsp;Между основными приёмами пищи вставляйте небольшие перекусы:&nbsp;<a href=\"https://lifehacker.ru/2015/07/02/high-protein-low-sugar-energy-bars-recipes/\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"5 новых рецептов протеиновых батончиков\">протеиновые батончики</a>, сухофрукты, домашний йогурт, диетические хлебцы, нежирный сыр, фрукты и овощи. Так организм не будет паниковать и пытаться запастись жирами впрок.\r\n	<blockquote>Правильное похудение &mdash; это килограмм в неделю. То есть 4&nbsp;кг за месяц. Да, вы сбросите вес медленно, но и наберёте нескоро. И это большой плюс.</blockquote>\r\n	</li>\r\n	<li><strong>Двигайтесь</strong>. Если вы не занимаетесь спортом в специализированных клубах, то старайтесь каждый вечер гулять и через день выполнять определённую программу упражнений дома. Не засиживайтесь на рабочем месте. Каждые 20&ndash;30&nbsp;минут вставайте и ходите по офису. Когда вы двигаетесь, организм оживает, избавляется от лишних запасов и обогащается кислородом.</li>\r\n	<li><strong>Забудьте о том, что вы худеете.</strong>&nbsp;Дайте себе установку, что вы перешли на здоровый образ жизни, который поможет вам стать совершеннее. Наслаждайтесь процессом и поддерживайте позитивный настрой. Сфотографируйтесь, взвесьтесь и измерьте основные параметры тела перед началом курса, чтобы оценить результаты ваших стараний.</li>\r\n</ol>\r\n', 1, 0, 1, 1, 1),
(47, 'საერთაშორისო-სამართლის-კვლევითი-ინსტიტუტი', 'Emails-of-the-units-List', 'Электронная-почта-подразделений-список', 'საერთაშორისო სამართლის კვლევითი ინსტიტუტი', 'Emails of the units List', 'Электронная почта подразделений список', 1, 1, 1, '', '', '', '_self', '_self', '_self', '', '', '', '', '', '', 7, 4, 1, 1, 1),
(53, 'ახალი-ამბები', 'NEWS', 'НОВОСТИ', 'ახალი ამბები', 'NEWS', 'НОВОСТИ', 0, 0, 0, 'http://career.indygo.ge/all_news', 'http://career.indygo.ge/all_news', 'http://career.indygo.ge/all_news', '_self', '_self', '_self', '', '', '', '', '', '', 2, 0, 1, 1, 1),
(54, 'ანონსები', 'ANNOUNCES', 'АНОНСЫ', 'ანონსები', 'ANNOUNCES', 'АНОНСЫ', 0, 0, 0, 'http://career.indygo.ge/announcements', 'http://career.indygo.ge/announcements', 'http://career.indygo.ge/announcements', '_self', '_self', '_self', '', '', '', '', '', '', 3, 0, 1, 1, 1),
(55, 'თქვენი-აზრი', 'Your-opinion', 'Ваше-мнение', 'თქვენი აზრი', 'Your opinion', 'Ваше мнение', 1, 1, 1, '', '', '', '_self', '_self', '_self', 'თქვენი აზრი მნიშვნელოვანია', '', '', '<p><br />\r\n&nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '<p><iframe frameborder=\"0\" height=\"800\" scrolling=\"no\" src=\"https://docs.google.com/forms/d/e/1FAIpQLSflhNkOkVTHt5_3ua7V0bXJxYlU1EMi8ozlLcENmYo5o0qotg/viewform\" width=\"800\"></iframe><iframe frameborder=\"0\" height=\"800\" scrolling=\"no\" src=\"https://docs.google.com/forms/d/e/1FAIpQLSflhNkOkVTHt5_3ua7V0bXJxYlU1EMi8ozlLcENmYo5o0qotg/viewform\" width=\"800\"></iframe><iframe frameborder=\"0\" height=\"800\" scrolling=\"no\" src=\"https://docs.google.com/forms/d/e/1FAIpQLSflhNkOkVTHt5_3ua7V0bXJxYlU1EMi8ozlLcENmYo5o0qotg/viewform\" width=\"800\"></iframe><iframe frameborder=\"0\" height=\"800\" scrolling=\"no\" src=\"https://docs.google.com/forms/d/e/1FAIpQLSflhNkOkVTHt5_3ua7V0bXJxYlU1EMi8ozlLcENmYo5o0qotg/viewform\" width=\"800\"></iframe></p>\r\n', '<p><iframe frameborder=\"0\" height=\"800\" scrolling=\"no\" src=\"https://docs.google.com/forms/d/e/1FAIpQLSflhNkOkVTHt5_3ua7V0bXJxYlU1EMi8ozlLcENmYo5o0qotg/viewform\" width=\"800\"></iframe></p>\r\n', 6, 0, 1, 1, 1),
(56, 'დაგეგმე-ვიზიტი', 'Plan-a-visit', 'Планирование-визита', 'დაგეგმე ვიზიტი', 'Plan a visit', 'Планирование визита', 1, 1, 1, '', '', '', '_self', '_self', '_self', '', '', '', '<p><iframe frameborder=\"0\" height=\"800\" scrolling=\"no\" src=\"https://docs.google.com/forms/d/e/1FAIpQLSflhNkOkVTHt5_3ua7V0bXJxYlU1EMi8ozlLcENmYo5o0qotg/viewform\" width=\"800\"></iframe></p>\r\n', '<p><iframe frameborder=\"0\" height=\"800\" scrolling=\"no\" src=\"https://docs.google.com/forms/d/e/1FAIpQLSflhNkOkVTHt5_3ua7V0bXJxYlU1EMi8ozlLcENmYo5o0qotg/viewform\" width=\"800\"></iframe></p>\r\n', '<p><iframe frameborder=\"0\" height=\"800\" scrolling=\"no\" src=\"https://docs.google.com/forms/d/e/1FAIpQLSflhNkOkVTHt5_3ua7V0bXJxYlU1EMi8ozlLcENmYo5o0qotg/viewform\" width=\"800\"></iframe></p>\r\n', 8, 0, 1, 1, 1),
(57, 'პარტნიორები', '', '', 'პარტნიორები', '', '', 1, 0, 0, '', '', '', '_self', '_self', '_self', '', '', '', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align: center;\">123213</td>\r\n			<td style=\"text-align: center;\">123213</td>\r\n			<td style=\"text-align: center;\">213</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">b n</td>\r\n			<td style=\"text-align: center;\">213</td>\r\n			<td style=\"text-align: center;\">123</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">fdg</td>\r\n			<td style=\"text-align: center;\">bvbn</td>\r\n			<td style=\"text-align: center;\">mn</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 7, 0, 1, 0, 0),
(58, 'სტაჟირებადასაქმება', '-1', '-1', 'სტაჟირება/დასაქმება', '', '', 1, 0, 0, '', '', '', '_self', '_self', '_self', '', '', '', '<p>123addsfdsf</p>\r\n', '', '', 4, 0, 1, 0, 0),
(59, 'ვაკანსია', '-1-2', '-1-2', 'ვაკანსია', '', '', 1, 0, 0, '', '', '', '_self', '_self', '_self', '', '', '', '<p>765432jhggfbds</p>\r\n', '', '', 5, 58, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug_ge` varchar(255) DEFAULT NULL,
  `slug_en` varchar(255) DEFAULT NULL,
  `slug_ru` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `lector` varchar(255) DEFAULT NULL,
  `title_ge` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `descr_ge` varchar(255) DEFAULT NULL,
  `descr_en` varchar(255) DEFAULT NULL,
  `descr_ru` varchar(255) DEFAULT NULL,
  `text_ge` text,
  `text_en` text,
  `text_ru` text,
  `image` varchar(255) DEFAULT NULL,
  `image_paths` text,
  `date` datetime DEFAULT NULL,
  `favorite` tinyint(1) NOT NULL DEFAULT '0',
  `active_ge` tinyint(1) NOT NULL DEFAULT '0',
  `active_en` tinyint(1) NOT NULL DEFAULT '1',
  `active_ru` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `slug_ge`, `slug_en`, `slug_ru`, `category`, `lector`, `title_ge`, `title_en`, `title_ru`, `descr_ge`, `descr_en`, `descr_ru`, `text_ge`, `text_en`, `text_ru`, `image`, `image_paths`, `date`, `favorite`, `active_ge`, `active_en`, `active_ru`) VALUES
(145, 'ქართული-დიპლომატიის-დღე', '', '', '5', NULL, 'ქართული დიპლომატიის დღე', '', '', 'კავკასიის საერთაშორისო უნივერსიტეტში ქართული დიპლომატიის დღის აღვნიშვნა', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტში ქართული დიპლომატიის დღის აღსანიშნავად, საერთაშორისო ორგანიზაციების კვლევითი ცენტრისა და კარიერის განვითარების ცენტრის ინიციატივით, ახალგაზრდული სამეცნიერო კონფერენცია გაიმართა. შეხვედრის მიზანს ქართული დიპლომატიის ისტორიის, საქართველოს ორმხრივი და მრავალმხრივი ურთიერთობების შესახებ ცოდნის გაღრმავება წარმოადგენდა.<br />\r\n4 ნოემბერი ქართველი დიპლომატების პროფესიულ დღესასწაულად 2004 წელს დაწესდა და ცნობილი ქართველი მწერლისა და საზოგადო მოღვაწის სულხან-საბა ორბელიანის დაბადების დღეს უკავშირდება. შეხვედრას საერთაშორისო ორგანიზაციების დეპარტამენტისა და პოლიტიკური დეპარტამენტის წარმომადგენლები ესწრებოდნენ.</p>\r\n', '', '', '', '', '2014-11-04 18:46:00', 0, 1, 0, 0),
(146, 'საქართველოს-მედიცინის-მუშაკთა-დღე', '-1', '-1', '5', NULL, 'საქართველოს მედიცინის მუშაკთა დღე', '', '', 'კავკასიის საერთაშორისო უნივერსიტეტში მედიცინის მუშაკთა დღესთან დაკავშირებით საჯარო ლექცია გაიმართა', '', '', '<p style=\"margin-left:-40.5pt; text-align:justify\"><span style=\"tab-stops:-40.5pt\"><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">კავკასიის</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">საერთაშორისო</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">უნივერსიტეტში</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">მედიცინის</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">მუშაკთა</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">დღესთან</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">დაკავშირებით</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">საჯარო</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">ლექცია</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">გაიმართა</span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span helvetica=\"\" style=\"font-family:\"><span style=\"color:#1d2129\">, </span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">თემაზე</span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span helvetica=\"\" style=\"font-family:\"><span style=\"color:#1d2129\">: &bdquo;</span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">საქართველოს</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">შრომის</span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span helvetica=\"\" style=\"font-family:\"><span style=\"color:#1d2129\">, </span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">ჯანმრთელობისა</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">და</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">სოციალური</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">დაცვის</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">სამინისტროს</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">პოლიტიკა</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">ახალგაზრდა</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">მუშაკების</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">მიმართ</span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span helvetica=\"\" style=\"font-family:\"><span style=\"color:#1d2129\">&ldquo;.</span></span></span></span></span><br style=\"font-variant-ligatures:normal; font-variant-caps:normal; orphans:2; text-align:start; widows:2; -webkit-text-stroke-width:0px; text-decoration-style:initial; text-decoration-color:initial; word-spacing:0px\" />\r\n<span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\"><span style=\"font-variant-ligatures:normal; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-variant-caps:normal\"><span style=\"orphans:2\"><span style=\"widows:2\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"float:none\"><span style=\"word-spacing:0px\">შეხვედრის</span></span></span></span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">პირველ</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">ნაწილში</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">მომხსენებელმა</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">ყურადღება</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">გაამახვილა</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">სტუდენტების</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">პროფესიონალ</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">ექიმებად</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">ჩამოყალიბებაზე</span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span helvetica=\"\" style=\"font-family:\"><span style=\"color:#1d2129\">, </span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">რეგიონებში</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">ექიმების</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">დეფიციტზე</span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span helvetica=\"\" style=\"font-family:\"><span style=\"color:#1d2129\">, </span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">ჯანმრთელობის</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">დაცვის</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">პერსონალსა</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">და</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">მათ</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">კვალიფიკაციაზე</span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span helvetica=\"\" style=\"font-family:\"><span style=\"color:#1d2129\">.</span></span></span></span></span></span></span></span></span></span><br style=\"font-variant-ligatures:normal; font-variant-caps:normal; orphans:2; text-align:start; widows:2; -webkit-text-stroke-width:0px; text-decoration-style:initial; text-decoration-color:initial; word-spacing:0px\" />\r\n<span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\"><span style=\"font-variant-ligatures:normal; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-variant-caps:normal\"><span style=\"orphans:2\"><span style=\"widows:2\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"float:none\"><span style=\"word-spacing:0px\">საუბრის</span></span></span></span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">დასასრულს</span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span helvetica=\"\" style=\"font-family:\"><span style=\"color:#1d2129\">, </span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">სტუმარმა</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">სტუდენტების</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">შეკითხვებს</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">უპასუხა</span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span helvetica=\"\" style=\"font-family:\"><span style=\"color:#1d2129\">.</span></span></span></span></span></span></span></span></span></span><br style=\"font-variant-ligatures:normal; font-variant-caps:normal; orphans:2; text-align:start; widows:2; -webkit-text-stroke-width:0px; text-decoration-style:initial; text-decoration-color:initial; word-spacing:0px\" />\r\n<span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\"><span style=\"font-variant-ligatures:normal; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-variant-caps:normal\"><span style=\"orphans:2\"><span style=\"widows:2\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"float:none\"><span style=\"word-spacing:0px\">აღნიშნული</span></span></span></span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">შეხვედრა</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">კავკასიის</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">საერთაშორისო</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">უნივერსიტეტის</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">კარიერული</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">განვითარების</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">ცენტრისა</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">და</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">სამედიცინო</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">ფაკულტეტის</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">ორგანიზებით</span></span></span></span></span> <span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:\" sylfaen=\"\"><span style=\"color:#1d2129\">ჩატარდა</span></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span helvetica=\"\" style=\"font-family:\"><span style=\"color:#1d2129\">.</span></span></span></span></span></span></span></span></span></span></span></p>\r\n', '', '', '', '', '2014-12-23 19:18:00', 0, 1, 0, 0),
(147, 'ტრენინგი-კარიერული-წინსვლა', '-1-2', '-1-2', '5', NULL, 'ტრენინგი \"კარიერული წინსვლა\"', '', '', 'კავკასიის საერთაშორისო უნივერსიტეტში პროგრამის SMART STUDENTS ფარგლებში ყველა საუკეთესო პირველკურსელს ტრენინგი ჩაუტარდა თემაზე - \"კარიერული წინსვლა\".', '', '', '<p>19 მაისს კავკასიის საერთაშორისო უნივერსიტეტში პროგრამის_SMART STUDENTS _ფარგლებში ყველა საუკეთესო პირველკურსელს ტრენინგი ჩაუტარდა, თემაზე _ &bdquo;კარიერული წინსვლა&ldquo;. ტრენინგს სოციალურ-მეცნიერებათა დოქტორი, HR თანამშრომელთა გილდიის დირექტორი, ლილი ბიბილაშვილი უძღვებოდა.&nbsp;<br />\r\nშეხვედრაზე სტუდენტებისთვის ცნობილი გახდა თუ როგორ შეიძლება ნაკლებად ძლიერი მხარეების გაძლიერება, რა მნიშვნელობა აქვს ემოციების მართვას და სხეულის კონტროლს.&nbsp;<br />\r\nსტუდენტებმა საფუძვლიანად შეისწავლეს რეზიუმეს წერა, გაიგეს&nbsp;რა დროს, რა ინფორმაციის მითითებაა მათთვის მომგებიანი. ტრენინგზე ისაუბრეს 50 მიზეზზე, რის გამოც შეიძლება დამსაქმებელმა უარი თქვას კადრის დაქირავებაზე.&nbsp;<br />\r\nლილი ბიბილაშვილმა პირველკურსელებს ურჩია, არასდროს უღალატონ საკუთარ ღირებულებებს. მათ ასაკში სასურველია არა ხელფასზე, არამედ ცოდნასა და გამოცდილებაზე კონცენტრირება.&nbsp;<br />\r\nკავკასიის საერთაშორისო უნივერსიტეტი წარჩინებული სტუდენტების წახალისებას მომავალშიც განაგრძობს.</p>\r\n', '', '', '', '', '2015-05-19 19:35:00', 0, 1, 0, 0),
(148, 'სამედიცინო-კორპორაცია-ევექსი', '-1-2-3', '-1-2-3', '5', NULL, 'სამედიცინო კორპორაცია ევექსი', '', '', '20 მაისს კავკასიის საერთაშორისო უნივერსიტეტში მედიცინის ფაკულტეტის სტუდენტებს „სამედიცინო კორპორაცია ევექსი“_ს წარმომადგენლები, პერსონალის შერჩევის სპეციალისტები შეხვდნენ', '', '', '<p>20 მაისს კავკასიის საერთაშორისო უნივერსიტეტში მედიცინის ფაკულტეტის სტუდენტებს &bdquo;სამედიცინო კორპორაცია ევექსი&ldquo;_ს წარმომადგენლები, პერსონალის შერჩევის სპეციალისტები, ნინო პატარაია და თამარ შუბლაძე შეხვდნენ.&nbsp;<br />\r\nპრეზენტაციაზე მომხსენებლებმა კომპანიის შესახებ, ჰოსპიტალების ქსელებზე, უპირატესობებზე, მმართველ კლინიკურ გუნდსა და სტრატეგიაზე ისაუბრეს.&nbsp;<br />\r\nნინო პატარაიამ და თამარ შუბლაძემ ყურადღება &bdquo;სამედიცინო კორპორაცია ევექსი&ldquo;_ს სასწავლო ცენტრზე გაამახვილეს, სადაც კადრების გადამზადება, კონფერენციები და სხვა აქტივობები ხორციელდება.&nbsp;<br />\r\nკომპანიის წარმომადგენლებმა მედიცინის ფაკულტეტის სტუდენტებს სხვადასხვა საავადმყოფოში ანაზღაურებადი სტაჟირება შესთავაზეს, რომლის წარმატებით გავლის შემდგომ ისინი ვაკანტური ადგილის დაკავებას შეძლებენ. სტუდენტებმა დეტალური ინფორმაცია მიიღეს იმაზე თუ რა ეტაპების გავლა მოუწევთ სტაჟირების დასაწყებად.<br />\r\nშეხვედრის ბოლოს &bdquo;სამედიცინო კორპორაცია ევექსსა&ldquo; და კავკასიის საერთაშორისო უნივერსიტეტს შორის მემორანდუმის გაფორმება დაიგეგმა.</p>\r\n', '', '', '', '', '2015-05-20 20:03:00', 0, 1, 0, 0),
(149, 'მცირე-პროექტის-შემუშავების-კურსი', '-1-2-3-4', '-1-2-3-4', '5', NULL, ' მცირე პროექტის შემუშავების კურსი', '', '', ' პროექტი „Smart Students“ ფარგლებში ტრენინგი ჩატარდა', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტში, წარჩინებულ სტუდენტებს, პროექტის _ &bdquo;Smart Students&ldquo; ფარგლებში, ტრენინგი ჩაუტარდათ.&nbsp;<br />\r\nკურსი როგორც თეორიულ, ისე ინტენსიურ პრაქტიკულ სწავლებას შეიცავდა. მუშაობის პროცესში სტუდენტებმა რამდენიმე მცირე პროექტიც შეიმუშავეს.&nbsp;<br />\r\nკავკასიის საერთაშორისო უნივერსიტეტში, აღნიშნული ტრენინგები წარჩინებული სტუდენტების გამოვლენისა და მხარდაჭერის პროგრამის ფარგლებში ტარდება.</p>\r\n', '', '', '', '', '2015-06-02 20:15:00', 0, 1, 0, 0),
(150, 'საქმიანი-ურთიერთობის-ბიზნესეტიკეტისა-და-საქმეთწარმოების-კურსი', '-1-2-3-4-5', '-1-2-3-4-5', '5', NULL, 'საქმიანი ურთიერთობის, ბიზნესეტიკეტისა და საქმეთწარმოების კურსი', '', '', 'Smart Students - საქმიანი ურთიერთობის, ბიზნესეტიკეტისა და საქმეთწარმოების კურსი', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტში, წარჩინებულ სტუდენტებს პროექტის _ &bdquo;Smart Students&ldquo;_ ფარგლებში, ტრენინგი ჩაუტარდათ.&nbsp;<br />\r\n&bdquo;საქმიანი ურთიერთობის, ბიზნესეტიკეტისა და საქმეთწარმოების კურსი&ldquo; როგორც თეორიულ, ისე ინტენსიურ პრაქტიკულ სწავლებას შეიცავდა.&nbsp;<br />\r\nოთხდღიანი ტრენინგის ბოლოს, კავკასიის საერთაშორისო უნივერსიტეტმა ანა ჯალაღონიას საადვოკატო ბიუროსთან მემორანდუმი გააფორმა.<br />\r\nურთიერთთანამშრომლობის ფარგლებში სტუდენტებს საადვოკატო ბიუროში სასწავლო და პროფესიული პრაქტიკის გავლის შესაძლებლობა მიეცემათ.<br />\r\nკავკასიის საერთაშორისო უნივერსიტეტში, აღნიშნული ტრენინგები წარჩინებული სტუდენტების გამოვლენისა და მხარდაჭერის პროგრამის ფარგლებში ტარდება</p>\r\n', '', '', '', '', '2015-06-11 20:25:00', 0, 1, 0, 0),
(152, 'სადაზღვევო-კომპანია-კოპენბური', '-1-2-3-4-5-6-7', '-1-2-3-4-5-6-7', '5', NULL, 'სადაზღვევო კომპანია კოპენბური', '', '', 'კავკასიის საერთაშორისო უნივერსიტეტში სადაზღვევო კომპანია „კოპენბურის“ ხელმძღვანელმა აკაკი ლომაურმა შეხვედრა გამართა. მან სტუდენტებს ბიზნესისა და გაყიდვების შესახებ პრეზენტაცია წარუდგინა.', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტში სადაზღვევო კომპანია &bdquo;კოპენბურის&ldquo; ხელმძღვანელმა აკაკი ლომაურმა შეხვედრა გამართა. მან სტუდენტებს ბიზნესისა და გაყიდვების შესახებ პრეზენტაცია წარუდგინა.&nbsp;<br />\r\nშეხვედრა დიალოგის რეჟიმით წარიმართა. პრეზენტაციის ბოლოს სტუდენტებს სპეციალური სააპლიკაციო ფორმები დაურიგდათ, რაც მათ აღნიშნულ სადაზღვევო კომპანიაში დასაქმების შესაძლებლობას აძლევს.&nbsp;<br />\r\nასევე სადაზღვევო კომპანია &bdquo;კოპენბურმა&ldquo;კავკასიის საერთაშორისო უნივერსიტეტთან მემორანდუმი გააფორმა. გაფორმებული ხელშეკრულება მომავალში უნივერსიტეტსა და აღნიშნულ სადაზღვევო კომპანიას შორის მჭიდრო თანამშრომლობას ითვალისწინებს.</p>\r\n', '', '', '', '', '2015-05-15 20:43:00', 0, 1, 0, 0),
(153, 'ტურიზმის-საერთაშორისო-დღე', '-1-2-3-4-5-6-7-8', '-1-2-3-4-5-6-7-8', '5', NULL, 'ტურიზმის საერთაშორისო დღე', '', '', ',,ტურიზმის განვითარების პრობლემები საქართველოში“ - კავკასიის საერთაშორისო უნივერსიტეტში ტურიზმის დღისადმი მიძღვნილი მრგვალი მაგიდა ჩატარდა.', '', '', '<p>,,ტურიზმის განვითარების პრობლემები საქართველოში&ldquo; - კავკასიის საერთაშორისო უნივერსიტეტში ტურიზმის დღისადმი მიძღვნილი მრგვალი მაგიდა ჩატარდა. ღონისძიების ორგანიზატორი,&nbsp;კარიერის &nbsp;განვითაების ცენტრთან ერთად, ტურიზმის განვითარების რეგიონული ცენტრი იყო, რომელიც მიმდინარე წლის ივლისში პროექტის - TEMPUS - Cruize&nbsp;ჩარჩოში ბიზნესის ფაკულტეტზე ჩამოყალიბდა.</p>\r\n\r\n<p>ტურიზმის ეროვნული ადმინისტრაციის, თბილისის მერიის ეკონომიკური სამსახურის, საქართველოს ტურიზმის ასოციაციის, სასტუმროებისა და რესტორნების ფედერაციის, სხვადასხვა ტურისტული კომპანიის წარმომადგენლებმა ტურიზმის განვითარების ხელის შემშლელ ფაქტორებზე, სფეროში მიმდინარე გამოწვევებსა და უახლეს სტატისტიკაზე ისაუბრეს.</p>\r\n\r\n<p>შეხვედრაზე კავკასიის საერთაშორისო უნივერსიტეტის ტურიზმის განვითარების რეგიონული ცენტრის საქმიანობა და CruiseT-ის მიზნები განიხილეს.</p>\r\n\r\n<p>შეხვედრას უნივერსიტეტის ადმინისტრაციის წარმომადგენლები, ბიზნესის ფაკულტეტის პროფესორები, სტუდენტები და თემით დაინტერესებული სტუმრები ესწრებოდნენ. შეხვედრის დასასრულს, მათ მომხსენებლებისთვის შეკითხვების დასმის საშუალება მიეცათ.</p>\r\n', '', '', '', '', '2015-09-30 20:59:00', 0, 1, 0, 0),
(154, 'StudentJobge-ის-წარმომადგენლის-შეხვედრა-კსუ-ს-სტუდენტებთან', '-1-2-3-4-5-6-7-8-9', '-1-2-3-4-5-6-7-8-9', '5', NULL, 'StudentJob.ge - ის წარმომადგენლის შეხვედრა კსუ-ს სტუდენტებთან', '', '', 'სამოტივაციო წერილის დაწერა, გასაუბრებისთვის მომზადება, რეზიუმეს სწორად შედგენა და მისი ეფექტური პრეზენტაცია - ეს ის ძირითადი საკითხებია, რაც StudentJob.ge - ის წარმომადგენლებმა კავკასიის საერთაშორისო უნივერსიტეტში სტუდენტებთან შეხვედრისას განიხილეს.', '', '', '<p>სამოტივაციო წერილის დაწერა, გასაუბრებისთვის მომზადება, რეზიუმეს სწორად შედგენა და მისი ეფექტური პრეზენტაცია - ეს ის ძირითადი საკითხებია, რაც StudentJob.ge - ის წარმომადგენლებმა კავკასიის საერთაშორისო უნივერსიტეტში სტუდენტებთან შეხვედრისას განიხილეს.&nbsp;<br />\r\nპრაქტიკული უნარ-ჩვევები, რეკომენდაციები და შენიშვნები ტრენერმა ანი ნავდარაშვილმა დეტალურად განიხილა.&nbsp;<br />\r\nტრენინგ / სემინარი კავკასიის საერთაშორისო უნივერსიტეტის კარიერის განვითარების ცენტრის ორგანიზებით ჩატარდა.&nbsp;<br />\r\nშეხვედრის ბოლოს შემდეგი სასემინარო თემა_ ,,როგორ დავგეგმოთ კარიერა და მივაღწიოთ წარმატებას&quot; _ დაანონსდა.</p>\r\n', '', '', '', '', '2015-10-01 21:11:00', 0, 1, 0, 0),
(155, 'მიკროსაფინანსო-ორგანიზაცია-კრედოს-წარმომადგენლები-კსუში', '-1-2-3-4-5-6-7-8-9-10', '-1-2-3-4-5-6-7-8-9-10', '5', NULL, 'მიკროსაფინანსო ორგანიზაცია კრედოს წარმომადგენლები კსუ–ში', '', '', 'სტუდენტებს მიკროსაფინანსო ორგანიზაცია „კრედოს“ წარმომადგენლები შეხვდნენ', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტის სტუდენტებს მიკროსაფინანსო ორგანიზაცია &bdquo;კრედოს&ldquo; წარმომადგენლები შეხვდნენ.&nbsp;<br />\r\nსაინფორმაციო შეხვედრის ფარგლებში, პერსონალის შერჩევის უფროსი ოფიცერი - ანა ყუბანეიშვილი და კადრების შერჩევის რეგიონული ოფიცერი - ლელა კრასკოვსკაია სტუდენტებს ორგანიზაციის მიზნებზე, სტრატეგიასა და ამ დროისათვის, კომპანიაში არსებულ ვაკანტურ თანამდებობაზე ესაუბრნენ. &bdquo;კრედოს&ldquo; წარმომადგენლებმა აუდიტორიას სამსახურში აყვანის პროცედურები და კომპანიის პირობებიც გააცნეს.&nbsp;<br />\r\nსტუდენტების კითხვები, ძირითადად, სამუშაო საათებს, დღის წესრიგს, ანაზღაურებასა და სტაჟირების შემდეგ დასაქმების შანსებს შეეხებოდა.&nbsp;<br />\r\nშეხვედრის ბოლოს, დაინტერესებულმა სტუდენტებმა სააპლიკაციო ფორმები შეავსეს. შერჩეული აპლიკანტები განაცხადის განხილვის, ტესტირებისა და გასაუბრების შემდეგ, მიკროსაფინანსო ორგანიზაციაში სტაჟირებას დაიწყებენ.</p>\r\n', '', '', '', '', '2015-10-06 21:17:00', 0, 1, 0, 0),
(156, 'სტუდენტები-პარლამენტში', '-1-2-3-4-5-6-7-8-9-10-11', '-1-2-3-4-5-6-7-8-9-10-11', '5', NULL, 'სტუდენტები პარლამენტში', '', '', 'საქართველოს პარლამენტის ვიზიტორთა პროგრამის ფარგლებში, კავკასიის საერთაშორისო უნივერსიტეტის სამართლისა და სოციალურ მეცნიერებათა ფაკულტეტის სტუდენტები პარლამენტს ესტუმრნენ.', '', '', '<p>საქართველოს პარლამენტის ვიზიტორთა პროგრამის ფარგლებში, კავკასიის საერთაშორისო უნივერსიტეტის სამართლისა და სოციალურ მეცნიერებათა ფაკულტეტის სტუდენტები პარლამენტს ესტუმრნენ.&nbsp;<br />\r\nსაქართველოს პარლამენტი რეგულარულად მასპინძლობს ქვეყნის უმაღლესი საკანონმდებლო ორგანოს მისიით, ფუნქციებითა და საქმიანობით დაინტერესებულ ჯგუფებს.&nbsp;<br />\r\n21 ოქტომბერს სტუდენტებს საქართველოს პარლამეტის ადამიანის უფლებათა დაცვისა და სამოქალაქო ინტეგრაციის კომიტეტის თავმჯდომარემ ეკა ბესელიამ უმასპინძლა და ძირითად რეფორმებზე ისაუბრა. კომიტეტის თავმჯდომარის თქმით, საქართველოს პარლამენტში 2014 წლის სექტემბრიდან 2015 წლის აგვისტოს ჩათვლით შემოსული 27094 წერილის 41% სწორედ ადამიანის უფლებათა დაცვისა და სამოქალაქო ინტეგრაციის კომიტეტშია შემოსული.&nbsp;<br />\r\nკომიტეტის წევრების სიტყვით გამოსვლის შემდეგ დისკუსია გაიმართა, სადაც სტუდენტებს საშუალება ჰქონდათ შეკითხვები დაესვათ მომხსენებელთათვის.&nbsp;<br />\r\nშეხვედრის შეჯამებისას სამომავლო თანამშრომლობის გეგმა დაისახა და პარლამენტში საექსკურსიო ტური მოეწყო.</p>\r\n', '', '', '', '', '2015-10-15 21:24:00', 0, 1, 0, 0),
(157, 'არდი-ჯგუფის-საინფორმაციო-შეხვედრა', '-1-2-3-4-5-6-7-8-9-10-11-12', '-1-2-3-4-5-6-7-8-9-10-11-12', '5', NULL, '„არდი ჯგუფის“  საინფორმაციო შეხვედრა', '', '', 'სადაზღვევო კომპანია „არდი ჯგუფის“ წარმომადგენლები კსუ-ში', '', '', '<p>სადაზღვევო კომპანია &bdquo;არდი ჯგუფი&ldquo; ახალი ბრენდია ქართულ სადაზღვევო ბაზარზე, რომლის ისტორია 2010 წლიდან იწყება.&nbsp;<br />\r\n22 ოქტომბერს კავკასიის საერთაშორისო უნივერსიტეტის სტუდენტებთან კომპანია &bdquo;არდი ჯგუფის&ldquo; წარმომადგენლებმა საინფორმაციო შეხვედრა გამართეს.&nbsp;<br />\r\n&bdquo;არდი&ldquo; სწრაფად და დინამიკურად მზარდი სადაზღვევო კომპანიაა, სადაც ერთ-ერთი ყველაზე ბენეფიტური პაკეტია შექმნილი იმისათვის, რომ ის იყოს სასურველი დამსაქმებელი ყველა თანამშრომლისთვის. ინოვაციურობისა და მაღალაქტიურობის შედეგად &bdquo;არდი ჯგუფმა&ldquo; ყველაზე სწრაფად განვითარებული სადაზღვევო კომპანიის სტატუსი მოიპოვა.&nbsp;<br />\r\nკომპანიის წარმომადგენლებმა სტუდენტებს სტაჟირების პროგრამის პირობები გააცნეს და სააპლიკაციო ფორმები დაურიგეს, რის საფუძველზეც მათ სპეციალური პროფესიული ტრენინგები ჩაუტარდებათ.</p>\r\n', '', '', '', '', '2015-10-22 21:55:00', 0, 1, 0, 0),
(158, 'კსუ-ის-სტუდენტები-საქართველოს-პარლამენტში', '-1-2-3-4-5-6-7-8-9-10-11-12-13', '-1-2-3-4-5-6-7-8-9-10-11-12-13', '5', NULL, 'კსუ-ის სტუდენტები საქართველოს პარლამენტში', '', '', 'საქართველოს პარლამენტის აგრარულ საკითხთა კომიტეტის თავმჯდომარე სტუდენტებს შეხვდა.', '', '', '<p>საქართველოს პარლამენტის აგრარულ საკითხთა კომიტეტის თავმჯდომარე გელა სამხარაული 9 ნოემბერს საქართველოში მოქმედ სახელმწიფო და კერძო უმაღლესი სასწავლებლების სტუდენტებს შეხვდა.<br />\r\nსაკანონმდებლო საკითხების მომზადება, აგრარული პოლიტიკის წარმართვა, პროექტები და ღონისძიებები, როგორიცაა: შეღავათიანი კრედიტები, &bdquo;აწარმოე საქართველოში&rdquo;, გადამამუშავებელი საამქროების შექმნა - ეს ის ძირითადი საკითხებია, რაზეც მომხსენებელმა ყურადღება გაამახვილა.&nbsp;<br />\r\nსაქართველოს პარლამენტის კინოდარბაზში გელა სამხარაულის მოხსენებას კსუ-ს სტუდენტებიც ესწრებოდნენ. მათი კითხვები ძირითადად წვეთოვანი მორწყვის სისტემას, ქვევრის ღვინოს, ღვინის ტურიზმსა და სურსათის უვნებლობის საკითხებს შეეხებოდა.&nbsp;<br />\r\nსამხარაულის განცხადებით, აგრარული სფეროს დაფინანსება საქართველოს ბიუჯეტის 3,4%-ს შეადგენს, რაც, წინა წლებთან შედარებით, გაზრდილი მაჩვენებელია.&nbsp;<br />\r\nშეხვედრის, სიტყვით გამოსვლისა და დისკუსიის შემდეგ სტუდენტებმა კომიტეტის თავმჯდომარესთან სამახსოვრო ფოტოც გადაიღეს.</p>\r\n', '', '', '', '', '2015-11-09 22:03:00', 0, 1, 0, 0),
(159, 'იმედი-ელის-წარმომადგენლები-კსუ-ში', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14', '5', NULL, ',,იმედი ელის” წარმომადგენლები კსუ-ში', '', '', 'სადაზღვევო კომპანია ,,იმედი ელის” წარმომადგენლები კსუ-ში', '', '', '<p>სადაზღვევო კომპანია ,,იმედი ელის&rdquo; გლდანის ფილიალის კოორდინატორი სულიკო სანდოძე და გაყიდვების პერსონალის დაგეგმვის მენეჯერი თამარ კაზალიკაშვილი კავკასიის საერთაშორისო უნივერსიტეტის სტუდენტებს შეხვდნენ.&nbsp;<br />\r\nკომპანიის წარმომადგენლებმა სტუდენტებს ის პირობები და მოვალეობები გააცნეს, რაც დაინტერესებისა და თანამშრომლობის შემთხვევაში, მათ, როგორც აგენტებს, დაევალებათ.&nbsp;<br />\r\nთავად კომპანია ფიზიკურ პირებსა თუ ორგანიზაციებს ჯანმრთელობის დაზღვევის სხვადასხვა პაკეტს სთავაზობს, რომლის ფასი თვეში 15 ლარიდან იწყება და მედიკამენტების, ამბულატორიულ, სტომატოლოგიურ თუ ანალიზების ხარჯებს მოიცავს.&nbsp;<br />\r\nაგენტის პოზიციით დაინტერესებულ სტუდენტებს გამოცდის, ტრენინგებისა და გამოსაცდელი ვადის გასვლის შემდეგ, ყოველი კვარტლის ბოლოს, კარიერული განვითარების შესაძლებლობა ეძლევათ. გლდანის ფილიალის კოორდინატორის სულიკო სანდოძის თქმით, თავად აგენტი სპეციალური ბაზით ხელმძღვანელობს, მას შეუძლია აფთიაქებსა და სხვადასხვა ლოკაციებზე ინდივიდუალურად გაესაუბროს პოტენციურ კლიენტებს და მათ ჯანმრთელობის დაზღვევის პაკეტი შესთავაზოს.&nbsp;<br />\r\nშეხვედრის შემდეგ კავკასიის საერთაშორისო უნივერსიტეტის სტუდენტებმა სადაზღვევო კომპანია ,,იმედი ელის&rdquo; შემოთავაზება მიიღეს და სპეციალური სააპლიკაციო ფორმები შეავსეს</p>\r\n', '', '', '', '', '2015-11-10 22:15:00', 0, 1, 0, 0),
(160, 'Instcons-Institute-of-Consulting-ის-წარმომადგენლის-შეხვედრა-სტუდენტებთან', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15', '5', NULL, 'Instcons – Institute of Consulting-ის წარმომადგენლის შეხვედრა სტუდენტებთან', '', '', 'კონსალტინგური კომპანია Instcons – Institute of Consulting-ის წარმომადგენლის შეხვედრა სტუდენტებთან', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტის საკონფერენციო დარბაზში სტუდენტებს კონსალტინგური კომპანია ,,Instcons &ndash; Institute of Consulting-ის&ldquo; პროექტის მენეჯერმა პეტრე ადამაძემ ტრენინგი ჩაუტარა.</p>\r\n\r\n<p>სწრაფად მზარდი შრომითი ბაზრის პირობებში სტუდენტებმა რჩევები მიიღეს რეზიუმესა და სამოტივაციო წერილის უკეთ შედგენაში. მომხსენებელმა ასევე სატელეფონო, ზეპირ და წერილობითი გასაუბრების დეტალებზე ისაუბრა. ორგანიზაციამ სტუდენტებს ვაკანსიების ახალი საძიებო პლატფორმა - jobsstaff.ge გააცნო და დეტალურად აუხსნა, თუ როგორ შეიძლება ბაზაში ახალი მომხმარებლის დარეგისტრირება.</p>\r\n\r\n<p>შეხვედრის ფარგლებში ინსტკონსის წარმომადგენელმა სტუდენტებს სამთვიანი სტაჟირების პროგრამაც შესთავაზა.</p>\r\n', '', '', '', '', '2015-12-02 22:20:00', 0, 1, 0, 0),
(161, 'ვარშავის-ეკოლოგიისა-და-მენეჯმენტის-უნივერსიტეტის-წარმომადგენელი-კსუ-ში', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16', '5', NULL, 'ვარშავის ეკოლოგიისა და მენეჯმენტის უნივერსიტეტის წარმომადგენელი კსუ-ში', '', '', 'ვარშავის ეკოლოგიისა და მენეჯმენტის უნივერსიტეტის წარმომადგენელი ირინა ლაპანოვსკა კსუ-ში\r\n', '', '', '<p>19 თებერვალს კავკასიის საერთაშორისო უნივერსიტეტს საერთაშორისო ურთიერთობების სამსახურისა და კარიერის განვითარების ცენტრის ორგანიზებით ვარშავის ეკოლოგიისა და მენეჯმენტის უნივერსიტეტის წარმომადგენელი, ირინა ლაპანოვსკა ესტუმრა.&nbsp;<br />\r\nშეხვედრაზე უნივერსიტეტის რექტორმა კახაბერ კორძაიამ და ირინა ლაპანოვსკამ სამომავლო თანამშრომლობის პერსპექტივები, სტუდენტებისა და აკადემიური პერსონალის გაცვლა, ერასმუს + პროგრამის ფარგლებში თანამშრომლობა და საერთო საგანმანათლებლო პროგრამის შემუშავების შესაძლებლობები განიხილეს.&nbsp;<br />\r\nშეხვედრის დასკვნით ნაწილში პოლონელმა სტუმარმა კავკასიის საერთაშორისო უნივერსიტეტის პოლონური ენისა და კულტურის კაბინეტი დაათვალიერა.</p>\r\n', '', '', '', '', '2016-02-19 22:25:00', 0, 1, 0, 0),
(162, 'დასაქმების-სააგენტო-წარმომადგენლების-საინფორმაციო-შეხვედრა', '-1-2-3-4-5-6', '-1-2-3-4-5-6', '5', NULL, 'დასაქმების სააგენტო წარმომადგენლების საინფორმაციო შეხვედრა', '', '', 'დასაქმების სააგენტო ეიჩარის წარმომადგენლების საინფორმაციო შეხვედრა', '', '', '<p>5 აპრილს კავკასიის საერთაშორისო უნივერსიტეტის საკონფერენციო დარბაზში &bdquo;დასაქმების სააგენტო ეიჩარის&ldquo; წარმომადგენლებმა - კადრების შერჩევის ოფიცერმა - ანა ჩაჩიბაიამ და პროექტის ასისტენტმა - თამუნა გოგელიამ სტუდენტებთან საინფორმაციო შეხვედრა გამართეს.<br />\r\nმათ &bdquo;დასაქმების ფორუმი 2016-ის&ldquo; შესახებ სტუდენტებს ინფორმაცია მიაწოდეს დამსაქმებელი კომპანიების, ვაკანსიების, კანდიდატის რეზიუმეს აღწერილობასა და ფორუმის მიზნებზე. სტუდენტებს საშუალება ჰქონდათ მონაწილეობის დამადასტურებელი აპლიკაციები ადგილზე შეევსოთ.<br />\r\n&bdquo;დასაქმების სააგენტო ეიჩარის&ldquo; წარმომადგენლების თქმით, ფორუმში მონაწილეობას მიიღებენ საქართველოში მოქმედი წამყვანი კომპანიები, რომელთა წარმომადგენლები სტუდენტებს პირისპირ გაესაუბრებიან.<br />\r\n&bdquo;დასაქმების ფორუმი 2016&ldquo; 20 მაისი 11 საათზე გაიმართება.</p>\r\n', '', '', '', '', '2016-04-05 00:00:00', 0, 1, 0, 0),
(163, 'პრეზენტაცია', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17', '5', NULL, 'პრეზენტაცია', '', '', 'სპორტისა და ახალგაზრდობის საქმეთა სამინისტროს „ახალგაზრდობის პროფესიული ორიენტაციის ხელშეწყობის პროგრამისა“ და სახელმძღვანელოს ,,აირჩიე პროფესია“ - პრეზენტაცია გაიმართა', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტში საქართველოს სპორტისა და ახალგაზრდობის საქმეთა სამინისტროს &bdquo;ახალგაზრდობის პროფესიული ორიენტაციის ხელშეწყობის პროგრამისა&ldquo; და სახელმძღვანელოს ,,აირჩიე პროფესია&ldquo; - პრეზენტაცია გაიმართა.<br />\r\nფსიქოლოგიური ტესტები, ვიდეორგოლები პროფესიებზე, პროფორიენტაციის სახელმძღვანელოები, სხვადასხვა საკითხავი მასალა და რეკომენდაციები, სავარჯიშოები, ქვიზები, პროფესიათა აღწერილობები - ეს იმ სარეკომენდაციო მასალების არასრული ჩამონათვალია, რასაც დაინტერესებული პირი პროგრამის ოფიაციალურ გვერდზე :&nbsp;<a data-ft=\"{&quot;tn&quot;:&quot;-U&quot;}\" data-lynx-mode=\"async\" href=\"https://l.facebook.com/l.php?u=http%3A%2F%2Fmyprofession.gov.ge%2F&amp;h=ATMDKgtBvSn2Tja8GJ__Mr_wDF0zl8puMjVq9vlt8c7TfKJMCQi0odVSjfVSkcVLvpARXcv2koVfMTjgOgxsGoV7pSghb1q_QRcLoB2WDyoyM5X8YRrPslxbTod-ZpsXCSyIv59KhwWvVyMjv_YikojuC0iezwwD0TUWBTUss2133eI-90Iu_PKDEOVFiM2LXJclHJSE9dSTyM8-2KdTIcigkOxXWuPySXyaLAN3eRLrRTV0c0kTtmEimFx_fkwLiuhHE2OSA2PHxfjICXxB3EsIVQg1zSHG_mbFBri0yt8\" rel=\"noopener nofollow\" target=\"_blank\">http://myprofession.gov.ge/</a>&nbsp;მარტივად იხილავს.<br />\r\nშეხვედრას კსუ-ს სხვადასხვა ფაკულტეტის სტუდენტები ესწრებოდნენ. წარმოდგენილი პრეზენტაციისა და გზამკვლევის გაცნობის შემდეგ, სტუდენტებს საშუალება ჰქონდათ მომხსენებელთათვის შეკითხვები დაესვათ.<br />\r\nშეხვედრა ორგანიზებულია კარიერის განვითარების ცენტრის მიერ.</p>\r\n', '', '', '', '', '2016-04-06 00:15:00', 0, 1, 0, 0),
(164, 'პროგრამა-დაიწყე-კარიერა', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18', '5', NULL, 'პროგრამა „დაიწყე კარიერა“', '', '', 'სტაჟირების პროგრამა „დაიწყე კარიერა“', '', '', '<p>ქალაქ თბილისის მუნიციპალიტეტის მერია დამამთავრებელი კურსის სტუდენტებს სთავაზობს სტაჟირების პროგრამას &bdquo;დაიწყე კარიერა&ldquo;, რომლის ფარგლებში თბილისში არსებული ავტორიზებული უმაღლესი საგანმანათლებლო დაწესებულებების მეოთხე კურსის სტუდენტებს მიეცემათ შესაძლებლობა გაიარონ 3 თვიანი, არაანაზღაურებადი პროფესიული პრაქტიკა. პროგრამის ფარგლებში მოხდება დარეგისტრირებული სტუდენტების გადანაწილება ქალაქ თბილისის მუნიციპალიტეტის მერიის მიერ დაფუძნებულ ორგანიზაციებში (შპს, ააიპ) სტუდენტის განათლების პროფილისა და ორგანიზაციის პროფესიული მიმართულების გათვალისწინებით.<br />\r\nპროგრამაში მონაწილეობა შეუძლიათ თბილისში არსებული ავტორიზებული უმაღლესი საგანმანათლებლო დაწესებულებების დამამთავრებელი კურსის სტუდენტებს.<br />\r\nსტუდენტები პროფესიულ სტაჟირებას გაივლიან შემდეგი მიმართულებებით:<br />\r\nხელოვნება<br />\r\nსპორტი<br />\r\nგანათლება<br />\r\nვეტერინარია<br />\r\nსამართალი<br />\r\nტრანსპორტი<br />\r\nჯანდაცვა და მედიცინა<br />\r\nარქიტექტურა მშენებლობა<br />\r\nსაბუნებისმეტყველო მეცნიერებები<br />\r\nკომპიუტერული მეცნიერებები<br />\r\nბიზნესის ადმინისტრირება<br />\r\nსაინჟინრო მეცნიერებები და ტექნოლოგიები<br />\r\nარქიტექტურა-მშენებლობა<br />\r\nსტუდენტების გადარჩევა მოხდება GPA-ს საფუძველზე, ერთნაირი ქულების არსებობის შემთხვევაში უპირატესობა მიენიჭება სოციალურად დაუცველი (ოჯახის ქულა 70 000-ზე ნაკლები) და 13 ივნისის სტიქიის შედეგად დაზარალებული ოჯახის წევრ სტუდენტებს.<br />\r\nსტაჟირების პროგრამაში მონაწილეობის სურვილის შემთხვევაში, უნდა შეავსოთ აპლიკაცია 7 აპრილიდან 29 აპრილის ჩათვლით 24:00 საათამდე.<br />\r\nსტაჟირების წარმატებით გავლის შემთხვევაში გაიცემა სერტიფიკატი.<br />\r\nსარეგისტრაციო აპლიკაცია იხ. ბმულზე:&nbsp;<a data-ft=\"{\" tn=\"\">http://goo.gl/vBzBkL</a><br />\r\nდამატებითი კითხვების არსებობს შემთხვევაში, მიმართეთ კავკასიის საერთაშორისო უნივერსიტეტის კარიერის განვითარების ცენტრს (ოთახი #515)</p>\r\n', '', '', '', '', '2016-04-11 00:19:00', 0, 1, 0, 0),
(165, 'StepUp-ის-ტრენინგი', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19', '5', NULL, 'StepUp-ის ტრენინგი', '', '', 'StepUp-ის ორდღიანი ტრენინგი', '', '', '<p>StepUp-ის ორდღიანი ტრენინგი</p>\r\n\r\n<p>StepUp - კარიერული კონსულტაციის კომპანია, რომელიც ხელს უწყობს სამუშაოს მაძიებელს დასაქმებაში, 17 და 18 მაისს, 14:00 საათზე, კავკასიის საერთაშორისო უნივერსიტეტის 30 მაღალი GPA-ს მქონე სტუდენტს უფასო ტრენინგსა და მასტერ კლასს ჩაუტარებს.&nbsp;<br />\r\nშეხვედრაზე განხილული იქნება შემდეგი თემები: თვითშემეცნება და საკუთარი შესაძლებლობების ანალიზი; როგორ შევადგინოთ დასამახსოვრებელი ინტრო; თვითბრენდინგი და ნეთვორქინგი კარიერული წარმატებისთვის; როგორ შევადგინოთ რეზიუმე თანამედროვე ტრენდების გათვალისწინებით; როგორ დავსაქმდეთ, როცა არ გვაქვს გამოცდილება და როგორ გავართვათ თავი რთულ შეკითხვებს გასაუბრებაზე.&nbsp;<br />\r\nმასტერკლასიის დასრულების შემდეგ მონაწილე სტუდენტებს სერტიფიკატები გადაეცემათ.</p>\r\n', '', '', '', '', '2016-05-16 00:21:00', 0, 1, 0, 0),
(166, 'ურთიერთთანამშრომლობის-მემორანდუმი', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20', '5', NULL, 'ურთიერთთანამშრომლობის მემორანდუმი', '', '', 'ურთიერთთანამშრომლობის მემორანდუმი გაფორმდა', '', '', '<p>18 მაისს კავკასიის საერთაშორისო უნივერსიტეტსა და &bdquo;ახალგაზრდობის განვითარებისა და ხელშეწყობის ცენტრს&ldquo; შორის ურთიერთთანამშრომლობის მემორანდუმი გაფორმდა.&nbsp;<br />\r\nმემორანდუმის მიზანია სტუდენტების კვალიფიკაციის ამაღლება, პროფესიული უნარ-ჩვევების გამომუშავება და პრაქტიკული გამოცდილების მიღება.&nbsp;<br />\r\nმემორანდუმის ფარგლებში - სტუდენტების პრაქტიკული გამოცდილებისა და შესაბამისი უნარ-ჩვევების განვითარების ხელშეწყობა, ერთობლივი პროგრამების დაგეგმვა, განხორციელება, ტრენინგებში, სასწავლო პროგრამებსა და საჯარო ლექციებში სტუდენტების ჩართულობა და მათთვის აქტუალურ საკითხებზე საჯარო ლექციების ორგანიზება - იგეგმება.&nbsp;<br />\r\nაღნიშნულ მემორანდუმს ხელი კავკასიის საერთაშორისო უნივერსიტეტის რექტორმა კახაბერ კორძაიამ და &bdquo;ახალგაზრდობის განვითარებისა და ხელშეწყობის ცენტრის&ldquo; დირექტორმა გიორგი ჯღარკავამ მოაწერეს.</p>\r\n', '', '', '', '', '2016-05-18 00:25:00', 0, 1, 0, 0),
(167, 'პერსონალური-ბრენდინგი', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21', '5', NULL, '„პერსონალური ბრენდინგი“', '', '', 'მასტერკლასი თემაზე: „პერსონალური ბრენდინგი“', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტის სტუდენტებს კარიერული კონსულტაციის კომპანია StepUp -ის დირექტორი ცირა შანავა უფასო ტრენინგსა და მასტერკლასს თემაზე: &bdquo;პერსონალური ბრენდინგი&ldquo; უტარებს.<br />\r\nტრენინგში მონაწილეობას უნივერსიტეტის სხვადასხვა ფაკულტეტის 30 მაღალი GPA-ს მქონე სტუდენტი იღებს.<br />\r\nშეხვედრაზე სტუდენტები ინფორმაციას მიიღებენ რეზიუმეს თანამედროვე ტრენდების გათვალისწინებით შედგენის, საკუთარი შესაძლებლობების ანალიზისა და თვითბრენდინგის შესახებ.<br />\r\nმასტერკლასი 2 დღის განმავლობაში გაგრძელდება და დასრულების შემდეგ მონაწილე სტუდენტებს სერტიფიკატები გადაეცემათ.&nbsp;<br />\r\nკომპანია StepUp -ის მიზანია, შესაძლებლობების მაქსიმალური გამოვლენის გზით, ახალგაზრდების დასაქმების ხელშეწყობა.<br />\r\nმასტერკალასი და ტრენინგი უნივერსიტეტის კარიერის განვითარების ცენტრის ორგანიზებით ტარდება.</p>\r\n', '', '', '', '', '2016-05-18 00:21:00', 0, 1, 0, 0),
(168, 'კარიერული-განვითარების-ფორუმი', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22', '5', NULL, 'კარიერული განვითარების ფორუმი', '', '', 'კარიერული განვითარების ფორუმი შსს-ს აკადემიაში', '', '', '<p>კარიერული განვითარების ფორუმი შსს-ს აკადემიაში!<br />\r\nზოგადი ინფორმაცია:&nbsp;<br />\r\nკარიერული განვითარების ფორუმი გაიმართება 22 ივნისს შინაგან საქმეთა სამინისტროს აკადემიაში. ღონისძიებას დაესწრებიან ბაკალავრის პროგრამის დამამთავრებელი კურსის სტუდენტები ავტორიზებული უმაღლესი სასწავლებლებიდან.<br />\r\nფორუმის მიზნები:&nbsp;<br />\r\nშსს-ში ახალგაზრდა, მოტივირებული და კვალიფიციური კადრების მოზიდვა;<br />\r\nსტუდენტთა დასაქმების ხელშეწყობა;<br />\r\nსტუდენტებში შსს-ს საქმიანობის შესახებ ცნობიერების გაზრდა.<br />\r\nმონაწილე სტრუქტურული ერთეულები:<br />\r\nშსს-ს კარიერული განვითარების ფორუმი შსს-ს კვლევისა და განვითარების დეპარტამენტის ორგანიზატორობით ჩატარდება. ფორუმზე წარმოდგენილი იქნებიან შსს-ს სტრუქტურული ერთეულები, რომელთაც გააჩნიათ ვაკანსიები. აღნიშნული სტრუქტურული ერთეულების წარმომადგენლები სტუდენტებისთვის წარმოადგენენ პრეზენტაციას თავიანთი საქმიანობის შესახებ. პრეზენტაციაში ასევე იქნება ინფორმაცია არსებული ვაკანსიების შესახებ.<br />\r\nკარიერული განვითარების ფორუმში მონაწილე სტრუქტურული ერთეულები:<br />\r\nსაინფორმაციო ანალიტიკური დეპარტამენტი;<br />\r\nსაექსპერტო-კრიმინალისტიკური დეპარტამენტი;<br />\r\nპოლიციის ტერიტორიული ორგანოები;<br />\r\nინტერპოლის ეროვნული ცენტრალური ბიურო საქართველოში;<br />\r\nსაპატრულო პოლიციის დეპარტამენტი;<br />\r\nგანსაკუთრებულ დავალებათა დეპარტამენტი;<br />\r\nკვლევისა და განვითარების დეპარტამენტი;<br />\r\n112;<br />\r\nმომსახურების სააგენტო;<br />\r\nეკონომიკური დეპარტამენტი;<br />\r\nლოჯისტიკის დეპარტამენტი;<br />\r\nდამსწრეთა რაოდენობა შეზღუდულია.<br />\r\nგარდა ზოგადი სახის პრეზენტაციებისა, კარიერული განვითარების ფორუმის ფარგლებში ასევე გაიმართება გვერდითი ღონისძიებები:<br />\r\nმონაწილეთა ვიზიტი ვირტუალურ ტირში;<br />\r\nსასროლეთი (3ტყვია თითო მონაწილეს)<br />\r\nპოლიციელთა ტაქტიკური წვრთნა, რომელშიც შესაძლებლობა ასევე ექნებათ სტუდენტებს;<br />\r\nგანსაკუთრებულ დავალებათა დეპარტამენტის იმიტირებული როლური წვრთნა/თამაში.<br />\r\nდამატებითი ინფორმაციისთვის მობრძანდით,კავკასიის საერთაშორისო უნივერსიტეტის I კორპუსის, 515 ოთახში. გისურვებთ წარმატებას!</p>\r\n', '', '', '', '', '2016-06-01 00:32:00', 0, 1, 0, 0),
(169, 'სტაჟირების-სახელმწიფო-პროგრამა', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23', '5', NULL, 'სტაჟირების სახელმწიფო პროგრამა', '', '', 'სტაჟირების სახელმწიფო პროგრამის 2016 წლის შემოდგომის ნაკადი', '', '', '<p>დაიწყო სტაჟირების სახელმწიფო პროგრამის 2016 წლის შემოდგომის ნაკადი. აღნიშნულ პროგრამაში მონაწილეობის მისაღებად აუცილებელია სტაჟირების კანდიდატმა, 2016 წლის 14 სექტემბრის ჩათვლით, მიმართოს კავკასიის საერთაშორისო უნივერსიტეტის კარიერის განვითარების ცენტრს და განაცხადოს წერილობითი თანხმობა სტაჟირების აღნიშნულ ნაკადში მონაწილეობის მისაღებად.<br />\r\nდამატებითი კითხვების შემთხვევაში დაუკავშირდით სტაჟირების სახელმწიფო პროგრამის ცხელ ხაზზე, ტელ: 2197755 ან კსუ-ს კარიერის განვითარების ცენტრს, (995 32) 294 59 92 ( შიდა 109).</p>\r\n\r\n<p><a data-ft=\"{&quot;tn&quot;:&quot;-U&quot;}\" data-lynx-mode=\"async\" href=\"https://l.facebook.com/l.php?u=http%3A%2F%2Fstajireba.gov.ge%2FNews%2F1010&amp;h=ATOk-TyG1UEJBsL5KyCvsBYz2WAaS6YKQnaOSR4kiVC8qP1NtzZ7pCnutVM8_KNRv9Ntp9ixyaQEiYU1WVI5m2Dn-mmhYnMrwTX_-7uzUwIFbrdorGorcNc1CCTPuJ43kngRBM9GFjtH9iemgt7Cl2GX6H-ZTIHlDc7XT7-NvWnRvupl1RW3nTQTfX3xUQKTIcVq8dq681nKGeX83yPucy8X4_qZnikJ61FgQWkJOTwGnrRYG170JVXx5qjOM9DqRHbLoOGdZoig58fBE-28aSX8clokx_BbWAV0JuITnwQ\" rel=\"noopener nofollow\" target=\"_blank\">http://stajireba.gov.ge/News/1010</a></p>\r\n', '', '', '', '', '2016-08-23 00:37:00', 0, 1, 0, 0),
(170, 'უმაღლესი-განათლების-ახალი-პერსპექტივები-ტურიზის-მიმართულებით', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24', '5', NULL, '„ უმაღლესი განათლების ახალი პერსპექტივები ტურიზის მიმართულებით“', '', '', 'შეხვედრა თემაზე: „ უმაღლესი განათლების ახალი პერსპექტივები ტურიზის მიმართულებით“', '', '', '<p>30 სექტემბერს კავკასიის საერთაშორისო უნივერსიტეტში ტურიზმის საერთაშორისო დღესთან დაკავშირებით გაიმართა შეხვედრა თემაზე: &bdquo; უმაღლესი განათლების ახალი პერსპექტივები ტურიზის მიმართულებით&ldquo;.<br />\r\nშეხვედრა მრგვალი მაგიდის ფორმატით ჩატარდა. ღონისძიების მონაწილეებმა ტურიზმის მიმართულებით უმაღლესი განათლების ახალი შესაძლებლობები ქვეყნის სოციო-ეკონომიკური განვითარების კონტექსტში განიხილეს.<br />\r\nშეხვედრა კავკასიის საერთაშორისო უნივერსიტეტის ხარისხის უზრუნველყოფის სამსახურის უფროსმა მარინა გედევანიშვილმა გახსნა და სტუმრებს უნივერსიტეტის ისტორია და საქმიანობა გააცნო.&nbsp;<br />\r\nღონისძიებას უნივერსიტეტის ტურიზმის სპეციალობის სტუდენტებთან და პროფესორ-მასწავლებლებთან ერთად, ტურიზმის ეროვნული ადმინისტრაციის, საქართველოს პარლამენტის დარგობრივი ეკონომიკის და ეკონომიკური პოლიტიკის კომიტეტის, ტურიზმის ეროვნული ადმინისტრაციის, ქალაქ თბილისის მუნიციპალიტეტის მერიის ეკონომიკური პოლიტიკის საქალაქო სამსახურის, ტურისტული სააგენტოებისა და სხვადასხვა ორგანიზაციის წარმომადგენლები ესწრებოდნენ.<br />\r\nმოწვეულმა სტუმრებმა სტუდენტებს პრაქტიკული გამოცდილება გაუზიარეს და მომავალი თანამშრომლობის შესაძლებლობები განიხილეს.<br />\r\nშეგახსენებთ, რომ კავკასიის საერთაშორისო უნივერსიტეტი ტურიზმის საერთაშორისო დღეს უკვე მესამე წელია აღნიშნავს.<br />\r\nშეხვედრის ორგანიზატორები: კავკასიის საერთაშორისო უნივერსიტეტის კარიერის განვითარების ცენტრი და ბიზნესის ფაკულტეტის ტურიზმის საგანმანათლებლო პროგრამის ხელმძღვანელი.</p>\r\n', '', '', '', '', '2016-09-30 00:39:00', 0, 1, 0, 0);
INSERT INTO `news` (`id`, `slug_ge`, `slug_en`, `slug_ru`, `category`, `lector`, `title_ge`, `title_en`, `title_ru`, `descr_ge`, `descr_en`, `descr_ru`, `text_ge`, `text_en`, `text_ru`, `image`, `image_paths`, `date`, `favorite`, `active_ge`, `active_en`, `active_ru`) VALUES
(171, 'დასაქმების-ფორუმი', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25', '5', NULL, 'დასაქმების ფორუმი', '', '', 'დასაქმების ფორუმი 2016', '', '', '<p>27 ოქტომბერს, 11:00-დან 14:00 საათამდე, კავკასიის საერთაშორისო უნივერსიტეტის ცენტრალურ კორპუსის 101 აუდიტორიაში გაიმართება დასაქმების ფორუმი.</p>\r\n\r\n<p>ფორუმში მონაწილეობას მიიღებს 25-ზე მეტი საქართველოში მოქმედი ადგილობრივი და საერთაშორისო კომპანია. აღნიშნული ფორუმი მოგცემთ საშუალებას, პოტენციურ დამსაქმებლებს გააცნოთ საკუთარი თავი და ხელი შეუწყოთ საკუთარ კარიერულ წინსვლას. კომპანიების წარმომადგენლები დაინტერესებულ პირებს მიმდინარე და სამომავლოდ გამოცხადებული ვაკანსიებზე გაესაუბრებიან.</p>\r\n\r\n<p>ფორუმში მონაწილეობას მიიღებენ: თიბისი ბანკი, ვითიბი ბანკი, ლიბერთი ბანკი, საქართველოს ბანკი, მიკროსაფინანსო ორგანიზაცია კრედო, სადაზღვევო კომპანია ირაო, ადაზღვევო კომპანია ქართუ, სადაზღვევო კომპანია ჯიპიაი, სადაზღვევო კომპანია არდი სადაზღვევო კომპანია კოპენბური, ფარმაცევტული კომპანია PSP, ფარმაცევტული კომპანია ავერსი, ფარმაცევტული კომპანია ფარმადეპო, Beeline, Geocell, Radisson Blu Iveria, Hotel Holiday Inn Tbilisi, აუდიტორული და ბიზნეს საკონსულტაციო კომპანია BDO, ანა ჯალაღონიას საადვოკატო ბიურო, სამედიცინო კორპორაცია ევექსი, სამედიცინო ცენტრი &quot;ციტო&quot;, HR აუთსორსინგი, საინფორმაციო სააგენტო &quot;ინტერპრესნიუსი&quot;, ვისოლ ჯგუფი (ვისოლ პეტროლიუმი, ეარ ვისოლი, ვისოლ გაზი, ვისოლ ბუნკირება, ვისოლ გაზის სადისტრიბუციო კომპანია, სუპერმარკეტების ქსელი ,,სმარტი&ldquo;, საფეხბურთო კლუბი ტორპედო, ვისოლ ავტო ექსპრესი, დელტა ჰოლდინგი, ველაჯიო).<br />\r\nდასწრება შეუძლია ყველა მსურველს (კსუ-ს სტუდენტებს, ასევე კურსდამთავრებულსაც).</p>\r\n\r\n<p>რჩევა: დასაქმების ფორუმზე თან იქონიეთ თქვენი CV-ის რამდენიმე ასლი, რომელსაც კომპანიის წარმომადგენლებს წარუდგენთ.</p>\r\n\r\n<p>დამატებითი ინფორმაციისთვის სტუდენტებს და კურსდამთავრებულებს შეუძლიათ დაგვიკავშირდნენ შემდეგ ელექტრონულ მისამართზე: career@ciu.edu.ge.</p>\r\n\r\n<p>გისურვებთ წარმატებას !</p>\r\n', '', '', '', '', '2018-01-08 00:42:00', 0, 1, 0, 0),
(172, 'დაიწყე-კარიერა', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26', '5', NULL, ' „დაიწყე კარიერა“', '', '', 'სტაჟირების პროგრამა - „დაიწყე კარიერა“ გრძელდება', '', '', '<p>თბილისის მერიის სტუდენტური სტაჟირების პროგრამა - &bdquo;დაიწყე კარიერა&ldquo; გრძელდება</p>\r\n\r\n<p>თბილისის მუნიციპალიტეტის მერია საბაკალავრო პროგრამების სტუდენტებისთვის სტაჟირების პროგრამას - &bdquo;დაიწყე კარიერა&ldquo; განაგრძობს.</p>\r\n\r\n<p>პროგრამის ფარგლებში, თბილისში არსებული ავტორიზებული უმაღლესი საგანმანათლებლო დაწესებულებების მესამე და მეოთხე კურსის (თბილისის სახელმწიფო სამედიცინო უნივერსიტეტის - მესამე, მეოთხე, მეხუთე კურსის) სტუდენტებს შესაძლებლობა მიეცემათ, სამთვიანი, არაანაზღაურებადი პროფესიული პრაქტიკა გაიარონ.</p>\r\n\r\n<p>დარეგისტრირებული სტუდენტები განათლების პროფილისა და ორგანიზაციის პროფესიული მიმართულების გათვალისწინებით, თბილისის მერიის მიერ დაფუძნებულ ორგანიზაციებში (შპს, ააიპ) გადანაწილდებიან.</p>\r\n\r\n<p>სტაჟირების წარმატებით გავლის შემთხვევაში, გაიცემა სერტიფიკატი.</p>\r\n\r\n<p>პროგრამაში მონაწილეობა შეუძლიათ თბილისში არსებული ავტორიზებული უმაღლესი საგანმანათლებლო დაწესებულებების მესამე და მეოთხე კურსის სტუდენტებს. გამონაკლისს წარმოადგენს თბილისის სახელმწიფო სამედიცინო უნივერსიტეტი, სადაც მონაწილეობის მიღების უფლება მე-5 კურსის სტუდენტებსაც ეძლევათ.</p>\r\n\r\n<p>სტუდენტები პროფესიულ სტაჟირებას გაივლიან შემდეგი მიმართულებებით: ხელოვნება, სპორტი, განათლება, ვეტერინარია, სამართალი, ტრანსპორტი, ჯანდაცვა და მედიცინა, არქიტექტურა მშენებლობა, საბუნებისმეტყველო მეცნიერებები, კომპიუტერული მეცნიერებები, ბიზნესის ადმინისტრირება, საინჟინრო მეცნიერებები და ტექნოლოგიები და არქიტექტურა-მშენებლობა.</p>\r\n\r\n<p>სტუდენტების გადარჩევა GPA-ს საფუძველზე მოხდება. ერთნაირი ქულების არსებობის შემთხვევაში, უპირატესობა მიენიჭება სოციალურად დაუცველი (ოჯახის ქულა 70 000-ზე ნაკლები) ოჯახის წევრ სტუდენტებს.</p>\r\n\r\n<p>სტაჟირების პროგრამაში მონაწილეობისთვის უნდა შეავსოთ აპლიკაცია 8 ნოემბრიდან 2 დეკემბრის ჩათვლით (24:00 საათამდე) თბილისის მერიის ოფიციალურ ვებგვერდზე:&nbsp;<a data-ft=\"{&quot;tn&quot;:&quot;-U&quot;}\" data-lynx-mode=\"async\" data-lynx-uri=\"https://l.facebook.com/l.php?u=http%3A%2F%2Ftbilisi.gov.ge%2Fnews%2F3101&amp;h=ATMgPvgLty1-7GjQobpfOBUF8H29waG0A1qfiIf-rbqymsmWiI4M7t1Jh550wGCCNgGjDC9LMibcKNN_fCMVmBf2iVbC_FgWCXe8TiVp5ZGgR7Em2EFbTsLIZVt0Ri_-ssUNCftADCdaIvQlSUtqBQlLF5JxPrAZKrGc29wXoQD7ruX0fc2YSGWxORHegOXoiusz_aHw9-0NHlzFajlkjirVYpB0Q2SIHP734hEHZKRyfsGVH5mKdnPr9yn2q5rrTeuoSizWhAAOmksM3IEaXcuh55OtIk6JSDeQdOwZrUZcJQbFkg\" href=\"http://tbilisi.gov.ge/news/3101\" rel=\"noopener nofollow\" target=\"_blank\">http://tbilisi.gov.ge/news/3101</a>.</p>\r\n', '', '', '', '', '2016-11-10 00:43:00', 0, 1, 0, 0),
(173, 'პროფესია-ადვოკატი', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27', '5', NULL, ' ,,პროფესია ადვოკატი“', '', '', 'საჯარო ლექცია თემით - ,,პროფესია ადვოკატი“ გამართა', '', '', '<p>17 დეკემბერს, კავკასიის საერთაშორისო უნივერსიტეტის სტუდენტებთან საქართველოს ადვოკატთა ასოციაციის აღმასრულებელი საბჭოს წევრმა, ადვოკატმა ირაკლი ყანდაშვილმა საჯარო ლექცია თემით - ,,პროფესია ადვოკატი&ldquo; გამართა.<br />\r\nმომხსენებელმა სტუდენტებს ადვოკატთა ასოციაციის ფუნქციები გააცნო და სამთავრობო, სასამართლო და საერთაშორისო სტრუქტურებთან ურთიერთობის ფორმატზე ესაუბრა.<br />\r\nშეხვედრა კითხვა-პასუხის რეჟიმით წარიმართა. სტუდენტების კითხვები სიახლეებს, საკვალიფიკაციო გამოცდებსა და სავალდებული ერთწლიანი სტაჟირებს შეეხებოდა.</p>\r\n', '', '', '', '', '2016-12-17 00:48:00', 0, 1, 0, 0),
(174, 'მედიცინის-მუშაკთა-დღე', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28', '5', NULL, 'მედიცინის მუშაკთა დღე', '', '', ' საქართველოს მედიცინის მუშაკთა პროფესიულ დღე', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტში 23 დეკემბერს საქართველოს მედიცინის მუშაკთა პროფესიულ დღესთან დაკავშირებით, კარიერის განვითარების ცენტრმა და კსუ-ს მედიცინის ფაკულტეტის დეკანატმა საქართველოს შრომის, ჯანმრთელობისა და სოციალური დაცვის სამინისტროს შრომისა და დასაქმების პოლიტიკის დეპარტამენტის უფროსს, ელზა ჯგერენაიას უმასპინძლა.<br />\r\nსტუმარმა საჯარო ლექციის ფორმატში დასაქმების სახელმწიფო პოლიტიკის, ჯანდაცვის სფეროში შრომის ბაზრის მოთხოვნებსა და ტენდენციებზე, სფეროში ახალგაზრდა კადრების დასაქმების პრობლემებსა და არსებულ მდგომარეობაზე ისაუბრა.</p>\r\n', '', '', '', '', '2016-12-23 00:52:00', 0, 1, 0, 0),
(175, 'მასტერკლასი', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29', '5', NULL, 'მასტერკლასი', '', '', 'მასტერკლასი: Networking and Job Searching', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტის კარიერის განვითარების ცენტრის ორგანიზებით, სადაზღვევო კომპანია ,,ადლაგის&quot; წარმომადგენლებმა საქმიანი კავშირებისა და სამუშაოს ძიების ხერხებზე მასტერკლასი ჩაატარეს.</p>\r\n\r\n<p>ტრენინგს სხვადასხვა ფაკულტეტის სტუდენტები ესწრებოდნენ. ტრენერებმა მსმენელებს კონკრეტული რჩევები და პრაქტიკული რეკომენდაციები გაუზიარეს ისეთ მნიშვნელოვან საკითხებზე, როგორიცაა რეზიუმესა და სამოტივაციო წერილის შედგენა, ,,ნეთვორქინგის&quot; მნიშვნელობა და სამუშაოს ძების დაგეგმარება.</p>\r\n\r\n<p>ტრენერებმა სამი ძირითადი პუნქტი გამოყვეს: ისაუბრეთ საკუთარ თავზე და შესაძლებლობაზე; კონცენტრირდით და დაფიქრდით როგორ ეხმარებით სხვა ადამიანებს; გქონდეთ მუდმივი კავშირი თქვენს სანაცნობო წრესთან.</p>\r\n\r\n<p>მასტერკლასის მონაწილეებს საშუალება მიეცათ ადგილზე შეევსოთ სადაზღვევო კომპანია ალდაგის სააპლიკაციო დოკუმენტი, რომლის გადარჩევის შემდეგ, მათ კომპანია თავად დაუკავშირდება.</p>\r\n\r\n<p>მასტერკლასში მონაწილეობა უფასო გახლდათ და მსმენელებს სერტიფიკატები გადაეცათ.</p>\r\n', '', '', '', '', '2017-03-23 00:57:00', 0, 1, 0, 0),
(176, 'საბროკერო-კომპანია-ვაისი', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30', '5', NULL, 'საბროკერო კომპანია ვაისი', '', '', 'საბროკერო კომპანია ვაისი', '', '', '<p>6 აპრილს კავკასიის საერთაშორისო უნივერსიტეტის სტუდენტებს საბროკერო კომპანია ,,ვაისის&ldquo; HR მენეჯერები შეხვდნენ და გაყიდვების საცალო აგენტის ვაკანსიის პირობები გააცნეს.&nbsp;<br />\r\nკომპანია ფიზიკურ და იურიდიულ პირებს, 10-ზე მეტი მომსახურების სფეროში, სწორი გადაწყვეტილების მიღებაში, სადაზღვევო პროდუქტების შერჩევასა და ხარჯების შემცირებაში ეხმარება.<br />\r\nსაბროკერო კომპანია ,,ვაისის&ldquo; წარმომადგენლებმა დეტალურად ისაუბრეს ვაკანსიის პირობებზე, სამუშაო გრაფიკსა და გეგმაზე.<br />\r\nდაინტერესებულ სტუდენტებს საშუალება მიეცათ ადგილზე შეევსოთ სააპლიკაციო ფორმა, რომლის საფუძველზეც მათ კომპანია გასაუბრებაზე დაიბარებს.</p>\r\n', '', '', '', '', '2017-04-06 01:02:00', 0, 1, 0, 0),
(177, 'დასაქმების-ფორუმი-1', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31', '5', NULL, 'დასაქმების ფორუმი', '', '', 'სტუდენტური დასაქმების ფორუმი', '', '', '<p>სტუდენტური დასაქმების ფორუმი</p>\r\n\r\n<p>ეროვნული სამეცნიერო ბიბლიოთეკა გიწვევთ სტუდენტთა დასაქმების პირველ ფორუმში<br />\r\nმონაწილეობის მისაღებად. ფორუმი ჩატარდება 2 მაისს, 12:00 საათიდან 17:00 საათამდე<br />\r\nბიბლიოთეკის მესამე სართულზე. პროექტში მონაწილეობას მიიღებენ სხვადასხვა<br />\r\nუნივერსიტეტის სტუდენტები და ისეთი მსხვილი კომპანიები, როგორიცაა: ვისოლი,<br />\r\nსმარტი, დანკინ დონატსი, ვენდი, პსპ, კრედო, IC ჯგუფი, პალიტრა L, 4Searvice, Super TV,<br />\r\nმიკროსაფინანსო ორგანიზაცია ემ ბი სი, ჩემი წიგნი და ა.შ.<br />\r\nდასაქმების ფორუმი გულისხმობს ერთ სივრცეში დამსაქმებლებისა და სამსახურის<br />\r\nმაძიებელი სტუდენტების შეხვედრას, სადაც ორგანიზაციები წარადგენენ თავიანთ<br />\r\nვაკანტურ პოზიციებს, ხოლო დასაქმების მსურველი სტუდენტები ადგილზევე გაივლიან<br />\r\nგასაუბრებას ორგანიზაციის წარმომადგენლებთან. ამასთან, მათ შეუძლიათ გასაუბრება<br />\r\nგაიარონ ერთ ან რამდენიმე დამსაქმებელთან.<br />\r\nპროექტში მონაწილეობა შეუძლიათ ბაკალავრიატის, მაგისტრატურისა და<br />\r\nდოქტორანტურის სტუდენტებს.<br />\r\nდასაქმების ფორუმში მონაწილეობის ეტაპები სტუდენტებისთვის:<br />\r\nპირველი ეტაპი - ონლაინ რეგისტრაცია სარეგისტრაციო ბმულის მეშვეობით<br />\r\n<a data-ft=\"{\" tn=\"\">https://docs.google.com/&hellip;/1FAIpQLScvwCkHfYj-uViDS1OgLiNjan3-</a><br />\r\nSiQQEsj2MOL3JQEtohBmqA/viewform<br />\r\nმეორე ეტაპი - რეზიუმესა და სამოტივაციო წერილის შედგენის ტრენინგში მონაწილეობა<br />\r\nმესამე ეტაპი - დასაქმების ფორუმში მონაწილეობა</p>\r\n', '', '', '', '', '2017-04-24 01:06:00', 0, 1, 0, 0),
(178, 'სადაზღვევო-კომპანია-ალდაგთან', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32', '5', NULL, 'სადაზღვევო კომპანია ალდაგთან', '', '', 'მემორანდუმი სადაზღვევო კომპანია ალდაგთან', '', '', '<p>25 აპრილს, სადაზღვევო კომპანია ალდაგის წარმომადგენლები კავკასიის საერთაშორისო უნივერსიტეტის რექტორს, კახაბერ კორძაიას შეხვდნენ და ურთირთთანამშრომლობის მემონადუმი გააფორმეს. ხელშეკრულების მიზანია კსუ-ს სტუდენტების მაღალკვალიფიციურ პროფესიონალებად ჩამოყალიბება, მათი პროფესიული პოტენციალის რეალიზაცია და უნარ-ჩვევების განვითარების ხელშეწყობა.<br />\r\nსადაზღვევო კომპანია ალაგის HR განყოფილების უფროსმა ანა სიჭინავამ კახაბერ კორძაიას კომპანიაში დასაქმებული კადრების რაოდენობის სტატისტიკა გააცნო და იმედი გამოთქვა, რომ მათ რიგებს, კსუ-ს სტუდენტებიც აქტიურად შეუერთდებიან.<br />\r\nკომპანიის წარმომადგენლებმა თანამშრომლობის ფარგლებში, კსუ-ში საჯარო ლექციების ჩატარების შესაძლებლობაზეც ისაუბრეს და იურიდიულ, ფინანსურ, მარკეტინგისა და სხვა დეპარტამენტებში სტაჟირების შესაძლებლობაზეც გაამახვილეს ყურადღება.</p>\r\n', '', '', '', '', '2017-04-25 09:00:00', 0, 1, 0, 0),
(179, 'იუსტიციის-უმაღლესი-სკოლა', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33', '5', NULL, 'იუსტიციის უმაღლესი სკოლა', '', '', 'იუსტიციის უმაღლესი სკოლის კვალიფიკაციის ასამაღლებელი კურსი', '', '', '<p>28 აპრილს, კავკასიის საერთაშორისო უნივერსიტეტის კარიერის განვითარების ცენტრის ორგანიზებით, სამართლის ფაკულტეტის სტუდენტებს იუსტიციის უმაღლესი სკოლის მარკეტინგის სამსახურის მთავარი სპეციალისტი - სალომე კვარაცხელია შეხვდა.&nbsp;<br />\r\nიუსტიციის უმაღლესი სკოლა 2006 წლის აპრილში დაარსდა და სამოსამართლო კანდიდატების, მოსამართლეების, მოსამართლეთა თანაშემწეებისა და სასამართლოს სხვა თანამშრომლების მაღალპროფესიულ სწავლებასა და გადამზადებას უზრუნველყოფს.<br />\r\nამჟამად ცენტრი სტუდენტებს კვალიფიკაციის ასამაღლებელ კურსს - საპროცესო დოკუმენტების შედგენა და სასამართლოში წარმომადგენლობა - სამოქალაქო, ადმინისტრაციული და სისხლის სამართლის მიმართულებით - სთავაზობს.<br />\r\nმისი თქმით, იუსტიციის უმაღლესი სკოლა მზადაა, უნივერსიტეტებისა და სტუდენტების ჩართულობით შექმნილ ჯგუფებს, სკოლის საკუთრებაში არსებული იმიტირებული დარბაზი დაუთმოს ოლიმპიადებისა თუ სხვადასხვა საგნის ფარგლებში ფინალური სხდომების ეფექტურად ჩატარებისათვის.<br />\r\nცენტრის წარმომადგენელმა, ვრცლად მიმოიხილა მათი საქმიანობა და სტუდენტების კითხვებს ამომწურავად უპასუხა.</p>\r\n', '', '', '', '', '2017-04-28 01:10:00', 0, 1, 0, 0),
(180, 'დასაქმების-ფორუმი-2017', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34', '5', NULL, 'დასაქმების ფორუმი 2017', '', '', 'დასაქმების ფორუმი კსუ-ში', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტის კარიერული განვითარების ცენტრის კოორდინატორის ნანა გადელიას ინიციატივითა და უნივერსიტეტის მხარდაჭერით, უნივერსიტეტში 2016-2017 სასწავლო წელს უკვე მეორედ დასაქმების ფორუმი გაიმართა.&nbsp;<br />\r\nფორუმი უნივერსიტეტის ხარისხის უზრუნველყოფის სამსახურის უფროსმა, რექტორის მოადგილე მარინა გედევანიშვილმა გახსნა, მან სტუდენტებს აქტიურობისაკენ მოუწოდა და შრომით ბაზარზე წარმატება უსურვა.<br />\r\nდასაქმების ფორუმში საქართველოში მოქმედი 22 ადგილობრივი და საერთაშორისო კომპანია მონაწილეობდა მათ შორის: ,,პალიტრა ჯგუფი&ldquo;, ,,ფინანსთა სამინისტრო&ldquo;, საქართველოს პარლამენტი, PSP, ,,საქართველოს ნავთობისა და გაზის კორპორაცია&ldquo;, ,,ევექსი&ldquo;, ,,ალდაგი&ldquo;, &rdquo;არდი&rdquo;, &rdquo;ვითიბი&rdquo;, &rdquo;თიბისი&rdquo;, &rdquo;ფინკა ბანკი&rdquo;, &rdquo;კრედო ბანკი&rdquo; და სხვა ადგილობრივი და საერთაშორისო კომპანია. კსუ-ს სტუდენტებს საშუალება ჰქონდათ, აღნიშნული კომპანიების წარმომადგენლებს ადგილზე შეხვედროდნენ, მიეღოთ კონკრეტული ინფორმაცია ვაკანტურ ადგილებზე და მათთვის საკუთარი თავი წარედგინათ.</p>\r\n', '', '', '', '', '2017-05-24 01:19:00', 0, 1, 0, 0),
(181, 'ევექსის-წარმომადგენლები-სტუდენტებს-შეხვდნენ', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35', '5', NULL, 'ევექსის წარმომადგენლები სტუდენტებს შეხვდნენ', '', '', 'სამედიცინო კორპორაცია ევექსის წარმომადგენლები მედიცინის ფაკულტეტის სტუდენტებს შეხვდნენ', '', '', '<p>2 ივნისს, ,,სამედიცინო კორპორაცია ევექსის&quot; პერსონალის შერჩევის განყოფილების სპეციალისტი ნინო პატარაია და საექთნო დეპარტამენტის დირექტორი - თამარ დაუსი კსუ-ს მედიცინის ფაკულტეტის სტუდენტებს შეხვდნენ.</p>\r\n\r\n<p>სამედიცინო ცენტრის წარმომადგენლები სტუდენტებს კომპანიის შესახებ მოკლედ ესაუბრნენ და ახალგაზრდა დამწყებ კადრებსა თუ პროფესიონალებს როგორც კლინიკური, ასევე ადმინისტრაციული მიმართულებით არსებული ვაკანსიების შესახებ მიაწოდეს ინფორმაცია.</p>\r\n\r\n<p>თამარ დაუსი სტუდენტებს სამედიცინო კორპორაცია ევექსის ,,სასწავლო ცენტრის&rdquo; შესახებ ესაუბრა, რომელიც ექთნებისთვის პროფესიულ სასწავლო კურსს ახორციელებს და მისი მიზანია საქართველოში საექთნო საქმის განვითარება და ხელშეწყობა.</p>\r\n\r\n<p>საინფორმაციო შეხვედრას მედიცინის ფაკულტეტის დეკანის მოადგილე მარიკა თხელიძე და სტუდენტები (მეოთხე სემესტრიდან ზემოთ) ესწრებოდნენ.</p>\r\n\r\n<p>&bdquo;სამედიცინო კორპორაცია ევექსის&ldquo; წარმომადგენლებმა სტუდენტების მოსაზრებები მოისმინეს და თითოეულ კითხვას ამომწურავად უპასუხეს.</p>\r\n\r\n<p>შეგახსენებთ, რომ აღნიშნული შეხვედრა 24 მაისს, კსუ-ს მედიცინის ფაკულტეტის დეკანის ლალი მეკოკიშვილისა და ევექსის წარმომადგენლების შეხვედრის დროს დაიგეგმა.</p>\r\n', '', '', '', '', '2017-01-15 01:24:00', 0, 1, 0, 0),
(182, 'Business-Georgia', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36', '5', NULL, 'Business Georgia', '', '', 'ურთიერთთანამშრომლობის მემორანდუმი Business Georgia-სთან', '', '', '<p>9 ივნისს კავკასიის საერთაშორისო უნივერსიტეტის რექტორმა კახაბერ კორძაიამ და ბიზნეს მედია კომპანია - ,,Business Georgia-ს &rdquo; წარმომადგენლებმა ურთიერთთანამშრომლობის მემორანდუმს მოაწერეს ხელი.&nbsp;<br />\r\nმემორანდუმი, კსუ-ს სტუდენტების სტაჟირების პროგრამებს, საჯარო ლექციების, სემინარების ტრენინგებისა და მასტერკლასების ორგანიზებასა და სამეცნიერო კვლევით საქმიანობაში ურთიერთთანამშრომლობას გულისხმობს.&nbsp;<br />\r\nრექტორთან ვიზიტის შემდეგ, კომპანიის დამფუძნებელი მასუდ რეზაეი და საზოგადოებასთან ურთიერთობის&nbsp;დეპარტამენტის ხელმძღვანელი თამუნა უბირია, სტუდენტებს შეხვდნენ და მათ - ,,Business Georgia-ს საქმიანობის შესახებ მოკლედ მიაწოდეს ინფორმაცია.<br />\r\nკომპანიის წარმომადგენლებმა, სტუდენტებს არსებული ვაკანსიები გააცნეს და ანაზღაურებადი სტაჟირების საკითხი და პირობები განიხილეს.&nbsp;<br />\r\nდაინტერესებულ სტუდენტებს საშუალება მიეცათ კომპანიის მიერ შეთავაზებული სპეციალური სააპლიკაციო დოკუმენტი ადგილზე შეევსოთ, რომლის გადარჩევის საფუძველზეც მათ უშაულოდ დაუკავშირდებიან და გასაუბრებაზე მოიწვევენ.</p>\r\n', '', '', '', '', '2017-06-09 01:26:00', 0, 1, 0, 0),
(183, 'სტაჟირების-სახელმწიფო-პროგრამა-1', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37', '5', NULL, 'სტაჟირების სახელმწიფო პროგრამა', '', '', 'საჯარო სამსახურის ბიურო იწყებს სტაჟირების პროგრამის მე-7 ნაკადს', '', '', '<p>საჯარო სამსახურის ბიურო იწყებს სტაჟირების პროგრამის მე-7 ნაკადს.<br />\r\nსტაჟირების სახელმწიფო პროგრამაში მონაწილეობის მისაღებად აუცილებელია, სტაჟირების კანდიდატმა განაცხადოს წერილობითი თანხმობა სტაჟირების კონკრეტულ ნაკადში მონაწილეობის თაობაზე კავკასიის საერთაშორისო უნივერსიტეტის კარიერული განვითარების ცენტრში, არაუგვიანეს 30 სექტემბრისა.<br />\r\nპროექტის მიზნებიდან გამომდინარე, სტაჟირება ატარებს ერთჯერად ხასიათის, რათა მეტმა სტუდენტმა/კურსდამთავრებულმა მიიღოს საკუთარი საგანმანათლებლო პროფილის შესაბამისი პრაქტიკული გამოცდილება.<br />\r\nიმისათვის, რომ გაიაროთ სტაჟირება, უნდა აკმაყოფილებდეთ შემდეგ კრიტერიუმებს:<br />\r\nუნდა იყოთ საქართველოს მოქალაქე;<br />\r\nუნდა იყოთ უნივერსიტეტის ბაკალავრიატის დამამთავრებელი კურსის სტუდენტი, მაგისტრანტის ან დოქტორანტის სტატუსის მქონე პირი და უნდა გამოირჩეოდეთ მაღალი აკადემიური მოსწრებით, რაც დასტურდება GPA-თ (მინიმუმ 3.0 შესაბამის უმაღლეს საგანმანათლებლო დაწესებულებაში GPA-ს გამოთვლის წესის არსებობის შემთხვევაში) ან საგანმანათლებლო პროგრამის ფარგლებში მიღებული შეფასებების საშუალო არითმეტიკულით (მინიმუმ (B) ძალიან კარგი 81-90%);<br />\r\nსტაჟირების გავლის შესაძლებლობა აქვთ, აგრეთვე, იმ კურსდამთავრებულებსაც, რომლებიც აკმაყოფილებენ ზემოაღნიშნული მაღალი აკადემიური მოსწრების მოთხოვნებს და მათი სწავლის დასრულებიდან გასული არ არის ორ წელზე მეტი.<br />\r\nდამატებითი კითხვების შემთხვევაში დარეკეთ სტაჟირების სახელმწიფო პროგრამის ცხელ ხაზზე, ტელ.: 2197755 ან კსუ-ს კარიერული განვითარების ცენტრში, ტელ.: (+995 32) 294 59 92, (+995 32) 261 12 98 ( შიდა 109).&nbsp;<br />\r\nსაქართველოს მთავრობის დადგენილება, რომლითაც განსაზღვრულია პროგრამაში მონაწილეობის მოთხოვნები და კრიტერიუმები, ხელმისაწვდომია ბმულზე:&nbsp;<a data-ft=\"{&quot;tn&quot;:&quot;-U&quot;}\" data-lynx-mode=\"async\" data-lynx-uri=\"https://l.facebook.com/l.php?u=http%3A%2F%2Fcsb.gov.ge%2Fuploads%2Fstajirebiswesebi.pdf&amp;h=ATNiD6jWP3fSouMz6L3iW5jSgBWGiuZJxNbszYCaK7P9wXGvYnMrfBtSfofjr_BwNZClIu0h5y2BXazTN9okmj4zZIqvsNNfG-SbB1Bva9HW5J-qpQBBiuAPKRqGZyxxjgplpkASM7F5_rqr6RI4gGe_A-odtA6vBkG5tC6mMw1JddpetujYm3XWKtc4IlwwxUS9Kmt2F5lTlT23EZ3NUvDZR0_L4wVBhnDlTSK2OzpFSCCaxtcQ3P9moOEwj42UbuK8VFQLDf7gIvu5sJhGtXsKvIzec-r6Y5hUc765cEM\" href=\"http://csb.gov.ge/uploads/stajirebiswesebi.pdf\" rel=\"noopener nofollow\" target=\"_blank\">http://csb.gov.ge/uploads/stajirebiswesebi.pdf</a></p>\r\n', '', '', '', '', '2017-08-31 01:30:00', 0, 1, 0, 0),
(184, 'მეწარმეების-ტრენინგი', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38', '5', NULL, 'მეწარმეების ტრენინგი', '', '', ' „ახალგაზრდა მეწარმეების შესაძლებლობების ზრდა და ეკონომიკური გაძლიერება“', '', '', '<p>მეცნიერებისა და ინოვაციების ფესტივალი - 2017-ის ფარგლებში კავკასიის საერთაშორისო უნივერსიტეტი ატარებს ტრენინგს თემაზე:&nbsp;<strong>&bdquo;ახალგაზრდა მეწარმეების შესაძლებლობების ზრდა და ეკონომიკური გაძლიერება&ldquo;.</strong></p>\r\n\r\n<p><strong>ტრენინგში მონაწილეობის მიღება შეუძლიათ</strong>&nbsp;ბიზნესის ფაკულტეტის სტუდენტებს, მცირე და საშუალო ბიზნესის წარმომადგენლებს, ახალგაზრდა მეწარმეებს.</p>\r\n\r\n<p><strong>ტრენინგში მონაწილეობა უფასოა.&nbsp;</strong>მონაწილეთა შერჩევა მოხდება წინასწარ,<strong>&nbsp;ონლაინ განაცხადის საფუძველზე.&nbsp;</strong>შერჩეულ მონაწილეებს დაუკავშირდებიან არაუგვიანეს 22 სექტემბრისა.</p>\r\n\r\n<p><strong>ადგილების რაოდენობა:&nbsp;</strong>16</p>\r\n\r\n<p>ტრენინგს გაუძღვება სტარტაპ პროექტების დირექტორი და მართვის აკადემიის ტრენერი,</p>\r\n\r\n<p>საქართველოში პირველი ბიზნეს ინკუბატორის მთავარი მენტორი,&nbsp;<strong>მარიკა</strong>&nbsp;<strong>კლდიაშვილი</strong><strong>.</strong></p>\r\n\r\n<p><strong>რეგისტრაციისთვის გადადით ბმულზე:&nbsp;</strong><a href=\"https://docs.google.com/forms/d/1zITTDyCtQSdcbLkyTWCKq3e9-tz8eRGyktFnv7-KLhE/edit\"><strong>https://docs.google.com/forms/d/1zITTDyCtQSdcbLkyTWCKq3e9-tz8eRGyktFnv7-KLhE/edit</strong></a></p>\r\n\r\n<p>რეგისტრაციის ბოლო ვადაა<strong>&nbsp;20 სექტემბერი, 18:00სთ.</strong></p>\r\n\r\n<p>დამატებითი ინფორმაციისთვის დაგვიკავშირდით:</p>\r\n\r\n<p><a href=\"mailto:career@ciu.edu.ge\"><strong>career@ciu.edu.ge</strong></a></p>\r\n\r\n<p><a href=\"mailto:irs@ciu.edu.ge\"><strong>irs@ciu.edu.ge</strong></a></p>\r\n', '', '', '', '', '2017-09-12 01:40:00', 0, 1, 0, 0),
(185, 'საჯარო-ლექცია', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39', '5', NULL, 'საჯარო ლექცია', '', '', 'დიმიტრი გეგენავას საჯარო ლექცია', '', '', '<p>,,თუკი ოთახში 10 ადამიანია და მათგან ერთი იურისტია - თქვენთვის ნათელი უნდა იყოს თუ ვის აქვს მიზეზი თავს ყველაზე კომფორტულად გრძნობდეს&rdquo; - რჩევები და რეკომენდაციები კსუ-ს სამართლის ფაკულტეტის სტუდენტებს სამართლის დოქტორმა, ასოცირებულმა პროფესორმა, დავით ბატონიშვილის სამართლის ინსტიტუტის დირექტორმა და JMG &amp; Partners-ის მმართველმა პარტნიორმა - დიმიტრი გეგენავამ საჯარო ლექციის ფორმატში გაუზიარა.<br />\r\nლექცია თემაზე: &bdquo;პროფესია იურისტი და კარიერის დაგეგმვა სამართლის დარგში&ldquo; შემდეგ საკითხებს მოიცავდა: იურისტის პროფესიის შინაარსისა და ფორმის საკითხები, სამართლის თეორიისა და სამართლის პრაქტიკის ურთიერთმიმართება, ტერმინოლოგიური აღრევები, პრიორიტეტული და მნიშვნელოვანი სფეროები სამართალში, დასაქმების შესაძლებლობები და ამ მიმართულებით შრომის ბაზრის ტენდენციები.&nbsp;<br />\r\nმომხსენებელმა სტუდენტებს კონკრეტული რჩევები მისცა: მისი თქმით, პირველ რიგში, სფეროთი დაინტერესებულმა ახალგაზრდებმა ჯერ საკუთარი უფლებები უნდა დაიცვან, რათა შემდგომ სხვას აღმოუჩინონ დახმარება, ისწავლონ და დასვან ბევრი კითხვა მანამ, სანამ ამა თუ იმ თემის ირგვლივ ყველა ბუნდოვანება გაქრება.</p>\r\n\r\n<p>შეგახსენებთ, რომ საჯარო ლექცია, კსუ-ს კარიერული განვითარების ცენტრის ორგანიზებით გაიმართა.</p>\r\n', '', '', '', '', '2017-10-02 01:42:00', 0, 1, 0, 0),
(186, 'საინფორმაციო-შეხვედრა', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40', '5', NULL, 'საინფორმაციო შეხვედრა', '', '', 'ალდაგის საინფორმაციო შეხვედრა', '', '', '<p>მოქნილი სამუშაო გრაფიკი, მზარდი ანაზღაურება, მეგობრული გარემო, საინტერესო და სახალისო ტრენინგები - ეს იმ პუნქტების არასრული ჩამონათვალია, რომლებზეც სადაზღვევო კომპანია &bdquo;ალდაგის&ldquo; ადამიანური რესურსის მართვის განყოფილების წარმომადგენლებმა კავკასიის საერთაშორისო უნივერსიტეტში, სტუდენტებთან გამართულ შეხვედრაზე ისაუბრეს.<br />\r\nკომპანიის წარმომადგენლებმა სტუდენტებს არსებული ვაკანსიების პირობები გააცნეს და თავიანთი გამოცდილება გაუზიარეს.<br />\r\n,,ალგადის&ldquo; HR განყოფილების წარმომადგენელმა ანა სურმანიძემ შეკრებილ სტუდენტებს სააგენტო ქსელის სტრუქტურა და onjob.ge პლატფორმა გააცნო. მისი განცხადებით, აღნიშნულ გვერდზე, ნებისმიერ მსურველს შეუძლია ონლაინ აგენტად დარეგისტრირდეს და სახლიდან გაუსვლელად იმუშაოს.<br />\r\nშეხვედის ბოლოს, კომპანიის წარმომადგენლებმა სპეციალური სააპლიკაციო ფორმები დაარიგეს, რომლის შევსებაც ნებისმიერ დაინტერესებულ სტუდენტს შეეძლო. მონაცემების დამუშავების შემდეგ, მათ გასაუბრებაზე მოიწვევენ და საშუალება მიეცემათ ტრენინგებისა და შიდა გამოცდის საფუძველზე კომპანიის თანამშრომლები გახდნენ.</p>\r\n', '', '', '', '', '2017-10-11 01:45:00', 0, 1, 0, 0),
(187, 'დასაქმება-საჯარო-სამსახურში', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40-41', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40-41', '5', NULL, 'დასაქმება საჯარო სამსახურში', '', '', 'საჯარო ლექცია - დასაქმება საჯარო სამსახურში', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტის სტუდენტებთან, საჯარო სამსახურის ბიუროს ადამიანური რესურსების მართვის დეპარტამენტის უფროსმა ირმა მიქაძემ საჯარო ლექცია - დასაქმება საჯარო სამსახურში ჩაატარა.</p>\r\n\r\n<p>მომხსენებელმა საჯარო სამსახურის სპეციფიკაზე, სტაჟირების სახელმწიფო პროგრამასა და დასაქმების პორტალ HR.gov.ge-ზე ისაუბრა.</p>\r\n\r\n<p>ირმა მიქაძემ სტუდენტებს სტაჟირების სახელმწიფო პროგრამის დადებითი მხარეები გააცნო : პროფესიული გამოცდილების შეძენა, პრაქტიკული უნარ-ჩვევების გამომუშავება და დასაქმების თანაბარი პირობების შექმნა.</p>\r\n\r\n<p>ადამიანური რესურსების მართვის დეპარტამენტის უფროსმა, დამსწრე საზოგადოებას კონკრეტული რჩევები და რეკომენდაციები მისცა რეზიუმესა თუ სამოტივაციო წერილის სწორად შესადგენად და გასაუბრებისთვის წინასწარ მომზადება ურჩია.</p>\r\n\r\n<p>შეხვედრის დროს, მომხსენებელმა სტუდენტების მოსაზრებები მოისმინა და მათ შეკითხვებსაც უპასუხა.</p>\r\n', '', '', '', '', '2017-10-12 01:49:00', 0, 1, 0, 0),
(188, 'პალიტრა-ჯგუფი', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40-41-42', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40-41-42', '5', NULL, 'პალიტრა ჯგუფი ', '', '', 'პალიტრა ჯგუფი კსუ-ში', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტის კარიერული განვითარების ცენტრისა და სოციალურ მეცნიერებათა ფაკულტეტის ერთობლივი ორგანიზებით, ჟურნალისტიკის სპეციალობის სტუდენტებს, პალიტრა ჯგუფის ადამიანური რესურსების მართვის სამსახურის წარმომადგენლები და Ambebi.ge-ს მთავარი რედაქტორი ეთო ფურცხვანიძე შეხვდნენ.</p>\r\n\r\n<p>Ambebi.ge-ს რედაქტორმა სტუდენტებს ის ხუთი ძირითადი პრინციპი და უნარი გააცნო, რაც საუკეთესო მულტიმედია ჟურნალისტს უნდა ახასიათებდეს.<br />\r\n&bull; რაც მეტია თხრობის ხერხი, მით უკეთესია შედეგი;<br />\r\n&bull;&nbsp;შესთავაზე მკითხველს სხვადასხვა შესაძლებლობები;<br />\r\n&bull; არ გამოიყენოთ სხვადასხვა ფორმატი ერთი ამბის გადმოსაცემად;<br />\r\n&bull; დაგეგმე წინასწარ ამბის გაშუქებისას, დაინახეთ რომელი გზები გამოგადგებათ მის გადმოსაცემად;<br />\r\n&bull; იმუშავეთ გუნდურად.<br />\r\nეთო ფურცხვანიძემ, კონკრეტულ მაგალითებზე დაყრდნობით სტუდენტებს აჩვენა, თუ როგორი დიდი მნიშვნელობა აქვს ამა თუ იმ ამბის გაშუქების ფორმასა და სტილს. გრაფიკები, ფოტო, ვიდეო, ტექსტი - საჭიროა სწორი მიგნებები, ფორმატი და კვალიფიკაცია.&nbsp;<br />\r\nშეხვედრაზე, პალიტრა ჯგუფის ადამიანური რესურსების მართვის სამსახურის წარმომადგენლებმა შეკრებილ სტუდენტებს კარიერის წარმატებით დასაწყებად სტაჟირების პროექტები: ,,ისწავლე და იმუშავე&ldquo; და მულტიმედია მიმართულებით გაერთიანებულ ნიუსრუმში სამთვიანი სტაჟირების პროგრამა გააცნეს.&nbsp;<br />\r\nშეხვედრის ბოლოს, პალიტრა ჯგუფის წარმომადგენლებმა და კსუ-ს ჟურნალისტიკის სპეციალობის საბაკალავრო პროგრამის ხელმძღვანელმა - ნინო ჭალაგანიძემ, სამომავლო თანამშრომლობის გეგმები დასახეს, რაც ურთიერთთანამშრომლობის მემორანდუმის გაფორმებასა და სტუდენტების სასწავლო პრაქტიკას გულისხმობს.</p>\r\n', '', '', '', '', '2017-10-18 01:51:00', 0, 1, 0, 0),
(189, 'საქართველოს-ნავთობისა-და-გაზის-კორპორაცია', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40-41-42-43', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40-41-42-43', '5', NULL, ' საქართველოს ნავთობისა და გაზის კორპორაცია', '', '', 'შეხვედრა საქართველოს ნავთობისა და გაზის კორპორაციის კორპორატიული მართვის დეპარტამენტის უფროსთან', '', '', '<p>,,ყოველი მარცხი გამოიყენეთ თქვენი შემდგომი წარმატებისთვის&ldquo; - სწორედ წარმატების მისაღწევად საჭირო უნარებზე, კარიერულ განვითარებასა და&nbsp; განხორციელებულ პროექტებზე ისაუბრა საქართველოს ნავთობისა და გაზის კორპორაციის კორპორატიული მართვის დეპარტამენტის უფროსმა ინგა ხუციშვილმა, &nbsp;სტუდენტებთან შეხვედრის დროს.</p>\r\n\r\n<p>კსუ-ს კარიერული განვითარების ცენტრისა და ბიზნესის ფაკულტეტის ერთობლივი ორგანიზებით ჩატარებულ შეხვედრაზე, მომხსენებელმა შეკრებილ აუდიტორიას მოკლედ გააცნო კორპორაციის სტრატეგია და&nbsp; საქმიანობის ძირითადი ასპექტები.</p>\r\n\r\n<p>საჯარო ლექციის მეორე პანელში ინგა ხუციშვილმა, სტუდენტებს კონკრეტული რჩევები და რეკომენდაციები მისცა, მოისმინა მათი შეკითხვებიც და განიხილა წარმატებული რეზიუმესა და სამოტივაციო წერილის შედგენის პრაქტიკული დეტალები.</p>\r\n\r\n<p>მომხსენებლის თქმით, დამსაქმებელსა და დასაქმებულს შორის საჭიროა ორმხრივი ურთიერთობა და მოტივაცია - წინააღმდეგ შემთხვევაში თანამშრომლობა ეფექტური ვერ იქნება.</p>\r\n\r\n<p>შეგახსენებთ, რომ კავკასიის საერთაშორისო უნივერსიტეტში, პოტენციურ დამსაქმებლებთან ამ ტიპის შეხვედრები და საუბრები სისტემატურ ხასიათს ატარებს და მასზე დასწრება ნებისმიერ დაინტერესებულ სტუდენტს შეუძლია.</p>\r\n', '', '', '', '', '2017-10-20 01:54:00', 0, 1, 0, 0),
(190, 'ლიბერთი-ბანკი', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40-41-42-43-44', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40-41-42-43-44', '5', NULL, 'ლიბერთი ბანკი', '', '', 'ლიბერთი ბანკის წარმომადგენლები კსუ-ში', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტის კარიერული განვითარების ცენტრისა და ბიზნესის ფაკულტეტის ორგანიზებით, სტუდენტებსა და კურსდამთავრებულებს, ლიბერთი ბანკის ადამიანური რესურსის მართვის დეპარტამენტის შერჩევის განყოფილების უფროსი მაია ბლიაძე და კლიენტების მომსახურების კოორდინირებისა და მონიტორინგის დეპარტამენტის უფროსი - სალომე გიორგბერიძე შეხვდნენ და ბანკში არსებულ ვაკანსიებსა და დასაქმების პერსპექტივებზე - ამომწურავი ინფორმაცია მიაწოდეს.</p>\r\n\r\n<p>ვაკანსიები თბილისსა თუ რეგიონებში - განვადების მენეჯერის, გაყიდვების კონსულტანტის, სერვის კონსულტანტისა და სარეზერვო მოლარე-ოპერატორის პოზიციებს გულისხმობს, ბანკის წარმომადგენლებმა თითოეული მიმართულების სპეციფიკა და უნარები დეტალურად აუხსნეს დამსწრე საზოგადოებას.</p>\r\n\r\n<p>ლიბერთი ბანკის თანამშრომლებმა ყურადღება გაამახვილეს შერჩევის კრიტერიუმებსა და ეტაპებზე, ანაზღაურებასა და სტუდენტზე მორგებულ მოქნილ გრაფიკზეც.</p>\r\n\r\n<p>შეხვედრის ბოლოს, დაინტერესებულ სტუდენტებსა და კურსდამთავრებულებს სპეციალური სააპლიკაციო ფორმები დაურიგდათ, რომელთა გადარჩევისა და შესწავლის შემდეგ, ბანკის თანამშრომლები მათ შემდეგ ეტაპზე მოიწვევენ და გაესაუბრებიან.</p>\r\n\r\n<p>შეგახსენებთ, რომ ლიბერთი ბანკი&nbsp; სწრაფად მზარდ ფინანსურ ინსტიტუტს წარმოადგენს, რომელიც&nbsp;საქართველოს მასშტაბით ერთ-ერთი ყველაზე მსხვილი დამსაქმებელია. ბანკში 6000-ზე მეტი თანამშრომელი მუშაობს, რომელთა რიცხვი ბანკის მასშტაბების ზრდასთან ერთად -&nbsp;ყოველწლიურად იზრდება.</p>\r\n', '', '', '', '', '2017-11-08 01:58:00', 0, 1, 0, 0),
(191, 'ევროპის-კოლეჯის-წარმომადგენელი-კსუ-ში', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40-41-42-43-44-45', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40-41-42-43-44-45', '5', NULL, 'ევროპის კოლეჯის წარმომადგენელი კსუ-ში', '', '', 'ევროპის კოლეჯის წარმომადგენელმა საქართველოში კსუ-ს სტუდენტებთან საინფორმაციო ხასიათის შეხვედრა გამართა', '', '', '<p>კავკასიის საერთაშორიოს უნივერსიტეტის კარიერული განვითარების ცენტრისა და საერთაშორისო ურთიერთობების სამსახურის ორგანიზებით, ევროპის კოლეჯის წარმომადგენელმა საქართველოში - ირაკლი ჯღარკავამ, კსუ-ს სტუდენტებთან საინფორმაციო ხასიათის შეხვედრა გამართა. მისი თქმით, ევროპის კოლეჯი ევროპათმცოდნეობის მიმართულებით პრესტიჟულ უმაღლეს სასწავლებელს წარმოადგენს, რომელიც სტუდენტებსა და კურსდამთავრებულებს ბრიუგესა (ბელგია) და ვარშავის (პოლონეთი) კამპუსებში ერთწლიან სრულ სამაგისტრო პროგრამაზე სტიპენდიის მოპოვების შანსს აძლევს.<br />\r\nსტიპენდია კი აბსოლუტურად მოიცავს ყველა იმ საჭიროებას, რაც სტუდენტისთვის მნიშვნელოვანია: სწავლა, კომფორტული სტუდენტური საცხოვრებელი, ორმხრივი საერთაშორისო მგზავრობა და ყოველთვიური სტიპენდია.<br />\r\nევროპის კოლეჯის წარმომადგენელმა დეტალურად აუხსნა კსუ-ს სტუდენტებს ყველა იმ საჭირო დოკუმენტაციისა და დანართის შესახებ, რომელიც სააპლიკაციო პროცესში მნიშვნელოვანია:&nbsp;<br />\r\nსტუდენტებს, კოლეჯში საკონკურსო განაცხადის რეგისტრაცია ელექტრონულად, შემდეგ მისამართზე&nbsp;<a data-ft=\"{&quot;tn&quot;:&quot;-U&quot;}\" data-lynx-mode=\"async\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2Fadmissions.coleurope.eu%2Flogin&amp;h=ATNxK5wJMqoAp8RJXh0jpcBm_4lUBgHRt30aaA4RLSUtF_xRhSKET_fC7ebViFjqoCopny4IoeYgfSMramGhR1e1ulmXIWiPZfUGWFeyR0VcTjiiktqrh1_7KUmJqAoTpm5yl_VAJC3zcjzCmjV83Q2yRTB7WFPqfNBPOmzP4lwiZtYdLSO2oOUduFO9lTUZlaZtgEfJRrj1CJSwcSe__mjA6eZevO7CuYgRz-0dhh5ASUtk65TvUULV4-fyFdXCxZ8vwRsUzeg_VCzs0y0LpUGmSzPYU3_hqWLXi-0pNF0\" rel=\"noopener nofollow\" target=\"_blank\">https://admissions.coleurope.eu/login</a>&nbsp;შეუძლიათ.<br />\r\nგანაცხადების მიღების ბოლო ვადა 2018 წლის 18 იანვარია. შერჩევის პროცესი ორ ეტაპს განაცხადების გადარჩევასა და გასაუბრებას მოიცავს.</p>\r\n', '', '', '', '', '2017-12-04 02:01:00', 0, 1, 0, 0),
(192, 'მასტერკლასი-თემაზე-რეზიუმეს-შედგენის-ტექნიკა-სამუშაო-ადგილის-ძიების-ხერხები-და-ნეთვორქინგი', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40-41-42-43-44-45-46', '-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-35-36-37-38-39-40-41-42-43-44-45-46', '5', NULL, 'მასტერკლასი თემაზე - რეზიუმეს შედგენის ტექნიკა, სამუშაო ადგილის ძიების ხერხები და ნეთვორქინგი', '', '', 'კსუ-ს სტუდენტებს ჩაუტარდათ მასტერკლასი თემაზე - რეზიუმეს შედგენის ტექნიკა, სამუშაო ადგილის ძიების ხერხები და ნეთვორქინგი', '', '', '<p>კავკასიის საერთაშორისო უნივერსიტეტის კარიერული განვითარების ცენტრისა და კურსდამთავრებულთა კლუბის ორგანიზებით, პალიტრა მედია ჰოლდინგის ადამიანური რესურსების მართვის დეპარტამენტის დირექტორმა - ნინო ფეიქრიშვილმა და HR ბრენდინგისა და შიდა კომუნიკაციის მენეჯერმა - ნინო მარეხაშვილმა&nbsp; სტუდენტებს მასტერკლასი თემაზე: ,,რეზიუმეს შედგენის ტექნიკა, სამუშაო ადგილის ძიების ხერხები და ნეთვორქინგი&ldquo; - ჩაუტარეს.</p>\r\n\r\n<p>ჰოლდინგის სამსახურის წარმომადგენლებმა სტუდენტებს დეტალურად გააცნეს ინფორმაცია რეზიუმეს სწორად შედგენისა და პირადი ინფორმაციის პოტენციური დამსაქმებლისათვის ეფექტურად მიწოდების შესახებ.</p>\r\n\r\n<p>წარმომადგენლებმა, საკითხი კონკრეტულ მაგალითებსა და ფაქტებზე&nbsp; დაყრდნობით გაარჩიეს და დამსწრე აუდიტორიას სფეროში არსებულ თანამედროვე მიდგომებზე ესაუბრნენ. ჰოლდინგის წარმომადგენლებმა კსუ-ს სტუდენტებს მიმდინარე &nbsp;ვაკანსიები და მათი აღწერილობაც &nbsp;გააცნეს (სოციალური მედიის მენეჯერი, გაყიდვების მენეჯერი, ბუღალტერი და ა.შ).</p>\r\n\r\n<p>პალიტრა მედია ჰოლდინგის ადამიანური რესურსების მართვის დეპარტამენტის დირექტორის&nbsp; - ნინო ფეიქრიშვილის თქმით, პალიტრა ჯგუფი საქართველოს ბაზარზე ერთ-ერთ მსხვილ დამსაქმებელს წარმოადგენს, რომელიც 23 იურიდიულ პირსა და&nbsp; 2000 თანამშრომელს აერთიანებს.</p>\r\n', '', '', '', '', '2017-12-20 02:00:00', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_cats`
--

CREATE TABLE `news_cats` (
  `id` tinyint(2) NOT NULL,
  `slug_ge` varchar(255) DEFAULT NULL,
  `slug_en` varchar(255) DEFAULT NULL,
  `slug_ru` varchar(255) DEFAULT NULL,
  `title_ge` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `descr_ge` varchar(255) DEFAULT NULL,
  `descr_en` varchar(255) DEFAULT NULL,
  `descr_ru` varchar(255) DEFAULT NULL,
  `color` char(6) DEFAULT NULL,
  `active_ge` tinyint(1) NOT NULL DEFAULT '0',
  `active_en` tinyint(1) NOT NULL DEFAULT '0',
  `active_ru` tinyint(1) NOT NULL DEFAULT '0',
  `sort` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_cats`
--

INSERT INTO `news_cats` (`id`, `slug_ge`, `slug_en`, `slug_ru`, `title_ge`, `title_en`, `title_ru`, `descr_ge`, `descr_en`, `descr_ru`, `color`, `active_ge`, `active_en`, `active_ru`, `sort`) VALUES
(5, 'სიახლე', 'News', 'Кавказский-международный-университет', 'სიახლე', 'News', 'Кавказский международный университет', 'კავკასიის საერთაშორისო უნივერსიტეტის სიახლეები', 'Caucasus International University news', 'Кавказский международный университет Новости\r\n', 'FF250D', 1, 1, 1, 5),
(6, 'საერთაშორისო-ურთიერთობები', 'International-Relations', 'Международные-отношения', 'საერთაშორისო ურთიერთობები', 'International Relations', 'Международные отношения', '', '', '', '080808', 1, 1, 1, 6),
(7, 'პუბლიკაციები', 'publication', '', 'პუბლიკაციები', 'publication', '', 'გამოქვეყნებული პუბლიკაციები', '', '', '423266', 1, 1, 0, 4),
(8, 'ღონისძიება', '', '', 'ღონისძიება', '', '', '', '', '', '5938FF', 1, 0, 0, 3),
(9, 'კსუ-ს-კონკურსებიგრანტები', '', '', 'კსუ-ს კონკურსები/გრანტები', '', '', 'კავკასიის საერთაშორისო უნივერსიტეტის მიერ გამოცხადებული კონკურსები ან/და გრანტები', '', '', 'FFFFFF', 1, 0, 0, 2),
(10, 'სხვა-კონკურსებიგრანტები', '', '', 'სხვა კონკურსები/გრანტები', '', '', 'სხვა ადგილობრივი და საერთაშორისო ორგანიზაციების მიერ გამოცხადებული კონკურსები ან/და გრანტები', '', '', 'FFFFFF', 1, 0, 0, 1),
(11, 'სტაჟირება-დასაქმება', 'Internship-Employ', 'Интернатура-использовать', 'სტაჟირება / დასაქმება', 'Internship / Employ', 'Интернатура / использовать', '', '', '', 'C582FF', 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE `poll` (
  `id` int(11) UNSIGNED NOT NULL,
  `title_ge` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `max_responses` int(11) DEFAULT NULL,
  `active_ge` tinyint(1) NOT NULL DEFAULT '0',
  `active_en` tinyint(4) NOT NULL DEFAULT '0',
  `active_ru` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`id`, `title_ge`, `title_en`, `title_ru`, `start_date`, `end_date`, `max_responses`, `active_ge`, `active_en`, `active_ru`) VALUES
(1, 'რამდენად მოგწონთ ჩვენი საიტი?', 'how much do you like our site?', 'ruski iazik znaiu', '2017-11-15', NULL, 50, 0, 0, 0),
(2, 'იცით თუ არა, რომ ლეკვი ლომისა სწორია ?!', 'Do you know? puppie stright to lion, anyway if it\'s male or female!', 'ia koshka ili tigra? ', '2017-11-15', '2017-08-03', 0, 0, 0, 0),
(3, 'კითხვა', '', '', '2017-11-15', NULL, 1000, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `poll_items`
--

CREATE TABLE `poll_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `poll_id` int(11) NOT NULL,
  `title_ge` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ru` varchar(255) NOT NULL,
  `response_count` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poll_items`
--

INSERT INTO `poll_items` (`id`, `poll_id`, `title_ge`, `title_en`, `title_ru`, `response_count`, `sort`) VALUES
(1, 1, 'ძალიან!', 'Very much!', 'ochen priatno', 10, NULL),
(2, 1, 'არის რა...', 'naah..', 'net', 6, NULL),
(3, 1, 'ნუ ცდილობთ!', 'Don\'t try it anymore!', 'navsiaki sluchi', 0, NULL),
(4, 2, 'ვიცი', 'Yes, i know!', 'nu da', 0, 4),
(5, 2, 'არ ვიცი', 'No, i don\'t.', 'net ne znaiu', 1, 2),
(6, 2, 'მე რომ ვიცი შენც კი იცი!', 'You know, i know.', 'da ia znaiu, skoro tibea...?', 4, 3),
(7, 2, 'შოთასია უეჭველი!', 'Was it shota?', 'sohta ti tigra', 0, 1),
(8, 3, 'პასუხი1', '', '', 2, 1),
(9, 3, 'პასუხი2', '', '', 1, 2),
(10, 3, 'პასუხი3', '', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug_ge` varchar(255) DEFAULT NULL,
  `slug_en` varchar(255) DEFAULT NULL,
  `slug_ru` varchar(255) DEFAULT NULL,
  `title_ge` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `facult` varchar(255) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `lector` varchar(255) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `active_ge` tinyint(1) NOT NULL DEFAULT '0',
  `active_en` tinyint(1) NOT NULL DEFAULT '0',
  `active_ru` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) UNSIGNED NOT NULL,
  `title_ge` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `link_ge` varchar(255) DEFAULT NULL,
  `link_en` varchar(255) DEFAULT NULL,
  `link_ru` varchar(255) DEFAULT NULL,
  `target_ge` enum('_self','_blank') NOT NULL,
  `target_en` enum('_self','_blank') DEFAULT NULL,
  `target_ru` enum('_self','_blank') DEFAULT NULL,
  `descr_ge` varchar(255) DEFAULT NULL,
  `descr_en` varchar(255) DEFAULT NULL,
  `descr_ru` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `active_ge` tinyint(1) NOT NULL DEFAULT '0',
  `active_en` tinyint(1) NOT NULL DEFAULT '0',
  `active_ru` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(535) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `target` enum('_self','_blank') DEFAULT '_self',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `title`, `link`, `icon`, `target`, `active`, `sort`) VALUES
(2, 'Youtube', 'https://www.youtube.com/watch?v=hn3wJ1_1Zsg', 'fa-youtube-square', '_self', 1, 3),
(5, 'Facebook', 'https://www.facebook.com/', 'fa-facebook-square', '_blank', 1, 1),
(6, 'Instagram', 'https://www.instagram.com/', 'fa-instagram', '_blank', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) UNSIGNED NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_hash` varchar(535) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `fullname`, `email`, `email_hash`, `category`) VALUES
(2, 'Nikolas Sparks', 'cbnewser@gmail.com', 'b1486e3b3fa6c7652831ced2408dsas2q3', '6'),
(4, 'Sergo Kupreishvili', 'sergo.kupreishvili@gmail.com', 'b1486e3b3fa6c7652831ced24089043f10a4f5c1601e1e9be1ad7e6771b51348', '5'),
(5, NULL, 'zuka@gmail.com', '309acc829535a96d172ddeec3db0933a221043cf4db5be8a67f8f462338a59ac', '5'),
(6, NULL, 'zuka1@gmail.com', 'fa40196c7874bc038710909ab4548937ca7bc33cb93710bcf0ab3156628e29ec', '5,6');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_template`
--

CREATE TABLE `subscribe_template` (
  `id` tinyint(1) NOT NULL,
  `template` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribe_template`
--

INSERT INTO `subscribe_template` (`id`, `template`) VALUES
(1, '<p>მოგესალმებით სტუდენტებო! გილოცავთ ახალი სასწავლო წლის დადგომას!</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `word_ge` text,
  `word_en` text,
  `word_ru` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `name`, `word_ge`, `word_en`, `word_ru`) VALUES
(51, 'ciu_name', 'კარიერული განვითარების ცენტრი', 'Career Development Center', 'Центр развития карьеры'),
(52, 'contact', 'კონტაქტი', 'Contact', 'Контакт'),
(53, 'news', 'ახალი ამბები', 'news', 'Новости'),
(54, 'announces', 'ანონსები', 'announces', 'анонсы'),
(55, 'all', 'ყველა', 'all', 'Все'),
(56, 'subscribe', 'გამოწერა', 'subscribe', 'подписываться'),
(57, 'banners', 'პარტნიორები', 'Partners', 'партнеры'),
(58, 'copyright', 'კავკასიის საერთაშორისო უნივერსიტეტი', 'Caucasus International University', 'Кавказский международный университетский'),
(59, 'search_placeholder', 'ჩაწერეთ საძიებო სიტყვა', 'write a word', 'написать слово'),
(60, 'publications', 'პუბლიკაციები', 'publications', 'публикации'),
(61, 'subscribe_modal_title', 'გამოიწერეთ სასურველი კატეგორიები', 'Subscribe desired categories', 'Подпишитесь на нужные категории'),
(62, 'confirm', 'დასტური', 'confirm', 'подтвердить'),
(63, 'email', 'ელ-ფოსტა', 'email', 'Эл. адрес'),
(64, 'email_error', 'გთხოვთ ჩაწეროთ სწორი ელ-ფოსტა!', 'Please enter a valid e-mail!', 'Пожалуйста, введите действующий e-mail!'),
(65, 'email_exists', 'ელ-ფოსტა უკვე რეგისტრირებულია!', 'Email has already been registered!', 'Электронная почта уже зарегистрирована!'),
(66, 'subscribe_success', 'თქვენ წარმატებით გამოიწერეთ სიახლეები!', 'You have successfully subscribed to the news!', 'Вы успешно подписались на новости!'),
(67, 'ciu_name_mobile', 'სამეცნიერო პორტალი', 'Science Portal', 'научный портал'),
(68, 'share', 'გაზიარება', 'Share', 'Поделиться\r\n'),
(69, 'main', 'მთავარი', 'Main', 'Главная'),
(70, 'write_name_or_surname', 'ჩაწერეთ სახელი ან გვარი...', 'Write a name or a surname ...', 'Напишите имя или фамилию ...'),
(71, 'academic_staff', 'აკადემიური პერსონალი', 'Academic staff', 'Академический персонал'),
(72, 'all_news', 'ყველა სიახლე', 'All news', 'Все новости'),
(73, 'search', 'ძიება', 'Search', 'поиск'),
(74, 'select_date', 'აირჩიეთ თარიღი', 'Select a date', 'Выберите дату'),
(75, 'all_announcements', 'ყველა ანონსი', 'All announcements', 'Все объявления'),
(76, 'print', 'ბეჭდვა', 'Print', 'печать'),
(77, 'category', 'კატეგორია', 'category', 'категория'),
(78, 'direction', 'მიმართულება', 'direction', 'направление'),
(79, 'faculty', 'ფაკულტეტი', 'faculty', 'факультет');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(4) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_reset_hash` varchar(535) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `password_reset_hash`) VALUES
(2, 'admin@career.ciu.ge', '94d4e10257fdd85e642c9668b88ddc7b43ea44afafbb210ebca383ca7d27913b', NULL),
(3, 'sergo.kupreishvili@gmail.com', '94d4e10257fdd85e642c9668b88ddc7b43ea44afafbb210ebca383ca7d27913b', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_staff`
--
ALTER TABLE `academic_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announces`
--
ALTER TABLE `announces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug_ge`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`,`ip_address`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directions`
--
ALTER TABLE `directions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `font_awesome_icons`
--
ALTER TABLE `font_awesome_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_forms`
--
ALTER TABLE `google_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug_ge`),
  ADD UNIQUE KEY `slug_en` (`slug_en`),
  ADD UNIQUE KEY `slug_ru` (`slug_ru`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug_ge`);

--
-- Indexes for table `news_cats`
--
ALTER TABLE `news_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_items`
--
ALTER TABLE `poll_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe_template`
--
ALTER TABLE `subscribe_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_staff`
--
ALTER TABLE `academic_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `announces`
--
ALTER TABLE `announces`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `directions`
--
ALTER TABLE `directions`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `font_awesome_icons`
--
ALTER TABLE `font_awesome_icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `google_forms`
--
ALTER TABLE `google_forms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `news_cats`
--
ALTER TABLE `news_cats`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `poll`
--
ALTER TABLE `poll`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `poll_items`
--
ALTER TABLE `poll_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribe_template`
--
ALTER TABLE `subscribe_template`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
