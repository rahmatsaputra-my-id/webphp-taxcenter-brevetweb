-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 19, 2019 at 08:02 PM
-- Server version: 5.6.44
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taxcente_kursus`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataakses`
--

CREATE TABLE `dataakses` (
  `id` bigint(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tanggal` datetime NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_aspekpenilaian`
--

CREATE TABLE `data_aspekpenilaian` (
  `id` int(255) NOT NULL,
  `id_kursus` int(255) NOT NULL,
  `nama_aspek` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_aspekpenilaian`
--

INSERT INTO `data_aspekpenilaian` (`id`, `id_kursus`, `nama_aspek`) VALUES
(1, 1, 'KUP'),
(2, 1, 'PPh OP'),
(3, 1, 'PPh Badan'),
(4, 1, 'PPh 21'),
(5, 1, 'Potongan dan Pungutan PPh'),
(6, 1, 'PPN'),
(7, 1, 'Pajak Daerah'),
(8, 1, 'Custom Broker');

-- --------------------------------------------------------

--
-- Table structure for table `data_blanko`
--

CREATE TABLE `data_blanko` (
  `id` int(10) NOT NULL,
  `id_kursus` int(6) NOT NULL,
  `npm` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `novalidasi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_blanko`
--

INSERT INTO `data_blanko` (`id`, `id_kursus`, `npm`, `nama`, `novalidasi`, `image`) VALUES
(1, 0, '58412112', '', '', 'file_1497598306.png'),
(2, 0, '58412113', '', '', 'file_1499833968.PNG'),
(3, 0, '123456', '', '', 'file_1500872810.jpg'),
(5, 1, '58412112', 'Muhammad Ridho P', '456123', ''),
(6, 1, '24214775', 'HANNY LUPITHASARI', '0000000000000000000', ''),
(7, 1, '23214482', 'Eldoris Lingga', '67890', ''),
(8, 1, '27214829', 'Natasha Stefanie Setiawan', '123456', ''),
(9, 1, '22214961 ', 'Diah Setyowati', '1234567', ''),
(10, 1, '22214961 ', 'Diah Setyowati', '12345', ''),
(11, 1, '22214961 ', 'Diah Setyowati', '96121', ''),
(12, 1, '22214831', 'Devi Sakinah Maharani', '12345', ''),
(13, 1, '22214768', 'DESSY NOVIANTY', '123458', ''),
(14, 1, '27214836', 'Natasya Ruby Christianto', '16320', ''),
(15, 1, '24212401', 'Malicha Aulia Zatalini', '123456', ''),
(16, 1, '23214138', 'Dina Mayang Lestari', '12345', ''),
(17, 1, '27214894', 'Neng Tita Purwasih ', '12345', ''),
(18, 1, '2A214384', 'Siti Rodiyah', '12345', ''),
(19, 1, '23214996', 'Farisi al ayubi', '12345', ''),
(20, 1, '22214961', 'Diah Setyowati', '12345', ''),
(21, 1, '21214146', 'Andri', '12345', ''),
(22, 1, '28214605', 'Putri Indah Surya', '12345', ''),
(23, 1, '20214390', 'Afifah Astafannisa', '12345', ''),
(24, 1, '22214986', 'Dian Nitami Dwi', '12345', ''),
(25, 1, '58412112', 'Muhammad Ridho', '12345', ''),
(26, 1, '28214605', 'Putri Indah Surya', '12345', ''),
(27, 1, '2A214755', 'Tiara Eka Ardiyanti', '12345', ''),
(28, 1, '28214605', 'Putri Indah Surya', '12345', ''),
(29, 1, '2C214633', 'ZAHRAH SAFITRI', '12345', ''),
(30, 1, '24214043', 'Fatimah Az Zahrah', '12345', ''),
(31, 1, '26214646', 'Miftahul Maswa', '12345', ''),
(32, 1, '26214646', 'Miftahul Maswa', '12345', ''),
(33, 1, '22214592', 'DEAROSA AURA FILDZAH', '12345', ''),
(34, 1, '2A214346', 'SITI FATIMAH LUTFIANA', '12345', ''),
(35, 1, '29214221', 'Rian Kurnia Nugraha', '12345', ''),
(36, 1, '21214615', 'Arifatul Faidah', '12345', ''),
(37, 1, '25212366', 'Noor Mutia', '12345', ''),
(38, 1, '20212734', 'Anda Putra', '12345', '');

-- --------------------------------------------------------

--
-- Table structure for table `data_gelombang`
--

CREATE TABLE `data_gelombang` (
  `id` int(255) NOT NULL DEFAULT '0',
  `id_kursus` int(255) NOT NULL,
  `gelombang` varchar(255) NOT NULL,
  `kelas_gelombang` varchar(255) NOT NULL,
  `pj` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_gelombang`
--

INSERT INTO `data_gelombang` (`id`, `id_kursus`, `gelombang`, `kelas_gelombang`, `pj`) VALUES
(0, 0, 'Belum Dapat Gelombang', '', '-'),
(1, 1, '1 - SIMATUPANG (19 AGUSTUS -  30 SEPTEMBER 2017) 27 Mahasiswa', '', 'GMY'),
(2, 1, '2 - SIMATUPANG ( 03 FEBRUARI-10 MARET 2018)', '', 'Muhammad Ridho'),
(3, 1, '3 - SIMATUPANG (05 MEI-13 AGUSTUS 2018)', '', 'Witasari'),
(4, 1, '4 - SIMATUPANG (01 SEPTEMBER - 13 OKTOBER 2018)', '', 'Witasari'),
(5, 1, '1 - CIKUNIR (15 SEPTEMBER - 27 OKTOBER 2018)', '', 'Witasari'),
(6, 1, '2 - CIKUNIR (10 NOVEMBER - 12 JANUARI 2019)', '', 'Witasari'),
(8, 1, '1C - CENGKARENG (08 SEPTEMBER - 20 OKTOBER 2018)', '', 'Witasari'),
(9, 1, '3 - CIKUNIR (02 FEBRUARI - 09 MARET 2019)', '', 'Witasari'),
(10, 1, '5 - SIMATUPANG (26 JANUARI - 09 MARET 2019)', '', 'Witasari'),
(11, 1, '4 - CIKUNIR (SEDANG BERLANGSUNG)', '', 'Witasari'),
(12, 1, '6 - SIMATUPANG (RELEASE SOON)', '', 'Witasari'),
(13, 0, 'REFUND ', '', 'WITASARI');

-- --------------------------------------------------------

--
-- Table structure for table `data_kategorisoal`
--

CREATE TABLE `data_kategorisoal` (
  `id` int(255) NOT NULL,
  `nama_kategorisoal` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kategorisoal`
--

INSERT INTO `data_kategorisoal` (`id`, `nama_kategorisoal`) VALUES
(1, 'KUP'),
(2, 'PPH'),
(3, 'PPH OP dan Badan'),
(4, 'PPN & PPnBM'),
(5, 'PBB & BEA Materai'),
(21, 'PPH21'),
(22, 'PPH22'),
(23, 'PPH23'),
(24, 'PPH24'),
(25, 'PPH25'),
(26, 'PPH26'),
(42, 'FINAL');

-- --------------------------------------------------------

--
-- Table structure for table `data_kursus`
--

CREATE TABLE `data_kursus` (
  `id` int(8) NOT NULL,
  `nama_kursus` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kursus`
--

INSERT INTO `data_kursus` (`id`, `nama_kursus`) VALUES
(1, 'Brevet Pajak Terpadu');

-- --------------------------------------------------------

--
-- Table structure for table `data_modul`
--

CREATE TABLE `data_modul` (
  `id` int(255) NOT NULL,
  `judul_modul` varchar(255) NOT NULL,
  `nama_modul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_pembayaran`
--

CREATE TABLE `data_pembayaran` (
  `id` int(255) NOT NULL,
  `no_kwitansi` varchar(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `id_kursus` int(255) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `jumlah_bayar` int(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pembayaran`
--

INSERT INTO `data_pembayaran` (`id`, `no_kwitansi`, `id_user`, `id_kursus`, `tanggal_bayar`, `jumlah_bayar`, `keterangan`) VALUES
(1, '0000001', 45, 1, '2017-12-02', 750000, 'LUNAS'),
(2, '0000002', 71, 1, '2017-12-04', 750000, 'LUNAS'),
(3, '0000003', 72, 1, '2017-12-04', 750000, 'LUNAS'),
(4, '0000004', 49, 1, '2017-12-06', 750000, 'LUNAS'),
(5, '0000005', 48, 1, '2017-12-06', 750000, 'LUNAS'),
(6, '0000006', 50, 1, '2017-12-06', 750000, 'LUNAS'),
(7, '0000007', 68, 1, '2017-12-06', 750000, 'LUNAS'),
(8, '0000008', 65, 1, '2017-12-08', 750000, 'LUNAS'),
(9, '0000009', 67, 1, '2017-12-08', 750000, 'LUNAS'),
(10, '0000010', 73, 1, '2017-12-08', 750000, 'LUNAS'),
(11, '0000011', 64, 1, '2017-12-09', 750000, 'Lunas'),
(12, '0000012', 62, 1, '2017-12-11', 750000, 'LUNAS'),
(13, '0000013', 74, 1, '2017-12-11', 750000, 'LUNAS'),
(14, '0000014', 75, 1, '2017-12-12', 750000, 'LUNAS'),
(15, '0000015', 77, 1, '2017-12-19', 750000, 'LUNAS'),
(16, '0000016', 80, 1, '2018-01-05', 750000, 'LUNAS'),
(17, '0000017', 53, 1, '2018-01-08', 750000, 'LUNAS'),
(18, '0000018', 69, 1, '2018-01-09', 750000, 'LUNAS'),
(19, '0000019', 70, 1, '2018-01-13', 750000, 'LUNAS'),
(20, '0000020', 44, 1, '2018-01-13', 750000, 'LUNAS'),
(21, '0000021', 43, 1, '2018-01-13', 750000, 'LUNAS'),
(22, '0000022', 83, 1, '2018-01-13', 750000, 'LUNAS'),
(23, '0000023', 82, 1, '2018-01-13', 750000, 'LUNAS'),
(24, '0000024', 41, 1, '2018-01-13', 750000, 'LUNAS'),
(25, '0000025', 84, 1, '2018-01-13', 750000, 'LUNAS'),
(26, '0000026', 85, 1, '2018-01-13', 750000, 'LUNAS'),
(27, '0000027', 86, 1, '2018-01-18', 750000, 'LUNAS'),
(28, '0000028', 88, 1, '2018-01-22', 750000, 'LUNAS'),
(29, '0000029', 87, 1, '2018-01-26', 750000, 'LUNAS'),
(30, '0000030', 89, 1, '2018-01-31', 750000, 'LUNAS'),
(31, '0000031', 91, 1, '2018-01-05', 750000, 'LUNAS'),
(32, '0000033', 96, 1, '2018-02-28', 750000, 'LUNAS'),
(33, '0000034', 94, 1, '2018-02-28', 750000, 'LUNAS'),
(34, '0000035', 95, 1, '2017-02-28', 750000, 'LUNAS'),
(35, '0000036', 93, 1, '2017-02-28', 750000, 'LUNAS'),
(36, '0000039', 101, 1, '2018-03-05', 750000, 'LUNAS'),
(37, '0000040', 99, 1, '2018-03-10', 750000, 'Lunas'),
(38, '0000037', 102, 1, '2018-03-05', 750000, 'lunas'),
(39, '0000038', 103, 1, '2018-03-05', 750000, 'lunas'),
(40, '0000041', 114, 1, '2018-03-13', 750000, 'LUNAS'),
(41, '0000042', 113, 1, '2018-03-13', 750000, 'LUNAS'),
(42, '0000046', 132, 1, '2018-03-22', 750000, 'Lunas'),
(43, '0000043', 115, 1, '2017-03-16', 750000, 'LUNAS'),
(44, '0000044', 133, 1, '2017-03-22', 750000, 'LUNAS'),
(45, '0000045', 131, 1, '2017-03-22', 750000, 'LUNAS'),
(46, '0000047', 144, 1, '2018-03-31', 750000, 'Lunas'),
(47, '0000048', 143, 1, '2018-04-03', 750000, 'LUNAS'),
(48, '0000049', 145, 1, '2018-04-10', 750000, 'LUNAS'),
(49, '0000050', 146, 1, '2018-04-10', 750000, 'LUNAS'),
(50, '0000051', 127, 1, '2018-04-10', 750000, 'LUNAS'),
(51, '0000052', 128, 1, '2018-04-10', 750000, 'LUNAS'),
(52, '0000053', 130, 1, '2018-04-10', 750000, 'LUNAS'),
(53, '0000054', 125, 1, '2018-04-10', 750000, 'LUNAS'),
(54, '0000057', 123, 1, '2018-04-12', 750000, 'LUNAS'),
(55, '0000056', 120, 1, '2018-04-12', 750000, 'LUNAS'),
(56, '0000058', 124, 1, '2018-04-12', 750000, 'LUNAS'),
(57, '0000059', 117, 1, '2018-04-17', 750000, 'LUNAS'),
(58, '0000060', 54, 1, '2018-04-17', 750000, 'LUNAS'),
(59, '0000061', 116, 1, '2018-04-17', 750000, 'LUNAS'),
(60, '0000029', 87, 1, '2018-04-23', 750000, 'LUNAS'),
(61, '0000055', 126, 1, '2018-04-10', 750000, 'LUNAS'),
(62, '0000066', 211, 1, '2018-06-06', 750000, 'LUNAS'),
(63, '0000067', 219, 1, '2018-06-06', 750000, 'LUNAS'),
(64, '0000068', 217, 1, '2018-06-06', 750000, 'LUNAS'),
(65, '0000069', 216, 1, '2018-06-06', 750000, 'LUNAS'),
(66, '0000070', 220, 1, '2018-06-06', 750000, 'LUNAS'),
(67, '0000061', 191, 1, '2018-05-16', 750000, 'LUNAS'),
(68, '0000062', 192, 1, '2018-05-16', 750000, 'LUNAS'),
(69, '0000065', 193, 1, '2018-05-22', 750000, 'LUNAS'),
(70, '0000074', 234, 1, '2018-07-02', 750000, 'LUNAS'),
(71, '0000075', 197, 1, '2018-07-02', 750000, 'LUNAS'),
(72, '0000076', 200, 1, '2018-07-02', 750000, 'LUNAS'),
(73, '0000077', 202, 1, '2018-07-02', 750000, 'LUNAS'),
(74, '0000078', 201, 1, '2018-07-02', 750000, 'LUNAS'),
(75, '0000079', 196, 1, '2018-07-02', 750000, 'LUNAS'),
(76, '0000080', 212, 1, '2018-07-02', 750000, 'LUNAS'),
(77, '0000081', 198, 1, '2018-07-02', 750000, 'LUNAS'),
(78, '0000082', 199, 1, '2018-07-02', 750000, 'LUNAS'),
(79, '0000083', 111, 1, '2018-07-02', 750000, 'LUNAS'),
(80, '0000084', 229, 1, '2018-07-02', 750000, 'LUNAS'),
(81, '0000085', 222, 1, '2018-07-02', 750000, 'LUNAS'),
(82, '0000086', 207, 1, '2018-07-02', 750000, 'LUNAS'),
(83, '0000087', 203, 1, '2018-07-02', 750000, 'LUNAS'),
(84, '0000088', 228, 1, '2018-07-02', 750000, 'LUNAS'),
(85, '0000089', 235, 1, '2018-07-02', 750000, 'LUNAS'),
(86, '0000090', 204, 1, '2018-07-02', 750000, 'LUNAS'),
(87, '0000091', 107, 1, '2018-07-02', 750000, 'LUNAS'),
(88, '0000092', 108, 1, '2018-07-02', 750000, 'LUNAS'),
(89, '0000093', 109, 1, '2018-07-02', 750000, 'LUNAS'),
(90, '0000094', 210, 1, '2018-07-02', 750000, 'LUNAS'),
(91, '0000095', 110, 1, '2018-07-02', 750000, 'LUNAS'),
(92, '0000096', 233, 1, '2018-07-02', 750000, 'LUNAS'),
(93, '0000097', 208, 1, '2018-07-02', 750000, 'LUNAS'),
(94, '0000098', 230, 1, '2018-07-02', 750000, 'LUNAS'),
(95, '0000107', 209, 1, '2018-07-02', 750000, 'LUNAS'),
(96, '0000106', 206, 1, '2018-07-02', 750000, 'LUNAS'),
(97, '0000105', 181, 1, '2018-07-02', 750000, 'LUNAS'),
(98, '0000104', 179, 1, '2018-07-02', 750000, 'LUNAS'),
(99, '0000103', 161, 1, '2018-07-02', 750000, 'LUNAS'),
(100, '0000071', 205, 1, '2018-07-02', 750000, 'LUNAS'),
(101, '0000072', 227, 1, '2018-07-02', 750000, 'LUNAS'),
(102, '0000073', 39, 1, '2018-07-02', 750000, 'LUNAS'),
(103, '0000099', 218, 1, '2018-07-02', 750000, 'LUNAS'),
(104, '0000100', 239, 1, '2018-07-02', 750000, 'LUNAS'),
(105, '0000101', 237, 1, '2018-07-02', 750000, 'LUNAS'),
(106, '0000102', 238, 1, '2018-07-02', 750000, 'LUNAS'),
(107, '0000101', 237, 1, '2018-07-02', 750000, 'LUNAS'),
(108, '0000100', 255, 1, '2018-07-24', 750000, 'LUNAS'),
(109, '0000108', 243, 1, '2018-07-21', 750000, 'LUNAS'),
(110, '0000141', 295, 1, '2018-08-07', 750000, 'LUNAS'),
(111, '0000108', 161, 1, '2018-07-02', 750000, 'LUNAS'),
(112, '0000107', 209, 1, '2018-07-02', 750000, 'LUNAS'),
(113, '0000106', 206, 1, '2018-07-02', 750000, 'LUNAS'),
(114, '0000105', 181, 1, '2018-07-02', 750000, 'LUNAS'),
(115, '0000101', 179, 1, '2018-07-02', 750000, 'LUNAS'),
(116, '0000074', 234, 1, '2018-07-02', 750000, 'LUNAS'),
(117, '000075', 197, 1, '2018-07-02', 750000, 'LUNAS'),
(118, '0000076', 200, 1, '2018-07-02', 750000, 'LUNAS'),
(119, '0000077', 202, 1, '2018-07-02', 750000, 'LUNAS'),
(120, '0000078', 201, 1, '2018-07-02', 750000, 'LUNAS'),
(121, '0000079', 196, 1, '2018-07-02', 750000, 'LUNAS'),
(122, '0000080', 212, 1, '2018-07-02', 750000, 'LUNAS'),
(123, '0000081', 198, 1, '2018-07-02', 750000, 'LUNAS'),
(124, '0000082', 199, 1, '2018-07-02', 750000, 'LUNAS'),
(125, '0000083', 111, 1, '2018-07-02', 750000, 'LUNAS'),
(126, '0000084', 229, 1, '2018-07-02', 750000, 'LUNAS'),
(127, '0000085', 222, 1, '2018-07-02', 750000, 'LUNAS'),
(128, '0000086', 207, 1, '2018-07-02', 750000, 'LUNAS'),
(129, '0000087', 203, 1, '2018-07-02', 750000, 'LUNAS'),
(130, '0000088', 228, 1, '2018-07-02', 750000, 'LUNAS'),
(131, '0000089', 235, 1, '2018-07-02', 750000, 'LUNAS'),
(132, '0000090', 204, 1, '2018-07-02', 750000, 'LUNAS'),
(133, '0000091', 107, 1, '2018-07-02', 750000, 'LUNAS'),
(134, '0000092', 108, 1, '2018-07-02', 750000, 'LUNAS'),
(135, '0000093', 109, 1, '2018-07-02', 750000, 'LUNAS'),
(136, '0000094', 210, 1, '2018-07-02', 750000, 'LUNAS'),
(137, '0000095', 110, 1, '2018-07-02', 750000, 'LUNAS'),
(138, '0000096', 233, 1, '2018-07-02', 750000, 'LUNAS'),
(139, '0000098', 230, 1, '2018-07-02', 750000, 'LUNAS'),
(140, '0000097', 208, 1, '2018-07-02', 750000, 'LUNAS'),
(141, '0000113', 213, 1, '2018-08-03', 750000, 'LUNAS'),
(142, '0000112', 180, 1, '2018-08-03', 750000, 'LUNAS'),
(143, '0000111', 177, 1, '2018-08-03', 750000, 'LUNAS'),
(144, '0000110', 225, 1, '2018-08-03', 750000, 'LUNAS'),
(145, '0000121', 169, 1, '2018-08-03', 750000, 'LUNAS'),
(146, '0000120', 156, 1, '2018-08-03', 750000, 'LUNAS'),
(147, '0000110', 165, 1, '2018-08-03', 750000, 'LUNAS'),
(148, '0000118', 166, 1, '2018-08-03', 750000, 'LUNAS'),
(149, '0000117', 171, 1, '2018-08-03', 750000, 'LUNAS'),
(150, '0000116', 215, 1, '2018-08-03', 750000, 'LUNAS'),
(151, '0000115', 268, 1, '2018-08-03', 750000, 'LUNAS'),
(152, '0000140', 158, 1, '2018-08-03', 750000, 'LUNAS'),
(153, '0000139', 245, 1, '2018-08-03', 750000, 'LUNAS'),
(154, '0000138', 175, 1, '2018-08-03', 750000, 'LUNAS'),
(155, '0000137', 160, 1, '2018-08-03', 750000, 'LUNAS'),
(156, '0000136', 187, 1, '2018-08-03', 750000, 'LUNAS'),
(157, '0000135', 164, 1, '2018-08-03', 750000, 'LUNAS'),
(158, '0000131', 163, 1, '2018-08-03', 750000, 'LUNAS'),
(159, '0000133', 176, 1, '2018-08-03', 750000, 'LUNAS'),
(160, '0000132', 174, 1, '2018-08-03', 750000, 'LUNAS'),
(161, '0000131', 259, 1, '2018-08-03', 750000, 'LUNAS'),
(162, '0000130', 170, 1, '2018-08-03', 750000, 'LUNAS'),
(163, '0000120', 223, 1, '2018-08-03', 750000, 'LUNAS'),
(164, '0000128', 168, 1, '2018-08-03', 750000, 'LUNAS'),
(165, '0000127', 226, 1, '2018-08-03', 750000, 'LUNAS'),
(166, '0000126', 224, 1, '2018-08-03', 750000, 'LUNAS'),
(167, '0000125', 167, 1, '2018-08-03', 750000, 'LUNAS'),
(168, '0000121', 173, 1, '2018-08-03', 750000, 'LUNAS'),
(169, '0000123', 172, 1, '2018-08-03', 750000, 'LUNAS'),
(170, '0000122', 157, 1, '2018-08-03', 750000, 'LUNAS'),
(171, '0000114', 214, 1, '2018-08-03', 750000, 'LUNAS'),
(172, '0000158', 292, 1, '2018-08-11', 750000, 'LUNAS'),
(173, '0000159', 307, 1, '2018-08-11', 750000, 'LUNAS'),
(174, '0000160', 286, 1, '2018-08-13', 750000, 'LUNAS'),
(175, '0000161', 287, 1, '2018-08-13', 750000, 'LUNAS'),
(176, '0000162', 284, 1, '2018-08-13', 750000, 'LUNAS'),
(177, '0000157', 304, 1, '2018-08-09', 750000, 'LUNAS'),
(178, '0000155', 277, 1, '2018-08-09', 750000, 'LUNAS'),
(179, '0000154', 278, 1, '2018-08-09', 750000, 'LUNAS'),
(180, '0000152', 273, 1, '2018-08-09', 750000, 'LUNAS'),
(181, '0000151', 282, 1, '2018-08-09', 750000, 'LUNAS'),
(182, '0000150', 276, 1, '2018-08-09', 750000, 'LUNAS'),
(183, '0000149', 274, 1, '2018-08-09', 750000, 'LUNAS'),
(184, '0000148', 290, 1, '2018-08-09', 750000, 'LUNAS'),
(185, '0000146', 271, 1, '2018-08-09', 750000, 'LUNAS'),
(186, '0000153', 280, 1, '2018-08-09', 750000, 'LUNAS'),
(187, '0000145', 40, 1, '2018-08-09', 750000, 'LUNAS'),
(189, '0000164', 311, 1, '2018-08-21', 750000, 'LUNAS'),
(190, '0000163', 310, 1, '2018-08-21', 750000, 'LUNAS'),
(191, '0000165', 81, 1, '2018-08-23', 750000, 'LUNAS'),
(192, '0000302', 289, 1, '2018-08-28', 750000, 'LUNAS'),
(193, '0000204', 342, 1, '2018-08-31', 750000, 'LUNAS'),
(194, '0000203', 343, 1, '2018-08-31', 750000, 'LUNAS'),
(195, '0000189', 135, 1, '2018-08-24', 750000, 'LUNAS'),
(196, '0000190', 136, 1, '2018-08-24', 750000, 'LUNAS'),
(197, '0000191', 137, 1, '2018-08-24', 750000, 'LUNAS'),
(198, '0000192', 141, 1, '2018-08-24', 750000, 'LUNAS'),
(199, '0000193', 138, 1, '2018-08-24', 750000, 'LUNAS'),
(200, '0000194', 139, 1, '2018-08-24', 750000, 'LUNAS'),
(201, '0000195', 150, 1, '2018-08-24', 750000, 'LUNAS'),
(202, '0000196', 142, 1, '2018-08-24', 750000, 'LUNAS'),
(203, '0000197', 151, 1, '2018-08-24', 750000, 'LUNAS'),
(204, '0000198', 148, 1, '2018-08-24', 750000, 'LUNAS'),
(205, '0000199', 149, 1, '2018-08-24', 750000, 'LUNAS'),
(206, '0000200', 152, 1, '2018-08-24', 750000, 'LUNAS'),
(207, '0000201', 140, 1, '2018-08-24', 750000, 'LUNAS'),
(208, '0000166', 315, 1, '2018-08-24', 750000, 'LUNAS'),
(209, '0000167', 313, 1, '2018-08-24', 750000, 'LUNAS'),
(210, '0000168', 316, 1, '2018-08-24', 750000, 'LUNAS'),
(211, '0000169', 317, 1, '2018-08-24', 750000, 'LUNAS'),
(212, '0000170', 318, 1, '2018-08-24', 750000, 'LUNAS'),
(213, '0000171', 66, 1, '2018-08-24', 750000, 'LUNAS'),
(214, '0000172', 319, 1, '2018-08-24', 750000, 'LUNAS'),
(215, '0000173', 332, 1, '2018-08-24', 750000, 'LUNAS'),
(216, '0000174', 320, 1, '2018-08-24', 750000, 'LUNAS'),
(217, '0000175', 321, 1, '2018-08-24', 750000, 'LUNAS'),
(218, '0000176', 326, 1, '2018-08-24', 750000, 'LUNAS'),
(219, '0000177', 322, 1, '2018-08-24', 750000, 'LUNAS'),
(220, '0000178', 314, 1, '2018-08-24', 750000, 'LUNAS'),
(221, '0000179', 312, 1, '2018-08-24', 750000, 'LUNAS'),
(222, '0000180', 324, 1, '2018-08-24', 750000, 'LUNAS'),
(223, '0000181', 325, 1, '2018-08-24', 750000, 'LUNAS'),
(224, '0000182', 327, 1, '2018-08-24', 750000, 'LUNAS'),
(225, '0000183', 323, 1, '2018-08-24', 750000, 'LUNAS'),
(226, '0000184', 328, 1, '2018-08-24', 750000, 'LUNAS'),
(227, '0000185', 329, 1, '2018-08-24', 750000, 'LUNAS'),
(228, '0000186', 330, 1, '2018-08-24', 750000, 'LUNAS'),
(229, '0000187', 331, 1, '2018-08-24', 750000, 'LUNAS'),
(230, '0000188', 333, 1, '2018-08-24', 750000, 'LUNAS'),
(231, '0000205', 275, 1, '2018-09-06', 750000, 'LUNAS'),
(232, '0000208', 346, 1, '2018-09-10', 750000, 'LUNAS'),
(233, '0000206', 344, 1, '2018-09-07', 750000, 'LUNAS'),
(234, '0000218', 350, 1, '2018-09-27', 750000, 'LUNAS'),
(235, '0000219', 336, 1, '2018-09-27', 750000, 'LUNAS'),
(236, '0000220', 341, 1, '2018-09-27', 750000, 'LUNAS'),
(237, '0000221', 337, 1, '2018-09-27', 750000, 'LUNAS'),
(238, '0000222', 338, 1, '2018-09-27', 750000, 'LUNAS'),
(239, '0000223', 339, 1, '2018-09-27', 750000, 'LUNAS'),
(240, '0000224', 340, 1, '2018-09-27', 750000, 'LUNAS'),
(241, '0000225', 349, 1, '2018-09-27', 750000, 'LUNAS'),
(242, '0000211', 248, 1, '2018-09-27', 750000, 'LUNAS'),
(243, '0000209', 250, 1, '2019-09-27', 750000, 'LUNAS'),
(244, '0000210', 253, 1, '2018-09-27', 750000, 'LUNAS'),
(245, '0000212', 247, 1, '2018-09-27', 750000, 'LUNAS'),
(246, '0000213', 257, 1, '2018-09-27', 750000, 'LUNAS'),
(247, '0000214', 256, 1, '2018-09-27', 750000, 'LUNAS'),
(248, '0000217', 244, 1, '2018-09-27', 750000, 'LUNAS'),
(249, '0000216', 221, 1, '2018-09-27', 750000, 'LUNAS'),
(250, '0000215', 308, 1, '2018-09-27', 750000, 'LUNAS'),
(251, '0000227', 252, 1, '2018-09-27', 750000, 'LUNAS'),
(252, '0000232', 281, 1, '2018-09-27', 750000, 'LUNAS'),
(253, '0000226', 254, 1, '2018-09-27', 750000, 'LUNAS'),
(254, '0000233', 251, 1, '2018-09-27', 750000, 'LUNAS'),
(255, '0000231', 258, 1, '2018-09-27', 750000, 'LUNAS'),
(256, '0000235', 351, 1, '2018-09-27', 750000, 'LUNAS'),
(257, '0000236', 195, 1, '2018-09-27', 750000, 'LUNAS'),
(258, '0000237', 249, 1, '2018-09-27', 750000, 'LUNAS'),
(259, '0000238', 301, 1, '2018-09-27', 750000, 'LUNAS'),
(260, '0000230', 260, 1, '2018-09-27', 750000, 'LUNAS'),
(261, '0000231', 178, 1, '2018-09-27', 750000, 'LUNAS'),
(262, '0000228', 188, 1, '2018-09-27', 750000, 'LUNAS'),
(263, '0000229', 246, 1, '2018-09-27', 750000, 'LUNAS'),
(264, '0000257', 357, 1, '2018-10-03', 750000, 'LUNAS'),
(265, '0000257', 357, 1, '2018-10-03', 750000, 'LUNAS'),
(266, '0000253', 265, 1, '2018-10-01', 750000, 'LUNAS'),
(267, '0000252', 267, 1, '2018-10-01', 750000, 'LUNAS'),
(268, '0000251', 264, 1, '2018-10-01', 750000, 'LUNAS'),
(269, '0000250', 263, 1, '2018-10-01', 750000, 'LUNAS'),
(270, '0000249', 261, 1, '2018-10-01', 750000, 'LUNAS'),
(271, '0000247', 270, 1, '2018-10-01', 750000, 'LUNAS'),
(272, '0000246', 269, 1, '2018-10-01', 750000, 'LUNAS'),
(273, '0000245', 266, 1, '2018-10-01', 750000, 'LUNAS'),
(274, '0000241', 300, 1, '2018-10-01', 750000, 'LUNAS'),
(275, '0000243', 262, 1, '2018-10-01', 750000, 'LUNAS'),
(276, '0000241', 294, 1, '2018-10-01', 750000, 'LUNAS'),
(277, '0000240', 283, 1, '2018-10-01', 750000, 'LUNAS'),
(278, '0000248', 364, 1, '2018-10-01', 750000, 'LUNAS'),
(279, '0000242', 14, 1, '2018-10-01', 750000, 'LUNAS'),
(280, '0000261', 14, 1, '2018-10-08', 750000, 'LUNAS'),
(281, '0000261', 159, 1, '2018-10-08', 750000, 'LUNAS'),
(282, '0000263', 153, 1, '2018-10-08', 750000, 'LUNAS'),
(283, '0000262', 194, 1, '2018-10-08', 750000, 'LUNAS'),
(284, '0000258', 358, 1, '2018-10-04', 750000, 'LUNAS'),
(285, '0000259', 361, 1, '2018-10-05', 750000, 'LUNAS'),
(286, '0000260', 362, 1, '2018-10-05', 750000, 'LUNAS'),
(287, '0000242', 359, 1, '2018-10-01', 750000, 'LUNAS'),
(288, '0000267', 334, 1, '2018-10-23', 750000, 'LUNAS'),
(289, '0000268', 354, 1, '2018-11-01', 750000, 'LUNAS'),
(290, '0000302', 355, 1, '2018-10-29', 750000, 'LUNAS'),
(291, '0000271', 368, 1, '2018-11-01', 750000, 'LUNAS'),
(292, '0000269', 367, 1, '2018-11-01', 750000, 'LUNAS'),
(293, '0000270', 366, 1, '2018-11-01', 750000, 'LUNAS'),
(294, '0000272', 369, 1, '2018-11-16', 750000, 'LUNAS'),
(295, '0000273', 371, 1, '2018-11-30', 750000, 'LUNAS'),
(296, '0000274', 370, 1, '2018-11-30', 750000, 'LUNAS'),
(297, '0000276', 374, 1, '2018-12-20', 750000, 'LUNAS'),
(298, '0000275', 375, 1, '2018-12-20', 750000, 'LUNAS'),
(299, '0000278', 373, 1, '2018-12-27', 750000, 'LUNAS'),
(300, '0000279', 376, 1, '2019-01-21', 7500000, 'LUNAS'),
(301, '0000281', 394, 1, '0000-00-00', 750000, 'LUNAS'),
(302, '0000282', 400, 1, '2019-03-18', 750000, 'LUNAS'),
(303, '0000283', 393, 1, '2019-03-18', 750000, 'LUNAS'),
(304, '0000287', 421, 1, '2019-05-07', 750000, 'LUNAS'),
(305, '0000288', 409, 1, '2019-05-05', 750000, 'LUNAS'),
(306, '0000289', 390, 1, '2019-05-02', 750000, 'LUNAS'),
(307, '0000290', 415, 1, '2019-05-02', 750000, 'LUNAS'),
(308, '0000291', 401, 1, '2019-05-02', 750000, 'LUNAS'),
(309, '0000292', 184, 1, '2019-05-02', 750000, 'LUNAS'),
(310, '0000293', 416, 1, '2019-05-02', 750000, 'LUNAS'),
(311, '0000294', 186, 1, '2019-05-02', 750000, 'LUNAS'),
(312, '0000295', 403, 1, '2019-05-02', 750000, 'LUNAS'),
(313, '0000296', 185, 1, '2019-05-02', 750000, 'LUNAS'),
(314, '0000297', 155, 1, '2019-05-02', 750000, 'LUNAS'),
(315, '0000298', 418, 1, '2019-05-02', 750000, 'LUNAS'),
(316, '0000299', 412, 1, '2019-05-02', 750000, 'LUNAS'),
(317, '0000300', 414, 1, '2019-05-02', 750000, 'LUNAS'),
(318, '0000285', 382, 1, '2019-04-25', 750000, 'LUNAS'),
(319, '0000301', 422, 1, '2019-05-09', 750000, 'LUNAS'),
(320, '0000286', 419, 1, '2019-05-02', 750000, 'LUNAS'),
(321, '0000301', 182, 1, '2019-05-10', 750000, 'LUNAS'),
(322, '0000353', 420, 1, '2019-05-13', 750000, 'LUNAS'),
(323, '0000358', 386, 1, '2019-05-17', 750000, 'LUNAS'),
(324, '0000359', 426, 1, '2019-06-18', 750000, 'LUNAS'),
(325, '0000360', 425, 1, '2019-06-18', 750000, 'LUNAS'),
(326, '0000361', 427, 1, '2019-06-18', 750000, 'LUNAS'),
(327, '0000361', 429, 1, '2019-06-27', 750000, 'LUNAS'),
(328, '0000363', 428, 1, '2019-06-26', 750000, 'LUNAS'),
(329, '0000362', 423, 1, '2019-06-25', 750000, 'LUNAS'),
(330, '0000365', 397, 1, '2019-07-03', 750000, 'LUNAS'),
(331, '0000366', 396, 1, '2019-07-03', 750000, 'LUNAS'),
(332, '0000367', 437, 1, '2019-07-09', 750000, 'LUNAS'),
(333, '0000368', 439, 1, '2019-07-16', 750000, 'LUNAS'),
(334, '0000369', 440, 1, '2019-07-16', 750000, 'LUNAS'),
(335, '0000370', 455, 1, '2019-07-17', 750000, 'LUNAS'),
(336, '0000371', 456, 1, '2019-07-17', 750000, 'LUNAS'),
(337, '0000374', 446, 1, '2019-07-17', 750000, 'LUNAS'),
(338, '0000373', 434, 1, '2019-07-17', 750000, 'LUNAS'),
(339, '0000372', 450, 1, '2019-07-17', 750000, 'LUNAS'),
(340, '0000378', 459, 1, '2019-07-18', 750000, 'LUNAS'),
(341, '0000377', 460, 1, '2019-07-18', 750000, 'LUNAS'),
(342, '0000376', 458, 1, '2019-07-18', 750000, 'LUNAS'),
(343, '0000375', 457, 1, '2019-07-18', 750000, 'LUNAS');

-- --------------------------------------------------------

--
-- Table structure for table `data_pengajar`
--

CREATE TABLE `data_pengajar` (
  `id` int(255) NOT NULL,
  `nama_depan` varchar(255) NOT NULL,
  `nama_belakang` varchar(255) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pengajar`
--

INSERT INTO `data_pengajar` (`id`, `nama_depan`, `nama_belakang`, `jk`, `no_hp`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `kota`, `email`, `gambar`) VALUES
(10, 'Faisal', '', 'L', '', '', '0000-00-00', '', '', '', ''),
(11, 'Haris', '', 'L', '', '', '0000-00-00', '', '', '', ''),
(12, 'Adi', 'Bowo', 'L', '', '', '0000-00-00', '', '', '', ''),
(8, 'Tito', 'Himamora', 'L', '', '', '0000-00-00', '', '', '', ''),
(9, 'Raskono', '', 'L', '', '', '0000-00-00', '', '', '', ''),
(5, 'IGN', 'Sanjaya', 'L', '', '', '0000-00-00', '', '', '', ''),
(6, 'Agung', 'Setiawan', 'L', '', '', '0000-00-00', '', '', '', ''),
(7, 'Aji', 'Witono', 'L', '', '', '0000-00-00', '', '', '', ''),
(13, 'Zulkifli', '', 'L', '', '', '0000-00-00', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `data_register`
--

CREATE TABLE `data_register` (
  `id` int(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `nama_depan` varchar(255) NOT NULL,
  `nama_belakang` varchar(255) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `npm` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `domisili` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_register` date NOT NULL,
  `id_gelombang` int(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_register`
--

INSERT INTO `data_register` (`id`, `nama_lengkap`, `nama_depan`, `nama_belakang`, `jk`, `npm`, `kelas`, `jurusan`, `fakultas`, `domisili`, `no_hp`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `kota`, `email`, `tgl_register`, `id_gelombang`, `gambar`, `status`) VALUES
(379, 'Raka Ardyansah Wicaksono', '', '', 'L', '26216025', '3EB13', 'akutansi', 'ekonomi', 'depok', '087886594142', 'jakarta', '1998-08-29', 'jl. jaksa pisangan lama III No. 07 rt 07 rw 03,pulogadung,jakarta timur. 13230', 'DKI Jakarta', 'rakaardyansah@gmail.com', '2019-01-15', 0, '', 'Mahasiswa'),
(20, '', 'Malicha', 'Aulia Zatalini', 'P', '24212401', 'SMAK06', 'Akuntansi', 'Ekonomi', 'Depok', '085810000377', 'Tegal', '1994-07-23', 'Perumahan Puri Bojong Lestari 2 Blok CD No. 10 RT 01/RW 017', 'Bogor', 'malichaaz@gmail.com', '0000-00-00', 1, '', 'Mahasiswa'),
(381, 'Achmad Jamaludin Yahya', '', '', 'L', '0152000154', '7MM-Keuangan', 'Manajemen', 'Ekonomi', 'Raya Bogor Km.24 Cijantung, Pasar Rebo, Jakarta Timur', '085777498623', 'Jakarta Timur', '1997-10-16', 'Jl Lebak Para No. 37 Rt/Rw 05/05 Cijantung Pasar Rebo, Jakarta Timur 13770', 'Jakarta Timur', 'jamal', '2019-02-05', 0, '', 'Mahasiswa'),
(380, 'Ayu Hayuningsih', '', '', 'P', '21213540', '4EB04', 'Akuntansi', 'Ekonomi', 'Depok', '081316205665', 'Jakarta', '1995-09-07', 'Bukit Waringin E15 no.1 Bojonggede', 'Bogor', 'Ayuhayuningsih795@gmail.com', '2019-01-31', 0, '', 'Mahasiswa'),
(377, 'Anggraeni Tri Utami', '', '', 'P', '40215798', '3DA01', 'Akuntansi Komputer', 'D3 Bisnis Kewirausahaan', 'Depok/ Kelapa Dua', '081517987250', 'Jakarta', '1997-04-25', 'Jl. H Joko VI RT 07 / RW 004 NO 54, Lenteng Agung, Jagakarsa, Jakarta Selatan', 'Jakarta', 'anggraeniutami97@gmail.com', '2018-12-17', 0, '', 'Mahasiswa'),
(378, 'Megawati sutisna ', '', '', 'P', '4B216950', '3DA01', 'Akuntansi komputer', 'D3BK', 'Depok', '085210601499', 'Tangerang ', '1996-11-10', 'Jln Raya STPI kp blok kelapa Rt.002/002 No.185 Curug tangerang', 'Tangerang ', 'Megaega703@gmail.com', '2018-12-22', 0, '', 'Mahasiswa'),
(376, 'RULLY SYACHRUN', '', '', 'L', '21298281', '', 'EKONOMI ACCOUNTING', 'EKONOMI', 'DEPOK', '08158030377', 'JAKARTA', '1979-11-03', 'DUREN SAWIT INDAH BLOK A2 NO.4', 'JAKARTA TIMUR', 'ayi.rully@gmail.com', '2018-12-17', 0, '', 'Mahasiswa'),
(375, 'Azizah Farhanah', '', '', 'P', '51216270', '3DF01', 'D3 Manajemen Keuangan', 'D3 Bisnis dan Kewirausahaan', 'Universitas Gunadarma Depok', '087785077854', 'Jakarta', '1998-04-26', 'Jl. Swadaya 3 Nno.48 Rt.04 Rw.06 Kel. Jatiranggon Kec. Jatisampurna', 'Bekasi Selatan', 'azizahfarhanah@yahoo.com ', '2018-12-14', 0, '', 'Mahasiswa'),
(373, 'Retno Agustiningsih', '', '', 'P', '25215787', '4EB02', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma', '085774820627', 'Jakarta', '1997-08-07', 'Pondok Maharta blok A8/09 RT 16 RW 10, Kel. Pondok Kacang Timur, Kec. Pondok Aren', 'Tangerang Selatan', 'retnoagustiningsih78@gmail.com', '2018-12-10', 0, '', 'Mahasiswa'),
(374, 'Bima Indra Sutopo', '', '', 'L', '21216424', '3EB13', 'S1 AKUNTANSI', 'Ekonomi ', 'Depok', '087785077854', 'Jakarta', '1998-12-05', 'Gg Bambu Petung No.24 Rt.05 Rw.05, Kel.Cilangkap, Kec. Cipayung', 'Jakarta Timur', 'bimaflash@gmail.com', '2018-12-14', 0, '', 'Mahasiswa'),
(22, '', 'Neng Tita ', 'Purwasih', 'P', '27214894', '3eb06', 'Akuntansi', 'Ekonomi', 'Depok', '087786390399', 'Tasikmalaya ', '1994-11-23', 'Jalan Suci No. 7 ', 'Jakarta Timur ', 'nengtitapurwasih@gmail.com', '0000-00-00', 1, '', 'Mahasiswa'),
(23, '', 'Siti', 'Rodiyah', 'P', '2A214384', '3EB12', 'Akuntansi', 'Ekonomi', 'Depok', '082128756579', 'Cirebon', '1995-06-22', 'Blok Desa, Desa Kejuden RT 02 / RW 02. Kec. Depok Kab. Cirebon', 'Cirebon', 'rodiyahnurahmadok@gmail.com', '0000-00-00', 1, '', 'Mahasiswa'),
(24, '', 'Andri', '', 'L', '21214146', '3EB05', 'Akuntansi', 'Ekonomi', 'Depok', '087789022706', 'Jakarta', '1996-09-02', 'Jalan Raya Kalibata gg.porti RT010/01 NO.14', 'Jakarta Selatan', 'andri.khairizal@gmail.com', '0000-00-00', 1, '', 'Mahasiswa'),
(25, '', 'Putri Indah', 'Surya', 'P', '28214605', '3EB08', 'Akuntansi', 'Ekonomi', 'Depok', '087876691448', 'Jakarta', '1996-01-09', 'Jalan Tiang No. 14A RT006 RW17 Kayu Putih, Pulogadung', 'Jakarta Timur', 'putriindahsurya09@gmail.com', '0000-00-00', 1, '', 'Mahasiswa'),
(371, 'Susi Fatmawati', '', '', 'P', '17216209', '3EA07', 'Manajemen', 'Ekonomi', 'Depok', '085647480651', 'Banjarnegara', '1997-04-17', 'Limbangan RT 04 RW 03 No 11. Kecamatan Madukara', 'Banjarnegara', 'Susifatmaw17@gmail.com', '2018-11-22', 0, '', 'Mahasiswa'),
(27, '', 'Dian Nitami', 'Dwi', 'P', '22214986', '3EB28', 'Akuntansi', 'Ekonomi', 'Kalimalang ', '081546236541', 'Jakarta', '1996-07-04', 'Jalan Inspeksi Kali Sunter Rt:010 Rw:004 ', 'Jakarta Utara', 'diannd96@gmail.com', '0000-00-00', 1, '', 'Mahasiswa'),
(52, 'Muhammad Ridho Purwono', '', '', 'L', '58412112', '4IA07', 'TI', 'TI', 'Depok', '085280047172', 'Jakarta', '1994-06-12', 'Perum. Mutiara', 'Bekasi', 'muhammad.ridho94@gmail.com', '2017-11-16', 0, '', 'Admin'),
(412, 'M.Rizky Ramadhony', '', '', 'L', '24216201', '3EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081318990944', 'Bekasi', '1999-01-09', 'Jl belut 1 ', 'Bekasi', 'Ramadhony04@gmail.com', '2019-04-08', 0, '', 'Mahasiswa'),
(424, 'Putri Kladia Khairunnisa', '', '', 'P', '25215448', '4EB12', 'Akuntansi', 'Ekonomi', 'Depok', '081314381884', 'Subang', '1996-04-08', 'Kompleks Dephan Mabes TNI, Kelapa Dua, Depok. Jl. Perjuangan No. 4A RT 02 RW 02', 'Depok', 'putrikladiaaak@gmail.com', '2019-06-12', 0, '', 'Mahasiswa'),
(370, 'Tiva Oktarina Yasda', '', '', 'P', '17216411', '3EA16', 'Manajemen / S1', 'Ekonomi', 'Depok', '081275955652', 'Bukittinggi', '1997-10-10', 'Jalan Pinang 1 No 8A RT 1 RW 3 Wisma Karunia Pondok Cina, Beji.', 'Depok', 'tivaoktarinayasda@gmail.com', '2018-11-22', 0, '', 'Mahasiswa'),
(31, '', 'Fatimah Az', 'Zahrah', 'P', '24214043', '3eb33', 'akuntansi', 'ekonomi', 'kalimalang', '081219067155', 'Purwokerto', '1996-08-14', 'Bekasi Timur Permai Blok A9 No.16 Tambun Selatan', 'Bekasi', 'fazzhrh@gmail.com', '0000-00-00', 1, '', 'Mahasiswa'),
(32, '', 'Miftahul', 'Maswa', 'P', '26214646', '3EB28', 'Akuntansi', 'Ekonomi', 'Kalimalang', '089696953625', 'Bekasi', '1996-06-23', 'Jl. Simbang 2 Rt. 04 Rw. 004 No. 70 Kel. Kaliabang Tengah, Kec. Bekasi Utara', 'Bekasi', 'miftahul.maswa12@gmail.com', '0000-00-00', 2, '', 'Mahasiswa'),
(33, '', 'DEAROSA AURA', 'FILDZAH', 'P', '22214592', '3EB01', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '083873116675', 'TRENGGALEK', '1996-04-03', 'JALAN AL-BASHOR RT 005/RW 03 NO. 16 KEL.DUKUH KEC.KRAMATJATI', 'JAKARTA TIMUR', 'adearosa@yahoo.com', '0000-00-00', 1, '', 'Mahasiswa'),
(34, '', 'SITI FATIMAH', 'LUTFIANA', 'P', '2A214346', '3EB01', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '083894292627', 'JAKARTA', '1996-12-08', 'KEBAGUSAN KECIL NO. 8, RT. 002 RW. 008, KELURAHAN KEBAGUSAN, KECAMATAN PASAR MINGGU', 'JAKARTA SELATAN', 'sitifatimah.lutfiana@gmail.com', '0000-00-00', 1, '', 'Mahasiswa'),
(35, '', 'Rian Kurnia', 'Nugraha', 'L', '29214221', '3EB34', 'Akuntansi', 'Ekonomi', 'Kalimalang', '087787269221', 'Jakarta', '1996-01-15', 'Jalan Gugus Depan 1 No.7 Blok 2 RT.01 RW.04 Rawalumbu', 'Bekasi', 'riaankurnia@gmail.com', '0000-00-00', 1, '', 'Mahasiswa'),
(36, '', 'Arifatul', 'Faidah', 'P', '21214615', '3EB32', 'Akuntansi', 'Ekonomi', 'Kalimalang', '08979135306', 'Kebumen', '1994-12-10', 'Jln. RA. Kartini, Gang Hambali, RT/RW:003/025, NO:105 Kel. Margahayu, Bekasi Timur', 'Bekasi', 'arifatul.faidah@gmail.com', '0000-00-00', 1, '', 'Mahasiswa'),
(37, '', 'Noor ', 'Mutia', 'P', '25212366', 'SMAK06', 'Akuntansi', 'Ekonomi', 'TB Simatupang', '087770306270', 'Jakarta', '1994-04-24', 'Jl Padurenan RT 06/ RW 08 No. 28 Kec. Cibinong Kab. Bogor Kode Pos. 16916', 'Bogor', 'mutianoor24@gmail.com', '0000-00-00', 1, '', 'Mahasiswa'),
(38, '', 'Anda', 'Putra', 'L', '20212734', 'SMAK06', 'Akuntansi', 'Ekonomi', 'TB Simatupang', '082170370037', 'Bangko', '1994-07-25', 'Jl. Jati Padang Poncol III, No 38 RT08/RW05, Jati Padang, Pasar Minggu', 'Jakarta Selatan', 'andaputraa@gmail.com', '0000-00-00', 1, '', 'Mahasiswa'),
(382, 'Wulan Aitanadilla', '', '', 'P', '27215204', '4EB88', 'Akuntansi', 'Ekonomi', 'Simatupanh', '085772212741', 'Bogor', '0000-00-00', 'Jalan Garuda Blok Q No. 4, Pasir Mulya Bogor Barat', 'Bogor', 'wulanainatadilla@gmail.com', '2019-02-14', 0, '', 'Mahasiswa'),
(41, '', 'Laras Dian', '', 'P', '25214980', '', 'Akuntansi', '', 'Depok', '', 'Depok', '0000-00-00', 'Jl.raya sawangan rt 2/11 no.62', 'Depok', 'larasdian151296@gmail.com', '0000-00-00', 2, '', 'Mahasiswa'),
(42, '', 'Rizky ', 'Alviani ', 'P', '16215172', '3EA10', 'Manajemen ', 'Ekonomi ', 'Depok ', '085840041051', 'Jakarta ', '1996-09-22', 'Jalan Nangka No. 67 RT 006/015 Beji-Depok ', 'Depok ', 'alviani64@gmail.com', '0000-00-00', 2, '', 'Mahasiswa'),
(43, '', 'Mutia ', 'Fajarriani', 'P', '27214667', '4EB18', 'Akuntansi', 'Ekonomi', 'Depok', '087888750311', 'Bekasi', '1996-08-08', 'Jalan Melati 12 No 21 RT 009/013 Kranggan Permai, Jatisampurna', 'Bekasi', 'mutiafajarriani@gmail.com', '0000-00-00', 2, '', 'Mahasiswa'),
(44, '', 'Cindy', 'Gusnitasari', 'P', '22214416', '4EB02', 'Akuntansi', 'Ekonomi', 'Depok', '082211958007', 'Magetan', '1995-08-25', 'Jalan Haji baping gg bhineka RT 011/009 No 22 Ciracas', 'Jakarta Timur', 'cindy.gufa@gmail.com', '0000-00-00', 2, '', 'Mahasiswa'),
(45, 'Amalia Nurul Hidayah', '', '', 'P', '92116002', 'SMAK06', 'Manajemen SIA', 'Manajemen', 'Salemba', '085711316155', 'Jakarta', '1994-02-28', 'jalan attahiriyyah 2 RT010 RW 03 No.61 Kelurahan pejaten barat , kecamatan pasar minggu , jakarta selatan DKI Jakarta-Kota Jakarta Selatan-Pasar Minggu', 'Jakarta Selatan', 'amelnurul@gmail.com', '0000-00-00', 2, '', 'Mahasiswa'),
(46, 'mariati', '', '', 'P', '25213290', '4EB88', 'akuntansi', 'ekonomi', 'depok', '082213062787', 'kudus', '1995-05-01', 'Randu Kuning Rt 01 Rw 06 Padurenan Gebog', 'kudus', 'mareirka@gmail.com', '0000-00-00', 2, '', 'Admin'),
(47, 'Witasari', '', '', 'P', '29213354', '4EB88', 'Akuntansi', 'Ekonomi', 'Depok', '08561633215', 'Bogor', '1995-06-11', 'Jl. Doktor Semeru No 96', 'Bogor', 'kun.nakayumm@gmail.com', '0000-00-00', 0, '', 'Admin'),
(48, 'CHAIRUNNISA SEKAR KINANTI', 'Chairunnisa Sekar', 'Kinanti', 'P', '21215453', '3EB13', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '081296806481', 'JAKARTA', '1997-08-11', 'PERUMAHAN BUKIT ASRI BLOK B1 NO 18 PABUARAN CIBINONG', 'BOGOR', 'chairunnisaskinanti@gmail.com', '0000-00-00', 0, '', ''),
(49, 'Utriya Mandasari Harta', '', '', 'P', '26215991', '3 EB 13', 'Akuntansi', 'Ekonomi', 'Depok', '081994641910', 'Jambi', '1997-06-29', 'Jl. Akses Ui No. 24/26 Kelapa Dua Depok ( kostan golden stick)', 'Depok', 'Utriyamandasari@gmail.com', '0000-00-00', 0, '', 'Mahasiswa'),
(50, 'Ira Jessica Rizwana', 'Ira', 'Jessica Rizwana', 'P', '23215415', '3EB13', 'Akuntansi', 'Ekonomi', 'Depok', '08568120163', 'Bogor', '1997-02-13', 'Jl. Pasir putih gg.cempedak rt 04 rw 01 no.2 kel. Pasir putih kec. Sawangan', 'Depok', 'irajessica11@gmail.com', '0000-00-00', 0, '', ''),
(51, 'Frisilia Orien Ramandita Nasrul', '', '', 'P', '22215787', '3eb13', 'Akuntansi', 'Ekonomi ', 'Depok', '082177951718', 'Sungi Pen', '1997-05-25', 'Jl.sirsak depok, beji', 'Depok', 'Sisi.frisilia@yahoo.com', '0000-00-00', 0, '', 'Mahasiswa'),
(53, 'Teddy Arie Wijaya', '', '', 'L', '18213827', '4EA07', 'Manajemen', 'Ekonomi', 'Depok', '087889991155', 'Karawang', '1993-03-31', 'Kp. Krajan Rt 02 Rw 01 Desa Pasrkaliki Rawamerta', 'Karawang', 'teddyariewijaya@yahoo.com', '2017-11-18', 0, '', 'Mahasiswa'),
(54, 'Nia Rahmawati', '', '', 'P', '25215035', '3EB06', 'Akuntansi ', 'Ekonomi', 'Depok', '085772435389', 'Jakarta', '1997-01-01', 'Jl. Tembaga dalam 1 No.Y550 RT.014 RW.03 Kec. Kemayoran Kel. Harapan mulya 10640', 'Jakarta pusat', 'niarahmawatiii12251@gmail.com', '2017-11-19', 0, '', 'Mahasiswa'),
(55, 'Amalia permatasari', '', '', 'P', '20215606', '3eb16', 'Akuntansi', 'Ekonomi', 'Kampus D', '085771264321', 'Subang', '1996-04-29', 'Jln. Haji abdul gani II rt002 rw002 no.105 kel.kalibaru kec.cilodong kota depok 16473', 'Depok', 'Amaliapermatasari9@gmail.com', '2017-11-19', 0, '', 'Mahasiswa'),
(56, 'Nihmarulloh aji prabowo', '', '', 'L', '24217497', '1EB22', 'AKUNTANSI', 'EKONOMI', 'Cengkareng', '0895346856173', 'tangerang', '1999-08-01', 'pondok bahar permai no. 105', 'Tangerang', 'prabowoaji908@gmail.com', '2017-11-20', 0, '', 'Mahasiswa'),
(57, 'NOFITA', '', '', 'P', '24217529', '1EB22', 'AKUNTANSI', 'EKONOMI', 'Cengkareng', '085717123824', 'Jakarta', '1999-02-09', 'jl. 20 desember pinggir rawa no. 25 Rt.002/003 Pegadungan, Kalideres', 'Jakarta Barat', 'nofita42@gmail.com', '2017-11-20', 0, '', 'Mahasiswa'),
(58, 'FEBI ANGGRAINI FITRI', '', '', 'P', '26217637', '1EB22', 'AKUNTANSI', 'EKONOMI', 'Cengkareng', '089639819525', 'JAKARTA', '1999-02-02', 'Jalan kayu besar dalam rt009/011 no.38 cengkareng timur', 'DKI JAKARTA', 'febiurangtaluak@gmail.com', '2017-11-21', 0, '', 'Mahasiswa'),
(59, 'Afaafah Haassatul Bashor', '', '', 'P', '10212293', '', '', '', '', '081285865929', 'Jakarta', '1994-10-25', 'Jl. Kayu Manis VI no. 36 RT 008/05 Matraman', 'Jakarta Timur', 'afaafahhb@gmail.com', '2017-11-24', 0, '', 'Mahasiswa'),
(60, 'Elsa Maruru', '', '', 'P', '23214524', '4EB34', 'Akuntansi / S1', 'Ekonomi', 'Kalimalang J1', '081280900194', 'Rantepao', '1996-09-24', 'Komp. Pu Sapta Taruna III No. 237 Rw/05 Rt/034 Rawalumbu Bekasi', 'Bekasi', 'elsamaruru@gmail.com', '2017-11-29', 0, '', 'Mahasiswa'),
(61, 'Silvia Dinayanti', '', '', 'P', '1B216114', '5EA37', 'Manajemen', 'Ekonomi', 'Kelapa Dua', '081995008210', 'Pal VIII', '1995-08-21', 'Jl. Kol. Pol. Pranoto kelapa dua ', 'Depok', 'Silviadinayanti@gmail.com', '2017-11-29', 0, '', 'Mahasiswa'),
(62, 'Ismi Anisa Putri', 'Ismi Anisa', 'Putri', 'P', '25214512', '4EB28', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085819658380', 'Bekasi', '1995-12-28', 'Jalan Bintara IX A rt. 005 rw.05 no.26 Bintara - Bekasi Barat', 'Bekasi', 'anisaputriismi@gmail.com', '2017-11-29', 0, '', ''),
(63, 'Titan Herdianto', '', '', 'L', '2A214790', '4EB30', 'Akuntansi', 'Ekonomi', 'Kalimalang', '082157212873', 'Jakarta', '1996-05-11', 'Jl.P.Flores 2 No.56, Perumnas 3, Bekasi Timur', 'Bekasi', 'Titan.herdianto@gmail.com', '2017-11-29', 0, '', 'Mahasiswa'),
(64, 'Fajar Oktavaria Nurzaman', '', '', 'L', '22216562', '2EB21', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma Kalimalang', '082213521161', 'Jakarta', '1998-10-09', 'Jalan Pengadegan timur, Jakarta Selatan', 'DKI JAKARTA, JAKARTA SELATAN', 'oktafajar8@gmail.com', '2017-11-29', 0, '', 'Mahasiswa'),
(65, 'Revi Dinda Chandra Parystya', '', '', 'P', '26216228', '2EB20', 'Akuntansi', 'Ekonomi', 'Kalimalang', '087789925251', 'Jakarta', '1998-06-19', 'Jl. Al-Muqorobin rt05/rw03 no.43', 'Jakarta', 'dindachandra19@gmail.com', '2017-11-29', 0, '', ''),
(66, 'Mohammad Agung Maulana', '', '', 'L', '27215780', '3EB24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '081290207885', 'Jakarta', '1997-08-03', 'Jl. Krendang Timur Gg. 6 Rt 008 Rw 02 Kel Krendang Kec Tambora', 'Jakarta Barat', 'agungmaulana658@gmail.com', '2017-11-29', 0, '', 'Mahasiswa'),
(67, 'WAHYUNI SRI LESTARI SIREGAR', 'WAHYUNI SRI LESTARI ', 'SIREGAR', 'P', '27216599', '2EB20', 'AKUNTANSI', 'EKENOMI', 'KALIMALANG', '082367621286', 'PADANG GARUGUR,SUMATERA UTARA', '1997-11-25', 'PERUMAHAN JATIBENING ESTATE', 'BEKASI', 'wahyunilestarisiregar97@gmail.com', '2017-11-29', 0, '', ''),
(68, 'Bunga Chintya', '', '', 'P', '21213816', '4EB11', 'Akuntansi ', 'Ekonomi ', 'Depok', '082260627171 ', 'Jakarta', '1995-09-13', 'Kp. Sudimampir rt 04 / rw 01 ', 'Bogor ', 'bungachintya09@gmail.com ', '2017-12-01', 0, '', 'Mahasiswa'),
(69, 'Citra Ayu Wulansari Manurat', '', '', 'P', '21215519', '3eb17', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081293651996', 'Surabaya', '1996-12-14', 'Perumahan Titian Asri c3 no.5', 'Bekasi', 'citraayuwm@yahoo.com', '2017-12-04', 0, '', 'Mahasiswa'),
(70, 'Devina Yusriya Hapsari', '', '', 'P', '21215766', '3eb17', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085780332827', 'Jakarta', '1997-10-01', 'Buleva Hijau Blok I 12/4. Harapan Indah', 'Kota Bekasi', 'devin.yusriya@gmail.com', '2017-12-04', 0, '', 'Mahasiswa'),
(71, 'Dian Astara Siti Rahayu', '', '', 'P', '22214975', '4EB19', 'AKUNTANSI', 'EKONOMI', 'Depok', '08170766619', 'Jakarta', '1996-04-19', 'Perumahan pondok mekarsari permai Jl nusa indah blok F8 ', 'Depok ', 'Dianastara19@gmail.com', '2017-12-04', 0, '', 'Mahasiswa'),
(72, 'SELVY ELIDA HALOHO', '', '', 'P', '2B215862', 'TEB15', 'Akuntansi', 'Ekonomi', 'Depok', '087810419000', 'Depok', '1982-08-13', 'JL. CITRAYUDA 5 NO.213', 'Depok', 'selvy_anwar@yahoo.co.id', '2017-12-04', 0, '', 'Mahasiswa'),
(73, 'Nadia Agya Destari', 'Nadia Agya', 'Destari', 'P', '25216253', '2EB20', 'Akuntansi', 'Ekonomi', 'Kalimalang', '089507083760', 'Tegal', '1998-08-23', 'Puri Juanda Regency Blok M1 no 15. Rt 13/04. Kelurahan Duren Jaya. Kecamatan Bekasi Timur', 'Bekasi', 'nagyadestari@gmail.com', '2017-12-05', 0, '', ''),
(74, 'Gusti Andang Galuh', 'Gusti', 'Andang Galuh', 'L', '24214636', '4EB28', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma - Bekasi', '087788402040', 'Jakarta', '1995-06-19', 'Jalan H.Atun Rt.09 Rw.07 No.36c Duren Sawit - Jakarta Timur', 'Jakarta Timur', 'gustiandanggaluh@gmail.com', '2017-12-06', 0, '', ''),
(75, 'Dwi Ratna Prahasty', '', '', 'P', '29213813', '4EB16', 'Akuntansi', 'Ekonomi', 'Salemba', '085786577381', 'Klaten', '1994-05-09', 'Kp. Muara Bahari Rt 06/07 No. 33 Tanjung Priok Jakarta Utara', 'Jakarta Utara', 'dwiratnaprahasty@gmail.com', '2017-12-12', 0, '', 'Mahasiswa'),
(76, 'Mohammad Imaduddin', '', '', 'L', '26214797', '4EB30', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081296130239', 'Bekasi', '1996-10-31', 'Jl.bangau 1 harapan kita RT 005. Rw 009 kec Bekasi Utara provinsi Jawa barat', 'Bekasi', 'imaduddin3110@gmail.com', '2017-12-13', 0, '', 'Mahasiswa'),
(77, 'ANIDAH NURABIYAH', '', '', 'P', '21213044', '4EB16', 'Akuntansi', 'Ekonomi', 'SALEMBA', '083814344666', 'KARAWANG', '1994-12-30', 'JL. KEMUNING NO.13 RT/RW 06/04', 'KARAWANG', 'anidah.tax@gmail.com', '2017-12-13', 0, '', 'Mahasiswa'),
(79, 'May Linda Lisa Silviana', '', '', 'P', '26214497', '4EB30', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085747422256', 'Klaten', '1996-05-25', 'Perumahan Bumi Mutiara Blok JC 11 Nomor 06 RT 007 RW 033 Bojong Kulur, Gunung Putri, Bogor, Jawa Barat', 'Bogor', 'maylinda0810@gmail.com', '2017-12-21', 0, '', 'Mahasiswa'),
(80, 'Ranny Alfionita Giandari ', 'Ranny ', 'Alfionita Giandari ', 'P', '27213291', '4EB11', 'Akuntansi', 'Ekonomi ', 'Depok', '085718749736', 'Purwokerto', '1995-04-23', 'Depok Maharaja Blok R2 No.2 RT/RW : 007/016 ', 'Depok', 'ranivionita@gmail.com', '2017-12-22', 0, '', ''),
(81, 'Mohammad Vijay Khumara', '', '', 'L', '24215302', '3 EB 14', 'Akuntansi ', 'Ekonomi', 'Depok', '+62 813-8264-7166', 'Brebes', '1997-06-06', 'Jl. Gurame IIIF kel.Bambu Apus Kec.Pamulang Kota Tangerang Selatan', 'Tangerang Selatan', 'vijaykhumara@gmail.com', '2018-01-02', 0, '', 'Mahasiswa'),
(82, 'Rizky Amalia', '', '', 'P', '29214665', '4EB18', 'Akuntansi', 'Ekonomi', 'Depok', '082317210086', 'Jakarta', '1996-06-10', 'Jln. Tunas Bhakti II No.48, RT/RW 010/002, Palsigunung', 'Depok', 'rizky.amalia964@gmail.com', '2018-01-11', 0, '', 'Mahasiswa'),
(83, 'Annisa Ayu Budiman', '', '', 'P', '21214353', '4EB02', 'Akuntansi', 'Ekonomi', 'Depok', '085717849451', 'Jakarta', '1996-05-20', 'Jl. Gandaria II No. 109', 'Depok', 'ichabudiman@gmail.com', '2018-01-11', 0, '', 'Mahasiswa'),
(84, 'Rifdah Wijdaan', '', '', 'P', '29214345', '4EB18', 'Akuntansi', 'Ekonomi', 'Gunadarma', '087787269345', 'Jakarta', '1996-07-07', 'Taman arcadia mediterania blok A no. 10, cimanggis, depok.', 'Depok', 'wijdaanrifdah@gmail.com', '2018-01-11', 0, '', 'Mahasiswa'),
(85, 'NITA RAHMAH SAIDAH', '', '', 'P', '2C214900', '4EB18', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '087888163381', 'TASIKMALAYA', '1996-04-10', 'Jl. Sarinah 1 no 9 pengadegan pancoran jakarta selatan', 'JAKARTA', 'nitarahmahsa@gmail.com', '2018-01-11', 0, '', 'Mahasiswa'),
(86, 'Yulia Rosdiana', '', '', 'P', '2C214543', '4EB25', 'Akuntansi', 'EKonomi', 'Depok', '087782625132', 'Jakarta', '1996-07-11', 'Jl. Mandor Hasan, Kec. Cipayung, Kel. Bambu Apus', 'Jakarta Timur', 'Rosdianayulia35@gmail.com', '2018-01-17', 0, '', 'Mahasiswa'),
(87, 'Dwi Pratiwi', '', '', 'P', '22213689', '', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma Kalimalang', '089648185663', 'Jakarta', '1995-04-28', 'Kp.  Rawa Badung Rt 002/007 No 189', 'Jakarta Timur', 'dwipratiwi846@yahoo.com', '2018-01-20', 0, '', 'Mahasiswa'),
(88, 'ARSYI DIARINA CAHYA', '', '', 'P', '21213398', '4EB11', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '081288221591', '1995/05/18', '0000-00-00', 'KP. BAMBU KUNING RT.01/06 NO.09 KEC. BOJONG GEDE KAB.BOGOR', 'BOGOR', 'arsyidc@gmail.com', '2018-01-22', 0, '', 'Mahasiswa'),
(89, 'Johanes Christofer', '', '', 'L', '25214680', '4EB22', 'Akuntansi', 'Ekonomi', 'Depok', '087887893360', 'Jakarta', '1996-12-06', 'Jl. Cendrawasih XII no.225', 'Depok', 'Aneschristofer@gmail.com', '2018-01-31', 0, '', 'Mahasiswa'),
(90, 'Ajeng Yurike Hadi', '', '', 'P', '20214666', '4EB30', 'Akuntansi', 'Ekonomi', 'Kalimalang', '083876695611', 'Bekasi', '1996-07-26', 'Jl. Panaitan 8 no.207 RT 001/ RW 014, Kel. Aren Jaya, Kec. Bekasi Timur', 'Bekasi', 'ajenghhadiyurike@gmail.com', '2018-02-04', 0, '', 'Mahasiswa'),
(91, 'Zalika Nurul Kamila', '', '', 'P', '2c214651', '4eb25', 'Akuntansi', 'Ekonomi', 'Depok', '085719246961', 'Bogor', '1996-05-22', 'Jalan raya lenteng agung RT 15 RW 05 Nomor 01, kel. Lenteng agung, kec. Jagakarsa, jakarta selatan 12610', 'jakarta', 'zalikanurul@gmail.com', '2018-02-05', 0, '', 'Mahasiswa'),
(411, 'Ninta Karina Maha', '', '', 'P', '52516444', '3EB03', 'Akuntansi', 'Ekonomi', 'Depok', '085211064539', 'Medan', '1998-11-17', 'Dusun gaang neriyong RT/RW 004/002 Pusat damai kec.parindu', 'Sanggau', 'nintakarina17@gmail.com', '2019-04-05', 0, '', 'Mahasiswa'),
(93, 'Anggia Vita Sari', 'Anggia Vita', 'Sari', 'P', '21214237', '4eb18', 'Akuntansi', 'Ekonomi', 'Depok', '081289589429', 'Jakarta', '1996-07-30', 'Jl. Cibubur VIII rt. 001 rw. 013 no. 79 Kel. Cibubur Kec. Ciracas', 'Jakarta Timur', 'anggiavita@gmail.com', '2018-02-18', 0, '', ''),
(94, 'gilang maulana', '', '', 'L', '22215903', '3eb14', 'akuntansi', 'ekonomi', 'depok', '081513054105', 'jakarta', '1998-10-13', 'jl. kp. utan jaya rt 09 rw 04 kecamatan cipayung kelurahan pondok jaya, citam.', 'depok', 'gilang10.gm@gmail.com', '2018-02-21', 0, '', 'Mahasiswa'),
(95, 'Ida Mulyawati', '', '', 'P', '25214079', '4EB40', 'Akuntansi', 'Ekonomi', 'Karawaci', '0895385905946', 'Tangerang', '1996-06-02', 'Jl. Proklamasi RT 02 RW 01 No.16 Kecamatan Cimone, Kelurahan Karawaci', 'Tangerang', 'Idamulyawati2@gmail.com', '2018-02-24', 0, '', 'Mahasiswa'),
(96, 'Dea Amanda Auliarachman', '', '', 'P', '22214572', '4EB41', 'Akuntansi', 'Ekonomi', 'Karawaci', '08119509996', 'Tangerang', '1996-09-09', 'Jl Untung Suropati 1 No 15 Rt 003/ Rw 003, kecamatan karawaci kelurahan cimone jaya', 'Kota Tangerang', 'dea.amanda99@gmail.com', '2018-02-26', 0, '', 'Mahasiswa'),
(97, 'Dian Fajar Sarwiasti Primasanti', '', '', 'P', '22213363', '4EB12', 'Akuntansi', 'Ekonomi', 'Depok', '087730186842', 'Klaten', '1995-05-13', 'Jl. Kartini Raya No. 58, Puri Permata Asri Blok B/5, Pancoran Mas, Depok', 'Depok', 'dian.primasanti13@gmail.com', '2018-02-26', 0, '', 'Mahasiswa'),
(98, 'Siti nurul layla', '', '', 'P', '26215631', '3eb06', 'Akuntansi', 'Ekonomi', 'Depok', '081316628662', 'Bantul', '1997-08-14', 'Jalan h balok raya rt 13 rw 2 kalisari pasar rebo', 'Jakarta timur', 'lalasyarifsnl@gmail.com', '2018-02-28', 0, '', 'Mahasiswa'),
(99, 'Emilia Rosana Safitri', '', '', 'P', '22215208', '3eb06', 'Akuntansi', 'Ekonomi', 'Depok', '087775753704', 'Jakarta', '1998-03-03', 'Jalan kebagusan III gang perdamaian rt 04 rw 06 no.87 kecamatan pasar minggu jakarta selatan 12520', 'DKI Jakarta', 'emilia.rosana62@gmail.com', '2018-02-28', 0, '', 'Mahasiswa'),
(100, 'Rinto Sabri', '', '', 'L', '26215027', '3eb06', 'Akuntansi', 'Ekonomi', 'Depok', '082280024748', 'Air Muring, 28/04/1995', '0000-00-00', 'Jl. Kakatua no 82 Pondok aren', 'Tanggerang selatan', 'Rintosabri@gmail.com', '2018-02-28', 0, '', 'Mahasiswa'),
(101, 'Annisa Sujana', '', '', 'P', '21214405', '4EB41', 'Akuntansi', 'Ekonomi', 'Karawaci', '081294476922', 'Tangerang', '1996-08-19', 'Perumahan Saribumi Indah Blok D25 No 11A/12 RT13/017. Kelurahan Binong Kecamatan Curug Kabupaten Tangerang - Banten', 'Tangerang', 'annisa.sujana@yahoo.com', '2018-02-28', 0, '', 'Mahasiswa'),
(102, 'Ayu Rachmani', '', '', 'P', '21214884', '4EB15', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma', '089646547897', 'Bogor', '1996-01-20', 'Jalan Blok Rambutan No 84 RT06/04 Kel. Cipayung Kec. Cipayung Kota Depok 16442', 'Depok', 'ayurachmanii@gmail.com', '2018-03-04', 0, '', 'Mahasiswa'),
(103, 'Anita Pitaloka', '', '', 'P', '21214321', '4EB15', 'Akuntansi', 'Ekonomi', 'Depok', '083877512322', 'Brebes', '1996-02-18', 'Jalan Nusa 1 No. 21 RT 004/ RW 004 Kramat Jati ', 'Jakarta Timur', 'pitalokaanita18@gmail.com', '2018-03-04', 0, '', 'Mahasiswa'),
(104, 'MUTIA NILAMSARI', '', '', 'P', '27214672', '4EB15', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '08119513006', 'DEPOK', '1996-06-30', 'JL. KEMAKMURAN RAYA NO. 13 RT 05/01 KEC. SUKMAJAYA ', 'DEPOK', 'mutian.munil@gmail.com', '2018-03-05', 0, '', 'Mahasiswa'),
(105, 'Yuan Satyarini', '', '', 'P', '2B217029', '4EB15', 'Akuntansi', 'Ekonomi', 'Depok', '087880136089', 'Jakarta', '0000-00-00', 'Jl. Karya Bakti RT 02 RW 05 No 17 Kel Tanah Baru Kec Beji 16426', 'Depok', 'yuansatyarini@gmail.com', '2018-03-06', 0, '', 'Mahasiswa'),
(106, 'MOCHAMMAD ZAKI', '', '', 'L', '24215241', '3eb06', 'AKUNTANSI', 'Ekonomi', 'Depok', '087770214402', 'Jakarta ', '1998-05-03', 'Jl. Condet raya no. 6', 'Jakarta timur', 'Zaki.bakhtir98@gmail.com ', '2018-03-07', 0, '', 'Mahasiswa'),
(107, 'Andree Setiawan', '', '', 'L', '20216816', '2EB21', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081219976125', 'Medan', '1998-05-06', 'Jl. Kemang golf 3 blok DB no. 50', 'Bekasi', 'Andreesetiawan98@gmail.com', '2018-03-07', 0, '', 'Mahasiswa'),
(108, 'Alfi Akhdan Rafif', '', '', 'L', '20216549', '2EB21', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081807719109', 'Bekasi', '1998-05-31', 'Kampung Rawa Pasung Rt 07 Rw 03 No.97 Kelurahan Kali Baru Kecamatan Medan Satria', 'Bekasi', 'alfiakhdan31@gmail.com', '2018-03-07', 0, '', 'Mahasiswa'),
(109, 'Kevin Aprilio', '', '', '', '23216853', '2eb21', 'Akuntansi', 'Ekonomi', 'Kalimalang', '089648049417', 'Jakarta', '1998-04-29', 'PERUM ALINDA KENCANA BLOK L3/23 RT 10 RW 21 KALIABANG TENGAH BEKASI UTARA', 'Bekasi', 'aprkevin@gmail.com', '2018-03-07', 0, '', 'Mahasiswa'),
(110, 'Muhammad Afrizal Rizki Amir', '', '', 'L', '24216681', '2EB21', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085697141490', 'Jakarta', '1998-10-12', 'Perumahan Graha Prima Blok IA No.87', 'Bekasi', 'afrizalrizki98@gmail.com', '2018-03-07', 0, '', 'Mahasiswa'),
(111, 'Rio Prasetyo ', '', '', 'L', '26216449', '2eb21', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081806504141 ', 'Jakarta ', '1997-04-24', 'Harapan indah jalan apel apel 6 blok yk no 3 ', 'Bekasi', 'rioprasetyo2404@gmail.com', '2018-03-07', 0, '', 'Mahasiswa'),
(410, 'Annesa Dea Kusuma', '', '', 'P', '20216930', '3EB03', 'Akuntansi', 'Ekonomi', 'Depok', '081929022855', 'Sungailiat', '1997-12-14', 'Jln. Dr. Wahidin', 'Toboali', 'annesadeakusuma14@gmail.com', '2019-04-05', 0, '', 'Mahasiswa'),
(113, 'Fadel Muhammad', '', '', 'L', '23214731', '4EB25', 'Akuntansi', 'Ekonomi', 'Depok', '083147222205', 'Bogor', '1997-03-20', 'Jl. Masjid arrahmat no 76 rt04/06 duren mekar bojongsari', 'Depok', 'fadellmd@gmail.com', '2018-03-10', 0, '', 'Mahasiswa'),
(114, 'Iswoyo Hari Supada', '', '', 'L', '25214533', '4EB25', 'Akuntansi', 'Ekonomi', 'Depok', '081221663031', 'Indramayu', '1995-10-28', 'Jl. Akses UI gang haji jamin no. 42 RT 06/ RW 09 Kel Tugu Kec Cimanggis kelapa dua Depok - Jawa Barat', 'Depok', 'Iswoyo.star9@gmail.com', '2018-03-12', 0, '', 'Mahasiswa'),
(115, 'Muhammad ichsan yahya', '', '', 'L', '27214316', '4eb25', 'Akuntansi', 'Ekonomi', 'Depok', '081563121279', 'Jakarta', '1994-12-27', 'Jl bayu putra  Jakarta Selatan ', 'Jakarta Selatan ', 'Sansanisan94@gmail.com', '2018-03-13', 0, '', 'Mahasiswa'),
(116, 'nurachma qamara', '', '', 'P', '25215203', '3EB06', 'akuntansi', 'ekonomi', 'depok', '083819701149', 'jakarta', '0000-00-00', 'perum citra indah bukit cendana blok j10 no 12', 'bogor', 'nurachma_qamara@yahoo.com', '2018-03-13', 0, '', 'Mahasiswa'),
(117, 'Susanti Kusuma Wardani', '', '', 'P', '26215728', '3eb06', '', 'Akuntansi', 'Depok', '085695814488', 'Bogor', '1996-12-06', 'Gg. Warung seri desa ciawi kel. Ciawi rt 02/01 no 32 kab bogot', 'Bogor', 'susantikusuma6@gmail.com', '2018-03-14', 0, '', 'Mahasiswa'),
(118, 'Bella gustiana', '', '', 'P', '21215323', '3ebo6', 'Akuntansi', 'Ekonomi', 'Depok', '081272162305', 'Hidup baru', '1997-08-10', 'Muara enim', 'Palembang', 'Bella.bb211@gmail.com', '2018-03-14', 0, '', 'Mahasiswa'),
(369, 'Masayu Nabila Siti Aisyah', '', '', 'P', '24215059', '4EB06', 'Akuntansi', 'Ekonomi', 'Depok', '082114549782', 'Tembilahan ', '1997-12-25', 'Perumahan Griya Asri Cilebut (Rscm) Jl. Kayu Putih II Blok A2 No. 3 Rt. 02 Rw. 09', 'Bogor', 'Masayunabila25@gmail.com', '2018-11-05', 0, '', 'Mahasiswa'),
(120, 'kamil riswanto', '', '', 'L', '27215717', '3EB13', 'Akuntansi', 'Ekonomi', 'Depok', '082299731746', 'jakarta', '1997-06-22', 'jl. pramuka sari 5 rt 006 rw 004 jakarta pusat', 'jakarta', 'kamilriswanto12@gmail.com', '2018-03-16', 0, '', 'Mahasiswa'),
(121, 'Yoseph Kurniawan Indarto', '', '', 'L', '27215291', '3EB13', 'Akuntansi', 'Ekonomi', 'Depok', '082213267859', 'Temanggung', '1997-04-17', 'Perumahan Lido Permai blok C. 2 no 28 Kec. Cigombong Kab. Bogor Jawa Barat', 'Bogor', 'Yosephki@yahoo.com', '2018-03-16', 0, '', 'Mahasiswa'),
(122, 'Irfan Adhitama', '', '', 'L', '23215424', '3EB13', 'Akutansi', 'Ekonomi', 'Depok', '081519000629', 'Jakarta', '1997-05-26', 'Kp. Kekupu rt 03 rw 04', 'DEPOK', 'Irfanadit0526@gmail.com', '2018-03-16', 0, '', 'Mahasiswa'),
(123, 'Bagas Alif Junyantoro', '', '', 'L', '21215217', '3EB13', 'Akuntansi', 'Ekonomi', 'Depok', '082210933617', 'DKI JAkarta', '1997-06-10', 'Jl. Nyaman Rt 016/007 Ciracas Jakarta Timur', 'Jakarta Timur', 'bagasalifj@gmail.com', '2018-03-16', 0, '', 'Mahasiswa'),
(124, 'Eri Maulana Firmansyah', '', '', 'L', '22215232', '3EB13', 'Akuntansi', 'Ekonomi', 'Depok', '087880407900', 'Jakarta', '1997-09-26', 'Perum. Taman Raya Citayam Blok E3 No.12A Kec. Bojonggede Kab. Bogor Jawa Barat', 'Bogor', 'maulana_erii@yahoo.com', '2018-03-16', 0, '', 'Mahasiswa'),
(125, 'MUHAMMAD IRFAN OCTAVIANTO', '', '', 'L', '27215541', '3EB13', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '085885095982', 'BALIKPAPAN', '1997-10-11', 'JL. MASJID AT TAUFIQ RT 10/11 KELAPA DUA WETAN, CIRACAS', 'JAKARTA TIMUR', 'm.irfan.octavianto9c@gmail.com ', '2018-03-16', 0, '', 'Mahasiswa'),
(126, 'MUHAMAD RISKY', '', '', 'L', '24215414', '3EB13', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '081318875803', 'JAKARTA', '1996-11-27', 'KAMPUS IIP', 'JAKARTA', 'mochmdrizky@gmail.com', '2018-03-16', 0, '', 'Mahasiswa'),
(127, 'DWI ISWANDARU', '', '', 'L', '22215040', '3EB13', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '082297244776', 'JAKARTA', '1997-06-06', 'JL. TEGALSARI RT 003/09 NO. 38 ', 'JAKARTA', 'daruiswndr@gmail.com', '2018-03-16', 0, '', 'Mahasiswa'),
(128, 'MOHAMMAD EMIR AKRAM KARTA ADIWIJAYA', '', '', 'L', '24215279', '3EB13', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '081281856480', 'JAKARTA', '1996-07-10', 'JALAN GELATIK VII NO. 146', 'MEDAN', 'muhammademir10@yahoo.com', '2018-03-16', 0, '', 'Mahasiswa'),
(129, 'maria cici puspita sari ', '', '', 'P', '24215025', '3EB06', 'akuntansi ', 'ekonomi ', 'depok', '?089516799060?', 'pringsewu ', '1998-03-05', 'jl margonda raya no 19 pondok cina depok jawa barat ', 'depok ', 'mariacici30@gmail.com', '2018-03-20', 0, '', 'Mahasiswa'),
(130, 'Hesti Komariyah', '', '', 'P', '23215151', '3eb13', 'Akuntansi', 'Ekonomi', 'Depok', '082226335072', 'Grobogan', '1997-11-02', 'Jl satria III pademangan barat, pademangan, jakarta utara', 'Jakarta', 'hestikomariyah67@gmail.com', '2018-03-21', 0, '', 'Mahasiswa'),
(131, 'Yuanda Fandestyana Barus ', '', '', 'P', '57215301', '3DF01', 'Manajemen Keuangan', 'D3 Bisnis Kewirausahaan', 'Depok', '081380603368', 'Bogor', '1998-01-27', 'Asrama divisi 1 Kostrad kecamatan Cilodong kelurahan Cilodong', 'Depok', 'yuandafandestyana@gmail.com', '2018-03-22', 0, '', 'Mahasiswa'),
(132, 'Rofiatul izah', 'Rofiatul', 'Izah', 'P', '57215804', '3DF01', 'Manajemen Keuangan', 'D3 Bisnis Kewirausahaan', 'Depok', '087717332030', 'Demak', '1997-05-05', 'Jl.gotong-royong Kp. Areman RT/RW 08/05 Kel. Tugu cimanggis', 'Depok', 'Rofiatul050@gmail.com', '2018-03-22', 0, '', ''),
(133, 'MARYATI', '', '', 'P', '54215054', '3df01', 'Manajemen keuangan', 'Diii bisnis dan kewirausahaan', 'Depok', '083897620490', 'Bogor', '1994-09-12', 'Muara beres', 'Bogor', 'marryati898@gmail.com', '2018-03-22', 0, '', 'Mahasiswa'),
(383, 'Salsabila Eka Putri', '', '', 'P', '26215346', '4EB88', 'Akuntansi', 'Ekonomi', 'Simatupang', '081212899362', 'Jakarta', '1998-03-03', 'Perum. Duta Kranji Jl. Sasak Blok. E No. 26', 'Bekasi', 'salsabila3398@gmail.com', '2019-02-15', 0, '', 'Mahasiswa'),
(135, 'Rifdha Shadrina', '', '', 'P', '29214346', '4EB39', 'Akuntansi', 'Ekonomi', 'Cengkareng', '087773529015', 'Jakarta', '1996-07-03', '', '', 'rfdhaa@yahoo.com', '2018-03-30', 0, '', 'Mahasiswa'),
(136, 'Elisabeth Dea Jessica', '', '', 'P', '23214502', '4EB39', 'Akuntansi', 'Ekonomi', 'Cengkareng', '087886663032', 'Jakarta', '1997-02-28', 'Jalan Kapuk Raya Gg. Sinar No.32', 'Jakarta Barat', 'Eldessca.0297@gmail.com', '2018-03-30', 0, '', 'Mahasiswa'),
(137, 'Marlina Jayanti', '', '', 'P', '2D214194', '4EB39', 'Akuntansi', 'Ekonomi', 'Cengkareng', '081294201619', 'DKI Jakarta', '1995-11-21', 'Jl. 1 Maret No.1 bulak simpul, pegadungan kalideres RT/RW 09/04 Jakarta Barat', 'DKI Jakarta', 'marlinabyakuya@gmail.com', '2018-03-30', 0, '', 'Mahasiswa'),
(138, 'Devi Ayu Wulandari', '', '', 'P', '22214814', '4EB39', 'Akuntansi', 'Ekonomi', 'Cengkareng', '089664002026', 'Tangerang', '1996-01-03', 'Perum Bumi Asri Blok F1 no 33, Jalan Mangga 2, Kuta Bumi, Pasar Kemis', 'Tangerang', 'deviayuwulan20@gmail.com', '2018-03-30', 0, '', 'Mahasiswa'),
(139, 'Dina Esti Astiyani', '', '', 'P', '23214135', '4EB39', 'Akuntansi', 'Ekonomi', 'Cengkareng', '081294580390', 'Jakarta', '1996-09-09', 'Jl. Bakti Mulya 4 RT 008/RW 002 no. 39B Kel: Tegal alur, kec: Kalideres', 'Jakarta Barat', 'dinaesti29@gmail.com', '2018-03-30', 0, '', 'Mahasiswa'),
(140, 'Rikayani Sirait', '', '', 'P', '2d214070', '4EB39', 'Akuntansi', 'Ekonomi', 'Cengkareng', '082213656429', 'P.R.hombang, pematang siantar, sumatera utara', '0000-00-00', 'Jl. Fajar baru utara no.25-26 cengkareng, jakarta barat', 'Jakarta', 'yanirika81@gmail.com', '2018-03-30', 0, '', 'Mahasiswa'),
(141, 'Deasy Anggra Lestari Batara', '', '', 'P', '2C214994', '4EB39', 'Akuntansi', 'Ekonomi', 'Mutiara Taman Palem Blok C7 No. 20 Jl. Raya Kamal, Outer Ring Road Cengkareng', '082113530307', 'Jakarta', '1992-11-07', 'Rawalele RT 005 RW 010', 'Jakarta Barat', 'deasybatara@gmail.com', '2018-03-30', 0, '', 'Mahasiswa'),
(142, 'Istiqomah Wilujeng', '', '', 'P', '25214531', '4EB39', 'Akuntansi', 'Ekonomi', 'Cengkareng', '087784295531/081286938801', 'DKI Jakarta', '1996-06-23', 'Kayu Besar RT/RW 009/012, Kel. Tegal alur, Kec. Kalideres', 'Jakarta Barat', 'wilujeng.istiqomah96@gmail.com', '2018-03-30', 0, '', 'Mahasiswa'),
(143, 'Mohammad Ibnu Salam', '', '', 'L', '25213625', '4EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085773346149', 'Bekasi', '1995-09-09', 'Jl. Jatiluhur Raya DB 4 Komp Buanarisma Bekasi Barat', 'Bekasi Barat', 'm.ibnusalam@gmail.com', '2018-03-31', 0, '', 'Mahasiswa'),
(144, 'IRMA HANDAYANI', '', '', 'P', '24213495', '4EB11', 'AKUNTANSI ', 'EKONOMI', 'DEPOK', '083895524890', 'JAKARTA', '1995-06-19', 'JL. M KAHFI II RT. 005/04 NO. 20 ', 'JAKARTA SELATAN ', 'irmahandayani95@gmail.com', '2018-04-04', 0, '', 'Mahasiswa'),
(145, 'DWI KIKI ANGGRAENI', '', '', 'P', '22216192', '2EB20', 'AKUNTANSI', 'EKONOMI', 'BEKASI', '081296619198', '1998/06/12', '1998-06-12', 'Jl.Prof Moh Yamin Gang Delima Rt05 Rw02 No.40 kel.Duren Jaya kec.Bekasi Timur', 'Bekasi', 'dwikikia91@gmail.com', '2018-04-04', 0, '', 'Mahasiswa'),
(146, 'MUTIA KHAIRUNISAH', '', '', 'P', '25216182', '2EB20', 'AKUNTANSI', 'EKONOMI', 'BEKASI', '089688570982', 'Palu', '1998-02-02', 'Jl. Mawar 4 no.25 perumnas 1 kel. Jakasampurna kec. Bekasi barat', 'Bekasi', 'khairunisahmutia02@gmail.com', '2018-04-04', 0, '', 'Mahasiswa'),
(147, 'Windyawati', '', '', 'P', '2C214285', '4EB39', 'Akuntansi', 'Ekonomi ', 'L2 Cengkareng ', '081213127944', 'Jakarta', '1996-04-01', 'Jl galunggung raya blok E21 no 1 rt 7 /15 kel Cengkareng Timur kec. Cengkareng ', 'Jakarta', 'Windyaanwind@gmail.com', '2018-04-05', 0, '', 'Mahasiswa'),
(148, 'Yospian Ganda Simamora', '', '', 'P', '2C214480', '4EB39', 'Akuntansi', 'Ekonomi', 'Kampus L2 Cengkareng Jakarta barat', '081297998797', 'Riau', '1995-10-26', 'Jl. Lingkungan III, RT/RW : 012/009, Kel. Tegal Alur, Kec. Kalideres', 'Jakarta Barat', 'yospiansimamora26@gmail.com', '2018-04-05', 0, '', 'Mahasiswa'),
(149, 'Yunah Purnama Sarlan', '', '', 'P', '2C214567', '4EB39', 'Akuntansi', 'Ekonomi', 'Kampus L2 Cengkareng Jakarta barat', '085779108331', 'Jakarta', '1996-05-26', 'Jl. H. Simun RT/RW : 01/05 Kel. Srengseng Kec. Kembangan', 'Jakarta Barat', 'yunnah.purnama@gmail.com', '2018-04-05', 0, '', 'Mahasiswa'),
(150, 'Sundari', '', '', 'P', '2A214517', '4EB39', 'Akuntansi', 'Ekonomi', 'Kampus L2 Cengkareng Jakarta barat', '089655522316', 'Jakarta', '1996-01-06', 'Jl. Kapuk Kebon Jahe RT/RW : 11/03 blok-A No. 120c Kel. Kapuk, Kec. Cengkareng ', 'Jakarta Barat', 'shundary16@gmail.com', '2018-04-05', 0, '', 'Mahasiswa'),
(151, 'Endah Hari Utari', '', '', 'P', '23214564', '4EB39', 'Akuntansi', 'Ekonomi', 'Kampus L2 Cengkareng Jakarta Barat', '087789909232', 'Subang', '1996-10-03', 'Dusun Warungnangka RT/RW : 001/005, Kel. Ciasem Baru, Kec. Ciasem', 'Subang', 'ehariutari@gmail.com', '2018-04-05', 0, '', 'Mahasiswa'),
(152, 'Christina Molina', '', '', 'P', '2C214993', '4EB39', 'Akuntansi', 'Ekonomi', 'Cengkareng', '08971706328', 'Jakarta', '1996-08-28', 'Tangerang', 'Tangerang', 'christinamolinap@gmail.com', '2018-04-09', 0, '', 'Mahasiswa'),
(153, 'Lia Kamelia Krismonika', '', '', 'P', '24216031', '2EB20', 'Akuntansi', 'Ekonomi', 'Kalimalang', '082122314127', '', '1998-05-02', 'Jl. H. Naman No. 20', 'Jakarta Timur', 'kamelialia02@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(154, 'ITA SULASTRI', '', '', 'P', '23216626', '2EB20', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085624286175', 'SUBANG', '1998-02-05', 'Kp. Sudimampir rt 02/04, ds. Kaliangsana, kec. Kalijati', 'Subang', 'itasulastri9@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(155, 'MAY VERONICA LUMBAN GAOL', '', '', 'P', '24216325', '2EB20', 'S1-AKUNTANSI', 'EKONOMI', 'KALIMALANG', '082298962961', 'BEKASI', '1998-05-15', 'JL. RAYA KP. PAMAHAN RT. 01 RW. 08 NO.  98', 'BEKASI', 'mayveronicalumbangaol15@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(156, 'Iin yuliana', '', '', 'P', '23216390', '2eb19', 'Akuntansi', 'Ekonomi', 'J1', '0895372493579', 'Ponorogo', '1998-07-16', 'Jl kh agus salim no 100 rt 001 rw 008', 'Bekasi', 'Iinyuliana752@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(157, 'SINTA PUTRI UTAMI', '', '', 'P', '27216062', '2EB19', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085217715780', 'Kuningan', '1997-08-12', 'PONDOK UNGU PERMAI BLOK B 21 NO 3', 'Bekasi', 'Sintaputriutami9@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(158, 'Maria Claudia Putri Pertiwi Ule', '', '', 'P', '24216256', '2EB19', 'Akuntansi ', 'Ekonomi ', 'Kalimalang ', '082110900715', 'Kuningan', '1997-10-28', 'Perum Taman Kintamani blok i 7 no 20 Tambun', 'Bekasi', 'putriclaudia52@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(159, 'THERESIA EKA PUTRI', '', '', 'P', '27216362', '2EB20', 'AKUNTANSI', 'EKONOMI', 'KALIMALANG', '081289334549', 'BEKASI', '1997-08-15', 'JL. PRAMUKA RAYA NO. 175, RT. 04/02, KEL. SEPANJANG JAYA, KEC. RAWALUMBU', 'BEKASI', 'theresiaekaputri@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(160, 'Naomi Oktaviani', '', '', 'P', '25216326', '2EB20', 'Akuntansi', 'Ekonomi', 'Kalimalang', '082274154212', 'Jakarta', '0000-00-00', 'Pondok Ungu Permai Blok E19 No. 1', 'Bekasi', 'Naomioktaviani05@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(161, 'Fitria Handayani ', '', '', 'P', '22216899 ', '2Eb20', 'Akuntansi ', 'Ekonomi ', 'Kalimalang ', '087870735420', 'Bekasi ', '1995-01-28', 'Jalan kaliabang tengah rt002 rw004 No. 05 ', 'Bekasi', 'Fitriahandayani2801@gmail.com ', '2018-04-13', 0, '', 'Mahasiswa'),
(162, 'Dinar Titah Sepdyandini', '', '', 'P', '22216086', '2EB20', 'Akuntansi', 'Ekonomi', 'Kalimalang', '082299580564', 'Jakarta', '1998-09-13', 'Jl. H. Mudiar No. 64/99', 'Bekasi', 'Dinartitahsepdyandini.dts@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(163, 'Ayu Hana yolanda ', '', '', 'P', '21216235', '2eb20 ', 'Akuntansi ', 'Ekonomi ', 'Kalimalang ', '0895606264206 ', 'Bekasi ', '1998-06-19', 'Sasaktiga rt01 rw 04 no 79, Tambun Selatan ', 'Kabupaten Bekasi ', 'Ayu.hana5861@gmail.com ', '2018-04-13', 0, '', 'Mahasiswa'),
(164, 'Annisa Syachrani', '', '', 'P', '20216958', '2EB20', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma Kalimalang', '089605807096', '1998/10/10', '0000-00-00', 'Jl. Yon Armed 7 004/006 no.40 Cikiwul ', 'Bekasi ', 'annisasyachrani@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(165, 'Debby Silvia Putri', '', '', 'P', '21216756', '2eb19', 'Akuntansi', 'Ekonomi', 'J1 - kalimalang', '085810122669', 'Bekasi', '1998-07-19', 'Jl.Swadaya No.008 Rt.001/014 Kel.Jatibening Kec.Pondok Gede 17412', 'Bekasi', 'Debbysilviaputri@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(166, 'GARI SITI QHORIMAH HASTINO', '', '', 'P', '22216974', '2EB19', 'Akuntansi', 'Ekonomi', 'Kalimalang J1', '085921646774', 'BEKASI', '1998-09-09', 'Jl. Perkutut 1 Blok G11/6 Perum. Mangun Jaya Indah 2 RT/RW 003/014 Kab. Bekasi - Tambun Selatan', 'Bekasi', 'garyqhorimah9@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(167, 'Dena Juliarista', '', '', 'P', '21216800', '2eb19', 'Akuntansi', 'Ekonomi', 'J1 - kalimalang', '081398060628', 'Bekasi', '1998-07-03', 'Dukuh Zamrud blok Q1 no 4 Rt 003/013 padurenan mustika jaya', 'Bekasi', 'djuliarista@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(168, 'Faza Lufia Tia Rindita', '', '', 'P', '22216735', '2eb19', 'Akuntansi', 'Ekonomi', 'J1 - kalimalang', '082298832777', 'Jakarta', '1999-03-18', 'Jl. Masjid 2 Jati Cempaka , Pondok Gede ', 'Bekasi', 'Zazatrndt@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(169, 'Sri Winarti', '', '', 'P', '28216015', '2EB19', 'Akuntansi', 'Ekonomi', 'J1 Kalimalang', '087749739511', 'Brebes', '1996-04-06', 'Jl Ratu Jaya No.33 Ketanggngan Brebes', 'Brebes', 'Sriwinarti17@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(170, 'ARISTA UTARI', '', '', 'P', '21216087', '2EB19', 'Akuntansi ', 'Ekonomi ', 'J1 Kalimalang ', '085921646778', 'Bekasi', '1999-01-25', 'Jl.  Perum bumi lestari blok h33 no15', 'Bekasi', 'aristaut99@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(171, 'Eka Rohyati Ramadani', '', '', 'P', '22216274', '2eb19', 'Akuntansi', 'Ekonomi', 'J1 - kalimalang', '087882118410', 'Tangerang', '1998-01-12', 'Ruko gria harapan permai blok A1 no 6', 'Bekasi', 'Ekarohyatiramadhani@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(172, 'Bintang Putri Lestari', '', '', 'P', '21216450', '2EB19', 'Akuntansi', 'Ekonomi', 'J1 Kalimalang', '081319990597', 'Jakarta', '0000-00-00', 'Taman Wisma Asri Blok M54 No.66 RT003 RW031', 'Bekasi', 'bintangputrilestari123@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(173, 'Leonard Christian Deo', '', '', 'L', '24216020', '2eb19', 'Akuntansi', 'Ekonomi', 'J1 - kalimalang', '087889001708', 'Bekasi', '1998-03-15', 'Taman wisma asri 1 jl.salak 3 blok c no 7', 'Bekasi', 'ELchristiand@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(174, 'Lany Puspitasari', '', '', 'P', '23216995', '2EB20', 'S-1 Akuntansi', 'Ekonomi', 'Kalimalang', '089503765691', 'Bekasi', '1997-11-21', 'Ujung Harapan gang Al-muchtar rt11/17', 'Bekasi', 'lani.puspitasari25@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(175, 'Dina Anggraini', '', '', 'P', '22216072', '2EB20', 'Akuntansi', 'Ekonomi', 'Kalimalang', '083878672401', 'Jakrta', '1998-07-12', 'Jl kp pisangan Rt006/005', 'Jakarta Timur', 'dinaanggraini45@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(176, 'Dina Lestari ', '', '', 'P', '22216075', '2EB20', 'Akuntansi', 'Ekonomi', 'Kalimalang ', '085887739986', 'Jakarta', '1997-12-18', 'Griya Bekasi permai  blok G 19 no 7 rt/tw 07/11', 'Bekasi', 'dinalestari97@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(177, 'Sintia Marini', '', '', 'P', '27216067', '2EB17', 'S1 - Akuntansi', 'Ekonomi', 'J1 Kalimalang Bekasi', '082112217298', 'Jakarta', '1999-03-04', 'Jl. Rawa Kuning Gang Mekar RT006/016 No.69', 'Jakarta Timur', 'sintiamarini@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(178, 'ESTHER ROITONA MANOGI', '', '', 'P', '22216395', '2EB22', 'S1 - AKUNTANSI', 'EKONOMI', 'J1 KALIMALANG BEKASI', '0895600536680', 'Jakarta', '1998-09-25', 'Jl. KH. SEMAN GG. HJ GOMIN', 'BEKASI', 'eroitona@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(179, 'DINDA FAUZIAH ARIYANTI', '', '', 'P', '22216095', '2EB17', 'AKUNTANSI', 'EKONOMI', 'Kampus J1 Universitas Gunadarma Kalimalang', '083806251450', 'BEKASI', '1998-09-19', 'JL. BHAKTI JAYA 5 NO. 60 HARAPAN JAYA', 'BEKASI', 'dindafauziahariyanti96@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(180, 'LOLA CRISTIYANTI MARBUN', '', '', 'P', '24216089', '2EB17', 'Akuntansi', 'Ekonomi', 'Kalimalang', '087883692698', 'JAKARTA', '1998-04-20', 'Jl. Masjid Jami At-Taqwa KP Rawa Pasung RT 04/ RW 22 No.8, Bekasi Barat', 'Bekasi', 'lolacristiyanti04@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(181, 'YULISA PRATIWI', '', '', 'P', '27216855', '2EB17', 'AKUNTANSI', 'EKONOMI', 'KALIMALANG', '081366370347', 'Bekasi', '1998-07-23', 'Jl. Semangka 3 No. 10, Rt 008/007, Harapan Baru', 'Bekasi', 'yulisaprtw@gmail.com', '2018-04-13', 0, '', 'Mahasiswa'),
(182, 'Nicodemus sitanggang', '', '', 'L', '25216411', '2eb20', 'Akuntansi S1', 'Ekonomi', 'Kalimalang', '081385744420', 'Medan', '1998-10-04', 'Jalan kuwait block ec no 21', 'Bekasi', 'nikoods4@gmail.com', '2018-04-17', 0, '', 'Mahasiswa'),
(183, 'Riana Zefanya', '', '', 'P', '26216303', '2EB20', 'Akuntansi', 'Ekonomi', 'J1 kalimalang', '082288643465', 'Jakarta', '1997-10-03', 'Jalan teling atas lingkungan 7', 'Manado', 'Ririnzefanya45@gmail.com', '2018-04-17', 0, '', 'Mahasiswa'),
(184, 'Surya Damar', '', '', 'L', '27216198', '2EB20', 'Akuntansi', 'Ekonomi', 'Kalimalang', '082246103404', 'Jakarta', '1997-11-13', 'Jln. Hj. Naman Komplek Depdagri Blok B 53 rt 3 rw 6', 'Bekasi', 'Suryayay@gmail.com', '2018-04-17', 0, '', 'Mahasiswa'),
(185, 'Johanes Julianto', '', '', 'L', '23216740', '2eb20', 'akuntansi', 'ekonomi', 'Kalimalang', '085210986191', 'Bekasi', '1998-07-28', 'Jl. lumbu tengah 3e no. 219', 'Bekasi', 'johanes. julianto98@gmail.com ', '2018-04-17', 0, '', 'Mahasiswa'),
(186, 'Ivan Fauzan', '', '', 'L', '23216634', '2EB20', 'Akuntansi ', 'Ekonomi ', 'Kalimalang ', '081384521540', 'Bekasi ', '1998-08-15', 'Jl. H.  Idrus No. 22 rt 03/01 jatikramat jatiasih', 'Bekasi', 'Ivankira49@gmail.com', '2018-04-17', 0, '', 'Mahasiswa'),
(187, 'Cornelyus Agung Prasetya', '', '', 'L', '21216644', '2eb20', 'Akuntansi', 'Ekonomi', 'Bekasi kalimalang', '087882172180', 'Bekasi', '1997-05-22', 'Villa Nusa indah 1 blok aa 1 no 64', 'Bekasi', 'Agung.cornelyus@gmail.com', '2018-04-17', 0, '', 'Mahasiswa'),
(188, 'Alifia Bonatha ', '', '', 'P', '20216611', '2EB22', 'Akuntansi', 'Ekonomj', 'Kalimalang ', '087775744473', 'Jakarta', '1999-07-28', 'Jl. Tirta Sari IV blok F No.348 RT 008/ 010. Komplek Pam Jaya, Jatikramat', 'Bekasi', 'bonathalif@gmail.com', '2018-04-25', 0, '', 'Mahasiswa'),
(189, 'Abdurrahman', '', '', 'L', '20215029', '3EB14', 'Akuntansi', 'Ekonomi', 'Depok', '085778812896', 'Jakarta', '1997-09-26', 'Kayu manis V baru no.25A', 'Jakarta', 'Rahmannn26@gmail.com', '2018-05-03', 0, '', 'Mahasiswa'),
(190, 'Tiara Ade Silviani', '', '', 'P', '26215879', '3eb01', 'Akuntansi', 'Ekonomi', 'Depok', '085739160354', 'Kota Bogor', '1997-03-02', 'Villa Mutiara Bogor Blok D5 No.12', 'Bogor', 'tiarasilviani12@gmail.com', '2018-05-08', 0, '', 'Mahasiswa'),
(191, 'Wahid Ramdhani', '', '', 'L', '29213189', '4EB15', 'Akuntansi', 'Ekonomi', 'Depok', '087789911283', 'Jakarta', '1995-02-02', 'Jl. Agnatis II No.117', 'Depok', 'wahidr14@gmail.com', '2018-05-14', 0, '', 'Mahasiswa'),
(192, 'Sari Nurizqi Prasetyo', '', '', 'P', '28213278', '4EB12', 'Akutansi', 'Ekonomi', 'Depok', '087789911282', 'Depok', '1995-08-23', 'Jl. Sarikaya Raya No.245', 'Depok', 'sariprasetyo23@gmail.com', '2018-05-14', 0, '', 'Mahasiswa'),
(193, 'Farah Della Priscillia Imanuella', '', '', 'P', '23214931', '4EB18', 'Akuntansi', 'Ekonomi', 'Depok', '087817093019', 'Jakarta', '1995-12-15', 'Jl. Murtadho VII/ B.38', 'Jakarta Pusat', 'farahdella.pis@gmail.com', '2018-05-22', 0, '', 'Mahasiswa'),
(194, 'Restiyani Darajat', '', '', 'P', '26216217', '2eb22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '089652903273', 'Jakarta', '1998-05-10', 'Perum.Villa Mutiara', 'Bekasi', 'restiyani105 @gmail.com', '2018-05-24', 0, '', 'Mahasiswa'),
(195, 'Pinondang Cynthia M G', '', '', 'P', '25216760', '2EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '08998214505', 'Bekasi', '1995-12-06', 'Jl. Batu Giok Raya No.15 ', 'Bekasi', 'pinondangcynthia@gmail.com', '2018-05-24', 0, '', 'Mahasiswa'),
(196, 'GARNIS CITRA HARYANTO', '', '', 'P', '22216978', '2EB21', 'AKUNTANSI S-1 ', 'EKONOMI', 'KAMPUS J1 KALIMALANG ', '089630464018', 'BEKASI', '1998-11-12', 'Kv. Bulak macan, jl. Macan A RT 005 / RW 022 NO. 33, Harapan jaya, bekasi utara', 'Bekasi', 'garniscitra99@gmail.com', '2018-05-30', 0, '', 'Mahasiswa'),
(197, 'Nurul Madani Harahap', '', '', 'P', '25216627', '2EB21', 'AKUNTANSI', 'EKONOMI', 'Kampus Gunadarma J1 kalimalang', '081316117264', 'Jakarta', '1998-01-16', 'Perum Griya Alam Sentosa Blok T9/9', 'Bogor', 'nurulmadanih01@gmail.com', '2018-05-30', 0, '', 'Mahasiswa');
INSERT INTO `data_register` (`id`, `nama_lengkap`, `nama_depan`, `nama_belakang`, `jk`, `npm`, `kelas`, `jurusan`, `fakultas`, `domisili`, `no_hp`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `kota`, `email`, `tgl_register`, `id_gelombang`, `gambar`, `status`) VALUES
(198, 'Aprida Efrat Saurmauli', '', '', 'P', '20216985', '2eb21', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081281004605', 'Jakarta', '1998-04-07', 'Jl Jalan Duta Kenanga 1 Perumahan Duta Harapan Bekasi Utara', 'Bekasi', 'apridaefrat7474@gmail.com', '2018-05-30', 0, '', 'Mahasiswa'),
(199, 'Cecillia Octavia Tambunan', '', '', 'P', '21216536', '2EB21', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma Kalimalang J1', '089517204504', 'Bekasi', '1997-10-03', 'Jl. Rawa Mulya No. 49 RT 005/001, Ciketing, Kec. Mustika Jaya, Bekasi Timur, 17168', 'Bekasi', 'cecillia.tambunan@gmail.com', '2018-05-30', 0, '', 'Mahasiswa'),
(200, 'Nurvia Anggraeni', '', '', 'P', '25216642', '2eb21', 'Akuntansi', 'Ekonomi', 'J1 ', '085887141175', 'Bekasi', '1998-06-22', 'Jalan banteng gang genang no. 37 rt 04 rw 11 kranji, bekasi barat', 'Bekasi', 'Nanggraeni22.na@gmail.com', '2018-05-30', 0, '', 'Mahasiswa'),
(201, 'Rendi Pangestu Wibowo', '', '', 'L', '26216177', '2EB21', 'S1-Akuntansi', 'Ilmu Ekonomi', 'Kalimalang', '081316080717', 'Jakarta', '1993-01-26', 'Komplek Pulogebang Permai Blok i 7 no.1 Cakung', 'Jakarta Timur', 'rendi.pang.bowo@gmail.com', '2018-05-30', 0, '', 'Mahasiswa'),
(202, 'Ayu putri lestari', '', '', 'P', '21216244', '2EB21', 'akuntansi', 'Ekonomi', 'Kalimalang', '081297195243', 'Jakarta', '1998-06-07', 'jl. Smp 135 rt 007 rw 007 no 8', 'Jakarta Timur', 'Ayuputrilestari81.apl@gmail.com', '2018-05-30', 0, '', 'Mahasiswa'),
(203, 'Surry Budi Al Usna', '', '', 'P', '27216194', '2EB21', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma', '082311163704', 'Bekasi', '1998-01-16', 'Pondok Ungu Permai Blok D12 No.5 RT/RW 009/013, Kaliabang Tengah', 'Bekasi Utara', 'surrybudialusna01@gmail.com', '2018-05-31', 0, '', 'Mahasiswa'),
(204, 'Alvin febriyanti purnamasari', '', '', 'P', '20216653', '2EB21', 'S1 AKUNTANSI', 'Ekonomi', 'J1 GUNADARMA', '081808660340', 'Bekasi', '1997-02-23', 'Jl.pahlawan no.41 rt 005 rw 004 duren jaya, bekasi timur', 'Bekasi', 'alvinfebriyanti23@gmail.com', '2018-05-31', 0, '', 'Mahasiswa'),
(205, 'Lidiana Tri Cahyani', '', '', 'P', '24212194', '6eb22', 'S1 Akuntansi', 'Ekonomi', 'Kalimalang', '08975856093', 'Bekasi', '1994-03-03', 'Kp Poncol Jaya RT 002 RW 019 No 62, Jakasampurna - Bekasi Barat', 'Bekasi', 'lidianatri_yaya@yahoo.co.id', '2018-05-31', 0, '', 'Mahasiswa'),
(206, 'Putri fauziah pratiwi', '', '', 'P', '25216852', '2EB18', 'Akuntansi ', 'Ekonomi ', 'Kalimalang ', '083131129044', 'Jakarta', '1998-05-08', 'Jalan Bina Asih 1 No. 128 . kp kebantenan rt002/009', 'Bekasi', 'Fauziahpratiwip@gmail.com', '2018-06-02', 0, '', 'Mahasiswa'),
(207, 'muhamad sahid ridho', '', '', 'L', '24216643', '2eb21', 'akuntansi', 'ekonomi', 'kalimalang', '081297770416', 'pekanbaru', '1998-02-17', 'jl. meranti 1 no 100', 'bekasi', 'saidridho5@gmail.com', '2018-06-04', 0, '', 'Mahasiswa'),
(208, 'Adityo danianto', '', '', 'L', '20216240', '2eb21', 'Akuntansi', 'Ekonomi', 'Kalimalang', '089665000323', 'Wonogiri', '1997-10-16', 'Perumahan telaga murni blok D15 no 5. Cikarang barat', 'Bekasi', 'adityodanianto@gmail.com', '2018-06-04', 0, '', 'Mahasiswa'),
(209, 'Hastika Aulia Firdhausya', '', '', 'P', '27216973', '2EB21', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081285165772', 'Purworejo', '1998-08-30', 'Perumahan Telaga Harapan blok i5 no 12 Cikarang Barat', 'Bekasi', 'hastikafirdhausya@gmail.com', '2018-06-05', 0, '', 'Mahasiswa'),
(210, 'Rani Rahmawati', '', '', 'P', '26216079', '2EB21', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081290140101', 'Bekasi', '1998-07-03', 'Jl. Rusa VII Blok J No. 59', 'Cikarang Baru', 'ranirhmwt37@gmail.com', '2018-06-05', 0, '', 'Mahasiswa'),
(211, 'Halfa Nadillah', '', '', 'P', '2C214796', '4EB15', 'Akuntansi', 'Ekonomi', 'Depok', '085775881893', 'Bekasi', '1996-06-02', 'Gg.  Sawo No. 15, Kranggan', 'Bekasi', 'nadillahhalfa@yahoo.co.id', '2018-06-05', 0, '', 'Mahasiswa'),
(212, 'Caliv Farido', '', '', 'L', '21216510', '2EB21', 'Akuntansi', 'Ekonomi', 'kalimalang', '085772202140', 'Jakarta', '1998-01-12', 'Jl. cempaka raya no.196 perumnas 1 Bekasi Barat', 'Bekasi', 'calivferido@gmail.com', '2018-06-05', 0, '', 'Mahasiswa'),
(213, 'Maziyyah Fitri Amalia', '', '', 'P', '24216333', '2EB18', 'Akuntansi S-1', 'Ekonomi ', 'Kalimalang', '089699753424', 'Jakarta ', '1998-06-21', 'Perum. Pondok Ungu Permai sektor V vlok N15 no 9 rt 008/025', 'Bekasi Utara ', 'Maziyyah.amalia21@gmail.com', '2018-06-05', 0, '', 'Mahasiswa'),
(214, 'Diah pramasti', '', '', 'P', '21216955', '2EB18', 'Akuntansi', 'Ekonomi', 'Kalimalang', '089605212979', 'Jakarta', '1998-08-31', 'Griya asri 1 blok D 15 no 18', 'Kabupaten bekasi', 'diahpramasti10@gmail.com', '2018-06-05', 0, '', 'Mahasiswa'),
(215, 'Safira Aulia', '', '', 'P', '26216751', '2EB18', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081283196136', 'Jakarta', '1998-08-07', 'Komplek Telkom Satwika Permai Blok C7/ No.10 Jatiasih ', 'Bekasi', 'safiraaulia98@gmail.com', '2018-06-05', 0, '', 'Mahasiswa'),
(216, 'Mutia Ningrum', '', '', 'P', '27214673', '4EB15', 'Akuntansi', 'Ekonomi', 'Depok', '087774223411', 'Bogor', '1995-08-13', 'Kp.Jatijajar Rt 06/Rw 06, Jatijajar, Tapos, Depok', 'Depok', 'mutianingrum88@gmail.com', '2018-06-05', 0, '', 'Mahasiswa'),
(217, 'Afrida Budiarti ', '', '', 'P', '20214415', '4EB15', 'Akuntansi ', 'Ekonomi', 'Depok', '085779792195', 'Jakarta', '1996-04-26', 'Ds. Pabuaran Rt. 01 Rw. 03 No. 11 Kec. Bojong Gede, Kab. Bogor ', 'Kabupaten Bogor ', 'afrida.budiarti39@gmail.com', '2018-06-06', 0, '', 'Mahasiswa'),
(218, 'DHEA VIRGIANIS', '', '', 'P', '21216928', '2EB17', 'AKUNTANSI', 'EKONOMI', 'KALIMALANG', '087871649448', 'BEKASI', '1998-09-29', 'KP. PONDOK BENDA RT. 04 RW. 02 NO. 103 A JATIRASA JATIASIH', 'BEKASI', 'dheavirgianis29@gmail.com', '2018-06-06', 0, '', 'Mahasiswa'),
(219, 'Vidia Puji handayani', '', '', 'P', '2C214034', '4EB15', 'Akuntansi', 'Ekonomi', 'Depok', '083870727331', 'Jakarta', '1997-01-17', 'Jl. Melur 1 No. 57 ', 'Depok ', 'vidiapujihandayani17@gmail.com', '2018-06-06', 0, '', 'Mahasiswa'),
(220, 'Putri Hapsari Dewi', '', '', 'P', '28214599', '4EB15', 'Akuntansi', 'Ekonomi', 'Depok', '082213281567', 'Jakarta', '1996-08-11', 'Jl. H. Buang No. 151', 'Jakarta', 'putrihapsari08@yahoo.com', '2018-06-06', 0, '', 'Mahasiswa'),
(221, 'Ruth theresia', '', '', 'P', '26216721', '2eb22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '082111976668', 'Jakarta', '1998-11-14', 'Villa indah permai E3 No.36', 'Bekasi', 'Ruththeresia98@gmail.com', '2018-06-06', 0, '', 'Mahasiswa'),
(222, 'Fadel muhammad h', '', '', 'L', '22216442', '2EB21', 'Akuntansi', 'Ekonomi', 'Kalimalang J1', '085717788681', 'Bekasi', '1998-09-06', 'PPI Blok DD 8 No 14', 'Bekasi', 'Fadelmh76@gmail.com', '2018-06-06', 0, '', 'Mahasiswa'),
(223, 'Sarah Juliamti', '', '', 'P', '26216838', '2EB19', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081288226552', 'Jakarta', '1998-07-14', 'Perumahan pesona jatibening, jl. Swakarsa 4 no.G5 RT.008/RW.004', 'Bekasi', 'Juliantisarah@gmail.com', '2018-06-07', 0, '', 'Mahasiswa'),
(224, 'Yoga prasetyo', '', '', 'L', '27216762', '2EB19', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081298894430', 'Bekasi', '1998-12-13', 'Jln.raya kaliabang tengah rt 02/04', 'Bekasi', 'Yogaprasetyo1312@gmail.com', '2018-06-07', 0, '', 'Mahasiswa'),
(225, 'KURNIA TRYANTI', '', '', 'P', '23216971', '2EB17', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085728440171', 'Bekasi', '1998-03-27', 'Jl.Prof Moch Yamin No.80 RT001/006 Kel.Duren Jaya Kec.Bekasi Timur', 'Bekasi', 'kurniatryanti3@gmail.com', '2018-06-07', 0, '', 'Mahasiswa'),
(226, 'istianah', '', '', 'P', '23216624', '2EB19', 'akuntansi', 'ekonomi', 'kalimalang', '081311055973', 'jakarta', '1998-05-06', 'jl. cemara gg4 blok i no.8 RT/RW 009/016', 'jakarta utara', 'istianahiaaa@yahoo.co.id ', '2018-06-07', 0, '', 'Mahasiswa'),
(227, 'Hasna Azmi Nurul Azizah', '', '', 'P', '24214847', '4EB27', 'Akuntansi', 'Ekonomi', '', '089638442515', 'Jakarta', '1996-11-10', 'Griya Cendekia Blok L 14/04 Rt 006/Rw 006 Curug, Gunung Sindur. Bogor. Jawa Barat', 'Kabupaten Bogor', 'hasnaazizah1@gmail.com', '2018-06-08', 0, '', 'Mahasiswa'),
(228, 'Rihanda Salma Elza Vorlandia', '', '', 'P', '26216409', '2eb21', 'Akuntansi', 'Ekonomi', 'Kalimalang', ' +6283876616737', 'Karanganyar', '1998-10-09', 'Pondok gede permai. Jln cendrawasi 5 c22/13 ', 'Bekasi', 'vorlandiaelza@gmail.com', '2018-06-10', 0, '', 'Mahasiswa'),
(229, 'Nur aini oktavia', '', '', 'P', '28216116', '2eb21', 'Akuntansi', 'Ekonomi', 'Gunadarma kalimalang', '085881848427', '1998/10/15', '1998-10-15', 'Jalan kenari selatan 3 blok a 4 no 4', 'Bekasi', 'Ainioktavia98@yahoo.co.id', '2018-06-19', 0, '', 'Mahasiswa'),
(230, 'Agnes Tiomaria Situmorang', '', '', 'P', '20216310', '2EB21', 'S1 - Akuntansi', 'Ekonomi', 'Kalimalang', '085275118599', 'Pansur Batu', '1998-08-16', 'KP Warung Bongkok RT/RW 008/008 Kel/Desa Sukadanau Kec Cikarang Barat', 'Bekasi', 'agnestiiomaria@gmail.com', '2018-06-20', 0, '', 'Mahasiswa'),
(231, 'Dara ayuningtias', '', '', 'P', '22214541', '4EB23', 'Akuntansi', 'Ekonomi', 'Depok', '081316670034', 'Bekasi', '1997-01-27', 'Kp.Bubulak rt.04/07 Gg.Bengkong no 17 Bubulak Bogor Barat', 'Bogor', 'daraayu2701@gmail.com', '2018-06-22', 0, '', 'Mahasiswa'),
(232, 'Puji Asriyani', '', '', 'P', '28214545', '4EB16', 'Akuntansi', 'Ekonomi', 'Depok', '089531919193', 'Kebumen', '1996-04-22', 'Jl.pabrik kulit rt 04/07 Pakansari Cibinong', 'Bogor', 'pujiasriyani037@gmail.com', '2018-06-23', 0, '', 'Mahasiswa'),
(233, 'AULIA REDIANI PUTRI', '', '', 'P', '21216208', '2EB21', 'AKUNTANSI', 'EKONOMI', 'KALIMALANG', '089502706428', 'JAKARTA', '1998-08-23', 'JL. MADRASAH NURUL ISLAM RT. 03 RW. 18 NO. 95', 'BEKASI', 'Auliar238@gmail.com', '2018-06-25', 0, '', 'Mahasiswa'),
(234, 'DEVITA TRIE CAHYANI', '', '', 'P', '21216885', '2eb21', 'Akuntansi', 'Ekonomi', 'Kalimalanh', '081285383932', 'Jakarta', '1998-02-08', 'Vila indah permai blok h18 no 46', 'Bekasi', 'devitatricahyani@gmail.com', '2018-06-28', 0, '', 'Mahasiswa'),
(235, 'Dewi Istihadah', '', '', 'P', '21216900', '2EB21', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085811881115', 'Ngawi', '1998-04-18', 'Jl. Bulak Perwira II (Jl. Ampera 1 No. 10 RT 006 / RW 007 Kel. Perwira, Kec. Bekasi Utara)', 'Bekasi', 'dewiistihadah18@gmail.com', '2018-06-28', 0, '', 'Mahasiswa'),
(236, 'Yosep roni simarmata', '', '', 'L', '27215290', '3EB14', 'Akuntansi', 'Ekonomi', 'Depok', '081268761649', 'Balai Jaya', '1997-04-05', 'Jl. Penghulu maamun RT.019 RW.008 kec.bangko pusako', 'Riau', 'Ronyrap97@gmail.com', '2018-06-29', 0, '', 'Mahasiswa'),
(237, 'KURNIA RAMADHANTI', '', '', 'P', '23216968', '2EB17', 'AKUNTANSI', 'EKONOMI', 'KALIMALANG', '081283284320', 'BEKASI', '1997-12-19', 'JL. BERINGIN 8 NO.68 RT 006 RW 004, KRANJI', 'BEKASI', 'Ramadhanti.nia@gmail.com', '2018-06-30', 0, '', 'Mahasiswa'),
(238, 'DIAN RACHMAWATI', '', '', 'P', '21216972', '2EB17', 'AKUNTANSI', 'EKONOMI', 'KALIMALANG', '083808231554', 'JAKARTA', '1998-07-16', 'ASRAMA AIRUD BLOK L NO.3 RT 002 RW 09, CILINCING', 'JAKARTA', 'rdian3426@gmail.com', '2018-06-30', 0, '', 'Mahasiswa'),
(239, 'FIRDA KHALIFATTUL JANNAH', '', '', 'P', '22216856', '2EB17', 'AKUNTANSI', 'EKONOMI', 'KALIMALANG', '08129834045', 'BEKASI', '1998-09-05', 'JL. PROF MOH. YAMIN GG. ANGGUR RT 05/05 DUREN JAYA BEKASI TIMUR', 'BEKASI', 'firdakj05@gmail.com', '2018-07-01', 0, '', 'Mahasiswa'),
(367, 'NADHIFAH SAFITRI', '', '', 'P', '24215907', '4EB06', 'Akuntansi ', 'Ekonomi', 'Depok', '081218153259', 'JAKARTA', '1997-08-16', 'KP Babakan No 79 RT 001 RW 008 Sukatani Tapos', 'Depok', 'nadhifahsafitri.me@gmail.com', '2018-11-01', 0, '', 'Mahasiswa'),
(241, 'ALVIRA REVANIYANTI', '', '', 'P', '20216663', '2EB17', 'Akuntansi', 'Ekonomi', 'Kalimalang', '082216799695', 'Bekasi', '1998-06-15', 'Kp.Poncol No 94C RT/RW 006/001', 'Bekasi', 'alvirarevaniyanti23@gmail.com', '2018-07-04', 0, '', 'Mahasiswa'),
(242, 'Marlina siti priyati', '', '', 'P', '56214417', '', 'D3 manajemen keuangan ', 'Bisnis kewirausahaan', 'Depok', '082114945368', 'Jakarta ', '0000-00-00', 'Metland cileungsi blok Ab 24 no 38', 'Bogor', 'spmarlina@gmail.com', '2018-07-06', 0, '', 'Mahasiswa'),
(243, 'Devi Wahyu Susilowati', '', '', 'P', '22214836', '4EB27', 'Akuntansi', 'Ekonomi', 'Depok', '081290515994', 'Sukoharjo', '1994-08-27', 'Orchid Green Village, Tanah Baru, Beji', 'Depok', 'deviws94@gmail.com', '2018-07-09', 0, '', 'Mahasiswa'),
(244, 'Rien Ugih Pangestu', '', '', 'P', '26216361', '2EB19', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081514661103', 'Bekasi', '1997-10-14', 'Pondok Ungu Permai Blok AC 14 No. 13 RT 07 RW 09', 'Bekasi', 'rien.ugih10@gmail.com', '2018-07-13', 0, '', 'Mahasiswa'),
(245, 'Diaz Sakti Priambudi', '', '', 'L', '21216986', '2eb22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '089692783444', 'Jakarta', '1997-12-27', 'Jln KH. Mas mansyur', 'Bekasi timur', 'Diazsakti63@gmail.com', '2018-07-13', 0, '', 'Mahasiswa'),
(246, 'AULIA LUDFILIA SHEYTAHA', '', '', 'P', '21216198', '2EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081290781839', 'Jakarta', '1998-09-27', 'Desa puseurjaya rt/rw 01/01 no. 54 kec. Teluk jambe timur, 41361', 'Karawang', 'aulialudfiliasheytaha@gmail.com', '2018-07-13', 0, '', 'Mahasiswa'),
(247, 'MAS RIZAL HENDRAWAN', '', '', 'L', '24216289', '2EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '08571536005', 'Bekasi', '1998-06-10', 'Jl. Kusuma Timur 1 Blok C4 No.17, Aren Jaya, Bekasi Timur', 'Bekasi Timur', 'Rizalhendrawan1@gmail.com', '2018-07-13', 0, '', 'Mahasiswa'),
(248, 'MEGA PRATIWI', '', '', 'P', '24216343', '2EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081514661052', 'Garut', '1998-01-17', 'Pondok Ungu Permai Blok B 24 no. 15 RT 008 RW 008 Kel. Kaliabang Tengah Kec. Bekasi Utara', 'Bekasi Utara', 'mega.pratiwi1717@gmail.com', '2018-07-13', 0, '', 'Mahasiswa'),
(249, 'RIDO LINTANG YUDISTIRA', '', '', 'L', '26216349', '2EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '089676377752', 'Kebumen', '1998-05-22', 'Mutiara Gading Timur Blok H2/23', 'Kota Bekasi', 'ridolintangy@gmail.com', '2018-07-13', 0, '', 'Mahasiswa'),
(250, 'NINDA ARIZA', '', '', 'P', '25216435', '2EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '0895330094414', 'Majalengka', '1998-12-01', 'Jl.al-husnan gg.amil gg.h.seran no.19 jarikramat jatiasih 17421', 'Kota Bekasi', 'nindaariza30@gmail.com', '2018-07-13', 0, '', 'Mahasiswa'),
(251, 'IA RIZKY AMALIA', '', '', 'P', '23216345', '2EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085814881830', 'Jakarta', '1998-12-25', 'P.U.P asektor V Blok A10 No:42', 'Bekasi', 'iarizky39@gmail.com', '2018-07-13', 0, '', 'Mahasiswa'),
(252, 'RIYAN SETIAWAN', '', '', 'L', '26216525', '2EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081286459600', 'Jakarta', '1998-02-09', 'Jl bangau no 365 rt 01 rw 026 pekayon jaya bekasi selatan kode pos 17148', 'Bekasi', 'setiawanriyan1998@gmail.com', '2018-07-13', 0, '', 'Mahasiswa'),
(253, 'DINA FITRI PRATIWI', '', '', 'P', '22216074', '2EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085771635198', 'Bekasi', '1998-01-20', 'Jalan beringin 11 kranji Bekasi barat ', 'Kota Bekasi', 'fitridina428@gmail.com', '2018-07-13', 0, '', 'Mahasiswa'),
(254, 'AZIZ SAELANI', '', '', 'L', '21216268', '2EB19', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081299357593', 'Semarang', '1998-06-25', 'Jl. Amil abas 2 rt 002 rw 002, jaticempaka, pondok gede, Bekasi', 'Bekasi', 'azizsaelani48@gmail.com', '2018-07-13', 0, '', 'Mahasiswa'),
(255, 'Evita Yusrina Silfahmi', '', '', 'P', '22215310', '3EB19', 'Akuntansi', 'Ekonomi', 'Kalimalang', '087783872310', 'Bekasi', '1997-05-20', 'Bekasi Griya Asri 2 Blok H13 No. 41', 'Bekasi', 'evitayusr@gmail.com', '2018-07-16', 0, '', 'Mahasiswa'),
(256, 'Irvan Arintoko', '', '', 'L', '23216597', '2EB20', 'Akuntansi', 'Ekonomi', 'Kalimalang', '0895330321399', 'Bekasi', '1999-06-30', 'Tridaya Indah 2 blok C9 No. 8 RT 001 RW 003, Sumber Jaya, Tambun Selatan', 'Bekasi', 'irvan.arintoko1@gmail.com', '2018-07-17', 0, '', 'Mahasiswa'),
(257, 'Putri Yuditasari', '', '', 'P', '25216873', '2EB20', 'Akuntansi', 'Ekonomi', 'Kalimalang', '089519765768', 'Bekasi', '1998-07-24', 'Jl bungu 6 no 57 RT12/07 Perumnas 1', 'Bekasi', 'putriyudita69@gmail.com', '2018-07-17', 0, '', 'Mahasiswa'),
(258, 'Kevin Alfaro Simanjuntak', '', '', 'L', '28216314', '2EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '082168014407', 'Pematangsiantar', '1998-07-22', 'Jalan merah delima 1 cipinang cempedak ', 'Jakarta ', 'kevinsimanjuntak71@gmail.com', '2018-07-19', 0, '', 'Mahasiswa'),
(259, 'Dina Medlyn Jella Bing', '', '', 'P', '22216077', '2EB20', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085390264209', 'Maumere', '1998-05-08', 'Perumahan Griya Jatisari Blok DU5 No 4', 'Bekasi', 'dinamedlyn08@gmail.com', '2018-07-20', 0, '', 'Mahasiswa'),
(260, 'CINDY ROSA STEPANI PANGGABEAN', '', '', 'P', '21216627', '2EB22', 'akuntansi', 'ekonomi', 'jl. KH noer ali kalimalang', '082311237720', 'Garaga kec. sipoholon  kab. Taput sumatera utara', '1998-04-01', 'jl.kavling no 7 kampung bulak rawa semut kec.jatiasih', 'bekasi', 'cindypanggabean04@gmail.com', '2018-07-24', 0, '', 'Mahasiswa'),
(261, 'Karina Rusma Dewi', '', '', '', '23216822', '2EB18', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma', '085972805608', 'Bekasi', '1998-03-01', 'Jln. Wijaya Kusuma II, No. 76', 'Bekasi', 'karinarusma@gmail.com', '2018-07-25', 0, '', 'Mahasiswa'),
(262, 'Faiza Nabila', '', '', 'P', '27215637', '3eb18', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma Kalimalang', '087877240668', 'Bekasi', '1998-07-17', 'Villa anggrek', 'Bekasi', 'Faizanabila98@gmail.com', '2018-07-25', 0, '', 'Mahasiswa'),
(263, 'Putri Estiningrum', '', '', 'P', '25216850', '2EB18', 'AKUNTANSI', 'EKONOMI', 'KALIMALANG', '081218995014', 'Bekasi', '1998-03-14', 'Jl. Udang 5 No. 123 RT/RW 003/03, Perumnas 2, Kayuringin Jaya, Bekasi Selatan', 'Bekasi', 'Putriesti90@gmail.com', '2018-07-25', 0, '', 'Mahasiswa'),
(264, 'Rina Seprianti', '', '', 'P', '28216383', '2EB18', 'Akuntansi', 'Ekonomi', 'Kalimalang', '087880310700', 'Bekasi', '1993-09-16', 'Jalan Galaxi 8 Blok B No. 518 RT/RW 5/10', 'Bekasi', 'cleffarins@gmail.com', '2018-07-25', 0, '', 'Mahasiswa'),
(265, 'Syaras Ayunibg Tyas', '', '', 'P', '27216249', '2eb18', 'Akuntansi', 'Ekonomi', 'Bekasi', '087730000197', 'Wonosobo', '1997-10-20', 'Taman wisma asri 036 NO 45 RT 08 RW 32 Teluk pucung', 'Bekasi', 'ayastyas20@gmail.com', '2018-07-25', 0, '', 'Mahasiswa'),
(266, 'Adi Trias Swasono', '', '', 'L', '20216156', '2EB18', 'Akuntansi', 'Ekonomi', 'Gunadarma Bekasi', '081282883016', 'Bekasi', '1998-05-22', 'Jl.Narogong sakti 2 blok D 49 No 1 Rt 05 Rw 13 Pengasinan Rawalumbu Kota Bekasi', 'Bekasi', 'Adittriasswasono@gmail.com', '2018-07-25', 0, '', 'Mahasiswa'),
(267, 'Setiyanto Hartono', '', '', 'L', '26216947', '2EB18', 'Akuntansi ', 'Ekonomi', 'Kalimalang', '083871574606', 'Klaten ', '1998-09-08', 'Jl. Lapangan no 78 RT 04 RW 12 Kranji , Bekasi barat ', 'Bekasi ', 'Setiyantohartono98@gmail.com', '2018-07-25', 0, '', 'Mahasiswa'),
(268, 'NUR FAUZI ALAWI', '', '', 'L', '25216542', '2eb18', 'Akuntansi ', 'Ekonomi ', 'Bekasi', '087875812312', 'Jakarta ', '1997-08-06', 'Jl. Pahlawan Revolusi no.57 rt 006 rw 012 kel pondok bambu kec duren sawit Jakarta Timur ', 'Jakarta', 'Nurfauzialawi08@gmail.com ', '2018-07-25', 0, '', 'Mahasiswa'),
(269, 'Atika Heni P', '', '', 'P', '21216178', '2EB18', 'Akuntansi', 'Ekonomi', 'Kalimalang', '082215586682', 'Sragen', '1998-03-11', 'Perumahan Griya Mustikasari Blok A6/5', 'Bekasi', 'atikaheni11@gmail.com', '2018-07-25', 0, '', 'Mahasiswa'),
(270, 'Dita Ayu Sulistiyaningrum', '', '', 'P', '22216137', '2EB18', 'Akuntansi', 'Ekonomi', 'Gunadarma Kalimalang', '089672646461', 'Bekasi', '1998-09-10', 'Kp. Pasar emas RT. 10/04 Kec. Babelan Kab. Bekasi', 'Bekasi', 'dita.ayusn@gmail.com', '2018-07-25', 0, '', 'Mahasiswa'),
(394, 'SATRIA WIBISONO SISWANTO', '', '', 'L', '26215423', '4EB08', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '0811198119', 'JAKARTA', '1997-06-01', 'JL KOPASUS NO. 7 ', 'DEPOK', 'satriawibisono.personal.07@gmail.com', '2019-03-01', 0, '', 'Mahasiswa'),
(272, 'Annisa', '', '', 'P', '20216934', '2EB03', 'Akuntansi', 'Ekonomi', 'Depok', '081319877390', 'Jakarta', '1998-08-12', 'Komplek Departemen Perdagangan. Kab. Bogor', 'Bogor', 'Officialannisa@gmail.com', '2018-07-26', 0, '', 'Mahasiswa'),
(390, 'Hani Mardiati', '', '', 'P', '23216186', '3EB17', 'Akuntansi', 'Ekonomi', 'Kalimalang', '087880906022', 'Kuningan', '1999-03-21', 'Jl Adiyaksa RT2/2 No 46 ', 'Bekasi', 'Hanimardianti65@gmail.com', '2019-02-22', 0, '', 'Mahasiswa'),
(391, 'Chynthia Fiorenze', '', '', 'P', '21215500', '4eb10', 'Akuntansi', 'Ekonomi', 'Depok', '081374767670', 'Padang', '1998-02-04', 'Griya Pasadena Jl. Pondok Pesantren 2 No. 2 RT/RW 003/014', 'Depok', 'chynthia.fiorenze@yahoo.co.id', '2019-02-26', 0, '', 'Mahasiswa'),
(388, 'Rossa Amalia Rizky', '', '', 'P', '26215278', '4eb88', 'Akuntansi', 'Ekonomi', 'Simatupang', '085212513147', 'Surakarta', '1996-08-11', 'Permata Cimanggis, Cluster Onyx i5/21, Tapos', 'Depok', 'Rossaamalia18@gmail.com', '2019-02-19', 0, '', 'Mahasiswa'),
(389, 'Dwinanda Agung Laksono', '', '', 'L', '2B217025', 'Non Kelas', 'Akuntansi', 'Ekonomi', 'Bekasi (Kampus J)', '087886725339', 'Bekasi', '1994-10-22', 'Jl. Anggrek RT 002 / 06 No. 46, Kel. Bojong Menteng, Kec. Rawalumbu', 'Bekasi', 'agung.dwnd@gmail.com', '2019-02-20', 0, '', 'Mahasiswa'),
(386, 'Mega puspita', '', '', 'P', '14212515', '', 'Manajemen', 'Ekonomi', 'Bekasi', '08990057794', 'Jakarta', '1995-01-21', 'Jl. Ac pelat RT/RW 03/02 No. 58 Kel. Bojong menteng Kec. Rawa lumbu', 'Bekasi', 'megapuspita95@gmail.com', '2019-02-18', 0, '', 'Mahasiswa'),
(387, 'Feriza Agustina Darmawan', '', '', 'P', '22215630', '4EB88', 'Akuntansi', 'Ekonomi', 'Simatupang', '085774759094', 'Tabanan', '1997-08-23', 'Perum. Mutiara Sentosa Blok H No.17 RT 003 RW 011, Kelurahan Pasir Putih, Kecamatan Sawangan', 'Depok', 'ferizaagustina@gmail.com', '2019-02-18', 0, '', 'Mahasiswa'),
(279, 'Oktarina Tribatami', '', '', 'P', '28214330', '4EB33', 'Akuntansi', 'Ekonomi', 'Kalimalang J1', '085289955807', 'Batam', '0000-00-00', 'Bekasi tinur regensi', 'Kab bekasi, jabar', 'tribatamioktarina@gmail.com', '2018-07-28', 0, '', 'Mahasiswa'),
(281, 'GADING NANDA PERDANA', '', '', 'L', '22216941', '2EB22', 'AKUNTANSI', 'EKONOMI', 'BEKASI', '08999126629', 'BEKASI', '1998-06-11', 'BUMI MUTIARA BLOK JH 1 NO. 23', 'KAB BOGOR', 'gadingnandaperdana10@gmail.com', '2018-07-29', 0, '', 'Mahasiswa'),
(392, 'Rahmatusrini', '', '', 'P', '27215504', '4EB11', 'Akuntansi / S1', 'Ekonomi', 'DEPOK', '081256985567', 'Pontianak', '1997-09-14', 'Jl pondok pesantren 2 no 2', 'Depok', 'tusrini.rahma@yahoo.com', '2019-02-26', 0, '', 'Mahasiswa'),
(283, 'MELVIN JHON REY', '', '', 'L', '27215779', '3EB17', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081380043280', 'Banjar Baru, Kalsel', '1997-02-15', 'Perumahan Harapan Indah Blok AG No.11', 'Bekasi', 'Mjhonray55@gmail.com ', '2018-07-29', 0, '', 'Mahasiswa'),
(284, 'Herysa Handica Putri', '', '', 'P', '23215149', '3EB01', 'Akuntansi', 'Ekonomi', 'Depok', '081293883243', 'Jakarta', '1997-08-01', 'Erfina kencana regency cluster downhill no.21', 'Bogor', 'rysaherysa@gmail.com', '2018-07-30', 0, '', 'Mahasiswa'),
(285, 'RISKA OKTAVIANTI BR. SIREGAR', '', '', 'P', '26215059', '3EB01', 'EKONOMI', 'AKUNTANSI', 'DEPOK', '085819925479', 'PEMATANG REBA', '1997-10-18', 'Jl Aula Pancoran Mas 2. No 41. Pancoran Mas,  Depok', 'DEPOK', 'riska72gar18@gmail.com', '2018-07-30', 0, '', 'Mahasiswa'),
(286, 'Bellinda Cindy Audry', '', '', 'P', '21215330', '3EB01', 'akuntansi', 'ekonomi', 'Depok', '089678225988', 'Bogor', '1997-04-26', 'kp. pabuaran wetan RT 01/06, Desa Ciangsana, Kec. Gunung Putri, Kab. Bogor', 'Bogor', 'bellindacaudry@gmail.com', '2018-07-30', 0, '', 'Mahasiswa'),
(287, 'Pratiwi Nurcahya', '', '', 'P', '25215382', '3EB01', 'Akuntansi', 'Ekonomi', 'Depok', '083894355341', 'Bekasi', '1996-11-20', 'Villa Bekasi Indah 1 Blok G4 No 20, Tambun Selatan.', 'Bekasi', 'pratiwinc3@gmail.com', '2018-07-30', 0, '', 'Mahasiswa'),
(372, 'Strelitzia Reginae Fitria S', '', '', 'P', '2A214462', '4EB17', 'Akuntansi', 'Ekonomi', 'Depok', '081213855265', 'Jakarta', '1996-02-20', 'Jl. Tanjung No.30 Komplek Pertanian RT11/RW10 Pasar Minggu, Jakarta Selatan', 'DKI Jakarta', 'zreginae@gmail.com', '2018-12-03', 0, '', 'Mahasiswa'),
(289, 'Achmad Maulana Yusuf', '', '', 'L', '20215065', '3EB01', 'Akuntansi', 'Ekonomi', 'Depok', '085697389514', 'Jakarta', '1997-07-07', 'Kp. Kalibata RT. 005/007 No. 112 Kel. Sr. Sawah, Kec. Jagakarsa', 'Jakarta Selatan', 'achmad00.am@gmail.com', '2018-07-30', 0, '', 'Mahasiswa'),
(393, 'Nabila Farrah Gusniar', '', '', 'P', '25216210', '3EB18', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081387878515', 'Purbalingga', '1998-09-13', 'Perum. Mega regency Blok C 32 No. 38, Kec. Serang Baru 17330', 'Bekasi', 'nabilafarrah52@gmail.com', '2019-02-27', 0, '', 'Mahasiswa'),
(291, 'Angel Anggraini', '', '', 'P', '2C214989', '4EB39', 'Akuntansi', 'Ekonomi', 'Cengkareng', '085216619339', 'Jakarta', '1996-06-11', 'Jl. Peta Selatan Gg. MadrasahRT 005 RW 01 No. 28', 'Jakarta Barat', 'anggi.anggraini11.aa@gmail.com', '2018-08-01', 0, '', 'Mahasiswa'),
(292, 'Agus Muhammad Rizki', '', '', 'L', '20215304', '3EB15', 'Akuntansi / S1', 'Ekonomi', 'Salemba', '083805750678', 'Jakarta', '1997-08-13', 'Jl. Mangga Ujung Komplek Imigrasi no.3c Kel.Tugu Utara Kec. Koja Jakarta utara', 'DKI Jakarta', 'agusrizki999@gmail.com', '2018-08-01', 0, '', 'Mahasiswa'),
(293, 'Muhammad Nur Alfie', '', '', 'L', '24215711', '3EB17', 'S1 Akuntansi', 'Ekonomi', 'Kalimalang', '089636526538', 'Bekasi', '1997-08-02', 'Jl. Sengon rt002/002, Setu, Bekasi, Jawa Barat', 'Bekasi', 'muhammadnuralfie007@gmail.com', '2018-08-01', 0, '', 'Mahasiswa'),
(294, 'RACHELCY GRACIA', '', '', '', '25215486', '3EB17', 'AKUNTANSI', 'EKONOMI', 'KALIMALANG', '081316292458', 'JAKARTA', '1998-02-02', 'DUKUH ZAMRUD', 'BEKASI', 'GRACHELCY@GMAIL.COM', '2018-08-02', 0, '', 'Mahasiswa'),
(295, 'Sutrisno', '', '', 'L', '1B217156', '4EA50', 'Manajemen', 'Ekonomi', 'Depok', '081319116566', 'Indramayu', '1995-05-31', 'Jl. Kamboja Kampung Areman Tugu Cimanggis ', 'Depok', 'Sutrisno.tafsir@gmail.com', '2018-08-02', 0, '', 'Mahasiswa'),
(296, 'SISKA RAHMA YUNI', '', '', 'P', '26215586', '3EB16', 'EKONOMI', 'AKUNTANSI', 'DEPOK', '085464569919', 'PADANG GANTING', '0000-00-00', 'JL. BAKTI 1 NO. 101 RT. 007 RW. 009 KEL. BARU', 'JAKARTA TIMUR', 'siska.rahmayuni@gmail.com', '2018-08-03', 0, '', 'Mahasiswa'),
(297, 'Eka Novia Hardiyanti', '', '', 'P', '22215137', '3EB16', 'Akuntansi', 'Ekonomi', 'Depok', '081586843688', 'Kediri', '1997-11-22', 'Jl. Pesona kalisari no 95 rt.02/rw.05 kel.kalisari kec.pasar rebo, jakarta timur', 'Jakarta Timur', 'Enovia33@gmail.com', '2018-08-03', 0, '', 'Mahasiswa'),
(298, 'Dewi Noratika', '', '', 'P', '21215786', '3EB16', 'Akuntansi', 'Ekonomi', 'Depok', '081291421306', 'Kediri', '1997-12-06', 'Jl. Pesona Ii No.95 RT 02/ RW 05 Kel. Kalisari Kec. Pasar Rebo 13790', 'Jakarta Timur', 'dewi.noratika96@gmail.com', '2018-08-03', 0, '', 'Mahasiswa'),
(299, 'GINA ASMARANI', '', '', 'P', '27215462', '3EB16', 'AKUNTANSI', 'EKONOMI', 'KAMPUS D', '087781612713', 'JAKARTA', '1997-07-04', 'Kahayan Raya No.4 RT 10/ RW 02, Kel.Abadijaya, Kec.Sukmajaya', 'DEPOK', 'ginaasmarani21@gmail.com', '2018-08-03', 0, '', 'Mahasiswa'),
(300, 'KEVIN HENANTA', '', '', 'L', '23215698', '3EB18', 'AKUNTANSI', 'EKONOMI', 'KALIMALANG (J1)', '087877550090', 'JAKARTA', '1997-06-14', 'Perum. Villa Indah Permai Blok E4 no 9', 'BEKASI UTARA', 'kevin_henanta@yahoo.co.id', '2018-08-06', 0, '', 'Mahasiswa'),
(301, 'SAKTI PAMULHA L TOBING', '', '', 'L', '26216769', '2EB22', 'AKUNTANSI', 'EKONOMI', 'KALIMALANG', '085886160176', 'Bekasi', '1997-10-01', 'Pup sektor V blok a 15/3', 'Bekasi', 'silvester_sakti01@yahoo.co.id', '2018-08-06', 0, '', 'Mahasiswa'),
(368, 'Fitri indah sari', '', '', 'P', '22215736', '4eb06', 'Akuntansi', 'Ekonomi', 'Depok', '081383560427', 'Lubuk pakam', '1997-02-24', 'Jl. H Tohir ', 'Jakarta ', 'fitriindahari483@gmail.com', '2018-11-01', 0, '', 'Mahasiswa'),
(303, 'Irma Suryani', '', '', 'P', '2D214137', '4EB39', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma Cengkareng', '089521528628', '1996/08/16', '0000-00-00', 'Kampung Bali Rt 011/ RW 04 No. 23, Kalideres', 'Jakarta Barat', 'irmasuryani641@gmail.com', '2018-08-08', 0, '', 'Mahasiswa'),
(385, 'Sri Setyorini', '', '', 'P', '26215673', '4EB88', 'Akuntansi', 'Ekonomi', 'Kampus I Simatupang', '087783876673', 'Bekasi', '1997-04-15', 'Jl. Wijaya Kusuma No.48 RT.005 RW.008 Jatimakmur, Pondok Gede', 'Bekasi', 'smizuka@yahoo.com', '2019-02-17', 0, '', 'Mahasiswa'),
(365, 'Hendra eka suparman', '', '', 'L', '23215111', '4eb19', 'Akuntansi', 'Ekonomi', 'J1 kalimalang', '081293059238', 'Karawang', '1997-08-22', 'Dusun krajan II, desa pasirtanjung, rt/rw 03/08, kec. Lemahabang, kab. Karawang jawa barat', 'Karawang', 'Hendraeka.suparman@yahoo.com', '2018-10-20', 0, '', 'Mahasiswa'),
(366, 'Nuraini setya ningsih ', '', '', 'P', '25215207', '4EB06', 'Akuntansi ', 'Ekonomi ', 'Depok ', '087888278132', 'Jakarta ', '1996-06-05', 'Jl kebagusan ll gg sawo no : 56', 'Jakarta selatan ', 'nurainisetyaningsih@gmail.com', '2018-11-01', 0, '', 'Mahasiswa'),
(307, 'Putri Elsianni', '', '', 'P', '25215445', '3EB10', 'Akuntansi', 'Ekonomi', 'Depok', '081806562578', 'Jakarta', '1997-08-30', 'Jl. Kalibata Timur Rt08/010 No.13 Kel. Kalibata Kec.Pancoran', 'Jakarta Selatan', 'putrielsianni@gmail.com', '2018-08-10', 0, '', 'Mahasiswa'),
(308, 'Silvi Ramadianti', '', '', 'P', '27216043', '2EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081211618128', 'Purwodadi', '1998-01-25', 'Komplek mediterania regency cikunir, blok B 76', 'Bekasi', 'ramadianti.silvi@gmail.com', '2018-08-10', 0, '', 'Mahasiswa'),
(384, 'Faradina Marlizar', '', '', 'P', '22215474', '4EB88', 'Akuntansi', 'Ekonomi', 'Simatupang', '081280905882', 'Jakarta', '1997-03-22', 'Perumahan Kalibaru Permai Blok B1 no. 8 02/07 kalibaru/cilodong', 'Depok', 'faradinaaaamzr@gmail.com', '2019-02-15', 0, '', 'Mahasiswa'),
(310, 'Hikmah Aryani', '', '', 'P', '27215666', '3EB15', 'Akuntansi', 'Ekonomi', 'Salemba', '085714664504', 'Jakarta', '1997-11-26', 'Rusun Cipinang Muara B4 no 02, Jl. Cip.Muara 2', 'Jakarta Timur', 'hikmaharyani@gmail.com', '2018-08-19', 0, '', 'Mahasiswa'),
(311, 'Resza Julianisha', '', '', 'P', '25215784', '3EB15', 'Akuntansi', 'Ekonomi', 'Salemba', '081284085314', 'jakarta', '1997-07-21', 'jl. pancawarga 25 RT:09 RW:01 NO:11. Cipinang Besar Selatan, jatinegara. ', 'jakarta timur', 'julianishar@gmail.com', '2018-08-19', 0, '', 'Mahasiswa'),
(312, 'Rini Samiasi Puspitasari', '', '', 'P', '26215021', '3EB24', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma Cengkareng', '081288764252', 'Madiun', '1995-12-24', 'Jl. Jelambar Jaya Timur 009/009', 'Jakarta Barat', 'rinipuspitasari2412@gmail.com', '2018-08-20', 0, '', 'Mahasiswa'),
(313, 'Fitria Megawati', '', '', 'P', '27215957', '3EB24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '089607611395', 'Sragen', '1997-02-15', 'Jl.Kumbang Raya Rawa Lele RT04/01', 'Jakarta Barat', 'fitria27.fm@gmail.com', '2018-08-20', 0, '', 'Mahasiswa'),
(314, 'randy pradipta', '', '', 'L', '25215643', '3eb24', 'akuntansi', 'ekonomi', 'universitas gunadarma cengkareng', '081211426211', 'jakarta', '1996-01-14', 'pemukiman rt 04 rw 08 no 24 kel salembaran jaya kec kosambi kab tangerang - banten', 'tangerang', 'randypradipta44@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(315, 'Yesica Vera Novita Arni Yanto', '', '', 'P', '27215800', '3EB24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '082213722307', 'Pacitan', '1996-11-18', 'Jl. Maulana Hasanudin Rt 003/003 no 17 Kp. poris, gg warung Cipondoh Tangerang', 'Tangerang', 'Yesica223361@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(316, 'Gitya Marginastiti', '', '', 'P', '22215932', '3EB24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '081908681174', 'Jakarta', '1997-03-22', 'Jalan Sukatani Raya Blok A8 No 20 Rt 001 Rw 007 Kelurahan Tegal Alur Kecamatan Kalideres', 'Jakarta Barat', 'marginastiti@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(317, 'Bram Vicario Zulfikar', '', '', 'L', '21215396', '3EB24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '08577823040', 'Jakarta', '1994-04-22', 'Jalan Sukatani Raya Blok L5 No.6, Tegal Alur, Kalideres, 11820', 'Jakarta Barat', 'bramvicz@yahoo.com', '2018-08-21', 0, '', 'Mahasiswa'),
(318, 'Cindy julaika probowati', '', '', 'P', '27215578', '3EB24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '087783008299', 'Ponorogo', '1997-07-03', 'Jl dalang no 6 RT/RW 009/001', 'Bekasi', 'cindyjulaika@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(319, 'Nurrohmahwati', '', '', 'P', '25215222', '3eb24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '08996364580', 'Banyumas', '1997-05-06', 'Kapuk pasar darurat rt 07/12', 'Cengkareng', 'nurrohmahwati06@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(320, 'Lediani', '', '', 'P', '23215801', '3EB24', 'Akuntansi', 'Ekonomi', 'Cengkareng ', '082261598706', 'Jakarta', '1997-09-04', 'Kampung pangkalan kramat rt 02 rw 10 semanan kalideres no 82', 'Jakarta', 'lediani.ani04@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(321, 'Citra Ramadhanty', '', '', 'P', '27215763', '3EB24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '087783877763', 'Jakara', '1998-01-04', 'Jl.Puspa Raya No.57', 'Jakarta', 'citraramadhanty04@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(322, 'Ananda Baihaqi Qomarudin', '', '', 'L', '20215643', '4EB24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '089527757900', 'Malang', '1997-05-07', 'Jalan waru 4 blok Ed no 16 Kel. Kapuk kec. Cengkareng', 'Jakarta Barat', 'andbaihaqi13@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(323, 'Destya Windi Pratiwi', '', '', 'P', '21215741', '3EB24', 'Akuntansi', 'Ekonomi', 'Cengkareng(L2)', '081388323640', 'Ngawi', '1996-12-17', 'Jl. Perumnas cengkareng blok E 26 no: 13 Rt010/Rw015', 'Jakarta Barat', 'Destyawindipratiwi@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(324, 'Desy Stephani', '', '', 'P', '27215765', '3EB24', 'AKUNTANSI', 'Ekonomi', 'Cengkareng', '081314464443', 'Tangerang', '1997-12-18', 'Cipondoh Makmur Blok M3 No.14 RT.005/RW.008', 'Tangerang', 'desistephani@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(325, 'Asih Fitriani', '', '', '', '21215090', '3EB24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '085659994885', 'Kuningan', '1996-12-17', 'jl rawalele rt 06 rw 10 kelurahan kalideres jakarta barat', 'Jakarta', 'asihfitriani1712@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(326, 'Tejo Restu Fauzi', '', '', 'L', '27215959', '3eb24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '081311818566', 'Purworejo', '1996-03-15', 'Villa Taman Bandara Blok O2 No.2 Rt09/010 Dadap, Kosambi', 'Tangerang', 'tjrstfz@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(327, 'Irma nainggolan', '', '', 'P', '23215445', '3eb24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '089504178390', 'Bukit baringin', '1997-06-24', ' Jl.Permata Kanan II No15 Rt/RW 04/011 Tegal alur, Kalideres, Jakarta Barat ', 'Kalideres', 'Irmamarianovianty@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(328, 'Siti Lathifah', '', '', 'P', '26215612', '3EB24', 'Akuntansi ', 'Ekonomi', 'Cengkareng ', '081291066709 ', 'Sragen', '1996-03-26', 'Jl. Waru 1b Rt/Rw 013/09, cengkareng ', 'Jakarta barat', 'sitilathifah401@gmail.com ', '2018-08-21', 0, '', 'Mahasiswa'),
(329, 'Rani Amalia ', '', '', 'P', '25215657', '3EB24', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma Cengkareng ', '089697052824', 'Jakarta', '1997-06-11', 'Jl. kapuk kebon jahe Rt.14/Rw.12 No.17', 'Jakarta Barat', 'raniamalia66@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(330, 'Siti khoerunnisa', '', '', 'P', '27215606', '3eb24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '08545187891', 'Tegal', '1997-01-29', 'Dukuh cempaka desa gembongdadi rt 06 rw 03 kec suradadi', 'Tegal', 'anisavry97@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(331, 'Kartikasari', '', '', 'P', '27215590', '3EB24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '087783877590', 'Kuningan', '1996-09-15', 'Dusun Manis Rt 04 Rw 02 Desa Luragunglandeuh Kec Luragung Kuningan - Jabar', 'Kuningan', 'kartikasarinamina@gmaul.com', '2018-08-21', 0, '', 'Mahasiswa'),
(332, 'Yashinta Shelly Viana Mentari', '', '', 'P', '27215221', '3EB24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '085770265186', 'Jakarta', '1997-07-25', 'Jl KH Dewantoro, Gg. Lurah saadih Rt 04/01', 'Tangerang', 'yshntsm@gmail.com', '2018-08-21', 0, '', 'Mahasiswa'),
(333, 'Yulius Septian', '', '', 'L', '27215963', '3eb24', 'Akuntansi', 'Ekonomi', 'Cengkareng', '0895342944451', 'Tangerang', '1997-09-13', 'Villa Taman Bandara Blok G7 No 4', 'Tangerang', 'yulius.septian@gmail.com', '2018-08-23', 0, '', 'Mahasiswa'),
(334, 'Tubagus Achmadi', '', '', 'L', '2a214898', '4EB15', 'Akuntansi', 'Ekonomi', 'Depok', '081807771632', 'Kota Serang', '1996-08-07', 'Jalan raya cilegon km 05 Kp. Taman Baru Desa Taman Baru RT 17 RW 06 Kecamatan Taktakan Kota Serang Provinsi Banten', 'Serang', 'tubagusachmadi46@gmail.com', '2018-08-24', 0, '', 'Mahasiswa'),
(335, 'Paskah Benedictus Nadeak', '', '', 'L', '2C214750', '4EB03', 'Akuntansi', 'Fakultas Ekonomi', 'Jln.akses UI Kelapa Dua, Cimnggis, Depok', '081318962392', 'Silombu', '1994-11-11', 'Silombu', 'Samosir', 'paskah.nadeak@gmail.com', '2018-08-24', 0, '', 'Mahasiswa'),
(336, 'TINNA MARINI', '', '', 'P', '27216398', '2eb19', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085211032287', 'Banyuwangi', '1997-06-12', 'Pondok pekayon indah blok cc 2 no 2 pekayon jaya bekasi selatan', 'Bekasi', 'Tinarini12@gmail.com', '2018-08-28', 0, '', 'Mahasiswa'),
(337, 'TIO KURNIAWAN SAPUTRA AJI', '', '', 'L', '27216400', '2eb19', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081289172693', 'Indramayu', '1998-03-25', 'Jl. Tipar cakung Rt 001/004 semper barat,cilincing', 'DKI JAKARTA', 'Tiokurniawan72@gmail.com', '2018-08-28', 0, '', 'Mahasiswa'),
(338, 'Muhammad catur aditya', '', '', 'L', '24216756', '2EB19', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081511537008', 'Bekasi', '1998-09-10', 'Taman wisma asri jl.semangka2 B27/25', 'Bekasi', 'muhammadcaturaditya98@gmail.com', '2018-08-28', 0, '', 'Mahasiswa'),
(339, 'WINDA MARLINA', '', '', 'P', '27216665', '2EB19', 'Akuntansi', 'Ekonomi', 'Bekasi', '08567680630', 'BEKASI', '1998-04-26', 'Bekasi permai blok BE nomer 02', 'Bekasi', 'Windamarlina60@gmail.com', '2018-08-28', 0, '', 'Mahasiswa'),
(340, 'KEVIN AXELINO', '', '', '', '23216854', '2EB19', 'AKUNTANSI', 'EKONOMI', 'KALIMALANG', '08979984745', 'TANGERANG', '1998-12-19', 'JL. JANUR KUNING BLOK B2/7', 'JAKARTA TIMUR', 'Axelino73@gmail.com', '2018-08-28', 0, '', 'Mahasiswa'),
(341, 'RIA MONIKAWATI', '', '', 'P', '26216292', '2EB19', 'Akutansi', 'Ekonomi', 'Kalimalang', '081808171388', 'Jakarta', '1998-05-16', 'Jln.ujung harapan2,Rt002/Rw017/No20', 'Bekasi', 'riamonikawati@gmail.com', '2018-08-28', 0, '', 'Mahasiswa'),
(342, 'Nusaibah Taqiyya ', '', '', 'P', '27215736', '3EB15', 'Akuntansi / S1', 'Ekonomi', 'Salemba ', '081932275270', 'Jakarta', '0000-00-00', 'Jl.bintara 13 no.54 rt.001/13', 'Bekasi ', 'nusaibahtaqiyya', '2018-08-30', 0, '', 'Mahasiswa'),
(343, 'Idris cesar selay', '', '', 'L', '23215230', '3EB01', 'Akuntansi', 'Ekonomi', 'Depok', '082210724863', 'Jakarta', '1997-05-03', 'Komp perumahan taman duta jalan teratai 1 a3/5', 'Depok', 'Idriscaesar@gmail.com', '2018-08-31', 0, '', 'Mahasiswa'),
(344, 'Himmah Althofia', '', '', 'P', '25214004', '4EB21', 'Akuntansi', 'Ekonomi', 'Depok', '087889251913', 'Jakarta', '1995-12-03', '', '', 'alfialthofia@yahoo.co.id', '2018-09-03', 0, '', 'Mahasiswa'),
(414, 'Tubagus Putrayanu', '', '', 'L', '28216057', '3EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '082125573441', 'Jakarta', '1999-01-20', 'Jalan Bunga Rampai 5 Gang 2 No.44 Prumnas Klender', 'Jakarta Timur', 'tbputra20@gmail.com', '2019-04-10', 0, '', 'Mahasiswa'),
(346, 'RIO BRYAN CRUISER SIMANGUNSONG', '', '', 'L', '29214454', '4EB09', 'Akuntansi', 'Ekonomi', 'Kampus D', '085250534433', 'NGABANG', '1996-10-23', 'jl. Ngarai No 100, Komp HanKam, Kelapa Dua', 'Depok', 'riobryancruisersimangunsong@gmail.com', '2018-09-05', 0, '', 'Mahasiswa'),
(347, 'ARI RIZKIA HANDAYANI', '', '', 'P', '21213277', '-', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '083898986515', 'DEPOK', '1996-01-11', 'GRIYA BUKIT JAYA BLOK M13/10 RT 02 RW 30 TLAJUNG UDIK GUNUNG PUTRI BOGOR', 'BOGOR', 'aririzkiahandayani01@gmail.com', '2018-09-13', 0, '', 'Mahasiswa'),
(348, 'ADI PUTRO KUNCORO', '', '', 'L', '20213190', '-', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '081908967266', 'BOGOR', '1995-01-19', 'KP. KAUM RT/RW 04/02 KARANG ASEM BARAT CITEUREUP BOGOR', 'BOGOR', 'adiputro04@gmail.com', '2018-09-13', 0, '', 'Mahasiswa'),
(349, 'FERI SAPUTRA', '', '', 'L', '22216796', '2EB19', 'Akuntansi', 'Ekonomi', 'Kalimalang', '082289467485', 'Pantai', '1998-02-13', 'Desa Pantai', 'Palembang', 'ferisaputra855@gmail.com', '2018-09-14', 0, '', 'Mahasiswa'),
(350, 'TOMMY ILHAM MUHARRAM', '', '', 'L', '27216413', '2EB22', 'Akuntansi', 'Ekonomi', 'Kalimalang', '083871484170', 'Kuningan', '1998-05-25', 'Jl.H. Abdullah no. 58B Pondok Kelapa', 'Jakarta Timur', 'tomy.ilham@gmail.com', '2018-09-14', 0, '', 'Mahasiswa'),
(351, 'SIGIT MAYONGGA', '', '', 'L', '27216038', '3EB22', 'Akuntansi', 'EKONOMI', 'Kalimalang', '081295980605', 'Kebumen', '1998-06-05', 'Bekasi ', 'Bekasi', 'Sigitmayongga@gmail.com', '2018-09-19', 0, '', 'Mahasiswa'),
(352, 'Sri utami', '', '', 'P', '2124009', '3Eb13', 'Akuntansi', 'Ekonomi', 'Bekasi', '085888288931', 'Jakarta', '0000-00-00', '1991/06/09', 'Bekasi', 'Tamtammimi@gmail.com', '2018-09-22', 0, '', 'Mahasiswa'),
(353, 'Zahran Al Aziz ', '', '', 'L', '27216903', '3EB05', 'Akuntansi', 'Ekonomi', 'Depok', '081384287132', 'Jakarta', '1997-09-01', 'Jl. Raya Puspiptek komplek Puri Serpong 1 D2/2', 'Tangerang selatan', 'zahranalaziz77@gmail.com', '2018-10-01', 0, '', 'Mahasiswa'),
(354, 'Muhammad Dimas Khoirulloh', '', '', 'L', '24216774', '3eb5', 'Akuntansi', 'Ekonomi', 'jalan margonda raya no 100', '081284549021', 'Jakarta', '1999-06-25', 'jalan rawa selatan vi rt 08 rw 07 no 16', 'jakarta pusat', 'mhmmddimas@yahoo.com', '2018-10-02', 0, '', 'Mahasiswa'),
(355, 'rahmat juang rizki syah putra', '', '', 'L', '26216001', '3eb05', 'akuntansi', 'ekonomi', 'depok', '082288024118', 'gasan gaang kec.batang gasan kab. padang pariaman sumatra barat', '1998-02-07', 'jalan baturaden 1 no.154 rawa lumbu , bekasi', 'bekasi', 'rahmatjuang98@gmail.com', '2018-10-02', 0, '', 'Mahasiswa'),
(356, 'IRFANSYAH PUTRA TARIGAN', '', '', 'L', '23216586', '3EB05', 'S1-Akuntansi', 'Ekonomi', 'bogor', '082214169985', 'Jakarta', '1998-10-30', 'jln langgar perum delivina b2 no2', 'jakarta', 'irfantarigan31@gmail.com', '2018-10-02', 0, '', 'Mahasiswa'),
(357, 'sarahnilaayu', '', '', 'P', '26215396', '4eb15', 'Akuntansi', 'Ekonomi', 'Salemba', '089618200041', 'Batang , Jawa Tengah', '1997-10-24', 'Jl. Mangga Besar Raya No. 91 D, Jakarta Barat', 'Jakarta Barat', 'Sarahnilaayu1@gmail.com', '2018-10-02', 0, '', 'Mahasiswa'),
(358, 'Reza Pratama', '', '', 'L', '25215842', '4EB14', 'Akuntansi', 'Ekonomi', 'Depok', '081210760477', 'Jakarta', '1997-02-28', 'Jl. Petamburan 1 rt7/2 no. 13', 'Jakarta', 'rezajone28@gmail.com', '2018-10-03', 0, '', 'Mahasiswa'),
(359, 'Tika Kartika', '', '', 'P', '26215897', '4EB17', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081218881802', 'Jakarta', '1997-08-06', 'Jalan Pancawarga 1 Rt 002/02 No:8 Cipinang Besar Selatan, Jatinegara', 'Jakarta ', 'tikakartika0608@gmail.com', '2018-10-04', 0, '', 'Mahasiswa'),
(360, 'Novendra Shaleh', '', '', 'L', '25216485', '3EB05', 'Akuntansi', 'Ekonomi', 'Universitas Gunadarma', 'Bekasi', 'Jakarta', '1997-11-30', 'komp. sapta pesona jl.manggis d3/5 ', '', 'nshaleh49@gmail.com', '2018-10-04', 0, '', 'Mahasiswa'),
(361, 'Silpi Intan Suseno', '', '', 'P', '26215568', '4EB15', 'Akuntansi / S1', 'Ekonomi', 'Salemba', '0895330082410', 'Kuningan', '1997-05-07', 'Jl. Gg betet dalam rt001/rw06 no 4 kec. Tambora Kel.Tambora Jakarta Barat', 'Jakarta', 'Sintansuseno@gmail.com', '2018-10-04', 0, '', 'Mahasiswa'),
(362, 'Sri sulistyaningsih', '', '', 'P', '27215794', '4eb15', 'Akuntansi', 'Ekonomi', 'Salemba', '0895330082395', 'Pemalang', '1997-08-26', 'Jl. Komplek Dpr 2 (Gg buntu nurul iman) Kebon jeruk', 'Kebon jeruk, Jakarta Barat', 'sri26sulistyaningsih@gmail.com', '2018-10-04', 0, '', 'Mahasiswa'),
(415, 'Widi Fadila Wiranti Priyono', '', '', 'P', '27216625', '3EB17', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085710114961', 'Bekasi', '1998-07-17', 'Jl. Cendana Raya No. 78 Jakapermai, Jakasampurna, Bekasi Barat', 'Bekasi', 'widi.fadila@gmail.com', '2019-04-23', 0, '', 'Mahasiswa'),
(364, 'Adinda Larasati', '', '', 'P', '20215147', '4EB17', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081284302649', 'Jakarta', '0000-00-00', 'Grand Residence City, Blok RR 242', 'Bekasi', 'adindalarst10@gmail.com', '2018-10-05', 0, '', 'Mahasiswa'),
(395, 'Shabiel fitri wandiny', '', '', 'P', '26215500', '4eb11', 'Akuntansi', 'Ekonomi', 'Kampus Depok', '081274428361', 'Malang', '1997-07-09', 'Jalan pinang 1 nomor 5, pondok cina, beji, depok', 'Depok', 'Wandinysha@gmail.com', '2019-03-07', 0, '', 'Mahasiswa'),
(396, 'Betta Anggraini', '', '', 'P', '21216404', '3EB11', 'Akuntansi', 'Ekonomi', 'Depok', '081367366634', 'Hidup Baru', '1999-01-05', 'Jalan pinang 1 no pondok cina beji depok', 'Depok', 'bettaanggraini922@gmail.com', '2019-03-07', 0, '', 'Mahasiswa'),
(397, 'Lena Saufika Fitriyani', '', '', 'P', '28216229', '3EB11', 'Akuntansi', 'Ekonomi', 'Depok', '081221540814', 'Cirebon', '1998-01-19', 'Jl. Merpati no 264 RT:20 RW:04 Kecamatan Karangampel', 'Indramayu', 'lenasaufika82gmail.com', '2019-03-07', 0, '', 'Mahasiswa'),
(398, 'Krisna Tegar Kurniawan', '', '', 'L', '23216940', '3EB06', 'Akuntansi', 'Ekonomi', 'Depok', '087833452485', 'Pemalang', '1998-06-18', 'Perumahan Kalibaru Permai', 'Depok', 'krisnategar18@gmail.com', '2019-03-09', 0, '', 'Mahasiswa'),
(399, 'Farraz Al Ghazy ', '', '', 'L', '22216680', '3EB06', 'Akuntansi', 'Ekonomi', 'Kelapa 2', '081905037139', 'Depok', '1998-04-19', 'Jl citrayuda 1 no 119 RT 03 RW 18', 'Depok', 'farrazcitoes@gmail.com', '2019-03-09', 0, '', 'Mahasiswa'),
(400, 'Ariyani Trikrismoaji', '', '', 'P', '21216090', '3EB18', 'Akuntansi', 'Ekonomi', 'Kalimalang', '082299642340', 'Jakarta', '1998-06-06', 'Jl. Kayu tinggi gang beringin 1 rt 01 rw 06 no. 10A, kecamatan cakung', 'Jakarta', 'ariyani.trikrismoaji98@gmail.com', '2019-03-12', 0, '', 'Mahasiswa'),
(401, 'Bagas praditya yunanda', '', '', 'L', '21215230', '4eb18', 'Akuntansi', 'Ekonomi', 'Kalimalang', '087787760236', 'Bekasi', '1997-08-17', 'Jalan sabut 1 b blok e6 no 12', 'Jakarta', 'Bagasyunanda25@gmail.com', '2019-03-14', 0, '', 'Mahasiswa'),
(402, 'Lola Vivi Febriyanti', '', '', 'P', '24216092', '3EB18', 'Akuntansi', 'Ekonomi', 'J1 Kalimalang', '081932885295', 'Jakarta', '1998-02-07', 'Jl. Warakas III gg.12 no.19 RT006/011', 'Jakarta Utara', 'lolavife@gmail.com', '2019-03-15', 0, '', 'Mahasiswa'),
(403, 'Galih Abimanyu', '', '', 'L', '22216955', '3EB20', 'Akuntansi', 'Ekonomi', 'Kalimalang', '085774941495', 'Jakarta', '1999-07-12', 'Pondok Ungu Permai Blok HH7/1', 'Bekasi', 'Galih_abimanyu99@Yahoo.co.id', '2019-03-15', 0, '', 'Mahasiswa'),
(404, 'Rahmania Maulida', '', '', 'P', '25215564', '4EB13', 'Akuntansi', 'Ekonomi', 'Depok', '085884496619', 'Jakarta', '1997-07-06', 'Jalan Luar Batang 3 RT 009 RW 002 No 5, Penjaringan Jakarta Utara 14440', 'Kota Jakarta Utara', 'rahmania978@gmail.com', '2019-03-19', 0, '', 'Mahasiswa'),
(405, 'Abkor Nasution', '', '', 'L', '2B217850', 'TEB17', 'Akuntansi', 'Ekonomi', '', '083131300920', 'Pematang Siantar', '1993-04-09', 'Jl. Ika Bina, Kel. Sioldengan, Kec. Rantau Selatan, Kab. Labuhanbatu, Prov. Sumatera Utara', 'Rantauprapat', 'abkor.nasution@gmail.com', '2019-03-22', 0, '', 'Mahasiswa'),
(406, 'Diana Kartika Sari', '', '', 'P', '2B217036', '5EB15', 'S1 Akuntansi', 'Ekonomi', 'Depok', '08568611746', 'Lampung', '1996-12-20', 'Jl. Bungur Kp. Babakan RT 006/002 No. 28, Sukatani, Tapos', 'Depok', 'sr.dianakartika@gmail.com', '2019-03-25', 0, '', 'Mahasiswa'),
(407, 'Rico Rivaldi Dwi Pratama', '', '', 'L', '2B217856', 'TEB17', 'AKUNTANSI', 'EKONOMI', '', '085655556277', 'Blitar', '1996-06-03', 'Jabon RT003/ RW009 Kec. Selopuro Kab. Blitar', 'Blitar', 'ricordp11@gmail.com', '2019-03-25', 0, '', 'Mahasiswa'),
(408, 'Anita Karolina', '', '', 'P', '2B217823', 'TEB17', 'AKUNTANSI', 'EKONOMI', '', '081219976465', 'Bekasi', '1994-09-05', 'Kp. Cibuntu RT001/RW03 Ds. Cibuntu Kec. Cibitung Kab. Bekasi', 'Bekasi', 'anitacarolina6465@gmail.com', '2019-03-25', 0, '', 'Mahasiswa'),
(409, 'FEGYANA CITRA MANIK', '', '', 'P', '27215627', '4EB16', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '081285631776', 'JAKARTA', '1996-02-06', 'JLN. CIPINANG EMPANG BARAT NO. 01 RT002/RW011 CIPINANG, PULOGADUNG.', 'JAKARTA TIMUR', 'fgyncitra@gmail.com', '2019-03-27', 0, '', 'Mahasiswa'),
(416, 'MOHAMMAD HARYO NUGROHO', '', '', 'L', '24216499', '3EB20', 'S1 AKUNTANSI', 'ILMU EKONOMI ', 'KALIMALANG', '082261078376', 'PAMEKASAN', '1997-09-22', 'JL. JATI AGUNG 1 BLOK C1/10', 'BEKASI', 'haryonugroho220997@gmail.com', '2019-04-23', 0, '', 'Mahasiswa'),
(417, 'Nanda miftahul rizki', '', '', 'L', '26213326', '6eb26', 'Akuntansi', 'Ekonomi', 'Kalimalang', '089608679015', 'Solok ', '1995-10-15', 'Jl.mexico blok ek no 12 permu jatisari permai kec jatiasih', 'Bekasi', 'Nanda.1519995@gmail.com', '2019-04-25', 0, '', 'Mahasiswa'),
(418, 'Enjelin Martinse Nianugrani', '', '', 'P', '22216340', '3EB19', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081214598695', 'Makale', '1989-03-13', 'Jl. Bongas V Blok E8 No.13 Jatiwaringin Asri', 'Bekasi', 'nia.nugrani@gmail.com', '2019-04-25', 0, '', 'Mahasiswa'),
(419, 'Prilia Annisa Ayuningtyas', '', '', 'P', '28214515', '', 'Akuntansi', 'Ekonomi', 'Depok', '081584566316', 'Jakarta', '1996-03-12', 'Jl. Damai 3a no. 15 Cipete Utara, Kebayoran Baru', 'Jakarta Selatan', 'prilia.annisa@gmail.com', '2019-05-02', 0, '', 'Mahasiswa'),
(420, 'Aulia Adawiyah', '', '', 'P', '21216190', '3EB09', 'Akuntansi', 'Ekonomi', 'Depok', '089675792009', 'Jakarta', '1998-09-02', 'Kp. Grogol Rt. 06 Rw. 01 No. 41 Kec. Limo', 'Depok', 'auliaadwyhh29@gmail.com', '2019-05-05', 0, '', 'Mahasiswa');
INSERT INTO `data_register` (`id`, `nama_lengkap`, `nama_depan`, `nama_belakang`, `jk`, `npm`, `kelas`, `jurusan`, `fakultas`, `domisili`, `no_hp`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `kota`, `email`, `tgl_register`, `id_gelombang`, `gambar`, `status`) VALUES
(421, 'Andrew Yuansah', '', '', 'L', '20215739', '4EB16', 'Akuntansi', 'Ekonomi', 'Depok', '085718995352', 'Bogor', '1996-07-25', 'KP Pasar RT 002 RW 001 No 73 Cileungsi Bogor', 'Bogor', 'andrewyuansah@yahoo.co.id', '2019-05-06', 0, '', 'Mahasiswa'),
(422, 'Anisah Haura Tsamarah', 'Anisah', 'Haura Tsamarah', 'P', '20216916', '3eb14', 'Akuntansi', 'Ekonomi', 'Depok', '081282084385', 'Jakarta', '1998-08-07', 'Taman anyelir 3 blok j3 no 2 rt 06/11 kalimulya,  cilodong', 'Depok', 'hauraanisah@gmail.com', '2019-05-08', 0, '', ''),
(423, 'Intan Rahayu Rinalda', '', '', 'P', '23216547', '3EB11', 'Akuntansi', 'Ekonomi', 'Depok', '085810691068', '', '1998-07-08', 'Jalan Al-Mukhlisin Rt. 04 Rw. 06 Nomor 41, Bedahan, Sawangan', 'Depok', 'rahayuintanosh94@gmail.com', '2019-05-08', 0, '', 'Mahasiswa'),
(425, 'Tiberius Joenathan', '', '', 'L', '27216386', '3EB09', 'Akuntansi', 'Ekonomi', 'Depok', '088223847484', 'Jakarta', '1998-07-23', 'Cluster Melati Loka, Blok H 12 / No. 29. Graha Raya Bintaro', 'Tangerang Selatan', 'joenathan2307@gmail.com', '2019-06-13', 0, '', 'Mahasiswa'),
(426, 'Ratna palupi', '', '', 'P', '26216102', '3EB09', 'Akuntansi', 'Ekonomi', 'Depok', '087878104243', 'Gunung katon', '1998-05-02', 'Griya ardinie jl.salak no.9', 'Depok', 'Ratnapalupi355@gmail.com', '2019-06-17', 0, '', 'Mahasiswa'),
(427, 'Novi Octaviyanti', '', '', 'P', '25216489', '3EB09', 'Akuntansi', 'Ekonomi', 'Depok', '0895371529415', 'Jakarta', '1997-10-10', 'Jl. Haji Sirun No.65 RT.007/ RW.01 Ceger, Cipayung, Jakarta Timur', 'DKI Jakarta', 'noviocta10@gmail.com', '2019-06-18', 0, '', 'Mahasiswa'),
(428, 'Cicilya Dhana Monica', '', '', 'P', '11216614', '3EA09', 'Manajemen', 'Ekonomi', 'Depok', '085770925873', 'Jakarta ', '1998-10-04', 'Villa nusa indah 5 cluster rajawali sg 8 no 9', 'Kabupaten bogor', 'Cicilyadanamon01@gmail.com', '2019-06-19', 0, '', 'Mahasiswa'),
(429, 'Diaz Rahma Adesti', '', '', 'P', '11216985', '3EA09', 'Manajemen / S1', 'Ekonomi', 'Depok', '081322609286', 'Depok', '1999-02-20', 'Jl Ir H Juanda Raya Kp.Bojong Rt.04 Rw.026 No.08 Kel.Baktijaya Kec.Sukmajaya', 'Depok', 'diazrahmaadesti@gmail.com', '2019-06-19', 0, '', 'Mahasiswa'),
(430, 'Goldviyanti', '', '', 'P', '23216083', '3EB12', 'Akuntansi', 'Ekonomi', 'Depok', '087741306128', 'Bogor', '1998-11-26', 'Perumahan duta kencana2 jl.duta pelita b2 no.12', 'Bogor', 'Goldviyanti26@gmail.com', '2019-07-01', 0, '', 'Mahasiswa'),
(431, 'Yudha Diva Fadhilah', '', '', 'L', '27216820', '3EB14', 'Akuntansi', 'Ekonomi', 'Depok', '?085100261275?', 'Tangerang', '1998-09-16', 'Jl gurame III RT.05/rw.01 no.08 bambu apus pamulang', 'Tangerang', 'Yudha_diva@yahoo.co.id', '2019-07-01', 0, '', 'Mahasiswa'),
(432, 'Inggit Hanum Pratiwi', '', '', 'P', '23216523', '3EB14', 'Akuntansi', 'Ekonomi', 'Depok', '082258534949', 'Pekalongan', '1998-03-25', 'Komp. Atsiri Permai, Jl. Kesturi I No.22 RT.004/012, Citayam, Bojonggede.', 'Bogor', 'inggithanum@gmail.com', '2019-07-01', 0, '', 'Mahasiswa'),
(433, 'NOVITA BR NABABAN', '', '', 'P', '25216505', '3EB12', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '082310129779 / 089668434534', 'KUNINGAN ', '1998-09-11', 'PONDOK PELANGI 2 JL LEBAK NO 139 RT/RW 005/09 KP. KELAPA DUA KEL. TUGU KEC.CIMANGGIS', 'DEPOK', 'novitanababan92@gmail.com', '2019-07-01', 0, '', 'Mahasiswa'),
(434, 'ANUGRAH RIMBIT WAHYUSASANI', '', '', 'P', '20216975 ', '3EB02', 'AKUNTANSI ', 'EKONOMI ', 'DEPOK', '087809737483', 'JAKARTA', '1998-05-03', 'DASANA INDAH BLOK UE 15 NO 12 BOJONG NANGKA, KELAPA DUA', 'TANGERANG ', 'Arwahyusasani@gmail.com', '2019-07-01', 0, '', 'Mahasiswa'),
(435, 'Vincensia Leoni Oktavia', '', '', 'P', '27216547', '3EB12', 'Akuntansi', 'Ekonomi', 'Depok', '081311176125', 'Bogor', '1998-10-30', 'Jl Raya Jampang Gardu, Kp.Kandang RT02/01 No.137', 'Kabupaten Bogor', 'vincensialeoni@gmail.com', '2019-07-01', 0, '', 'Mahasiswa'),
(436, 'Tubagus Badruzaman', '', '', 'L', '27216457', '3EB14', 'Akuntansi', 'Ekonomi', 'Depok', '+6287884022112', 'Serang', '1998-11-05', 'Jl. Semang Raya No. 78, Perumahan Krakatau Steel', 'Cilegon', 'badruzamantubagus@gmail.com', '2019-07-01', 0, '', 'Mahasiswa'),
(437, 'ANISA AULIA TOHA', '', '', 'P', '20216901', '3EB14', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '081386559796', 'Galang', '1999-03-13', 'Jl. Kenanga II, Rt 08 RW 02 No. 88, kalisari. Pasar rebo jakarta timur', 'jakarta', 'anisatoha03@gmail.com', '2019-07-02', 0, '', 'Mahasiswa'),
(438, 'Dioni Pasadana', '', '', 'L', '22216128', '3EB12', 'Akuntansi', 'Ekonomi', 'Depok', '082268975005', 'Solok', '1997-05-16', 'Tebet, jakarta selatan', 'Jakarta', 'Dpasadana@gmail.com', '2019-07-02', 0, '', 'Mahasiswa'),
(439, 'Rizqi Laila Fauziah', '', '', 'P', '26216631', '3EB07', 'Akuntansi', 'Ekonomi', 'Depok', '082297430768', 'Jakarta', '1998-08-19', 'Jl. Pintu 2 TMII Gg. Sawo No. 74 Rt 07 / Rw 04, Lubang Buaya, Jakarta', 'Jakarta Timur', 'fauziahrizqilaila@gmail.com', '2019-07-02', 0, '', 'Mahasiswa'),
(440, 'Tiara Ary Gerindra', '', '', 'P', '27216379', '3EB01', 'Akuntansi', 'Ekonomi', 'Depok', '082299741247', 'Jakarta', '1998-07-18', 'Jl. Peternakan 3, no 3, RT 01/ RW02, Pondok Ranggon, Cipayung', 'Jakarta Timur', 'tiara.ary15@yahoo.com', '2019-07-03', 0, '', 'Mahasiswa'),
(441, 'Gita wahyu priyantoro', '', '', 'L', '23216076', '3EB13', 'Akuntansi', 'Ekonomi', 'Depok', '081285716581', 'Jakarta', '1998-05-21', 'Jl. Bambu hitam rt/rw 04/01 kel bambu apus kec cipayung jakarta timur', 'DKI Jakarta', 'tmswahyu@gmail.com', '2019-07-03', 0, '', 'Mahasiswa'),
(442, 'Faisal Fawwaz Athallah', '', '', 'L', '22216518', '3EB09', 'Akuntansi', 'Ekonomi', 'Depok', '081382050369', 'Jakarta', '1998-07-12', 'Jl. Griya Manunggal 1F, No 75 ', 'Jakarta', 'faisalfawwazathallah@gmail.com', '2019-07-03', 0, '', 'Mahasiswa'),
(443, 'Rizky Ramadhan', '', '', 'L', '26216616', '3eb09', 'Akutansi', 'Ekonomi', 'Depok', '083899952932', 'Jakarta', '1998-01-10', 'Jalan kemanggisan pulo gang c3 no.46 rt006/009', 'Jakarta', 'Rizky98r@gmail.com', '2019-07-03', 0, '', 'Mahasiswa'),
(444, 'Rakha Panji Mahardika', '', '', 'L', '26216033', '3EB04', 'Akuntansi', 'Ekonomi', 'Depok', '081949061777', 'Jakarta', '0000-00-00', 'Jl. SMP 222 NO.33 RT.009/002, CEGER, CIPAYUNG', 'JAKARTA TIMUR', 'rakapanji@gmail.com', '2019-07-03', 0, '', 'Mahasiswa'),
(445, 'Zamal Ludin', '', '', 'L', '27216917', '3EB14', 'Akuntansi', 'Ekonomi', 'Depok', '083853188999', 'Jakarta', '1998-04-04', 'Jln. Raya Bambu Apus, Cipayung', 'Jakarta Timur', 'djay.zamal@gmail.com', '2019-07-03', 0, '', 'Mahasiswa'),
(446, 'REGINA OKTAVIANA SAVIO', '', '', 'P', '26216145', '3EB02', 'AKUNTANSI ', 'EKONOMI ', 'DEPOK', '083898301767', 'JAKARTA', '1998-10-22', 'JALAN PAHLAWAN,  PERUMAHAN BUNGA RAYA BLOK C NO. 25. DUREN JAYA,  BEKASI TIMUR', 'BEKASI', 'Reginasavio8@gmail.com', '2019-07-04', 0, '', 'Mahasiswa'),
(447, 'Nizma Fidyatul Ilmi', '', '', 'P', '25216465', '3EB12', 'Akuntansi', 'Ekonomi', 'Depok ', '089501179985', 'Cirebon', '1997-11-05', 'Jl stasiun no 28 rt01/03 Ds karangtengah Kec karangsembung Kab cirebon ', 'Cirebon', 'nizmafidyatulilmi@gmail.com', '2019-07-04', 0, '', 'Mahasiswa'),
(448, 'FARAH FARID JESSAR', '', '', 'P', '22216623', '3EB14', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '083892973344', 'BOGOR', '1995-11-12', '', '', 'farahfjessar@gmail.com', '2019-07-05', 0, '', 'Mahasiswa'),
(449, 'DWI CAHYA ANGGRAINI', '', '', 'P', '22216178', '3EB14', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '089661773759', 'BOGOR', '1998-01-12', 'KP. BABAKAN ,KEC. TAPOS , KEL. SUKA TANI DEPOK, JL DONGKAL , RT 4 RW 8 NO. D4', 'DEPOK', '12dwicahya@gmail.com', '2019-07-05', 0, '', 'Mahasiswa'),
(450, 'Angelina Panjaitan', '', '', 'P', '20216840', '3EB02', 'Akuntansi / S1', 'Ekonomi', 'Depok', '082113620845', 'Padangsidimpuan', '1998-06-17', 'Jl. Kartini', 'Padangsidimpuan', 'angelinapanjaitan06@gmail.com', '2019-07-05', 0, '', 'Mahasiswa'),
(451, 'DENNISA ESMERALDA LAURENS', '', '', 'P', '21216821', '3EB14', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '085921677193', 'DEPOK', '1998-01-19', 'JL MARGONDA NO 8', 'DEPOK', 'dennisael19@gmail.com', '2019-07-05', 0, '', 'Mahasiswa'),
(452, 'Nadilla Rachmadani', '', '', 'P', '25216266', '3EB03', 'Akuntansi', 'Ekonomi', 'Depok', '081280286526 / 081380457544', 'Jakarta', '1999-01-06', 'Jl raya muchtar sawangan baru rt 03/001 no.29-30', 'Depok', 'nadillarachmadani31@gmail.com', '2019-07-11', 0, '', 'Mahasiswa'),
(453, 'Rista asri puspita', '', '', 'P', '26216504', '3eb03', 'Akuntansi', 'Ekonomi', 'Depok', '089665404158', 'Bogor', '1998-12-07', 'Kp. Momonot ds. Tlajung udik kec. Gunung Putri ', 'Bogor', 'Rista.asripuspita98@gmail.com', '2019-07-12', 0, '', 'Mahasiswa'),
(454, 'Pinka Rizki Putriandini', '', '', 'P', '25215346', '4EB23', 'Akuntansi', 'Ekonomi', 'Kalimalang', '081932335052', 'Jakarta', '1996-12-21', 'Komp. PU blok D 13', 'Jakarta Timur', 'pinkandini96@gmail.com', '2019-07-15', 0, '', 'Mahasiswa'),
(455, 'Rahmah Mauliza', '', '', 'P', '25216993', '3EB01', 'Akuntansi', 'Ekonomi', 'Kelapa Dua, Depok', '081311777545', '1998/07/06', '0000-00-00', 'Gudang Baru RT002/RW005, Cipedak, Jagakarsa', 'Jakarta Selatan', 'rahmahmauliza98@gmail.com', '2019-07-17', 0, '', 'Mahasiswa'),
(456, 'ERSA BITA DWINOVEMA', '', '', 'P', '22216381', '3EB01', 'AKUNTANSI', 'EKONOMI', 'Depok', '082125338288', 'JAKARTA', '1998-11-05', 'Perum Paspampres Jalan Cendrawasih 4 nomor 21 rt. 001/008', 'Bogor', 'ersabita98@gmail.com', '2019-07-17', 0, '', 'Mahasiswa'),
(457, 'Farisa Melatrakia Hardi ', '', '', 'P', '22216673', '3EB01', 'Akuntansi ', 'Ekonomi ', 'Depok', '082283769155', 'Bandung', '1998-05-14', 'Jl Agung Raya 2 Gg swadaya 2 no 55A ', 'Jakarta Selatan ', 'fmelatrakia@gmail.com', '2019-07-17', 0, '', 'Mahasiswa'),
(458, 'Risma Tasyia', '', '', 'P', '26216499', '3EB01', 'Akuntansi', 'Ekonomi', 'Depok', '081291411286', 'Jakarta', '1998-08-25', 'Jalan i Kebon Baru IV', 'Jakarta Selatan', 'Rismatasya84@gmail.com', '2019-07-17', 0, '', 'Mahasiswa'),
(459, 'EKA SEPTIANI PRAYUDI', '', '', 'P', '22216277', '3EB01', 'AKUNTANSI', 'EKONOMI', 'DEPOK', '087882183738', 'SERANG', '1997-09-09', 'Jalan Margonda Raya No. 26 RT 4 Rw 7 Pondok Cina, Beji', 'DEPOK', 'septianiprayudi@gmail.com', '2019-07-17', 0, '', 'Mahasiswa'),
(460, 'Jupita Mayidi', '', '', 'P', '23216794', '3EB01', 'Akuntansi', 'Ekonomi', 'Depok', '081511556323', 'Tangerang', '1998-06-29', 'Perum Griya lestari Permai C.02 No.02 RT.01 RW.09', 'Tangerang', 'Jupitamayidi54@gmail.com', '2019-07-17', 0, '', 'Mahasiswa'),
(461, 'Sherly indria maharani', '', '', 'P', '26215535', '4EB88', 'Akuntansi', 'Ekonomi', 'Simatupang', '087788330864', 'Bogor ', '1997-09-25', 'Jalan pekapuran setya bhakti rt 02 rw 06 no 82 ', 'Depok', 'sherlyyindria@gmail.com', '2019-07-17', 0, '', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `data_soal`
--

CREATE TABLE `data_soal` (
  `id` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `id_tr_ujian` int(6) NOT NULL,
  `id_kategori` int(255) NOT NULL,
  `bobot` int(2) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `soal` longtext NOT NULL,
  `opsi_a` longtext,
  `opsi_b` longtext,
  `opsi_c` longtext,
  `opsi_d` longtext,
  `opsi_e` longtext,
  `jawaban` varchar(5) NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_soal`
--

INSERT INTO `data_soal` (`id`, `id_user`, `id_tr_ujian`, `id_kategori`, `bobot`, `gambar`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`, `tgl_input`) VALUES
(66, 0, 1, 1, 0, '', 'Kewajiban lain untuk setiap wajib pajak adalah :', 'Mengisi lengkap, jelas, benar dan menandatangani sendiri pemberitahuan', 'Melakukan pelunasan dan pembayaran pajak yang di tentukan undang-undang', 'Menyelenggarakan pembukuan dan pencatatan-pencatatan', 'Semua benar', NULL, 'D', '0000-00-00 00:00:00'),
(67, 0, 1, 1, 0, '', 'Pajak yang harus dibayar suatu saat, dalam masa pajak, dalam tahun pajak, dan dalam bagian tahun pajak sesuai dengan ketentuan peraturan perundang-undangan perpajakan disebut….', 'Masa pajak', 'Tahun pajak', 'Surat pemberitahuan masa', 'Pajak yang terutang', NULL, 'D', '0000-00-00 00:00:00'),
(68, 0, 1, 1, 0, '', 'Hal yang bukan menjadi pedoman dalam penghapusan NPWP adalah…', 'WPOP meninggal dunia', 'BUT yang karena suatu hal kehilangan statusnya', 'WP badan telah dibubarkan secara legal', 'Warisan sudah dibagi setelah subjek pajak masih dalam suatu ikatan harta tertentu', NULL, 'D', '0000-00-00 00:00:00'),
(69, 0, 1, 1, 0, '', 'Jenis ketetapan pajak yang diberikan imbalan bunga sehubungan dengan keputusan keberatan dan putusan banding adalah…', 'SKPKBT', 'SKPLB', 'SKPN', 'Semua benar ', NULL, 'D', '0000-00-00 00:00:00'),
(70, 0, 1, 1, 0, '', 'Kebijakan amnesti pajak ditunjukan dengan mempertimbangkan hutang pajak disebut…', 'Coverage ', 'Eligible', 'Duration', 'Incentives ', NULL, 'D', '0000-00-00 00:00:00'),
(71, 0, 1, 4, 0, '', 'Tempat penyetoran PPN adalah, kecuali :', 'Bank Pemerintah', 'Bank Pembangunan Daerah', 'Kantor Pos dan Giro', 'Kantor Pajak', NULL, 'D', '0000-00-00 00:00:00'),
(72, 0, 1, 4, 0, '', 'Pajak Masukan berikut ini tidak dapat dikreditkan terhadap Pajak Keluaran Pajak Pertambahan Nilai, kecuali ', 'Pajak Masukan yang dibayar sebelum pengusaha dikukuhkan menjadi Pengusaha Kena Pajak', 'Pajak Masukan atas pembelian Barang Kena Pajak yang tidak ada hubungannya langsung dengan proses menghasilkan Barang Kena Pajak', 'Pajak Masukan atas pembelian dan pemeliharaan kendaraan berupa mobil sedan', 'Pajak Masukan atas pembelian Barang Kena Pajak yang berkaitan dengan proses produksi ', NULL, 'D', '0000-00-00 00:00:00'),
(73, 0, 1, 4, 0, '', 'Yang bukan merupakan  objek PPN adalah :', 'Impor BKP', 'Ekspor BKP', 'Kegiatan membangun sendiri oleh orang pribadi tidak dalam usaha/pekerjaannya', 'Impor alat perang yang dilakukan oleh pemerintah', NULL, 'D', '0000-00-00 00:00:00'),
(74, 0, 1, 5, 0, '', 'Surat Pemberitahuan Objek Pajak (SPOP) menurut UU Pajak Bumi dan Bangunan adalah ', 'Surat yang digunakan oleh Direktorat Jendral Pajak untuk melaporkan data objek pajak menurut ketentuan perundang-undangan', 'Surat yang digunakan oleh Direktorat Jendral Pajak untuk memberitahukan besarnya pajak terutang kepada wajib pajak', 'Surat yang digunakan oleh wajib pajak untuk memberitahukan besarnya pajak terutang kepada wajib pajak', 'Surat yang digunakan oleh wajib pajak untuk melaporkan data objek pajak menurut ketentuan perundang-undangan', NULL, 'D', '0000-00-00 00:00:00'),
(75, 0, 1, 5, 0, '', 'Bea Perolehan Hak atas Tanah dan Bangunan dikenakan terhadap Peralihan hak atas tanah dan bangunan berikut, kecuali ', 'Hibah', 'Lelang', 'Jual Beli', 'Wakaf', NULL, 'D', '0000-00-00 00:00:00'),
(76, 0, 1, 3, 0, '', 'PT. Dewani yang telah dikukuhkan sebagai pengusaha kena pajak pada tanggal 10 Juni 2014 menyerahkan barang kena pajak dengan harga jual Rp. 80.000.000 tetapi baru menerbitkan faktur pajak tertanggal 5 Juli 2014. Atas keterlambatan ini dapat diterbitkan…', 'STP dengan sanksi administrasi 2% x Rp. 80.000.000', 'STP dengan sanksi administrasi 2% x 1 x Rp. 8.000.', 'SKPKB dengan sanksi administrasi 2% x Rp. 80.000.000', 'd. SKPKB dengan sanksi administrasi 2% x 1 x Rp. 8.000.000', NULL, 'D', '0000-00-00 00:00:00'),
(77, 0, 1, 1, 0, '', 'Yang bukan merupakan fungsi STP adalah :', 'Koreksi atas jumlah pajak yang terutang menurut SPT Wajib Pajak', 'Sarana untuk pengenaan sanksi berupa bunga atau denda', 'Sarana untuk penetapan dasar pengenaan PTKP  ', 'Sarana untuk menagih pajak', NULL, 'C', '0000-00-00 00:00:00'),
(78, 0, 1, 1, 0, '', 'Berikut adalah yang termasuk dalam pengertian penyerahan Barang Kena Pajak, kecuali :', 'Penyerahan hak atas Barang Kena Pajak karena suatu perjanjian', 'Pemakaian sendiri dan pemberian cuma-cuma', 'Penyerahan Barang Kena Pajak untuk jaminan utang-piutang ', 'Penyerahan Barang Kena Pajak secara Konsinyasi', NULL, 'C', '0000-00-00 00:00:00'),
(79, 0, 1, 1, 0, '', 'Berikut ini adalah ciri-ciri dari pengertian pajak, kecuali :', 'Dapat dipaksakan ', 'Berdasarkan Undang-undang', 'Ada jasa timbal balik langsung      ', 'Untuk membiayai pengeluaran pemerintah', NULL, 'C', '0000-00-00 00:00:00'),
(80, 0, 1, 1, 0, '', 'Catatan secara rinci dan jelas, yang dibuat oleh para auditor pajak mengenai prosedur pemeriksaan yang ditempuh, data, keterangan, dan bukti yang dikumpulkan, pengujian yang dilakukan, dan kesimpulan yang diambil sehubungan dengan pelaksanaan pemeriksaan disebut….', 'Pemeriksaan pajak', 'Pemeriksaan lapangan', 'Kertas kerja pemeriksaan ', 'Surat pemberitahuan hasil pemeriksaan', NULL, 'C', '0000-00-00 00:00:00'),
(81, 0, 1, 1, 0, '', 'Putusan pengadilan pajak dapat berupa, kecuali….', 'Menolak', 'Mengabulkan sebagian', 'Dapat diterima ', 'Menambah pajak', NULL, 'C', '0000-00-00 00:00:00'),
(82, 0, 1, 4, 0, '', 'Yang dimaksud dengan Faktur Pajak Gabungan adalah', 'Gabungan Faktur pajak Biasa dengan Standar', 'Faktur Pajak Sederhana yang memuat lebih dari satu transaksi dalam satu bulan takwim untuk pelanggan yang sama.', 'Faktur Pajak Standar yang memuat lebih dari satu transaksi dalam satu bulan takwim untuk pelanggan yang sama.', 'Semua transaksi digabung dalam satu faktur pajak.', NULL, 'C', '0000-00-00 00:00:00'),
(83, 0, 1, 4, 0, '', 'Yang termasuk dalam pengertian penyerahan dalam PPN adalah :', 'Penyerahan Barang Kena Pajak karena penjaminan utang piutang', 'Penyerahan Barang Kena Pajak  kepada makelar', 'Penyerahan Barang Kena Pajak secara konsinyasi', 'Penyerahan Barang Kena Pajak kepada Bank', NULL, 'C', '0000-00-00 00:00:00'),
(84, 0, 1, 4, 0, '', 'Atas impor BKP yang dibebaskan dari pengenaan PPN adalah, kecuali  ', 'Impor buku-buku pelajaran', 'Impor pesawat udara dan suku cadang serta alat keselamatan penerbangan', 'Impor barang modal ', 'Impor Senjata oleh TNI', NULL, 'C', '0000-00-00 00:00:00'),
(85, 0, 1, 4, 0, '', 'Pajak Pertambahan Nilai dihitung berdasarkan Dasar Pengenaan Pajaknya. Berikut ini adalah merupakan Dasar Pengenaan Pajak dalam PPN, kecuali ', 'Harga jual ', 'Nilai Penggantian', 'Harga Taksiran', 'Nilai Lain', NULL, 'C', '0000-00-00 00:00:00'),
(86, 0, 1, 4, 0, '', 'PT DATA melakukan penjualan BKP ke Pemda DEPOK  senilai Rp 100 juta. Penyerahan barang dilakukan tanggal 17 Oktober 2013. Penagihan disampaikan tanggal 22 Desember 2013, sedangkan pembayaran diterima tanggal 21 Januari 2014. Kapan Faktur Pajak harus dibuat ?', '21 Januari 2014', ' 30 November 2013', ' 22 Desember 2013', '17 Oktober 2013', NULL, 'C', '0000-00-00 00:00:00'),
(87, 0, 1, 4, 0, '', 'Dasar Pengenaan PPN untuk kegiatan membangun sendiri bukan dalam lingkungan perusahaan atau pekerjaan adalah sebesar ', '10 % dari seluruh biaya yang dikeluarkan', '15% dari dasar pengenaan pajak', '40% dari seluruh biaya yang dikeluarkan', '50% dari biaya pembangunan', NULL, 'C', '0000-00-00 00:00:00'),
(88, 0, 1, 4, 0, '', 'Dokumen-dokumen yang dibutuhkan dalam mekanisme PPN dan PPnBM adalah, kecuali ', 'Faktur pajak', 'Nota Retur', 'Surat permohonan restitusi', 'Surat Setoran Pajak (SSP)', NULL, 'C', '0000-00-00 00:00:00'),
(89, 0, 1, 5, 0, '', 'Jumlah harga jual, atau Penggantian atau Nilai Impor atau Nilai Ekspor atau Nilai Lain yang ditetapkan dengan Keputusan Menteri Keuangan yang dapat dipakai sebagai dasar untuk menghitung pajak terutang, disebut ', 'Nilai Jual Objek Pajak', 'NilaiJual Objek Pajak Tidak Kena Pajak ', 'Dasar Pengenaan Pajak ', 'Nilai Jual Kena Pajak', NULL, 'C', '0000-00-00 00:00:00'),
(90, 0, 1, 1, 0, '', 'Pengenaan tarif pajak pasal 17, pemungutan pajak penghasilan sebesar 15% berada pada :', 'Lapis 1', 'Lapis 2', 'Lapis 3', 'Lapis 4', NULL, 'B', '0000-00-00 00:00:00'),
(91, 0, 1, 1, 0, '', 'Setiap wajib pajak mempunyai kewajiban sbb, kecuali ', 'Mengambil sendiri blanko surat pemberitahuan dan perpajakan lain', 'Mengajukan permohonan penundaan penyampaian surat pemberitahuan', 'Menghitung menetapkan sendiri jumlah pajak terutang  menurut ketentuan', 'Mendaftarkan diri dan meminta NPWP', NULL, 'B', '0000-00-00 00:00:00'),
(92, 0, 1, 1, 0, '', 'Navorderings aauslag merupakan kesamaan dari….', 'Surat ketetapan pajak tambahan', 'Surat ketetapan tagihan susulan ', 'Surat ketetapan pajak primitive', 'Surat ketetapan pajak sementara', NULL, 'B', '0000-00-00 00:00:00'),
(93, 0, 1, 1, 0, '', 'Perhatikan pernyataan dibawah ini:\n• Melihat dan/ meminjam buku atau catatan\n• Mengakses dan/ mengunduh data yang dikelola secara elektronik\n• Memasuki dan memeriksa tempat atau ruang barang bergerak atau tidak bergerak yang terindikasi digunakan untuk menyimpan dokumen\n• Melakukan penyegelan \nPernyataan diatas merupakan…\n', 'Hak wajib pajak dalam pemeriksaan pajak', 'Kewenangan pemeriksaan pajak ', 'Kewajiban pemeriksaan pajak', 'Standar pemeriksaan pajak', NULL, 'B', '0000-00-00 00:00:00'),
(94, 0, 1, 4, 0, '', 'Berikut ini yang bukan merupakan kewajiban Pengusaha Kena Pajak adalah :\n', 'Mendaftarkan dan melaporkan usahanya', 'Merestitusi pajak setiap masa pajak', 'Membuat faktur pajak', 'Memungut dan menyetorkan PPN', NULL, 'B', '0000-00-00 00:00:00'),
(95, 0, 1, 5, 0, '', 'PT. Spektra mendapatkan lelang penjualan tanah dan bangunan di Bandung, dengan harga sesuai peraturan lelang senilai Rp. 1.500.000.000 jika NJOP atas tanah dan bangunan tersebut sebesar Rp. 1.200.000.000 maka PPh atas pengalihan hak atas tanah dan bangunan tersebut adalah', '5% x Rp.1.200.000.000', '5% x Rp.1.500.000.000 ', '10% x Rp.1.200.000.000', '10% x Rp.1.500.000.000', NULL, 'B', '0000-00-00 00:00:00'),
(96, 0, 1, 5, 0, '', 'Hak untuk mengusahakan tanah yang dikuasai langsung oleh negara dalam jangka waktu sebagaimana yang telah ditentukan oleh perundang – undangan yang berlaku disebut sebagai hak', 'Hak Milik', 'Hak Guna Usaha', 'Hak Guna Bangunan', 'Hak Milik atas Satuan Rumah Susun', NULL, 'B', '0000-00-00 00:00:00'),
(97, 0, 1, 5, 0, '', 'Tarif Pajak yang dikenakan terhadap obyek Pajak Bumi dan Bangunan adalah sebesar ', '0.05', '0.005', '0.2', '0.4', NULL, 'B', '0000-00-00 00:00:00'),
(98, 0, 1, 22, 0, '', 'Atas pembelian alat kebersihan oleh bendaharawan sebesar Rp. 7.000.000 sudah termasuk PPN maka…', 'Terutang PPh pasal 22 sebesar 1,5% x Rp. 7.000.000', 'Terutang PPh pasal 22 sebesar 1,5% x Rp. 6.300.000 ', 'Terutang PPh pasal 22 sebesar 200% x 1,5% x Rp. 6.300.000', 'Tidak terutang PPh pasal 22 ', NULL, 'B', '0000-00-00 00:00:00'),
(99, 0, 1, 23, 0, '', 'Tn Ferdi mendapat penghasilan berupa bunga yang diterima dari deposito bank yang ditempatkan di luar negeri melalui bank BRI yang didirikan di Indonesia. Atas penghasilan bunga deposito yang diterima Tn. Ferdi maka… ', 'Terutang PPh pasal 26 ', 'Terutang PPh pasal 23 ', 'Terutang  PPh final', 'Tidak terutang PPh di dalam negeri ', NULL, 'B', '0000-00-00 00:00:00'),
(100, 0, 1, 1, 0, '', 'Suatu Jenis pajak yang secara ekonomis tidak boleh dilimpahkan beban pajaknya kepada pihak lain disebut ', 'Pajak Langsung', 'Pajak Tidak Langsung', 'Pajak Pusat ', 'Pajak Daerah', NULL, 'B', '0000-00-00 00:00:00'),
(101, 0, 1, 1, 0, '', 'Orang sebagai subjek pajak dalam negeri berhenti menjadi subjek pajak pada :', 'Saat ia meninggal dunia', 'Saat ia meninggalkan Indoneia untuk studi diluar negeri', 'Saat ia menjadi duta besar & berkuasa penuh di suatu negara', 'Semua benar ', NULL, 'A', '0000-00-00 00:00:00'),
(102, 0, 1, 1, 0, '', 'Jenis barang yang tidak dikenakan pajak adalah, kecuali :', 'Barang hasil pertanian yang diambil langsung dari sumbernya', 'Saham, obligasi, dan surat-surat berharga sejenisnya', 'Makanan dan minuman yang disajikan di hotel, restoran, rumah makan, warung, dan sejenisnya', 'Listik perumahan yang dayanya diatas 6600 watt', NULL, 'A', '0000-00-00 00:00:00'),
(103, 0, 1, 1, 0, '', 'Berdasarkan Pasal 11 UU No. 18 Tahun 2000 ditetapkan bahwa terutangnya pajak terjadi pada saat, kecuali :', 'Penyerahan BKP/JKP', 'Saat BKP tersebut masuk dalam daerah pabean', 'Saat pembayaran dalam hal pembayaran diterima sebelum penyerahan BKP atau JKP', 'Saat pelaporan Pajak', NULL, 'A', '0000-00-00 00:00:00'),
(104, 0, 1, 1, 0, '', 'Tn. Andreas membuat SPT tahunan PPh orang pribadi yang melakukan kegiatan usaha atau pekerjaan bebas, melaporkan dengan form SPT 1770. Maka batas waktu penyampaian pelaporan ke kantor pelayanan pajak adalah….', 'Tiga bulan setelah akhir tahun pajak ', 'Empat bulan setelah akhir tahun pajak', 'Tiga bulan setelah periode pembukuan', 'Empat bulan setelah periode pembukuan', NULL, 'A', '0000-00-00 00:00:00'),
(105, 0, 1, 4, 0, '', 'Pada bulan Januari 2014 Rudi  menyewa ruangan di hotel untuk acara resepsi pernikahannya. Atas sewa tersebut:', 'Terutang PPN', 'Tidak terutang PPN karena hotel bukan PKP', 'Tidak terutang PPN karena sewa tersebut termasuk jenis jasa yang tidak dikenakan PPN \n', 'Terutang PPN, tetapi ditanggung pemerintah', NULL, 'A', '0000-00-00 00:00:00'),
(106, 0, 1, 4, 0, '', 'Saat pembuatan Faktur Pajak adalah sebagai berikut, kecuali :', 'Saat order barang dilakukan  ', 'Saat penerimaan pembayaran dalam hal penerimaan pembayaran terjadi sebelum penyerahan Barang Kena Pajak dan/atau sebelum penyerahan Jasa Kena Pajak', 'Saat penerimaan pembayaran termin dalam hal penyerahan sebagian tahap pekerjaan', 'Saat PKP rekanan menyampaikan tagihan kepada Bendahara Pemerintah sebagai Pemungut Pajak Pertambahan Nilai', NULL, 'A', '0000-00-00 00:00:00'),
(107, 0, 1, 4, 0, '', 'PPnBM merupakan', 'Pajak tambahan atas barang yang dikenakan PPN', 'Pajak tambahan atas barang dan/atau jasa yang dikenakan PPN', 'Pajak penjualan atas barang dan/atau jasa yang dikenakan PPN', 'Pajak penjualan seperti halnya yang dipungut di banyak Negara lain', NULL, 'A', '0000-00-00 00:00:00'),
(108, 0, 1, 4, 0, '', 'Tarif PPN atas Impor  adalah ', '0.1', '0.15', '0', '0.05', NULL, 'A', '0000-00-00 00:00:00'),
(109, 0, 1, 5, 0, '', 'Berikut ini termasuk tanah dan bangunan yang tidak dikenakan Pajak Bumi dan Bangunan', 'Tanah dan Bangunan yang ditempati Keduataan Besar Amerika Serikat', 'Tanah dan Bangunan untuk operasional PT Guna Mandala', 'Tanah dan Bangunan untuk Ruko', 'Tanah dan Bangunan milik PT Jasa Marga', NULL, 'A', '0000-00-00 00:00:00'),
(110, 0, 1, 5, 0, '', 'Suatu cara pelunasan Bea Materai yang dilakukan oleh pejabat Pos atas permintaan pemegang dokumen yang Bea Meterainya belum dilunasi sebagaimana mestinya disebut ', 'Pemeteraian kemudian', 'Pemeteraian ulang', 'Pelunasan Meterai', 'Pemeteraian lanjutan', NULL, 'A', '0000-00-00 00:00:00'),
(111, 0, 1, 21, 0, '', 'Dibawah ini yang bukan termasuk dalam pengertian usaha tertentu yang berpedoman pada peraturan menteri keuangan nomor 43/PMK.03/2009 tentang pajak penghasilan pasal 21 ditanggung pemerintah atas dasar penghasilan pekerja pada katagori usaha tertentu adalah…', 'Usaha perdagangan', 'Usaha perikanan', 'Usaha industry pengolahan', 'Usaha perternakan', NULL, 'A', '0000-00-00 00:00:00'),
(112, 0, 1, 22, 0, '', 'Bendahara pemerintah DKI Jakarta membayar pembelian bahan bakar pertamax untuk 15 kendaraan mobil dan 20 kendaraan motor dinas untuk bulan Oktober 2016 sebesar Rp 8.750.000 atas transaksi ini maka….', 'Dipungut PPh pasal 22 sebesar 0,25% x Rp 8.750.000 ', 'Dipungut PPh pasal 22 sebesar 1,5% x Rp 8.750.000', 'Dipungut PPh pasal 22 sebesar 0,3% x Rp 8.750.000', 'Tidak ada pemungutan PPh pasal 22', NULL, 'A', '0000-00-00 00:00:00'),
(113, 0, 1, 23, 0, '', 'Tn Afgan berpasangan dengan Tn Budi dan Tn. Andreas membentuk firma bersama tanggal 25 Oktober 2016 membagi hasil senilai Rp 50.000.000 untuk masing-masing anggota. Atas pembagian keuntungan ini  merupakan….', 'Objek PPh pasal 23 sebesar 15', 'Objek PPh pasal 4 ayat 2 sebesar 10%', 'Objek PPh pasal 23 sebesar 10%', 'Bukan objek pajak', NULL, 'A', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `data_workshop`
--

CREATE TABLE `data_workshop` (
  `id` int(8) NOT NULL,
  `nama_workshop` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_workshop`
--

INSERT INTO `data_workshop` (`id`, `nama_workshop`) VALUES
(1, 'Pengisian SPT');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(6) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_content` longtext NOT NULL,
  `post_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tr_ikut_ujian`
--

CREATE TABLE `tr_ikut_ujian` (
  `id` int(6) NOT NULL,
  `id_tes` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `jml_salah` int(3) NOT NULL,
  `jml_kosong` int(3) NOT NULL,
  `nilai` int(6) NOT NULL,
  `nilai_bobot` int(6) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `status` enum('y','n') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_ikut_ujian`
--

INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_jawaban`, `jml_benar`, `jml_salah`, `jml_kosong`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(90, 1, 12, '76:C,83:C,111:A,105:C,70:D,71:D,69:D,110:A,72:D,100:A,82:C,74:D,86:D,88:C,84:B,95:B,94:B,68:B,91:A,79:C,101:A,104:A,78:C,90:B,73:B,93:B,107:A,98:A,66:D,87:C,85:D,67:D,77:C,89:C,108:A,106:A,81:C,75:D,92:A,96:B', 29, 11, 0, 73, 0, '2017-08-18 16:56:35', '2017-08-18 17:56:35', 'y'),
(70, 1, 13, '96:B,106:A,98:B,77:C,88:C,113:D,82:C,108:C,93:B,111:A,79:C,67:D,102:B,110:A,91:A,81:C,76:C,87:C,112:B,90:B,71:D,85:C,92:A,104:A,103:D,75:D,78:C,69:D,86:D,89:C,83:C,107:A,94:B,73:D,74:D,109:A,95:B,99:C,80:C,66:D', 30, 10, 0, 75, 0, '2017-08-18 13:53:05', '2017-08-18 14:53:05', 'y'),
(62, 1, 33, '73:C,88:D,105:C,70:D,79:C,99:A,108:A,75:D,95:A,67:D,90:B,78:C,93:B,92:A,77:C,100:A,82:C,94:B,74:D,71:B,113:D,89:C,112:B,68:D,85:C,104:A,84:C,76:B,66:D,101:A,111:C,109:A,107:C,69:D,83:C,98:A,81:C,106:A,91:B,80:C', 26, 14, 0, 65, 0, '2017-08-18 11:39:50', '2017-08-18 12:39:50', 'y'),
(77, 1, 18, '73:B,89:C,76:A,66:D,96:B,104:A,84:A,86:D,95:C,81:D,105:A,87:A,83:A,101:D,77:A,102:A,93:B,69:A,92:A,71:B,72:D,74:D,79:C,112:D,94:B,107:B,78:B,88:B,68:D,108:A,100:A,90:B,82:A,80:C,67:D,97:A,109:A,103:D,111:A,98:B', 19, 21, 0, 48, 0, '2017-08-18 14:14:13', '2017-08-18 15:14:13', 'y'),
(79, 1, 30, '80:C,100:A,71:D,70:D,72:D,79:D,69:D,73:C,99:C,74:D,88:C,106:A,98:B,109:C,108:C,113:A,68:B,90:B,107:A,103:D,96:B,92:D,77:C,95:A,83:C,110:C,104:A,112:A,101:A,105:A,67:D,87:A,93:D,86:D,94:B,75:D,78:C,97:B,102:B,111:C', 24, 16, 0, 60, 0, '2017-08-18 14:39:21', '2017-08-18 15:39:21', 'y'),
(89, 1, 29, '98:C,71:C,104:A,105:C,68:B,70:A,84:D,108:D,83:C,74:D,110:A,94:B,85:C,95:B,100:A,66:D,106:C,73:A,107:C,81:C,99:C,111:A,80:C,109:A,92:C,88:B,67:D,97:B,87:A,78:C,96:C,79:C,90:B,103:D,89:C,77:C,112:D,86:A,113:B,75:D', 20, 20, 0, 50, 0, '2017-08-18 16:46:25', '2017-08-18 17:46:25', 'y'),
(72, 1, 15, '101:D,75:D,97:B,92:D,112:A,79:C,105:C,99:C,76:B,109:A,77:C,110:A,88:B,91:B,67:D,82:C,86:B,98:B,69:A,94:B,87:C,68:D,93:B,85:C,74:D,78:C,111:A,106:D,73:D,108:A,104:A,107:C,100:A,102:D,81:C,113:A,103:D,84:A,83:C,66:D', 26, 14, 0, 65, 0, '2017-08-18 13:56:33', '2017-08-18 14:56:33', 'y'),
(37, 1, 24, '106:A,98:B,84:C,70:D,101:D,71:B,110:B,105:B,89:C,99:C,66:D,96:C,68:D,97:D,109:A,113:B,72:D,93:A,91:C,107:C,81:D,92:B,108:A,67:D,94:D,95:C,74:A,90:B,85:C,111:A,79:C,75:D,73:D,76:A,88:B,69:A,78:B,77:D,102:B,112:B', 18, 22, 0, 45, 0, '2017-08-18 09:49:10', '2017-08-18 10:49:10', 'y'),
(48, 1, 31, '81:C,92:,89:C,91:B,93:B,95:A,113:A,103:D,106:A,74:B,102:B,111:B,78:D,67:D,94:B,76:C,99:A,88:B,101:D,69:D,105:C,86:D,68:D,97:A,79:C,90:C,80:C,87:A,109:A,110:A,112:B,75:D,70:,77:A,66:D,107:B,84:A,108:A,72:A,96:B', 18, 20, 2, 45, 0, '2017-08-18 10:29:04', '2017-08-18 11:29:04', 'y'),
(80, 1, 27, '74:D,112:A,66:D,108:A,81:C,92:A,96:B,71:D,101:A,94:B,77:C,89:C,99:A,91:B,113:B,75:D,78:C,79:C,86:D,83:C,85:C,106:A,93:C,107:A,88:B,95:D,67:D,100:A,103:D,68:B,82:B,87:C,104:A,69:D,102:D,109:A,90:B,72:C,97:B,80:C', 27, 13, 0, 68, 0, '2017-08-18 15:10:23', '2017-08-18 16:10:23', 'y'),
(41, 1, 32, '75:D,107:A,102:A,89:C,88:B,87:A,90:B,86:D,74:D,104:A,71:D,85:C,68:A,93:C,72:C,106:D,91:B,77:C,96:B,82:C,78:C,108:A,97:B,80:C,111:A,70:A,100:A,101:A,73:D,109:A,66:D,79:C,103:D,76:B,99:A,105:C,83:C,69:D,110:A,113:A', 27, 13, 0, 68, 0, '2017-08-18 10:07:42', '2017-08-18 11:07:42', 'y'),
(73, 1, 34, '94:B,89:C,83:A,70:D,99:C,88:C,93:B,82:C,71:B,76:C,68:D,102:D,96:C,74:D,101:D,69:D,105:A,86:D,80:C,78:C,75:D,111:C,91:B,100:B,92:A,108:A,103:D,106:A,110:A,112:A,113:A,107:A,98:B,95:A,67:A,90:B,66:D,85:C,97:B,79:C', 27, 13, 0, 68, 0, '2017-08-18 14:00:30', '2017-08-18 15:00:30', 'y'),
(43, 1, 14, '66:A,93:B,95:C,98:A,80:B,105:C,89:D,69:C,72:B,108:D,81:B,84:B,70:A,92:A,113:B,107:C,79:C,91:B,94:B,85:D,73:C,111:D,104:A,99:C,88:C,101:D,97:A,112:B,109:A,86:A,78:B,100:A,82:B,110:A,76:B,71:D,68:D,74:D,83:A,75:D', 12, 28, 0, 30, 0, '2017-08-18 10:21:38', '2017-08-18 11:21:38', 'y'),
(44, 1, 23, '73:B,104:A,91:E,85:E,80:D,107:B,89:C,83:C,109:A,102:A,111:D,81:D,100:A,87:A,77:B,99:A,82:C,101:A,66:D,84:D,75:D,71:E,96:B,106:B,98:A,92:A,78:B,68:D,108:B,86:D,72:D,94:E,103:B,110:C,113:B,69:A,76:A,67:A,97:C,88:B', 12, 28, 0, 30, 0, '2017-08-18 10:21:43', '2017-08-18 11:21:43', 'y'),
(45, 1, 25, '97:D,85:C,113:B,78:C,73:D,77:D,72:D,76:A,108:A,87:C,94:B,81:C,103:D,99:C,100:A,90:B,98:B,86:D,82:C,66:D,84:C,70:C,107:C,101:A,89:C,104:A,102:B,68:D,112:B,69:A,93:B,105:B,92:B,67:D,109:A,71:B,83:C,75:D,80:C,106:A', 25, 15, 0, 63, 0, '2017-08-18 10:23:15', '2017-08-18 11:23:15', 'y'),
(46, 1, 22, '74:C,106:A,103:C,100:A,107:A,84:A,66:D,89:C,102:D,109:A,90:B,96:A,79:A,93:D,92:A,71:C,95:C,108:B,72:B,70:A,113:C,91:B,98:A,105:B,82:B,94:C,69:C,67:B,80:B,86:C,76:C,87:A,75:C,112:B,73:C,78:B,99:C,88:B,83:D,110:B', 8, 32, 0, 20, 0, '2017-08-18 10:23:23', '2017-08-18 11:23:23', 'y'),
(65, 1, 26, '84:A,102:A,79:C,90:B,98:B,85:D,74:D,91:B,100:A,94:B,110:C,99:B,83:C,96:B,95:C,76:A,97:C,103:C,69:D,68:D,111:A,70:A,81:A,108:B,86:D,109:A,92:D,89:C,66:D,67:D,87:B,71:D,80:B,105:B,88:C,78:B,113:B,107:C,72:A,106:B', 19, 21, 0, 48, 0, '2017-08-18 11:54:50', '2017-08-18 12:54:50', 'y'),
(74, 1, 16, '102:D,95:B,103:B,78:C,74:D,79:A,93:B,77:C,105:C,82:C,80:C,73:D,112:A,104:A,94:B,108:A,100:A,98:C,86:D,72:B,110:A,88:C,70:A,96:B,109:B,83:A,111:A,66:D,76:B,71:D,68:D,87:A,92:A,75:D,81:C,89:C,69:D,90:B,99:C,91:B', 25, 15, 0, 63, 0, '2017-08-18 14:00:34', '2017-08-18 15:00:34', 'y'),
(53, 1, 35, '99:A,80:A,108:B,107:A,78:B,101:A,109:C,98:A,73:,67:A,85:B,105:B,76:C,81:B,66:D,92:A,82:D,69:B,110:C,103:C,113:,71:D,86:A,104:A,111:D,77:D,95:B,74:D,112:D,75:D,91:C,79:C,89:C,72:B,96:B,93:,94:A,106:D,83:C,100:A', 12, 25, 3, 30, 0, '2017-08-18 10:58:20', '2017-08-18 11:58:20', 'y'),
(83, 1, 36, '105:C,85:D,92:D,101:A,111:C,67:A,86:D,100:A,112:B,81:D,82:C,104:A,91:B,99:A,80:A,69:A,108:C,73:D,106:A,76:C,96:B,95:A,83:D,78:B,71:C,77:C,93:B,66:D,72:B,94:C,87:C,70:D,84:C,103:C,90:B,113:B,88:B,98:A,79:C,102:B', 15, 25, 0, 38, 0, '2017-08-18 15:35:17', '2017-08-18 16:35:17', 'y'),
(66, 1, 20, '100:B,69:D,78:C,86:C,104:A,67:D,93:D,101:D,83:C,107:A,98:B,77:C,110:C,108:A,84:C,75:D,99:B,66:D,87:C,68:D,106:C,95:A,92:,103:A,102:A,76:D,74:A,113:C,80:,72:,96:,111:,105:C,79:A,70:D,109:A,82:C,71:D,88:A,91:A', 24, 11, 5, 60, 0, '2017-08-18 13:09:01', '2017-08-18 14:09:01', 'y'),
(78, 1, 21, '92:A,87:C,98:B,93:B,103:D,70:B,77:D,85:C,69:A,79:E,96:C,88:C,112:D,75:D,108:E,105:C,73:C,109:A,83:C,91:B,81:C,100:A,94:B,66:D,101:D,74:D,111:A,82:D,99:C,106:A,90:B,72:A,110:A,95:E,86:D,78:E,80:C,67:D,89:C,102:B', 20, 20, 0, 50, 0, '2017-08-18 14:27:12', '2017-08-18 15:27:12', 'y'),
(86, 1, 37, '100:A,106:D,93:B,73:C,67:D,105:C,101:A,75:D,78:C,77:C,83:C,92:D,74:D,87:C,79:C,70:A,84:A,96:B,113:B,95:B,103:D,104:A,94:B,69:A,109:A,66:D,102:B,82:C,97:B,110:A,89:A,91:B,112:D,68:D,111:D,90:B,107:C,86:D,81:C,88:C', 24, 16, 0, 60, 0, '2017-08-18 16:12:23', '2017-08-18 17:12:23', 'y'),
(84, 1, 17, '74:B,85:C,93:B,73:D,84:D,91:A,70:D,79:C,71:D,76:C,67:D,87:C,95:B,69:C,97:B,89:C,96:B,108:A,81:C,98:A,101:D,105:C,72:B,83:C,107:A,82:C,109:A,80:C,99:A,104:A,100:A,90:B,94:B,102:D,110:A,77:C,113:A,111:A,112:B,68:D', 27, 13, 0, 68, 0, '2017-08-18 15:50:42', '2017-08-18 16:50:42', 'y'),
(85, 1, 19, '69:D,102:A,107:C,112:B,113:D,75:D,108:A,96:B,81:C,94:B,93:B,99:C,83:C,88:C,79:C,91:C,73:D,84:B,67:D,110:A,71:D,95:B,103:D,74:D,76:A,87:C,100:A,109:A,66:D,92:A,97:B,105:C,72:A,70:B,85:C,89:C,86:D,78:C,104:A,68:D', 26, 14, 0, 65, 0, '2017-08-18 15:52:25', '2017-08-18 16:52:25', 'y'),
(88, 1, 38, '79:C,94:B,109:A,107:A,85:C,74:D,73:B,90:B,89:A,95:B,66:D,112:D,71:D,101:D,102:B,91:B,110:A,104:A,97:B,68:D,98:A,87:C,111:D,81:C,76:A,72:D,67:D,103:D,100:A,82:C,108:D,113:B,86:D,78:C,83:C,96:B,105:C,70:A,84:C,106:D', 24, 16, 0, 60, 0, '2017-08-18 16:31:08', '2017-08-18 17:31:08', 'y'),
(105, 1, 11, '104:A,91:B,101:D,108:A,70:A,105:C,82:C,96:B,71:D,90:B,77:C,84:C,113:A,68:D,83:C,99:D,103:D,69:D,110:A,106:A,97:A,87:C,73:D,85:C,79:C,86:D,72:D,89:A,88:C,78:C,74:D,67:D,109:A,95:D,66:D,81:C,92:D,100:A,111:A,76:A', 28, 12, 0, 70, 0, '2017-08-23 15:51:30', '2017-08-23 16:51:30', 'y'),
(110, 109, 75, '', 0, 0, 0, 0, 0, '2017-12-13 11:40:04', '2017-12-13 12:40:04', 'n'),
(126, 1, 70, '', 0, 0, 0, 0, 0, '2018-02-08 14:08:22', '2018-02-08 15:08:22', 'n'),
(127, 1, 69, '', 0, 0, 0, 0, 0, '2018-02-08 14:08:22', '2018-02-08 15:08:22', 'n'),
(128, 1, 92, '', 0, 0, 0, 0, 0, '2018-02-08 14:24:54', '2018-02-08 15:24:54', 'n'),
(124, 1, 84, '', 0, 0, 0, 0, 0, '2018-02-08 13:07:50', '2018-02-08 14:07:50', 'y'),
(125, 124, 84, '', 0, 0, 0, 0, 0, '2018-02-08 13:30:19', '2018-02-08 14:30:19', 'n'),
(119, 110, 75, '', 0, 0, 0, 0, 0, '2018-02-06 20:37:46', '2018-02-06 21:37:46', 'n'),
(120, 1, 77, '', 0, 0, 0, 0, 0, '2018-02-06 21:20:53', '2018-02-06 22:20:53', 'n'),
(121, 1, 82, '', 0, 0, 0, 0, 0, '2018-02-07 18:25:36', '2018-02-07 19:25:36', 'y'),
(122, 121, 82, '', 0, 0, 0, 0, 0, '2018-02-07 19:26:26', '2018-02-07 20:26:26', 'n'),
(123, 1, 85, '92:A,70:,82:,98:,87:,80:,69:,105:,78:,95:,88:,96:,108:,81:,85:,75:,77:,84:,100:,93:,86:,104:,73:,106:,109:,83:,97:,91:,102:,66:,103:,110:,89:,79:,99:,67:,101:,111:,72:,113:', 0, 1, 39, 0, 0, '2018-02-08 12:30:11', '2018-02-08 13:30:11', 'y'),
(116, 1, 68, '', 0, 0, 0, 0, 0, '2018-01-09 12:48:42', '2018-01-09 13:48:42', 'n'),
(115, 114, 64, '', 0, 0, 0, 0, 0, '2018-01-07 14:51:30', '2018-01-07 15:51:30', 'n'),
(117, 1, 80, '', 0, 0, 0, 0, 0, '2018-01-29 16:28:48', '2018-01-29 17:28:48', 'y'),
(118, 117, 80, '', 0, 0, 0, 0, 0, '2018-01-29 16:29:10', '2018-01-29 17:29:10', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tr_jadwal`
--

CREATE TABLE `tr_jadwal` (
  `id` int(255) NOT NULL,
  `id_kursus` int(255) NOT NULL,
  `id_gelombang` int(255) NOT NULL,
  `jam` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `id_materi` int(255) NOT NULL,
  `id_pengajar` int(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_jadwal`
--

INSERT INTO `tr_jadwal` (`id`, `id_kursus`, `id_gelombang`, `jam`, `tanggal`, `id_materi`, `id_pengajar`, `keterangan`) VALUES
(1, 1, 1, '08.00-12.00', '2017/8/19', 1, 5, ''),
(2, 1, 1, '13.00-17.00', '2017/8/19', 2, 6, ''),
(3, 1, 1, '08.00-12.00', '2017/8/26', 3, 7, ''),
(4, 1, 1, '13.00-17.00', '2017/8/26', 7, 8, ''),
(5, 1, 1, '08.00-12.00', '2017/9/16', 6, 13, ''),
(6, 1, 1, '13.00-17.00', '2017/9/16', 5, 10, ''),
(7, 1, 1, '08.00-12.00', '2017/9/23', 4, 11, ''),
(8, 1, 1, '13.00-17.00', '2017/9/23', 8, 12, ''),
(9, 1, 0, '08.00 - 12.00', '10 Februari 2018', 8, 0, ''),
(10, 0, 0, '08.00 - 12.00', '2018/02/10', 8, 0, ''),
(11, 1, 0, '08.00-12.00', '05/05/2018', 1, 13, ''),
(12, 0, 0, '08.00-12.00', '2018/05/05', 1, 13, '');

-- --------------------------------------------------------

--
-- Table structure for table `tr_jawab`
--

CREATE TABLE `tr_jawab` (
  `id` int(255) NOT NULL,
  `id_tes` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `id_kategori` int(255) NOT NULL,
  `id_soal` int(255) NOT NULL,
  `jawab` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_jawab`
--

INSERT INTO `tr_jawab` (`id`, `id_tes`, `id_user`, `id_kategori`, `id_soal`, `jawab`) VALUES
(1, 1, 11, 1, 104, 'A'),
(2, 1, 11, 1, 91, 'B'),
(3, 1, 11, 1, 101, 'D'),
(4, 1, 11, 4, 108, 'A'),
(5, 1, 11, 1, 70, 'A'),
(6, 1, 11, 4, 105, 'C'),
(7, 1, 11, 4, 82, 'C'),
(8, 1, 11, 5, 96, 'B'),
(9, 1, 11, 4, 71, 'D'),
(10, 1, 11, 1, 90, 'B'),
(11, 1, 11, 1, 77, 'C'),
(12, 1, 11, 4, 84, 'C'),
(13, 1, 11, 23, 113, 'A'),
(14, 1, 11, 1, 68, 'D'),
(15, 1, 11, 4, 83, 'C'),
(16, 1, 11, 23, 99, 'D'),
(17, 1, 11, 1, 103, 'D'),
(18, 1, 11, 1, 69, 'D'),
(19, 1, 11, 5, 110, 'A'),
(20, 1, 11, 4, 106, 'A'),
(21, 1, 11, 5, 97, 'A'),
(22, 1, 11, 4, 87, 'C'),
(23, 1, 11, 4, 73, 'D'),
(24, 1, 11, 4, 85, 'C'),
(25, 1, 11, 1, 79, 'C'),
(26, 1, 11, 4, 86, 'D'),
(27, 1, 11, 4, 72, 'D'),
(28, 1, 11, 5, 89, 'A'),
(29, 1, 11, 4, 88, 'C'),
(30, 1, 11, 1, 78, 'C'),
(31, 1, 11, 5, 74, 'D'),
(32, 1, 11, 1, 67, 'D'),
(33, 1, 11, 5, 109, 'A'),
(34, 1, 11, 5, 95, 'D'),
(35, 1, 11, 1, 66, 'D'),
(36, 1, 11, 1, 81, 'C'),
(37, 1, 11, 1, 92, 'D'),
(38, 1, 11, 1, 100, 'A'),
(39, 1, 11, 21, 111, 'A'),
(40, 1, 11, 3, 76, 'A'),
(41, 1, 28, 4, 73, 'B'),
(42, 1, 28, 5, 74, 'B'),
(43, 1, 28, 5, 110, 'B'),
(44, 1, 28, 4, 87, 'C'),
(45, 1, 28, 5, 97, 'C'),
(46, 1, 28, 22, 112, 'C'),
(47, 1, 28, 1, 66, 'B'),
(48, 1, 28, 4, 85, 'C'),
(49, 1, 28, 23, 99, 'C'),
(50, 1, 28, 5, 96, 'B'),
(51, 1, 28, 1, 80, 'C'),
(52, 1, 28, 1, 100, 'C'),
(53, 1, 28, 1, 104, 'C'),
(54, 1, 28, 1, 79, 'B'),
(55, 1, 28, 4, 107, 'C'),
(56, 1, 28, 4, 108, 'D'),
(57, 1, 28, 5, 95, 'C'),
(58, 1, 28, 1, 81, 'B'),
(59, 1, 28, 3, 76, 'B'),
(60, 1, 28, 1, 68, 'B'),
(61, 1, 28, 5, 75, 'C'),
(62, 1, 28, 4, 106, 'C'),
(63, 1, 28, 1, 69, 'B'),
(64, 1, 28, 4, 94, 'B'),
(65, 1, 28, 4, 83, 'C'),
(66, 1, 28, 23, 113, 'C'),
(67, 1, 28, 4, 86, 'C'),
(68, 1, 28, 5, 89, 'C'),
(69, 1, 28, 1, 101, 'D'),
(70, 1, 28, 1, 91, 'D'),
(71, 1, 28, 5, 109, 'B'),
(72, 1, 28, 1, 77, 'B'),
(73, 1, 28, 1, 93, 'B'),
(74, 1, 28, 1, 90, 'B'),
(75, 1, 28, 21, 111, 'B'),
(76, 1, 28, 4, 72, 'B'),
(77, 1, 28, 4, 84, 'B'),
(78, 1, 28, 1, 67, 'A'),
(79, 1, 28, 1, 103, 'A'),
(80, 1, 28, 1, 70, 'B'),
(81, 1, 46, 1, 93, 'A'),
(82, 1, 46, 4, 83, 'B'),
(83, 1, 46, 23, 99, 'B'),
(84, 1, 46, 4, 72, 'B'),
(85, 1, 46, 1, 80, 'B'),
(86, 1, 46, 5, 96, 'B'),
(87, 1, 46, 4, 82, 'B'),
(88, 1, 46, 1, 69, 'B'),
(89, 1, 46, 1, 101, 'C'),
(90, 1, 46, 1, 67, 'B'),
(91, 1, 46, 1, 66, 'C'),
(92, 1, 46, 5, 109, 'B'),
(93, 1, 46, 1, 103, 'B'),
(94, 1, 46, 5, 95, 'B'),
(95, 1, 46, 1, 90, 'B'),
(96, 1, 46, 1, 104, 'D'),
(97, 1, 46, 4, 107, 'B'),
(98, 1, 46, 4, 85, 'B'),
(99, 1, 46, 1, 102, 'C'),
(100, 1, 46, 1, 68, 'B'),
(101, 1, 46, 1, 77, 'B'),
(102, 1, 46, 1, 78, 'B'),
(103, 1, 46, 21, 111, 'C'),
(104, 1, 46, 4, 94, 'B'),
(105, 1, 46, 4, 71, 'B'),
(106, 1, 46, 23, 113, 'C'),
(107, 1, 46, 1, 92, 'B'),
(108, 1, 46, 5, 89, 'B'),
(109, 1, 46, 22, 112, 'B'),
(110, 1, 46, 5, 97, 'C'),
(111, 1, 46, 5, 75, 'B'),
(112, 1, 46, 4, 84, 'B'),
(113, 1, 46, 22, 98, 'B'),
(114, 1, 46, 4, 105, 'B'),
(115, 1, 46, 4, 86, 'B'),
(116, 1, 46, 4, 73, 'B'),
(117, 1, 46, 4, 88, 'B'),
(118, 1, 46, 5, 74, 'B'),
(119, 1, 46, 1, 70, 'B'),
(120, 1, 46, 4, 87, 'C'),
(121, 1, 47, 4, 86, 'B'),
(122, 1, 47, 1, 90, 'A'),
(123, 1, 47, 4, 107, 'B'),
(124, 1, 47, 4, 83, 'C'),
(125, 1, 47, 5, 97, 'C'),
(126, 1, 47, 1, 100, 'D'),
(127, 1, 47, 22, 98, 'A'),
(128, 1, 47, 1, 81, 'E'),
(129, 1, 47, 4, 108, 'E'),
(130, 1, 47, 1, 103, 'E'),
(131, 1, 47, 1, 78, 'E'),
(132, 1, 47, 23, 113, 'B'),
(133, 1, 47, 1, 104, 'E'),
(134, 1, 47, 23, 99, 'B'),
(135, 1, 47, 1, 79, 'E'),
(136, 1, 47, 4, 73, 'B'),
(137, 1, 47, 3, 76, 'B'),
(138, 1, 47, 4, 106, 'B'),
(139, 1, 47, 1, 91, 'B'),
(140, 1, 47, 5, 109, 'B'),
(141, 1, 47, 5, 96, 'B'),
(142, 1, 47, 4, 87, 'B'),
(143, 1, 47, 4, 71, 'B'),
(144, 1, 47, 4, 82, 'B'),
(145, 1, 47, 1, 69, 'B'),
(146, 1, 47, 22, 112, 'E'),
(147, 1, 47, 5, 89, 'B'),
(148, 1, 47, 4, 105, 'E'),
(149, 1, 47, 1, 67, 'B'),
(150, 1, 47, 4, 94, 'E'),
(151, 1, 47, 5, 110, 'B'),
(152, 1, 47, 1, 101, 'E'),
(153, 1, 47, 5, 95, 'B'),
(154, 1, 47, 1, 66, 'E'),
(155, 1, 47, 1, 70, 'B'),
(156, 1, 47, 5, 74, 'E'),
(157, 1, 47, 1, 92, 'B'),
(158, 1, 47, 1, 102, 'E'),
(159, 1, 47, 1, 93, 'B'),
(160, 1, 47, 4, 84, 'E'),
(161, 1, 73, 1, 81, 'E'),
(162, 1, 73, 1, 79, 'C'),
(163, 1, 73, 1, 77, 'C'),
(164, 1, 73, 4, 94, 'E'),
(165, 1, 73, 1, 90, 'B'),
(166, 1, 73, 4, 108, 'A'),
(167, 1, 73, 4, 105, 'B'),
(168, 1, 73, 5, 109, 'A'),
(169, 1, 73, 5, 74, 'D'),
(170, 1, 73, 4, 73, 'D'),
(171, 1, 73, 1, 70, 'D'),
(172, 1, 73, 4, 71, 'D'),
(173, 1, 73, 5, 89, 'D'),
(174, 1, 73, 4, 86, 'D'),
(175, 1, 73, 1, 93, 'A'),
(176, 1, 73, 22, 98, 'B'),
(177, 1, 73, 5, 75, 'A'),
(178, 1, 73, 4, 83, 'D'),
(179, 1, 73, 1, 66, 'D'),
(180, 1, 73, 1, 103, 'D'),
(181, 1, 73, 1, 102, 'A'),
(182, 1, 73, 5, 110, 'C'),
(183, 1, 73, 21, 111, 'D'),
(184, 1, 73, 1, 92, 'A'),
(185, 1, 73, 5, 96, 'A'),
(186, 1, 73, 1, 78, 'D'),
(187, 1, 73, 4, 107, 'B'),
(188, 1, 73, 4, 84, 'C'),
(189, 1, 73, 1, 69, 'D'),
(190, 1, 73, 4, 85, 'D'),
(191, 1, 73, 4, 72, 'A'),
(192, 1, 73, 1, 67, 'B'),
(193, 1, 73, 1, 100, 'A'),
(194, 1, 73, 1, 104, 'D'),
(195, 1, 73, 4, 88, 'B'),
(196, 1, 73, 4, 82, 'B'),
(197, 1, 73, 23, 99, 'B'),
(198, 1, 73, 4, 87, 'A'),
(199, 1, 73, 23, 113, 'C'),
(200, 1, 73, 5, 95, 'C'),
(201, 1, 67, 4, 85, 'D'),
(202, 1, 67, 3, 76, 'C'),
(203, 1, 67, 5, 95, 'C'),
(204, 1, 67, 1, 78, 'D'),
(205, 1, 67, 4, 87, 'A'),
(206, 1, 67, 5, 89, 'D'),
(207, 1, 67, 1, 100, 'A'),
(208, 1, 67, 5, 97, 'A'),
(209, 1, 67, 4, 108, 'A'),
(210, 1, 67, 5, 75, 'A'),
(211, 1, 67, 4, 71, 'D'),
(212, 1, 67, 4, 83, 'D'),
(213, 1, 67, 5, 96, 'A'),
(214, 1, 67, 1, 102, 'A'),
(215, 1, 67, 4, 94, 'E'),
(216, 1, 67, 1, 101, 'D'),
(217, 1, 67, 1, 69, 'D'),
(218, 1, 67, 1, 91, 'B'),
(219, 1, 67, 23, 113, 'C'),
(220, 1, 67, 23, 99, 'B'),
(221, 1, 67, 1, 77, 'C'),
(222, 1, 67, 1, 68, 'C'),
(223, 1, 67, 4, 73, 'D'),
(224, 1, 67, 5, 109, 'A'),
(225, 1, 67, 1, 70, 'D'),
(226, 1, 67, 22, 112, 'B'),
(227, 1, 67, 4, 82, 'B'),
(228, 1, 67, 1, 103, 'D'),
(229, 1, 67, 5, 110, 'C'),
(230, 1, 67, 1, 67, 'B'),
(231, 1, 67, 21, 111, 'D'),
(232, 1, 67, 4, 106, 'D'),
(233, 1, 67, 5, 74, 'D'),
(234, 1, 67, 1, 80, 'C'),
(235, 1, 67, 1, 81, 'E'),
(236, 1, 67, 4, 84, 'C'),
(237, 1, 67, 4, 86, 'D'),
(238, 1, 67, 4, 72, 'A'),
(239, 1, 67, 1, 93, 'D'),
(240, 1, 67, 4, 88, 'B'),
(241, 1, 65, 5, 95, 'C'),
(242, 1, 65, 4, 73, 'D'),
(243, 1, 65, 4, 82, 'B'),
(244, 1, 65, 4, 71, 'D'),
(245, 1, 65, 1, 91, 'C'),
(246, 1, 65, 1, 104, 'D'),
(247, 1, 65, 1, 90, 'B'),
(248, 1, 65, 5, 74, 'C'),
(249, 1, 65, 1, 70, 'D'),
(250, 1, 65, 1, 68, 'C'),
(251, 1, 65, 1, 81, 'E'),
(252, 1, 65, 1, 77, 'C'),
(253, 1, 65, 4, 84, 'C'),
(254, 1, 65, 4, 107, 'B'),
(255, 1, 65, 1, 103, 'D'),
(256, 1, 65, 22, 98, 'D'),
(257, 1, 65, 1, 101, 'D'),
(258, 1, 65, 22, 112, 'B'),
(259, 1, 65, 4, 94, 'E'),
(260, 1, 65, 4, 87, 'A'),
(261, 1, 65, 5, 109, 'A'),
(262, 1, 65, 1, 102, 'A'),
(263, 1, 65, 4, 83, 'C'),
(264, 1, 65, 4, 106, 'D'),
(265, 1, 65, 3, 76, 'C'),
(266, 1, 65, 4, 88, 'B'),
(267, 1, 65, 5, 89, 'D'),
(268, 1, 65, 5, 110, 'C'),
(269, 1, 65, 21, 111, 'D'),
(270, 1, 65, 4, 72, 'C'),
(271, 1, 65, 1, 93, 'C'),
(272, 1, 65, 1, 67, 'B'),
(273, 1, 65, 1, 100, 'A'),
(274, 1, 65, 1, 80, 'A'),
(275, 1, 65, 1, 78, 'D'),
(276, 1, 65, 23, 99, 'B'),
(277, 1, 65, 1, 66, 'D'),
(278, 1, 65, 1, 79, 'D'),
(279, 1, 65, 4, 105, 'C'),
(280, 1, 65, 5, 96, 'A'),
(281, 1, 85, 1, 92, 'A'),
(282, 1, 85, 1, 70, ''),
(283, 1, 85, 4, 82, ''),
(284, 1, 85, 22, 98, ''),
(285, 1, 85, 4, 87, ''),
(286, 1, 85, 1, 80, ''),
(287, 1, 85, 1, 69, ''),
(288, 1, 85, 4, 105, ''),
(289, 1, 85, 1, 78, ''),
(290, 1, 85, 5, 95, ''),
(291, 1, 85, 4, 88, ''),
(292, 1, 85, 5, 96, ''),
(293, 1, 85, 4, 108, ''),
(294, 1, 85, 1, 81, ''),
(295, 1, 85, 4, 85, ''),
(296, 1, 85, 5, 75, ''),
(297, 1, 85, 1, 77, ''),
(298, 1, 85, 4, 84, ''),
(299, 1, 85, 1, 100, ''),
(300, 1, 85, 1, 93, ''),
(301, 1, 85, 4, 86, ''),
(302, 1, 85, 1, 104, ''),
(303, 1, 85, 4, 73, ''),
(304, 1, 85, 4, 106, ''),
(305, 1, 85, 5, 109, ''),
(306, 1, 85, 4, 83, ''),
(307, 1, 85, 5, 97, ''),
(308, 1, 85, 1, 91, ''),
(309, 1, 85, 1, 102, ''),
(310, 1, 85, 1, 66, ''),
(311, 1, 85, 1, 103, ''),
(312, 1, 85, 5, 110, ''),
(313, 1, 85, 5, 89, ''),
(314, 1, 85, 1, 79, ''),
(315, 1, 85, 23, 99, ''),
(316, 1, 85, 1, 67, ''),
(317, 1, 85, 1, 101, ''),
(318, 1, 85, 21, 111, ''),
(319, 1, 85, 4, 72, ''),
(320, 1, 85, 23, 113, '');

-- --------------------------------------------------------

--
-- Table structure for table `tr_mahasiswa_kursus`
--

CREATE TABLE `tr_mahasiswa_kursus` (
  `id` int(6) NOT NULL,
  `tgl_register` date NOT NULL,
  `id_mahasiswa` int(6) NOT NULL,
  `id_kursus` int(6) NOT NULL,
  `status_pembayaran` enum('Sudah Bayar','Belum Bayar') NOT NULL DEFAULT 'Belum Bayar',
  `id_gelombang` int(255) NOT NULL,
  `id_ujian` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_mahasiswa_kursus`
--

INSERT INTO `tr_mahasiswa_kursus` (`id`, `tgl_register`, `id_mahasiswa`, `id_kursus`, `status_pembayaran`, `id_gelombang`, `id_ujian`) VALUES
(381, '2018-12-17', 377, 1, 'Belum Bayar', 0, 0),
(377, '2018-12-10', 373, 1, 'Sudah Bayar', 10, 0),
(382, '2018-12-22', 378, 1, 'Belum Bayar', 0, 0),
(378, '2018-12-14', 374, 1, 'Sudah Bayar', 10, 0),
(379, '2018-12-14', 375, 1, 'Sudah Bayar', 10, 0),
(384, '2019-01-31', 380, 1, 'Belum Bayar', 0, 0),
(386, '2019-02-14', 382, 1, 'Sudah Bayar', 12, 0),
(385, '2019-02-05', 381, 1, 'Belum Bayar', 0, 0),
(380, '2018-12-17', 376, 1, 'Sudah Bayar', 10, 0),
(22, '0000-00-00', 20, 1, 'Sudah Bayar', 1, 1),
(383, '2019-01-15', 379, 1, 'Belum Bayar', 0, 0),
(24, '0000-00-00', 22, 1, 'Sudah Bayar', 1, 1),
(25, '0000-00-00', 23, 1, 'Sudah Bayar', 1, 1),
(26, '0000-00-00', 24, 1, 'Sudah Bayar', 1, 1),
(27, '0000-00-00', 25, 1, 'Sudah Bayar', 1, 1),
(375, '2018-11-22', 371, 1, 'Sudah Bayar', 10, 0),
(29, '0000-00-00', 27, 1, 'Sudah Bayar', 1, 1),
(57, '2017-11-19', 54, 1, 'Sudah Bayar', 3, 0),
(416, '2019-04-08', 412, 1, 'Sudah Bayar', 11, 0),
(374, '2018-11-22', 370, 1, 'Sudah Bayar', 10, 0),
(33, '0000-00-00', 31, 1, 'Sudah Bayar', 1, 1),
(34, '0000-00-00', 32, 1, 'Sudah Bayar', 1, 1),
(35, '0000-00-00', 33, 1, 'Sudah Bayar', 1, 1),
(36, '0000-00-00', 34, 1, 'Sudah Bayar', 1, 1),
(37, '0000-00-00', 35, 1, 'Sudah Bayar', 1, 1),
(38, '0000-00-00', 36, 1, 'Sudah Bayar', 1, 1),
(39, '0000-00-00', 37, 1, 'Sudah Bayar', 1, 1),
(40, '0000-00-00', 38, 1, 'Sudah Bayar', 1, 1),
(387, '2019-02-15', 383, 1, 'Belum Bayar', 0, 0),
(393, '2019-02-20', 389, 1, 'Belum Bayar', 0, 0),
(43, '0000-00-00', 41, 1, 'Sudah Bayar', 2, 0),
(44, '0000-00-00', 42, 1, 'Belum Bayar', 0, 0),
(45, '0000-00-00', 43, 1, 'Sudah Bayar', 2, 0),
(46, '0000-00-00', 44, 1, 'Sudah Bayar', 2, 0),
(390, '2019-02-18', 386, 1, 'Sudah Bayar', 11, 0),
(48, '0000-00-00', 45, 1, 'Sudah Bayar', 2, 0),
(54, '0000-00-00', 51, 1, 'Belum Bayar', 0, 0),
(51, '0000-00-00', 48, 1, 'Sudah Bayar', 2, 0),
(52, '0000-00-00', 49, 1, 'Sudah Bayar', 2, 0),
(53, '0000-00-00', 50, 1, 'Sudah Bayar', 2, 0),
(56, '2017-11-18', 53, 1, 'Sudah Bayar', 2, 0),
(58, '2017-11-19', 55, 1, 'Belum Bayar', 0, 0),
(59, '2017-11-20', 56, 1, 'Belum Bayar', 0, 0),
(60, '2017-11-20', 57, 1, 'Belum Bayar', 0, 0),
(61, '2017-11-21', 58, 1, 'Belum Bayar', 0, 0),
(63, '2017-11-24', 59, 1, 'Belum Bayar', 0, 0),
(64, '2017-11-29', 60, 1, 'Belum Bayar', 0, 0),
(353, '2018-09-14', 349, 1, 'Sudah Bayar', 9, 0),
(66, '2017-11-29', 62, 1, 'Sudah Bayar', 2, 0),
(67, '2017-11-29', 63, 1, 'Belum Bayar', 0, 0),
(68, '2017-11-29', 64, 1, 'Sudah Bayar', 2, 0),
(69, '2017-11-29', 65, 1, 'Sudah Bayar', 2, 1),
(70, '2017-11-29', 66, 1, 'Sudah Bayar', 8, 0),
(71, '2017-11-29', 67, 1, 'Sudah Bayar', 2, 1),
(72, '2017-12-01', 68, 1, 'Sudah Bayar', 2, 1),
(73, '2017-12-04', 69, 1, 'Sudah Bayar', 2, 1),
(74, '2017-12-04', 70, 1, 'Sudah Bayar', 2, 1),
(75, '2017-12-04', 71, 1, 'Sudah Bayar', 2, 0),
(76, '2017-12-04', 72, 1, 'Sudah Bayar', 2, 0),
(77, '2017-12-05', 73, 1, 'Sudah Bayar', 2, 1),
(78, '2017-12-06', 74, 1, 'Sudah Bayar', 2, 0),
(79, '2017-12-12', 75, 1, 'Sudah Bayar', 2, 0),
(80, '2017-12-13', 76, 1, 'Belum Bayar', 0, 0),
(81, '2017-12-13', 77, 1, 'Sudah Bayar', 2, 1),
(372, '2018-11-01', 368, 1, 'Sudah Bayar', 10, 0),
(83, '2017-12-21', 79, 1, 'Belum Bayar', 0, 0),
(84, '2017-12-22', 80, 1, 'Sudah Bayar', 2, 0),
(85, '2018-01-02', 81, 1, 'Sudah Bayar', 4, 0),
(86, '2018-01-11', 82, 1, 'Sudah Bayar', 2, 0),
(87, '2018-01-11', 83, 1, 'Sudah Bayar', 2, 0),
(88, '2018-01-11', 84, 1, 'Sudah Bayar', 2, 124),
(89, '2018-01-11', 85, 1, 'Sudah Bayar', 2, 1),
(90, '2018-01-17', 86, 1, 'Sudah Bayar', 2, 0),
(91, '2018-01-20', 87, 1, 'Sudah Bayar', 3, 0),
(92, '2018-01-22', 88, 1, 'Sudah Bayar', 2, 0),
(93, '2018-01-31', 89, 1, 'Sudah Bayar', 2, 0),
(94, '2018-02-04', 90, 1, 'Belum Bayar', 0, 0),
(95, '2018-02-05', 91, 1, 'Sudah Bayar', 2, 0),
(415, '2019-04-05', 411, 1, 'Belum Bayar', 0, 0),
(97, '2018-02-18', 93, 1, 'Sudah Bayar', 3, 0),
(98, '2018-02-21', 94, 1, 'Sudah Bayar', 3, 0),
(99, '2018-02-24', 95, 1, 'Sudah Bayar', 3, 0),
(100, '2018-02-26', 96, 1, 'Sudah Bayar', 3, 0),
(101, '2018-02-26', 97, 1, 'Belum Bayar', 0, 0),
(102, '2018-02-28', 98, 1, 'Belum Bayar', 0, 0),
(103, '2018-02-28', 99, 1, 'Sudah Bayar', 3, 0),
(104, '2018-02-28', 100, 1, 'Belum Bayar', 0, 0),
(105, '2018-02-28', 101, 1, 'Sudah Bayar', 3, 0),
(106, '2018-03-04', 102, 1, 'Sudah Bayar', 3, 0),
(107, '2018-03-04', 103, 1, 'Sudah Bayar', 3, 0),
(108, '2018-03-05', 104, 1, 'Belum Bayar', 0, 0),
(109, '2018-03-06', 105, 1, 'Belum Bayar', 0, 0),
(110, '2018-03-07', 106, 1, 'Belum Bayar', 0, 0),
(111, '2018-03-07', 107, 1, 'Sudah Bayar', 5, 0),
(112, '2018-03-07', 108, 1, 'Sudah Bayar', 5, 0),
(113, '2018-03-07', 109, 1, 'Sudah Bayar', 5, 0),
(114, '2018-03-07', 110, 1, 'Sudah Bayar', 5, 0),
(115, '2018-03-07', 111, 1, 'Sudah Bayar', 5, 0),
(414, '2019-04-05', 410, 1, 'Belum Bayar', 0, 0),
(117, '2018-03-10', 113, 1, 'Sudah Bayar', 3, 0),
(118, '2018-03-12', 114, 1, 'Sudah Bayar', 3, 0),
(119, '2018-03-13', 115, 1, 'Sudah Bayar', 3, 0),
(120, '2018-03-13', 116, 1, 'Sudah Bayar', 3, 0),
(121, '2018-03-14', 117, 1, 'Sudah Bayar', 3, 0),
(122, '2018-03-14', 118, 1, 'Belum Bayar', 0, 0),
(388, '2019-02-15', 384, 1, 'Belum Bayar', 0, 0),
(124, '2018-03-16', 120, 1, 'Sudah Bayar', 3, 0),
(125, '2018-03-16', 121, 1, 'Belum Bayar', 0, 0),
(126, '2018-03-16', 122, 1, 'Belum Bayar', 0, 0),
(127, '2018-03-16', 123, 1, 'Sudah Bayar', 3, 0),
(128, '2018-03-16', 124, 1, 'Sudah Bayar', 3, 0),
(129, '2018-03-16', 125, 1, 'Sudah Bayar', 3, 0),
(130, '2018-03-16', 126, 1, 'Sudah Bayar', 3, 0),
(131, '2018-03-16', 127, 1, 'Sudah Bayar', 3, 0),
(132, '2018-03-16', 128, 1, 'Sudah Bayar', 3, 0),
(133, '2018-03-20', 129, 1, 'Belum Bayar', 0, 0),
(134, '2018-03-21', 130, 1, 'Sudah Bayar', 3, 0),
(135, '2018-03-22', 131, 1, 'Sudah Bayar', 3, 0),
(136, '2018-03-22', 132, 1, 'Sudah Bayar', 3, 0),
(137, '2018-03-22', 133, 1, 'Sudah Bayar', 3, 0),
(389, '2019-02-17', 385, 1, 'Belum Bayar', 0, 0),
(139, '2018-03-30', 135, 1, 'Sudah Bayar', 8, 0),
(140, '2018-03-30', 136, 1, 'Sudah Bayar', 8, 0),
(141, '2018-03-30', 137, 1, 'Sudah Bayar', 8, 0),
(142, '2018-03-30', 138, 1, 'Sudah Bayar', 8, 0),
(143, '2018-03-30', 139, 1, 'Sudah Bayar', 8, 0),
(144, '2018-03-30', 140, 1, 'Sudah Bayar', 8, 0),
(145, '2018-03-30', 141, 1, 'Sudah Bayar', 8, 0),
(146, '2018-03-30', 142, 1, 'Sudah Bayar', 8, 0),
(147, '2018-03-31', 143, 1, 'Sudah Bayar', 3, 0),
(148, '2018-04-04', 144, 1, 'Sudah Bayar', 3, 0),
(149, '2018-04-04', 145, 1, 'Sudah Bayar', 3, 0),
(150, '2018-04-04', 146, 1, 'Sudah Bayar', 3, 0),
(151, '2018-04-05', 147, 1, 'Belum Bayar', 0, 0),
(152, '2018-04-05', 148, 1, 'Sudah Bayar', 8, 0),
(153, '2018-04-05', 149, 1, 'Sudah Bayar', 8, 0),
(154, '2018-04-05', 150, 1, 'Sudah Bayar', 8, 0),
(155, '2018-04-05', 151, 1, 'Sudah Bayar', 8, 0),
(156, '2018-04-09', 152, 1, 'Sudah Bayar', 8, 0),
(157, '2018-04-13', 153, 1, 'Sudah Bayar', 6, 0),
(158, '2018-04-13', 154, 1, 'Belum Bayar', 0, 0),
(159, '2018-04-13', 155, 1, 'Sudah Bayar', 11, 0),
(160, '2018-04-13', 156, 1, 'Sudah Bayar', 6, 0),
(161, '2018-04-13', 157, 1, 'Sudah Bayar', 6, 0),
(162, '2018-04-13', 158, 1, 'Sudah Bayar', 6, 0),
(163, '2018-04-13', 159, 1, 'Sudah Bayar', 6, 0),
(164, '2018-04-13', 160, 1, 'Sudah Bayar', 6, 0),
(165, '2018-04-13', 161, 1, 'Sudah Bayar', 5, 0),
(166, '2018-04-13', 162, 1, 'Belum Bayar', 0, 0),
(167, '2018-04-13', 163, 1, 'Sudah Bayar', 6, 0),
(168, '2018-04-13', 164, 1, 'Sudah Bayar', 6, 0),
(169, '2018-04-13', 165, 1, 'Sudah Bayar', 6, 0),
(170, '2018-04-13', 166, 1, 'Sudah Bayar', 6, 0),
(171, '2018-04-13', 167, 1, 'Sudah Bayar', 6, 0),
(172, '2018-04-13', 168, 1, 'Sudah Bayar', 6, 0),
(173, '2018-04-13', 169, 1, 'Sudah Bayar', 6, 0),
(174, '2018-04-13', 170, 1, 'Sudah Bayar', 6, 0),
(175, '2018-04-13', 171, 1, 'Sudah Bayar', 6, 0),
(176, '2018-04-13', 172, 1, 'Sudah Bayar', 6, 0),
(177, '2018-04-13', 173, 1, 'Sudah Bayar', 6, 0),
(178, '2018-04-13', 174, 1, 'Sudah Bayar', 6, 0),
(179, '2018-04-13', 175, 1, 'Sudah Bayar', 6, 0),
(180, '2018-04-13', 176, 1, 'Sudah Bayar', 6, 0),
(181, '2018-04-13', 177, 1, 'Sudah Bayar', 11, 0),
(182, '2018-04-13', 178, 1, 'Sudah Bayar', 9, 0),
(183, '2018-04-13', 179, 1, 'Sudah Bayar', 11, 0),
(184, '2018-04-13', 180, 1, 'Sudah Bayar', 11, 0),
(185, '2018-04-13', 181, 1, 'Sudah Bayar', 11, 0),
(186, '2018-04-17', 182, 1, 'Sudah Bayar', 11, 0),
(187, '2018-04-17', 183, 1, 'Belum Bayar', 0, 0),
(188, '2018-04-17', 184, 1, 'Sudah Bayar', 11, 0),
(189, '2018-04-17', 185, 1, 'Sudah Bayar', 11, 0),
(190, '2018-04-17', 186, 1, 'Sudah Bayar', 11, 0),
(191, '2018-04-17', 187, 1, 'Sudah Bayar', 6, 0),
(192, '2018-04-25', 188, 1, 'Sudah Bayar', 9, 0),
(193, '2018-05-03', 189, 1, 'Belum Bayar', 0, 0),
(194, '2018-05-08', 190, 1, 'Belum Bayar', 0, 0),
(195, '2018-05-14', 191, 1, 'Sudah Bayar', 4, 0),
(196, '2018-05-14', 192, 1, 'Sudah Bayar', 4, 0),
(197, '2018-05-22', 193, 1, 'Sudah Bayar', 4, 0),
(198, '2018-05-24', 194, 1, 'Sudah Bayar', 9, 0),
(199, '2018-05-24', 195, 1, 'Sudah Bayar', 9, 0),
(200, '2018-05-30', 196, 1, 'Sudah Bayar', 5, 0),
(201, '2018-05-30', 197, 1, 'Sudah Bayar', 5, 0),
(202, '2018-05-30', 198, 1, 'Sudah Bayar', 5, 0),
(203, '2018-05-30', 199, 1, 'Sudah Bayar', 5, 0),
(204, '2018-05-30', 200, 1, 'Sudah Bayar', 5, 0),
(205, '2018-05-30', 201, 1, 'Sudah Bayar', 5, 0),
(206, '2018-05-30', 202, 1, 'Sudah Bayar', 5, 0),
(207, '2018-05-31', 203, 1, 'Sudah Bayar', 5, 0),
(208, '2018-05-31', 204, 1, 'Sudah Bayar', 5, 0),
(209, '2018-05-31', 205, 1, 'Sudah Bayar', 4, 0),
(210, '2018-06-02', 206, 1, 'Sudah Bayar', 5, 0),
(211, '2018-06-04', 207, 1, 'Sudah Bayar', 5, 0),
(212, '2018-06-04', 208, 1, 'Sudah Bayar', 5, 0),
(213, '2018-06-05', 209, 1, 'Sudah Bayar', 5, 0),
(214, '2018-06-05', 210, 1, 'Sudah Bayar', 5, 0),
(215, '2018-06-05', 211, 1, 'Sudah Bayar', 4, 0),
(216, '2018-06-05', 212, 1, 'Sudah Bayar', 5, 0),
(217, '2018-06-05', 213, 1, 'Sudah Bayar', 6, 0),
(218, '2018-06-05', 214, 1, 'Sudah Bayar', 6, 0),
(219, '2018-06-05', 215, 1, 'Sudah Bayar', 6, 0),
(220, '2018-06-05', 216, 1, 'Sudah Bayar', 4, 0),
(221, '2018-06-06', 217, 1, 'Sudah Bayar', 4, 0),
(222, '2018-06-06', 218, 1, 'Sudah Bayar', 11, 0),
(223, '2018-06-06', 219, 1, 'Sudah Bayar', 4, 0),
(224, '2018-06-06', 220, 1, 'Sudah Bayar', 4, 0),
(225, '2018-06-06', 221, 1, 'Sudah Bayar', 9, 0),
(226, '2018-06-06', 222, 1, 'Sudah Bayar', 5, 0),
(227, '2018-06-07', 223, 1, 'Sudah Bayar', 9, 0),
(228, '2018-06-07', 224, 1, 'Sudah Bayar', 6, 0),
(229, '2018-06-07', 225, 1, 'Sudah Bayar', 11, 0),
(230, '2018-06-07', 226, 1, 'Sudah Bayar', 6, 0),
(231, '2018-06-08', 227, 1, 'Sudah Bayar', 4, 0),
(232, '2018-06-10', 228, 1, 'Sudah Bayar', 5, 0),
(233, '2018-06-19', 229, 1, 'Sudah Bayar', 5, 0),
(234, '2018-06-20', 230, 1, 'Sudah Bayar', 5, 0),
(235, '2018-06-22', 231, 1, 'Belum Bayar', 0, 0),
(236, '2018-06-23', 232, 1, 'Belum Bayar', 0, 0),
(237, '2018-06-25', 233, 1, 'Sudah Bayar', 5, 0),
(238, '2018-06-28', 234, 1, 'Sudah Bayar', 5, 0),
(239, '2018-06-28', 235, 1, 'Sudah Bayar', 5, 0),
(240, '2018-06-29', 236, 1, 'Belum Bayar', 0, 0),
(241, '2018-06-30', 237, 1, 'Sudah Bayar', 11, 0),
(242, '2018-06-30', 238, 1, 'Sudah Bayar', 11, 0),
(243, '2018-07-01', 239, 1, 'Sudah Bayar', 11, 0),
(371, '2018-11-01', 367, 1, 'Sudah Bayar', 10, 0),
(245, '2018-07-04', 241, 1, 'Belum Bayar', 0, 0),
(246, '2018-07-06', 242, 1, 'Belum Bayar', 0, 0),
(247, '2018-07-09', 243, 1, 'Sudah Bayar', 4, 0),
(248, '2018-07-13', 244, 1, 'Sudah Bayar', 9, 0),
(249, '2018-07-13', 245, 1, 'Sudah Bayar', 6, 0),
(250, '2018-07-13', 246, 1, 'Sudah Bayar', 9, 0),
(251, '2018-07-13', 247, 1, 'Sudah Bayar', 9, 0),
(252, '2018-07-13', 248, 1, 'Sudah Bayar', 9, 0),
(253, '2018-07-13', 249, 1, 'Sudah Bayar', 9, 0),
(254, '2018-07-13', 250, 1, 'Sudah Bayar', 9, 0),
(255, '2018-07-13', 251, 1, 'Sudah Bayar', 9, 0),
(256, '2018-07-13', 252, 1, 'Sudah Bayar', 9, 0),
(257, '2018-07-13', 253, 1, 'Sudah Bayar', 9, 0),
(258, '2018-07-13', 254, 1, 'Sudah Bayar', 9, 0),
(259, '2018-07-16', 255, 1, 'Sudah Bayar', 4, 0),
(260, '2018-07-17', 256, 1, 'Sudah Bayar', 9, 0),
(261, '2018-07-17', 257, 1, 'Sudah Bayar', 9, 0),
(262, '2018-07-19', 258, 1, 'Sudah Bayar', 9, 0),
(263, '2018-07-20', 259, 1, 'Sudah Bayar', 6, 0),
(264, '2018-07-24', 260, 1, 'Sudah Bayar', 9, 0),
(265, '2018-07-25', 261, 1, 'Sudah Bayar', 9, 0),
(266, '2018-07-25', 262, 1, 'Sudah Bayar', 6, 0),
(267, '2018-07-25', 263, 1, 'Sudah Bayar', 9, 0),
(268, '2018-07-25', 264, 1, 'Sudah Bayar', 9, 0),
(269, '2018-07-25', 265, 1, 'Sudah Bayar', 9, 0),
(270, '2018-07-25', 266, 1, 'Sudah Bayar', 9, 0),
(271, '2018-07-25', 267, 1, 'Sudah Bayar', 9, 0),
(272, '2018-07-25', 268, 1, 'Sudah Bayar', 6, 0),
(273, '2018-07-25', 269, 1, 'Sudah Bayar', 9, 0),
(274, '2018-07-25', 270, 1, 'Sudah Bayar', 9, 0),
(403, '2019-03-09', 399, 1, 'Belum Bayar', 0, 0),
(276, '2018-07-26', 272, 1, 'Belum Bayar', 0, 0),
(398, '2019-03-01', 394, 1, 'Sudah Bayar', 11, 0),
(401, '2019-03-07', 397, 1, 'Sudah Bayar', 12, 0),
(397, '2019-02-27', 393, 1, 'Sudah Bayar', 11, 0),
(400, '2019-03-07', 396, 1, 'Sudah Bayar', 12, 0),
(394, '2019-02-22', 390, 1, 'Sudah Bayar', 11, 0),
(395, '2019-02-26', 391, 1, 'Belum Bayar', 0, 0),
(283, '2018-07-28', 279, 1, 'Belum Bayar', 0, 0),
(396, '2019-02-26', 392, 1, 'Belum Bayar', 0, 0),
(285, '2018-07-29', 281, 1, 'Sudah Bayar', 9, 0),
(399, '2019-03-07', 395, 1, 'Belum Bayar', 0, 0),
(287, '2018-07-29', 283, 1, 'Sudah Bayar', 6, 0),
(288, '2018-07-30', 284, 1, 'Sudah Bayar', 4, 0),
(289, '2018-07-30', 285, 1, 'Belum Bayar', 0, 0),
(290, '2018-07-30', 286, 1, 'Sudah Bayar', 4, 0),
(291, '2018-07-30', 287, 1, 'Sudah Bayar', 4, 0),
(376, '2018-12-03', 372, 1, 'Belum Bayar', 0, 0),
(293, '2018-07-30', 289, 1, 'Sudah Bayar', 4, 0),
(402, '2019-03-09', 398, 1, 'Belum Bayar', 0, 0),
(295, '2018-08-01', 291, 1, 'Belum Bayar', 0, 0),
(296, '2018-08-01', 292, 1, 'Sudah Bayar', 4, 0),
(297, '2018-08-01', 293, 1, 'Belum Bayar', 0, 0),
(298, '2018-08-02', 294, 1, 'Sudah Bayar', 6, 0),
(299, '2018-08-02', 295, 1, 'Sudah Bayar', 4, 0),
(300, '2018-08-03', 296, 1, 'Belum Bayar', 0, 0),
(301, '2018-08-03', 297, 1, 'Belum Bayar', 0, 0),
(302, '2018-08-03', 298, 1, 'Belum Bayar', 0, 0),
(303, '2018-08-03', 299, 1, 'Belum Bayar', 0, 0),
(304, '2018-08-06', 300, 1, 'Sudah Bayar', 6, 0),
(305, '2018-08-06', 301, 1, 'Sudah Bayar', 9, 0),
(373, '2018-11-05', 369, 1, 'Sudah Bayar', 10, 0),
(307, '2018-08-08', 303, 1, 'Belum Bayar', 0, 0),
(392, '2019-02-19', 388, 1, 'Belum Bayar', 0, 0),
(369, '2018-10-20', 365, 1, 'Belum Bayar', 0, 0),
(370, '2018-11-01', 366, 1, 'Sudah Bayar', 10, 0),
(311, '2018-08-10', 307, 1, 'Sudah Bayar', 4, 0),
(312, '2018-08-10', 308, 1, 'Sudah Bayar', 9, 0),
(391, '2019-02-18', 387, 1, 'Belum Bayar', 0, 0),
(314, '2018-08-19', 310, 1, 'Sudah Bayar', 4, 0),
(315, '2018-08-19', 311, 1, 'Sudah Bayar', 4, 0),
(316, '2018-08-20', 312, 1, 'Sudah Bayar', 8, 0),
(317, '2018-08-20', 313, 1, 'Sudah Bayar', 8, 0),
(318, '2018-08-21', 314, 1, 'Sudah Bayar', 8, 0),
(319, '2018-08-21', 315, 1, 'Sudah Bayar', 8, 0),
(320, '2018-08-21', 316, 1, 'Sudah Bayar', 8, 0),
(321, '2018-08-21', 317, 1, 'Sudah Bayar', 8, 0),
(322, '2018-08-21', 318, 1, 'Sudah Bayar', 8, 0),
(323, '2018-08-21', 319, 1, 'Sudah Bayar', 8, 0),
(324, '2018-08-21', 320, 1, 'Sudah Bayar', 8, 0),
(325, '2018-08-21', 321, 1, 'Sudah Bayar', 8, 0),
(326, '2018-08-21', 322, 1, 'Sudah Bayar', 8, 0),
(327, '2018-08-21', 323, 1, 'Sudah Bayar', 8, 0),
(328, '2018-08-21', 324, 1, 'Sudah Bayar', 8, 0),
(329, '2018-08-21', 325, 1, 'Sudah Bayar', 8, 0),
(330, '2018-08-21', 326, 1, 'Sudah Bayar', 8, 0),
(331, '2018-08-21', 327, 1, 'Sudah Bayar', 8, 0),
(332, '2018-08-21', 328, 1, 'Sudah Bayar', 8, 0),
(333, '2018-08-21', 329, 1, 'Sudah Bayar', 8, 0),
(334, '2018-08-21', 330, 1, 'Sudah Bayar', 8, 0),
(335, '2018-08-21', 331, 1, 'Sudah Bayar', 8, 0),
(336, '2018-08-21', 332, 1, 'Sudah Bayar', 8, 0),
(337, '2018-08-23', 333, 1, 'Sudah Bayar', 8, 0),
(338, '2018-08-24', 334, 1, 'Sudah Bayar', 10, 0),
(339, '2018-08-24', 335, 1, 'Belum Bayar', 0, 0),
(340, '2018-08-28', 336, 1, 'Sudah Bayar', 9, 0),
(341, '2018-08-28', 337, 1, 'Sudah Bayar', 9, 0),
(342, '2018-08-28', 338, 1, 'Sudah Bayar', 9, 0),
(343, '2018-08-28', 339, 1, 'Sudah Bayar', 9, 0),
(344, '2018-08-28', 340, 1, 'Sudah Bayar', 9, 0),
(345, '2018-08-28', 341, 1, 'Sudah Bayar', 9, 0),
(346, '2018-08-30', 342, 1, 'Sudah Bayar', 4, 0),
(347, '2018-08-31', 343, 1, 'Sudah Bayar', 4, 0),
(348, '2018-09-03', 344, 1, 'Sudah Bayar', 10, 0),
(418, '2019-04-10', 414, 1, 'Sudah Bayar', 11, 0),
(350, '2018-09-05', 346, 1, 'Sudah Bayar', 5, 0),
(351, '2018-09-13', 347, 1, 'Belum Bayar', 0, 0),
(352, '2018-09-13', 348, 1, 'Belum Bayar', 0, 0),
(354, '2018-09-14', 350, 1, 'Sudah Bayar', 9, 0),
(355, '2018-09-19', 351, 1, 'Sudah Bayar', 9, 0),
(356, '2018-09-22', 352, 1, 'Belum Bayar', 0, 0),
(357, '2018-10-01', 353, 1, 'Belum Bayar', 0, 0),
(358, '2018-10-02', 354, 1, 'Sudah Bayar', 10, 0),
(359, '2018-10-02', 355, 1, 'Sudah Bayar', 10, 0),
(360, '2018-10-02', 356, 1, 'Belum Bayar', 0, 0),
(361, '2018-10-02', 357, 1, 'Sudah Bayar', 10, 0),
(362, '2018-10-03', 358, 1, 'Sudah Bayar', 10, 0),
(363, '2018-10-04', 359, 1, 'Sudah Bayar', 6, 0),
(364, '2018-10-04', 360, 1, 'Belum Bayar', 0, 0),
(365, '2018-10-04', 361, 1, 'Sudah Bayar', 10, 0),
(366, '2018-10-04', 362, 1, 'Sudah Bayar', 10, 0),
(419, '2019-04-23', 415, 1, 'Sudah Bayar', 11, 0),
(368, '2018-10-05', 364, 1, 'Sudah Bayar', 6, 0),
(404, '2019-03-12', 400, 1, 'Sudah Bayar', 11, 0),
(405, '2019-03-14', 401, 1, 'Sudah Bayar', 11, 0),
(406, '2019-03-15', 402, 1, 'Belum Bayar', 0, 0),
(407, '2019-03-15', 403, 1, 'Sudah Bayar', 11, 0),
(408, '2019-03-19', 404, 1, 'Belum Bayar', 0, 0),
(409, '2019-03-22', 405, 1, 'Belum Bayar', 0, 0),
(410, '2019-03-25', 406, 1, 'Belum Bayar', 0, 0),
(411, '2019-03-25', 407, 1, 'Belum Bayar', 0, 0),
(412, '2019-03-25', 408, 1, 'Belum Bayar', 0, 0),
(413, '2019-03-27', 409, 1, 'Sudah Bayar', 11, 0),
(420, '2019-04-23', 416, 1, 'Sudah Bayar', 11, 0),
(421, '2019-04-25', 417, 1, 'Belum Bayar', 0, 0),
(422, '2019-04-25', 418, 1, 'Sudah Bayar', 11, 0),
(423, '2019-05-02', 419, 1, 'Sudah Bayar', 12, 0),
(424, '2019-05-05', 420, 1, 'Sudah Bayar', 12, 0),
(425, '2019-05-06', 421, 1, 'Sudah Bayar', 11, 0),
(426, '2019-05-08', 422, 1, 'Sudah Bayar', 12, 0),
(427, '2019-05-08', 423, 1, 'Sudah Bayar', 12, 0),
(429, '2019-06-12', 424, 1, 'Belum Bayar', 0, 0),
(430, '2019-06-13', 425, 1, 'Sudah Bayar', 12, 0),
(431, '2019-06-17', 426, 1, 'Sudah Bayar', 12, 0),
(432, '2019-06-18', 427, 1, 'Sudah Bayar', 12, 0),
(433, '2019-06-19', 428, 1, 'Sudah Bayar', 12, 0),
(434, '2019-06-19', 429, 1, 'Sudah Bayar', 12, 0),
(435, '2019-07-01', 430, 1, 'Belum Bayar', 0, 0),
(436, '2019-07-01', 431, 1, 'Belum Bayar', 0, 0),
(437, '2019-07-01', 432, 1, 'Belum Bayar', 0, 0),
(438, '2019-07-01', 433, 1, 'Belum Bayar', 0, 0),
(439, '2019-07-01', 434, 1, 'Sudah Bayar', 12, 0),
(440, '2019-07-01', 435, 1, 'Belum Bayar', 0, 0),
(441, '2019-07-01', 436, 1, 'Belum Bayar', 0, 0),
(442, '2019-07-02', 437, 1, 'Sudah Bayar', 12, 0),
(443, '2019-07-02', 438, 1, 'Belum Bayar', 0, 0),
(444, '2019-07-02', 439, 1, 'Sudah Bayar', 12, 0),
(445, '2019-07-03', 440, 1, 'Sudah Bayar', 12, 0),
(446, '2019-07-03', 441, 1, 'Belum Bayar', 0, 0),
(447, '2019-07-03', 442, 1, 'Belum Bayar', 0, 0),
(448, '2019-07-03', 443, 1, 'Belum Bayar', 0, 0),
(449, '2019-07-03', 444, 1, 'Belum Bayar', 0, 0),
(450, '2019-07-03', 445, 1, 'Belum Bayar', 0, 0),
(451, '2019-07-04', 446, 1, 'Sudah Bayar', 12, 0),
(452, '2019-07-04', 447, 1, 'Belum Bayar', 0, 0),
(453, '2019-07-05', 448, 1, 'Belum Bayar', 0, 0),
(454, '2019-07-05', 449, 1, 'Belum Bayar', 0, 0),
(455, '2019-07-05', 450, 1, 'Sudah Bayar', 12, 0),
(456, '2019-07-05', 451, 1, 'Belum Bayar', 0, 0),
(457, '2019-07-11', 452, 1, 'Belum Bayar', 0, 0),
(458, '2019-07-12', 453, 1, 'Belum Bayar', 0, 0),
(459, '2019-07-15', 454, 1, 'Belum Bayar', 0, 0),
(460, '2019-07-17', 455, 1, 'Sudah Bayar', 12, 0),
(461, '2019-07-17', 456, 1, 'Sudah Bayar', 12, 0),
(462, '2019-07-17', 457, 1, 'Sudah Bayar', 12, 0),
(463, '2019-07-17', 458, 1, 'Sudah Bayar', 12, 0),
(464, '2019-07-17', 459, 1, 'Sudah Bayar', 12, 0),
(465, '2019-07-17', 460, 1, 'Sudah Bayar', 12, 0),
(466, '2019-07-17', 461, 1, 'Belum Bayar', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tr_nilai`
--

CREATE TABLE `tr_nilai` (
  `id` bigint(20) NOT NULL,
  `id_pengajar` int(255) NOT NULL,
  `npm_mahasiswa` int(255) NOT NULL,
  `id_gelombang` int(255) NOT NULL,
  `id_aspek` int(255) NOT NULL,
  `id_kursus` int(255) NOT NULL,
  `nilai` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tr_pengajar_kursus`
--

CREATE TABLE `tr_pengajar_kursus` (
  `id` int(6) NOT NULL,
  `id_pengajar` int(6) NOT NULL,
  `id_kursus` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_pengajar_kursus`
--

INSERT INTO `tr_pengajar_kursus` (`id`, `id_pengajar`, `id_kursus`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tr_ujian`
--

CREATE TABLE `tr_ujian` (
  `id` int(6) NOT NULL,
  `id_kursus` int(6) NOT NULL,
  `nama_ujian` varchar(255) NOT NULL,
  `jumlah_soal` int(6) NOT NULL,
  `waktu` int(6) NOT NULL,
  `jenis` enum('acak','set') NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_ujian`
--

INSERT INTO `tr_ujian` (`id`, `id_kursus`, `nama_ujian`, `jumlah_soal`, `waktu`, `jenis`, `status`) VALUES
(1, 1, 'Pretest Gelombang 1', 40, 60, 'acak', 'Tidak Aktif'),
(0, 0, 'Belum Ujian', 0, 0, 'set', 'Tidak Aktif'),
(2, 1, 'Pretest online Brevet Pajak Terpadu', 40, 60, 'acak', 'Aktif'),
(3, 1, 'Pretest Online', 40, 90, 'acak', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `password` longtext NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` varchar(1000) NOT NULL,
  `npm` varchar(255) NOT NULL,
  `id_tabel` int(100) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `email`, `level`, `npm`, `id_tabel`, `status`) VALUES
(401, 'vRNNP9Bn/6W5/82etBvpYC0t/gAvBoZD/KPjcwtSFSs=', 'Ayuhayuningsih795@gmail.com', 'Mahasiswa', '21213540', 380, 0),
(394, 'j43plWqosORVfawEEOCEU0y4T9WsQQEyPDZAffbqxDc=', 'retnoagustiningsih78@gmail.com', 'Mahasiswa', '25215787', 373, 1),
(395, 'oRmZazNNJjtfCl4HehDoByaJMPZ/BeGMGI1pB93bqC8=', 'bimaflash@gmail.com', 'Mahasiswa', '21216424', 374, 1),
(396, '9sTMfdO+qGoAFM5kKhrhCmkYwQn4eDxT2sy6sd2fWG8=', 'azizahfarhanah@yahoo.com ', 'Mahasiswa', '51216270', 375, 1),
(397, 'RQ0nB8n+G7cuppAqX2Kh7ObovJYR5RjqQEgZXJYCU94=', 'ayi.rully@gmail.com', 'Mahasiswa', '21298281', 376, 1),
(398, 'zlVsYebyQ1htI9yJHPusP47nrVcGXv0igytdh/jNQ+s=', 'anggraeniutami97@gmail.com', 'Mahasiswa', '40215798', 377, 0),
(399, 'cxheEA6tr/D5rwb1cWrmPyfwtmtegrfPalZ90U8pdfs=', 'Megaega703@gmail.com', 'Mahasiswa', '4B216950', 378, 0),
(400, 'U7EARY83FQhlhAWV6b5vjz+5QQi1W37voLNUG3mCH8w=', 'rakaardyansah@gmail.com', 'Mahasiswa', '26216025', 379, 0),
(37, 'YEPWnDIgqVHufbM+GqVNHUSupxYcWc2DSttz6F88jBM=', 'malichaaz@gmail.com', 'Mahasiswa', '24212401', 20, 1),
(402, 'vTVK4rHDZJ/Dw77qu7rlivLBARg/xGBfCrTGPZModEQ=', 'jamal', 'Mahasiswa', '0152000154', 381, 0),
(39, 'CNUABDYYgC8ZhOcq5Okk3C+InUUX8HQyU+xnUED40LQ=', 'nengtitapurwasih@gmail.com', 'Mahasiswa', '27214894', 22, 1),
(40, 'LUGrPiZGHt3hi30Pag1dGsFEK3NypqWdnuX1tCpAwK0=', 'rodiyahnurahmadok@gmail.com', 'Mahasiswa', '2A214384', 23, 1),
(41, 'KxCRaviiLlLxp/sIuTOiqYOekOxg37dhPrP4AORY+8c=', 'andri.khairizal@gmail.com', 'Mahasiswa', '21214146', 24, 1),
(42, 'tfLubX2dTOWnABXiTzYaSWAwOBtYnb2VAeXCOYz73ZI=', 'putriindahsurya09@gmail.com', 'Mahasiswa', '28214605', 25, 1),
(392, 'jYFM11kUbS7GBN5K2h5eLK9uPekb+AWZDWNVt8XbXj0=', 'Susifatmaw17@gmail.com', 'Mahasiswa', '17216209', 371, 1),
(44, '506NdCiUlAqilYfA/Iyc0wCBvwwk08kk5xU0+h7BV6Q=', 'diannd96@gmail.com', 'Mahasiswa', '22214986', 27, 1),
(72, 'QrUgcNdRjaE74hfEIeThKa/RaqA9N/KpBI+X7VeiyfE=', 'muhammad.ridho94@gmail.com', 'Super Admin', '58412112', 52, 1),
(433, 'pUMANJ605y3ncwo9okA6YtDbkxTfforoVGwyFI69/UE=', 'Ramadhony04@gmail.com', 'Mahasiswa', '24216201', 412, 1),
(391, '9VNkz01LzSAi86UsiCO/G5QUnPSBIptbGCJNpczJXj8=', 'tivaoktarinayasda@gmail.com', 'Mahasiswa', '17216411', 370, 1),
(48, '5q7WPQsEXbpG/TzkNZbIjVuipCEKNRAQcjm8qMBJQxQ=', 'fazzhrh@gmail.com', 'Mahasiswa', '24214043', 31, 1),
(49, 'Q8zGQwZM9zIVoPl4ELeY4JUuHSBLl/RpwhN7ER8I03U=', 'miftahul.maswa12@gmail.com', 'Mahasiswa', '26214646', 32, 1),
(50, 'd3i6e58xzozWPj0m7p+DzEfwUxEOWj9s8vJUI6G8tEc=', 'adearosa@yahoo.com', 'Mahasiswa', '22214592', 33, 1),
(51, 'l26UVTMBlFs3tE00k6p/AEh3A673O/ugRPJ26KAIxnU=', 'sitifatimah.lutfiana@gmail.com', 'Mahasiswa', '2A214346', 34, 1),
(52, 'UkAub8j0QRBVrwKCcLX04QmGdV02pdGOYqPueXSuPAU=', 'riaankurnia@gmail.com', 'Mahasiswa', '29214221', 35, 1),
(53, 'w8HtH8GstsOGCWNb3wIuyk8zOSzKdL+o5Cm4yAOHTmI=', 'arifatul.faidah@gmail.com', 'Mahasiswa', '21214615', 36, 1),
(54, '8xjzjsRazQy8/Cih0IlAgHBXuHZMDMpuPqWhYT0IVoQ=', 'mutianoor24@gmail.com', 'Mahasiswa', '25212366', 37, 1),
(55, '5UbskqeKLoC89xZSfxgskNipG7YuAetFkB69KhjbR10=', 'andaputraa@gmail.com', 'Mahasiswa', '20212734', 38, 1),
(404, '93NgwpAGm1GITzdmL6TOAS4MQW5cjj8CsXMvE3Iyck0=', 'salsabila3398@gmail.com', 'Mahasiswa', '26215346', 383, 0),
(58, 'eeUBcPaavg5iNJeFOqTTkstnwZ9OyCZto50/4CP2zh8=', 'larasdian151296@gmail.com', 'Mahasiswa', '25214980', 41, 1),
(59, '4yWh8Hico9PjQ974bNsjtWv2p42p2qpIoolhRs6FMfg=', 'alviani64@gmail.com', 'Mahasiswa', '16215172', 42, 0),
(60, '3NgyzFREYalq8MATz287PwF/hUfpPRs/hHMKGY1jNbM=', 'mutiafajarriani@gmail.com', 'Mahasiswa', '27214667', 43, 1),
(61, 'pcRZT49IOSuz3FuEWy1k8LhSdQiB4aJ6XGBNSOEmWEg=', 'cindy.gufa@gmail.com', 'Mahasiswa', '22214416', 44, 1),
(64, '1xi/JQFIkVaofcnzdX2vFQYKZijOM9vPUegnIpG4ez4=', 'amelnurul@gmail.com', 'Mahasiswa', '9211600', 45, 1),
(65, 'upY8qrXJnpEtpMycnc8ctr6k6TeRdTjMbPLK0TWrQZs=', 'mareirka@gmail.com', 'Admin', '25213290', 46, 1),
(67, '9bzVumPaeTV6ZMp/HQtvdnMpATv5mgNi8Wfqq6t2ph0=', 'kun.nakayumm@gmail.com', 'Admin', '29213354', 47, 1),
(68, '3XMBq+s5EhLxjaxCElahX+aYi7OzHIWn6OkzmKHs9Zk=', 'chairunnisaskinanti@gmail.com', 'Mahasiswa', '21215453', 48, 1),
(69, 'XgUdGdIu31ZJjG4JzyULOObWj+cefLLafekCPzMbbro=', 'Utriyamandasari@gmail.com', 'Mahasiswa', '26215991', 49, 1),
(70, 'kJOA0mlgY2eyPOf3M9Xm6DjI4wQ0M+UsY85t1feqdWA=', 'irajessica11@gmail.com', 'Mahasiswa', '23215415', 50, 1),
(73, 'Lb79VXVufbI5ZjzwRoARghIt7jnJ09vpl6k0hFcdRW0=', 'teddyariewijaya@yahoo.com', 'Mahasiswa', '18213827', 53, 1),
(71, 'YAOYy+m9uBi3H92bMB7YWtejlbg8EYZHhSHJe5rLvZ8=', 'Sisi.frisilia@yahoo.com', 'Mahasiswa', '22215787', 51, 0),
(74, 'lxP0iAJzVMuKX6J8RbyVq3oJrU/9WMQql3ZckFU+3M0=', 'niarahmawatiii12251@gmail.com', 'Mahasiswa', '25215035', 54, 1),
(75, 'j9plEjfCqwWycVrP5odbgfZAFdK9Gh1nMzSh5MfBs7c=', 'Amaliapermatasari9@gmail.com', 'Mahasiswa', '20215606', 55, 0),
(76, 'dANZ+vyqXhDmaQxIr6DlID/0OiNtO08m0r4Ukz1yL74=', 'prabowoaji908@gmail.com', 'Mahasiswa', '24217497', 56, 0),
(77, '1j9X4i9JYJpyBhmkPrTWgvsl1LNs2zRoM0KxCYgZDAo=', 'nofita42@gmail.com', 'Mahasiswa', '24217529', 57, 0),
(78, 'iSL/LGJzXIXafff4ywn5KfXT9v2cP6MGebD8FHu6+dg=', 'febiurangtaluak@gmail.com', 'Mahasiswa', '26217637', 58, 0),
(80, 'qpO99XvxCf28yavJoC6Jfdaqz4Lgw0NCP0jqGD43RRg=', 'afaafahhb@gmail.com', 'Mahasiswa', '10212293', 59, 0),
(81, 'vZUhIF818aVJ8GP2Tr2OABh9nZgJ7dxomjKSvVSBZYY=', 'elsamaruru@gmail.com', 'Mahasiswa', '23214524', 60, 0),
(82, 'CJdsQg1H84INrKffYhSPbFYWKteVOsjMh95+s99bqAU=', 'Silviadinayanti@gmail.com', 'Mahasiswa', '1B216114', 61, 0),
(83, 'w7rDZHXn4kuM+iNeGTBrUsueu2s3FuOKR9KZ83se39U=', 'anisaputriismi@gmail.com', 'Mahasiswa', '25214512', 62, 1),
(84, 'IKZchw5mDfLS7wsjR4xz/+N9M83uizgMn4xJTx+XTgk=', 'Titan.herdianto@gmail.com', 'Mahasiswa', '2A214790', 63, 0),
(85, 'UuhfT1QTXREQxjebvzSCjaiO4M3m/g70ZlUpy644NGo=', 'oktafajar8@gmail.com', 'Mahasiswa', '22216562', 64, 1),
(86, 'TQMxo7jLsDYZ1DKDnbYwdG2mHCwZhf7qjWzfJ3SqNmU=', 'dindachandra19@gmail.com', 'Mahasiswa', '26216228', 65, 1),
(87, 'Gp0IJf13P9EoprCkw8vqruMe6l2i6KihKIqFiQN3DFM=', 'agungmaulana658@gmail.com', 'Mahasiswa', '27215780', 66, 1),
(88, '6w68ZgbmGuu5bjg/rtH7YmrmJQBGrQ1/TxNF6Jgindw=', 'wahyunilestarisiregar97@gmail.com', 'Mahasiswa', '27216599', 67, 1),
(89, 'QU0I1ciq2y/YOo/6pQMM/s45Bif/cfQs059I/hKa2s0=', 'bungachintya09@gmail.com ', 'Mahasiswa', '21213816', 68, 1),
(90, '3UlLk0z1Xl/mOo3GmLj0GJg/26Q2dLBY7iLzDydw3MI=', 'citraayuwm@yahoo.com', 'Mahasiswa', '21215519', 69, 1),
(91, 'TwvvhF1a3/xEfjm6m5WDkQmG9se27+kQrIUGVETzvp0=', 'devin.yusriya@gmail.com', 'Mahasiswa', '21215766', 70, 1),
(92, '4In5LJBPxMtPXTc4lcVE1vy8L16nzbYyl1Ff6RgIfmo=', 'Dianastara19@gmail.com', 'Mahasiswa', '22214975', 71, 1),
(93, 'LOczSgGaVmAhIHgrWT85z1PIiZRDYoIBmn2/6kQHHIk=', 'selvy_anwar@yahoo.co.id', 'Mahasiswa', '2B215862', 72, 1),
(94, '+9+DJ3vqdlcJy3ofTF6BDwKczpF2pxiGNAf4jAabXUU=', 'nagyadestari@gmail.com', 'Mahasiswa', '25216253', 73, 1),
(95, 'BW/bJ9SZaUpGMHKMaehEfOLSOWtqtRW3j9VS3DiK2YQ=', 'gustiandanggaluh@gmail.com', 'Mahasiswa', '24214636', 74, 1),
(96, 'ra9WaptSEEJJQ/cYZazwb27dT5Myy6Cc5IVaApSUUJY=', 'dwiratnaprahasty@gmail.com', 'Mahasiswa', '29213813', 75, 1),
(97, 'THfJtN8gYb+t9KjE9DcIRhZAW0DQivoNRc7WsApPh5Y=', 'imaduddin3110@gmail.com', 'Mahasiswa', '26214797', 76, 0),
(98, '7gYDGaZRpfHMpfK+1gltwIDKoSNUjgP9U6YgJST1K5w=', 'anidah.tax@gmail.com', 'Mahasiswa', '21213044', 77, 1),
(388, '337CBEWlkLpHfdxVdFxFTjwD1w71jY0SMNye2QT1weQ=', 'nadhifahsafitri.me@gmail.com', 'Mahasiswa', '24215907', 367, 1),
(100, 'Zlo56Yc1QRkDzGqIq/Bat7yrx1hTmethOJQkriMyjgs=', 'maylinda0810@gmail.com', 'Mahasiswa', '26214497', 79, 0),
(101, '/LXYAQB0HCQnKZxmrhBRNkIHFoxRAKCrLYoxTnMT8V4=', 'ranivionita@gmail.com', 'Mahasiswa', '27213291', 80, 1),
(102, 'KqA67wtw1f19kyhS0LdHHx9mzxb6hU12SfGcLNlApAY=', 'vijaykhumara@gmail.com', 'Mahasiswa', '24215302', 81, 1),
(103, 'Gx2yajoLlInRURft3lDF1jRsHwTHJ0BUM1FUXbk0jjk=', 'rizky.amalia964@gmail.com', 'Mahasiswa', '29214665', 82, 1),
(104, 'JHiy4fxnMiPiq7HxCI/y++5LboAkiMC+qZWmOVDRi5I=', 'ichabudiman@gmail.com', 'Mahasiswa', '21214353', 83, 1),
(105, 'AfMuHpw68+M3Wh5uki3oY0rOe/IWXtbVWfGG2DRQ81U=', 'wijdaanrifdah@gmail.com', 'Mahasiswa', '29214345', 84, 1),
(106, 'Wqh4mfz8Z/5w2JH4OXTjS2xXjb3WagRFtqqu2PNA14A=', 'nitarahmahsa@gmail.com', 'Mahasiswa', '2C214900', 85, 1),
(107, '3cuYg9CHHzt89Xy+9aPGYBmtn1hzstkFcCTUMdUurFc=', 'Rosdianayulia35@gmail.com', 'Mahasiswa', '2C214543', 86, 1),
(108, 'XqTDQ4txW0wjOgZW0epFwv/9CBiBUArLUq6X3v8moCw=', 'dwipratiwi846@yahoo.com', 'Mahasiswa', '22213689', 87, 1),
(109, 'lSWbV6rDWD6qUncF1QOv3RUtpl+jULLC49Vk12eqO1w=', 'arsyidc@gmail.com', 'Mahasiswa', '21213398', 88, 1),
(110, '5dGozTPpu7B9KkWVuRTvWhTwd7Gz/zmojzbPBxlmznU=', 'Aneschristofer@gmail.com', 'Mahasiswa', '25214680', 89, 1),
(111, 'am9GAyny72tRWwgEiqyr3OX9nQUvpiYCNFwCtpWIYcQ=', 'ajenghhadiyurike@gmail.com', 'Mahasiswa', '20214666', 90, 0),
(112, 'r/wSq7bWT+qnoy+u2Lycbeg679ArdNEFzC3OdCjYFYk=', 'zalikanurul@gmail.com', 'Mahasiswa', '2c214651', 91, 1),
(432, 'wS8ceM/aPmTp+dZAly+fV/Lq88YwRpljV2FeyYkIsqs=', 'nintakarina17@gmail.com', 'Mahasiswa', '52516444', 411, 0),
(114, 'QLjI0m14cZZBUNij+yZ3zXlMY8GjPjFu0G8yi+AwgMI=', 'anggiavita@gmail.com', 'Mahasiswa', '21214237', 93, 1),
(115, 'Dfh93OfYnTSxfXPE9/HqEm786zaz7QvaFOKHi0p9FSM=', 'gilang10.gm@gmail.com', 'Mahasiswa', '22215903', 94, 1),
(116, 'xpo/zVEBhbGsHO2OcF5e7SHGzwDlFbuv/rHuiSDHuH0=', 'Idamulyawati2@gmail.com', 'Mahasiswa', '25214079', 95, 1),
(117, 'XIjkaEyqwC4KEAVFl8qr9PqjPPwxLulrcbG/EwyaYkU=', 'dea.amanda99@gmail.com', 'Mahasiswa', '22214572', 96, 1),
(118, 'NTPGpWPUdFOjoMX/G8bwbHJWHPptJ2B6qacgvOCPNUQ=', 'dian.primasanti13@gmail.com', 'Mahasiswa', '22213363', 97, 0),
(119, 'j2eVW/K5hja/vlDHYgQ2+cfccYmP6u29urN384vCIAE=', 'lalasyarifsnl@gmail.com', 'Mahasiswa', '26215631', 98, 0),
(120, '0ZaQED5RJpBSy1Hxm38alyenvmJBnC4ESrOiSetrcVA=', 'emilia.rosana62@gmail.com', 'Mahasiswa', '22215208', 99, 1),
(121, '0ILdMHqQ3L07CsojNW+plxCSa3cq+CETKJZszQ3LqNY=', 'Rintosabri@gmail.com', 'Mahasiswa', '26215027', 100, 0),
(122, 'CSG27VzhfZvpyhrwLAFXZRiLjrJok9YsoYke9p/mekY=', 'annisa.sujana@yahoo.com', 'Mahasiswa', '21214405', 101, 1),
(123, '1mGeJ5tstvt5M7cLSij0dmq+Fh4ueMFw71hBmPC4zu0=', 'ayurachmanii@gmail.com', 'Mahasiswa', '21214884', 102, 1),
(124, 'Cxu/PR7zfvT8umBwCSEewERyNPtYdw6Z97Q7aZ6XMts=', 'pitalokaanita18@gmail.com', 'Mahasiswa', '21214321', 103, 1),
(125, 'XJJ2l2U9t/TO4HQGwCmQmOzlBQi8IdQDXgHpI1bgL3c=', 'mutian.munil@gmail.com', 'Mahasiswa', '27214672', 104, 0),
(126, 'S4eqyIyLkzy3zLjumza6Wb3QwG9IMksTrV8Avq4rWKI=', 'yuansatyarini@gmail.com', 'Mahasiswa', '2B217029', 105, 0),
(127, '03hZ+nfI3ftWwZRoXbOeMum/PSxwEZiQ4ecRiIW8wqY=', 'Zaki.bakhtir98@gmail.com ', 'Mahasiswa', '24215241', 106, 0),
(128, 'XtTjt3KDoiwo37q1EuKNckBb7q5F+h3lWi9ZaZRZ+YI=', 'Andreesetiawan98@gmail.com', 'Mahasiswa', '20216816', 107, 1),
(129, 'HEESYWKQOMzfdIM/WN2x58ujc9qzv9Vd2ECPkyr4x1k=', 'alfiakhdan31@gmail.com', 'Mahasiswa', '20216549', 108, 1),
(130, '1Wn7dr/2rZ6T5Mr5B1FdzbhFmF5gWUtzD2Y7qzE/Hns=', 'aprkevin@gmail.com', 'Mahasiswa', '23216853', 109, 1),
(131, 'Y5tJLZc6DkH4YqWRdqKP0Ek5fXRs4bcBSVAIAbLWf9w=', 'afrizalrizki98@gmail.com', 'Mahasiswa', '24216681', 110, 1),
(132, 'yzUhyr4wS7wotl+ai1e+J2+wSKn9IbPS9K678jT56SA=', 'rioprasetyo2404@gmail.com', 'Mahasiswa', '26216449', 111, 1),
(431, '7KrZJufEVBnn8mkYAMGETd1bhLgTDjTTfnfUK9OTIDE=', 'annesadeakusuma14@gmail.com', 'Mahasiswa', '20216930', 410, 0),
(134, 'iHZIS717sNlBQVUYtzzozOxAWy3wC3aehV/v9ztaSgI=', 'fadellmd@gmail.com', 'Mahasiswa', '23214731', 113, 1),
(135, 'wiIfp4ewKaq4KxvHIQNeGaE4nRImR0ofrGlGRV9W3U4=', 'Iswoyo.star9@gmail.com', 'Mahasiswa', '25214533', 114, 1),
(136, 'wkfr9KzOpN/uiZOfZ7iLjOLca7Jp6jeG0ROD8r76K/c=', 'Sansanisan94@gmail.com', 'Mahasiswa', '27214316', 115, 1),
(137, 'bZc0evwh+eVnRV4wW7t0/EzavD7pbt8r4Qnzkv1s5tU=', 'nurachma_qamara@yahoo.com', 'Mahasiswa', '25215203', 116, 1),
(138, 'lN4f43+J8E1KNGrCxg3m4/fR3nNCcO38Me9GUBI6Z6I=', 'susantikusuma6@gmail.com', 'Mahasiswa', '26215728', 117, 1),
(139, 'q4MPeqjubt6668a2iWWopXitHed5lINdGIiTBxfSngE=', 'Bella.bb211@gmail.com', 'Mahasiswa', '21215323', 118, 0),
(389, 'qG3t/2hwQEWrp/pyVGh06hll8iJnJb10rTW4mHiNUB8=', 'fitriindahari483@gmail.com', 'Mahasiswa', '22215736', 368, 1),
(141, 'jrNdWpBWH0mIMEQVMPC9coQjV8x6A/JWv+Bb+cSyzuI=', 'kamilriswanto12@gmail.com', 'Mahasiswa', '27215717', 120, 1),
(142, 'k/F9mrnaZhOZxTkGybl8SwD6aAHO6WHNlsdI0SC+Jfw=', 'Yosephki@yahoo.com', 'Mahasiswa', '27215291', 121, 0),
(143, 'KxyfMeRaklMLDmJGBS+k23bIelf124KWbDw8OQhL2sg=', 'Irfanadit0526@gmail.com', 'Mahasiswa', '23215424', 122, 0),
(144, '4qcLYb1y3OOB23+im4PTJzB/EjYUZO5lkVN8guLjsj4=', 'bagasalifj@gmail.com', 'Mahasiswa', '21215217', 123, 1),
(145, '8duw7RH5PMSYCF9qlE2tS2kL8jbhfibaah1GPP+CBzo=', 'maulana_erii@yahoo.com', 'Mahasiswa', '22215232', 124, 1),
(146, 'ufBcEMUeHEKv66P2px0F0HXNz8afpJaxQoUnO29ESn8=', 'm.irfan.octavianto9c@gmail.com ', 'Mahasiswa', '27215541', 125, 1),
(147, '0G+GNt/nct+SP4fKyIrZQyFjDinq/S29k7rEkkHIX8s=', 'mochmdrizky@gmail.com', 'Mahasiswa', '24215414', 126, 1),
(148, 'DELSteKkVf8XnNL986H71FX0eaK8k3kZP3y2pQF5gh4=', 'daruiswndr@gmail.com', 'Mahasiswa', '22215040', 127, 1),
(149, '7HwFSkO7lOfkirWZm/l1B9eNt8WEdeyJF8NY7EHeitI=', 'muhammademir10@yahoo.com', 'Mahasiswa', '24215279', 128, 1),
(150, 'G+E/b9sKl0oqTdQNiXGGNLXETVgEDK2hNx9DjKX61/I=', 'mariacici30@gmail.com', 'Mahasiswa', '24215025', 129, 0),
(151, 'Jcy05QIqRKkrNvySD3zJHlBvV0I6+LqpKIJ4ExL/0VI=', 'hestikomariyah67@gmail.com', 'Mahasiswa', '23215151', 130, 1),
(152, 'gp/Y3gkjK5ZHBY1M4lAefirJCxU5rlSP/g5u2G7s1WY=', 'yuandafandestyana@gmail.com', 'Mahasiswa', '57215301', 131, 1),
(153, 'rJEdOZ+XBp4X69QXzHiHKIsOqsuFlj1kZ4ar5hy9Isg=', 'Rofiatul050@gmail.com', 'Mahasiswa', '57215804', 132, 1),
(154, 'ecLNKLdwUO/CSMpne7z98AGvQw/qgIR+ARyDf2OIYI4=', 'marryati898@gmail.com', 'Mahasiswa', '54215054', 133, 1),
(390, 'udFQ9KgvLNVElM0EWQASJcuXqxZK5jDJ+6Rd23peo+E=', 'Masayunabila25@gmail.com', 'Mahasiswa', '24215059', 369, 1),
(156, 'Zwmce2yATWHFJCk5xgmbkfsu6t1A4REQU2hlEEH2Has=', 'rfdhaa@yahoo.com', 'Mahasiswa', '29214346', 135, 1),
(157, 'lzdkgMCFEkksmCPnosmCVG69N20Lut5Q+vv7CTPea2c=', 'Eldessca.0297@gmail.com', 'Mahasiswa', '23214502', 136, 1),
(158, 'tRCdRukVS0KMcu+6F09T9BkwzxR9aH0mZteFHIGh7vc=', 'marlinabyakuya@gmail.com', 'Mahasiswa', '2D214194', 137, 1),
(159, 'keIbNHdn1JVVeOUGJ/L7ta49eXzcVQvB+Q1m0Oxb6ws=', 'deviayuwulan20@gmail.com', 'Mahasiswa', '22214814', 138, 1),
(160, 'qBMgzbzvd4/prttjAu+a296z/CUEhgwrLmF5NsDgMYM=', 'dinaesti29@gmail.com', 'Mahasiswa', '23214135', 139, 1),
(161, 'dPFWnINpMoYXnAbej2pZZ9DnRdxU2mL0fzr49JAcBCA=', 'yanirika81@gmail.com', 'Mahasiswa', '2d214070', 140, 1),
(162, 'S0GRHt4vDuS1pzk9AU6K+fAF8ECLb81NBleGHc3U7Nc=', 'deasybatara@gmail.com', 'Mahasiswa', '2C214994', 141, 1),
(163, 'Hh30V7iz8KOAk5nbnXArCGUckk0sbNzOYyReDRC3UTw=', 'wilujeng.istiqomah96@gmail.com', 'Mahasiswa', '25214531', 142, 1),
(164, 'EjjzGe9L7PLQ0LlQBG34ngLu6ItVJi6H+Xkojtmk/+E=', 'm.ibnusalam@gmail.com', 'Mahasiswa', '25213625', 143, 1),
(165, 'gUZ4m47xwRSee4P/sozvncZww9RjBlF5m0ozeHeYL+U=', 'irmahandayani95@gmail.com', 'Mahasiswa', '24213495', 144, 1),
(166, 'sf07L05nTENVu9R9SkqlqYw5trUBAuTxlKm5OmElZrU=', 'dwikikia91@gmail.com', 'Mahasiswa', '22216192', 145, 1),
(167, 'DkQxi8hoswUkX+sCmrsnufaiX/AerJYcktAP/+pd0nw=', 'khairunisahmutia02@gmail.com', 'Mahasiswa', '25216182', 146, 1),
(168, '+99bQUkIQaxxIpfHyC29bhkE2ayoUBe3jyT4dPEOscI=', 'Windyaanwind@gmail.com', 'Mahasiswa', '2C214285', 147, 0),
(169, 'ictvxE606BXqzLwcQbvKuNOMS2wIMDOfdm3W7V6clZY=', 'yospiansimamora26@gmail.com', 'Mahasiswa', '2C214480', 148, 1),
(170, 'j2Z6AnpTmZql/9GFkiUxO06tLZuSPilAwz9ekidvQsw=', 'yunnah.purnama@gmail.com', 'Mahasiswa', '2C214567', 149, 1),
(171, 'GARGCLCxV0ag7NoHnYPNK5YxlTDpMXutYq4xkNV3btk=', 'shundary16@gmail.com', 'Mahasiswa', '2A214517', 150, 1),
(172, 'uC6/JtgDROLrcEuBVfMg0R50VphzzCJlw7lNOZS2hVI=', 'ehariutari@gmail.com', 'Mahasiswa', '23214564', 151, 1),
(173, 'pOBr7TzuA8UArMpMl655BNVNCD/v6Xl3n/3uUEXqBQo=', 'christinamolinap@gmail.com', 'Mahasiswa', '2C214993', 152, 1),
(174, 'aS1Ges8L1d6p2T//nmnaY0KJHOCYXjK3vbS9+PzEVoA=', 'kamelialia02@gmail.com', 'Mahasiswa', '24216031', 153, 1),
(175, 'ht2pZsqYs8tgHm4zinUELX4akv8/wDuJ2r6bMSLxTJM=', 'itasulastri9@gmail.com', 'Mahasiswa', '23216626', 154, 0),
(176, 'MMebNBABZMuzQ4BPHhIMncVCxl5Y3VUPSEnm75NxQYE=', 'mayveronicalumbangaol15@gmail.com', 'Mahasiswa', '24216325', 155, 1),
(177, 'nWjJQ1SZHxl2MN9cSstcETy5FKF3PWsDhxlkaR6LLlM=', 'Iinyuliana752@gmail.com', 'Mahasiswa', '23216390', 156, 1),
(178, 'k/1Q1XTRDoL6t/HPXgi7rA/WJza+p/P7lGUHVeBKlZs=', 'Sintaputriutami9@gmail.com', 'Mahasiswa', '27216062', 157, 1),
(179, 'kfeuk20goOqw1F1rKupXuCI4rzrb54zpBLHjnFpVoV8=', 'putriclaudia52@gmail.com', 'Mahasiswa', '24216256', 158, 1),
(180, '34ehQ41+TI+8NYN3UEZXIfre3Cqpiq5H29x36CmNpe8=', 'theresiaekaputri@gmail.com', 'Mahasiswa', '27216362', 159, 1),
(181, '25+gM7Ag0Ahk2MxjXHlMabYGKxtHk3RiNPv+Y+JX3d4=', 'Naomioktaviani05@gmail.com', 'Mahasiswa', '25216326', 160, 1),
(182, 'tzObFqVo21J9YhgQY6Ni5NjUGQufxcmO7w64SyYag2c=', 'Fitriahandayani2801@gmail.com ', 'Mahasiswa', '22216899 ', 161, 1),
(183, 'qXO9X/kTPABfONzb1WOnG89o1oqNZXS9VYmYKNkfbLU=', 'Dinartitahsepdyandini.dts@gmail.com', 'Mahasiswa', '22216086', 162, 0),
(184, 'iO+A4Diiq2M0fP8UuU4LtzZE/8iVeEMUrON23x8ShrA=', 'Ayu.hana5861@gmail.com ', 'Mahasiswa', '21216235', 163, 1),
(185, '0QepREBWObCzr0g5yrBCUNLhWbHXjXX+KGrLa7Uks3w=', 'annisasyachrani@gmail.com', 'Mahasiswa', '20216958', 164, 1),
(186, 'XQzW65iM9ZKyckSyTyExmIXPtBSOFBTJTq2zGqTXnxc=', 'Debbysilviaputri@gmail.com', 'Mahasiswa', '21216756', 165, 1),
(187, '37hfyEiD6FreGexfJO7SeemF7ALgEpf/StjiA1lyr94=', 'garyqhorimah9@gmail.com', 'Mahasiswa', '22216974', 166, 1),
(188, 'pWnhhONFdLepLP931abvH8i4qc8yJ/iAmb8iRjSeHds=', 'djuliarista@gmail.com', 'Mahasiswa', '21216800', 167, 1),
(189, '4WJW6hi1pU3dFMoOMQZZ0HeuRCeQMzy+vaN8FWXHsNs=', 'Zazatrndt@gmail.com', 'Mahasiswa', '22216735', 168, 1),
(190, 'aptXc7VPGrwUYtJ1s6vOYDDRh1N5sRwlHkrFhzwu7SM=', 'Sriwinarti17@gmail.com', 'Mahasiswa', '28216015', 169, 1),
(191, 'f7Sn8EERrtSHXDvFufQZD82Wi+o4QRv/ATlPrtAACAM=', 'aristaut99@gmail.com', 'Mahasiswa', '21216087', 170, 1),
(192, '14gS1uuG7HN7L/YTFQ5U2E74gHAlwXH1FMFiWrPRFmg=', 'Ekarohyatiramadhani@gmail.com', 'Mahasiswa', '22216274', 171, 1),
(193, 'l+hturgbxPMt3P6ZgYVLJksivS6sWPeQRlXkLqNYKgI=', 'bintangputrilestari123@gmail.com', 'Mahasiswa', '21216450', 172, 1),
(194, 'QJ2S6NL7I6H3JBO1Apj3xWgFW4R34WzkmY4X37UdhVM=', 'ELchristiand@gmail.com', 'Mahasiswa', '24216020', 173, 1),
(195, '7hpn8ajeTlUu7GoXc3fV3IiWy8HXfDjP7A1f4384dzM=', 'lani.puspitasari25@gmail.com', 'Mahasiswa', '23216995', 174, 1),
(196, 'SAQuMAauOxLH0vCHVA4x7BHfdY3GJVxHzE6LfXX6T0o=', 'dinaanggraini45@gmail.com', 'Mahasiswa', '22216072', 175, 1),
(197, '/wm0R/xb0q0XbwWfGNDF/jAjTfP9C8n0m3etVnGQNnY=', 'dinalestari97@gmail.com', 'Mahasiswa', '22216075', 176, 1),
(198, 'skTFYd287+k6/ItxinHcj89NBLjDLAXuci+NNk3wggg=', 'sintiamarini@gmail.com', 'Mahasiswa', '27216067', 177, 1),
(199, 'Eb+0ZRW+4z58YSLDxgGCSt8UU4bZJfkjJ1GekUYBvRQ=', 'eroitona@gmail.com', 'Mahasiswa', '22216395', 178, 1),
(200, 'smRiu1wfnSov1nns5DKZlV9azHMFffnFTCPe+pGnOXY=', 'dindafauziahariyanti96@gmail.com', 'Mahasiswa', '22216095', 179, 1),
(201, 'TdTdLB6oItINAB783Kfals5uQMU84H/YeDWyWzpNTuE=', 'lolacristiyanti04@gmail.com', 'Mahasiswa', '24216089', 180, 1),
(202, 'GqyerIby06KbzoiOIvpZ1cTB86ClP0bcNqygpS/cfcU=', 'yulisaprtw@gmail.com', 'Mahasiswa', '27216855', 181, 1),
(203, 'G7Qous9MSdxyhLDsN9iOdGqsSGGH1urGCyQSGOZktOs=', 'nikoods4@gmail.com', 'Mahasiswa', '25216411', 182, 1),
(204, 'OE29kNzKOZHe41GzqMXVyNt6Yibqs9bY/kurwiGklVc=', 'Ririnzefanya45@gmail.com', 'Mahasiswa', '26216303', 183, 0),
(205, 'nPdWd+4eAgXVP5zKTxJ3s97UiRvo2r6QMuL8k/AO1bA=', 'Suryayay@gmail.com', 'Mahasiswa', '27216198', 184, 1),
(206, 'WU/Z6GINUH3jRILPlifhaQU0rn66zJLRy2xwnnC90yc=', 'johanes. julianto98@gmail.com ', 'Mahasiswa', '23216740', 185, 1),
(207, 'MoR+tOU1rq4XeyI+Xu12IdKMObjLupNi7IuccNTb5s8=', 'Ivankira49@gmail.com', 'Mahasiswa', '23216634', 186, 1),
(208, 'i0nClBZqAhrHRxELj9KKV9i9qtG3g3B77gsPnDxVyLg=', 'Agung.cornelyus@gmail.com', 'Mahasiswa', '21216644', 187, 1),
(209, 'jSpluqwgixbI6TOrEiFzz9dU8zA6riccHzOey5rZjY0=', 'bonathalif@gmail.com', 'Mahasiswa', '20216611', 188, 1),
(210, '5N1EF36Zrl952DjLkxvM90aNDU+jBkeUMnoYFp4N4r8=', 'Rahmannn26@gmail.com', 'Mahasiswa', '20215029', 189, 0),
(211, '6D7M6V7JM4VKYiWaFw76+hyNdjeKO4w9ECMxv9/coBg=', 'tiarasilviani12@gmail.com', 'Mahasiswa', '26215879', 190, 0),
(212, 'y7bbGrQKH/wdcCIOYnMkH+O4mzhzfG6TDkxaL/OzHYg=', 'wahidr14@gmail.com', 'Mahasiswa', '29213189', 191, 1),
(213, 'rUjPjYo8dx1bc9Bu53r0RA2dUqmVvxxH/+RWvk8ld/c=', 'sariprasetyo23@gmail.com', 'Mahasiswa', '28213278', 192, 1),
(214, 'JYew+jj+RavD0Bvu/oXArV0h8+NR+a8T8MEup1mJvQI=', 'farahdella.pis@gmail.com', 'Mahasiswa', '23214931', 193, 1),
(215, 'rEqbiBtYxeOa4ZSRiIuwkVh532h7w2Ldbgtv+UJ47ek=', 'restiyani105 @gmail.com', 'Mahasiswa', '26216217', 194, 1),
(216, '9Glf90TU5TJvnf5/q19lkTaVM9WW5gzkJhAE94sEZEc=', 'pinondangcynthia@gmail.com', 'Mahasiswa', '25216760', 195, 1),
(217, 'eC9Ge8Mju9lKkPKk1aTK+wakM6xEZOSMn8WpC4KhTAw=', 'garniscitra99@gmail.com', 'Mahasiswa', '22216978', 196, 1),
(218, '7SukHUlFkdSWyQT+JQUqVuLfmKTGFZdKGm1qfdLKmYg=', 'nurulmadanih01@gmail.com', 'Mahasiswa', '25216627', 197, 1),
(219, 'rdLJFLehHPnhfhzdH2vt/e4J9T1eXGtzCR+dZKW/VfA=', 'apridaefrat7474@gmail.com', 'Mahasiswa', '20216985', 198, 1),
(220, 'wBIYiohh7rZT7IxzbUjY8L9uA6VX0YDRjmF0yiYCWho=', 'cecillia.tambunan@gmail.com', 'Mahasiswa', '21216536', 199, 1),
(221, 'TRfCejPw+4yLJwcihPcWRNrdkH+wAV3fKUGDEht1e94=', 'Nanggraeni22.na@gmail.com', 'Mahasiswa', '25216642', 200, 1),
(222, 'oVy904oiJWxIoa9AHZnoY1EzizG1tky5mee+ERDcCps=', 'rendi.pang.bowo@gmail.com', 'Mahasiswa', '26216177', 201, 1),
(223, 'CVZPyYdCe8YqRfQ2Es8uqXg5/CPiNNOec/wSJkpIlbM=', 'Ayuputrilestari81.apl@gmail.com', 'Mahasiswa', '21216244', 202, 1),
(224, 'zNmBNvExBe+jV0QY1e+3CX9ieyAVivtaTJVGTJTHOW8=', 'surrybudialusna01@gmail.com', 'Mahasiswa', '27216194', 203, 1),
(225, '4rGRO8PI4Nzv4uJ/zYq3SArK/IrPKSfI+bSvRFYno0s=', 'alvinfebriyanti23@gmail.com', 'Mahasiswa', '20216653', 204, 1),
(226, 'EE2H0pz2OAiXlRdhc9DppYB/e5NP3hmJFmjLsw5drFI=', 'lidianatri_yaya@yahoo.co.id', 'Mahasiswa', '24212194', 205, 1),
(227, 'akz9TENjHJuEzaYy4pFNmO4gXDh+hb6ucVZFKPdMsZA=', 'Fauziahpratiwip@gmail.com', 'Mahasiswa', '25216852', 206, 1),
(228, 'VUJSsY0WVW375AkxJbGD/3JgYlBI8o32AHKakLDnpu4=', 'saidridho5@gmail.com', 'Mahasiswa', '24216643', 207, 1),
(229, 'PdGXdw6AYLKqNj7ItmAl/pQjciJBmSqkeAL2lz4L4Ck=', 'adityodanianto@gmail.com', 'Mahasiswa', '20216240', 208, 1),
(230, 'GTCpXePbqsfS5bUe+MtZGKrGhqxQK5Gjlh3wl6lLp+s=', 'hastikafirdhausya@gmail.com', 'Mahasiswa', '27216973', 209, 1),
(231, '+0wZRKg7il/kKKbek4SkgAWlKuPovNREOgA5ZalajQg=', 'ranirhmwt37@gmail.com', 'Mahasiswa', '26216079', 210, 1),
(232, 'i+UBj8VJ1d+D8dYNgjVIlZyRd7lRjqINCHT0SsGSWsk=', 'nadillahhalfa@yahoo.co.id', 'Mahasiswa', '2C214796', 211, 1),
(233, 'RefecV2UAuEMnk/5R/oGpSN1WrKK3BS4TwmzN13USA0=', 'calivferido@gmail.com', 'Mahasiswa', '21216510', 212, 1),
(234, 'JW1oLMrgnbXvPDwnqEhuiL4vPHuskAOiZqEGQEB4RAA=', 'Maziyyah.amalia21@gmail.com', 'Mahasiswa', '24216333', 213, 1),
(235, 'CkUmSBh4JZAqP0klNJLlmccpZK5ifC3mhSwjzr6EQWE=', 'diahpramasti10@gmail.com', 'Mahasiswa', '21216955', 214, 1),
(236, 'gx7BdOg0CrqzbAlfCAO4BUL8oimEMo4xnpjsfs6wlJQ=', 'safiraaulia98@gmail.com', 'Mahasiswa', '26216751', 215, 1),
(237, 'jZtMfUgEsnQaYD8/Wpa174nfo7qtjJ7CAyaNFywHjr4=', 'mutianingrum88@gmail.com', 'Mahasiswa', '27214673', 216, 1),
(238, 'bTFylk/KN96kjLTrgSsl0FJIDb5u6lOsIV4F0c0aopE=', 'afrida.budiarti39@gmail.com', 'Mahasiswa', '20214415', 217, 1),
(239, '5zN1QRaRKJhIOGjD8pYonJDDvgVwygN9a3vWAmyTpvE=', 'dheavirgianis29@gmail.com', 'Mahasiswa', '21216928', 218, 1),
(240, 'nfMwEL6J52B7d1h+SCemh12asoywzyeyQRLcI/ljESQ=', 'vidiapujihandayani17@gmail.com', 'Mahasiswa', '2C214034', 219, 1),
(241, 'KMOJTBTs8DQruAARfCcH7zsyk6/74GCgnL/iFP+QSTI=', 'putrihapsari08@yahoo.com', 'Mahasiswa', '28214599', 220, 1),
(242, '6v9Enx+YQhvjrNjLtEv4XLkYF+UcXVuwpngMOH7+DEA=', 'Ruththeresia98@gmail.com', 'Mahasiswa', '26216721', 221, 1),
(243, 'CTrPPUcsceXZSLZHI/f8dujHEBapjTXEkP1EuHF6k+o=', 'Fadelmh76@gmail.com', 'Mahasiswa', '22216442', 222, 1),
(244, 'JSVa2WQkgK9Q5OnT2a/fKEfYF1+Q/t1GsXc+CkokTKU=', 'Juliantisarah@gmail.com', 'Mahasiswa', '26216838', 223, 1),
(245, 'mw7B3ENaxs61IN2rdrljrSk1qk3RLs8rW6bt7xWr6ic=', 'Yogaprasetyo1312@gmail.com', 'Mahasiswa', '27216762', 224, 1),
(246, 'CgyFzaxKx7lqTlE1su6GRhSxCWZxb/+vebvuLccCCcc=', 'kurniatryanti3@gmail.com', 'Mahasiswa', '23216971', 225, 1),
(247, 'Rel87mkVJVADZWtFRwEnwukdSXLZO0OheM+PC3Qomsc=', 'istianahiaaa@yahoo.co.id ', 'Mahasiswa', '23216624', 226, 1),
(248, 'WZlu07TIbWAZM5vdNlzkwpVO6mzBS9hmm8KyhT/fsy8=', 'hasnaazizah1@gmail.com', 'Mahasiswa', '24214847', 227, 1),
(249, 'vqsKNKpnTorKpXabiTRITEeRwJZjOU7XDUQNt30xabA=', 'vorlandiaelza@gmail.com', 'Mahasiswa', '26216409', 228, 1),
(250, 'epxptS8jvmHHR1FDeUyHP6+Tr2fGOaTmNDURkHukAZw=', 'Ainioktavia98@yahoo.co.id', 'Mahasiswa', '28216116', 229, 1),
(251, '2p7xUcKwD6bsiW+HfqeJVnwGJKuj+RFMDUmvN81NAHg=', 'agnestiiomaria@gmail.com', 'Mahasiswa', '20216310', 230, 1),
(252, 'qkoH6/8gBvVqbYG4xAaIc8NUXKoTRAl+ueBHbTg14y8=', 'daraayu2701@gmail.com', 'Mahasiswa', '22214541', 231, 0),
(253, '/KJXBMNFnrubnPElVMxr2jd5Vf10pOc2B+eVaaTTolU=', 'pujiasriyani037@gmail.com', 'Mahasiswa', '28214545', 232, 0),
(254, 'znpEfQn7pyiFZ65/JZEWbNUkJaTQZCuv6VfR2w2pdG4=', 'Auliar238@gmail.com', 'Mahasiswa', '21216208', 233, 1),
(255, 'iT5suQ9bavtBfIy1fAsKt4wUtH3Xst+/V9QuNxh9LQ0=', 'devitatricahyani@gmail.com', 'Mahasiswa', '21216885', 234, 1),
(256, 'O1T3xGuKZdEu6MtIcxrf8Jok0BXiARceAQ0rBVTJKf8=', 'dewiistihadah18@gmail.com', 'Mahasiswa', '21216900', 235, 1),
(257, 'ZW+x71qTB0+Syd3UF83zKGK0xX6Mb5uqMuTEr8mOq5w=', 'Ronyrap97@gmail.com', 'Mahasiswa', '27215290', 236, 0),
(258, '+1crdrD01CTObNsBFoyuhDsUvU8DOjDc6UymduspQeA=', 'Ramadhanti.nia@gmail.com', 'Mahasiswa', '23216968', 237, 1),
(259, 'SZeh/KS7RAwlYjrWaIlO7kohrUT7TbqaZ0ctXRjRiuI=', 'rdian3426@gmail.com', 'Mahasiswa', '21216972', 238, 1),
(260, '/4+RGXYf+P7ZRRhBFRwNDrVQkqISF96HMePm6aM7gVQ=', 'firdakj05@gmail.com', 'Mahasiswa', '22216856', 239, 1),
(403, 'Uzmv6rTdbIsFSSYbWIsDZbQU3PGcnF8AindbmF01v3I=', 'wulanainatadilla@gmail.com', 'Mahasiswa', '27215204', 382, 1),
(262, 'u67z/O6bU+3BbJbLvg7yEo986vVuLQzlD23apVj9W8w=', 'alvirarevaniyanti23@gmail.com', 'Mahasiswa', '20216663', 241, 0),
(263, 'hzhFtVPntr7gGKyV4tlwEfpws1IgTUPSNNg1vNE9QHc=', 'spmarlina@gmail.com', 'Mahasiswa', '56214417', 242, 0),
(264, 'oP0LfFI/fXcGnTUfNOfglTyu27/93+QwRqqCuBhhXAI=', 'deviws94@gmail.com', 'Mahasiswa', '22214836', 243, 1),
(265, 'COH/DVe+0uAPP0UFMbONUAQxxnfnuV1LiGcgdUtVYuM=', 'rien.ugih10@gmail.com', 'Mahasiswa', '26216361', 244, 1),
(266, 'm9JCqRbFt2W0xUk0S/hYS7dNkkcLBkM2xguGUTc3+Nw=', 'Diazsakti63@gmail.com', 'Mahasiswa', '21216986', 245, 1),
(267, 'McD6Ma6630ZSFJDvWLSAUcrY/sK73I9InWCXSYjsdQA=', 'aulialudfiliasheytaha@gmail.com', 'Mahasiswa', '21216198', 246, 1),
(268, 'zaO/edy6tDUbzmsnA9W4ONR+eZF1aIi2Hark2tDVkW8=', 'Rizalhendrawan1@gmail.com', 'Mahasiswa', '24216289', 247, 1),
(269, '61fsDZ3D4LLjqf89GJDPVCyN2QSTHbB8YMKgg5WeO20=', 'mega.pratiwi1717@gmail.com', 'Mahasiswa', '24216343', 248, 1),
(270, '0xjRe3pIJYYTHBXvkc/dehtjtyD0R6towJwi5FZYwXc=', 'ridolintangy@gmail.com', 'Mahasiswa', '26216349', 249, 1),
(271, 'Rql4yUueaLPwAPDM6cZA2vF6osDoI7Gk+xyQRfeGC8I=', 'nindaariza30@gmail.com', 'Mahasiswa', '25216435', 250, 1),
(272, 'ZsbIDrvLNexTK5mpJ194FKFStGInlDcjQo9pcL7UhTM=', 'iarizky39@gmail.com', 'Mahasiswa', '23216345', 251, 1),
(273, '27UD4PnzN2Van1KeE6WqGapUg8B8u0/rx60fm0t3SN4=', 'setiawanriyan1998@gmail.com', 'Mahasiswa', '26216525', 252, 1),
(274, '7GHtvbGU9SSpg+phjbQyKipbzprsfj84SrhKwrV2BqM=', 'fitridina428@gmail.com', 'Mahasiswa', '22216074', 253, 1),
(275, '8o6of4c1REdjTX9ihe9WBPTFPqyzb0lUp0FZHIWZf4c=', 'azizsaelani48@gmail.com', 'Mahasiswa', '21216268', 254, 1),
(276, 'WYIC0PhKtV4VS5de2pAQCPGvR1RlftokQbB/p2934wc=', 'evitayusr@gmail.com', 'Mahasiswa', '22215310', 255, 1),
(277, 'oBWzIcYRHDQJnTjuC3bzG5Cdq4rlw2sV9rO25/2UtYw=', 'irvan.arintoko1@gmail.com', 'Mahasiswa', '23216597', 256, 1),
(278, 'bvKX9K4FC8T0fNM1rOa9JGKpPkP/n1y7/J5L5MNoXko=', 'putriyudita69@gmail.com', 'Mahasiswa', '25216873', 257, 1),
(279, 'XOruLubGSjRYJNDA5IHx1XBV92DIRNiHjku7wWOTiKw=', 'kevinsimanjuntak71@gmail.com', 'Mahasiswa', '28216314', 258, 1),
(280, '+sf9stx9P1hWwoVQkYwyPzIk9QOws7ZFIQrhmB8WJf4=', 'dinamedlyn08@gmail.com', 'Mahasiswa', '22216077', 259, 1),
(281, 'pMJC9VP1xP+wT2q9YIDSGqg8T4AmAYWUUf+qP0TO9Wk=', 'cindypanggabean04@gmail.com', 'Mahasiswa', '21216627', 260, 1),
(282, 'LIe8qlf0S41T1KmxQihl+mS5tO7J5biuPSiFOOEZBYQ=', 'karinarusma@gmail.com', 'Mahasiswa', '23216822', 261, 1),
(283, 'hNJXJfmmr/+GIElddfIY/jhVvu6EODsNhOtoAfNKd0k=', 'Faizanabila98@gmail.com', 'Mahasiswa', '27215637', 262, 1),
(284, '0YlSDPPaZnrEwQHs3ttNyPVpMEpw7UkW4aO1KBGi7/A=', 'Putriesti90@gmail.com', 'Mahasiswa', '25216850', 263, 1),
(285, 'prmyN2MbaN2Cu9WNms5oLicSfnxdY5f+WsbD3OzGSa4=', 'cleffarins@gmail.com', 'Mahasiswa', '28216383', 264, 1),
(286, 'MH9SrPyR7L9S4rn67dJ9tueRgm+NNbyjp7hov3Qhzlk=', 'ayastyas20@gmail.com', 'Mahasiswa', '27216249', 265, 1),
(287, 'HtYJmnJdzZAzapYXQTf2bdA5suE2jz3ZGYEQCHM/074=', 'Adittriasswasono@gmail.com', 'Mahasiswa', '20216156', 266, 1),
(288, 'S5ebmausM7CfhOhPzYHcksV9dsl3m/D2PcBKGBy6PfU=', 'Setiyantohartono98@gmail.com', 'Mahasiswa', '26216947', 267, 1),
(289, '7zgOmV65kWry+L1te2Ap6eKuLPjARax+O5nMFvwkGus=', 'Nurfauzialawi08@gmail.com ', 'Mahasiswa', '25216542', 268, 1),
(290, 'kRAU+1f/yjv9ij7uvm4Gyh4Zjc6FU1CS4ZHlxqxrWsk=', 'atikaheni11@gmail.com', 'Mahasiswa', '21216178', 269, 1),
(291, '2LwL4FcqNCsUr1Ko/5Db1bU27ktUexI2s+8Qqp8Y6n4=', 'dita.ayusn@gmail.com', 'Mahasiswa', '22216137', 270, 1),
(293, 'Js6gW8edM/iUo1P88avBU1AFpHKI2dfdYsiWsDPRwp8=', 'Officialannisa@gmail.com', 'Mahasiswa', '20216934', 272, 0),
(412, 'rquJvuR61uYi8l7KAgfjZJlJh0KDf/ZPthh2DyKuqdk=', 'chynthia.fiorenze@yahoo.co.id', 'Mahasiswa', '21215500', 391, 0),
(413, 'Bhhy1vs6DhhAJl+0p92BebpL9eE4WYWjl4b1Yk7ZBfo=', 'tusrini.rahma@yahoo.com', 'Mahasiswa', '27215504', 392, 0),
(411, 'iCNm3MESKJ6piYytuUMnv8pidGjjbMoVp4OP8M9+XCw=', 'Hanimardianti65@gmail.com', 'Mahasiswa', '23216186', 390, 1),
(408, 'HYWwcVxZhcSn08DFVTqSZviA8RoErU/oi9eSPupAgCM=', 'ferizaagustina@gmail.com', 'Mahasiswa', '22215630', 387, 0),
(409, 'uEdnYDhyghZvtwlIh97RZbBXvjaDnjeFFQjSyTiW2Ms=', 'Rossaamalia18@gmail.com', 'Mahasiswa', '26215278', 388, 0),
(300, 'SVbwkO1l/lO4CqivXYsUXWoacu2Jy+D71vGe3KCQQ0s=', 'tribatamioktarina@gmail.com', 'Mahasiswa', '28214330', 279, 0),
(410, 'uRdYwoD+0fm68j3/KIQl9GNPqG/pSSUTxJxhHE3cYsk=', 'agung.dwnd@gmail.com', 'Mahasiswa', '2B217025', 389, 0),
(302, 'Td+xqzR7fdSzvDjyZtcT8YNPuEZBeWLi1j8271bsW8s=', 'gadingnandaperdana10@gmail.com', 'Mahasiswa', '22216941', 281, 1),
(414, 'ayj5MMw4q4Pet6djtr2j++q34BjmSIFJl29oNAzhdlk=', 'nabilafarrah52@gmail.com', 'Mahasiswa', '25216210', 393, 1),
(304, 'fSwG5/xSMN3f/epjregyve949BCyP5B8lKqYfc1ez2s=', 'Mjhonray55@gmail.com ', 'Mahasiswa', '27215779', 283, 1),
(305, 'DrmF9kircUbfTkcq7gOrlQBAGGKW9167BQxpfZlhvJQ=', 'rysaherysa@gmail.com', 'Mahasiswa', '23215149', 284, 1),
(306, 'eidLRjFif7K4bqbzY6cj2ecL6PqpuwW/EasveTvGuBA=', 'riska72gar18@gmail.com', 'Mahasiswa', '26215059', 285, 0),
(307, 'SSm55KtOT+ryaBUK9mWvLMpfBZp92mYLqRpImTgVuII=', 'bellindacaudry@gmail.com', 'Mahasiswa', '21215330', 286, 1),
(308, 'rG/9Ve0tega/0QKFAF9HEDC2mXu+sTLxRvSt2dMJZh8=', 'pratiwinc3@gmail.com', 'Mahasiswa', '25215382', 287, 1),
(393, 'GvqJMZKTef2Ox1tNNmTGJ7dHfBhqvWAjymD2lm//H0c=', 'zreginae@gmail.com', 'Mahasiswa', '2A214462', 372, 0),
(310, 'eVhQdwlaQ6eeNEGl7YxU7UHqgN4hpb50yN+x1Gz2CrU=', 'achmad00.am@gmail.com', 'Mahasiswa', '20215065', 289, 1),
(415, '/LmIK2+XhT4YQXmLo3p+omKi2eN5CtpCqcRxWz5/90s=', 'satriawibisono.personal.07@gmail.com', 'Mahasiswa', '26215423', 394, 1),
(312, 'B3jmJdAD1XoxnejQSi4/QismcKGKIayS+KqBMT8BjC8=', 'anggi.anggraini11.aa@gmail.com', 'Mahasiswa', '2C214989', 291, 0),
(313, 'NstXZin1kkz+FNhezSKa7O1u/5KmAAtURanLcwCVmIc=', 'agusrizki999@gmail.com', 'Mahasiswa', '20215304', 292, 1),
(314, 'Xgcr4cCfPURlyT2ugPhJ/YnU3Y6/mAQIe4nhgkUiOm4=', 'muhammadnuralfie007@gmail.com', 'Mahasiswa', '24215711', 293, 0),
(315, 'GQLPsPEO/RWZb/FP6NbWzLCV2ZO03tDqqAh7wGDzo5g=', 'GRACHELCY@GMAIL.COM', 'Mahasiswa', '25215486', 294, 1),
(316, 'aApCu9vUiTPbxDR+Y5Yyi79xkMyKRWbGA++R/yCE16U=', 'Sutrisno.tafsir@gmail.com', 'Mahasiswa', '1B217156', 295, 1),
(317, 'zD84rsuhCugpV1BJK4bN3SBJJt2U48aq55vah4HZHqk=', 'siska.rahmayuni@gmail.com', 'Mahasiswa', '26215586', 296, 0),
(318, 'RTPvyM5QzMz6P4FpqBWL110NbcsIew7CcxMbm6Uh2Rg=', 'Enovia33@gmail.com', 'Mahasiswa', '22215137', 297, 0),
(319, 'lVE3IMJMeERibby9UVuzVN3PgM4VtT4gZgakl5amaRU=', 'dewi.noratika96@gmail.com', 'Mahasiswa', '21215786', 298, 0),
(320, 'wLGa6QXSNp/WiKRtDLyqD5pryD3wP7xzX73gRIXgIUU=', 'ginaasmarani21@gmail.com', 'Mahasiswa', '27215462', 299, 0),
(321, 'v57Ls6/Dx4h5m96lA+BK1kc/IvNYR3UUgrP5ftJ6pW8=', 'kevin_henanta@yahoo.co.id', 'Mahasiswa', '23215698', 300, 1),
(322, 'DipFh9v1OsokM5sBejaGmirD9w37yfk2IsD0Ax9Ops0=', 'silvester_sakti01@yahoo.co.id', 'Mahasiswa', '26216769', 301, 1),
(324, 'HGk4RR1jt0FW0tgg0+Cia7hTZJnNoJ/umtHOmTHu1c4=', 'irmasuryani641@gmail.com', 'Mahasiswa', '2D214137', 303, 0),
(386, 'EfHZYGXWxBjqrWd7wqVx7MRrVH9fLrwViZD6QvBdYzI=', 'Hendraeka.suparman@yahoo.com', 'Mahasiswa', '23215111', 365, 0),
(387, 'UAtlle0MCT0G1y0QQ4vuZLkk/ogzYZJa+ifGCistJqQ=', 'nurainisetyaningsih@gmail.com', 'Mahasiswa', '25215207', 366, 1),
(328, 'hKG6JFQ6tx8tS+JpvTX9a4QVJmlIikiz2CMpk+oK7aY=', 'putrielsianni@gmail.com', 'Mahasiswa', '25215445', 307, 1),
(329, 'XWxUFSonUpVkkHsR4zi6zuce0PeB0TKPjHtCCkLx0Og=', 'ramadianti.silvi@gmail.com', 'Mahasiswa', '27216043', 308, 1),
(405, 'rAxMxhmt5K42L3kOAAAbyW1hnPIdpqLbsFi+l4SgRvg=', 'faradinaaaamzr@gmail.com', 'Mahasiswa', '22215474', 384, 0),
(406, '8+O+UvCFJEmVe2gUW0pp3CeNAEYziO/7i/9DlZ5Cw98=', 'smizuka@yahoo.com', 'Mahasiswa', '26215673', 385, 0),
(407, 'ANlyGkqxL4zZUMyUn8kzsZAFcPyhphjkto7zqQ4kf9Y=', 'megapuspita95@gmail.com', 'Mahasiswa', '14212515', 386, 1),
(331, 'E/46Z09+nla5s2+2O+HpbdUgMraP8PjaKz54xsXg2SE=', 'hikmaharyani@gmail.com', 'Mahasiswa', '27215666', 310, 1),
(332, 'AMlRtiyaQCbjPoqoy5AB98+55pQEqVnC3A2unW3f3Vo=', 'julianishar@gmail.com', 'Mahasiswa', '25215784', 311, 1),
(333, 'PX8+lf12nU4XyDcBJgEB7kYVt4HgaKceWZHxZi8224M=', 'rinipuspitasari2412@gmail.com', 'Mahasiswa', '26215021', 312, 1),
(334, '1p1fNSm9eLgCmtnlEZS3ahUTNs+HasYKR+qmmhInYls=', 'fitria27.fm@gmail.com', 'Mahasiswa', '27215957', 313, 1),
(335, 'nO/09zKCBFULULnigtEsefiD9aufhQRtp+leeM3Xb1k=', 'randypradipta44@gmail.com', 'Mahasiswa', '25215643', 314, 1),
(336, 'ZjmyI/cdI/tOqHP/HhRwGkxe/+8WpU26HlwS0dpEjBs=', 'Yesica223361@gmail.com', 'Mahasiswa', '27215800', 315, 1),
(337, 'dTbQq+xI57Autb2Al1+G7NUKmXF0m8lY3CggT0UURg0=', 'marginastiti@gmail.com', 'Mahasiswa', '22215932', 316, 1),
(338, 'Ky7HpWilY1tz+5VKOt8oVBLr1RIZsl8wCIcMJ30c344=', 'bramvicz@yahoo.com', 'Mahasiswa', '21215396', 317, 1),
(339, 'hFx1IfGWu3Lg8SY45kMFVbSH4o12FUpv3W2XM88saDs=', 'cindyjulaika@gmail.com', 'Mahasiswa', '27215578', 318, 1),
(340, 'PabTGP2+ryu+eQYD2IChd4yfxyZ4hhrsD1ts/3QWvx8=', 'nurrohmahwati06@gmail.com', 'Mahasiswa', '25215222', 319, 1),
(341, 'Pw2yBCetwkmVOkQ4+7Puw5diZetjlXjZ8hYVDe3dNkk=', 'lediani.ani04@gmail.com', 'Mahasiswa', '23215801', 320, 1),
(342, 'dIKGlTdMFLAVRRH+f1XHN5fAV4cnChlZJWbdgnMp8Yw=', 'citraramadhanty04@gmail.com', 'Mahasiswa', '27215763', 321, 1),
(343, 'AyVSowwQANqgB+gAUovcvJl7a+waQ5xkdBy3Qc8EZME=', 'andbaihaqi13@gmail.com', 'Mahasiswa', '20215643', 322, 1),
(344, 'qkKJp2Ug950ebuIvvUwqz98KaZW67V7sut9MM4MY23A=', 'Destyawindipratiwi@gmail.com', 'Mahasiswa', '21215741', 323, 1),
(345, 'MVkIaEg+cyV0IyMqfDs3q2V5v3uajUVTbger1KgNK0E=', 'desistephani@gmail.com', 'Mahasiswa', '27215765', 324, 1),
(346, 'aj1S4o6AUKUgxzGQZs2QiQ0YXAUz2N71/6YrwpBj3N8=', 'asihfitriani1712@gmail.com', 'Mahasiswa', '21215090', 325, 1),
(347, '7LKp5l2Bt8+bKy5TbxEl2jr8HV/PRMmqyDOIy/UY1yM=', 'tjrstfz@gmail.com', 'Mahasiswa', '27215959', 326, 1),
(348, 'CAm7y0drJFN3Atv4nPSlzTSK6VhRo/WxacP7Zxv51sI=', 'Irmamarianovianty@gmail.com', 'Mahasiswa', '23215445', 327, 1),
(349, 'VMf9Klz2ZWOKVgT9q2vpVF0NU/8ImrubvDleDTfMNps=', 'sitilathifah401@gmail.com ', 'Mahasiswa', '26215612', 328, 1),
(350, 'zG+85EQrfRaLm7T0DWgli/RaEA8XDxfQ+9sjma+idy4=', 'raniamalia66@gmail.com', 'Mahasiswa', '25215657', 329, 1),
(351, 'DuDmz1Gv6Iw3tOQgXmwys9IGY/e0wtw8smG+d6ngCyQ=', 'anisavry97@gmail.com', 'Mahasiswa', '27215606', 330, 1),
(352, 'HfHVyl5eCsYJ/10fNzngq05pwI9dyh0xlaxpbSIKSwc=', 'kartikasarinamina@gmaul.com', 'Mahasiswa', '27215590', 331, 1),
(353, '1g1RTTWLaAlNPLQeX+kKR7XDfLbA+olFJpedxodvX2Q=', 'yshntsm@gmail.com', 'Mahasiswa', '27215221', 332, 1),
(354, 'o/jwmtudSsbxvn0mvCHvS2SlEoO/4L9/k1hMolq6AJs=', 'yulius.septian@gmail.com', 'Mahasiswa', '27215963', 333, 1),
(355, 'OeJ8H1U1ltac0qC5QgOHFmxsUYy21TkTe/GO/w8crjE=', 'tubagusachmadi46@gmail.com', 'Mahasiswa', '2a214898', 334, 1),
(356, 'FCVSDTj6S7GbbiNfGdfAtBtsTPKbkb6RcaCeQ84g2Ms=', 'paskah.nadeak@gmail.com', 'Mahasiswa', '2C214750', 335, 0),
(357, 'bmK8bNRht4f+VaIeHVcJQfIgvoyNmzwcV5OzGUHgnNg=', 'Tinarini12@gmail.com', 'Mahasiswa', '27216398', 336, 1),
(358, 'qF+LwPbx2qrvVTjJAVHSkuf45b1Im4FzAoAe7ih8sEg=', 'Tiokurniawan72@gmail.com', 'Mahasiswa', '27216400', 337, 1),
(359, 'jIZookXPD3qZtL2dVryU55YfeB49sVdIFMD6DB1tQMg=', 'muhammadcaturaditya98@gmail.com', 'Mahasiswa', '24216756', 338, 1),
(360, 'diPc/4wHyCyHHXjs3SEtpQmtpeRUY1mBO2PuWppGLDY=', 'Windamarlina60@gmail.com', 'Mahasiswa', '27216665', 339, 1),
(361, 'qN1bcpwzGQGWfUxF95hPNVbkQiJC/x7SZjq1pj29ESU=', 'Axelino73@gmail.com', 'Mahasiswa', '23216854', 340, 1),
(362, 'WOLyY5E6SwxOe5x5WIqkI4SXt/mXNjHlvrELbZeRDiE=', 'riamonikawati@gmail.com', 'Mahasiswa', '26216292', 341, 1),
(363, 'EK1TzzOz7yT3+TQ2zfISIgHqu1u+ay2nOUiY2Owb4lU=', 'nusaibahtaqiyya', 'Mahasiswa', '27215736', 342, 1),
(364, 'jK1QXcyZ3GUthaYQzXDjl6yk/ZlJgLfUffpQsRBlXxU=', 'Idriscaesar@gmail.com', 'Mahasiswa', '23215230', 343, 1),
(365, 'VT5wo8hQQWTSYnV52Gg8ymxLU7yjkHZFJ6I0hPnUZ94=', 'alfialthofia@yahoo.co.id', 'Mahasiswa', '25214004', 344, 1),
(446, 'rMIDD5SwK59SSkdMPyhlqBt9lVfi2ApdbnVlsbS1I/Q=', 'putrikladiaaak@gmail.com', 'Mahasiswa', '25215448', 424, 0),
(367, 'K+pJgIctXY6u+J9ekkMow3p7f2k+m7UGA62Umy/owzo=', 'riobryancruisersimangunsong@gmail.com', 'Mahasiswa', '29214454', 346, 1),
(368, 'nEmoDi9OOw6z4xHTtwM4NRrFA0hruJtpFMrVIshB728=', 'aririzkiahandayani01@gmail.com', 'Mahasiswa', '21213277', 347, 0),
(369, 'xA2C7b4kEKeYASlYER8oAPrjLYh1s3hKq3wUTV9rnus=', 'adiputro04@gmail.com', 'Mahasiswa', '20213190', 348, 0),
(370, 'HH7UVyLH6B9wjTnHSuWaewKwUYpbxi3OpZHOL6pOdPg=', 'ferisaputra855@gmail.com', 'Mahasiswa', '22216796', 349, 1),
(371, 'k4uNQiyjQ7C0FqP4qo2gK6qpz0J93PvoFAq7c89G7rI=', 'tomy.ilham@gmail.com', 'Mahasiswa', '27216413', 350, 1),
(372, 'HFnouz72S1iKXYjFwpAjSZYniE+e2X91knpwHfwwPWE=', 'Sigitmayongga@gmail.com', 'Mahasiswa', '27216038', 351, 1),
(373, 'gHY6Xa4CnIt84VlAUP+fbfSCV/jmFaiGdZi0Zl/mDAs=', 'Tamtammimi@gmail.com', 'Mahasiswa', '2124009', 352, 0),
(374, '22679acz31bibjYrRRevTU+qHgwpDV+Z5PTW3L0grxY=', 'zahranalaziz77@gmail.com', 'Mahasiswa', '27216903', 353, 0),
(375, 'nTSo/WR2cZcqtm2vWWSJoFZfmX18IdCOKuEnXWdrqzQ=', 'mhmmddimas@yahoo.com', 'Mahasiswa', '24216774', 354, 1),
(376, '0LaEtL8Clp1KQ2bzx3fyhOiX62Cp1aU5cthI8h9lx/g=', 'rahmatjuang98@gmail.com', 'Mahasiswa', '26216001', 355, 1),
(377, 'n1LjyP39Xu9DWMjsQNZu/wACDYkHq1dwX3S1A22MC7Q=', 'irfantarigan31@gmail.com', 'Mahasiswa', '23216586', 356, 0),
(378, 'BvMi712D0qhE9Hnjj9KvUlkLE4jOz1l1z8epWLzt+pw=', 'Sarahnilaayu1@gmail.com', 'Mahasiswa', '26215396', 357, 1),
(379, 'NFFs/468Pmsdorq8y4gD1E/ktDgcjoEWleZ/+pxRNSc=', 'rezajone28@gmail.com', 'Mahasiswa', '25215842', 358, 1),
(380, '/NI46NpGyZwspzGMJt8jdsc1UCDUL8rYI6IKTD8eqHo=', 'tikakartika0608@gmail.com', 'Mahasiswa', '26215897', 359, 1),
(381, 'c+p0RYwXi3g8RthFuibspXiG//Yb/sI0kWF0tzleXNA=', 'nshaleh49@gmail.com', 'Mahasiswa', '25216485', 360, 0),
(382, 'nbUO+A7BicszIQ2hUnaKYaGD2FJX8Kx8aL2hBNs1uFk=', 'Sintansuseno@gmail.com', 'Mahasiswa', '26215568', 361, 1),
(383, 'ZgEK2IOXLBezzHyCvbtIabwMH/HeBI8wl9tVFymcsxM=', 'sri26sulistyaningsih@gmail.com', 'Mahasiswa', '27215794', 362, 1),
(435, 'tw45zNDaaHOowC+X97h3VyppOWlZbNyiUsqco6zrabw=', 'tbputra20@gmail.com', 'Mahasiswa', '28216057', 414, 1),
(385, 'Hq/vN4rmOoDjkzsF4ahvrA6pkd0Z0598AxW/rUmittI=', 'adindalarst10@gmail.com', 'Mahasiswa', '20215147', 364, 1),
(416, 'eRiToLDPyRQ8fNabQ2Lo0yg2Ei+tkNstHqq1Wzy41fk=', 'Wandinysha@gmail.com', 'Mahasiswa', '26215500', 395, 0),
(417, 'wh1qOnpX94jLQPeaO3ZCLcbMrrx8P8JsccR5YAKksjc=', 'bettaanggraini922@gmail.com', 'Mahasiswa', '21216404', 396, 1),
(418, 'teGDudVTEZBdGN9d9pkIaMoe4CZpGuS2DyGaMIaryIY=', 'lenasaufika82gmail.com', 'Mahasiswa', '28216229', 397, 1),
(419, '+ei+iiM4+/1I0DtsAscgQzdoDCRrlufQScEILDIuEnM=', 'krisnategar18@gmail.com', 'Mahasiswa', '23216940', 398, 0),
(420, 'xiLKuflI5UZFx0pSFI/Sd1rTG+lVJksien+DYVqpVWw=', 'farrazcitoes@gmail.com', 'Mahasiswa', '22216680', 399, 0),
(421, 'sI6wFkGOQj79SkbaviCLPdQyZ/Z0HmXndyBR7OFhTyg=', 'ariyani.trikrismoaji98@gmail.com', 'Mahasiswa', '21216090', 400, 1),
(422, 'hAGfxSyX9BhzEqEn8HN6N37qprJA5zYtXJxNMRfX3Cs=', 'Bagasyunanda25@gmail.com', 'Mahasiswa', '21215230', 401, 1),
(423, 'p6kQifR2UpueyPSGW5cj+lLF0C+Ck+/3t0yMcO+zJ84=', 'lolavife@gmail.com', 'Mahasiswa', '24216092', 402, 0),
(424, 'pLabOgcMOwhMqlFLrDHeFZrdclMYZI1O9Hd2dy60s9g=', 'Galih_abimanyu99@Yahoo.co.id', 'Mahasiswa', '22216955', 403, 1),
(425, 'o4nw5a0yWvb21TTAXI1RnrV+Puk1bxr09lYrd3zWV3k=', 'rahmania978@gmail.com', 'Mahasiswa', '25215564', 404, 0),
(426, 'hp1sxCP2UdYh1kn4Rlbr8J8cjuLVRzxqj9wAc5ovLr0=', 'abkor.nasution@gmail.com', 'Mahasiswa', '2B217850', 405, 0),
(427, 'ZixopTq0B6RQah2xLzYrzqYlvJIiBggCavP7so4hj4U=', 'sr.dianakartika@gmail.com', 'Mahasiswa', '2B217036', 406, 0),
(428, 'kKDia7WlYdv5fOLe2BORQO21roOH4GjYf5NvOaQPrv4=', 'ricordp11@gmail.com', 'Mahasiswa', '2B217856', 407, 0),
(429, 'oYDR9EPRDIGegTtSwl8L/RLv7GJXz5tVUlFdk3SGOAs=', 'anitacarolina6465@gmail.com', 'Mahasiswa', '2B217823', 408, 0),
(430, 'Fz/OwD4ldq6lQxc1eYxyvDhinJ79gNVAgQtnuHNvXPs=', 'fgyncitra@gmail.com', 'Mahasiswa', '27215627', 409, 1),
(436, 'pNuNhaDmy6UiVoPuQrBopB+QLnmOPj+6nlKtCVsfv1o=', 'widi.fadila@gmail.com', 'Mahasiswa', '27216625', 415, 1),
(437, 'A/GAXqneiNwbUvsSyQvp9CFuZJORZv450JH/aCyhOFo=', 'haryonugroho220997@gmail.com', 'Mahasiswa', '24216499', 416, 1),
(438, 'ktjshPHT9/bGNXJNu/mxdDGQtvrBtUpwArFAY2AYqnw=', 'Nanda.1519995@gmail.com', 'Mahasiswa', '26213326', 417, 0),
(439, 'LyYYvLCbwIccee72BuoskezablAXtWMKazNedBfAp74=', 'nia.nugrani@gmail.com', 'Mahasiswa', '22216340', 418, 1),
(440, 's47NLmcYvu1eY8Uf57VkhLvoayJfbw+j1435bQClwrc=', 'prilia.annisa@gmail.com', 'Mahasiswa', '28214515', 419, 1),
(441, 'ypy9y38I3TRHReDzFiXvZ9r57t6/I3ecbAx1O17l0jA=', 'auliaadwyhh29@gmail.com', 'Mahasiswa', '21216190', 420, 1),
(442, 'Ps/oI8fg3F9Xa84DmZHRYW3V0w2PmWVUxJ8bMf3lnXk=', 'andrewyuansah@yahoo.co.id', 'Mahasiswa', '20215739', 421, 1),
(443, 'w+lTz4q+EnC2VJb3vYVKMufmluq2tSnm+qTyZWYVYv4=', 'hauraanisah@gmail.com', 'Mahasiswa', '20216916', 422, 1),
(444, '6V29TyTslOVBReZ9QZ0JE+HYbLmlm8QcHAFiK+4HRpg=', 'rahayuintanosh94@gmail.com', 'Mahasiswa', '23216547', 423, 1),
(447, 'FN4FCyKkvwUNhdil+71CWBEIbLMMygbTNTPSA5q7phU=', 'joenathan2307@gmail.com', 'Mahasiswa', '27216386', 425, 1),
(448, 'tWs5RG2J/K2cVeBSWTLI+INg5v3Xfbd2d6W6thSArA4=', 'Ratnapalupi355@gmail.com', 'Mahasiswa', '26216102', 426, 1),
(449, '6RUNpyXUtaAvk2gR1OyW62i1XnjXPuYsnT713IGLu0w=', 'noviocta10@gmail.com', 'Mahasiswa', '25216489', 427, 1),
(450, 'ZP6q09IRFgNiQDb2SU0X2dFp9IPc90EgQXf9P4RDLaw=', 'Cicilyadanamon01@gmail.com', 'Mahasiswa', '11216614', 428, 1),
(451, 'UlV1Mw9zEBLmYF0I5+NxWQxkuuP7hXibTw2KamRe5/4=', 'diazrahmaadesti@gmail.com', 'Mahasiswa', '11216985', 429, 1),
(452, '1OVDNz8msJHQyqOLBtWnJwVim3GWXbth/MCfd5jeM7Y=', 'Goldviyanti26@gmail.com', 'Mahasiswa', '23216083', 430, 0),
(453, 'JzYdfziIEuxLU+txplCOe6wW4/PdpsSm/ukAg8UHpHY=', 'Yudha_diva@yahoo.co.id', 'Mahasiswa', '27216820', 431, 0),
(454, 'yDiqiJjknV9QvzBg/nXujnkBLRxYRK4P3SeB0sN3lS0=', 'inggithanum@gmail.com', 'Mahasiswa', '23216523', 432, 0),
(455, '/LgQi7SGo/Dxa3OkhBCAp/eYqB5G5zW0QXTeOYHoZvM=', 'novitanababan92@gmail.com', 'Mahasiswa', '25216505', 433, 0),
(456, 'Cq5t9q2sNRm4XUPLAk9GTcCpGSQR5aoS5qog98eCFD8=', 'Arwahyusasani@gmail.com', 'Mahasiswa', '20216975 ', 434, 1),
(457, 'c2XTjVF4AhIxxjlvo9OZn4RpMgtCuxpPzld0YeGwNj4=', 'vincensialeoni@gmail.com', 'Mahasiswa', '27216547', 435, 0),
(458, '6eKb+MNw3hqJCDPJ+2B4oy8EDe1DFYhBX0ttl2IbRo4=', 'badruzamantubagus@gmail.com', 'Mahasiswa', '27216457', 436, 0),
(459, 'vYSOTkLllTRPmGHTXTEgKl7Uwrd4nVzwapId6OWh5Fs=', 'anisatoha03@gmail.com', 'Mahasiswa', '20216901', 437, 1),
(460, '2PY/fhaQhTrgmkSfdu66IEytb1+YndJdX5sYzq5lH9U=', 'Dpasadana@gmail.com', 'Mahasiswa', '22216128', 438, 0),
(461, 'xBd1sIlPfFH9MjCExUtPJYhYbNVnjC/jMAhX89yoXkQ=', 'fauziahrizqilaila@gmail.com', 'Mahasiswa', '26216631', 439, 1),
(462, 'KAqg4VvE2Dm1DPUJWyT+6GQ3cmQ1b//e+9xDnbS9Yig=', 'tiara.ary15@yahoo.com', 'Mahasiswa', '27216379', 440, 1),
(463, 'xR0m9MLXWvDThLJYs0mWu9bSRqc+pyS3/cvB30hBbMw=', 'tmswahyu@gmail.com', 'Mahasiswa', '23216076', 441, 0),
(464, 'suFFE9/pjVJUDfEN0+MlZsolI/Zd/8ODcUlh/5JctMY=', 'faisalfawwazathallah@gmail.com', 'Mahasiswa', '22216518', 442, 0),
(465, 'V+ktYj2SDV5knvBhSwldZ6vPbcvfDSYZp+E09rdI3Jk=', 'Rizky98r@gmail.com', 'Mahasiswa', '26216616', 443, 0),
(466, 'MQrFcllrImaeDF0d7y0k0Hs6s4QzUTcL6QlJWErVlBI=', 'rakapanji@gmail.com', 'Mahasiswa', '26216033', 444, 0),
(467, 'CAMxcUqZn6cUjAm6CfOk/N/4+Xjupo+joDLMlcs1o20=', 'djay.zamal@gmail.com', 'Mahasiswa', '27216917', 445, 0),
(468, 'wrFJYLWfzPPSaWkrxhFPouohfbnIziT7LCKZEyFX9IU=', 'Reginasavio8@gmail.com', 'Mahasiswa', '26216145', 446, 1),
(469, 'ulcV+1iKEAgMzgsRRFpcjLdo3e8Rb/5p+W6KlpkPzXg=', 'nizmafidyatulilmi@gmail.com', 'Mahasiswa', '25216465', 447, 0),
(470, '6agdmpLGjFtQIcMAvUh1gZR0tCTS4q+zIvEhpXXKEvo=', 'farahfjessar@gmail.com', 'Mahasiswa', '22216623', 448, 0),
(471, 'Xc26KwAJgdLd6VzNLNPG6yRGxSwNKmDHK4F0WK5zJDI=', '12dwicahya@gmail.com', 'Mahasiswa', '22216178', 449, 0),
(472, 'M8FKF1wIOkggMjQ1+iaUzP5gGWVtFU5jR8zNbluMsdk=', 'angelinapanjaitan06@gmail.com', 'Mahasiswa', '20216840', 450, 1),
(473, '24sXpQtKgjdgzRxH0XjJQjJIB1n+goSwi8rIwYTKaig=', 'dennisael19@gmail.com', 'Mahasiswa', '21216821', 451, 0),
(474, '3VSmhnj/N3Y0T1nGPEUTRSbNzjhw6tKZ2sEloM7hofc=', 'nadillarachmadani31@gmail.com', 'Mahasiswa', '25216266', 452, 0),
(475, '6pLUR7Ze/mbF/JaZx1sL5Z9e6fmwQie+X8B5KJzqekY=', 'Rista.asripuspita98@gmail.com', 'Mahasiswa', '26216504', 453, 0),
(476, 'zDprdGb4G83gVOfeZgJuiYhEDE05wT8y2iksV67BGSw=', 'pinkandini96@gmail.com', 'Mahasiswa', '25215346', 454, 0),
(477, 'D/g5rbJEP7GqGIghYKIujAoPkveL8WfdY5ak2kC36B0=', 'rahmahmauliza98@gmail.com', 'Mahasiswa', '25216993', 455, 1),
(478, 'eyd3qL+JooxcDudV6X77N57njND3Ch3iZA4ADiqCZNQ=', 'ersabita98@gmail.com', 'Mahasiswa', '22216381', 456, 1),
(479, '/sVXLwN2R9Cmo8uL5TN4z+ds6Gal9KpPCOuxnsSCMGQ=', 'fmelatrakia@gmail.com', 'Mahasiswa', '22216673', 457, 1),
(480, 'BIk4SOl8PW1ObyXr0nFaO+4i8rHlO210lO59FtVUnzQ=', 'Rismatasya84@gmail.com', 'Mahasiswa', '26216499', 458, 1),
(481, 'GBXQyeSKkkcS67oq2cXLL2gN+QqnzBbfbKRlmQ2JFaI=', 'septianiprayudi@gmail.com', 'Mahasiswa', '22216277', 459, 1),
(482, 'axgjVTCVwitT1N+32Gh13YHwJsFJhl7Bmik3yM+jqg4=', 'Jupitamayidi54@gmail.com', 'Mahasiswa', '23216794', 460, 1),
(483, 'sx2yt/khxX5c4mFn5NVgh9xd6klYkkkB/D/jRHhg1z0=', 'sherlyyindria@gmail.com', 'Mahasiswa', '26215535', 461, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataakses`
--
ALTER TABLE `dataakses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_aspekpenilaian`
--
ALTER TABLE `data_aspekpenilaian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_blanko`
--
ALTER TABLE `data_blanko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_gelombang`
--
ALTER TABLE `data_gelombang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_kategorisoal`
--
ALTER TABLE `data_kategorisoal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_kursus`
--
ALTER TABLE `data_kursus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_modul`
--
ALTER TABLE `data_modul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pembayaran`
--
ALTER TABLE `data_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pengajar`
--
ALTER TABLE `data_pengajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_register`
--
ALTER TABLE `data_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_soal`
--
ALTER TABLE `data_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_workshop`
--
ALTER TABLE `data_workshop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_jawab`
--
ALTER TABLE `tr_jawab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_mahasiswa_kursus`
--
ALTER TABLE `tr_mahasiswa_kursus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_nilai`
--
ALTER TABLE `tr_nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_pengajar_kursus`
--
ALTER TABLE `tr_pengajar_kursus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_ujian`
--
ALTER TABLE `tr_ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_aspekpenilaian`
--
ALTER TABLE `data_aspekpenilaian`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `data_blanko`
--
ALTER TABLE `data_blanko`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `data_kategorisoal`
--
ALTER TABLE `data_kategorisoal`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `data_pembayaran`
--
ALTER TABLE `data_pembayaran`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `data_pengajar`
--
ALTER TABLE `data_pengajar`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `data_register`
--
ALTER TABLE `data_register`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT for table `data_soal`
--
ALTER TABLE `data_soal`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `tr_jawab`
--
ALTER TABLE `tr_jawab`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `tr_mahasiswa_kursus`
--
ALTER TABLE `tr_mahasiswa_kursus`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `tr_nilai`
--
ALTER TABLE `tr_nilai`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tr_pengajar_kursus`
--
ALTER TABLE `tr_pengajar_kursus`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tr_ujian`
--
ALTER TABLE `tr_ujian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
