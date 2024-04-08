-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 08, 2024 lúc 06:06 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `student_manager`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `ip_client` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `role_id`, `user_id`, `username`, `password`, `status`, `ip_client`, `last_login`, `last_logout`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 4, 'huynx47', '12345', 1, NULL, NULL, NULL, '2024-03-19 08:59:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `slug`, `department_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'HHH', 'hhh', 12, 1, '2024-04-07 18:35:50', '2024-04-08 05:54:26', NULL),
(2, 'TTT', 'ttt', 9, 1, '2024-04-08 02:30:19', '2024-04-08 05:54:34', NULL),
(3, 'SSS', 'sss', 8, 1, '2024-04-08 02:30:50', NULL, NULL),
(4, 'NH huy', 'nh-huy', 7, 1, '2024-04-08 03:24:36', NULL, NULL),
(5, 'cokhi', 'cokhi', 14, 1, '2024-04-08 05:17:14', NULL, NULL),
(6, '', '', 15, 1, '2024-04-08 05:24:18', '2024-04-08 05:24:28', '2024-04-08 05:24:45'),
(7, 'ngôn ngữ java', 'ngon-ngu-java', 9, 1, '2024-04-08 05:37:14', '2024-04-08 05:53:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `leader` varchar(60) NOT NULL,
  `date_beginning` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `logo` varchar(200) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `departments`
--

INSERT INTO `departments` (`id`, `name`, `slug`, `leader`, `date_beginning`, `status`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'NGUYEN XUAN HUY', 'nguyen-xuan-huy', 'Huy', '1970-01-01', 1, '', '2024-03-19 03:00:22', NULL, '2024-03-26 10:35:55'),
(2, 'NGUYEN XUAN HUY', 'nguyen-xuan-huy', 'Huy', '1970-01-01', 1, '', '2024-03-19 03:17:43', NULL, '2024-03-26 10:35:56'),
(3, 'NGUYEN XUAN HUY', 'nguyen-xuan-huy', 'Huy', '1970-01-01', 1, '', '2024-03-25 01:46:01', NULL, '2024-03-26 10:35:57'),
(4, 'NGUYEN XUAn', 'nguyen-xuan', 'huy', '1970-01-01', 1, '0', '2024-03-25 01:52:55', NULL, '2024-03-26 10:35:57'),
(5, 'NGUYEN XUAN HUY', 'nguyen-xuan-huy', 'Huy', '1970-01-01', 0, '0', '2024-03-25 01:53:07', NULL, '2024-03-26 10:35:58'),
(6, 'NGUYEN XUAN HUY', 'nguyen-xuan-huy', 'Huy', '1970-01-01', 0, 'photo.jpg', '2024-03-25 01:54:07', NULL, '2024-03-26 10:35:58'),
(7, 'SE06205', 'se06205', 'Huy', '2024-03-26', 0, 'z5004137488425_d4c9f18e4539e65f893363a940a8e027.jpg', '2024-03-25 01:58:03', '2024-04-08 05:46:23', '2024-04-08 05:53:36'),
(8, 'IT1', 'it1', 'Thanh', '2024-04-08', 1, 'z5004137476289_317cd6e15e1af473964965d3e5f8d3cf.jpg', '2024-03-26 14:05:29', '2024-04-08 02:55:44', '2024-04-08 05:53:35'),
(9, 'QTKD', 'qtkd', 'Tuan', '1970-01-22', 1, 'photo.jpg', '2024-03-26 14:06:09', '2024-04-01 05:57:55', NULL),
(10, 'aaa', 'aaa', 'aaaa', '2024-04-01', 1, 'photo.jpg', '2024-04-01 06:30:25', NULL, '2024-04-08 05:53:41'),
(11, 'LG', 'lg', 'Thanh', '2024-04-05', 1, 'photo.jpg', '2024-04-08 02:38:59', '2024-04-08 02:49:34', '2024-04-08 05:53:38'),
(12, 'Cong nghe thong tin', 'cong-nghe-thong-tin', 'Huy', '2024-04-08', 1, 'photo.jpg', '2024-04-08 02:48:11', '2024-04-08 05:54:14', NULL),
(13, '2illy47', '2illy47', 'Tuan', '2024-04-07', 1, 'z5004137488425_d4c9f18e4539e65f893363a940a8e027.jpg', '2024-04-08 03:33:34', NULL, '2024-04-08 05:53:34'),
(14, 'HE', 'he', 'Thanh', '2024-04-25', 1, 'z5004137488425_d4c9f18e4539e65f893363a940a8e027.jpg', '2024-04-08 05:16:34', '2024-04-08 05:16:56', '2024-04-08 05:53:40'),
(15, 't', 't', 'Thanh', '2024-04-12', 1, 'z5004138136555_856bfb3be1dfac39c8ae40ddb8eb3482.jpg', '2024-04-08 05:22:51', '2024-04-08 05:23:54', '2024-04-08 05:53:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `student_numbers` int(10) UNSIGNED NOT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  `captain` varchar(60) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_student`
--

CREATE TABLE `group_student` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `absent` tinyint(4) NOT NULL DEFAULT 1,
  `present` tinyint(4) NOT NULL DEFAULT 0,
  `learning_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `slug` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', 'admin', 1, '2024-03-19 08:57:15', NULL, NULL),
(2, 'student', 'student', 'student', 1, '2024-03-19 08:57:55', NULL, NULL),
(3, 'teacher', 'teacher', 'teacher', 1, '2024-03-19 08:58:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `term`
--

CREATE TABLE `term` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `year` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `extra_code` varchar(100) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `birthday` date NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(200) DEFAULT NULL,
  `information` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `extra_code`, `role_id`, `first_name`, `last_name`, `full_name`, `email`, `phone`, `address`, `birthday`, `gender`, `avatar`, `information`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'BH00945', 2, 'Xuan Huyy', ' Nguyen', 'Nguyen Xuan Huyy', 'huynxbh00944@fpt.edu.vn', '0338008816', 'Ha Noi', '2004-07-04', 1, NULL, NULL, 1, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Chỉ mục cho bảng `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Chỉ mục cho bảng `group_student`
--
ALTER TABLE `group_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `group_student`
--
ALTER TABLE `group_student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `term`
--
ALTER TABLE `term`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`term_id`) REFERENCES `term` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `group_student`
--
ALTER TABLE `group_student`
  ADD CONSTRAINT `group_student_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_student_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_student_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_student_ibfk_4` FOREIGN KEY (`teacher_id`) REFERENCES `accounts` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
