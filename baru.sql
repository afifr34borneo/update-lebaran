/*
Navicat MySQL Data Transfer

Source Server         : aphep
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : tirex

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-12-02 09:54:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_faktur
-- ----------------------------
DROP TABLE IF EXISTS `user_faktur`;
CREATE TABLE `user_faktur` (
  `id_faktur` varchar(50) NOT NULL,
  `no_faktur` varchar(100) DEFAULT NULL,
  `penerima` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `jam_kirim` varchar(20) DEFAULT NULL,
  `tanggal_kirim` varchar(20) DEFAULT NULL,
  `id_pbf` varchar(50) DEFAULT NULL,
  `id_penerima` varchar(50) DEFAULT NULL,
  `id_sp` varchar(50) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `is_created` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_edit` varchar(255) DEFAULT NULL,
  `edit_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` varchar(255) DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status_notif` int(2) DEFAULT NULL,
  `id_booking` varchar(50) DEFAULT NULL,
  `id_status` varchar(10) DEFAULT NULL,
  `koli` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status_bayar` varchar(255) DEFAULT NULL,
  `status_pickup` varchar(255) DEFAULT NULL,
  `time_order` varchar(25) DEFAULT NULL,
  `time_pickup` varchar(25) DEFAULT NULL,
  `time_sp` varchar(25) DEFAULT NULL,
  `time_terima` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_faktur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_faktur
-- ----------------------------
INSERT INTO `user_faktur` VALUES ('25368735602704390', 'JU17111528', '952', 'JL RAYA KARANGPLOSO RT 07 RW 02 KAV 6 GIRIMULYO-KARANGPLOSO-MLG', 'MALANG', '14:00', '01-12-2017', '1', 'H. Nur hasana', '6', '3', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', '0', 'V7RT387', '06630', '1', '', null, null, '14:23:22', '19:30:26', '15:12:18', '18:55:55');
INSERT INTO `user_faktur` VALUES ('25368735602704391', 'JU17111615', '208', 'JL. PAKIS KEMBAR NO. 109 PAKI', 'MALANG', null, '01-12-2017', '1', 'Mbk iza', '7', '3', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', '0', 'V7RT387', '93646', '1', '', null, null, '14:24:10', '19:10:13', '15:17:17', '17:44:27');
INSERT INTO `user_faktur` VALUES ('25368735602704392', 'JU17111622', '37', 'JL. BUKIT BERBUNGA NO 5 (SEBELAH RUMAH MUNIR) KEL. SIDOMULYO KEC. BUMIAJI BATU    ', 'MALANG', null, '01-12-2017', '1', 'Kiki', '6', '3', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', '0', 'V7RT387', '46454', '2', '', null, null, '14:24:43', '19:30:26', '15:12:18', '19:32:25');
INSERT INTO `user_faktur` VALUES ('25368735602704393', 'JU1712004', '540', 'JL. JEMBAWAN I BLOK 3J/IC MALANG', 'MALANG', null, '01-12-2017', '1', 'Mbk rani', '7', '3', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', '0', 'V7RT387', '96890', '1', '', null, null, '14:25:19', '19:10:13', '15:17:17', '16:49:20');
INSERT INTO `user_faktur` VALUES ('25368735602704394', 'JU17120011', '814', 'JL KEPUH UTARA RT 04 RW 04 NO 43 BANDUNGREJOSARI - MALAN', 'MALANG', null, '01-12-2017', '1', 'Irfan', '8', '3', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', '0', 'V7RT387', '06781', '1', '', null, null, '14:26:06', '16:19:24', '15:17:45', '18:00:36');
INSERT INTO `user_faktur` VALUES ('25368735602704395', 'JU17120001', '274', 'PERUM BUMI MONDOROKO RAYA B2-25 SINGOSARI     ', 'MALANG', null, '01-12-2017', '1', 'Astiani', '6', '3', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', '0', 'V7RT387', '91659', '1', '', null, null, '14:26:29', '19:30:26', '15:12:18', '18:09:03');
INSERT INTO `user_faktur` VALUES ('25368735602704396', 'JU17120005', '63', 'JL. SIMPANG BOROBUDUR NO. 54 BLIMBING', 'MALANG', null, '01-12-2017', '1', 'Tiara', '6', '3', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', '0', 'V7RT387', '53984', '2', '', null, null, '14:27:17', '19:30:26', '15:12:18', '17:02:38');
INSERT INTO `user_faktur` VALUES ('25368735602704403', 'JU17120013', '119', 'JL. RAYA SUMBER SARI NO. 254 C MALANG', 'MALANG', '14:00', '01-12-2017', '1', 'Hastuti', '8', '3', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', '0', 'V7RT387', '67202', '1', '1 KRESEK PUTIH', '2', null, '14:37:54', '16:19:24', '15:17:45', '17:34:25');
INSERT INTO `user_faktur` VALUES ('25368735602704404', 'JU17120036', '478', 'JL. KAWI KIOS 3-4 MALANG', '', null, '01-12-2017', '1', 'Teresiana', '8', '3', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', '0', 'V7RT387', '22299', '1', '1 KRESEK', '2', null, '14:39:09', '16:19:24', '15:17:45', '17:16:06');
INSERT INTO `user_faktur` VALUES ('25368735602704405', 'JU17120008', '252', 'JL. TERUSAN DANAU KERINCI KAV 14 - RUKO KERINCI SQUARE - SAWOJAJAR       ', 'MALANG', null, '01-12-2017', '1', 'Mbk mega', '7', '3', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', '0', 'V7RT387', '60951', '2', '1 KTN JOYBEE DAN 1 KRESEK', '2', null, '14:39:59', '19:10:13', '15:17:17', '19:20:17');
INSERT INTO `user_faktur` VALUES ('25368735602704406', 'JU17120018', '346', 'JL. SIMPANG SULFAT UTARA 48 PANDAN WANGI BLIMBING      ', 'MALANG', '14:00', '01-12-2017', '1', 'Bpk Hajat', '7', '3', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', '0', 'V7RT387', '95604', '1', '1 KTN PHAROLIT (CAMP)', '2', null, '14:40:35', '19:10:13', '15:17:17', '17:05:26');
INSERT INTO `user_faktur` VALUES ('25368735602704407', 'JU17120012', '337', 'JL. KEPUH UTARA NO. 43 SUKUN MALANG  ', 'MALANG', null, '01-12-2017', '1', 'Irfan', '8', '3', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', '0', 'V7RT387', '36204', '1', '1 KRESEK', '2', null, '14:41:46', '16:19:24', '15:17:45', '18:00:43');
INSERT INTO `user_faktur` VALUES ('25368735602704408', 'JU17120047', '249', 'JL. DANAU JONGE H4 - E47 SAWOJAJAR   ', 'MALANG', '16.00', '01-12-2017', '1', 'Pak gatot', '7', '3', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', null, '2017-12-02 09:53:02', '0', 'V7RT387', '11332', '1', '1 KRESEK', '2', null, '15:26:57', '19:10:13', '15:26:57', '18:57:05');

-- ----------------------------
-- Table structure for user_login
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `id_login` varchar(50) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `id_pbf` varchar(50) DEFAULT NULL,
  `id_tirex` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('97414999013588994', 'mahaTR', 'bc5856a98ebd4fef8b1da4135c190f95', '3', null);
INSERT INTO `user_login` VALUES ('97414999013588995', 'imfTR', 'bc5856a98ebd4fef8b1da4135c190f95', '1', null);
INSERT INTO `user_login` VALUES ('97419531143610379', 'adminTirex', 'bc5856a98ebd4fef8b1da4135c190f95', null, '97419531143610378');
INSERT INTO `user_login` VALUES ('25364539872641030', 'dutaTR', '3063ee24fe41334ce82b73deceed2edb', '2', null);

-- ----------------------------
-- Table structure for user_pbf
-- ----------------------------
DROP TABLE IF EXISTS `user_pbf`;
CREATE TABLE `user_pbf` (
  `id_pbf` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(75) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `is_created` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_edit` varchar(50) DEFAULT NULL,
  `date_edit` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` varchar(50) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `catatan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pbf`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_pbf
-- ----------------------------
INSERT INTO `user_pbf` VALUES ('1', 'Imanuel mulia farma', 'Jl tenaga baru II no 5 malang', '0341 416479', null, '2017-12-02 09:52:05', null, '2017-12-02 09:52:05', null, '2017-12-02 09:52:05', null, 'imfdir@gmail.com');
INSERT INTO `user_pbf` VALUES ('2', 'PT DUTA DWISARANA PRIMA', 'Jl. Taman Borobudur Selatan   No 1 Malang', '0341-411768', null, '2017-12-02 09:52:04', null, '2017-12-02 09:52:04', null, '2017-12-02 09:52:04', null, 'pt.duta@yahoo.com');
INSERT INTO `user_pbf` VALUES ('3', 'MAHADEWI', 'MALANG', '0341', 'ADMIN', '2017-12-02 09:52:04', null, '2017-12-02 09:52:04', null, '2017-12-02 09:52:04', null, 'afifrosyadi95@gmail.com');
