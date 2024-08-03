-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 03:26 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mandaku_ecg`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_biaya`
--

CREATE TABLE `detail_biaya` (
  `id_biaya` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_biaya`
--

INSERT INTO `detail_biaya` (`id_biaya`, `nama_barang`, `harga`) VALUES
(3, 'Biaya pendaftaran awal', '700000');

-- --------------------------------------------------------

--
-- Table structure for table `detail_bulanan`
--

CREATE TABLE `detail_bulanan` (
  `id_bulanan` int(11) NOT NULL,
  `bulanan` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_bulanan`
--

INSERT INTO `detail_bulanan` (`id_bulanan`, `bulanan`, `harga`) VALUES
(1, 'Perbulan', '800000');

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi`
--

CREATE TABLE `dokumentasi` (
  `id_dokumentasi` int(11) NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokumentasi`
--

INSERT INTO `dokumentasi` (`id_dokumentasi`, `judul`, `deskripsi`, `gambar`) VALUES
(1, 'ENGLISH CAMP VALIDATION OF FIRST GENERATION OF MAN 2 KUANTAN SINGINGI', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Acara pengangkatan generasi pertama program unggulan MAN 2 kuantan Singingi yang di laksankan pada tanggal 18 agustus 2018 yang langsung di hadiri oleh kepala kantor urusan agama kuantan singing, Camat pangean, coordinator wilayah / pendidikan pangean, KUA Pangean kepala MAN 1 kuantan singing, tokoh masyarakat dan kepala MAN 2 Kuansing. (Sebanyak 23 siswa siswi).</span></span></p>\r\n', 'pengangkatan.jpg'),
(11, 'ROLEPLAY ENGLISH CAMP MAN 2 KUANTAN SINGINGI EVERY WEEK', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Kegiatan roleplay ini dilakukan setiap minggu di hari kamis, roleplay ini diadakan untuk mengasahah kemampuan soft skill siswa dan siswi. Pada kegiatan roleplay ini siswa dan siswi akan menampilkan sesuatu yang bagus, ada yang menampilkan drama, menyanyi, pidato, dance, memainkan alat musik dan lainnya yang dimana semua aktifitas nya harus menggunakan bahasa inggris.</span></span></p>\r\n', 'roleplay6.jpg'),
(12, 'MAN SIMALUNGUN NORTH SUMATRA JOINS ENGLISH CAMP MAN 2 KUANTAN SINGINGI', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Man Simalungun yang berasal dari sumatra utara melakukan kerja sama dengan Man 2 Kuantan Singingi dalam meningkatkan bahasa inggris, mereka mengirimkan siswa dan siswinya untuk belajar bahasa inggris di English Camp Man 2 Kuantan Singingi. Seiring berjalannya waktu, banyak sekolah-sekolah lain yang mengirimkan siswa dan siswinya untuk belajar bahasa inggris ke Man 2 Kuansing.</span></span></p>\r\n', 'simalungun.jpg'),
(13, 'CAMP CUP ENGLISH CAMP MAN 2 KUANTAN SINGINGI EVERY YEAR', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Camp cup ini merupakan pertandingan beberapa jenis olahraga, pertadingan yang diadakan yaitu ada Volley Ball, Badminton, Futsal, Makan Kerupuk, Tarek Tambang, Menyanyi dan Pidato Bahasa Inggris. Camp cup ini pesertanya adalah siswa dan siswi yang pernah belajar di English Camp Man 2 Kuantan Singingi, siswa dan siswinya akan mewakili generasinya pada saat berada di english camp. Hadiah yang mendapat juara di camp cup ini berupa piala, sertifikat dan uang tunai.</span></span></p>\r\n', 'campcup6.jpg'),
(14, 'THE EXAM OF FINAL RESEARCH PAPER ENGLISH CAMP MAN 2 KUANTAN SINGINGI', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Exam of Final Research Paper ini merupakan ujian yang dilakukan oleh siswa dan siswi setelah menjalani pembelajaran bahasa inggris di English Camp Man 2 Kuantan Singingi selama 3 bulan. Mereka akan diuji oleh para dosen yang di datangkan dari Universitas Riau, siswa dan siswi akan membuat sebuah makalah dalam bahasa inggris dengan mengangkat tema yang menarik. Tema bisa saja tentang budaya, makanan tradisional, tradisi dan lainnya.</span></span></p>\r\n', 'midex51.jpg'),
(15, 'FINAL EXAM ENGLISH CAMP MAN 2 KUANTAN SINGINGI', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Final Examination ini merupakan ujian lapangan yang dilakukan oleh siswa dan siswi setela belajar di English Camp Man 2 Kuantan Singingi selama 6 bulan. Dari generasi pertama hingga saat ini, ujian lapangan dilakulan di dalam dan luar negri. Ujian lapangan ini bertujuan untuk mengetes kemampuan bahasa inggris siswa dan siswi kepada orang asing yang tentunya bule, siswa dan siswi akan didampingi oleh pengajar dan staf lainnya dalam ujian lapangan.</span></span></p>\r\n', 'finex4.jpg'),
(16, 'FAREWEL PARTY ENGLISH CAMP MAN 2 KUANTAN SINGINGI', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Farewel Party merupakan puncak dari aktifitas dalam menjalani pembelajaran bahasa inggris di English Camp Man 2 Kuantan Singingi, Dalam acara ini siswa dan siswi akan mendapatkan beberapa penghargaan dan sertifikat sebagai tanda pernah bergabung di English Camp. Acara ini akan dihadiri oleh tokoh-tokoh besar dan orang tua, Selanjutnya siswa dan siswi akan dipulangkan ke rumah masing-masing dan berpisah dengan teman-teman camp, guru camp, pembimbing camp, staf dan lainnya.</span></span></p>\r\n', 'closing3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int(11) NOT NULL,
  `nama_fasilitas` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `nama_fasilitas`, `deskripsi`, `gambar`) VALUES
(1, 'Ruangan Kelas', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Ruang kelas di English Camp Man 2 Kuantan Singingi didesain untuk menciptakan lingkungan pembelajaran yang efektif dan mendukung. Ruangannya dilengkapi dengan fasilitas teknologi modern seperti proyektor, papan tulis, kipas angin dan tentunya juga fleksibel untuk berbagai jenis kegiatan pembelajaran lainnya. Ruang kelas juga dirancang untuk kenyamanan siswa dengan kursi dan meja yang bagus.</span></span></p>\r\n', 'midex5.jpg'),
(5, 'Rumah Camp', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Rumah camp ini merupakan tempat tinggal yang nyaman dan aman bagi siswa siswi selama periode pembelajaran mereka. Rumah camp siswa dan siswi itu dipisah dan utuk saat ini tersedia dua rumah camp untuk siswa dan dua rumah camp untuk siswi. Rumah camp dilengkapi dengan fasilitas seperti tempat tidur yang nyaman, lemari untuk menyimpan barang-barang pribadi, papan tulis, serta akses ke fasilitas umum seperti dapur, tempat mandi dan lainnya yang sering kali disediakan untuk memastikan kenyamanan dan kebutuhan sehari-hari siswa siswi terpenuhi dengan baik.</span></span></p>\r\n', 'rumahcamp.jpg'),
(6, 'Sarapan Gratis', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">English Camp Man2 Kuantan Singingi juga menyediakan sarapan gratis bagi siswa dan siswi sebelum memulai kelas pagi. Sarapan ini tidak hanya memberikan energi yang dibutuhkan untuk memulai hari belajar dengan baik, tetapi juga menciptakan kesempatan bagi para siswa untuk berkumpul dan berinteraksi secara santai sebelum memulai aktivitas belajar. Sarapan gratis ini mencakup berbagai pilihan makanan yang sehat dan bergizi, mulai lontong, nasi goreng, gorengan, roti dan lain-lain. Dengan menyediakan sarapan gratis siswa menjadi lebih fokus belajar dan semangat.</span></span></p>\r\n', 'sarapan.jpg'),
(7, 'Fasilitas Olahraga', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">English Camp Man2 Kuantan Singingi juga menyediakan fasilitas olahraga yang terdapat di lingkungan madrasah. Fasilitas olahraga yang tersedia seperti lapangan voli, lapangan badminton, dan meja pingpong. Dengan adanya fasilitas ini, para siswa dan siswi dapat berpartisipasi dalam berbagai aktivitas olahraga yang menyenangkan dan mendukung kesehatan fisik mereka. Ini juga memungkinkan mereka untuk berinteraksi secara positif di luar kelas, memperkuat ikatan sosial, dan meningkatkan keterampilan dalam berkolaborasi dan bekerja sama dalam tim.</span></span></p>\r\n', 'olahraga.jpg'),
(8, 'Lingkungan Yang Positif', '<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Lingkungan di English Camp Man2 Kuantan Singingi termasuk tempat di mana para siswa dan siswi merasa didukung dan dihargai. Di sini, ada rasa aman dan dukungan yang kuat, serta norma-norma positif seperti kerja sama, saling menghormati, dan semangat untuk belajar. Interaksi antara siswa dan siswi serta dengan staf pengajar dipenuhi dengan semangat kolaborasi dan komunikasi terbuka, menciptakan ikatan sosial yang erat. Lingkungan ini juga mendorong eksplorasi, kreativitas, dan keberanian untuk menghadapi tantangan. English Camp Man2 Kuantan Singingi menjadi tempat yang di mana siswa dan siswi merasa didukung, dihargai, dan termotivasi untuk mencapai kesuksesan.</span></span></p>\r\n', 'lingpos.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `info_pendaftaran`
--

CREATE TABLE `info_pendaftaran` (
  `id_info` int(11) NOT NULL,
  `periode_satu` varchar(100) NOT NULL,
  `periode_dua` varchar(100) NOT NULL,
  `deskripsi_web` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info_pendaftaran`
--

INSERT INTO `info_pendaftaran` (`id_info`, `periode_satu`, `periode_dua`, `deskripsi_web`) VALUES
(12, 'Januari - Juni', 'Juli - Desember', '<p style=\"text-align:justify\"><span style=\"font-size:16px\">Selamat datang di website English Camp Pare Aec Man 2 Kuantan Singingi. Di website kami, kamu akan menemukan informasi tentang English Camp, termasuk sejarahnya, pengajar yang berpengalaman, dan lokasi yang strategis. Pada program English Camp ini diajarkan berbagai materi pembelajaran, mulai dari grammar, public speaking, speaking, hingga expression. Setiap materi disusun dengan cermat dan disajikan dengan cara yang menarik, sehingga kamu dapat belajar dengan efektif dan menyenangkan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Kami percaya bahwa pembelajaran bahasa Inggris bukan hanya tentang menguasai struktur dan kosakata, tetapi juga tentang berani berbicara dan berinteraksi dalam bahasa tersebut. Oleh karena itu, kami menyediakan lingkungan belajar yang mendukung, dengan pendekatan yang inovatif dan fasilitas yang memadai. Segera bergabung dengan kami di English Camp Pare Aec Man 2 Kuantan Singingi dan jelajahi dunia Bahasa Inggris dengan keyakinan dan keterampilan yang lebih baik. Bersiaplah untuk mengembangkan potensi kamu dan mencapai tujuan bahasa Inggris kamu bersama kami!.</span></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `nama_lokasi` varchar(100) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `info_lokasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `nama_lokasi`, `telepon`, `email`, `info_lokasi`) VALUES
(6, 'MAN 2 Kuantan Singingi HMPF+794, Pasar Baru Pangean, Kuantan Singingi, Riau 29556, Indonesia', '0822-3421-2289', 'man2kuansing@gmail.com', 'Silahkan kunjungi kami pada platform yang tersedia dan silahkan akses lokasi jika ingin berkunjung ke Man 2 Kuantan Singingi.');

-- --------------------------------------------------------

--
-- Table structure for table `materi_belajar`
--

CREATE TABLE `materi_belajar` (
  `id_belajar` int(11) NOT NULL,
  `materi_pembelajaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materi_belajar`
--

INSERT INTO `materi_belajar` (`id_belajar`, `materi_pembelajaran`) VALUES
(2, 'Grammar'),
(3, 'Speaking'),
(4, 'Public Speaking'),
(5, 'Expression'),
(6, 'Nighly Speaking'),
(7, 'Religious Meeting'),
(8, 'Vocabulary'),
(9, 'Coral Speaking');

-- --------------------------------------------------------

--
-- Table structure for table `media_youtube`
--

CREATE TABLE `media_youtube` (
  `id_media` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `aktor` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media_youtube`
--

INSERT INTO `media_youtube` (`id_media`, `judul`, `aktor`, `status`, `link`, `gambar`) VALUES
(2, 'Coral Speaking Moderasi Beragama Man 2 Kuansing', 'Siswa dan Siswa English Camp', 'Man 2 Kuantan Singingi', 'https://youtu.be/iQ8I0nT2Qpw?si=V1Y0gM-9hbPdQdtE', 'coral.jpg'),
(3, 'Testimoni Program English Camp Pare Aec man 2 Kuantan Singingi', 'DR.Supriusman, MA', 'Dosen Fkip Unri', 'https://youtu.be/vTMU3FXA8jY?si=eO8446ScVl3-Pvrv', 'dosen1.jpg'),
(4, 'The Seminar Of Research Paper', 'Pengajar dan Seluruh Siswa Siswi English Camp', 'Man 2 Kuantan Singingi', 'https://youtu.be/_9jjmn5Mqko?si=U-wgcIEu5xWDeMjd', 'seminar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int(11) NOT NULL,
  `gross_amount` int(11) DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `transaction_time` varchar(100) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `va_number` varchar(100) DEFAULT NULL,
  `pdf_url` text DEFAULT NULL,
  `status_code` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_bulanan`
--

CREATE TABLE `pembayaran_bulanan` (
  `id_bayar` int(11) NOT NULL,
  `gross_amount` int(11) DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `transaction_time` varchar(100) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `va_number` varchar(100) DEFAULT NULL,
  `pdf_url` text DEFAULT NULL,
  `status_code` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `jenis_pembayaran` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftar` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `asal_sekolah` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `nisn` varchar(100) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `no_orangtua` varchar(100) DEFAULT NULL,
  `alamat_orangtua` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(100) DEFAULT NULL,
  `alamat_siswa` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'DIPROSES'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengajar`
--

CREATE TABLE `pengajar` (
  `id` int(11) NOT NULL,
  `nama_pengajar` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengajar`
--

INSERT INTO `pengajar` (`id`, `nama_pengajar`, `tgl_lahir`, `jenis_kelamin`, `agama`, `alamat`, `gambar`, `jabatan`) VALUES
(7, ' Drs. Zulkifli, M.Pd', '1964-09-07', 'Laki-laki', 'Islam', 'Sentajo Raya', 'Pak_Zulkifli1.jpg', 'Kepala Madrasah'),
(8, 'Sardimanto', '1972-04-04', 'Laki-laki', 'Islam', 'Padang Tanggung', 'Pak_Sardimanto1.jpg', 'Menejer Camp'),
(9, 'Resi Wahyuni, S.Pd', '1983-03-07', 'Perempuan', 'Islam', 'Penghijauan', 'Buk_Resi1.jpg', 'Bendahara'),
(10, 'Dahlia Abdah, S.Pd', '1990-11-19', 'Perempuan', 'Islam', 'Pasar Baru Pangean', 'Mis_Dahlia.jpg', 'Speaking Teacher'),
(11, 'Banyas Ambara.  S.Pd', '1992-04-11', 'Laki-laki', 'Islam', 'Pasar Baru Pangean', 'Mr_Banyas11.jpg', 'Grammar Teacher'),
(12, 'Erdian, S.Pd', '1992-10-02', 'Laki-laki', 'Islam', 'Teluk kuantan', 'Mr_Erdian11.jpg', 'Grammar Teacher'),
(13, 'Fairuz Abadi, S.Pd', '1990-02-23', 'Laki-laki', 'Islam', 'Pasar Baru Pangean', 'Mr_fairuz1.jpg', 'Public Speaking Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `persyaratan`
--

CREATE TABLE `persyaratan` (
  `id_persyaratan` int(11) NOT NULL,
  `kartu_pelajar` varchar(100) DEFAULT NULL,
  `kartu_keluarga` varchar(100) DEFAULT NULL,
  `surat_kesehatan` varchar(100) DEFAULT NULL,
  `surat_izin_sekolah` varchar(100) DEFAULT NULL,
  `surat_pernyataan` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `pas_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profil_englishcamp`
--

CREATE TABLE `profil_englishcamp` (
  `id_profil` int(11) NOT NULL,
  `sejarah` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil_englishcamp`
--

INSERT INTO `profil_englishcamp` (`id_profil`, `sejarah`, `visi`, `misi`, `gambar`) VALUES
(1, '<p style=\"text-align:justify\"><span style=\"font-size:16px\">Dimulai di desa kecil, Beringin-Taluk, Kuantan Singingi, Riau. MAN 1 Kuansing adalah sekolah yang mempopulerkan bahasa Inggris di masyarakat, dipimpin oleh seorang pendiri, Drs. Zulkifli, M. Pd bersama rekan terbaiknya, Seprion, S. Ag., M. Pd.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Kampung Inggris Pare AEC, begitulah yang kami sebut. Ide ini dimulai pada tahun 2011. Saat Bapak Zulkifli memimpin MAN 1 Kuansing, Dia mengirim 8 guru untuk mempelajari bagaimana sistem pengajaran Bahasa Inggris Pare. Pare dikenal sebagai Kampung Inggris. Itu terletak di Kediri-Jawa Timur. Setelah beberapa bulan, siswa dibimbing oleh beberapa guru pergi ke Pare juga. Mereka belajar bahasa Inggris di HEC-2 dan BEC. Program ini sudah berjalan dari tahun 2011 hingga 2014. Lalu, apa yang terjadi pada tahun 2015? Mengapa MAN 1 Kuansing tidak mengirim siswanya lagi? Inilah jawabannya. Kami mulai mendirikan Kampung Inggris kami sendiri, Kampung Inggris Pare AEC. AEC sendiri merupakan singkatan dari Arabic English Course. Mr. Zulkifli dan Mr. Seprion ingin Kampung Inggris ini bisa berbahasa Inggris atau Arab.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">MAN 1 Kuansing berhasil meluncurkan program pada bulan Desember 2014 dengan 32 siswa bersandar bahasa Inggris (19 siswa dari MAN 1 Kuansing, 3 siswa dari MAN 2 Kuansing, dan 10 siswa dari MTs Al Ma&#39;arif). Fantastis bukan? AEC Kampung Inggris Pare disahkan oleh Dinas Pendidikan Kuantan Singingi dengan nomor operasional resmi 421.1 / DisDISK / 2013/1026, dengan nama lembaga Lembaga Kursus Pare AEC. Sejak april 2018, Kampung Inggris PARE AEC telah berjalan di bawah MAN 2 Kuansing yang terletak di Kecamatan Pangean.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Generasi pertama di bawah pimpinan bapak H. Supriadi, S.Ag dan generasi 2 sampai sekarang di bawah pimpinan bapak Drs. Zulkifli, M.Pd, serta berlaku sebagai manager program bapak Sardimanto, Coordinator Camp ibu Dahlia Abdah, S.Pd dengan pendidik di antaranya Banyas Ambara, S.Pd, Erdian, S.Pd, dan Fairuz Abadi, S.Pd serta Dias frahesti S.Pd. Para pembelajar dapat mempelajari banyak hal. Kami mengajari mereka kosa kata, ekspresi, berbicara, tata bahasa, pengucapan, mendengarkan, mendeskripsikan, dadakan, pidato, mendongeng, berbicara paduan suara, dan permainan peran. Kemudian kami memiliki ujian akhir di Malaysia dan Singapura untuk memungkinkan mereka berlatih bahasa Inggris dengan penutur asli. Tertarik untuk meningkatkan bahasa Inggris Anda? Kampung Inggris PARE AEC solusinya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Dengan adanya Visi dan Misi serta Tujuan dari MAN 2 Kuansing maka Program ini berjalan dengan baik, yang mana menciptakan pengembangan bahasa Asing terutama program bahasa inggris serta menciptakan siswa siswi yang berstandarkan International di era globalisasi.</span></p>\r\n', '<p style=\"text-align:justify\"><span style=\"font-size:16px\">Pusat pengembangan ilmu pengetahuan dan teknologi, penguasaan bahasa nasional dan internasional dengan landasan iman dan taqwa tahun 2025.</span></p>\r\n', '<ul>\r\n	<li><span style=\"font-size:16px\">Menciptakan budaya mutu.</span></li>\r\n	<li><span style=\"font-size:16px\">Menciptakan lingkungan pembelajaran yang membangkitkan kreatifitas siswa yang berakhlakul karimah.</span></li>\r\n	<li><span style=\"font-size:16px\">Menumbuhkan jiwa&nbsp;<em>enterpreneur&nbsp;</em>dan kepedulian lingkungan yang berwawasan global.</span></li>\r\n	<li><span style=\"font-size:16px\">Mewujudkan madrasah berstandar internasional.</span></li>\r\n	<li><span style=\"font-size:16px\">Menuju zona integritas WBK &amp; WBBM.</span></li>\r\n</ul>\r\n', 'Mou_ecg2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review_alumni`
--

CREATE TABLE `review_alumni` (
  `id_review` int(11) NOT NULL,
  `nama_alumni` varchar(100) NOT NULL,
  `generasi` varchar(100) NOT NULL,
  `review` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_alumni`
--

INSERT INTO `review_alumni` (`id_review`, `nama_alumni`, `generasi`, `review`, `gambar`) VALUES
(2, 'Khofifatul Amni', 'Siswi Terbaik Di Angkatan Pertama', '<p style=\"text-align:justify\">PARE Arabic and English Course (PARE AEC) atau yang dikenal dengan English camp adalah salah satu program terbaik di MAN 2 Kuantan Singingi. Sebagai generasi pertama program tersebut, banyak sekali pengalaman yang saya dapatkan. Selama belajar Bahasa Inggris di English camp, banyak kemajuan dalam bahasa Inggris yang saya rasakan, mulai dari grammar, pronunciation, English daily expressions dan lain-lain. Tidak hanya itu, Program ini juga sangat membantu saya dalam meningkatakan rasa percaya diri, bahkan dulu tidak afdhol rasanya jika tidak berpartisipasi dalam acara sekolah, contohnya berdrama, berpidato dan lainnya. Selain itu, salah satu pengalaman yang paling mengesankan adalah saat melakukan ujian akhir English camp yaitu berinteraksi lansung dengan English native speaker. Saya merasa sangat bersukur karena dengan mengikuti program ini, saya akhirnya memilih untuk berkuliah di jurusan bahasa inrggis dan menjadi calon guru bahasa Inggris.</p>\r\n', 'khofifa.jpeg'),
(3, 'Marfindra Kurnia Andrin', 'Siswa Berprestasi Di Angkatan Ketiga', '<p style=\"text-align:justify\">English camp adalah salah satu program unggulan yang ada di MAN 2 KUANSING. Sebagai alumni MAN 2 KUANSING sekaligus Alumni English Camp generasi ke-3, saya merasakan banyak pengaruh positif kepada diri saya sendiri. Mulai dari&nbsp;merubah pandangan saya terhadap bahasa inggris yang merupakan bahasa asing dan saya anggap tidak terlalu penting, tapi setelah bergabung dengan english camp saya jadi tau bahwa bahasa inggris adalah bahasa yang sangat dibutuhkan dimasa sekarang ini. Di english camp saya juga belajar bahwa belajar tidak harus selalu dari buku, kita juga bisa belajar melalui film, lagu, dan video-video di medsos. English camp juga berperan penting dalam membangun skil public speaking saya dengan adanya kegiatan Religious meeting setiap minggunya. Dengan mengikuti english camp saya menjadi pribadi yang lebih percaya diri dan bisa berkomunikasi dengan lancar dalam bahasa inggris.</p>\r\n', 'pindra.jpeg'),
(5, 'Niken Aulia', 'Siswi Terbaik Kedua Di Angkatan Pertama', '<p style=\"text-align:justify\">English camp merupakan salah satu program terbaik yang terdapat di MAN 2 Kuantan Singingi. Saya sebagai alumni MAN 2 Kuantan Singingi sekaligus generasi pencetus English Camp sangat bangga dengan adanya program tersebut. Selama menjadi siswa English Camp banyak hal positif yang saya rasakan seperti saya bisa mahir dalam berbahasa inggris, belajar grammar, menjadi debaters bahasa inggris selain itu wawasan saya mengenai dunia juga semakin luas dengan berbahasa inggris. Hal ini dikarenakan saya mampu berkomunikasi dengan narative speaker.</p>\r\n', 'niken1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tanggal_daftar`
--

CREATE TABLE `tanggal_daftar` (
  `id_tanggal` int(11) NOT NULL,
  `tgl_buka` date NOT NULL,
  `tgl_tutup` date NOT NULL,
  `judul` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanggal_daftar`
--

INSERT INTO `tanggal_daftar` (`id_tanggal`, `tgl_buka`, `tgl_tutup`, `judul`) VALUES
(5, '2024-07-01', '2024-07-06', 'Jadwal Pendaftaran');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `gambar`, `role`, `date_created`) VALUES
(13, 'Resi Wahyuni', 'resi@gmail.com', '$2y$10$7.LVQQJ3XoEipvJCdNSUn.W.Et7n238JiNU1faCc4G4MUgXb4ECGm', 'default.jpg', 'Bendahara', 1717335620),
(14, 'Dahlia Abdah', 'dahlia@gmail.com', '$2y$10$TiYlA4b3yZr.m1lZR.8O0OBQOeP8BQiKBsig8deXYIMVmGV0IfBZS', 'default.jpg', 'Admin', 1717335667);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_biaya`
--
ALTER TABLE `detail_biaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indexes for table `detail_bulanan`
--
ALTER TABLE `detail_bulanan`
  ADD PRIMARY KEY (`id_bulanan`);

--
-- Indexes for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  ADD PRIMARY KEY (`id_dokumentasi`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `info_pendaftaran`
--
ALTER TABLE `info_pendaftaran`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `materi_belajar`
--
ALTER TABLE `materi_belajar`
  ADD PRIMARY KEY (`id_belajar`);

--
-- Indexes for table `media_youtube`
--
ALTER TABLE `media_youtube`
  ADD PRIMARY KEY (`id_media`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`);

--
-- Indexes for table `pembayaran_bulanan`
--
ALTER TABLE `pembayaran_bulanan`
  ADD PRIMARY KEY (`id_bayar`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftar`);

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persyaratan`
--
ALTER TABLE `persyaratan`
  ADD PRIMARY KEY (`id_persyaratan`);

--
-- Indexes for table `profil_englishcamp`
--
ALTER TABLE `profil_englishcamp`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `review_alumni`
--
ALTER TABLE `review_alumni`
  ADD PRIMARY KEY (`id_review`);

--
-- Indexes for table `tanggal_daftar`
--
ALTER TABLE `tanggal_daftar`
  ADD PRIMARY KEY (`id_tanggal`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_biaya`
--
ALTER TABLE `detail_biaya`
  MODIFY `id_biaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_bulanan`
--
ALTER TABLE `detail_bulanan`
  MODIFY `id_bulanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  MODIFY `id_dokumentasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id_fasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `info_pendaftaran`
--
ALTER TABLE `info_pendaftaran`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `materi_belajar`
--
ALTER TABLE `materi_belajar`
  MODIFY `id_belajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `media_youtube`
--
ALTER TABLE `media_youtube`
  MODIFY `id_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pembayaran_bulanan`
--
ALTER TABLE `pembayaran_bulanan`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `persyaratan`
--
ALTER TABLE `persyaratan`
  MODIFY `id_persyaratan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `profil_englishcamp`
--
ALTER TABLE `profil_englishcamp`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `review_alumni`
--
ALTER TABLE `review_alumni`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tanggal_daftar`
--
ALTER TABLE `tanggal_daftar`
  MODIFY `id_tanggal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
