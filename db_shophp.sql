-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2023 pada 12.27
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shophp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id` int(11) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `stok` varchar(15) NOT NULL,
  `harga_jual` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`id`, `merk`, `nama_barang`, `stok`, `harga_jual`) VALUES
(1, 'Apple', 'Iphone 11 PRO', '4', '15.000.000'),
(2, 'SAMSUNG', 'Samsung Galaxy', '5', '6.000.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_cek_stok`
--

CREATE TABLE `tbl_cek_stok` (
  `id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `harga_beli` varchar(20) NOT NULL,
  `jumlah_stok` varchar(15) NOT NULL,
  `tanggal_masuk_barang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_cek_stok`
--

INSERT INTO `tbl_cek_stok` (`id`, `barang_id`, `supplier_id`, `harga_beli`, `jumlah_stok`, `tanggal_masuk_barang`) VALUES
(5, 1, 3, '17.000.000', '4', '15-21-23'),
(6, 2, 4, '7.000.000', '6', '15-21-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kustomer`
--

CREATE TABLE `tbl_kustomer` (
  `id` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kustomer`
--

INSERT INTO `tbl_kustomer` (`id`, `nama_pelanggan`, `alamat`, `telepon`, `email`) VALUES
(1, 'reza', 'jl.pal-palan', '08216446', 'reza77@gmail.com'),
(2, 'daus', 'jl.belitung darat', '08637646245', 'daus77@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `tanggal_pembayaran` varchar(100) NOT NULL,
  `jumlah` varchar(15) NOT NULL,
  `harga_beli` varchar(20) NOT NULL,
  `metode_pembayaran` varchar(20) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `total` varchar(20) NOT NULL,
  `kustomer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`id`, `barang_id`, `tanggal_pembayaran`, `jumlah`, `harga_beli`, `metode_pembayaran`, `merk`, `nama_barang`, `total`, `kustomer_id`) VALUES
(2, 1, '15-11-23', '2', '10.500.000', 'cash', 'Apple', 'Iphone 11 PRO', '21.000.000', 1),
(3, 2, '15-12-23', '3', '6.000.000', 'cash', 'Samsung', 'Samsung Galaxy 11 Pro', '18.000.000', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id` int(11) NOT NULL,
  `nama_pt` varchar(100) NOT NULL,
  `alamat_pt` varchar(100) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id`, `nama_pt`, `alamat_pt`, `nama_supplier`, `alamat`, `telepon`) VALUES
(3, 'pt.majestic iphone bjm', 'jl.imam bonjol', 'diana wijaya', 'jl.antasari', '082367809901'),
(4, 'pt.teknologi seluler bjm', 'jl.ahmad dahlan', 'andre surya', 'jl.pangeran hidayatullah', '0862537253');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin77', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_cek_stok`
--
ALTER TABLE `tbl_cek_stok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barang_id` (`barang_id`,`supplier_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indeks untuk tabel `tbl_kustomer`
--
ALTER TABLE `tbl_kustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barang_id` (`barang_id`,`kustomer_id`),
  ADD KEY `kustomer_id` (`kustomer_id`);

--
-- Indeks untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_cek_stok`
--
ALTER TABLE `tbl_cek_stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_kustomer`
--
ALTER TABLE `tbl_kustomer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_cek_stok`
--
ALTER TABLE `tbl_cek_stok`
  ADD CONSTRAINT `tbl_cek_stok_ibfk_1` FOREIGN KEY (`barang_id`) REFERENCES `tbl_penjualan` (`barang_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_cek_stok_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `tbl_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD CONSTRAINT `tbl_penjualan_ibfk_1` FOREIGN KEY (`kustomer_id`) REFERENCES `tbl_kustomer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_penjualan_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `tbl_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
