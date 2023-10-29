-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Okt 2023 pada 22.04
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profile`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `mapel` varchar(25) NOT NULL,
  `kode` varchar(8) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nama`, `mapel`, `kode`, `alamat`, `jenis_kelamin`, `gambar`) VALUES
(2, 'NAMA GURU', 'KEPALA SEKOLAH', '', '', '', '1698610719_me-removebg-preview.png'),
(3, 'NAMA', 'KEPALA WAKIL', '', '', 'Laki-laki', '1698610754_me-removebg-preview.png'),
(4, 'NAMA GURU', 'KESISWAAN', '', '', 'Laki-laki', '1698610788_me-removebg-preview.png'),
(5, 'NAMA GURU', 'ADMIN SEKOLAH', '', '', 'Laki-laki', '1698610816_me-removebg-preview.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(5) NOT NULL,
  `telpon` char(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ig` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `telpon`, `email`, `ig`, `fb`) VALUES
(1, '082185277536', 'email@yahoo.com', 'wa.me/628185277536', 'https://m.facebook.com/profile.php/?id=100028468966121 ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sarana_prasarana`
--

CREATE TABLE `sarana_prasarana` (
  `id_sp` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `foto` varchar(288) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sarana_prasarana`
--

INSERT INTO `sarana_prasarana` (`id_sp`, `nama`, `foto`, `deskripsi`) VALUES
(2, 'Maulid', '1698610130_kog.jpg', ' '),
(10, 'Foto Guru Dan Ustadz Saat Acar', '1698610211_keg.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarah`
--

CREATE TABLE `sejarah` (
  `id_sejarah` int(5) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sejarah`
--

INSERT INTO `sejarah` (`id_sejarah`, `isi`) VALUES
(1, 'tulis sejarah disini \r\ngunakan (<br>) untuk enter antar pargrap\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_profile1`
--

CREATE TABLE `tb_profile1` (
  `id_profil` int(5) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `gambar` text NOT NULL,
  `npsn` int(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `akreditas` varchar(26) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_profile1`
--

INSERT INTO `tb_profile1` (`id_profil`, `judul`, `gambar`, `npsn`, `alamat`, `akreditas`, `isi`) VALUES
(1, 'MAS ALIYAH BANDAR MASILAM', '1698610653_img_1_1698609346552.jpg', 0, 'Sintuk Toboh Gadang', 'Akreditasi C', 'MAS AL-AMIN Bandar Masilam memiliki beberapa jurusan,yaitu:\r\n<br>\r\n1.IPA\r\n<br>\r\n2.IPS\r\n<br>\r\n Sepeda Bermotor  ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_profile2`
--

CREATE TABLE `tb_profile2` (
  `id_pf` int(5) NOT NULL,
  `npsn` int(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `kepemilikan` varchar(25) NOT NULL,
  `sk_pendirian` char(25) NOT NULL,
  `tanggal_sk_pendirian` date NOT NULL,
  `sk_izin` char(25) NOT NULL,
  `tanggal_sk_izin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_profile2`
--

INSERT INTO `tb_profile2` (`id_pf`, `npsn`, `status`, `pendidikan`, `kepemilikan`, `sk_pendirian`, `tanggal_sk_pendirian`, `sk_izin`, `tanggal_sk_izin`) VALUES
(1, 70010898, 'Swasta', 'MA', 'Yayasan', '273', '2020-05-19', '273/KEP/BPP/2020', '2020-05-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(8) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `foto`) VALUES
(1, 'Admin AL-Amin', 'admin@masalamin.com', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(2, 'Admin Al-Amin 2', 'admin2@masalamin.com', 'd41d8cd98f00b204e9800998ecf8427e', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visi_misi`
--

CREATE TABLE `visi_misi` (
  `id_vm` int(5) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `visi_misi`
--

INSERT INTO `visi_misi` (`id_vm`, `visi`, `misi`) VALUES
(1, 'Terwujudnya tamatan yang taqwa,cerdas,terampil,produktif dan berbudi pekerti luhur', '1.Mendidik siswa menjadi tamatan yang berkualitas\r\n<br>\r\n2.Mendidikan siswa menjadi tamatan yang mempunyai etos kerja dan mampu menciptakan lapangan kerja\r\n<br>\r\n3.Menyiapkan tamatan yang terampil untuk memasuki dunia kerja\r\n<br>\r\n4.Menyiapkan tamatan untuk melanjutkan pendidikan ke jenjang yang lebih tinggi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `sarana_prasarana`
--
ALTER TABLE `sarana_prasarana`
  ADD PRIMARY KEY (`id_sp`);

--
-- Indeks untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id_sejarah`);

--
-- Indeks untuk tabel `tb_profile1`
--
ALTER TABLE `tb_profile1`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `tb_profile2`
--
ALTER TABLE `tb_profile2`
  ADD PRIMARY KEY (`id_pf`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visi_misi`
--
ALTER TABLE `visi_misi`
  ADD PRIMARY KEY (`id_vm`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sarana_prasarana`
--
ALTER TABLE `sarana_prasarana`
  MODIFY `id_sp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id_sejarah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_profile1`
--
ALTER TABLE `tb_profile1`
  MODIFY `id_profil` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_profile2`
--
ALTER TABLE `tb_profile2`
  MODIFY `id_pf` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `visi_misi`
--
ALTER TABLE `visi_misi`
  MODIFY `id_vm` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
