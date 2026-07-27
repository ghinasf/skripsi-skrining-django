-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2026 at 05:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_skrining_bihbul`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add kriteria', 7, 'add_kriteria'),
(26, 'Can change kriteria', 7, 'change_kriteria'),
(27, 'Can delete kriteria', 7, 'delete_kriteria'),
(28, 'Can view kriteria', 7, 'view_kriteria'),
(29, 'Can add pasien', 8, 'add_pasien'),
(30, 'Can change pasien', 8, 'change_pasien'),
(31, 'Can delete pasien', 8, 'delete_pasien'),
(32, 'Can view pasien', 8, 'view_pasien'),
(33, 'Can add pengaturan risiko', 9, 'add_pengaturanrisiko'),
(34, 'Can change pengaturan risiko', 9, 'change_pengaturanrisiko'),
(35, 'Can delete pengaturan risiko', 9, 'delete_pengaturanrisiko'),
(36, 'Can view pengaturan risiko', 9, 'view_pengaturanrisiko');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$KggsEvUOUXy1h0bmDMNCeZ$UTtiiJxm3SyM++rGd3+tcF3TIC9YrgcX90E1eLrQbTQ=', '2026-07-24 07:58:27.109492', 1, 'bidanadmin', '', '', 'bidanadmin@gmail.com', 1, 1, '2026-07-15 14:18:41.343057'),
(2, 'pbkdf2_sha256$600000$lkGeiwDpMXkCNxaP70fFbl$vwzAoS3Vs6eF1NE47RyrDF0KtTlyyvrzVqugjRGnGcY=', '2026-07-20 00:35:47.112503', 0, 'bidanke1', '', '', 'bidanke1@gmail.com', 0, 1, '2026-07-15 15:06:39.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2026-07-15 15:06:39.814258', '2', 'bidanke1', 1, '[{\"added\": {}}]', 4, 1),
(2, '2026-07-15 15:07:43.983367', '2', 'bidanke1', 2, '[]', 4, 1),
(3, '2026-07-15 15:08:10.064770', '2', 'bidanke1', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(4, '2026-07-16 02:49:32.398484', '1', 'PR01 - Usia ibu hamil < 20 tahun atau > 35 tahun', 1, '[{\"added\": {}}]', 7, 1),
(5, '2026-07-16 02:49:55.908152', '2', 'PR02 - Tinggi badan ibu < 145 cm', 1, '[{\"added\": {}}]', 7, 1),
(6, '2026-07-16 02:50:41.959551', '3', 'PR03 - Berat badan ibu < 45 kg pada trimester I', 1, '[{\"added\": {}}]', 7, 1),
(7, '2026-07-16 02:51:02.818474', '4', 'PR04 - Jarak kehamilan sebelumnya < 2 tahun', 1, '[{\"added\": {}}]', 7, 1),
(8, '2026-07-16 02:51:50.241736', '5', 'PR05 - Jumlah paritas (kehamilan ke-4 atau lebih)', 1, '[{\"added\": {}}]', 7, 1),
(9, '2026-07-16 02:52:11.995059', '6', 'P01 - Riwayat Seksio Sesarea', 1, '[{\"added\": {}}]', 7, 1),
(10, '2026-07-16 02:52:30.280360', '7', 'P02 - Perdarahan Pervagina', 1, '[{\"added\": {}}]', 7, 1),
(11, '2026-07-16 02:52:53.255592', '8', 'P03 - Persalinan Kurang Bulan ≤ 37 Minggu', 1, '[{\"added\": {}}]', 7, 1),
(12, '2026-07-16 02:53:22.841235', '9', 'P04 - Ketuban Pecah Dengan Mekonium Kental', 1, '[{\"added\": {}}]', 7, 1),
(13, '2026-07-16 02:53:46.586771', '10', 'P05 - Ketuban Pecah Lama (≥ 24 jam)', 1, '[{\"added\": {}}]', 7, 1),
(14, '2026-07-16 02:54:15.287913', '11', 'P06 - Ketuban Pecah Pada Kehamilan ≤ 37 Minggu', 1, '[{\"added\": {}}]', 7, 1),
(15, '2026-07-16 02:54:35.644456', '12', 'P07 - Anemia Berat', 1, '[{\"added\": {}}]', 7, 1),
(16, '2026-07-16 02:54:54.517038', '13', 'P08 - Ikterus', 1, '[{\"added\": {}}]', 7, 1),
(17, '2026-07-16 02:55:10.834374', '14', 'P09 - Tanda Gejala Infeksi', 1, '[{\"added\": {}}]', 7, 1),
(18, '2026-07-16 02:55:31.404698', '15', 'P10 - Preeklampsia / Hipertensi Dalam Kehamilan', 1, '[{\"added\": {}}]', 7, 1),
(19, '2026-07-16 02:55:50.626870', '16', 'P11 - Tinggi Fundus Uteri 40 cm Atau Lebih', 1, '[{\"added\": {}}]', 7, 1),
(20, '2026-07-16 02:56:09.035830', '17', 'P12 - Gawat Janin (DJJ ≤ 100 Atau ≥ 180x/menit', 1, '[{\"added\": {}}]', 7, 1),
(21, '2026-07-16 03:03:25.435200', '1', 'Pengaturan: Normal', 1, '[{\"added\": {}}]', 9, 1),
(22, '2026-07-16 03:03:53.020698', '2', 'Pengaturan: Berisiko', 1, '[{\"added\": {}}]', 9, 1),
(23, '2026-07-20 10:37:43.081460', '1', 'PR01 - Usia ibu hamil < 20 tahun atau > 35 tahun', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(24, '2026-07-20 10:38:00.660460', '2', 'PR02 - Tinggi badan ibu < 145 cm', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(25, '2026-07-20 10:38:16.440483', '3', 'PR03 - Berat badan ibu < 45 kg pada trimester I', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(26, '2026-07-20 10:38:28.458067', '4', 'PR04 - Jarak kehamilan sebelumnya < 2 tahun', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(27, '2026-07-20 10:38:39.909708', '5', 'PR05 - Jumlah paritas (kehamilan ke-4 atau lebih)', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(28, '2026-07-20 10:38:53.123719', '6', 'P01 - Riwayat Seksio Sesarea', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(29, '2026-07-20 10:39:03.658343', '7', 'P02 - Perdarahan Pervagina', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(30, '2026-07-20 10:39:19.207057', '8', 'P03 - Persalinan Kurang Bulan ≤ 37 Minggu', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(31, '2026-07-20 10:39:34.773543', '9', 'P04 - Ketuban Pecah Dengan Mekonium Kental', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(32, '2026-07-20 10:39:46.700842', '10', 'P05 - Ketuban Pecah Lama (≥ 24 jam)', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(33, '2026-07-20 10:39:52.697991', '9', 'P04 - Ketuban Pecah Dengan Mekonium Kental', 2, '[]', 7, 1),
(34, '2026-07-20 10:40:09.103351', '11', 'P06 - Ketuban Pecah Pada Kehamilan ≤ 37 Minggu', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(35, '2026-07-20 10:40:20.695681', '12', 'P07 - Anemia Berat', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(36, '2026-07-20 10:40:33.467789', '13', 'P08 - Ikterus', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(37, '2026-07-20 10:40:42.835044', '14', 'P09 - Tanda Gejala Infeksi', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(38, '2026-07-20 10:40:52.665102', '15', 'P10 - Preeklampsia / Hipertensi Dalam Kehamilan', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(39, '2026-07-20 10:41:02.476454', '16', 'P11 - Tinggi Fundus Uteri 40 cm Atau Lebih', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(40, '2026-07-20 10:41:14.352241', '17', 'P12 - Gawat Janin (DJJ ≤ 100 Atau ≥ 180x/menit', 2, '[{\"changed\": {\"fields\": [\"Nilai cf pakar\"]}}]', 7, 1),
(41, '2026-07-20 10:47:49.529232', '17', 'P12 - Gawat Janin (DJJ ≤ 100 Atau ≥ 180x/menit', 2, '[]', 7, 1),
(42, '2026-07-20 10:47:55.601416', '2', 'Pengaturan: Berisiko', 2, '[]', 9, 1),
(43, '2026-07-20 10:47:59.147830', '1', 'Pengaturan: Normal', 2, '[]', 9, 1),
(44, '2026-07-20 10:53:32.590578', '17', 'P12 - Gawat Janin (DJJ ≤ 100 Atau ≥ 180x/menit', 2, '[]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'skrining', 'kriteria'),
(8, 'skrining', 'pasien'),
(9, 'skrining', 'pengaturanrisiko');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-07-15 14:15:34.072551'),
(2, 'auth', '0001_initial', '2026-07-15 14:15:34.571858'),
(3, 'admin', '0001_initial', '2026-07-15 14:15:34.674779'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-07-15 14:15:34.681271'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-07-15 14:15:34.694651'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-07-15 14:15:34.756080'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-07-15 14:15:34.796184'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-07-15 14:15:34.807439'),
(9, 'auth', '0004_alter_user_username_opts', '2026-07-15 14:15:34.815374'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-07-15 14:15:34.864134'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-07-15 14:15:34.866950'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-07-15 14:15:34.874737'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-07-15 14:15:34.894054'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-07-15 14:15:34.906193'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-07-15 14:15:34.916962'),
(16, 'auth', '0011_update_proxy_permissions', '2026-07-15 14:15:34.927704'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-07-15 14:15:34.937279'),
(18, 'sessions', '0001_initial', '2026-07-15 14:15:34.978067'),
(19, 'skrining', '0001_initial', '2026-07-15 14:15:35.027699'),
(20, 'skrining', '0002_alter_kriteria_options_alter_pasien_options_and_more', '2026-07-17 07:39:01.000234'),
(21, 'skrining', '0003_alter_kriteria_nilai_cf_pakar_and_more', '2026-07-20 10:32:35.028351');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3jf80tp8geh2h4ii7y17ek9nqxdjivus', 'e30:1wlbtf:yFQFXfKZZL44x9c_-BIAbY5aPKA3ivlB3A25lMMVAxU', '2026-08-03 00:30:15.827191');

-- --------------------------------------------------------

--
-- Table structure for table `skrining_kriteria`
--

CREATE TABLE `skrining_kriteria` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama_kriteria` longtext NOT NULL,
  `nilai_cf_pakar` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skrining_kriteria`
--

INSERT INTO `skrining_kriteria` (`id`, `kode`, `nama_kriteria`, `nilai_cf_pakar`) VALUES
(1, 'PR01', 'Usia ibu hamil < 20 tahun atau > 35 tahun', 0.67),
(2, 'PR02', 'Tinggi badan ibu < 145 cm', 0.67),
(3, 'PR03', 'Berat badan ibu < 45 kg pada trimester I', 0.47),
(4, 'PR04', 'Jarak kehamilan sebelumnya < 2 tahun', 0.67),
(5, 'PR05', 'Jumlah paritas (kehamilan ke-4 atau lebih)', 0.67),
(6, 'P01', 'Riwayat Seksio Sesarea', 0.67),
(7, 'P02', 'Perdarahan Pervagina', 0.67),
(8, 'P03', 'Persalinan Kurang Bulan ≤ 37 Minggu', 0.47),
(9, 'P04', 'Ketuban Pecah Dengan Mekonium Kental', 0.67),
(10, 'P05', 'Ketuban Pecah Lama (≥ 24 jam)', 0.67),
(11, 'P06', 'Ketuban Pecah Pada Kehamilan ≤ 37 Minggu', 0.47),
(12, 'P07', 'Anemia Berat', 0.67),
(13, 'P08', 'Ikterus', 0.67),
(14, 'P09', 'Tanda Gejala Infeksi', 0.67),
(15, 'P10', 'Preeklampsia / Hipertensi Dalam Kehamilan', 0.67),
(16, 'P11', 'Tinggi Fundus Uteri 40 cm Atau Lebih', 0.67),
(17, 'P12', 'Gawat Janin (DJJ ≤ 100 Atau ≥ 180x/menit', 0.67);

-- --------------------------------------------------------

--
-- Table structure for table `skrining_pasien`
--

CREATE TABLE `skrining_pasien` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `usia` int(11) NOT NULL,
  `tinggi_badan` decimal(5,2) NOT NULL,
  `berat_badan_trimester_1` decimal(5,2) NOT NULL,
  `jarak_kehamilan` decimal(4,2) NOT NULL,
  `jumlah_paritas` int(11) NOT NULL,
  `persentase_risiko` decimal(5,2) DEFAULT NULL,
  `status_risiko` varchar(50) DEFAULT NULL,
  `keterangan_medis` longtext DEFAULT NULL,
  `tanggal_skrining` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skrining_pasien`
