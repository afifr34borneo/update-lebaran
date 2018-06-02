/*
Navicat MySQL Data Transfer

Source Server         : aphep
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : tirex

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-11-30 10:48:43
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_kurir
-- ----------------------------
INSERT INTO `user_kurir` VALUES ('1', 'her', 'her', '20');
