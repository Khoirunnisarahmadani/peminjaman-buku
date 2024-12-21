-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 19, 2024 at 09:33 PM
-- Server version: 8.0.40-0ubuntu0.22.04.1
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peminjaman-buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` char(26) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `stok` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('59d6ad626907b5a0341aba51c3754cd265bffec5', 'i:1;', 1734643853),
('59d6ad626907b5a0341aba51c3754cd265bffec5:timer', 'i:1734643853;', 1734643853),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:5:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";s:1:\"j\";s:5:\"label\";}s:11:\"permissions\";a:57:{i:0;a:4:{s:1:\"a\";s:26:\"01JFGD77NGF9AVPP4NBK7Q7YJH\";s:1:\"b\";s:9:\"view_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:1;a:4:{s:1:\"a\";s:26:\"01JFGD77P6E4ZGP2N8VDFT7QDN\";s:1:\"b\";s:13:\"view_any_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:2;a:4:{s:1:\"a\";s:26:\"01JFGD77PNKKFPZ90S1DT2B8VS\";s:1:\"b\";s:11:\"create_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:3;a:4:{s:1:\"a\";s:26:\"01JFGD77Q7AS24PED4099SBKDC\";s:1:\"b\";s:11:\"update_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:4;a:4:{s:1:\"a\";s:26:\"01JFGD77QQSA8W3Q17KQ9DZHH8\";s:1:\"b\";s:12:\"restore_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:5;a:4:{s:1:\"a\";s:26:\"01JFGD77R46C0EKXR8TMJN4FVZ\";s:1:\"b\";s:16:\"restore_any_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:6;a:4:{s:1:\"a\";s:26:\"01JFGD77RPQMAWSPQJ6BGH11CM\";s:1:\"b\";s:14:\"replicate_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:7;a:4:{s:1:\"a\";s:26:\"01JFGD77S67AEE4MVMY80AMA14\";s:1:\"b\";s:12:\"reorder_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:8;a:4:{s:1:\"a\";s:26:\"01JFGD77SMGY7BYXKXJY0J2DZR\";s:1:\"b\";s:11:\"delete_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:9;a:4:{s:1:\"a\";s:26:\"01JFGD77T4V8M59HHTN8B93K3Z\";s:1:\"b\";s:15:\"delete_any_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:10;a:4:{s:1:\"a\";s:26:\"01JFGD77TKJCPFY3VRQEJPR4HF\";s:1:\"b\";s:17:\"force_delete_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:11;a:4:{s:1:\"a\";s:26:\"01JFGD77V7HC8MAF3KXNK72F4W\";s:1:\"b\";s:21:\"force_delete_any_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:12;a:4:{s:1:\"a\";s:26:\"01JFGD77WQGDA8AC484N6JXRY5\";s:1:\"b\";s:15:\"view_peminjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:13;a:4:{s:1:\"a\";s:26:\"01JFGD77X7BC5NZQH4A6PHKY48\";s:1:\"b\";s:19:\"view_any_peminjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:14;a:4:{s:1:\"a\";s:26:\"01JFGD77XRDHA342SFV206Z839\";s:1:\"b\";s:17:\"create_peminjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:15;a:4:{s:1:\"a\";s:26:\"01JFGD77YF069D2ZXKQYP406B5\";s:1:\"b\";s:17:\"update_peminjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:16;a:4:{s:1:\"a\";s:26:\"01JFGD77Z1SQEFJACR8MM2M2CQ\";s:1:\"b\";s:18:\"restore_peminjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:17;a:4:{s:1:\"a\";s:26:\"01JFGD77ZJTFM45HT9EAG58N6C\";s:1:\"b\";s:22:\"restore_any_peminjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:18;a:4:{s:1:\"a\";s:26:\"01JFGD78057ZTZYKZ74JXV5WRE\";s:1:\"b\";s:20:\"replicate_peminjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:19;a:4:{s:1:\"a\";s:26:\"01JFGD780PX5HR8QWJWY8BE03S\";s:1:\"b\";s:18:\"reorder_peminjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:20;a:4:{s:1:\"a\";s:26:\"01JFGD7818GFWA97K3HTSV8PB7\";s:1:\"b\";s:17:\"delete_peminjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:21;a:4:{s:1:\"a\";s:26:\"01JFGD781VA8TPJMZ8787JNTRF\";s:1:\"b\";s:21:\"delete_any_peminjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:22;a:4:{s:1:\"a\";s:26:\"01JFGD782B9EDER59EJG5X9PYB\";s:1:\"b\";s:23:\"force_delete_peminjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:23;a:4:{s:1:\"a\";s:26:\"01JFGD782W065DG348TCT21XF5\";s:1:\"b\";s:27:\"force_delete_any_peminjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:24;a:4:{s:1:\"a\";s:26:\"01JFGD7844TY7TSV0ZJH4H5605\";s:1:\"b\";s:21:\"view_pengaturan::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:25;a:4:{s:1:\"a\";s:26:\"01JFGD784KJD850W0ERY7M92GB\";s:1:\"b\";s:25:\"view_any_pengaturan::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:26;a:4:{s:1:\"a\";s:26:\"01JFGD785CD8EP33DZ4BMHZ59K\";s:1:\"b\";s:23:\"create_pengaturan::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:27;a:4:{s:1:\"a\";s:26:\"01JFGD785YMKMERPDGTGEYFM0J\";s:1:\"b\";s:23:\"update_pengaturan::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:28;a:4:{s:1:\"a\";s:26:\"01JFGD786G1MSZP9F941MXEPP9\";s:1:\"b\";s:23:\"delete_pengaturan::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:29;a:4:{s:1:\"a\";s:26:\"01JFGD7871QTVNFE5XM8T70Y1Q\";s:1:\"b\";s:27:\"delete_any_pengaturan::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:30;a:4:{s:1:\"a\";s:26:\"01JFGD788DS7J9NRTJHZP8DXF4\";s:1:\"b\";s:21:\"view_pengaturan::user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:31;a:4:{s:1:\"a\";s:26:\"01JFGD7893B9K8SXWXQBX7R654\";s:1:\"b\";s:25:\"view_any_pengaturan::user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:32;a:4:{s:1:\"a\";s:26:\"01JFGD789RS273VYMEQ6WHDJHH\";s:1:\"b\";s:23:\"create_pengaturan::user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:33;a:4:{s:1:\"a\";s:26:\"01JFGD78ACV1143GFF4FG85RMX\";s:1:\"b\";s:23:\"update_pengaturan::user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:34;a:4:{s:1:\"a\";s:26:\"01JFGD78ASCJ18YGDY4J39B85P\";s:1:\"b\";s:24:\"restore_pengaturan::user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:35;a:4:{s:1:\"a\";s:26:\"01JFGD78BA0X9ZQPJP5DK16QYD\";s:1:\"b\";s:28:\"restore_any_pengaturan::user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:36;a:4:{s:1:\"a\";s:26:\"01JFGD78BTZGXMSGNY7GMAKP8P\";s:1:\"b\";s:26:\"replicate_pengaturan::user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:37;a:4:{s:1:\"a\";s:26:\"01JFGD78CG5HHA5AXAG63FFBS9\";s:1:\"b\";s:24:\"reorder_pengaturan::user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:38;a:4:{s:1:\"a\";s:26:\"01JFGD78D2FZ19YM7YYQQ3CP9C\";s:1:\"b\";s:23:\"delete_pengaturan::user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:39;a:4:{s:1:\"a\";s:26:\"01JFGD78DKQMFZC8K5EY0MYPN8\";s:1:\"b\";s:27:\"delete_any_pengaturan::user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:40;a:4:{s:1:\"a\";s:26:\"01JFGD78E5Q5G78NVYZNQ11AV2\";s:1:\"b\";s:29:\"force_delete_pengaturan::user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:41;a:4:{s:1:\"a\";s:26:\"01JFGD78ETVW51RKC31A3XGVXE\";s:1:\"b\";s:33:\"force_delete_any_pengaturan::user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:42;a:4:{s:1:\"a\";s:26:\"01JFGD78GPCB33QRSW822RHMSN\";s:1:\"b\";s:10:\"view_siswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:43;a:4:{s:1:\"a\";s:26:\"01JFGD78HBRB3HWC9BA83NYP04\";s:1:\"b\";s:14:\"view_any_siswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:44;a:4:{s:1:\"a\";s:26:\"01JFGD78J13GJK0Y63X2635JT3\";s:1:\"b\";s:12:\"create_siswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:45;a:4:{s:1:\"a\";s:26:\"01JFGD78JNFFSNW8KBE6S0NW04\";s:1:\"b\";s:12:\"update_siswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:46;a:4:{s:1:\"a\";s:26:\"01JFGD78KMVKF48C6A941CN32T\";s:1:\"b\";s:13:\"restore_siswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:47;a:4:{s:1:\"a\";s:26:\"01JFGD78MCWBN46KY8CFTZZM0N\";s:1:\"b\";s:17:\"restore_any_siswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:48;a:4:{s:1:\"a\";s:26:\"01JFGD78MX3PFJJWS25110SH7V\";s:1:\"b\";s:15:\"replicate_siswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:49;a:4:{s:1:\"a\";s:26:\"01JFGD78NETBH7GRXZP6JRSKE0\";s:1:\"b\";s:13:\"reorder_siswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:50;a:4:{s:1:\"a\";s:26:\"01JFGD78NZDSGJNR2NGYY3N78A\";s:1:\"b\";s:12:\"delete_siswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:51;a:4:{s:1:\"a\";s:26:\"01JFGD78PHRMRAJD0T9E9GA1MV\";s:1:\"b\";s:16:\"delete_any_siswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:52;a:4:{s:1:\"a\";s:26:\"01JFGD78Q1BGJA3WG4AWHXWFJ6\";s:1:\"b\";s:18:\"force_delete_siswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:53;a:4:{s:1:\"a\";s:26:\"01JFGD78QH30S903DW5SWCCERY\";s:1:\"b\";s:22:\"force_delete_any_siswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:54;a:4:{s:1:\"a\";s:26:\"01JFGD78TCAE8S9NYC0VA5SPSD\";s:1:\"b\";s:20:\"page_LaporanPinjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:55;a:4:{s:1:\"a\";s:26:\"01JFGD78WYYQCM044F7HV4SWD0\";s:1:\"b\";s:17:\"page_LaporanSiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}i:56;a:4:{s:1:\"a\";s:26:\"01JFGD78ZN5C6S17TE8A4VWP58\";s:1:\"b\";s:12:\"page_Profile\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";}}}s:5:\"roles\";a:1:{i:0;a:4:{s:1:\"a\";s:26:\"01JFGD75AQ0T66TZD46YNJNY2V\";s:1:\"b\";s:11:\"super_admin\";s:1:\"j\";s:11:\"Super Admin\";s:1:\"c\";s:3:\"web\";}}}', 1734730194);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` char(26) NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` char(26) NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_19_101507_create_permission_tables', 1),
(5, '2024_03_19_104448_create_media_table', 1),
(6, '2024_03_19_110136_create_pulse_tables', 1),
(7, '2024_11_23_092731_alter_roles_table', 1),
(8, '2024_12_20_004533_create_buku_table', 1),
(9, '2024_12_20_004845_create_siswa_table', 1),
(10, '2024_12_20_005311_create_peminjaman_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` char(26) NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` char(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` char(26) NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` char(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
('01JFGD75AQ0T66TZD46YNJNY2V', 'App\\Models\\User', '01JFGD72JRQGJ0GN7EEEEXHHFB');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` char(26) NOT NULL,
  `buku_id` char(26) DEFAULT NULL,
  `siswa_id` char(26) DEFAULT NULL,
  `tanggal_pinjam` timestamp NULL DEFAULT NULL,
  `tanggal_kembali` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` char(26) NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
('01JFGD77NGF9AVPP4NBK7Q7YJH', 'view_buku', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77P6E4ZGP2N8VDFT7QDN', 'view_any_buku', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77PNKKFPZ90S1DT2B8VS', 'create_buku', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77Q7AS24PED4099SBKDC', 'update_buku', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77QQSA8W3Q17KQ9DZHH8', 'restore_buku', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77R46C0EKXR8TMJN4FVZ', 'restore_any_buku', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77RPQMAWSPQJ6BGH11CM', 'replicate_buku', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77S67AEE4MVMY80AMA14', 'reorder_buku', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77SMGY7BYXKXJY0J2DZR', 'delete_buku', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77T4V8M59HHTN8B93K3Z', 'delete_any_buku', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77TKJCPFY3VRQEJPR4HF', 'force_delete_buku', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77V7HC8MAF3KXNK72F4W', 'force_delete_any_buku', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77WQGDA8AC484N6JXRY5', 'view_peminjaman', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77X7BC5NZQH4A6PHKY48', 'view_any_peminjaman', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77XRDHA342SFV206Z839', 'create_peminjaman', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77YF069D2ZXKQYP406B5', 'update_peminjaman', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77Z1SQEFJACR8MM2M2CQ', 'restore_peminjaman', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD77ZJTFM45HT9EAG58N6C', 'restore_any_peminjaman', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD78057ZTZYKZ74JXV5WRE', 'replicate_peminjaman', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD780PX5HR8QWJWY8BE03S', 'reorder_peminjaman', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD7818GFWA97K3HTSV8PB7', 'delete_peminjaman', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD781VA8TPJMZ8787JNTRF', 'delete_any_peminjaman', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD782B9EDER59EJG5X9PYB', 'force_delete_peminjaman', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD782W065DG348TCT21XF5', 'force_delete_any_peminjaman', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD7844TY7TSV0ZJH4H5605', 'view_pengaturan::role', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD784KJD850W0ERY7M92GB', 'view_any_pengaturan::role', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD785CD8EP33DZ4BMHZ59K', 'create_pengaturan::role', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD785YMKMERPDGTGEYFM0J', 'update_pengaturan::role', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD786G1MSZP9F941MXEPP9', 'delete_pengaturan::role', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD7871QTVNFE5XM8T70Y1Q', 'delete_any_pengaturan::role', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD788DS7J9NRTJHZP8DXF4', 'view_pengaturan::user', 'web', '2024-12-19 21:29:45', '2024-12-19 21:29:45'),
('01JFGD7893B9K8SXWXQBX7R654', 'view_any_pengaturan::user', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD789RS273VYMEQ6WHDJHH', 'create_pengaturan::user', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78ACV1143GFF4FG85RMX', 'update_pengaturan::user', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78ASCJ18YGDY4J39B85P', 'restore_pengaturan::user', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78BA0X9ZQPJP5DK16QYD', 'restore_any_pengaturan::user', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78BTZGXMSGNY7GMAKP8P', 'replicate_pengaturan::user', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78CG5HHA5AXAG63FFBS9', 'reorder_pengaturan::user', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78D2FZ19YM7YYQQ3CP9C', 'delete_pengaturan::user', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78DKQMFZC8K5EY0MYPN8', 'delete_any_pengaturan::user', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78E5Q5G78NVYZNQ11AV2', 'force_delete_pengaturan::user', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78ETVW51RKC31A3XGVXE', 'force_delete_any_pengaturan::user', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78GPCB33QRSW822RHMSN', 'view_siswa', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78HBRB3HWC9BA83NYP04', 'view_any_siswa', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78J13GJK0Y63X2635JT3', 'create_siswa', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78JNFFSNW8KBE6S0NW04', 'update_siswa', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78KMVKF48C6A941CN32T', 'restore_siswa', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78MCWBN46KY8CFTZZM0N', 'restore_any_siswa', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78MX3PFJJWS25110SH7V', 'replicate_siswa', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78NETBH7GRXZP6JRSKE0', 'reorder_siswa', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78NZDSGJNR2NGYY3N78A', 'delete_siswa', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78PHRMRAJD0T9E9GA1MV', 'delete_any_siswa', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78Q1BGJA3WG4AWHXWFJ6', 'force_delete_siswa', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78QH30S903DW5SWCCERY', 'force_delete_any_siswa', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78TCAE8S9NYC0VA5SPSD', 'page_LaporanPinjaman', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78WYYQCM044F7HV4SWD0', 'page_LaporanSiswa', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46'),
('01JFGD78ZN5C6S17TE8A4VWP58', 'page_Profile', 'web', '2024-12-19 21:29:46', '2024-12-19 21:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `pulse_aggregates`
--

CREATE TABLE `pulse_aggregates` (
  `id` bigint UNSIGNED NOT NULL,
  `bucket` int UNSIGNED NOT NULL,
  `period` mediumint UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` mediumtext NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `aggregate` varchar(255) NOT NULL,
  `value` decimal(20,2) NOT NULL,
  `count` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pulse_aggregates`
--

INSERT INTO `pulse_aggregates` (`id`, `bucket`, `period`, `type`, `key`, `aggregate`, `value`, `count`) VALUES
(1, 1734643740, 60, 'cache_miss', 'spatie.permission.cache', 'count', '4.00', NULL),
(2, 1734643440, 360, 'cache_miss', 'spatie.permission.cache', 'count', '4.00', NULL),
(3, 1734642720, 1440, 'cache_miss', 'spatie.permission.cache', 'count', '4.00', NULL),
(4, 1734636960, 10080, 'cache_miss', 'spatie.permission.cache', 'count', '4.00', NULL),
(5, 1734643740, 60, 'cache_miss', 'shield_general_exclude', 'count', '1.00', NULL),
(6, 1734643440, 360, 'cache_miss', 'shield_general_exclude', 'count', '1.00', NULL),
(7, 1734642720, 1440, 'cache_miss', 'shield_general_exclude', 'count', '1.00', NULL),
(8, 1734636960, 10080, 'cache_miss', 'shield_general_exclude', 'count', '1.00', NULL),
(9, 1734643740, 60, 'user_request', '01JFGD72JRQGJ0GN7EEEEXHHFB', 'count', '6.00', NULL),
(10, 1734643440, 360, 'user_request', '01JFGD72JRQGJ0GN7EEEEXHHFB', 'count', '6.00', NULL),
(11, 1734642720, 1440, 'user_request', '01JFGD72JRQGJ0GN7EEEEXHHFB', 'count', '7.00', NULL),
(12, 1734636960, 10080, 'user_request', '01JFGD72JRQGJ0GN7EEEEXHHFB', 'count', '7.00', NULL),
(17, 1734643740, 60, 'cache_hit', 'spatie.permission.cache', 'count', '5.00', NULL),
(18, 1734643440, 360, 'cache_hit', 'spatie.permission.cache', 'count', '5.00', NULL),
(19, 1734642720, 1440, 'cache_hit', 'spatie.permission.cache', 'count', '6.00', NULL),
(20, 1734636960, 10080, 'cache_hit', 'spatie.permission.cache', 'count', '6.00', NULL),
(57, 1734643800, 60, 'user_request', '01JFGD72JRQGJ0GN7EEEEXHHFB', 'count', '1.00', NULL),
(58, 1734643800, 360, 'user_request', '01JFGD72JRQGJ0GN7EEEEXHHFB', 'count', '1.00', NULL),
(59, 1734643800, 60, 'cache_hit', 'spatie.permission.cache', 'count', '1.00', NULL),
(60, 1734643800, 360, 'cache_hit', 'spatie.permission.cache', 'count', '1.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pulse_entries`
--

