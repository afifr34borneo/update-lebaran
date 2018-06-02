/*
Navicat MySQL Data Transfer

Source Server         : aphep
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : tirex_v2

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-12-03 12:59:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for antar_kurir
-- ----------------------------
DROP TABLE IF EXISTS `antar_kurir`;
CREATE TABLE `antar_kurir` (
  `id_antar_kurir` int(11) NOT NULL AUTO_INCREMENT,
  `id_karyawan` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `no_mobil` varchar(255) DEFAULT NULL,
  `jam_kirim` varchar(255) DEFAULT NULL,
  `tanggal_kirim` varchar(255) DEFAULT NULL,
  `no_sp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_antar_kurir`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of antar_kurir
-- ----------------------------
INSERT INTO `antar_kurir` VALUES ('1', '15', '081235031770', '88', '11:00', '03-12-2017', 'MLGP368PR031217');

-- ----------------------------
-- Table structure for antar_paket
-- ----------------------------
DROP TABLE IF EXISTS `antar_paket`;
CREATE TABLE `antar_paket` (
  `id_antar_paket` int(11) NOT NULL AUTO_INCREMENT,
  `id_karyawan` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `no_mobil` varchar(255) DEFAULT NULL,
  `jam_kirim` varchar(255) DEFAULT NULL,
  `tanggal_kirim` char(10) DEFAULT NULL,
  `no_sp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_antar_paket`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of antar_paket
-- ----------------------------
INSERT INTO `antar_paket` VALUES ('18', '20', '000000000000', '87', '11:00', '02-12-2017', 'MLGP546II021217');

-- ----------------------------
-- Table structure for detail_kurir
-- ----------------------------
DROP TABLE IF EXISTS `detail_kurir`;
CREATE TABLE `detail_kurir` (
  `id_detail_kurir` int(255) NOT NULL AUTO_INCREMENT,
  `id_jadwal` varchar(255) DEFAULT NULL,
  `id_bawaan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `urgent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_detail_kurir`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail_kurir
-- ----------------------------
INSERT INTO `detail_kurir` VALUES ('292', '1', '65446', '2', null);
INSERT INTO `detail_kurir` VALUES ('293', '1', '56621', '2', null);
INSERT INTO `detail_kurir` VALUES ('294', '1', '14958', '2', null);
INSERT INTO `detail_kurir` VALUES ('295', '1', '51643', '2', null);
INSERT INTO `detail_kurir` VALUES ('296', '1', '14958', '2', null);
INSERT INTO `detail_kurir` VALUES ('297', '1', '51643', '2', null);
INSERT INTO `detail_kurir` VALUES ('298', '1', '65446', '2', null);
INSERT INTO `detail_kurir` VALUES ('299', '1', '56621', '2', null);
INSERT INTO `detail_kurir` VALUES ('300', '1', '65446', '2', null);
INSERT INTO `detail_kurir` VALUES ('301', '1', '56621', '2', null);
INSERT INTO `detail_kurir` VALUES ('302', '1', '14958', '2', null);
INSERT INTO `detail_kurir` VALUES ('303', '1', '65446', '2', null);

-- ----------------------------
-- Table structure for detail_sp
-- ----------------------------
DROP TABLE IF EXISTS `detail_sp`;
CREATE TABLE `detail_sp` (
  `id_detail_sp` int(255) NOT NULL AUTO_INCREMENT,
  `id_jadwal` varchar(255) DEFAULT NULL,
  `id_bawaan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `urgent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_detail_sp`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail_sp
-- ----------------------------
INSERT INTO `detail_sp` VALUES ('281', '18', '65446', '2', null);
INSERT INTO `detail_sp` VALUES ('282', '18', '56621', '2', null);
INSERT INTO `detail_sp` VALUES ('283', '18', '14958', '2', null);
INSERT INTO `detail_sp` VALUES ('284', '18', '65446', '2', null);
INSERT INTO `detail_sp` VALUES ('285', '18', '56621', '2', null);
INSERT INTO `detail_sp` VALUES ('286', '18', '14958', '2', null);
INSERT INTO `detail_sp` VALUES ('287', '18', '65446', '2', null);
INSERT INTO `detail_sp` VALUES ('288', '18', '56621', '2', null);
INSERT INTO `detail_sp` VALUES ('289', '18', '14958', '2', null);
INSERT INTO `detail_sp` VALUES ('290', '18', '65446', '2', null);
INSERT INTO `detail_sp` VALUES ('291', '18', '56621', '2', null);
INSERT INTO `detail_sp` VALUES ('292', '1', '65446', '2', null);
INSERT INTO `detail_sp` VALUES ('293', '1', '56621', '2', null);
INSERT INTO `detail_sp` VALUES ('294', '1', '14958', '2', null);
INSERT INTO `detail_sp` VALUES ('295', '18', '65446', '2', null);
INSERT INTO `detail_sp` VALUES ('296', '18', '56621', '2', null);
INSERT INTO `detail_sp` VALUES ('297', '18', '14958', '2', null);
INSERT INTO `detail_sp` VALUES ('298', '18', '51643', '2', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO `karyawan` VALUES ('13', '0001', 'iswa', '081234339176', '5', '14', '1', 'assets/upload/paket/170911060406store-nitrogen.jpg');
INSERT INTO `karyawan` VALUES ('14', '0002', 'mury', '085707888028', '5', '6', '1', 'assets/upload/paket/170911060526dinkop.png');
INSERT INTO `karyawan` VALUES ('15', '0003', 'firm', '081235031770', '5', '7', '1', 'assets/upload/paket/170911060602ali.png');
INSERT INTO `karyawan` VALUES ('20', '0008', 'dwi', '000000000000', '5', '12', '1', 'assets/upload/paket/170911060901green.png');
INSERT INTO `karyawan` VALUES ('22', '00010', 'heri', '081358367703', '5', '12', '1', null);

-- ----------------------------
-- Table structure for mobil
-- ----------------------------
DROP TABLE IF EXISTS `mobil`;
CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL AUTO_INCREMENT,
  `plat_nomor` varchar(255) DEFAULT NULL,
  `no_mobil` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_mobil`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mobil
-- ----------------------------
INSERT INTO `mobil` VALUES ('6', 'N 723 UC', '73', 'APV ', 'assets/upload/paket/170911055307dinkop.png');
INSERT INTO `mobil` VALUES ('7', 'N 1234 UA', '88', 'PREGIO', 'assets/upload/paket/170911055402bandrex.png');
INSERT INTO `mobil` VALUES ('8', 'N 1855 CK ', '86', 'KIJANG', 'assets/upload/paket/1709110554364IDE brosure - coid.jpg');
INSERT INTO `mobil` VALUES ('9', 'N 1254 UC ', '75', 'INNOVA', 'assets/upload/paket/170911055600toko online.jpg');
INSERT INTO `mobil` VALUES ('10', 'N 8776 KJ', '91', 'INNOVA', 'assets/upload/paket/17091105563229174.jpg');
INSERT INTO `mobil` VALUES ('11', 'N 9786 YT', '77', 'INNOVA', 'assets/upload/paket/170911055710kelindo.png');
INSERT INTO `mobil` VALUES ('12', 'N 8675 LK', '87', 'INNOVA', 'assets/upload/paket/170911055748kelindo.png');
INSERT INTO `mobil` VALUES ('13', 'N 6756 GF', '67', 'INNOVA', 'assets/upload/paket/17091105581829174.jpg');
INSERT INTO `mobil` VALUES ('14', 'N 6768 UK', '89', 'INNOVA', 'assets/upload/paket/1709110602504IDE brosure - coid.jpg');

-- ----------------------------
-- Table structure for user_apotek
-- ----------------------------
DROP TABLE IF EXISTS `user_apotek`;
CREATE TABLE `user_apotek` (
  `id_apotek` int(11) NOT NULL AUTO_INCREMENT,
  `nama_apotek` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `jalur` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_apotek`)
) ENGINE=InnoDB AUTO_INCREMENT=1252 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_apotek
-- ----------------------------
INSERT INTO `user_apotek` VALUES ('1', 'APOTEK X                                ', 'JL CANDI WARINGIN', 'MALANG', '                              ', 'DAERAH ABM/MLG                          ');
INSERT INTO `user_apotek` VALUES ('2', 'BERLIMA,APT                             ', 'JL. ARIS MUNANDAR NO. 18', 'MALANG', '0341-367265                   ', 'DAERAH ALUN ALUN KOTA/MLG               ');
INSERT INTO `user_apotek` VALUES ('3', 'SARI,APT                                ', 'JL PASAR BESAR MLG', 'MALANG', '0341-326495                   ', 'DAERAH ALUN ALUN KOTA/MLG               ');
INSERT INTO `user_apotek` VALUES ('4', 'SURYA EKA PUTRA, PT                     ', 'PBI UTARA BLOK A6/19 A ', 'MALANG', '0341 - 417387                 ', 'DAERAH ARAYA/MLG                        ');
INSERT INTO `user_apotek` VALUES ('5', 'ANUGRAH,TK (ARJOSARI)                   ', 'JL. TELIK PELABUHAN RATU NO. 14 ARJOSARI', 'MALANG', '0341-9387007                  ', 'DAERAH ARJOSARI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('6', 'ISTIQOMAH, TK                           ', 'JL. TELUK CENDRAWASIH NO. 160 ARJOSARI (SEBELAH SELATAN)', 'MALANG', '0341 - 419727                 ', 'DAERAH ARJOSARI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('7', 'PARAMITA KENDEDES, APT                  ', 'JL. RADEN PANJI SUROSO RUKO MTC BLOC A 5 - MALANG', 'MALANG', '0341 - 489696                 ', 'DAERAH ARJOSARI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('8', 'SALSABILA CELULLER & SHOP               ', 'JL. PAHLAWAN 247 - BALEARJOSARI', 'MALANG', '0341 - 475303                 ', 'DAERAH ARJOSARI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('9', 'BU LILIK, TK                            ', 'JL. TELUK MANDAR NO. 66', 'MALANG', '0341-419550                   ', 'DAERAH ARJOSARI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('10', 'AN-NISA MEDIKA                          ', 'JL. WONOREJO NO. 96 MALANG  ', 'MALANG', '085 730 607 094               ', 'DAERAH ARJOWINANGUN/MLG                 ');
INSERT INTO `user_apotek` VALUES ('11', 'INAYAH FARMA, APT                       ', 'JL. RAYA ARJOWINANGUN 4 - RT 01 RW 01 - MALANG', 'MALANG', '0341 752260                   ', 'DAERAH ARJOWINANGUN/MLG                 ');
INSERT INTO `user_apotek` VALUES ('12', 'REFA HUSADA,APT                         ', 'JL. MAYJEND SUNGKONO NO. 9 TLOGOWARU-BURING   ', 'MALANG', '0341-754075                   ', 'DAERAH ARJOWINANGUN/MLG                 ');
INSERT INTO `user_apotek` VALUES ('13', 'TITIAN SEHAT,APT                        ', 'JL. TERUSAN LETJEN SUNGKONO NO. 69 (RAYA TUTUT)        ', 'MALANG', '0341-7352001                  ', 'DAERAH ARJOWINANGUN/MLG                 ');
INSERT INTO `user_apotek` VALUES ('14', 'USMAN,TK                                ', 'JL. BANDULAN BARAT NO. 32   ', 'MALANG', '0341 - 557640                 ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('15', 'AQ, TOKO                                ', 'JL. BANDULAN GANG IX/ 588   ', 'MALANG', '818389578', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('16', 'BU SRI DEWI,TK                          ', 'JL. BANDULAN GG IX NO. 603  ', 'MALANG', '0881 626 1966                 ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('17', 'BU SUGIARTI,TK (BANDULAN)               ', 'JL. BANDULAN 9 NO. 595 C PERUM DEPAN BLOK D   ', 'MALANG', '085 815 528 069               ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('18', 'HALIM JAYA,TK                           ', 'JL. BANDULAN VI - F B2-24 (PERUM KOREM)       ', 'MALANG', '0341 - 566 929                ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('19', 'IDA,TK (PANDAN LANDUNG)                 ', 'JL. PANDAN LANDUNG NO. 49   ', 'MALANG', '0341 - 555 149                ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('20', 'MOROSEHAT,TO                            ', 'JL. RAYA BANDULAN NO. 16    ', 'MALANG', '0341-6322703                  ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('21', 'PHARMACY, APT                           ', 'JL. RAYA BANDULAN NO.21 KAV 2 KEC. SUKUN - MALANG      ', 'MALANG', '0341 - 8904753                ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('22', 'POJOK,TK (BANDULAN)                     ', 'JL. BANDULAN GG. IX NO. 588 ', 'MALANG', '0341 - 986 5060               ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('23', 'POJOK,TK (MULYOREJO)                    ', 'JL. RAYA TEBO TENGAH NO. 1  ', 'MALANG', '085 933 00 95 87              ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('24', 'SRI DEWI                                ', 'JL. BANDULAN IX/ 603        ', 'MALANG', '8816261966', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('25', 'BARENG,APT                              ', 'JL. IR. RAIS NO. 284        ', 'MALANG', '0341-322395                   ', 'DAERAH BARENG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('26', 'PAK NUR (POJOK),TK                      ', 'JL. BARENG RAYA 2-N/562     ', 'MALANG', '0341-345037                   ', 'DAERAH BARENG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('27', 'ANASTASIA, APT                          ', 'JL. BUKIT BERBUNGA 137 BATU ', 'MALANG', '0341 594235                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('28', 'ANUGRAH,TK (BEJI)                       ', 'JL. RAYA BEJI      ', 'MALANG', '0341 - 524020                 ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('29', 'BAROKAH,TK (JUNREJO)                    ', 'JL. RAYA TELEKUNG GANGSIRAN NO. 174 JUNREJO BATU       ', 'MALANG', '081 252 428 700               ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('30', 'BATU SEHAT,TO                           ', 'JL. BRANTAS NO. 24 BATU     ', 'MALANG', '0341-511303                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('31', 'HARUM MANIS                             ', 'PASAR BATU', 'MALANG', '0341-592370                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('32', 'LIVE MEDIKA, APT                        ', 'JL ABDUL RAHMAN NO 1 KEL NGAGLIK BATU', 'MALANG', '81343839387', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('33', 'M. SUCHIB,APT                           ', 'JL. K.H. AGUS SALIM NO. 23 BATU      ', 'MALANG', '0341-590377                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('34', 'MANFAAT 2, TK                           ', 'PASAR BATU DAERAH BATU      ', 'MALANG', '0341-592191                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('35', 'MANFAAT,APT                             ', 'JL. DIPONEGORO NO. 48 BATU  ', 'MALANG', '0341-591370                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('36', 'MEDISON, APT (BATU)                     ', 'JL. DIPONEGORO NO 78 - BATU ', 'MALANG', '0341 - 593384                 ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('37', 'MIRA FARMA, APT                         ', 'JL. BUKIT BERBUNGA NO 5 (SEBELAH RUMAH MUNIR) KEL. SIDOMULYO KEC. BUMIAJI BATU    ', 'MALANG', '0341 - 524713                 ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('38', 'NANNY MART, MM                          ', 'JL. RAYA BEJI NO. 65 BATU   ', 'MALANG', '0341-6331477                  ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('39', 'PUJON SEHAT, APT                        ', 'JL. ABDUL MANAN WIJAYA NO. 286 (PUJON)        ', 'MALANG', '0341 - 9700528                ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('40', 'RAHMA, APT                              ', 'JL DEWI SARTIKA NO 1 BATU   ', 'MALANG', '511588', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('41', 'SAHABAT,TK                              ', 'JL. BIRAWA NO.6 TEGALWARU DAU        ', 'MALANG', '85233329551', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('42', 'SETIA BUDI,TK                           ', 'JL. PETUNG SEWU NO. 245 DAU (DEPAN BALAI DESA) BATU    ', 'MALANG', '085 855 658 052               ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('43', 'SHOFA DIEN`S,TK                         ', 'JL.BRIGJEN ABDUL MANAN WIJAYA 322 PUJON       ', 'MALANG', '81233714343', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('44', 'SOFADIN,TK                              ', 'JL ABDUL MANAN WIJAYA NO 322/7 PUJON ', 'MALANG', '0341 524262                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('45', 'SOLO,APT                                ', 'JL. BRIGJEN ABDUL MANAN WIJAYA NO. 36 - PUJON ', 'MALANG', '0341 -3077042                 ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('46', 'SUMBER WARAS,APT                        ', 'JL. DEWI SARTIKA E 41 BATU  ', 'MALANG', '0341 591766                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('47', 'GARUDA, APT                             ', 'JL MAYJENPANJAITAN NO 78    ', 'MALANG', '0341 - 559590                 ', 'DAERAH BETEK/MLG                        ');
INSERT INTO `user_apotek` VALUES ('48', 'BETHEK FARMA, APT                       ', 'JL MAYJEN PANJAITAN NO 119 MALANG    ', 'MALANG', '0341-6512606                  ', 'DAERAH BETEK/MLG                        ');
INSERT INTO `user_apotek` VALUES ('49', 'BLIMBING INDAH,APT                      ', 'PERUM BLIMBING INDAH TIMUR P-1 NO. 19', 'MALANG', '0341-486472                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('50', 'DIRGAHAYU, TK                           ', 'JL. IKAN HIU NO. 5 - MALANG ', 'MALANG', '85730399569', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('51', 'KENDEDES FARMA, APT                     ', 'JL. A. YANI UTARA NO. 16    ', 'MALANG', '0341 - 8863757                ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('52', 'MORO SEHAT, TK                          ', 'RUKO PERMATA SAXOFON NO. 1 B RT 02 RW 06 - LOWOKWARU   ', 'MALANG', '081 252762550                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('53', 'ACASIA,APT                              ', 'JL.SUNANDAR PRIYO SUDARMO NO. 51-52  ', 'MALANG', '0341-479147                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('54', 'AMANAH HUSADA,APT                       ', 'JL. KALPATARU NO. 18        ', 'MALANG', '0341-494376                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('55', 'ARGARAYA MEDIKA, APT                    ', 'JL. KALPATARU 39   ', 'MALANG', '0341 - 4345510                ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('56', 'ASSALAM, TK                             ', 'JL. TELUK BAYUR NO. 59 - PANDAN WANGI', 'MALANG', '0341 - 4430691                ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('57', 'BAROKAH, TK (TELUK CENDRAWASIH)         ', 'JL. TELUK CENDRAWASIH NO. 64 / 15    ', 'MALANG', '0341 - 8682367                ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('58', 'CEMPAKA,APT                             ', 'JL. L.A. SUCIPTO NO. 54 BLIMBING     ', 'MALANG', '0341-493483                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('59', 'CILIWUNG,APT                            ', 'JL. CILIWUNG NO. 44', 'MALANG', '0341-494024                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('60', 'DAMAI,TK                                ', 'JL. L.A. SUCIPTO NO. 31     ', 'MALANG', '0341-7008833                  ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('61', 'DR. ALBERT                              ', 'JL. TAMAN BOROBUDUR AGUNG I NO. 23 - MALANG   ', 'MALANG', '081 333181818                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('62', 'DWI PUTRA GLORY,PT                      ', 'PONDOK BLIMBING INDAH TENGAH XVI BLOK L-1 NO. 24 BLIMBING       ', 'MALANG', '0341-482562 / 081 330 729 885 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('63', 'EL RAFA, APT                            ', 'JL. SIMPANG BOROBUDUR NO. 54 BLIMBING', 'MALANG', '0341-481616                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('64', 'FARIZ, TK                               ', 'JL PANJI SUROSO NO 81       ', 'MALANG', '0341 497381                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('65', 'FITRAH MEDICA,APT                       ', 'JL. TERUSAN BOROBUDUR NO. 47 C BLIMBING       ', 'MALANG', '0341-404044                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('66', 'FUNKEE,TK                               ', 'JL. SUDIMORO NO. 16', 'MALANG', '0341-472894                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('67', 'GAMASARI, APT                           ', 'JL. LETJEN SUTOYO NO. 130 - MALANG   ', 'MALANG', '0341 - 486127 / 8852277       ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('68', 'GRAJAGAN,APT                            ', 'JL. TELUK GRAJAGAN NO. 63 PERUM PANDAN WANGI  ', 'MALANG', '0341-483230                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('69', 'HIGINA,APT                              ', 'JL. KALIURANG NO. 30        ', 'MALANG', '0341-476115                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('70', 'HOSANA,TK                               ', 'JL. SELOREJO BLOK B NO. 15  ', 'MALANG', '0341-480251                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('71', 'K-24,APT (SUNANDAR)                     ', 'JL. SUNANDAR PRIYO SUDARMO NO. 10 MALANG      ', 'MALANG', '0341-413411                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('72', 'KALASAN, TK                             ', 'JL CANDI KALASAN NO 9 BLIMBING       ', 'MALANG', '491492', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('73', 'KALIURANG FARMA, APT                    ', 'JL. KALIURANG NO. 5 A       ', 'MALANG', '0341 - 368909                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('74', 'LUMINTU, TK                             ', 'JL. S. PARMAN NO. 117       ', 'MALANG', '0341-493208                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('75', 'MAKMUR SEHAT,APT                        ', 'JL. A. YANI NO. 50-A        ', 'MALANG', '0341-414542                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('76', 'NINDYA,MM                               ', 'JL. PANJI SUROSO NO. 6 B    ', 'MALANG', '081 734 1300                  ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('77', 'NOVI/WIDODO, TK                         ', 'JL. BOROBUDUR 8/6 MALANG    ', 'MALANG', '0341 - 431802                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('78', 'POJOK BLIMBING,APT                      ', 'JL. A.YANI NO. 62  ', 'MALANG', '0341 - 492798                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('79', 'PRADHANA 3,APT                          ', 'JL. L. A. SUCIPTO NO. 78-A BLIMBING  ', 'MALANG', '0341-409554                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('80', 'SALBILILAH, TK                          ', 'JL. CANDI KIDAL NO. 6 - BLIMBING MASJID SABILLILAH     ', 'MALANG', '0341 - 9500048 / 08816204716  ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('81', 'SARANGAN MEDIKA, APT                    ', 'JL. SARANGAN 21B   ', 'MALANG', '0341 - 400674                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('82', 'SMS SABILLILAH, APT                     ', 'JL CANDI KIDAL NO 6 MLG     ', 'MALANG', '0341 - 9500048                ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('83', 'WIJAYAKUSUMA, APT                       ', 'JL. LETJEN S. PARMAN NO 26 - MALANG  ', 'MALANG', '0341 - 491396                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('84', 'BANTAR JAYA, APT                        ', 'JL KYAI TAMIN NO 58 (BELAKANG MATAHARI)       ', 'MALANG', '0341-722100                   ', 'DAERAH BLKNG MATAHARI/MLG               ');
INSERT INTO `user_apotek` VALUES ('85', 'DIAN FARMA,APT                          ', 'JL. GATOT SUBROTO NO. 42    ', 'MALANG', '0341-366089                   ', 'DAERAH BOLDY/MLG                        ');
INSERT INTO `user_apotek` VALUES ('86', 'JOYO DADI, TK                           ', 'JL MUHARTO NO 8 MLG', 'MALANG', '321378', 'DAERAH BOLDY/MLG                        ');
INSERT INTO `user_apotek` VALUES ('87', 'METRO,MM                                ', 'JL. TERUSAN AMBARAWA NO. 31 ', 'MALANG', '0341-9470675                  ', 'DAERAH BONDOWOSO/MLG                    ');
INSERT INTO `user_apotek` VALUES ('88', 'NUSA INDAH,TK                           ', 'JL. TERUSAN AMBARAWA NO. 43 ', 'MALANG', '0341-570745                   ', 'DAERAH BONDOWOSO/MLG                    ');
INSERT INTO `user_apotek` VALUES ('89', 'RESTU MEDIKA, APT                       ', 'JL. IKAN LAYUR NO. 2 MALANG ', 'MALANG', '0341 - 498760                 ', 'DAERAH BOROBUDUR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('90', 'BULULAWANG,APT                          ', 'JL. RAYA BULULAWANG RT 06/ RW 07 (UTARA PASAR BULULAWANG)       ', 'MALANG', '085 100 555 062               ', 'DAERAH BULULAWANG/MALANG                ');
INSERT INTO `user_apotek` VALUES ('91', 'KENDAL PAYAK, APT                       ', 'JL. WATUDAKON NO. 2 KENDALPAYAK KEC PAKISAJI KAB MALANG', 'MALANG', '085 100655680                 ', 'DAERAH BULULAWANG/MALANG                ');
INSERT INTO `user_apotek` VALUES ('92', 'RAJA SEHAT, APT (KREBET)                ', 'JL. RAYA KREBET 22 BULULAWANG        ', 'MALANG', '0341-804560                   ', 'DAERAH BULULAWANG/MALANG                ');
INSERT INTO `user_apotek` VALUES ('93', 'SEJATI(BULULAWANG), TK                  ', 'JL.STASIUN NO. 5 UTARA PASAR BULULAWANG       ', 'MALANG', '0341-833171                   ', 'DAERAH BULULAWANG/MALANG                ');
INSERT INTO `user_apotek` VALUES ('94', 'AMARTA,TK                               ', 'JL. RAYA TLOGOWARU NO. 8-A  ', 'MALANG', '085 855 636 062               ', 'DAERAH BULULAWANG/MALANG                ');
INSERT INTO `user_apotek` VALUES ('95', 'BUNUL FARMA,APT                         ', 'JL. HAMID RUSDI 101 G BUNUL ', 'MALANG', '0341 - 344616                 ', 'DAERAH BUNUL/MLG                        ');
INSERT INTO `user_apotek` VALUES ('96', 'DOMAT ANUGERAH FARMA,APT                ', 'JL. HAMID RUSDI H-23        ', 'MALANG', '0341-322485                   ', 'DAERAH BUNUL/MLG                        ');
INSERT INTO `user_apotek` VALUES ('97', 'BURING FARMA, APT                       ', 'JL. MAYJEN SUNGKONO NO 37 MALANG     ', 'MALANG', '081 333876843                 ', 'DAERAH BURING/MLG                       ');
INSERT INTO `user_apotek` VALUES ('98', 'KARINA,APT                              ', 'JL. MAYJEN SUNGKONO NO. 2 MALANG     ', 'MALANG', '0341 - 9771710                ', 'DAERAH BURING/MLG                       ');
INSERT INTO `user_apotek` VALUES ('99', 'EVIN MALINDA                            ', 'JL SUMBER KEMBAR NO 12 DAMPIT        ', 'MALANG', '0341-7375505                  ', 'DAERAH DAMPIT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('100', 'LANCAR JAYA,TK                          ', 'JL. PRAMBANAN NO. 1 DAMPIT  ', 'MALANG', '0341-896866                   ', 'DAERAH DAMPIT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('101', 'SEMAR SAKTI,TK                          ', 'UTARA MASJID JAMI\' (DEPAN RSB DAMPIT)', 'MALANG', '0341-7077580                  ', 'DAERAH DAMPIT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('102', 'ANGKASA BARU, TK                        ', 'JL. GALUNGGUNG NO. 86       ', 'MALANG', '08883324377 - 0341 6266660    ', 'DAERAH DIENG/MLG                        ');
INSERT INTO `user_apotek` VALUES ('103', 'ARIS,TK                                 ', 'JL. DIENG ATAS NO. 26       ', 'MALANG', '089 673 609 092               ', 'DAERAH DIENG/MLG                        ');
INSERT INTO `user_apotek` VALUES ('104', 'CAHAYA SEHAT, APT                       ', 'JL. BUKIT DIENG BLOK B NO. 1', 'MALANG', '0341-582687                   ', 'DAERAH DIENG/MLG                        ');
INSERT INTO `user_apotek` VALUES ('105', 'RIZKY,TK                                ', 'JL.RAYA BUKIT DIENG NO. 12  ', 'MALANG', '341574920', 'DAERAH DIENG/MLG                        ');
INSERT INTO `user_apotek` VALUES ('106', 'S-MART,MM                               ', 'JL. DIENG ATAS (KARANG TENGAH) DEPAN SD KR.WIDORO I    ', 'MALANG', '0341-729 8877                 ', 'DAERAH DIENG/MLG                        ');
INSERT INTO `user_apotek` VALUES ('107', 'PARAMA SEMESTA MEDIKA, PT               ', 'JL. PUNCAK DIENG LL-2 NO 15 MALANG   ', 'MALANG', '0341 553306 - 085 108 3522 99 ', 'DAERAH DIENG/MLG                        ');
INSERT INTO `user_apotek` VALUES ('108', 'ANDHIKA, APT                            ', 'JL MAYJEN HARYONO NO 90     ', 'MALANG', '0341 - 572689                 ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('109', 'BU HAJI, APT                            ', 'JL. SIDOMAKMUR NO. 3 MULYOAGUNG KEC DAU KAB MALANG     ', 'MALANG', '0822 5955 2345                ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('110', 'EKONOMIS, TK                            ', 'JL. KARYAWIGUNA NO. 100 (BELAKANG DOM UNMUH)  ', 'MALANG', '0341- 466608                  ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('111', 'KARYA MANDIRI,TK (BENDUNGAN SIGURA-GURA)', 'JL. BENDUNGAN SIGURA-GURA NO.33      ', 'MALANG', '0341-577872                   ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('112', 'KAWAN SEHATI, APT                       ', 'JL. GAJAYANA NO 534 A       ', 'MALANG', '7774506', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('113', 'LANDUNG SARI FARMA, APT                 ', 'JL TIRTO UTOMO NO 25 C LANDUNGSARI MALANG     ', 'MALANG', '85204925860', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('114', 'LOH JINAWI, TK                          ', 'JL. KARYA WIGUNA NO. 348 TEGALGONDO (BLKG UNMUH)       ', 'MALANG', '0341- 464797                  ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('115', 'MAPAN, APT                              ', 'JL. MAYJEN PANJAITAN 172 MALANG      ', 'MALANG', '0341 - 588745                 ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('116', 'MEDISON CARE, APT                       ', 'JL. MT. HARYONO (DINOYO)    ', 'MALANG', '0341-575048,552364            ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('117', 'PERTELON, TK                            ', 'JL. MT. HARYONO GANG XIII NO. 456 DINOYO      ', 'MALANG', '0341-5186162                  ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('118', 'SURYA ABADI, APT (RUKO LANDUNG SARI)    ', 'JL. RAYA TLOGOMAS RUKO LANDUNG SARI KAV 5     ', 'MALANG', '82141000041', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('119', 'TELAGA NABI, APT                        ', 'JL. RAYA SUMBER SARI NO. 254 C MALANG', 'MALANG', '0898 0635765                  ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('120', 'TUNGGAL JAYA, TK                        ', 'JL. KERTORAHARJO NO. 26 LOWOKWARU    ', 'MALANG', '0341-581255                   ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('121', '5 AKORDION APT                          ', 'JL. AKORDION UTARA RUKO PERMATA AKORDION KAV 5', 'MALANG', '0821 4260 0333                ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('122', 'LUTFI,UD                                ', 'PURI CEMPAKA PUTIH BLOC U NO 15 GADANG        ', 'MALANG', '0341 8432800_082139500513     ', 'DAERAH GADANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('123', 'PELITA SEJAHTERA, APT                   ', 'JL KOLONEL SUGIONO RUKO GADANG ASRI KAV NO 7 GADANG    ', 'MALANG', '0341 804674                   ', 'DAERAH GADANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('124', 'POJOK,TK                                ', 'JL. BABATAN ARJOWINANGUN GADANG      ', 'MALANG', '0341 - 955 9009               ', 'DAERAH GADANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('125', 'SUKACITA,APT                            ', 'JL. KOL. SUGIONO (RAYA GADANG) NO. 40 GADANG  ', 'MALANG', '0341-832854                   ', 'DAERAH GADANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('126', 'USAHA BARU, TK                          ', 'PERUM GADANG REGENCY BLOK P 1        ', 'MALANG', '85755523089', 'DAERAH GADANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('127', 'K-24,APT (GATOT SUBROTO)                ', 'JL. GATOT SUBROTO NO. 102   ', 'MALANG', '0341 - 362556                 ', 'DAERAH GATOT SUBROTO                    ');
INSERT INTO `user_apotek` VALUES ('128', 'SAVITRI,TK                              ', 'JL. JUANDA NO. 15  ', 'MALANG', '0341-367 837                  ', 'DAERAH GATOT SUBROTO                    ');
INSERT INTO `user_apotek` VALUES ('129', 'ALILLA,APT                              ', 'JL. HAYAM WURUK NO. 22-A GONDANGLEGI ', 'MALANG', '0341-875836                   ', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('130', 'BOOM, MM                                ', 'JL HAYAM WURUK, GONDANGLEGI ', 'MALANG', '0341-8669503                  ', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('131', 'DAHLIA JAYA,TK                          ', 'JL. RAYA WONOKERTO NO. 2 BANTUR      ', 'MALANG', '0341 - 8148418                ', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('132', 'PAL SIDOREJO, APT                       ', 'JL. RAYA SIDOREJO NO. 30 KEC PAGELARAN KAB MALANG      ', 'MALANG', '081 233 685 919               ', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('133', 'SARIVIT                                 ', 'GONDANGLEGI        ', 'MALANG', '0341-7777225                  ', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('134', 'SARIVITA, APT                           ', 'PASAR GONDANG LEGI BEDAK 4C ', 'MALANG', '7777225', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('135', 'SYAWAL FARMA,APT                        ', 'JL. RAYA WONOKERTO BEDAK 10 GONDANGLEGI       ', 'MALANG', '0341-7338662                  ', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('136', 'RIO MART,MM                             ', 'JL. BENDUNGAN SIGURA-GURA BARAT RUKO GRIYA MANDIRI KAV. 5       ', 'MALANG', '0341 - 57 57 84               ', 'DAERAH ITN/MLG                          ');
INSERT INTO `user_apotek` VALUES ('137', 'SANTANA,TK                              ', 'JL. BENDUNGAN SUTAMI NO. 16-B        ', 'MALANG', '0341-572518                   ', 'DAERAH ITN/MLG                          ');
INSERT INTO `user_apotek` VALUES ('138', 'SUTAMI,APT                              ', 'JL. BENDUNGAN SUTAMI KAV-3 RUKO MALANG        ', 'MALANG', '0341-7337339                  ', 'DAERAH ITN/MLG                          ');
INSERT INTO `user_apotek` VALUES ('139', 'JAMU IBOE CAP 2 NYONYA,TK               ', 'JL. RAYA JURANG WUGU NO. 26 JEDONG   ', 'MALANG', '0341 - 5344359                ', 'DAERAH JEDONG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('140', 'LONCENG MART, TK                        ', 'JL. RAYA JURANG WUGU WAGIR  ', 'MALANG', '0341-552319                   ', 'DAERAH JEDONG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('141', 'MULYA JAYA 1,TK                         ', 'JL. RAYA JEDONG NO. 38 MULYOREJO     ', 'MALANG', '0341-552320                   ', 'DAERAH JEDONG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('142', 'NING,TK                                 ', 'JL. BUDI UTOMO SEDUDUT 20   ', 'MALANG', '0341-567686                   ', 'DAERAH JEDONG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('143', 'SHEKINAH RAPHA, APT                     ', 'JL. RAYA KEBON SARI NO. 7 MALANG     ', 'MALANG', '0341 - 802826 - 802827        ', 'DAERAH KACUK/MLG                        ');
INSERT INTO `user_apotek` VALUES ('144', 'R3 FARMA, APT                           ', 'JL. SATSUIT TUBUN NO.10, KEBONSARI   ', 'MALANG', '0341 - 9078392                ', 'DAERAH KACUK/MLG                        ');
INSERT INTO `user_apotek` VALUES ('145', 'ASIH JAYA, TO                           ', 'JL DIPONEGORO NO 40 KARANGPLOSO      ', 'MALANG', '0341-461755                   ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('146', 'AZZAMART,MM                             ', 'JL. ATLETIK B-4    ', 'MALANG', '0341-8610716                  ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('147', 'DAMAI SEJAHTERA,APT                     ', 'JL. KERTANEGARA NO. 37 KARANGPLOSO   ', 'MALANG', '0341-9838228                  ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('148', 'ENGGAL MUKTI,TK                         ', 'JL. SUROPATI 18 KARANGPLOSO ', 'MALANG', '0341-7016700                  ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('149', 'HAMAS FARMA, APT                        ', 'JL. KERTANEGARA RUKO KARANGPLOSO SQUARE KAV 6 ', 'MALANG', '0341 - 9447825                ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('150', 'HERO,TK                                 ', 'PASAR KARANGPLOSO  ', 'MALANG', '0341-461457                   ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('151', 'KONDANG WARAS,APT                       ', 'JL. RAYA TAKERAN NGIJO NO.50 KARANGPLOSO      ', 'MALANG', '0341-6413158                  ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('152', 'MITRA CENTRAL ASIA, PT                  ', 'PERGUDANGAN KL BIZ BLOK C 8 KARANGLO MALANG   ', 'MALANG', '031 8480825,8480826           ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('153', 'REJEKI,TK                               ', 'PASAR KARANGPLOSO  ', 'MALANG', '0341-467072                   ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('154', 'SRI RATNA HUSADA,APT                    ', 'JL. PERTAMANAN KEPUHARJO KARANGPLOSO ', 'MALANG', '0341-464672                   ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('155', 'SUBUR JAYA, TK                          ', 'JL. NGIJO BARAT SAMSAT KARANGPLOSO   ', 'MALANG', '0341-468144                   ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('156', 'WAHYU JAYA,APT                          ', 'JL. PERUSAHAAN NO. 16 TUNJUNG TIRTO KARANG PLOSO       ', 'MALANG', '085 100 555757                ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('157', 'NURUS SYIFA,APT                         ', 'JL. RAYA KEBON AGUNG NO. 29 ', 'MALANG', '0341-806632                   ', 'DAERAH KEBONAGUNG/MLG                   ');
INSERT INTO `user_apotek` VALUES ('158', 'AL-KARIMA 2,APT                         ', 'JL. KAWI NO. 25 KEPANJEN    ', 'MALANG', '0341-6701830                  ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('159', 'AREMA,APT                               ', 'JL. SULTAN AGUNG NO. 85 KEPANJEN     ', 'MALANG', '0341-397167                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('160', 'AZZAHRA SLOROK FARMA                    ', 'JL. RAYA SLOROK NO. 1 RT 09 RW 03 KEL SLOROK, KEC KROMENGAN KAB MALANG   ', 'MALANG', '0341 805322                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('161', 'BARUMUDA, TK                            ', 'JL A YANI NO 17 KEPANJEN    ', 'MALANG', '0341 395669                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('162', 'BUNGA JAYA KUSUMA, APT                  ', 'JL. RAYA KETAPANG NO. 1 RT 01 RW 01 DESA SUKORAHARJO, KEC KEPANJEN KAB MALANG     ', 'MALANG', '0341 7000027 - 398777         ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('163', 'DIAN, APT                               ', 'JL. SULTAN AGUNG NO. 62 KEPANJEN     ', 'MALANG', '0341-395386                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('164', 'ELDY FARMA, APT                         ', 'JL. RAYA GENENGAN 254 RT 3 RW 9 PAKISAJI KAB MALANG    ', 'MALANG', '0341 - 4435575                ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('165', 'GEMA MART                               ', 'JL. RAYA GENENGAN NO. 1 PAKISAJI     ', 'MALANG', '0341 - 8100910                ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('166', 'HIDAYAH 2,TK                            ', 'JL RAYA SUMEDANG NO 343 MALANG       ', 'MALANG', '082 3015 157 96               ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('167', 'KARYA MANDIRI,UD                        ', 'JL. RAYA SUKORAHARJO NO. 4 KEPANJEN  ', 'MALANG', '0341-392108                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('168', 'PALANG MERAH INDONESIA                  ', 'JL. PANJI DEPAN KANTOR DPR KABUPATEN MALANG KEPANJEN   ', 'MALANG', '-                             ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('169', 'PETRA,APT                               ', 'JL. A. YANI D-46 KEPANJEN   ', 'MALANG', '0341 - 397835                 ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('170', 'SAWUNGGALING,APT                        ', 'JL. TENGKU UMAR NO. 15 KEPANJEN      ', 'MALANG', '0341-391254                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('171', 'SLOROK SEHAT, APT                       ', 'JL. RAYA SLOROK NO. 62 KEPANJEN      ', 'MALANG', '0341-9268710 - 085 790813079  ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('172', 'STAR, TK                                ', 'JL. MELATI NO. 193 RT 08/ RW 01 CEMPOKO MULYO KEPANJEN ', 'MALANG', '0341 - 396562                 ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('173', 'SUMBER BARU,SWALAYAN                    ', 'JL. RAYA SUKORAHARJO NO. 232 KEPANJEN', 'MALANG', '0341-397292                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('174', 'TIGA F,TK                               ', 'JL. RAYA PANARUKAN NO. 3-F KEPANJEN  ', 'MALANG', '0341-5488843                  ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('175', 'NAROTAMA,APT                            ', 'JL. NAROTAMA NO. 91-B       ', 'MALANG', '0341-5473221                  ', 'DAERAH KESATRIAN                        ');
INSERT INTO `user_apotek` VALUES ('176', 'FENZA FARMA, APT                        ', 'JL. KLAYATAN III NO. 13 MALANG       ', 'MALANG', '0341 - 802540                 ', 'DAERAH KLAYATAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('177', 'ANGGREK SWALAYAN                        ', 'JL KLAYATAN GANG 3 NO 12 B SUKUN     ', 'MALANG', '85749464386', 'DAERAH KLAYATAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('178', 'UNANG SARI 1,TK                         ', 'JL. KLAYATAN GG 2 NO. 1     ', 'MALANG', '0341-801463                   ', 'DAERAH KLAYATAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('179', 'AZZAMART 2,MM                           ', 'RUKO HAMID RUSDI KAV 4/A-B  ', 'MALANG', '0341-9376967                  ', 'DAERAH LAVALETTE/MLG                    ');
INSERT INTO `user_apotek` VALUES ('180', 'BENGAWAN SOLO, APT                      ', 'JL R. TUMENGGUNG SURYO NO 36 MLG     ', 'MALANG', '0341 470330                   ', 'DAERAH LAVALETTE/MLG                    ');
INSERT INTO `user_apotek` VALUES ('181', 'SRIKANDI, APT                           ', 'JL. WR SUPRATMAN NO 10  MLG ', 'MALANG', '416047', 'DAERAH LAVALETTE/MLG                    ');
INSERT INTO `user_apotek` VALUES ('182', 'ANUGRAH, TK(LAWANG)                     ', 'JL AHMAD YANI NO 232 SUMBERPORONG LAWANG      ', 'MALANG', '0341 423918                   ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('183', 'AZRA FARMA, APT                         ', 'JL. AHMAD YANI GG 4 LAWANG- KAB MALANG        ', 'MALANG', '0851 04447038                 ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('184', 'BULAN,TK                                ', 'JL. PANGLIMA SUDIRMAN NO. 116 LAWANG ', 'MALANG', '0341-7576951                  ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('185', 'CEMARA LAWANG,APT                       ', 'JL. DIPONEGORO BLOK C-18 LAWANG      ', 'MALANG', '0341-421307                   ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('186', 'ELMA FARMA,APT                          ', 'JL. DR. CIPTO NO. 70 LAWANG ', 'MALANG', '0341-423328                   ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('187', 'FATIH FARMA, APT (MALANG)               ', 'JL. SANAN 36 WATUGEDE SINGOSARI      ', 'MALANG', '0856 4955 9128                ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('188', 'HERO,APT                                ', 'JL. PANGLIMA SUDIRMAN NO. 92 LAWANG  ', 'MALANG', '0341 - 427309                 ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('189', 'JAYA MEDIKA, TO                         ', 'JL DR CIPTO GANG 6/9 RT 2 RW 3 BEDALI LAWANG MLG       ', 'MALANG', '81331952259', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('190', 'LAWANG,APT                              ', 'JL. DIPONEGORO NO. 2 LAWANG ', 'MALANG', '0341-426208                   ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('191', 'NITASARI,APT                            ', 'JL. PANGLIMA SUDIRMAN B-1/9 PASAR LAWANG      ', 'MALANG', '0341-427318                   ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('192', 'SINAR BAKTI,APT                         ', 'JL. SLAMET RIYADI NO 35 RT 007 RW 001 - KEL LAWANG KEC LAWANG   ', 'MALANG', '0341 - 9001396                ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('193', 'SUROPATI 20, APT                        ', 'JL. UNTUNG SUROPATI 20 - LAWANG      ', 'MALANG', '0341 - 8401936                ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('194', 'WIJAYA,APT                              ', 'JL. PANGLIMA SUDIRMAN LAWANG', 'MALANG', '0341-426790                   ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('195', 'YUWANDI FARMA, APT                      ', 'JL. A. YANI NO 217 DESA SUMBERPORONG KEC LAWANG KAB MALANG      ', 'MALANG', '089 86754349                  ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('196', 'AIR MANCUR,TK (MERGAN)                  ', 'JL JUPRI NO 627 C  ', 'MALANG', '0341-563161                   ', 'DAERAH MERGAN/MLG                       ');
INSERT INTO `user_apotek` VALUES ('197', 'POKA-POKA,TK (MYLIN,TK)                 ', 'JL. MERGAN RAYA NO. 71      ', 'MALANG', '0341 - 36 55 09               ', 'DAERAH MERGAN/MLG                       ');
INSERT INTO `user_apotek` VALUES ('198', 'SOPONGIRO,TK                            ', 'JL. IR. RAIS NO. 119 - C    ', 'MALANG', '0341 - 365 999, 0888 0412 1208', 'DAERAH MERGAN/MLG                       ');
INSERT INTO `user_apotek` VALUES ('199', 'UNANG SARI 2,TK                         ', 'JL. JUPRI NO. 631 MERGAN    ', 'MALANG', '0341-351130                   ', 'DAERAH MERGAN/MLG                       ');
INSERT INTO `user_apotek` VALUES ('200', 'ZULFA,TK                                ', 'JL. MERGAN GG 19 NO. 57     ', 'MALANG', '0341 - 77 83 147              ', 'DAERAH MERGAN/MLG                       ');
INSERT INTO `user_apotek` VALUES ('201', 'HORISON, APT                            ', 'JL KOLONEL SUGIONO NO 75    ', 'MALANG', '0341 363573                   ', 'DAERAH MERGOSONO/MLG                    ');
INSERT INTO `user_apotek` VALUES ('202', 'LAJU JAYA SWALAYAN                      ', 'JL PELABUHAN TANJUNG PERAK NO 34 KLAYATAN GANG 3       ', 'MALANG', '8.192.306.085.259.300.000', 'DAERAH MERGOSONO/MLG                    ');
INSERT INTO `user_apotek` VALUES ('203', 'ZENSAWAK AIR MANCUR,TK                  ', 'JL. MARTADINATA NO. 82-B    ', 'MALANG', '0341-363880                   ', 'DAERAH MERGOSONO/MLG                    ');
INSERT INTO `user_apotek` VALUES ('204', 'AGRO MAKMUR, TOSERBA                    ', 'JL. A. YANI NO. 50 NGAJUM KEPANJEN   ', 'MALANG', '0341-392717 - 0823 010 49969  ', 'DAERAH NGAJUM/MLG                       ');
INSERT INTO `user_apotek` VALUES ('205', 'POGOG,TK                                ', 'JL. RAYA PALAKAN NGAJUM KEPANJEN     ', 'MALANG', '0341-8109491                  ', 'DAERAH NGAJUM/MLG                       ');
INSERT INTO `user_apotek` VALUES ('206', 'SUMBER HARAPAN,TK                       ', 'JL. RAYA PALAKAN NO. 4 NGAJUM        ', 'MALANG', '0341-392712                   ', 'DAERAH NGAJUM/MLG                       ');
INSERT INTO `user_apotek` VALUES ('207', 'ARIF,TK                                 ', 'JL. ABDILLAH NO. 99 GENITRI TIRTOMOYO PAKIS   ', 'MALANG', '0341-5496569                  ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('208', 'BAHRUDIN,APT                            ', 'JL. PAKIS KEMBAR NO. 109 PAKIS       ', 'MALANG', '0341-793525                   ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('209', 'BUGIS SEHAT, APT                        ', 'JL. RAYA BUGIS NO. 17 PAKIS ', 'MALANG', '0341-5374839 / 081233182248   ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('210', 'CAHAYA SEJATI FARMA,APT                 ', 'JL. ASRIKATON NO. 25 - PAKIS', 'MALANG', '0341 9655556                  ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('211', 'FORMULA, APT                            ', 'JL. SUGRIWA 5 A NO. 21 KEC PAKIS KAB MALANG   ', 'MALANG', '0341 - 3021789                ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('212', 'GENTONG GROSIR BERAS,TK                 ', 'JL. H.NURROIS NO. 40 TIRTOMOYO PAKIS ', 'MALANG', '0341-794313                   ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('213', 'NABILA FARMA,APT                        ', 'JL. RAYA BUGIS NO. 60 PAKIS ', 'MALANG', '0341-791674                   ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('214', 'ATRACO                                  ', 'JL. RAYA KARANGDUREN PAKISAJI RT 11 RW 02     ', 'MALANG', '085 2341 36303                ', 'DAERAH PAKISAJI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('215', 'BENDO FARMA,APT                         ', 'JL. RAYA KARANGPANDAN NO. 241        ', 'MALANG', '0341-804250                   ', 'DAERAH PAKISAJI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('216', 'PAKISAJI,APT                            ', 'JL. RAYA PAKISAJI NO. 338   ', 'MALANG', '0341-805322                   ', 'DAERAH PAKISAJI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('217', 'PAJAJARAN,APT                           ', 'JL. PAJAJARAN NO.12', 'MALANG', '0341-366577                   ', 'DAERAH PATIMURA,SUTOMO/MLG              ');
INSERT INTO `user_apotek` VALUES ('218', 'PATIMURA,APT                            ', 'JL. PATIMURA NO. 55', 'MALANG', '0341-2127912                  ', 'DAERAH PATIMURA,SUTOMO/MLG              ');
INSERT INTO `user_apotek` VALUES ('219', 'POP MEDIKA,APT                          ', 'JL. HASYIM ASHARI NO. 40 RUKO KAUMAN KAV. 1 MALANG     ', 'MALANG', '0341-344391                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('220', 'ALAM JAYA,APT                           ', 'JL. PASAR BESAR NO. 110     ', 'MALANG', '0341-327294                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('221', 'FAJAR JAYA,TO                           ', 'JL.  PASAR BESAR NO. 106    ', 'MALANG', '0341-366902                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('222', 'MAJU JAYA 2,TK                          ', 'JL. SERSAN HARUN NO. 54     ', 'MALANG', '0341-350364                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('223', 'SARI SEHAT FARMA, APT                   ', 'JL PASAR BESAR NO 108       ', 'MALANG', '0341 325393                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('224', 'CANTIKA,TK                              ', 'JL. SYARIF AL-GODRI NO. 28  ', 'MALANG', '0341-7630101                  ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('225', 'LANGGENG, TK                            ', 'JL. KYAI TAMIN 77 - MALANG  ', 'MALANG', '7078181', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('226', 'SINAR KENCANA,APT                       ', 'JL. ADE IRMA SURYANI NO. 30 ', 'MALANG', '0341-367004                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('227', 'SUMBER REJEKI, TK (MALANG)              ', 'JL. PASAR BESAR SQUARE 124 NO. 30    ', 'MALANG', '0341 - 361581/ 087 859245819  ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('228', 'TONGAN,APT                              ', 'JL. ADE IRMA SURYANI NO. 15-A        ', 'MALANG', '0341-326169                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('229', 'DELTA, TK                               ', 'JL RAYA LEGOK NO 2 PANARUKAN KEPANJEN', 'MALANG', '0341-9061948                  ', 'DAERAH PENARUKAN/MLG                    ');
INSERT INTO `user_apotek` VALUES ('230', 'PENARUKAN,APT                           ', 'JL. H.M. SUN\'AN,SH NO. 90-A KEPANJEN ', 'MALANG', '0341 - 396812                 ', 'DAERAH PENARUKAN/MLG                    ');
INSERT INTO `user_apotek` VALUES ('231', 'ANUGERAH,TK (PUJON)                     ', 'JL. PATUNG SAPI RUKO A-1, A-2, A-3 PUJON      ', 'MALANG', '0341-5025597, 081 334 369 909 ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('232', 'IJO,TO (PUJON)                          ', 'JL ABDUL MANAN WIJAYA NO 234 PUJON   ', 'MALANG', '0341-524677                   ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('233', 'KABOEL,TK                               ', 'PASAR PUJON BEDAK 21        ', 'MALANG', '0341-7773050                  ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('234', 'PERKASA,TK                              ', 'JL. ABDUL MANAN PUJON       ', 'MALANG', '0341 - 5466888                ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('235', 'SUMBER REJEKI,TK (PUJON)                ', 'SEBELAH PATUNG SAPI (DEKAT PAK KASIADI) PUJON ', 'MALANG', '081 333 922 277               ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('236', 'SUMBER WANGI,TK                         ', 'JL BROMO NO 26 PUJON        ', 'MALANG', '0341 7681966                  ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('237', 'SUMBER WARAS 1,TO                       ', 'JL. BROMO NO. 88 PUJON      ', 'MALANG', '0838 341 49177/ 081 515 360814', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('238', 'TIRTA ANANDA FARMA,APT                  ', 'JL. ABDUL MANAN WIJAYA NO. 263 PUJON ', 'MALANG', '0341-8696098                  ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('239', 'BU YUYUT,TK                             ', 'JL. JAKSA AGUNG SUPRAPTO GG I NO. 59 ', 'MALANG', '081 805 042 360               ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('240', 'BUNGA MELATI,APT                        ', 'JL. JAKSA AGUNG SUPRAPTO NO. 23      ', 'MALANG', '0341-336271                   ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('241', 'GITA FARMA,APT                          ', 'JL. BELAKANG RSSA NO. 1     ', 'MALANG', '0341-948 7883                 ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('242', 'MITRA SEHAT, TK                         ', 'JL. PATIMURA NO 55 - MALANG ', 'MALANG', '0888 555 8822                 ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('243', 'NARITA,TK                               ', 'JL. LEMBANG NO. 22 ', 'MALANG', '0341-909 6188                 ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('244', 'SETIA,TK                                ', 'JL. JAKSA AGUNG SUPRAPTO GG. I NO. 6 ', 'MALANG', '0341-350335                   ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('245', 'SULASTRI,TK                             ', 'JL. JAKSA AGUNG SUPRAPTO GG.2 NO. 41 ', 'MALANG', '0341-369668                   ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('246', 'D3 FARMA, APT                           ', 'JL. TERUSAN WISNUWARDHANA 37 A MALANG', 'MALANG', '0851 00044433                 ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('247', 'ELLADERMA, APT                          ', 'JL. KUNTO BHASWORO 6/6 MALANG        ', 'MALANG', '081 234579780                 ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('248', 'GEDE, TK                                ', 'JL. JAYA SRANI 1 BLOK7 I/ 33 SAWOJAJAR II MALANG       ', 'MALANG', '82231289600', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('249', 'NDOG BARIS, CV                          ', 'JL. DANAU JONGE H4 - E47 SAWOJAJAR   ', 'MALANG', '081 555 12367                 ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('250', '\"AA\",TK                                 ', 'JL. RAYA SAWOJAJAR 15 KAV. 5 (GG.XV UTARA MASJID)      ', 'MALANG', '0341-5465583                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('251', 'ARTOMORO                                ', 'PASAR MADYOPURO BEDAK NO 9 KEDUNGKANDANG      ', 'MALANG', '0341-9841196                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('252', 'FA2FA JAYA, APT                         ', 'JL. TERUSAN DANAU KERINCI KAV 14 - RUKO KERINCI SQUARE - SAWOJAJAR       ', 'MALANG', '0341 - 8181445                ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('253', 'IDOLA MEDIKA, APT                       ', 'JL. MADYOPURO NO. 36 MALANG ', 'MALANG', '0341 - 713655                 ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('254', 'INTERNA,APT                             ', 'JL. DANAU KERINCI RAYA F4/E16 SAWOJAJAR       ', 'MALANG', '0341-713186                   ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('255', 'JEMBAWAN,APT                            ', 'JL. JEMBAWAN I 3J/ 1C SAWOJAJAR II   ', 'MALANG', '0341 - 8853300                ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('256', 'K-24,APT (SAWOJAJAR)                    ', 'JL. DANAU TOBA E-4-A/14 KAV. F SAWOJAJAR      ', 'MALANG', '0341-711678                   ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('257', 'KUSUMA LESTARI,APT                      ', 'JL. DANAU SENTANI H-1/B-37 SAWOJAJAR ', 'MALANG', '0341-9171817                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('258', 'LIMBOTO 23,APT                          ', 'JL. DANAU LIMBUTU RAYA BLOK A-5 NO. C-23 SAWOJAJAR     ', 'MALANG', '0341-9779970                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('259', 'MAHARDIKA JAYA,APT                      ', 'JL. KI AGENG GRIBIG NO. 35  ', 'MALANG', '0341-717149                   ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('260', 'RAINBOW,APT                             ', 'RUKO SAWOJAJAR MAS M-2 KEDUNG KANDANG MALANG  ', 'MALANG', '0341 7354320                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('261', 'REJEKI SEHAT,UD                         ', 'JL. KAPININDA NO. 9 SAWOJAJAR 2      ', 'MALANG', '0341-7843863                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('262', 'SABILILLAH FARMA                        ', 'JL. KI AGENG GRIBIG NO.10   ', 'MALANG', '8441818', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('263', 'SAWOJAJAR INDAH,APT                     ', 'JL.DANAUTOBA BLOK A-6 RUKO SAWOJAJAR ', 'MALANG', '0341-714028                   ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('264', 'SAWOJAJAR MAS,APT                       ', 'JL. RAYA SAWOJAJAR RUKO SAWOJAJAR MAS NO. 15-16        ', 'MALANG', '0341-2991622                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('265', 'TOMBO URIP, APT                         ', 'JL. KI AGENG GRIBIG NO. 6   ', 'MALANG', '0341 - 714193                 ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('266', 'ZAITUN,APT                              ', 'JL. DANAU BRATAN C4/A14 SAWOJAJAR    ', 'MALANG', '0341-722537-9052888           ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('267', 'GALUH, MM                               ', 'JL. SEMERU 34      ', 'MALANG', '(0341) 343879                 ', 'DAERAH SEMERU,KAWI,BROMO,IJEN/          ');
INSERT INTO `user_apotek` VALUES ('268', 'KAWI,APT                                ', 'JL. KAWI KIOS 3-4  ', 'MALANG', '0341-563180                   ', 'DAERAH SEMERU,KAWI,BROMO,IJEN/          ');
INSERT INTO `user_apotek` VALUES ('269', 'WILIS HEALTH PHARMACY,APT               ', 'JL. SIMPANG WILIS INDAH NO. 5        ', 'MALANG', '0341 - 554134                 ', 'DAERAH SEMERU,KAWI,BROMO,IJEN/          ');
INSERT INTO `user_apotek` VALUES ('270', 'WILIS,APT                               ', 'JL. WILIS NO. 37-D ', 'MALANG', '0341-556728                   ', 'DAERAH SEMERU,KAWI,BROMO,IJEN/          ');
INSERT INTO `user_apotek` VALUES ('271', 'MULYOAGUNG FARMA, APT                   ', 'JL. RAYA SENGKALING 162     ', 'MALANG', '0341-2251122/ 088805555222    ', 'DAERAH SENGKALING/MLG                   ');
INSERT INTO `user_apotek` VALUES ('272', 'SENGKALING,APT                          ', 'JL. RAYA JETIS NO. 72 MULYOAGUNG     ', 'MALANG', '0341-469769                   ', 'DAERAH SENGKALING/MLG                   ');
INSERT INTO `user_apotek` VALUES ('273', 'SURYA ABADI,APT                         ', 'JL. TLOGOMAS (RUKO TLOGOMAS) KAV. 7  ', 'MALANG', '0341-9618405                  ', 'DAERAH SENGKALING/MLG                   ');
INSERT INTO `user_apotek` VALUES ('274', 'AFFAN,TK                                ', 'PERUM BUMI MONDOROKO RAYA B2-25 SINGOSARI     ', 'MALANG', '0341 - 9672 770, 53 69 797    ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('275', 'AKBAR JAYA GROSIR                       ', 'JL. PERUSAHAAN TUNJUNG TIRTO - SINGOSARI (DEPAN SOTO PAK AMIR)  ', 'MALANG', '0888 03806866                 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('276', 'AMORA ,MM                               ', 'JL. BUMI MONDOROKO RAYA BLOK B/5 SINGOSARI    ', 'MALANG', '0341-455932                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('277', 'ARTA MEDICA,TO                          ', 'JL. TUMAPEL NO. 96 SINGOSARI', 'MALANG', '0341 - 452 040                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('278', 'ARTA MEDICA2, TO                        ', 'PERUM BUMI MONDOROKO RAYA AJ 26      ', 'MALANG', '81945995503', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('279', 'ARTANTI,APT                             ', 'JL. STASIUN NO. 26-28 SINGOSARI      ', 'MALANG', '0341-451623                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('280', 'BAITUNA,TK                              ', 'PERUM BUMI MONDOROKO RAYA BLOK AL NO. 51 SINGOSARI     ', 'MALANG', '0341-908 2227                 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('281', 'C 22, TK                                ', 'PASAR SINGOSARI BEDAK C 22  ', 'MALANG', '0341-7012613                  ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('282', 'FITALAB UTAMA KARYA,PT                  ', 'JL. RAYA KARANGLO B1 SINGOSARI       ', 'MALANG', '0341-415755 / 081 396 515 399 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('283', 'GALUH,TK                                ', 'SEBELAH BALAI DESA WATU GEDE SINGOSARI        ', 'MALANG', '5471943', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('284', 'HARAPAN JAYA,TK                         ', 'JL. SIDOMULYO NO. 36 SINGOSARI       ', 'MALANG', '0341-456076                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('285', 'HARI,TK (P.NUR)                         ', 'JL. PASAR DENGKOL BEDAK 4 (NO.8) SINGOSARI    ', 'MALANG', '0341-452615,5369584           ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('286', 'MAHARDIKA SENTOSA,UD                    ', 'JL. BALEKAMBANG NO. 17 WATU GEDE SINGOSARI    ', 'MALANG', '0857 3344 7245                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('287', 'MANDIRI,TK                              ', 'JL. RAYA DENGKOL SINGOSARI  ', 'MALANG', '0341-457500                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('288', 'MAWAR JAYA,TK                           ', 'JL. MAWAR WATU GEDE NO. 5 SINGOSARI  ', 'MALANG', '0341 - 3160616                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('289', 'MEGA SARI, APT                          ', 'PERUM MONDOROKO REGENCY BLOK AA KAV 2 SINGOSARI        ', 'MALANG', '453377', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('290', 'MELATI SEHAT,TK                         ', 'JL. RY. SINGOSARI NO. 71 SINGOSARI   ', 'MALANG', '085 791 930 899               ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('291', 'MONDOROKO LESTARI, TK                   ', 'PERUM BUMI MONDOROKO RAYA BLOK AK-35 SINGOSARI', 'MALANG', '0822 30107610                 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('292', 'MULTI FARMA, APT                        ', 'JL TUMAPEL KAVLING 3 SINGOSARI       ', 'MALANG', '459345, 085755287840          ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('293', 'NUSA MEDICA,APT                         ', 'PERUM BMR BLOK AJ NO.77 - SINGOSARI - MALANG  ', 'MALANG', '0341 8149698                  ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('294', 'PERINTIS JAYA, TK                       ', 'JL. RAYA DENGKOL 98 SINGOSARI        ', 'MALANG', '0341 - 455292                 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('295', 'REJEKI,TK (SINGOSARI)                   ', 'JL. TUMAPEL NO. 93 SINGOSARI', 'MALANG', '0341 - 451 389                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('296', 'RIZQI,TK                                ', 'JL. RONGGOWUNI 73 SINGOSARI ', 'MALANG', '0341 - 733 5485               ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('297', 'SAHABAT JAYA,APT                        ', 'JL PANGLIMA SUDIRMAN NO 96 SINGOSARI ', 'MALANG', '0341-458172                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('298', 'SARI INDAH, APT                         ', 'JL. KERTANEGARA NO. 20 KEC SINGOSARI KAB MALANG        ', 'MALANG', '0341 - 6600771                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('299', 'SINGOSARI,APT                           ', 'JL. RAYA SINGOSARI NO. 47 SINGOSARI  ', 'MALANG', '0341-458696                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('300', 'SUKMO, APT                              ', 'JL. DIPONEGORO  260 KEL. ARDIMULYO SONG SONG  ', 'MALANG', '0821 657 372 69               ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('301', 'YULI,TK (PODO TRESNO)                   ', 'JL. MUJAMIL RT 03 RW 09 NO. 10 TANJUNG BANJARARUM      ', 'MALANG', '0341-997 1915                 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('302', 'YUSUF HADI,TK                           ', 'PASAR SINGOSARI    ', 'MALANG', '0341-451751                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('303', 'FATIH FARMA, APT                        ', 'JL SANAN NO 36 RT 2, RW 1, WATUGEDE, SINGOSARI MALANG  ', 'MALANG', '0856 4955 9128                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('304', 'GN. PENANGGUNGAN 1653 DPL,TK            ', 'JL. WATU GEDE NO. 10 SINGOSARI       ', 'MALANG', '0341-7328284                  ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('305', 'JAMAS,APT                               ', 'JL. MASJID NO. 2 SINGOSARI  ', 'MALANG', '0341 - 452988                 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('306', 'NAYU FARMA, APT                         ', 'JL. RAYA KARANGLO NO. 52 SINGOSARI - MALANG   ', 'MALANG', '0341 - 441371/ 08125248018    ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('307', 'SALEHA RIZKY FARMA, APT                 ', 'JL. ROGONOTO TIMUR 22 - SINGOSARI    ', 'MALANG', '0341 - 9622609                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('308', 'SINGHASARI  MEDICA, APT                 ', 'RUKO SINGOSARI BUSSINESS  CENTER KAV. 8A JL. KLAMPOK KEC SINGOSARI KAB MALANG     ', 'MALANG', '085 2571 44651                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('309', 'AIR MANCUR,TK (SLOROK)                  ', 'JL. RAYA SLOROK NO. 125     ', 'MALANG', '0341-385620                   ', 'DAERAH SLOROK/MLG                       ');
INSERT INTO `user_apotek` VALUES ('310', 'HAPPY BABY SHOP, TK                     ', 'JL. SOEKARNO HATTA PTP 2 KAV. 7      ', 'MALANG', '9621079 - 085 101621079       ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('311', 'LINDA,TK                                ', 'JL. REMUJUNG NO. 24 SOEKARNO-HATTA   ', 'MALANG', '85933009665', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('312', 'MITRA ASKARYA,APT                       ', 'JL. SOEKARNO HATTA NO. 7    ', 'MALANG', '0341 480605                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('313', 'NATASHA , APT (SUKARNO HATTA)           ', 'JL. SUKARNO HATTA RUKO PTP II NO. 1 KAV 5 - 6 ', 'MALANG', '0341 - 488290                 ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('314', 'AFIN, TK                                ', 'JL. SUDIMORO 166 RT 01 RW 07', 'MALANG', '0341 - 8119657                ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('315', 'AMANAH, TK                              ', 'JL. SOEKARNO HATTA TIMUR NO. 2-A     ', 'MALANG', '0341-415455                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('316', 'AZ-ZAHRA,TK                             ', 'JL. SEMANGGI BARAT NO. 12   ', 'MALANG', '0341-5304304                  ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('317', 'BOY CELL                                ', 'JL. SUDIMORO NO. 8 (SUKARNO HATTA)   ', 'MALANG', '0341-494114                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('318', 'CANDI PANGGUNG,APT                      ', 'JL. CANDI PANGGUNG NO. 51-A MALANG   ', 'MALANG', '0341-400445                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('319', 'FAIZ FARMA,APT                          ', 'JL.BUNGA COKLAT NO. 6       ', 'MALANG', '0341-402963                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('320', 'GALERI CANDRA,APT                       ', 'JL. ANDONG NO. 3   ', 'MALANG', '0341-478571                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('321', 'GRIYA MEDIKA, APT                       ', 'JL SUKARNO HATTA , RUKO NO 30 D      ', 'MALANG', '0341-498774                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('322', 'HARTAWAN MAKMUR,TK                      ', 'PERUM TAMAN CANDI PANGGUNG NO. 13    ', 'MALANG', '0341-403520                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('323', 'JINGGA FARMA, APT                       ', 'RUKO  PUNCAK BOROBUDUR KAV 1 MALANG (TERUSAN SOE-HAT)  ', 'MALANG', ': 0811364032, (0341)9081110   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('324', 'LARIS,SWALAYAN                          ', 'PERUM PERMATA JINGGA RUKO I - II SOEKARNO HATTA        ', 'MALANG', '0341-408321                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('325', 'RAMADHANI, APT                          ', 'JL. MAYJEN PANJAITAN NO. 64 C        ', 'MALANG', '0341 - 579513 - 0811334662    ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('326', 'SOEKARNO HATTA,APT                      ', 'GRIYA SHANTA E-324 MALANG   ', 'MALANG', '0341 - 2208333                ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('327', 'SUHAT 24, APT                           ', 'JL. SUKARNO HATTA PTP 01 NO. 66 B    ', 'MALANG', '0341 - 4373903                ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('328', 'TJINTA MM                               ', 'RUKO MUTIARA JINGGA RESIDENCE BB1 (JL. LONCAT INDAH LOWOKWARU)  ', 'MALANG', '88805832615', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('329', 'TRI SEHAT MAKMUR,APT                    ', 'JL. CANDI PANGGUNG BARAT NO. 3-A     ', 'MALANG', '0341-405056                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('330', 'BU SUGIARTI,TK                          ', 'JL. RAYA SUKORAHARJO        ', 'MALANG', '0341-5421456                  ', 'DAERAH SUKOHARJO/MLG                    ');
INSERT INTO `user_apotek` VALUES ('331', 'PURNAMA MEDICA, APT                     ', 'JL. SIMPANG KEPUH UTARA BLOK C NO. 71 MALANG  ', 'MALANG', '081 2312 14454                ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('332', '5 S, APT                                ', 'JL. RAYA KEPUH NO. 17 - MALANG       ', 'MALANG', '0341 - 802584/ 085 258428282  ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('333', 'BETANIA,APT                             ', 'JL. S.SUPRIYADI NO. 30-E    ', 'MALANG', '0341-362336                   ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('334', 'BINTANG KECIL,TK                        ', 'JL. S. SUPRIYADI NO. 53     ', 'MALANG', '0341-332452, 998 8481         ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('335', 'BU RAHMAT, TK                           ', 'JL MENCO NO 2 SUKUN MLG     ', 'MALANG', '0341 320753                   ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('336', 'KEPUH FARMA,APT                         ', 'JL. S. SUPRIADI NO. 9       ', 'MALANG', '0341-834055                   ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('337', 'METRO HUSADA,APT                        ', 'JL. KEPUH UTARA NO. 43 SUKUN MALANG  ', 'MALANG', '085 10031 6543                ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('338', 'NUKUS 24, APT                           ', 'JL. MERPATI UTARA 27 - A MALANG      ', 'MALANG', '0341 - 368410                 ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('339', 'RAFA ELIM MEDIKA, TK                    ', 'JL. S. SUPRIADI NO 74 KAV 1 - 5 SUKUN MALANG  ', 'MALANG', '0856 4993 6322                ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('340', 'RAHAYU, TK (SUKUN)                      ', 'JL. PELABUHAN KETAPANG NO. 20 (DEKAT KELURAHAN)        ', 'MALANG', '0341 - 5402950                ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('341', 'WAHANA RAHAYU,TK                        ', 'JL. RAYA KEPUH NO. 35 RT 04 RW 05    ', 'MALANG', '0341-803293                   ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('342', 'DAPUR IBU SWALAYAN                      ', 'JL. EMAS NO.35     ', 'MALANG', '81931878008', 'DAERAH SULFAT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('343', 'ELOK SWALAYAN                           ', 'JL.EMAS NO. 56     ', 'MALANG', '0341-7717739                  ', 'DAERAH SULFAT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('344', 'KARUNIA JAYA, APT                       ', 'JL. SIMPANG SULFAT UTARA NO. 19 B    ', 'MALANG', '081 8058 34536                ', 'DAERAH SULFAT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('345', 'MUNGIL AMANAH, TK                       ', 'JL. TERUSAN TITAN VI NO. 1  ', 'MALANG', '0341 - 487071                 ', 'DAERAH SULFAT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('346', 'PANDAN WANGI,APT                        ', 'JL. SIMPANG SULFAT UTARA 48 PANDAN WANGI BLIMBING      ', 'MALANG', '0851 0602 6464                ', 'DAERAH SULFAT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('347', 'PENTA MEDIKA,APT                        ', 'JL.  SULFAT NO. 84 ', 'MALANG', '0341-406743                   ', 'DAERAH SULFAT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('348', 'AL BARKAH SEHAT,APT (SUMBERPUCUNG)      ', 'JL. P. SUDIRMAN NO. 80 RT 09 RW 01 KEC SUMBERPUCUNG KAB MALANG  ', 'MALANG', ' 0341 - 384971                ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('349', 'HIDUP SEHAT,APT                         ', 'JL. JEND.SUDIRMAN NO. 18 SUMBER PUCUNG        ', 'MALANG', '0341-382347                   ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('350', 'JAYATSU FARMA, APT                      ', 'JL. STASIUN NO. 45 RT 17 RW 03 NGEBRUK KEC SUMBERPUCUNG KAB MALANG       ', 'MALANG', '0822 333 27153                ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('351', 'PELITA SEHAT SUMBERPUCUNG               ', 'JL. JEND. A. YANI NO 73 SUMBERPUCUNG ', 'MALANG', '082 3310 12749                ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('352', 'SENANDUNG, APT                          ', 'DUSUN BARISAN RT 06 RW 01 NO. 25 ARJOWILANGUN KEC KALIPARE KAB MALANG    ', 'MALANG', '085 - 100440388               ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('353', 'SUMBER PUCUNG,APT                       ', 'JL. JEND. SUDIRMAN NO. 117 SUMBER PUCUNG      ', 'MALANG', '0341-383525                   ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('354', 'SUMBER REJEKI,TO (SUMBER PUCUNG)        ', 'JL. JEND. SUDIRMAN NO. 80 (DEPAN BCA SUMBER PUCUNG)    ', 'MALANG', '0341-384971                   ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('355', 'AL-BAHRRU, APT                          ', 'JL. RAYA GUNUNG KAWI NO 21 - TALANG AGUNG', 'MALANG', '0341 - 7589877                ', 'DAERAH TALANG AGUNG/MALANG              ');
INSERT INTO `user_apotek` VALUES ('356', 'SAMBUNG SEHAT, APT                      ', 'JL. GUNUNG KAWI NO. 76 TALANG AGUNG', 'MALANG', '0341 - 7001374                ', 'DAERAH TALANG AGUNG/MALANG              ');
INSERT INTO `user_apotek` VALUES ('357', 'SUMBER JAYA,TK                          ', 'JL. IR. RAIS NO. 11', 'MALANG', '0341-325176                   ', 'DAERAH TANJUNG/MLG                      ');
INSERT INTO `user_apotek` VALUES ('358', 'TANJUNG, APT                            ', 'JL. IR. RAIS 88', 'MALANG', '0341-567098                   ', 'DAERAH TANJUNG/MLG                      ');
INSERT INTO `user_apotek` VALUES ('359', 'K-24,APT (TIDAR)                        ', 'JL. PUNCAK MANDALA NO. 30', 'MALANG', '0341-552076                   ', 'DAERAH TIDAR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('360', 'LARISE,APT                              ', 'JL. SIHABU-HABU NO. 28 TIDAR', 'MALANG', '0341-559825                   ', 'DAERAH TIDAR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('361', 'BUDAYA SEHAT,APT                        ', 'JL. SETIAWAN NO. 3 TUMPANG', 'MALANG', '081 233 261 719               ', 'DAERAH TUMPANG/MLG                      ');
INSERT INTO `user_apotek` VALUES ('362', 'DAHLIA, TK JAMU                         ', 'JL RAYA TUMPANG', 'MALANG', '9841854', 'DAERAH TUMPANG/MLG                      ');
INSERT INTO `user_apotek` VALUES ('363', 'KEBONSARI, APT                          ', 'JL. PAHLAWAN TIMUR 294 A TUMPANG', 'MALANG', '0341 - 787124                 ', 'DAERAH TUMPANG/MLG                      ');
INSERT INTO `user_apotek` VALUES ('364', 'NARILA FARMA, APT                       ', 'JL. RAYA BELUNG NO 13 PONCOKUSUMO', 'MALANG', '085 7909 44232                ', 'DAERAH TUMPANG/MLG                      ');
INSERT INTO `user_apotek` VALUES ('365', 'ALDE SWALAYAN                           ', 'JL. RAYA PADI TALANG SUKO TUREN', 'MALANG', '0341-7051798                  ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('366', 'AN-NUR II,SWALAYAN                      ', 'JL. RAYA BULULAWANG', 'MALANG', '0341 - 833421                 ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('367', 'BU TATIK,TK                             ', 'JL. RAYA TALANG SUKO TUREN', 'MALANG', '0341-828731                   ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('368', 'DAHLIA,APT                              ', 'JL. PANGLIMA SUDIRMAN NO. 75 BLOK A-6 TUREN', 'MALANG', '0341 - 824064                 ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('369', 'DANTA,TK                                ', 'JL. RAYA KEDOK NO. 4 TUREN', 'MALANG', '0341-7734242                  ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('370', 'KAHURIPAN,APT                           ', 'JL. GATOT SUBROTO NO. 40 RT 02/ RW 03 TUREN', 'MALANG', '0341-828083                   ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('371', 'LARIS SWALAYAN                          ', 'JL UTARA PASAR NO 2 TUREN', 'MALANG', '824139', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('372', 'NOFAH,TK                                ', 'JL. RAYA TALANG SUKO NO. 408 TUREN', 'MALANG', '0341-828763                   ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('373', 'RAHAYU,TK (TUREN)                       ', 'JL. RAYA KEDHOK NO. 317 TUREN', 'MALANG', '0341-828190                   ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('374', 'REJO MUDA (NYONYA MENEER),TJ            ', 'JL. RAYA PANGLIMA SUDIRMAN TUREN', 'MALANG', '0341-824442                   ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('375', 'RETRO,SWALAYAN                          ', 'JL. GATOT SUBROTO I TUREN TALOK', 'MALANG', '0341 - 7765794                ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('376', 'SAMIREJO,TK                             ', 'JL. RAYA REMBUN TUREN', 'MALANG', '0341-9085409                  ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('377', 'SEDAYU, APT                             ', 'JL GATOT UBROTO NO 108 SEDAYU TUREN MLG', 'MALANG', '0341 8222057                  ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('378', 'SUMBER REJEKI,TK (TUREN)                ', 'JL. SAWAHAN NO. 186 TUREN', 'MALANG', '0341-2933800                  ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('379', 'AYO SEHAT, APT                          ', 'PERUM MUTIARA REGENCY WAGIR MALANG', 'MALANG', '0341 5083300                  ', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('380', 'BINTANG 9, TK                           ', 'JL RAYA WADUNG DPN BALAI DESA', 'MALANG', '7650676', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('381', 'BU SISWO,TK                             ', 'DS. SITIREJO RT 02 RW 04 NO. 1 MBUWEK WAGIR', 'MALANG', '0341-836523                   ', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('382', 'BU SUNDARI,TK                           ', 'JL. SITIREJO NO. 50 MBUWEK WAGIR', 'MALANG', '0341-7300 453                 ', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('383', 'CANGKRING,TK                            ', 'JL. PARANG ARGO NO. 1 WAGIR', 'MALANG', '0341 - 7672551                ', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('384', 'HUDA,TK                                 ', 'DS. SITIREJO MBUWEK NO. 96 WAGIR', 'MALANG', '0341-7761232                  ', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('385', 'MULYA JAYA,MM                           ', 'JL RAYA PARANG ARGO NO 25 WAGIR', 'MALANG', '0341 - 8144733                ', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('386', 'PRADA, TK                               ', 'DSN. MBUWEK - SITIREJO WAGIR', 'MALANG', '0341 - 831047                 ', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('387', 'ADAM, TK                                ', 'JL. B. S. RIYADI 89- B MALANG                                                                       ', 'MALANG                        ', '(0341) 361960, 5418289        ', 'RUTE KANTOR                             ');
INSERT INTO `user_apotek` VALUES ('388', 'BPOM                                    ', 'JL. KARANGMENJANGAN 20 SBY                                                                          ', 'SURABAYA                      ', '031-5022815                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('389', 'CATUR FARMA,APT                         ', 'JL. PANJI SUROSO NO. 23                                                                             ', 'MALANG                        ', '0341 - 486532/ 486527         ', 'RUTE KANTOR                             ');
INSERT INTO `user_apotek` VALUES ('390', 'JABANG FARMA, APT                       ', 'JL. RY. MOJO NO. 82 (SELATAN PASAR JABANG)                                                          ', 'KEDIRI                        ', '0856 55 00 00 39              ', 'KEC SEMEN/KEDIRI                        ');
INSERT INTO `user_apotek` VALUES ('391', 'KALBE FARMA, PT                         ', 'JL LETJEN SOEPRAPTO KAV 4 NO 1 CEMPAKA PUTIH JKT PUSAT                                              ', 'MALANG                        ', '0', 'RUTE KANTOR                             ');
INSERT INTO `user_apotek` VALUES ('392', 'KHARISMA MEDICA ABADI, CV               ', 'JL SELAT SUNDA RAYANO D 1 /46 SAWOJAJAR                                                             ', 'MALANG                        ', '0341 - 715169                 ', 'RUTE KANTOR                             ');
INSERT INTO `user_apotek` VALUES ('393', 'NARITA,APT                              ', 'JL. ARJUNO NO. 34                                                                                   ', 'MALANG                        ', '0341-335657/362873            ', 'DAERAH SEMERU,KAWI,BROMO,IJEN/          ');
INSERT INTO `user_apotek` VALUES ('394', 'PANGESTU FARMINDO MULIATAMA             ', 'JL. RAYA LANGSEP NO. 56                                                                             ', 'MALANG                        ', '0341-560902                   ', 'DAERAH LANGSEP/MLG                      ');
INSERT INTO `user_apotek` VALUES ('395', 'PEGAWAI                                 ', 'KANTOR                                                                                              ', 'MALANG                        ', '-                             ', 'RUTE KANTOR                             ');
INSERT INTO `user_apotek` VALUES ('396', 'PEGAWAI (KANTOR)                        ', 'KH AGUS SALIM 11 A NO 24-25                                                                         ', 'TULUNG AGUNG                  ', '0355-320177                   ', 'RUTE KANTOR IMFTLA                      ');
INSERT INTO `user_apotek` VALUES ('397', 'PT. SAKA FARMA LABORATORIES             ', 'JL. AHMAD YANI NO. 7 KAYU PUTIH - PULO GADUNG JAKARTA TIMUR                                         ', 'MALANG                        ', '0', 'RUTE KANTOR                             ');
INSERT INTO `user_apotek` VALUES ('398', 'PUTRI MT FARMA,APT                      ', 'JL. RY. TAJINAN NO. 131 RT 21 RW 09 KEC. TAJINAN KAB. MALANG                                        ', 'MALANG                        ', '0341-751654                   ', 'KEC TAJINAN/MALANG                      ');
INSERT INTO `user_apotek` VALUES ('399', 'RAJAWALI NUSINDO,PT                     ', 'JL. DELIMA NO. 7                                                                                    ', 'MALANG                        ', '0341-557529                   ', 'DAERAH MERGAN/MLG                       ');
INSERT INTO `user_apotek` VALUES ('400', 'SPREADING GARNIER                       ', 'TENAGA                                                                                              ', 'MALANG                        ', '0341-416480                   ', 'RUTE KANTOR                             ');
INSERT INTO `user_apotek` VALUES ('401', 'TEMBAGA,APT                             ', 'JL. TEMBAGA NO. 5                                                                                   ', 'MALANG                        ', '0341-493587                   ', 'DAERAH SULFAT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('402', 'TRI SEHAT MAKMUR,APT,MALANG', 'JL CANDI PANGGUNG BARAT NO 3A MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('403', 'AIRLANGGA.APT, MLG', 'JL. KYAI TAMIN NO. 42 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('404', 'AL-HIKAM.APT, MLG', 'JL.CENGGER AYAM NO.25 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('405', 'AL-KARIMAH.APT, MLG', 'JL. RAYA SINGOSARI NO 129 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('406', 'AMANAH HUSADA.APT, MLG', 'JL. KALPATARU NO. 18 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('407', 'ANDHIKA.APT, MLG', 'JL. MAYJEND. HARYONO NO. 90 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('408', 'ANUGERAH.APT, MLG', 'JL. KLABAT NO.3 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('409', 'ARAYA II.APT, MLG', 'JL. GALUNGGUNG 67 E MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('410', 'ARAYA.APT, MLG', 'PONDOK BLIMBING INDAH L1-11 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('411', 'AVISENA UNISMA.APT, MLG', 'JL.MAYJEND. HARYONO NO. 139 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('412', 'BANTAR JAYA.APT, MLG', 'JL. KYAI TAMIN NO. 58 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('413', 'BENGAWAN SOLO.APT, MLG', 'JL. TUMENGGUNG SURYO NO. 36 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('414', 'BERLIMA.APT, MLG', 'JL. ARIS MUNANDAR NO. 18 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('415', 'BLIMBING INDAH.APT, MLG', 'JL. BLIMBING INDAH TIMUR PI NO.19 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('416', 'BOKOR.RS, TUREN', 'JL. A YANI NO. 91 TUREN', null, null, null);
INSERT INTO `user_apotek` VALUES ('417', 'ANGGREK.APT, MLG', 'JL. JAKSA AGUNG SUPRAPTO NO. 19 B MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('418', 'INSTALASI FARMASI KRI CAKRA HUSADA, APT, MLG', 'JL. SEMERU NO.1 KEC.TUREN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('419', 'CEMPAKA.APT, MLG', 'JL. L A SUCIPTO 54 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('420', 'DAHLIA.APT, TUREN', 'JL. PANGLIMA SUDIRMAN NO. 118 TUREN', null, null, null);
INSERT INTO `user_apotek` VALUES ('421', 'DEWA.APT, KEPANJEN', 'JL. PANGGUNG REJO KIOS XII / 14 KEPANJEN', null, null, null);
INSERT INTO `user_apotek` VALUES ('422', 'DIAN FARMA.APT, MLG', 'JL. GATOT SUBROTO NO.42 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('423', 'DIAN.APT, KEPANJEN', 'JL. SULTAN AGUNG NO 66 KEPANJEN', null, null, null);
INSERT INTO `user_apotek` VALUES ('424', 'DINOYO FARMA.APT, MLG', 'JL. MAYJEND. HARYONO NO. 15 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('425', 'DOMAT ANUGRAH FARMA. APT, MLG', 'JL. HAMID RUSDI H NO. 23 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('426', 'DR. CIPTO. APT, MLG', 'JL. DR. CIPTO NO. 2 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('427', 'EFATA.APT, MLG', 'JL. GALUNGGUNG NO. 67 I MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('428', 'FAIZ FARMA.APT, MLG', 'JL. COKLAT NO. 6 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('429', 'FARMARIN.APT, MLG', 'JL. WR SUPRATMAN C 2 KAPL 9 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('430', 'FITRAH MEDIKA.APT, MLG', 'JL. TERUSAN BOROBUDUR NO. 47 C MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('431', 'HATAWA FARMA.APT, GDNLGI', 'RUKO GAYA BARU JL. DIPONEGORO B 1 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('432', 'HERO.APT, LWG', 'JL. PANGLIMA SUDIRMAN NO. 92 LAWANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('433', 'IKADA.APT, MLG', 'JL. RAYA MONDOROKO SELATANNO. 4', null, null, null);
INSERT INTO `user_apotek` VALUES ('434', 'INDAH SARIE.APT, MLG', 'JL. CENGGER AYAM DALAM NO.63 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('435', 'JAYA SEHAT.APT, MLG', 'JL. KH AGUS SALIM NO.97 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('436', 'KALIMOSODO.APT, MLG', 'JL. KALIMOSODO VII / 1 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('437', 'KEPANJEN FARMA.APT, KEPANJEN', 'JL. JEND. A YANI NO. 5 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('438', 'KEPUH FARMA.APT, MLG', 'JL. S.SUPRIYADI NO. 9 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('439', 'KIMIA FARMA.APT, MLG', 'JL. BUDI UTOMO NO.1 JAKARTA PUSAT', null, null, null);
INSERT INTO `user_apotek` VALUES ('440', 'KLENGKENG.APT, PAKISAJI', 'JL. RAYA PAKISAJI UTARA NO. 18 B', null, null, null);
INSERT INTO `user_apotek` VALUES ('441', 'LAWANG.APT, LWG', 'JL. DIPONEGORO NO. 2 LAWANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('442', 'MERJOSARI. APT, MLG', 'JL. JOYO TAMBAK SARI NO. 32 A MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('443', 'MITRA SEHAT.APT, LWG', 'JL. THAMRIN NO. 22 LAWANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('444', 'NABILA.APT, MLG', 'JL. RAYA BUGIS NO. 60 WENDIT MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('445', 'NITASARI.APT, LWG', 'JL. PANGLIMA SUDIRMAN NO. 131-9 LAWANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('446', 'NUR FARMA.APT, MLG', 'JL. SUNAN AMPEL NO 1/2 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('447', 'PAJAJARAN.APT, MLG', 'JL. PAJAJARAN NO 12 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('448', 'PAKISAJI.APT, PAKISAJI', 'JL.RAYA PAKISAJI NO 338 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('449', 'PELITA SARI.APT, MLG', 'JL. LETJEND. SUTOYO NO. 31 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('450', 'PELITA SEJAHTERA.APT, MLG', 'RUKO GADANG ASRI NO 12 GADANG-MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('451', 'PENTA MEDIKA.APT, MLG', 'JL. SULFAT NO 84 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('452', 'GANTI NAMA--PUTRA RAJAWALI BANJARAN, PT.MALANG', 'JL. RAYA KREBET SENGGRONG NO. 29 BULULAWANG MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('453', 'SARI MEDIKA.APT, MLG', 'JL. JEND. AHMAD YANI NO. 14 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('454', 'SAWOJAJAR INDAH.APT, MLG', 'JL DANAU TOBA A-6 SAWOJAJAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('455', 'SAWUNGGALING.APT, KEPANJEN', 'JL.SULTAN AGUNG 20 KEPANJEN', null, null, null);
INSERT INTO `user_apotek` VALUES ('456', 'SEHAT.APT, BATU', 'JL.PANGILIMA SUDIRMAN 52 BATU', null, null, null);
INSERT INTO `user_apotek` VALUES ('457', 'SEMERU.APT, MLG', 'JL. SEMERU NO. 45 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('458', 'SINAR KENCANA.APT, MLG', 'JL. ADE IRMA SURYANI NASUTION NO.30', null, null, null);
INSERT INTO `user_apotek` VALUES ('459', 'SINGOSARI.APT, MLG', 'JL. RAYA SINGOSARI NO. 47 SINGOSARI, KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('460', 'SUKUN FARMA.APT, MLG', 'JL. S. SUPRIADI 36D MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('461', 'SUMBER PUCUNG.APT, SBR PUCUNG', 'JL. JEND. SUDIRMAN 114 SUMBER PUCUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('462', 'TARAKAN.APT, MLG', 'JL. RUKO NO.6 GADANG REGENCY MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('463', 'WARGA SEHAT.APT, DAMPIT', 'JL. RAYA PAKIS KEMBAR 176 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('464', 'WR. SUPRATMAN.APT, MLG', 'JL. RUKO WR.SUPRATMAN C3 NO.12', null, null, null);
INSERT INTO `user_apotek` VALUES ('465', 'TRI BUANA HUSADA LESTARI.PT, SBY', 'JL. KEBON ROJO 6 MM, SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('466', 'BATU SEHAT.APT, BATU / YOENITA', 'JL. BRANTAS NO 24 BATU', null, null, null);
INSERT INTO `user_apotek` VALUES ('467', 'M. SOCHIB.APT, BATU', 'JL. AGUS SALIM NO. 23 BATU', null, null, null);
INSERT INTO `user_apotek` VALUES ('468', 'KAWAN.APT, MLG', 'JL. KAWI NO 36 KAV 3 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('469', 'ALAM DJAYA.APT, MLG', 'JL. PASAR BESAR NO.110 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('470', 'DYNASTI.APT, MLG', 'JL. BELAKANG RSSA NO 2 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('471', 'MEDISON CARE.APT, MLG', 'JL. MT HARYONO NO 52 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('472', 'ZORELA RAYA.PT, SBY', 'JL. BRANJANGAN NO. 5-7 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('473', 'WIJAYA.APT, LWG', 'JL. PANGLIMA SUDIRMAN LAWANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('474', 'NARITA.APT, MLG', 'JL. ARJUNO NO. 34 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('475', 'GREAT MATARAM.PT, MLG', 'JL. BATANG HARI NO. 3 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('476', 'SUMBER WARAS.APT, BATU', 'JL. DEWI SARTIKA E41 BATU', null, null, null);
INSERT INTO `user_apotek` VALUES ('477', 'SARI , APT.MLG', 'JL. S WIRYOPRANOTO NO 6 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('478', 'KAWI.APT, MLG', 'JL. KAWI KIOS 3-4 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('479', 'INTI MULIA FARMA.PT, SBY', 'JL. PUCANG JAJAR NO 45 SBY', null, null, null);
INSERT INTO `user_apotek` VALUES ('480', 'TONGAN.APT, MLG', 'JL. ADE IRMA SURYANI 15 A MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('481', 'PURIGAMA.APT, TUREN', 'JL. A. YANI 101 TUREN', null, null, null);
INSERT INTO `user_apotek` VALUES ('482', 'ABNA S. HUSADA.PT / WAVA.APT, KEPANJEN', 'JL. PANGLIMA SUDIRMAN 99 A KEPANJEN', null, null, null);
INSERT INTO `user_apotek` VALUES ('483', 'SUMBER SEJAHTERA.APT, DAMPIT', 'JL. JENGGOLO NO 555 DAMPIT', null, null, null);
INSERT INTO `user_apotek` VALUES ('484', 'JAYA MULYA.APT ,PARE', 'JL. LAWU NO. 35 PARE-KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('485', 'CATUR FARMA.APT, MLG', 'JL PANJI SUROSO NO 23 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('486', 'GUNTORMISRI SENTOSA.PT, MLG', 'JL. TAPAK LIMAN NO 15 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('487', 'SAHABAT JAYA.APT, SINGOSARI', 'JL. PANGLIMA SUDIRMAN NO.96A PAGETAN SINGOSARI', null, null, null);
INSERT INTO `user_apotek` VALUES ('488', 'SUMBER WARAS PUTRA.APT, BLITAR', 'JL. SERUNI BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('489', 'TALUN.APT, MLG', 'JL WILIS NO 07 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('490', 'SUKOREJO.APT, SUKOREJO', 'JL. RAYA SUKOREJO NO. 3 PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('491', 'SUTAMI.APT, MLG', 'BENDUNGAN SUTAMI KAV 3', null, null, null);
INSERT INTO `user_apotek` VALUES ('492', 'PUNDEN SEHAT.APT, BLITAR', 'JL. TANJUNG NO. 53 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('493', 'SEJATI.APT, MALANG', 'JL MERDEKA TIMUR NO.2 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('494', 'TRI SAPTA JAYA.PT, MLG', 'JL. PULOGADUNG NO. 10 KAW IDUSTRI PULOGADUNG-JKT', null, null, null);
INSERT INTO `user_apotek` VALUES ('495', 'MINAROZA FARMA.PT, MLG', 'JL. SOEKARNO HATTA NO 7 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('496', 'MARSUDI WALUYO.RS, MLG', 'JL. MONDOROKO KM 9 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('497', 'IRMA MITRA.PT, SBY', 'BARATA JAYA XIX NO. 48A SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('498', 'SEJAHTERA SURYA INTRIO.PT,SBY', 'JL. NGAGEL JAYA UTARA 106 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('499', 'PUNCAK.APT.MLG', 'JL PUNCAK NO 3 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('500', 'GHANI FARMA .APT, MADIUN', 'JL. THAMRIN NO.16, MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('501', 'LAB MEDIKA SEJAHTERA, PT', 'JL. KENCANASARI TIMUR VIII / H-1 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('502', 'PERMATA DELTA AGUNG.PT, SDA', 'RUKO PESONA PERMATA GADING BLOK H NO 32 SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('503', 'BEDALI.APT, LWG', 'DR. CIPTO No.128 BEDALI LAWANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('504', 'SATRIA MANUNGGAL PRIMA JAYA, PT', 'JL. KALISARI III NO.15E SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('505', 'BINA MITRA JAYA BERSAMA, PT', 'RUKO GATE WAY BLOK A 36-37 WARU SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('506', 'GEMINI MANDIRI LESTARI, PT', 'JL. LEDOKAN AYU MA II BLOK 0 NO.9 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('507', 'AL-KARIMAH 2, APT', 'PERTOKOAN POSINDO KAV R-1 JL KAWI NO.25 KEPANJEN', null, null, null);
INSERT INTO `user_apotek` VALUES ('508', 'SRI REJEKI, APT. NGANTANG', 'JL. RAYA NGANTANG NO.26 PRABON 2 NGANTANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('509', 'RHEMA 8,APT **', 'JL. DILEM NO.09 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('510', 'PRADIPTA SEHAT, APT.MALANG', 'JL. BUKIT DIENG BLOK B-1 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('511', 'RAMA, APT. PASURUAN', 'JL. NIAGA NO. 61 PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('512', 'RUMAH SAKIT BAPTIS BATU', 'JL. RAYA TLEKUNG NO.01 JUNREJO BATU', null, null, null);
INSERT INTO `user_apotek` VALUES ('513', 'SEGER, APT', 'JL. KH. WAHID HASYIM NO.24 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('514', 'MARDI WALUYO, APT', 'JL. DR SOETOMO NO. 29 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('515', 'BAMUDA, APT.KEPANJEN', 'JL. SULTAN AGUNG NO.28 KEPANJEN KAB.MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('516', 'KIJANG MAS CITRA SEJATI, PT.JAKARTA', 'JL.CI DENG TIMUR NO. 15 H JAKARTA PUSAT', null, null, null);
INSERT INTO `user_apotek` VALUES ('517', 'REZEKI HUSADA UTAMA, PT.SUB', 'JL. MANYAR INDAH NO. 15 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('518', 'NUSA SARI PHARMA, PT', 'JL. ANUSOPATI NO.59 CANDIRENGGO SINGOSARI MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('519', 'UMM MEDICAL CENTER, APT.MLG', 'JL. BENDUNGAN SUTAMI NO.318 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('520', 'BARENG, APT.MALANG', 'JL. ICHWAN RIDWAN RAIS NO.284 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('521', 'GITA FARMA, APT.MALANG', 'JL. BELAKANG RSSA NO.1 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('522', 'ARTANTI, APT.SINGOSARI', 'JL. STASIUN NO. 26-28 SINGOSARI MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('523', 'BIORAMA, APT. KEPANJEN', 'PERUM KEPANJEN PERMAI II/AA-18 KROMENGAN KEPANJEN', null, null, null);
INSERT INTO `user_apotek` VALUES ('524', 'OTSUKA,KOPERASI.LAWANG', 'JL.SUMBER WARAS 25 LAWANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('525', 'TICA SEHAT FARMA,APT.SINGOSARI', 'JL. RAYA SONG-SONG SINGOSARI', null, null, null);
INSERT INTO `user_apotek` VALUES ('526', 'BUNUL REJO,TOKO.MALANG', 'JL.HAMID RUSDI 316 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('527', 'SUMBER ABADI BUGIS,TOKO.MALANG', 'PASAR SEMAR A2 BUGIS MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('528', 'SUKORAHARJO,APT.KEPANJEN', 'JL. RAYA SUKORAHARJO NO.4 KEPANJEN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('529', 'TITIAN SEHAT,APT.MALANG', 'JL. TERUSAN MAYJEN SUNGKONO NO. 69 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('530', 'MUTIARA BUNDA ,APT.MALANG', 'JL. CIUJUNG NO. 19 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('531', 'NATASHA, APT.MALANG', 'JL. BONDOWOSO NO.19 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('532', 'JOYOBOYO,APT.KEDIRI', 'JL. ERLANGGA NO. 34 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('533', 'GUNUNG AGUNG,APT.TULUNG AGUNG', 'JL. A YANI TIMUR NO. 65 TULUNG AGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('534', 'MAHARDIKA JAYA,APT.MALANG', 'JL. KI AGENG GRIBIG NO. 02 MADYOPURO MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('535', 'WLINGI,APT.BLITAR', 'JL. URIP SUMOHARJO NO.33 WLINGI BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('536', 'PRIMA MULIA SEJAHTERA,PT.SUB', 'JL.TAMAN PANJANG JIWO PERMAI NO.22 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('537', 'RSIA PURI BUNDA, APT.MALANG', 'JL. SIMPANG SULFAT UTARA NO.11 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('538', 'RAJAWALI NUSINDO,PT', 'JL. DELIMA NO.7 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('539', 'TANJUNG,APT.MALANG', 'JL. IR RAIS NO.885 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('540', 'JEMBAWAN, APT.MALANG', 'JL. JEMBAWAN I BLOK 3J/IC MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('541', 'BETHANIA,APT.MOJOKERTO', 'JL. MOJOPAHIT NO. 234 MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('542', 'YAP, APT.PASURUAN', 'JL. HAYAM WURUK NO.14 PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('543', 'BINGO FARMA,APT.MALANG', 'JL. TERUSAN SULFAT NO.71 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('544', 'REFA HUSADA,APT.MALANG', 'JL. MAYJEND SUNGKONO NO.9 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('545', 'ANDALAS, APT.MADIUN', 'JL. TAMRIN NO. 61 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('546', 'MULYA RAYA PETRA SEJAHTERA, PT', 'JL MULYOSARI UTARA III/39-39A SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('547', 'GIRIMULYO FARMA, APT.MALANG', 'JL. PB SUDIRMAN NO. 67 KRG PLOSO MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('548', 'SRIRATNA HUSADA, APT.KRGPLOSO', 'JL. PERTAMANAN RT 13/05 KEPUHARJO-KARANG PLOSO', null, null, null);
INSERT INTO `user_apotek` VALUES ('549', 'LAWANG MEDIKA,APT.MALANG', 'JL. DR CIPTO NO.8 BEDALI - LAWANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('550', 'ARDIANSYAH PRASETYA HUSADA, APT.KRGPLOSO', 'JL. RAYA NGIJO NO. 25 KRG PLOSO MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('551', 'NUR ABADI, APT.MADIUN', 'JL. BALI NO. 38 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('552', 'HUSADA SEJAHTERA,PT. MADIUN', 'JL. SUMBAWA NO. 11 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('553', 'HORISON, APT,MALANG', 'JL. KOL. SUGIONO NO.75 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('554', 'REJEKI MITRA FARMA, PT. SUB', 'JL. KENJERAN NO. 65 - 67 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('555', 'BUNGA MELATI,APT.MLG', 'JL. J.A SUPRAPTO NO. 23 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('556', 'ELMA FARMA, APT. MALANG', 'JL. DR. CIPTO NO. 70 LAWANG MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('557', 'CITRA MULIA, APT. BLITAR', 'JL. RAYA SAWENTAR NO. 1 A RT 3 RW 1 KANIGORO BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('558', 'AZ ZAHRA MEDIKA HUSADA,APT.BLITAR', 'JL. MANOKWARI NO.24 RT1/RW1 KESATRIAN KANIGORO BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('559', 'TULUS BHAKTI, APT. BLITAR', 'JL. URIP SUMOHARJO NO.33 WLINGI BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('560', 'VISIKA FARMA, APT. MALANG', 'JL. DR. SUTOMO NO. 11 LAWANG - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('561', 'GARUDA, APT.BLITAR', 'JL. SEMERU NO 38 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('562', 'LODOYO, APT.BLITAR', 'JL. RAYA UTARA NO. 70 RT 07 RW 02 KALIPANG - SUTOJAYAN BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('563', 'MULIA FARMA, APT.BLITAR', 'JL. IR. SOEKARNO NO. 53 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('564', 'MANFAAT, APT. BATU', 'JL. DIPONEGORO NO. 43 BATU MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('565', '***RAMADHANI FARMA, APT.BLITAR', 'JL. RAYA TIMUR NO. 54 TALUN BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('566', 'PPNI. APT.BLITAR', 'JL. DR. SUCIPTO NO. 4 WLINGI BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('567', 'ALFA, APT.BLITAR', 'JL. SUDANCO SUPRIADI NO. 237 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('568', 'KESAMBEN, APT.BLITAR', 'JL. RAYA KESAMBEN BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('569', 'ZAITUN FARMA, APT.MLG', 'JL. DANAU BRATAN C4/A14 SAWOJAJAR MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('570', 'ASRI ASSEHAT, APT.BLITAR', 'JL. RAYA UTARA NO. 194 LODOYO BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('571', 'PANTI WALUYO, APT', 'JL. YULIUS USMAN NO. 49 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('572', 'BENDO FARMA, APT.MALANG', 'JL. RAYA KARANG PANDAN NO. 241 PAKISAJI MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('573', 'REDJO FARMA, APT.BLITAR', 'JL. RAYA POLUHAN NO. 27 KAWEDUSAN PONGGOK BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('574', 'PRIMA HUSADA, APT, BLITAR', 'JL. KALIMANTAN NO. 171, SANANWETAN, KOTA BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('575', 'TIRTA FARMA, APT.BLITAR', 'JL. GAJAH MADA NO. 41 WLINGI BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('576', 'SHEVO, APT.JABUNG MLG', 'JL. LET.JEND SUTOYO NO. 14 JABUNG MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('577', 'NIRMALA, APT. BLITAR', 'JL. SERUNI NO.45 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('578', 'SUMBER SEHAT, APT.BLITAR', 'JL. CEMPAKA NO. 16A BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('579', 'LINDA, TOKO.MALANG', 'JL. REMUJUNG NO. 24 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('580', 'DUA PUTRI DEWI, TO.BLITAR', 'JL. RAYA NO. 49 SREGAT BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('581', 'ADI BUANA CITRA DHARMALA, PT.MLG', 'JL. CANDI PANGGUNG NO. 1 G MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('582', 'SAKAJAYA MAKMUR ABADI, PT.SUB', 'JL. SEMUT BARU NO. 2 PENGAMPON SQURE D-09 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('583', 'SADHANA MUNDI SENTOSA, PT.MALANG', 'JL. PUTER UTARA 6-8 RT 007 RW 012 TANJUNGREJO SUKUN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('584', 'K-24 WR SUPRATMAN, APT.MLG', 'JL. WR. SUPRATMAN C 3 KAV 21 KLOJEN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('585', 'TRISULA MANUNGGAL JAYA, PT.MLG', 'JL. LETJEND S. PARMAN NO. 26 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('586', 'SLOROK SEHAT, APT.MLG', 'JL. RAYA SLOROK NO. 62 KROMENGAN KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('587', 'AFUANA, APT.SUB', 'JL. WONOREJO INDAH TIMUR NO.15 RUNGKUT SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('588', 'SAMUDRA JAYA, TOKO.BLITAR', 'JL. MAWAR NO. 7 - 9 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('589', 'SIDOMUNCUL, TOKO.BLITAR', 'JL.TANJUNG NO. 63 SUKOREJO BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('590', 'BARU/BP.NUR, TOKO.BLITAR', 'DSN. SUMBERJO OLAK-ALEN -SELOREJO-BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('591', 'PROMEDIKA, APT.KEPANJEN', 'JL. PANGLIMA SUDIRMAN NO. 15 KEPANJEN', null, null, null);
INSERT INTO `user_apotek` VALUES ('592', 'MEDICO, APT.MADIUN', 'JL. SULAWESI NO. 16 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('593', 'ASIA JAYA, TOKO.BLITAR', 'JL. MAWAR NO. 19 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('594', 'ANUGERAH, TOKO.BLITAR', 'JL. RA KARTINI NO. 28 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('595', 'SRI BUANA SUMBER LESTARI, PT.SUB', 'JL. KENJERAN NO. 561 A SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('596', 'GRACIA FARMA, APT.PANDAAN', 'RUKO CBD F-8 TAMAN DAYU PANDAAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('597', 'PANGESTU', 'JL. RAYA LANSEP NO. 56 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('598', 'CEMARA MAS, TOKO.BLITAR', 'JL. CEMARA NO. 23 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('599', 'LARISE, APT.MALANG', 'JL. SIHABU HABU NO. 28 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('600', 'KARYA COPY, TOKO.BLITAR', 'JL. RAYA KEMBAR SELOREJO - BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('601', 'LUMINTU JAYA, TOKO.BLITAR', 'JL. A. YANI NO.78 SANANWETAN BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('602', 'KETUNGGENG,APT,PASURUAN', 'JL. GENENGAN TIMUR 69 SUKOREJO-PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('603', 'PASURUAN,APT,PASURUAN', 'JL.BALAI KOTA NO 33', null, null, null);
INSERT INTO `user_apotek` VALUES ('604', 'RAJIN,APT,PASURUAN', 'JL.NIAGA NO 27 PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('605', 'TIMUR,TOKO,BLITAR', 'JL.MAWAR NO 15 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('606', 'BINA SAN PRIMA,PT', 'JL. AHMAD YANI NO 138 B MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('607', 'PARIT PADANG,PT', 'JL.SOEKARNO HATTA 80 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('608', 'PIRAMIDA,APT,WLINGI', 'JL. SEMERU NO 42 BABADAN - WLINGI', null, null, null);
INSERT INTO `user_apotek` VALUES ('609', 'HENNY FARMA,APT', 'JL. PATI UNUS NO 44A KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('610', 'DIVA CEMARA,APT,MLG', 'JL. RAYA CEMOROKANDANG NO.43 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('611', 'GANGSAR REJEKI,APT BANGIL', 'JL. DR. SUTOMO NO.19A BANGIL-PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('612', 'PUSPA INDAH,APT,MALANG', 'JL.AIPDA SATSUI TUBUN NO 2 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('613', 'HOSANA,TOKO,MALANG', 'JL.SELOREJO B/15 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('614', 'SARANGAN MEDIKA,APT,MALANG', 'JL. SARANGAN NO 21 B MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('615', 'SEJATI\"55\",APT,PASURUAN', 'JL.LOMBOK NO 51 PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('616', 'MULTI PRASMA,TOKO,BLITAR', 'JL ARYO BLITAR NO 5 PAKUNDEN-BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('617', 'MITRA SUMBER ABADI,PT,SURABAYA', 'JL RAYA DARMO PERMAI SELATAN RUKO DARMO VILLA BLOCK B 15 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('618', 'MAJU,TOKO,GARUM-BLITAR', 'JL PENATARAN NO I GARUM - BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('619', 'SUMBER REJEKI,APT,PASURUAN', 'JL DR WAHIDIN SUDIRO HUSODO NO 123/205 PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('620', 'SAS FARMA,PT,SURABAYA', 'JL PAKUWON CITY RUKO PARK WAY MP2 NO 9 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('621', 'PURWOSARI FARMA,APT,PASURUAN', 'JL RAYA PURWOSARI NO 301 MARTOPURO-PURWOSARI-PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('622', 'WAHYU JAYA,APT,SINGOSARI', 'JL PERUSAHAAN NO 16 TUNJUNGTIRTO-SINGOSARI-MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('623', 'TIA KARYA UTAMA,CV,BLITAR', 'DS.BENDOWULUNG RT 02 RW 02 SANANKULON-BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('624', 'K-24 SUPRIADI ,APT,MALANG', 'JL S. SUPRIYADI NO 135 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('625', 'AREMA FARMA,APT,KEPANJEN', 'JL SULTAN AGUNG NO 85 KEPANJEN-MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('626', 'FARMASI BERDIKARI INTIMANDIRI,PT,SURABAYA', 'RUKO DELTA PERMAI JL RAYA PANJANG JIWO PERMAI IA/16 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('627', 'PANTI NIRMALA, RS', 'JL. KEBALEN WETAN NO. 8 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('628', 'SEMAR CARAKA HUSADA,APT,KEDIRI', 'JL RAYA GRINGGING NO 51 GROGOL-KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('629', 'KIMIA FARMA 75, AP, KEDIRI', 'JL JAKSA AGUNG SOEPRAPTO NO. 25, KEC. MOJOROTO, KAB. KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('630', 'COKRO,APT,KEDIRI', 'JL HOS COKROAMINOTO KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('631', 'MANSHURIN,APT,KEDIRI', 'JL HOS COKROAMINOTO NO 197 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('632', 'AMANAH ILAHI FARMA,APT,KEDIRI', 'JL GATOT SUBROTO 161 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('633', 'SINAR SURYA,APT,PARE', 'JL LETJEND SUTOYO NO 10 PARE', null, null, null);
INSERT INTO `user_apotek` VALUES ('634', 'SUKOREJO,APT,PARE', 'JL DR SUTOMO NO 113 GURAH - PARE', null, null, null);
INSERT INTO `user_apotek` VALUES ('635', 'KIMIA FARMA,APT,KEDIRI-DHOHO', 'JL DHOHO NO KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('636', 'RONGGOWARSITO, APT. KEDIRI', 'JL. RONGGOWARSITO NO. 16 A KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('637', 'DHOHO SEHAT,APT,KEDIRI', 'JL DHOHO NO 98 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('638', 'DIANITA,APT,KEDIRI', 'JL A YANI NO 53/101 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('639', 'ALAM JAYA,APT,KEDIRI', 'JL DHOHO NO 182 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('640', 'LAWU,APT,PARE', 'JL BROMO/TGP NO 26 PARE', null, null, null);
INSERT INTO `user_apotek` VALUES ('641', 'SAM LORRETA,APT,KEDIRI', 'RUKO MOJOROTO INDAH NO 19 JL KAWI KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('642', 'BORWITA INDAH,PT,SURABAYA', 'JL KUNIR NO 09 KREMBANGAN SELATAN SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('643', 'BRAHMA,APT,KEDIRI', 'JL RAYA NGADILUWIH NO 23D KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('644', 'IRMA MULYA,APT,KEDIRI', 'JL RAYA NGADILUWIH NO 118 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('645', 'GLINTUNG FARMA,APT,MALANG', 'JL LETJEN S PARMAN NO 70 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('646', 'ABDILA,TOKO,MALANG', 'PERUM RIVER SIDE D/601 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('647', 'MENTARI,TOKO,MALANG', 'JL BUKIT BARISAN KAV 5', null, null, null);
INSERT INTO `user_apotek` VALUES ('648', 'SENTRAL,APT,KEDIRI', 'JL HOS COKROAMINOTO 101 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('649', 'SEHAT PUTRA,APT,KEDIRI', 'JL JOYOBOYO NO 113 KWEDEN KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('650', 'SLAMET JAYA ABADI,APT.KANDANGAN', 'JL LETJEN SUTOYO NO 33 KANDANGAN-PARE', null, null, null);
INSERT INTO `user_apotek` VALUES ('651', 'SUMBER SEHAT,APT,PARE', 'JL LAWU NO 42 PARE', null, null, null);
INSERT INTO `user_apotek` VALUES ('652', 'NIKISARI FARMA,APT,KEDIRI', 'JL JOYOBOYO NO 54 KWEDEN-KARANGREJO-NGASEM-KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('653', 'LIRBOYO,APT,KEDIRI', 'JL PENANGGUNGAN NO 90 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('654', 'SRITI,APT,KEDIRI', 'JL RONGGOWARSITO NO 46 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('655', 'PUTRI 155,APT,PARE', 'JL LETJEND SUTOYO NO 137 PARE KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('656', 'ANUGRAH MITRA JAYA,PT,SURABAYA', 'JL RAYA PANJANG JIWO NO 46-48 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('657', 'KELUARGA SEHAT INDONESIA, APT. KEDIRI', 'JL. WONOASRI NO. 5 GROGOL-KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('658', 'ARISTA,APT,KEDIRI', 'JL GATOT SUBROTO NO 148 MRICAN KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('659', 'IMAM BONJOL,APT,KEDIRI', 'JL IMAM BONJOL NO 86NGADIREJO KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('660', 'REDJO,APT,KEDIRI', 'JL HOS COKROAMINOTO NO 95 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('661', 'CLARA FARMA,APT,NGANJUK', 'JL RAYA PRAMBON NO 14 NGANJUK', null, null, null);
INSERT INTO `user_apotek` VALUES ('662', 'REDJO MAS,APT,KEDIRI', 'PASAR PAHING BLOK A1/11 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('663', 'SUMBER SLAMET,APT,TULUNG AGUNG', 'JL KAPTEN KASIHIN NO 160 TULUNG AGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('664', 'KARUNIA SEHAT,APT,GURAH', 'JL PEMUDA NO 20 GEMPOLAN, GURAH, KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('665', 'TALANG AGUNG SEHAT,APT,KEPANJEN', 'PERUMNAS I BB NO 3 KEPANJEN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('666', 'KAWAN SEHATI,APT,MALANG', 'JL GAJAYANA NO 534A', null, null, null);
INSERT INTO `user_apotek` VALUES ('667', 'BULAN FARMA,APT,TRENGGALEK', 'JL RAYA KARANGAN TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('668', 'HUSADA,APT,PARE', 'JL A YANI NO 28 PARE', null, null, null);
INSERT INTO `user_apotek` VALUES ('669', 'GARUDA,APT,MALANG', 'JL MAYJEND PANJAITAN NO 78 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('670', 'PATI UNUS,APT,KEDIRI', 'JL PATI UNUS NO 09 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('671', 'ESTETIKA,APT,KANDANGAN', 'JL RAYA KANDANGAN NO 571 KANDANGAN PARE', null, null, null);
INSERT INTO `user_apotek` VALUES ('672', 'SARI UTAMA,APT,KEDIRI', 'JL MAUNI NO 122 PESANTREN KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('673', 'KIMIA FARMA SMAN II PARE,APT,PARE', 'JL PAHLAWAN K BANGSA NO 28 PARE', null, null, null);
INSERT INTO `user_apotek` VALUES ('674', 'MAUNI FARMA,APT,KEDIRI', 'JL MAUNI PESANTREN/RUKO MAUNI NO 8-9 PESANTREN KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('675', 'DIREKTUR RSUD DR SAIFUL ANWAR,RS,MALANG', 'JL J.AGUNG SOEPRAPTO NO 02 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('676', 'EKA SAKTI,APT,GURAH-KDR', 'JL DR WAHIDIN NO 74 GURAH-KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('677', 'DIPOYONO,TO,KEDIRI', 'JL BRAWIJAYA NO 62 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('678', 'SEDUDO,APT,NGANJUK', 'JL MAYJEND SUNGKONO NO 05 BERBEK-NGANJUK', null, null, null);
INSERT INTO `user_apotek` VALUES ('679', 'SEHAT SEMPURNA,APT,NGANJUK', 'JL JEND A YANI NO 396 NGANJUK', null, null, null);
INSERT INTO `user_apotek` VALUES ('680', 'FARMACIA,APT,KEDIRI', 'JL BRAWIJAYA NO 69 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('681', 'MURNI,APT,KEDIRI', 'JL BRAWIJAYA NO 54 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('682', 'RANUGRATI,APT,MALANG', 'JL RAYA RANUGRATI NO 31 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('683', 'SARASWATI,APT,PURWOSARI', 'PASAR RAYA BLOK A-1 PURWOSARI PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('684', 'PUNJER SANTOSA,APT,BLITAR', 'JL JENDRAL SUDIRMAN NO 74 PONGGOK BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('685', 'NENDRA FARMA,APT,KEDIRI', 'JL RAYA BOGO NO 88 PARE-KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('686', 'PANDU,APT,KEDIRI', 'JL RAYA NO 66 PAPAR KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('687', 'RAHAYU FARMA,APT,PARE', 'JL RAYA KUNJANG NO 195 BADAS - PARE - KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('688', 'NAYAKA ERAHUSADA,PT,MALANG', 'JL CILIWUNG NO 17 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('689', 'MULTI FARMA,APT,SINGOSARI', 'JL TUMAPEL (RUKO) KAV 3 SINGOSARI - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('690', 'PETRA,APT,KEPANJEN', 'JL A.YANI D-46 KEPANJEN - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('691', 'MITRA RAJAWALI BANJARAN, PT.MALANG', 'JL KREBET SENGGRONG NO 29 BULULAWANG MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('692', 'SION,APT,NGANJUK', 'JL VETERAN NO 44 NGANJUK', null, null, null);
INSERT INTO `user_apotek` VALUES ('693', 'FIRA FARMA,APT,KESAMBEN', 'JL RAYA KESAMBEN NO 15 KESAMBEN BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('694', 'MEGA SARI, APT,SINGOSARI', 'JL RUKO MONDOROKO REGENCY BLOK AA KAV II SINGOSARI', null, null, null);
INSERT INTO `user_apotek` VALUES ('695', 'JAYA ANUGRAH,APT,PARE', 'JL WR SUPRATMAN NO 46 PARE', null, null, null);
INSERT INTO `user_apotek` VALUES ('696', 'DANAU TOBA,APT,MALANG', 'JL DANAU TOBA E 5 NO 22 SAWOJAJAR MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('697', 'HERWANTI,APT,PARE', 'JL BRAWIJAYA NO 35 PARE', null, null, null);
INSERT INTO `user_apotek` VALUES ('698', 'DIREKTUR RSUD KANJURUHAN,RS,KEPANJEN', 'JL PANJI NO 11 KEPANJEN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('699', 'JODO,APT,JOMBANG', 'JL A YANI NO 125 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('700', 'SARINAH,APT,JOMBANG', 'JL RE MARTADINATA NO 28 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('701', 'BETANIA,APT,MALANG', 'JL S SUPRIYADI NO 30E SUKUN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('702', 'SIDO WARAS,APT,JOMBANG', 'JL KH WAKHID HASYIM NO 80 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('703', 'HAYUNANTO,APT,JOMBANG', 'JL URIP SUMOHARJO NO 11A JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('704', 'SUMBER LARIS,APT,MALANG', 'JL PAHLAWAN TRIP NO 17 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('705', 'TUJUH SATU,APT,KEDIRI', 'JL DHOHO NO KEDIRI NO 75 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('706', 'KITA SEHAT,APT,JOMBANG', 'JL A YANI NO 18 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('707', 'AVICENA,APT,JOMBANG', 'JL DR SUTOMO NO 60 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('708', 'SEHAT,APT,KEDIRI', 'JL MONGISIDI NO 41 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('709', 'CEMARA,APT,LAWANG', 'JL DIPONEGORO BLOCK C NO 18 LAWANG-MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('710', 'KEBONSARI,APT,MALANG', 'JL RAYA KEBONSARI NO 265 TUMPANG MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('711', 'SARI SEHAT,APT,MALANG', 'JL PASAR BESAR NO 10 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('712', 'HIDUP,APT,MALANG', 'JL ARIES MUNANDAR NO 30 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('713', 'ALVI,APT,BLITAR', 'JL DR SOETOMO NO 10 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('714', 'BINTANG MAS,APT,TULUNG AGUNG', 'JL WR SUPRATMAN NO 100 TULUNG AGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('715', 'VISI FARMA,APT,TULUNG AGUNG', 'JL S HASANUDIN NO 33 TULUNG AGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('716', 'K-24 LETJEND SUPRAPTO,APT,TULUNG AGUNG', 'JL LETJEND SUPRAPTO NO 24(DEPAN LAKA) TULUNG AGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('717', 'MORODADI,APT,BLITAR', 'JL MERDEKA NO 201 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('718', 'JEPUN FARMA,APT,TULUNGAGUNG', 'JL MAYOR SUJADI NO 157 TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('719', 'LADY PHARMINDO,PT,MADIUN', 'JL SULAWESI NO 16A MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('720', 'GRAGALAN,APT,TULUNGAGUNG', 'JL RAYA GRAGALAN TANJUNGSARI 05/02 BOYOLANGU TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('721', 'KEMUNING,APT,TULUNGAGUNG', 'JL TEUKU UMAR NO 121 TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('722', 'GUYUB RUKUN,APT,TULUNGAGUNG', 'JL DR WAHIDIN SUDIRO HUSODO NO 05 TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('723', 'YOS SUDARSO,APT,TULUNGAGUNG', 'JL YOS SUDARSO NO 101 TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('724', 'RS KATOLIK BUDI RAHAYU,RS.BLITAR', 'JL JEND. A YANI NO 18 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('725', 'SEKAR FARMA,APT,TULUNG AGUNG', 'JL K. PATTIMURA NO 15 TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('726', 'WULAN,APT,PARE', 'JL LETJEND SUTOYO NO 26 PARE', null, null, null);
INSERT INTO `user_apotek` VALUES ('727', 'KECIL,APT,TULUNGAGUNG', 'JL RAYA NO 17 BANDUNG TULUNG AGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('728', 'CAHAYA SENTOSA,APT,TULUNG AGUNG', 'JL LETJEND SUPRAPTO 62 TULUNG AGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('729', 'SARI ASIH ,APT,TULUNGAGUNG', 'JL TEUKU UMAR NO 30 TULUNG AGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('730', 'EL-RAFA,APT,MALANG', 'JL SIMPANG BOROBUDUR NO 54 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('731', 'NYOTO SEHAT,APT,JOMBANG', 'JL RAYA BLIMBING NO 47 BLIMBING - GUDO - JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('732', 'SUMBER SEHAT,PT,SURABAYA/RETUR', '-', null, null, null);
INSERT INTO `user_apotek` VALUES ('733', 'CENDANA 97,APT,KEDIRI', 'JL CENDANA NO 97 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('734', 'ISSY FARMA,APT,MALANG', 'JL IJEN NO 56 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('735', 'GLOBAL SUKSES MANDIRI, CV.MALANG', 'JL. BARITO NO. 5 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('736', 'FA. MEDISINA,APT,TULUNG AGUNG', 'JL MT HARYONO NO 186A TULUNG AGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('737', 'SANANWETAN,APT,BLITAR', 'JL BALI NO 69 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('738', 'PERSADA II,APT,PARE', 'JL PK BANGSA NO 10 PARE', null, null, null);
INSERT INTO `user_apotek` VALUES ('739', 'MADINAH BRILLIANT,APT,TULUNGAGUNG', 'JL RAYA BENDILWUNGU NO 88 BENDILWUNGU-SUMBER GEMPOL', null, null, null);
INSERT INTO `user_apotek` VALUES ('740', 'TIGA JAYA,APT,KEPUNG', 'JL HARINJING NO 442 KEPUNG TIMUR-KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('741', 'RAFI FARMA,APT,JOMBANG', 'JL JAYANEGARA NO 12 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('742', 'PELENGKAP,APT,JOMBANG', 'JL JUANDA NO 03 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('743', 'KERTAJAYA FARMA,APT,JOMBANG', 'JL KERTAJAYA NO 18 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('744', 'WIRYA WIJAYA,APT,TRENGGALEK', 'JL. RAYA GANDUSARI - KAMPAK NO 05 TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('745', 'BEPIA,APT,TRENGGALEK', 'JL PAHLAWAN NO 05 TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('746', 'TUGU FARMA,APT,TRENGGALEK', 'DS JAMBU RT 03 RW 01 KEC.TUGU - TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('747', 'SUGIH WARAS,APT,TRENGGALEK', 'JL RA KARTINI NO 30 TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('748', 'WIJAYA,APT,BLITAR', 'JL TANJUNG NO 12 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('749', 'VITA FARMA,APT,KEPUNG', 'JL HARINJING KARANGDINOYO - KEPUNG - KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('750', 'BERKAT SEHAT,APT,KEPUNG', 'JL HARINJING NO 11 KARANG DINOYO - KEPUNG - KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('751', 'SETIA HUSADA,APT,JOMBANG', 'JL ADITYAWARMAN NO 43A JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('752', 'ARJUNA,APT,TRENGGALEK', 'JL PANGLIMA SUDIRMAN NO 111 TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('753', 'PANDAWA AGUNG,APT,TRENGGALEK', 'JL A YANI NO 83 SURODAKAN TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('754', 'KAWITAN,APT,TULUNGAGUNG', 'JL HASANUDDIN NO 07 TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('755', 'K-24 SUNANDAR,APT,MALANG', 'JL SUNANDAR PRIYO SUDARMO NO 10 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('756', 'SUTOJAYAN,APT,BLITAR', 'JL RAYA BARAT NO 32 LODOYO - BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('757', 'ELENA,APT,TRENGGALEK', 'JL P SUDIRMAN NO 77 TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('758', 'K-24 GADANG, APT,MALANG', 'JL K. SATSUI TUBUN B-1 NO 45 GADANG - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('759', 'SARI,APT,TRENGGALEK', 'JL RA KARTINI NO 19 TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('760', 'ANUGRAH SEHAT,APT,TULUNGAGUNG', 'JL P. SUDIRMAN TRADE CENTRE A8 KENAYAN - TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('761', 'ENAM,TOKO,BLITAR', 'JL MERDEKA NO 156 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('762', 'MITRA FARMA ANUGERAH LESTARI,PT,KEDIRI', 'JL SLAMET RIYADI NO 17 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('763', 'KARINA,APT,MALANG', 'JL MAYJEND SUNGKONO NO 06 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('764', 'SARI SEHAT,APT,TULUNG AGUNG', 'JL WR SUPRATMAN NO 117 TULUNG AGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('765', 'NURUS SYIFA,APT,MALANG', 'JL RAYA KEBONAGUNG NO 29 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('766', 'JAVA FARMA,PT,SURABAYA', 'JL TAMBAK SEGARAN NO 28 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('767', 'SAWOJAJAR MAS,APT,MALANG', 'RUKO SAWOJAJAR MAS 15-16 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('768', 'MEDISON CARE BATU,APT,BATU', 'JL DIPONEGORO NO 78 RT 01 RW 05 KEL SISIR - KEC BATU KOTA', null, null, null);
INSERT INTO `user_apotek` VALUES ('769', 'INSTALASI FARMASI RS AURA SYIFA,RSU,KEDIRI', 'JL JOYOBOYO NO 42 RT 00 RW 00 KARANGREJO - NGASEM - KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('770', 'PUJI SENTOSA,APT,BLITAR', 'JL SEMERU NO 58 KOTA BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('771', 'LUMAYAN,APT,TRENGGALEK', 'JL A YANI NO 21A TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('772', 'SIDO WARAS APT. BLITAR', 'JL. ANGGREK NO 58 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('773', 'SARINADI, APT.SIDOARJO', 'PERUM TAMAN PONDOK JATI BLOK A NO.1 SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('774', 'MUJI WARAS,APT,KEDIRI', 'JL RAYA SAMBI NO 98A SAMBI - KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('775', 'POP MEDIKA,APT,MALANG', 'JL HASYIM ASHARI NO 40 RUKO KAUMAN KAV I MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('776', 'GALERI CANDRA,APT,MALANG', 'JL ANDONG NO 03 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('777', 'PELITA,APT,KEDIRI', 'JL KH WACHID HASYIM NO 97 BANDAR LOR - MOJOROTO - KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('778', 'YAY.RUMAH SAKIT BAPTIS BATU,RS,BATU', 'JL RAYA TLEKUNG NO 01 JUNREJO - KOTA BATU', null, null, null);
INSERT INTO `user_apotek` VALUES ('779', 'PRAPATAN,APT,BLITAR', 'JL IRIAN RT 06 RW 04 KANIGORO - BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('780', 'RAMADANI WLINGI,APOTEK,BLITAR', 'JL BROMO NO 17 WLINGI - BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('781', 'SELOPURO FARMA,APT,BLITAR', 'JL. RAYA SELOPURO NO 14 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('782', 'BUNUL FARMA,APT,MALANG', 'JL HAMID RUSDI NO 101G MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('783', 'NURWAHIDAH,APT,SORONG-PAPUA', 'JL JEND A YANI NO 21 HBM SORONG', null, null, null);
INSERT INTO `user_apotek` VALUES ('784', 'PELITA SEHAT FARMA,APT,KEDIRI', 'JL KILISUCI NO 27B KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('785', 'ARGOWILIS FARMA,APT,KEDIRI', 'JL ARGOWILIS NO 390 KEC SEMEN KAB KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('786', 'AN`NUUR LESTARI,APT,KEDIRI', 'JL KAWI RUKO MOJOROTO INDAH NO 19 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('787', 'NAROTAMA, APT.MLG', 'JL. NAROTAMA KIOS NO.91B RT.02/09 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('788', '(TK PAKAI)CEMARA FARMA, APT.BLITAR', 'JL. CEMARA NO.174 SUKOREJO BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('789', 'CEMARA FARMA,APT,BLITAR', 'JL CEMARA NO 174 KOTA BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('790', 'KPRI KARTIKA KARYA HUSADA,APT,PASURUAN', 'JL.Dr Wahidin Sudirohusodo No. 1- 4 Pasuruan', null, null, null);
INSERT INTO `user_apotek` VALUES ('791', 'ENGGAL SARAS,APT,JOMBANG', 'JL SELATAN PABRIK GULA NO 91 CUKIR DIWEK JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('792', 'ADINA,APT,JOMBANG', 'JL HAYAM WURUK NO 3 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('793', 'KUTHO FARMA,APT,JOMBANG', 'JL KH HASYIM ASYARI NO 17 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('794', 'TAMBAK BERAS,APT,JOMBANG', 'JL KH ABD WAHAB HASBULLAH NO 182 TAMBAK REJO JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('795', 'MIMBAR FARMA,APT,JOMBANG', 'JL KH MIMBAR NO 40/44 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('796', 'MOJOWARNO.APT,JOMBANG', 'JL MERDEKA NO 113 MOJOWARNO JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('797', 'SUMBER PANGESTU,APT,JOMBANG', 'JL AHMAD YANI NO 15 BARENG JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('798', 'K-24 MOJOKERTO,APT,MOJOKERTO', 'JL PAHLAWAN NO 10 MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('799', 'SENTANAN,APT,MOJOKERTO', 'JL KH ACHMAD DAHLAN NO 31 MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('800', 'MITRA CUKIR,APT,JOMBANG', 'JL RAYA KEDIRI NO 67 CUKIR - DIWEK - JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('801', 'ALTASA,APT,MOJOKERTO', 'JL PAHLAWAN NO 10D MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('802', 'ADAM JAYA ,APT,PASURUAN', 'JL. KAUMAN NO. 70 BANGIL', null, null, null);
INSERT INTO `user_apotek` VALUES ('803', 'BAROKAH,APT,PASURUAN', 'JL RAYA BLAWI NO 51 MASANGAN - BANGIL - PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('804', 'GAJAH MADA PRIMA,APT,PASURUAN', 'JL GAJAH MADA NO 53 PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('805', 'PASIR DUA,APT ,PASURUAN', 'JL WAHIDIN SUDIRO HUSODO NO 209 PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('806', 'WAHIDIN,APT,PASURUAN', 'JL DR WAHIDIN NO 78 PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('807', 'KAHURIPAN,APT,TUREN', 'JL GATOT SUBROTO NO 40 TALOK TUREN', null, null, null);
INSERT INTO `user_apotek` VALUES ('808', 'POHJEJER,APT,MOJOKERTO', 'JL RAYA POHJEJER NO 11 GONDANG MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('809', 'INSTALASI FARMASI RS PELENGKAP MEDICAL CENTER', 'JL JUANDA NO 03 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('810', 'GUNUNG JATI,APT,DAMPIT', 'JL GUNUNG JATI NO 01DAMPIT MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('811', 'BANDUNG JAYA,APT,JOMBANG', 'JL GEBANG MALANG RT 01 RW 07 NO 10 BANDUNG - DIWEK - JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('812', 'DIVA SEJAHTERA,APT,BLITAR', 'JL RAYA P PATOK NO 20 SIDOREJO - PONGGOK - BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('813', 'KA DUA EMPAT,PT,YOGYAKARTA', 'JL WOLTER MONGINSIDI NO 37 B YOGYAKARTA', null, null, null);
INSERT INTO `user_apotek` VALUES ('814', 'METRO HUSADA,APT,MALANG', 'JL KEPUH UTARA RT 04 RW 04 NO 43 BANDUNGREJOSARI - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('815', 'SUMBER WARAS,APT,MOJOKERTO', 'JL PB SUDIRMAN NO 106 MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('816', 'RAJA SEHAT,APT,MALANG', 'JL MUHARTO NO 66 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('817', 'GANEP,APT,JOMBANG', 'JL RAYA UTARA KLENTENG NO 38 GUDO - JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('818', 'GUDO FARMA,APT,JOMBANG', 'JL RAYA GUDO NO 127 GUDO JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('819', 'PAKEL FARMA,APT,TULUNGAGUNG', 'DS BANGUNJAYA RT 001 RW 002 KEC PAKEL KAB TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('820', 'K-24 GATOT SUBROTO,APT, MALANG', 'JL GATOT SUBROTO NO 102 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('821', 'AMEL,APT,MOJOKERTO', 'JL GAJAH MADA NO 98B MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('822', 'TALENTA,APT,MOJOKERTO', 'JL PAHLAWAN NO 10D MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('823', 'NAGITA,APT,DONOMULYO', 'JL RAYA DONOMULYO NO 65 RT 01 RW 01 DONOMULYO MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('824', 'SEHATI FARMA,APT,MALANG', 'JL PUTER UTARA NO 08 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('825', 'GRAJAKAN,APT,MALANG', 'JL TELUK GRAJAKAN NO 63 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('826', 'TRISTAN,APT,MOJOKERTO', 'JL LETKOL SUMOHARJO NO 89 MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('827', 'BUGAR DOT COM,APT,PASURUAN', 'JL RAYA NGETAL NO 04 RT 04 RW 14 KEC GEMPOL KAB PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('828', 'APCOM FARMA,APT,PASURUAN', 'JL SMPN I WARUREJO NO 08 GEMPOL PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('829', 'CHILLA FARMA,APT,PASURUAN', 'JL RAYA GONDANGLEGI NO 375 CANGKRING MALANG - BEJI - PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('830', 'RANGGEH,APT,PASURUAN', 'JL RAYA RANGGEH NO 20 KARANGSENTUL GONDANGWETAN PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('831', 'PANDEAN,APT,PASURUAN', 'JL RAYA PLERET UTARA NO 1 PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('832', 'EUCHARISTIA,APT,MALANG', 'JL S SUPRIADI NO 70 A SUKUN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('833', 'SIAGA,APT,PANDAAN', 'RUKO THE TAMANDAYU D.19 PANDAAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('834', 'FARHANA,APT,BANGIL', 'JL ALUN-ALUN BARAT NO 63 BANGIL PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('835', 'AL MADINAH,APT,KASEMBON', 'JL RAYA KASEMBON NO 32 KASEMBON', null, null, null);
INSERT INTO `user_apotek` VALUES ('836', 'F21 PENANGGUNGAN,APT,KEDIRI', 'JL PENANGGUNGAN NO 121 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('837', 'JINGGA FARMA,APT,MALANG', 'JL TERUSAN SOEKARNO HATTA MALANG ( RUKO PUNCAK BOROBUDUR KAV I)', null, null, null);
INSERT INTO `user_apotek` VALUES ('838', 'TULUNGREJO FARMA,APT,WLINGI', 'PERUM GRIYA PERMATA WLINGI BLOK A-I WLINGI', null, null, null);
INSERT INTO `user_apotek` VALUES ('839', 'SLAMET,APT,CARUBAN', 'JL AHMAD YANI NO 59 CARUBAN MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('840', 'AL AZIZ,APT,PASURUAN', 'JL HASANUDDIN NO 30 GADINGREJO KOTA PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('841', 'RONA FARMA,APT,MADIUN', 'JL AHMAD YANI KM 2 KOMPLEK RUKO BLOK 12 CARUBAN - MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('842', 'INSTALASI FARMASI RS HAYUNANTO MC,APT,MALANG', 'JL RAYA SENGKALING NO 245 DAU KAB MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('843', 'ISTI FARMA,APT,KEDIRI', 'JL RAJAWALI NO 122 TAWANG WATES KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('844', 'ARISYAH,APT,PASURUAN', 'JL RAYA KRATON NO 28 KRATON PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('845', 'ALOHA,APT,PANDAAN', 'JL RAYA PASEGAN NO 350 PANDAAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('846', 'INSTALASI FARMASI RS MITRA DELIMA,RS,BULULAWANG', 'JL RAYA BULUPAYUNG KEC BULULAWANG KREBET MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('847', 'FITALAB UTAMA KARYA,PT,SINGOSARI', 'JL.RAYA KARANGLO B1 RT 003 RW 004 SINGOSARI MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('848', 'KENDEDES FARMA,APT,MALANG', 'JL A YANI UTARA NO 16 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('849', 'MARGA NUSANTARA JAYA,PT,MALANG(RETUR_', 'JL PANJI SUROSO NO 20 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('850', 'SURUH WADANG,APT,BLITAR', 'JL RAYA SURUHWADANG - PASAR SURUHWADANG - KADEMANGAN - BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('851', 'R3 FARMA,APT,MALANG', 'JL SATSUI TUBUN NO 10 KEBONSARI-SUKUN-MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('852', 'FA2FA JAYA,APT,MALANG', 'RUKO KERINCI JL TERUSAN DANAU KERINCI KAV 14 SAWOJAJAR MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('853', 'HUGIANIO,TO,BLITAR', 'JL KALIPORONG NO 74 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('854', 'SABILILLAH,TO,MALANG', 'JL CANDI KIDAL NO 06 BLIMBING MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('855', 'FAHMI,APT,PASURUAN', 'JL PANGLIMA SUDIRMAN NO 95A PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('856', 'DUA PUTRI,APT,PASURUAN', 'JL RAYA GUNUNG GANGSIR RUKO 08 KEC BEJI KAB PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('857', 'MAL-24,APT,PANDAAN', 'JL PAHLAWAN SUNARYO NO 280 PANDAAN - PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('858', 'BULULAWANG,APT,BULULAWANG', 'JL RAYA BULULAWANG RT 06 RW 07 BULULAWANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('859', 'DAMAI SEJAHTERA,APT,MALANG', 'JL KERTANEGARA NO 87 KARANGPLOSO MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('860', 'SARI ALAM FARMA,APT,MALANG', 'PERUM GRIYA PERMATA ALAM BLOK J-05 NGIJO KARANGPLOSO', null, null, null);
INSERT INTO `user_apotek` VALUES ('861', 'KAHURIPAN,APT,KEDIRI', 'JL WR SUPRATMAN NO 21 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('862', 'PEMUDA 25,APT,KEDIRI', 'JL PEMUDA NO 21 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('863', 'SENDANG,APT,KEDIRI', 'JL KH AGUS SALIM NO 09 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('864', 'WAHID FARMA JAYA,APT,KEDIRI', 'JL ARGOWILIS (DPN BRI SEMEN) RT 02/ RW 05 SEMEN - KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('865', 'PANDAWA,APT,KEDIRI', 'JL SEKARTAJI DS DOKO KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('866', 'SUMBER KEMBAR,APT,DAMPIT', 'JL SUMBER KEMBAR NO 01 SUMBER KEMBAR DAMPIT', null, null, null);
INSERT INTO `user_apotek` VALUES ('867', 'SUKACITA,APT,MALANG', 'JL KOLONEL SUGIONO NO 40 GADANG - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('868', 'TOGOGAN FARMA,APT,BLITAR', 'JL RAYA TOGOGAN SRENGAT BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('869', 'BUGIS SEHAT,APT,MALANG', 'JL RAYA BUGIS NO 17 DS SAPTORENGGO KEC PAKIS KAB MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('870', 'KOP. KARYAWAN WAVA HUSADA,KOPERASI,KEPANJEN', 'JL PANGLIMA SUDIRMAN NO 99A MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('871', 'DWI JAYA SENTOSA, CV. SUB/RETUR', 'JL. KEDUNG COWEK NO.175 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('872', 'SMS SABILILAH,APT,MALANG', 'JL CANDI KIDAL NO 06 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('873', 'NISA MEDICA,APT,SINGOSARI', 'JL PERUM BUMI MONDOROKO RAYA BLOK AJ NO 77 SINGOSARI - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('874', 'DWI PUTRA GLORY,PT,MALANG', 'PONDOK BLIMBING INDAH TENGAH XVI BLOK L-1 NO 24 RT 07 RW 11 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('875', 'SIDORAHAYU FARMA,APT,MALANG', 'JL PELABUHAN TANJUNG MAS KAV II BAKALAN KRAJAN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('876', 'ATIQOH FARMA,APT,PASURUAN', 'JL JAKSA AGUNG SUPRAPTO NO 08 PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('877', 'PAPA,TOKO,SUKOREJO-BLITAR', 'JL KLAMPIS NO 81 SUKOREJO - BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('878', 'P PANDU SAPTANAYA,TOKO,MALANG', 'JL ARIEF MARGONO 84/12 KASIN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('879', 'ERPRIMA.APT,KEDIRI', 'JL RAYA KEDIRI-TULUNGAGUNG NO 37 RT/RW 02/02 DS SEKETI-NGADILUWIH-KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('880', 'MUJARAB,APT,JOMBANG', 'JL GATOT SUBROTO NO 7A MOJONGAPIT JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('881', 'CITO,APT,MADIUN', 'JL JEND SUDIRMAN NO 71 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('882', 'K-24 DR SUTOMO,APT,MADIUN', 'JL DR SOETOMO NO 71A MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('883', 'SAMI SEHAT,APT,MADIUN', 'JL GAJAHMADA NO 116C MANGUNHARJO MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('884', 'MECCA MEDIKA,APT,KESAMBEN', 'JL STASIUN NO 10 RT 01 RW 05 KESAMBEN - BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('885', 'FINK,APT,MADIUN', 'JL SLAMET RIYADI (RUKO JAYA GRAND) MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('886', 'PUSPA WIJAYA,APT,MADIUN', 'JL JEND SUDIRMAN NO 259 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('887', 'KAYLA FARMA,APT,MALANG', 'JL RAYA KARANGLO KAV I SINGOSARI -MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('888', 'SEGER WARAS,APT,MADIUN', 'JL JEND SUDIRMAN NO 61 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('889', 'SURYA,APT,MADIUN', 'JL BALI NO 79 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('890', 'ASEAN,APT,MADIUN', 'JL KOL. MARHADI NO 58 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('891', 'RAJA SEHAT,APT,KREBET', 'JL RAYA KREBET NO 22 BULULAWANG MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('892', 'AL-HASANAH,APT,MADIUN', 'JL AURI 9A BUMI ANTARIKSA MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('893', 'ASIA,APT,PONOROGO', 'JL URIP SUMOHARJO NO 84 PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('894', 'FAJAR DATARI,APOTEK,PONOROGO', 'JL BATORO KATONG NO 20 PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('895', 'FADILA FARMA,APT,MADIUN-CARUBAN', 'JL BALEREJO NO 123 KEC BALEREJO - MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('896', 'K-24 CARUBAN,APT,CARUBAN', 'JL P.SUDIRMAN NO 144 CARUBAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('897', 'NUSINDO FARMA 6,APT,MADIUN', 'JL YOS SUDARSO NO 23 PATIHAN MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('898', 'INSTALASI FARMASI RS SANTA CLARA,APT,MADIUN', 'JL BILITON NO 15 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('899', 'STADION,APT,MADIUN', 'JL MASTRIP NO 56C MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('900', 'NUSANTARA,APT,MAGETAN', 'JL A YANI NO 51 MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('901', 'ASIA BARU,APT,MAGETAN', 'JL JAMBU NO 01 MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('902', 'RADIO BONANSA FM,PT,KEDIRI', 'JL KH AGUS SALIM NO 134 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('903', 'ANUGRAH,APT,PONOROGO', 'JL DR SUTOMO NO 58 PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('904', 'MOJO SEHAT,APT,KEDIRI', 'JL RAYA MOJO DS MLATI RT/RW 01/05 MOJO-KAB KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('905', 'CEMPAKA MULYA,APT,MADIUN', 'JL IMAM BONJOL TOKO NO 3-4 PASAR SRIJAYA MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('906', 'LAURINA,APT,MALANG', 'PERTOKOAN PASAR SEKARASRI BLOK A3 KEC. PAKIS KAB MALANG/JL SEKARPURO', null, null, null);
INSERT INTO `user_apotek` VALUES ('907', 'KATHON,TO,LAWANG', 'JL DR CIPTO NO 81 BEDALI LAWANG - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('908', 'KAUTSAR. APT, MAGETAN', 'JL. RAYA MAOSPATI NO. 8, MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('909', 'AMANAH. APT, MAGETAN', 'JL. PAHLAWAN NO. 09 MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('910', 'GELIS WARAS. APT, MAGETAN', 'JL. BAYANGKARA NO. 156 GORANG-GARENG MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('911', 'MARON FARMA,APT,KEDIRI', 'JL RAYA MARON NO 131 DS MARON KEC.BANYAKAN KAB KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('912', 'P.PUTRA ANJAR,TOKO,MALANG', 'JL KAPI SRABA X D10 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('913', 'ENGGAL WARAS,APT,MADIUN', 'JL P SUDIRMAN NO 247 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('914', 'FIRDHA FARMA,APT,MAGETAN', 'JL PAHLAWAN NO.17 MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('915', 'MAGETAN,APT,MAGETAN', 'JL PAHLAWAN NO .07 MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('916', 'P.NANANG KRISTIONO,TOKO,MALANG', 'JL SUBALI 13F/7 SAWOJAJAR MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('917', 'GRIYA SEHAT SEJAHTERA,APT,MADIUN', 'JL APOTEK HIDUP SOGATEN MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('918', 'FAZZHA HUSADA,APT,MADIUN', 'JL RAYA MADIUN-SOLO NO 121 JIWAN MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('919', 'ICHI FARMA,APT,MADIUN', 'JL RAYA PONOROGO NO 23 (TE`AN) DEMANGAN MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('920', 'ANUGRAH,APT,MAGETAN', 'JL RAYA MAOSPATI NO 13 MAOSPATI MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('921', 'PROBIOTIK,APT,MAGETAN', 'JL RAYA MAOSPATI NO 01 RT.02/RW.01 GENENGAN KAWEDANAN MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('922', 'MEDISTRA FARMA,APT,KEDIRI', 'JL JAWA NO 181B GROGOL KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('923', 'SARI,APT,MADIUN', 'JL PANGLIMA SUDIRMAN NO 240 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('924', 'FARMA NIAGA/RETUR', 'JL KARANGDUREN NO 66-68 PAKISAJI', null, null, null);
INSERT INTO `user_apotek` VALUES ('925', 'X CANDI WARINGIN,APT,MALANG', 'JL CANDI WARINGIN LAWANG NO 14 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('926', 'MAHARANI,APT,SELOPURO BLITAR', 'JL RAYA SELOPURO RT.02 RW.02 SELOPURO-BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('927', 'CAHAYA SEJATI FARMA,APT,MALANG', 'JL ASRIKATON NO 25 PAKIS MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('928', 'BENING,APT,PONOROGO', 'JL LETJEND SUPRAPTO NO 54 PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('929', 'BUDAYA SEHAT,APT,MALANG', 'JL RAYA TUMPANG NO 132 TUMPANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('930', 'KPRI HUSADA SEJAHTERA,KOP,MADIUN', 'JL. SUMBAWA NO 11 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('931', 'MATARAM SEGAR, APT,MALANG', 'JL. DANAU TOBA RUKO B-16, MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('932', 'RS \"LAVALETTE\",RS,MALANG', 'JL WR SUPRATMAN NO.10 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('933', 'SAMBUNG SEHAT,APT,TALANG AGUNG', 'JL GUNUNG KAWI NO 76 TALANG AGUNG KEPANJEN - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('934', 'ELDY FARMA,APT,PAKISAJI', 'JL RAYA GENENGAN NO 254 RT.03/RW.09 PAKISAJI - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('935', 'BINA FARMA,APT,MADIUN', 'JL TULUS BHAKTI NO.5A MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('936', 'SUBUR SEHAT II,APT,MADIUN', 'JL YOS SUDARSO NO 146 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('937', 'AL-BAHRUU,APT,KEPANJEN', 'JL RAYA GUNUNG KAWI NO 01 TALANGAGUNG KEPANJEN', null, null, null);
INSERT INTO `user_apotek` VALUES ('938', 'JAVA FARMA,APT,BLITAR', 'JL GAJAH MADA NO 75 WLINGI-BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('939', 'KANIGORO,APT,MADIUN', 'JL KAPTEN TENDEAN NO 585 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('940', 'PIA CAP MANGKOK,TOKO,MALANG', 'JL SEMERU NO 25 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('941', 'BERGAS FARMA,APT,GONDANGLEGI', 'JL HAYAM WURUK NO 59 GONDANGLEGI', null, null, null);
INSERT INTO `user_apotek` VALUES ('942', 'MANJUR WARAS,APT,MADIUN', 'JL SUMBER KARYA PERUM BUMI MAS II BLOK GG NO 06 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('943', 'ISTANA HERBAL,TOKO,MALANG', 'JL SYARIF AL-QODRI 2A MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('944', 'RUMAH MADU,TOKO,MALANG', 'JL HAMID RUSDI NO 14 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('945', 'KENDALPAYAK,APT,MALANG', 'JL WATUDAKON NO 02 DS.KENDALPAYAK KEC.PAKISAJI KAB.MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('946', 'KOPINKA FARMA,APT,MADIUN', 'JL MANDIRI RUKO RED TULIP NO 08 DEMANGAN-TAMAN-MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('947', 'ATMAJAYA,APT,PASURUAN', 'JL DR WAHIDIN SUDIROHUSODO NO 57 PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('948', 'AL-HAMZAH,APT,PASURUAN', 'JL KEJAPANAN MELI`AN NO 31 RT 02 RW 09 GEMPOL PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('949', 'TAMBAKREJO FARMA,APT,BOJONEGORO', 'JL RAYA SUKOREJO NO 06 TAMBAKREJO BOJONEGORO', null, null, null);
INSERT INTO `user_apotek` VALUES ('950', 'DR BENGGOL,APOTEK,MALANG', 'JL CILIWUNG NO 20 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('951', 'PUSPA HUSADA,APT,PONOROGO', 'JL SOEKARNO HATTA NO 216 PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('952', 'HAMAS FARMA,APT,MALANG', 'JL RAYA KARANGPLOSO RT 07 RW 02 KAV 6 GIRIMULYO-KARANGPLOSO-MLG', null, null, null);
INSERT INTO `user_apotek` VALUES ('953', 'KONDANG WARAS,APT,MALANG', 'JL RAYA NGIJO NO 50 KAV 6 KARANGPLOSO MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('954', 'MATA GEMILANG PERSADA,CV,MALANG', 'JL HASANUDDIN NO 124B RT.05 RW.04 DS. JERU KEC.TUMPANG KAB.MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('955', 'P SAIFUL,TOKO,MALANG', 'RUKO DANAU TOBA BLOCK C NO 02 SAWOJAJAR MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('956', 'WAWAN HERBAL,TOKO,MALANG', 'JL PANGLIMA SUDIRMAN H-9 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('957', 'BU RINA,TOKO HERBAL,MALANG/P YANUAR/CINTA WANGI', 'JL HALMAHERA NO 04 (SEBELAH BEDAK JANUR) MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('958', 'WIJAYA KUSUMA,APT,MADIUN', 'JL DIPONEGORO NO 44 KOTA MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('959', 'GAMASARI,APT,MALANG', 'JL LETJEN SUTOYO NO 130 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('960', 'BEDALI 2,APT,MALANG', 'JL RAYA BUGIS NO 55 KEC PAKIS - KAB MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('961', 'ARIRANG,APT,MALANG', 'RUKO DINOYO INDAH NO.73 KAV -.7 JL MT HARYONO MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('962', 'TALITHA,APT,MALANG', 'JL RAYA NO 57 DSN. SANTREN RT.01/RW.01 MENDALAN WANGI-WAGIR-MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('963', 'DARMA USADA,APT,MADIUN', 'JL COKROAMINOTO NO 145 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('964', 'COKRO WISNU,APT,MADIUN', 'JL COKROAMINOTO NO 24A MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('965', 'TOYO FARMA,APT,MADIUN', 'JL LAPANGAN NO 42 PAGOTAN - GEGER - MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('966', 'NURUDIN,SPREADER(INTERBAT),MALANG', 'JL SILIKAT I NO 18A MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('967', 'SUROPATI 20,APT,MALANG', 'JL UNTUNG SUROPATI NO 20 LAWANG - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('968', 'SYAFIYA, APT, JOMBANG', 'JL PATTIMURA NO 57 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('969', '99.APT BLITAR', 'JL. CEMARA NO 99 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('970', '2-EMPAT MEDIKA,APT,MADIUN', 'JL DUNGUS MANIS NO 22A MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('971', 'PARAMITA KENDEDES,APT,MALANG', 'JL RADEN PANJI SUROSO A-5 RUKO MTCMALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('972', 'DOT EXPRESS,MALANG', 'JL MENTAWAI NO 65 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('973', 'CAHAYA INDAH,APT,JOMBANG', 'RUKO PASAR PETERONGAN BLOK A IX/10 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('974', 'JOGOROTO,APT,JOMBANG', 'JL RAYA JOGOROTO NO 72 KEC.JOGOROTO JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('975', 'SEHAT,APT,BATU (RETUR)', 'JL.PANGILIMA SUDIRMAN 52 BATU', null, null, null);
INSERT INTO `user_apotek` VALUES ('976', 'EFATA,APT,MLG (RETUR)', 'JL. GALUNGGUNG NO. 67 I MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('977', 'CAHAYA MEDIKA,APT,JOMBANG', 'RUKO DEPAN SUMOBITO NO.03 JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('978', 'RESTU ASIH,APT,PONOROGO', 'JL KI AGENG KUTU NO 42 SIMAN KEC SIMAN - KAB PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('979', 'ASKIYA FARMA,APT,PONOROGO', 'JL JENDRAL SUDIRMAN NO 407 DS WONOKERTO - KAB PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('980', 'KDE (KA DUA EMPAT) SURABAYA,PT,SBY', 'JL NGAGEL JAYA UTARA NO 143 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('981', 'YUSRO BAROKAH,SWALAYAN,KENDALPAYAK', 'JL RAYA KENDALPAYAK SEGARAN RT 03/RW 08 PAKISAJI', null, null, null);
INSERT INTO `user_apotek` VALUES ('982', 'SUMBER AGUNG,TOKO,TAJINAN', 'PURWOSEKAR TAJINAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('983', 'RIADH,APT,BANGIL-PASURUAN', 'JL A YANI NO 52 BANGILPASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('984', 'X KAYU TANGAN,APT,MALANG', 'JL BASUK RAHMAT NO 6B MALANG]', null, null, null);
INSERT INTO `user_apotek` VALUES ('985', 'RAHAYU,APT,PONOROGO', 'JL JAKSA AGUNG SUPRAPTO NO 01 PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('986', 'NUKUS 24,APT,MALANG', 'JL MERPATI UTARA NO 27A MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('987', 'PIJAR,APT,MADIUN', 'JL KELAPA MANIS NO 28 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('988', 'BINTANG JAYA,TOKO,PAKISAJI', 'JL RAYA PAKISAJI NO 165 PAKISAJI - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('989', 'GANGSAR,TOKO,PAKISAJI', 'DARUNGAN RT 15 RW 08 DS GLANGGANG - PAKISAJI', null, null, null);
INSERT INTO `user_apotek` VALUES ('990', 'TIGA JAYA 2,APT,PUNCU', 'JL RAYA GADUNGAN DS GADUNGAN PUNCU - KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('991', 'MAHARDIKA,APT,MAGETAN', 'JL RAYA PARANG NO 05 RT 05 RW 02 NGARIBOYO- MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('992', 'RAJAWALI NUSINDO,PT,MLG-RETUR', 'JL DELIMA NO 07 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('993', 'ELSYA FARMA , APT KEDIRI', 'JL IMAM BONJOL 25 KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('994', 'SARPON, APT. PONOROGO', 'JL RAYA PONOROGO TRENGGALEK NO 93 CAMPUREJO-SAMBIT PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('995', 'EN-KA FARMA, APT. MAGETAN', 'JL RAYA NGAWI NO 11 MAOSPATI MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('996', 'SEHAT MAKMUR, APT. PONOROGO', 'JL PONOROGO-TRENGGALEK NO 338 SAMBIT PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('997', 'HANUN, APT. MADIUN', 'JL RAYA SOLO NO 03 SUKOLILO JIWAN MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('998', 'INSTALASI FARMASI RS PERMATA BUNDA. MALANG', 'JL SOEKARNO HATTA NO 75 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('999', 'NETRAL 9, APT. MADIUN', 'JL WONO ASRI RUKO BLOK A-A KANIGORO-KARTOHARJO MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1000', 'ULFA FARMA, APT. PONOROGO', 'JL. S. SUKOWATI NO 01 RUKO ASRI PEREMPATAN JETIS PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1001', 'KIAN FARMA, APT. MAGETAN', 'DESA TAKERAN RT 05 RW 02 KEC TAKERAN MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1002', 'TAURUS, APT. MADIUN', 'JL PAHLAWAN NO 89 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1003', 'KEVIN FARMA, APT. PONOROGO', 'KOMPLEK PASAR DESA GANDU KEC. MLARAK KAB PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1004', 'X BATU,APT,BATU', 'JL. PANGLIMA SUDIRMAN NO 36B', null, null, null);
INSERT INTO `user_apotek` VALUES ('1005', 'SOGATEN APT, MADIUN', 'JL. CAMPURSARI NO 44 KEL SOGATEN KOTA MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1006', 'DISTRIVERSA BUANAMAS, PT.MALANG/RETUR', 'JL. BALURAN NO.01 ORO-ORO DOWO KLOJEN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1007', 'HIDUP SEHAT,APT,SUMBER PUCUNG', 'JL JEND SUDIRMAN NO 18 KEC. S.PUCUNG KAB MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1008', 'ZA`IM FARMA,APT,PONOROGO', 'JL RAYA PONOROGO-PACITAN NO 58 NAILAN - SLAHUNG - PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1009', 'MURNI FARMA,APT,MOJOKERTO', 'JL HOS COKROAMINOTONO 18 MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1010', 'HANIFA,APT,JOMBANG', 'JL YOS YUDARSO JANTI MOJOAGUNG JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1011', 'BAHRUL MAGHFIROH CINTA INDONESIA,KLINIK,MALANG', 'JL BATU PERMATA NO 01 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1012', 'TIRTA ANANDA FARMA,APT,PUJON', 'JL ABDUL MANAN WIJAYA NO 263 KEC.PUJON KAB MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1013', 'PUJON SEHAT,APT,PUJON', 'JL ABDUL MANAN WIJAYA NO 286 PUJON', null, null, null);
INSERT INTO `user_apotek` VALUES ('1014', 'SIDOMULYO FARMA,APT,MOJOKERTO', 'JL. RAYA SIDOMULYO NO 10 KEC BANGSAL KAB MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1015', 'X MOJOSARI,APT,MOJOSARI', 'JL AIRLANGGA NO 153 KEC.MOJOSARI KAB.MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1016', 'ARINA DJAYA,APT,PONOROGO', 'JL TAPTOJANI NO 67 RT02 RW02 WONOKERTO JETIS PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1017', 'INSTALASI FARMASI RS BUDI MULYO,RS,KESAMBEN', 'JL RAYA KESAMBEN KEC KESAMBEN KAB BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1018', 'KENAREN FARMA,APT,BLITAR', 'JL ANJASMORO II NO 2 GANDUSARI - KEC GANDUSARI - KAB BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1019', 'SATIVA GRAHA FARMA,PT,SIDOARJO', 'JL BLIMBING II/83 RT.06 RW.04 WADUNGSARI - WARU - SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1020', '5S,APT,MALANG', 'JL RAYA KEPUH NO 17 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1021', 'K-24 GAJAH MADA,APT,SEMARANG', 'JL GAJAHMADA NO 63 SEMARANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1022', 'INSTALASI FARMASI KRJ PG KEBONAGUNG,KLINIK,MALANG', 'JL RAYA KEBONAGUNG KEC PAKISAJI MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1023', 'IDOLA MEDIKA,APT,MALANG', 'JL MADYOPURO NO 36 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1024', 'SANAN MEDIKA,KLINIK RAWAT INAP,MALANG', 'JL TUMENGGUNG SURYO NO 92 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1025', 'AMELYS,APT,PONOROGO', 'JL AHMAD YANI NO 118 PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1026', 'BANGKIT,APT,PONOROGO', 'JL RAYA PULUNG SOOKO NO 29 PULUNG PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1027', 'WAJI WARAS,APT,PONOROGO', 'JL A YANI S-28 SUMOROTO PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1028', 'KAUTSAR, APT. MAGETAN', 'JL RAYA MAOSPATI MAGETAN NO 08 SUKOMORO MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1029', 'RIZKY, APT. PONOROGO', 'JL DR. SUTOMO NO 05 PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1030', 'KARANGPLOSO FARMA,APT,MALANG', 'JL KERTANEGARA RUKO KAV 10 KEC KARANGPLOSO KAB MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1031', 'SEMERU SELATAN,APT,DAMPT-MLG', 'JL SEMERU SELATAN NO 831 DAMPIT - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1032', 'SUMBER WARAS, APT.MADIUN', 'JL DIPONEGORO NO 66 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1033', 'BUNGKAL,APT,PONOROGO', 'JL GAJAH MADA NO 15 KEC. BUNGKAL KAB. PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1034', 'INAYAH FARMA,APT,MALANG', 'JL ARJOWINANGUN NO 04 RT01 RW 01 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1035', 'GENDIS FARMA,APT,PASURUAN', 'JL RAYA BROMO NO 25 KARANG SENTUL KEC GONDANG WETAN KAB PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1036', 'AZZAHRA SLOROK FARMA,APT,MALANG', 'JL RAYA SLOROK NO 01 RT 09 RW 03 SLOROK KROMENGAN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1037', 'AISY,APT,PONOROGO', 'JL ARIF RAHMAN HAKIM RUKO PURI INDAH NO 01 KENITEN-PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1038', 'AL - MA`UNAH,APT,PASURUAN', 'JL. KH. ABDUL KHAMID NO. 20 - 20A KOTA PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1039', 'E TIGA 2,APT,GARUM-BLITAR', 'JL RAYA GARUM NO 14 GARUM - BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1040', 'MINI FARMA,APOTEK,MALANG', 'JL RAYA KEPUH NO 03 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1041', 'PHARMACY, APT. MLG', 'JL. BANDULAN NO. 21 KAV. 2 SUKUN - MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1042', 'DIVA MULIA,APT,KADEMANGAN-BLITAR', 'JL TRISULA NO 10 RT 03 RW 05 KADEMANGAN BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1043', 'FENSA FARMA,APT,MALANG', 'JL PELABUHAN KETAPANG II NO.26 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1044', 'TASBIH FARMA,APT,PASURUAN', 'JL BADER NO.15B KALIREJO BANGIL PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1045', '****ANUGERAH,APT,MALANG', 'JL KLABAT NO 03 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1046', 'PAL SIDOREJO,APT,PAGELARAN-MALANG', 'JL RAYA SIDOREJO NO 30 PAGELARAN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1047', 'ANUGERAH ABI FARMA,PT,SURABAYA', 'JL MENUR PUMPUNGAN NO 76 SUKOLILO SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('1048', 'WIDODO FARMA,APT,KEPANJEN', 'JL PANGGUNGREJO NO 36 KEPANJEN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1049', 'FAWWAS FARMA,APT,BENDOREJO-TRENGGALEK', 'JL BENDOREJO UTARA NO 467 RT 06/RW 03 BENDOREJO POGALAN TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1050', 'TS 22 PHARMA,APT,TRENGGALEK', 'JL RAYA NGLONGSOR KM7 RT 05/RW 02 DS NGLONGSOR TUGU TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1051', 'WILDAN FARMA,APT,KARANGAN-TRENGGALEK', 'DS KARANGAN RT 05 RW 02 KEC KARANGAN KAB TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1052', 'MUGI SARAS,APT,TULUNGAGUNG', 'JL SEMERU KIOS PASAR KLIWON NO T-40 RT 02 RW 01 KAUMAN KALANGBRET TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1053', 'KAMULAN SEHAT,APT,TRENGGALEK', 'JL RAYA KAMULAN RT 25 RW 04 DS KAMULAN KEC DURENAN KAB TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1054', 'INSTALASI FARMASI RSI GONDANGLEGI,RS,GONDANGLEGI', 'JL HAYAM WURUK NO 66 GONDANGLEGI MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1055', 'TEMAN SEHAT,APT,MAGETAN', 'JL DIPONEGORO NO 15 MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1056', 'MUTIARA,APT,MAGETAN', 'JL RAYA BARAT NO 249 BARAT MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1057', 'AIR MANCUR,APT,PAKEL -TULUNGAGUNG', 'JL BANDUNG CAMPUR NO 24 DSN DUREN DS SUKOANYAR PAKEL - TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1058', 'PLAZA,APT,TULUNGAGUNG', 'JL SUPRIYADI NO 39 TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1059', 'KENCANA FARMA,APT,TRENGGALEK', 'JL HOS COKROAMINOTO NO 06 TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1060', 'PANUNTUN,APT,TULUNGAGUNG', 'DSN BAKALAN RT 02 RW 02 DS SURUHAN KIDUL- BANDUNG-TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1061', 'AZ ZAHRA,APT,TULUNGAGUNG', 'JL MT HARYONO NO 186A TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1062', 'DHARMA PUTRA,APT,NGRAMBE-NGAWI', 'JL SULTAN AGUNG NO 15 NGRAMBE NGAWI', null, null, null);
INSERT INTO `user_apotek` VALUES ('1063', 'GENDINGAN,APT, NGAWI', 'JL RAYA WALIKUKUN NO 13 RT 03/RW 05 WIDODAREN NGAWI', null, null, null);
INSERT INTO `user_apotek` VALUES ('1064', 'TINA FARMA,APT,CARUBAN', 'JL A YANI NO 38 BANGUNSARI-CARUBAN-MEJAYAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1065', 'PANGU FARMA,APT,MAGETAN', 'JL TAKERAN RT 07 RW 02 TAKERAN MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1066', 'NUR SYIFA,APT,MAGETAN', 'JL PAHLAWAN NO 04A MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1067', 'PE PE.APT. TRENGGALEK', 'PERUMNAS SUMBERINGIN PERMAI BLOK A-5 RT 39/RW 06 DESA SUMBERINGIN KARANGAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1068', 'JAYA SEHAT. APT, TULUNGAGUNG', 'JL KH. AGUS SALIM 97 TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1069', 'BIMA.APT, MADIUN', 'JL JEND. SUDIRMAN NO 185 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1070', 'SENANDUNG,APT,KALIPARE', 'DSN BARISAN RT 06/RW 01 NO 25 ARJOWILANGUN KALIPARE', null, null, null);
INSERT INTO `user_apotek` VALUES ('1071', 'SARANGAN I,TOKO,MALANG', 'JL SARANGAN NO 01 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1072', 'DURENAN,APT,TRENGGALEK', 'JL RAYA DURENAN NOMOR 15 TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1073', 'YUNO,APT,TULUNGAGUNG', 'DSN NGRANCE RT 02 RW 01 DS NGRANCE KEC PAKEL TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1074', 'MAL-24 KEBALEN,APT,MALANG', 'JL KEBALEN NO 10B MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1075', 'RONGGO,APT,NGAWI', 'JL RONGGOWARSITO NO 60 NGAWI', null, null, null);
INSERT INTO `user_apotek` VALUES ('1076', 'YUWANA,APT,MADIUN', 'JL GORANG-GARENG NO 07 DESA SAMBIREJO KEC JIWAN KAB. MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1077', 'ZAHRA,APT,NGAWI', 'JL SILIWANGI NO 81 NGAWI', null, null, null);
INSERT INTO `user_apotek` VALUES ('1078', 'BIMA,APT,MADIUN', 'JL P SUDIRMAN NO 185 A KEL. PANDEAN KEC. TAMAN KOTA MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1079', 'TATA,APT,TULUNGAGUNG', 'JL RAYA GONDANG NO 4A DS GONDANG KEC GONDANG KAB TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1080', 'WAHYU AGUNG,APT,TULUNGAGUNG', 'JL ADI SUCIPTO NO 36 TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1081', 'ANIK FARMA,APT,TULUNGAGUNG', 'JL MASTRIP NO 2 JEPUN TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1082', 'JAMAS,APT,MALANG/RETUR', 'JL MASJID NO 02 SINGOSARI MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1083', 'AMANAH SEHAT,APT,TULUNGAGUNG', 'JL JAMBU NO 53 DS KEPUH KEC BOYOLANGU KEC TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1084', 'RAJAWALI NUSINDO CABANG MADIUN,PT,MADIUN', 'JL YOS SUDARSO NO 29-31 KOTA MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1085', 'JALUR REJEKI,APT,TULUNGAGUNG', 'JL RAYA NGANTRU NO 10 TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1086', 'MAISUNNAH,APT,PONOROGO', 'JL URIP SUMIHARJO NO 181 PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1087', 'NOVI FARMA,APT,MADIUN', 'JL DAGANGAN NO 25 DAGANGAN MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1088', 'ETIKA FARMA,APT,MOJOKERTO', 'JL RAYA LENGKONG 2 NO 51 KEC TROWULAN KAB MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1089', 'UMMAH,APT,PASURUAN', 'JL GURAME NO 111 KAUMAN - BANGIL - PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1090', 'BAPANGAN SEHAT,APT,PACITAN', 'KIOS BAPANGAN KAVLING 16 PACITAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1091', 'DAHA FARMA,APT,TRENGGALEK', 'JL BRIGJEND SOETRAN RT 20 RW 06 SUMBERGEDONGAN TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1092', 'DUTA,APT,TULUNGAGUNG', 'JL KH AGUS SALIM 61 TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1093', 'BARAT,APT,MAGETAN', 'JL PASAR LEGI NO 93 KEC. BARAT KEC. MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1094', 'AL-GHIFAR I,APT,MAGETAN', 'JL RAYA BELOTAN NO 192 DS BELOTAN RT 34 RW 12 KEC BENDO KAB MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1095', 'RUMAH SEHAT,APT,BLITAR', 'JL TRISULA 33 KADEMANGAN BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1096', 'REJOWINANGUN,APT,TRENGGALEK', 'JL KANJENG JIMAT NO 01 RT 06 RW 02 DS REJOWINANGUN KEC TRENGGALEK KAB TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1097', 'BURING FARMA,APT,MALANG', 'JL MAYJEND SUNGKONO NO 37 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1098', 'KHARISMA,APT,BATU', 'JL SUROPATI NO. 24', null, null, null);
INSERT INTO `user_apotek` VALUES ('1099', 'GUNUNG GAMPING,APT,SUMBERMANJING', 'JL RAYA SUMBERMANJING WETAN NO 32 RT 03 RW 01 KAB MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1100', 'NAYLA FARMA 2,APT,TRENGGALEK', 'RT 26 RW 06 DS. PRIGI KEC.WATULIMO KAB.TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1101', 'MAJU SENTOSA PRIMA,PT,MALANG', 'JL SIMPANG ALUMINIUM NO 03 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1102', 'SOLO,APT,PUJON', 'JL BRIGJEN ABDUL MANAN WIJAYA NO 36 PUJON', null, null, null);
INSERT INTO `user_apotek` VALUES ('1103', 'JATINOM,APT,BLITAR', 'JL SATRIA NO 28 RT 04 RW 03 KEC KANIGORO KAB BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1104', 'RETUR EXP DATE', 'JL SOEKARNO HATTA RUKO TAMAN NIAGA BLOK B12/B15 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1105', 'POS BERKAH,APT,BLITAR', 'DS JATINOM RT 04 RW 03 KEC.KANIGORO KAB.BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1106', 'ZULFA FARMA,APT,PONOROGO', 'JL RAYA NGEBEL RUKO NO 04 JENANGAN PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1107', 'SETYA FARMA,APT,MADIUN', 'DS KENONGOREJO RT.03/01 PILANGKENCENG MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1108', 'KELUTAN SEHAT,APT,TRENGGALEK', 'JL SOEKARNO HATTA NO 191 KELUTAN - TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1109', '@-RIS FARMA,APT,TULUNGAGUNG', 'JL DHOHO NO 14 RT 04 RW 03 KEC REJOTANGAN TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1110', 'INDAH JAYA,APT,TULUNGAGUNG', 'DS. SUMBERDADI RT 01 RW 01 NO 12 KEC. SUMBERGEMPOL KAB. TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1111', 'BEN SEHAT,APT,JOMBANG', 'JL WACHID HASYIM 80M JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1112', 'TELEMEDIKA FARMA 17,APT,MALANG', 'JL DANAU SENTANI BLOK 4 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1113', 'BHAKTI SANTOSO,APT', 'JL P DIPONEGORO NO 100 TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1114', 'CAHAYA MUTIARA,APT,PONOROGO', 'JL NIKEN GANDINI NO 27A KEL.KADIPATEN KEC. BABADAN KAB. PONOROGO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1115', 'MANGU FARMA,APT,MAGETAN', 'JL RAYA TAKERAN NO 345 TAKERAN MAGETAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1116', 'MENGANTO JAYA,APT,MOJOWARNO-JOMBANG', 'JL RAYA MENGANTO JOGOROTO RT/RW 014/09 DS MENGANTO KEC MOJOWARNO KAB JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1117', 'JAVAS TRIPTA SEJAHTERA,PT,MALANG/RETUR', 'PBI A-1 NO 19 RT007/RW005 POLOWIJEN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1118', 'SUMAWE DUA,APT,TUREN-MALANG', 'JL HAMID RUSDI NO 18 TALOK TUREN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1119', 'DUTA SEHAT PANDAAN,APT,PANDAAN', 'JL JAKSA AGUNG SUPRAPTO NO 55 PANDAAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1120', 'BEAUTY MEDIKA,KLINIK KECANTIKAN,MALANG', 'JL SOEKARNO HATTA NO 09 KAV 9 KEL MOJOLANGU-KEC LOWOKWARU-MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1121', 'KARUNIA DADI,APT,PASURUAN', 'JL GUNUNG GANGSIR NO 29 KEC BEJI KAB PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1122', 'SEJATI,APT,SURABAYA/RETURN', 'JL MANUKAN TAMA BLOK B NO 5 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('1123', 'SEMANDING,APT,MALANG', 'JL RAYA SUMBERSEKAR NO 35 RT 01 RW 01 DS SEMANDING DS SUMBER SEKAR KEC DAU', null, null, null);
INSERT INTO `user_apotek` VALUES ('1124', 'MAJU SEHAT,APT,TULUNGAGUNG', 'JL WAHIDIN SUDIRO HUSODO NO 05 TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1125', 'SEHAT UTAMA,APT,DAMPIT', 'JL JENGGOLO NO 555N KEC DAMPIT KAB MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1126', 'HASTUTI FARMA,APT,MADIUN', 'JLDIPONEGORO NO 520 PAGOTAN MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1127', 'KHARISMA FARMA,APT,PONOROGO', 'JL RAYA PONOROGO-PACITAN DKH BANTARAN RT03 RW02 DS. MADUSARI KEC.SIMAN KAB.PONOR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1128', 'BINTANG UTAMA INTI MEDIKA,PT,SIDOARJO', 'JL RAYA TROPODO NO 115 WARU SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1129', 'KELANA,APT,PASURUAN', 'JL KH ACHMAD DAHLAN RT05 RW02 KEL.POHJENTREK KEC.PURWOREJO KEC.PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1130', 'DIMONG,APT,MADIUN', 'JL RAYA DIMONG NO 63 RT 09/RW01 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1131', 'SUMAKUL,APT,SUMBERMANJING', 'DS SUMBERMANJING KULON NO 115 RT 10/RW 02 SUKUN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1132', 'INSTALASI FKPRI \"TINSPARDI MEDIKA\",KLINIK,TRENGGAL', 'RT.06 RW.03 DS.BENDOREJO KEC.POGALAN KAB.TRENGGALEK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1133', 'SINGHASARI,APT,SINGOSARI', 'RUKO SINGOSARI BUSSINESS CENTRE KAV 8A KLAMPOK-SINGOSARI-MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1134', 'GUDANG KAPUK,APT,TULUNGAGUNG', 'JL RAYA NGANTRU DS BENDOSARI KEC.NGANTRU KAB.TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1135', 'K-24 GAJAYANA,APT,MALANG', 'JL SUMBERSARI KAV-04 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1136', 'DUA EMPAT MT HARYONO,KLINIK,MADIUN', 'JL MT HARYONO NO 34 MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1137', 'KA DUA EMPAT,PT,SEMARANG', 'JL FATMAWATI NO 75 GEMAH-PEDURUNGAN-SEMARANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1138', 'PAKISAJI, APT RETUR', 'JL. RAYA PAKISAJI 338 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1139', 'HANUAL.APT, TRENGGALEK', 'Perum Sumberingin Blok A Nomor 05 Kec. Karangan Kabupaten Trenggalek', null, null, null);
INSERT INTO `user_apotek` VALUES ('1140', 'SOOKO FARMA.APT, MOJOKERTO', 'JL. KEMAS SETYOADI NO 15 DUSUN KEDUNGMALING KEC. SOOKO KABUPATEN MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1141', 'SLAMET RIADI.APT, BLITAR', 'JL. SOEKARNO HATTA NO 10 RT. 03 RW. 03 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1142', 'NGORO FARMA.APT, MOJOKERTO', 'DSN. SEDATI RT. 002 RW. 001 DS. SEDATI KEC NGORO KAB MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1143', 'DUTA BARU.APT, TULUNGAGUNG', 'JL. RAYA BLITAR NO. 44 NGUNUT', null, null, null);
INSERT INTO `user_apotek` VALUES ('1144', 'SUHAT 24.APT, MALANG', 'JL. SOEKARNO HATTA NO. 66B MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1145', 'NGUDI WARAS.APT, KEDIRI', 'JL. SATYA BAKTI NO. 306 KRAS KABUPATEN KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('1146', 'RAYA JABON.APT, MOJOKERTO', 'JL. RAYA JABON KECAMATAN MOJOANYAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1147', 'SAMPUN WARAS.APT, TULUNGAGUNG', 'JL. SULTAN AGUNG NO. 17 KETANON TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1148', 'PRADHANA 2.APT, PASURUAN', 'JL. AHMAD YANI NO. 604 PANDAAN - PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1149', 'KARANGDUREN.APT, PAKISAJI', 'JLN. RAYA GOLEK NO. 32 KECAMATAN KARANGDUREN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1150', 'AIR MANCUR/RETUR', 'JL. JEMBAWAN III/4B NO 48 SAWOJAJAR MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1151', 'SIDO WARAS ASRIKATON.APT, MALANG', 'JL. ABDURRAHMAN SALEH NO. 30 KECAMATAN PAKIS KABUPATEN MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1152', 'DJODO PUNGGING.APT, MOJOKERTO', 'DSN JANTI RT. 003 RW 001 DS. JATILANGKUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1153', 'PUTRI MT FARMA.APT, TAJINAN', 'JL. RAYA TAJINAN NO. 131 RT. 21 RW. 09 TAJINAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1154', 'DAYA ANUGERAH DEWATA SAKTI.PT, SURABAYA', 'JL. TAMAN JEMURSARI SELATAN 1/7 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('1155', 'PRADITHA.APT, PASURUAN', 'DS. NGEMPIT RT. 02 RW. 01 KRATON - PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1156', 'PARAMA SEMESTA MEDIKA.PT, MLG', 'PERUM PUNCAK DIENG BLOK LL2 NO. 15 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1157', 'PURNAMA MEDICA', 'JL. SIMPANG KEPUH UTARA BLOK C NO. 71', null, null, null);
INSERT INTO `user_apotek` VALUES ('1158', 'BU HAJI.APT, MALANG', 'JL. SIDOMAKMUR NO. 3 MULYOAGUNG, KEC. DAU, KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1159', 'DANIEL FARMA, APT, NGANJUK', 'JL. DR. SUTOMO NO. 12 WARUJAYENG KEC. TANJUNGANEM KAB. NGANJUK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1160', 'MUNCUL ANUGERAH', 'villa puncak tidar', null, null, null);
INSERT INTO `user_apotek` VALUES ('1161', 'SETIA PAMUNGKAS, APT, LWG', 'JL. PANGLIMA SUDIRMAN NO. 106 KEC. LAWANG, KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1162', 'MOROSEBO, APT, TULUNGAGUNG', 'JL. RAYA DURENAN-BANDUNG RT.02 RW.01 Ds.GANDONG KEC. BANDUNG, KAB. TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1163', 'SUMBER WUNI, APT, LAWANG', 'JL. SUMBER WUNI 6A RT.01 RW.01 KALIREJO, LAWANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1164', 'TERUSAN, APT, MOJOKERTO', 'JL. RAYA BAGUSAN NO. 35, DESA TERUSAN, KEC. GEDEG, KAB. MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1165', 'NGUNUT FARMA, APT, TULUNGAGUNG', 'JL. RAYA NGUNUT, DESA NGUNUT, KEC. NGUNUT, KAB. TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1166', 'ASTRO SYIFA, APT, KERTOSONO', 'JL. PANGLIMA SUDIRMAN 9 B KEPUH, KERTOSONO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1167', 'PT. BARRIZ SANTUN JAYA, PBF, JOMBANG', 'PERUM JOMBANG CITRA RAYA RT.32/RW.05 DS. PANDANWANGI, KEC.DIWEK,KAB.JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1168', 'TEMBARAK, APT, NGANJUK', 'JL. IMAM BONJOL RT.02 RW.04, DS. TEMBARAK KEC. KERTOSONO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1169', 'SINAR AGUNG, APT, NGANJUK', 'JL. DIPONEGORO NO. 03 NGANJUK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1170', 'SURYA WARAS, APT, KEDIRI', 'JL. DIPONEGORO 16A DESA BOGO, KEC. PLEMAHAN, KAB. KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('1171', 'GIRIPURNO FARMA, APT, BATU', 'JL. RAYA GIRIPURNO RT.39/RW.06 DSN. KEDUNG KEC. BUMIAJI KOTA BATU', null, null, null);
INSERT INTO `user_apotek` VALUES ('1172', 'YUWANDI FARMA, APT, LAWANG', 'JL. A. YANI NO. 217 DS. SUMBERPORONG, LAWANG KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1173', 'DINAR FARMA, APT, PASURUAN', 'JL. DR. WAHIDIN SUDIROHUSODO NO. 212 KOTA PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1174', 'MALANGSARI, APT, NGANJUK', 'DS. MALANGSARI NO. 05 KEC. TANJUNGANOM - NGANJUK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1175', 'FORTUNA SEJAHTERA, APT, SINGOSARI', 'JL. TUNGGUL AMETUNG RUKO KUA KAV. 2 CANDIRENGGO, KEC. SINGOSARI, KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1176', 'MT. HARYONO 127, APT, T.AGUNG', 'JL. MT. HARYONO NO. 127 RT. 03 RW. 08 KEPATIHAN, KAB. TULUNGAGUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1177', 'RANIA, APT, NGANJUK', 'REST AREA BLOK IV NO. 11, KEC. SUKOMORO, KAB. NGANJUK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1178', 'CINTA, APT, NGANJUK', 'JL. IMAM BONJOL NO. 79 NGANJUK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1179', 'SABRAM FARMA, APT, NGANJUK', 'JL. RAYA KEDIRI RT.01 RW.02 DSN. NGELAM DS. LOCERET KAB. NGANJUK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1180', 'DIGDA FARMA, APT, NGANJUK', 'JL. BARITO NO. 194 NGANJUK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1181', 'JANTI, APT, MALANG', 'JL. SEGAWE NO. 10 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1182', 'GOLDEN SMART SUCCES INDONESIA, PT, SBY', '-', null, null, null);
INSERT INTO `user_apotek` VALUES ('1183', 'BRAMANTYO, APT, MLG', 'JL. RAYA BANDULAN NO. 21 KAV. 13 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1184', 'CIPTA FARMA, APT, MADIUN', 'JL. BAGYO SUPARNO NO. 222 SARADAN - MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1185', 'DLANGGU FARMA, APT, MOJOKERTO', 'JL. RAYA PACET DSN KADEMANGAN RT.003 RW.001 DLANGGU - MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1186', 'NAYU FARMA, APT, SINGOSARI', 'JL. RAYA KARANGLO NO. 52, KEC. SINGOSARI, KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1187', 'BARANG ED', 'malang', null, null, null);
INSERT INTO `user_apotek` VALUES ('1188', 'ASIH ABYAKTA, RS, GEMPOL-PASURUAN', 'JL. RAYA SURABAYA-MALANG KM. 42 NO. 88 DS. KEPULUNGAN, GEMPOL-PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1189', 'HASADEF, APT, MLG', 'JL. PLAOSAN TIMUR NO. 226 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1190', 'CLAUDIA FARMA, APT, KEDIRI', 'JL. AIRLANGGA NO. 156 DS. SUKOREJO KEC. NGASEM KAB. KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('1191', 'DJODO FARMA, APT, SIDOARJO', 'GRAHA ASRI SUKODONO BLOK A1 - 1 SUKODONO SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1192', 'AGI SEHAT, APT, NGANJUK', 'KIOS PASAR GLODOK BLOK VI NO. 1-2 GONDANG - NGANJUK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1193', 'SHOLIHAH, APT, MADIUN', 'JL. RAYA BALEREJO BLOK 8 KARANGMALANG, BALEREJO, MADIUN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1194', 'MITRA KUSUMA, APT, KEDIRI', 'JL. HARINJING NO. 93 DS. KEPUNG KEC. KEPUNG, KAB. KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('1195', 'MEDICA FARMA, APT, PASURUAN', 'JL. STASIUN NO. 250 KEL. KARANGKETUG, KEC. GADINGREJO, KOTA PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1196', 'PRIMA HUSADA, RS, SINGOSARI', 'JL. BANJARARUM SELATAN NO. 3 MONDOROKO KEC. SINGOSARI KAB. MLG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1197', 'SARI INDAH, APT, SINGOSARI', 'JL. KERTANEGARA NO. 1F KEC. SINGOSARI, KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1198', 'K-24 PAHLAWAN, APT, SIDOARJO', 'JL. PAHLAWAN NO. 140 SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1199', 'K-24 JATI, APT, SIDOARJO', 'JL. RAYA JATI NO. 34 SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1200', 'REJEKI, APT, SIDOARJO', 'JL. KAHURIPAN NO. 06 SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1201', 'MAJESTYK, APT, SIDOARJO', 'JL. TARIK LOR RT 017 RW 00 TARIK SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1202', 'ADIT, APT, SIDOARJO', 'JL. RAYA SEGODO BANCANG NO. 04 RT 01 RW 01 TARIK SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1203', 'KEMANTREN, APT, SIDOARJO', 'JL. RAYA KEMANTREN NO. 05 TULUNGAN, SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1204', 'REJO ASRI FARMA, APT, TAJINAN', 'JL. RAYA TAMBAK REJO KM. 9 RT 04 RW 02 TAMBAK ASRI, KEC. TAJINAN, KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1205', 'MIRZA FARMA, APT, SIDOARJO', 'JL. Ds. WONOAYU NO. 92 RT.03 RW.01 WONOAYU SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1206', 'MIRZA FARMA 2, APT, SIDOARJO', 'DESA PENAMBANGAN RT.12 RW.03 BALONG BENDO SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1207', 'KIREINA, APT, SIDOARJO', 'JL. WISMA BERINGIN B1 NO. 28 TAMAN, SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1208', 'PANGESTU FARMINDO MULIATAMA, PT, MALANG', 'JL. RAYA LANGSEP NO. 56 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1209', '5 AKORDION, APT, MALANG', 'JL. AKORDION UTARA, RUKO PERMATA AKORDION KAV. 5, TUNGGULWULUNG, LWKWARU, MLG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1210', 'TULANGAN, APT, SIDOARJO', 'JL. RAYA TULANGAN NO. 10 SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1211', 'ADINE FARMA, APT, PORONG', 'JL. BHAYANGKARI NO. 522 PORONG SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1212', 'TIRTO FARMA, APT, MALANG', 'JL. TIRTO UTOMO NO. 4 LANDUNGSARI, KEC. DAU, KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1213', 'BELLGY FARMA, APT, SIDOARJO', 'PERUMAHAN SIDOKARE ASRI AW-20, SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1214', 'ARDA FARMA, APT, SIDOARJO', 'JL. RAYA BOGEM NO. 40 KEBONAGUNG SUKODONO, SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1215', 'MAWAR FARMA, APT, SIDOARJO', 'JL. LEMAH PUTRO BARAT NO. 101 LEMAH PUTRO, SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1216', 'KI-THA SEHAT, APT, SIDOARJO', 'JL. RAYA DUNGUS SAWO NO. 17 SUKODONO, SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1217', 'SIGURAGURA, APT, MALANG', 'JL. SIGURA-GURA BARAT A NO. 2 KAV. 3 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1218', 'CCA, APT, MALANG', 'JL. HIMALAYA BLOK VE NO. 7 KEC. DAU, KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1219', 'K-24 SOEHAT', 'JL. SOEKARNO HATTA NO. 2 KAV. 7 MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1220', 'SURYA SEHAT, APT, BLITAR', 'JL. MAHAKAM NO. 90 BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1221', 'KREMBUNG, APT, SIDOARJO', 'JL. RAYA KREMBUNG NO. 17 KREMBUNG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1222', 'KIMIA FARMA 151, APT, KEDIRI', 'JL. STASIUN NO. 47, BALOWERTI, KEC. KOTA, KOTA KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('1223', 'PANGKEMIRI FARMA, APT, SIDOARJO', 'JL. PANGKEMIRI NO. 18 TULANGAN SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1224', 'ANNISA FARMA, APT, MALANG', 'JL. JOYO AGUNG NO. 2 RT.09 RW.09 MERJOSARI, MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1225', 'SEDAYU, APT, TUREN', 'JL. GATOT SUBROTO NO. 108 SEDAYU, KEC. TUREN, KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1226', 'GARUM SEHAT, APT, BLITAR', 'JL. RAYA GARUM NO. 14 RT.03 RW.01, KEL. TAWANGSARI, GARUM, BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1227', 'TALUN SEHAT, APT, BLITAR', 'JL. RAYA TALUN NO. 20 LINGKUNGAN TALUN RT.02 RW.01', null, null, null);
INSERT INTO `user_apotek` VALUES ('1228', 'ISMANGIL II, APT, WLINGI-BLITAR', 'JL. DR. SUCIPTO NO. 6 WLINGI, BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1229', 'INDOFARMA GLOBAL MEDIKA, PT, MALANG', 'JL. SOEKARNO-HATTA NO. 80 KOTA MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1230', 'SALEHA RIZKI FARMA, APT, SINGOSARI', 'JL. ROGONOTO TIMUR NO. 22 KEC. SINGOSARI, KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1231', 'AROFAH.APT, MOJOWARNO-JOMBANG', 'JL. YOS SUDARSO NO. 119 DESA CATAKGAYAM KEC MOJOWARNO KAB JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1232', 'AYO SEHAT, APT, MALANG', 'PERUM MUTIARA REGENCY RUKO 3 PANDANLANDUNG, KEC. WAGIR, KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1233', 'ASY -SYIFA, KLINIK, PASURUAN', 'DSN. PARAS RT.001 RW.004 DS. PARASREJO KEC. POHJENTREK, KAB. PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1234', 'NAFISAH, APT, SIDOARJO', 'PERUM MUTIARA CITRA ASRI BLOK E-1 NO. 1, CANDI - SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1235', 'MOJOSARI, APT, MOJOKERTO', 'JL. AIRLANGGA NO. 33 DS. SEDURI KEC. MOJOSARI, KAB. MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1236', 'NURRA FARMA, APT, NGANJUK', 'JL. TAMANAN NO. 10 DS. KUTOREJO, KEC. BAGOR, KAB. NGANJUK', null, null, null);
INSERT INTO `user_apotek` VALUES ('1237', 'ACACIA JAYA ABADI, PT, SURABAYA', 'JL. KALI RAYA RUNGKUT NO. 3 BLOK N 38 - 39 SURABAYA', null, null, null);
INSERT INTO `user_apotek` VALUES ('1238', 'AQINA FARMA, APT, BLITAR', 'DSN. JEPUN RT.03 RW.05 DS. TEGALREJO KEC. SELOPURO KAB. BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1239', 'KANIGORO, APT, BLITAR', 'JL. KUSUMA BANGSA NO. 18B KEC. KANIGORO, KAB. BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1240', 'AL-KARIM FARMA, APT, NGORO', 'JL. JOLOTUNDO NO. 31 RT/RW 001/001 SEDATI, KEC. NGORO, MOJOKERTO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1241', 'MEDIC WONOAYU, APT, SIDOARJO', 'DESA JIMBARAN KULON RT.01/RW.02 WONOAYU, SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1242', 'RATANCA, APT, KEDIRI', 'JL. RAYA KEDIRI - BLITAR NO. 22 DS. TEGALAN KEC. KANDAT KAB. KEDIRI', null, null, null);
INSERT INTO `user_apotek` VALUES ('1243', 'SEJATI TEMBOK, APT, PASURUAN', 'JL. KI HAJAR DEWANTARA NO. 55 KOTA PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1244', 'KANIGORO SEHAT, APT, BLITAR', 'JL. MANUKWARI NO. 20 KEC. KANIGORO, KAB. BLITAR', null, null, null);
INSERT INTO `user_apotek` VALUES ('1245', 'PERSADA HOSPITAL, RS, MALANG', 'JL. PANJI SUROSO, KOMPL. ARAYA BUSINESS CENTER KAV. II-IV, MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1246', 'PANJUNAN FARMA, APT, SIDOARJO', 'JL. RAYA PANJUNAN RT.22 RW.06 DUNGUS SUKODONO, SIDOARJO', null, null, null);
INSERT INTO `user_apotek` VALUES ('1247', 'GAVANA FARMA, APT, PURWOSARI', 'JL. RAYA PURWOSARI NO. 136 03/05 PURWOSARI - PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1248', 'FORMULA, APT, MALANG', 'JL. SUGRIWA 5A NO. 21 MANGLIAWAN, KEC. PAKIS, KAB. MALANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1249', 'SHAFA MEDIKA, KLINIK, PANDAAN', 'DSN. MEJASEM RT.01 RW.05 DS. TAWANGREJO KEC. PANDAAN, KAB. PASURUAN', null, null, null);
INSERT INTO `user_apotek` VALUES ('1250', 'CAHAYA BAROKAH, APT, JOMBANG', 'JL. RAYA SELOREJO NO. 10 DS. SELOREJO, KEC. MOJOWARNO, KAB. JOMBANG', null, null, null);
INSERT INTO `user_apotek` VALUES ('1251', 'SILVANA, APT, SIDOARJO', 'DSN. MLATEN RT.7 RW.3 MLIRIP ROWO, TARIK, SIDOARJO', null, null, null);

-- ----------------------------
-- Table structure for user_booking
-- ----------------------------
DROP TABLE IF EXISTS `user_booking`;
CREATE TABLE `user_booking` (
  `id_booking` varchar(50) NOT NULL,
  `no_booking` varchar(100) DEFAULT NULL,
  `id_pbf` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_booking`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_booking
-- ----------------------------

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
  `time_kirim` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_faktur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_faktur
-- ----------------------------
INSERT INTO `user_faktur` VALUES ('97427745838989312', 'TY23HJ01', '1229', 'JL. SOEKARNO-HATTA NO. 80 KOTA MALANG', 'MALANG', '11:00', '03-12-2017', '3', null, '18', '3', null, '2017-12-03 12:49:34', null, '2017-12-03 12:49:34', null, '2017-12-03 12:49:34', '1', 'XAE2605', '65446', '1', '1 DOS', 'KREDIT', null, '15:55:02', null, '12:23:18', null, '12:49:34');
INSERT INTO `user_faktur` VALUES ('97427745838989313', 'TY23HJ02', '1211', 'JL. BHAYANGKARI NO. 522 PORONG SIDOARJO', 'SURABAYA                      ', '11:00', '03-12-2017', '3', null, '18', '3', null, '2017-12-03 12:49:34', null, '2017-12-03 12:49:34', null, '2017-12-03 12:49:34', '1', 'XAE2605', '56621', '1', '1 DUS TEH GELAS', 'COD', null, '21:59:36', null, '12:23:18', null, '12:49:34');
INSERT INTO `user_faktur` VALUES ('97427745838989314', 'TY23HJ03', '308', 'RUKO SINGOSARI BUSSINESS  CENTER KAV. 8A JL. KLAMPOK KEC SINGOSARI KAB MALANG     ', 'MALANG', '11:00', '03-12-2017', '3', null, '18', '3', null, '2017-12-03 12:49:34', null, '2017-12-03 12:49:34', null, '2017-12-03 12:49:34', '1', 'XAE2605', '14958', '1', '1 DUS AQUA', 'KREDIT', null, '22:03:34', null, '12:23:18', null, '12:49:34');
INSERT INTO `user_faktur` VALUES ('97427745838989315', 'TYGHU001', '1232', 'PERUM MUTIARA REGENCY RUKO 3 PANDANLANDUNG, KEC. WAGIR, KAB. MALANG', 'MALANG', '11:00', '04-12-2017', '3', null, '18', '3', null, '2017-12-03 12:49:34', null, '2017-12-03 12:49:34', null, '2017-12-03 12:49:34', '1', 'ABNT138', '51643', '1', '1 Koli dos Aqua', 'KREDIT', null, '11:37:45', null, '12:23:18', null, '12:49:34');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_kurir
-- ----------------------------
INSERT INTO `user_kurir` VALUES ('1', 'dwi', 'dwi', '20');
INSERT INTO `user_kurir` VALUES ('2', 'iswa', 'iswa', '13');
INSERT INTO `user_kurir` VALUES ('3', 'mury', 'mury', '14');
INSERT INTO `user_kurir` VALUES ('4', 'firm', 'firm', '15');
INSERT INTO `user_kurir` VALUES ('5', 'heri', 'heri', '22');

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

-- ----------------------------
-- View structure for pbf_v_order
-- ----------------------------
DROP VIEW IF EXISTS `pbf_v_order`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `pbf_v_order` AS SELECT
user_apotek.nama_apotek,
user_apotek.alamat,
user_apotek.telepon,
user_apotek.jalur,
user_faktur.id_faktur,
user_faktur.no_faktur,
user_faktur.jam_kirim,
user_faktur.tanggal_kirim,
user_faktur.id_pbf,
user_faktur.id_penerima,
user_faktur.id_sp,
user_faktur.`status`,
user_faktur.status_notif,
user_faktur.id_booking,
user_faktur.id_status,
user_faktur.koli,
user_faktur.keterangan,
user_faktur.status_bayar,
user_faktur.status_pickup,
user_faktur.time_order,
user_faktur.time_pickup,
user_faktur.time_sp,
user_faktur.time_terima,
user_faktur.kota,
user_pbf.nama,
user_pbf.alamat AS pbfalamat,
user_pbf.telepon AS pbftelepon,
user_pbf.email,
user_faktur.time_kirim
FROM
user_faktur
INNER JOIN user_apotek ON user_apotek.id_apotek = user_faktur.penerima
INNER JOIN user_pbf ON user_pbf.id_pbf = user_faktur.id_pbf ;

-- ----------------------------
-- View structure for pbf_v_order_sp
-- ----------------------------
DROP VIEW IF EXISTS `pbf_v_order_sp`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `pbf_v_order_sp` AS SELECT
pbf_v_order.nama_apotek,
pbf_v_order.alamat,
pbf_v_order.telepon,
pbf_v_order.jalur,
pbf_v_order.id_faktur,
pbf_v_order.no_faktur,
pbf_v_order.jam_kirim AS jam_booking,
pbf_v_order.tanggal_kirim AS tanggal_booking,
pbf_v_order.id_pbf,
pbf_v_order.id_penerima,
pbf_v_order.id_sp,
pbf_v_order.`status`,
pbf_v_order.status_notif,
pbf_v_order.id_booking,
pbf_v_order.id_status,
pbf_v_order.koli,
pbf_v_order.keterangan,
pbf_v_order.status_bayar,
pbf_v_order.status_pickup,
pbf_v_order.time_order,
pbf_v_order.time_pickup,
pbf_v_order.time_sp,
pbf_v_order.time_terima,
pbf_v_order.kota,
tirex_v_jadwal.nama,
tirex_v_jadwal.nik,
tirex_v_jadwal.no_hp,
tirex_v_jadwal.no_mobil,
tirex_v_jadwal.jam_kirim,
tirex_v_jadwal.tanggal_kirim,
tirex_v_jadwal.no_sp,
tirex_v_jadwal.id_antar_paket,
user_pbf.nama AS namapbf,
user_pbf.alamat AS alamatpbf,
user_pbf.telepon AS teleponpbf,
user_pbf.email AS emailpbf,
pbf_v_order.time_kirim
FROM
pbf_v_order
LEFT JOIN tirex_v_jadwal ON tirex_v_jadwal.id_antar_paket = pbf_v_order.id_sp
INNER JOIN user_pbf ON user_pbf.id_pbf = pbf_v_order.id_pbf ;

-- ----------------------------
-- View structure for tirex_v_jadwal
-- ----------------------------
DROP VIEW IF EXISTS `tirex_v_jadwal`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `tirex_v_jadwal` AS SELECT
tirex_v_pegawai.nama,
tirex_v_pegawai.nik,
antar_paket.no_hp,
antar_paket.no_mobil,
antar_paket.jam_kirim,
antar_paket.tanggal_kirim,
antar_paket.no_sp,
antar_paket.id_antar_paket,
antar_paket.id_karyawan
FROM
antar_paket
INNER JOIN tirex_v_pegawai ON tirex_v_pegawai.id_pegawai = antar_paket.id_karyawan ;

-- ----------------------------
-- View structure for tirex_v_jadwalkurir
-- ----------------------------
DROP VIEW IF EXISTS `tirex_v_jadwalkurir`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `tirex_v_jadwalkurir` AS SELECT
tirex_v_pegawai.no_mobil,
tirex_v_pegawai.plat_nomor,
tirex_v_pegawai.type,
tirex_v_pegawai.nama,
tirex_v_pegawai.nik,
tirex_v_pegawai.telp,
tirex_v_pegawai.foto,
antar_kurir.jam_kirim,
antar_kurir.tanggal_kirim,
antar_kurir.no_sp,
antar_kurir.id_antar_kurir,
antar_kurir.id_karyawan
FROM
antar_kurir
INNER JOIN tirex_v_pegawai ON tirex_v_pegawai.id_pegawai = antar_kurir.id_karyawan ;

-- ----------------------------
-- View structure for tirex_v_pegawai
-- ----------------------------
DROP VIEW IF EXISTS `tirex_v_pegawai`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `tirex_v_pegawai` AS SELECT
mobil.no_mobil,
mobil.plat_nomor,
mobil.nama AS type,
karyawan.nama,
karyawan.nik,
karyawan.telp,
karyawan.foto,
karyawan.id_pegawai
FROM
karyawan
INNER JOIN mobil ON mobil.id_mobil = karyawan.id_mobil ;
