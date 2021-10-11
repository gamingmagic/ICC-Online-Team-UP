-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 12:56 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `cp_credits`
--

CREATE TABLE `cp_credits` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `balance` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_donation_date` datetime DEFAULT NULL,
  `last_donation_amount` float UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Donation credits balance for a given account.';

--
-- Dumping data for table `cp_credits`
--

INSERT INTO `cp_credits` (`account_id`, `balance`, `last_donation_date`, `last_donation_amount`) VALUES
(5527514, 559, NULL, NULL),
(5474934, 0, NULL, 410),
(5174054, 0, NULL, 342),
(5621031, 0, NULL, 302),
(5486066, 0, NULL, 244),
(5621156, 0, NULL, 234),
(5594221, 0, NULL, 201),
(5000000, 0, NULL, 184),
(5368207, 152, NULL, NULL),
(5624301, 147, NULL, NULL),
(5613180, 146, NULL, NULL),
(5622830, 0, NULL, NULL),
(5605375, 138, NULL, NULL),
(5142539, 127, NULL, NULL),
(5368547, 127, NULL, NULL),
(5617127, 122, NULL, NULL),
(5615027, 120, NULL, NULL),
(5619020, 0, NULL, 110),
(5570657, 0, NULL, 107),
(5606521, 107, NULL, NULL),
(5620633, 0, NULL, 100),
(5621230, 98, NULL, NULL),
(5600655, 95, NULL, NULL),
(5612022, 86, NULL, NULL),
(5391143, 84, NULL, NULL),
(5621153, 83, NULL, NULL),
(5610076, 76, NULL, NULL),
(5568965, 69, NULL, NULL),
(5602723, 68, NULL, NULL),
(5519847, 57, NULL, NULL),
(5605873, 51, NULL, NULL),
(5257507, 50, NULL, NULL),
(5398149, 50, NULL, NULL),
(5609155, 50, NULL, NULL),
(5390950, 49, NULL, NULL),
(5408733, 48, NULL, NULL),
(5611674, 47, NULL, NULL),
(5432706, 44, NULL, NULL),
(5614035, 42, NULL, NULL),
(5219561, 40, NULL, NULL),
(5262653, 40, NULL, NULL),
(5601750, 40, NULL, NULL),
(5126189, 39, NULL, NULL),
(5601476, 38, NULL, NULL),
(5577508, 36, NULL, NULL),
(5601753, 35, NULL, NULL),
(5549311, 33, NULL, NULL),
(5143717, 32, NULL, NULL),
(5393895, 30, NULL, NULL),
(5397036, 30, NULL, NULL),
(5546849, 30, NULL, NULL),
(5597818, 30, NULL, NULL),
(5610948, 29, NULL, NULL),
(5610983, 29, NULL, NULL),
(5487021, 28, NULL, NULL),
(5612014, 28, NULL, NULL),
(5617426, 28, NULL, NULL),
(5405066, 27, NULL, NULL),
(5608960, 27, NULL, NULL),
(5610566, 27, NULL, NULL),
(5620950, 27, NULL, NULL),
(5589855, 26, NULL, NULL),
(5575858, 25, NULL, NULL),
(5587345, 25, NULL, NULL),
(5462787, 24, NULL, NULL),
(5524478, 24, NULL, NULL),
(5543696, 24, NULL, NULL),
(5603850, 24, NULL, NULL),
(5603919, 24, NULL, NULL),
(5608974, 24, NULL, NULL),
(5610932, 24, NULL, NULL),
(5436070, 23, NULL, NULL),
(5537309, 23, NULL, NULL),
(5596289, 23, NULL, NULL),
(5604442, 23, NULL, NULL),
(5608067, 23, NULL, NULL),
(5612939, 23, NULL, NULL),
(5178819, 22, NULL, NULL),
(5272053, 22, NULL, NULL),
(5381979, 22, NULL, NULL),
(5457233, 22, NULL, NULL),
(5473490, 22, NULL, NULL),
(5476337, 22, NULL, NULL),
(5547377, 22, NULL, NULL),
(5577805, 22, NULL, NULL),
(5601608, 22, NULL, NULL),
(5604816, 22, NULL, NULL),
(5606139, 22, NULL, NULL),
(5606931, 22, NULL, NULL),
(5608765, 22, NULL, NULL),
(5611130, 22, NULL, NULL),
(5611373, 22, NULL, NULL),
(5614560, 22, NULL, NULL),
(5617564, 22, NULL, NULL),
(5619413, 22, NULL, NULL),
(5270192, 21, NULL, NULL),
(5324888, 21, NULL, NULL),
(5383144, 21, NULL, NULL),
(5407224, 21, NULL, NULL),
(5442407, 21, NULL, NULL),
(5494613, 21, NULL, NULL),
(5557186, 21, NULL, NULL),
(5558867, 21, NULL, NULL),
(5597370, 21, NULL, NULL),
(5600845, 21, NULL, NULL),
(5605482, 21, NULL, NULL),
(5608638, 21, NULL, NULL),
(5610774, 21, NULL, NULL),
(5612295, 21, NULL, NULL),
(5616743, 21, NULL, NULL),
(5622313, 19, NULL, NULL),
(5537131, 17, NULL, NULL),
(5127443, 16, NULL, NULL),
(5354473, 16, NULL, NULL),
(5621326, 16, NULL, NULL),
(5615847, 15, NULL, NULL),
(5251224, 12, NULL, NULL),
(5567098, 12, NULL, NULL),
(5623751, 12, NULL, NULL),
(5393847, 11, NULL, NULL),
(5614489, 11, NULL, NULL),
(5268322, 10, NULL, NULL),
(5453380, 10, NULL, NULL),
(5597860, 10, NULL, NULL),
(5619161, 10, NULL, NULL),
(5620711, 10, NULL, NULL),
(5621958, 50, NULL, NULL),
(5502980, 0, NULL, NULL),
(5405478, 0, NULL, NULL),
(5613710, 0, NULL, NULL),
(5613467, 0, NULL, NULL),
(5613714, 0, NULL, NULL),
(5613681, 0, NULL, NULL),
(5459044, 0, NULL, NULL),
(5459045, 0, NULL, NULL),
(5459046, 0, NULL, NULL),
(5459047, 0, NULL, NULL),
(5459048, 0, NULL, NULL),
(5459049, 0, NULL, NULL),
(5459050, 0, NULL, NULL),
(5459051, 0, NULL, NULL),
(5459052, 0, NULL, NULL),
(5459053, 0, NULL, NULL),
(5459055, 0, NULL, NULL),
(5459056, 0, NULL, NULL),
(5459057, 0, NULL, NULL),
(5459058, 0, NULL, NULL),
(5459059, 0, NULL, NULL),
(5578168, 0, NULL, NULL),
(5485051, 0, NULL, NULL),
(20000204, 180, NULL, NULL),
(5414098, 0, NULL, NULL),
(5623013, 0, NULL, NULL),
(5233100, 0, NULL, NULL),
(5520396, 0, NULL, NULL),
(5623026, 0, NULL, NULL),
(5620323, 0, NULL, NULL),
(20000263, 0, NULL, NULL),
(5549776, 0, NULL, NULL),
(2000211, 0, NULL, NULL),
(5359559, 0, NULL, NULL),
(5296827, 0, NULL, NULL),
(5205963, 0, NULL, NULL),
(5235457, 0, NULL, NULL),
(5256426, 0, NULL, NULL),
(5544993, 0, NULL, NULL),
(5563406, 0, NULL, NULL),
(2000020, 7, NULL, NULL),
(5419881, 0, NULL, NULL),
(5490577, 0, NULL, NULL),
(5452842, 0, NULL, NULL),
(5452843, 0, NULL, NULL),
(5452844, 0, NULL, NULL),
(5454031, 0, NULL, NULL),
(5455727, 0, NULL, NULL),
(5462257, 0, NULL, NULL),
(5456559, 0, NULL, NULL),
(5462258, 0, NULL, NULL),
(5462259, 0, NULL, NULL),
(5481281, 0, NULL, NULL),
(5482292, 0, NULL, NULL),
(5489049, 0, NULL, NULL),
(5558346, 0, NULL, NULL),
(5620535, 0, NULL, NULL),
(5544723, 0, NULL, NULL),
(5239569, 0, NULL, NULL),
(5400667, 0, NULL, NULL),
(5400815, 0, NULL, NULL),
(5406352, 0, NULL, NULL),
(5139954, 0, NULL, NULL),
(5226941, 0, NULL, NULL),
(5229269, 0, NULL, NULL),
(5316024, 0, NULL, NULL),
(5435942, 0, NULL, NULL),
(20000417, 0, NULL, NULL),
(5622998, 0, NULL, NULL),
(5604289, 0, NULL, NULL),
(5528812, 1, NULL, NULL),
(20000408, 1, NULL, NULL),
(5530935, 1, NULL, NULL),
(5576251, 1, NULL, NULL),
(5603291, 1, NULL, NULL),
(5555796, 1, NULL, NULL),
(20000479, 0, NULL, NULL),
(20000480, 0, NULL, NULL),
(5587482, 0, NULL, NULL),
(20000425, 0, NULL, NULL),
(20000209, 0, NULL, NULL),
(20000025, 0, NULL, NULL),
(5191507, 0, NULL, NULL),
(5561027, 0, NULL, NULL),
(20000036, 0, NULL, NULL),
(5437425, 0, NULL, NULL),
(5623020, 0, NULL, NULL),
(5241137, 0, NULL, NULL),
(5625260, 0, NULL, NULL),
(5441325, 0, NULL, NULL),
(5612613, 0, NULL, NULL),
(20000799, 1300, NULL, NULL),
(2000001, 105, '2021-04-02 00:36:00', 2),
(5611438, 0, '2021-04-16 12:18:24', 100),
(5218160, 50, NULL, NULL),
(5624677, 0, NULL, NULL),
(5600479, 42, '2021-04-09 21:49:20', 100),
(5614496, 0, NULL, NULL),
(5578839, 0, NULL, NULL),
(5577310, 0, NULL, NULL),
(5573882, 0, NULL, NULL),
(5613963, 0, NULL, NULL),
(5616804, 0, NULL, NULL),
(5615236, 0, NULL, NULL),
(20000961, 0, NULL, NULL),
(5504173, 0, NULL, 410),
(5554562, 50, NULL, NULL),
(5493993, 0, NULL, NULL),
(5615411, 0, NULL, NULL),
(5597228, 450, NULL, NULL),
(20001250, 58, NULL, NULL),
(5437539, 0, '2021-05-04 15:18:09', 65),
(5599670, 250, NULL, NULL),
(5411027, 10, NULL, NULL),
(5617869, 10, NULL, NULL),
(5609137, 0, NULL, NULL),
(20001472, 20, '2021-04-17 13:51:15', 200),
(20000028, 0, NULL, NULL),
(5551048, 0, NULL, NULL),
(5618552, 0, NULL, NULL),
(5404572, 300, NULL, NULL),
(5151477, 0, NULL, NULL),
(5617739, 0, NULL, NULL),
(20002056, 0, NULL, NULL),
(5622653, 0, NULL, NULL),
(5565602, 1300, NULL, NULL),
(20000242, 100, NULL, NULL),
(5601979, 0, NULL, NULL),
(5503395, 0, '2021-04-23 22:44:57', 120),
(5425332, 0, '2021-05-03 11:08:33', 10),
(5137899, 5000, NULL, NULL),
(20001882, 0, '2021-04-30 03:56:56', 10);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `userid` varchar(50) NOT NULL DEFAULT '',
  `user_pass` varchar(32) NOT NULL DEFAULT '',
  `sex` enum('M','F','S') NOT NULL DEFAULT 'M',
  `email` varchar(39) NOT NULL DEFAULT '',
  `group_id` tinyint(3) NOT NULL DEFAULT 0,
  `state` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `unban_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expiration_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `logincount` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `lastlogin` datetime DEFAULT NULL,
  `last_ip` varchar(100) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `character_slots` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `pincode` varchar(4) NOT NULL DEFAULT '',
  `pincode_change` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vip_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `old_group` tinyint(3) NOT NULL DEFAULT 0,
  `last_unique_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `blocked_unique_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `group_id`, `state`, `unban_time`, `expiration_time`, `logincount`, `lastlogin`, `last_ip`, `birthdate`, `character_slots`, `pincode`, `pincode_change`, `vip_time`, `old_group`, `last_unique_id`, `blocked_unique_id`) VALUES
