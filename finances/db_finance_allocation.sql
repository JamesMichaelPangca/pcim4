-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2024 at 04:12 PM
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
-- Database: `db_finance_allocation`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('6c5a6291270da9accc4b4ec5817d4b83', 'i:1;', 1729343268),
('6c5a6291270da9accc4b4ec5817d4b83:timer', 'i:1729343268;', 1729343268);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_14_064113_add_two_factor_columns_to_users_table', 1),
(5, '2024_09_14_064145_create_personal_access_tokens_table', 1),
(6, '2024_09_29_022925_create_t_municipality_budget_table', 2),
(7, '2024_10_09_004841_create_t_entries_violetions_table', 3),
(8, '2024_10_19_173931_create_t_journal_entries_table', 4),
(9, '2024_10_20_014853_create_t_trial_balance_entries_table', 4),
(10, '2024_10_20_031731_create_t_revenue_table', 4),
(11, '2024_10_20_080929_create_t_assets_table', 4),
(12, '2024_10_20_101157_create_t_deficit_operation_table', 4),
(13, '2024_10_20_101459_create_t_operational_expenses_table', 4),
(14, '2024_10_20_101737_create_t_liabilities_table', 4),
(15, '2024_10_20_113334_create_t_department_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('e7Hz9zRhWFC0B4i9X4beX5586yEJzJ2V0CqLVHFk', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoib2s5anBKTkNHdzEzVG1KQnEwSTFua1dnbWpWMHZLUENZdGlBRURaZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9taXNjL29wZXJhdGlvbi1leHBlbnNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTIkRVN5OG93QUl5akpWZm1MZ1lrYlF6T3BwTTQudmJFMzZJQ0lrWHp0RVUwSGhXanNpd0NoN1ciO30=', 1729428487);

-- --------------------------------------------------------

--
-- Table structure for table `t_assets`
--

