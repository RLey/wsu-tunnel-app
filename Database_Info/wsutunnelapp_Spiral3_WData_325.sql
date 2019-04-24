-- --------------------------------------------------------
-- Host:                         192.168.1.110
-- Server version:               8.0.15 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for wsutunnelapp
DROP DATABASE IF EXISTS `wsutunnelapp`;
CREATE DATABASE IF NOT EXISTS `wsutunnelapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `wsutunnelapp`;


-- Dumping structure for table wsutunnelapp.buildings
DROP TABLE IF EXISTS `buildings`;
CREATE TABLE IF NOT EXISTS `buildings` (
  `buildingID` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tunnelLevel` int(11) DEFAULT NULL,
  PRIMARY KEY (`buildingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table wsutunnelapp.buildings: ~21 rows (approximately)
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` (`buildingID`, `name`, `updated`, `tunnelLevel`) VALUES
	(0, 'No Building', '2019-03-25 00:37:47', NULL),
	(1, 'Allyn Hall', '2019-03-25 00:37:47', NULL),
	(2, 'Biological Sciences I', '2019-03-25 00:37:47', NULL),
	(3, 'Biological Sciences II', '2019-03-25 00:37:47', NULL),
	(4, 'Brehm Laboratory', '2019-03-25 00:37:47', NULL),
	(5, 'Creative Arts Center', '2019-03-25 00:37:47', NULL),
	(6, 'Diggs Laboratory', '2019-03-25 00:37:47', NULL),
	(7, 'Dunbar Library', '2019-03-25 00:37:47', NULL),
	(8, 'Fawcett Hall', '2019-03-25 00:37:47', NULL),
	(9, 'Joshi Center', '2019-03-25 00:37:47', NULL),
	(10, 'Library Annex', '2019-03-25 00:37:47', NULL),
	(11, 'Math & Microbiology', '2019-03-25 00:37:47', NULL),
	(12, 'Medical Sciences', '2019-03-25 00:37:47', NULL),
	(13, 'Millet Hall', '2019-03-25 00:37:47', NULL),
	(14, 'Motion Pictures', '2019-03-25 00:37:47', NULL),
	(15, 'Oelman Hall', '2019-03-25 00:37:47', NULL),
	(16, 'Rike hall', '2019-03-25 00:37:47', NULL),
	(17, 'Russ Engineering', '2019-03-25 00:37:47', NULL),
	(18, 'Student Success Center', '2019-03-25 00:37:47', NULL),
	(19, 'Student Union', '2019-03-25 00:37:47', NULL),
	(20, 'University Hall\r\n', '2019-03-25 00:37:47', NULL);
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;


-- Dumping structure for table wsutunnelapp.connections
DROP TABLE IF EXISTS `connections`;
CREATE TABLE IF NOT EXISTS `connections` (
  `connectionID` int(11) NOT NULL AUTO_INCREMENT,
  `fname` text,
  `nodeA_ID` int(11) DEFAULT NULL,
  `nodeB_ID` int(11) DEFAULT NULL,
  `length` float DEFAULT NULL,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`connectionID`),
  KEY `NID` (`nodeA_ID`),
  KEY `ConnectedNID` (`nodeB_ID`),
  CONSTRAINT `ConnectedNID` FOREIGN KEY (`nodeB_ID`) REFERENCES `nodes` (`nodeid`),
  CONSTRAINT `NID` FOREIGN KEY (`nodeA_ID`) REFERENCES `nodes` (`nodeid`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table wsutunnelapp.connections: ~212 rows (approximately)
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
INSERT INTO `connections` (`connectionID`, `fname`, `nodeA_ID`, `nodeB_ID`, `length`, `updated`) VALUES
	(1, '1002', 1, 2, 19.9693, '2019-03-25 00:48:44'),
	(2, '2003', 2, 3, 14.7721, '2019-03-25 00:48:44'),
	(3, '3004', 3, 4, 11.5137, '2019-03-25 00:48:44'),
	(4, '3005', 3, 5, 12.2251, '2019-03-25 00:48:44'),
	(5, '4005', 4, 5, 12.5351, '2019-03-25 00:48:44'),
	(6, '5006', 5, 6, 8.6259, '2019-03-25 00:48:44'),
	(7, '6007', 6, 7, 13.0316, '2019-03-25 00:48:44'),
	(8, '7008', 7, 8, 15.6567, '2019-03-25 00:48:44'),
	(9, '7009', 7, 9, 45.7328, '2019-03-25 00:48:44'),
	(10, '9010', 9, 10, 38.3707, '2019-03-25 00:48:44'),
	(11, '10011', 10, 11, 6.3913, '2019-03-25 00:48:44'),
	(12, '10012', 10, 12, 16.1697, '2019-03-25 00:48:44'),
	(13, '11012', 11, 12, 9.8273, '2019-03-25 00:48:44'),
	(14, '12013', 12, 13, 23.5482, '2019-03-25 00:48:44'),
	(15, '12014', 12, 14, 19.2819, '2019-03-25 00:48:44'),
	(16, '12015', 12, 15, 30.6678, '2019-03-25 00:48:44'),
	(17, '12016', 12, 16, 41.7191, '2019-03-25 00:48:44'),
	(18, '12017', 12, 17, 21.7504, '2019-03-25 00:48:44'),
	(19, '12018', 12, 18, 26.1998, '2019-03-25 00:48:44'),
	(20, '17018', 17, 18, 5.9902, '2019-03-25 00:48:44'),
	(21, '17019', 17, 19, 10.2046, '2019-03-25 00:48:44'),
	(22, '18019', 18, 19, 12.8357, '2019-03-25 00:48:44'),
	(23, '19020', 19, 20, 30.8017, '2019-03-25 00:48:44'),
	(24, '20021', 20, 21, 11.3755, '2019-03-25 00:48:44'),
	(25, '20022', 20, 22, 14.3577, '2019-03-25 00:48:44'),
	(26, '20023', 20, 23, 58.692, '2019-03-25 00:48:44'),
	(27, '21023', 21, 23, 50.0809, '2019-03-25 00:48:44'),
	(28, '22023', 22, 23, 50.7649, '2019-03-25 00:48:44'),
	(29, '23024', 23, 24, 8.7133, '2019-03-25 00:48:44'),
	(30, '23025', 23, 25, 18.5402, '2019-03-25 00:48:44'),
	(31, '23026', 23, 26, 22.936, '2019-03-25 00:48:44'),
	(32, '23027', 23, 27, 46.3155, '2019-03-25 00:48:44'),
	(33, '27028', 27, 28, 42.3396, '2019-03-25 00:48:44'),
	(34, '27029', 27, 29, 40.3053, '2019-03-25 00:48:44'),
	(35, '27137', 27, 137, 39.791, '2019-03-25 00:48:44'),
	(36, '28029', 28, 29, 5.1577, '2019-03-25 00:48:44'),
	(37, '28030', 28, 30, 22.3321, '2019-03-25 00:48:44'),
	(38, '28031', 28, 31, 23.1906, '2019-03-25 00:48:44'),
	(39, '28035', 28, 35, 31.5128, '2019-03-25 00:48:44'),
	(40, '28036', 28, 36, 22.8022, '2019-03-25 00:48:44'),
	(41, '28137', 28, 137, 4.6125, '2019-03-25 00:48:44'),
	(42, '30031', 30, 31, 5.6723, '2019-03-25 00:48:44'),
	(43, '30032', 30, 32, 29.5598, '2019-03-25 00:48:44'),
	(44, '30033', 30, 33, 29.3053, '2019-03-25 00:48:44'),
	(45, '30123', 30, 123, 31.2912, '2019-03-25 00:48:44'),
	(46, '31033', 31, 33, 23.6534, '2019-03-25 00:48:44'),
	(47, '31123', 31, 123, 34.9274, '2019-03-25 00:48:44'),
	(48, '32033', 32, 33, 6.138, '2019-03-25 00:48:44'),
	(49, '32037', 32, 37, 23.7811, '2019-03-25 00:48:44'),
	(50, '33034', 33, 34, 5.7671, '2019-03-25 00:48:44'),
	(51, '33035', 33, 35, 11.6458, '2019-03-25 00:48:44'),
	(52, '33037', 33, 37, 22.0882, '2019-03-25 00:48:44'),
	(53, '34035', 34, 35, 11.3233, '2019-03-25 00:48:44'),
	(54, '34037', 34, 37, 16.361, '2019-03-25 00:48:44'),
	(55, '35036', 35, 36, 11.8654, '2019-03-25 00:48:44'),
	(56, '35038', 35, 38, 31.3507, '2019-03-25 00:48:44'),
	(57, '35039', 35, 39, 33.7955, '2019-03-25 00:48:44'),
	(58, '37038', 37, 38, 16.8516, '2019-03-25 00:48:44'),
	(59, '37039', 37, 39, 16.221, '2019-03-25 00:48:44'),
	(60, '37052', 37, 52, 88.8227, '2019-03-25 00:48:44'),
	(61, '38039', 38, 39, 4.5398, '2019-03-25 00:48:44'),
	(62, '38040', 38, 40, 34.8338, '2019-03-25 00:48:44'),
	(63, '38041', 38, 41, 38.3964, '2019-03-25 00:48:44'),
	(64, '40041', 40, 41, 4.7152, '2019-03-25 00:48:44'),
	(65, '41042', 40, 42, 17.8959, '2019-03-25 00:48:44'),
	(66, '41043', 41, 43, 35.4855, '2019-03-25 00:48:44'),
	(67, '41044', 41, 44, 36.5566, '2019-03-25 00:48:44'),
	(68, '42044', 42, 44, 19.7159, '2019-03-25 00:48:44'),
	(69, '43048', 43, 48, 33.4996, '2019-03-25 00:48:44'),
	(70, '43052', 43, 52, 53.829, '2019-03-25 00:48:44'),
	(71, '44045', 44, 45, 35.1326, '2019-03-25 00:48:44'),
	(72, '44048', 44, 48, 36.9218, '2019-03-25 00:48:44'),
	(73, '44051', 44, 51, 34.3331, '2019-03-25 00:48:44'),
	(74, '44052', 44, 52, 49.1359, '2019-03-25 00:48:44'),
	(75, '45046', 45, 46, 8.7745, '2019-03-25 00:48:44'),
	(76, '45048', 45, 48, 5.8996, '2019-03-25 00:48:44'),
	(77, '46047', 46, 47, 4.4694, '2019-03-25 00:48:44'),
	(78, '46048', 46, 48, 13.2323, '2019-03-25 00:48:44'),
	(79, '47048', 47, 48, 17.5616, '2019-03-25 00:48:44'),
	(80, '48049', 48, 49, 24.93, '2019-03-25 00:48:44'),
	(81, '49050', 49, 50, 4.9547, '2019-03-25 00:48:44'),
	(82, '51052', 51, 52, 15.6147, '2019-03-25 00:48:44'),
	(83, '52053', 52, 53, 34.6684, '2019-03-25 00:48:44'),
	(84, '52054', 52, 54, 47.0045, '2019-03-25 00:48:44'),
	(85, '53054', 53, 54, 13.2957, '2019-03-25 00:48:44'),
	(86, '54055', 54, 55, 21.546, '2019-03-25 00:48:44'),
	(87, '54056', 54, 56, 26.5142, '2019-03-25 00:48:44'),
	(88, '54057', 54, 57, 26.5306, '2019-03-25 00:48:44'),
	(89, '54124', 54, 124, 35.7512, '2019-03-25 00:48:44'),
	(90, '54125', 54, 125, 32.2519, '2019-03-25 00:48:44'),
	(91, '55057', 55, 57, 6.9266, '2019-03-25 00:48:44'),
	(92, '56057', 56, 57, 4.1571, '2019-03-25 00:48:44'),
	(93, '57058', 57, 58, 17.8123, '2019-03-25 00:48:44'),
	(94, '57059', 57, 59, 43.2327, '2019-03-25 00:48:44'),
	(95, '57060', 57, 60, 47.9046, '2019-03-25 00:48:44'),
	(96, '57061', 57, 61, 51.1754, '2019-03-25 00:48:44'),
	(97, '57079', 57, 79, 56.9089, '2019-03-25 00:48:44'),
	(98, '57080', 57, 80, 48.4269, '2019-03-25 00:48:44'),
	(99, '58061', 58, 61, 38.2927, '2019-03-25 00:48:44'),
	(100, '59061', 59, 61, 20.3636, '2019-03-25 00:48:44'),
	(101, '60061', 60, 61, 19.7403, '2019-03-25 00:48:44'),
	(102, '61062', 61, 62, 46.8409, '2019-03-25 00:48:44'),
	(103, '61063', 61, 63, 48.3445, '2019-03-25 00:48:44'),
	(104, '61064', 61, 64, 18.2005, '2019-03-25 00:48:44'),
	(105, '61065', 61, 65, 25.7538, '2019-03-25 00:48:44'),
	(106, '62063', 62, 63, 4.3836, '2019-03-25 00:48:44'),
	(107, '64065', 64, 65, 9.1994, '2019-03-25 00:48:44'),
	(108, '65066', 65, 66, 6.316, '2019-03-25 00:48:44'),
	(109, '65067', 65, 67, 35.708, '2019-03-25 00:48:44'),
	(110, '65068', 65, 68, 45.0243, '2019-03-25 00:48:44'),
	(111, '65074', 65, 74, 18.8867, '2019-03-25 00:48:44'),
	(112, '66068', 66, 68, 40.9511, '2019-03-25 00:48:44'),
	(113, '66074', 66, 74, 15.0814, '2019-03-25 00:48:44'),
	(114, '67068', 67, 68, 10.4133, '2019-03-25 00:48:44'),
	(115, '68069', 68, 69, 34.2697, '2019-03-25 00:48:44'),
	(116, '69070', 69, 70, 30.0746, '2019-03-25 00:48:44'),
	(117, '69071', 69, 71, 52.4391, '2019-03-25 00:48:44'),
	(118, '71072', 71, 72, 53.8429, '2019-03-25 00:48:44'),
	(119, '73074', 73, 74, 7.9702, '2019-03-25 00:48:44'),
	(120, '74075', 74, 75, 15.5265, '2019-03-25 00:48:44'),
	(121, '74076', 74, 76, 35.0212, '2019-03-25 00:48:44'),
	(122, '76077', 76, 77, 14.1407, '2019-03-25 00:48:44'),
	(123, '76078', 76, 78, 18.2497, '2019-03-25 00:48:44'),
	(124, '76079', 76, 79, 14.3346, '2019-03-25 00:48:44'),
	(125, '77078', 77, 78, 4.114, '2019-03-25 00:48:44'),
	(126, '79080', 79, 80, 9.8036, '2019-03-25 00:48:44'),
	(127, '79081', 79, 81, 70.2335, '2019-03-25 00:48:44'),
	(128, '81082', 81, 82, 21.3529, '2019-03-25 00:48:44'),
	(129, '81083', 81, 83, 23.2441, '2019-03-25 00:48:44'),
	(130, '81084', 81, 84, 15.0008, '2019-03-25 00:48:44'),
	(131, '82083', 82, 83, 4.8193, '2019-03-25 00:48:44'),
	(132, '84085', 84, 85, 8.5002, '2019-03-25 00:48:44'),
	(133, '84086', 84, 86, 5.3238, '2019-03-25 00:48:44'),
	(134, '84087', 84, 87, 9.3313, '2019-03-25 00:48:44'),
	(135, '84088', 84, 88, 9.0154, '2019-03-25 00:48:44'),
	(136, '85087', 85, 87, 12.6105, '2019-03-25 00:48:44'),
	(137, '85088', 85, 88, 8.9211, '2019-03-25 00:48:44'),
	(138, '85135', 85, 135, 77.6116, '2019-03-25 00:48:44'),
	(139, '86087', 86, 87, 4.7395, '2019-03-25 00:48:44'),
	(140, '87088', 87, 88, 4.5631, '2019-03-25 00:48:44'),
	(141, '87089', 87, 89, 5.9452, '2019-03-25 00:48:44'),
	(142, '89090', 89, 90, 29.187, '2019-03-25 00:48:44'),
	(143, '89091', 89, 91, 30.1033, '2019-03-25 00:48:44'),
	(144, '91092', 91, 92, 15.4373, '2019-03-25 00:48:44'),
	(145, '91093', 91, 93, 20.0188, '2019-03-25 00:48:44'),
	(146, '91094', 91, 94, 21.8994, '2019-03-25 00:48:44'),
	(147, '91095', 91, 95, 43.3475, '2019-03-25 00:48:44'),
	(148, '92094', 92, 94, 7.9362, '2019-03-25 00:48:44'),
	(149, '93094', 93, 94, 4.7437, '2019-03-25 00:48:44'),
	(150, '95096', 95, 96, 18.6973, '2019-03-25 00:48:44'),
	(151, '95097', 95, 97, 26.6565, '2019-03-25 00:48:44'),
	(152, '95098', 95, 98, 44.2431, '2019-03-25 00:48:44'),
	(153, '95099', 95, 99, 53.1923, '2019-03-25 00:48:44'),
	(154, '96099', 96, 99, 42.5345, '2019-03-25 00:48:44'),
	(155, '97099', 97, 99, 35.48, '2019-03-25 00:48:44'),
	(156, '98099', 98, 99, 27.8642, '2019-03-25 00:48:44'),
	(157, '99100', 99, 100, 60.5879, '2019-03-25 00:48:44'),
	(158, '99135', 99, 135, 49.9298, '2019-03-25 00:48:44'),
	(159, '99136', 99, 136, 42.2337, '2019-03-25 00:48:44'),
	(160, '100101', 100, 101, 5.9054, '2019-03-25 00:48:44'),
	(161, '100102', 100, 102, 10.7708, '2019-03-25 00:48:44'),
	(162, '100109', 100, 109, 15.4779, '2019-03-25 00:48:44'),
	(163, '101102', 101, 102, 7.2964, '2019-03-25 00:48:44'),
	(164, '102103', 102, 103, 31.2282, '2019-03-25 00:48:44'),
	(165, '102106', 102, 106, 14.5059, '2019-03-25 00:48:44'),
	(166, '102107', 102, 107, 7.5937, '2019-03-25 00:48:44'),
	(167, '103104', 103, 104, 14.7081, '2019-03-25 00:48:44'),
	(168, '104105', 104, 105, 5.6009, '2019-03-25 00:48:44'),
	(169, '104106', 104, 106, 31.7151, '2019-03-25 00:48:44'),
	(170, '105106', 105, 106, 27.9875, '2019-03-25 00:48:44'),
	(171, '106107', 106, 107, 9.0034, '2019-03-25 00:48:44'),
	(172, '106108', 106, 108, 7.12, '2019-03-25 00:48:44'),
	(173, '106109', 106, 109, 10.4867, '2019-03-25 00:48:44'),
	(174, '108109', 108, 109, 5.553, '2019-03-25 00:48:44'),
	(175, '109110', 109, 110, 53.6552, '2019-03-25 00:48:44'),
	(176, '110111', 110, 111, 5.8954, '2019-03-25 00:48:44'),
	(177, '110112', 110, 112, 4.9732, '2019-03-25 00:48:44'),
	(178, '110118', 110, 118, 35.2437, '2019-03-25 00:48:44'),
	(179, '111112', 111, 112, 4.2826, '2019-03-25 00:48:44'),
	(180, '111113', 111, 113, 47.8705, '2019-03-25 00:48:44'),
	(181, '112113', 112, 113, 46.9803, '2019-03-25 00:48:44'),
	(182, '112114', 112, 114, 51.0232, '2019-03-25 00:48:44'),
	(183, '112115', 112, 115, 16.6419, '2019-03-25 00:48:44'),
	(184, '112116', 112, 116, 37.2423, '2019-03-25 00:48:44'),
	(185, '112117', 112, 117, 33.8485, '2019-03-25 00:48:44'),
	(186, '113114', 113, 114, 4.2546, '2019-03-25 00:48:44'),
	(187, '115117', 115, 117, 17.4606, '2019-03-25 00:48:44'),
	(188, '116117', 116, 117, 5.0995, '2019-03-25 00:48:44'),
	(189, '116121', 116, 121, 29.9645, '2019-03-25 00:48:44'),
	(190, '117118', 117, 118, 8.437, '2019-03-25 00:48:44'),
	(191, '117119', 117, 119, 30.0214, '2019-03-25 00:48:44'),
	(192, '117120', 117, 120, 37.6279, '2019-03-25 00:48:44'),
	(193, '117121', 117, 121, 33.9582, '2019-03-25 00:48:44'),
	(194, '118122', 118, 122, 32.3176, '2019-03-25 00:48:44'),
	(195, '119121', 119, 121, 4.5104, '2019-03-25 00:48:44'),
	(196, '120121', 120, 121, 5.9737, '2019-03-25 00:48:44'),
	(197, '122123', 122, 123, 56.7122, '2019-03-25 00:48:44'),
	(198, '124125', 124, 125, 5.999, '2019-03-25 00:48:44'),
	(199, '124126', 124, 126, 57.8568, '2019-03-25 00:48:44'),
	(200, '124132', 124, 132, 28.5074, '2019-03-25 00:48:44'),
	(201, '125126', 125, 126, 54.2291, '2019-03-25 00:48:44'),
	(202, '126127', 126, 127, 31.9874, '2019-03-25 00:48:44'),
	(203, '126128', 126, 128, 36.4652, '2019-03-25 00:48:44'),
	(204, '126129', 126, 129, 40.2423, '2019-03-25 00:48:44'),
	(205, '127129', 127, 129, 9.9797, '2019-03-25 00:48:44'),
	(206, '128129', 128, 129, 6.0774, '2019-03-25 00:48:44'),
	(207, '132133', 132, 133, 17.4885, '2019-03-25 00:48:44'),
	(208, '132134', 132, 134, 5.9799, '2019-03-25 00:48:44'),
	(209, '132135', 132, 135, 21.9232, '2019-03-25 00:48:44'),
	(210, '133134', 133, 134, 14.665, '2019-03-25 00:48:44'),
	(211, '134135', 134, 135, 17.8474, '2019-03-25 00:48:44'),
	(212, '135136', 135, 136, 9.2403, '2019-03-25 00:48:44');
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;


-- Dumping structure for table wsutunnelapp.nodes
DROP TABLE IF EXISTS `nodes`;
CREATE TABLE IF NOT EXISTS `nodes` (
  `nodeID` int(11) NOT NULL DEFAULT '0',
  `lat` double NOT NULL DEFAULT '0',
  `long` double NOT NULL DEFAULT '0',
  `buildingID` int(11) DEFAULT '0',
  `floor` int(11) DEFAULT '0',
  `roomRegEx` tinytext,
  `nodeTypeID` int(11) NOT NULL DEFAULT '1',
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`nodeID`),
  KEY `Building` (`buildingID`),
  KEY `Type` (`nodeTypeID`),
  CONSTRAINT `Building` FOREIGN KEY (`buildingID`) REFERENCES `buildings` (`buildingid`),
  CONSTRAINT `Type` FOREIGN KEY (`nodeTypeID`) REFERENCES `types` (`nodeTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table wsutunnelapp.nodes: ~137 rows (approximately)
/*!40000 ALTER TABLE `nodes` DISABLE KEYS */;
INSERT INTO `nodes` (`nodeID`, `lat`, `long`, `buildingID`, `floor`, `roomRegEx`, `nodeTypeID`, `updated`) VALUES
	(1, 39.7791277, -84.0630478, 17, 0, '', 1, '2019-03-25 00:40:17'),
	(2, 39.7791981, -84.0632625, 17, 0, '', 2, '2019-03-25 00:40:17'),
	(3, 39.7792711, -84.0634067, 17, 0, '', 3, '2019-03-25 00:40:17'),
	(4, 39.77937, -84.0633673, 17, 0, '', 1, '2019-03-25 00:40:17'),
	(5, 39.7793465, -84.0635106, 17, 0, '', 0, '2019-03-25 00:40:17'),
	(6, 39.7794019, -84.0635811, 17, 0, '', 0, '2019-03-25 00:40:17'),
	(7, 39.7794824, -84.0636917, 9, 0, '', 0, '2019-03-25 00:40:17'),
	(8, 39.7793834, -84.0638217, 9, 0, '', 1, '2019-03-25 00:40:17'),
	(9, 39.7796811, -84.0641596, 19, 0, '', 0, '2019-03-25 00:40:17'),
	(10, 39.7797892, -84.0645855, 19, 0, '', 0, '2019-03-25 00:40:17'),
	(11, 39.7798453, -84.0646014, 19, 0, '', 3, '2019-03-25 00:40:17'),
	(12, 39.7799275, -84.0646433, 19, 0, '', 0, '2019-03-25 00:40:17'),
	(13, 39.7798017, -84.0648646, 19, 0, '', 3, '2019-03-25 00:40:17'),
	(14, 39.7797825, -84.0647666, 19, 0, '', 2, '2019-03-25 00:40:17'),
	(15, 39.7797078, -84.0648596, 19, 0, '', 2, '2019-03-25 00:40:17'),
	(16, 39.7801933, -84.0649871, 19, 0, '', 0, '2019-03-25 00:40:17'),
	(17, 39.7800843, -84.0644916, 19, 0, '', 2, '2019-03-25 00:40:17'),
	(18, 39.7800902, -84.064422, 19, 0, '', 0, '2019-03-25 00:40:17'),
	(19, 39.7801715, -84.0645284, 19, 0, '', 0, '2019-03-25 00:40:17'),
	(20, 39.7804482, -84.0645268, 19, 0, '', 0, '2019-03-25 00:40:17'),
	(21, 39.7804666, -84.0646576, 19, 0, '', 3, '2019-03-25 00:40:17'),
	(22, 39.7804414, -84.0646944, 19, 0, '', 2, '2019-03-25 00:40:17'),
	(23, 39.7808363, -84.0649912, 19, 0, '', 0, '2019-03-25 00:40:17'),
	(24, 39.7808179, -84.0650902, 19, 0, '', 3, '2019-03-25 00:40:17'),
	(25, 39.7806963, -84.0651086, 19, 0, '', 3, '2019-03-25 00:40:17'),
	(26, 39.7806678, -84.0651455, 19, 0, '', 2, '2019-03-25 00:40:17'),
	(27, 39.7811264, -84.0646031, 0, 0, '', 0, '2019-03-25 00:40:17'),
	(28, 39.781393, -84.0642501, 12, 0, '', 0, '2019-03-25 00:40:17'),
	(29, 39.7814081, -84.0643071, 12, 0, '', 2, '2019-03-25 00:40:17'),
	(30, 39.7815917, -84.0642861, 12, 0, '', 0, '2019-03-25 00:40:17'),
	(31, 39.7816001, -84.0642207, 12, 0, '', 3, '2019-03-25 00:40:17'),
	(32, 39.7816697, -84.0639558, 12, 0, '', 2, '2019-03-25 00:40:17'),
	(33, 39.7816152, -84.0639449, 12, 0, '', 0, '2019-03-25 00:40:17'),
	(34, 39.7816102, -84.0638778, 12, 0, '', 2, '2019-03-25 00:40:17'),
	(35, 39.7815129, -84.0639164, 12, 0, '', 0, '2019-03-25 00:40:17'),
	(36, 39.7814207, -84.063986, 12, 0, '', 3, '2019-03-25 00:40:17'),
	(37, 39.7816161, -84.0636867, 0, 0, '', 0, '2019-03-25 00:40:17'),
	(38, 39.7815071, -84.06355, 3, 0, '', 0, '2019-03-25 00:40:17'),
	(39, 39.7815423, -84.0635232, 3, 0, '', 2, '2019-03-25 00:40:17'),
	(40, 39.7815456, -84.0631459, 3, 0, '', 3, '2019-03-25 00:40:17'),
	(41, 39.7815205, -84.0631015, 3, 0, '', 0, '2019-03-25 00:40:17'),
	(42, 39.7816563, -84.0629942, 2, 0, '', 2, '2019-03-25 00:40:17'),
	(43, 39.7817183, -84.0627762, 2, 0, '', 3, '2019-03-25 00:40:17'),
	(44, 39.7817561, -84.0628038, 6, 0, '', 0, '2019-03-25 00:40:17'),
	(45, 39.7817033, -84.0623989, 6, 0, '', 3, '2019-03-25 00:40:17'),
	(46, 39.7817552, -84.0623217, 6, 0, '', 0, '2019-03-25 00:40:17'),
	(47, 39.7817837, -84.0622849, 6, 0, '', 2, '2019-03-25 00:40:17'),
	(48, 39.7816504, -84.0623947, 6, 0, '', 0, '2019-03-25 00:40:17'),
	(49, 39.7815842, -84.0621163, 6, 0, '', 0, '2019-03-25 00:40:17'),
	(50, 39.7816135, -84.0620727, 6, 0, '', 2, '2019-03-25 00:40:17'),
	(51, 39.7820613, -84.0628617, 2, 0, '', 2, '2019-03-25 00:40:17'),
	(52, 39.782182, -84.0629547, 0, 0, '', 0, '2019-03-25 00:40:17'),
	(53, 39.7824302, -84.0627099, 8, 0, '', 2, '2019-03-25 00:40:17'),
	(54, 39.7824847, -84.0625716, 8, 0, '', 0, '2019-03-25 00:40:17'),
	(55, 39.7826456, -84.0624316, 8, 0, '', 2, '2019-03-25 00:40:17'),
	(56, 39.7826766, -84.062388, 8, 0, '', 3, '2019-03-25 00:40:17'),
	(57, 39.7826523, -84.0623511, 8, 0, '', 0, '2019-03-25 00:40:17'),
	(58, 39.7825148, -84.0622446, 8, 0, '', 2, '2019-03-25 00:40:17'),
	(59, 39.7823731, -84.0619998, 10, 0, '', 3, '2019-03-25 00:40:17'),
	(60, 39.7823446, -84.0619596, 10, 0, '', 2, '2019-03-25 00:40:17'),
	(61, 39.7824729, -84.0618003, 10, 0, '', 0, '2019-03-25 00:40:17'),
	(62, 39.7820872, -84.0615814, 10, 0, '', 0, '2019-03-25 00:40:17'),
	(63, 39.7820613, -84.06162, 10, 0, '', 2, '2019-03-25 00:40:17'),
	(64, 39.7826129, -84.0616904, 7, 0, '', 3, '2019-03-25 00:40:17'),
	(65, 39.7826364, -84.0615873, 7, 0, '', 0, '2019-03-25 00:40:17'),
	(66, 39.7826381, -84.0615135, 7, 0, '', 2, '2019-03-25 00:40:17'),
	(67, 39.7823849, -84.0613282, 7, 0, '', 2, '2019-03-25 00:40:17'),
	(68, 39.7823505, -84.061215, 7, 0, '', 0, '2019-03-25 00:40:17'),
	(69, 39.7822382, -84.060842, 5, 0, '', 0, '2019-03-25 00:40:17'),
	(70, 39.7822172, -84.0604915, 5, 0, '', 0, '2019-03-25 00:40:17'),
	(71, 39.7818357, -84.0611605, 5, 0, '', 0, '2019-03-25 00:40:17'),
	(72, 39.7815716, -84.0606332, 5, 0, '', 0, '2019-03-25 00:40:17'),
	(73, 39.7827429, -84.0615261, 7, 0, '', 3, '2019-03-25 00:40:17'),
	(74, 39.7827596, -84.0614355, 7, 0, '', 0, '2019-03-25 00:40:17'),
	(75, 39.7828879, -84.0613643, 7, 0, '', 2, '2019-03-25 00:40:17'),
	(76, 39.7829835, -84.0617231, 0, 0, '', 0, '2019-03-25 00:40:17'),
	(77, 39.7830749, -84.0616083, 14, 0, '', 0, '2019-03-25 00:40:17'),
	(78, 39.7831, -84.061573, 14, 0, '', 2, '2019-03-25 00:40:17'),
	(79, 39.783017, -84.0618849, 0, 0, '', 0, '2019-03-25 00:40:17'),
	(80, 39.7829898, -84.0619939, 8, 0, '', 2, '2019-03-25 00:40:17'),
	(81, 39.7834404, -84.0624936, 13, 0, '', 0, '2019-03-25 00:40:17'),
	(82, 39.7835922, -84.062341, 13, 0, '', 2, '2019-03-25 00:40:17'),
	(83, 39.7835771, -84.0622882, 13, 0, '', 1, '2019-03-25 00:40:17'),
	(84, 39.7835369, -84.062616, 13, 0, '', 0, '2019-03-25 00:40:17'),
	(85, 39.7834824, -84.0626856, 13, 0, '', 0, '2019-03-25 00:40:17'),
	(86, 39.7835561, -84.062673, 13, 0, '', 3, '2019-03-25 00:40:17'),
	(87, 39.7835955, -84.062694, 13, 0, '', 0, '2019-03-25 00:40:17'),
	(88, 39.7835587, -84.0627175, 13, 0, '', 2, '2019-03-25 00:40:17'),
	(89, 39.7836433, -84.062725, 13, 0, '', 0, '2019-03-25 00:40:17'),
	(90, 39.7838311, -84.0624869, 13, 0, '', 1, '2019-03-25 00:40:17'),
	(91, 39.7838337, -84.0629749, 13, 0, '', 0, '2019-03-25 00:40:17'),
	(92, 39.7839116, -84.0628256, 13, 0, '', 3, '2019-03-25 00:40:17'),
	(93, 39.783941, -84.0627871, 13, 0, '', 2, '2019-03-25 00:40:17'),
	(94, 39.7839812, -84.0628055, 13, 0, '', 1, '2019-03-25 00:40:17'),
	(95, 39.783749, -84.0634695, 1, 0, '', 0, '2019-03-25 00:40:17'),
	(96, 39.7836953, -84.0636766, 1, 0, '', 2, '2019-03-25 00:40:17'),
	(97, 39.7836341, -84.0637429, 1, 0, '', 3, '2019-03-25 00:40:17'),
	(98, 39.7835293, -84.0639005, 1, 0, '', 2, '2019-03-25 00:40:17'),
	(99, 39.7833155, -84.0637311, 0, 0, '', 0, '2019-03-25 00:40:17'),
	(100, 39.783121, -84.0643926, 16, 0, '', 0, '2019-03-25 00:40:17'),
	(101, 39.7831738, -84.0643993, 16, 0, '', 2, '2019-03-25 00:40:17'),
	(102, 39.7831889, -84.0644823, 16, 0, '', 0, '2019-03-25 00:40:17'),
	(103, 39.7833859, -84.0647422, 16, 0, '', 0, '2019-03-25 00:40:17'),
	(104, 39.7832912, -84.0648621, 16, 0, '', 0, '2019-03-25 00:40:17'),
	(105, 39.7832409, -84.0648605, 16, 0, '', 2, '2019-03-25 00:40:17'),
	(106, 39.7830925, -84.0645964, 16, 0, '', 0, '2019-03-25 00:40:17'),
	(107, 39.7831218, -84.0644983, 16, 0, '', 3, '2019-03-25 00:40:17'),
	(108, 39.7830296, -84.0645813, 16, 0, '', 2, '2019-03-25 00:40:17'),
	(109, 39.7830204, -84.0645175, 16, 0, '', 0, '2019-03-25 00:40:17'),
	(110, 39.7826829, -84.0649653, 20, 0, '', 0, '2019-03-25 00:40:17'),
	(111, 39.7827353, -84.0649753, 20, 0, '', 2, '2019-03-25 00:40:17'),
	(112, 39.7827093, -84.0650122, 20, 0, '', 0, '2019-03-25 00:40:17'),
	(113, 39.7829693, -84.0654448, 20, 0, '', 0, '2019-03-25 00:40:17'),
	(114, 39.7829818, -84.0654918, 20, 0, '', 2, '2019-03-25 00:40:17'),
	(115, 39.7825802, -84.0651103, 20, 0, '', 3, '2019-03-25 00:40:17'),
	(116, 39.782467, -84.0653124, 20, 0, '', 2, '2019-03-25 00:40:17'),
	(117, 39.7824679, -84.0652528, 20, 0, '', 0, '2019-03-25 00:40:17'),
	(118, 39.7824142, -84.0651832, 20, 0, '', 0, '2019-03-25 00:40:17'),
	(119, 39.7822918, -84.0655186, 18, 0, '', 3, '2019-03-25 00:40:17'),
	(120, 39.7822315, -84.0655672, 18, 0, '', 2, '2019-03-25 00:40:17'),
	(121, 39.7822851, -84.0655706, 18, 0, '', 0, '2019-03-25 00:40:17'),
	(122, 39.7822172, -84.0649057, 0, 0, '', 0, '2019-03-25 00:40:17'),
	(123, 39.7817888, -84.0645469, 0, 0, '', 0, '2019-03-25 00:40:17'),
	(124, 39.7826683, -84.0629145, 15, 0, '', 0, '2019-03-25 00:40:17'),
	(125, 39.7826146, -84.0629086, 15, 0, '', 2, '2019-03-25 00:40:17'),
	(126, 39.7823044, -84.0633974, 4, 0, '', 0, '2019-03-25 00:40:17'),
	(127, 39.7824461, -84.0637227, 4, 0, '', 2, '2019-03-25 00:40:17'),
	(128, 39.782475, -84.0637613, 4, 0, '', 3, '2019-03-25 00:40:17'),
	(129, 39.7825295, -84.0637655, 11, 0, '', 0, '2019-03-25 00:40:17'),
	(130, 39.7821002, -84.0642425, 11, 0, '', 2, '2019-03-25 00:40:17'),
	(131, 39.7820969, -84.0643163, 11, 0, '', 0, '2019-03-25 00:40:17'),
	(132, 39.7828481, -84.0631518, 15, 0, '', 0, '2019-03-25 00:40:17'),
	(133, 39.7827324, -84.0632901, 15, 0, '', 0, '2019-03-25 00:40:17'),
	(134, 39.7828531, -84.0632214, 15, 0, '', 3, '2019-03-25 00:40:17'),
	(135, 39.7829906, -84.0633287, 15, 0, '', 0, '2019-03-25 00:40:17'),
	(136, 39.7830133, -84.0634326, 15, 0, '', 2, '2019-03-25 00:40:17'),
	(137, 39.781352, -84.0642423, 12, 0, '', 2, '2019-03-25 00:40:17');
/*!40000 ALTER TABLE `nodes` ENABLE KEYS */;


-- Dumping structure for table wsutunnelapp.types
DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `nodeTypeID` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`nodeTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table wsutunnelapp.types: ~4 rows (approximately)
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` (`nodeTypeID`, `name`, `updated`) VALUES
	(0, 'Intersection', '2019-03-25 00:38:53'),
	(1, 'Exit', '2019-03-25 00:38:53'),
	(2, 'Staircase', '2019-03-25 00:38:53'),
	(3, 'Elevator\r\n', '2019-03-25 00:38:53');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
