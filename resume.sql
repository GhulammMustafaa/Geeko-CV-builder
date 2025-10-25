-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2025 at 08:22 AM
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
-- Database: `resume`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `achievement_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `resume_id`, `achievement_description`, `created_at`) VALUES
(41, 162, 'jjhkjlkj', '2025-08-26 16:09:05'),
(42, 162, 'jjhkjlkj', '2025-08-26 16:09:05'),
(43, 163, 'jjhkjlkj', '2025-08-26 21:27:31'),
(44, 164, 'jjhkjlkj', '2025-08-26 22:28:18'),
(45, 164, 'jjhkjlkj', '2025-08-26 22:28:18'),
(46, 165, 'xdvcx', '2025-08-26 22:34:25'),
(47, 165, 'jjhkjlkj', '2025-08-26 22:34:25'),
(48, 166, 'jjhkjlkj', '2025-08-26 23:34:35'),
(49, 166, 'xdvcx', '2025-08-26 23:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `education_type` enum('school','college','university','diploma') NOT NULL,
  `institution_name` varchar(255) NOT NULL,
  `degree_program` varchar(255) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `resume_id`, `education_type`, `institution_name`, `degree_program`, `duration`, `created_at`) VALUES
(370, 159, 'school', 'kjhgf', NULL, '2021-2023', '2025-08-25 06:17:04'),
(371, 159, 'university', 'Karachi University', '', '2026-2030', '2025-08-25 06:17:04'),
(372, 160, 'school', 'kjhgf', NULL, '2021-2023', '2025-08-25 15:27:22'),
(373, 161, 'school', 'kjhgf', NULL, '2021-2023', '2025-08-26 14:44:28'),
(374, 162, 'school', 'kjhgf', NULL, '2021-2023', '2025-08-26 16:09:04'),
(375, 162, 'university', 'Karachi University', 'Computer Science', '2026-2030', '2025-08-26 16:09:04'),
(376, 162, 'college', 'Government', 'Medical', '2023-2025', '2025-08-26 16:09:04'),
(377, 162, 'diploma', 'Aptech', 'Software Engineering', '2024-2028', '2025-08-26 16:09:04'),
(378, 162, 'diploma', 'jslkHF', 'Software Engineering', '025', '2025-08-26 16:09:04'),
(379, 163, 'school', 'kjhgf', NULL, '2021-2023', '2025-08-26 21:27:31'),
(380, 163, 'university', 'Karachi University', 'Computer Science', '2026-2030', '2025-08-26 21:27:31'),
(381, 163, 'college', 'Government', 'Medical', '2023-2025', '2025-08-26 21:27:31'),
(382, 163, 'diploma', 'Aptech', 'Software Engineering', '2024-2028', '2025-08-26 21:27:31'),
(383, 164, 'school', 'kjhgf', NULL, '2021-2023', '2025-08-26 22:28:18'),
(384, 164, 'university', 'Karachi University', 'Computer Science', '2026-2030', '2025-08-26 22:28:18'),
(385, 164, 'college', 'Government', 'Medical', '2023-2025', '2025-08-26 22:28:18'),
(386, 164, 'diploma', 'Aptech', 'Software Engineering', '2024-2028', '2025-08-26 22:28:18'),
(387, 165, 'school', 'kjhgf', NULL, '2021-2023', '2025-08-26 22:34:25'),
(388, 166, 'school', 'kjhgf', NULL, '2021-2023', '2025-08-26 23:34:35'),
(389, 166, 'university', 'Karachi University', 'Computer Science', '2026-2030', '2025-08-26 23:34:35'),
(390, 166, 'college', 'Government', 'Medical', '2023-2025', '2025-08-26 23:34:35'),
(391, 166, 'diploma', 'Aptech', 'Software Engineering', '2024-2028', '2025-08-26 23:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `job_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `resume_id`, `job_title`, `company_name`, `duration`, `job_description`, `created_at`) VALUES
(88, 162, 'PHP developer', 'hjgfgd', '2025', 'hghmfgdsdg', '2025-08-26 16:09:04'),
(89, 166, 'PHP developer', 'hjgfgd', '2025', '', '2025-08-26 23:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `template` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `resume_id`, `template`, `created_at`) VALUES
(101, 160, 'template1', '2025-08-25 15:27:38'),
(102, 160, 'template5', '2025-08-26 14:43:42'),
(108, 165, 'template3', '2025-08-26 22:34:54'),
(110, 166, 'template1', '2025-08-26 23:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `language_name` varchar(100) NOT NULL,
  `proficiency_level` enum('beginner','intermediate','advanced','native') DEFAULT 'intermediate',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `resume_id`, `language_name`, `proficiency_level`, `created_at`) VALUES
(117, 162, 'Spanish', 'intermediate', '2025-08-26 16:09:04'),
(118, 162, 'English', 'native', '2025-08-26 16:09:04'),
(119, 163, 'Spanish', 'beginner', '2025-08-26 21:27:31'),
(120, 164, 'Spanish', 'intermediate', '2025-08-26 22:28:18'),
(121, 165, 'English', 'intermediate', '2025-08-26 22:34:25'),
(122, 166, 'Spanish', 'intermediate', '2025-08-26 23:34:35'),
(123, 166, 'English', 'native', '2025-08-26 23:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`) VALUES
(5, 'Ayesha', 'ayeshabideen9@gmail.com', 'Ayesha09'),
(6, 'Muhib', 'muhibkhan2299@gmail.com', 'Muhib'),
(7, 'admin', 'admin@gmail.com', 'admin'),
(9, 'Ayesha', 'ayeshabideen09@gmail.com', 'ayesha'),
(10, 'Ayesha', 'ayeshabideen009@gmail.com', 'aaa...'),
(11, 'admin', 'abdullah@gmail.com', 'aaa'),
(12, 'xyz', 'aneesha123@gmail.com', 'xyz'),
(14, 'xyz', 'aneesha@gmail.com', 'aneesha'),
(15, 'xyz', 'mm@gmail.com', 'aaa'),
(16, 'admin', 'xvc@gmail.com', 'wq'),
(17, 'xyz', 'muhibkhan29@gmail.com', 'aaaa'),
(20, 'admin', 'ayesha@gmail.com', 'ayesha'),
(21, 'xyz', 'xyz@gmail.com', 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_description` text DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `project_link` varchar(500) DEFAULT NULL,
  `project_status` enum('completed','ongoing','planned') DEFAULT 'completed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `resume_id`, `project_title`, `project_description`, `duration`, `project_link`, `project_status`, `created_at`) VALUES
(24, 162, 'Marina Fleets', 'fdfbdf', '2021', '', 'completed', '2025-08-26 16:09:04'),
(25, 163, 'Marina Fleets', '', '2021', '', 'completed', '2025-08-26 21:27:31'),
(26, 164, 'Marina Fleets', 'ukyjfhgfdfgshgfnfh', '2021', '', 'completed', '2025-08-26 22:28:18'),
(27, 165, 'Marina Fleets', 'jhgfsdsjmnhbgrfwedetgbvn', '2021', '', 'completed', '2025-08-26 22:34:25'),
(28, 166, 'Marina Fleets', 'ytreqwthr', '2021', '', 'completed', '2025-08-26 23:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text DEFAULT NULL,
  `linkedin` varchar(500) DEFAULT NULL,
  `website` varchar(500) DEFAULT NULL,
  `profile_image` varchar(500) DEFAULT NULL,
  `professional_field` varchar(100) NOT NULL,
  `custom_field` varchar(255) DEFAULT NULL,
  `professional_summary` varchar(500) DEFAULT NULL,
  `career_objective` text DEFAULT NULL,
  `is_freshie` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `user_id`, `full_name`, `email`, `phone`, `address`, `linkedin`, `website`, `profile_image`, `professional_field`, `custom_field`, `professional_summary`, `career_objective`, `is_freshie`, `created_at`, `updated_at`) VALUES
(159, 'user_68abffe0db617', 'asad', 'abdullah@gmail.com', '03100000', '', 'https://pk.linkedin.com/', 'https://pk.linkedin.com/', '', 'graphic_designer', '', 'Entry-level graphic_designer specialist with demonstrated ability through academic projects and internships. Excellent communication skills and team collaboration experience. Seeking to apply knowledge and grow within forward-thinking company.', 'To secure an entry-level position in graphic_designer where I can apply my academic knowledge and develop practical skills while contributing to organizational success and growth.', 1, '2025-08-25 06:17:04', '2025-08-25 06:17:04'),
(160, 'user_68ac80daaf30f', 'Admin', 'muhibkhan2299@gmail.com', '03198423524', '', 'https://pk.linkedin.com/', '', '', 'software_developer', '', 'Motivated software_developer professional with academic background and hands-on project experience. Strong analytical skills combined with creative problem-solving approach. Ready to contribute innovative solutions while advancing career in dynamic organization.', 'To obtain a position in software_developer that leverages my educational background while providing growth opportunities in dynamic, results-oriented environment.', 1, '2025-08-25 15:27:22', '2025-08-25 15:27:22'),
(161, 'user_68adc84bf3c27', 'Admin', 'muhibkhan2299@gmail.com', '03198423524', '', 'https://pk.linkedin.com/', '', '', 'software_developer', '', 'Motivated software_developer professional with academic background and hands-on project experience. Strong analytical skills combined with creative problem-solving approach. Ready to contribute innovative solutions while advancing career in dynamic organization.', 'To obtain a position in software_developer that leverages my educational background while providing growth opportunities in dynamic, results-oriented environment.', 1, '2025-08-26 14:44:27', '2025-08-26 14:44:27'),
(162, 'user_68addc20ed2d0', 'Ayesha Batool', 'ayeshabideen9@gmail.com', '03198423524', 'dvkhsuhfhs wenfofnvsd ejdoiwe', 'https://pk.linkedin.com/', 'https://pk.linkedin.com/', '', 'software_developer', '', 'Senior software_developer professional with comprehensive experience in industry best practices and emerging technologies. Expert in stakeholder management with focus on driving business growth and operational efficiency.', 'Seeking senior software_developer position where I can leverage extensive experience to mentor teams, optimize processes, and contribute to long-term business objectives.', 0, '2025-08-26 16:09:04', '2025-08-26 16:09:04'),
(163, 'user_68ae26c3042a9', 'Ayesha Batool', 'muhibkhan2299@gmail.com', '03198423524', '', 'https://pk.linkedin.com/', 'https://pk.linkedin.com/', '', 'software_developer', '', 'Recent graduate with strong foundation in software_developer and passion for professional growth. Eager to contribute fresh perspectives while developing practical skills in collaborative environments. Known for quick learning ability and dedication to excellence.', 'Seeking software_developer role that offers opportunities for professional development and allows me to contribute fresh perspectives to innovative projects and collaborative teams.', 1, '2025-08-26 21:27:31', '2025-08-26 21:27:31'),
(164, 'user_68ae350280c00', 'Ayesha', 'ayeshabideen9@gmail.com', '03198423524', '', 'https://pk.linkedin.com/', 'https://pk.linkedin.com/', '', 'software_developer', '', 'Recent graduate with strong foundation in software_developer and passion for professional growth. Eager to contribute fresh perspectives while developing practical skills in collaborative environments. Known for quick learning ability and dedication to excellence.', 'Seeking software_developer role that offers opportunities for professional development and allows me to contribute fresh perspectives to innovative projects and collaborative teams.', 1, '2025-08-26 22:28:18', '2025-08-26 22:28:18'),
(165, 'user_68ae3670eebac', 'Admin', 'admin@gmail.com', '03100000', '', 'https://pk.linkedin.com/', 'https://pk.linkedin.com/', '', 'software_developer', '', 'Motivated software_developer professional with academic background and hands-on project experience. Strong analytical skills combined with creative problem-solving approach. Ready to contribute innovative solutions while advancing career in dynamic organization.', 'To secure an entry-level position in software_developer where I can apply my academic knowledge and develop practical skills while contributing to organizational success and growth.', 1, '2025-08-26 22:34:24', '2025-08-26 22:34:24'),
(166, 'user_68ae448b6f0c7', 'Admin', 'muhibkhan2299@gmail.com', '03198423524', '', 'https://pk.linkedin.com/', 'https://pk.linkedin.com/', '', 'software_developer', '', 'Results-driven software_developer specialist with extensive background in project management and client relations. Known for problem-solving abilities and mentoring junior team members. Committed to organizational excellence and continuous improvement.', 'To advance my career in software_developer by taking on leadership responsibilities and driving strategic initiatives that contribute to organizational success and team development.', 0, '2025-08-26 23:34:35', '2025-08-26 23:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `resume_ai_suggestions`
--

CREATE TABLE `resume_ai_suggestions` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `suggestion_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resume_references`
--

CREATE TABLE `resume_references` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `reference_name` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume_references`
--

INSERT INTO `resume_references` (`id`, `resume_id`, `reference_name`, `position`, `company`, `email`, `phone`, `relationship`, `created_at`) VALUES
(19, 161, 'Sdcvdbn', 'Sdcvdbn', 'Sdcvdbn', 'xdvcx@gmail.com', '03121568', NULL, '2025-08-26 14:44:28'),
(20, 162, 'Sdcvdbn', 'xdvcx', 'sdgsf', 'xdvcx@gmail.com', '03121568', NULL, '2025-08-26 16:09:05'),
(21, 163, 'xdvcx', 'Sdcvdbn', 'Sdcvdbn', 'hsb@gmail.com', '03121568', NULL, '2025-08-26 21:27:31'),
(22, 164, 'Sdcvdbn', 'xdvcx', 'xyz', 'hsb@gmail.com', '03121568', NULL, '2025-08-26 22:28:18'),
(23, 165, 'Sdcvdbn', 'abc', 'xyz', 'xdvcx@gmail.com', '03121568', NULL, '2025-08-26 22:34:25'),
(24, 166, 'xdvcx', 'xdvcx', 'xyz', 'hsb@gmail.com', '03121568', NULL, '2025-08-26 23:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_level` enum('beginner','intermediate','advanced','expert') DEFAULT 'intermediate',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `resume_id`, `skill_name`, `skill_level`, `created_at`) VALUES
(349, 159, 'Photoshop', 'intermediate', '2025-08-25 06:17:04'),
(350, 159, 'Illustrator', 'intermediate', '2025-08-25 06:17:04'),
(351, 159, 'InDesign', 'intermediate', '2025-08-25 06:17:04'),
(352, 159, 'CorelDRAW', 'intermediate', '2025-08-25 06:17:04'),
(353, 159, 'Typography', 'intermediate', '2025-08-25 06:17:04'),
(354, 160, 'JavaScript', 'intermediate', '2025-08-25 15:27:22'),
(355, 160, 'Java', 'intermediate', '2025-08-25 15:27:22'),
(356, 160, 'React', 'intermediate', '2025-08-25 15:27:22'),
(357, 160, 'Node.js', 'intermediate', '2025-08-25 15:27:22'),
(358, 160, 'HTML/CSS', 'intermediate', '2025-08-25 15:27:22'),
(359, 160, 'PHP', 'intermediate', '2025-08-25 15:27:22'),
(360, 161, 'JavaScript', 'intermediate', '2025-08-26 14:44:28'),
(361, 161, 'Java', 'intermediate', '2025-08-26 14:44:28'),
(362, 161, 'React', 'intermediate', '2025-08-26 14:44:28'),
(363, 161, 'Node.js', 'intermediate', '2025-08-26 14:44:28'),
(364, 161, 'HTML/CSS', 'intermediate', '2025-08-26 14:44:28'),
(365, 161, 'PHP', 'intermediate', '2025-08-26 14:44:28'),
(366, 162, 'JavaScript', 'intermediate', '2025-08-26 16:09:04'),
(367, 162, 'Python', 'intermediate', '2025-08-26 16:09:04'),
(368, 162, 'Java', 'intermediate', '2025-08-26 16:09:04'),
(369, 162, 'React', 'intermediate', '2025-08-26 16:09:04'),
(370, 162, 'Node.js', 'intermediate', '2025-08-26 16:09:04'),
(371, 162, 'Git', 'intermediate', '2025-08-26 16:09:04'),
(372, 162, 'HTML/CSS', 'intermediate', '2025-08-26 16:09:04'),
(373, 162, 'PHP', 'intermediate', '2025-08-26 16:09:04'),
(374, 162, 'SEO', 'intermediate', '2025-08-26 16:09:04'),
(375, 163, 'JavaScript', 'intermediate', '2025-08-26 21:27:31'),
(376, 163, 'Python', 'intermediate', '2025-08-26 21:27:31'),
(377, 163, 'Java', 'intermediate', '2025-08-26 21:27:31'),
(378, 163, 'Git', 'intermediate', '2025-08-26 21:27:31'),
(379, 163, 'HTML/CSS', 'intermediate', '2025-08-26 21:27:31'),
(380, 164, 'JavaScript', 'intermediate', '2025-08-26 22:28:18'),
(381, 164, 'Python', 'intermediate', '2025-08-26 22:28:18'),
(382, 164, 'Node.js', 'intermediate', '2025-08-26 22:28:18'),
(383, 164, 'SQL', 'intermediate', '2025-08-26 22:28:18'),
(384, 164, 'Git', 'intermediate', '2025-08-26 22:28:18'),
(385, 164, 'HTML/CSS', 'intermediate', '2025-08-26 22:28:18'),
(386, 164, 'PHP', 'intermediate', '2025-08-26 22:28:18'),
(387, 164, 'lasd', 'intermediate', '2025-08-26 22:28:18'),
(388, 165, 'JavaScript', 'intermediate', '2025-08-26 22:34:25'),
(389, 165, 'Python', 'intermediate', '2025-08-26 22:34:25'),
(390, 165, 'Java', 'intermediate', '2025-08-26 22:34:25'),
(391, 165, 'React', 'intermediate', '2025-08-26 22:34:25'),
(392, 165, 'Node.js', 'intermediate', '2025-08-26 22:34:25'),
(393, 165, 'lasd', 'intermediate', '2025-08-26 22:34:25'),
(394, 166, 'JavaScript', 'intermediate', '2025-08-26 23:34:35'),
(395, 166, 'React', 'intermediate', '2025-08-26 23:34:35'),
(396, 166, 'SQL', 'intermediate', '2025-08-26 23:34:35'),
(397, 166, 'Git', 'intermediate', '2025-08-26 23:34:35'),
(398, 166, 'HTML/CSS', 'intermediate', '2025-08-26 23:34:35'),
(399, 166, 'PHP', 'intermediate', '2025-08-26 23:34:35'),
(400, 166, 'lasd', 'intermediate', '2025-08-26 23:34:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_resume_id` (`resume_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_resume_id` (`resume_id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_resume_id` (`resume_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resume_id` (`resume_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_resume_id` (`resume_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_resume_id` (`resume_id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `resume_ai_suggestions`
--
ALTER TABLE `resume_ai_suggestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resume_id` (`resume_id`);

--
-- Indexes for table `resume_references`
--
ALTER TABLE `resume_references`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_resume_id` (`resume_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_resume_id` (`resume_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `resume_ai_suggestions`
--
ALTER TABLE `resume_ai_suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resume_references`
--
ALTER TABLE `resume_references`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achievements`
--
ALTER TABLE `achievements`
  ADD CONSTRAINT `achievements_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resumes`
--
ALTER TABLE `resumes`
  ADD CONSTRAINT `fk_resumes_login_email` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `resume_ai_suggestions`
--
ALTER TABLE `resume_ai_suggestions`
  ADD CONSTRAINT `resume_ai_suggestions_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resume_references`
--
ALTER TABLE `resume_references`
  ADD CONSTRAINT `resume_references_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
