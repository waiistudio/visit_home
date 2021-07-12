-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: 12 ก.ค. 2021 เมื่อ 03:34 AM
-- เวอร์ชันของเซิร์ฟเวอร์: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visit_db`
--

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `classroom_dbs`
--

CREATE TABLE `classroom_dbs` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_level` enum('อนุบาล','ประถมศึกษาตอนต้น','ประถมศึกษาตอนปลาย','มัธยมศึกษาตอนต้น') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('enable','disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- dump ตาราง `classroom_dbs`
--

INSERT INTO `classroom_dbs` (`id`, `class_name`, `c_level`, `status`, `created_at`, `updated_at`) VALUES
(1, 'อนุบาล 2', 'อนุบาล', 'enable', NULL, NULL),
(2, 'อนุบาล 3', 'อนุบาล', 'enable', NULL, NULL),
(3, 'ประถมศึกษาปีที่ 1', 'ประถมศึกษาตอนต้น', 'enable', NULL, NULL),
(4, 'ประถมศึกษาปีที่ 2', 'ประถมศึกษาตอนต้น', 'enable', NULL, NULL),
(5, 'ประถมศึกษาปีที่ 3', 'ประถมศึกษาตอนต้น', 'enable', NULL, NULL),
(6, 'ประถมศึกษาปีที่ 4', 'ประถมศึกษาตอนปลาย', 'enable', NULL, NULL),
(7, 'ประถมศึกษาปีที่ 5', 'ประถมศึกษาตอนปลาย', 'enable', NULL, NULL),
(8, 'ประถมศึกษาปีที่ 6', 'ประถมศึกษาตอนปลาย', 'enable', NULL, NULL),
(9, 'มัธยมศึกษาปีที่ 1', 'มัธยมศึกษาตอนต้น', 'enable', NULL, NULL),
(10, 'มัธยมศึกษาปีที่ 2', 'มัธยมศึกษาตอนต้น', 'enable', NULL, NULL),
(11, 'มัธยมศึกษาปีที่ 3', 'มัธยมศึกษาตอนต้น', 'enable', NULL, NULL),
(12, 'ผู้อำนวยการโรงเรียนไทยรัฐวิทยา ๖๘ (วัดเหวลาด)', 'ประถมศึกษาตอนต้น', 'disable', NULL, NULL);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- dump ตาราง `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2021_07_08_135115_create_classroom_dbs_table', 2),
(11, '2021_07_08_136426_create_teacher_dbs_table', 2),
(12, '2021_07_08_141425_create_student_dbs_table', 2);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `student_dbs`
--

CREATE TABLE `student_dbs` (
  `id` int(10) UNSIGNED NOT NULL,
  `std_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `c_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_advice` int(10) UNSIGNED NOT NULL,
  `classroom` int(10) UNSIGNED NOT NULL,
  `delete` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `status` enum('enable','disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- dump ตาราง `student_dbs`
--

INSERT INTO `student_dbs` (`id`, `std_id`, `c_id`, `name`, `teacher_advice`, `classroom`, `delete`, `status`, `created_at`, `updated_at`) VALUES
(1, '2923', '', 'เด็กชายกฤตชญา คงคาดิษฐ', 1, 1, 'false', 'enable', NULL, NULL),
(2, '2897', '', 'เด็กชายจักรินทร์ พินจันทึก', 1, 1, 'false', 'enable', NULL, NULL),
(3, '2898', '', 'เด็กชายจันทร์ทอง คอม', 1, 1, 'false', 'enable', NULL, NULL),
(4, '2899', '', 'เด็กชายฉัตรชนก โวหาร', 1, 1, 'false', 'enable', NULL, NULL),
(5, '2900', '', 'เด็กชายชัชชานนท์ หงษ์ษา', 1, 1, 'false', 'enable', NULL, NULL),
(6, '2901', '', 'เด็กชายณัฐชนน ปานพิมพ์ใหญ่', 1, 1, 'false', 'enable', NULL, NULL),
(7, '2902', '', 'เด็กชายเธียรธาวิน กรภิบาล', 1, 1, 'false', 'enable', NULL, NULL),
(8, '2903', '', 'เด็กชายปริญญา ตนดี', 1, 1, 'false', 'enable', NULL, NULL),
(9, '2904', '', 'เด็กชายฟิลลิป คต', 1, 1, 'false', 'enable', NULL, NULL),
(10, '2905', '', 'เด็กชายวรายุทธ์ รังสะอินทร์', 1, 1, 'false', 'enable', NULL, NULL),
(11, '2906', '', 'เด็กชายอภิวัฒน์ ทองเสนา', 1, 1, 'false', 'enable', NULL, NULL),
(12, '2907', '', 'เด็กหญิงกชกร ผาวัลย์', 1, 1, 'false', 'enable', NULL, NULL),
(13, '2908', '', 'เด็กหญิงกนกพัชร โคกสูง', 1, 1, 'false', 'enable', NULL, NULL),
(14, '2909', '', 'เด็กหญิงกัญญาณัฐ พงค์ด้วง', 1, 1, 'false', 'enable', NULL, NULL),
(15, '2910', '', 'เด็กหญิงขนิษฐา วันเดือน', 1, 1, 'false', 'enable', NULL, NULL),
(16, '2911', '', 'เด็กหญิงชัยยศ ออน', 1, 1, 'false', 'enable', NULL, NULL),
(17, '2912', '', 'เด็กหญิงพรพิมล จำมั่น', 1, 1, 'false', 'enable', NULL, NULL),
(18, '2913', '', 'เด็กหญิงพัชรากร ตนดี', 1, 1, 'false', 'enable', NULL, NULL),
(19, '2914', '', 'เด็กหญิงพัสกร สุภจินต์', 1, 1, 'false', 'enable', NULL, NULL),
(20, '2915', '', 'เด็กหญิงเมติกา รักพวง', 1, 1, 'false', 'enable', NULL, NULL),
(21, '2916', '', 'เด็กหญิงชัชชญา ทัพหน้า', 1, 1, 'false', 'enable', NULL, NULL),
(22, '2917', '', 'เด็กหญิงเรียะช่า โป้ง', 1, 1, 'false', 'enable', NULL, NULL),
(23, '2918', '', 'เด็กหญิงวศินีย์ อุบลหอม', 1, 1, 'false', 'enable', NULL, NULL),
(24, '2919', '', 'เด็กหญิงศิรภัสสร สังข์สุวรรณ', 1, 1, 'false', 'enable', NULL, NULL),
(25, '2920', '', 'เด็กหญิงออมสิน ไชยศรี', 1, 1, 'false', 'enable', NULL, NULL),
(26, '2921', '', 'เด็กหญิงอารยา จัตตุ', 1, 1, 'false', 'enable', NULL, NULL),
(27, '2942', '', 'เด็กชายภูสิทธิ์ คืนดี', 1, 1, 'false', 'enable', NULL, NULL),
(28, '2852', '', 'เด็กชายกิตติวินท์ แท่นสวัสดิ์', 2, 2, 'false', 'enable', NULL, NULL),
(29, '2839', '', 'เด็กชายกฤษฎา สินวิสูตร', 2, 2, 'false', 'enable', NULL, NULL),
(30, '2840', '', 'เด็กชายณัฐณันท์ บุญซ้อน', 2, 2, 'false', 'enable', NULL, NULL),
(31, '2841', '', 'เด็กชายภากร ปัญญาวงศ์', 2, 2, 'false', 'enable', NULL, NULL),
(32, '2842', '', 'เด็กชายภานุวัตร ชาติวิเศษ', 2, 2, 'false', 'enable', NULL, NULL),
(33, '2843', '', 'เด็กชายวชิรัตน์ อู่เงิน', 2, 2, 'false', 'enable', NULL, NULL),
(34, '2844', '', 'เด็กชายวริทร อายชู', 2, 2, 'false', 'enable', NULL, NULL),
(35, '2845', '', 'เด็กชายสลาวุฒ วงศ์ษา', 2, 2, 'false', 'enable', NULL, NULL),
(36, '2846', '', 'เด็กชายธนดล สวนบุญ', 2, 2, 'false', 'enable', NULL, NULL),
(37, '2847', '', 'เด็กหญิงกันย์สินี ใจบุญ', 2, 2, 'false', 'enable', NULL, NULL),
(38, '2848', '', 'เด็กหญิงจิราภรณ์ เคนเค้า', 2, 2, 'false', 'enable', NULL, NULL),
(39, '2849', '', 'เด็กหญิงชยุดา หุ่นกระจก', 2, 2, 'false', 'enable', NULL, NULL),
(40, '2850', '', 'เด็กหญิงณัฐนันท์ เหลืองอ่อน', 2, 2, 'false', 'enable', NULL, NULL),
(41, '2853', '', 'เด็กหญิงมนี มวน', 2, 2, 'false', 'enable', NULL, NULL),
(42, '2854', '', 'เด็กหญิงวิรดา จาดสุวรรณ์', 2, 2, 'false', 'enable', NULL, NULL),
(43, '2855', '', 'เด็กหญิงสุภาพร วรรณโสภา', 2, 2, 'false', 'enable', NULL, NULL),
(44, '2856', '', 'เด็กชายจำเริญ ร่า', 2, 2, 'false', 'enable', NULL, NULL),
(45, '2891', '', 'เด็กชายภูวดล ศรีคุ้ม', 2, 2, 'false', 'enable', NULL, NULL),
(46, '2875', '', 'เด็กชายขวด ไพร', 2, 2, 'false', 'enable', NULL, NULL),
(47, '2824', '', 'เด็กชายสาธิต โคลนท์', 2, 2, 'false', 'enable', NULL, NULL),
(48, '2922', '', 'เด็กหญิงดา เจียก', 2, 2, 'false', 'enable', NULL, NULL),
(49, '0', '', 'เด็กชายบี บุญนา', 3, 3, 'false', 'enable', NULL, NULL),
(50, '2789', '', 'เด็กชายกันตพัฒน์ ไชยวัน', 3, 3, 'false', 'enable', NULL, NULL),
(51, '2790', '', 'เด็กชายจิระเดช วงษ์หวั่น', 3, 3, 'false', 'enable', NULL, NULL),
(52, '2791', '', 'เด็กชายจิรพัฒน์ แมลงภู่เกษร', 3, 3, 'false', 'enable', NULL, NULL),
(53, '2792', '', 'เด็กชายธนกฤต เขียนโคกกรวด', 3, 3, 'false', 'enable', NULL, NULL),
(54, '2793', '', 'เด็กชายธนาเดช อินหล้า', 3, 3, 'false', 'enable', NULL, NULL),
(55, '2794', '', 'เด็กชายนฤพล จำนงค์สุข', 3, 3, 'false', 'enable', NULL, NULL),
(56, '2796', '', 'เด็กชายราเมศวร์ สกุแก้ว', 3, 3, 'false', 'enable', NULL, NULL),
(57, '2797', '', 'เด็กหญิงจุฑาภรณ์ คำศรี', 3, 3, 'false', 'enable', NULL, NULL),
(58, '2798', '', 'เด็กหญิงดาวรรณ ชอม', 3, 3, 'false', 'enable', NULL, NULL),
(59, '2799', '', 'เด็กหญิงสุทธาสินี วงษ์สาลี', 3, 3, 'false', 'enable', NULL, NULL),
(60, '2800', '', 'เด็กหญิงสุพรรณษา ศรีจันทร์ดี', 3, 3, 'false', 'enable', NULL, NULL),
(61, '2801', '', 'เด็กหญิงอุรัสยา แก้วอ่อนตา', 3, 3, 'false', 'enable', NULL, NULL),
(62, '2802', '', 'เด็กหญิงอรอุมา พิงพวย', 3, 3, 'false', 'enable', NULL, NULL),
(63, '2803', '', 'เด็กหญิงเลียน ลักขินา', 3, 3, 'false', 'enable', NULL, NULL),
(64, '2828', '', 'เด็กหญิงทอน ชานี', 3, 3, 'false', 'enable', NULL, NULL),
(65, '2831', '', 'เด็กชายอนุวัฒน์ พลเดชะ', 3, 3, 'false', 'enable', NULL, NULL),
(66, '2859', '', 'เด็กหญิงนินา เนา', 3, 3, 'false', 'enable', NULL, NULL),
(67, '2860', '', 'เด็กหญิงสุพรรณี จอน', 3, 3, 'false', 'enable', NULL, NULL),
(68, '2861', '', 'เด็กชายกิมสแลง ทิต', 3, 3, 'false', 'enable', NULL, NULL),
(69, '2893', '', 'เด็กหญิงกุลภรณ์ ประหยัดการ', 3, 3, 'false', 'enable', NULL, NULL),
(70, '2741', '', 'เด็กชายกมลเทพ สงครามชัย', 5, 4, 'false', 'enable', NULL, NULL),
(71, '2743', '', 'เด็กชายณภัทร ศรีโคกกรวด', 5, 4, 'false', 'enable', NULL, NULL),
(72, '2745', '', 'เด็กชายพิเชฐ พันธุ์ภูผา', 5, 4, 'false', 'enable', NULL, NULL),
(73, '2747', '', 'เด็กชายวิษณุ คุณสมบัติ', 5, 4, 'false', 'enable', NULL, NULL),
(74, '2748', '', 'เด็กชายสรวิชญ์ กุลวรรณ', 5, 4, 'false', 'enable', NULL, NULL),
(75, '2749', '', 'เด็กชายสหรัฐ หุ่นกระจก', 5, 4, 'false', 'enable', NULL, NULL),
(76, '2751', '', 'เด็กหญิงจารุวรรณ ศรีพริ้ง', 5, 4, 'false', 'enable', NULL, NULL),
(77, '2754', '', 'เด็กหญิงณัฎฐ์ณิชา แท่นสวัสดิ์', 5, 4, 'false', 'enable', NULL, NULL),
(78, '2755', '', 'เด็กหญิงณัฐมน ปานพิมพ์ใหญ่', 5, 4, 'false', 'enable', NULL, NULL),
(79, '2756', '', 'เด็กหญิงดวงกมล พงษ์สมนาม', 5, 4, 'false', 'enable', NULL, NULL),
(80, '2757', '', 'เด็กหญิงธนัญญา เกตกลาง', 5, 4, 'false', 'enable', NULL, NULL),
(81, '2759', '', 'เด็กหญิงพัชริสา รังสะอินทร์', 5, 4, 'false', 'enable', NULL, NULL),
(82, '2760', '', 'เด็กหญิงวันเพ็ญ กกสันเทียะ', 5, 4, 'false', 'enable', NULL, NULL),
(83, '2805', '', 'เด็กหญิงกานติมา ไชยศรี', 5, 4, 'false', 'enable', NULL, NULL),
(84, '2806', '', 'เด็กชายอภินันท์ พันจัน', 5, 4, 'false', 'enable', NULL, NULL),
(85, '2829', '', 'เด็กหญิงร่า สุกล', 5, 4, 'false', 'enable', NULL, NULL),
(86, '2650', '', 'เด็กชายสุให ดี', 5, 4, 'false', 'enable', NULL, NULL),
(87, '2833', '', 'เด็กหญิงสกนา เกือบ', 5, 4, 'false', 'enable', NULL, NULL),
(88, '2834', '', 'เด็กหญิงจันเตรีย เกือบ', 5, 4, 'false', 'enable', NULL, NULL),
(89, '2838', '', 'เด็กหญิงโซเฟีย เนียน', 5, 4, 'false', 'enable', NULL, NULL),
(90, '2862', '', 'เด็กชายภาคิน ปัญญาวงศ์', 5, 4, 'false', 'enable', NULL, NULL),
(91, '2863', '', 'เด็กชายสกาย ตรีคุณา', 5, 4, 'false', 'enable', NULL, NULL),
(92, '2865', '', 'เด็กหญิงไหม พิมมะเสน', 5, 4, 'false', 'enable', NULL, NULL),
(93, '2866', '', 'เด็กหญิงนุช โนว', 5, 4, 'false', 'enable', NULL, NULL),
(94, '2867', '', 'เด็กหญิงลักขณา รา', 5, 4, 'false', 'enable', NULL, NULL),
(95, '2892', '', 'เด็กหญิงริซ่า งัด', 5, 4, 'false', 'enable', NULL, NULL),
(96, '2864', '', 'เด็กหญิงฝน พิมมะเสน', 5, 4, 'false', 'enable', NULL, NULL),
(97, '2668', '', 'เด็กหญิงนุช เยาะ', 7, 5, 'false', 'enable', NULL, NULL),
(98, '2667', '', 'เด็กหญิงเน็ต เยาะ', 7, 5, 'false', 'enable', NULL, NULL),
(99, '2605', '', 'เด็กชายคณพศ สินวิสูตร', 7, 5, 'false', 'enable', NULL, NULL),
(100, '2703', '', 'เด็กชายสุรศักดิ์ กุลวรรณ', 7, 5, 'false', 'enable', NULL, NULL),
(101, '2673', '', 'เด็กชายปนะที แพ่งสวัสดิ์', 7, 5, 'false', 'enable', NULL, NULL),
(102, '2675', '', 'เด็กชายเตชินท์ ศรีวิไล', 7, 5, 'false', 'enable', NULL, NULL),
(103, '2676', '', 'เด็กชายธนัช ทัศนะ', 7, 5, 'false', 'enable', NULL, NULL),
(104, '2677', '', 'เด็กชายธีรยุทธ จาดสุวรรณ์', 7, 5, 'false', 'enable', NULL, NULL),
(105, '2678', '', 'เด็กชายบุญฤทธิ์ พิมจัตุรัส', 7, 5, 'false', 'enable', NULL, NULL),
(106, '2679', '', 'เด็กชายภัทรพล เบ้าเงิน', 7, 5, 'false', 'enable', NULL, NULL),
(107, '2680', '', 'เด็กชายภูมิภัช แพ่งสวัสดิ์', 7, 5, 'false', 'enable', NULL, NULL),
(108, '2681', '', 'เด็กชายศุภกิตติ์ ศรีธรรมมา', 7, 5, 'false', 'enable', NULL, NULL),
(109, '2682', '', 'เด็กชายศุภวัฒน์ จักรพล', 7, 5, 'false', 'enable', NULL, NULL),
(110, '2683', '', 'เด็กชายสพณดนัย อุบลหอม', 7, 5, 'false', 'enable', NULL, NULL),
(111, '2684', '', 'เด็กชายอนาวิล เดชสิมา', 7, 5, 'false', 'enable', NULL, NULL),
(112, '2686', '', 'เด็กหญิงรัตนา โพธิปัญยะ', 7, 5, 'false', 'enable', NULL, NULL),
(113, '2687', '', 'เด็กหญิงรุ่งวาลี วงค์ษา', 7, 5, 'false', 'enable', NULL, NULL),
(114, '2688', '', 'เด็กหญิงวรรณภา วงค์ษา', 7, 5, 'false', 'enable', NULL, NULL),
(115, '2690', '', 'เด็กหญิงอนามิกา เดชสิมา', 7, 5, 'false', 'enable', NULL, NULL),
(116, '2691', '', 'เด็กหญิงอริสรา อินสำอาง', 7, 5, 'false', 'enable', NULL, NULL),
(117, '2693', '', 'เด็กหญิงปาริชาติ ศิลรักษา', 7, 5, 'false', 'enable', NULL, NULL),
(118, '2694', '', 'เด็กหญิงพรทิวา สุนทรสุทธิโรจน์', 7, 5, 'false', 'enable', NULL, NULL),
(119, '2696', '', 'เด็กหญิงธิดา ออน', 7, 5, 'false', 'enable', NULL, NULL),
(120, '2697', '', 'เด็กหญิงอรอุมา ประภาษี', 7, 5, 'false', 'enable', NULL, NULL),
(121, '2713', '', 'เด็กชายจักริน ประสาททอง', 7, 5, 'false', 'enable', NULL, NULL),
(122, '2727', '', 'เด็กชายกรณพัฒน์ ชฎาจิตร', 7, 5, 'false', 'enable', NULL, NULL),
(123, '2809', '', 'เด็กหญิงผกากานต์ ไชยศรี', 7, 5, 'false', 'enable', NULL, NULL),
(124, '2895', '', 'เด็กชายทอน ยวน', 7, 5, 'false', 'enable', NULL, NULL),
(125, '2940', '', 'เด็กหญิงศรัญรักษ์ เนียมเกิด', 7, 5, 'false', 'enable', NULL, NULL),
(126, '2558', '', 'เด็กชายศุภกร วรนาม', 9, 6, 'false', 'enable', NULL, NULL),
(127, '2708', '', 'เด็กหญิงจันตรี ตวด', 9, 6, 'false', 'enable', NULL, NULL),
(128, '2661', '', 'เด็กชายธีรศิลป์ แคกระโทก', 9, 6, 'false', 'enable', NULL, NULL),
(129, '2606', '', 'เด็กชายจรินทร์ บุญล้อมกำเงิน', 9, 6, 'false', 'enable', NULL, NULL),
(130, '2607', '', 'เด็กชายจักรกฤช บุตรโสม', 9, 6, 'false', 'enable', NULL, NULL),
(131, '2609', '', 'เด็กชายชัยรัตน์ แจ้ไร่', 9, 6, 'false', 'enable', NULL, NULL),
(132, '2611', '', 'เด็กชายธีรดนัย จันทร์สะอาด', 9, 6, 'false', 'enable', NULL, NULL),
(133, '2613', '', 'เด็กชายวัณณุวรรธน์ ลือพันธ์', 9, 6, 'false', 'enable', NULL, NULL),
(134, '2614', '', 'เด็กชายวิศรุต พันศิริ', 9, 6, 'false', 'enable', NULL, NULL),
(135, '2615', '', 'เด็กหญิงกรรณิการ์ เดือน', 9, 6, 'false', 'enable', NULL, NULL),
(136, '2618', '', 'เด็กหญิงอมลวรรณ เกิดจันทึก', 9, 6, 'false', 'enable', NULL, NULL),
(137, '2636', '', 'เด็กชายชัยยา ออน', 9, 6, 'false', 'enable', NULL, NULL),
(138, '2642', '', 'เด็กชายชัยยี ออน', 9, 6, 'false', 'enable', NULL, NULL),
(139, '2617', '', 'เด็กหญิงวชิราภา อู่เงิน', 9, 6, 'false', 'enable', NULL, NULL),
(140, '2924', '', 'เด็กชายรัฐศาสตร์ แสงจรัส', 9, 6, 'false', 'enable', NULL, NULL),
(141, '2925', '', 'เด็กชายพิชากร สุพร', 9, 6, 'false', 'enable', NULL, NULL),
(142, '2926', '', 'เด็กชายวรดร ล้อมจันทึก', 9, 6, 'false', 'enable', NULL, NULL),
(143, '2939', '', 'เด็กชายศุภโชติ เนียนเกิด', 9, 6, 'false', 'enable', NULL, NULL),
(144, '2442', '', 'เด็กชายสิทธิศักดิ์ ศรีสุวรรณ์', 11, 7, 'false', 'enable', NULL, NULL),
(145, '2502', '', 'เด็กชายธันวา มานิช', 11, 7, 'false', 'enable', NULL, NULL),
(146, '2547', '', 'เด็กชายกิติกร สกุแก้ว', 11, 7, 'false', 'enable', NULL, NULL),
(147, '2548', '', 'เด็กชายกรวิชญ์ เกิดจันทึก', 11, 7, 'false', 'enable', NULL, NULL),
(148, '2550', '', 'เด็กชายตะวัน วัฒนศิลป์', 11, 7, 'false', 'enable', NULL, NULL),
(149, '2552', '', 'เด็กชายธนกฤต เทศานอก', 11, 7, 'false', 'enable', NULL, NULL),
(150, '2554', '', 'เด็กชายปฏิภาณ รุชะดา', 11, 7, 'false', 'enable', NULL, NULL),
(151, '2555', '', 'เด็กชายภูมิพัฒน์ พรมประสิทธิ์', 11, 7, 'false', 'enable', NULL, NULL),
(152, '2557', '', 'เด็กชายรุ่งเรือง ศีลรักษา', 11, 7, 'false', 'enable', NULL, NULL),
(153, '2562', '', 'เด็กหญิงพนิตา พันธุ์ภูผา', 11, 7, 'false', 'enable', NULL, NULL),
(154, '2564', '', 'เด็กหญิงวราภรณ์ อินหล้า', 11, 7, 'false', 'enable', NULL, NULL),
(155, '2565', '', 'เด็กหญิงภัทราภูมิ สุขมนต์', 11, 7, 'false', 'enable', NULL, NULL),
(156, '2566', '', 'เด็กหญิงสิริกัญญา บุญส่ง', 11, 7, 'false', 'enable', NULL, NULL),
(157, '2567', '', 'เด็กหญิงสุดาพร แจ่มฟ้า', 11, 7, 'false', 'enable', NULL, NULL),
(158, '2572', '', 'เด็กหญิงใบหม่อน ดวงตา', 11, 7, 'false', 'enable', NULL, NULL),
(159, '2594', '', 'เด็กชายรัชชานนท์ สุดดี', 11, 7, 'false', 'enable', NULL, NULL),
(160, '2641', '', 'เด็กชายนที ปัญญา', 11, 7, 'false', 'enable', NULL, NULL),
(161, '2648', '', 'เด็กชายเดช ดี', 11, 7, 'false', 'enable', NULL, NULL),
(162, '2660', '', 'เด็กชายธีรเทพ แคกระโทก', 11, 7, 'false', 'enable', NULL, NULL),
(163, '2663', '', 'เด็กชายซัน ปัญญา', 11, 7, 'false', 'enable', NULL, NULL),
(164, '2664', '', 'เด็กชายราดู ปัญญา', 11, 7, 'false', 'enable', NULL, NULL),
(165, '2706', '', 'เด็กหญิงจิตรสินี สีทา', 11, 7, 'false', 'enable', NULL, NULL),
(166, '2443', '', 'เด็กชายสกลวัฒน์ รังสะอินทร์', 13, 8, 'false', 'enable', NULL, NULL),
(167, '2499', '', 'เด็กชายกรกฏ ผาวัลย์', 13, 8, 'false', 'enable', NULL, NULL),
(168, '2500', '', 'เด็กชายธนกฤต สีดา', 13, 8, 'false', 'enable', NULL, NULL),
(169, '2501', '', 'เด็กชายธนภัทร ณรงค์ศิลป์', 13, 8, 'false', 'enable', NULL, NULL),
(170, '2503', '', 'เด็กชายพรรษา ไกรศรรัตน์', 13, 8, 'false', 'enable', NULL, NULL),
(171, '2505', '', 'เด็กชายวรานนท์ แพ่งสวัสดิ์', 13, 8, 'false', 'enable', NULL, NULL),
(172, '2507', '', 'เด็กชายอภินัทธ์ ทัศนะ', 13, 8, 'false', 'enable', NULL, NULL),
(173, '2508', '', 'เด็กชายวายุระกุล แจ่มฟ้า', 13, 8, 'false', 'enable', NULL, NULL),
(174, '2509', '', 'เด็กหญิงกัญญารัตน์ เพชรเชื้อ', 13, 8, 'false', 'enable', NULL, NULL),
(175, '2511', '', 'เด็กหญิงญาดา อู่เงิน', 13, 8, 'false', 'enable', NULL, NULL),
(176, '2513', '', 'เด็กหญิงปัณฑารีย์ จันทร์ทอง', 13, 8, 'false', 'enable', NULL, NULL),
(177, '2516', '', 'เด็กหญิงพุทธิชา บุตรโสม', 13, 8, 'false', 'enable', NULL, NULL),
(178, '2518', '', 'เด็กหญิงวรรณพร อินทร์อร่าม', 13, 8, 'false', 'enable', NULL, NULL),
(179, '2521', '', 'เด็กหญิงศิลารัตน์ สุขเจริญ', 13, 8, 'false', 'enable', NULL, NULL),
(180, '2522', '', 'เด็กหญิงสโรชา จักรพล', 13, 8, 'false', 'enable', NULL, NULL),
(181, '2523', '', 'เด็กหญิงสุชาดา เลิศกุล', 13, 8, 'false', 'enable', NULL, NULL),
(182, '2525', '', 'เด็กหญิงสุวิชาดา เทียนสุคนธ์', 13, 8, 'false', 'enable', NULL, NULL),
(183, '2526', '', 'เด็กหญิงอธิชา รังสะอินทร์', 13, 8, 'false', 'enable', NULL, NULL),
(184, '2580', '', 'เด็กหญิงวิกาญดา ถิละผะลิกะ', 13, 8, 'false', 'enable', NULL, NULL),
(185, '2581', '', 'เด็กชายภัทรดนัย ทดชุม', 13, 8, 'false', 'enable', NULL, NULL),
(186, '2597', '', 'เด็กชายเกมส์ ศิลานะ', 13, 8, 'false', 'enable', NULL, NULL),
(187, '2629', '', 'เด็กชายนาวิน หินวิเศษ', 13, 8, 'false', 'enable', NULL, NULL),
(188, '2630', '', 'เด็กชายจักรพันธ์ นันโต', 13, 8, 'false', 'enable', NULL, NULL),
(189, '2718', '', 'เด็กชายวีรากร เป่งอิน', 13, 8, 'false', 'enable', NULL, NULL),
(190, '2726', '', 'เด็กชายสก๊อต ตรีคุณา', 13, 8, 'false', 'enable', NULL, NULL),
(191, '2810', '', 'เด็กหญิงภัทรธิดา เบ้าเงิน', 13, 8, 'false', 'enable', NULL, NULL),
(192, '2879', '', 'เด็กหญิงบงกช พะเดียงครบุรี', 13, 8, 'false', 'enable', NULL, NULL),
(193, '2941', '', 'เด็กหญิงกุลธิดา เลิศกุล', 13, 8, 'false', 'enable', NULL, NULL),
(194, '2817', '', 'เด็กชายสมหมาย พวงทอง', 15, 9, 'false', 'enable', NULL, NULL),
(195, '2880', '', 'เด็กหญิงนันทิชา สุพร', 15, 9, 'false', 'enable', NULL, NULL),
(196, '2391', '', 'เด็กชายจาตุรันต์ ประสาททอง', 15, 9, 'false', 'enable', NULL, NULL),
(197, '2398', '', 'เด็กชายสุเมธ วิถารมย์', 15, 9, 'false', 'enable', NULL, NULL),
(198, '2401', '', 'เด็กชายอัครพล อู่สำราญ', 15, 9, 'false', 'enable', NULL, NULL),
(199, '2436', '', 'เด็กชายกิตติพงษ์ ชอบค้า', 15, 9, 'false', 'enable', NULL, NULL),
(200, '2437', '', 'เด็กชายณัฐภณ บุญยัง', 15, 9, 'false', 'enable', NULL, NULL),
(201, '2438', '', 'เด็กชายธนกร ศรีสมัย', 15, 9, 'false', 'enable', NULL, NULL),
(202, '2439', '', 'เด็กชายธนกฤต เข่งพิมล', 15, 9, 'false', 'enable', NULL, NULL),
(203, '2441', '', 'เด็กชายศุภกิตติ์ สงครามชัย', 15, 9, 'false', 'enable', NULL, NULL),
(204, '2446', '', 'เด็กหญิงกฤติมา พานุสินธุ์', 15, 9, 'false', 'enable', NULL, NULL),
(205, '2447', '', 'เด็กหญิงขวัญจิรา ดอนมอญ', 15, 9, 'false', 'enable', NULL, NULL),
(206, '2448', '', 'เด็กหญิงขวัญปทุมวัน บริบูรณ์', 15, 9, 'false', 'enable', NULL, NULL),
(207, '2456', '', 'เด็กหญิงศิริลักษณ์ ชุ่มใจ', 15, 9, 'false', 'enable', NULL, NULL),
(208, '2457', '', 'เด็กหญิงวรัทยา ขวัญจ่า', 15, 9, 'false', 'enable', NULL, NULL),
(209, '2530', '', 'เด็กหญิงรัตติกาล โวหาร', 15, 9, 'false', 'enable', NULL, NULL),
(210, '2541', '', 'เด็กชายนพพล ฝ่ายกลาง', 15, 9, 'false', 'enable', NULL, NULL),
(211, '2716', '', 'เด็กชายศักรินทร์ ศรีจันทร์ดี', 15, 9, 'false', 'enable', NULL, NULL),
(212, '2440', '', 'เด็กชายธเนศ ศรีสวัสดิ์', 15, 9, 'false', 'enable', NULL, NULL),
(213, '2927', '', 'เด็กชายสรพลฐปกร เอกธนพณิย์', 15, 9, 'false', 'enable', NULL, NULL),
(214, '2928', '', 'เด็กหญิงบุษยมาศ พงษ์โอสถ', 15, 9, 'false', 'enable', NULL, NULL),
(215, '2929', '', 'เด็กชายวิชัย แก่นจันทร์', 15, 9, 'false', 'enable', NULL, NULL),
(216, '2930', '', 'เด็กชายธนวัฒน์ ฐาปนโสภณ', 15, 9, 'false', 'enable', NULL, NULL),
(217, '2931', '', 'เด็กชายทิพาร อาสินรัมย์', 15, 9, 'false', 'enable', NULL, NULL),
(218, '2932', '', 'เด็กชายทัศนัย ลำมะนา', 15, 9, 'false', 'enable', NULL, NULL),
(219, '2933', '', 'เด็กชายชัยพัทธ์ มั่งสอน', 15, 9, 'false', 'enable', NULL, NULL),
(220, '2934', '', 'เด็กชายธีรภัทร คำเลิศ', 15, 9, 'false', 'enable', NULL, NULL),
(221, '2935', '', 'เด็กหญิงจันทิมา พิกุล', 15, 9, 'false', 'enable', NULL, NULL),
(222, '2936', '', 'เด็กชายพัชรพรรณ มะลิลา', 15, 9, 'false', 'enable', NULL, NULL),
(223, '2813', '', 'เด็กชายชาญชัย โนนโพธิ์', 17, 10, 'false', 'enable', NULL, NULL),
(224, '2360', '', 'เด็กหญิงศศิธร อินหล้า', 17, 10, 'false', 'enable', NULL, NULL),
(225, '2390', '', 'เด็กชายกนกศักดิ์ พิมพ์วัน', 17, 10, 'false', 'enable', NULL, NULL),
(226, '2393', '', 'เด็กชายณัฎฐศรัณยุ์ อ่อนสะเวียง', 17, 10, 'false', 'enable', NULL, NULL),
(227, '2394', '', 'เด็กชายณัฐดนัย ปานพิมพ์ใหญ่', 17, 10, 'false', 'enable', NULL, NULL),
(228, '2395', '', 'เด็กชายธนากร เล็กมณี', 17, 10, 'false', 'enable', NULL, NULL),
(229, '2400', '', 'เด็กชายหัสดิน ไชยศรี', 17, 10, 'false', 'enable', NULL, NULL),
(230, '2402', '', 'เด็กหญิงขนิษฐา สืบสำราญ', 17, 10, 'false', 'enable', NULL, NULL),
(231, '2404', '', 'เด็กหญิงพรนิภา อินอร่วม', 17, 10, 'false', 'enable', NULL, NULL),
(232, '2406', '', 'เด็กหญิงสุธาวัลย์ สิงห์ทอง', 17, 10, 'false', 'enable', NULL, NULL),
(233, '2471', '', 'เด็กชายจิรศักดิ์ พลแก้ว', 17, 10, 'false', 'enable', NULL, NULL),
(234, '2633', '', 'เด็กชายชัยรวี แจ้ไร่', 17, 10, 'false', 'enable', NULL, NULL),
(235, '2711', '', 'เด็กชายวัณณุวรรธน์ นาคจู', 17, 10, 'false', 'enable', NULL, NULL),
(236, '2722', '', 'เด็กหญิงณิภาพร นครศิลป์', 17, 10, 'false', 'enable', NULL, NULL),
(237, '2728', '', 'เด็กหญิงวันวิสา พันตน', 17, 10, 'false', 'enable', NULL, NULL),
(238, '2399', '', 'เด็กชายสุรยุทธ อินสำอาง', 17, 10, 'false', 'enable', NULL, NULL),
(239, '2778', '', 'เด็กชายเดชา กลุ่มยา', 17, 10, 'false', 'enable', NULL, NULL),
(240, '2871', '', 'เด็กชายจักรรินทร์ วงษ์ที', 17, 10, 'false', 'enable', NULL, NULL),
(241, '2873', '', 'เด็กชายณัฐวุฒิ จำมั่น', 17, 10, 'false', 'enable', NULL, NULL),
(242, '2874', '', 'เด็กชายฐานีย์ กิตติวงศานนท์', 17, 10, 'false', 'enable', NULL, NULL),
(243, '2875', '', 'เด็กชายธนกฤต ชาดำริห์', 17, 10, 'false', 'enable', NULL, NULL),
(244, '2876', '', 'เด็กชายพชรพล ดีจันทึก', 17, 10, 'false', 'enable', NULL, NULL),
(245, '2878', '', 'เด็กหญิงชนิกานต์ สีพรม', 17, 10, 'false', 'enable', NULL, NULL),
(246, '2881', '', 'เด็กหญิงนันธิดา สุพร', 17, 10, 'false', 'enable', NULL, NULL),
(247, '2882', '', 'เด็กหญิงพิมชนก มะลิลา', 17, 10, 'false', 'enable', NULL, NULL),
(248, '2883', '', 'เด็กหญิงพฤกษา อัมระนันท์', 17, 10, 'false', 'enable', NULL, NULL),
(249, '2884', '', 'เด็กหญิงธันยพร เกิดโมลี', 17, 10, 'false', 'enable', NULL, NULL),
(250, '2887', '', 'เด็กหญิงสุทัตตรา สมใจ', 17, 10, 'false', 'enable', NULL, NULL),
(251, '2888', '', 'เด็กหญิงสุมินตรา สิริพรปรีดา', 17, 10, 'false', 'enable', NULL, NULL),
(252, '2889', '', 'เด็กหญิงอริสรา ประจุทรัพย์', 17, 10, 'false', 'enable', NULL, NULL),
(253, '2937', '', 'เด็กชายนัทพงค์ บุญมา', 17, 10, 'false', 'enable', NULL, NULL),
(254, '2938', '', 'เด็กหญิงวาศิฐี งามหลอด', 17, 10, 'false', 'enable', NULL, NULL),
(255, '2262', '', 'เด็กชายวรวิทย์ ขัชรัตน์', 19, 11, 'false', 'enable', NULL, NULL),
(256, '2301', '', 'เด็กชายนัชชา ชัยดิษฐ', 19, 11, 'false', 'enable', NULL, NULL),
(257, '2321', '', 'เด็กหญิงพิมพร ม่วงย้อย', 19, 11, 'false', 'enable', NULL, NULL),
(258, '2349', '', 'เด็กชายคุณากร อุบลหอม', 19, 11, 'false', 'enable', NULL, NULL),
(259, '2351', '', 'เด็กชายวิชิต โพธิปัญยะ', 19, 11, 'false', 'enable', NULL, NULL),
(260, '2352', '', 'เด็กชายสิทธินนท์ วรนาม', 19, 11, 'false', 'enable', NULL, NULL),
(261, '2353', '', 'เด็กชายศักดา โพธิปัญยะ', 19, 11, 'false', 'enable', NULL, NULL),
(262, '2354', '', 'เด็กชายอชิตพล ปานสาลี', 19, 11, 'false', 'enable', NULL, NULL),
(263, '2355', '', 'เด็กหญิงพรสุดา ศรีสง่า', 19, 11, 'false', 'enable', NULL, NULL),
(264, '2356', '', 'เด็กหญิงวัชรินทร์ ศรีสมัย', 19, 11, 'false', 'enable', NULL, NULL),
(265, '2383', '', 'เด็กหญิงอภินันท์ มีทะโจล', 19, 11, 'false', 'enable', NULL, NULL),
(266, '2422', '', 'เด็กหญิงผกาแก้ว อินทร์ประดิษฐ์', 19, 11, 'false', 'enable', NULL, NULL),
(267, '2434', '', 'เด็กชายศุภกร ตราชั่ง', 19, 11, 'false', 'enable', NULL, NULL),
(268, '2598', '', 'เด็กชายวันชัย มีไซ', 19, 11, 'false', 'enable', NULL, NULL),
(269, '2634', '', 'เด็กหญิงกนกวรรณ ชาติวิเศษ', 19, 11, 'false', 'enable', NULL, NULL),
(270, '2657', '', 'เด็กชายสิรภัทร ศรีโคกกรวด', 19, 11, 'false', 'enable', NULL, NULL),
(271, '2433', '', 'เด็กชายอาทิตย์ รังสะอินทร์', 19, 11, 'false', 'enable', NULL, NULL),
(272, '2729', '', 'เด็กหญิงเอื้อมเดือน พันตน', 19, 11, 'false', 'enable', NULL, NULL),
(273, '2769', '', 'เด็กชายนิภัทร์ ลักษณะวารี', 19, 11, 'false', 'enable', NULL, NULL),
(274, '2812', '', 'เด็กชายกฤษณ ปิ่นทอง', 19, 11, 'false', 'enable', NULL, NULL),
(275, '2814', '', 'เด็กชายภูมินธิ์ คำศรีพล', 19, 11, 'false', 'enable', NULL, NULL),
(276, '2815', '', 'เด็กชายสิทธิพล เจริญศรี', 19, 11, 'false', 'enable', NULL, NULL),
(277, '2816', '', 'เด็กชายสุธิพงษ์ ถอยกระโทก', 19, 11, 'false', 'enable', NULL, NULL),
(278, '2818', '', 'เด็กชายอนิรุทธ์ ต้องถนอม', 19, 11, 'false', 'enable', NULL, NULL),
(279, '2820', '', 'เด็กหญิงชลธิชา ต้องถนอม', 19, 11, 'false', 'enable', NULL, NULL),
(280, '2822', '', 'เด็กหญิงอัญชิสา ทองงาม', 19, 11, 'false', 'enable', NULL, NULL),
(281, '2826', '', 'เด็กชายทรงภพ หะริตา', 19, 11, 'false', 'enable', NULL, NULL),
(282, '2837', '', 'เด็กชายธนกฤต ทศพร', 19, 11, 'false', 'enable', NULL, NULL);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `teacher_dbs`
--

CREATE TABLE `teacher_dbs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('ครูอัตราจ้าง','ครูพี่เลี้ยง','ครูผู้ช่วย','ครู','ครูชำนาญการ','ครูชำนาญการพิเศษ','ครูเชี่ยวชาญ','ผู้อำนวยการ') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ครู',
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classroom` int(10) UNSIGNED NOT NULL,
  `status` enum('enable','disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- dump ตาราง `teacher_dbs`
--

INSERT INTO `teacher_dbs` (`id`, `name`, `last_name`, `sex`, `level`, `tel`, `classroom`, `status`, `created_at`, `updated_at`) VALUES
(1, 'นางสาวรุ่งรัตน์', 'วงศ์เกตุ', 'female', 'ครูชำนาญการพิเศษ', '', 1, 'enable', NULL, NULL),
(2, 'นางวิมล', 'พึ่งภพ', 'female', 'ครูชำนาญการพิเศษ', '', 2, 'enable', NULL, NULL),
(3, 'นางสาวพรรณพิลาศ ', 'พลศรี', 'female', 'ครู', '', 3, 'enable', NULL, NULL),
(4, 'นางสาวหนึ่งฤดี', 'ศรีเชียงสา', 'female', 'ครูอัตราจ้าง', '', 3, 'enable', NULL, NULL),
(5, 'นางสาวศิริพร', 'เหลืองอ่อน', 'female', 'ครูชำนาญการพิเศษ', '', 4, 'enable', NULL, NULL),
(6, 'นางสาวจิราภรณ์', 'บูญนาที', 'female', 'ครูอัตราจ้าง', '', 4, 'enable', NULL, NULL),
(7, 'นางฤดีดวง', 'วาดเขียน', 'female', 'ครูชำนาญการพิเศษ', '', 5, 'enable', NULL, NULL),
(8, 'นางสุพรรษา', 'สุขสมบูรณ์', 'female', 'ครูชำนาญการ', '', 5, 'enable', NULL, NULL),
(9, 'นางสาวกิติยาวดี', 'ชนะชัย', 'female', 'ครูผู้ช่วย', '', 6, 'enable', NULL, NULL),
(10, 'นางดวงพร', 'พรมลังกา', 'female', 'ครูพี่เลี้ยง', '', 6, 'enable', NULL, NULL),
(11, 'นางพวงผกา', 'วรรณา', 'female', 'ครูชำนาญการพิเศษ', '', 7, 'enable', NULL, NULL),
(12, 'นางสางโกสินทร์', 'สังกัดกลาง', 'female', 'ครูชำนาญการ', '', 7, 'enable', NULL, NULL),
(13, 'นางพิศมัย', 'ฐิติกุล', 'female', 'ครูชำนาญการพิเศษ', '', 8, 'enable', NULL, NULL),
(14, 'นายนันทวัฒน์', 'ฝากาทอง', 'male', 'ครูอัตราจ้าง', '', 8, 'enable', NULL, NULL),
(15, 'นางสาววิทัศนีย์', 'จันทร์ขาว', 'female', 'ครูชำนาญการพิเศษ', '', 9, 'enable', NULL, NULL),
(16, 'นายสิทธิพล', 'ฉัตรวงศ์ศรี', 'male', 'ครู', '', 9, 'enable', NULL, NULL),
(17, 'นายไชยทัศน์', 'เชื้อฉ่ำหลวง', 'male', 'ครูชำนาญการพิเศษ', '', 10, 'enable', NULL, NULL),
(18, 'นายภาคภูมิ', 'มาศศิริ', 'male', 'ครู', '', 10, 'enable', NULL, NULL),
(19, 'นายอุเทน', 'ศรีสลุง', 'male', 'ครูชำนาญการพิเศษ', '', 11, 'enable', NULL, NULL),
(20, 'นางสาวศิริรัตน์', 'สูนาสวน', 'female', 'ครู', '', 11, 'enable', NULL, NULL),
(21, 'นายวิรุต', 'หนองหงอก', 'male', 'ผู้อำนวยการ', '', 12, 'enable', NULL, NULL);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- dump ตาราง `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@mail.com', NULL, 1, '$2y$10$MXDWq/JLj65UHCxuyIipfOYgZ4oy0kwIx3EHs9hG6fzNg1e6.GVpC', NULL, '2021-07-07 11:28:43', '2021-07-07 11:28:43'),
(2, 'User', 'user@mail.com', NULL, 0, '$2y$10$XVJKrnis83Eo4cuhdG.aFOQ2kH2jHqSWy/yabpfKgaiDyxa0H.OU2', NULL, '2021-07-07 11:28:43', '2021-07-07 11:28:43'),
(3, 'สิทธิพล ฉัตรวงศ์ศรี', 'waiistudio@icloud.com', NULL, 0, '$2y$10$EwkPpdOaXRM1l/jtDC7MM.dwiGKeh1f3bRS4ignWQ6QxXSqEFdtsS', NULL, '2021-07-07 11:39:00', '2021-07-07 11:39:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classroom_dbs`
--
ALTER TABLE `classroom_dbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `student_dbs`
--
ALTER TABLE `student_dbs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_dbs_teacher_advice_foreign` (`teacher_advice`),
  ADD KEY `student_dbs_classroom_foreign` (`classroom`);

--
-- Indexes for table `teacher_dbs`
--
ALTER TABLE `teacher_dbs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_dbs_classroom_foreign` (`classroom`);

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
-- AUTO_INCREMENT for table `classroom_dbs`
--
ALTER TABLE `classroom_dbs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_dbs`
--
ALTER TABLE `student_dbs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `teacher_dbs`
--
ALTER TABLE `teacher_dbs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_dbs`
--
ALTER TABLE `student_dbs`
  ADD CONSTRAINT `student_dbs_classroom_foreign` FOREIGN KEY (`classroom`) REFERENCES `classroom_dbs` (`id`),
  ADD CONSTRAINT `student_dbs_teacher_advice_foreign` FOREIGN KEY (`teacher_advice`) REFERENCES `teacher_dbs` (`id`);

--
-- Constraints for table `teacher_dbs`
--
ALTER TABLE `teacher_dbs`
  ADD CONSTRAINT `teacher_dbs_classroom_foreign` FOREIGN KEY (`classroom`) REFERENCES `classroom_dbs` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
