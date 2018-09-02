-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 02, 2018 at 09:27 PM
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
(1, 'pbkdf2_sha256$36000$rRRFPJvo98aG$5ahjAT8aQvzeWzTjxn4bpUIkiBsse5HDC/qyDBjB5Yk=', '2018-09-02 21:26:18', 1, 'sa', '管理员', '超级', 'sa@sa.com', 1, 1, '2018-06-09 10:00:16'),
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
(26, 'kingWeb', '0013_auto_20180901_1652', '2018-09-01 16:52:53');

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
('2w2gtv0xue71nkb9nab4w0ubzwozmfud', 'YTUxODc1ZDkxY2JiOTUzOTBiNGFmOTNlNGM0NTIzN2VjYjU3YTg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTU1NDI3MGQwNzQwNTcyYWVlNmM0NTkxYjE3ZDdjMmZiOGI3OTg5In0=', '2018-09-16 21:26:18');

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
(5, '2018-06-19 11:21:40', '2018-06-19 11:21:40', NULL, NULL, '阿斯顿', '阿斯顿', 'test啊啊', 2),
(11, '2018-06-19 11:37:41', '2018-06-19 11:37:41', NULL, NULL, 'asdsad', 'asdasd', 'asdsad', 5);

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
  `ClientInfo` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_LoginLog`
--

INSERT INTO `Sys_LoginLog` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `ClientIP`, `UserName`, `Description`, `ClientInfo`) VALUES
(8, '2018-08-27 16:03:02', '2018-08-27 16:03:02', NULL, NULL, '127.0.0.1', 'admin', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(9, '2018-08-27 16:12:49', '2018-08-27 16:12:49', NULL, NULL, '127.0.0.1', 'sa', '登陆失败', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(10, '2018-08-27 16:12:55', '2018-08-27 16:12:55', NULL, NULL, '127.0.0.1', 'sa', '登陆失败', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(11, '2018-08-27 16:12:59', '2018-08-27 16:12:59', NULL, NULL, '127.0.0.1', 'sa', '登陆失败', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(12, '2018-08-27 16:13:10', '2018-08-27 16:13:10', NULL, NULL, '127.0.0.1', 'sa', '登陆失败', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(13, '2018-08-27 16:13:15', '2018-08-27 16:13:15', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(14, '2018-08-27 16:13:25', '2018-08-27 16:13:25', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(15, '2018-08-27 16:21:34', '2018-08-27 16:21:34', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(16, '2018-08-31 21:33:42', '2018-08-31 21:33:42', NULL, NULL, '127.0.0.1', 'sa', '登陆失败', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(17, '2018-08-31 21:33:42', '2018-08-31 21:33:42', NULL, NULL, '127.0.0.1', 'sa', '登陆失败', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(18, '2018-08-31 21:33:45', '2018-08-31 21:33:45', NULL, NULL, '127.0.0.1', 'sa', '登陆失败', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(19, '2018-08-31 21:33:48', '2018-08-31 21:33:48', NULL, NULL, '127.0.0.1', 'sa', '登陆失败', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(20, '2018-08-31 21:33:53', '2018-08-31 21:33:53', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(21, '2018-08-31 21:40:13', '2018-08-31 21:40:13', NULL, NULL, '127.0.0.1', 'admin', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(22, '2018-08-31 21:43:42', '2018-08-31 21:43:42', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(23, '2018-08-31 23:33:06', '2018-08-31 23:33:06', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(24, '2018-08-31 23:50:08', '2018-08-31 23:50:08', NULL, NULL, '127.0.0.1', 'sa', '登陆失败', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(25, '2018-08-31 23:54:57', '2018-08-31 23:54:57', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(26, '2018-08-31 23:55:33', '2018-08-31 23:55:33', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(27, '2018-08-31 23:57:34', '2018-08-31 23:57:34', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(28, '2018-08-31 23:58:33', '2018-08-31 23:58:33', NULL, NULL, '127.0.0.1', 'admin', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(29, '2018-08-31 23:58:42', '2018-08-31 23:58:42', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(30, '2018-09-01 10:37:50', '2018-09-01 10:37:50', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(31, '2018-09-01 13:30:41', '2018-09-01 13:30:41', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(32, '2018-09-02 16:59:39', '2018-09-02 16:59:39', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(33, '2018-09-02 21:25:54', '2018-09-02 21:25:54', NULL, NULL, '127.0.0.1', 'employee', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(34, '2018-09-02 21:26:18', '2018-09-02 21:26:18', NULL, NULL, '127.0.0.1', 'sa', '登陆成功', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36');

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
(1161, '2018-09-02 21:26:24', '2018-09-02 21:26:24', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36');

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
  `ViewVisible` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_TableColumn`
--

