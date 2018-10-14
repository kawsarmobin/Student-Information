-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2018 at 11:20 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_information`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `present_village` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_post_office` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_upazila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_village` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_post_office` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_upazila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `student_id`, `present_village`, `present_post_office`, `present_post_code`, `present_upazila`, `present_district`, `permanent_village`, `permanent_post_office`, `permanent_post_code`, `permanent_upazila`, `permanent_district`, `created_at`, `updated_at`) VALUES
(3, 4, 'st;gklugoeih', 'fhjftg6rgfr', '5465746542', 'yhrtdt', 'xdrygtxdgxd', 'dxfgstx', 'dgxdrtg', '456878', 'xdrterg', 'dgrsegsrhsdf', '2018-10-09 00:30:05', '2018-10-09 00:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `educational_qualifications`
--

CREATE TABLE `educational_qualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `ssc_board` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_institute` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_roll` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssc_result` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsc_board` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsc_institute` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsc_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsc_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsc_roll` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsc_result` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educational_qualifications`
--

INSERT INTO `educational_qualifications` (`id`, `student_id`, `ssc_board`, `ssc_institute`, `ssc_group`, `ssc_year`, `ssc_roll`, `ssc_result`, `hsc_board`, `hsc_institute`, `hsc_group`, `hsc_year`, `hsc_roll`, `hsc_result`, `created_at`, `updated_at`) VALUES
(4, 4, 'ghsrdt', 'gsrdstysreg', 'drtseg', '2014', '32598', '354', 'sdrtgsgvrt', 'hfxdtyreg', 'xdfgtrytr', '5567', '5687', '2145', '2018-10-09 00:30:05', '2018-10-09 00:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relationship` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardians`
--

INSERT INTO `guardians` (`id`, `student_id`, `name`, `contact`, `relationship`, `created_at`, `updated_at`) VALUES
(3, 4, 'fsfsdf', '446554', 'dfdssdf', '2018-10-09 15:14:38', '2018-10-09 15:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2018_10_08_143617_create_students_table', 1),
(14, '2018_10_08_161014_create_educational_qualifications_table', 1),
(15, '2018_10_08_161207_create_guardians_table', 1),
(16, '2018_10_08_161244_create_addresses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_roll` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_roll` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `avatar`, `batch`, `class_roll`, `exam_roll`, `registration_no`, `gender`, `phone_no`, `blood_group`, `religion`, `dob`, `nationality`, `created_at`, `updated_at`) VALUES
(4, 'student', 'student@gmail.com', '$2y$10$LcM8Hp3pRkzwkfFK8acSU.u.sMVAECffFZYjqFKgyhtnIS09/9TaC', '1539066605.jpg', 'rter', '897987', '15457', 'GCE-52556', '1', '65879754574', '2', 'tearrgsdrt', '2018-10-09', 'rfgdzxfge4', '2018-10-09 00:30:05', '2018-10-09 15:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$ofTR.NJmcixsoG4QMjG0r.traq9I0nxUxp9UebFlzFuOUp4Pn9Yau', 'E0xsyWLSo3t9eDFYYi5pOArjPMDXGIZV7FVOwrLjfxJROnPXnS8FuKAf3rFi', '2018-10-08 10:36:03', '2018-10-08 10:36:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_student_id_foreign` (`student_id`);

--
-- Indexes for table `educational_qualifications`
--
ALTER TABLE `educational_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `educational_qualifications_student_id_foreign` (`student_id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guardians_student_id_foreign` (`student_id`);

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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `educational_qualifications`
--
ALTER TABLE `educational_qualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `educational_qualifications`
--
ALTER TABLE `educational_qualifications`
  ADD CONSTRAINT `educational_qualifications_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guardians`
--
ALTER TABLE `guardians`
  ADD CONSTRAINT `guardians_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
