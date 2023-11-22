-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2023 at 08:20 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_besar_pbp`
--

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
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0fbacff99e211569329d0fbf13d5217bffbda68e3c1753908c4477a078c7fdf2e3a963928dd45c8a', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:47:19', '2023-11-22 00:47:19', '2024-11-22 07:47:19'),
('1f60ab57fc5b8f3d9dcb86280bf599cce931d5a3e18adeab076c0b1ea3d449480ba03567d0b00b63', 5, 1, 'Authentication Token', '[]', 0, '2023-11-22 01:37:20', '2023-11-22 01:37:20', '2024-11-22 08:37:20'),
('2cda92254b2926087f4a3d5ee9187f4f9e447754afe45676f165deaafecd88d58e3fec1e0b44d949', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:44:19', '2023-11-22 00:44:19', '2024-11-22 07:44:19'),
('36c6e4dd34b3c59bba6761005d8ed1b6ef99c2e02f743ce114b01f716725d7c9d1aaf28025d121b5', 1, 1, 'Authentication Token', '[]', 0, '2023-11-21 23:04:15', '2023-11-21 23:04:15', '2024-11-22 06:04:15'),
('3b2a56030593e177330dc0555986abb4adc04bb7482fd86d9cb3f95d9405a8502f867fdb5e3fefb6', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:42:03', '2023-11-22 00:42:03', '2024-11-22 07:42:03'),
('4b0632f3ad1fbde9be604ff06e0c5c0d32efaf99d6b4dccb83e7060f343e57b1deaeacc96733d271', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:44:26', '2023-11-22 00:44:26', '2024-11-22 07:44:26'),
('56c75169319015a41b6ba0526fb23964b7cf82ca427b62d15a6a11fd94ea69fb2c02a8caa34e2cff', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:43:44', '2023-11-22 00:43:44', '2024-11-22 07:43:44'),
('5b30c906feaf5626d270c2520c4028ad1d5b84d5244472a471d93de510512c791880691bcba5d1bd', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 01:01:18', '2023-11-22 01:01:18', '2024-11-22 08:01:18'),
('5f995cd1aad00bae6049ad08d924bb235e7fe0434df55c695365e8b19a903eb25baed9244d67cfbe', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 06:34:34', '2023-11-22 06:34:34', '2024-11-22 13:34:34'),
('6275fae9baafcc984ba3535988618727331274ceb216e2b64227ceec0520370979f2b64d101da8bf', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:41:45', '2023-11-22 00:41:45', '2024-11-22 07:41:45'),
('6efaedd79324639aa247cc52fbe5403cf0405b0b68c5012ecb97372b9dd00e9797b67b5c38ba7b6a', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:44:13', '2023-11-22 00:44:13', '2024-11-22 07:44:13'),
('7197d440f96ae4cfe80c66f07df90adc17205344de1f8d00d30c76d36cef60d0d1927bab7cba5551', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 01:19:47', '2023-11-22 01:19:48', '2024-11-22 08:19:47'),
('783d01669594a9edd0767500278689a2730aa6def8102677abad5e516c5409728ce884b936ce066d', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:16:44', '2023-11-22 00:16:44', '2024-11-22 07:16:44'),
('791680b22fabdff8db4c75eb306f04031fb120ad6172d5180777ca65a49cd2971d1a848e0ee444ee', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 01:01:53', '2023-11-22 01:01:53', '2024-11-22 08:01:53'),
('8702244d19ca218764c02abc9096ae1149d167fa21258216a626bf3d9b86d24e1dd0646243afbc0b', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 01:07:04', '2023-11-22 01:07:04', '2024-11-22 08:07:04'),
('8b58b2de9e543fafa96938be7bc32466443bcb222b87f7ece47b2bfded2f53297a759db3caa407c6', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:45:26', '2023-11-22 00:45:26', '2024-11-22 07:45:26'),
('8dd3ee2d59e3e8100593cd11042b7ba3fc8829adc449a03e886b9c2b4eaeab7c3b2b6654ca0590c5', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:43:04', '2023-11-22 00:43:04', '2024-11-22 07:43:04'),
('92d01b3c82b50f3c9cba7b1a955b4ecb305ec416f95c535a28dfe77bac6910ad3962078061e5b635', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:44:02', '2023-11-22 00:44:02', '2024-11-22 07:44:02'),
('a70214667cd459a3aaf5616f34344add101d60f5b9ae25f4ab8f4188eabd5d3d97c1f00ffbccba3f', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 01:01:54', '2023-11-22 01:01:54', '2024-11-22 08:01:54'),
('ab23a65f4a8d92b1d402a15880346a8bdbeb818d793bae05cc170541572a40916b231dfa00700c0e', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:28:56', '2023-11-22 00:28:56', '2024-11-22 07:28:56'),
('aec1058b81c7487baa4fd6c82e1afbb9bdd382b940865b1e85de2b622966efd902453152a09afc62', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:46:06', '2023-11-22 00:46:06', '2024-11-22 07:46:06'),
('b07a51dbe533550fe3609f1b7f0b9dfdbd37d920a463cdcaa493d96b8195f24e81d85ae8bb1dc60c', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:45:59', '2023-11-22 00:45:59', '2024-11-22 07:45:59'),
('b2754b4ebd831e4bb0cd58fa0fb14f77d8863cf7016e34a81a1903b92654d5b9168d666e525374f4', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:05:51', '2023-11-22 00:05:51', '2024-11-22 07:05:51'),
('b2766282ac581298fef425a235011a4e45f0aa0c2d74627dac8574124fb5eedb5584b967b2d7bac7', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 01:19:34', '2023-11-22 01:19:34', '2024-11-22 08:19:34'),
('bc26337e37eb25f359918c5e70e8fdddf3b40a45db2b2c1d8e3c8119f59f13e707cf22a74a2bf343', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:46:55', '2023-11-22 00:46:55', '2024-11-22 07:46:55'),
('c7f6bf009ad77a9cb7c5c1ea2fd5a4ec5497e1510c53450bce50aebd5421067c8ab7978244fd7edd', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:41:50', '2023-11-22 00:41:50', '2024-11-22 07:41:50'),
('ce8fb71eff32f4481146aa1ff83b5a441718dbec31b22975224a12356b88206dc93955e6dcad3405', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:43:31', '2023-11-22 00:43:31', '2024-11-22 07:43:31'),
('e557b9eef1ffc7ffc2b7e5f51c76b0958b481f04b5a0bed057442aba9b0291d8ee7dcf353d206a83', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:55:02', '2023-11-22 00:55:02', '2024-11-22 07:55:02'),
('eaf5320e5b4b6f2a5d74fb30de03a0403a6ceeae009512476edb1e38db292b83ec136e1c73a17b16', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:44:15', '2023-11-22 00:44:15', '2024-11-22 07:44:15'),
('eb685cd498028cf6c7b822c1adaf9230cebc44ec3137e7f9c924122409bb118604aa09c0cf635d8e', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:15:33', '2023-11-22 00:15:33', '2024-11-22 07:15:33'),
('f5c3d311fda2b0100480cf0067fdb9b84ea9c11f45113b8024ee1e4f6f3e9293e159166fd8d0de5b', 2, 1, 'Authentication Token', '[]', 0, '2023-11-21 22:04:27', '2023-11-21 22:04:27', '2024-11-22 05:04:27'),
('f72ac48391bee6719e767e20ba9310416d12291c7b23a340b734fb5d10b3126839aa998dd5e0618e', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 00:41:40', '2023-11-22 00:41:40', '2024-11-22 07:41:40'),
('fce8c2790b81da3b5029522e30bf9891603c352eada31df95ca0e1c107146fc04b6a7cacb63a7fc5', 4, 1, 'Authentication Token', '[]', 0, '2023-11-22 01:01:47', '2023-11-22 01:01:47', '2024-11-22 08:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '8VD5fLgXWtR5w6w5NxD6Jy03iqyI8lklj9WjivGh', NULL, 'http://localhost', 1, 0, 0, '2023-11-21 14:43:53', '2023-11-21 14:43:53'),
(2, NULL, 'Laravel Password Grant Client', 'eeYKubGXluhyW2GTufAWO44sQXwo9ileGFZSQnij', 'users', 'http://localhost', 0, 1, 0, '2023-11-21 14:43:53', '2023-11-21 14:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-11-21 14:43:53', '2023-11-21 14:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tipe_kamar` varchar(255) NOT NULL,
  `harga_dasar` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal_checkin` varchar(255) NOT NULL,
  `tanggal_checkout` varchar(255) NOT NULL,
  `qr_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `id_user`, `tipe_kamar`, `harga_dasar`, `harga`, `tanggal_checkin`, `tanggal_checkout`, `qr_code`) VALUES
(1, 6, 'Deluxe', 100000, 200000, '88-88-8888', '88-88-8888', 'update'),
(2, 1, 'Premium', 20000, 500000, '18-04-2003', '20-04-2003', 'link_qrcode');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `no_telp`, `tgl_lahir`) VALUES
(3, 'jamblang', '$2y$12$rDb7lnYeL9gaWziWxw3JF.di8jptNlLZ.EZIBu.MegBSIYS3hjv2.', 'jamblang@gmail.com', '087736709393', '88-99-9999'),
(4, '16', '$2y$12$ucxwtwTU1I6/pbks5p42kOWor9zpCAUqhnZecJg4IbpAwdevVCWXi', '16@gmail.com', '087736709393', '2023-01-01'),
(5, '18', '$2y$12$FuiP/RKuEUvS2OLwPKY4julCgl0pRGRvTxbzgBxvzOUKxb/uWk7vC', '18@gmail.com', '087736709393', '2023-01-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
