-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 27, 2018 at 11:00 PM
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
(1, 'pbkdf2_sha256$36000$bMVmDMrTaki0$TuZso3+XaPKJ0ISiVHqgdZeI9rEarUMRsGD0ybFezsg=', '2018-07-17 08:21:47', 1, 'sa', '管理员', '超级', 'sa@sa.com', 1, 1, '2018-06-09 10:00:16'),
(9, 'pbkdf2_sha256$36000$znY9r2HtnMMI$9JE94KVCfcPxZLdsbn+upSbO8JxMkYMmBY/fOIuqI0U=', '2018-07-16 14:46:46', 0, 'admin', '杰', '张', 'admin@admin.com', 0, 1, '2018-07-16 12:49:42'),
(8, 'pbkdf2_sha256$36000$HRaAH6FG7DOW$EQqrzh2adaAZrvFRG+DzLLIAqmNzeOz9XHQzbo/7oeo=', '2018-07-17 08:21:38', 0, 'test', '杰', '王', 'asd@123.com', 0, 1, '2018-06-27 08:28:16');

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
(21, 'kingWeb', '0008_auto_20180716_2236', '2018-07-16 14:36:48');

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
('2rxonm7ywucr9swrxavz00ljpjvntyw7', 'YzQ2ZmQwNDAwOGJmZDVmOWI0ZGM4MDI5NmRmNjQyNDcyN2I3NzgyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWNkYjFlMDlkYWFiMWY2NzJkNWFiMTA4YWNlMGIxNGQ4ZGVkNzU0In0=', '2018-07-31 08:21:47');

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
  `ParentId` int(11) NOT NULL
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
  `ParentId` int(11) NOT NULL,
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
(348, '2018-07-17 08:22:11', '2018-07-17 08:22:11', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_operation_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(349, '2018-07-17 08:22:21', '2018-07-17 08:22:21', NULL, NULL, '127.0.0.1', '访问', '/adm/log/login/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(350, '2018-07-17 08:22:22', '2018-07-17 08:22:22', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_login_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(351, '2018-07-17 08:22:32', '2018-07-17 08:22:32', NULL, NULL, '127.0.0.1', '访问', '/jobs/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(352, '2018-07-17 08:22:38', '2018-07-17 08:22:38', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(353, '2018-07-17 08:22:41', '2018-07-17 08:22:41', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(354, '2018-07-17 08:22:42', '2018-07-17 08:22:42', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_page_data/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(355, '2018-07-17 08:23:17', '2018-07-17 08:23:17', NULL, NULL, '127.0.0.1', '访问', '/jobs/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(356, '2018-07-17 08:23:21', '2018-07-17 08:23:21', NULL, NULL, '127.0.0.1', '访问', '/adm/home/notfound/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(357, '2018-07-17 08:23:24', '2018-07-17 08:23:24', NULL, NULL, '127.0.0.1', '访问', '/adm/user/modifyinfo/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(358, '2018-07-17 08:23:28', '2018-07-17 08:23:28', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(359, '2018-07-17 08:23:29', '2018-07-17 08:23:29', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_page_data/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(360, '2018-07-17 08:23:31', '2018-07-17 08:23:31', NULL, NULL, '127.0.0.1', '访问', '/adm/module/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(361, '2018-07-17 08:23:32', '2018-07-17 08:23:32', NULL, NULL, '127.0.0.1', '访问', '/adm/module/get_page_data/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(362, '2018-07-17 08:23:40', '2018-07-17 08:23:40', NULL, NULL, '127.0.0.1', '访问', '/adm/control/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(363, '2018-07-17 08:23:41', '2018-07-17 08:23:41', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(364, '2018-07-17 08:23:51', '2018-07-17 08:23:51', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(365, '2018-07-17 08:23:53', '2018-07-17 08:23:53', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_page_data/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(366, '2018-07-17 08:23:57', '2018-07-17 08:23:57', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_page_data/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(367, '2018-07-17 08:24:04', '2018-07-17 08:24:04', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/edit/2039/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(368, '2018-07-17 08:24:28', '2018-07-17 08:24:28', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/post_edit/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(369, '2018-07-17 08:24:30', '2018-07-17 08:24:30', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(370, '2018-07-17 08:24:31', '2018-07-17 08:24:31', NULL, NULL, '127.0.0.1', '访问', '/adm/control/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(371, '2018-07-17 08:24:31', '2018-07-17 08:24:31', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_page_data/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(372, '2018-07-17 08:24:32', '2018-07-17 08:24:32', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(373, '2018-07-17 08:24:39', '2018-07-17 08:24:39', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/index/1/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(374, '2018-07-17 08:24:41', '2018-07-17 08:24:41', NULL, NULL, '127.0.0.1', '访问', '/adm/viewlist/get_page_data/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(375, '2018-07-17 08:24:59', '2018-07-17 08:24:59', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(376, '2018-07-17 08:25:00', '2018-07-17 08:25:00', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_page_data/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(377, '2018-07-17 08:25:01', '2018-07-17 08:25:01', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(378, '2018-07-17 08:25:04', '2018-07-17 08:25:04', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(379, '2018-07-17 08:25:06', '2018-07-17 08:25:06', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(380, '2018-07-17 08:25:08', '2018-07-17 08:25:08', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?%E7%99%BB%E9%99%86%E6%97%A5%E5%BF%97', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(381, '2018-07-17 08:25:15', '2018-07-17 08:25:15', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/?%E7%99%BB%E9%99%86%E6%97%A5', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(382, '2018-07-17 08:25:53', '2018-07-17 08:25:53', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/post_add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(383, '2018-07-17 08:25:54', '2018-07-17 08:25:54', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(384, '2018-07-17 08:25:56', '2018-07-17 08:25:56', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_page_data/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(385, '2018-07-17 08:25:57', '2018-07-17 08:25:57', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(386, '2018-07-17 08:25:58', '2018-07-17 08:25:58', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(387, '2018-07-17 08:26:17', '2018-07-17 08:26:17', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/post_add/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(388, '2018-07-17 08:26:19', '2018-07-17 08:26:19', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(389, '2018-07-17 08:26:20', '2018-07-17 08:26:20', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_page_data/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(390, '2018-07-17 08:26:51', '2018-07-17 08:26:51', NULL, NULL, '127.0.0.1', '访问', '/adm/menu/get_page_data/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(391, '2018-07-17 08:27:12', '2018-07-17 08:27:12', NULL, NULL, '127.0.0.1', '访问', '/adm/log/operation/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(392, '2018-07-17 08:27:13', '2018-07-17 08:27:13', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_operation_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(393, '2018-07-17 08:27:13', '2018-07-17 08:27:13', NULL, NULL, '127.0.0.1', '访问', '/adm/log/login/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(394, '2018-07-17 08:27:14', '2018-07-17 08:27:14', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_login_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(395, '2018-07-17 08:27:16', '2018-07-17 08:27:16', NULL, NULL, '127.0.0.1', '访问', '/adm/log/clear_login/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(396, '2018-07-17 08:27:17', '2018-07-17 08:27:17', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_login_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(397, '2018-07-17 08:27:57', '2018-07-17 08:27:57', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(398, '2018-07-17 08:27:59', '2018-07-17 08:27:59', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(399, '2018-07-17 08:28:01', '2018-07-17 08:28:01', NULL, NULL, '127.0.0.1', '访问', '/adm/log/chart/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(400, '2018-07-17 08:28:02', '2018-07-17 08:28:02', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_week/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(401, '2018-07-17 08:28:02', '2018-07-17 08:28:02', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_day/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(402, '2018-07-17 08:28:02', '2018-07-17 08:28:02', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_month/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(403, '2018-07-17 08:28:02', '2018-07-17 08:28:02', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_chart_by_year/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(404, '2018-07-17 08:28:06', '2018-07-17 08:28:06', NULL, NULL, '127.0.0.1', '访问', '/adm/log/login/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(405, '2018-07-17 08:28:06', '2018-07-17 08:28:06', NULL, NULL, '127.0.0.1', '访问', '/adm/log/get_login_log/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(406, '2018-07-17 08:28:08', '2018-07-17 08:28:08', NULL, NULL, '127.0.0.1', '访问', '/adm/log/clear_login/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(407, '2018-07-17 08:28:13', '2018-07-17 08:28:13', NULL, NULL, '127.0.0.1', '访问', '/adm/role/authen/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(408, '2018-07-17 08:28:14', '2018-07-17 08:28:14', NULL, NULL, '127.0.0.1', '访问', '/adm/role/get_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(409, '2018-07-17 08:28:15', '2018-07-17 08:28:15', NULL, NULL, '127.0.0.1', '访问', '/adm/role/get_menu_list/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(410, '2018-07-17 08:28:18', '2018-07-17 08:28:18', NULL, NULL, '127.0.0.1', '访问', '/adm/role/get_role_menus/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(411, '2018-07-17 08:28:42', '2018-07-17 08:28:42', NULL, NULL, '127.0.0.1', '访问', '/adm/role/auth_menus/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(412, '2018-07-17 08:28:51', '2018-07-17 08:28:51', NULL, NULL, '127.0.0.1', '访问', '/adm/role/get_role_menus/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(413, '2018-07-17 08:29:01', '2018-07-17 08:29:01', NULL, NULL, '127.0.0.1', '访问', '/adm/role/auth_menus/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(414, '2018-07-17 08:29:06', '2018-07-17 08:29:06', NULL, NULL, '127.0.0.1', '访问', '/adm/role/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(415, '2018-07-17 08:29:07', '2018-07-17 08:29:07', NULL, NULL, '127.0.0.1', '访问', '/adm/role/get_page_data/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(416, '2018-07-17 08:30:46', '2018-07-17 08:30:46', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(417, '2018-07-17 08:30:48', '2018-07-17 08:30:48', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(418, '2018-07-17 08:31:06', '2018-07-17 08:31:06', NULL, NULL, '127.0.0.1', '访问', '/adm/control/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(419, '2018-07-17 08:31:07', '2018-07-17 08:31:07', NULL, NULL, '127.0.0.1', '访问', '/adm/control/welcome/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(420, '2018-07-17 08:31:10', '2018-07-17 08:31:10', NULL, NULL, '127.0.0.1', '访问', '/adm/user/modifyinfo/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(421, '2018-07-17 08:31:11', '2018-07-17 08:31:11', NULL, NULL, '127.0.0.1', '访问', '/adm/systemoption/index/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(422, '2018-07-17 08:31:12', '2018-07-17 08:31:12', NULL, NULL, '127.0.0.1', '访问', '/adm/systemoption/get_page_data/', 'sa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36');

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
  `MenuId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_RoleMenu`
--

INSERT INTO `Sys_RoleMenu` (`ModifyDateTime`, `Creator`, `Modifier`, `Id`, `CreateDateTime`, `MenuId`, `RoleId`) VALUES
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
('2018-07-16 13:38:21', NULL, NULL, 151, NULL, 47, 5),
('2018-07-16 13:38:21', NULL, NULL, 150, NULL, 46, 5),
('2018-07-17 08:29:02', NULL, NULL, 243, NULL, 46, 4),
('2018-07-17 08:28:42', NULL, NULL, 242, NULL, 2042, 3),
('2018-07-17 08:29:02', NULL, NULL, 297, NULL, 2040, 4),
('2018-07-17 08:29:02', NULL, NULL, 298, NULL, 2042, 4);

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
(16, '2018-06-29 12:28:04', '2018-06-29 12:28:04', NULL, NULL, 1, 'enum', '类型', 0, 1, '大领导,中领导,小领导', 1, 1, 0, 1, 0, 'Type', 'None\r\n\r\n\r\n', 0, 0, 1, 1, 0, 1),
(14, '2018-06-29 12:28:04', '2018-06-29 12:28:04', NULL, NULL, 1, 'varchar(30)', '领导名称', 0, 1, 'None', 1, 1, 0, 1, 30, 'Name', 'None\r\n\r\n\r\n\r\n', 1, 0, 1, 1, 0, 1),
(13, '2018-06-29 12:28:04', '2018-06-29 12:28:04', NULL, NULL, 0, 'int(11)', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 'Modifier', NULL, 0, 0, 0, 1, 0, 1),
(12, '2018-06-29 12:28:04', '2018-06-29 12:28:04', NULL, NULL, 0, 'int(11)', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, 'Creator', NULL, 0, 0, 0, 1, 0, 1),
(11, '2018-06-29 12:28:04', '2018-06-29 12:28:04', NULL, NULL, 0, 'datetime', '修改日期', 0, 0, 'None', 0, 0, 0, 0, 0, 'ModifyDateTime', 'None\r\n\r\n', 0, 0, 0, 1, 0, 1),
(10, '2018-06-29 12:28:02', '2018-06-29 12:28:02', NULL, NULL, 0, 'datetime', '创建日期', 0, 0, 'None', 0, 0, 0, 1, 0, 'CreateDateTime', 'None\r\n\r\n', 0, 0, 0, 1, 0, 1),
(17, '2018-06-29 12:28:04', '2018-06-29 12:28:04', NULL, NULL, 0, 'int(11)', '编号', 0, 0, 'None', 0, 0, 0, 1, 0, 'Id', 'None\r\n\r\n', 1, 0, 0, 1, 0, 1);

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
(1, '2018-06-27 14:08:39', '2018-06-27 14:08:39', NULL, NULL, 'Id > 0', 'Id', 'Test_Leader', '领导', '<button type=\"button\">测试</button>', '', '', '', 1, 1, 'Test_Leader', 1, 1, 1, 1, 1, 1),
(3, '2018-06-27 14:08:39', '2018-06-27 14:08:39', NULL, NULL, '3', '5', '123', '123', '111', '6', '7', '4', 0, 8, 'test', 1, 1, 1, 1, 1, 1);

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
  `DepartmentId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_UserDepartment`
--

INSERT INTO `Sys_UserDepartment` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `DepartmentId`, `UserId`) VALUES
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
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_UserProfile`
--

INSERT INTO `Sys_UserProfile` (`Id`, `CreateDateTime`, `ModifyDateTime`, `Creator`, `Modifier`, `Status`, `ImagePath`, `user_id`) VALUES
(1, '2018-06-27 01:30:29', '2018-06-27 01:30:29', NULL, NULL, 1, NULL, 1),
(2, '2018-06-27 08:28:16', '2018-06-27 08:28:16', NULL, NULL, 1, NULL, 8),
(3, '2018-07-16 12:49:42', '2018-07-16 12:49:42', NULL, NULL, 1, NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `Sys_UserRole`
--

CREATE TABLE `Sys_UserRole` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sys_UserRole`
--

INSERT INTO `Sys_UserRole` (`id`, `UserId`, `RoleId`) VALUES
(6, 8, 5),
(4, 1, 4),
(7, 9, 3);

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
(8, '2018-07-07 15:37:27', '2018-07-16 21:02:13', 0, 0, '不不不', 1, '大领导');

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
  ADD PRIMARY KEY (`Id`);

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
  ADD PRIMARY KEY (`Id`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `Sys_Department`
--
ALTER TABLE `Sys_Department`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `Sys_LoginLog`
--
ALTER TABLE `Sys_LoginLog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Sys_Menu`
--
ALTER TABLE `Sys_Menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2054;
--
-- AUTO_INCREMENT for table `Sys_Module`
--
ALTER TABLE `Sys_Module`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Sys_OperationLog`
--
ALTER TABLE `Sys_OperationLog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;
--
-- AUTO_INCREMENT for table `Sys_Role`
--
ALTER TABLE `Sys_Role`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Sys_RoleMenu`
--
ALTER TABLE `Sys_RoleMenu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;
--
-- AUTO_INCREMENT for table `Sys_SystemOption`
--
ALTER TABLE `Sys_SystemOption`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Sys_TableColumn`
--
ALTER TABLE `Sys_TableColumn`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `Sys_TableList`
--
ALTER TABLE `Sys_TableList`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Sys_UserDepartment`
--
ALTER TABLE `Sys_UserDepartment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Sys_UserProfile`
--
ALTER TABLE `Sys_UserProfile`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Sys_UserRole`
--
ALTER TABLE `Sys_UserRole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Test_Leader`
--
ALTER TABLE `Test_Leader`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