--

INSERT INTO `skrining_pasien` (`id`, `nama`, `usia`, `tinggi_badan`, `berat_badan_trimester_1`, `jarak_kehamilan`, `jumlah_paritas`, `persentase_risiko`, `status_risiko`, `keterangan_medis`, `tanggal_skrining`) VALUES
(6, 'Ghina Salwa Fajriani', 26, 160.00, 50.00, 0.00, 1, 25.60, 'Normal', 'Kondisi ibu dan janin terpantau baik. Tetap lakukan pemeriksaan kehamilan (ANC) secara rutin sesuai jadwal, konsumsi vitamin, dan jaga asupan nutrisi.', '2026-07-16'),
(7, 'Mardiah Nurohmah', 24, 157.00, 48.00, 0.00, 1, 24.00, 'Normal', 'Kondisi ibu dan janin terpantau baik. Tetap lakukan pemeriksaan kehamilan (ANC) secara rutin sesuai jadwal, konsumsi vitamin, dan jaga asupan nutrisi.', '2026-07-16'),
(8, 'Siti Aminah', 28, 165.00, 55.00, 0.60, 1, 76.17, 'Berisiko', 'Terdeteksi adanya indikasi risiko pada kehamilan. Segera lakukan konsultasi lebih lanjut dengan Dokter Spesialis Kandungan (Sp.OG) atau lakukan rujukan ke fasilitas kesehatan tingkat lanjut.', '2026-07-16'),
(9, 'Lestari Ningsih', 30, 170.00, 65.00, 1.50, 3, 31.00, 'Normal', 'Kondisi ibu dan janin terpantau baik. Tetap lakukan pemeriksaan kehamilan (ANC) secara rutin sesuai jadwal, konsumsi vitamin, dan jaga asupan nutrisi.', '2026-07-17'),
(10, 'Nia Kurniasih', 40, 165.00, 65.00, 3.00, 4, 93.14, 'Berisiko', 'Terdeteksi adanya indikasi risiko pada kehamilan. Segera lakukan konsultasi lebih lanjut dengan Dokter Spesialis Kandungan (Sp.OG) atau lakukan rujukan ke fasilitas kesehatan tingkat lanjut.', '2026-07-19'),
(11, 'Elis', 30, 155.00, 50.00, 1.00, 3, 61.84, 'Berisiko', 'Terdeteksi adanya indikasi risiko pada kehamilan. Segera lakukan konsultasi lebih lanjut dengan Dokter Spesialis Kandungan (Sp.OG) atau lakukan rujukan ke fasilitas kesehatan tingkat lanjut.', '2026-07-19'),
(12, 'Lusi', 26, 170.00, 65.00, 0.00, 1, 28.60, 'Normal', 'Kondisi ibu dan janin terpantau baik. Tetap lakukan pemeriksaan kehamilan (ANC) secara rutin sesuai jadwal, konsumsi vitamin, dan jaga asupan nutrisi.', '2026-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `skrining_pengaturanrisiko`
--

CREATE TABLE `skrining_pengaturanrisiko` (
  `id` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `batas_persentase` decimal(5,2) NOT NULL,
  `keterangan_medis` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skrining_pengaturanrisiko`
--

INSERT INTO `skrining_pengaturanrisiko` (`id`, `kategori`, `batas_persentase`, `keterangan_medis`) VALUES
(1, 'Normal', 0.00, 'Kondisi ibu dan janin terpantau baik. Tetap lakukan pemeriksaan kehamilan (ANC) secara rutin sesuai jadwal, konsumsi vitamin, dan jaga asupan nutrisi.'),
(2, 'Berisiko', 50.00, 'Terdeteksi adanya indikasi risiko pada kehamilan. Segera lakukan konsultasi lebih lanjut dengan Dokter Spesialis Kandungan (Sp.OG) atau lakukan rujukan ke fasilitas kesehatan tingkat lanjut.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `skrining_kriteria`
--
ALTER TABLE `skrining_kriteria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `skrining_pasien`
--
ALTER TABLE `skrining_pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skrining_pengaturanrisiko`
--
ALTER TABLE `skrining_pengaturanrisiko`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `skrining_kriteria`
--
ALTER TABLE `skrining_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `skrining_pasien`
--
ALTER TABLE `skrining_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `skrining_pengaturanrisiko`
--
ALTER TABLE `skrining_pengaturanrisiko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