INSERT INTO `Sys_TableColumn` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `AddVisible`, `DataType`, `Description`, `EditOrder`, `EditVisible`, `EnumRange`, `ExportVisible`, `ImportVisible`, `ListOrder`, `ListVisible`, `MaxLength`, `Name`, `OutSql`, `PrimarKey`, `Required`, `SearchVisible`, `TableId`, `ViewOrder`, `ViewVisible`) VALUES
(15, '2018-06-29 12:28:04', '2018-06-29 12:28:04', NULL, NULL, 1, 'out', '上级领导', 0, 1, '', 1, 1, 0, 1, 0, 'ParentId', 'Id,Name|Test_Leader|Id>0', 0, 0, 0, 1, 0, 1),
(16, '2018-06-29 12:28:04', '2018-06-29 12:28:04', NULL, NULL, 1, 'enum', '类型', 0, 1, '大领导,中领导,小领导', 1, 1, 2, 1, 0, 'Type', 'None\r\n\r\n\r\n', 0, 0, 1, 1, 0, 1),
(14, '2018-06-29 12:28:04', '2018-06-29 12:28:04', NULL, NULL, 1, 'varchar(30)', '领导名称', 0, 1, 'None', 1, 1, 1, 1, 30, 'Name', 'None\r\n\r\n\r\n\r\n', 1, 0, 1, 1, 0, 1),
(13, '2018-06-29 12:28:04', '2018-06-29 12:28:04', NULL, NULL, 0, 'int(11)', NULL, 0, 0, NULL, 1, 0, 0, 0, 0, 'Modifier', NULL, 0, 0, 0, 1, 0, 1),
(12, '2018-06-29 12:28:04', '2018-06-29 12:28:04', NULL, NULL, 0, 'int(11)', NULL, 0, 0, NULL, 1, 0, 0, 0, 0, 'Creator', NULL, 0, 0, 0, 1, 0, 1),
(11, '2018-06-29 12:28:04', '2018-06-29 12:28:04', NULL, NULL, 0, 'datetime', '修改日期', 0, 0, 'None', 1, 0, 0, 0, 0, 'ModifyDateTime', 'None\r\n\r\n', 0, 0, 0, 1, 0, 1),
(10, '2018-06-29 12:28:02', '2018-06-29 12:28:02', NULL, NULL, 0, 'datetime', '创建日期', 0, 0, 'None', 1, 0, 0, 1, 0, 'CreateDateTime', 'None\r\n\r\n', 0, 0, 0, 1, 0, 1),
(17, '2018-06-29 12:28:04', '2018-06-29 12:28:04', NULL, NULL, 0, 'int(11)', '编号', 0, 0, 'None', 1, 0, 0, 1, 0, 'Id', 'None\r\n\r\n', 1, 0, 0, 1, 0, 1);

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
  `AllowAdd` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_TableList`
--

INSERT INTO `Sys_TableList` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `DefaultFilter`, `DefaultSort`, `DeleteTableName`, `Description`, `ExtendFunction`, `ForbiddenAddFilter`, `ForbiddenDeleteFilter`, `ForbiddenUpdateFilter`, `ImportType`, `IsView`, `Name`, `AllowDelete`, `AllowEdit`, `AllowExport`, `AllowImport`, `AllowView`, `AllowAdd`) VALUES
(1, '2018-06-27 14:08:39', '2018-06-27 14:08:39', NULL, NULL, '', 'Id', 'Test_Leader', '领导', '<button type=\"button\">测试</button>', '', '', '', 1, 1, 'Test_Leader', 1, 1, 1, 1, 1, 1);

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
(3, '2018-06-27 12:48:45', '2018-06-27 12:48:45', NULL, NULL, 11, 8);

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
  `Type` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Test_Leader`
--

INSERT INTO `Test_Leader` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `Name`, `ParentId`, `Type`) VALUES
(1, '2018-07-04 00:00:00', '2018-07-05 00:00:00', NULL, NULL, '王杰', 0, '大领导'),
(2, '2018-07-04 00:00:00', '2018-07-02 17:26:12', NULL, 1, '张杰a', 1, '中领导'),
(6, '2018-07-02 17:26:49', '2018-07-02 17:26:49', 1, 1, '小a', 2, '小领导'),
(7, '2018-07-07 15:37:27', '2018-07-16 21:02:13', 0, 0, '呜呜呜', 1, '大领导'),
(8, '2018-07-07 15:37:27', '2018-07-16 21:02:13', 0, 0, '不不不', 1, '大领导'),
(13, '2018-08-31 22:47:18', '2018-08-31 22:47:31', 1, 1, '222222232222', 1, '中领导');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `Sys_Department`
--
ALTER TABLE `Sys_Department`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `Sys_LoginLog`
--
ALTER TABLE `Sys_LoginLog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1162;
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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Sys_TableList`
--
ALTER TABLE `Sys_TableList`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Sys_UserDepartment`
--
ALTER TABLE `Sys_UserDepartment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
