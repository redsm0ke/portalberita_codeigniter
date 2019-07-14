-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2019 pada 17.05
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id` int(5) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `image` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `penulis` varchar(20) NOT NULL,
  `kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_berita`
--

INSERT INTO `tbl_berita` (`id`, `judul`, `isi`, `image`, `tanggal`, `penulis`, `kategori`) VALUES
(1, 'Suicidal boy photo', 'bacot lo', 'laugh.jpg', '2019-07-14', 'Dianeme x Nabilaku', 'Lowongan Pekerjaan'),
(2, 'soof ceue h3h3h3 apalo anjg', 'HAHAHAHAH INI PASTI WORK YA ANJING', 'autis.jpg', '2019-07-14', 'Dianeme x Nabilaku', 'Berita'),
(3, 'INI PASTI WORK', 'hehe', 'rando.jpg', '2019-07-14', 'Dianeme x Nabilaku', 'Berita'),
(4, 'INI TIDAK MUNGKIN TIDAK WORK', 'pantek kelen semua', 'pepe.jpg', '2019-07-14', 'Dianeme x Nabilaku', 'Berita'),
(5, 'AAAAAAAAA', 'AAAAAAAAAA', 'sayangku1.jpg', '2019-07-14', 'Dianeme x Nabilaku', 'Berita'),
(6, 'kepo bgt sih kamu', 'bacot lo\r\n\r\nanjing', 'prabowo.jpg', '2019-07-14', 'Dianeme x Nabilaku', 'Berita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_configuration`
--

CREATE TABLE `tbl_configuration` (
  `id` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `tentang` text NOT NULL,
  `sejarah` text NOT NULL,
  `legalitas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_configuration`
--

INSERT INTO `tbl_configuration` (`id`, `alamat`, `email`, `hp`, `tentang`, `sejarah`, `legalitas`) VALUES
(1, 'Jl Taman Siswa No. 125 Yogyakarta 55151', 'test@pornhub.com', '+62(274) 379492', '<p><span>Global Intermedia</span> adalah penyedia solusi di bidang teknologi informasi yang mengkhususkan diri pada solusi aplikasi sistem informasi untuk pemerintahan</p>\r\n<div class=\"about-us\">\r\n<span>Nam gravida magna vitae ante dignissim</span>\r\n<span>Duis rhoncus lectus at velit hendrerit quis</span>\r\n<span>Sed fringilla tempor arcu feugiat risus</span>\r\n<span>Vivamus semper odio in nibh ultricies</span>\r\n</div>\r\n<p>aksdjn</p>', '<p><span>Global Intermedia (G-IM) </span> dikenal sebagai De Concept Computer 2000. Didirikan secara resmi pada 1 Maret 2004 setelah lebih dari 2 tahun (sejak tahun 2001) dilakukan perencanaan-perencanaannya. Anggota tim Global Intermedia telah dilatih dengan baik di berbagai perusahaan dan beberapa institusi, untuk menyediakan tim yang solid dan tangguh. Dengan teknologi informasi sebagai bisnis utama, kami menyediakan aplikasi desktop, aplikasi web, presentasi multimedia dan perawatan jaringan komputer.</p>', '<p><span>Global Intermedia (G-IM) </span></p>CV Global Intermedia\r\n<br>Akta Pendirian</br>\r\n Notaris Dwi Hayu Darmaningrum, SH Nomor 01 Tanggal 1 Maret 2004</br>\r\n\r\nAkta Perubahan</br>\r\nNotaris Dwi Hayu Darmaningrum, SH Nomor 03 Tanggal 31 Oktober 2005</br>\r\n\r\nNPWP</br>\r\n02.398.100.4-542.000</br>\r\n\r\nSIUP</br>\r\n503/1548/1051/PK/X/2004</br>\r\n\r\nPT Global Intermedia Nusantara</br>\r\nAkta Pendirian</br>\r\nNotaris Triniken Tiyas Tirlin, SH Nomor 21 Tanggal 26 Januari 2006</br>\r\n\r\nSK Menteri Hukum dan HAM</br>\r\nC-17711 HT.01.01.TH.2006</br>\r\n\r\nNPWP</br>\r\n02.478.194.0-542.000</br>\r\n\r\nSIUP</br>\r\n503/629/246/PM/IX/2006</br></p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `namakategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id`, `kategori`, `namakategori`) VALUES
(1, 'berita', 'Berita'),
(2, 'lowongan', 'Lowongan Pekerjaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'Sandhika Galih', 'sandhikagalih@unpas.ac.id', 'profile1.jpg', '$2y$10$nXnrqGQTjpvg58OtOB/N.evYQjVlz7KIW37oUSQSQ2EgNMD0Dgrzq', 1, 1, 1552120289),
(6, 'Doddy Ferdiansyah', 'doddy@gmail.com', 'profile.jpg', '$2y$10$FhGzXwwTWLN/yonJpDLR0.nKoeWlKWBoRG9bsk0jOAgbJ007XzeFO', 2, 1, 1552285263),
(11, 'Sandhika Galih', 'sandhikagalih@gmail.com', 'default.jpg', '$2y$10$0QYEK1pB2L.Rdo.ZQsJO5eeTSpdzT7PvHaEwsuEyGSs0J1Qf5BoSq', 2, 1, 1553151354),
(12, 'Dianeme x Nabilaku', 'you@nabilaku.com', 'default1.jpg', '$2y$10$mbvUkAFMhl1Vo3.qkEKWpe6Bc2l874Fuokg0D91rPXFPq2zYB/74W', 1, 1, 1562930583),
(14, 'Rahmat Sadboy', 'rahmat@nabilaku.com', 'default.jpg', '$2y$10$Uu1aIXOPz621vsbajGRfru50zalv5YucvvOuNvLlNKTU7kmI2Bqf.', 2, 1, 1562931425);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(7, 1, 3),
(8, 1, 2),
(10, 1, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(5, 'Website');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(9, 5, 'Berita', 'website/berita', 'fas fa-newspaper', 1),
(10, 5, 'Pengaturan Kontak', 'website/kontak', 'fa fa-phone', 1),
(11, 5, 'Tentang Kami', 'website/about', 'fas fa-info-circle', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_configuration`
--
ALTER TABLE `tbl_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_configuration`
--
ALTER TABLE `tbl_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
