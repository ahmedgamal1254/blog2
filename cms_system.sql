-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 02:27 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `catogeries`
--

CREATE TABLE `catogeries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `soft_delete` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catogeries`
--

INSERT INTO `catogeries` (`id`, `name`, `description`, `user_id`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, 'Phones', 'this is depart to shop all type of phones', 2, 1, NULL, NULL),
(2, 'computers', 'this is depart to shop all type of computers', 3, 1, NULL, NULL),
(3, 'Shoes', 'this is depart to shop all type of shoes', 2, 0, NULL, '2021-04-15 05:14:31'),
(4, 'clothes', 'this is depart to shop all type of clothes', 2, 0, NULL, '2021-04-15 11:34:17'),
(5, 'milks', 'milk is a part of cheese', 2, 1, '2021-04-15 05:29:01', '2021-04-15 05:29:01'),
(6, 'fantacy', 'this is a catogeries it contain fantacy article', 2, 1, '2021-04-15 18:07:21', '2021-04-15 18:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `soft_delete` int(2) NOT NULL DEFAULT 1,
  `active` int(11) NOT NULL DEFAULT 1,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `email`, `name`, `content`, `soft_delete`, `active`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing', 1, 1, 9, 2, '2021-04-18 23:00:41', '2021-04-18 22:59:54'),
(5, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum, dolor quis.', 1, 1, 9, 2, '2021-04-19 04:29:39', '2021-04-19 04:29:39'),
(6, 'nody@gmail.com', 'nada mohamed', 'orem ipsum dolor sit  orem ipsum dolor sit  love', 1, 1, 9, NULL, '2021-04-19 04:35:29', '2021-04-19 04:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(96) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `soft_delete` int(2) NOT NULL DEFAULT 1,
  `content` text NOT NULL,
  `see` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `username`, `email`, `phone`, `soft_delete`, `content`, `see`, `created_at`, `updated_at`) VALUES
(1, 'ahmed gamal', 'mg72140@gmail.com', '01091536978', 1, 'اريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 10:25:15', NULL),
(2, 'ahmed medo', 'ahmed1002@gmail.com', NULL, 1, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 10:33:22', NULL),
(3, 'ahmed mando', 'ahmed1002@gmail.com', NULL, 1, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 10:33:22', NULL),
(4, 'ahmed gamal', 'mg72140@gmail.com', '01091536978', 1, 'اريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 10:33:22', NULL),
(5, 'ahmed medo', 'ahmed1002@gmail.com', NULL, 1, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 10:33:22', NULL),
(6, 'ahmed mando', 'ahmed1002@gmail.com', NULL, 1, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 10:27:00', NULL),
(7, 'ahmed gamal', 'mg72140@gmail.com', '01091536978', 1, 'اريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(8, 'ahmed medo', 'ahmed1002@gmail.com', NULL, 1, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(9, 'ahmed mando', 'ahmed1002@gmail.com', NULL, 1, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(10, 'ahmed gamal', 'mg72140@gmail.com', '01091536978', 1, 'اريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(11, 'ahmed medo', 'ahmed1002@gmail.com', NULL, 1, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(12, 'ahmed mando', 'ahmed1002@gmail.com', NULL, 1, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(13, 'ahmed gamal', 'mg72140@gmail.com', '01091536978', 1, 'اريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(14, 'ahmed medo', 'ahmed1002@gmail.com', NULL, 1, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(15, 'ahmed mando', 'ahmed1002@gmail.com', NULL, 1, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(16, 'ahmed gamal', 'mg72140@gmail.com', '01091536978', 1, 'اريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(17, 'ahmed medo', 'ahmed1002@gmail.com', NULL, 1, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(18, 'ahmed mando', 'ahmed1002@gmail.com', NULL, 1, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(19, 'ahmed gamal', 'mg72140@gmail.com', '01091536978', 1, 'اريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(20, 'ahmed medo', 'ahmed1002@gmail.com', NULL, 1, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(21, 'ahmed mando', 'ahmed1002@gmail.com', NULL, 0, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', '2021-04-14 10:45:24'),
(22, 'ahmed gamal', 'mg72140@gmail.com', '01091536978', 1, 'اريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(23, 'ahmed medo', 'ahmed1002@gmail.com', NULL, 0, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', '2021-04-14 10:45:10'),
(24, 'ahmed mando', 'ahmed1002@gmail.com', NULL, 0, 'ريد انا اسجل فى موقعكم اعلم انا لديكم برمجيات لتصميم المواقع ', 1, '2021-04-17 09:41:22', NULL),
(25, 'tarek hamed', 'tarek25@gmail.com', '01092585636', 1, 'i will send this message to say to you this site is very fantastuc', 1, '2021-04-17 12:25:38', '2021-04-17 12:23:50'),
(26, 'ahmedgamal', 'ag1088768@gmail.com', '01023056502', 1, 'ahmed love erp system and i love do it', 1, '2021-04-19 13:31:03', '2021-04-19 11:01:57'),
(27, 'ahgamal39', 'ag12@gmail.com', '01023056502', 1, 'ahmed contact_us', 1, '2021-04-19 13:31:03', '2021-04-19 11:04:32'),
(28, 'ahgamal39', 'canetu@endrix.org', '010230565025', 1, 'messi  lave me', 1, '2021-04-19 13:31:03', '2021-04-19 11:25:29'),
(29, 'ahgamal39', 'ahgamal30094@gmail.com', '01023056502', 1, 'n,,mma  ananan', 1, '2021-04-19 13:31:03', '2021-04-19 11:26:37'),
(30, 'ahmedgamal', 'mg721400@gmail.com', '01023056502', 1, 'ahmed gamal', 1, '2021-04-19 17:19:52', '2021-04-19 15:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `soft_delete` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `title`, `user_id`, `created_at`, `updated_at`, `soft_delete`) VALUES
(1, 'سياسة الخصوصية', '<div class=\'text-center\'>\r\n<h1>سياسة الخصوصية لـ كورة جول</h1>\r\n    <p>في shoot ، يمكن الوصول إليه من <a href=\"http://www.shoot.com\">shoot.com</a> ، أحد أولوياتنا الرئيسية\r\n    هي خصوصية زوارنا. تحتوي وثيقة سياسة الخصوصية هذه على أنواع\r\n    المعلومات التي يتم جمعها وتسجيلها بواسطة shoot وكيف نستخدمها.</p>\r\n\r\n    <p> إذا كانت لديك أسئلة إضافية أو تحتاج إلى مزيد من المعلومات حول سياسة الخصوصية الخاصة بنا ، فلا تتردد في الاتصال بنا يمكنك الاتصال بنا عن طريق الضغط على الرابط التالى <a href=\"contact.php\" target=\"_blank\" rel=\"noopener noreferrer\">اتصل بنا</a> .</p>\r\n\r\n    <p>تنطبق سياسة الخصوصية هذه فقط على أنشطتنا عبر الإنترنت وهي صالحة للزوار\r\n        إلى موقعنا على الإنترنت فيما يتعلق بالمعلومات التي شاركوها و / أو يجمعونها في shoot\r\n        لا تنطبق هذه السياسة على أي معلومات يتم جمعها في وضع عدم الاتصال أو عبر قنوات أخرى غير موقع الويب هذا. تم إنشاء سياسة الخصوصية الخاصة بنا بمساعدة <a href=\"https://www.privacypolicygenerator.info\">\r\n        منشئ سياسة الخصوصية</a> و ال<a href=\"https://www.privacypolicyonline.com/privacy-policy-generator/\">\r\n        مولد سياسة الخصوصية المجاني</a>\r\n    </p>\r\n\r\n    <h2>موافقة</h2>\r\n    <p>باستخدام موقعنا ، فإنك بذلك توافق على سياسة الخصوصية الخاصة بنا وتوافق على شروطها.</p>\r\n\r\n    <h2>المعلومات التي نجمعها</h2>\r\n    <p>سيتم توضيح المعلومات الشخصية التي يُطلب منك تقديمها ،\r\n     وأسباب مطالبتك بتقديمها ، في الوقت الذي نطلب منك فيه تقديم معلوماتك الشخصية.</p>\r\n    <p>إذا اتصلت بنا مباشرة ، فقد نتلقى معلومات إضافية عنك مثل اسمك وعنوان بريدك الإلكتروني\r\n    ورقم هاتفك ومحتويات الرسالة و / أو المرفقات التي قد ترسلها إلينا وأي معلومات أخرى قد تختار تقديمها</p>\r\n\r\n    <h2>كيف نستخدم معلوماتك</h2>\r\n    <p>نستخدم المعلومات التي نجمعها بطرق مختلفة ، بما في ذلك:</p>\r\n\r\n    <ul>\r\n        <li>توفير وتشغيل وصيانة موقعنا</li>\r\n        <li>تحسين وتخصيص وتوسيع موقعنا.</li>\r\n        <li>فهم وتحليل كيفية استخدامك لموقعنا</li>\r\n        <li>تطوير منتجات وخدمات وميزات ووظائف جديدة</li>\r\n        <li>التواصل معك إما بشكل مباشر أو من خلال أحد شركائنا ،\r\n        بما في ذلك خدمة العملاء ، لتزويدك بالتحديثات والمعلومات الأخرى المتعلقة بموقع الويب ،\r\n        ولأغراض التسويق والترويج</li>\r\n        <li>أرسل لك رسائل البريد الإلكتروني</li>\r\n        <li>البحث عن الاحتيال ومنعه</li>\r\n    </ul>\r\n\r\n    <h2>ملفات الدخول</h2>\r\n\r\n    <p>تتبع shoot الإجراء القياسي لاستخدام ملفات السجل. تسجل هذه الملفات الزوار عندما يزورون مواقع الويب.\r\n    تقوم جميع شركات الاستضافة بذلك وجزء من تحليلات خدمات الاستضافة. المعلومات التي تم جمعها بواسطة ملفات السجل\r\n    تشمل عناوين بروتوكول الإنترنت (IP) ، ونوع المتصفح ، ومزود خدمة الإنترنت (ISP) ، وختم التاريخ والوقت ، والإحالة / الخروج\r\n    الصفحات ، وربما عدد النقرات. هذه ليست مرتبطة بأي معلومات لتحديد الهوية الشخصية.\r\n    الغرض من المعلومات هو تحليل الاتجاهات وإدارة الموقع وتتبع حركة المستخدمين على الموقع ،\r\n    وجمع المعلومات الديموغرافية.</p>\r\n\r\n\r\n    <h2>كوكيز دبل كليك DoubleClick DART</h2>\r\n    <p>جوجل هو أحد البائعين الخارجيين على موقعنا. كما تستخدم ملفات تعريف الارتباط ، المعروفة باسم ملفات تعريف الارتباط DART ،\r\n    لعرض الإعلانات على زوار موقعنا بناءً على زيارتهم لموقع www.website.com والمواقع الأخرى على الإنترنت.\r\n    ومع ذلك ، قد يختار الزوار رفض استخدام ملفات تعريف الارتباط DART عن طريق زيارة إعلانات Google وشبكة المحتوى\r\n    سياسة الخصوصية على عنوان URL التالي -\r\n    <a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p>\r\n    <h2>شركاء الإعلانات لدينا</h2>\r\n    <p>قد يستخدم بعض المعلنين على موقعنا ملفات تعريف الارتباط وإشارات الويب. شركاء الإعلان لدينا\r\n    هي واردة ادناه. يمتلك كل من شركائنا الإعلانيين سياسة الخصوصية الخاصة بهم\r\n    سياسات بيانات المستخدم. لتسهيل الوصول ، قمنا بالربط التشعبي بسياسات الخصوصية الخاصة بهم أدناه.</p>\r\n\r\n    <ul>\r\n        <li>\r\n            <p>Google</p>\r\n            <p><a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p>\r\n        </li>\r\n    </ul>\r\n\r\n    <h2>سياسات خصوصية شركاء الإعلانات</h2>\r\n    <P>يمكنك الرجوع إلى هذه القائمة للعثور على سياسة الخصوصية لكل من شركاء الإعلان في shoot.</p>\r\n    <p>تستخدم خوادم الإعلانات الخارجية أو شبكات الإعلانات تقنيات مثل ملفات تعريف الارتباط أو جافا سكريبت أو إشارات الويب المستخدمة في ملفات\r\n    الإعلانات والروابط ذات الصلة التي تظهر على shoot ، والتي يتم إرسالها مباشرة إلى متصفح المستخدمين. هم تلقائيا\r\n    تلقي عنوان IP الخاص بك عند حدوث ذلك. تستخدم هذه التقنيات لقياس فعالية\r\n    حملاتهم الإعلانية و / أو لتخصيص محتوى الإعلان الذي تراه على مواقع الويب التي تزورها.</p>\r\n    <p>لاحظ أن shoot ليس لديه حق الوصول أو التحكم في ملفات تعريف الارتباط هذه التي يستخدمها معلنون من الجهات الخارجية.</p>\r\n\r\n    <h2>سياسات خصوصية الطرف الثالث</h2>\r\n    <p>لا تنطبق سياسة الخصوصية الخاصة بـ shoot على المعلنين أو المواقع الإلكترونية الأخرى. وهكذا فإننا ننصح\r\n    يمكنك الرجوع إلى سياسات الخصوصية الخاصة بخوادم إعلانات الجهات الخارجية للحصول على معلومات أكثر تفصيلاً.\r\n    قد يتضمن ممارساتهم وتعليماتهم حول كيفية إلغاء الاشتراك في خيارات معينة.</p>\r\n    <p>يمكنك اختيار تعطيل ملفات تعريف الارتباط من خلال خيارات المتصفح الفردية الخاصة بك. لمعرفة المزيد\r\n    معلومات مفصلة حول إدارة ملفات تعريف الارتباط مع متصفحات ويب محددة ،\r\n    يمكن العثور عليها في مواقع الويب الخاصة بالمتصفحات.</p>\r\n\r\n    <h2>حقوق خصوصية CCPA (لا تبيع معلوماتي الشخصية)</h2>\r\n\r\n    <p>بموجب قانون حماية خصوصية المستهلك في كاليفورنيا ، من بين حقوق أخرى ، يحق للمستهلكين في كاليفورنيا:</p>\r\n    <p>اطلب أن تكشف الشركة التي تجمع البيانات الشخصية للمستهلك عن الفئات والمحددة\r\n        أجزاء من البيانات الشخصية التي جمعتها شركة عن المستهلكين.</p>\r\n    <p>اطلب من شركة ما حذف أي بيانات شخصية عن المستهلك جمعتها الشركة.</p>\r\n    <p>اطلب من الشركة التي تبيع البيانات الشخصية للمستهلك ألا تبيع البيانات الشخصية للمستهلك.</p>\r\n    <p>إذا قمت بتقديم طلب ، فلدينا شهر واحد للرد عليك. إذا كنت ترغب في ممارسة الرياضة\r\n    أي من هذه الحقوق ، يرجى الاتصال بنا.</p>\r\n\r\n    <h2>حقوق حماية بيانات القانون العام لحماية البيانات</h2>\r\n\r\n    <p>نود التأكد من أنك على دراية كاملة بجميع حقوق حماية البيانات الخاصة بك. يحق لكل مستخدم ما يلي:</p>\r\n    <p>الحق في الوصول - يحق لك طلب نسخ من بياناتك الشخصية. قد نقوم بشحن\r\n    لك رسوم رمزية لهذه الخدمة.</p>\r\n    <p>الحق في التصحيح - يحق لك طلب تصحيح أي معلومات\r\n    تعتقد أنه غير دقيق. لديك أيضًا الحق في طلب إكمال المعلومات التي تعتقد أنها غير كاملة.</p>\r\n    <p>الحق في المسح - لك الحق في طلب مسح بياناتك الشخصية ،\r\n    تحت ظروف معينة.</p>\r\n    <p>الحق في تقييد المعالجة - يحق لك طلب تقييد معالجة\r\n    بياناتك الشخصية ، في ظل ظروف معينة.</p>\r\n    <p>الحق في الاعتراض على المعالجة - يحق لك الاعتراض على معالجتنا الخاصة بك\r\n    البيانات الشخصية ، في ظل ظروف معينة.</p>\r\n    <p>الحق في نقل البيانات - يحق لك طلب نقل البيانات\r\n    التي جمعناها إلى منظمة أخرى ، أو إليك مباشرةً ، في ظل ظروف معينة.</p>\r\n    <p>إذا قمت بتقديم طلب ، فلدينا شهر واحد للرد عليك. إذا كنت ترغب في ذلك\r\n    ممارسة أي من هذه الحقوق ، يرجى الاتصال بنا.</p>\r\n\r\n    <h2>معلومات الأطفال</h2>\r\n\r\n    <p>جزء آخر من أولوياتنا هو إضافة الحماية لـ\r\n    الأطفال أثناء استخدام الإنترنت. نشجع الآباء والأوصياء على المراقبة ،\r\n    المشاركة في و / أو مراقبة وتوجيه نشاطهم عبر الإنترنت.</p>\r\n\r\n    <p>لا تجمع koralife عن قصد أي معلومات تعريف شخصية من الأطفال\r\n    تحت سن 13 عامًا. إذا كنت تعتقد أن طفلك قدم هذا النوع من المعلومات على موقعنا ،\r\n    نحن نشجعك بشدة على الاتصال بنا على الفور وسنبذل قصارى جهدنا للإزالة على الفور\r\n    هذه المعلومات من سجلاتنا.</p>\r\n</div>', 'سياسة الخصوصية', 2, '2021-04-14 15:22:39', '2021-04-14 15:33:59', 1),
(2, 'من نحن', '<h1 dir=\"rtl\">عن موقعنا</h1><div dir=\"rtl\">&nbsp;أطلقنا موقع تمريرة ليكون بوابة رياضية متكاملة لمعرفة كل الاخبار الحصرية وذلك تبعا لبيئة عمل محترفة ومجموعة من المراسلين والمحررين متخصصين في المجال الرياضي. فى جميع انحاء الوطن العربى لتغطية جميع الاخبار الرياضية جول العالم ومتابعة كل الدوريات الاوربية والعربية والمحلية <br>&nbsp;يعمل موقع تمريرة على مدار الساعة لنقل احدث الانشطة الرياضية بشكل مستمر من قلب الحدث بمصداقية ومصادر مضمونة وشفافية دائمة، مع انشاء قيمة مضافة للمحتوى المقروء وانشاء قاعدة بيانات لأهم البطولات والفرق واللاعبين واهم المباريات واحدث الصفقات على المستوى المحلي والافريقى والعربي والعالمي. <br>يتضمن موقع تمريرة على العديد من المميزات التي تهم محبى وعشاق الساحرة المستديرة في مصر وافريقيا الوطن العربى، .ويهتم الموقع بالمسابقات المحلية مثل الدورى والكاس بشكل خاص والكرة العربية والافريقية والعالمية بشكل عام. <br>&nbsp;ويهتم موقع تمريرة على مسابقات الكرة المصرية، وعلى رأسها الدورى المصرى دورى #WE، وكاس السوبر المصرى وكاس مصر ومشاركات الأندية المحلية في المسابقات القارية والعربية مثل دوري أبطال آفريقيا والكنفدرالية الافريقيةوالبطولة العربية. ويهتم الموقع ايضا بالمسابقات العالمية مثل الدورى الانجليزى - الدورى الاسبانى - الدورى الفرنسى و الدورى الالمانى ودورى ابطال اوربا ودورى ابطال اسيا وكاس العالم وكاس الامم الافريقية والدوري الأوروبي، ودوري الأمم الأوروبية الخاصة بالمنتخبات ... <br>&nbsp;يتميز موقع تمريرة بسـرعة نقل الخبر والأحداث الرياضية الكبرى حول العالم ، كما يهتم بانتاج التقارير الملائمة للأحداث الرياضية المتواجدة على الساحة الرياضية يهتم موقع تمريرة ايضا ب متابعة اهم الانتقالات اللتى تتم على الساحة الاوربية والعربية والمحلية مثل صفقات الاهلى والزمالك وريال مدريد وبرشلونة ولييفربول والسيتى وسوف تجد هذا فى صفحة الانتقالات لروية هذه صفحة شاهد <br><a href=\"market.php\">من هنا</a><br> هدفنا و شعارنا<br> أن يكون موقع تمريرة هي الموقع الرياضى الأول والأفضل في الشرق الأوسط&nbsp;</div>', 'من نحن', 2, '2021-04-14 20:10:58', '2021-04-19 21:15:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `soft_delete` int(2) NOT NULL DEFAULT 1,
  `cat_id` int(11) NOT NULL,
  `users_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `img`, `tags`, `created_at`, `updated_at`, `soft_delete`, `cat_id`, `users_id`) VALUES
(5, 'zamalek is batal champions', '<div>ahmed</div>', 'images/a29YsyRF6EezMxGsXzoajWlzR8SA8oDAvp1J8Ygk.jpg', 'zsc,zamalek,botola', '2021-04-15 21:04:09', '2021-04-15 19:04:09', 1, 6, 2),
(9, 'zamalek is batal league', '<div>ahmed</div><div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, vero, obcaecati, aut, error quam sapiente nemo saepe quibusdam sit excepturi nam quia corporis eligendi eos magni recusandae laborum minus inventore? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, tenetur natus doloremque laborum quos iste ipsum rerum obcaecati impedit odit illo dolorum ab tempora nihil dicta earum fugiat. Temporibus, voluptatibus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, doloribus, dolorem iusto blanditiis unde eius illum consequuntur neque dicta incidunt ullam ea hic porro optio ratione repellat perspiciatis. Enim, iure!</div><blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.Someone famous in <em>Source Title</em></blockquote><div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, nostrum, aliquid, animi, ut quas placeat totam sunt tempora commodi nihil ullam alias modi dicta saepe minima ab quo voluptatem obcaecati? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum, dolor quis. Sunt, ut, explicabo, aliquam tenetur ratione tempore quidem voluptates cupiditate voluptas illo saepe quaerat numquam recusandae? Qui, necessitatibus, est!</div>', 'images/krhvGwTQOAe3dEnMgnMtHUcBaNKCTCCKi60ZU8cr.jpg', 'zsc,zamalek,botola', '2021-04-13 21:04:09', '2021-04-19 21:24:59', 1, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `num` tinyint(4) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `num`, `name`) VALUES
(1, 1, 'admin'),
(2, 2, 'manger'),
(3, 3, 'writer'),
(4, 4, 'reader');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(60) NOT NULL,
  `img` varchar(255) NOT NULL,
  `active` tinyint(2) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `img`, `active`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'theme1', 'theme1.jpg', 0, 'تم تصميم القالب الافتراضي لعام 2020 للاستفادة الكاملة من مرونة محرر المكوّنات. تتمتع المؤسسات والشركات بالقدرة على إنشاء صفحات هبوط ديناميكية ذات تخطيطات لا نهاية لها باستخدام مكوّنات المجموعة والعمود. كما أن عمود المحتوى المركزي وصياغة الحروف الدقيقة تجعله مثاليًا للمدونات التقليدية. تمنحك أنماط المحرر الكاملة فكرة جيدة عن الشكل الذي سيبدو عليه المحتوى الخاص بك، حتى قبل النشر. يمكنك منح موقعك لمسة شخصية عن طريق تغيير ألوان الخلفية ولونك المخصص في أداة التخصيص. يتم احتساب ألوان جميع العناصر على موقعك تلقائيًا استنادًا إلى الألوان التي تختارها، مما يضمن تباينًا عاليًا في الألوان التي يشاهدها زوّارك.', 2, NULL, '2021-04-19 21:14:31'),
(3, 'theme2', 'theme2.jpg', 1, 'قالبنا الافتراضي لعام 2019 صُمم ليعرض قوة مُحرر المكوّنات. فهو يتميز بأنماط مخصصة لجميع المكوّنات الافتراضية، وقد تم تصميمه بحيثما ستراه في المحرر ستشاهده على موقعك الإلكتروني بالواجهة. تم تصميم Twenty Nineteen بحيث تكون قابلة للتكيف مع نطاق واسع من مواقع الويب، سواءً كنت تدير مدونة صور أو تطلق نشاطًا تجاريًا جديدًا أو تدعم مؤسسة غير ربحية. تتميز بالمساحة البيضاء الواسعة والعناوين الحديثة على غرار sans-serif مقترنة بنصوص النص الكلاسيكي، لقد تمّ تصميم القالب ليبدو جميلاً على جميع أحجام الشاشات.', 2, NULL, '2021-04-19 21:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(2) NOT NULL DEFAULT 0,
  `admin` tinyint(2) NOT NULL DEFAULT 0,
  `role_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `active`, `admin`, `role_id`, `created_at`, `updated_at`) VALUES
(2, 'ahmed gamal', 'ag12@gmail.com', NULL, '$2y$10$Dz05qkH3KI/pen1hc5lF9.05DGof/EjS9pd5g0LMUgwsaC4Nt/./6', NULL, 1, 1, 1, '2021-04-12 18:23:04', '2021-04-15 06:11:26'),
(3, 'tarek hamed', 'admin@gmail.com', NULL, '$2y$10$QDf2AdnNgCXamhAjnX8CkOapoLjr30ha2fJhYkVZ99W4KDkhIA5NS', NULL, 1, 1, 2, '2021-04-13 05:38:24', '2021-04-15 06:11:14'),
(4, 'ahmed gamal', 'ahmed205@gmail.com', NULL, '$2y$10$CNTMDAL6DY1ZurcNYJxdEOnL5vd9elLlZIhQrzYtlbxcgdRmQMPVa', NULL, 1, 1, NULL, '2021-04-15 06:24:53', '2021-04-15 06:58:08'),
(6, 'ahmed gamal', 'ag12444@gmail.com', NULL, '$2y$10$kkp9sX9NDDdJxvHsZRnFr.QfPjwlTSJEUY8LsP/z2MjYsp1Vko9x6', NULL, 0, 0, 1, '2021-04-15 06:54:09', '2021-04-15 10:52:00'),
(7, 'nada mohamed', 'nada12@gmail.com', NULL, '$2y$10$rMdtB60xHVDvlouPMoBO6eu2aVssiQ.DGsMIyrDhkL9uJzHonGZwq', NULL, 0, 0, 3, '2021-04-15 07:00:39', '2021-04-15 10:52:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catogeries`
--
ALTER TABLE `catogeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_users` (`users_id`),
  ADD KEY `posts_catogries` (`cat_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catogeries`
--
ALTER TABLE `catogeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catogeries`
--
ALTER TABLE `catogeries`
  ADD CONSTRAINT `catogeries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_catogries` FOREIGN KEY (`cat_id`) REFERENCES `catogeries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `themes`
--
ALTER TABLE `themes`
  ADD CONSTRAINT `themes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
