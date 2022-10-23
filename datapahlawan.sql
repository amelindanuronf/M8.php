-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2022 at 09:46 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daftarpahlawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `datapahlawan`
--

CREATE TABLE `datapahlawan` (
  `Id` int(11) NOT NULL,
  `Foto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Jenis Kelamin` enum('Laki-Laki','Perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tempat Lahir` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tanggal Lahir` date NOT NULL,
  `Gugur/Meninggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datapahlawan`
--

INSERT INTO `datapahlawan` (`Id`, `Foto`, `Nama`, `Jenis Kelamin`, `Tempat Lahir`, `Tanggal Lahir`, `Gugur/Meninggal`) VALUES
(1, 'Ir.Soekarno.jpg', 'Ir. Soekarno', 'Laki-Laki', 'Surabaya', '1901-06-06', '1970-06-20'),
(2, 'Moh.Hatta.jpg', 'Drs. H. Mohammad Hatta', 'Laki-Laki', 'Bukittingi, Sumatra Barat', '1902-08-12', '1980-03-14'),
(3, 'HOS.Tjokroaminoto.jpg', 'Raden Mas Haji Oemar Said Tjokroaminoto', 'Laki-Laki', 'Ponorogo, Jawa Timur', '1882-08-16', '1934-12-17'),
(4, 'RA.Kartini.jpg', 'Raden Adjeng Kartini ', 'Perempuan', 'Jepara, Jawa Tengah', '1879-04-21', '1904-09-17'),
(5, 'Dewi Sartika.jpg', 'Raden Dewi Sartika ', 'Perempuan', 'Bandung, Jawa Barat', '1884-12-04', '1947-09-11'),
(6, 'Martha Christina Tiahahu.jpg', 'Martha Christina Tiahahu', 'Perempuan', 'Maluku Tengah, Maluku', '1800-01-04', '1818-01-02'),
(7, 'Douwes Dekker.jpg', 'Douwes Dekker', 'Laki-Laki', 'Pasuruan, Jawa Timur', '1879-10-08', '1950-08-28'),
(8, 'Gatot Subroto.jpg', 'Jenderal TNI (Anm.) Gatot Soebroto', 'Laki-Laki', 'Banyumas, Jawa Tengah', '1907-10-10', '1962-06-11'),
(9, 'Hamengkubawono IX.jpg', 'Sri Sultan Hamengkubuwana IX', 'Laki-Laki', 'Kesultanan Ngayogyakarta Hadiningrat', '1912-04-12', '1988-10-02'),
(10, 'MW.Maramis.jpg', 'Maria Walanda Maramis', 'Perempuan', 'Minahasa Utara, Sulawesi Utara', '1872-12-01', '1924-04-22'),
(11, 'Fatmawati Soekarno.jpeg', 'Hj. Fatmawati ', 'Perempuan', 'Bengkulu', '1923-02-05', '1980-05-14'),
(12, 'Cut Nyak Meutia.jpg', 'Cut Nyak Meutia', 'Perempuan', 'Aceh Utara, Aceh', '1870-02-15', '1910-10-24'),
(13, 'Ki Hadjar Dewantara.jpg', 'Ki Hadjar Dewantara', 'Laki-Laki', 'Surakarta, Jawa Tengah', '1889-05-02', '1959-04-26'),
(14, 'MH. Thamrin.jpg', 'Mohammad Husni Thamrin', 'Laki-Laki', 'Weltevreden, Batavia', '1894-02-16', '1941-01-11'),
(15, 'I Gusti Ngurah.jpg', 'I Gusti Ngurah Rai ', 'Laki-Laki', 'Badung, Bali', '1917-01-30', '1946-11-20'),
(16, 'Tien Soeharto.jpg', 'Raden Ayu Hj. Siti Hartinah (Tien Soeharto)', 'Perempuan', 'Surakarta, Jawa Tengah', '1923-08-23', '1996-04-28'),
(17, 'Maraddia Balanipa.jpg', 'Andi Depu Maraddia Balanipa', 'Perempuan', 'Surakarta, Jawa Tengah', '1907-08-01', '1985-06-18'),
(18, 'Rasuna Said.jpg', 'Hj. Rangkayo Rasuna Said', 'Perempuan', 'Agam, Sumatra Barat', '1910-09-14', '1965-11-02'),
(19, 'Ahmad Dahlan.jpg', 'Kyai Haji Ahmad Dahlan', 'Laki-Laki', 'Yogyakarta', '1868-08-01', '1923-02-23'),
(20, 'Cik Di Tiro.jpg', 'Teungku Chik di Tiro Muhammad Saman', 'Laki-Laki', 'Pidie, Aceh', '1836-01-01', '1891-01-31'),
(21, 'Agus Salim.jpg', 'H. Agus Salim', 'Laki-Laki', 'Agam, Sumatra Barat', '1884-10-08', '1954-11-04'),
(22, 'Nyai Ahmad Dahlan.jpg', 'Nyai Ahmad Dahlan (Siti Walidah)', 'Perempuan', 'Yogyakarta', '1872-01-03', '1946-05-31'),
(23, 'Wahidin.jpg', 'Wahidin Sudirohusodo', 'Laki-Laki', 'Sleman, Yogyakarta', '1852-01-07', '1917-05-26'),
(24, 'Supriyadi.jpg', 'Soeprijadi', 'Laki-Laki', 'Trenggalek, Jawa Timur', '1923-04-13', '1945-02-14'),
(25, 'Radjima Wediodiningrat.jpg', 'Dr. Kanjeng Raden Tumenggung (K.R.T.) Radjiman Wed', 'Laki-Laki', 'Yogyakarta', '1879-04-21', '1952-09-20'),
(26, 'Jenderal Sudirman.jpg', 'Raden Soedirman', 'Laki-Laki', 'Purbalingga, Jawa Tengah', '1916-01-24', '1950-01-29'),
(27, 'Bung Tomo.jpg', 'Sutomo (Bung Tomo)', 'Laki-Laki', 'Surabaya, Jawa Timur', '1920-10-03', '1981-10-07'),
(28, 'Oerip Soemohardjo.jpg', 'Jenderal TNI (Anumerta) R. Oerip Soemohardjo', 'Laki-Laki', 'Purworejo, Jawa Tengah', '1893-02-22', '1948-11-17'),
(29, 'Slamet Riyadi.jpg', 'Ignatius Slamet Riyadi', 'Laki-Laki', 'Surakarta, Jawa Tengah', '1927-07-26', '1950-11-04'),
(30, 'Arie Frederik Lasut.jpg', 'Arie Frederik Lasut ', 'Laki-Laki', 'Minahasa, Sulawesi Utara', '1918-07-06', '1949-05-07');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
