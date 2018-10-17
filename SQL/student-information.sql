-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2018 at 11:45 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student-information`
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
(1, 1, 'dfdf', 'dfsdfdsf', '3545458', 'dfdfd', 'dfdfdf', 'dfdfdf', 'dfdfdf', '78877', 'dfdfd', 'dsfsdfd', '2018-10-16 00:04:29', '2018-10-16 00:04:29');

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
(1, 1, 'Comilla', 'kuhstia', 'Humanities', '2005', '125544', '5.0', 'Dhaka', 'gono', 'Science', '2015', '251144', '5.0', '2018-10-16 00:04:29', '2018-10-16 09:59:15');

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
(1, 1, 'dfdf', '544444', 'father', '2018-10-16 00:04:29', '2018-10-16 00:04:29');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_08_143617_create_students_table', 1),
(4, '2018_10_08_161014_create_educational_qualifications_table', 1),
(5, '2018_10_08_161207_create_guardians_table', 1),
(6, '2018_10_08_161244_create_addresses_table', 1),
(7, '2018_10_14_130337_create_student_g_p_as_table', 1),
(8, '2018_10_14_145835_create_thirty_percent_marks_table', 1);

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
(1, 'James D Fraser', 'tonykhan658@gmail.com', '$2y$10$f4uaZKcFlWRhSpbmAT9gceEUBDxUR2f5GZBTDcRO9GGwZ8RJ.uthi', '1539669869.jpg', '19th', '08', '573', 'GCE-2156/15', '1', '5082397939', '5', 'hinduism', '2018-10-23', 'Bangladeshi', '2018-10-16 00:04:29', '2018-10-17 03:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `student_g_p_as`
--

CREATE TABLE `student_g_p_as` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `semester_1_gpa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester_2_gpa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester_3_gpa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester_4_gpa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester_5_gpa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester_6_gpa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester_7_gpa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester_8_gpa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_g_p_as`
--

INSERT INTO `student_g_p_as` (`id`, `student_id`, `semester_1_gpa`, `semester_2_gpa`, `semester_3_gpa`, `semester_4_gpa`, `semester_5_gpa`, `semester_6_gpa`, `semester_7_gpa`, `semester_8_gpa`, `created_at`, `updated_at`) VALUES
(1, 1, '4.0', '5.0', NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-16 09:44:11', '2018-10-16 09:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `thirty_percent_marks`
--

CREATE TABLE `thirty_percent_marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `semester` int(10) UNSIGNED NOT NULL,
  `course` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendence` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tutorial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `midterm` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thirty_percent_marks`
--

INSERT INTO `thirty_percent_marks` (`id`, `student_id`, `semester`, `course`, `attendence`, `tutorial`, `midterm`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Bangla', '8', '10', '10', '28', '2018-10-16 08:13:19', '2018-10-16 08:13:19'),
(2, 1, 2, 'C Programming', '10', '10', '10', '30', '2018-10-16 08:21:20', '2018-10-16 08:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', 1, NULL, '$2y$10$cFApmROaniQRH2wPwgwguOCASY6KgLSWEl/19OF8ebCBJQ9LIO3XW', 'uUr0n6jdinmuf7V00AUyThIQcvCrSCSpDJGolGRmgGMwMWLtPVNCGsFJhr3R', '2018-10-15 23:33:57', '2018-10-15 23:33:57'),
(2, 'user', 'user@user.com', 0, NULL, '$2y$10$TNuV5NeDGmSbnlOuH1qkXOEbOrOA31VOlQh2Sm7HEgoRzA7CvkYZC', 'xT7RnPfB2GSpz4Qs5yVASIQ04ZxoTZAc40i1LKuyXwDpz4LsatmeWtPXNcKN', '2018-10-15 23:43:21', '2018-10-15 23:43:21');

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
-- Indexes for table `student_g_p_as`
--
ALTER TABLE `student_g_p_as`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_g_p_as_student_id_foreign` (`student_id`);

--
-- Indexes for table `thirty_percent_marks`
--
ALTER TABLE `thirty_percent_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thirty_percent_marks_student_id_foreign` (`student_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `educational_qualifications`
--
ALTER TABLE `educational_qualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_g_p_as`
--
ALTER TABLE `student_g_p_as`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thirty_percent_marks`
--
ALTER TABLE `thirty_percent_marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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

--
-- Constraints for table `student_g_p_as`
--
ALTER TABLE `student_g_p_as`
  ADD CONSTRAINT `student_g_p_as_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `thirty_percent_marks`
--
ALTER TABLE `thirty_percent_marks`
  ADD CONSTRAINT `thirty_percent_marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
