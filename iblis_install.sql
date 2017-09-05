-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 04, 2017 at 12:05 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iblis`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `audit_results`
--

CREATE TABLE `audit_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `previous_results` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `test_result_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barcode_settings`
--

CREATE TABLE `barcode_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `encoding_format` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `barcode_width` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `barcode_height` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text_size` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `barcode_settings`
--

INSERT INTO `barcode_settings` (`id`, `encoding_format`, `barcode_width`, `barcode_height`, `text_size`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'code39', '2', '30', '11', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `biochemical_weeksheet`
--

CREATE TABLE `biochemical_weeksheet` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `result` tinyint(1) NOT NULL,
  `biochemical_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bio_chemical_tests`
--

CREATE TABLE `bio_chemical_tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bio_chemical_tests`
--

INSERT INTO `bio_chemical_tests` (`id`, `name`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Beta-glucuronidase test (MUG Test)', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(2, 'Bacitracin Sensitivity Test:', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(3, 'Bile solubility test', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(4, 'CAMP Test:', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(5, 'Catalase test:', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(6, 'Citrate utilization test', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(7, 'Coagulase test', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(8, 'DNase test', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(9, 'Indole test', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(10, 'Litmus milk decolorization test: ', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(11, 'Oxidase test', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(12, 'Urease test', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(13, 'Voges Proskauer/Methyl Red', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(14, 'Triple Sugar Iron Agar Test', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL),
(15, 'Nitrate Reduction Test', 1, '2017-09-04 10:04:41', '2017-09-04 10:04:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `controls`
--

CREATE TABLE `controls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instrument_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `controls`
--

INSERT INTO `controls` (`id`, `name`, `description`, `instrument_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Humatrol P', 'HUMATROL P control serum has been designed to provide a suitable basis for the quality control (imprecision, inaccuracy) in the clinical chemical laboratory.', 1, '2017-09-04 10:04:42', '2017-09-04 10:04:42', NULL),
(2, 'Full Blood Count', 'Né pas touchér', 1, '2017-09-04 10:04:42', '2017-09-04 10:04:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `control_measures`
--

CREATE TABLE `control_measures` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `control_id` int(10) UNSIGNED NOT NULL,
  `control_measure_type_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `control_measures`
--

INSERT INTO `control_measures` (`id`, `name`, `unit`, `control_id`, `control_measure_type_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ca', 'mmol', 1, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(2, 'pi', 'mmol', 1, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(3, 'mg', 'mmol', 1, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(4, 'na', 'mmol', 1, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(5, 'K', 'mmol', 1, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(6, 'WBC', 'x 103/uL', 2, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(7, 'RBC', 'x 106/uL', 2, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(8, 'HGB', 'g/dl', 2, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(9, 'HCT', '%', 2, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(10, 'MCV', 'fl', 2, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(11, 'MCH', 'pg', 2, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(12, 'MCHC', 'g/dl', 2, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(13, 'PLT', 'x 103/uL', 2, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `control_measure_ranges`
--

CREATE TABLE `control_measure_ranges` (
  `id` int(10) UNSIGNED NOT NULL,
  `upper_range` decimal(6,2) DEFAULT NULL,
  `lower_range` decimal(6,2) DEFAULT NULL,
  `alphanumeric` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `control_measure_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `control_measure_ranges`
--

INSERT INTO `control_measure_ranges` (`id`, `upper_range`, `lower_range`, `alphanumeric`, `control_measure_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2.63', '7.19', NULL, 1, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(2, '11.65', '15.43', NULL, 2, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(3, '12.13', '19.11', NULL, 3, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(4, '15.73', '25.01', NULL, 4, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(5, '17.63', '20.12', NULL, 5, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(6, '6.50', '7.50', NULL, 6, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(7, '4.36', '5.78', NULL, 7, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(8, '13.80', '17.30', NULL, 8, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(9, '81.00', '95.00', NULL, 9, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(10, '1.99', '2.63', NULL, 10, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(11, '27.60', '33.00', NULL, 11, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(12, '32.80', '36.40', NULL, 12, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(13, '141.00', '320.00', NULL, 13, NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `control_results`
--

CREATE TABLE `control_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `results` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `control_measure_id` int(10) UNSIGNED NOT NULL,
  `control_test_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `control_results`
--

INSERT INTO `control_results` (`id`, `results`, `control_measure_id`, `control_test_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2.78', 1, 1, 1, '2017-08-24 21:00:00', '2017-09-04 10:04:42'),
(2, '13.56', 2, 1, 1, '2017-08-24 21:00:00', '2017-09-04 10:04:42'),
(3, '14.77', 3, 1, 1, '2017-08-24 21:00:00', '2017-09-04 10:04:42'),
(4, '25.92', 4, 1, 1, '2017-08-24 21:00:00', '2017-09-04 10:04:42'),
(5, '18.87', 5, 1, 1, '2017-08-24 21:00:00', '2017-09-04 10:04:42'),
(6, '6.78', 1, 2, 1, '2017-08-25 21:00:00', '2017-09-04 10:04:42'),
(7, '15.56', 2, 2, 1, '2017-08-25 21:00:00', '2017-09-04 10:04:42'),
(8, '18.77', 3, 2, 1, '2017-08-25 21:00:00', '2017-09-04 10:04:42'),
(9, '30.92', 4, 2, 1, '2017-08-25 21:00:00', '2017-09-04 10:04:42'),
(10, '17.87', 5, 2, 1, '2017-08-25 21:00:00', '2017-09-04 10:04:42'),
(11, '8.78', 1, 3, 1, '2017-08-26 21:00:00', '2017-09-04 10:04:42'),
(12, '17.56', 2, 3, 1, '2017-08-26 21:00:00', '2017-09-04 10:04:42'),
(13, '21.77', 3, 3, 1, '2017-08-26 21:00:00', '2017-09-04 10:04:42'),
(14, '27.92', 4, 3, 1, '2017-08-26 21:00:00', '2017-09-04 10:04:42'),
(15, '22.87', 5, 3, 1, '2017-08-26 21:00:00', '2017-09-04 10:04:42'),
(16, '6.78', 1, 4, 1, '2017-08-27 21:00:00', '2017-09-04 10:04:42'),
(17, '18.56', 2, 4, 1, '2017-08-27 21:00:00', '2017-09-04 10:04:42'),
(18, '19.77', 3, 4, 1, '2017-08-27 21:00:00', '2017-09-04 10:04:42'),
(19, '12.92', 4, 4, 1, '2017-08-27 21:00:00', '2017-09-04 10:04:42'),
(20, '22.87', 5, 4, 1, '2017-08-27 21:00:00', '2017-09-04 10:04:42'),
(21, '3.78', 1, 5, 1, '2017-08-28 21:00:00', '2017-09-04 10:04:42'),
(22, '16.56', 2, 5, 1, '2017-08-28 21:00:00', '2017-09-04 10:04:42'),
(23, '17.77', 3, 5, 1, '2017-08-28 21:00:00', '2017-09-04 10:04:42'),
(24, '28.92', 4, 5, 1, '2017-08-28 21:00:00', '2017-09-04 10:04:42'),
(25, '19.87', 5, 5, 1, '2017-08-28 21:00:00', '2017-09-04 10:04:42'),
(26, '5.78', 1, 6, 1, '2017-08-29 21:00:00', '2017-09-04 10:04:42'),
(27, '15.56', 2, 6, 1, '2017-08-29 21:00:00', '2017-09-04 10:04:42'),
(28, '11.77', 3, 6, 1, '2017-08-29 21:00:00', '2017-09-04 10:04:42'),
(29, '29.92', 4, 6, 1, '2017-08-29 21:00:00', '2017-09-04 10:04:42'),
(30, '14.87', 5, 6, 1, '2017-08-29 21:00:00', '2017-09-04 10:04:42'),
(31, '9.78', 1, 7, 1, '2017-08-30 21:00:00', '2017-09-04 10:04:42'),
(32, '11.56', 2, 7, 1, '2017-08-30 21:00:00', '2017-09-04 10:04:42'),
(33, '19.77', 3, 7, 1, '2017-08-30 21:00:00', '2017-09-04 10:04:42'),
(34, '32.92', 4, 7, 1, '2017-08-30 21:00:00', '2017-09-04 10:04:42'),
(35, '29.87', 5, 7, 1, '2017-08-30 21:00:00', '2017-09-04 10:04:42'),
(36, '5.45', 6, 8, 1, '2017-08-31 21:00:00', '2017-09-04 10:04:42'),
(37, '5.01', 7, 8, 1, '2017-08-31 21:00:00', '2017-09-04 10:04:42'),
(38, '12.3', 8, 8, 1, '2017-08-31 21:00:00', '2017-09-04 10:04:42'),
(39, '89.7', 9, 8, 1, '2017-08-31 21:00:00', '2017-09-04 10:04:42'),
(40, '2.15', 10, 8, 1, '2017-08-31 21:00:00', '2017-09-04 10:04:42'),
(41, '34.0', 11, 8, 1, '2017-08-31 21:00:00', '2017-09-04 10:04:42'),
(42, '37.2', 12, 8, 1, '2017-08-31 21:00:00', '2017-09-04 10:04:42'),
(43, '141.5', 13, 8, 1, '2017-08-31 21:00:00', '2017-09-04 10:04:42'),
(44, '7.45', 6, 9, 1, '2017-09-01 21:00:00', '2017-09-04 10:04:42'),
(45, '9.01', 7, 9, 1, '2017-09-01 21:00:00', '2017-09-04 10:04:42'),
(46, '9.3', 8, 9, 1, '2017-09-01 21:00:00', '2017-09-04 10:04:42'),
(47, '94.7', 9, 9, 1, '2017-09-01 21:00:00', '2017-09-04 10:04:42'),
(48, '12.15', 10, 9, 1, '2017-09-01 21:00:00', '2017-09-04 10:04:42'),
(49, '37.0', 11, 9, 1, '2017-09-01 21:00:00', '2017-09-04 10:04:42'),
(50, '30.2', 12, 9, 1, '2017-09-01 21:00:00', '2017-09-04 10:04:42'),
(51, '121.5', 13, 9, 1, '2017-09-01 21:00:00', '2017-09-04 10:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `control_tests`
--

CREATE TABLE `control_tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `control_id` int(10) UNSIGNED NOT NULL,
  `lot_id` int(10) UNSIGNED NOT NULL,
  `performed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `control_tests`
--

INSERT INTO `control_tests` (`id`, `control_id`, `lot_id`, `performed_by`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Msiska', 1, '2017-08-24 21:00:00', '2017-09-04 10:04:42'),
(2, 1, 1, 'Katayi', 1, '2017-08-25 21:00:00', '2017-09-04 10:04:42'),
(3, 1, 1, 'Msiska', 1, '2017-08-26 21:00:00', '2017-09-04 10:04:42'),
(4, 1, 1, 'Kweyu', 1, '2017-08-27 21:00:00', '2017-09-04 10:04:42'),
(5, 1, 1, 'Kweyu', 1, '2017-08-28 21:00:00', '2017-09-04 10:04:42'),
(6, 1, 1, 'Tiwonge', 1, '2017-08-29 21:00:00', '2017-09-04 10:04:42'),
(7, 1, 1, 'Mukulu', 1, '2017-08-30 21:00:00', '2017-09-04 10:04:42'),
(8, 1, 1, 'Tiwonge', 1, '2017-08-31 21:00:00', '2017-09-04 10:04:42'),
(9, 1, 1, 'Tiwonge', 1, '2017-09-01 21:00:00', '2017-09-04 10:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `critical`
--

CREATE TABLE `critical` (
  `id` int(10) UNSIGNED NOT NULL,
  `parameter` int(10) UNSIGNED NOT NULL,
  `gender` tinyint(3) UNSIGNED NOT NULL,
  `age_min` int(11) DEFAULT NULL,
  `age_max` int(11) DEFAULT NULL,
  `normal_lower` decimal(5,2) DEFAULT NULL,
  `normal_upper` decimal(5,2) DEFAULT NULL,
  `critical_low` decimal(5,2) DEFAULT NULL,
  `critical_high` decimal(5,2) DEFAULT NULL,
  `unit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `critical_report`
--

CREATE TABLE `critical_report` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `measure_id` int(10) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED NOT NULL,
  `test_category_id` int(10) UNSIGNED NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `age` decimal(5,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `culture_worksheet`
--

CREATE TABLE `culture_worksheet` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `observation` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disc_diffusion_guidelines`
--

CREATE TABLE `disc_diffusion_guidelines` (
  `id` int(10) UNSIGNED NOT NULL,
  `resistant` int(10) UNSIGNED NOT NULL,
  `intermediate` int(10) UNSIGNED NOT NULL,
  `susceptible` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `min_resistant` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `name`) VALUES
(1, 'Malaria'),
(2, 'Typhoid'),
(3, 'Shigella Dysentry'),
(4, 'Tuberculosis (MDR/XDR)');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Erythromycin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Kanamycin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Neomycin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Novobiocin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Penicillin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Streptomycin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Tetracycline', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Chloramphenicol', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Amikacin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Amdinocillin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Vancomycin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Levofloxacin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Ciprofloxacin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Ampicillin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Ceftriaxone', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Oxacillin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Nalidixic acid', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Augmentin', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Trimethoprim-Sulphamethoxazole', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `drug_concentration`
--

CREATE TABLE `drug_concentration` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drug_susceptibility`
--

CREATE TABLE `drug_susceptibility` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `organism_id` int(10) UNSIGNED NOT NULL,
  `drug_id` int(10) UNSIGNED NOT NULL,
  `zone` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `interpretation` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equip_config`
--

CREATE TABLE `equip_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `equip_id` int(10) UNSIGNED NOT NULL,
  `prop_id` int(10) UNSIGNED NOT NULL,
  `prop_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `equip_config`
--

INSERT INTO `equip_config` (`id`, `equip_id`, `prop_id`, `prop_value`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '5150', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(2, 1, 2, 'client', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(3, 1, 3, 'chameleon', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(4, 1, 4, 'yes', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(5, 3, 5, '10', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(6, 3, 6, '9600', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(7, 3, 7, 'None', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(8, 3, 8, '1', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(9, 3, 9, 'No', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(10, 3, 10, '8', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(11, 3, 11, 'No', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(12, 2, 12, 'create ODBC datasource to the equipment db and put', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(13, 2, 13, '0', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(14, 4, 5, '10', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(15, 4, 6, '9600', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(16, 4, 7, 'None', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(17, 4, 8, '1', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(18, 4, 9, 'No', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(19, 4, 10, '8', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(20, 4, 11, 'No', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(21, 5, 1, '5150', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(22, 5, 2, 'server', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(23, 5, 3, 'no', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(24, 5, 4, 'set the Analyzer PC IP address here', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(25, 6, 14, '', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(26, 6, 15, '', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(27, 6, 16, '', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(28, 6, 17, '', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(29, 6, 18, '', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(30, 6, 19, '', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(31, 7, 5, '10', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(32, 7, 6, '9600', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(33, 7, 7, 'None', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(34, 7, 8, '1', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(35, 7, 9, 'No', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(36, 7, 10, '8', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(37, 7, 11, 'No', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(38, 8, 5, '10', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(39, 8, 6, '9600', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(40, 8, 7, 'None', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(41, 8, 8, '1', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(42, 8, 9, 'No', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(43, 8, 10, '8', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(44, 8, 11, 'No', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(45, 9, 1, '5150', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(46, 9, 2, 'server', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(47, 9, 3, 'no', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(48, 9, 4, 'set the Analyzer PC IP address here', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(49, 10, 5, '10', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(50, 10, 6, '9600', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(51, 10, 7, 'None', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(52, 10, 8, '1', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(53, 10, 9, 'No', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(54, 10, 10, '8', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(55, 10, 11, 'No', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(56, 11, 1, '5150', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(57, 11, 2, 'server', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(58, 11, 3, 'no', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(59, 11, 4, 'set the Analyzer PC IP address here', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(60, 12, 1, '5150', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(61, 12, 2, 'server', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(62, 12, 3, 'no', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(63, 12, 4, 'set the Analyzer PC IP address here', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `external_dump`
--

CREATE TABLE `external_dump` (
  `id` int(10) UNSIGNED NOT NULL,
  `lab_no` int(11) NOT NULL,
  `parent_lab_no` int(11) NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `requesting_clinician` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `investigation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provisional_diagnosis` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_date` timestamp NULL DEFAULT NULL,
  `order_stage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` text COLLATE utf8_unicode_ci,
  `result_returned` int(11) DEFAULT NULL,
  `patient_visit_number` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receipt_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receipt_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `waiver_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `external_users`
--

CREATE TABLE `external_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `internal_user_id` int(10) UNSIGNED NOT NULL,
  `external_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grainstain_tests`
--

CREATE TABLE `grainstain_tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `result` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ii_quickcodes`
--

CREATE TABLE `ii_quickcodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `feed_source` tinyint(4) NOT NULL,
  `config_prop` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ii_quickcodes`
--

INSERT INTO `ii_quickcodes` (`id`, `feed_source`, `config_prop`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'PORT', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(2, 1, 'MODE', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(3, 1, 'CLIENT_RECONNECT', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(4, 1, 'EQUIPMENT_IP', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(5, 0, 'COMPORT', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(6, 0, 'BAUD_RATE', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(7, 0, 'PARITY', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(8, 0, 'STOP_BITS', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(9, 0, 'APPEND_NEWLINE', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(10, 0, 'DATA_BITS', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(11, 0, 'APPEND_CARRIAGE_RETURN', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(12, 2, 'DATASOURCE', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(13, 2, 'DAYS', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(14, 4, 'BASE_DIRECTORY', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(15, 4, 'USE_SUB_DIRECTORIES', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(16, 4, 'SUB_DIRECTORY_FORMAT', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(17, 4, 'FILE_NAME_FORMAT', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(18, 4, 'FILE_EXTENSION', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(19, 4, 'FILE_SEPERATOR', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `instruments`
--

CREATE TABLE `instruments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driver_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instruments`
--

INSERT INTO `instruments` (`id`, `name`, `ip`, `hostname`, `description`, `driver_name`, `created_at`, `updated_at`) VALUES
(1, 'Celltac F Mek 8222', '192.168.1.12', 'HEMASERVER', 'Automatic analyzer with 22 parameters and WBC 5 part diff Hematology Analyzer', 'KBLIS\\Plugins\\CelltacFMachine', '2017-09-04 10:04:42', '2017-09-04 10:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `instrument_testtypes`
--

CREATE TABLE `instrument_testtypes` (
  `instrument_id` int(10) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instrument_testtypes`
--

INSERT INTO `instrument_testtypes` (`instrument_id`, `test_type_id`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `interfaced_equipment`
--

CREATE TABLE `interfaced_equipment` (
  `id` int(10) UNSIGNED NOT NULL,
  `equipment_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `comm_type` tinyint(4) NOT NULL,
  `equipment_version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lab_section` int(10) UNSIGNED NOT NULL,
  `feed_source` tinyint(4) NOT NULL,
  `config_file` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interfaced_equipment`
--

INSERT INTO `interfaced_equipment` (`id`, `equipment_name`, `comm_type`, `equipment_version`, `lab_section`, `feed_source`, `config_file`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Mindray BS-200E', 2, '01.00.07', 1, 1, '\\BLISInterfaceClient\\configs\\BT3000Plus\\bt3000pluschameleon.xml', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(2, 'ABX Pentra 60 C+', 2, '', 1, 2, '\\BLISInterfaceClient\\configs\\pentra\\pentra60cplus.xml', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(3, 'ABX MACROS 60', 1, '', 1, 0, '\\BLISInterfaceClient\\configs\\micros60\\abxmicros60.xml', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(4, 'BT 3000 Plus', 1, '', 1, 0, '\\BLISInterfaceClient\\configs\\BT3000Plus\\bt3000plus.xml', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(5, 'Sysmex SX 500i', 1, '', 1, 1, '\\BLISInterfaceClient\\configs\\SYSMEX\\SYSMEXXS500i.xml', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(6, 'BD FACSCalibur', 1, '', 1, 4, '\\BLISInterfaceClient\\configs\\BDFACSCalibur\\bdfacscalibur.xml', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(7, 'Mindray BC 3600', 1, '', 1, 0, '\\BLISInterfaceClient\\configs\\mindray\\mindraybc3600.xml', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(8, 'Selectra Junior', 1, '', 1, 0, '\\BLISInterfaceClient\\configs\\selectrajunior\\selectrajunior.xml', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(9, 'GeneXpert', 2, '', 1, 1, '\\BLISInterfaceClient\\configs\\geneXpert\\genexpert.xml', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(10, 'ABX Pentra 80', 2, '', 1, 0, '\\BLISInterfaceClient\\configs\\pentra80\\abxpentra80.xml', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(11, 'Sysmex XT 2000i', 1, '', 1, 1, '\\BLISInterfaceClient\\configs\\SYSMEX\\SYSMEXXT2000i.xml', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(12, 'Vitalex Flexor', 1, '', 1, 1, '\\BLISInterfaceClient\\configs\\flexorE\\flexore.xml', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `inv_items`
--

CREATE TABLE `inv_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_level` decimal(8,2) NOT NULL,
  `max_level` decimal(8,2) DEFAULT NULL,
  `storage_req` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_supply`
--

CREATE TABLE `inv_supply` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `lot` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_no` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry_date` datetime NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `quantity_ordered` int(11) NOT NULL DEFAULT '0',
  `quantity_supplied` int(11) NOT NULL DEFAULT '0',
  `cost_per_unit` decimal(5,2) DEFAULT NULL,
  `date_of_order` date DEFAULT NULL,
  `date_of_supply` date DEFAULT NULL,
  `date_of_reception` date NOT NULL,
  `remarks` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_usage`
--

CREATE TABLE `inv_usage` (
  `id` int(10) UNSIGNED NOT NULL,
  `stock_id` int(10) UNSIGNED NOT NULL,
  `request_id` int(10) UNSIGNED NOT NULL,
  `quantity_used` int(11) NOT NULL DEFAULT '0',
  `date_of_usage` date NOT NULL,
  `issued_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `received_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lots`
--

CREATE TABLE `lots` (
  `id` int(10) UNSIGNED NOT NULL,
  `lot_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lots`
--

INSERT INTO `lots` (`id`, `lot_no`, `description`, `expiry`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '0001', 'First lot', '2018-03-04', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42'),
(2, '0002', 'Second lot', '2018-04-04', NULL, '2017-09-04 10:04:42', '2017-09-04 10:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `measures`
--

CREATE TABLE `measures` (
  `id` int(10) UNSIGNED NOT NULL,
  `measure_type_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `measures`
--

INSERT INTO `measures` (`id`, `measure_type_id`, `name`, `unit`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Red blood cells (RBC)', 'x10¹²/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 1, 'Hematocrit', '%', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(3, 1, 'Haemoglobin', 'g/dl', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(4, 1, 'White blood cells (WBC)', 'x10⁹/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(5, 1, 'Neutrophils', '%', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(6, 1, 'Lymphocytes', '%', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(7, 1, 'Monocytes', '%', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(8, 1, 'Eosinophils', '%', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(9, 1, 'Basophils', '%', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(10, 1, 'Platelets', 'x10⁹/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(11, 1, 'Erythrocyte sedimentation rate (ESR)', 'mm/h', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(12, 1, 'Reticulocyte count', '%', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(13, 4, 'Sickling test', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(14, 4, 'Blood grouping', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(15, 4, 'Du test', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(16, 4, 'Cross Match', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(17, 4, 'Indirect coombs test', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(18, 4, 'Direct coombs test', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(19, 2, 'Malaria', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(20, 1, 'PH', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(21, 1, 'Specific Gravity', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(22, 2, 'Glucose', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(23, 2, 'Ketones', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(24, 2, 'Nitrites', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(25, 2, 'Leucocytes', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(26, 2, 'Proteins', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(27, 2, 'Urobilinogen', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(28, 2, 'Blood', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(29, 2, 'Bilirubin', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(30, 2, 'Pus cells', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(31, 2, 'Schistosoma haematobium', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(32, 2, 'Trichomona Vaginalis', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(33, 2, 'Yeast cells', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(34, 2, 'Bacteria', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(35, 2, 'Spermatozoa', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(36, 2, 'Urine Culture', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(37, 2, 'Taenia spp.', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(38, 2, 'H. nana', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(39, 2, 'H. diminuta', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(40, 2, 'Hookworm', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(41, 2, 'Roundworms', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(42, 2, 'S. mansoni', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(43, 2, 'Trichuris trichiura', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(44, 2, 'Strongyloides stercoralis', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(45, 2, 'Isospora belli', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(46, 2, 'Entamoeba hystolytica', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(47, 2, 'Giardia lamblia', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(48, 2, 'Stool culture', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(49, 2, 'Pus swab culture', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(50, 4, 'Pus swab gram stain', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(51, 2, 'Throat swab culture', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(52, 4, 'Throat swab gram stain', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(53, 2, 'High vaginal swab culture', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(54, 4, 'High vaginal swab gram stain', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(55, 2, 'Urethral swab culture', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(56, 4, 'Urethral swab gram stain', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(57, 2, 'Ascitic fluid culture', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(58, 2, 'Pleural effusion culture', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(59, 2, 'CSF culture', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(60, 4, 'CSF for Indian ink test', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(61, 4, 'Sputum for AFB', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(62, 4, 'MDR TB', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(63, 1, 'CSF glucose analysis', 'mmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(64, 1, 'CSF protein analysis', 'mg/dl', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(65, 1, 'SGOT/AST', 'U/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(66, 1, 'SGPT/ALT', 'U/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(67, 1, 'Total Protein', 'g/dl', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(68, 1, 'Albumin', 'g/dl', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(69, 1, 'Total Bilirubin', 'mg/dl', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(70, 1, 'Direct Bilirubin', 'mg/dl', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(71, 1, 'Alkaline Phosphatase', 'U/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(72, 1, 'Gamma GT', 'U/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(73, 1, 'Urea', 'mmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(74, 1, 'Potassium', 'mmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(75, 1, 'Sodium', 'mmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(76, 1, 'Chloride', 'mmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(77, 1, 'Creatinine', 'µmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(78, 1, 'Phosphorous', 'mmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(79, 1, 'Uric acid', 'µmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(80, 1, 'Calcium', 'mg/dl', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(81, 1, 'Amylase', 'U/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(82, 1, 'Total cholestrol', 'mmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(83, 1, 'LDL', 'mmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(84, 1, 'HDL', 'mmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(85, 1, 'Triglycerides', 'mmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(86, 1, 'Fasting blood sugar', 'mmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(87, 1, 'Random Blood sugar', 'mmol/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(88, 1, 'OGTT', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(89, 1, 'HBA1C', '%', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(90, 4, 'Occult blood test', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(91, 1, 'Thyroid stimulating hormone (TSH)', 'µU/ml', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(92, 1, 'Thyroxine (T4)', 'ng/dl', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(93, 1, 'Triiodothyromine (T3)', 'ng/dl', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(94, 4, 'Pregnancy test (HCG)', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(95, 2, 'Rapid Plasma Reagin (RPR)/VDRL', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(96, 2, 'Helicobacter pylori', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(97, 2, 'Hepatitis B test (HBs Ag)', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(98, 2, 'Hepatitis C test', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(99, 2, 'Rheumatoid factor', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(100, 2, 'ASOT test', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(101, 4, 'PSA screening', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(102, 4, 'HIV rapid testing', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(103, 4, 'Early infant diagnosis', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(104, 1, 'CD4 count', 'cells/mm3 ', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(105, 1, 'CD4 %', '%', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(106, 4, 'HIV ELISA', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(107, 2, 'Viral Load', 'copies/ml', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(108, 1, 'Bleeding time', 'minutes', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(109, 1, 'Platelets Count', 'x10⁹/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(110, 1, 'International Normalized Ratio (INR)', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(111, 1, 'Activated Partial prothrombin time', 'Seconds', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(112, 1, 'Acid Phosphatase', 'U/L', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(113, 4, 'Bence Jones proteins', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(114, 4, 'Vibrio cholerae', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(115, 4, 'Blood culture', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(116, 4, 'Water', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(117, 4, 'Food', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(118, 4, 'Borelia', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(119, 4, 'Microfilariae', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(120, 4, 'Trypanosomes', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(121, 4, 'HB electrophoresis', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(122, 4, 'Bone marrow aspirates', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(123, 4, 'Peripheral Blood films', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(124, 4, 'Fungi', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(125, 4, 'Tissue Impression', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(126, 4, 'Fine Needle aspirates Thyroid', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(127, 4, 'Fine Needle aspirates Lymph node', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(128, 4, 'Fine Needle aspirates Liver', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(129, 4, 'Fine Needle aspirates Breast', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(130, 4, 'Fine Needle aspirates soft tissue masses', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(131, 4, 'Pap Smear', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(132, 4, 'Ascitic fluid', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(133, 4, 'CSF', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(134, 4, 'Pleural fluid', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(135, 4, 'Cervix tissue', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(136, 4, 'Prostrate tissue', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(137, 4, 'Breast Tissue', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(138, 4, 'Ovarian cyst', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(139, 4, 'Fibroids', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(140, 4, 'Lymph nodes tissue', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(141, 2, 'Hepatitis A test', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(142, 2, 'Brucella test', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(143, 2, 'Widal Test', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(144, 2, 'TPHA', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(145, 4, 'Cryptococcal antigen (CRAG) Test', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(146, 1, 'Carcinoembryonic antigen test (CEA)', 'ng/ml', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(147, 1, 'Cancer antigen 15-3 (C15-3)', 'U/mL', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(148, 4, 'Touch preparations', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(149, 4, 'Bone marrow aspirate', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(150, 4, 'Trephine biopsy', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(151, 4, 'Ovary tissue', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(152, 4, 'Uterus tissue', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(153, 4, 'Skin tissue', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(154, 4, 'Head and Neck tissue', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(155, 4, 'Dental tissue', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(156, 4, 'Gastro intestinal tract (GIT) tissue', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `measure_ranges`
--

CREATE TABLE `measure_ranges` (
  `id` int(10) UNSIGNED NOT NULL,
  `measure_id` int(10) UNSIGNED NOT NULL,
  `age_min` int(10) UNSIGNED DEFAULT NULL,
  `age_max` int(10) UNSIGNED DEFAULT NULL,
  `gender` tinyint(3) UNSIGNED DEFAULT NULL,
  `range_lower` decimal(7,3) DEFAULT NULL,
  `range_upper` decimal(7,3) DEFAULT NULL,
  `alphanumeric` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interpretation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `measure_ranges`
--

INSERT INTO `measure_ranges` (`id`, `measure_id`, `age_min`, `age_max`, `gender`, `range_lower`, `range_upper`, `alphanumeric`, `interpretation`, `deleted_at`) VALUES
(1, 1, 12, 100, 0, '4.400', '5.700', '', '', NULL),
(2, 1, 12, 100, 1, '4.000', '5.200', '', '', NULL),
(3, 2, 12, 100, 0, '42.000', '52.000', '', '', NULL),
(4, 2, 12, 100, 1, '37.000', '46.000', '', '', NULL),
(5, 3, 12, 100, 0, '14.000', '17.400', '', '', NULL),
(6, 3, 12, 100, 1, '12.300', '15.700', '', '', NULL),
(7, 4, 12, 100, 2, '4.000', '10.000', '', '', NULL),
(8, 5, 12, 100, 2, '45.000', '75.000', '', '', NULL),
(9, 6, 12, 100, 2, '16.000', '46.000', '', '', NULL),
(10, 7, 12, 100, 2, '4.000', '11.000', '', '', NULL),
(11, 8, 12, 100, 2, '0.000', '8.000', '', '', NULL),
(12, 9, 12, 100, 2, '0.000', '3.000', '', '', NULL),
(13, 10, 0, 100, 2, '150.000', '400.000', '', '', NULL),
(14, 11, 12, 100, 0, '0.000', '6.000', '', '', NULL),
(15, 11, 12, 100, 1, '0.000', '10.000', '', '', NULL),
(16, 5, 12, 100, 2, '45.000', '75.000', '', '', NULL),
(17, 6, 12, 100, 2, '16.000', '46.000', '', '', NULL),
(18, 7, 12, 100, 2, '4.000', '11.000', '', '', NULL),
(19, 8, 12, 100, 2, '0.000', '8.000', '', '', NULL),
(20, 9, 12, 100, 2, '0.000', '3.000', '', '', NULL),
(21, 3, 17, 100, 0, '14.000', '17.400', '', '', NULL),
(22, 3, 17, 100, 1, '12.300', '15.700', '', '', NULL),
(23, 12, 3, 100, 2, '0.500', '2.500', '', '', NULL),
(24, 13, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(25, 13, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(26, 14, 0, 0, 0, '0.000', '0.000', 'Blood Group A+', 'Blood Group A+', NULL),
(27, 14, 0, 0, 0, '0.000', '0.000', 'AB+', 'AB+', NULL),
(28, 14, 0, 0, 0, '0.000', '0.000', 'B+', 'B+', NULL),
(29, 14, 0, 0, 0, '0.000', '0.000', 'O+A-', 'O+A-', NULL),
(30, 14, 0, 0, 0, '0.000', '0.000', 'AB-', 'AB-', NULL),
(31, 14, 0, 0, 0, '0.000', '0.000', 'B-', 'B-', NULL),
(32, 14, 0, 0, 0, '0.000', '0.000', 'O-', 'O-', NULL),
(33, 15, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(34, 16, 0, 0, 0, '0.000', '0.000', 'Compatible', 'Compatible', NULL),
(35, 16, 0, 0, 0, '0.000', '0.000', 'Incompatible', 'Incompatible', NULL),
(36, 17, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(37, 17, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(38, 18, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(39, 18, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(40, 19, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(41, 19, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(42, 20, 0, 100, 2, '5.000', '7.000', '', '', NULL),
(43, 21, 0, 100, 2, '0.000', '0.000', '', '', NULL),
(44, 22, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(45, 23, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(46, 24, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(47, 25, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(48, 26, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(49, 27, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(50, 28, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(51, 29, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(52, 30, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(53, 31, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(54, 32, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(55, 33, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(56, 1, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(57, 34, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(58, 35, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(59, 36, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(60, 37, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(61, 38, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(62, 39, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(63, 40, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(64, 41, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(65, 42, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(66, 43, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(67, 44, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(68, 45, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(69, 46, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(70, 47, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(71, 48, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(72, 49, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(73, 50, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(74, 51, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(75, 52, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(76, 53, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(77, 54, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(78, 55, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(79, 56, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(80, 57, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(81, 58, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(82, 59, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(83, 60, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(84, 61, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(85, 62, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(86, 63, 0, 100, 2, '2.800', '4.400', '', '', NULL),
(87, 64, 0, 100, 2, '20.000', '40.000', '', '', NULL),
(88, 65, 0, 100, 2, '0.000', '35.000', '', '', NULL),
(89, 66, 0, 100, 2, '3.000', '36.000', '', '', NULL),
(90, 67, 0, 100, 2, '60.000', '80.000', '', '', NULL),
(91, 68, 0, 100, 2, '3.500', '5.000', '', '', NULL),
(92, 69, 0, 100, 2, '0.000', '1.500', '', '', NULL),
(93, 70, 0, 100, 2, '0.000', '0.400', '', '', NULL),
(94, 71, 0, 100, 2, '35.000', '100.000', '', '', NULL),
(95, 72, 0, 100, 0, '8.000', '61.000', '', '', NULL),
(96, 72, 0, 100, 1, '5.000', '36.000', '', '', NULL),
(97, 73, 0, 100, 2, '2.500', '8.000', '', '', NULL),
(98, 74, 0, 100, 2, '3.500', '5.000', '', '', NULL),
(99, 75, 0, 100, 2, '135.000', '145.000', '', '', NULL),
(100, 76, 0, 100, 2, '96.000', '105.000', '', '', NULL),
(101, 77, 0, 100, 0, '70.000', '120.000', '', '', NULL),
(102, 77, 0, 100, 1, '50.000', '90.000', '', '', NULL),
(103, 78, 0, 100, 2, '0.800', '1.500', '', '', NULL),
(104, 79, 0, 100, 2, '180.000', '420.000', '', '', NULL),
(105, 80, 0, 100, 2, '8.700', '10.300', '', '', NULL),
(106, 81, 0, 100, 2, '0.000', '160.000', '', '', NULL),
(107, 82, 0, 100, 2, '0.000', '5.200', '', '', NULL),
(108, 83, 0, 100, 2, '0.000', '2.000', '', '', NULL),
(109, 84, 0, 100, 2, '0.000', '1.000', '', '', NULL),
(110, 85, 0, 100, 2, '0.000', '2.200', '', '', NULL),
(111, 86, 0, 100, 2, '3.300', '5.800', '', '', NULL),
(112, 87, 0, 100, 2, '4.400', '7.800', '', '', NULL),
(113, 88, 0, 100, 2, '0.000', '0.000', '', '', NULL),
(114, 89, 0, 100, 2, '4.000', '6.000', '', '', NULL),
(115, 90, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(116, 90, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(117, 91, 0, 100, 2, '0.400', '5.000', '', '', NULL),
(118, 92, 0, 100, 2, '0.700', '1.200', '', '', NULL),
(119, 93, 0, 100, 2, '227.000', '422.000', '', '', NULL),
(120, 94, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(121, 94, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(122, 95, 0, 0, 0, '0.000', '0.000', 'Reactive', 'Reactive', NULL),
(123, 95, 0, 0, 0, '0.000', '0.000', 'Non-reactive', 'Non-reactive', NULL),
(124, 96, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(125, 96, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(126, 97, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(127, 97, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(128, 98, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(129, 98, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(130, 99, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(131, 99, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(132, 100, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(133, 100, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(134, 101, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(135, 102, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(136, 102, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(137, 102, 0, 0, 0, '0.000', '0.000', 'Discrepant', 'Discrepant', NULL),
(138, 102, 0, 0, 0, '0.000', '0.000', 'Discordant', 'Discordant', NULL),
(139, 103, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(140, 103, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(141, 104, 0, 100, 2, '500.000', '1600.000', '', '', NULL),
(142, 105, 0, 100, 2, '25.000', '65.000', '', '', NULL),
(143, 106, 0, 0, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(144, 106, 0, 0, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(145, 107, 0, 0, 0, '0.000', '0.000', '', '', NULL),
(146, 108, 0, 100, 2, '1.000', '9.000', '', '', NULL),
(147, 109, 0, 100, 2, '150.000', '400.000', '', '', NULL),
(148, 110, 0, 100, 2, '0.900', '1.200', '', '', NULL),
(149, 111, 0, 100, 2, '30.000', '50.000', '', '', NULL),
(150, 112, 0, 100, 2, '0.000', '0.800', '', '', NULL),
(151, 113, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(152, 114, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(153, 115, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(154, 116, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(155, 117, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(156, 118, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(157, 119, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(158, 120, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(159, 121, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(160, 122, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(161, 123, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(162, 124, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(163, 125, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(164, 126, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(165, 127, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(166, 128, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(167, 129, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(168, 130, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(169, 131, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(170, 132, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(171, 133, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(172, 134, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(173, 135, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(174, 136, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(175, 137, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(176, 138, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(177, 139, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(178, 140, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(179, 141, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(180, 142, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(181, 143, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(182, 144, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(183, 145, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(184, 96, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(185, 146, 0, 100, 2, '0.000', '0.000', '', '', NULL),
(186, 147, 0, 100, 2, '0.000', '0.000', '', '', NULL),
(187, 19, 0, 100, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(188, 19, 0, 100, 0, '0.000', '0.000', 'Negative', 'Negative', NULL),
(189, 62, 0, 100, 0, '0.000', '0.000', 'Positive', 'Positive', NULL),
(190, 62, 0, 100, 0, '0.000', '0.000', 'Negatvie', 'Negatvie', NULL),
(191, 148, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(192, 149, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(193, 150, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(194, 151, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(195, 152, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(196, 153, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(197, 154, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(198, 155, 0, 100, 0, '0.000', '0.000', '', '', NULL),
(199, 156, 0, 100, 0, '0.000', '0.000', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `measure_types`
--

CREATE TABLE `measure_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `measure_types`
--

INSERT INTO `measure_types` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Numeric Range', NULL, '2017-09-04 10:04:41', '2017-09-04 10:04:41'),
(2, 'Alphanumeric Values', NULL, '2017-09-04 10:04:41', '2017-09-04 10:04:41'),
(3, 'Autocomplete', NULL, '2017-09-04 10:04:41', '2017-09-04 10:04:41'),
(4, 'Free Text', NULL, '2017-09-04 10:04:41', '2017-09-04 10:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `micro_critical`
--

CREATE TABLE `micro_critical` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_07_24_082711_CreatekBLIStables', 1),
('2014_09_02_114206_entrust_setup_tables', 1),
('2014_10_09_162222_externaldumptable', 1),
('2015_02_04_004704_add_index_to_parentlabno', 1),
('2015_02_11_112608_remove_unique_constraint_on_patient_number', 1),
('2015_02_17_104134_qc_tables', 1),
('2015_02_23_112018_create_microbiology_tables', 1),
('2015_03_16_155558_create_surveillance', 1),
('2015_06_24_145526_update_test_types_table', 1),
('2015_06_24_154426_FreeTestsColumn', 1),
('2016_03_30_145749_lab_config_settings', 1),
('2016_04_05_093952_create_require_verifications_table', 1),
('2016_04_12_093617_update_inventory_tables', 1),
('2016_07_08_105124_audit-tables', 1),
('2016_08_22_154145_create_critical_values_tables', 1),
('2016_08_25_122122_create_critical_report', 1),
('2017_05_23_121657_create_graistain_table', 1),
('2017_05_23_131442_create_biochemical_worksheet', 1),
('2017_05_24_112959_create_disc_diffusion_guidelines', 1),
('2017_05_25_112531_add_drug_concentration_table', 1),
('2017_05_25_130109_add_minimum_drug_inhibitory_concentration_table', 1),
('2017_06_12_155807_biochemical_tests_table', 1),
('2017_06_13_101638_add_min_resistant_to_disc_diffusion_guidelines', 1),
('2017_08_31_103025_add_organism_drug_disc_diffusion', 1),
('2017_09_02_224636_add_other_names_column', 1),
('2017_09_03_163018_remove_drug_id_column', 1);

-- --------------------------------------------------------

--
-- Table structure for table `minimum_drug_inhibitory_concentrations`
--

CREATE TABLE `minimum_drug_inhibitory_concentrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `organism_id` int(10) UNSIGNED NOT NULL,
  `drug_id` int(10) UNSIGNED NOT NULL,
  `concentration` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `interpretation` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organisms`
--

CREATE TABLE `organisms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organisms`
--

INSERT INTO `organisms` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Escherichia coli', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Klebsiella', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Proteus spp', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Pseudomonas aeruginosa', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Staphylococcus', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Enterococcus', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Candida albicans', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Adenovirus type 11', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Enterobacter', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Enterococcus faecalis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Coliforms', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Shigella', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Vibrio cholerae O1', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Vibrio cholerae O 139', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Salmonella species', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Yersinia enterocolitica', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Campylobacter jejuni', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Yersinia pestis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Streptococci pyogenes', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Klebsiella spp', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Bacillus anthracis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Neisseria meningitidis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Neisseria gonorrhoeae', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Streptococci pneumoniae', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Cryptococcus neoformans', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Cryptococcus meningitis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Gardinerella vaginalis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Trichomonas vaginalis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Vibro cholerae O1', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Vibro cholerae O 139', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Mycobacterium tuberculosis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Streptococcus Pneumoniae', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Pseudomonas spp', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Staphylococcus spp', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Enterococcus spp', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Bacillus spp', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Group D Streptococcus', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Klebsiella pneumoniae', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Group A beta haemolytic streptococcus', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Corynebacterium Diptheriae', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Neisseria meningitides', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Streptococcus Group A', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Enterococci', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Staphylococcus aureus', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Bacteroids', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Clostridium', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Staphylococci aureus', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Pseudomonas', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Haemophillus spp', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Haemophilus influenzae', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Streptococcus pyogenes', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `organism_drugs`
--

CREATE TABLE `organism_drugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `organism_id` int(10) UNSIGNED NOT NULL,
  `drug_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organism_drugs`
--

INSERT INTO `organism_drugs` (`id`, `organism_id`, `drug_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 1, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 1, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 1, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 1, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 1, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 2, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 2, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 2, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 2, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 2, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 2, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 2, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 2, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 2, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 2, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 2, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 2, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 2, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 2, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 2, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 2, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 2, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 2, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 2, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 3, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 3, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 3, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 3, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 3, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 3, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 3, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 3, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 3, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 3, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 3, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 3, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 3, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 3, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 3, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 3, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 3, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 3, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 3, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 4, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 4, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 4, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 4, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 4, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 4, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 4, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 4, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 4, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 4, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 4, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 4, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 4, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 4, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 4, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 4, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 4, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 4, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 4, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 5, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 5, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 5, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 5, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 5, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 5, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 5, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 5, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 5, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 5, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 5, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 5, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 5, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 5, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 5, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 5, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 5, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 5, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 5, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 6, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 6, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 6, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 6, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 6, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 6, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 6, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 6, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 6, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 6, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 6, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 6, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 6, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 6, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 6, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 6, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 6, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 6, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 6, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 7, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 7, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 7, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 7, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 7, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 7, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 7, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 7, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 7, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 7, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 7, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 7, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 7, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 7, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 7, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 7, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 7, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 7, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 7, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 8, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 8, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 8, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 8, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 8, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 8, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 8, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 8, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 8, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 8, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 8, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 8, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 8, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 8, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 8, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 8, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 8, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 8, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 8, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 9, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 9, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 9, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 9, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 9, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 9, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 9, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 9, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 9, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 9, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 9, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 9, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 9, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 9, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 9, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 9, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 9, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 9, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 9, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 10, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 10, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 10, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 10, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 10, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 10, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 10, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 10, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 10, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 10, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 10, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 10, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 10, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 10, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 10, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 10, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 10, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 10, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 10, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 11, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 11, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 11, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 11, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 11, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 11, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 11, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 11, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 11, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 11, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 11, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 11, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 11, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 11, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 11, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 11, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 11, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 11, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 11, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 12, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 12, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 12, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 12, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 12, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 12, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 12, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 12, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 12, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 12, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 12, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 12, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 12, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 12, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 12, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 12, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 12, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 12, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 12, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 13, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 13, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 13, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 13, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 13, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 13, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 13, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 13, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 13, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 13, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 13, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 13, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 13, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 13, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 13, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 13, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 13, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 13, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 13, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 14, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 14, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 14, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 14, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 14, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 14, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 14, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 14, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 14, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 14, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 14, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 14, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 14, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 14, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 14, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 14, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 14, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 14, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 14, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 15, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 15, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 15, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 15, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 15, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 15, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 15, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 15, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 15, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 15, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 15, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 15, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 15, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 15, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 15, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 15, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 15, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 15, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 15, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 16, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 16, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 16, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 16, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 16, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 16, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 16, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 16, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 16, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 16, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 16, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 16, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 16, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 16, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 16, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 16, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 16, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 16, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 16, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 17, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 17, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 17, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 17, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 17, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 17, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 17, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 17, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 17, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 17, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 17, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 17, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 17, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 17, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 17, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 17, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 17, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 17, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 17, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 18, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 18, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 18, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 18, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 18, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 18, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 18, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 18, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 18, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 18, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 18, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 18, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 18, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 18, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 18, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 18, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 18, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 18, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 18, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 19, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 19, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 19, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 19, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 19, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 19, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 19, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 19, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 19, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 19, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 19, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 19, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 19, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 19, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 19, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 19, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 19, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 19, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 19, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 20, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 20, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 20, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 20, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 20, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 20, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 20, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 20, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 20, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 20, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 20, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 20, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 20, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 20, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 20, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 20, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 20, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 20, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 20, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 21, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 21, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 21, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 21, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 21, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 21, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 21, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 21, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 21, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 21, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 21, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 21, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 21, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 21, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 21, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 21, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 21, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 21, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 21, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 22, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 22, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 22, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 22, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 22, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 22, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 22, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 22, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 22, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 22, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 22, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 22, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 22, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 22, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 22, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 22, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 22, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 22, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 22, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 23, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 23, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 23, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 23, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 23, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 23, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 23, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 23, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 23, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 23, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 23, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 23, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 23, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 23, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 23, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 23, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 23, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 23, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 23, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 24, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 24, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 24, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 24, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 24, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 24, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 24, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 24, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 24, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 24, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 24, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 24, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 24, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 24, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 24, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 24, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 24, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 24, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 24, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 25, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 25, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 25, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 25, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 25, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 25, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 25, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 25, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 25, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 25, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 25, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 25, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 25, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 25, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 25, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 25, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 25, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 25, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 25, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 26, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 26, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 26, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 26, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 26, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 26, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 26, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 26, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 26, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 26, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 26, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 26, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 26, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 26, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 26, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 26, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 26, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 26, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, 26, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, 27, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, 27, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, 27, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, 27, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, 27, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, 27, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 27, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 27, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 27, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, 27, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 27, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 27, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 27, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 27, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(509, 27, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, 27, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, 27, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, 27, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 27, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 28, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 28, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 28, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, 28, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, 28, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 28, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 28, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, 28, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, 28, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(523, 28, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, 28, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, 28, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, 28, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, 28, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 28, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 28, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, 28, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, 28, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 28, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, 29, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 29, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 29, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 29, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, 29, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, 29, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, 29, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 29, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, 29, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 29, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(543, 29, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 29, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 29, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 29, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 29, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 29, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, 29, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, 29, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, 29, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, 30, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, 30, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, 30, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 30, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, 30, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 30, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 30, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 30, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 30, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 30, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, 30, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, 30, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, 30, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(565, 30, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, 30, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, 30, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, 30, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 30, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 30, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 31, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 31, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 31, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 31, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 31, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 31, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, 31, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, 31, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, 31, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(580, 31, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, 31, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 31, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, 31, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 31, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, 31, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, 31, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, 31, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, 31, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, 31, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, 32, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(591, 32, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(592, 32, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, 32, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, 32, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, 32, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, 32, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, 32, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, 32, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, 32, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, 32, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, 32, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, 32, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(603, 32, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(604, 32, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(605, 32, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(606, 32, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(607, 32, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(608, 32, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(609, 33, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(610, 33, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(611, 33, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(612, 33, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, 33, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 33, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 33, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, 33, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, 33, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, 33, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(619, 33, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(620, 33, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(621, 33, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, 33, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, 33, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, 33, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, 33, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, 33, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 33, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 34, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 34, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 34, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 34, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, 34, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(633, 34, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, 34, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(635, 34, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, 34, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 34, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, 34, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, 34, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(640, 34, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(641, 34, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(642, 34, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, 34, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, 34, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, 34, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, 34, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(647, 35, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, 35, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, 35, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, 35, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, 35, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(652, 35, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(653, 35, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, 35, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, 35, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, 35, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, 35, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(658, 35, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(659, 35, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, 35, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, 35, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, 35, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, 35, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, 35, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, 35, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, 36, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, 36, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(668, 36, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(669, 36, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(670, 36, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(671, 36, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, 36, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, 36, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, 36, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, 36, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, 36, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, 36, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, 36, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, 36, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(680, 36, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, 36, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, 36, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, 36, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(684, 36, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(685, 37, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(686, 37, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(687, 37, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, 37, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(689, 37, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, 37, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, 37, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(692, 37, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(693, 37, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(694, 37, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(695, 37, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(696, 37, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(697, 37, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(698, 37, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(699, 37, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(700, 37, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(701, 37, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(702, 37, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(703, 37, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(704, 38, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(705, 38, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(706, 38, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(707, 38, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(708, 38, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(709, 38, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(710, 38, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(711, 38, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(712, 38, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(713, 38, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(714, 38, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(715, 38, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(716, 38, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(717, 38, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(718, 38, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(719, 38, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(720, 38, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(721, 38, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(722, 38, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(723, 39, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(724, 39, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(725, 39, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(726, 39, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(727, 39, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(728, 39, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(729, 39, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(730, 39, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(731, 39, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(732, 39, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(733, 39, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(734, 39, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(735, 39, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(736, 39, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(737, 39, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(738, 39, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(739, 39, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(740, 39, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(741, 39, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(742, 40, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(743, 40, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(744, 40, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(745, 40, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(746, 40, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(747, 40, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(748, 40, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(749, 40, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(750, 40, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(751, 40, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(752, 40, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(753, 40, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(754, 40, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(755, 40, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(756, 40, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(757, 40, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(758, 40, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(759, 40, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(760, 40, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(761, 41, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(762, 41, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(763, 41, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(764, 41, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(765, 41, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(766, 41, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(767, 41, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(768, 41, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(769, 41, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(770, 41, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(771, 41, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(772, 41, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(773, 41, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(774, 41, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(775, 41, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(776, 41, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(777, 41, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `organism_drugs` (`id`, `organism_id`, `drug_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(778, 41, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(779, 41, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(780, 42, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(781, 42, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(782, 42, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(783, 42, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(784, 42, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(785, 42, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(786, 42, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(787, 42, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(788, 42, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(789, 42, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(790, 42, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(791, 42, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(792, 42, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(793, 42, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(794, 42, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(795, 42, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(796, 42, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(797, 42, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(798, 42, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(799, 43, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(800, 43, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(801, 43, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(802, 43, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(803, 43, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(804, 43, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(805, 43, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(806, 43, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(807, 43, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(808, 43, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(809, 43, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(810, 43, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(811, 43, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(812, 43, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(813, 43, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(814, 43, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(815, 43, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(816, 43, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(817, 43, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(818, 44, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(819, 44, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(820, 44, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(821, 44, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(822, 44, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(823, 44, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(824, 44, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(825, 44, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(826, 44, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(827, 44, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(828, 44, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(829, 44, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(830, 44, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(831, 44, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(832, 44, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(833, 44, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(834, 44, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(835, 44, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(836, 44, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(837, 45, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(838, 45, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(839, 45, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(840, 45, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(841, 45, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(842, 45, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(843, 45, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(844, 45, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(845, 45, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(846, 45, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(847, 45, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(848, 45, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(849, 45, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(850, 45, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(851, 45, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(852, 45, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(853, 45, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(854, 45, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(855, 45, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(856, 46, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(857, 46, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(858, 46, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(859, 46, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(860, 46, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(861, 46, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(862, 46, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(863, 46, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(864, 46, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(865, 46, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(866, 46, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(867, 46, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(868, 46, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(869, 46, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(870, 46, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(871, 46, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(872, 46, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(873, 46, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(874, 46, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(875, 47, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(876, 47, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(877, 47, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(878, 47, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(879, 47, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(880, 47, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(881, 47, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(882, 47, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(883, 47, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(884, 47, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(885, 47, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(886, 47, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(887, 47, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(888, 47, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(889, 47, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(890, 47, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(891, 47, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(892, 47, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(893, 47, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(894, 48, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(895, 48, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(896, 48, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(897, 48, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(898, 48, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(899, 48, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(900, 48, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(901, 48, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(902, 48, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(903, 48, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(904, 48, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(905, 48, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(906, 48, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(907, 48, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(908, 48, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(909, 48, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(910, 48, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(911, 48, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(912, 48, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(913, 49, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(914, 49, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(915, 49, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(916, 49, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(917, 49, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(918, 49, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(919, 49, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(920, 49, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(921, 49, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(922, 49, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(923, 49, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(924, 49, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(925, 49, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(926, 49, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(927, 49, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(928, 49, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(929, 49, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(930, 49, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(931, 49, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(932, 50, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(933, 50, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(934, 50, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(935, 50, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(936, 50, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(937, 50, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(938, 50, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(939, 50, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(940, 50, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(941, 50, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(942, 50, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(943, 50, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(944, 50, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(945, 50, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(946, 50, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(947, 50, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(948, 50, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(949, 50, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(950, 50, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(951, 51, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(952, 51, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(953, 51, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(954, 51, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(955, 51, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(956, 51, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(957, 51, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(958, 51, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(959, 51, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(960, 51, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(961, 51, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(962, 51, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(963, 51, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(964, 51, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(965, 51, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(966, 51, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(967, 51, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(968, 51, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(969, 51, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `organism_drug_disc_diffusion`
--

CREATE TABLE `organism_drug_disc_diffusion` (
  `id` int(10) UNSIGNED NOT NULL,
  `disc_diffusion_id` int(10) UNSIGNED NOT NULL,
  `drug_id` int(10) UNSIGNED NOT NULL,
  `organism_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `othernames` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_patient_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'view_names', 'Can view patient names', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(2, 'manage_patients', 'Can add patients', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(3, 'receive_external_test', 'Can receive test requests', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(4, 'request_test', 'Can request new test', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(5, 'accept_test_specimen', 'Can accept test specimen', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(6, 'reject_test_specimen', 'Can reject test specimen', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(7, 'change_test_specimen', 'Can change test specimen', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(8, 'start_test', 'Can start tests', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(9, 'enter_test_results', 'Can enter tests results', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(10, 'edit_test_results', 'Can edit test results', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(11, 'verify_test_results', 'Can verify test results', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(12, 'send_results_to_external_system', 'Can send test results to external systems', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(13, 'refer_specimens', 'Can refer specimens', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(14, 'manage_users', 'Can manage users', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(15, 'manage_test_catalog', 'Can manage test catalog', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(16, 'manage_lab_configurations', 'Can manage lab configurations', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(17, 'view_reports', 'Can view reports', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(18, 'manage_inventory', 'Can manage inventory', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(19, 'request_topup', 'Can request top-up', '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(20, 'manage_qc', 'Can manage Quality Control', '2017-09-04 10:04:40', '2017-09-04 10:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 1, 2),
(22, 2, 2),
(23, 3, 2),
(24, 4, 2),
(25, 5, 2),
(26, 6, 2),
(27, 7, 2),
(28, 8, 2),
(29, 9, 2),
(30, 10, 2),
(31, 11, 2),
(32, 12, 2),
(33, 13, 2),
(34, 17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `person` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contacts` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rejection_reasons`
--

CREATE TABLE `rejection_reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rejection_reasons`
--

INSERT INTO `rejection_reasons` (`id`, `reason`) VALUES
(1, 'Poorly labelled'),
(2, 'Over saturation'),
(3, 'Insufficient Sample'),
(4, 'Scattered'),
(5, 'Clotted Blood'),
(6, 'Two layered spots'),
(7, 'Serum rings'),
(8, 'Scratched'),
(9, 'Haemolysis'),
(10, 'Spots that cannot elute'),
(11, 'Leaking'),
(12, 'Broken Sample Container'),
(13, 'Mismatched sample and form labelling'),
(14, 'Missing Labels on container and tracking form'),
(15, 'Empty Container'),
(16, 'Samples without tracking forms'),
(17, 'Poor transport'),
(18, 'Lipaemic'),
(19, 'Wrong container/Anticoagulant'),
(20, 'Request form without samples'),
(21, 'Missing collection date on specimen / request form.'),
(22, 'Name and signature of requester missing'),
(23, 'Mismatched information on request form and specimen container.'),
(24, 'Request form contaminated with specimen'),
(25, 'Duplicate specimen received'),
(26, 'Delay between specimen collection and arrival in the laboratory'),
(27, 'Inappropriate specimen packing'),
(28, 'Inappropriate specimen for the test'),
(29, 'Inappropriate test for the clinical condition'),
(30, 'No Label'),
(31, 'No Sample in the Container'),
(32, 'No Request Form'),
(33, 'Missing Information Required');

-- --------------------------------------------------------

--
-- Table structure for table `report_diseases`
--

CREATE TABLE `report_diseases` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED NOT NULL,
  `disease_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `quantity_remaining` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `test_category_id` int(10) UNSIGNED NOT NULL,
  `quantity_ordered` int(11) NOT NULL,
  `tests_done` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `remarks` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `require_verifications`
--

CREATE TABLE `require_verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `verification_required` tinyint(4) NOT NULL DEFAULT '0',
  `verification_required_from` time NOT NULL DEFAULT '00:00:00',
  `verification_required_to` time NOT NULL DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `require_verifications`
--

INSERT INTO `require_verifications` (`id`, `verification_required`, `verification_required_from`, `verification_required_to`) VALUES
(1, 0, '06:00:00', '06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', NULL, '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(2, 'Technologist', NULL, '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(3, 'Receptionist', NULL, '2017-09-04 10:04:40', '2017-09-04 10:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `specimens`
--

CREATE TABLE `specimens` (
  `id` int(10) UNSIGNED NOT NULL,
  `specimen_type_id` int(10) UNSIGNED NOT NULL,
  `specimen_status_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `accepted_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rejected_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rejection_reason_id` int(10) UNSIGNED DEFAULT NULL,
  `reject_explained_to` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referral_id` int(10) UNSIGNED DEFAULT NULL,
  `time_accepted` timestamp NULL DEFAULT NULL,
  `time_rejected` timestamp NULL DEFAULT NULL,
  `date_collected` date DEFAULT NULL,
  `time_collected` timestamp NULL DEFAULT NULL,
  `site_collected_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specimen_collection_locations`
--

CREATE TABLE `specimen_collection_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specimen_collection_locations`
--

INSERT INTO `specimen_collection_locations` (`id`, `name`) VALUES
(1, 'Accident & Emergency'),
(2, 'Burns unit'),
(3, 'Comprehensive care center'),
(4, 'Delivery Ward'),
(5, 'Dental unit'),
(6, 'Diabetic clinic'),
(7, 'ENT clinic'),
(8, 'Surgical ward'),
(9, 'Medical ward'),
(10, 'Female ward 1'),
(11, 'Female ward 2'),
(12, 'Female ward 3'),
(13, 'Female ward 4'),
(14, 'Female ward 5'),
(15, 'ICU'),
(16, 'Inpatient Ward'),
(17, 'Labour  ward'),
(18, 'Male ward 1'),
(19, 'Male ward 2'),
(20, 'Male ward 3'),
(21, 'Male ward 4'),
(22, 'Male ward 5'),
(23, 'Maternity'),
(24, 'MCH'),
(25, 'Outpatient clinic'),
(26, 'Paediatric ward'),
(27, 'Renal unit'),
(28, 'TB clinic'),
(29, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `specimen_collection_sites`
--

CREATE TABLE `specimen_collection_sites` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specimen_collection_sites`
--

INSERT INTO `specimen_collection_sites` (`id`, `name`) VALUES
(1, 'Head'),
(2, 'Abdomen'),
(3, 'Lower back'),
(4, 'Shoulder'),
(5, 'Right upper arm'),
(6, 'Left upper arm'),
(7, 'Right elbow'),
(8, 'Left elbow'),
(9, 'Right wrist'),
(10, 'Left wrist'),
(11, 'Hip'),
(12, 'Right thigh'),
(13, 'Left thigh'),
(14, 'Right knee'),
(15, 'Left knee'),
(16, 'Right lower leg'),
(17, 'Left lower leg'),
(18, 'Right ankle'),
(19, 'Left ankle'),
(20, 'Right foot'),
(21, 'Left foot'),
(22, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `specimen_statuses`
--

CREATE TABLE `specimen_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specimen_statuses`
--

INSERT INTO `specimen_statuses` (`id`, `name`) VALUES
(1, 'specimen-not-collected'),
(2, 'specimen-accepted'),
(3, 'specimen-rejected');

-- --------------------------------------------------------

--
-- Table structure for table `specimen_types`
--

CREATE TABLE `specimen_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specimen_types`
--

INSERT INTO `specimen_types` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Whole blood', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Blood smear', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Urine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Stool', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Pus Swab', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Throat Swab', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'High vaginal swab', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Urethral swab', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Ascetic fluid', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Pleural fluid', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'CSF', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Sputum', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Serum', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Plasma', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Dried blood spot (DBS)', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Rectal swab', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Water Samples', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Food samples', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Bone marrow', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Skin scrapings', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Nails', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Tissue smears', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Smear', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Tissue', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `visit_id` bigint(20) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED NOT NULL,
  `specimen_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `interpretation` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `test_status_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `tested_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `verified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `requested_by` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `time_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_started` timestamp NULL DEFAULT NULL,
  `time_completed` timestamp NULL DEFAULT NULL,
  `time_verified` timestamp NULL DEFAULT NULL,
  `time_sent` timestamp NULL DEFAULT NULL,
  `external_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testtype_measures`
--

CREATE TABLE `testtype_measures` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED NOT NULL,
  `measure_id` int(10) UNSIGNED NOT NULL,
  `ordering` tinyint(4) DEFAULT NULL,
  `nesting` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testtype_measures`
--

INSERT INTO `testtype_measures` (`id`, `test_type_id`, `measure_id`, `ordering`, `nesting`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 1, 5, NULL, NULL),
(6, 1, 6, NULL, NULL),
(7, 1, 7, NULL, NULL),
(8, 1, 8, NULL, NULL),
(9, 1, 9, NULL, NULL),
(10, 1, 10, NULL, NULL),
(11, 2, 11, NULL, NULL),
(12, 5, 12, NULL, NULL),
(13, 6, 13, NULL, NULL),
(14, 7, 14, NULL, NULL),
(15, 8, 15, NULL, NULL),
(16, 9, 16, NULL, NULL),
(17, 10, 17, NULL, NULL),
(18, 11, 18, NULL, NULL),
(19, 12, 19, NULL, NULL),
(20, 13, 20, NULL, NULL),
(21, 13, 21, NULL, NULL),
(22, 13, 22, NULL, NULL),
(23, 13, 23, NULL, NULL),
(24, 13, 24, NULL, NULL),
(25, 13, 25, NULL, NULL),
(26, 13, 26, NULL, NULL),
(27, 13, 27, NULL, NULL),
(28, 13, 28, NULL, NULL),
(29, 13, 29, NULL, NULL),
(30, 13, 30, NULL, NULL),
(31, 13, 31, NULL, NULL),
(32, 13, 32, NULL, NULL),
(33, 13, 33, NULL, NULL),
(34, 13, 34, NULL, NULL),
(35, 13, 35, NULL, NULL),
(36, 14, 36, NULL, NULL),
(37, 15, 37, NULL, NULL),
(38, 15, 38, NULL, NULL),
(39, 15, 39, NULL, NULL),
(40, 15, 40, NULL, NULL),
(41, 15, 41, NULL, NULL),
(42, 15, 42, NULL, NULL),
(43, 15, 43, NULL, NULL),
(44, 15, 44, NULL, NULL),
(45, 15, 45, NULL, NULL),
(46, 15, 46, NULL, NULL),
(47, 15, 47, NULL, NULL),
(48, 16, 48, NULL, NULL),
(49, 17, 49, NULL, NULL),
(50, 18, 50, NULL, NULL),
(51, 19, 51, NULL, NULL),
(52, 20, 52, NULL, NULL),
(53, 21, 53, NULL, NULL),
(54, 22, 54, NULL, NULL),
(55, 23, 55, NULL, NULL),
(56, 24, 56, NULL, NULL),
(57, 25, 57, NULL, NULL),
(58, 26, 58, NULL, NULL),
(59, 27, 59, NULL, NULL),
(60, 28, 60, NULL, NULL),
(61, 29, 61, NULL, NULL),
(62, 30, 62, NULL, NULL),
(63, 31, 63, NULL, NULL),
(64, 32, 64, NULL, NULL),
(65, 33, 65, NULL, NULL),
(66, 34, 66, NULL, NULL),
(67, 35, 67, NULL, NULL),
(68, 36, 68, NULL, NULL),
(69, 37, 69, NULL, NULL),
(70, 38, 70, NULL, NULL),
(71, 39, 71, NULL, NULL),
(72, 40, 72, NULL, NULL),
(73, 41, 73, NULL, NULL),
(74, 42, 74, NULL, NULL),
(75, 43, 75, NULL, NULL),
(76, 44, 76, NULL, NULL),
(77, 45, 77, NULL, NULL),
(78, 46, 78, NULL, NULL),
(79, 47, 79, NULL, NULL),
(80, 48, 80, NULL, NULL),
(81, 49, 81, NULL, NULL),
(82, 50, 82, NULL, NULL),
(83, 51, 83, NULL, NULL),
(84, 52, 84, NULL, NULL),
(85, 53, 85, NULL, NULL),
(86, 54, 86, NULL, NULL),
(87, 55, 87, NULL, NULL),
(88, 56, 88, NULL, NULL),
(89, 57, 89, NULL, NULL),
(90, 58, 90, NULL, NULL),
(91, 59, 91, NULL, NULL),
(92, 59, 92, NULL, NULL),
(93, 59, 93, NULL, NULL),
(94, 60, 94, NULL, NULL),
(95, 61, 95, NULL, NULL),
(96, 62, 96, NULL, NULL),
(97, 63, 97, NULL, NULL),
(98, 64, 98, NULL, NULL),
(99, 65, 99, NULL, NULL),
(100, 66, 100, NULL, NULL),
(101, 67, 101, NULL, NULL),
(102, 68, 102, NULL, NULL),
(103, 69, 103, NULL, NULL),
(104, 70, 104, NULL, NULL),
(105, 71, 105, NULL, NULL),
(106, 72, 106, NULL, NULL),
(107, 73, 107, NULL, NULL),
(108, 74, 108, NULL, NULL),
(109, 74, 109, NULL, NULL),
(110, 74, 110, NULL, NULL),
(111, 74, 111, NULL, NULL),
(112, 75, 112, NULL, NULL),
(113, 76, 113, NULL, NULL),
(114, 77, 114, NULL, NULL),
(115, 78, 115, NULL, NULL),
(116, 79, 116, NULL, NULL),
(117, 80, 117, NULL, NULL),
(118, 81, 118, NULL, NULL),
(119, 82, 119, NULL, NULL),
(120, 83, 120, NULL, NULL),
(121, 84, 121, NULL, NULL),
(122, 85, 122, NULL, NULL),
(123, 86, 123, NULL, NULL),
(124, 87, 124, NULL, NULL),
(125, 88, 125, NULL, NULL),
(126, 89, 126, NULL, NULL),
(127, 90, 127, NULL, NULL),
(128, 91, 128, NULL, NULL),
(129, 92, 129, NULL, NULL),
(130, 93, 130, NULL, NULL),
(131, 94, 131, NULL, NULL),
(132, 95, 132, NULL, NULL),
(133, 96, 133, NULL, NULL),
(134, 97, 134, NULL, NULL),
(135, 98, 135, NULL, NULL),
(136, 99, 136, NULL, NULL),
(137, 100, 137, NULL, NULL),
(138, 101, 138, NULL, NULL),
(139, 102, 139, NULL, NULL),
(140, 103, 140, NULL, NULL),
(141, 104, 141, NULL, NULL),
(142, 105, 142, NULL, NULL),
(143, 106, 143, NULL, NULL),
(144, 107, 144, NULL, NULL),
(145, 108, 145, NULL, NULL),
(146, 109, 146, NULL, NULL),
(147, 110, 147, NULL, NULL),
(148, 113, 148, NULL, NULL),
(149, 114, 149, NULL, NULL),
(150, 115, 150, NULL, NULL),
(151, 116, 151, NULL, NULL),
(152, 117, 152, NULL, NULL),
(153, 118, 153, NULL, NULL),
(154, 119, 154, NULL, NULL),
(155, 120, 155, NULL, NULL),
(156, 121, 156, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testtype_organisms`
--

CREATE TABLE `testtype_organisms` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED NOT NULL,
  `organism_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testtype_organisms`
--

INSERT INTO `testtype_organisms` (`id`, `test_type_id`, `organism_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 14, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 14, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 14, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 14, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 14, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 14, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 14, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 14, 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 14, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 16, 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 16, 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 16, 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 16, 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 16, 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 16, 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 16, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 16, 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 16, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 78, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 78, 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 78, 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 78, 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 78, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 78, 20, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 78, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 78, 21, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 78, 22, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 78, 23, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 27, 22, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 27, 24, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 27, 25, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 27, 26, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 21, 27, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 21, 28, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 21, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 23, 23, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 77, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 77, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 77, 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 25, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 25, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 25, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 25, 33, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 25, 34, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 25, 35, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 25, 36, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 25, 37, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 19, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 19, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 19, 38, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 19, 39, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 19, 40, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 19, 34, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 19, 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 19, 41, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 17, 42, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 17, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 17, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 17, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 17, 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 17, 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 17, 43, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 17, 44, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 17, 45, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 17, 46, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 26, 24, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 26, 47, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 26, 38, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 26, 48, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 26, 49, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 112, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 112, 44, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 112, 50, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 112, 24, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 112, 38, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 112, 51, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `testtype_specimentypes`
--

CREATE TABLE `testtype_specimentypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED NOT NULL,
  `specimen_type_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testtype_specimentypes`
--

INSERT INTO `testtype_specimentypes` (`id`, `test_type_id`, `specimen_type_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 2),
(13, 13, 3),
(14, 14, 3),
(15, 15, 4),
(16, 16, 4),
(17, 17, 5),
(18, 18, 5),
(19, 19, 6),
(20, 20, 6),
(21, 21, 7),
(22, 22, 7),
(23, 23, 8),
(24, 24, 8),
(25, 25, 9),
(26, 26, 10),
(27, 27, 11),
(28, 28, 11),
(29, 29, 12),
(30, 30, 12),
(31, 31, 11),
(32, 32, 11),
(33, 33, 13),
(34, 34, 13),
(35, 35, 13),
(36, 36, 13),
(37, 37, 13),
(38, 38, 13),
(39, 39, 13),
(40, 40, 13),
(41, 41, 13),
(42, 42, 13),
(43, 43, 13),
(44, 44, 13),
(45, 45, 13),
(46, 46, 13),
(47, 47, 13),
(48, 48, 13),
(49, 49, 13),
(50, 50, 13),
(51, 51, 13),
(52, 52, 13),
(53, 53, 13),
(54, 54, 1),
(55, 55, 1),
(56, 56, 1),
(57, 57, 1),
(58, 58, 4),
(59, 59, 13),
(60, 60, 3),
(61, 61, 13),
(62, 62, 13),
(63, 63, 13),
(64, 64, 13),
(65, 65, 13),
(66, 66, 13),
(67, 67, 13),
(68, 68, 13),
(69, 69, 15),
(70, 70, 1),
(71, 71, 1),
(72, 72, 13),
(73, 73, 15),
(74, 74, 1),
(75, 75, 13),
(76, 76, 3),
(77, 77, 16),
(78, 78, 1),
(79, 79, 17),
(80, 80, 18),
(81, 81, 2),
(82, 82, 2),
(83, 83, 2),
(84, 84, 1),
(85, 85, 19),
(86, 86, 2),
(87, 87, 20),
(88, 88, 22),
(89, 89, 23),
(90, 90, 23),
(91, 91, 23),
(92, 92, 23),
(93, 93, 23),
(94, 94, 23),
(95, 95, 23),
(96, 96, 23),
(97, 97, 23),
(98, 98, 24),
(99, 99, 24),
(100, 100, 24),
(101, 101, 24),
(102, 102, 24),
(103, 103, 24),
(104, 104, 13),
(105, 105, 13),
(106, 106, 13),
(107, 107, 14),
(108, 108, 13),
(109, 109, 13),
(110, 110, 13),
(111, 111, 1),
(112, 112, 12),
(113, 113, 23),
(114, 114, 23),
(115, 115, 24),
(116, 116, 24),
(117, 117, 24),
(118, 118, 24),
(119, 119, 24),
(120, 120, 24),
(121, 121, 24);

-- --------------------------------------------------------

--
-- Table structure for table `test_categories`
--

CREATE TABLE `test_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test_categories`
--

INSERT INTO `test_categories` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Haematology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Blood transfusion', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Parasitology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Microbiology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Biochemistry', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Serology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Molecular biology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Histology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `test_phases`
--

CREATE TABLE `test_phases` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test_phases`
--

INSERT INTO `test_phases` (`id`, `name`) VALUES
(1, 'Pre-Analytical'),
(2, 'Analytical'),
(3, 'Post-Analytical');

-- --------------------------------------------------------

--
-- Table structure for table `test_results`
--

CREATE TABLE `test_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `measure_id` int(10) UNSIGNED NOT NULL,
  `result` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_statuses`
--

CREATE TABLE `test_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `test_phase_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test_statuses`
--

INSERT INTO `test_statuses` (`id`, `name`, `test_phase_id`) VALUES
(1, 'not-received', 1),
(2, 'pending', 1),
(3, 'started', 2),
(4, 'completed', 3),
(5, 'verified', 3);

-- --------------------------------------------------------

--
-- Table structure for table `test_types`
--

CREATE TABLE `test_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test_category_id` int(10) UNSIGNED NOT NULL,
  `targetTAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderable_test` int(11) DEFAULT NULL,
  `prevalence_threshold` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accredited` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test_types`
--

INSERT INTO `test_types` (`id`, `name`, `description`, `test_category_id`, `targetTAT`, `orderable_test`, `prevalence_threshold`, `accredited`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Full haemogram/Full blood count', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Erythrocyte sedimentation rate (ESR)', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'White blood cells (WBC)', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Haemoglobin', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Reticulocyte count', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Sickling test', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Blood grouping', NULL, 2, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Du test', NULL, 2, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Cross Match', NULL, 2, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Indirect coombs test', NULL, 2, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Direct coombs test', NULL, 2, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Blood slide for Malaria', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Urinalysis', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Urine Culture', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Stool analysis', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Stool culture', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Pus swab culture', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Pus swab gram stain', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Throat swab culture', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Throat swab gram stain', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'High vaginal swab culture', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'High vaginal swab gram stain', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Urethral swab culture', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Urethral swab gram stain', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Ascitic fluid culture', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Pleural effusion culture', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'CSF culture', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'CSF for Indian ink test', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Sputum for AFB', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Sputum for Gene Xpert', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'CSF glucose analysis', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'CSF protein analysis', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'SGOT/AST', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'SGPT/ALT', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Total Protein', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Albumin', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Total Bilirubin', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Direct Bilirubin', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Alkaline Phosphatase', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Gamma GT', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Urea', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Potassium', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Sodium', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Chloride', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Creatinine', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Phosphorous', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Uric acid', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Calcium', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Amylase', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Total cholestrol', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'LDL', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'HDL', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Triglycerides', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Fasting blood sugar', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Random Blood sugar', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'OGTT', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'HBA1C', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Occult blood test', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Thyroid function tests', NULL, 5, NULL, 0, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Pregnancy test (HCG)', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Rapid Plasma Reagin (RPR)/VDRL', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Helicobacter pylori', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Hepatitis B test (HBs Ag)', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Hepatitis C test', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Rheumatoid factor', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'ASOT test', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'PSA screening', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'HIV rapid testing', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Early infant diagnosis', NULL, 7, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'CD4 count', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'CD4 %', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'HIV ELISA', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Viral Load', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Coagulation Profile', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Acid Phosphatase', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Bence Jones proteins', NULL, 5, NULL, 0, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Rectal swab culture', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Blood culture', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Water', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Food', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Borelia', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Microfilariae', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Trypanosomes', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'HB electrophoresis', NULL, 1, NULL, 0, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Bone marrow aspirates', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Peripheral Blood films', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'KOH preparation', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Tissue Impression', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Fine Needle aspirates Thyroid', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Fine Needle aspirates Lymph node', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Fine Needle aspirates Liver', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Fine Needle aspirates Breast', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Fine Needle aspirates soft tissue masses', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Pap Smear', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Ascitic fluid', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'CSF', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Pleural fluid', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Cervix tissue', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Prostrate tissue', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Breast Tissue', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Ovarian cyst', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Fibroids', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Lymph nodes tissue', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Hepatitis A test', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Brucella test', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Widal Test', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'TPHA', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Cryptococcal antigen (CRAG) Test', NULL, 6, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Carcinoembryonic antigen test (CEA)', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Cancer antigen 15-3 (C15-3)', NULL, 5, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Malaria Rapid Diagnostic Test', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Sputum culture', NULL, 4, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Touch preparations', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Bone marrow aspirate', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Trephine biopsy', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Ovary tissue', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Uterus tissue', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Skin tissue', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Head and Neck tissue', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Dental tissue', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Gastro intestinal tract (GIT) tissue', NULL, 8, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `gender`, `designation`, `image`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'administrator', '$2y$10$Uceuyx0b7z3DbDn6tuGGkOirHVHmJ6HEeuJYqV1k5THbICQ/B19EW', 'admin@kblis.org', 'kBLIS Administrator', 0, 'Administrator', NULL, NULL, NULL, '2017-09-04 10:04:40', '2017-09-04 10:04:40'),
(2, 'external', '$2y$10$4h/cDSOFpKGApTF8o0R2F.YUMtiRyqTd1cmDxObZF7waxIFpiMWli', 'admin@kblis.org', 'External System User', 0, 'Administrator', '/i/users/user-2.jpg', NULL, NULL, '2017-09-04 10:04:40', '2017-09-04 10:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `visit_type` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Out-patient',
  `visit_number` int(10) UNSIGNED DEFAULT NULL,
  `admission_date` date NOT NULL,
  `provisional_diagnosis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_user_id_foreign` (`user_id`),
  ADD KEY `assigned_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `audit_results`
--
ALTER TABLE `audit_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_results_user_id_foreign` (`user_id`),
  ADD KEY `audit_results_test_result_id_foreign` (`test_result_id`);

--
-- Indexes for table `barcode_settings`
--
ALTER TABLE `barcode_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biochemical_weeksheet`
--
ALTER TABLE `biochemical_weeksheet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biochemical_weeksheet_user_id_foreign` (`user_id`),
  ADD KEY `biochemical_weeksheet_test_id_foreign` (`test_id`);

--
-- Indexes for table `bio_chemical_tests`
--
ALTER TABLE `bio_chemical_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bio_chemical_tests_user_id_foreign` (`user_id`);

--
-- Indexes for table `controls`
--
ALTER TABLE `controls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `controls_name_unique` (`name`),
  ADD KEY `controls_instrument_id_foreign` (`instrument_id`);

--
-- Indexes for table `control_measures`
--
ALTER TABLE `control_measures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `control_measures_control_measure_type_id_foreign` (`control_measure_type_id`),
  ADD KEY `control_measures_control_id_foreign` (`control_id`);

--
-- Indexes for table `control_measure_ranges`
--
ALTER TABLE `control_measure_ranges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `control_measure_ranges_control_measure_id_foreign` (`control_measure_id`);

--
-- Indexes for table `control_results`
--
ALTER TABLE `control_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `control_results_control_test_id_foreign` (`control_test_id`),
  ADD KEY `control_results_control_measure_id_foreign` (`control_measure_id`),
  ADD KEY `control_results_user_id_foreign` (`user_id`);

--
-- Indexes for table `control_tests`
--
ALTER TABLE `control_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `control_tests_control_id_foreign` (`control_id`),
  ADD KEY `control_tests_lot_id_foreign` (`lot_id`),
  ADD KEY `control_tests_user_id_foreign` (`user_id`);

--
-- Indexes for table `critical`
--
ALTER TABLE `critical`
  ADD PRIMARY KEY (`id`),
  ADD KEY `critical_parameter_foreign` (`parameter`);

--
-- Indexes for table `critical_report`
--
ALTER TABLE `critical_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `critical_report_test_id_foreign` (`test_id`),
  ADD KEY `critical_report_measure_id_foreign` (`measure_id`),
  ADD KEY `critical_report_test_type_id_foreign` (`test_type_id`),
  ADD KEY `critical_report_test_category_id_foreign` (`test_category_id`);

--
-- Indexes for table `culture_worksheet`
--
ALTER TABLE `culture_worksheet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `culture_worksheet_user_id_foreign` (`user_id`),
  ADD KEY `culture_worksheet_test_id_foreign` (`test_id`);

--
-- Indexes for table `disc_diffusion_guidelines`
--
ALTER TABLE `disc_diffusion_guidelines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `drugs_name_unique` (`name`);

--
-- Indexes for table `drug_concentration`
--
ALTER TABLE `drug_concentration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_susceptibility`
--
ALTER TABLE `drug_susceptibility`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drug_susceptibility_user_id_foreign` (`user_id`),
  ADD KEY `drug_susceptibility_test_id_foreign` (`test_id`),
  ADD KEY `drug_susceptibility_organism_id_foreign` (`organism_id`),
  ADD KEY `drug_susceptibility_drug_id_foreign` (`drug_id`);

--
-- Indexes for table `equip_config`
--
ALTER TABLE `equip_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equip_config_equip_id_foreign` (`equip_id`),
  ADD KEY `equip_config_prop_id_foreign` (`prop_id`);

--
-- Indexes for table `external_dump`
--
ALTER TABLE `external_dump`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `external_dump_lab_no_unique` (`lab_no`),
  ADD KEY `external_dump_parent_lab_no_index` (`parent_lab_no`);

--
-- Indexes for table `external_users`
--
ALTER TABLE `external_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `external_users_internal_user_id_unique` (`internal_user_id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grainstain_tests`
--
ALTER TABLE `grainstain_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grainstain_tests_user_id_foreign` (`user_id`),
  ADD KEY `grainstain_tests_test_id_foreign` (`test_id`);

--
-- Indexes for table `ii_quickcodes`
--
ALTER TABLE `ii_quickcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instrument_testtypes`
--
ALTER TABLE `instrument_testtypes`
  ADD UNIQUE KEY `instrument_testtypes_instrument_id_test_type_id_unique` (`instrument_id`,`test_type_id`),
  ADD KEY `instrument_testtypes_test_type_id_foreign` (`test_type_id`);

--
-- Indexes for table `interfaced_equipment`
--
ALTER TABLE `interfaced_equipment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interfaced_equipment_lab_section_foreign` (`lab_section`);

--
-- Indexes for table `inv_items`
--
ALTER TABLE `inv_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inv_items_name_unique` (`name`),
  ADD KEY `inv_items_user_id_foreign` (`user_id`);

--
-- Indexes for table `inv_supply`
--
ALTER TABLE `inv_supply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inv_supply_user_id_foreign` (`user_id`),
  ADD KEY `inv_supply_item_id_foreign` (`item_id`),
  ADD KEY `inv_supply_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `inv_usage`
--
ALTER TABLE `inv_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inv_usage_user_id_foreign` (`user_id`),
  ADD KEY `inv_usage_stock_id_foreign` (`stock_id`),
  ADD KEY `inv_usage_request_id_foreign` (`request_id`);

--
-- Indexes for table `lots`
--
ALTER TABLE `lots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lots_lot_no_unique` (`lot_no`);

--
-- Indexes for table `measures`
--
ALTER TABLE `measures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `measures_measure_type_id_foreign` (`measure_type_id`);

--
-- Indexes for table `measure_ranges`
--
ALTER TABLE `measure_ranges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `measure_ranges_alphanumeric_index` (`alphanumeric`),
  ADD KEY `measure_ranges_measure_id_foreign` (`measure_id`);

--
-- Indexes for table `measure_types`
--
ALTER TABLE `measure_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `measure_types_name_unique` (`name`);

--
-- Indexes for table `micro_critical`
--
ALTER TABLE `micro_critical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minimum_drug_inhibitory_concentrations`
--
ALTER TABLE `minimum_drug_inhibitory_concentrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `minimum_drug_inhibitory_concentrations_user_id_foreign` (`user_id`),
  ADD KEY `minimum_drug_inhibitory_concentrations_test_id_foreign` (`test_id`),
  ADD KEY `minimum_drug_inhibitory_concentrations_organism_id_foreign` (`organism_id`),
  ADD KEY `minimum_drug_inhibitory_concentrations_drug_id_foreign` (`drug_id`);

--
-- Indexes for table `organisms`
--
ALTER TABLE `organisms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organisms_name_unique` (`name`);

--
-- Indexes for table `organism_drugs`
--
ALTER TABLE `organism_drugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organism_drugs_organism_id_drug_id_unique` (`organism_id`,`drug_id`),
  ADD KEY `organism_drugs_drug_id_foreign` (`drug_id`);

--
-- Indexes for table `organism_drug_disc_diffusion`
--
ALTER TABLE `organism_drug_disc_diffusion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organism_drug_disc_diffusion_drug_id_foreign` (`drug_id`),
  ADD KEY `organism_drug_disc_diffusion_disc_diffusion_id_foreign` (`disc_diffusion_id`),
  ADD KEY `organism_drug_disc_diffusion_organism_id_foreign` (`organism_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patients_external_patient_number_index` (`external_patient_number`),
  ADD KEY `patients_created_by_index` (`created_by`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referrals_user_id_foreign` (`user_id`),
  ADD KEY `referrals_facility_id_foreign` (`facility_id`);

--
-- Indexes for table `rejection_reasons`
--
ALTER TABLE `rejection_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_diseases`
--
ALTER TABLE `report_diseases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `report_diseases_test_type_id_disease_id_unique` (`test_type_id`,`disease_id`),
  ADD KEY `report_diseases_disease_id_foreign` (`disease_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requests_test_category_id_foreign` (`test_category_id`),
  ADD KEY `requests_item_id_foreign` (`item_id`),
  ADD KEY `requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `require_verifications`
--
ALTER TABLE `require_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `specimens`
--
ALTER TABLE `specimens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specimens_accepted_by_index` (`accepted_by`),
  ADD KEY `specimens_rejected_by_index` (`rejected_by`),
  ADD KEY `specimens_specimen_type_id_foreign` (`specimen_type_id`),
  ADD KEY `specimens_specimen_status_id_foreign` (`specimen_status_id`),
  ADD KEY `specimens_rejection_reason_id_foreign` (`rejection_reason_id`),
  ADD KEY `specimens_referral_id_foreign` (`referral_id`);

--
-- Indexes for table `specimen_collection_locations`
--
ALTER TABLE `specimen_collection_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specimen_collection_sites`
--
ALTER TABLE `specimen_collection_sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specimen_statuses`
--
ALTER TABLE `specimen_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specimen_types`
--
ALTER TABLE `specimen_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_user_id_foreign` (`user_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_created_by_index` (`created_by`),
  ADD KEY `tests_tested_by_index` (`tested_by`),
  ADD KEY `tests_verified_by_index` (`verified_by`),
  ADD KEY `tests_visit_id_foreign` (`visit_id`),
  ADD KEY `tests_test_type_id_foreign` (`test_type_id`),
  ADD KEY `tests_specimen_id_foreign` (`specimen_id`),
  ADD KEY `tests_test_status_id_foreign` (`test_status_id`);

--
-- Indexes for table `testtype_measures`
--
ALTER TABLE `testtype_measures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `testtype_measures_test_type_id_measure_id_unique` (`test_type_id`,`measure_id`),
  ADD KEY `testtype_measures_measure_id_foreign` (`measure_id`);

--
-- Indexes for table `testtype_organisms`
--
ALTER TABLE `testtype_organisms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `testtype_organisms_test_type_id_organism_id_unique` (`test_type_id`,`organism_id`),
  ADD KEY `testtype_organisms_organism_id_foreign` (`organism_id`);

--
-- Indexes for table `testtype_specimentypes`
--
ALTER TABLE `testtype_specimentypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `testtype_specimentypes_test_type_id_specimen_type_id_unique` (`test_type_id`,`specimen_type_id`),
  ADD KEY `testtype_specimentypes_specimen_type_id_foreign` (`specimen_type_id`);

--
-- Indexes for table `test_categories`
--
ALTER TABLE `test_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `test_categories_name_unique` (`name`);

--
-- Indexes for table `test_phases`
--
ALTER TABLE `test_phases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_results`
--
ALTER TABLE `test_results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `test_results_test_id_measure_id_unique` (`test_id`,`measure_id`),
  ADD KEY `test_results_measure_id_foreign` (`measure_id`);

--
-- Indexes for table `test_statuses`
--
ALTER TABLE `test_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_statuses_test_phase_id_foreign` (`test_phase_id`);

--
-- Indexes for table `test_types`
--
ALTER TABLE `test_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_types_test_category_id_foreign` (`test_category_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD KEY `tokens_email_index` (`email`),
  ADD KEY `tokens_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_visit_number_index` (`visit_number`),
  ADD KEY `visits_patient_id_foreign` (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `audit_results`
--
ALTER TABLE `audit_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `barcode_settings`
--
ALTER TABLE `barcode_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `biochemical_weeksheet`
--
ALTER TABLE `biochemical_weeksheet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bio_chemical_tests`
--
ALTER TABLE `bio_chemical_tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `controls`
--
ALTER TABLE `controls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `control_measures`
--
ALTER TABLE `control_measures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `control_measure_ranges`
--
ALTER TABLE `control_measure_ranges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `control_results`
--
ALTER TABLE `control_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `control_tests`
--
ALTER TABLE `control_tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `critical`
--
ALTER TABLE `critical`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `critical_report`
--
ALTER TABLE `critical_report`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `culture_worksheet`
--
ALTER TABLE `culture_worksheet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `disc_diffusion_guidelines`
--
ALTER TABLE `disc_diffusion_guidelines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `drug_concentration`
--
ALTER TABLE `drug_concentration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `drug_susceptibility`
--
ALTER TABLE `drug_susceptibility`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equip_config`
--
ALTER TABLE `equip_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `external_dump`
--
ALTER TABLE `external_dump`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `external_users`
--
ALTER TABLE `external_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grainstain_tests`
--
ALTER TABLE `grainstain_tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ii_quickcodes`
--
ALTER TABLE `ii_quickcodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `instruments`
--
ALTER TABLE `instruments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interfaced_equipment`
--
ALTER TABLE `interfaced_equipment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `inv_items`
--
ALTER TABLE `inv_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_supply`
--
ALTER TABLE `inv_supply`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_usage`
--
ALTER TABLE `inv_usage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lots`
--
ALTER TABLE `lots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `measures`
--
ALTER TABLE `measures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `measure_ranges`
--
ALTER TABLE `measure_ranges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;
--
-- AUTO_INCREMENT for table `micro_critical`
--
ALTER TABLE `micro_critical`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `minimum_drug_inhibitory_concentrations`
--
ALTER TABLE `minimum_drug_inhibitory_concentrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `organisms`
--
ALTER TABLE `organisms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `organism_drugs`
--
ALTER TABLE `organism_drugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=970;
--
-- AUTO_INCREMENT for table `organism_drug_disc_diffusion`
--
ALTER TABLE `organism_drug_disc_diffusion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rejection_reasons`
--
ALTER TABLE `rejection_reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `report_diseases`
--
ALTER TABLE `report_diseases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `require_verifications`
--
ALTER TABLE `require_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `specimens`
--
ALTER TABLE `specimens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `specimen_collection_locations`
--
ALTER TABLE `specimen_collection_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `specimen_collection_sites`
--
ALTER TABLE `specimen_collection_sites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `specimen_types`
--
ALTER TABLE `specimen_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testtype_measures`
--
ALTER TABLE `testtype_measures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `testtype_organisms`
--
ALTER TABLE `testtype_organisms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `testtype_specimentypes`
--
ALTER TABLE `testtype_specimentypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `test_categories`
--
ALTER TABLE `test_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `test_results`
--
ALTER TABLE `test_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_types`
--
ALTER TABLE `test_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `audit_results`
--
ALTER TABLE `audit_results`
  ADD CONSTRAINT `audit_results_test_result_id_foreign` FOREIGN KEY (`test_result_id`) REFERENCES `test_results` (`id`),
  ADD CONSTRAINT `audit_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `biochemical_weeksheet`
--
ALTER TABLE `biochemical_weeksheet`
  ADD CONSTRAINT `biochemical_weeksheet_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`),
  ADD CONSTRAINT `biochemical_weeksheet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `bio_chemical_tests`
--
ALTER TABLE `bio_chemical_tests`
  ADD CONSTRAINT `bio_chemical_tests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `controls`
--
ALTER TABLE `controls`
  ADD CONSTRAINT `controls_instrument_id_foreign` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`id`);

--
-- Constraints for table `control_measures`
--
ALTER TABLE `control_measures`
  ADD CONSTRAINT `control_measures_control_id_foreign` FOREIGN KEY (`control_id`) REFERENCES `controls` (`id`),
  ADD CONSTRAINT `control_measures_control_measure_type_id_foreign` FOREIGN KEY (`control_measure_type_id`) REFERENCES `measure_types` (`id`);

--
-- Constraints for table `control_measure_ranges`
--
ALTER TABLE `control_measure_ranges`
  ADD CONSTRAINT `control_measure_ranges_control_measure_id_foreign` FOREIGN KEY (`control_measure_id`) REFERENCES `control_measures` (`id`);

--
-- Constraints for table `control_results`
--
ALTER TABLE `control_results`
  ADD CONSTRAINT `control_results_control_measure_id_foreign` FOREIGN KEY (`control_measure_id`) REFERENCES `control_measures` (`id`),
  ADD CONSTRAINT `control_results_control_test_id_foreign` FOREIGN KEY (`control_test_id`) REFERENCES `control_tests` (`id`),
  ADD CONSTRAINT `control_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `control_tests`
--
ALTER TABLE `control_tests`
  ADD CONSTRAINT `control_tests_control_id_foreign` FOREIGN KEY (`control_id`) REFERENCES `controls` (`id`),
  ADD CONSTRAINT `control_tests_lot_id_foreign` FOREIGN KEY (`lot_id`) REFERENCES `lots` (`id`),
  ADD CONSTRAINT `control_tests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `critical`
--
ALTER TABLE `critical`
  ADD CONSTRAINT `critical_parameter_foreign` FOREIGN KEY (`parameter`) REFERENCES `measures` (`id`);

--
-- Constraints for table `critical_report`
--
ALTER TABLE `critical_report`
  ADD CONSTRAINT `critical_report_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`),
  ADD CONSTRAINT `critical_report_test_category_id_foreign` FOREIGN KEY (`test_category_id`) REFERENCES `test_categories` (`id`),
  ADD CONSTRAINT `critical_report_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`),
  ADD CONSTRAINT `critical_report_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `culture_worksheet`
--
ALTER TABLE `culture_worksheet`
  ADD CONSTRAINT `culture_worksheet_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`),
  ADD CONSTRAINT `culture_worksheet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `drug_susceptibility`
--
ALTER TABLE `drug_susceptibility`
  ADD CONSTRAINT `drug_susceptibility_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `drug_susceptibility_organism_id_foreign` FOREIGN KEY (`organism_id`) REFERENCES `organisms` (`id`),
  ADD CONSTRAINT `drug_susceptibility_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`),
  ADD CONSTRAINT `drug_susceptibility_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `equip_config`
--
ALTER TABLE `equip_config`
  ADD CONSTRAINT `equip_config_equip_id_foreign` FOREIGN KEY (`equip_id`) REFERENCES `interfaced_equipment` (`id`),
  ADD CONSTRAINT `equip_config_prop_id_foreign` FOREIGN KEY (`prop_id`) REFERENCES `ii_quickcodes` (`id`);

--
-- Constraints for table `external_users`
--
ALTER TABLE `external_users`
  ADD CONSTRAINT `external_users_internal_user_id_foreign` FOREIGN KEY (`internal_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `grainstain_tests`
--
ALTER TABLE `grainstain_tests`
  ADD CONSTRAINT `grainstain_tests_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`),
  ADD CONSTRAINT `grainstain_tests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `instrument_testtypes`
--
ALTER TABLE `instrument_testtypes`
  ADD CONSTRAINT `instrument_testtypes_instrument_id_foreign` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`id`),
  ADD CONSTRAINT `instrument_testtypes_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `interfaced_equipment`
--
ALTER TABLE `interfaced_equipment`
  ADD CONSTRAINT `interfaced_equipment_lab_section_foreign` FOREIGN KEY (`lab_section`) REFERENCES `test_categories` (`id`);

--
-- Constraints for table `inv_items`
--
ALTER TABLE `inv_items`
  ADD CONSTRAINT `inv_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `inv_supply`
--
ALTER TABLE `inv_supply`
  ADD CONSTRAINT `inv_supply_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `inv_items` (`id`),
  ADD CONSTRAINT `inv_supply_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `inv_supply_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `inv_usage`
--
ALTER TABLE `inv_usage`
  ADD CONSTRAINT `inv_usage_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`),
  ADD CONSTRAINT `inv_usage_stock_id_foreign` FOREIGN KEY (`stock_id`) REFERENCES `inv_supply` (`id`),
  ADD CONSTRAINT `inv_usage_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `measures`
--
ALTER TABLE `measures`
  ADD CONSTRAINT `measures_measure_type_id_foreign` FOREIGN KEY (`measure_type_id`) REFERENCES `measure_types` (`id`);

--
-- Constraints for table `measure_ranges`
--
ALTER TABLE `measure_ranges`
  ADD CONSTRAINT `measure_ranges_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`);

--
-- Constraints for table `minimum_drug_inhibitory_concentrations`
--
ALTER TABLE `minimum_drug_inhibitory_concentrations`
  ADD CONSTRAINT `minimum_drug_inhibitory_concentrations_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `minimum_drug_inhibitory_concentrations_organism_id_foreign` FOREIGN KEY (`organism_id`) REFERENCES `organisms` (`id`),
  ADD CONSTRAINT `minimum_drug_inhibitory_concentrations_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`),
  ADD CONSTRAINT `minimum_drug_inhibitory_concentrations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `organism_drugs`
--
ALTER TABLE `organism_drugs`
  ADD CONSTRAINT `organism_drugs_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `organism_drugs_organism_id_foreign` FOREIGN KEY (`organism_id`) REFERENCES `organisms` (`id`);

--
-- Constraints for table `organism_drug_disc_diffusion`
--
ALTER TABLE `organism_drug_disc_diffusion`
  ADD CONSTRAINT `organism_drug_disc_diffusion_disc_diffusion_id_foreign` FOREIGN KEY (`disc_diffusion_id`) REFERENCES `disc_diffusion_guidelines` (`id`),
  ADD CONSTRAINT `organism_drug_disc_diffusion_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `organism_drug_disc_diffusion_organism_id_foreign` FOREIGN KEY (`organism_id`) REFERENCES `organisms` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`),
  ADD CONSTRAINT `referrals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `report_diseases`
--
ALTER TABLE `report_diseases`
  ADD CONSTRAINT `report_diseases_disease_id_foreign` FOREIGN KEY (`disease_id`) REFERENCES `diseases` (`id`),
  ADD CONSTRAINT `report_diseases_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `inv_items` (`id`),
  ADD CONSTRAINT `requests_test_category_id_foreign` FOREIGN KEY (`test_category_id`) REFERENCES `test_categories` (`id`),
  ADD CONSTRAINT `requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `specimens`
--
ALTER TABLE `specimens`
  ADD CONSTRAINT `specimens_referral_id_foreign` FOREIGN KEY (`referral_id`) REFERENCES `referrals` (`id`),
  ADD CONSTRAINT `specimens_rejection_reason_id_foreign` FOREIGN KEY (`rejection_reason_id`) REFERENCES `rejection_reasons` (`id`),
  ADD CONSTRAINT `specimens_specimen_status_id_foreign` FOREIGN KEY (`specimen_status_id`) REFERENCES `specimen_statuses` (`id`),
  ADD CONSTRAINT `specimens_specimen_type_id_foreign` FOREIGN KEY (`specimen_type_id`) REFERENCES `specimen_types` (`id`);

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_specimen_id_foreign` FOREIGN KEY (`specimen_id`) REFERENCES `specimens` (`id`),
  ADD CONSTRAINT `tests_test_status_id_foreign` FOREIGN KEY (`test_status_id`) REFERENCES `test_statuses` (`id`),
  ADD CONSTRAINT `tests_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`),
  ADD CONSTRAINT `tests_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`);

--
-- Constraints for table `testtype_measures`
--
ALTER TABLE `testtype_measures`
  ADD CONSTRAINT `testtype_measures_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`),
  ADD CONSTRAINT `testtype_measures_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `testtype_organisms`
--
ALTER TABLE `testtype_organisms`
  ADD CONSTRAINT `testtype_organisms_organism_id_foreign` FOREIGN KEY (`organism_id`) REFERENCES `organisms` (`id`),
  ADD CONSTRAINT `testtype_organisms_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `testtype_specimentypes`
--
ALTER TABLE `testtype_specimentypes`
  ADD CONSTRAINT `testtype_specimentypes_specimen_type_id_foreign` FOREIGN KEY (`specimen_type_id`) REFERENCES `specimen_types` (`id`),
  ADD CONSTRAINT `testtype_specimentypes_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `test_results`
--
ALTER TABLE `test_results`
  ADD CONSTRAINT `test_results_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`),
  ADD CONSTRAINT `test_results_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`);

--
-- Constraints for table `test_statuses`
--
ALTER TABLE `test_statuses`
  ADD CONSTRAINT `test_statuses_test_phase_id_foreign` FOREIGN KEY (`test_phase_id`) REFERENCES `test_phases` (`id`);

--
-- Constraints for table `test_types`
--
ALTER TABLE `test_types`
  ADD CONSTRAINT `test_types_test_category_id_foreign` FOREIGN KEY (`test_category_id`) REFERENCES `test_categories` (`id`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