CREATE TABLE `pulse_entries` (
  `id` bigint UNSIGNED NOT NULL,
  `timestamp` int UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` mediumtext NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `value` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pulse_entries`
--

INSERT INTO `pulse_entries` (`id`, `timestamp`, `type`, `key`, `value`) VALUES
(1, 1734643786, 'cache_miss', 'spatie.permission.cache', NULL),
(2, 1734643786, 'cache_miss', 'spatie.permission.cache', NULL),
(3, 1734643786, 'cache_miss', 'spatie.permission.cache', NULL),
(4, 1734643786, 'cache_miss', 'shield_general_exclude', NULL),
(5, 1734643793, 'user_request', '01JFGD72JRQGJ0GN7EEEEXHHFB', NULL),
(6, 1734643794, 'cache_miss', 'spatie.permission.cache', NULL),
(7, 1734643794, 'user_request', '01JFGD72JRQGJ0GN7EEEEXHHFB', NULL),
(8, 1734643794, 'cache_hit', 'spatie.permission.cache', NULL),
(9, 1734643795, 'user_request', '01JFGD72JRQGJ0GN7EEEEXHHFB', NULL),
(10, 1734643796, 'cache_hit', 'spatie.permission.cache', NULL),
(11, 1734643796, 'user_request', '01JFGD72JRQGJ0GN7EEEEXHHFB', NULL),
(12, 1734643796, 'cache_hit', 'spatie.permission.cache', NULL),
(13, 1734643798, 'user_request', '01JFGD72JRQGJ0GN7EEEEXHHFB', NULL),
(14, 1734643798, 'cache_hit', 'spatie.permission.cache', NULL),
(15, 1734643798, 'user_request', '01JFGD72JRQGJ0GN7EEEEXHHFB', NULL),
(16, 1734643799, 'cache_hit', 'spatie.permission.cache', NULL),
(17, 1734643801, 'user_request', '01JFGD72JRQGJ0GN7EEEEXHHFB', NULL),
(18, 1734643802, 'cache_hit', 'spatie.permission.cache', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pulse_values`
--

CREATE TABLE `pulse_values` (
  `id` bigint UNSIGNED NOT NULL,
  `timestamp` int UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` mediumtext NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(26) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `guard_name`, `created_at`, `updated_at`) VALUES
('01JFGD75AQ0T66TZD46YNJNY2V', 'super_admin', 'Super Admin', 'web', '2024-12-19 21:29:42', '2024-12-19 21:29:42'),
('01JFGD7FGKHXREDZ1SBVA1AH3Q', 'operator', 'Operator', 'web', '2024-12-19 21:29:53', '2024-12-19 21:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` char(26) NOT NULL,
  `role_id` char(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
('01JFGD77NGF9AVPP4NBK7Q7YJH', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77P6E4ZGP2N8VDFT7QDN', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77PNKKFPZ90S1DT2B8VS', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77Q7AS24PED4099SBKDC', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77QQSA8W3Q17KQ9DZHH8', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77R46C0EKXR8TMJN4FVZ', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77RPQMAWSPQJ6BGH11CM', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77S67AEE4MVMY80AMA14', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77SMGY7BYXKXJY0J2DZR', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77T4V8M59HHTN8B93K3Z', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77TKJCPFY3VRQEJPR4HF', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77V7HC8MAF3KXNK72F4W', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77WQGDA8AC484N6JXRY5', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77X7BC5NZQH4A6PHKY48', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77XRDHA342SFV206Z839', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77YF069D2ZXKQYP406B5', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77Z1SQEFJACR8MM2M2CQ', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD77ZJTFM45HT9EAG58N6C', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78057ZTZYKZ74JXV5WRE', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD780PX5HR8QWJWY8BE03S', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD7818GFWA97K3HTSV8PB7', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD781VA8TPJMZ8787JNTRF', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD782B9EDER59EJG5X9PYB', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD782W065DG348TCT21XF5', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD7844TY7TSV0ZJH4H5605', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD784KJD850W0ERY7M92GB', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD785CD8EP33DZ4BMHZ59K', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD785YMKMERPDGTGEYFM0J', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD786G1MSZP9F941MXEPP9', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD7871QTVNFE5XM8T70Y1Q', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD788DS7J9NRTJHZP8DXF4', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD7893B9K8SXWXQBX7R654', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD789RS273VYMEQ6WHDJHH', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78ACV1143GFF4FG85RMX', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78ASCJ18YGDY4J39B85P', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78BA0X9ZQPJP5DK16QYD', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78BTZGXMSGNY7GMAKP8P', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78CG5HHA5AXAG63FFBS9', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78D2FZ19YM7YYQQ3CP9C', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78DKQMFZC8K5EY0MYPN8', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78E5Q5G78NVYZNQ11AV2', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78ETVW51RKC31A3XGVXE', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78GPCB33QRSW822RHMSN', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78HBRB3HWC9BA83NYP04', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78J13GJK0Y63X2635JT3', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78JNFFSNW8KBE6S0NW04', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78KMVKF48C6A941CN32T', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78MCWBN46KY8CFTZZM0N', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78MX3PFJJWS25110SH7V', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78NETBH7GRXZP6JRSKE0', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78NZDSGJNR2NGYY3N78A', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78PHRMRAJD0T9E9GA1MV', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78Q1BGJA3WG4AWHXWFJ6', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78QH30S903DW5SWCCERY', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78TCAE8S9NYC0VA5SPSD', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78WYYQCM044F7HV4SWD0', '01JFGD75AQ0T66TZD46YNJNY2V'),
('01JFGD78ZN5C6S17TE8A4VWP58', '01JFGD75AQ0T66TZD46YNJNY2V');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` char(26) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('04Mw5FooAH1NGXL6mg1bQI9eAQ1KazKwhe8KBI14', '01JFGD72JRQGJ0GN7EEEEXHHFB', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:133.0) Gecko/20100101 Firefox/133.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNno4S083bkRvTlhvaEFxczVLaDdWM1FWRElOcjI1WGJiQ3doQ0VURiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vcGVtaW5qYW1hbi1idWt1LnRlc3QvcGVtaW5qYW1lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl8zZGM3YTkxM2VmNWZkNGI4OTBlY2FiZTM0ODcwODU1NzNlMTZjZjgyIjtzOjI2OiIwMUpGR0Q3MkpSUUdKMEdON0VFRUVYSEhGQiI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQxZXRod2wuVGdTNXhLVW05ODhlUkIuSlBTVHJ4SVcxZVR2YTZmSk9KN1AwTVp2aWRsRS95TyI7fQ==', 1734643802);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` char(26) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(26) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `phone`, `phone_verified_at`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('01JFGD72JRQGJ0GN7EEEEXHHFB', 'Super Admin', 'superadmin', '08', NULL, 'superadmin@admin.dev', NULL, '$2y$12$1ethwl.TgS5xKUm988eRB.JPSTrxIW1eTva6fJOJ7P0MZvidlE/yO', NULL, '2024-12-19 21:29:40', '2024-12-19 21:29:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `pulse_aggregates`
--
ALTER TABLE `pulse_aggregates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pulse_aggregates_bucket_period_type_aggregate_key_hash_unique` (`bucket`,`period`,`type`,`aggregate`,`key_hash`),
  ADD KEY `pulse_aggregates_period_bucket_index` (`period`,`bucket`),
  ADD KEY `pulse_aggregates_type_index` (`type`),
  ADD KEY `pulse_aggregates_period_type_aggregate_bucket_index` (`period`,`type`,`aggregate`,`bucket`);

--
-- Indexes for table `pulse_entries`
--
ALTER TABLE `pulse_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pulse_entries_timestamp_index` (`timestamp`),
  ADD KEY `pulse_entries_type_index` (`type`),
  ADD KEY `pulse_entries_key_hash_index` (`key_hash`),
  ADD KEY `pulse_entries_timestamp_type_key_hash_value_index` (`timestamp`,`type`,`key_hash`,`value`);

--
-- Indexes for table `pulse_values`
--
ALTER TABLE `pulse_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pulse_values_type_key_hash_unique` (`type`,`key_hash`),
  ADD KEY `pulse_values_timestamp_index` (`timestamp`),
  ADD KEY `pulse_values_type_index` (`type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_nis_unique` (`nis`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pulse_aggregates`
--
ALTER TABLE `pulse_aggregates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `pulse_entries`
--
ALTER TABLE `pulse_entries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pulse_values`
--
ALTER TABLE `pulse_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
