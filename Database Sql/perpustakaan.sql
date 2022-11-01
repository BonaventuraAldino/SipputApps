-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2019 pada 22.10
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `ID` int(11) NOT NULL,
  `NAMA` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`ID`, `NAMA`, `EMAIL`, `PASSWORD`) VALUES
(1, 'asdsda@gmail.com', 'asdsda@gmail.com', 'asdasd'),
(2, 'sdads@gmail.com', 'sdads@gmail.com', '121212'),
(3, 'riojhee@gmail.com', 'riojhee@gmail.com', '123456'),
(4, 'ada@gmail.com', 'ada@gmail.com', '123456'),
(6, 'jaenal1@gmail.com', 'jaenal1@gmail.com', '12345'),
(7, 'adadia', 'adadia@gmail.com', '1234567'),
(8, 'adasdsadadadadadadda', 'adadadadaa@yopmail.com', '1212121212'),
(9, 'Fauzi Sunarya', 'fauzialdzikirullah@gmail.com', 'kafaufau020699');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `ID` int(11) NOT NULL,
  `KODEBUKU` varchar(15) NOT NULL,
  `JUDULBUKU` varchar(300) NOT NULL,
  `PENGARANG` varchar(300) NOT NULL,
  `TAHUNTERBIT` varchar(6) NOT NULL,
  `JUMLAHBUKU` varchar(100) NOT NULL,
  `PENERBIT` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`ID`, `KODEBUKU`, `JUDULBUKU`, `PENGARANG`, `TAHUNTERBIT`, `JUMLAHBUKU`, `PENERBIT`) VALUES
(1, 'KB1001', 'Bahasa Indonesia', 'Bapak Maman', '2016', '10', 'Nurmedika'),
(2, 'KB100000', 'Bahasa Inggris', 'Bapak trisno', '2012', '12', 'erlangga'),
(3, 'KB1003', 'Matematika', 'Sinta', '2010', '12', 'erlangga'),
(4, 'KB006', 'Bahasa Arab', 'sliter', '2012', '6', 'cahata'),
(5, 'KB006', 'Bahasa Arab', 'sliteaaaa', '2012', '1', 'cahaya'),
(6, 'KB1009', 'Bahasa Cina', 'Rahman', '2019', '100', 'ada'),
(7, 'KB1008', 'asdasdad', 'asdsdasd', '2019', '12', 'adadada'),
(8, 'KB1007', 'Siman', 'WArna', '2018', '10', 'Bintang'),
(9, 'KB10111', 'aaaaaaaaaaa', 'Warnaaaaaa', '1999', '200', 'sinta');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
