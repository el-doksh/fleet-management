-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2022 at 01:03 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fleet_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `name`, `license_number`, `created_at`, `updated_at`) VALUES
(1, 'Bus 1', 'ABC-123', '2022-11-23 23:03:19', '2022-11-23 23:03:19'),
(2, 'Bus 2', 'ABC-456', '2022-11-23 23:03:19', '2022-11-23 23:03:19'),
(3, 'Bus 3', 'QWE-456', '2022-11-23 23:03:19', '2022-11-23 23:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `bus_seats`
--

CREATE TABLE `bus_seats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bus_id` bigint(20) UNSIGNED NOT NULL,
  `seat_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_seats`
--

INSERT INTO `bus_seats` (`id`, `bus_id`, `seat_id`) VALUES
(1, 1, 11),
(2, 1, 12),
(3, 1, 13),
(4, 1, 14),
(5, 1, 15),
(6, 1, 16),
(7, 1, 17),
(8, 1, 18),
(9, 1, 19),
(10, 1, 110),
(11, 1, 111),
(12, 1, 112),
(13, 2, 113),
(14, 2, 114),
(15, 2, 115),
(16, 2, 116),
(17, 2, 117),
(18, 2, 118),
(19, 2, 119),
(20, 2, 120),
(21, 2, 121),
(22, 2, 122),
(23, 2, 123),
(24, 2, 124),
(25, 3, 130),
(26, 3, 131),
(27, 3, 132),
(28, 3, 133),
(29, 3, 134),
(30, 3, 135),
(31, 3, 136),
(32, 3, 137),
(33, 3, 138),
(34, 3, 139),
(35, 3, 140),
(36, 3, 141);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, '10th of Ramadan'),
(2, '15th of May'),
(3, '6th of October'),
(4, 'Abu El Matamir'),
(5, 'Abu Hummus'),
(6, 'Abu Tesht'),
(7, 'Akhmim'),
(8, 'Al Khankah'),
(9, 'Alexandria'),
(10, 'Arish'),
(11, 'Ashmoun'),
(12, 'Aswan'),
(13, 'Asyut'),
(14, 'Awsim'),
(15, 'Badr'),
(16, 'Baltim'),
(17, 'Banha'),
(18, 'Basyoun'),
(20, 'Belqas'),
(23, 'Beni Ebeid'),
(21, 'Beni Mazar'),
(22, 'Beni Suef'),
(24, 'Biba'),
(25, 'Bilbeis'),
(26, 'Birket El Sab'),
(19, 'Biyala'),
(27, 'Borg El Arab'),
(28, 'Borg El Burullus[1]'),
(29, 'Bush'),
(30, 'Cairo'),
(31, 'Dahab'),
(32, 'Dairut'),
(33, 'Damanhur'),
(34, 'Damietta'),
(35, 'Dar El Salam'),
(36, 'Daraw'),
(37, 'Deir Mawas'),
(38, 'Dekernes'),
(39, 'Dendera'),
(40, 'Desouk'),
(41, 'Dishna'),
(42, 'Edfu'),
(43, 'Edku'),
(44, 'El Alamein'),
(45, 'El Arish'),
(46, 'El Ayyat'),
(47, 'El Badari'),
(48, 'El Badrashein'),
(49, 'El Bagour'),
(50, 'El Balyana'),
(51, 'El Basaliya'),
(52, 'El Bayadiya'),
(53, 'El Dabaa'),
(54, 'El Delengath'),
(55, 'El Fashn'),
(56, 'El Gamaliya'),
(57, 'El Ghanayem'),
(59, 'El Hamam'),
(58, 'El Hamool'),
(60, 'El Hawamdeya'),
(61, 'El Husseiniya'),
(63, 'El Ibrahimiya'),
(62, 'El Idwa'),
(64, 'El Kanayat'),
(65, 'El Kareen'),
(74, 'El Khayreya'),
(66, 'El Mahalla El Kubra'),
(67, 'El Mahmoudiyah'),
(68, 'El Mansha'),
(69, 'El Manzala'),
(70, 'El Maragha'),
(71, 'El Matareya'),
(73, 'El Qanater'),
(72, 'El Qantara'),
(75, 'El Qoseir'),
(76, 'El Qusiya'),
(77, 'El Rahmaniya'),
(78, 'El Reyad'),
(79, 'El Rhoda'),
(80, 'El Saff'),
(81, 'El Santa'),
(82, 'El Sarw'),
(83, 'El Sebaiya'),
(84, 'El Senbellawein'),
(85, 'El Shohada'),
(86, 'El Shorouk'),
(87, 'El Tor'),
(88, 'El Waqf'),
(89, 'El Wasta'),
(90, 'El Zarqa'),
(91, 'Esna'),
(92, 'Ezbet El Borg'),
(97, 'Faiyum'),
(93, 'Faqous'),
(94, 'Faraskur'),
(95, 'Farshut'),
(96, 'Fayed'),
(98, 'Fuka'),
(99, 'Girga'),
(100, 'Giza'),
(101, 'Hihya'),
(102, 'Hosh Essa'),
(103, 'Hurghada'),
(104, 'Ibsheway'),
(105, 'Ihnasiya'),
(106, 'Ismailia'),
(107, 'Itay El Barud'),
(108, 'Itsa'),
(109, 'Juhayna'),
(112, 'Kafr El Batikh'),
(113, 'Kafr El Dawwar'),
(110, 'Kafr El Sheikh'),
(111, 'Kafr El Zayat'),
(114, 'Kafr Saad'),
(115, 'Kafr Saqr'),
(116, 'Kafr Shukr'),
(117, 'Kafr Zarqan'),
(118, 'Kerdasa'),
(119, 'Khanka'),
(120, 'Kharga'),
(121, 'Khusus'),
(122, 'Kom Hamada'),
(123, 'Kom Ombo'),
(124, 'Kotoor'),
(125, 'Luxor'),
(126, 'Maghagha'),
(127, 'Mallawi'),
(128, 'Manfalut'),
(129, 'Mansoura'),
(133, 'Marsa Alam'),
(130, 'Mashtool El Souk'),
(131, 'Matai'),
(132, 'Menouf'),
(134, 'Mersa Matruh'),
(135, 'Metoubes'),
(136, 'Minya'),
(137, 'Minyet El Nasr'),
(138, 'Mit Abu El Kom'),
(139, 'Mit Abu Ghaleb'),
(140, 'Mit Adlan'),
(141, 'Mit Bera'),
(142, 'Mit El Korama'),
(143, 'Mit Elwan'),
(144, 'Mit Fadala'),
(145, 'Mit Ghamr'),
(146, 'Mit Kenana'),
(147, 'Mit Rahina'),
(148, 'Mit Salsil'),
(149, 'Mit Sudan'),
(150, 'Mit Yazid'),
(151, 'Monsha\'at El-Qanater'),
(152, 'Mut'),
(153, 'Nabaroh'),
(154, 'Nag Hammadi'),
(155, 'Naqada'),
(156, 'New Administrative Capital (NAC)'),
(159, 'New Akhmim'),
(157, 'New Alamein'),
(158, 'New Aswan'),
(160, 'New Asyut'),
(161, 'New Beni Suef'),
(162, 'New Borg El Arab'),
(163, 'New Cairo'),
(164, 'New Damietta'),
(165, 'New Faiyum'),
(166, 'New Minya'),
(167, 'New Nubariya');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_23_193041_create_cities_table', 1),
(6, '2022_11_23_194430_create_buses_table', 1),
(7, '2022_11_23_194449_create_bus_seats_table', 1),
(8, '2022_11_23_194815_create_trips_table', 1),
(9, '2022_11_23_194833_create_trip_cities_table', 1),
(10, '2022_11_23_194841_create_trip_seats_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL,
  `bus_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `date`, `bus_id`, `created_at`, `updated_at`) VALUES
(1, '2022-11-30 10:00:00', 1, '2022-11-23 23:03:19', '2022-11-23 23:03:19'),
(2, '2022-12-01 10:00:00', 2, '2022-11-23 23:03:19', '2022-11-23 23:03:19'),
(3, '2022-12-01 12:00:00', 3, '2022-11-23 23:03:19', '2022-11-23 23:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `trip_cities`
--

CREATE TABLE `trip_cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip_cities`
--

INSERT INTO `trip_cities` (`id`, `trip_id`, `city_id`, `order`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 1, 3, 3),
(4, 1, 4, 4),
(5, 2, 5, 1),
(6, 2, 6, 2),
(7, 2, 7, 3),
(8, 3, 1, 1),
(9, 3, 2, 2),
(10, 3, 3, 3),
(11, 3, 4, 4),
(12, 3, 5, 5),
(13, 3, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `trip_seats`
--

CREATE TABLE `trip_seats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `seat_id` bigint(20) UNSIGNED NOT NULL,
  `start_city_id` bigint(20) UNSIGNED NOT NULL,
  `end_city_id` bigint(20) UNSIGNED NOT NULL,
  `booked_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '2022-11-23 23:03:18', '$2y$10$64PbYxLm92h6PHcBmFDYyeXBUClNllG9RzwSQs4DIGfjlhpHxL8DO', NULL, '2022-11-23 23:03:19', '2022-11-23 23:03:19'),
(2, 'sherif', 'sherifeldoksh8@gmai.com', '2022-11-23 23:03:19', '$2y$10$tRARZ.ixlrLVdXe8bIrNsOP2j867AXrI59vxCnbM/rM8Z1LPO8cla', NULL, '2022-11-23 23:03:19', '2022-11-23 23:03:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `buses_name_unique` (`name`),
  ADD UNIQUE KEY `buses_license_number_unique` (`license_number`);

--
-- Indexes for table `bus_seats`
--
ALTER TABLE `bus_seats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bus_seats_seat_id_unique` (`seat_id`),
  ADD KEY `bus_seats_bus_id_foreign` (`bus_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_bus_id_foreign` (`bus_id`);

--
-- Indexes for table `trip_cities`
--
ALTER TABLE `trip_cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trip_cities_trip_id_city_id_unique` (`trip_id`,`city_id`),
  ADD UNIQUE KEY `trip_cities_trip_id_order_unique` (`trip_id`,`order`),
  ADD KEY `trip_cities_city_id_foreign` (`city_id`);

--
-- Indexes for table `trip_seats`
--
ALTER TABLE `trip_seats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trip_seats_trip_id_seat_id_start_city_id_end_city_id_unique` (`trip_id`,`seat_id`,`start_city_id`,`end_city_id`),
  ADD KEY `trip_seats_seat_id_foreign` (`seat_id`),
  ADD KEY `trip_seats_start_city_id_foreign` (`start_city_id`),
  ADD KEY `trip_seats_end_city_id_foreign` (`end_city_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bus_seats`
--
ALTER TABLE `bus_seats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trip_cities`
--
ALTER TABLE `trip_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `trip_seats`
--
ALTER TABLE `trip_seats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus_seats`
--
ALTER TABLE `bus_seats`
  ADD CONSTRAINT `bus_seats_bus_id_foreign` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`);

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_bus_id_foreign` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`);

--
-- Constraints for table `trip_cities`
--
ALTER TABLE `trip_cities`
  ADD CONSTRAINT `trip_cities_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `trip_cities_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`);

--
-- Constraints for table `trip_seats`
--
ALTER TABLE `trip_seats`
  ADD CONSTRAINT `trip_seats_end_city_id_foreign` FOREIGN KEY (`end_city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `trip_seats_seat_id_foreign` FOREIGN KEY (`seat_id`) REFERENCES `bus_seats` (`id`),
  ADD CONSTRAINT `trip_seats_start_city_id_foreign` FOREIGN KEY (`start_city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `trip_seats_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
