/*
Navicat MySQL Data Transfer

Source Server         : aphep
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : tirex

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-12-01 09:47:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for karyawan
-- ----------------------------
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE `karyawan` (
  `id_pegawai` int(255) NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `id_mobil` varchar(255) DEFAULT NULL,
  `id_kota` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO `karyawan` VALUES ('13', '0001', 'iswa', '081234339176', '5', '14', '1', 'assets/upload/paket/170911060406store-nitrogen.jpg');
INSERT INTO `karyawan` VALUES ('14', '0002', 'mury', '085707888028', '5', '6', '1', 'assets/upload/paket/170911060526dinkop.png');
INSERT INTO `karyawan` VALUES ('15', '0003', 'firm', '081235031770', '5', '7', '1', 'assets/upload/paket/170911060602ali.png');
INSERT INTO `karyawan` VALUES ('20', '0008', 'afif', '000000000000', '5', '12', '1', 'assets/upload/paket/170911060901green.png');

-- ----------------------------
-- Table structure for user_kurir
-- ----------------------------
DROP TABLE IF EXISTS `user_kurir`;
CREATE TABLE `user_kurir` (
  `id_kurir` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_karyawan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_kurir`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_kurir
-- ----------------------------
INSERT INTO `user_kurir` VALUES ('1', 'her', 'her', '20');
INSERT INTO `user_kurir` VALUES ('2', 'iswa', 'iswa', '13');
INSERT INTO `user_kurir` VALUES ('3', 'mury', 'mury', '14');
INSERT INTO `user_kurir` VALUES ('4', 'firm', 'firm', '15');