CREATE TABLE `t_assets` (
  `as_id` bigint(20) UNSIGNED NOT NULL,
  `as_ca` varchar(100) NOT NULL DEFAULT '',
  `as_tca` decimal(10,2) NOT NULL DEFAULT 0.00,
  `as_nca` varchar(100) NOT NULL DEFAULT '',
  `as_tna` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_assets`
--

INSERT INTO `t_assets` (`as_id`, `as_ca`, `as_tca`, `as_nca`, `as_tna`, `created_at`, `updated_at`) VALUES
(1, 'Cash and Cash Equivalents', 111.00, 'Receivables', 111.00, '2024-10-20 04:33:12', '2024-10-20 04:33:12'),
(2, 'Investments', 111.00, 'Advance to Contractors', 444.00, '2024-10-20 04:35:44', '2024-10-20 04:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `t_deficit_operation`
--

CREATE TABLE `t_deficit_operation` (
  `dp_id` bigint(20) UNSIGNED NOT NULL,
  `rv_sfco` varchar(100) NOT NULL DEFAULT '',
  `rv_sftp` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_department`
--

CREATE TABLE `t_department` (
  `dp_id` bigint(20) UNSIGNED NOT NULL,
  `dp_na` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_department`
--

INSERT INTO `t_department` (`dp_id`, `dp_na`, `created_at`, `updated_at`) VALUES
(1, 'BSIT', '2024-10-20 04:26:53', '2024-10-20 04:26:53'),
(2, 'MET', '2024-10-20 04:37:09', '2024-10-20 04:37:09'),
(3, 'CENTER FOR ENTREPRENEURSHIP AND TECHNOLOGY', '2024-10-20 04:37:19', '2024-10-20 04:37:19'),
(4, 'BSIT', '2024-10-20 04:37:26', '2024-10-20 04:37:26'),
(5, 'LIBRARY', '2024-10-20 04:37:34', '2024-10-20 04:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `t_entries_violetions`
--

CREATE TABLE `t_entries_violetions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `violation` varchar(255) NOT NULL,
  `penalty` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_journal_entries`
--

CREATE TABLE `t_journal_entries` (
  `jp_id` bigint(20) UNSIGNED NOT NULL,
  `jp_accounts_explanation` varchar(255) NOT NULL,
  `jp_uacs_object_code` varchar(255) NOT NULL,
  `jp_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_journal_entries`
--

INSERT INTO `t_journal_entries` (`jp_id`, `jp_accounts_explanation`, `jp_uacs_object_code`, `jp_amount`, `created_at`, `updated_at`) VALUES
(1, 'Traveling Expenses', '102030', 1111.00, '2024-10-20 04:31:42', '2024-10-20 04:31:42'),
(2, 'Feeding', '1639', 111111.00, '2024-10-20 04:31:53', '2024-10-20 04:31:53'),
(3, 'Traveling', '231312', 22222.00, '2024-10-20 04:32:13', '2024-10-20 04:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `t_liabilities`
--

CREATE TABLE `t_liabilities` (
  `lt_id` bigint(20) UNSIGNED NOT NULL,
  `as_cl` varchar(100) NOT NULL DEFAULT '',
  `as_tcl` decimal(10,2) NOT NULL DEFAULT 0.00,
  `as_ncas` varchar(100) NOT NULL DEFAULT '',
  `as_tl` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_municipality_budget`
--

CREATE TABLE `t_municipality_budget` (
  `mb_id` bigint(20) UNSIGNED NOT NULL,
  `mb_year` varchar(255) NOT NULL,
  `mb_amount` decimal(15,2) NOT NULL,
  `mb_supporting_documents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`mb_supporting_documents`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_municipality_budget`
--

INSERT INTO `t_municipality_budget` (`mb_id`, `mb_year`, `mb_amount`, `mb_supporting_documents`, `created_at`, `updated_at`) VALUES
(1, '2024-2025', 1653221.00, '[\"supporting_documents\\/Fk9pKeC40RNM6M9HlIXZqdL6cOEkQRjKEhRXPEMA.docx\",\"supporting_documents\\/Yssw6AXTqleMkpTtsLhxS5vNUxXum50yo7LohqHk.pdf\"]', '2024-09-28 18:50:10', '2024-09-28 18:50:10'),
(2, '2023-2024', 3570000.00, '[\"supporting_documents\\/OuiDWHi4LOfzYNPHZYavJgOhkkA843NUkhuPQ05H.pdf\",\"supporting_documents\\/XuhmC2bIcIDMQfLy7a6Eda5KGou5LGwjermneLoh.pdf\"]', '2024-09-28 20:37:02', '2024-09-28 20:37:02'),
(3, '2025-2026', 1000000.00, '[\"supporting_documents\\/3pPnnVq4YjZYz1Nl6onhQr7VGV61b7YV8ei1TIyq.pdf\",\"supporting_documents\\/yOxdFoyY7Mou91NpQGsuXekNSHIqH93Wl9vA15Mw.pdf\",\"supporting_documents\\/LUYMmJgcsOhfPcBF0Ew44cWbhBZ9KSLg21OqvTPn.pdf\",\"supporting_documents\\/Tm12ims7z2eGrZ8e8ad2J2AERfv3mvGDSSsJPs6i.pdf\"]', '2024-09-28 20:38:05', '2024-09-28 20:38:05'),
(4, '2022-2023', 1500000.00, '[]', '2024-09-28 20:39:06', '2024-09-28 20:39:06'),
(5, '2021-2022', 1300000.00, '[]', '2024-09-28 20:39:53', '2024-09-28 20:39:53'),
(6, '2020-2021', 3000000.00, '[]', '2024-09-28 20:40:30', '2024-09-28 20:40:30'),
(7, '2019-2020', 1000000.00, '[]', '2024-09-28 20:40:59', '2024-09-28 20:40:59'),
(8, '2018-2019', 1700000.00, '[]', '2024-09-28 20:41:24', '2024-09-28 20:41:24'),
(9, '2017-2018', 800000.00, '[]', '2024-09-28 20:42:24', '2024-09-28 20:42:24'),
(10, '2016-2017', 2800000.00, '[]', '2024-09-28 20:43:11', '2024-09-28 20:43:11'),
(11, '2015-2016', 4000000.00, '[]', '2024-09-28 20:43:48', '2024-09-28 20:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `t_operational_expenses`
--

CREATE TABLE `t_operational_expenses` (
  `oe_id` bigint(20) UNSIGNED NOT NULL,
  `rv_tlcoe` varchar(100) NOT NULL DEFAULT '',
  `rv_coe` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_operational_expenses`
--

INSERT INTO `t_operational_expenses` (`oe_id`, `rv_tlcoe`, `rv_coe`, `created_at`, `updated_at`) VALUES
(1, 'Personal Service', 144.00, '2024-10-20 04:47:52', '2024-10-20 04:47:52'),
(2, 'Maintenance and Other Operating Expenses', 435456.00, '2024-10-20 04:47:59', '2024-10-20 04:47:59'),
(3, 'Financial Expenses', 242.00, '2024-10-20 04:48:07', '2024-10-20 04:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `t_revenue`
--

CREATE TABLE `t_revenue` (
  `rv_id` bigint(20) UNSIGNED NOT NULL,
  `rv_info` varchar(100) NOT NULL DEFAULT '',
  `rv_tr` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_revenue`
--

INSERT INTO `t_revenue` (`rv_id`, `rv_info`, `rv_tr`, `created_at`, `updated_at`) VALUES
(1, 'Tax Income', 11111.00, '2024-10-20 04:32:26', '2024-10-20 04:32:26'),
(2, 'Share from Internal Revenue Collections', 222222.00, '2024-10-20 04:32:35', '2024-10-20 04:32:35'),
(3, 'Other Share From National Taxes', 333333.00, '2024-10-20 04:32:43', '2024-10-20 04:32:43'),
(4, 'Other Income', 4444.00, '2024-10-20 04:32:53', '2024-10-20 04:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `t_trial_balance_entries`
--

CREATE TABLE `t_trial_balance_entries` (
  `tbe_id` bigint(20) UNSIGNED NOT NULL,
  `tbe_account` varchar(255) NOT NULL,
  `tbe_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_trial_balance_entries`
--

INSERT INTO `t_trial_balance_entries` (`tbe_id`, `tbe_account`, `tbe_code`, `created_at`, `updated_at`) VALUES
(1, 'Babymoko', '1223', '2024-10-20 04:38:11', '2024-10-20 04:38:11'),
(2, 'Bugas', '543245', '2024-10-20 04:38:23', '2024-10-20 04:38:23'),
(3, 'Bugas1', '536456', '2024-10-20 04:38:32', '2024-10-20 04:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Kent Russell Casiño', 'kent@tcc.edu.ph', NULL, '$2y$12$YZuBEFFMJ22GQUo2Qjuum.wEVjmt/bcGlqeWtY.ASPyR.DbH.jBX.', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-28 17:48:34', '2024-10-06 20:07:12'),
(2, 'James Michael Pangca', 'jamespangca@gmail.com', NULL, '$2y$12$ESy8owAIyjJVfmLgYkbQzOppM4.vbE36ICIkXztEU0HhWjsiwCh7W', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-20 04:26:40', '2024-10-20 04:26:40');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `t_assets`
--
ALTER TABLE `t_assets`
  ADD PRIMARY KEY (`as_id`);

--
-- Indexes for table `t_deficit_operation`
--
ALTER TABLE `t_deficit_operation`
  ADD PRIMARY KEY (`dp_id`);

--
-- Indexes for table `t_department`
--
ALTER TABLE `t_department`
  ADD PRIMARY KEY (`dp_id`);

--
-- Indexes for table `t_entries_violetions`
--
ALTER TABLE `t_entries_violetions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_journal_entries`
--
ALTER TABLE `t_journal_entries`
  ADD PRIMARY KEY (`jp_id`);

--
-- Indexes for table `t_liabilities`
--
ALTER TABLE `t_liabilities`
  ADD PRIMARY KEY (`lt_id`);

--
-- Indexes for table `t_municipality_budget`
--
ALTER TABLE `t_municipality_budget`
  ADD PRIMARY KEY (`mb_id`);

--
-- Indexes for table `t_operational_expenses`
--
ALTER TABLE `t_operational_expenses`
  ADD PRIMARY KEY (`oe_id`);

--
-- Indexes for table `t_revenue`
--
ALTER TABLE `t_revenue`
  ADD PRIMARY KEY (`rv_id`);

--
-- Indexes for table `t_trial_balance_entries`
--
ALTER TABLE `t_trial_balance_entries`
  ADD PRIMARY KEY (`tbe_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_assets`
--
ALTER TABLE `t_assets`
  MODIFY `as_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_deficit_operation`
--
ALTER TABLE `t_deficit_operation`
  MODIFY `dp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_department`
--
ALTER TABLE `t_department`
  MODIFY `dp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_entries_violetions`
--
ALTER TABLE `t_entries_violetions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_journal_entries`
--
ALTER TABLE `t_journal_entries`
  MODIFY `jp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_liabilities`
--
ALTER TABLE `t_liabilities`
  MODIFY `lt_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_municipality_budget`
--
ALTER TABLE `t_municipality_budget`
  MODIFY `mb_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `t_operational_expenses`
--
ALTER TABLE `t_operational_expenses`
  MODIFY `oe_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_revenue`
--
ALTER TABLE `t_revenue`
  MODIFY `rv_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_trial_balance_entries`
--
ALTER TABLE `t_trial_balance_entries`
  MODIFY `tbe_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
