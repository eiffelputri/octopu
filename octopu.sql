-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 04:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `octopu`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_nama`, `username`, `password`, `admin_telp`, `admin_mail`) VALUES
(1, 'clara abc d', 'admin1', 'admin', '08529078352', 'eiffelputri@gmail.co.id'),
(2, 'lalak', 'lalak', 'lalak', '089797898789', 'lalak@gmail.com'),
(4, 'popo', 'admin', 'popoctk', '081', 'popo@gmail.com'),
(14, 'Elecia Budi', 'els', 'abcdef', '089787878', 'abs@gmail.com'),
(15, 'ioio', 'hjhj', 'lili', '09090', 'bh@gmail.com'),
(16, 'p', 'p', 'p', '0', 'p'),
(17, 'lala', 'lala', 'qwerty', '089', 'lala@gmail.com'),
(18, '', '', '', '', ''),
(19, 'lala', 'A112113227', 'ppp', '089', 'lala@gmail.com'),
(20, 'Rajasa Fair', 'raja', 'raja', '123', 'rajasa@gmail.com'),
(21, 'Elecia Budi', 'els', 'lala', '0812398876', 'ebs@gmail.com'),
(22, 'raja', 'raja', 'raja', '12345', 'raja@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_event`
--

CREATE TABLE `tb_event` (
  `event_id` int(11) NOT NULL,
  `event_nama` varchar(20) NOT NULL,
  `event_gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_event`
--

INSERT INTO `tb_event` (`event_id`, `event_nama`, `event_gambar`) VALUES
(21, 'Try Out', 'learn1687344180.png'),
(22, 'Webinar', 'learn1687344231.jpg'),
(23, 'Seminar', 'learn1687344245.jpg'),
(24, 'Volunteer', 'learn1687344262.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_event`
--

CREATE TABLE `tb_jenis_event` (
  `jenis_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `jenis_nama` varchar(50) NOT NULL,
  `jenis_harga` int(50) NOT NULL,
  `jenis_desk` varchar(500) NOT NULL,
  `jenis_gambar` varchar(200) NOT NULL,
  `jenis_status` tinyint(1) NOT NULL,
  `jenis_tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jenis_event`
--

INSERT INTO `tb_jenis_event` (`jenis_id`, `event_id`, `jenis_nama`, `jenis_harga`, `jenis_desk`, `jenis_gambar`, `jenis_status`, `jenis_tgl`) VALUES
(8, 23, 'Semnasti', 40000, 'Cyber security awareness for securing data', 'event1687352117.jpg', 1, '2023-06-21 12:55:17'),
(9, 24, 'Semarak Qurban', 50000, 'Mari bergerak bersama sebagai relawan kegiatan qurban', 'event1687351807.jpeg', 1, '2023-06-21 12:50:07'),
(10, 24, 'Rekan Lansia', 40000, 'Relawan kesehatan lansia yayasan rumpun mumpuni', 'event1687351891.jpg', 1, '2023-06-21 12:51:31'),
(11, 24, ' Leader Beach Clean Up', 25000, 'Yuk, bersih sampah pantai!', 'event1687352072.jpg', 1, '2023-06-21 12:54:32'),
(12, 23, 'Sepakat', 50000, 'Peran inovasi dan teknologi dalam upaya peningkatan pemberdayaan masyarakat', 'event1687352150.jpg', 1, '2023-06-21 12:55:50'),
(13, 23, 'Nutrition Expo', 45000, 'Implementasi pola hidup sehat melalui gizi optimal sebagai investasi kesehatan jangka panjang', 'event1687352351.jpg', 1, '2023-06-21 12:59:11'),
(14, 22, 'Inovasi Sekolah Sehat', 30000, 'Merawat sehat merawat Indonesia', 'event1687352472.jpg', 1, '2023-06-21 13:01:12'),
(15, 22, 'Literasi Digital', 80000, 'Menyiapkan SDM bertalenta digital', 'event1687352545.jpg', 1, '2023-06-21 13:02:25'),
(16, 22, 'Goes to Campus', 85000, 'Tips memilih jurusan sesuai bakat dan minat karakter diri', 'event1687352572.jpg', 1, '2023-06-21 13:02:52'),
(17, 21, 'US', 80000, 'Gladi US Cemerlang', 'event1687352647.jpg', 1, '2023-06-21 13:04:07'),
(18, 21, 'SNBT', 25000, 'Kerjain tesnya bawa pulang hadiahnya', 'event1687352760.jpg', 1, '2023-06-21 13:06:00'),
(19, 21, 'Kedinasan', 90000, 'Siap tempur SKD 2024', 'event1687352778.jpg', 1, '2023-06-21 13:06:18'),
(20, 24, 'PMI', 10000, 'bagus', 'event1687399595.jpg', 1, '2023-06-22 02:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `kons_id` int(11) NOT NULL,
  `kons_nama` varchar(50) NOT NULL,
  `kons_username` varchar(20) NOT NULL,
  `kons_mail` varchar(20) NOT NULL,
  `kons_telp` varchar(20) NOT NULL,
  `kons_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_konsumen`
--

INSERT INTO `tb_konsumen` (`kons_id`, `kons_nama`, `kons_username`, `kons_mail`, `kons_telp`, `kons_password`) VALUES
(46, 'rani', 'rani gendut', 'rani@gmail.com', '0898989', 'rani'),
(51, 'Clara Edrea', 'clara', 'clara@gmail.com', '08123456', 'clara'),
(52, 'Lutfia Arum', 'lutfia', 'lutfia@gmail.com', '890890', 'lutfia'),
(53, 'Firda Ayu', 'firda opo', 'firda@gmail.com', '1213456', 'firda'),
(54, 'Elecia Budi', 'elecia', 'elecia@gmail.com', '012345', 'elecia'),
(55, 'Rajasa Fairuz Budi', 'rajasabudi', 'raja@gmail.comm', '089786756123', 'rajasa'),
(56, 'Fairuz', 'fairuz', 'fairuz@gmail.com', '089', 'fairuz'),
(57, 'Hafizh', 'hafizh dzaki', 'hafizh@gmail.com', '012345', 'hafizh');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `mapel_id` int(11) NOT NULL,
  `selflearning_id` int(11) NOT NULL,
  `mapel_nama` varchar(50) NOT NULL,
  `mapel_harga` int(100) NOT NULL,
  `mapel_desk` varchar(500) NOT NULL,
  `mapel_gambar` varchar(100) NOT NULL,
  `mapel_status` tinyint(1) NOT NULL,
  `mapel_tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`mapel_id`, `selflearning_id`, `mapel_nama`, `mapel_harga`, `mapel_desk`, `mapel_gambar`, `mapel_status`, `mapel_tgl`) VALUES
(14, 35, 'Text Editorial', 15000, 'Kelas 11', 'materi1687345367.jpg', 1, '2023-06-21 11:02:47'),
(15, 35, 'Artikel', 10000, 'Kelas 11', 'materi1687345712.jpg', 1, '2023-06-21 11:08:32'),
(16, 35, 'Kritik Sastra dan Esai', 18000, 'Kelas 10', 'materi1687345337.jpg', 1, '2023-06-21 11:02:17'),
(17, 34, 'Keanekaragaman Tingkat Gen, Tingkat Spesies, dan T', 30000, 'Kelas 10', 'materi1687345206.jpg', 1, '2023-06-21 11:00:06'),
(18, 34, 'Jaringan Tumbuhan dan Hewan', 15000, 'Kelas 11', 'materi1687345283.jpg', 1, '2023-06-21 11:01:23'),
(19, 34, 'Mekanisme Gerak Otot', 13000, 'Kelas 11', 'materi1687345303.jpg', 1, '2023-06-21 11:01:43'),
(20, 33, 'Kehidupan Manusia Purba di Indonesia dan Dunia', 21000, 'Kelas 10', 'materi1687353002.jpeg', 1, '2023-06-21 13:10:02'),
(21, 33, 'Pengaruh Perang Dunia 1 dan 2', 25000, 'Kelas 11', 'materi1687352966.jpg', 1, '2023-06-21 13:09:26'),
(22, 33, 'Bangsa Indonesia Menggapai Kemerdekaan', 15000, 'Kelas 11', 'materi1687352931.jpeg', 1, '2023-06-21 13:08:51'),
(23, 27, 'Offering Help and and Making Request ', 25000, 'Kelas 12', 'materi1687345556.jpg', 1, '2023-06-21 11:05:56'),
(24, 27, 'Congratulation and Complimenting Someone', 20000, 'Kelas 10', 'materi1687345697.jpg', 1, '2023-06-21 11:08:17'),
(25, 27, 'Formal Letter', 18000, 'Kelas 11', 'materi1687345755.jpg', 1, '2023-06-21 11:09:15'),
(26, 26, 'Besaran Pokok dan Besaran Turunan', 30000, 'Kelas 10', 'materi1687352830.jpeg', 1, '2023-06-21 13:07:10'),
(27, 26, 'Suhu dan Kalor, Skala Termometer', 27000, 'Kelas 11', 'materi1687352727.jpg', 1, '2023-06-21 13:05:27'),
(28, 26, 'Gelombang Elektromagnetik', 14000, 'Kelas 12', 'materi1687352694.png', 1, '2023-06-21 13:04:54'),
(29, 35, 'Menyampaikan Ide Melalui Anekdot', 21000, 'Kelas 11', 'materi1687352607.jpg', 1, '2023-06-21 13:03:27'),
(30, 35, 'Mengembangkan Pendapat Dalam Eksposisi', 30000, 'Kelas 11', 'materi1687352514.jpeg', 1, '2023-06-21 13:01:54'),
(31, 34, 'Mengenal Biologi', 30000, 'Kelas 10', 'materi1687352432.jpg', 1, '2023-06-21 13:00:32'),
(32, 34, 'Virus', 12000, 'Kelas 10', 'materi1687352402.jpg', 1, '2023-06-21 13:00:02'),
(33, 33, 'Kedatangan bangsa-bangsa Barat ke Indonesia', 17000, 'Kelas 11', 'materi1687352314.jpeg', 1, '2023-06-21 12:58:34'),
(34, 33, 'Corak Peradaban Awal di Dunia', 10000, 'Kelas 10', 'materi1687352284.jpeg', 1, '2023-06-21 12:58:04'),
(35, 27, 'Future perfect tense', 19000, 'Kelas 11', 'materi1687352248.jpg', 1, '2023-06-21 12:57:28'),
(36, 27, 'Reported Speech', 19000, 'Kelas 12', 'materi1687352040.png', 1, '2023-06-21 12:54:00'),
(37, 26, 'Gelombang Bunyi', 20000, 'Kelas 11', 'materi1687351995.jpeg', 1, '2023-06-21 12:53:15'),
(38, 26, 'Efek Doppler', 24000, 'Kelas 11', 'materi1687351589.jpeg', 1, '2023-06-21 12:46:29'),
(40, 27, 'Tenses', 5000, 'sulit\r\n', 'materi1687399308.jpg', 0, '2023-06-22 02:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `tb_selflearning`
--

CREATE TABLE `tb_selflearning` (
  `selflearning_id` int(11) NOT NULL,
  `selflearning_mapel` varchar(50) NOT NULL,
  `selflearning_gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_selflearning`
--

INSERT INTO `tb_selflearning` (`selflearning_id`, `selflearning_mapel`, `selflearning_gambar`) VALUES
(26, 'Fisika', 'learn1687336764.jpg'),
(27, 'Bahasa Inggris', 'learn1687336783.jpg'),
(33, 'Sejarah', 'learn1687343662.png'),
(34, 'Biologi', 'learn1687343682.jpg'),
(35, 'Bahasa Indonesia', 'learn1687344306.jpg'),
(39, 'Ekonomi', 'learn1687399111.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_event`
--
ALTER TABLE `tb_event`
  ADD PRIMARY KEY (`event_id`),
  ADD UNIQUE KEY `event_nama` (`event_nama`);

--
-- Indexes for table `tb_jenis_event`
--
ALTER TABLE `tb_jenis_event`
  ADD PRIMARY KEY (`jenis_id`),
  ADD KEY `selflearning_id` (`event_id`);

--
-- Indexes for table `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD PRIMARY KEY (`kons_id`),
  ADD UNIQUE KEY `kons_username` (`kons_username`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`mapel_id`),
  ADD KEY `selflearning_id` (`selflearning_id`);

--
-- Indexes for table `tb_selflearning`
--
ALTER TABLE `tb_selflearning`
  ADD PRIMARY KEY (`selflearning_id`),
  ADD UNIQUE KEY `selflearning_mapel` (`selflearning_mapel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_event`
--
ALTER TABLE `tb_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_jenis_event`
--
ALTER TABLE `tb_jenis_event`
  MODIFY `jenis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  MODIFY `kons_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `mapel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tb_selflearning`
--
ALTER TABLE `tb_selflearning`
  MODIFY `selflearning_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
