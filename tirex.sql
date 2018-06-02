/*
Navicat MySQL Data Transfer

Source Server         : aphep
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : tirex

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-11-29 06:37:31
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of antar_paket
-- ----------------------------
INSERT INTO `antar_paket` VALUES ('24', '20', '65767', '87', '11:00', '28-11-2017', 'MLGP341XE281117');

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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail_sp
-- ----------------------------
INSERT INTO `detail_sp` VALUES ('168', '24', '62954', '2', null);
INSERT INTO `detail_sp` VALUES ('169', '24', '36952', '2', null);

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
INSERT INTO `karyawan` VALUES ('2', '234', 'tosa', '081235266213', '5', '2', '1', null);
INSERT INTO `karyawan` VALUES ('4', '389', 'Nana', '081235266213', '3', '', '1', null);
INSERT INTO `karyawan` VALUES ('8', '12322', 'afif Rosyadi', '081325366312', '9', '', '2', 'assets/upload/paket/170703051653banner2.jpg');
INSERT INTO `karyawan` VALUES ('10', '981', 'arif rahman', '081235266213', '5', '4', '1', 'assets/upload/paket/170703051653banner2.jpg');
INSERT INTO `karyawan` VALUES ('11', '3452', 'Rosyadi Afif', '081235266213', '8', null, '1', 'assets/upload/paket/170811035912a4.jpg');
INSERT INTO `karyawan` VALUES ('12', '3453', 'Wulan', '081235266213', '8', null, '2', 'assets/upload/paket/170811035912a4.jpg');
INSERT INTO `karyawan` VALUES ('13', '0001', 'mul', '756453', '5', '14', '1', 'assets/upload/paket/170911060406store-nitrogen.jpg');
INSERT INTO `karyawan` VALUES ('14', '0002', 'dik', '465767', '5', '6', '1', 'assets/upload/paket/170911060526dinkop.png');
INSERT INTO `karyawan` VALUES ('15', '0003', 'ari', '78657456', '5', '7', '1', 'assets/upload/paket/170911060602ali.png');
INSERT INTO `karyawan` VALUES ('16', '0004', 'pur', '343423', '5', '8', '2', 'assets/upload/paket/170911060636ali.png');
INSERT INTO `karyawan` VALUES ('17', '0005', 'ant', '343545', '5', '9', '1', 'assets/upload/paket/170911060710dinkop.png');
INSERT INTO `karyawan` VALUES ('18', '0006', 'has', '5465767', '5', '10', '1', 'assets/upload/paket/170911060739hongkong.png');
INSERT INTO `karyawan` VALUES ('19', '0007', 'syo', '354657', '5', '11', '1', 'assets/upload/paket/170911060820apoteksehat.jpg');
INSERT INTO `karyawan` VALUES ('20', '0008', 'her', '65767', '5', '12', '1', 'assets/upload/paket/170911060901green.png');
INSERT INTO `karyawan` VALUES ('21', '0009', 'ama', '43545', '5', '13', '1', 'assets/upload/paket/170911060959toko online.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_apotek
-- ----------------------------
INSERT INTO `user_apotek` VALUES ('1', 'APOTEK X                                ', 'JLCANDIWARINGIN', 'MALANG', '                              ', 'DAERAH ABM/MLG                          ');
INSERT INTO `user_apotek` VALUES ('2', 'BERLIMA,APT                             ', 'JL.ARISMUNANDARNO.18', 'MALANG', '0341-367265                   ', 'DAERAH ALUN ALUN KOTA/MLG               ');
INSERT INTO `user_apotek` VALUES ('3', 'SARI,APT                                ', 'JLPASARBESARMLG', 'MALANG', '0341-326495                   ', 'DAERAH ALUN ALUN KOTA/MLG               ');
INSERT INTO `user_apotek` VALUES ('4', 'SURYA EKA PUTRA, PT                     ', 'PBIUTARABLOKA6/19A', 'MALANG', '0341 - 417387                 ', 'DAERAH ARAYA/MLG                        ');
INSERT INTO `user_apotek` VALUES ('5', 'ANUGRAH,TK (ARJOSARI)                   ', 'JL.TELIKPELABUHANRATUNO.14ARJOSARI', 'MALANG', '0341-9387007                  ', 'DAERAH ARJOSARI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('6', 'ISTIQOMAH, TK                           ', 'JL.TELUKCENDRAWASIHNO.160ARJOSARI(SEBELAHSELATAN)', 'MALANG', '0341 - 419727                 ', 'DAERAH ARJOSARI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('7', 'PARAMITA KENDEDES, APT                  ', 'JL.RADENPANJISUROSORUKOMTCBLOCA5-MALANG', 'MALANG', '0341 - 489696                 ', 'DAERAH ARJOSARI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('8', 'SALSABILA CELULLER & SHOP               ', 'JL.PAHLAWAN247-BALEARJOSARI', 'MALANG', '0341 - 475303                 ', 'DAERAH ARJOSARI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('9', 'BU LILIK, TK                            ', 'JL.TELUKMANDARNO.66', 'MALANG', '0341-419550                   ', 'DAERAH ARJOSARI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('10', 'AN-NISA MEDIKA                          ', 'JL.WONOREJONO.96MALANG', 'MALANG', '085 730 607 094               ', 'DAERAH ARJOWINANGUN/MLG                 ');
INSERT INTO `user_apotek` VALUES ('11', 'INAYAH FARMA, APT                       ', 'JL.RAYAARJOWINANGUN4-RT01RW01-MALANG', 'MALANG', '0341 752260                   ', 'DAERAH ARJOWINANGUN/MLG                 ');
INSERT INTO `user_apotek` VALUES ('12', 'REFA HUSADA,APT                         ', 'JL.MAYJENDSUNGKONONO.9TLOGOWARU-BURING', 'MALANG', '0341-754075                   ', 'DAERAH ARJOWINANGUN/MLG                 ');
INSERT INTO `user_apotek` VALUES ('13', 'TITIAN SEHAT,APT                        ', 'JL.TERUSANLETJENSUNGKONONO.69(RAYATUTUT)', 'MALANG', '0341-7352001                  ', 'DAERAH ARJOWINANGUN/MLG                 ');
INSERT INTO `user_apotek` VALUES ('14', 'USMAN,TK                                ', 'JL.BANDULANBARATNO.32', 'MALANG', '0341 - 557640                 ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('15', 'AQ, TOKO                                ', 'JL.BANDULANGANGIX/588', 'MALANG', '818389578', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('16', 'BU SRI DEWI,TK                          ', 'JL.BANDULANGGIXNO.603', 'MALANG', '0881 626 1966                 ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('17', 'BU SUGIARTI,TK (BANDULAN)               ', 'JL.BANDULAN9NO.595CPERUMDEPANBLOKD', 'MALANG', '085 815 528 069               ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('18', 'HALIM JAYA,TK                           ', 'JL.BANDULANVI-FB2-24(PERUMKOREM)', 'MALANG', '0341 - 566 929                ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('19', 'IDA,TK (PANDAN LANDUNG)                 ', 'JL.PANDANLANDUNGNO.49', 'MALANG', '0341 - 555 149                ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('20', 'MOROSEHAT,TO                            ', 'JL.RAYABANDULANNO.16', 'MALANG', '0341-6322703                  ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('21', 'PHARMACY, APT                           ', 'JL.RAYABANDULANNO.21KAV2KEC.SUKUN-MALANG', 'MALANG', '0341 - 8904753                ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('22', 'POJOK,TK (BANDULAN)                     ', 'JL.BANDULANGG.IXNO.588', 'MALANG', '0341 - 986 5060               ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('23', 'POJOK,TK (MULYOREJO)                    ', 'JL.RAYATEBOTENGAHNO.1', 'MALANG', '085 933 00 95 87              ', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('24', 'SRI DEWI                                ', 'JL.BANDULANIX/603', 'MALANG', '8816261966', 'DAERAH BANDULAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('25', 'BARENG,APT                              ', 'JL.IR.RAISNO.284', 'MALANG', '0341-322395                   ', 'DAERAH BARENG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('26', 'PAK NUR (POJOK),TK                      ', 'JL.BARENGRAYA2-N/562', 'MALANG', '0341-345037                   ', 'DAERAH BARENG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('27', 'ANASTASIA, APT                          ', 'JL.BUKITBERBUNGA137BATU', 'MALANG', '0341 594235                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('28', 'ANUGRAH,TK (BEJI)                       ', 'JL.RAYABEJI', 'MALANG', '0341 - 524020                 ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('29', 'BAROKAH,TK (JUNREJO)                    ', 'JL.RAYATELEKUNGGANGSIRANNO.174JUNREJOBATU', 'MALANG', '081 252 428 700               ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('30', 'BATU SEHAT,TO                           ', 'JL.BRANTASNO.24BATU', 'MALANG', '0341-511303                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('31', 'HARUM MANIS                             ', 'PASARBATU', 'MALANG', '0341-592370                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('32', 'LIVE MEDIKA, APT                        ', 'JLABDULRAHMANNO1KELNGAGLIKBATU', 'MALANG', '81343839387', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('33', 'M. SUCHIB,APT                           ', 'JL.K.H.AGUSSALIMNO.23BATU', 'MALANG', '0341-590377                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('34', 'MANFAAT 2, TK                           ', 'PASARBATUDAERAHBATU', 'MALANG', '0341-592191                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('35', 'MANFAAT,APT                             ', 'JL.DIPONEGORONO.48BATU', 'MALANG', '0341-591370                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('36', 'MEDISON, APT (BATU)                     ', 'JL.DIPONEGORONO78-BATU', 'MALANG', '0341 - 593384                 ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('37', 'MIRA FARMA, APT                         ', 'JL.BUKITBERBUNGANO5(SEBELAHRUMAHMUNIR)KEL.SIDOMULYOKEC.BUMIAJIBATU', 'MALANG', '0341 - 524713                 ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('38', 'NANNY MART, MM                          ', 'JL.RAYABEJINO.65BATU', 'MALANG', '0341-6331477                  ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('39', 'PUJON SEHAT, APT                        ', 'JL.ABDULMANANWIJAYANO.286(PUJON)', 'MALANG', '0341 - 9700528                ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('40', 'RAHMA, APT                              ', 'JLDEWISARTIKANO1BATU', 'MALANG', '511588', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('41', 'SAHABAT,TK                              ', 'JL.BIRAWANO.6TEGALWARUDAU', 'MALANG', '85233329551', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('42', 'SETIA BUDI,TK                           ', 'JL.PETUNGSEWUNO.245DAU(DEPANBALAIDESA)BATU', 'MALANG', '085 855 658 052               ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('43', 'SHOFA DIEN`S,TK                         ', 'JL.BRIGJENABDULMANANWIJAYA322PUJON', 'MALANG', '81233714343', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('44', 'SOFADIN,TK                              ', 'JLABDULMANANWIJAYANO322/7PUJON', 'MALANG', '0341 524262                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('45', 'SOLO,APT                                ', 'JL.BRIGJENABDULMANANWIJAYANO.36-PUJON', 'MALANG', '0341 -3077042                 ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('46', 'SUMBER WARAS,APT                        ', 'JL.DEWISARTIKAE41BATU', 'MALANG', '0341 591766                   ', 'DAERAH BATU/MLG                         ');
INSERT INTO `user_apotek` VALUES ('47', 'GARUDA, APT                             ', 'JLMAYJENPANJAITANNO78', 'MALANG', '0341 - 559590                 ', 'DAERAH BETEK/MLG                        ');
INSERT INTO `user_apotek` VALUES ('48', 'BETHEK FARMA, APT                       ', 'JLMAYJENPANJAITANNO119MALANG', 'MALANG', '0341-6512606                  ', 'DAERAH BETEK/MLG                        ');
INSERT INTO `user_apotek` VALUES ('49', 'BLIMBING INDAH,APT                      ', 'PERUMBLIMBINGINDAHTIMURP-1NO.19', 'MALANG', '0341-486472                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('50', 'DIRGAHAYU, TK                           ', 'JL.IKANHIUNO.5-MALANG', 'MALANG', '85730399569', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('51', 'KENDEDES FARMA, APT                     ', 'JL.A.YANIUTARANO.16', 'MALANG', '0341 - 8863757                ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('52', 'MORO SEHAT, TK                          ', 'RUKOPERMATASAXOFONNO.1BRT02RW06-LOWOKWARU', 'MALANG', '081 252762550                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('53', 'ACASIA,APT                              ', 'JL.SUNANDARPRIYOSUDARMONO.51-52', 'MALANG', '0341-479147                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('54', 'AMANAH HUSADA,APT                       ', 'JL.KALPATARUNO.18', 'MALANG', '0341-494376                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('55', 'ARGARAYA MEDIKA, APT                    ', 'JL.KALPATARU39', 'MALANG', '0341 - 4345510                ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('56', 'ASSALAM, TK                             ', 'JL.TELUKBAYURNO.59-PANDANWANGI', 'MALANG', '0341 - 4430691                ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('57', 'BAROKAH, TK (TELUK CENDRAWASIH)         ', 'JL.TELUKCENDRAWASIHNO.64/15', 'MALANG', '0341 - 8682367                ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('58', 'CEMPAKA,APT                             ', 'JL.L.A.SUCIPTONO.54BLIMBING', 'MALANG', '0341-493483                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('59', 'CILIWUNG,APT                            ', 'JL.CILIWUNGNO.44', 'MALANG', '0341-494024                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('60', 'DAMAI,TK                                ', 'JL.L.A.SUCIPTONO.31', 'MALANG', '0341-7008833                  ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('61', 'DR. ALBERT                              ', 'JL.TAMANBOROBUDURAGUNGINO.23-MALANG', 'MALANG', '081 333181818                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('62', 'DWI PUTRA GLORY,PT                      ', 'PONDOKBLIMBINGINDAHTENGAHXVIBLOKL-1NO.24BLIMBING', 'MALANG', '0341-482562 / 081 330 729 885 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('63', 'EL RAFA, APT                            ', 'JL.SIMPANGBOROBUDURNO.54BLIMBING', 'MALANG', '0341-481616                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('64', 'FARIZ, TK                               ', 'JLPANJISUROSONO81', 'MALANG', '0341 497381                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('65', 'FITRAH MEDICA,APT                       ', 'JL.TERUSANBOROBUDURNO.47CBLIMBING', 'MALANG', '0341-404044                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('66', 'FUNKEE,TK                               ', 'JL.SUDIMORONO.16', 'MALANG', '0341-472894                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('67', 'GAMASARI, APT                           ', 'JL.LETJENSUTOYONO.130-MALANG', 'MALANG', '0341 - 486127 / 8852277       ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('68', 'GRAJAGAN,APT                            ', 'JL.TELUKGRAJAGANNO.63PERUMPANDANWANGI', 'MALANG', '0341-483230                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('69', 'HIGINA,APT                              ', 'JL.KALIURANGNO.30', 'MALANG', '0341-476115                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('70', 'HOSANA,TK                               ', 'JL.SELOREJOBLOKBNO.15', 'MALANG', '0341-480251                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('71', 'K-24,APT (SUNANDAR)                     ', 'JL.SUNANDARPRIYOSUDARMONO.10MALANG', 'MALANG', '0341-413411                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('72', 'KALASAN, TK                             ', 'JLCANDIKALASANNO9BLIMBING', 'MALANG', '491492', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('73', 'KALIURANG FARMA, APT                    ', 'JL.KALIURANGNO.5A', 'MALANG', '0341 - 368909                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('74', 'LUMINTU, TK                             ', 'JL.S.PARMANNO.117', 'MALANG', '0341-493208                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('75', 'MAKMUR SEHAT,APT                        ', 'JL.A.YANINO.50-A', 'MALANG', '0341-414542                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('76', 'NINDYA,MM                               ', 'JL.PANJISUROSONO.6B', 'MALANG', '081 734 1300                  ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('77', 'NOVI/WIDODO, TK                         ', 'JL.BOROBUDUR8/6MALANG', 'MALANG', '0341 - 431802                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('78', 'POJOK BLIMBING,APT                      ', 'JL.A.YANINO.62', 'MALANG', '0341 - 492798                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('79', 'PRADHANA 3,APT                          ', 'JL.L.A.SUCIPTONO.78-ABLIMBING', 'MALANG', '0341-409554                   ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('80', 'SALBILILAH, TK                          ', 'JL.CANDIKIDALNO.6-BLIMBINGMASJIDSABILLILAH', 'MALANG', '0341 - 9500048 / 08816204716  ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('81', 'SARANGAN MEDIKA, APT                    ', 'JL.SARANGAN21B', 'MALANG', '0341 - 400674                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('82', 'SMS SABILLILAH, APT                     ', 'JLCANDIKIDALNO6MLG', 'MALANG', '0341 - 9500048                ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('83', 'WIJAYAKUSUMA, APT                       ', 'JL.LETJENS.PARMANNO26-MALANG', 'MALANG', '0341 - 491396                 ', 'DAERAH BLIMBING/MLG                     ');
INSERT INTO `user_apotek` VALUES ('84', 'BANTAR JAYA, APT                        ', 'JLKYAITAMINNO58(BELAKANGMATAHARI)', 'MALANG', '0341-722100                   ', 'DAERAH BLKNG MATAHARI/MLG               ');
INSERT INTO `user_apotek` VALUES ('85', 'DIAN FARMA,APT                          ', 'JL.GATOTSUBROTONO.42', 'MALANG', '0341-366089                   ', 'DAERAH BOLDY/MLG                        ');
INSERT INTO `user_apotek` VALUES ('86', 'JOYO DADI, TK                           ', 'JLMUHARTONO8MLG', 'MALANG', '321378', 'DAERAH BOLDY/MLG                        ');
INSERT INTO `user_apotek` VALUES ('87', 'METRO,MM                                ', 'JL.TERUSANAMBARAWANO.31', 'MALANG', '0341-9470675                  ', 'DAERAH BONDOWOSO/MLG                    ');
INSERT INTO `user_apotek` VALUES ('88', 'NUSA INDAH,TK                           ', 'JL.TERUSANAMBARAWANO.43', 'MALANG', '0341-570745                   ', 'DAERAH BONDOWOSO/MLG                    ');
INSERT INTO `user_apotek` VALUES ('89', 'RESTU MEDIKA, APT                       ', 'JL.IKANLAYURNO.2MALANG', 'MALANG', '0341 - 498760                 ', 'DAERAH BOROBUDUR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('90', 'BULULAWANG,APT                          ', 'JL.RAYABULULAWANGRT06/RW07(UTARAPASARBULULAWANG)', 'MALANG', '085 100 555 062               ', 'DAERAH BULULAWANG/MALANG                ');
INSERT INTO `user_apotek` VALUES ('91', 'KENDAL PAYAK, APT                       ', 'JL.WATUDAKONNO.2KENDALPAYAKKECPAKISAJIKABMALANG', 'MALANG', '085 100655680                 ', 'DAERAH BULULAWANG/MALANG                ');
INSERT INTO `user_apotek` VALUES ('92', 'RAJA SEHAT, APT (KREBET)                ', 'JL.RAYAKREBET22BULULAWANG', 'MALANG', '0341-804560                   ', 'DAERAH BULULAWANG/MALANG                ');
INSERT INTO `user_apotek` VALUES ('93', 'SEJATI(BULULAWANG), TK                  ', 'JL.STASIUNNO.5UTARAPASARBULULAWANG', 'MALANG', '0341-833171                   ', 'DAERAH BULULAWANG/MALANG                ');
INSERT INTO `user_apotek` VALUES ('94', 'AMARTA,TK                               ', 'JL.RAYATLOGOWARUNO.8-A', 'MALANG', '085 855 636 062               ', 'DAERAH BULULAWANG/MALANG                ');
INSERT INTO `user_apotek` VALUES ('95', 'BUNUL FARMA,APT                         ', 'JL.HAMIDRUSDI101GBUNUL', 'MALANG', '0341 - 344616                 ', 'DAERAH BUNUL/MLG                        ');
INSERT INTO `user_apotek` VALUES ('96', 'DOMAT ANUGERAH FARMA,APT                ', 'JL.HAMIDRUSDIH-23', 'MALANG', '0341-322485                   ', 'DAERAH BUNUL/MLG                        ');
INSERT INTO `user_apotek` VALUES ('97', 'BURING FARMA, APT                       ', 'JL.MAYJENSUNGKONONO37MALANG', 'MALANG', '081 333876843                 ', 'DAERAH BURING/MLG                       ');
INSERT INTO `user_apotek` VALUES ('98', 'KARINA,APT                              ', 'JL.MAYJENSUNGKONONO.2MALANG', 'MALANG', '0341 - 9771710                ', 'DAERAH BURING/MLG                       ');
INSERT INTO `user_apotek` VALUES ('99', 'EVIN MALINDA                            ', 'JLSUMBERKEMBARNO12DAMPIT', 'MALANG', '0341-7375505                  ', 'DAERAH DAMPIT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('100', 'LANCAR JAYA,TK                          ', 'JL.PRAMBANANNO.1DAMPIT', 'MALANG', '0341-896866                   ', 'DAERAH DAMPIT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('101', 'SEMAR SAKTI,TK                          ', 'UTARAMASJIDJAMI\'(DEPANRSBDAMPIT)', 'MALANG', '0341-7077580                  ', 'DAERAH DAMPIT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('102', 'ANGKASA BARU, TK                        ', 'JL.GALUNGGUNGNO.86', 'MALANG', '08883324377 - 0341 6266660    ', 'DAERAH DIENG/MLG                        ');
INSERT INTO `user_apotek` VALUES ('103', 'ARIS,TK                                 ', 'JL.DIENGATASNO.26', 'MALANG', '089 673 609 092               ', 'DAERAH DIENG/MLG                        ');
INSERT INTO `user_apotek` VALUES ('104', 'CAHAYA SEHAT, APT                       ', 'JL.BUKITDIENGBLOKBNO.1', 'MALANG', '0341-582687                   ', 'DAERAH DIENG/MLG                        ');
INSERT INTO `user_apotek` VALUES ('105', 'RIZKY,TK                                ', 'JL.RAYABUKITDIENGNO.12', 'MALANG', '341574920', 'DAERAH DIENG/MLG                        ');
INSERT INTO `user_apotek` VALUES ('106', 'S-MART,MM                               ', 'JL.DIENGATAS(KARANGTENGAH)DEPANSDKR.WIDOROI', 'MALANG', '0341-729 8877                 ', 'DAERAH DIENG/MLG                        ');
INSERT INTO `user_apotek` VALUES ('107', 'PARAMA SEMESTA MEDIKA, PT               ', 'JL.PUNCAKDIENGLL-2NO15MALANG', 'MALANG', '0341 553306 - 085 108 3522 99 ', 'DAERAH DIENG/MLG                        ');
INSERT INTO `user_apotek` VALUES ('108', 'ANDHIKA, APT                            ', 'JLMAYJENHARYONONO90', 'MALANG', '0341 - 572689                 ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('109', 'BU HAJI, APT                            ', 'JL.SIDOMAKMURNO.3MULYOAGUNGKECDAUKABMALANG', 'MALANG', '0822 5955 2345                ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('110', 'EKONOMIS, TK                            ', 'JL.KARYAWIGUNANO.100(BELAKANGDOMUNMUH)', 'MALANG', '0341- 466608                  ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('111', 'KARYA MANDIRI,TK (BENDUNGAN SIGURA-GURA)', 'JL.BENDUNGANSIGURA-GURANO.33', 'MALANG', '0341-577872                   ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('112', 'KAWAN SEHATI, APT                       ', 'JL.GAJAYANANO534A', 'MALANG', '7774506', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('113', 'LANDUNG SARI FARMA, APT                 ', 'JLTIRTOUTOMONO25CLANDUNGSARIMALANG', 'MALANG', '85204925860', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('114', 'LOH JINAWI, TK                          ', 'JL.KARYAWIGUNANO.348TEGALGONDO(BLKGUNMUH)', 'MALANG', '0341- 464797                  ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('115', 'MAPAN, APT                              ', 'JL.MAYJENPANJAITAN172MALANG', 'MALANG', '0341 - 588745                 ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('116', 'MEDISON CARE, APT                       ', 'JL.MT.HARYONO(DINOYO)', 'MALANG', '0341-575048,552364            ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('117', 'PERTELON, TK                            ', 'JL.MT.HARYONOGANGXIIINO.456DINOYO', 'MALANG', '0341-5186162                  ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('118', 'SURYA ABADI, APT (RUKO LANDUNG SARI)    ', 'JL.RAYATLOGOMASRUKOLANDUNGSARIKAV5', 'MALANG', '82141000041', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('119', 'TELAGA NABI, APT                        ', 'JL.RAYASUMBERSARINO.254CMALANG', 'MALANG', '0898 0635765                  ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('120', 'TUNGGAL JAYA, TK                        ', 'JL.KERTORAHARJONO.26LOWOKWARU', 'MALANG', '0341-581255                   ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('121', '5 AKORDION APT                          ', 'JL.AKORDIONUTARARUKOPERMATAAKORDIONKAV5', 'MALANG', '0821 4260 0333                ', 'DAERAH DINOYO/MLG                       ');
INSERT INTO `user_apotek` VALUES ('122', 'LUTFI,UD                                ', 'PURICEMPAKAPUTIHBLOCUNO15GADANG', 'MALANG', '0341 8432800_082139500513     ', 'DAERAH GADANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('123', 'PELITA SEJAHTERA, APT                   ', 'JLKOLONELSUGIONORUKOGADANGASRIKAVNO7GADANG', 'MALANG', '0341 804674                   ', 'DAERAH GADANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('124', 'POJOK,TK                                ', 'JL.BABATANARJOWINANGUNGADANG', 'MALANG', '0341 - 955 9009               ', 'DAERAH GADANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('125', 'SUKACITA,APT                            ', 'JL.KOL.SUGIONO(RAYAGADANG)NO.40GADANG', 'MALANG', '0341-832854                   ', 'DAERAH GADANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('126', 'USAHA BARU, TK                          ', 'PERUMGADANGREGENCYBLOKP1', 'MALANG', '85755523089', 'DAERAH GADANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('127', 'K-24,APT (GATOT SUBROTO)                ', 'JL.GATOTSUBROTONO.102', 'MALANG', '0341 - 362556                 ', 'DAERAH GATOT SUBROTO                    ');
INSERT INTO `user_apotek` VALUES ('128', 'SAVITRI,TK                              ', 'JL.JUANDANO.15', 'MALANG', '0341-367 837                  ', 'DAERAH GATOT SUBROTO                    ');
INSERT INTO `user_apotek` VALUES ('129', 'ALILLA,APT                              ', 'JL.HAYAMWURUKNO.22-AGONDANGLEGI', 'MALANG', '0341-875836                   ', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('130', 'BOOM, MM                                ', 'JLHAYAMWURUK,GONDANGLEGI', 'MALANG', '0341-8669503                  ', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('131', 'DAHLIA JAYA,TK                          ', 'JL.RAYAWONOKERTONO.2BANTUR', 'MALANG', '0341 - 8148418                ', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('132', 'PAL SIDOREJO, APT                       ', 'JL.RAYASIDOREJONO.30KECPAGELARANKABMALANG', 'MALANG', '081 233 685 919               ', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('133', 'SARIVIT                                 ', 'GONDANGLEGI', 'MALANG', '0341-7777225                  ', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('134', 'SARIVITA, APT                           ', 'PASARGONDANGLEGIBEDAK4C', 'MALANG', '7777225', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('135', 'SYAWAL FARMA,APT                        ', 'JL.RAYAWONOKERTOBEDAK10GONDANGLEGI', 'MALANG', '0341-7338662                  ', 'DAERAH GONDANGLEGI/MLG                  ');
INSERT INTO `user_apotek` VALUES ('136', 'RIO MART,MM                             ', 'JL.BENDUNGANSIGURA-GURABARATRUKOGRIYAMANDIRIKAV.5', 'MALANG', '0341 - 57 57 84               ', 'DAERAH ITN/MLG                          ');
INSERT INTO `user_apotek` VALUES ('137', 'SANTANA,TK                              ', 'JL.BENDUNGANSUTAMINO.16-B', 'MALANG', '0341-572518                   ', 'DAERAH ITN/MLG                          ');
INSERT INTO `user_apotek` VALUES ('138', 'SUTAMI,APT                              ', 'JL.BENDUNGANSUTAMIKAV-3RUKOMALANG', 'MALANG', '0341-7337339                  ', 'DAERAH ITN/MLG                          ');
INSERT INTO `user_apotek` VALUES ('139', 'JAMU IBOE CAP 2 NYONYA,TK               ', 'JL.RAYAJURANGWUGUNO.26JEDONG', 'MALANG', '0341 - 5344359                ', 'DAERAH JEDONG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('140', 'LONCENG MART, TK                        ', 'JL.RAYAJURANGWUGUWAGIR', 'MALANG', '0341-552319                   ', 'DAERAH JEDONG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('141', 'MULYA JAYA 1,TK                         ', 'JL.RAYAJEDONGNO.38MULYOREJO', 'MALANG', '0341-552320                   ', 'DAERAH JEDONG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('142', 'NING,TK                                 ', 'JL.BUDIUTOMOSEDUDUT20', 'MALANG', '0341-567686                   ', 'DAERAH JEDONG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('143', 'SHEKINAH RAPHA, APT                     ', 'JL.RAYAKEBONSARINO.7MALANG', 'MALANG', '0341 - 802826 - 802827        ', 'DAERAH KACUK/MLG                        ');
INSERT INTO `user_apotek` VALUES ('144', 'R3 FARMA, APT                           ', 'JL.SATSUITTUBUNNO.10,KEBONSARI', 'MALANG', '0341 - 9078392                ', 'DAERAH KACUK/MLG                        ');
INSERT INTO `user_apotek` VALUES ('145', 'ASIH JAYA, TO                           ', 'JLDIPONEGORONO40KARANGPLOSO', 'MALANG', '0341-461755                   ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('146', 'AZZAMART,MM                             ', 'JL.ATLETIKB-4', 'MALANG', '0341-8610716                  ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('147', 'DAMAI SEJAHTERA,APT                     ', 'JL.KERTANEGARANO.37KARANGPLOSO', 'MALANG', '0341-9838228                  ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('148', 'ENGGAL MUKTI,TK                         ', 'JL.SUROPATI18KARANGPLOSO', 'MALANG', '0341-7016700                  ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('149', 'HAMAS FARMA, APT                        ', 'JL.KERTANEGARARUKOKARANGPLOSOSQUAREKAV6', 'MALANG', '0341 - 9447825                ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('150', 'HERO,TK                                 ', 'PASARKARANGPLOSO', 'MALANG', '0341-461457                   ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('151', 'KONDANG WARAS,APT                       ', 'JL.RAYATAKERANNGIJONO.50KARANGPLOSO', 'MALANG', '0341-6413158                  ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('152', 'MITRA CENTRAL ASIA, PT                  ', 'PERGUDANGANKLBIZBLOKC8KARANGLOMALANG', 'MALANG', '031 8480825,8480826           ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('153', 'REJEKI,TK                               ', 'PASARKARANGPLOSO', 'MALANG', '0341-467072                   ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('154', 'SRI RATNA HUSADA,APT                    ', 'JL.PERTAMANANKEPUHARJOKARANGPLOSO', 'MALANG', '0341-464672                   ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('155', 'SUBUR JAYA, TK                          ', 'JL.NGIJOBARATSAMSATKARANGPLOSO', 'MALANG', '0341-468144                   ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('156', 'WAHYU JAYA,APT                          ', 'JL.PERUSAHAANNO.16TUNJUNGTIRTOKARANGPLOSO', 'MALANG', '085 100 555757                ', 'DAERAH KARANGPLOSO/MLG                  ');
INSERT INTO `user_apotek` VALUES ('157', 'NURUS SYIFA,APT                         ', 'JL.RAYAKEBONAGUNGNO.29', 'MALANG', '0341-806632                   ', 'DAERAH KEBONAGUNG/MLG                   ');
INSERT INTO `user_apotek` VALUES ('158', 'AL-KARIMA 2,APT                         ', 'JL.KAWINO.25KEPANJEN', 'MALANG', '0341-6701830                  ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('159', 'AREMA,APT                               ', 'JL.SULTANAGUNGNO.85KEPANJEN', 'MALANG', '0341-397167                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('160', 'AZZAHRA SLOROK FARMA                    ', 'JL.RAYASLOROKNO.1RT09RW03KELSLOROK,KECKROMENGANKABMALANG', 'MALANG', '0341 805322                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('161', 'BARUMUDA, TK                            ', 'JLAYANINO17KEPANJEN', 'MALANG', '0341 395669                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('162', 'BUNGA JAYA KUSUMA, APT                  ', 'JL.RAYAKETAPANGNO.1RT01RW01DESASUKORAHARJO,KECKEPANJENKABMALANG', 'MALANG', '0341 7000027 - 398777         ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('163', 'DIAN, APT                               ', 'JL.SULTANAGUNGNO.62KEPANJEN', 'MALANG', '0341-395386                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('164', 'ELDY FARMA, APT                         ', 'JL.RAYAGENENGAN254RT3RW9PAKISAJIKABMALANG', 'MALANG', '0341 - 4435575                ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('165', 'GEMA MART                               ', 'JL.RAYAGENENGANNO.1PAKISAJI', 'MALANG', '0341 - 8100910                ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('166', 'HIDAYAH 2,TK                            ', 'JLRAYASUMEDANGNO343MALANG', 'MALANG', '082 3015 157 96               ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('167', 'KARYA MANDIRI,UD                        ', 'JL.RAYASUKORAHARJONO.4KEPANJEN', 'MALANG', '0341-392108                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('168', 'PALANG MERAH INDONESIA                  ', 'JL.PANJIDEPANKANTORDPRKABUPATENMALANGKEPANJEN', 'MALANG', '-                             ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('169', 'PETRA,APT                               ', 'JL.A.YANID-46KEPANJEN', 'MALANG', '0341 - 397835                 ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('170', 'SAWUNGGALING,APT                        ', 'JL.TENGKUUMARNO.15KEPANJEN', 'MALANG', '0341-391254                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('171', 'SLOROK SEHAT, APT                       ', 'JL.RAYASLOROKNO.62KEPANJEN', 'MALANG', '0341-9268710 - 085 790813079  ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('172', 'STAR, TK                                ', 'JL.MELATINO.193RT08/RW01CEMPOKOMULYOKEPANJEN', 'MALANG', '0341 - 396562                 ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('173', 'SUMBER BARU,SWALAYAN                    ', 'JL.RAYASUKORAHARJONO.232KEPANJEN', 'MALANG', '0341-397292                   ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('174', 'TIGA F,TK                               ', 'JL.RAYAPANARUKANNO.3-FKEPANJEN', 'MALANG', '0341-5488843                  ', 'DAERAH KEPANJEN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('175', 'NAROTAMA,APT                            ', 'JL.NAROTAMANO.91-B', 'MALANG', '0341-5473221                  ', 'DAERAH KESATRIAN                        ');
INSERT INTO `user_apotek` VALUES ('176', 'FENZA FARMA, APT                        ', 'JL.KLAYATANIIINO.13MALANG', 'MALANG', '0341 - 802540                 ', 'DAERAH KLAYATAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('177', 'ANGGREK SWALAYAN                        ', 'JLKLAYATANGANG3NO12BSUKUN', 'MALANG', '85749464386', 'DAERAH KLAYATAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('178', 'UNANG SARI 1,TK                         ', 'JL.KLAYATANGG2NO.1', 'MALANG', '0341-801463                   ', 'DAERAH KLAYATAN/MLG                     ');
INSERT INTO `user_apotek` VALUES ('179', 'AZZAMART 2,MM                           ', 'RUKOHAMIDRUSDIKAV4/A-B', 'MALANG', '0341-9376967                  ', 'DAERAH LAVALETTE/MLG                    ');
INSERT INTO `user_apotek` VALUES ('180', 'BENGAWAN SOLO, APT                      ', 'JLR.TUMENGGUNGSURYONO36MLG', 'MALANG', '0341 470330                   ', 'DAERAH LAVALETTE/MLG                    ');
INSERT INTO `user_apotek` VALUES ('181', 'SRIKANDI, APT                           ', 'JL.WRSUPRATMANNO10MLG', 'MALANG', '416047', 'DAERAH LAVALETTE/MLG                    ');
INSERT INTO `user_apotek` VALUES ('182', 'ANUGRAH, TK(LAWANG)                     ', 'JLAHMADYANINO232SUMBERPORONGLAWANG', 'MALANG', '0341 423918                   ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('183', 'AZRA FARMA, APT                         ', 'JL.AHMADYANIGG4LAWANG-KABMALANG', 'MALANG', '0851 04447038                 ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('184', 'BULAN,TK                                ', 'JL.PANGLIMASUDIRMANNO.116LAWANG', 'MALANG', '0341-7576951                  ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('185', 'CEMARA LAWANG,APT                       ', 'JL.DIPONEGOROBLOKC-18LAWANG', 'MALANG', '0341-421307                   ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('186', 'ELMA FARMA,APT                          ', 'JL.DR.CIPTONO.70LAWANG', 'MALANG', '0341-423328                   ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('187', 'FATIH FARMA, APT (MALANG)               ', 'JL.SANAN36WATUGEDESINGOSARI', 'MALANG', '0856 4955 9128                ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('188', 'HERO,APT                                ', 'JL.PANGLIMASUDIRMANNO.92LAWANG', 'MALANG', '0341 - 427309                 ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('189', 'JAYA MEDIKA, TO                         ', 'JLDRCIPTOGANG6/9RT2RW3BEDALILAWANGMLG', 'MALANG', '81331952259', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('190', 'LAWANG,APT                              ', 'JL.DIPONEGORONO.2LAWANG', 'MALANG', '0341-426208                   ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('191', 'NITASARI,APT                            ', 'JL.PANGLIMASUDIRMANB-1/9PASARLAWANG', 'MALANG', '0341-427318                   ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('192', 'SINAR BAKTI,APT                         ', 'JL.SLAMETRIYADINO35RT007RW001-KELLAWANGKECLAWANG', 'MALANG', '0341 - 9001396                ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('193', 'SUROPATI 20, APT                        ', 'JL.UNTUNGSUROPATI20-LAWANG', 'MALANG', '0341 - 8401936                ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('194', 'WIJAYA,APT                              ', 'JL.PANGLIMASUDIRMANLAWANG', 'MALANG', '0341-426790                   ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('195', 'YUWANDI FARMA, APT                      ', 'JL.A.YANINO217DESASUMBERPORONGKECLAWANGKABMALANG', 'MALANG', '089 86754349                  ', 'DAERAH LAWANG/MLG                       ');
INSERT INTO `user_apotek` VALUES ('196', 'AIR MANCUR,TK (MERGAN)                  ', 'JLJUPRINO627C', 'MALANG', '0341-563161                   ', 'DAERAH MERGAN/MLG                       ');
INSERT INTO `user_apotek` VALUES ('197', 'POKA-POKA,TK (MYLIN,TK)                 ', 'JL.MERGANRAYANO.71', 'MALANG', '0341 - 36 55 09               ', 'DAERAH MERGAN/MLG                       ');
INSERT INTO `user_apotek` VALUES ('198', 'SOPONGIRO,TK                            ', 'JL.IR.RAISNO.119-C', 'MALANG', '0341 - 365 999, 0888 0412 1208', 'DAERAH MERGAN/MLG                       ');
INSERT INTO `user_apotek` VALUES ('199', 'UNANG SARI 2,TK                         ', 'JL.JUPRINO.631MERGAN', 'MALANG', '0341-351130                   ', 'DAERAH MERGAN/MLG                       ');
INSERT INTO `user_apotek` VALUES ('200', 'ZULFA,TK                                ', 'JL.MERGANGG19NO.57', 'MALANG', '0341 - 77 83 147              ', 'DAERAH MERGAN/MLG                       ');
INSERT INTO `user_apotek` VALUES ('201', 'HORISON, APT                            ', 'JLKOLONELSUGIONONO75', 'MALANG', '0341 363573                   ', 'DAERAH MERGOSONO/MLG                    ');
INSERT INTO `user_apotek` VALUES ('202', 'LAJU JAYA SWALAYAN                      ', 'JLPELABUHANTANJUNGPERAKNO34KLAYATANGANG3', 'MALANG', '8.192.306.085.259.300.000', 'DAERAH MERGOSONO/MLG                    ');
INSERT INTO `user_apotek` VALUES ('203', 'ZENSAWAK AIR MANCUR,TK                  ', 'JL.MARTADINATANO.82-B', 'MALANG', '0341-363880                   ', 'DAERAH MERGOSONO/MLG                    ');
INSERT INTO `user_apotek` VALUES ('204', 'AGRO MAKMUR, TOSERBA                    ', 'JL.A.YANINO.50NGAJUMKEPANJEN', 'MALANG', '0341-392717 - 0823 010 49969  ', 'DAERAH NGAJUM/MLG                       ');
INSERT INTO `user_apotek` VALUES ('205', 'POGOG,TK                                ', 'JL.RAYAPALAKANNGAJUMKEPANJEN', 'MALANG', '0341-8109491                  ', 'DAERAH NGAJUM/MLG                       ');
INSERT INTO `user_apotek` VALUES ('206', 'SUMBER HARAPAN,TK                       ', 'JL.RAYAPALAKANNO.4NGAJUM', 'MALANG', '0341-392712                   ', 'DAERAH NGAJUM/MLG                       ');
INSERT INTO `user_apotek` VALUES ('207', 'ARIF,TK                                 ', 'JL.ABDILLAHNO.99GENITRITIRTOMOYOPAKIS', 'MALANG', '0341-5496569                  ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('208', 'BAHRUDIN,APT                            ', 'JL.PAKISKEMBARNO.109PAKIS', 'MALANG', '0341-793525                   ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('209', 'BUGIS SEHAT, APT                        ', 'JL.RAYABUGISNO.17PAKIS', 'MALANG', '0341-5374839 / 081233182248   ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('210', 'CAHAYA SEJATI FARMA,APT                 ', 'JL.ASRIKATONNO.25-PAKIS', 'MALANG', '0341 9655556                  ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('211', 'FORMULA, APT                            ', 'JL.SUGRIWA5ANO.21KECPAKISKABMALANG', 'MALANG', '0341 - 3021789                ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('212', 'GENTONG GROSIR BERAS,TK                 ', 'JL.H.NURROISNO.40TIRTOMOYOPAKIS', 'MALANG', '0341-794313                   ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('213', 'NABILA FARMA,APT                        ', 'JL.RAYABUGISNO.60PAKIS', 'MALANG', '0341-791674                   ', 'DAERAH PAKIS/MLG                        ');
INSERT INTO `user_apotek` VALUES ('214', 'ATRACO                                  ', 'JL.RAYAKARANGDURENPAKISAJIRT11RW02', 'MALANG', '085 2341 36303                ', 'DAERAH PAKISAJI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('215', 'BENDO FARMA,APT                         ', 'JL.RAYAKARANGPANDANNO.241', 'MALANG', '0341-804250                   ', 'DAERAH PAKISAJI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('216', 'PAKISAJI,APT                            ', 'JL.RAYAPAKISAJINO.338', 'MALANG', '0341-805322                   ', 'DAERAH PAKISAJI/MLG                     ');
INSERT INTO `user_apotek` VALUES ('217', 'PAJAJARAN,APT                           ', 'JL.PAJAJARANNO.12', 'MALANG', '0341-366577                   ', 'DAERAH PATIMURA,SUTOMO/MLG              ');
INSERT INTO `user_apotek` VALUES ('218', 'PATIMURA,APT                            ', 'JL.PATIMURANO.55', 'MALANG', '0341-2127912                  ', 'DAERAH PATIMURA,SUTOMO/MLG              ');
INSERT INTO `user_apotek` VALUES ('219', 'POP MEDIKA,APT                          ', 'JL.HASYIMASHARINO.40RUKOKAUMANKAV.1MALANG', 'MALANG', '0341-344391                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('220', 'ALAM JAYA,APT                           ', 'JL.PASARBESARNO.110', 'MALANG', '0341-327294                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('221', 'FAJAR JAYA,TO                           ', 'JL.PASARBESARNO.106', 'MALANG', '0341-366902                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('222', 'MAJU JAYA 2,TK                          ', 'JL.SERSANHARUNNO.54', 'MALANG', '0341-350364                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('223', 'SARI SEHAT FARMA, APT                   ', 'JLPASARBESARNO108', 'MALANG', '0341 325393                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('224', 'CANTIKA,TK                              ', 'JL.SYARIFAL-GODRINO.28', 'MALANG', '0341-7630101                  ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('225', 'LANGGENG, TK                            ', 'JL.KYAITAMIN77-MALANG', 'MALANG', '7078181', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('226', 'SINAR KENCANA,APT                       ', 'JL.ADEIRMASURYANINO.30', 'MALANG', '0341-367004                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('227', 'SUMBER REJEKI, TK (MALANG)              ', 'JL.PASARBESARSQUARE124NO.30', 'MALANG', '0341 - 361581/ 087 859245819  ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('228', 'TONGAN,APT                              ', 'JL.ADEIRMASURYANINO.15-A', 'MALANG', '0341-326169                   ', 'DAERAH PECINAN/MLG                      ');
INSERT INTO `user_apotek` VALUES ('229', 'DELTA, TK                               ', 'JLRAYALEGOKNO2PANARUKANKEPANJEN', 'MALANG', '0341-9061948                  ', 'DAERAH PENARUKAN/MLG                    ');
INSERT INTO `user_apotek` VALUES ('230', 'PENARUKAN,APT                           ', 'JL.H.M.SUN\'AN,SHNO.90-AKEPANJEN', 'MALANG', '0341 - 396812                 ', 'DAERAH PENARUKAN/MLG                    ');
INSERT INTO `user_apotek` VALUES ('231', 'ANUGERAH,TK (PUJON)                     ', 'JL.PATUNGSAPIRUKOA-1,A-2,A-3PUJON', 'MALANG', '0341-5025597, 081 334 369 909 ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('232', 'IJO,TO (PUJON)                          ', 'JLABDULMANANWIJAYANO234PUJON', 'MALANG', '0341-524677                   ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('233', 'KABOEL,TK                               ', 'PASARPUJONBEDAK21', 'MALANG', '0341-7773050                  ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('234', 'PERKASA,TK                              ', 'JL.ABDULMANANPUJON', 'MALANG', '0341 - 5466888                ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('235', 'SUMBER REJEKI,TK (PUJON)                ', 'SEBELAHPATUNGSAPI(DEKATPAKKASIADI)PUJON', 'MALANG', '081 333 922 277               ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('236', 'SUMBER WANGI,TK                         ', 'JLBROMONO26PUJON', 'MALANG', '0341 7681966                  ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('237', 'SUMBER WARAS 1,TO                       ', 'JL.BROMONO.88PUJON', 'MALANG', '0838 341 49177/ 081 515 360814', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('238', 'TIRTA ANANDA FARMA,APT                  ', 'JL.ABDULMANANWIJAYANO.263PUJON', 'MALANG', '0341-8696098                  ', 'DAERAH PUJON/MLG                        ');
INSERT INTO `user_apotek` VALUES ('239', 'BU YUYUT,TK                             ', 'JL.JAKSAAGUNGSUPRAPTOGGINO.59', 'MALANG', '081 805 042 360               ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('240', 'BUNGA MELATI,APT                        ', 'JL.JAKSAAGUNGSUPRAPTONO.23', 'MALANG', '0341-336271                   ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('241', 'GITA FARMA,APT                          ', 'JL.BELAKANGRSSANO.1', 'MALANG', '0341-948 7883                 ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('242', 'MITRA SEHAT, TK                         ', 'JL.PATIMURANO55-MALANG', 'MALANG', '0888 555 8822                 ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('243', 'NARITA,TK                               ', 'JL.LEMBANGNO.22', 'MALANG', '0341-909 6188                 ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('244', 'SETIA,TK                                ', 'JL.JAKSAAGUNGSUPRAPTOGG.INO.6', 'MALANG', '0341-350335                   ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('245', 'SULASTRI,TK                             ', 'JL.JAKSAAGUNGSUPRAPTOGG.2NO.41', 'MALANG', '0341-369668                   ', 'DAERAH RSU/MLG                          ');
INSERT INTO `user_apotek` VALUES ('246', 'D3 FARMA, APT                           ', 'JL.TERUSANWISNUWARDHANA37AMALANG', 'MALANG', '0851 00044433                 ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('247', 'ELLADERMA, APT                          ', 'JL.KUNTOBHASWORO6/6MALANG', 'MALANG', '081 234579780                 ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('248', 'GEDE, TK                                ', 'JL.JAYASRANI1BLOK7I/33SAWOJAJARIIMALANG', 'MALANG', '82231289600', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('249', 'NDOG BARIS, CV                          ', 'JL.DANAUJONGEH4-E47SAWOJAJAR', 'MALANG', '081 555 12367                 ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('250', '\"AA\",TK                                 ', 'JL.RAYASAWOJAJAR15KAV.5(GG.XVUTARAMASJID)', 'MALANG', '0341-5465583                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('251', 'ARTOMORO                                ', 'PASARMADYOPUROBEDAKNO9KEDUNGKANDANG', 'MALANG', '0341-9841196                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('252', 'FA2FA JAYA, APT                         ', 'JL.TERUSANDANAUKERINCIKAV14-RUKOKERINCISQUARE-SAWOJAJAR', 'MALANG', '0341 - 8181445                ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('253', 'IDOLA MEDIKA, APT                       ', 'JL.MADYOPURONO.36MALANG', 'MALANG', '0341 - 713655                 ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('254', 'INTERNA,APT                             ', 'JL.DANAUKERINCIRAYAF4/E16SAWOJAJAR', 'MALANG', '0341-713186                   ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('255', 'JEMBAWAN,APT                            ', 'JL.JEMBAWANI3J/1CSAWOJAJARII', 'MALANG', '0341 - 8853300                ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('256', 'K-24,APT (SAWOJAJAR)                    ', 'JL.DANAUTOBAE-4-A/14KAV.FSAWOJAJAR', 'MALANG', '0341-711678                   ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('257', 'KUSUMA LESTARI,APT                      ', 'JL.DANAUSENTANIH-1/B-37SAWOJAJAR', 'MALANG', '0341-9171817                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('258', 'LIMBOTO 23,APT                          ', 'JL.DANAULIMBUTURAYABLOKA-5NO.C-23SAWOJAJAR', 'MALANG', '0341-9779970                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('259', 'MAHARDIKA JAYA,APT                      ', 'JL.KIAGENGGRIBIGNO.35', 'MALANG', '0341-717149                   ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('260', 'RAINBOW,APT                             ', 'RUKOSAWOJAJARMASM-2KEDUNGKANDANGMALANG', 'MALANG', '0341 7354320                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('261', 'REJEKI SEHAT,UD                         ', 'JL.KAPININDANO.9SAWOJAJAR2', 'MALANG', '0341-7843863                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('262', 'SABILILLAH FARMA                        ', 'JL.KIAGENGGRIBIGNO.10', 'MALANG', '8441818', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('263', 'SAWOJAJAR INDAH,APT                     ', 'JL.DANAUTOBABLOKA-6RUKOSAWOJAJAR', 'MALANG', '0341-714028                   ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('264', 'SAWOJAJAR MAS,APT                       ', 'JL.RAYASAWOJAJARRUKOSAWOJAJARMASNO.15-16', 'MALANG', '0341-2991622                  ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('265', 'TOMBO URIP, APT                         ', 'JL.KIAGENGGRIBIGNO.6', 'MALANG', '0341 - 714193                 ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('266', 'ZAITUN,APT                              ', 'JL.DANAUBRATANC4/A14SAWOJAJAR', 'MALANG', '0341-722537-9052888           ', 'DAERAH SAWOJAJAR/MLG                    ');
INSERT INTO `user_apotek` VALUES ('267', 'GALUH, MM                               ', 'JL.SEMERU34', 'MALANG', '(0341) 343879                 ', 'DAERAH SEMERU,KAWI,BROMO,IJEN/          ');
INSERT INTO `user_apotek` VALUES ('268', 'KAWI,APT                                ', 'JL.KAWIKIOS3-4', 'MALANG', '0341-563180                   ', 'DAERAH SEMERU,KAWI,BROMO,IJEN/          ');
INSERT INTO `user_apotek` VALUES ('269', 'WILIS HEALTH PHARMACY,APT               ', 'JL.SIMPANGWILISINDAHNO.5', 'MALANG', '0341 - 554134                 ', 'DAERAH SEMERU,KAWI,BROMO,IJEN/          ');
INSERT INTO `user_apotek` VALUES ('270', 'WILIS,APT                               ', 'JL.WILISNO.37-D', 'MALANG', '0341-556728                   ', 'DAERAH SEMERU,KAWI,BROMO,IJEN/          ');
INSERT INTO `user_apotek` VALUES ('271', 'MULYOAGUNG FARMA, APT                   ', 'JL.RAYASENGKALING162', 'MALANG', '0341-2251122/ 088805555222    ', 'DAERAH SENGKALING/MLG                   ');
INSERT INTO `user_apotek` VALUES ('272', 'SENGKALING,APT                          ', 'JL.RAYAJETISNO.72MULYOAGUNG', 'MALANG', '0341-469769                   ', 'DAERAH SENGKALING/MLG                   ');
INSERT INTO `user_apotek` VALUES ('273', 'SURYA ABADI,APT                         ', 'JL.TLOGOMAS(RUKOTLOGOMAS)KAV.7', 'MALANG', '0341-9618405                  ', 'DAERAH SENGKALING/MLG                   ');
INSERT INTO `user_apotek` VALUES ('274', 'AFFAN,TK                                ', 'PERUMBUMIMONDOROKORAYAB2-25SINGOSARI', 'MALANG', '0341 - 9672 770, 53 69 797    ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('275', 'AKBAR JAYA GROSIR                       ', 'JL.PERUSAHAANTUNJUNGTIRTO-SINGOSARI(DEPANSOTOPAKAMIR)', 'MALANG', '0888 03806866                 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('276', 'AMORA ,MM                               ', 'JL.BUMIMONDOROKORAYABLOKB/5SINGOSARI', 'MALANG', '0341-455932                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('277', 'ARTA MEDICA,TO                          ', 'JL.TUMAPELNO.96SINGOSARI', 'MALANG', '0341 - 452 040                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('278', 'ARTA MEDICA2, TO                        ', 'PERUMBUMIMONDOROKORAYAAJ26', 'MALANG', '81945995503', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('279', 'ARTANTI,APT                             ', 'JL.STASIUNNO.26-28SINGOSARI', 'MALANG', '0341-451623                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('280', 'BAITUNA,TK                              ', 'PERUMBUMIMONDOROKORAYABLOKALNO.51SINGOSARI', 'MALANG', '0341-908 2227                 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('281', 'C 22, TK                                ', 'PASARSINGOSARIBEDAKC22', 'MALANG', '0341-7012613                  ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('282', 'FITALAB UTAMA KARYA,PT                  ', 'JL.RAYAKARANGLOB1SINGOSARI', 'MALANG', '0341-415755 / 081 396 515 399 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('283', 'GALUH,TK                                ', 'SEBELAHBALAIDESAWATUGEDESINGOSARI', 'MALANG', '5471943', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('284', 'HARAPAN JAYA,TK                         ', 'JL.SIDOMULYONO.36SINGOSARI', 'MALANG', '0341-456076                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('285', 'HARI,TK (P.NUR)                         ', 'JL.PASARDENGKOLBEDAK4(NO.8)SINGOSARI', 'MALANG', '0341-452615,5369584           ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('286', 'MAHARDIKA SENTOSA,UD                    ', 'JL.BALEKAMBANGNO.17WATUGEDESINGOSARI', 'MALANG', '0857 3344 7245                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('287', 'MANDIRI,TK                              ', 'JL.RAYADENGKOLSINGOSARI', 'MALANG', '0341-457500                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('288', 'MAWAR JAYA,TK                           ', 'JL.MAWARWATUGEDENO.5SINGOSARI', 'MALANG', '0341 - 3160616                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('289', 'MEGA SARI, APT                          ', 'PERUMMONDOROKOREGENCYBLOKAAKAV2SINGOSARI', 'MALANG', '453377', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('290', 'MELATI SEHAT,TK                         ', 'JL.RY.SINGOSARINO.71SINGOSARI', 'MALANG', '085 791 930 899               ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('291', 'MONDOROKO LESTARI, TK                   ', 'PERUMBUMIMONDOROKORAYABLOKAK-35SINGOSARI', 'MALANG', '0822 30107610                 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('292', 'MULTI FARMA, APT                        ', 'JLTUMAPELKAVLING3SINGOSARI', 'MALANG', '459345, 085755287840          ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('293', 'NUSA MEDICA,APT                         ', 'PERUMBMRBLOKAJNO.77-SINGOSARI-MALANG', 'MALANG', '0341 8149698                  ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('294', 'PERINTIS JAYA, TK                       ', 'JL.RAYADENGKOL98SINGOSARI', 'MALANG', '0341 - 455292                 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('295', 'REJEKI,TK (SINGOSARI)                   ', 'JL.TUMAPELNO.93SINGOSARI', 'MALANG', '0341 - 451 389                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('296', 'RIZQI,TK                                ', 'JL.RONGGOWUNI73SINGOSARI', 'MALANG', '0341 - 733 5485               ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('297', 'SAHABAT JAYA,APT                        ', 'JLPANGLIMASUDIRMANNO96SINGOSARI', 'MALANG', '0341-458172                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('298', 'SARI INDAH, APT                         ', 'JL.KERTANEGARANO.20KECSINGOSARIKABMALANG', 'MALANG', '0341 - 6600771                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('299', 'SINGOSARI,APT                           ', 'JL.RAYASINGOSARINO.47SINGOSARI', 'MALANG', '0341-458696                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('300', 'SUKMO, APT                              ', 'JL.DIPONEGORO260KEL.ARDIMULYOSONGSONG', 'MALANG', '0821 657 372 69               ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('301', 'YULI,TK (PODO TRESNO)                   ', 'JL.MUJAMILRT03RW09NO.10TANJUNGBANJARARUM', 'MALANG', '0341-997 1915                 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('302', 'YUSUF HADI,TK                           ', 'PASARSINGOSARI', 'MALANG', '0341-451751                   ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('303', 'FATIH FARMA, APT                        ', 'JLSANANNO36RT2,RW1,WATUGEDE,SINGOSARIMALANG', 'MALANG', '0856 4955 9128                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('304', 'GN. PENANGGUNGAN 1653 DPL,TK            ', 'JL.WATUGEDENO.10SINGOSARI', 'MALANG', '0341-7328284                  ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('305', 'JAMAS,APT                               ', 'JL.MASJIDNO.2SINGOSARI', 'MALANG', '0341 - 452988                 ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('306', 'NAYU FARMA, APT                         ', 'JL.RAYAKARANGLONO.52SINGOSARI-MALANG', 'MALANG', '0341 - 441371/ 08125248018    ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('307', 'SALEHA RIZKY FARMA, APT                 ', 'JL.ROGONOTOTIMUR22-SINGOSARI', 'MALANG', '0341 - 9622609                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('308', 'SINGHASARI  MEDICA, APT                 ', 'RUKOSINGOSARIBUSSINESSCENTERKAV.8AJL.KLAMPOKKECSINGOSARIKABMALANG', 'MALANG', '085 2571 44651                ', 'DAERAH SINGOSARI/MLG                    ');
INSERT INTO `user_apotek` VALUES ('309', 'AIR MANCUR,TK (SLOROK)                  ', 'JL.RAYASLOROKNO.125', 'MALANG', '0341-385620                   ', 'DAERAH SLOROK/MLG                       ');
INSERT INTO `user_apotek` VALUES ('310', 'HAPPY BABY SHOP, TK                     ', 'JL.SOEKARNOHATTAPTP2KAV.7', 'MALANG', '9621079 - 085 101621079       ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('311', 'LINDA,TK                                ', 'JL.REMUJUNGNO.24SOEKARNO-HATTA', 'MALANG', '85933009665', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('312', 'MITRA ASKARYA,APT                       ', 'JL.SOEKARNOHATTANO.7', 'MALANG', '0341 480605                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('313', 'NATASHA , APT (SUKARNO HATTA)           ', 'JL.SUKARNOHATTARUKOPTPIINO.1KAV5-6', 'MALANG', '0341 - 488290                 ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('314', 'AFIN, TK                                ', 'JL.SUDIMORO166RT01RW07', 'MALANG', '0341 - 8119657                ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('315', 'AMANAH, TK                              ', 'JL.SOEKARNOHATTATIMURNO.2-A', 'MALANG', '0341-415455                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('316', 'AZ-ZAHRA,TK                             ', 'JL.SEMANGGIBARATNO.12', 'MALANG', '0341-5304304                  ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('317', 'BOY CELL                                ', 'JL.SUDIMORONO.8(SUKARNOHATTA)', 'MALANG', '0341-494114                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('318', 'CANDI PANGGUNG,APT                      ', 'JL.CANDIPANGGUNGNO.51-AMALANG', 'MALANG', '0341-400445                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('319', 'FAIZ FARMA,APT                          ', 'JL.BUNGACOKLATNO.6', 'MALANG', '0341-402963                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('320', 'GALERI CANDRA,APT                       ', 'JL.ANDONGNO.3', 'MALANG', '0341-478571                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('321', 'GRIYA MEDIKA, APT                       ', 'JLSUKARNOHATTA,RUKONO30D', 'MALANG', '0341-498774                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('322', 'HARTAWAN MAKMUR,TK                      ', 'PERUMTAMANCANDIPANGGUNGNO.13', 'MALANG', '0341-403520                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('323', 'JINGGA FARMA, APT                       ', 'RUKOPUNCAKBOROBUDURKAV1MALANG(TERUSANSOE-HAT)', 'MALANG', ': 0811364032, (0341)9081110   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('324', 'LARIS,SWALAYAN                          ', 'PERUMPERMATAJINGGARUKOI-IISOEKARNOHATTA', 'MALANG', '0341-408321                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('325', 'RAMADHANI, APT                          ', 'JL.MAYJENPANJAITANNO.64C', 'MALANG', '0341 - 579513 - 0811334662    ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('326', 'SOEKARNO HATTA,APT                      ', 'GRIYASHANTAE-324MALANG', 'MALANG', '0341 - 2208333                ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('327', 'SUHAT 24, APT                           ', 'JL.SUKARNOHATTAPTP01NO.66B', 'MALANG', '0341 - 4373903                ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('328', 'TJINTA MM                               ', 'RUKOMUTIARAJINGGARESIDENCEBB1(JL.LONCATINDAHLOWOKWARU)', 'MALANG', '88805832615', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('329', 'TRI SEHAT MAKMUR,APT                    ', 'JL.CANDIPANGGUNGBARATNO.3-A', 'MALANG', '0341-405056                   ', 'DAERAH SUKARNO HATTA/MLG                ');
INSERT INTO `user_apotek` VALUES ('330', 'BU SUGIARTI,TK                          ', 'JL.RAYASUKORAHARJO', 'MALANG', '0341-5421456                  ', 'DAERAH SUKOHARJO/MLG                    ');
INSERT INTO `user_apotek` VALUES ('331', 'PURNAMA MEDICA, APT                     ', 'JL.SIMPANGKEPUHUTARABLOKCNO.71MALANG', 'MALANG', '081 2312 14454                ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('332', '5 S, APT                                ', 'JL.RAYAKEPUHNO.17-MALANG', 'MALANG', '0341 - 802584/ 085 258428282  ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('333', 'BETANIA,APT                             ', 'JL.S.SUPRIYADINO.30-E', 'MALANG', '0341-362336                   ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('334', 'BINTANG KECIL,TK                        ', 'JL.S.SUPRIYADINO.53', 'MALANG', '0341-332452, 998 8481         ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('335', 'BU RAHMAT, TK                           ', 'JLMENCONO2SUKUNMLG', 'MALANG', '0341 320753                   ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('336', 'KEPUH FARMA,APT                         ', 'JL.S.SUPRIADINO.9', 'MALANG', '0341-834055                   ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('337', 'METRO HUSADA,APT                        ', 'JL.KEPUHUTARANO.43SUKUNMALANG', 'MALANG', '085 10031 6543                ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('338', 'NUKUS 24, APT                           ', 'JL.MERPATIUTARA27-AMALANG', 'MALANG', '0341 - 368410                 ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('339', 'RAFA ELIM MEDIKA, TK                    ', 'JL.S.SUPRIADINO74KAV1-5SUKUNMALANG', 'MALANG', '0856 4993 6322                ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('340', 'RAHAYU, TK (SUKUN)                      ', 'JL.PELABUHANKETAPANGNO.20(DEKATKELURAHAN)', 'MALANG', '0341 - 5402950                ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('341', 'WAHANA RAHAYU,TK                        ', 'JL.RAYAKEPUHNO.35RT04RW05', 'MALANG', '0341-803293                   ', 'DAERAH SUKUN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('342', 'DAPUR IBU SWALAYAN                      ', 'JL.EMASNO.35', 'MALANG', '81931878008', 'DAERAH SULFAT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('343', 'ELOK SWALAYAN                           ', 'JL.EMASNO.56', 'MALANG', '0341-7717739                  ', 'DAERAH SULFAT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('344', 'KARUNIA JAYA, APT                       ', 'JL.SIMPANGSULFATUTARANO.19B', 'MALANG', '081 8058 34536                ', 'DAERAH SULFAT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('345', 'MUNGIL AMANAH, TK                       ', 'JL.TERUSANTITANVINO.1', 'MALANG', '0341 - 487071                 ', 'DAERAH SULFAT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('346', 'PANDAN WANGI,APT                        ', 'JL.SIMPANGSULFATUTARA48PANDANWANGIBLIMBING', 'MALANG', '0851 0602 6464                ', 'DAERAH SULFAT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('347', 'PENTA MEDIKA,APT                        ', 'JL.SULFATNO.84', 'MALANG', '0341-406743                   ', 'DAERAH SULFAT/MLG                       ');
INSERT INTO `user_apotek` VALUES ('348', 'AL BARKAH SEHAT,APT (SUMBERPUCUNG)      ', 'JL.P.SUDIRMANNO.80RT09RW01KECSUMBERPUCUNGKABMALANG', 'MALANG', ' 0341 - 384971                ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('349', 'HIDUP SEHAT,APT                         ', 'JL.JEND.SUDIRMANNO.18SUMBERPUCUNG', 'MALANG', '0341-382347                   ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('350', 'JAYATSU FARMA, APT                      ', 'JL.STASIUNNO.45RT17RW03NGEBRUKKECSUMBERPUCUNGKABMALANG', 'MALANG', '0822 333 27153                ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('351', 'PELITA SEHAT SUMBERPUCUNG               ', 'JL.JEND.A.YANINO73SUMBERPUCUNG', 'MALANG', '082 3310 12749                ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('352', 'SENANDUNG, APT                          ', 'DUSUNBARISANRT06RW01NO.25ARJOWILANGUNKECKALIPAREKABMALANG', 'MALANG', '085 - 100440388               ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('353', 'SUMBER PUCUNG,APT                       ', 'JL.JEND.SUDIRMANNO.117SUMBERPUCUNG', 'MALANG', '0341-383525                   ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('354', 'SUMBER REJEKI,TO (SUMBER PUCUNG)        ', 'JL.JEND.SUDIRMANNO.80(DEPANBCASUMBERPUCUNG)', 'MALANG', '0341-384971                   ', 'DAERAH SUMBER PUCUNG/MLG                ');
INSERT INTO `user_apotek` VALUES ('355', 'AL-BAHRRU, APT                          ', 'JL.RAYAGUNUNGKAWINO21-TALANGAGUNG', 'MALANG', '0341 - 7589877                ', 'DAERAH TALANG AGUNG/MALANG              ');
INSERT INTO `user_apotek` VALUES ('356', 'SAMBUNG SEHAT, APT                      ', 'JL.GUNUNGKAWINO.76TALANGAGUNG', 'MALANG', '0341 - 7001374                ', 'DAERAH TALANG AGUNG/MALANG              ');
INSERT INTO `user_apotek` VALUES ('357', 'SUMBER JAYA,TK                          ', 'JL.IR.RAISNO.11', 'MALANG', '0341-325176                   ', 'DAERAH TANJUNG/MLG                      ');
INSERT INTO `user_apotek` VALUES ('358', 'TANJUNG, APT                            ', 'JL.IR.RAIS88', 'MALANG', '0341-567098                   ', 'DAERAH TANJUNG/MLG                      ');
INSERT INTO `user_apotek` VALUES ('359', 'K-24,APT (TIDAR)                        ', 'JL.PUNCAKMANDALANO.30', 'MALANG', '0341-552076                   ', 'DAERAH TIDAR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('360', 'LARISE,APT                              ', 'JL.SIHABU-HABUNO.28TIDAR', 'MALANG', '0341-559825                   ', 'DAERAH TIDAR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('361', 'BUDAYA SEHAT,APT                        ', 'JL.SETIAWANNO.3TUMPANG', 'MALANG', '081 233 261 719               ', 'DAERAH TUMPANG/MLG                      ');
INSERT INTO `user_apotek` VALUES ('362', 'DAHLIA, TK JAMU                         ', 'JLRAYATUMPANG', 'MALANG', '9841854', 'DAERAH TUMPANG/MLG                      ');
INSERT INTO `user_apotek` VALUES ('363', 'KEBONSARI, APT                          ', 'JL.PAHLAWANTIMUR294ATUMPANG', 'MALANG', '0341 - 787124                 ', 'DAERAH TUMPANG/MLG                      ');
INSERT INTO `user_apotek` VALUES ('364', 'NARILA FARMA, APT                       ', 'JL.RAYABELUNGNO13PONCOKUSUMO', 'MALANG', '085 7909 44232                ', 'DAERAH TUMPANG/MLG                      ');
INSERT INTO `user_apotek` VALUES ('365', 'ALDE SWALAYAN                           ', 'JL.RAYAPADITALANGSUKOTUREN', 'MALANG', '0341-7051798                  ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('366', 'AN-NUR II,SWALAYAN                      ', 'JL.RAYABULULAWANG', 'MALANG', '0341 - 833421                 ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('367', 'BU TATIK,TK                             ', 'JL.RAYATALANGSUKOTUREN', 'MALANG', '0341-828731                   ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('368', 'DAHLIA,APT                              ', 'JL.PANGLIMASUDIRMANNO.75BLOKA-6TUREN', 'MALANG', '0341 - 824064                 ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('369', 'DANTA,TK                                ', 'JL.RAYAKEDOKNO.4TUREN', 'MALANG', '0341-7734242                  ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('370', 'KAHURIPAN,APT                           ', 'JL.GATOTSUBROTONO.40RT02/RW03TUREN', 'MALANG', '0341-828083                   ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('371', 'LARIS SWALAYAN                          ', 'JLUTARAPASARNO2TUREN', 'MALANG', '824139', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('372', 'NOFAH,TK                                ', 'JL.RAYATALANGSUKONO.408TUREN', 'MALANG', '0341-828763                   ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('373', 'RAHAYU,TK (TUREN)                       ', 'JL.RAYAKEDHOKNO.317TUREN', 'MALANG', '0341-828190                   ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('374', 'REJO MUDA (NYONYA MENEER),TJ            ', 'JL.RAYAPANGLIMASUDIRMANTUREN', 'MALANG', '0341-824442                   ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('375', 'RETRO,SWALAYAN                          ', 'JL.GATOTSUBROTOITURENTALOK', 'MALANG', '0341 - 7765794                ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('376', 'SAMIREJO,TK                             ', 'JL.RAYAREMBUNTUREN', 'MALANG', '0341-9085409                  ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('377', 'SEDAYU, APT                             ', 'JLGATOTUBROTONO108SEDAYUTURENMLG', 'MALANG', '0341 8222057                  ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('378', 'SUMBER REJEKI,TK (TUREN)                ', 'JL.SAWAHANNO.186TUREN', 'MALANG', '0341-2933800                  ', 'DAERAH TUREN/MLG                        ');
INSERT INTO `user_apotek` VALUES ('379', 'AYO SEHAT, APT                          ', 'PERUMMUTIARAREGENCYWAGIRMALANG', 'MALANG', '0341 5083300                  ', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('380', 'BINTANG 9, TK                           ', 'JLRAYAWADUNGDPNBALAIDESA', 'MALANG', '7650676', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('381', 'BU SISWO,TK                             ', 'DS.SITIREJORT02RW04NO.1MBUWEKWAGIR', 'MALANG', '0341-836523                   ', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('382', 'BU SUNDARI,TK                           ', 'JL.SITIREJONO.50MBUWEKWAGIR', 'MALANG', '0341-7300 453                 ', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('383', 'CANGKRING,TK                            ', 'JL.PARANGARGONO.1WAGIR', 'MALANG', '0341 - 7672551                ', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('384', 'HUDA,TK                                 ', 'DS.SITIREJOMBUWEKNO.96WAGIR', 'MALANG', '0341-7761232                  ', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('385', 'MULYA JAYA,MM                           ', 'JLRAYAPARANGARGONO25WAGIR', 'MALANG', '0341 - 8144733                ', 'DAERAH WAGIR/MLG                        ');
INSERT INTO `user_apotek` VALUES ('386', 'PRADA, TK                               ', 'DSN.MBUWEK-SITIREJOWAGIR', 'MALANG', '0341 - 831047                 ', 'DAERAH WAGIR/MLG                        ');

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
  PRIMARY KEY (`id_faktur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_faktur
-- ----------------------------
INSERT INTO `user_faktur` VALUES ('97422093041270785', 'TY57575', '367', 'JL.RAYATALANGSUKOTUREN', 'MALANG', '11:00', '28-11-2017', '97414999013588994', null, '24', '0', null, '2017-11-28 16:56:00', null, '2017-11-28 16:56:00', null, '2017-11-28 16:56:00', '0', 'YRA7115', '62954', '1', '1 DUS TEH GELAS', '2', null, '16:43:26', null, '16:56:00', null);
INSERT INTO `user_faktur` VALUES ('97422093041270786', 'TY23HJ01', '367', 'JL.RAYATALANGSUKOTUREN', 'MALANG', '11:00', '28-11-2017', '97414999013588994', null, '0', '0', null, '2017-11-28 16:55:12', null, '2017-11-28 16:55:12', null, '2017-11-28 16:55:12', '0', 'YRA7115', '99441', '1', '', '2', null, '16:43:26', null, '', null);
INSERT INTO `user_faktur` VALUES ('97422093041270787', 'TY23HJ02', '325', 'JL.MAYJENPANJAITANNO.64C', 'MALANG', null, '28-11-2017', '97414999013588994', null, '0', '0', null, '2017-11-28 16:55:14', null, '2017-11-28 16:55:14', null, '2017-11-28 16:55:14', '0', 'YRA7115', '96631', '1', '1 DUS AQUA', '2', null, '16:43:26', null, '', null);
INSERT INTO `user_faktur` VALUES ('97422093041270788', 'TY23HJ04', '354', 'JL.JEND.SUDIRMANNO.80(DEPANBCASUMBERPUCUNG)', 'MALANG', '11:00', '28-11-2017', '97414999013588994', null, '24', '0', null, '2017-11-28 16:56:00', null, '2017-11-28 16:56:00', null, '2017-11-28 16:56:00', '0', 'YRA7115', '36952', '1', '', '2', null, '16:43:26', null, '16:56:00', null);

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
INSERT INTO `user_login` VALUES ('97414999013588994', 'mahaTR', 'bc5856a98ebd4fef8b1da4135c190f95', '97414999013588994', null);
INSERT INTO `user_login` VALUES ('97414999013588995', 'sanurTR', 'bc5856a98ebd4fef8b1da4135c190f95', '97414999013588995', null);
INSERT INTO `user_login` VALUES ('97419531143610379', 'adminTirex', 'bc5856a98ebd4fef8b1da4135c190f95', null, '97419531143610378');

-- ----------------------------
-- Table structure for user_pbf
-- ----------------------------
DROP TABLE IF EXISTS `user_pbf`;
CREATE TABLE `user_pbf` (
  `id_pbf` varchar(50) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_pbf
-- ----------------------------
INSERT INTO `user_pbf` VALUES ('97414999013588992', 'SRIWIJAYA APT', 'MALANG', '0341', 'ADMIN', '2017-11-25 10:58:51', null, '2017-11-25 10:58:51', null, '2017-11-25 10:58:51', null, 'afif@34borneo.com');
INSERT INTO `user_pbf` VALUES ('97414999013588993', 'BAGAS MEDIKA', 'MALANG', '0341', 'ADMIN', '2017-11-25 10:58:52', null, '2017-11-25 10:58:52', null, '2017-11-25 10:58:52', null, 'afif@34borneo.com');
INSERT INTO `user_pbf` VALUES ('97414999013588994', 'MAHADEWI', 'MALANG', '0341', 'ADMIN', '2017-11-25 10:58:52', null, '2017-11-25 10:58:52', null, '2017-11-25 10:58:52', null, 'afif@34borneo.com');
INSERT INTO `user_pbf` VALUES ('97414999013588995', 'SANUR INDAH FARMA', 'MALANG', '0341', 'ADMIN', '2017-11-25 10:58:52', null, '2017-11-25 10:58:52', null, '2017-11-25 10:58:52', null, 'afif@34borneo.com');
INSERT INTO `user_pbf` VALUES ('97414999013588996', 'SAHABAT SEHAT', 'MALANG', '0341', 'ADMIN', '2017-11-25 10:58:52', null, '2017-11-25 10:58:52', null, '2017-11-25 10:58:52', null, 'afif@34borneo.com');

-- ----------------------------
-- View structure for v_antar
-- ----------------------------


-- ----------------------------
-- View structure for v_mobil
-- ----------------------------
DROP VIEW IF EXISTS `v_mobil`;
CREATE  VIEW `v_mobil` AS SELECT
karyawan.id_pegawai,
karyawan.nik,
karyawan.nama as karyawan,
karyawan.telp,
karyawan.`level`,
karyawan.id_mobil,
karyawan.id_kota,
karyawan.foto as fotokaryawan,
mobil.plat_nomor,
mobil.no_mobil,
mobil.nama,
mobil.foto
FROM
karyawan
INNER JOIN mobil ON mobil.id_mobil = karyawan.id_mobil ;

-- ----------------------------
-- View structure for v_order
-- ----------------------------
DROP VIEW IF EXISTS `v_order`;
CREATE VIEW `v_order` AS SELECT
user_apotek.nama_apotek,
user_apotek.telepon,
user_apotek.jalur,
user_faktur.id_faktur,
user_faktur.no_faktur,
user_faktur.penerima,
user_faktur.alamat,
user_faktur.kota,
user_faktur.jam_kirim,
user_faktur.tanggal_kirim,
user_faktur.id_pbf,
user_faktur.id_penerima,
user_faktur.id_sp,
user_faktur.`status`,
user_faktur.is_created,
user_faktur.created_date,
user_faktur.is_edit,
user_faktur.edit_date,
user_faktur.is_delete,
user_faktur.delete_date,
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
user_faktur.time_terima
FROM
user_faktur
INNER JOIN user_apotek ON user_apotek.id_apotek = user_faktur.penerima ;

-- ----------------------------
-- View structure for v_pbf_order
-- ----------------------------
DROP VIEW IF EXISTS `v_pbf_order`;
CREATE VIEW `v_pbf_order` AS SELECT
user_apotek.nama_apotek,
user_apotek.alamat AS alamatapotek,
user_faktur.id_faktur,
user_faktur.no_faktur,
user_faktur.penerima,
user_faktur.alamat,
user_faktur.kota,
user_faktur.jam_kirim,
user_faktur.tanggal_kirim,
user_faktur.id_pbf,
user_faktur.id_penerima,
user_faktur.id_sp,
user_faktur.`status`,
user_faktur.is_created,
user_faktur.created_date,
user_faktur.is_edit,
user_faktur.edit_date,
user_faktur.is_delete,
user_faktur.delete_date,
user_faktur.status_notif,
user_faktur.id_booking,
user_faktur.id_status,
user_faktur.koli,
user_faktur.keterangan,
user_faktur.status_bayar,
user_faktur.status_pickup,
user_pbf.nama,
user_pbf.alamat AS alamatpbf,
user_pbf.telepon,
user_faktur.time_order,
user_faktur.time_pickup,
user_faktur.time_sp,
user_faktur.time_terima
FROM
user_faktur
INNER JOIN user_apotek ON user_apotek.id_apotek = user_faktur.penerima
INNER JOIN user_pbf ON user_pbf.id_pbf = user_faktur.id_pbf ;

-- ----------------------------
-- View structure for v_sp
-- ----------------------------

-- ----------------------------
-- View structure for v_view_sp
-- ----------------------------
DROP VIEW IF EXISTS `v_view_sp`;
CREATE VIEW `v_view_sp` AS SELECT
user_faktur.id_faktur,
user_faktur.no_faktur,
user_faktur.penerima,
user_faktur.alamat,
user_faktur.kota,
user_faktur.jam_kirim,
user_faktur.tanggal_kirim,
user_faktur.id_pbf,
user_faktur.id_penerima,
user_faktur.id_sp,
user_faktur.`status`,
user_faktur.is_created,
user_faktur.created_date,
user_faktur.is_edit,
user_faktur.edit_date,
user_faktur.is_delete,
user_faktur.delete_date,
user_faktur.status_notif,
user_faktur.id_booking,
user_faktur.id_status,
user_faktur.koli,
user_faktur.keterangan,
user_faktur.status_bayar,
user_faktur.status_pickup,
antar_paket.no_hp,
antar_paket.no_mobil,
antar_paket.jam_kirim AS jam,
antar_paket.tanggal_kirim AS tanggal,
antar_paket.no_sp,
user_apotek.nama_apotek,
user_pbf.nama,
user_pbf.alamat AS alamatpbf,
detail_sp.id_bawaan,
detail_sp.id_detail_sp,
detail_sp.id_jadwal,
user_faktur.time_order,
user_faktur.time_pickup,
user_faktur.time_sp,
user_faktur.time_terima
FROM
antar_paket
RIGHT JOIN user_faktur ON user_faktur.id_sp = antar_paket.id_antar_paket
RIGHT JOIN user_apotek ON user_apotek.id_apotek = user_faktur.penerima
RIGHT JOIN user_pbf ON user_pbf.id_pbf = user_faktur.id_pbf
RIGHT JOIN detail_sp ON detail_sp.id_jadwal = antar_paket.id_antar_paket 
GROUP BY no_faktur ;

DROP VIEW IF EXISTS `v_antar`;
CREATE VIEW `v_antar` AS SELECT
antar_paket.jam_kirim,
antar_paket.tanggal_kirim,
v_mobil.karyawan,
v_mobil.telp,
v_mobil.no_mobil,
antar_paket.id_antar_paket,
v_mobil.plat_nomor,
v_mobil.`level`,
v_mobil.id_mobil,
v_mobil.nik,
v_mobil.id_pegawai,
v_mobil.nama
FROM
antar_paket
INNER JOIN v_mobil ON v_mobil.id_pegawai = antar_paket.id_karyawan ;

DROP VIEW IF EXISTS `v_sp`;
CREATE VIEW `v_sp` AS SELECT
v_order.nama_apotek,
v_order.telepon,
v_order.jalur,
v_order.id_faktur,
v_order.no_faktur,
v_order.penerima,
v_order.alamat,
v_order.kota,
v_order.jam_kirim as jam,
v_order.tanggal_kirim as tanggal,
v_order.id_pbf,
v_order.id_penerima,
v_order.id_sp,
v_order.`status`,
v_order.is_created,
v_order.created_date,
v_order.is_edit,
v_order.edit_date,
v_order.is_delete,
v_order.delete_date,
v_order.status_notif,
v_order.id_booking,
v_order.id_status,
v_order.koli,
v_order.keterangan,
v_order.status_bayar,
v_order.status_pickup,
v_order.time_order,
v_order.time_pickup,
v_order.time_sp,
v_order.time_terima,
v_antar.jam_kirim,
v_antar.tanggal_kirim,
v_antar.karyawan,
v_antar.telp,
v_antar.no_mobil,
v_antar.plat_nomor,
v_antar.id_mobil,
v_antar.nama
FROM
v_order
INNER JOIN v_antar ON v_order.id_sp = v_antar.id_antar_paket ;