(1, 'princess21', '3676ea8d5f062f95af6b7b7a6f7b34a4', 'S', '', 0, 0, 0, 0, 9, '2021-05-15 00:04:59', '127.0.0.1', NULL, 0, '', 0, 0, 0, 0, 0),
(200021, 'jowie', '3676ea8d5f062f95af6b7b7a6f7b34a4', 'M', '', 99, 0, 0, 0, 0, NULL, '', NULL, 0, '', 0, 0, 0, 0, 0),
(2000002, 'gmmaya1023', 'b83720964f2cc80e0bc5c29d32fa15b0', 'F', 'malvika1771@gmail.com', 99, 0, 0, 0, 5126, '2020-11-05 04:32:16', '80.43.141.119', '1989-08-30', 0, '0910', 1381203002, 0, 0, 0, 0),
(2000003, 'gmgino88', '93255c6dd47da3dc7d8bbebb47f8639b', 'F', 'mechanized01@yahoo.com', 99, 0, 0, 0, 5032, '2021-05-08 04:14:40', '3.0.102.141', NULL, 0, '1111', 1382280957, 0, 0, 3441385839, 0),
(2000004, 'gmendou1772s', '9a7f85c7376b436d432f34daaac97199', 'M', 'junjonel6184@gmail.com', 1, 5, 0, 0, 971, '2021-05-03 15:08:10', '110.54.144.234', NULL, 0, '', 0, 0, 0, 1663249081, 0),
(2000005, 'gmgodfrey1', '4dedff342e2f42cd7c5ccf7457320e4b', 'M', 'godfreyarceo@gmail.com', 20, 0, 0, 0, 1272, '2021-05-14 01:29:27', '3.0.102.141', NULL, 0, '', 0, 0, 0, 1118354968, 0),
(2000006, 'gmdhaivan801', '700a8573d7dfe57f982059fb538d25fd', 'F', 'vhann007@gmail.com', 20, 0, 0, 0, 1163, '2021-05-13 23:24:51', '52.77.252.185', NULL, 0, '', 0, 0, 0, 429180771, 0),
(2000007, 'gmwarpigz', '70bc0f6bd104e30a7461bee9834cb9fb', 'M', 'gmwarpigz@gmail.com', 80, 0, 0, 0, 420, '2021-04-25 12:27:48', '52.77.252.185', NULL, 0, '', 0, 0, 0, 3338127836, 0),
(2000008, 'gmhidanx1', 'b45428b570b8edd9a1f32989f815658d', 'M', 'Nureldin123@gmail.com', 99, 0, 0, 0, 1105, '2021-05-13 21:56:08', '52.77.252.185', NULL, 0, '', 0, 0, 0, 254025049, 0),
(2000009, 'gmrex165821', '94f5770a6d50e01b4cab274d0432f2ed', 'M', 'lazaga12345@gmail.com', 99, 0, 0, 0, 2545, '2021-04-25 13:57:55', '175.176.95.12', NULL, 0, '', 0, 0, 0, 2374218760, 0),
(2000010, 'gmeffin331', '6f1c1d014047f0d510b233898e7e0040', 'M', 'rychua2013@gmail.com', 20, 0, 0, 0, 1823, '2021-03-11 14:25:07', '220.135.113.123', NULL, 0, '', 0, 0, 0, 216413813, 0),
(2000011, 'gmmevius143', '7bdcf7cca38cf5f2a7f6e1653f318f5e', 'M', 'ycy9903@hotmail.com', 20, 0, 0, 0, 253, '2021-05-07 14:41:46', '175.137.1.215', NULL, 0, '', 0, 0, 0, 3415404575, 0),
(2000012, 'gmanthem614', 'a13e1f19313b640f03107ac75c34af3f', 'M', 'mellamozluj17@gmail.com', 20, 0, 0, 0, 1747, '2021-03-21 22:37:44', '136.158.31.13', NULL, 0, '1111', 1383621018, 0, 0, 3716302976, 0),
(2000013, 'gmsupan2215', '4e0abaf02ba6c70eaf6a4fd67ccd4313', 'M', 'glendon.plata@yahoo.com', 20, 0, 0, 0, 2210, '2021-05-15 09:20:32', '112.211.55.203', NULL, 0, '2630', 1381222178, 0, 0, 2084322803, 0),
(2000014, 'gmlothars1468', '8068c76c7376bc08e2836ab26359d4a4', 'F', 'xtianpaulriva@gmail.com', 99, 0, 0, 0, 4750, '2021-05-14 01:33:22', '180.190.126.38', NULL, 0, '6363', 1381077849, 0, 0, 2652459304, 0),
(2000015, 'gmbothunter', '6961deb6993617e4901ea2430b820d5d', 'M', 'rjlazaro1984@gmail.com', 20, 0, 0, 0, 112, '2021-04-26 20:04:39', '52.77.252.185', '1990-09-11', 0, '', 0, 0, 0, 3386755692, 0),
(2000016, 'gmurobane5556', '2faee749c44060fdd372e5f193b70405', 'M', 'supremekurobane98@gmail.com', 20, 0, 0, 0, 5825, '2021-04-30 11:51:22', '35.213.188.134', NULL, 0, '1111', 1381126837, 0, 0, 3493693950, 0),
(2000017, 'gmhellangel115', '95119cfc3b0ed0c647620596b5c2d1ba', 'F', 'hotshot8815881@yahoo.com', 20, 0, 0, 0, 1286, '2021-01-28 08:06:15', '110.54.235.254', NULL, 0, '2501', 1381188534, 0, 0, 3582613788, 0),
(2000018, 'gmmelvin6022', '88db4e316e72bb024a1b62a0c0b5d752', 'F', 'ammelsyd1620@gmail.com', 99, 0, 0, 0, 3695, '2021-05-17 00:03:56', '112.198.97.22', '1984-12-00', 12, '', 0, 0, 0, 3975251708, 0),
(2000019, 'gmpatrick6612', 'cfbdfd873f30665f3f89e3381061be04', 'M', 'echiapatrick@yahoo.com', 20, 0, 0, 0, 7851, '2021-05-05 22:38:20', '35.213.188.134', NULL, 0, '1224', 1381077861, 0, 0, 99578114, 0),
(2000020, 'gmcindy11521', '9299dfd3e1a531d7365c61502b1c02d4', 'F', 'cindyasuncion2012@yahoo.com', 99, 0, 0, 0, 1781, '2021-04-30 11:15:29', '52.77.252.185', NULL, 0, '2090', 1383307152, 0, 0, 3354445002, 0),
(2000021, '', '$password', 'M', '$email', 0, 0, 0, 0, 0, '2021-05-19 23:54:35', '', NULL, 0, '', 0, 0, 0, 0, 0),
(2000022, 'bilal2021', '5ae1c881ad1d8d750f15c232a3232379', 'M', 'bilal', 0, 0, 0, 0, 0, '2021-05-20 00:02:38', '', NULL, 0, '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tradeshop`
--

CREATE TABLE `tradeshop` (
  `id` int(11) UNSIGNED NOT NULL,
  `nameid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cost` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `sold` tinyint(1) UNSIGNED NOT NULL,
  `sold_date` datetime DEFAULT NULL,
  `price` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='Log of redeemed donation items.';

--
-- Dumping data for table `tradeshop`
--

INSERT INTO `tradeshop` (`id`, `nameid`, `quantity`, `cost`, `account_id`, `sold`, `sold_date`, `price`) VALUES
(1, 18845, 1, 100, 5527514, 0, '2020-11-24 10:03:54', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cp_credits`
--
ALTER TABLE `cp_credits`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `name` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2000023;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
