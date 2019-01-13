-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 13, 2019 at 11:04 PM
-- Server version: 5.5.56-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kingWeb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add sys department', 1, 'add_sysdepartment'),
(2, 'Can change sys department', 1, 'change_sysdepartment'),
(3, 'Can delete sys department', 1, 'delete_sysdepartment'),
(4, 'Can add sys loginlog', 2, 'add_sysloginlog'),
(5, 'Can change sys loginlog', 2, 'change_sysloginlog'),
(6, 'Can delete sys loginlog', 2, 'delete_sysloginlog'),
(7, 'Can add sys menu', 3, 'add_sysmenu'),
(8, 'Can change sys menu', 3, 'change_sysmenu'),
(9, 'Can delete sys menu', 3, 'delete_sysmenu'),
(10, 'Can add sys module', 4, 'add_sysmodule'),
(11, 'Can change sys module', 4, 'change_sysmodule'),
(12, 'Can delete sys module', 4, 'delete_sysmodule'),
(13, 'Can add sys operationlog', 5, 'add_sysoperationlog'),
(14, 'Can change sys operationlog', 5, 'change_sysoperationlog'),
(15, 'Can delete sys operationlog', 5, 'delete_sysoperationlog'),
(16, 'Can add sys role', 6, 'add_sysrole'),
(17, 'Can change sys role', 6, 'change_sysrole'),
(18, 'Can delete sys role', 6, 'delete_sysrole'),
(19, 'Can add sys rolemenu', 7, 'add_sysrolemenu'),
(20, 'Can change sys rolemenu', 7, 'change_sysrolemenu'),
(21, 'Can delete sys rolemenu', 7, 'delete_sysrolemenu'),
(22, 'Can add sys systemoption', 8, 'add_syssystemoption'),
(23, 'Can change sys systemoption', 8, 'change_syssystemoption'),
(24, 'Can delete sys systemoption', 8, 'delete_syssystemoption'),
(25, 'Can add sys tablecolumn', 9, 'add_systablecolumn'),
(26, 'Can change sys tablecolumn', 9, 'change_systablecolumn'),
(27, 'Can delete sys tablecolumn', 9, 'delete_systablecolumn'),
(28, 'Can add sys tablelist', 10, 'add_systablelist'),
(29, 'Can change sys tablelist', 10, 'change_systablelist'),
(30, 'Can delete sys tablelist', 10, 'delete_systablelist'),
(31, 'Can add sys user', 11, 'add_sysuser'),
(32, 'Can change sys user', 11, 'change_sysuser'),
(33, 'Can delete sys user', 11, 'delete_sysuser'),
(34, 'Can add sys userdepartment', 12, 'add_sysuserdepartment'),
(35, 'Can change sys userdepartment', 12, 'change_sysuserdepartment'),
(36, 'Can delete sys userdepartment', 12, 'delete_sysuserdepartment'),
(37, 'Can add sys userrole', 13, 'add_sysuserrole'),
(38, 'Can change sys userrole', 13, 'change_sysuserrole'),
(39, 'Can delete sys userrole', 13, 'delete_sysuserrole'),
(40, 'Can add test leader', 14, 'add_testleader'),
(41, 'Can change test leader', 14, 'change_testleader'),
(42, 'Can delete test leader', 14, 'delete_testleader'),
(43, 'Can add log entry', 15, 'add_logentry'),
(44, 'Can change log entry', 15, 'change_logentry'),
(45, 'Can delete log entry', 15, 'delete_logentry'),
(46, 'Can add permission', 16, 'add_permission'),
(47, 'Can change permission', 16, 'change_permission'),
(48, 'Can delete permission', 16, 'delete_permission'),
(49, 'Can add group', 17, 'add_group'),
(50, 'Can change group', 17, 'change_group'),
(51, 'Can delete group', 17, 'delete_group'),
(52, 'Can add user', 18, 'add_user'),
(53, 'Can change user', 18, 'change_user'),
(54, 'Can delete user', 18, 'delete_user'),
(55, 'Can add content type', 19, 'add_contenttype'),
(56, 'Can change content type', 19, 'change_contenttype'),
(57, 'Can delete content type', 19, 'delete_contenttype'),
(58, 'Can add session', 20, 'add_session'),
(59, 'Can change session', 20, 'change_session'),
(60, 'Can delete session', 20, 'delete_session'),
(61, 'Can add sys user profile', 21, 'add_sysuserprofile'),
(62, 'Can change sys user profile', 21, 'change_sysuserprofile'),
(63, 'Can delete sys user profile', 21, 'delete_sysuserprofile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$rRRFPJvo98aG$5ahjAT8aQvzeWzTjxn4bpUIkiBsse5HDC/qyDBjB5Yk=', '2019-01-04 16:09:57', 1, 'sa', '管理员', '超级', 'sa@sa.com', 1, 1, '2018-06-09 10:00:16'),
(9, 'pbkdf2_sha256$36000$Ryz1bomuMMVb$GtYX194lZfJHvO8Y0xiM4bZkBDn6Kv6eMsQuNaYXCJA=', '2018-08-31 23:58:33', 0, 'admin', '杰', '张', 'admin@admin.com', 0, 1, '2018-07-16 12:49:42'),
(12, 'pbkdf2_sha256$36000$2GUKOPxtvP1G$28rOmr0EwQ+qC+ya1UVrptiDxzsrJo/zSc+D5E+0uvQ=', '2018-09-02 21:25:54', 0, 'employee', '', '', 'asd@123.com', 0, 1, '2018-09-02 21:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-06-18 13:21:52', '1', 'Tech', 1, '[{\"added\": {}}]', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'kingWeb', 'sysdepartment'),
(2, 'kingWeb', 'sysloginlog'),
(3, 'kingWeb', 'sysmenu'),
(4, 'kingWeb', 'sysmodule'),
(5, 'kingWeb', 'sysoperationlog'),
(6, 'kingWeb', 'sysrole'),
(7, 'kingWeb', 'sysrolemenu'),
(8, 'kingWeb', 'syssystemoption'),
(9, 'kingWeb', 'systablecolumn'),
(10, 'kingWeb', 'systablelist'),
(11, 'kingWeb', 'sysuser'),
(12, 'kingWeb', 'sysuserdepartment'),
(13, 'kingWeb', 'sysuserrole'),
(14, 'kingWeb', 'testleader'),
(15, 'admin', 'logentry'),
(16, 'auth', 'permission'),
(17, 'auth', 'group'),
(18, 'auth', 'user'),
(19, 'contenttypes', 'contenttype'),
(20, 'sessions', 'session'),
(21, 'kingWeb', 'sysuserprofile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-06-09 08:20:50'),
(2, 'auth', '0001_initial', '2018-06-09 08:20:52'),
(3, 'admin', '0001_initial', '2018-06-09 08:20:53'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-06-09 08:20:53'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-06-09 08:20:54'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-06-09 08:20:54'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-06-09 08:20:54'),
(8, 'auth', '0004_alter_user_username_opts', '2018-06-09 08:20:54'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-06-09 08:20:54'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-06-09 08:20:54'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-06-09 08:20:55'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-06-09 08:20:55'),
(13, 'kingWeb', '0001_initial', '2018-06-09 08:21:00'),
(14, 'sessions', '0001_initial', '2018-06-09 08:21:01'),
(15, 'kingWeb', '0002_auto_20180621_1814', '2018-06-21 10:14:47'),
(16, 'kingWeb', '0003_sysuserprofile', '2018-06-27 01:26:22'),
(17, 'kingWeb', '0004_auto_20180629_2024', '2018-06-29 12:24:58'),
(18, 'kingWeb', '0005_auto_20180716_2207', '2018-07-16 14:07:21'),
(19, 'kingWeb', '0006_delete_sysuser', '2018-07-16 14:08:43'),
(20, 'kingWeb', '0007_auto_20180716_2233', '2018-07-16 14:33:43'),
(21, 'kingWeb', '0008_auto_20180716_2236', '2018-07-16 14:36:48'),
(22, 'kingWeb', '0009_remove_systablelist_allowadd', '2018-08-28 11:00:51'),
(23, 'kingWeb', '0010_auto_20180830_1123', '2018-08-30 11:23:23'),
(24, 'kingWeb', '0011_sysuserprofile_personname', '2018-08-31 23:36:41'),
(25, 'kingWeb', '0012_auto_20180901_1651', '2018-09-01 16:51:17'),
(26, 'kingWeb', '0013_auto_20180901_1652', '2018-09-01 16:52:53'),
(27, 'kingWeb', '0014_auto_20180921_2214', '2018-09-21 22:14:28'),
(28, 'kingWeb', '0015_auto_20180921_2214', '2018-09-21 22:14:49'),
(29, 'kingWeb', '0016_auto_20180921_2216', '2018-09-21 22:17:05'),
(30, 'kingWeb', '0017_auto_20180921_2218', '2018-09-21 22:18:06'),
(31, 'kingWeb', '0018_systablelist_allowdetail', '2018-10-01 22:25:13'),
(32, 'kingWeb', '0019_auto_20181004_0943', '2018-10-04 09:43:31'),
(33, 'kingWeb', '0020_auto_20181004_1556', '2018-10-04 15:56:48'),
(34, 'kingWeb', '0021_systablecolumn_selectrange', '2019-01-07 14:54:22'),
(35, 'kingWeb', '0022_auto_20190107_1515', '2019-01-07 15:15:44'),
(36, 'kingWeb', '0023_auto_20190107_1523', '2019-01-07 15:23:21'),
(37, 'kingWeb', '0024_auto_20190108_1951', '2019-01-08 19:51:04'),
(38, 'kingWeb', '0025_systablecolumn_forbiddenfileextension', '2019-01-13 15:20:50'),
(39, 'kingWeb', '0026_auto_20190113_1859', '2019-01-13 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qna0bcvzoovhgtzs1a0v6y3zb75ulwc8', 'YWVlOGQ0MzM4NDIzY2ZmZWFmOTQ1ZjhmZDBjOWQ1ZWU4MTQzMmY0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmQ3YzdiMjE4ZWQxMGIxNzdjMzUzZTY1ZDIzMTRkNzE4ZTRiN2UyIn0=', '2018-07-10 14:39:58'),
('0wu1ewssxk78ztyvtlqs66n114cznzv6', 'YzQ2ZmQwNDAwOGJmZDVmOWI0ZGM4MDI5NmRmNjQyNDcyN2I3NzgyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWNkYjFlMDlkYWFiMWY2NzJkNWFiMTA4YWNlMGIxNGQ4ZGVkNzU0In0=', '2018-07-11 11:29:56'),
('10mcxcjtmabebx2e5gvflaxdv6eh18kc', 'YzQ2ZmQwNDAwOGJmZDVmOWI0ZGM4MDI5NmRmNjQyNDcyN2I3NzgyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWNkYjFlMDlkYWFiMWY2NzJkNWFiMTA4YWNlMGIxNGQ4ZGVkNzU0In0=', '2018-07-30 12:49:18'),
('2rxonm7ywucr9swrxavz00ljpjvntyw7', 'YzQ2ZmQwNDAwOGJmZDVmOWI0ZGM4MDI5NmRmNjQyNDcyN2I3NzgyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWNkYjFlMDlkYWFiMWY2NzJkNWFiMTA4YWNlMGIxNGQ4ZGVkNzU0In0=', '2018-07-31 08:21:47'),
('pu5ni62kv70w3hdlt72ykh7tr95ipdsc', 'YTRkMTQzNjljNGY5OGY3YjJhNjIyNjg4YjQzODJiZTRiMWIyZWFiZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MmMwNDgzNGZjNzBmNTdiZjk5ZmNkMmM1NWI5NDg5NTEzOTUzMmFkIn0=', '2018-09-10 16:21:34'),
('4mzha02upwsyh6xbu65a3iny14jpju62', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2018-09-14 23:58:42'),
('x0s6fw865se9prsp0nn7lmiere1jje2b', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2018-09-15 10:37:50'),
('g0kvop0srmxi7mvn7f6zo5coxixpdlg0', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2018-09-15 13:30:41'),
('2w2gtv0xue71nkb9nab4w0ubzwozmfud', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2018-09-16 21:26:18'),
('8lhnqy17cptd4nhw0dngqmkxianwtf1c', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2018-10-05 22:19:15'),
('kjlw49uqwhjaprez1rvkommv30eww6wp', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2018-10-15 22:25:37'),
('v739r2u53w8fnopphr1ferdxzglf7htg', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2018-10-16 19:51:34'),
('6mjlhv7r02r8x734tktshnlvm7yiuzrl', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2018-10-18 09:20:18'),
('oyno6ngmxje0yieqmydztfujrlxfzt3d', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2018-10-18 12:49:20'),
('i9dxd9elp4361axyj6l6m0rw5z8hh4kk', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2018-10-18 13:48:02'),
('20zw9bkig1206t5fbjtzvlzhc4q9pcdb', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2018-10-18 13:54:09'),
('glvstfvg3twwva1cilia3u6i9ekktjuq', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2019-01-02 19:47:46'),
('qhezw9fk4nuwmg5eacza1gch4efl6t6u', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2019-01-02 19:47:48'),
('o4ihpqzglxl76xmmd8ns62b6tewdd5eh', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2019-01-18 16:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `Sys_Department`
--

CREATE TABLE `Sys_Department` (
  `Id` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `ModifyDateTime` datetime NOT NULL,
  `Creator` int(11) DEFAULT NULL,
  `Modifier` int(11) DEFAULT NULL,
  `Description` varchar(100) NOT NULL,
  `Leader` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `ParentId` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_Department`
--

INSERT INTO `Sys_Department` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `Description`, `Leader`, `Name`, `ParentId`) VALUES
(1, '2018-06-18 13:21:21', '2018-06-18 13:21:21', 1, 0, 'test department', 'Jack', 'Tech', 5),
(2, '2018-06-19 09:50:37', '2018-06-19 09:50:37', NULL, NULL, '123213213uhhh', '王杰', '测试部门', 1),
(10, '2018-06-19 11:36:46', '2018-06-19 11:36:46', NULL, NULL, 'asdsad', 'sadasd', 'asdasd', 1),
(5, '2018-06-19 11:21:40', '2018-06-19 11:21:40', NULL, NULL, '阿斯顿', '阿斯顿', 'test啊啊', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Sys_LoginLog`
--

CREATE TABLE `Sys_LoginLog` (
  `Id` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `ModifyDateTime` datetime NOT NULL,
  `Creator` int(11) DEFAULT NULL,
  `Modifier` int(11) DEFAULT NULL,
  `ClientIP` varchar(15) DEFAULT NULL,
  `UserName` varchar(20) NOT NULL,
  `Description` varchar(40) DEFAULT NULL,
  `ClientInfo` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Sys_Menu`
--

CREATE TABLE `Sys_Menu` (
  `Id` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `ModifyDateTime` datetime NOT NULL,
  `Creator` int(11) DEFAULT NULL,
  `Modifier` int(11) DEFAULT NULL,
  `Name` varchar(18) NOT NULL,
  `ListOrder` int(11) NOT NULL,
  `ParentId` int(11) DEFAULT NULL,
  `Type` int(11) NOT NULL,
  `Url` varchar(300) NOT NULL,
  `ModuleId` int(11) NOT NULL,
  `Icon` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_Menu`
--

INSERT INTO `Sys_Menu` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `Name`, `ListOrder`, `ParentId`, `Type`, `Url`, `ModuleId`, `Icon`) VALUES
(20, '2018-02-25 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '登陆日志', 2, 55, 1, '/adm/log/login', 1, 'fa'),
(21, '2018-02-25 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '操作日志', 1, 55, 1, '/adm/log/operation', 1, 'fa'),
(23, '2018-02-26 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '添加', 1, 47, 2, '/adm/role/add', 1, 'fa'),
(25, '2018-02-26 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '编辑', 2, 47, 2, '/adm/role/edit', 1, 'fa'),
(26, '2018-02-26 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '删除', 3, 47, 2, '/adm/role/delete', 1, 'fa'),
(28, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '添加', 1, 48, 2, '/adm/department/add', 1, 'fa'),
(29, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '编辑', 3, 48, 2, '/adm/department/edit', 1, 'fa'),
(30, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '删除', 3, 48, 2, '/adm/department/delete', 1, 'fa'),
(31, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '保存', 1, 49, 2, '/adm/role/auth_menus', 1, 'fa'),
(32, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '添加', 1, 50, 2, '/adm/user/add', 1, 'fa'),
(33, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '编辑', 2, 50, 2, '/adm/user/edit', 1, 'fa'),
(34, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '删除', 3, 50, 2, '/adm/user/delete', 1, 'fa'),
(35, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '角色授权', 4, 50, 2, '/adm/user/authen', 1, 'fa'),
(36, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '添加', 1, 51, 2, '/adm/user/select_user', 1, 'fa'),
(38, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '添加', 1, 52, 2, '/adm/module/add', 1, 'fa'),
(39, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '编辑', 2, 52, 2, '/adm/module/edit', 1, 'fa'),
(40, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '删除', 3, 52, 2, '/adm/module/delete', 1, 'fa'),
(41, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '添加', 1, 53, 2, '/adm/menu/add', 1, 'fa'),
(42, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '删除用户部门', 2, 51, 2, '/adm/user/remove_department_user', 1, 'fa'),
(43, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '编辑', 2, 53, 2, '/adm/menu/edit', 1, 'fa'),
(44, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '删除', 3, 53, 2, '/adm/menu/delete', 1, 'fa'),
(46, '2018-02-25 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '系统设置', 0, 0, 0, '#', 1, 'fa fa-cog'),
(47, '2018-02-25 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '角色管理', 1, 46, 1, '/adm/role/index', 1, 'fa fa-user-circle'),
(48, '2018-02-25 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '部门管理', 2, 46, 1, '/adm/department/index', 1, 'fa fa-vcard-o'),
(49, '2018-02-25 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '角色授权', 3, 46, 1, '/adm/role/authen', 1, 'fa fa-user-circle-o'),
(50, '2018-02-25 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '用户管理', 4, 46, 1, '/adm/user/index', 1, 'fa fa-user-o'),
(51, '2018-02-25 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '用户部门', 5, 46, 1, '/adm/user/department', 1, 'fa fa-vcard'),
(52, '2018-02-25 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '模块管理', 6, 46, 1, '/adm/module/index', 1, ''),
(53, '2018-02-25 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '菜单管理', 7, 46, 1, '/adm/menu/index', 1, 'fa fa-list'),
(54, '2018-02-25 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '修改信息', 13, 46, 1, '/adm/user/modifyinfo', 1, 'fa fa-info-circle'),
(55, '2018-02-25 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '系统日志', 1, 0, 0, '#', 1, 'fa fa-sticky-note'),
(57, '2018-03-08 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '统计图表', 3, 55, 1, '/adm/log/chart', 1, 'fa'),
(1027, '2018-02-25 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '后台任务', 12, 46, 1, '/jobs', 1, 'fa fa-info-circle'),
(1028, '2018-03-12 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '表管理', 8, 46, 1, '/adm/tablelist/index', 1, 'fa'),
(1029, '2018-03-12 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '表结构管理', 9, 46, 1, '/adm/tablecolumn/index', 1, 'fa'),
(1030, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '添加', 1, 1028, 2, '/adm/tablelist/add', 1, 'fa'),
(1031, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '编辑', 2, 1028, 2, '/adm/tablelist/edit', 1, 'fa'),
(1032, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '删除', 3, 1028, 2, '/adm/tablelist/delete', 1, 'fa'),
(1033, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '添加', 1, 1029, 2, '/adm/tablecolumn/add', 1, 'fa'),
(1034, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '编辑', 2, 1029, 2, '/adm/tablecolumn/edit', 1, 'fa'),
(1035, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '删除', 3, 1029, 2, '/adm/tablecolumn/delete', 1, 'fa'),
(2028, '2018-03-20 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '系统参数', 11, 46, 1, '/adm/systemoption/index', 1, 'fa'),
(2029, '2018-03-20 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '添加', 1, 2028, 2, '/adm/systemoption/add', 1, 'fa'),
(2030, '2018-03-20 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '编辑', 2, 2028, 2, '/adm/systemoption/edit', 1, 'fa'),
(2031, '2018-03-20 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '删除', 3, 2028, 2, '/adm/systemoption/delete', 1, 'fa'),
(2032, '2018-03-23 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '设置属性', 5, 1029, 2, '/adm/tablecolumn/setvalue', 1, 'fa'),
(2033, '2018-04-01 11:12:08', '0000-00-00 00:00:00', NULL, NULL, '基础数据', 4, 0, 0, '#', 1, 'fa fa-database'),
(2043, '2018-03-05 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '保存用户部门', 2, 51, 2, '/adm/user/set_department_user', 1, 'fa'),
(2036, '2018-03-31 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '添加', 1, 2039, 2, '/adm/viewlist/add', 1, 'fa'),
(2037, '2018-03-31 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '编辑', 2, 2039, 2, '/adm/viewlist/edit', 1, 'fa'),
(2038, '2018-03-31 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '删除', 3, 2039, 2, '/adm/viewlist/delete', 1, 'fa'),
(2039, '2018-03-31 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '基础数据菜单权限', 99, 2033, 1, 'javascript:;', 1, 'fa'),
(2042, '2018-03-31 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '领导管理', 99, 2033, 1, '/adm/viewlist/index/1', 1, 'fa'),
(2041, '2018-03-31 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '导出', 3, 2039, 2, '/adm/viewlist/post_export', 1, 'fa'),
(2040, '2018-03-31 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '导入', 3, 2039, 2, '/adm/viewlist/post_import', 1, 'fa'),
(2052, '2018-07-17 08:25:53', '2018-07-17 08:25:53', NULL, NULL, '清除登陆日志', 1, 20, 2, '/adm/log/clear_login', 1, 'fa'),
(2053, '2018-07-17 08:26:17', '2018-07-17 08:26:17', NULL, NULL, '清除操作日志', 1, 21, 2, '/adm/log/clear_operation', 1, 'fa');

-- --------------------------------------------------------

--
-- Table structure for table `Sys_Module`
--

CREATE TABLE `Sys_Module` (
  `Id` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `ModifyDateTime` datetime NOT NULL,
  `Creator` int(11) DEFAULT NULL,
  `Modifier` int(11) DEFAULT NULL,
  `Description` varchar(30) NOT NULL,
  `Name` varchar(18) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_Module`
--

INSERT INTO `Sys_Module` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `Description`, `Name`) VALUES
(1, '2018-06-21 11:01:37', '2018-06-21 11:01:37', NULL, NULL, '管理整个系统后台数据', '系统管理');

-- --------------------------------------------------------

--
-- Table structure for table `Sys_OperationLog`
--

CREATE TABLE `Sys_OperationLog` (
  `Id` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `ModifyDateTime` datetime NOT NULL,
  `Creator` int(11) DEFAULT NULL,
  `Modifier` int(11) DEFAULT NULL,
  `ClientIP` varchar(15) NOT NULL,
  `OperationDescription` varchar(100) NOT NULL,
  `OperationUrl` varchar(300) DEFAULT NULL,
  `UserName` longtext,
  `ClientInfo` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_OperationLog`
--

INSERT INTO `Sys_OperationLog` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `ClientIP`, `OperationDescription`, `OperationUrl`, `UserName`, `ClientInfo`) VALUES
(677, '2018-08-29 00:34:12', '2018-08-29 00:34:12', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_operation_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(678, '2018-08-29 00:34:16', '2018-08-29 00:34:16', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(679, '2018-08-29 00:34:17', '2018-08-29 00:34:17', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(680, '2018-08-29 00:34:17', '2018-08-29 00:34:17', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(681, '2018-08-29 00:34:17', '2018-08-29 00:34:17', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(682, '2018-08-29 00:34:17', '2018-08-29 00:34:17', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(683, '2018-08-29 00:34:24', '2018-08-29 00:34:24', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(684, '2018-08-29 00:34:25', '2018-08-29 00:34:25', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(685, '2018-08-29 00:34:25', '2018-08-29 00:34:25', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(686, '2018-08-29 00:34:25', '2018-08-29 00:34:25', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(687, '2018-08-29 00:34:25', '2018-08-29 00:34:25', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(688, '2018-08-29 00:34:27', '2018-08-29 00:34:27', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(689, '2018-08-29 00:34:28', '2018-08-29 00:34:28', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(690, '2018-08-29 00:34:28', '2018-08-29 00:34:28', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(691, '2018-08-29 00:34:28', '2018-08-29 00:34:28', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(692, '2018-08-29 00:34:28', '2018-08-29 00:34:28', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(693, '2018-08-29 00:34:32', '2018-08-29 00:34:32', NULL, NULL, '127.0.0.1', '访问', '/adm/log/operation/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(694, '2018-08-29 00:34:33', '2018-08-29 00:34:33', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_operation_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(695, '2018-08-29 00:34:35', '2018-08-29 00:34:35', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(696, '2018-08-29 00:34:36', '2018-08-29 00:34:36', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(697, '2018-08-29 00:34:36', '2018-08-29 00:34:36', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(698, '2018-08-29 00:34:36', '2018-08-29 00:34:36', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(699, '2018-08-29 00:34:36', '2018-08-29 00:34:36', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(700, '2018-08-29 00:35:30', '2018-08-29 00:35:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(701, '2018-08-29 00:35:31', '2018-08-29 00:35:31', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(702, '2018-08-29 00:35:33', '2018-08-29 00:35:33', NULL, NULL, '127.0.0.1', '访问', '/adm/log/operation/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(703, '2018-08-29 00:35:33', '2018-08-29 00:35:33', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_operation_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(704, '2018-08-29 00:35:35', '2018-08-29 00:35:35', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(705, '2018-08-29 00:35:36', '2018-08-29 00:35:36', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(706, '2018-08-29 00:35:36', '2018-08-29 00:35:36', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(707, '2018-08-29 00:35:36', '2018-08-29 00:35:36', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(708, '2018-08-29 00:35:36', '2018-08-29 00:35:36', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(709, '2018-08-29 00:35:41', '2018-08-29 00:35:41', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(710, '2018-08-29 00:35:42', '2018-08-29 00:35:42', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(711, '2018-08-29 00:35:43', '2018-08-29 00:35:43', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(712, '2018-08-29 00:35:43', '2018-08-29 00:35:43', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(713, '2018-08-29 00:35:43', '2018-08-29 00:35:43', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(714, '2018-08-29 00:35:51', '2018-08-29 00:35:51', NULL, NULL, '127.0.0.1', '访问', '/adm/log/operation/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(715, '2018-08-29 00:35:52', '2018-08-29 00:35:52', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_operation_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(716, '2018-08-29 00:36:11', '2018-08-29 00:36:11', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(717, '2018-08-29 00:36:13', '2018-08-29 00:36:13', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(718, '2018-08-29 00:36:15', '2018-08-29 00:36:15', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(719, '2018-08-29 00:36:16', '2018-08-29 00:36:16', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(720, '2018-08-29 00:36:16', '2018-08-29 00:36:16', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(721, '2018-08-29 00:36:16', '2018-08-29 00:36:16', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(722, '2018-08-29 00:36:16', '2018-08-29 00:36:16', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(723, '2018-08-29 00:36:20', '2018-08-29 00:36:20', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(724, '2018-08-29 00:36:21', '2018-08-29 00:36:21', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(725, '2018-08-29 00:36:21', '2018-08-29 00:36:21', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(726, '2018-08-29 00:36:21', '2018-08-29 00:36:21', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(727, '2018-08-29 00:36:21', '2018-08-29 00:36:21', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(728, '2018-08-29 00:36:31', '2018-08-29 00:36:31', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(729, '2018-08-29 00:36:32', '2018-08-29 00:36:32', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(730, '2018-08-29 00:36:32', '2018-08-29 00:36:32', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(731, '2018-08-29 00:36:32', '2018-08-29 00:36:32', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(732, '2018-08-29 00:36:32', '2018-08-29 00:36:32', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(733, '2018-08-29 00:37:05', '2018-08-29 00:37:05', NULL, NULL, '127.0.0.1', '访问', '/adm/log/login/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(734, '2018-08-29 00:37:05', '2018-08-29 00:37:05', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_login_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(735, '2018-08-29 00:37:07', '2018-08-29 00:37:07', NULL, NULL, '127.0.0.1', '访问', '/adm/role/authen/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(736, '2018-08-29 00:37:07', '2018-08-29 00:37:07', NULL, NULL, '127.0.0.1', '访问', '/adm/role/get_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(737, '2018-08-29 00:37:08', '2018-08-29 00:37:08', NULL, NULL, '127.0.0.1', '访问', '/adm/role/get_menu_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(738, '2018-08-29 00:37:15', '2018-08-29 00:37:15', NULL, NULL, '127.0.0.1', '访问', '/adm/role/authen/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(739, '2018-08-29 00:37:16', '2018-08-29 00:37:16', NULL, NULL, '127.0.0.1', '访问', '/adm/role/get_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(740, '2018-08-29 00:37:17', '2018-08-29 00:37:17', NULL, NULL, '127.0.0.1', '访问', '/adm/role/get_menu_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(741, '2018-08-29 00:37:24', '2018-08-29 00:37:24', NULL, NULL, '127.0.0.1', '访问', '/adm/role/authen/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(742, '2018-08-29 00:37:25', '2018-08-29 00:37:25', NULL, NULL, '127.0.0.1', '访问', '/adm/role/get_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(743, '2018-08-29 00:37:26', '2018-08-29 00:37:26', NULL, NULL, '127.0.0.1', '访问', '/adm/role/get_menu_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(744, '2018-08-29 00:38:40', '2018-08-29 00:38:40', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(745, '2018-08-29 00:38:41', '2018-08-29 00:38:41', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(746, '2018-08-29 00:38:43', '2018-08-29 00:38:43', NULL, NULL, '127.0.0.1', '访问', '/adm/role/authen/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(747, '2018-08-29 00:38:44', '2018-08-29 00:38:44', NULL, NULL, '127.0.0.1', '访问', '/adm/role/get_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(748, '2018-08-29 00:38:44', '2018-08-29 00:38:44', NULL, NULL, '127.0.0.1', '访问', '/adm/role/get_menu_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(749, '2018-08-29 00:38:49', '2018-08-29 00:38:49', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(750, '2018-08-29 00:38:50', '2018-08-29 00:38:50', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(751, '2018-08-29 00:38:50', '2018-08-29 00:38:50', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(752, '2018-08-29 00:38:50', '2018-08-29 00:38:50', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(753, '2018-08-29 00:38:50', '2018-08-29 00:38:50', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(754, '2018-08-29 11:24:54', '2018-08-29 11:24:54', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(755, '2018-08-29 11:24:57', '2018-08-29 11:24:57', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(756, '2018-08-29 11:25:13', '2018-08-29 11:25:13', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(757, '2018-08-29 11:25:14', '2018-08-29 11:25:14', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(758, '2018-08-29 11:25:14', '2018-08-29 11:25:14', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(759, '2018-08-29 11:25:14', '2018-08-29 11:25:14', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(760, '2018-08-29 11:25:14', '2018-08-29 11:25:14', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(761, '2018-08-29 11:25:29', '2018-08-29 11:25:29', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(762, '2018-08-29 11:25:30', '2018-08-29 11:25:30', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(763, '2018-08-29 11:25:30', '2018-08-29 11:25:30', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(764, '2018-08-29 11:25:30', '2018-08-29 11:25:30', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(765, '2018-08-29 11:25:30', '2018-08-29 11:25:30', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(766, '2018-08-29 11:25:38', '2018-08-29 11:25:38', NULL, NULL, '127.0.0.1', '访问', '/adm/log/operation/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(767, '2018-08-29 11:25:39', '2018-08-29 11:25:39', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_operation_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(768, '2018-08-29 11:25:44', '2018-08-29 11:25:44', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_operation_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(769, '2018-08-29 11:25:46', '2018-08-29 11:25:46', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_operation_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(770, '2018-08-29 11:25:50', '2018-08-29 11:25:50', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(771, '2018-08-29 11:25:51', '2018-08-29 11:25:51', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(772, '2018-08-29 11:25:51', '2018-08-29 11:25:51', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(773, '2018-08-29 11:25:51', '2018-08-29 11:25:51', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(774, '2018-08-29 11:25:51', '2018-08-29 11:25:51', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(775, '2018-08-29 11:26:00', '2018-08-29 11:26:00', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(776, '2018-08-29 11:26:01', '2018-08-29 11:26:01', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(777, '2018-08-29 11:26:01', '2018-08-29 11:26:01', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(778, '2018-08-29 11:26:01', '2018-08-29 11:26:01', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(779, '2018-08-29 11:26:01', '2018-08-29 11:26:01', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(780, '2018-08-29 11:26:01', '2018-08-29 11:26:01', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(781, '2018-08-29 11:26:02', '2018-08-29 11:26:02', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(782, '2018-08-29 11:26:02', '2018-08-29 11:26:02', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(783, '2018-08-29 11:26:03', '2018-08-29 11:26:03', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(784, '2018-08-29 11:26:03', '2018-08-29 11:26:03', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(785, '2018-08-29 11:26:14', '2018-08-29 11:26:14', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(786, '2018-08-29 11:26:15', '2018-08-29 11:26:15', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(787, '2018-08-29 11:26:15', '2018-08-29 11:26:15', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(788, '2018-08-29 11:26:15', '2018-08-29 11:26:15', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(789, '2018-08-29 11:26:15', '2018-08-29 11:26:15', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(790, '2018-08-29 11:27:46', '2018-08-29 11:27:46', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(791, '2018-08-29 11:27:47', '2018-08-29 11:27:47', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(792, '2018-08-29 11:27:49', '2018-08-29 11:27:49', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(793, '2018-08-29 11:27:50', '2018-08-29 11:27:50', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(794, '2018-08-29 11:27:50', '2018-08-29 11:27:50', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(795, '2018-08-29 11:27:50', '2018-08-29 11:27:50', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(796, '2018-08-29 11:27:50', '2018-08-29 11:27:50', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(797, '2018-08-29 11:28:01', '2018-08-29 11:28:01', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(798, '2018-08-29 11:28:02', '2018-08-29 11:28:02', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(799, '2018-08-29 11:28:02', '2018-08-29 11:28:02', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(800, '2018-08-29 11:28:02', '2018-08-29 11:28:02', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(801, '2018-08-29 11:28:02', '2018-08-29 11:28:02', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(802, '2018-08-29 11:29:11', '2018-08-29 11:29:11', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(803, '2018-08-29 11:29:12', '2018-08-29 11:29:12', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(804, '2018-08-29 11:29:20', '2018-08-29 11:29:20', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(805, '2018-08-29 11:29:21', '2018-08-29 11:29:21', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(806, '2018-08-29 11:29:21', '2018-08-29 11:29:21', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(807, '2018-08-29 11:29:21', '2018-08-29 11:29:21', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(808, '2018-08-29 11:29:21', '2018-08-29 11:29:21', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(809, '2018-08-29 11:35:44', '2018-08-29 11:35:44', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(810, '2018-08-29 11:35:45', '2018-08-29 11:35:45', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(811, '2018-08-29 11:35:48', '2018-08-29 11:35:48', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(812, '2018-08-29 11:35:49', '2018-08-29 11:35:49', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(813, '2018-08-29 11:35:49', '2018-08-29 11:35:49', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(814, '2018-08-29 11:35:49', '2018-08-29 11:35:49', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(815, '2018-08-29 11:35:49', '2018-08-29 11:35:49', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(816, '2018-08-29 11:36:28', '2018-08-29 11:36:28', NULL, NULL, '127.0.0.1', '访问', '/adm/log/login/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(817, '2018-08-29 11:36:29', '2018-08-29 11:36:29', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_login_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(818, '2018-08-31 21:33:28', '2018-08-31 21:33:28', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(819, '2018-08-31 21:33:28', '2018-08-31 21:33:28', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(820, '2018-08-31 21:33:55', '2018-08-31 21:33:55', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(821, '2018-08-31 21:33:56', '2018-08-31 21:33:56', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(822, '2018-08-31 21:34:46', '2018-08-31 21:34:46', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(823, '2018-08-31 21:34:50', '2018-08-31 21:34:50', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(824, '2018-08-31 21:35:08', '2018-08-31 21:35:08', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(825, '2018-08-31 21:35:11', '2018-08-31 21:35:11', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(826, '2018-08-31 21:38:26', '2018-08-31 21:38:26', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(827, '2018-08-31 21:38:36', '2018-08-31 21:38:36', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(828, '2018-08-31 21:38:40', '2018-08-31 21:38:40', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/3/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(829, '2018-08-31 21:38:43', '2018-08-31 21:38:43', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(830, '2018-08-31 21:39:24', '2018-08-31 21:39:24', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(831, '2018-08-31 21:39:30', '2018-08-31 21:39:30', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(832, '2018-08-31 21:39:34', '2018-08-31 21:39:34', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(833, '2018-08-31 21:39:45', '2018-08-31 21:39:45', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(834, '2018-08-31 21:39:53', '2018-08-31 21:39:53', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(835, '2018-08-31 21:39:54', '2018-08-31 21:39:54', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(836, '2018-08-31 21:40:05', '2018-08-31 21:40:05', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(837, '2018-08-31 21:40:09', '2018-08-31 21:40:09', NULL, NULL, '127.0.0.1', '访问', '/adm/user/logout/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(838, '2018-08-31 21:40:16', '2018-08-31 21:40:16', NULL, NULL, '127.0.0.1', '访问', '/adm/control/index/', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(839, '2018-08-31 21:40:17', '2018-08-31 21:40:17', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(840, '2018-08-31 21:40:19', '2018-08-31 21:40:19', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(841, '2018-08-31 21:43:27', '2018-08-31 21:43:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(842, '2018-08-31 21:43:28', '2018-08-31 21:43:28', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(843, '2018-08-31 21:43:30', '2018-08-31 21:43:30', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(844, '2018-08-31 21:43:32', '2018-08-31 21:43:32', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/add/', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(845, '2018-08-31 21:43:36', '2018-08-31 21:43:36', NULL, NULL, '127.0.0.1', '访问', '/adm/user/logout/', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(846, '2018-08-31 21:43:44', '2018-08-31 21:43:44', NULL, NULL, '127.0.0.1', '访问', '/adm/control/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(847, '2018-08-31 21:43:45', '2018-08-31 21:43:45', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(848, '2018-08-31 21:43:47', '2018-08-31 21:43:47', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(849, '2018-08-31 21:43:49', '2018-08-31 21:43:49', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(850, '2018-08-31 21:43:52', '2018-08-31 21:43:52', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(851, '2018-08-31 21:43:56', '2018-08-31 21:43:56', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?%E5%B0%8F%E8%AF%B4', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(852, '2018-08-31 21:44:09', '2018-08-31 21:44:09', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?%E5%B0%8F', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(853, '2018-08-31 21:45:08', '2018-08-31 21:45:08', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?%E5%B0%8F', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(854, '2018-08-31 21:45:54', '2018-08-31 21:45:54', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(855, '2018-08-31 21:45:56', '2018-08-31 21:45:56', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(856, '2018-08-31 21:45:57', '2018-08-31 21:45:57', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(857, '2018-08-31 21:45:59', '2018-08-31 21:45:59', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(858, '2018-08-31 21:46:19', '2018-08-31 21:46:19', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(859, '2018-08-31 21:46:35', '2018-08-31 21:46:35', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?%E5%B0%8F%E8%AF%B4', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(860, '2018-08-31 21:46:35', '2018-08-31 21:46:35', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?%E5%B0%8F%E8%AF%B4', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(861, '2018-08-31 21:47:08', '2018-08-31 21:47:08', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(862, '2018-08-31 21:47:13', '2018-08-31 21:47:13', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(863, '2018-08-31 21:47:17', '2018-08-31 21:47:17', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(864, '2018-08-31 21:47:19', '2018-08-31 21:47:19', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(865, '2018-08-31 21:47:28', '2018-08-31 21:47:28', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=%E5%B0%8F%E8%AF%B4', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(866, '2018-08-31 21:47:57', '2018-08-31 21:47:57', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=%E5%B0%8F%E8%AF%B4', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(867, '2018-08-31 21:48:58', '2018-08-31 21:48:58', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(868, '2018-08-31 21:49:02', '2018-08-31 21:49:02', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(869, '2018-08-31 21:49:02', '2018-08-31 21:49:02', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(870, '2018-08-31 21:49:12', '2018-08-31 21:49:12', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(871, '2018-08-31 21:49:13', '2018-08-31 21:49:13', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=%E5%B0%8F%E8%AF%B4', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(872, '2018-08-31 21:49:50', '2018-08-31 21:49:50', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=%E5%B0%8F%E8%AF%B4', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(873, '2018-08-31 21:50:03', '2018-08-31 21:50:03', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=%E5%B0%8F%E8%AF%B4', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(874, '2018-08-31 21:50:15', '2018-08-31 21:50:15', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=%E5%B0%8F', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(875, '2018-08-31 21:50:22', '2018-08-31 21:50:22', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=%E5%B0%8F', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(876, '2018-08-31 21:51:02', '2018-08-31 21:51:02', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=%E8%8F%9C%E5%8D%95', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(877, '2018-08-31 21:51:12', '2018-08-31 21:51:12', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=%E8%8F%9C%E5%8D%95', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(878, '2018-08-31 21:51:21', '2018-08-31 21:51:21', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=%E8%A7%92%E8%89%B2', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(879, '2018-08-31 21:51:30', '2018-08-31 21:51:30', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=user', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(880, '2018-08-31 21:58:44', '2018-08-31 21:58:44', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(881, '2018-08-31 21:58:45', '2018-08-31 21:58:45', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(882, '2018-08-31 21:58:48', '2018-08-31 21:58:48', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(883, '2018-08-31 21:58:50', '2018-08-31 21:58:50', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(884, '2018-08-31 21:59:08', '2018-08-31 21:59:08', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(885, '2018-08-31 22:00:42', '2018-08-31 22:00:42', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(886, '2018-08-31 22:00:43', '2018-08-31 22:00:43', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(887, '2018-08-31 22:04:31', '2018-08-31 22:04:31', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(888, '2018-08-31 22:42:57', '2018-08-31 22:42:57', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36');
INSERT INTO `Sys_OperationLog` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `ClientIP`, `OperationDescription`, `OperationUrl`, `UserName`, `ClientInfo`) VALUES
(889, '2018-08-31 22:42:58', '2018-08-31 22:42:58', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(890, '2018-08-31 22:45:23', '2018-08-31 22:45:23', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(891, '2018-08-31 22:45:35', '2018-08-31 22:45:35', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(892, '2018-08-31 22:45:38', '2018-08-31 22:45:38', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(893, '2018-08-31 22:45:44', '2018-08-31 22:45:44', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(894, '2018-08-31 22:45:46', '2018-08-31 22:45:46', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(895, '2018-08-31 22:45:49', '2018-08-31 22:45:49', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(896, '2018-08-31 22:45:52', '2018-08-31 22:45:52', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(897, '2018-08-31 22:46:03', '2018-08-31 22:46:03', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(898, '2018-08-31 22:46:12', '2018-08-31 22:46:12', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/14/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(899, '2018-08-31 22:46:20', '2018-08-31 22:46:20', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(900, '2018-08-31 22:46:26', '2018-08-31 22:46:26', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/16/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(901, '2018-08-31 22:46:31', '2018-08-31 22:46:31', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(902, '2018-08-31 22:46:36', '2018-08-31 22:46:36', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(903, '2018-08-31 22:46:40', '2018-08-31 22:46:40', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(904, '2018-08-31 22:46:53', '2018-08-31 22:46:53', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(905, '2018-08-31 22:46:57', '2018-08-31 22:46:57', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(906, '2018-08-31 22:47:03', '2018-08-31 22:47:03', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(907, '2018-08-31 22:47:05', '2018-08-31 22:47:05', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(908, '2018-08-31 22:47:09', '2018-08-31 22:47:09', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(909, '2018-08-31 22:47:12', '2018-08-31 22:47:12', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(910, '2018-08-31 22:47:20', '2018-08-31 22:47:20', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(911, '2018-08-31 22:47:27', '2018-08-31 22:47:27', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/13/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(912, '2018-08-31 22:47:33', '2018-08-31 22:47:33', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(913, '2018-08-31 22:49:19', '2018-08-31 22:49:19', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(914, '2018-08-31 22:49:21', '2018-08-31 22:49:21', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(915, '2018-08-31 22:49:24', '2018-08-31 22:49:24', NULL, NULL, '127.0.0.1', '访问', '/adm/module/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(916, '2018-08-31 22:49:26', '2018-08-31 22:49:26', NULL, NULL, '127.0.0.1', '访问', '/adm/module/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(917, '2018-08-31 22:54:47', '2018-08-31 22:54:47', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(918, '2018-08-31 22:54:48', '2018-08-31 22:54:48', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(919, '2018-08-31 22:54:53', '2018-08-31 22:54:53', NULL, NULL, '127.0.0.1', '访问', '/adm/module/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(920, '2018-08-31 22:54:55', '2018-08-31 22:54:55', NULL, NULL, '127.0.0.1', '访问', '/adm/module/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(921, '2018-08-31 22:56:50', '2018-08-31 22:56:50', NULL, NULL, '127.0.0.1', '访问', '/adm/module/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(922, '2018-08-31 22:56:53', '2018-08-31 22:56:53', NULL, NULL, '127.0.0.1', '访问', '/adm/module/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(923, '2018-08-31 22:56:57', '2018-08-31 22:56:57', NULL, NULL, '127.0.0.1', '访问', '/adm/module/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(924, '2018-08-31 22:59:13', '2018-08-31 22:59:13', NULL, NULL, '127.0.0.1', '访问', '/adm/module/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(925, '2018-08-31 22:59:15', '2018-08-31 22:59:15', NULL, NULL, '127.0.0.1', '访问', '/adm/module/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(926, '2018-08-31 22:59:28', '2018-08-31 22:59:28', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(927, '2018-08-31 22:59:29', '2018-08-31 22:59:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(928, '2018-08-31 22:59:30', '2018-08-31 22:59:30', NULL, NULL, '127.0.0.1', '访问', '/adm/module/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(929, '2018-08-31 22:59:40', '2018-08-31 22:59:40', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(930, '2018-08-31 22:59:41', '2018-08-31 22:59:41', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(931, '2018-08-31 22:59:42', '2018-08-31 22:59:42', NULL, NULL, '127.0.0.1', '访问', '/adm/module/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(932, '2018-08-31 22:59:44', '2018-08-31 22:59:44', NULL, NULL, '127.0.0.1', '访问', '/adm/module/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(933, '2018-08-31 23:09:22', '2018-08-31 23:09:22', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(934, '2018-08-31 23:09:23', '2018-08-31 23:09:23', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(935, '2018-08-31 23:10:46', '2018-08-31 23:10:46', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(936, '2018-08-31 23:10:50', '2018-08-31 23:10:50', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(937, '2018-08-31 23:10:51', '2018-08-31 23:10:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(938, '2018-08-31 23:10:53', '2018-08-31 23:10:53', NULL, NULL, '127.0.0.1', '访问', '/adm/role/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(939, '2018-08-31 23:10:55', '2018-08-31 23:10:55', NULL, NULL, '127.0.0.1', '访问', '/adm/role/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(940, '2018-08-31 23:11:05', '2018-08-31 23:11:05', NULL, NULL, '127.0.0.1', '访问', '/adm/role/edit/6/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(941, '2018-08-31 23:11:17', '2018-08-31 23:11:17', NULL, NULL, '127.0.0.1', '访问', '/adm/department/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(942, '2018-08-31 23:11:20', '2018-08-31 23:11:20', NULL, NULL, '127.0.0.1', '访问', '/adm/department/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(943, '2018-08-31 23:13:13', '2018-08-31 23:13:13', NULL, NULL, '127.0.0.1', '访问', '/adm/department/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(944, '2018-08-31 23:13:24', '2018-08-31 23:13:24', NULL, NULL, '127.0.0.1', '访问', '/adm/role/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(945, '2018-08-31 23:13:35', '2018-08-31 23:13:35', NULL, NULL, '127.0.0.1', '访问', '/adm/department/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(946, '2018-08-31 23:13:35', '2018-08-31 23:13:35', NULL, NULL, '127.0.0.1', '访问', '/adm/department/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(947, '2018-08-31 23:13:58', '2018-08-31 23:13:58', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(948, '2018-08-31 23:13:58', '2018-08-31 23:13:58', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(949, '2018-08-31 23:14:00', '2018-08-31 23:14:00', NULL, NULL, '127.0.0.1', '访问', '/adm/department/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(950, '2018-08-31 23:14:05', '2018-08-31 23:14:05', NULL, NULL, '127.0.0.1', '访问', '/adm/department/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(951, '2018-08-31 23:14:24', '2018-08-31 23:14:24', NULL, NULL, '127.0.0.1', '访问', '/adm/department/edit/16/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(952, '2018-08-31 23:15:31', '2018-08-31 23:15:31', NULL, NULL, '127.0.0.1', '访问', '/adm/role/authen/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(953, '2018-08-31 23:17:20', '2018-08-31 23:17:20', NULL, NULL, '127.0.0.1', '访问', '/adm/role/authen/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(954, '2018-08-31 23:17:20', '2018-08-31 23:17:20', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(955, '2018-08-31 23:17:22', '2018-08-31 23:17:22', NULL, NULL, '127.0.0.1', '访问', '/adm/module/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(956, '2018-08-31 23:17:35', '2018-08-31 23:17:35', NULL, NULL, '127.0.0.1', '访问', '/adm/module/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(957, '2018-08-31 23:17:35', '2018-08-31 23:17:35', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(958, '2018-08-31 23:17:36', '2018-08-31 23:17:36', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(959, '2018-08-31 23:17:37', '2018-08-31 23:17:37', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(960, '2018-08-31 23:17:41', '2018-08-31 23:17:41', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(961, '2018-08-31 23:17:43', '2018-08-31 23:17:43', NULL, NULL, '127.0.0.1', '访问', '/adm/user/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(962, '2018-08-31 23:18:11', '2018-08-31 23:18:11', NULL, NULL, '127.0.0.1', '访问', '/adm/user/edit/10/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(963, '2018-08-31 23:18:26', '2018-08-31 23:18:26', NULL, NULL, '127.0.0.1', '访问', '/adm/user/authen/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(964, '2018-08-31 23:18:43', '2018-08-31 23:18:43', NULL, NULL, '127.0.0.1', '访问', '/adm/user/authen/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(965, '2018-08-31 23:19:13', '2018-08-31 23:19:13', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(966, '2018-08-31 23:19:19', '2018-08-31 23:19:19', NULL, NULL, '127.0.0.1', '访问', '/adm/user/select_user/2/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(967, '2018-08-31 23:20:16', '2018-08-31 23:20:16', NULL, NULL, '127.0.0.1', '访问', '/adm/module/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(968, '2018-08-31 23:20:21', '2018-08-31 23:20:21', NULL, NULL, '127.0.0.1', '访问', '/adm/module/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(969, '2018-08-31 23:20:29', '2018-08-31 23:20:29', NULL, NULL, '127.0.0.1', '访问', '/adm/module/edit/4/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(970, '2018-08-31 23:21:06', '2018-08-31 23:21:06', NULL, NULL, '127.0.0.1', '访问', '/adm/module/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(971, '2018-08-31 23:21:40', '2018-08-31 23:21:40', NULL, NULL, '127.0.0.1', '访问', '/adm/module/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(972, '2018-08-31 23:21:56', '2018-08-31 23:21:56', NULL, NULL, '127.0.0.1', '访问', '/adm/module/edit/3/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(973, '2018-08-31 23:22:16', '2018-08-31 23:22:16', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(974, '2018-08-31 23:22:19', '2018-08-31 23:22:19', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(975, '2018-08-31 23:22:21', '2018-08-31 23:22:21', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(976, '2018-08-31 23:22:22', '2018-08-31 23:22:22', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=c', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(977, '2018-08-31 23:22:37', '2018-08-31 23:22:37', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(978, '2018-08-31 23:22:39', '2018-08-31 23:22:39', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=a%27s', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(979, '2018-08-31 23:22:41', '2018-08-31 23:22:41', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?searchKey=', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(980, '2018-08-31 23:23:04', '2018-08-31 23:23:04', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/edit/2054/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(981, '2018-08-31 23:23:04', '2018-08-31 23:23:04', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(982, '2018-08-31 23:23:26', '2018-08-31 23:23:26', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/edit/2054/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(983, '2018-08-31 23:23:27', '2018-08-31 23:23:27', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(984, '2018-08-31 23:23:55', '2018-08-31 23:23:55', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/edit/2054/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(985, '2018-08-31 23:23:56', '2018-08-31 23:23:56', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(986, '2018-08-31 23:24:08', '2018-08-31 23:24:08', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(987, '2018-08-31 23:24:09', '2018-08-31 23:24:09', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(988, '2018-08-31 23:24:24', '2018-08-31 23:24:24', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(989, '2018-08-31 23:24:31', '2018-08-31 23:24:31', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/edit/2054/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(990, '2018-08-31 23:25:51', '2018-08-31 23:25:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(991, '2018-08-31 23:25:53', '2018-08-31 23:25:53', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(992, '2018-08-31 23:26:01', '2018-08-31 23:26:01', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(993, '2018-08-31 23:26:27', '2018-08-31 23:26:27', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/edit/2054/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(994, '2018-08-31 23:29:12', '2018-08-31 23:29:12', NULL, NULL, '127.0.0.1', '访问', '/adm/user/modifyinfo/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(995, '2018-08-31 23:32:54', '2018-08-31 23:32:54', NULL, NULL, '127.0.0.1', '访问', '/adm/user/modifyinfo/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(996, '2018-08-31 23:32:58', '2018-08-31 23:32:58', NULL, NULL, '127.0.0.1', '访问', '/adm/user/modifyinfo/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(997, '2018-08-31 23:33:00', '2018-08-31 23:33:00', NULL, NULL, '127.0.0.1', '访问', '/adm/user/logout/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(998, '2018-08-31 23:33:08', '2018-08-31 23:33:08', NULL, NULL, '127.0.0.1', '访问', '/adm/control/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(999, '2018-08-31 23:33:10', '2018-08-31 23:33:10', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1000, '2018-08-31 23:33:13', '2018-08-31 23:33:13', NULL, NULL, '127.0.0.1', '访问', '/adm/user/modifyinfo/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1001, '2018-08-31 23:34:07', '2018-08-31 23:34:07', NULL, NULL, '127.0.0.1', '访问', '/adm/user/modifyinfo/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1002, '2018-08-31 23:42:49', '2018-08-31 23:42:49', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1003, '2018-08-31 23:42:50', '2018-08-31 23:42:50', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1004, '2018-08-31 23:42:53', '2018-08-31 23:42:53', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1005, '2018-08-31 23:43:08', '2018-08-31 23:43:08', NULL, NULL, '127.0.0.1', '访问', '/adm/user/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1006, '2018-08-31 23:44:48', '2018-08-31 23:44:48', NULL, NULL, '127.0.0.1', '访问', '/adm/user/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1007, '2018-08-31 23:46:04', '2018-08-31 23:46:04', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1008, '2018-08-31 23:46:05', '2018-08-31 23:46:05', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1009, '2018-08-31 23:46:09', '2018-08-31 23:46:09', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1010, '2018-08-31 23:46:17', '2018-08-31 23:46:17', NULL, NULL, '127.0.0.1', '访问', '/adm/user/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1011, '2018-08-31 23:47:32', '2018-08-31 23:47:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1012, '2018-08-31 23:47:33', '2018-08-31 23:47:33', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1013, '2018-08-31 23:47:37', '2018-08-31 23:47:37', NULL, NULL, '127.0.0.1', '访问', '/adm/user/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1014, '2018-08-31 23:48:19', '2018-08-31 23:48:19', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1015, '2018-08-31 23:48:20', '2018-08-31 23:48:20', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1016, '2018-08-31 23:48:48', '2018-08-31 23:48:48', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1017, '2018-08-31 23:49:33', '2018-08-31 23:49:33', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1018, '2018-08-31 23:49:38', '2018-08-31 23:49:38', NULL, NULL, '127.0.0.1', '访问', '/adm/user/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1019, '2018-08-31 23:50:00', '2018-08-31 23:50:00', NULL, NULL, '127.0.0.1', '访问', '/adm/user/logout/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1020, '2018-08-31 23:54:53', '2018-08-31 23:54:53', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1021, '2018-08-31 23:54:54', '2018-08-31 23:54:54', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1022, '2018-08-31 23:55:00', '2018-08-31 23:55:00', NULL, NULL, '127.0.0.1', '访问', '/adm/control/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1023, '2018-08-31 23:55:02', '2018-08-31 23:55:02', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1024, '2018-08-31 23:55:05', '2018-08-31 23:55:05', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1025, '2018-08-31 23:55:05', '2018-08-31 23:55:05', NULL, NULL, '127.0.0.1', '访问', '/adm/user/modifyinfo/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1026, '2018-08-31 23:55:28', '2018-08-31 23:55:28', NULL, NULL, '127.0.0.1', '访问', '/adm/user/logout/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1027, '2018-08-31 23:55:35', '2018-08-31 23:55:35', NULL, NULL, '127.0.0.1', '访问', '/adm/control/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1028, '2018-08-31 23:55:36', '2018-08-31 23:55:36', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1029, '2018-08-31 23:55:51', '2018-08-31 23:55:51', NULL, NULL, '127.0.0.1', '访问', '/adm/user/modifyinfo/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1030, '2018-08-31 23:56:29', '2018-08-31 23:56:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1031, '2018-08-31 23:56:30', '2018-08-31 23:56:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1032, '2018-08-31 23:56:37', '2018-08-31 23:56:37', NULL, NULL, '127.0.0.1', '访问', '/adm/user/modifyinfo/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1033, '2018-08-31 23:57:28', '2018-08-31 23:57:28', NULL, NULL, '127.0.0.1', '访问', '/adm/user/modifyinfo/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1034, '2018-08-31 23:57:29', '2018-08-31 23:57:29', NULL, NULL, '127.0.0.1', '访问', '/adm/user/logout/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1035, '2018-08-31 23:57:36', '2018-08-31 23:57:36', NULL, NULL, '127.0.0.1', '访问', '/adm/control/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1036, '2018-08-31 23:57:37', '2018-08-31 23:57:37', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1037, '2018-08-31 23:57:39', '2018-08-31 23:57:39', NULL, NULL, '127.0.0.1', '访问', '/adm/user/modifyinfo/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1038, '2018-08-31 23:57:50', '2018-08-31 23:57:50', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1039, '2018-08-31 23:58:04', '2018-08-31 23:58:04', NULL, NULL, '127.0.0.1', '访问', '/adm/user/edit/9/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1040, '2018-08-31 23:58:18', '2018-08-31 23:58:18', NULL, NULL, '127.0.0.1', '访问', '/adm/user/edit/9/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1041, '2018-08-31 23:58:29', '2018-08-31 23:58:29', NULL, NULL, '127.0.0.1', '访问', '/adm/user/logout/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1042, '2018-08-31 23:58:36', '2018-08-31 23:58:36', NULL, NULL, '127.0.0.1', '访问', '/adm/control/index/', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1043, '2018-08-31 23:58:37', '2018-08-31 23:58:37', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1044, '2018-08-31 23:58:38', '2018-08-31 23:58:38', NULL, NULL, '127.0.0.1', '访问', '/adm/user/logout/', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1045, '2018-08-31 23:58:44', '2018-08-31 23:58:44', NULL, NULL, '127.0.0.1', '访问', '/adm/control/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1046, '2018-08-31 23:58:45', '2018-08-31 23:58:45', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1047, '2018-08-31 23:58:50', '2018-08-31 23:58:50', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1048, '2018-08-31 23:58:52', '2018-08-31 23:58:52', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1049, '2018-08-31 23:59:16', '2018-08-31 23:59:16', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/3/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1050, '2018-08-31 23:59:28', '2018-08-31 23:59:28', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1051, '2018-08-31 23:59:37', '2018-08-31 23:59:37', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1052, '2018-08-31 23:59:55', '2018-08-31 23:59:55', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/18/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1053, '2018-09-01 00:00:17', '2018-09-01 00:00:17', NULL, NULL, '127.0.0.1', '访问', '/adm/systemoption/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1054, '2018-09-01 00:00:20', '2018-09-01 00:00:20', NULL, NULL, '127.0.0.1', '访问', '/adm/systemoption/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1055, '2018-09-01 00:00:29', '2018-09-01 00:00:29', NULL, NULL, '127.0.0.1', '访问', '/adm/systemoption/edit/2/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1056, '2018-09-01 00:00:44', '2018-09-01 00:00:44', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1057, '2018-09-01 00:00:49', '2018-09-01 00:00:49', NULL, NULL, '127.0.0.1', '访问', '/adm/user/select_user/10/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1058, '2018-09-01 00:01:38', '2018-09-01 00:01:38', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1059, '2018-09-01 00:01:39', '2018-09-01 00:01:39', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1060, '2018-09-01 00:02:02', '2018-09-01 00:02:02', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1061, '2018-09-01 00:02:19', '2018-09-01 00:02:19', NULL, NULL, '127.0.0.1', '访问', '/adm/log/login/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1062, '2018-09-01 00:02:23', '2018-09-01 00:02:23', NULL, NULL, '127.0.0.1', '访问', '/adm/log/operation/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1063, '2018-09-01 00:02:26', '2018-09-01 00:02:26', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1064, '2018-09-01 00:04:33', '2018-09-01 00:04:33', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1065, '2018-09-01 00:04:35', '2018-09-01 00:04:35', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1066, '2018-09-01 00:04:38', '2018-09-01 00:04:38', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1067, '2018-09-01 10:37:43', '2018-09-01 10:37:43', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1068, '2018-09-01 10:37:45', '2018-09-01 10:37:45', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1069, '2018-09-01 10:37:52', '2018-09-01 10:37:52', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1070, '2018-09-01 10:37:53', '2018-09-01 10:37:53', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1071, '2018-09-01 10:37:58', '2018-09-01 10:37:58', NULL, NULL, '127.0.0.1', '访问', '/adm/department/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1072, '2018-09-01 10:38:00', '2018-09-01 10:38:00', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1073, '2018-09-01 10:38:01', '2018-09-01 10:38:01', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1074, '2018-09-01 10:38:03', '2018-09-01 10:38:03', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1075, '2018-09-01 10:38:04', '2018-09-01 10:38:04', NULL, NULL, '127.0.0.1', '访问', '/adm/department/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1076, '2018-09-01 10:38:26', '2018-09-01 10:38:26', NULL, NULL, '127.0.0.1', '访问', '/adm/department/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1077, '2018-09-01 11:13:29', '2018-09-01 11:13:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1078, '2018-09-01 11:13:30', '2018-09-01 11:13:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1079, '2018-09-01 11:13:46', '2018-09-01 11:13:46', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1080, '2018-09-01 11:13:53', '2018-09-01 11:13:53', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/detail/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1081, '2018-09-01 11:14:44', '2018-09-01 11:14:44', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/detail/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1082, '2018-09-01 11:14:59', '2018-09-01 11:14:59', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1083, '2018-09-01 11:16:05', '2018-09-01 11:16:05', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1084, '2018-09-01 11:16:08', '2018-09-01 11:16:08', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1085, '2018-09-01 11:16:41', '2018-09-01 11:16:41', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1086, '2018-09-01 11:16:55', '2018-09-01 11:16:55', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1087, '2018-09-01 11:16:58', '2018-09-01 11:16:58', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1088, '2018-09-01 11:17:00', '2018-09-01 11:17:00', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1089, '2018-09-01 11:17:03', '2018-09-01 11:17:03', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1090, '2018-09-01 11:17:08', '2018-09-01 11:17:08', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1091, '2018-09-01 11:17:14', '2018-09-01 11:17:14', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/detail/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1092, '2018-09-01 11:17:22', '2018-09-01 11:17:22', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/2/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1093, '2018-09-01 11:17:26', '2018-09-01 11:17:26', NULL, NULL, '127.0.0.1', '访问', '/adm/home/download/?fileurl=/upload/temp/20180901/%E9%A2%86%E5%AF%BC_%E5%AF%BC%E5%85%A5%E6%A8%A1%E6%9D%BF_20180901111725.xlsx', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1094, '2018-09-01 13:30:32', '2018-09-01 13:30:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1095, '2018-09-01 13:30:32', '2018-09-01 13:30:32', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1096, '2018-09-01 13:30:42', '2018-09-01 13:30:42', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1097, '2018-09-01 13:30:44', '2018-09-01 13:30:44', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1098, '2018-09-01 13:30:48', '2018-09-01 13:30:48', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1099, '2018-09-01 13:31:32', '2018-09-01 13:31:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1100, '2018-09-01 13:31:33', '2018-09-01 13:31:33', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1101, '2018-09-01 13:31:39', '2018-09-01 13:31:39', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1102, '2018-09-01 13:32:27', '2018-09-01 13:32:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1103, '2018-09-01 13:32:29', '2018-09-01 13:32:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36');
INSERT INTO `Sys_OperationLog` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `ClientIP`, `OperationDescription`, `OperationUrl`, `UserName`, `ClientInfo`) VALUES
(1104, '2018-09-01 13:32:35', '2018-09-01 13:32:35', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1105, '2018-09-01 13:33:48', '2018-09-01 13:33:48', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1106, '2018-09-01 13:33:49', '2018-09-01 13:33:49', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1107, '2018-09-01 13:33:55', '2018-09-01 13:33:55', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1108, '2018-09-01 13:37:29', '2018-09-01 13:37:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1109, '2018-09-01 13:37:30', '2018-09-01 13:37:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1110, '2018-09-01 13:37:32', '2018-09-01 13:37:32', NULL, NULL, '127.0.0.1', '访问', '/adm/role/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1111, '2018-09-01 13:37:33', '2018-09-01 13:37:33', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1112, '2018-09-02 16:59:27', '2018-09-02 16:59:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1113, '2018-09-02 16:59:28', '2018-09-02 16:59:28', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1114, '2018-09-02 16:59:41', '2018-09-02 16:59:41', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1115, '2018-09-02 16:59:42', '2018-09-02 16:59:42', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1116, '2018-09-02 17:15:10', '2018-09-02 17:15:10', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1117, '2018-09-02 17:15:52', '2018-09-02 17:15:52', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1118, '2018-09-02 17:16:47', '2018-09-02 17:16:47', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1119, '2018-09-02 17:16:49', '2018-09-02 17:16:49', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1120, '2018-09-02 21:00:49', '2018-09-02 21:00:49', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1121, '2018-09-02 21:00:51', '2018-09-02 21:00:51', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1122, '2018-09-02 21:01:30', '2018-09-02 21:01:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1123, '2018-09-02 21:01:31', '2018-09-02 21:01:31', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1124, '2018-09-02 21:02:05', '2018-09-02 21:02:05', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1125, '2018-09-02 21:02:58', '2018-09-02 21:02:58', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1126, '2018-09-02 21:03:02', '2018-09-02 21:03:02', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1127, '2018-09-02 21:03:05', '2018-09-02 21:03:05', NULL, NULL, '127.0.0.1', '访问', '/adm/role/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1128, '2018-09-02 21:03:13', '2018-09-02 21:03:13', NULL, NULL, '127.0.0.1', '访问', '/adm/department/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1129, '2018-09-02 21:11:53', '2018-09-02 21:11:53', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1130, '2018-09-02 21:12:05', '2018-09-02 21:12:05', NULL, NULL, '127.0.0.1', '访问', '/adm/role/authen/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1131, '2018-09-02 21:13:15', '2018-09-02 21:13:15', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1132, '2018-09-02 21:13:19', '2018-09-02 21:13:19', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1133, '2018-09-02 21:13:24', '2018-09-02 21:13:24', NULL, NULL, '127.0.0.1', '访问', '/adm/role/authen/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1134, '2018-09-02 21:14:44', '2018-09-02 21:14:44', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1135, '2018-09-02 21:14:49', '2018-09-02 21:14:49', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1136, '2018-09-02 21:15:00', '2018-09-02 21:15:00', NULL, NULL, '127.0.0.1', '访问', '/adm/role/authen/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1137, '2018-09-02 21:17:57', '2018-09-02 21:17:57', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1138, '2018-09-02 21:18:00', '2018-09-02 21:18:00', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1139, '2018-09-02 21:18:09', '2018-09-02 21:18:09', NULL, NULL, '127.0.0.1', '访问', '/adm/user/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1140, '2018-09-02 21:19:00', '2018-09-02 21:19:00', NULL, NULL, '127.0.0.1', '访问', '/adm/user/authen/12/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1141, '2018-09-02 21:19:58', '2018-09-02 21:19:58', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1142, '2018-09-02 21:20:03', '2018-09-02 21:20:03', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1143, '2018-09-02 21:21:56', '2018-09-02 21:21:56', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1144, '2018-09-02 21:22:00', '2018-09-02 21:22:00', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1145, '2018-09-02 21:22:04', '2018-09-02 21:22:04', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1146, '2018-09-02 21:22:36', '2018-09-02 21:22:36', NULL, NULL, '127.0.0.1', '访问', '/adm/user/authen/12/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1147, '2018-09-02 21:25:11', '2018-09-02 21:25:11', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1148, '2018-09-02 21:25:15', '2018-09-02 21:25:15', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1149, '2018-09-02 21:25:18', '2018-09-02 21:25:18', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1150, '2018-09-02 21:25:24', '2018-09-02 21:25:24', NULL, NULL, '127.0.0.1', '访问', '/adm/user/authen/12/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1151, '2018-09-02 21:25:38', '2018-09-02 21:25:38', NULL, NULL, '127.0.0.1', '访问', '/adm/user/modifyinfo/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1152, '2018-09-02 21:25:44', '2018-09-02 21:25:44', NULL, NULL, '127.0.0.1', '访问', '/adm/role/authen/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1153, '2018-09-02 21:25:49', '2018-09-02 21:25:49', NULL, NULL, '127.0.0.1', '访问', '/adm/user/logout/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1154, '2018-09-02 21:25:56', '2018-09-02 21:25:56', NULL, NULL, '127.0.0.1', '访问', '/adm/control/index/', 'employee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1155, '2018-09-02 21:25:57', '2018-09-02 21:25:57', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'employee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1156, '2018-09-02 21:25:59', '2018-09-02 21:25:59', NULL, NULL, '127.0.0.1', '访问', '/adm/log/login/', 'employee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1157, '2018-09-02 21:26:01', '2018-09-02 21:26:01', NULL, NULL, '127.0.0.1', '访问', '/adm/log/operation/', 'employee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1158, '2018-09-02 21:26:04', '2018-09-02 21:26:04', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'employee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1159, '2018-09-02 21:26:13', '2018-09-02 21:26:13', NULL, NULL, '127.0.0.1', '访问', '/adm/user/logout/', 'employee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1160, '2018-09-02 21:26:20', '2018-09-02 21:26:20', NULL, NULL, '127.0.0.1', '访问', '/adm/control/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1161, '2018-09-02 21:26:24', '2018-09-02 21:26:24', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1162, '2018-09-21 22:18:59', '2018-09-21 22:18:59', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1163, '2018-09-21 22:19:00', '2018-09-21 22:19:00', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1164, '2018-09-21 22:19:17', '2018-09-21 22:19:17', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1165, '2018-09-21 22:19:22', '2018-09-21 22:19:22', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1166, '2018-09-21 22:19:27', '2018-09-21 22:19:27', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1167, '2018-09-21 22:19:37', '2018-09-21 22:19:37', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1168, '2018-09-21 22:19:45', '2018-09-21 22:19:45', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1169, '2018-10-01 22:25:31', '2018-10-01 22:25:31', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1170, '2018-10-01 22:25:31', '2018-10-01 22:25:31', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1171, '2018-10-01 22:25:39', '2018-10-01 22:25:39', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1172, '2018-10-01 22:25:42', '2018-10-01 22:25:42', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1173, '2018-10-01 22:25:45', '2018-10-01 22:25:45', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1174, '2018-10-02 19:51:24', '2018-10-02 19:51:24', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1175, '2018-10-02 19:51:24', '2018-10-02 19:51:24', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1176, '2018-10-02 19:51:36', '2018-10-02 19:51:36', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1177, '2018-10-02 19:51:39', '2018-10-02 19:51:39', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1178, '2018-10-02 20:05:21', '2018-10-02 20:05:21', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1179, '2018-10-02 20:05:24', '2018-10-02 20:05:24', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1180, '2018-10-02 21:54:59', '2018-10-02 21:54:59', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1181, '2018-10-02 21:55:03', '2018-10-02 21:55:03', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1182, '2018-10-02 21:57:30', '2018-10-02 21:57:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1183, '2018-10-02 21:57:33', '2018-10-02 21:57:33', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1184, '2018-10-02 21:59:26', '2018-10-02 21:59:26', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1185, '2018-10-02 21:59:29', '2018-10-02 21:59:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1186, '2018-10-02 22:00:21', '2018-10-02 22:00:21', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1187, '2018-10-02 22:00:24', '2018-10-02 22:00:24', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1188, '2018-10-02 22:01:13', '2018-10-02 22:01:13', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1189, '2018-10-02 22:09:25', '2018-10-02 22:09:25', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1190, '2018-10-02 22:09:28', '2018-10-02 22:09:28', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1191, '2018-10-03 21:08:19', '2018-10-03 21:08:19', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1192, '2018-10-03 21:08:21', '2018-10-03 21:08:21', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1193, '2018-10-03 21:09:11', '2018-10-03 21:09:11', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1194, '2018-10-03 21:09:14', '2018-10-03 21:09:14', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1195, '2018-10-03 21:09:22', '2018-10-03 21:09:22', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1196, '2018-10-03 21:09:25', '2018-10-03 21:09:25', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1197, '2018-10-03 21:09:39', '2018-10-03 21:09:39', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1198, '2018-10-03 21:09:42', '2018-10-03 21:09:42', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1199, '2018-10-03 21:12:13', '2018-10-03 21:12:13', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1200, '2018-10-03 21:12:15', '2018-10-03 21:12:15', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1201, '2018-10-03 21:12:30', '2018-10-03 21:12:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1202, '2018-10-03 21:12:34', '2018-10-03 21:12:34', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1203, '2018-10-03 21:12:55', '2018-10-03 21:12:55', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1204, '2018-10-03 21:15:29', '2018-10-03 21:15:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1205, '2018-10-03 21:15:32', '2018-10-03 21:15:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1206, '2018-10-03 21:20:02', '2018-10-03 21:20:02', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1207, '2018-10-03 21:20:05', '2018-10-03 21:20:05', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1208, '2018-10-03 21:20:21', '2018-10-03 21:20:21', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1209, '2018-10-03 21:20:23', '2018-10-03 21:20:23', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1210, '2018-10-03 21:20:42', '2018-10-03 21:20:42', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1211, '2018-10-03 21:20:45', '2018-10-03 21:20:45', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1212, '2018-10-03 21:21:42', '2018-10-03 21:21:42', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1213, '2018-10-03 21:21:45', '2018-10-03 21:21:45', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1214, '2018-10-03 21:22:43', '2018-10-03 21:22:43', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1215, '2018-10-03 21:22:45', '2018-10-03 21:22:45', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1216, '2018-10-03 21:24:02', '2018-10-03 21:24:02', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1217, '2018-10-03 21:24:06', '2018-10-03 21:24:06', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1218, '2018-10-03 21:29:37', '2018-10-03 21:29:37', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1219, '2018-10-03 21:29:41', '2018-10-03 21:29:41', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1220, '2018-10-03 21:30:54', '2018-10-03 21:30:54', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1221, '2018-10-03 21:30:57', '2018-10-03 21:30:57', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1222, '2018-10-03 21:36:32', '2018-10-03 21:36:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1223, '2018-10-03 21:36:35', '2018-10-03 21:36:35', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1224, '2018-10-03 21:36:46', '2018-10-03 21:36:46', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1225, '2018-10-03 21:36:49', '2018-10-03 21:36:49', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1226, '2018-10-03 21:38:17', '2018-10-03 21:38:17', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1227, '2018-10-03 21:38:20', '2018-10-03 21:38:20', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1228, '2018-10-03 21:42:41', '2018-10-03 21:42:41', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1229, '2018-10-03 21:42:44', '2018-10-03 21:42:44', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1230, '2018-10-03 21:44:11', '2018-10-03 21:44:11', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1231, '2018-10-03 21:44:13', '2018-10-03 21:44:13', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1232, '2018-10-03 21:44:18', '2018-10-03 21:44:18', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1233, '2018-10-03 21:44:21', '2018-10-03 21:44:21', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1234, '2018-10-03 21:44:58', '2018-10-03 21:44:58', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1235, '2018-10-03 21:45:01', '2018-10-03 21:45:01', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1236, '2018-10-03 21:45:16', '2018-10-03 21:45:16', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1237, '2018-10-03 21:45:19', '2018-10-03 21:45:19', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1238, '2018-10-03 22:04:33', '2018-10-03 22:04:33', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1239, '2018-10-03 22:04:36', '2018-10-03 22:04:36', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1240, '2018-10-03 22:04:50', '2018-10-03 22:04:50', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1241, '2018-10-03 22:04:53', '2018-10-03 22:04:53', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1242, '2018-10-03 22:04:58', '2018-10-03 22:04:58', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1243, '2018-10-03 22:05:01', '2018-10-03 22:05:01', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1244, '2018-10-03 22:05:08', '2018-10-03 22:05:08', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1245, '2018-10-03 22:05:11', '2018-10-03 22:05:11', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1246, '2018-10-03 22:05:44', '2018-10-03 22:05:44', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1247, '2018-10-03 22:05:47', '2018-10-03 22:05:47', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1248, '2018-10-03 22:05:55', '2018-10-03 22:05:55', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1249, '2018-10-03 22:05:57', '2018-10-03 22:05:57', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1250, '2018-10-03 22:06:38', '2018-10-03 22:06:38', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1251, '2018-10-03 22:06:41', '2018-10-03 22:06:41', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1252, '2018-10-03 22:07:29', '2018-10-03 22:07:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1253, '2018-10-03 22:07:32', '2018-10-03 22:07:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1254, '2018-10-03 22:08:27', '2018-10-03 22:08:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1255, '2018-10-03 22:08:30', '2018-10-03 22:08:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1256, '2018-10-03 22:09:37', '2018-10-03 22:09:37', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1257, '2018-10-03 22:09:40', '2018-10-03 22:09:40', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1258, '2018-10-03 22:22:29', '2018-10-03 22:22:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1259, '2018-10-03 22:22:32', '2018-10-03 22:22:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1260, '2018-10-03 22:23:22', '2018-10-03 22:23:22', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1261, '2018-10-03 22:23:25', '2018-10-03 22:23:25', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1262, '2018-10-03 22:24:26', '2018-10-03 22:24:26', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1263, '2018-10-03 22:24:29', '2018-10-03 22:24:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1264, '2018-10-03 22:24:46', '2018-10-03 22:24:46', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1265, '2018-10-03 22:25:13', '2018-10-03 22:25:13', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1266, '2018-10-03 22:25:29', '2018-10-03 22:25:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1267, '2018-10-03 22:25:33', '2018-10-03 22:25:33', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1268, '2018-10-03 22:25:36', '2018-10-03 22:25:36', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1269, '2018-10-03 22:26:19', '2018-10-03 22:26:19', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1270, '2018-10-03 22:26:27', '2018-10-03 22:26:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1271, '2018-10-03 22:26:27', '2018-10-03 22:26:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1272, '2018-10-03 22:26:30', '2018-10-03 22:26:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1273, '2018-10-03 22:28:44', '2018-10-03 22:28:44', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1274, '2018-10-03 22:28:47', '2018-10-03 22:28:47', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1275, '2018-10-03 22:29:12', '2018-10-03 22:29:12', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1276, '2018-10-03 22:29:14', '2018-10-03 22:29:14', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1277, '2018-10-03 22:30:14', '2018-10-03 22:30:14', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1278, '2018-10-03 22:30:17', '2018-10-03 22:30:17', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1279, '2018-10-03 22:30:51', '2018-10-03 22:30:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1280, '2018-10-03 22:30:54', '2018-10-03 22:30:54', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1281, '2018-10-03 22:30:54', '2018-10-03 22:30:54', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1282, '2018-10-03 22:30:56', '2018-10-03 22:30:56', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1283, '2018-10-03 22:31:39', '2018-10-03 22:31:39', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1284, '2018-10-03 22:31:42', '2018-10-03 22:31:42', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1285, '2018-10-03 22:32:30', '2018-10-03 22:32:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1286, '2018-10-03 22:32:33', '2018-10-03 22:32:33', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1287, '2018-10-03 22:35:16', '2018-10-03 22:35:16', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1288, '2018-10-03 22:35:19', '2018-10-03 22:35:19', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1289, '2018-10-03 22:35:44', '2018-10-03 22:35:44', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1290, '2018-10-03 22:35:47', '2018-10-03 22:35:47', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1291, '2018-10-03 22:36:11', '2018-10-03 22:36:11', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1292, '2018-10-03 22:36:14', '2018-10-03 22:36:14', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1293, '2018-10-03 22:45:01', '2018-10-03 22:45:01', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1294, '2018-10-03 22:45:04', '2018-10-03 22:45:04', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1295, '2018-10-03 22:46:17', '2018-10-03 22:46:17', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1296, '2018-10-03 22:46:19', '2018-10-03 22:46:19', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1297, '2018-10-03 22:46:29', '2018-10-03 22:46:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1298, '2018-10-03 22:46:32', '2018-10-03 22:46:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1299, '2018-10-03 22:47:20', '2018-10-03 22:47:20', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1300, '2018-10-03 22:47:23', '2018-10-03 22:47:23', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1301, '2018-10-03 22:47:59', '2018-10-03 22:47:59', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1302, '2018-10-03 22:48:02', '2018-10-03 22:48:02', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1303, '2018-10-03 22:48:26', '2018-10-03 22:48:26', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1304, '2018-10-03 22:48:29', '2018-10-03 22:48:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1305, '2018-10-03 22:49:00', '2018-10-03 22:49:00', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1306, '2018-10-03 22:49:03', '2018-10-03 22:49:03', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1307, '2018-10-03 22:49:24', '2018-10-03 22:49:24', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1308, '2018-10-03 22:49:27', '2018-10-03 22:49:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1309, '2018-10-03 22:50:29', '2018-10-03 22:50:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1310, '2018-10-03 22:50:32', '2018-10-03 22:50:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1311, '2018-10-03 22:51:26', '2018-10-03 22:51:26', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1312, '2018-10-03 22:51:29', '2018-10-03 22:51:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1313, '2018-10-03 22:52:01', '2018-10-03 22:52:01', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1314, '2018-10-03 22:52:03', '2018-10-03 22:52:03', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1315, '2018-10-03 22:52:29', '2018-10-03 22:52:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1316, '2018-10-03 22:52:32', '2018-10-03 22:52:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1');
INSERT INTO `Sys_OperationLog` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `ClientIP`, `OperationDescription`, `OperationUrl`, `UserName`, `ClientInfo`) VALUES
(1317, '2018-10-03 22:52:43', '2018-10-03 22:52:43', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1318, '2018-10-03 22:52:46', '2018-10-03 22:52:46', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1319, '2018-10-03 22:53:23', '2018-10-03 22:53:23', NULL, NULL, '127.0.0.1', '访问', '/adm/log/login/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1320, '2018-10-03 22:54:43', '2018-10-03 22:54:43', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1321, '2018-10-03 22:54:46', '2018-10-03 22:54:46', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1322, '2018-10-03 22:56:04', '2018-10-03 22:56:04', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1323, '2018-10-03 22:56:07', '2018-10-03 22:56:07', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1324, '2018-10-03 22:56:35', '2018-10-03 22:56:35', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1325, '2018-10-03 22:56:38', '2018-10-03 22:56:38', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1326, '2018-10-03 23:00:26', '2018-10-03 23:00:26', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1327, '2018-10-03 23:00:29', '2018-10-03 23:00:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1328, '2018-10-03 23:00:56', '2018-10-03 23:00:56', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1329, '2018-10-03 23:02:03', '2018-10-03 23:02:03', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1330, '2018-10-04 09:19:51', '2018-10-04 09:19:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1331, '2018-10-04 09:19:51', '2018-10-04 09:19:51', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1332, '2018-10-04 09:20:19', '2018-10-04 09:20:19', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1333, '2018-10-04 09:20:23', '2018-10-04 09:20:23', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1334, '2018-10-04 09:20:37', '2018-10-04 09:20:37', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1335, '2018-10-04 09:34:41', '2018-10-04 09:34:41', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1336, '2018-10-04 09:36:51', '2018-10-04 09:36:51', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1337, '2018-10-04 09:37:39', '2018-10-04 09:37:39', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1338, '2018-10-04 09:43:51', '2018-10-04 09:43:51', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1339, '2018-10-04 09:43:57', '2018-10-04 09:43:57', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1340, '2018-10-04 09:44:12', '2018-10-04 09:44:12', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1341, '2018-10-04 09:44:32', '2018-10-04 09:44:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1342, '2018-10-04 09:44:35', '2018-10-04 09:44:35', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1343, '2018-10-04 09:45:41', '2018-10-04 09:45:41', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1344, '2018-10-04 09:45:47', '2018-10-04 09:45:47', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1345, '2018-10-04 09:45:54', '2018-10-04 09:45:54', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1346, '2018-10-04 09:46:04', '2018-10-04 09:46:04', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1347, '2018-10-04 09:46:16', '2018-10-04 09:46:16', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1348, '2018-10-04 09:50:44', '2018-10-04 09:50:44', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1349, '2018-10-04 12:49:13', '2018-10-04 12:49:13', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1350, '2018-10-04 12:49:13', '2018-10-04 12:49:13', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1351, '2018-10-04 12:49:22', '2018-10-04 12:49:22', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1352, '2018-10-04 12:49:25', '2018-10-04 12:49:25', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1353, '2018-10-04 12:49:27', '2018-10-04 12:49:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1354, '2018-10-04 12:49:31', '2018-10-04 12:49:31', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1355, '2018-10-04 12:49:35', '2018-10-04 12:49:35', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1356, '2018-10-04 12:57:33', '2018-10-04 12:57:33', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1357, '2018-10-04 12:57:38', '2018-10-04 12:57:38', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1358, '2018-10-04 12:57:45', '2018-10-04 12:57:45', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1359, '2018-10-04 12:58:48', '2018-10-04 12:58:48', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1360, '2018-10-04 12:59:10', '2018-10-04 12:59:10', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1361, '2018-10-04 12:59:26', '2018-10-04 12:59:26', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1362, '2018-10-04 13:00:19', '2018-10-04 13:00:19', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1363, '2018-10-04 13:00:25', '2018-10-04 13:00:25', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1364, '2018-10-04 13:01:04', '2018-10-04 13:01:04', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1365, '2018-10-04 13:01:16', '2018-10-04 13:01:16', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1366, '2018-10-04 13:03:12', '2018-10-04 13:03:12', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1367, '2018-10-04 13:05:25', '2018-10-04 13:05:25', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1368, '2018-10-04 13:05:51', '2018-10-04 13:05:51', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1369, '2018-10-04 13:05:59', '2018-10-04 13:05:59', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1370, '2018-10-04 13:07:20', '2018-10-04 13:07:20', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1371, '2018-10-04 13:07:24', '2018-10-04 13:07:24', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1372, '2018-10-04 13:07:28', '2018-10-04 13:07:28', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1373, '2018-10-04 13:08:23', '2018-10-04 13:08:23', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1374, '2018-10-04 13:32:51', '2018-10-04 13:32:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1375, '2018-10-04 13:32:52', '2018-10-04 13:32:52', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1376, '2018-10-04 13:34:46', '2018-10-04 13:34:46', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1377, '2018-10-04 13:34:56', '2018-10-04 13:34:56', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1378, '2018-10-04 13:36:20', '2018-10-04 13:36:20', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1379, '2018-10-04 13:37:22', '2018-10-04 13:37:22', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1380, '2018-10-04 13:40:34', '2018-10-04 13:40:34', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1381, '2018-10-04 13:40:51', '2018-10-04 13:40:51', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1382, '2018-10-04 13:42:12', '2018-10-04 13:42:12', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1383, '2018-10-04 13:42:23', '2018-10-04 13:42:23', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1384, '2018-10-04 13:46:51', '2018-10-04 13:46:51', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1385, '2018-10-04 13:47:13', '2018-10-04 13:47:13', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1386, '2018-10-04 13:47:57', '2018-10-04 13:47:57', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1387, '2018-10-04 13:48:04', '2018-10-04 13:48:04', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1388, '2018-10-04 13:48:08', '2018-10-04 13:48:08', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1389, '2018-10-04 13:52:00', '2018-10-04 13:52:00', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1390, '2018-10-04 13:52:00', '2018-10-04 13:52:00', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1391, '2018-10-04 13:54:11', '2018-10-04 13:54:11', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1392, '2018-10-04 13:54:15', '2018-10-04 13:54:15', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1393, '2018-10-04 13:54:38', '2018-10-04 13:54:38', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1394, '2018-10-04 13:54:45', '2018-10-04 13:54:45', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/7/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1395, '2018-10-04 15:11:58', '2018-10-04 15:11:58', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1396, '2018-10-04 15:11:58', '2018-10-04 15:11:58', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1397, '2018-10-04 15:12:05', '2018-10-04 15:12:05', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1398, '2018-10-04 15:12:36', '2018-10-04 15:12:36', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1399, '2018-10-04 15:12:56', '2018-10-04 15:12:56', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1400, '2018-10-04 15:13:33', '2018-10-04 15:13:33', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1401, '2018-10-04 15:13:39', '2018-10-04 15:13:39', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1402, '2018-10-04 15:13:42', '2018-10-04 15:13:42', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1403, '2018-10-04 15:13:53', '2018-10-04 15:13:53', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1404, '2018-10-04 15:14:00', '2018-10-04 15:14:00', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1405, '2018-10-04 15:14:25', '2018-10-04 15:14:25', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1406, '2018-10-04 15:14:30', '2018-10-04 15:14:30', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1407, '2018-10-04 15:14:32', '2018-10-04 15:14:32', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1408, '2018-10-04 15:14:34', '2018-10-04 15:14:34', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1409, '2018-10-04 15:14:42', '2018-10-04 15:14:42', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1410, '2018-10-04 15:14:50', '2018-10-04 15:14:50', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1411, '2018-10-04 15:14:52', '2018-10-04 15:14:52', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1412, '2018-10-04 15:14:56', '2018-10-04 15:14:56', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1413, '2018-10-04 15:15:00', '2018-10-04 15:15:00', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1414, '2018-10-04 15:15:01', '2018-10-04 15:15:01', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1415, '2018-10-04 15:15:06', '2018-10-04 15:15:06', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1416, '2018-10-04 15:15:12', '2018-10-04 15:15:12', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1417, '2018-10-04 15:15:17', '2018-10-04 15:15:17', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1'),
(1418, '2018-12-19 19:43:12', '2018-12-19 19:43:12', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1419, '2018-12-19 19:43:13', '2018-12-19 19:43:13', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1420, '2018-12-19 19:43:14', '2018-12-19 19:43:14', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1421, '2018-12-19 19:43:14', '2018-12-19 19:43:14', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1422, '2018-12-19 19:43:14', '2018-12-19 19:43:14', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1423, '2018-12-19 19:43:15', '2018-12-19 19:43:15', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1424, '2018-12-19 19:43:15', '2018-12-19 19:43:15', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1425, '2018-12-19 19:43:16', '2018-12-19 19:43:16', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1426, '2018-12-19 19:43:16', '2018-12-19 19:43:16', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1427, '2018-12-19 19:43:17', '2018-12-19 19:43:17', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1428, '2018-12-19 19:43:18', '2018-12-19 19:43:18', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1429, '2018-12-19 19:43:19', '2018-12-19 19:43:19', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1430, '2018-12-19 19:43:19', '2018-12-19 19:43:19', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1431, '2018-12-19 19:43:20', '2018-12-19 19:43:20', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1432, '2018-12-19 19:43:20', '2018-12-19 19:43:20', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1433, '2018-12-19 19:43:56', '2018-12-19 19:43:56', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1434, '2018-12-19 19:45:36', '2018-12-19 19:45:36', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1435, '2018-12-19 19:46:28', '2018-12-19 19:46:28', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1436, '2018-12-19 19:46:56', '2018-12-19 19:46:56', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1437, '2018-12-19 19:47:18', '2018-12-19 19:47:18', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1438, '2018-12-19 19:47:49', '2018-12-19 19:47:49', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1439, '2018-12-19 19:47:50', '2018-12-19 19:47:50', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1440, '2018-12-19 19:47:54', '2018-12-19 19:47:54', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1441, '2018-12-19 19:47:58', '2018-12-19 19:47:58', NULL, NULL, '127.0.0.1', '访问', '/adm/role/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1442, '2018-12-19 19:48:06', '2018-12-19 19:48:06', NULL, NULL, '127.0.0.1', '访问', '/adm/log/login/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1443, '2018-12-19 19:48:09', '2018-12-19 19:48:09', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1444, '2019-01-03 16:15:51', '2019-01-03 16:15:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1445, '2019-01-03 16:15:53', '2019-01-03 16:15:53', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1446, '2019-01-03 16:16:10', '2019-01-03 16:16:10', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1447, '2019-01-03 16:16:14', '2019-01-03 16:16:14', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1448, '2019-01-03 16:16:39', '2019-01-03 16:16:39', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1449, '2019-01-03 16:17:02', '2019-01-03 16:17:02', NULL, NULL, '127.0.0.1', '访问', '/adm/role/authen/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1450, '2019-01-04 16:02:49', '2019-01-04 16:02:49', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1451, '2019-01-04 16:02:54', '2019-01-04 16:02:54', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1452, '2019-01-04 16:02:57', '2019-01-04 16:02:57', NULL, NULL, '127.0.0.1', '访问', '/adm/user/logout/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1453, '2019-01-04 16:09:52', '2019-01-04 16:09:52', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1454, '2019-01-04 16:09:52', '2019-01-04 16:09:52', NULL, NULL, '127.0.0.1', '访问', '/adm/user/login/?next=/adm/control/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1455, '2019-01-04 16:09:59', '2019-01-04 16:09:59', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1456, '2019-01-04 16:10:02', '2019-01-04 16:10:02', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1457, '2019-01-04 16:18:43', '2019-01-04 16:18:43', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1458, '2019-01-04 16:18:47', '2019-01-04 16:18:47', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1459, '2019-01-04 16:19:06', '2019-01-04 16:19:06', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1460, '2019-01-04 16:19:17', '2019-01-04 16:19:17', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1461, '2019-01-04 16:19:34', '2019-01-04 16:19:34', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/10/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1462, '2019-01-04 16:43:25', '2019-01-04 16:43:25', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1463, '2019-01-04 16:43:29', '2019-01-04 16:43:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1464, '2019-01-04 16:43:37', '2019-01-04 16:43:37', NULL, NULL, '127.0.0.1', '访问', '/adm/role/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1465, '2019-01-04 16:43:42', '2019-01-04 16:43:42', NULL, NULL, '127.0.0.1', '访问', '/adm/role/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1466, '2019-01-04 16:43:48', '2019-01-04 16:43:48', NULL, NULL, '127.0.0.1', '访问', '/adm/role/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1467, '2019-01-04 16:44:35', '2019-01-04 16:44:35', NULL, NULL, '127.0.0.1', '访问', '/adm/role/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1468, '2019-01-04 17:01:00', '2019-01-04 17:01:00', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1469, '2019-01-04 17:01:03', '2019-01-04 17:01:03', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1470, '2019-01-04 17:01:05', '2019-01-04 17:01:05', NULL, NULL, '127.0.0.1', '访问', '/adm/role/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1471, '2019-01-04 17:01:12', '2019-01-04 17:01:12', NULL, NULL, '127.0.0.1', '访问', '/adm/log/login/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1472, '2019-01-04 17:01:25', '2019-01-04 17:01:25', NULL, NULL, '127.0.0.1', '访问', '/adm/role/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1473, '2019-01-04 17:01:27', '2019-01-04 17:01:27', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1474, '2019-01-04 17:01:33', '2019-01-04 17:01:33', NULL, NULL, '127.0.0.1', '访问', '/adm/user/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1475, '2019-01-04 17:03:22', '2019-01-04 17:03:22', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1476, '2019-01-05 23:46:16', '2019-01-05 23:46:16', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1477, '2019-01-05 23:46:20', '2019-01-05 23:46:20', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1478, '2019-01-05 23:46:23', '2019-01-05 23:46:23', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1479, '2019-01-05 23:46:33', '2019-01-05 23:46:33', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1480, '2019-01-05 23:46:33', '2019-01-05 23:46:33', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1481, '2019-01-05 23:46:41', '2019-01-05 23:46:41', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1482, '2019-01-05 23:46:55', '2019-01-05 23:46:55', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1483, '2019-01-05 23:47:01', '2019-01-05 23:47:01', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/detail/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1484, '2019-01-05 23:50:10', '2019-01-05 23:50:10', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1485, '2019-01-05 23:50:14', '2019-01-05 23:50:14', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1486, '2019-01-05 23:50:18', '2019-01-05 23:50:18', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/detail/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1487, '2019-01-05 23:50:28', '2019-01-05 23:50:28', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/detail/2/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1488, '2019-01-05 23:51:25', '2019-01-05 23:51:25', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1489, '2019-01-05 23:51:28', '2019-01-05 23:51:28', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1490, '2019-01-05 23:51:30', '2019-01-05 23:51:30', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1491, '2019-01-05 23:51:46', '2019-01-05 23:51:46', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1492, '2019-01-05 23:51:55', '2019-01-05 23:51:55', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1493, '2019-01-05 23:52:53', '2019-01-05 23:52:53', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1494, '2019-01-05 23:52:54', '2019-01-05 23:52:54', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1495, '2019-01-05 23:52:57', '2019-01-05 23:52:57', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/detail/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1496, '2019-01-05 23:52:57', '2019-01-05 23:52:57', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1497, '2019-01-05 23:53:04', '2019-01-05 23:53:04', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/detail/2/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1498, '2019-01-05 23:53:12', '2019-01-05 23:53:12', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/detail/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1499, '2019-01-05 23:53:53', '2019-01-05 23:53:53', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/detail/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1500, '2019-01-05 23:55:29', '2019-01-05 23:55:29', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/detail/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1501, '2019-01-05 23:56:50', '2019-01-05 23:56:50', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/detail/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1502, '2019-01-05 23:56:59', '2019-01-05 23:56:59', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1503, '2019-01-05 23:57:10', '2019-01-05 23:57:10', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/12/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1504, '2019-01-07 15:02:29', '2019-01-07 15:02:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1505, '2019-01-07 15:02:35', '2019-01-07 15:02:35', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1506, '2019-01-07 15:03:02', '2019-01-07 15:03:02', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1507, '2019-01-07 15:03:10', '2019-01-07 15:03:10', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1508, '2019-01-07 15:03:24', '2019-01-07 15:03:24', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1509, '2019-01-07 15:05:03', '2019-01-07 15:05:03', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1510, '2019-01-07 15:05:15', '2019-01-07 15:05:15', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1511, '2019-01-07 15:05:25', '2019-01-07 15:05:25', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1512, '2019-01-07 15:06:10', '2019-01-07 15:06:10', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1513, '2019-01-07 15:06:14', '2019-01-07 15:06:14', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1514, '2019-01-07 15:06:21', '2019-01-07 15:06:21', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1515, '2019-01-07 15:06:38', '2019-01-07 15:06:38', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1516, '2019-01-07 15:07:12', '2019-01-07 15:07:12', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1517, '2019-01-07 15:07:17', '2019-01-07 15:07:17', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1518, '2019-01-07 15:07:24', '2019-01-07 15:07:24', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1519, '2019-01-07 15:07:44', '2019-01-07 15:07:44', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1520, '2019-01-07 15:12:29', '2019-01-07 15:12:29', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1521, '2019-01-07 15:12:49', '2019-01-07 15:12:49', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1522, '2019-01-07 15:12:55', '2019-01-07 15:12:55', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1523, '2019-01-07 15:13:25', '2019-01-07 15:13:25', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1524, '2019-01-07 15:15:56', '2019-01-07 15:15:56', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1525, '2019-01-07 15:16:01', '2019-01-07 15:16:01', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1526, '2019-01-07 15:16:03', '2019-01-07 15:16:03', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36');
INSERT INTO `Sys_OperationLog` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `ClientIP`, `OperationDescription`, `OperationUrl`, `UserName`, `ClientInfo`) VALUES
(1527, '2019-01-07 15:16:26', '2019-01-07 15:16:26', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/19/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1528, '2019-01-07 15:17:16', '2019-01-07 15:17:16', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/20/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1529, '2019-01-07 15:17:52', '2019-01-07 15:17:52', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/19/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1530, '2019-01-07 15:19:19', '2019-01-07 15:19:19', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/20/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1531, '2019-01-07 15:19:59', '2019-01-07 15:19:59', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/20/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1532, '2019-01-07 15:21:07', '2019-01-07 15:21:07', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1533, '2019-01-07 15:21:11', '2019-01-07 15:21:11', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1534, '2019-01-07 15:21:41', '2019-01-07 15:21:41', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1535, '2019-01-07 15:23:31', '2019-01-07 15:23:31', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1536, '2019-01-07 15:23:36', '2019-01-07 15:23:36', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1537, '2019-01-07 15:24:38', '2019-01-07 15:24:38', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1538, '2019-01-07 15:25:13', '2019-01-07 15:25:13', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1539, '2019-01-07 15:26:00', '2019-01-07 15:26:00', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1540, '2019-01-07 15:27:02', '2019-01-07 15:27:02', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1541, '2019-01-07 15:27:48', '2019-01-07 15:27:48', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1542, '2019-01-07 15:33:58', '2019-01-07 15:33:58', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1543, '2019-01-07 15:34:08', '2019-01-07 15:34:08', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1544, '2019-01-07 15:34:56', '2019-01-07 15:34:56', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1545, '2019-01-07 15:36:25', '2019-01-07 15:36:25', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1546, '2019-01-07 15:36:42', '2019-01-07 15:36:42', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1547, '2019-01-07 15:37:27', '2019-01-07 15:37:27', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1548, '2019-01-07 15:37:37', '2019-01-07 15:37:37', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1549, '2019-01-07 15:38:00', '2019-01-07 15:38:00', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1550, '2019-01-07 15:38:39', '2019-01-07 15:38:39', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1551, '2019-01-07 15:40:23', '2019-01-07 15:40:23', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/21/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1552, '2019-01-07 15:40:47', '2019-01-07 15:40:47', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1553, '2019-01-07 15:44:14', '2019-01-07 15:44:14', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1554, '2019-01-07 15:59:08', '2019-01-07 15:59:08', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1555, '2019-01-07 15:59:16', '2019-01-07 15:59:16', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1556, '2019-01-07 15:59:28', '2019-01-07 15:59:28', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1557, '2019-01-07 16:01:23', '2019-01-07 16:01:23', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1558, '2019-01-07 16:01:31', '2019-01-07 16:01:31', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1559, '2019-01-07 16:02:30', '2019-01-07 16:02:30', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1560, '2019-01-07 16:03:16', '2019-01-07 16:03:16', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1561, '2019-01-07 16:03:19', '2019-01-07 16:03:19', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1562, '2019-01-07 16:04:02', '2019-01-07 16:04:02', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1563, '2019-01-07 16:04:07', '2019-01-07 16:04:07', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1564, '2019-01-07 16:07:19', '2019-01-07 16:07:19', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1565, '2019-01-07 16:07:27', '2019-01-07 16:07:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1566, '2019-01-07 16:07:28', '2019-01-07 16:07:28', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1567, '2019-01-07 16:08:04', '2019-01-07 16:08:04', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1568, '2019-01-07 16:08:28', '2019-01-07 16:08:28', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1569, '2019-01-07 16:08:47', '2019-01-07 16:08:47', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1570, '2019-01-07 16:08:50', '2019-01-07 16:08:50', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1571, '2019-01-07 16:10:08', '2019-01-07 16:10:08', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1572, '2019-01-07 16:10:15', '2019-01-07 16:10:15', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1573, '2019-01-07 16:10:18', '2019-01-07 16:10:18', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1574, '2019-01-07 16:11:13', '2019-01-07 16:11:13', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1575, '2019-01-07 16:11:17', '2019-01-07 16:11:17', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1576, '2019-01-07 16:11:44', '2019-01-07 16:11:44', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1577, '2019-01-07 16:11:49', '2019-01-07 16:11:49', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1578, '2019-01-07 16:23:42', '2019-01-07 16:23:42', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1579, '2019-01-07 16:23:46', '2019-01-07 16:23:46', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1580, '2019-01-07 16:23:48', '2019-01-07 16:23:48', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1581, '2019-01-07 16:24:33', '2019-01-07 16:24:33', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1582, '2019-01-07 16:24:34', '2019-01-07 16:24:34', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1583, '2019-01-07 16:24:53', '2019-01-07 16:24:53', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1584, '2019-01-07 16:25:46', '2019-01-07 16:25:46', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1585, '2019-01-07 16:25:54', '2019-01-07 16:25:54', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1586, '2019-01-07 16:25:56', '2019-01-07 16:25:56', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1587, '2019-01-07 16:26:27', '2019-01-07 16:26:27', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1588, '2019-01-07 16:31:02', '2019-01-07 16:31:02', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1589, '2019-01-07 16:31:10', '2019-01-07 16:31:10', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1590, '2019-01-07 16:31:27', '2019-01-07 16:31:27', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1591, '2019-01-07 16:31:42', '2019-01-07 16:31:42', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1592, '2019-01-07 16:37:58', '2019-01-07 16:37:58', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1593, '2019-01-07 16:38:19', '2019-01-07 16:38:19', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1594, '2019-01-07 16:38:31', '2019-01-07 16:38:31', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/14/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1595, '2019-01-07 16:38:49', '2019-01-07 16:38:49', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/7/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1596, '2019-01-07 16:39:56', '2019-01-07 16:39:56', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1597, '2019-01-07 16:40:01', '2019-01-07 16:40:01', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1598, '2019-01-07 16:40:03', '2019-01-07 16:40:03', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1599, '2019-01-07 16:41:33', '2019-01-07 16:41:33', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/14/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1600, '2019-01-07 16:41:54', '2019-01-07 16:41:54', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/14/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1601, '2019-01-07 16:42:25', '2019-01-07 16:42:25', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/14/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1602, '2019-01-07 16:44:59', '2019-01-07 16:44:59', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1603, '2019-01-07 16:45:12', '2019-01-07 16:45:12', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/14/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1604, '2019-01-07 16:45:59', '2019-01-07 16:45:59', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1605, '2019-01-07 16:46:02', '2019-01-07 16:46:02', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/14/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1606, '2019-01-07 16:46:24', '2019-01-07 16:46:24', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/14/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1607, '2019-01-07 16:46:44', '2019-01-07 16:46:44', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1608, '2019-01-07 16:47:22', '2019-01-07 16:47:22', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/15/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1609, '2019-01-07 16:47:45', '2019-01-07 16:47:45', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/15/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1610, '2019-01-07 16:50:33', '2019-01-07 16:50:33', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1611, '2019-01-07 16:50:38', '2019-01-07 16:50:38', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1612, '2019-01-07 16:50:45', '2019-01-07 16:50:45', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1613, '2019-01-07 16:50:56', '2019-01-07 16:50:56', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1614, '2019-01-08 19:50:20', '2019-01-08 19:50:20', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1615, '2019-01-08 19:50:24', '2019-01-08 19:50:24', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1616, '2019-01-08 19:50:27', '2019-01-08 19:50:27', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1617, '2019-01-08 19:50:28', '2019-01-08 19:50:28', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1618, '2019-01-08 19:51:09', '2019-01-08 19:51:09', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1619, '2019-01-08 19:51:13', '2019-01-08 19:51:13', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1620, '2019-01-08 19:51:19', '2019-01-08 19:51:19', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1621, '2019-01-08 19:51:22', '2019-01-08 19:51:22', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1622, '2019-01-08 19:53:52', '2019-01-08 19:53:52', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1623, '2019-01-08 19:53:55', '2019-01-08 19:53:55', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1624, '2019-01-08 19:53:58', '2019-01-08 19:53:58', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1625, '2019-01-08 19:54:11', '2019-01-08 19:54:11', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1626, '2019-01-08 19:54:18', '2019-01-08 19:54:18', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1627, '2019-01-08 19:59:33', '2019-01-08 19:59:33', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1628, '2019-01-08 19:59:54', '2019-01-08 19:59:54', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1629, '2019-01-08 19:59:59', '2019-01-08 19:59:59', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1630, '2019-01-08 20:00:01', '2019-01-08 20:00:01', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1631, '2019-01-08 20:03:37', '2019-01-08 20:03:37', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1632, '2019-01-08 20:03:40', '2019-01-08 20:03:40', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1633, '2019-01-08 20:05:21', '2019-01-08 20:05:21', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1634, '2019-01-08 20:07:50', '2019-01-08 20:07:50', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1635, '2019-01-08 20:08:20', '2019-01-08 20:08:20', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1636, '2019-01-08 20:08:23', '2019-01-08 20:08:23', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1637, '2019-01-08 20:08:40', '2019-01-08 20:08:40', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1638, '2019-01-08 20:09:14', '2019-01-08 20:09:14', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1639, '2019-01-08 20:09:28', '2019-01-08 20:09:28', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1640, '2019-01-08 20:09:29', '2019-01-08 20:09:29', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1641, '2019-01-08 20:09:51', '2019-01-08 20:09:51', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1642, '2019-01-08 20:09:58', '2019-01-08 20:09:58', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1643, '2019-01-08 20:10:14', '2019-01-08 20:10:14', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1644, '2019-01-08 20:10:17', '2019-01-08 20:10:17', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1645, '2019-01-08 20:11:50', '2019-01-08 20:11:50', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1646, '2019-01-08 20:11:53', '2019-01-08 20:11:53', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1647, '2019-01-08 20:12:18', '2019-01-08 20:12:18', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1648, '2019-01-08 20:12:21', '2019-01-08 20:12:21', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1649, '2019-01-08 20:12:24', '2019-01-08 20:12:24', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1650, '2019-01-08 20:12:54', '2019-01-08 20:12:54', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1651, '2019-01-08 20:12:58', '2019-01-08 20:12:58', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1652, '2019-01-08 20:13:00', '2019-01-08 20:13:00', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1653, '2019-01-08 20:13:19', '2019-01-08 20:13:19', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1654, '2019-01-08 20:14:33', '2019-01-08 20:14:33', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1655, '2019-01-08 20:14:41', '2019-01-08 20:14:41', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1656, '2019-01-08 20:15:07', '2019-01-08 20:15:07', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1657, '2019-01-08 20:15:24', '2019-01-08 20:15:24', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1658, '2019-01-08 20:15:29', '2019-01-08 20:15:29', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1659, '2019-01-08 20:16:05', '2019-01-08 20:16:05', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/16/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1660, '2019-01-08 21:15:07', '2019-01-08 21:15:07', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1661, '2019-01-08 21:15:10', '2019-01-08 21:15:10', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1662, '2019-01-08 21:15:14', '2019-01-08 21:15:14', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1663, '2019-01-08 21:15:28', '2019-01-08 21:15:28', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/19/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1664, '2019-01-08 21:15:55', '2019-01-08 21:15:55', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1665, '2019-01-08 21:15:58', '2019-01-08 21:15:58', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1666, '2019-01-08 21:16:24', '2019-01-08 21:16:24', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1667, '2019-01-08 21:16:49', '2019-01-08 21:16:49', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1668, '2019-01-08 21:17:11', '2019-01-08 21:17:11', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/17/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1669, '2019-01-08 21:17:30', '2019-01-08 21:17:30', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/17/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1670, '2019-01-11 09:22:27', '2019-01-11 09:22:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1671, '2019-01-11 09:22:31', '2019-01-11 09:22:31', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1672, '2019-01-11 09:23:18', '2019-01-11 09:23:18', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1673, '2019-01-11 09:24:07', '2019-01-11 09:24:07', NULL, NULL, '127.0.0.1', '访问', '/adm/user/select_user/10/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1674, '2019-01-11 09:25:21', '2019-01-11 09:25:21', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1675, '2019-01-11 09:25:31', '2019-01-11 09:25:31', NULL, NULL, '127.0.0.1', '访问', '/adm/user/select_user/5/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1676, '2019-01-11 09:25:52', '2019-01-11 09:25:52', NULL, NULL, '127.0.0.1', '访问', '/adm/user/select_user/11/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1677, '2019-01-11 09:26:27', '2019-01-11 09:26:27', NULL, NULL, '127.0.0.1', '访问', '/adm/user/select_user/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1678, '2019-01-11 09:27:04', '2019-01-11 09:27:04', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1679, '2019-01-11 09:27:12', '2019-01-11 09:27:12', NULL, NULL, '127.0.0.1', '访问', '/adm/user/select_user/5/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1680, '2019-01-11 09:27:40', '2019-01-11 09:27:40', NULL, NULL, '127.0.0.1', '访问', '/adm/user/select_user/5/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1681, '2019-01-11 09:30:06', '2019-01-11 09:30:06', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1682, '2019-01-11 09:30:13', '2019-01-11 09:30:13', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1683, '2019-01-11 09:30:16', '2019-01-11 09:30:16', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1684, '2019-01-11 09:30:30', '2019-01-11 09:30:30', NULL, NULL, '127.0.0.1', '访问', '/adm/user/select_user/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1685, '2019-01-11 09:31:25', '2019-01-11 09:31:25', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1686, '2019-01-11 09:31:36', '2019-01-11 09:31:36', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1687, '2019-01-11 09:31:40', '2019-01-11 09:31:40', NULL, NULL, '127.0.0.1', '访问', '/adm/user/select_user/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1688, '2019-01-11 09:31:53', '2019-01-11 09:31:53', NULL, NULL, '127.0.0.1', '访问', '/adm/user/select_user/2/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1689, '2019-01-11 09:33:27', '2019-01-11 09:33:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1690, '2019-01-11 09:33:34', '2019-01-11 09:33:34', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1691, '2019-01-11 09:34:07', '2019-01-11 09:34:07', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1692, '2019-01-11 09:34:20', '2019-01-11 09:34:20', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1693, '2019-01-11 09:34:30', '2019-01-11 09:34:30', NULL, NULL, '127.0.0.1', '访问', '/adm/user/select_user/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1694, '2019-01-11 09:35:03', '2019-01-11 09:35:03', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1695, '2019-01-11 09:35:15', '2019-01-11 09:35:15', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1696, '2019-01-11 09:35:41', '2019-01-11 09:35:41', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1697, '2019-01-11 09:47:15', '2019-01-11 09:47:15', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1698, '2019-01-11 09:47:21', '2019-01-11 09:47:21', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1699, '2019-01-11 09:47:50', '2019-01-11 09:47:50', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1700, '2019-01-11 09:47:59', '2019-01-11 09:47:59', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1701, '2019-01-11 09:48:32', '2019-01-11 09:48:32', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1702, '2019-01-11 09:48:49', '2019-01-11 09:48:49', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1703, '2019-01-11 09:52:51', '2019-01-11 09:52:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1704, '2019-01-11 09:52:57', '2019-01-11 09:52:57', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1705, '2019-01-11 09:53:22', '2019-01-11 09:53:22', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1706, '2019-01-11 09:53:27', '2019-01-11 09:53:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1707, '2019-01-11 09:54:15', '2019-01-11 09:54:15', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1708, '2019-01-11 09:55:23', '2019-01-11 09:55:23', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1709, '2019-01-11 09:55:31', '2019-01-11 09:55:31', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1710, '2019-01-11 09:55:36', '2019-01-11 09:55:36', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1711, '2019-01-11 09:58:14', '2019-01-11 09:58:14', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1712, '2019-01-11 09:58:19', '2019-01-11 09:58:19', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1713, '2019-01-11 09:58:21', '2019-01-11 09:58:21', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1714, '2019-01-11 09:58:29', '2019-01-11 09:58:29', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1715, '2019-01-11 09:58:30', '2019-01-11 09:58:30', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1716, '2019-01-11 09:59:05', '2019-01-11 09:59:05', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1717, '2019-01-11 09:59:12', '2019-01-11 09:59:12', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1718, '2019-01-11 09:59:14', '2019-01-11 09:59:14', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1719, '2019-01-11 10:00:15', '2019-01-11 10:00:15', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1720, '2019-01-11 10:00:24', '2019-01-11 10:00:24', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1721, '2019-01-11 10:00:38', '2019-01-11 10:00:38', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1722, '2019-01-11 10:05:56', '2019-01-11 10:05:56', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1723, '2019-01-11 10:06:05', '2019-01-11 10:06:05', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1724, '2019-01-11 10:06:11', '2019-01-11 10:06:11', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1725, '2019-01-11 10:06:13', '2019-01-11 10:06:13', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1726, '2019-01-11 10:07:23', '2019-01-11 10:07:23', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1727, '2019-01-11 10:07:28', '2019-01-11 10:07:28', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1728, '2019-01-11 10:07:30', '2019-01-11 10:07:30', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1729, '2019-01-11 10:07:48', '2019-01-11 10:07:48', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1730, '2019-01-11 10:08:26', '2019-01-11 10:08:26', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1731, '2019-01-11 10:08:31', '2019-01-11 10:08:31', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1732, '2019-01-11 10:08:37', '2019-01-11 10:08:37', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1733, '2019-01-11 10:08:53', '2019-01-11 10:08:53', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1734, '2019-01-11 10:09:45', '2019-01-11 10:09:45', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1735, '2019-01-11 10:09:51', '2019-01-11 10:09:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1736, '2019-01-11 10:09:55', '2019-01-11 10:09:55', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1737, '2019-01-11 10:10:03', '2019-01-11 10:10:03', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1738, '2019-01-11 10:10:37', '2019-01-11 10:10:37', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1739, '2019-01-11 10:10:42', '2019-01-11 10:10:42', NULL, NULL, '127.0.0.1', '访问', '/adm/department/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1740, '2019-01-11 10:13:09', '2019-01-11 10:13:09', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36');
INSERT INTO `Sys_OperationLog` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `ClientIP`, `OperationDescription`, `OperationUrl`, `UserName`, `ClientInfo`) VALUES
(1741, '2019-01-11 10:13:16', '2019-01-11 10:13:16', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1742, '2019-01-11 20:55:40', '2019-01-11 20:55:40', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1743, '2019-01-11 20:55:43', '2019-01-11 20:55:43', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1744, '2019-01-11 20:55:47', '2019-01-11 20:55:47', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1745, '2019-01-11 20:56:00', '2019-01-11 20:56:00', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1746, '2019-01-11 20:56:31', '2019-01-11 20:56:31', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1747, '2019-01-11 20:56:39', '2019-01-11 20:56:39', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/14/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1748, '2019-01-11 20:56:50', '2019-01-11 20:56:50', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1749, '2019-01-11 20:56:55', '2019-01-11 20:56:55', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1750, '2019-01-11 20:58:12', '2019-01-11 20:58:12', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1751, '2019-01-11 20:58:15', '2019-01-11 20:58:15', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1752, '2019-01-11 20:59:30', '2019-01-11 20:59:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1753, '2019-01-11 20:59:33', '2019-01-11 20:59:33', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1754, '2019-01-11 21:00:23', '2019-01-11 21:00:23', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1755, '2019-01-11 21:00:25', '2019-01-11 21:00:25', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1756, '2019-01-11 21:01:30', '2019-01-11 21:01:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1757, '2019-01-11 21:01:33', '2019-01-11 21:01:33', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1758, '2019-01-11 21:02:42', '2019-01-11 21:02:42', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1759, '2019-01-11 21:02:47', '2019-01-11 21:02:47', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1760, '2019-01-11 21:03:13', '2019-01-11 21:03:13', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1761, '2019-01-11 21:05:06', '2019-01-11 21:05:06', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1762, '2019-01-11 21:05:09', '2019-01-11 21:05:09', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1763, '2019-01-11 21:05:51', '2019-01-11 21:05:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1764, '2019-01-11 21:05:57', '2019-01-11 21:05:57', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1765, '2019-01-11 21:07:26', '2019-01-11 21:07:26', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1766, '2019-01-11 21:07:28', '2019-01-11 21:07:28', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1767, '2019-01-11 21:07:39', '2019-01-11 21:07:39', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/2/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1768, '2019-01-11 21:21:51', '2019-01-11 21:21:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1769, '2019-01-11 21:21:55', '2019-01-11 21:21:55', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1770, '2019-01-11 21:21:58', '2019-01-11 21:21:58', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1771, '2019-01-11 21:22:03', '2019-01-11 21:22:03', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1772, '2019-01-11 21:22:08', '2019-01-11 21:22:08', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1773, '2019-01-11 21:22:15', '2019-01-11 21:22:15', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1774, '2019-01-11 21:23:56', '2019-01-11 21:23:56', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1775, '2019-01-13 16:01:21', '2019-01-13 16:01:21', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1776, '2019-01-13 16:01:24', '2019-01-13 16:01:24', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1777, '2019-01-13 16:01:28', '2019-01-13 16:01:28', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1778, '2019-01-13 16:02:28', '2019-01-13 16:02:28', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1779, '2019-01-13 16:02:32', '2019-01-13 16:02:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1780, '2019-01-13 16:02:34', '2019-01-13 16:02:34', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1781, '2019-01-13 16:02:44', '2019-01-13 16:02:44', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/20/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1782, '2019-01-13 16:03:21', '2019-01-13 16:03:21', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1783, '2019-01-13 16:03:30', '2019-01-13 16:03:30', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/20/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1784, '2019-01-13 16:03:48', '2019-01-13 16:03:48', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1785, '2019-01-13 16:04:23', '2019-01-13 16:04:23', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1786, '2019-01-13 16:04:27', '2019-01-13 16:04:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1787, '2019-01-13 16:04:27', '2019-01-13 16:04:27', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1788, '2019-01-13 16:04:54', '2019-01-13 16:04:54', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1789, '2019-01-13 16:04:57', '2019-01-13 16:04:57', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1790, '2019-01-13 16:04:59', '2019-01-13 16:04:59', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1791, '2019-01-13 16:05:33', '2019-01-13 16:05:33', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1792, '2019-01-13 16:05:35', '2019-01-13 16:05:35', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1793, '2019-01-13 16:05:37', '2019-01-13 16:05:37', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1794, '2019-01-13 16:07:01', '2019-01-13 16:07:01', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1795, '2019-01-13 16:07:04', '2019-01-13 16:07:04', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1796, '2019-01-13 16:07:27', '2019-01-13 16:07:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1797, '2019-01-13 16:07:30', '2019-01-13 16:07:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1798, '2019-01-13 16:08:15', '2019-01-13 16:08:15', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/20/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1799, '2019-01-13 16:08:30', '2019-01-13 16:08:30', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/2/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1800, '2019-01-13 16:10:12', '2019-01-13 16:10:12', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/2/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1801, '2019-01-13 16:10:36', '2019-01-13 16:10:36', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1802, '2019-01-13 16:15:41', '2019-01-13 16:15:41', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1803, '2019-01-13 16:15:45', '2019-01-13 16:15:45', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1804, '2019-01-13 16:15:47', '2019-01-13 16:15:47', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1805, '2019-01-13 16:16:28', '2019-01-13 16:16:28', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/1/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1806, '2019-01-13 16:17:24', '2019-01-13 16:17:24', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1807, '2019-01-13 16:18:15', '2019-01-13 16:18:15', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1808, '2019-01-13 16:18:17', '2019-01-13 16:18:17', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1809, '2019-01-13 16:18:23', '2019-01-13 16:18:23', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1810, '2019-01-13 16:19:37', '2019-01-13 16:19:37', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1811, '2019-01-13 16:19:40', '2019-01-13 16:19:40', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1812, '2019-01-13 16:19:43', '2019-01-13 16:19:43', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1813, '2019-01-13 16:21:16', '2019-01-13 16:21:16', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1814, '2019-01-13 16:21:20', '2019-01-13 16:21:20', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1815, '2019-01-13 16:21:21', '2019-01-13 16:21:21', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1816, '2019-01-13 16:22:37', '2019-01-13 16:22:37', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1817, '2019-01-13 16:22:40', '2019-01-13 16:22:40', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1818, '2019-01-13 16:22:44', '2019-01-13 16:22:44', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1819, '2019-01-13 16:22:48', '2019-01-13 16:22:48', NULL, NULL, '127.0.0.1', '访问', '/adm/home/download/?fileurl=/upload/20190113/Debian_Python3.6_20190113161703.sh', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1820, '2019-01-13 16:24:41', '2019-01-13 16:24:41', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1821, '2019-01-13 16:24:43', '2019-01-13 16:24:43', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1822, '2019-01-13 16:24:46', '2019-01-13 16:24:46', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1823, '2019-01-13 16:24:56', '2019-01-13 16:24:56', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1824, '2019-01-13 16:26:40', '2019-01-13 16:26:40', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1825, '2019-01-13 16:26:43', '2019-01-13 16:26:43', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1826, '2019-01-13 16:27:00', '2019-01-13 16:27:00', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1827, '2019-01-13 16:28:25', '2019-01-13 16:28:25', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1828, '2019-01-13 16:28:28', '2019-01-13 16:28:28', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1829, '2019-01-13 16:28:30', '2019-01-13 16:28:30', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1830, '2019-01-13 16:28:36', '2019-01-13 16:28:36', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1831, '2019-01-13 16:28:42', '2019-01-13 16:28:42', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/6/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1832, '2019-01-13 16:28:57', '2019-01-13 16:28:57', NULL, NULL, '127.0.0.1', '访问', '/adm/home/download/?fileurl=/upload/20190113/ZZDS_20190113162849.zip', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1833, '2019-01-13 16:38:20', '2019-01-13 16:38:20', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1834, '2019-01-13 16:38:23', '2019-01-13 16:38:23', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1835, '2019-01-13 16:38:35', '2019-01-13 16:38:35', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1836, '2019-01-13 16:41:51', '2019-01-13 16:41:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1837, '2019-01-13 16:41:56', '2019-01-13 16:41:56', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1838, '2019-01-13 16:41:58', '2019-01-13 16:41:58', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1839, '2019-01-13 16:42:04', '2019-01-13 16:42:04', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/7/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1840, '2019-01-13 16:45:22', '2019-01-13 16:45:22', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1841, '2019-01-13 16:45:26', '2019-01-13 16:45:26', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1842, '2019-01-13 16:45:30', '2019-01-13 16:45:30', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1843, '2019-01-13 16:45:37', '2019-01-13 16:45:37', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/7/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1844, '2019-01-13 16:46:03', '2019-01-13 16:46:03', NULL, NULL, '127.0.0.1', '访问', '/adm/home/download/?fileurl=/upload/20190113/%E5%BE%85%E8%B4%AD%E4%B9%B0%E7%83%9F%E4%B8%9D_20190113164550.png', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1845, '2019-01-13 16:48:32', '2019-01-13 16:48:32', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1846, '2019-01-13 16:48:54', '2019-01-13 16:48:54', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1847, '2019-01-13 16:49:04', '2019-01-13 16:49:04', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/14/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1848, '2019-01-13 16:49:13', '2019-01-13 16:49:13', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/15/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1849, '2019-01-13 16:49:21', '2019-01-13 16:49:21', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1850, '2019-01-13 16:50:50', '2019-01-13 16:50:50', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1851, '2019-01-13 16:50:53', '2019-01-13 16:50:53', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1852, '2019-01-13 16:50:57', '2019-01-13 16:50:57', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1853, '2019-01-13 16:53:18', '2019-01-13 16:53:18', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1854, '2019-01-13 16:53:21', '2019-01-13 16:53:21', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1855, '2019-01-13 16:53:21', '2019-01-13 16:53:21', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1856, '2019-01-13 16:54:01', '2019-01-13 16:54:01', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1857, '2019-01-13 16:54:21', '2019-01-13 16:54:21', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1858, '2019-01-13 16:55:14', '2019-01-13 16:55:14', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1859, '2019-01-13 18:03:51', '2019-01-13 18:03:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1860, '2019-01-13 18:03:59', '2019-01-13 18:03:59', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1861, '2019-01-13 18:04:48', '2019-01-13 18:04:48', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1862, '2019-01-13 18:07:14', '2019-01-13 18:07:14', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1863, '2019-01-13 18:09:53', '2019-01-13 18:09:53', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1864, '2019-01-13 18:11:49', '2019-01-13 18:11:49', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1865, '2019-01-13 18:13:25', '2019-01-13 18:13:25', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1866, '2019-01-13 18:14:12', '2019-01-13 18:14:12', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1867, '2019-01-13 18:15:47', '2019-01-13 18:15:47', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1868, '2019-01-13 18:15:50', '2019-01-13 18:15:50', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1869, '2019-01-13 18:15:51', '2019-01-13 18:15:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1870, '2019-01-13 18:16:15', '2019-01-13 18:16:15', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1871, '2019-01-13 18:20:09', '2019-01-13 18:20:09', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1872, '2019-01-13 18:20:13', '2019-01-13 18:20:13', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1873, '2019-01-13 18:20:14', '2019-01-13 18:20:14', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1874, '2019-01-13 18:21:27', '2019-01-13 18:21:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1875, '2019-01-13 18:21:32', '2019-01-13 18:21:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1876, '2019-01-13 18:23:34', '2019-01-13 18:23:34', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1877, '2019-01-13 18:23:37', '2019-01-13 18:23:37', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1878, '2019-01-13 18:23:38', '2019-01-13 18:23:38', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1879, '2019-01-13 18:24:40', '2019-01-13 18:24:40', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1880, '2019-01-13 18:24:44', '2019-01-13 18:24:44', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1881, '2019-01-13 18:24:59', '2019-01-13 18:24:59', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1882, '2019-01-13 18:26:07', '2019-01-13 18:26:07', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1883, '2019-01-13 18:26:12', '2019-01-13 18:26:12', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1884, '2019-01-13 18:26:21', '2019-01-13 18:26:21', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1885, '2019-01-13 18:26:47', '2019-01-13 18:26:47', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1886, '2019-01-13 18:27:54', '2019-01-13 18:27:54', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1887, '2019-01-13 18:27:57', '2019-01-13 18:27:57', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1888, '2019-01-13 18:27:58', '2019-01-13 18:27:58', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1889, '2019-01-13 18:28:12', '2019-01-13 18:28:12', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1890, '2019-01-13 18:29:22', '2019-01-13 18:29:22', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1891, '2019-01-13 18:29:26', '2019-01-13 18:29:26', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1892, '2019-01-13 18:29:26', '2019-01-13 18:29:26', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1893, '2019-01-13 18:30:09', '2019-01-13 18:30:09', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1894, '2019-01-13 18:31:26', '2019-01-13 18:31:26', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1895, '2019-01-13 18:31:29', '2019-01-13 18:31:29', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1896, '2019-01-13 18:31:30', '2019-01-13 18:31:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1897, '2019-01-13 18:36:18', '2019-01-13 18:36:18', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1898, '2019-01-13 18:36:22', '2019-01-13 18:36:22', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1899, '2019-01-13 18:36:27', '2019-01-13 18:36:27', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1900, '2019-01-13 18:36:47', '2019-01-13 18:36:47', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1901, '2019-01-13 18:37:07', '2019-01-13 18:37:07', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1902, '2019-01-13 18:38:49', '2019-01-13 18:38:49', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1903, '2019-01-13 18:38:54', '2019-01-13 18:38:54', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1904, '2019-01-13 18:40:30', '2019-01-13 18:40:30', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1905, '2019-01-13 18:41:51', '2019-01-13 18:41:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1906, '2019-01-13 18:41:55', '2019-01-13 18:41:55', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1907, '2019-01-13 18:41:55', '2019-01-13 18:41:55', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1908, '2019-01-13 18:42:49', '2019-01-13 18:42:49', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1909, '2019-01-13 18:42:53', '2019-01-13 18:42:53', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1910, '2019-01-13 18:42:54', '2019-01-13 18:42:54', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1911, '2019-01-13 18:43:32', '2019-01-13 18:43:32', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1912, '2019-01-13 18:43:32', '2019-01-13 18:43:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1913, '2019-01-13 18:43:37', '2019-01-13 18:43:37', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1914, '2019-01-13 18:44:43', '2019-01-13 18:44:43', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1915, '2019-01-13 18:44:47', '2019-01-13 18:44:47', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1916, '2019-01-13 18:44:48', '2019-01-13 18:44:48', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1917, '2019-01-13 18:45:51', '2019-01-13 18:45:51', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1918, '2019-01-13 18:46:17', '2019-01-13 18:46:17', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1919, '2019-01-13 18:46:25', '2019-01-13 18:46:25', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1920, '2019-01-13 18:46:58', '2019-01-13 18:46:58', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1921, '2019-01-13 18:48:51', '2019-01-13 18:48:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1922, '2019-01-13 18:48:56', '2019-01-13 18:48:56', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1923, '2019-01-13 18:48:57', '2019-01-13 18:48:57', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1924, '2019-01-13 18:50:05', '2019-01-13 18:50:05', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1925, '2019-01-13 18:51:30', '2019-01-13 18:51:30', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1926, '2019-01-13 18:53:49', '2019-01-13 18:53:49', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1927, '2019-01-13 18:53:53', '2019-01-13 18:53:53', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1928, '2019-01-13 18:54:08', '2019-01-13 18:54:08', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1929, '2019-01-13 18:55:54', '2019-01-13 18:55:54', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1930, '2019-01-13 18:56:12', '2019-01-13 18:56:12', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1931, '2019-01-13 18:57:33', '2019-01-13 18:57:33', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1932, '2019-01-13 19:00:07', '2019-01-13 19:00:07', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1933, '2019-01-13 19:00:50', '2019-01-13 19:00:50', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1934, '2019-01-13 19:08:27', '2019-01-13 19:08:27', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1935, '2019-01-13 19:08:30', '2019-01-13 19:08:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1936, '2019-01-13 19:08:32', '2019-01-13 19:08:32', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1937, '2019-01-13 19:09:03', '2019-01-13 19:09:03', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1938, '2019-01-13 19:09:24', '2019-01-13 19:09:24', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1939, '2019-01-13 19:09:35', '2019-01-13 19:09:35', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1940, '2019-01-13 19:09:54', '2019-01-13 19:09:54', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1941, '2019-01-13 19:11:03', '2019-01-13 19:11:03', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1942, '2019-01-13 19:13:48', '2019-01-13 19:13:48', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1943, '2019-01-13 19:13:52', '2019-01-13 19:13:52', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1944, '2019-01-13 19:13:56', '2019-01-13 19:13:56', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/19/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1945, '2019-01-13 19:14:14', '2019-01-13 19:14:14', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1946, '2019-01-13 19:23:26', '2019-01-13 19:23:26', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1947, '2019-01-13 19:23:30', '2019-01-13 19:23:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1948, '2019-01-13 19:23:58', '2019-01-13 19:23:58', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1949, '2019-01-13 19:24:13', '2019-01-13 19:24:13', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1950, '2019-01-13 19:24:38', '2019-01-13 19:24:38', NULL, NULL, '127.0.0.1', '访问', '/adm/role/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1951, '2019-01-13 19:24:43', '2019-01-13 19:24:43', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1952, '2019-01-13 19:26:00', '2019-01-13 19:26:00', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1953, '2019-01-13 19:26:02', '2019-01-13 19:26:02', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1954, '2019-01-13 19:26:04', '2019-01-13 19:26:04', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36');
INSERT INTO `Sys_OperationLog` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `ClientIP`, `OperationDescription`, `OperationUrl`, `UserName`, `ClientInfo`) VALUES
(1955, '2019-01-13 19:26:14', '2019-01-13 19:26:14', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1956, '2019-01-13 19:29:02', '2019-01-13 19:29:02', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1957, '2019-01-13 19:30:15', '2019-01-13 19:30:15', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1958, '2019-01-13 19:30:43', '2019-01-13 19:30:43', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1959, '2019-01-13 19:31:23', '2019-01-13 19:31:23', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1960, '2019-01-13 19:34:26', '2019-01-13 19:34:26', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1961, '2019-01-13 19:34:30', '2019-01-13 19:34:30', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1962, '2019-01-13 19:35:53', '2019-01-13 19:35:53', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1963, '2019-01-13 19:37:54', '2019-01-13 19:37:54', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1964, '2019-01-13 19:37:58', '2019-01-13 19:37:58', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1965, '2019-01-13 19:38:00', '2019-01-13 19:38:00', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1966, '2019-01-13 19:46:07', '2019-01-13 19:46:07', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1967, '2019-01-13 19:46:08', '2019-01-13 19:46:08', NULL, NULL, '127.0.0.1', '访问', '/adm/home/error/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1968, '2019-01-13 19:47:17', '2019-01-13 19:47:17', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1969, '2019-01-13 19:47:21', '2019-01-13 19:47:21', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1970, '2019-01-13 19:47:24', '2019-01-13 19:47:24', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1971, '2019-01-13 19:48:00', '2019-01-13 19:48:00', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1972, '2019-01-13 19:48:11', '2019-01-13 19:48:11', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/20/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1973, '2019-01-13 19:48:23', '2019-01-13 19:48:23', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/19/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1974, '2019-01-13 19:48:37', '2019-01-13 19:48:37', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1975, '2019-01-13 19:49:10', '2019-01-13 19:49:10', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1976, '2019-01-13 19:49:18', '2019-01-13 19:49:18', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1977, '2019-01-13 19:49:32', '2019-01-13 19:49:32', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1978, '2019-01-13 19:50:41', '2019-01-13 19:50:41', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1979, '2019-01-13 19:52:10', '2019-01-13 19:52:10', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1980, '2019-01-13 19:53:19', '2019-01-13 19:53:19', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1981, '2019-01-13 19:56:55', '2019-01-13 19:56:55', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1982, '2019-01-13 19:57:29', '2019-01-13 19:57:29', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1983, '2019-01-13 19:57:41', '2019-01-13 19:57:41', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1984, '2019-01-13 19:58:13', '2019-01-13 19:58:13', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1985, '2019-01-13 21:48:51', '2019-01-13 21:48:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1986, '2019-01-13 21:48:55', '2019-01-13 21:48:55', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1987, '2019-01-13 21:49:06', '2019-01-13 21:49:06', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1988, '2019-01-13 21:50:24', '2019-01-13 21:50:24', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1989, '2019-01-13 21:50:35', '2019-01-13 21:50:35', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/15/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1990, '2019-01-13 21:51:05', '2019-01-13 21:51:05', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1991, '2019-01-13 21:51:12', '2019-01-13 21:51:12', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1992, '2019-01-13 21:51:24', '2019-01-13 21:51:24', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1993, '2019-01-13 21:52:10', '2019-01-13 21:52:10', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/21/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1994, '2019-01-13 21:52:23', '2019-01-13 21:52:23', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1995, '2019-01-13 21:52:41', '2019-01-13 21:52:41', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1996, '2019-01-13 21:54:00', '2019-01-13 21:54:00', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/8/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1997, '2019-01-13 21:54:17', '2019-01-13 21:54:17', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1998, '2019-01-13 22:13:31', '2019-01-13 22:13:31', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(1999, '2019-01-13 22:13:35', '2019-01-13 22:13:35', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2000, '2019-01-13 22:13:36', '2019-01-13 22:13:36', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2001, '2019-01-13 22:13:39', '2019-01-13 22:13:39', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2002, '2019-01-13 22:13:56', '2019-01-13 22:13:56', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2003, '2019-01-13 22:14:01', '2019-01-13 22:14:01', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2004, '2019-01-13 22:14:20', '2019-01-13 22:14:20', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/21/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2005, '2019-01-13 22:14:35', '2019-01-13 22:14:35', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/21/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2006, '2019-01-13 22:15:07', '2019-01-13 22:15:07', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2007, '2019-01-13 22:15:52', '2019-01-13 22:15:52', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/edit/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2008, '2019-01-13 22:16:11', '2019-01-13 22:16:11', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/15/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2009, '2019-01-13 22:16:29', '2019-01-13 22:16:29', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/edit/28/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2010, '2019-01-13 22:16:43', '2019-01-13 22:16:43', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/add/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2011, '2019-01-13 22:17:17', '2019-01-13 22:17:17', NULL, NULL, '127.0.0.1', '访问', '/adm/user/department/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2012, '2019-01-13 22:18:13', '2019-01-13 22:18:13', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2013, '2019-01-13 22:18:17', '2019-01-13 22:18:17', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2014, '2019-01-13 22:18:19', '2019-01-13 22:18:19', NULL, NULL, '127.0.0.1', '访问', '/adm/department/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2015, '2019-01-13 22:18:25', '2019-01-13 22:18:25', NULL, NULL, '127.0.0.1', '访问', '/adm/department/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2016, '2019-01-13 22:26:46', '2019-01-13 22:26:46', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2017, '2019-01-13 22:26:48', '2019-01-13 22:26:48', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2018, '2019-01-13 22:26:51', '2019-01-13 22:26:51', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2019, '2019-01-13 22:26:56', '2019-01-13 22:26:56', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2020, '2019-01-13 22:27:00', '2019-01-13 22:27:00', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2021, '2019-01-13 22:27:15', '2019-01-13 22:27:15', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2022, '2019-01-13 22:27:21', '2019-01-13 22:27:21', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2023, '2019-01-13 22:27:58', '2019-01-13 22:27:58', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2024, '2019-01-13 22:28:25', '2019-01-13 22:28:25', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/19/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2025, '2019-01-13 22:28:34', '2019-01-13 22:28:34', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/edit/20/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2026, '2019-01-13 23:00:45', '2019-01-13 23:00:45', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2027, '2019-01-13 23:00:48', '2019-01-13 23:00:48', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2028, '2019-01-13 23:00:52', '2019-01-13 23:00:52', NULL, NULL, '127.0.0.1', '访问', '/adm/tablelist/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(2029, '2019-01-13 23:01:02', '2019-01-13 23:01:02', NULL, NULL, '127.0.0.1', '访问', '/adm/tablecolumn/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `Sys_Role`
--

CREATE TABLE `Sys_Role` (
  `Id` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `ModifyDateTime` datetime NOT NULL,
  `Creator` int(11) DEFAULT NULL,
  `Modifier` int(11) DEFAULT NULL,
  `Description` varchar(30) NOT NULL,
  `Name` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_Role`
--

INSERT INTO `Sys_Role` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `Description`, `Name`) VALUES
(3, '2018-06-25 13:47:26', '2018-06-25 13:47:26', NULL, NULL, '系统管理员', '系统管理员'),
(4, '2018-06-25 13:47:40', '2018-06-25 13:47:40', NULL, NULL, '大BOSS', '超级管理员'),
(5, '2018-07-16 10:10:58', '2018-07-16 10:10:58', NULL, NULL, '都只能看看', '员工');

-- --------------------------------------------------------

--
-- Table structure for table `Sys_RoleMenu`
--

CREATE TABLE `Sys_RoleMenu` (
  `ModifyDateTime` datetime NOT NULL,
  `Creator` int(11) DEFAULT NULL,
  `Modifier` int(11) DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `CreateDateTime` datetime DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_RoleMenu`
--

INSERT INTO `Sys_RoleMenu` (`ModifyDateTime`, `Creator`, `Modifier`, `Id`, `CreateDateTime`, `menu_id`, `role_id`) VALUES
('2018-07-17 08:28:42', NULL, NULL, 241, NULL, 2033, 3),
('2018-07-17 08:28:42', NULL, NULL, 240, NULL, 57, 3),
('2018-07-17 08:28:42', NULL, NULL, 239, NULL, 21, 3),
('2018-07-17 08:28:42', NULL, NULL, 238, NULL, 20, 3),
('2018-07-17 08:28:42', NULL, NULL, 237, NULL, 55, 3),
('2018-07-17 08:29:02', NULL, NULL, 296, NULL, 2041, 4),
('2018-07-17 08:29:02', NULL, NULL, 295, NULL, 2038, 4),
('2018-07-17 08:29:02', NULL, NULL, 294, NULL, 2037, 4),
('2018-07-17 08:29:02', NULL, NULL, 293, NULL, 2036, 4),
('2018-07-17 08:29:02', NULL, NULL, 292, NULL, 2039, 4),
('2018-07-17 08:29:02', NULL, NULL, 291, NULL, 2033, 4),
('2018-07-17 08:29:02', NULL, NULL, 290, NULL, 57, 4),
('2018-07-17 08:29:02', NULL, NULL, 289, NULL, 2053, 4),
('2018-07-17 08:29:02', NULL, NULL, 288, NULL, 21, 4),
('2018-07-17 08:29:02', NULL, NULL, 287, NULL, 2052, 4),
('2018-07-17 08:29:02', NULL, NULL, 286, NULL, 20, 4),
('2018-07-17 08:29:02', NULL, NULL, 285, NULL, 55, 4),
('2018-07-17 08:29:02', NULL, NULL, 284, NULL, 2031, 4),
('2018-07-17 08:29:02', NULL, NULL, 283, NULL, 2030, 4),
('2018-07-17 08:29:02', NULL, NULL, 282, NULL, 2029, 4),
('2018-07-17 08:29:02', NULL, NULL, 281, NULL, 2028, 4),
('2018-07-17 08:29:02', NULL, NULL, 280, NULL, 2032, 4),
('2018-07-17 08:29:02', NULL, NULL, 279, NULL, 1035, 4),
('2018-07-17 08:29:02', NULL, NULL, 278, NULL, 1034, 4),
('2018-07-17 08:29:02', NULL, NULL, 277, NULL, 1033, 4),
('2018-07-17 08:29:02', NULL, NULL, 276, NULL, 1029, 4),
('2018-07-17 08:29:02', NULL, NULL, 275, NULL, 1032, 4),
('2018-07-17 08:29:02', NULL, NULL, 274, NULL, 1031, 4),
('2018-07-17 08:29:02', NULL, NULL, 273, NULL, 1030, 4),
('2018-07-17 08:29:02', NULL, NULL, 272, NULL, 1028, 4),
('2018-07-17 08:29:02', NULL, NULL, 271, NULL, 1027, 4),
('2018-07-17 08:29:02', NULL, NULL, 270, NULL, 54, 4),
('2018-07-17 08:29:02', NULL, NULL, 269, NULL, 44, 4),
('2018-07-17 08:29:02', NULL, NULL, 268, NULL, 43, 4),
('2018-07-17 08:29:02', NULL, NULL, 267, NULL, 41, 4),
('2018-07-17 08:29:02', NULL, NULL, 266, NULL, 53, 4),
('2018-07-17 08:29:02', NULL, NULL, 265, NULL, 40, 4),
('2018-07-17 08:29:02', NULL, NULL, 264, NULL, 39, 4),
('2018-07-17 08:29:02', NULL, NULL, 263, NULL, 38, 4),
('2018-07-17 08:29:02', NULL, NULL, 262, NULL, 52, 4),
('2018-07-17 08:29:02', NULL, NULL, 261, NULL, 42, 4),
('2018-07-17 08:29:02', NULL, NULL, 260, NULL, 36, 4),
('2018-07-17 08:29:02', NULL, NULL, 259, NULL, 51, 4),
('2018-07-17 08:29:02', NULL, NULL, 258, NULL, 35, 4),
('2018-07-17 08:29:02', NULL, NULL, 257, NULL, 34, 4),
('2018-07-17 08:29:02', NULL, NULL, 256, NULL, 33, 4),
('2018-07-17 08:29:02', NULL, NULL, 255, NULL, 32, 4),
('2018-07-17 08:29:02', NULL, NULL, 254, NULL, 50, 4),
('2018-07-17 08:29:02', NULL, NULL, 253, NULL, 31, 4),
('2018-07-17 08:29:02', NULL, NULL, 252, NULL, 49, 4),
('2018-07-17 08:29:02', NULL, NULL, 251, NULL, 30, 4),
('2018-07-17 08:29:02', NULL, NULL, 250, NULL, 29, 4),
('2018-07-17 08:29:02', NULL, NULL, 249, NULL, 28, 4),
('2018-07-17 08:29:02', NULL, NULL, 248, NULL, 48, 4),
('2018-07-17 08:29:02', NULL, NULL, 247, NULL, 26, 4),
('2018-07-17 08:29:02', NULL, NULL, 246, NULL, 25, 4),
('2018-07-17 08:29:02', NULL, NULL, 245, NULL, 23, 4),
('2018-07-17 08:29:02', NULL, NULL, 244, NULL, 47, 4),
('2018-07-17 08:28:42', NULL, NULL, 236, NULL, 2028, 3),
('2018-07-17 08:28:42', NULL, NULL, 235, NULL, 1029, 3),
('2018-07-17 08:28:42', NULL, NULL, 234, NULL, 1028, 3),
('2018-07-17 08:28:42', NULL, NULL, 233, NULL, 1027, 3),
('2018-07-17 08:28:42', NULL, NULL, 232, NULL, 54, 3),
('2018-07-17 08:28:42', NULL, NULL, 231, NULL, 53, 3),
('2018-07-17 08:28:42', NULL, NULL, 230, NULL, 52, 3),
('2018-07-17 08:28:42', NULL, NULL, 229, NULL, 51, 3),
('2018-07-17 08:28:42', NULL, NULL, 228, NULL, 50, 3),
('2018-07-17 08:28:42', NULL, NULL, 227, NULL, 49, 3),
('2018-07-17 08:28:42', NULL, NULL, 226, NULL, 48, 3),
('2018-07-17 08:28:42', NULL, NULL, 225, NULL, 47, 3),
('2018-07-17 08:28:42', NULL, NULL, 224, NULL, 46, 3),
('2018-09-02 21:15:22', NULL, NULL, 300, NULL, 21, 5),
('2018-09-02 21:15:22', NULL, NULL, 299, NULL, 20, 5),
('2018-07-17 08:29:02', NULL, NULL, 243, NULL, 46, 4),
('2018-07-17 08:28:42', NULL, NULL, 242, NULL, 2042, 3),
('2018-07-17 08:29:02', NULL, NULL, 297, NULL, 2040, 4),
('2018-07-17 08:29:02', NULL, NULL, 298, NULL, 2042, 4),
('2018-09-02 21:15:22', NULL, NULL, 301, NULL, 55, 5),
('2018-09-02 21:15:22', NULL, NULL, 302, NULL, 57, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Sys_SystemOption`
--

CREATE TABLE `Sys_SystemOption` (
  `Id` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `ModifyDateTime` datetime NOT NULL,
  `Creator` int(11) DEFAULT NULL,
  `Modifier` int(11) DEFAULT NULL,
  `Code` varchar(100) DEFAULT NULL,
  `Value` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_SystemOption`
--

INSERT INTO `Sys_SystemOption` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `Code`, `Value`) VALUES
(1, '2018-06-26 09:06:03', '2018-06-26 09:06:03', NULL, NULL, '清理缓存时间', '3day');

-- --------------------------------------------------------

--
-- Table structure for table `Sys_TableColumn`
--

CREATE TABLE `Sys_TableColumn` (
  `Id` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `ModifyDateTime` datetime NOT NULL,
  `Creator` int(11) DEFAULT NULL,
  `Modifier` int(11) DEFAULT NULL,
  `AddVisible` int(11) NOT NULL,
  `DataType` longtext,
  `Description` longtext,
  `EditOrder` int(11) NOT NULL,
  `EditVisible` int(11) NOT NULL,
  `EnumRange` longtext,
  `ExportVisible` int(11) NOT NULL,
  `ImportVisible` int(11) NOT NULL,
  `ListOrder` int(11) NOT NULL,
  `ListVisible` int(11) NOT NULL,
  `MaxLength` int(11) NOT NULL,
  `Name` longtext,
  `OutSql` longtext,
  `PrimarKey` int(11) NOT NULL,
  `Required` int(11) NOT NULL,
  `SearchVisible` int(11) NOT NULL,
  `TableId` int(11) NOT NULL,
  `ViewOrder` int(11) NOT NULL,
  `ViewVisible` int(11) NOT NULL,
  `SelectRange` longtext,
  `ForbiddenFileExtension` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_TableColumn`
--

INSERT INTO `Sys_TableColumn` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `AddVisible`, `DataType`, `Description`, `EditOrder`, `EditVisible`, `EnumRange`, `ExportVisible`, `ImportVisible`, `ListOrder`, `ListVisible`, `MaxLength`, `Name`, `OutSql`, `PrimarKey`, `Required`, `SearchVisible`, `TableId`, `ViewOrder`, `ViewVisible`, `SelectRange`, `ForbiddenFileExtension`) VALUES
(32, '2019-01-13 23:00:59', '2019-01-13 23:00:59', NULL, NULL, 0, 'string', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 'Test3', NULL, 0, 0, 0, 1, 0, 0, NULL, NULL),
(30, '2019-01-13 23:00:59', '2019-01-13 23:00:59', NULL, NULL, 0, 'string', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 'Test1', NULL, 0, 0, 0, 1, 0, 0, NULL, NULL),
(31, '2019-01-13 23:00:59', '2019-01-13 23:00:59', NULL, NULL, 0, 'string', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 'Test2', NULL, 0, 0, 0, 1, 0, 0, NULL, NULL),
(29, '2019-01-13 23:00:59', '2019-01-13 23:00:59', NULL, NULL, 0, 'string', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 'Type', NULL, 0, 0, 0, 1, 0, 0, NULL, NULL),
(27, '2019-01-13 23:00:59', '2019-01-13 23:00:59', NULL, NULL, 0, 'string', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 'Name', NULL, 0, 0, 0, 1, 0, 0, NULL, NULL),
(28, '2019-01-13 23:00:59', '2019-01-13 23:00:59', NULL, NULL, 0, 'int', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 'ParentId', NULL, 0, 0, 0, 1, 0, 0, NULL, NULL),
(25, '2019-01-13 23:00:59', '2019-01-13 23:00:59', NULL, NULL, 0, 'int', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 'Creator', NULL, 0, 0, 0, 1, 0, 0, NULL, NULL),
(26, '2019-01-13 23:00:59', '2019-01-13 23:00:59', NULL, NULL, 0, 'int', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 'Modifier', NULL, 0, 0, 0, 1, 0, 0, NULL, NULL),
(22, '2019-01-13 23:00:59', '2019-01-13 23:00:59', NULL, NULL, 0, 'int', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 'Id', NULL, 0, 0, 0, 1, 0, 0, NULL, NULL),
(23, '2019-01-13 23:00:59', '2019-01-13 23:00:59', NULL, NULL, 0, 'datetime', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 'CreateDateTime', NULL, 0, 0, 0, 1, 0, 0, NULL, NULL),
(24, '2019-01-13 23:00:59', '2019-01-13 23:00:59', NULL, NULL, 0, 'datetime', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 'ModifyDateTime', NULL, 0, 0, 0, 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Sys_TableList`
--

CREATE TABLE `Sys_TableList` (
  `Id` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `ModifyDateTime` datetime NOT NULL,
  `Creator` int(11) DEFAULT NULL,
  `Modifier` int(11) DEFAULT NULL,
  `DefaultFilter` longtext,
  `DefaultSort` longtext,
  `DeleteTableName` longtext,
  `Description` longtext,
  `ExtendFunction` longtext,
  `ForbiddenAddFilter` longtext,
  `ForbiddenDeleteFilter` longtext,
  `ForbiddenUpdateFilter` longtext,
  `ImportType` int(11) NOT NULL,
  `IsView` int(11) NOT NULL,
  `Name` longtext,
  `AllowDelete` int(11) NOT NULL,
  `AllowEdit` int(11) NOT NULL,
  `AllowExport` int(11) NOT NULL,
  `AllowImport` int(11) NOT NULL,
  `AllowView` int(11) NOT NULL,
  `AllowAdd` int(11) NOT NULL,
  `AllowDetail` int(11) NOT NULL,
  `TopExtendFunction` longtext,
  `ColumnPerRow` int(11) NOT NULL,
  `ViewEditWidthHeight` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_TableList`
--

INSERT INTO `Sys_TableList` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `DefaultFilter`, `DefaultSort`, `DeleteTableName`, `Description`, `ExtendFunction`, `ForbiddenAddFilter`, `ForbiddenDeleteFilter`, `ForbiddenUpdateFilter`, `ImportType`, `IsView`, `Name`, `AllowDelete`, `AllowEdit`, `AllowExport`, `AllowImport`, `AllowView`, `AllowAdd`, `AllowDetail`, `TopExtendFunction`, `ColumnPerRow`, `ViewEditWidthHeight`) VALUES
(1, '2018-06-27 14:08:39', '2018-06-27 14:08:39', NULL, NULL, '', 'Id', 'Test_Leader', '领导', '<button type=\"button\">测试</button>', '', '', '', 1, 1, 'Test_Leader', 1, 1, 1, 1, 1, 1, 1, '<button type=\"button\">测试顶部</button>', 2, '200px,150px|1,1');

-- --------------------------------------------------------

--
-- Table structure for table `Sys_UserDepartment`
--

CREATE TABLE `Sys_UserDepartment` (
  `Id` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `ModifyDateTime` datetime NOT NULL,
  `Creator` int(11) DEFAULT NULL,
  `Modifier` int(11) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_UserDepartment`
--

INSERT INTO `Sys_UserDepartment` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `department_id`, `user_id`) VALUES
(12, '2019-01-11 09:31:32', '2019-01-11 09:31:32', NULL, NULL, 1, 1),
(13, '2019-01-11 09:31:34', '2019-01-11 09:31:34', NULL, NULL, 1, 9),
(14, '2019-01-11 09:31:34', '2019-01-11 09:31:34', NULL, NULL, 1, 12),
(15, '2019-01-11 09:32:11', '2019-01-11 09:32:11', NULL, NULL, 2, 1),
(16, '2019-01-11 09:32:11', '2019-01-11 09:32:11', NULL, NULL, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `Sys_UserProfile`
--

CREATE TABLE `Sys_UserProfile` (
  `Id` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `ModifyDateTime` datetime NOT NULL,
  `Creator` int(11) DEFAULT NULL,
  `Modifier` int(11) DEFAULT NULL,
  `Status` smallint(6) NOT NULL,
  `ImagePath` varchar(256) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `PersonName` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_UserProfile`
--

INSERT INTO `Sys_UserProfile` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `Status`, `ImagePath`, `user_id`, `PersonName`) VALUES
(1, '2018-06-27 01:30:29', '2018-06-27 01:30:29', NULL, NULL, 1, NULL, 1, '孤王'),
(6, '2018-09-02 21:18:53', '2018-09-02 21:18:53', NULL, NULL, 1, NULL, 12, '小杰'),
(3, '2018-07-16 12:49:42', '2018-07-16 12:49:42', NULL, NULL, 1, NULL, 9, '王杰');

-- --------------------------------------------------------

--
-- Table structure for table `Sys_UserRole`
--

CREATE TABLE `Sys_UserRole` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_UserRole`
--

INSERT INTO `Sys_UserRole` (`id`, `user_id`, `role_id`) VALUES
(6, 8, 5),
(4, 1, 4),
(7, 9, 3),
(9, 12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Test_Leader`
--

CREATE TABLE `Test_Leader` (
  `Id` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `ModifyDateTime` datetime NOT NULL,
  `Creator` int(11) DEFAULT NULL,
  `Modifier` int(11) DEFAULT NULL,
  `Name` varchar(30) NOT NULL,
  `ParentId` int(11) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Test1` varchar(300) DEFAULT NULL,
  `Test2` varchar(300) DEFAULT NULL,
  `Test3` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Test_Leader`
--

INSERT INTO `Test_Leader` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `Name`, `ParentId`, `Type`, `Test1`, `Test2`, `Test3`) VALUES
(1, '2018-07-04 00:00:00', '2019-01-13 18:45:12', NULL, 1, '王杰', 2, '大领导', '1', '1,2', '/upload/20190113/Debian_Python3.6_20190113161703.sh'),
(2, '2018-07-04 00:00:00', '2019-01-13 18:46:01', NULL, 1, '张杰a', 6, '中领导', '', '', '/upload/20190113/Debian_Python3.6_20190113161026.sh'),
(6, '2018-07-02 17:26:49', '2019-01-13 18:46:01', 1, 1, '小a', 2, '小领导', '3', '1,3', '/upload/20190113/ZZDS_20190113162849.zip'),
(7, '2018-07-07 15:37:27', '2019-01-13 21:54:25', 0, 1, '呜呜呜', 1, '大领导', '', '啊啊啊11', '/upload/20190113/待购买烟丝_20190113164550.png'),
(8, '2018-07-07 15:37:27', '2019-01-13 21:55:16', 0, 1, '不不不', 1, '大领导', '', '大11,中11', ''),
(13, '2018-08-31 22:47:18', '2019-01-13 18:39:01', 1, 1, '222222232222', 1, '中领导', '', '', ''),
(28, '2019-01-13 22:16:23', '2019-01-13 22:16:23', 1, 1, '4', 1, '大领导', '2019-01-11 22:15', 'b,c', '/upload/20190113/Debian_Python3.6_20190113221535.sh');

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
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

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
  ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

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
-- Indexes for table `Sys_Department`
--
ALTER TABLE `Sys_Department`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Sys_LoginLog`
--
ALTER TABLE `Sys_LoginLog`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Sys_Menu`
--
ALTER TABLE `Sys_Menu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Sys_Module`
--
ALTER TABLE `Sys_Module`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Sys_OperationLog`
--
ALTER TABLE `Sys_OperationLog`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Sys_Role`
--
ALTER TABLE `Sys_Role`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Sys_RoleMenu`
--
ALTER TABLE `Sys_RoleMenu`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Sys_RoleMenu_menuid_id_a482a94a` (`menu_id`),
  ADD KEY `Sys_RoleMenu_roleid_id_40e1cc0a` (`role_id`);

--
-- Indexes for table `Sys_SystemOption`
--
ALTER TABLE `Sys_SystemOption`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Sys_TableColumn`
--
ALTER TABLE `Sys_TableColumn`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Sys_TableList`
--
ALTER TABLE `Sys_TableList`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Sys_UserDepartment`
--
ALTER TABLE `Sys_UserDepartment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Sys_UserDepartment_departmentid_id_8dbbca43` (`department_id`),
  ADD KEY `Sys_UserDepartment_userid_id_4c773d50` (`user_id`);

--
-- Indexes for table `Sys_UserProfile`
--
ALTER TABLE `Sys_UserProfile`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `Sys_UserRole`
--
ALTER TABLE `Sys_UserRole`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Sys_UserRole_roleid_id_7a207d8f` (`role_id`),
  ADD KEY `Sys_UserRole_userid_id_a9950f8f` (`user_id`);

--
-- Indexes for table `Test_Leader`
--
ALTER TABLE `Test_Leader`
  ADD PRIMARY KEY (`Id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `Sys_Department`
--
ALTER TABLE `Sys_Department`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `Sys_LoginLog`
--
ALTER TABLE `Sys_LoginLog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `Sys_Menu`
--
ALTER TABLE `Sys_Menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2055;
--
-- AUTO_INCREMENT for table `Sys_Module`
--
ALTER TABLE `Sys_Module`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Sys_OperationLog`
--
ALTER TABLE `Sys_OperationLog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2030;
--
-- AUTO_INCREMENT for table `Sys_Role`
--
ALTER TABLE `Sys_Role`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Sys_RoleMenu`
--
ALTER TABLE `Sys_RoleMenu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;
--
-- AUTO_INCREMENT for table `Sys_SystemOption`
--
ALTER TABLE `Sys_SystemOption`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Sys_TableColumn`
--
ALTER TABLE `Sys_TableColumn`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `Sys_TableList`
--
ALTER TABLE `Sys_TableList`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Sys_UserDepartment`
--
ALTER TABLE `Sys_UserDepartment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `Sys_UserProfile`
--
ALTER TABLE `Sys_UserProfile`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Sys_UserRole`
--
ALTER TABLE `Sys_UserRole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Test_Leader`
--
ALTER TABLE `Test_Leader`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
