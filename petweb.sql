-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 02:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `application_feedback`
--

CREATE TABLE `application_feedback` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_feedback`
--

INSERT INTO `application_feedback` (`id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(1, 'rao', 'rao@gmail.com', '9898989898', 'wwe', 'skjdnkjsdnfnsdfjnsdf smdnvd'),
(2, 'rao', 'rao@gmail.com', '9898989898', 'wwe', 'skjdnkjsdnfnsdfjnsdf smdnvd'),
(3, 'rao', 'rao@gmail.com', '9898989898', 'wwe', 'skjdnkjsdnfnsdfjnsdf smdnvd'),
(4, 'rao', 'rao@gmail.com', '9898989898', 'wwe', 'skjdnkjsdnfnsdfjnsdf smdnvd'),
(5, 'rao', 'rao@gmail.com', '9898989898', 'wwe', 'skjdnkjsdnfnsdfjnsdf smdnvd'),
(6, 'rao', 'rao@gmail.com', '9898989898', 'wwe', 'skjdnkjsdnfnsdfjnsdf smdnvd'),
(7, 'rao', 'rao@gmail.com', '9898989898', 'wwe', 'skjdnkjsdnfnsdfjnsdf smdnvd'),
(8, 'rao', 'rao@gmail.com', '9898989898', 'wwe', 'skjdnkjsdnfnsdfjnsdf smdnvd'),
(9, 'rao', 'rao@gmail.com', '9898989898', 'wwe', 'skjdnkjsdnfnsdfjnsdf smdnvd'),
(10, '', '', '', '', ''),
(11, '', '', '', '', ''),
(12, 'rao', 'rao', 'faof', 'kjsdnv', 'ad'),
(13, 'rao', 'sg f', 'sd ', 'sd,m ', 's,d v'),
(14, 'rao', 'sg f', 'sd ', 'sd,m ', 's,d v'),
(15, 'rao', 'sg f', 'sd ', 'sd,m ', 's,d v'),
(16, 'rao', 'sg f', 'sd ', 'sd,m ', 's,d v'),
(17, 'minuk', 'munik@gmail.com', '56565656', 'dog doctore ', 'new requeodf');

-- --------------------------------------------------------

--
-- Table structure for table `application_userprofile`
--

CREATE TABLE `application_userprofile` (
  `id` bigint(20) NOT NULL,
  `Full_name` varchar(100) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Animal_name` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_userprofile`
--

INSERT INTO `application_userprofile` (`id`, `Full_name`, `Email`, `Animal_name`, `Password`) VALUES
(1, 'rao', 'abc@gmail.com', 'dob', '123456'),
(2, 'rao', 'rao@gmail.com', 'dog', '456789'),
(3, 'rao', 'raoshreepal@gmail.com', 'cat', '123456'),
(4, 'shreepal', 'shreepal@gmail.com', 'cat', '123456'),
(5, 'raoshreepal', 'xyz@gmail.com', 'dog', 'abcd'),
(6, 'manoh', 'mano@gmail.com', 'dog', '123'),
(7, 'pink', 'pink@gmail.com', 'cat', '147654'),
(8, 'manish', 'manish@gmail.com', 'Dog', 'manish');

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
  `id` bigint(20) NOT NULL,
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
(25, 'Can add user profile', 7, 'add_userprofile'),
(26, 'Can change user profile', 7, 'change_userprofile'),
(27, 'Can delete user profile', 7, 'delete_userprofile'),
(28, 'Can view user profile', 7, 'view_userprofile'),
(29, 'Can add feedback', 8, 'add_feedback'),
(30, 'Can change feedback', 8, 'change_feedback'),
(31, 'Can delete feedback', 8, 'delete_feedback'),
(32, 'Can view feedback', 8, 'view_feedback');

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
(1, 'pbkdf2_sha256$260000$fI4i01zSqJVuA0DDsCgayv$0hx66QI3M68d9WY9FgaYoOsTeOcCR5oNQR4EkxQLWFo=', NULL, 0, 'raoshreepal@gmail.com', '', '', 'raoshreepal@gmail.com', 0, 1, '2024-02-22 04:45:11.589783'),
(2, 'pbkdf2_sha256$260000$Ly7QwYf5AOuNQgfWAHWDSg$f/3qjURkWKeGZbv/4PP9QDpV6lbVxwSwh2xzFkWyKoA=', NULL, 0, 'shreepal@gmail.com', '', '', 'shreepal@gmail.com', 0, 1, '2024-02-22 04:45:35.228498'),
(3, 'pbkdf2_sha256$260000$bd922SxNrdEsTthBS1rUCn$arp9PyvNwEogA77DV0EgYw98cIAhOkUN+IsMAjkPUIM=', NULL, 0, 'xyz@gmail.com', '', '', 'xyz@gmail.com', 0, 1, '2024-02-22 04:46:20.825820'),
(4, 'pbkdf2_sha256$260000$ff2M7YTR6I9r9PsQOnwElg$sFvnNYa61QZjQFeL9KKNsnPA7t7x31ylJOu/f6bs/lQ=', NULL, 0, 'mano@gmail.com', '', '', 'mano@gmail.com', 0, 1, '2024-02-22 05:11:26.446653'),
(5, 'pbkdf2_sha256$260000$9eOmo79bUf4tTibUetz0nH$tHJehNrDZ7CmgMVCN8bSxNcr4duAX+0vm1uLPDyf74s=', NULL, 0, 'pink@gmail.com', '', '', 'pink@gmail.com', 0, 1, '2024-02-22 10:01:51.156583'),
(6, 'pbkdf2_sha256$260000$eEbtvYIg22A5i4XzpFIxd3$NZ7JM504x4HXYvpIVrowJVmwSN/9H8h3sbr+yEo95SA=', NULL, 0, 'manish@gmail.com', '', '', 'manish@gmail.com', 0, 1, '2024-02-22 13:55:21.198698');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
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
(8, 'application', 'feedback'),
(7, 'application', 'userprofile'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-21 16:51:58.588965'),
(2, 'auth', '0001_initial', '2024-02-21 16:51:59.117288'),
(3, 'admin', '0001_initial', '2024-02-21 16:51:59.257137'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-21 16:51:59.268599'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-21 16:51:59.283439'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-02-21 16:51:59.350981'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-02-21 16:51:59.412359'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-02-21 16:51:59.437560'),
(9, 'auth', '0004_alter_user_username_opts', '2024-02-21 16:51:59.449570'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-02-21 16:51:59.516327'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-02-21 16:51:59.523855'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-02-21 16:51:59.540212'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-02-21 16:51:59.560778'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-02-21 16:51:59.583057'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-02-21 16:51:59.601500'),
(16, 'auth', '0011_update_proxy_permissions', '2024-02-21 16:51:59.616288'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-02-21 16:51:59.639437'),
(18, 'sessions', '0001_initial', '2024-02-21 16:51:59.688265'),
(19, 'application', '0001_initial', '2024-02-21 18:52:35.581132'),
(20, 'application', '0002_feedback', '2024-02-22 10:07:27.130999');

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
('ivj76sc0qzirw9tag79hsrk31fmquiz8', 'eyJlbWFpbCI6Im1hbmlzaEBnbWFpbC5jb20ifQ:1rd9Yq:enqrUyi0MpqMDRrFcgShtkd5XDAHH4QV4dpIklbYOm8', '2024-03-07 13:56:28.268066');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application_feedback`
--
ALTER TABLE `application_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_userprofile`
--
ALTER TABLE `application_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application_feedback`
--
ALTER TABLE `application_feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `application_userprofile`
--
ALTER TABLE `application_userprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
