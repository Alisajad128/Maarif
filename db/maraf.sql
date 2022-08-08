-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 11:15 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maraf`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(254) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `image`, `content`, `date`) VALUES
(23, 'اولین مرکز خدماتی، اداره آسان خدمت افتتاح شد!', NULL, 'افتتاح این مرکز، در پروسه های جمع آوری عواید بلخصوص مالیه دهندگان کوچک و متوسط در تمام پروسه ها شفافیت را به میان می آورد.\r\nچهار شنبه مورخ ۱۲ / ۱۰ / ۱۳۹۷.\r\nاداره آسان خدمت، وزارت مخابرات و تکنالوژی معلوماتی با همکاری و تقاضای وزارت مالیه، سیستم های اخذ و پرداخت مالیات کوچک و متوسط که در نقاط مختلف شهر موقعیت داشت، بعد از ساده سازی پروسه ها در زیر یک چتر بشکل (One-Stop Shop) افتتاح گردید.\r\nاین مرکز توسط محترم داکتر محمد همایون قیومی سرپرست وزیر وزارت مالیه و محترم شهزاد آریوبی وزیر مخابرات و تکنالوژی معلوماتی افتتاح گردید.\r\nدر این مرکز نه تنها مالیات کوچک و متوسط جمع آوری خواهد شد بلکه، کمپلکس ای که در آن بانک، جواز های تجارتی و سکتوری برای سرمایه گذاران و متشبثین سهولت را به میان میآورد. این مرکز واحد از ضیاع وقت و منابع جلوگیری نموده گامی نوین در عرصۀ حکومتداری الکترونیکی بوده و رول مهم را بازی خواهد نمود. در این مراسم محترم داکتر محمد همایون قیومی سرپرست وزیر وزارت مالیه کشور گفت \"هدف ایجاد این مرکز عواید ملی را بشکل عصری و شفاف جمع آوری نموده سهولت را برای سرمایه گذاران فراهم میکند\". همچنان محترم شهزاد آریوبی وزیر مخابرات و تکنالوژی معلوماتی فرمود\" اداره آسان خدمت وزارت مخابرات و تکنالوژی معلوماتی کوشاست که خدمات عامه را به شهروندان ساده و بشکل عصری ارایه نماید و این مرکز یک مثال برای عرضۀ خدمات عامه ای باکیفیت خواهد بود\".\r\nاداره آسان خدمت در ابتداء تمام پروسه های مالیه دهندگان کوچک و متوسط را با تفاهم با ادارات ارزیابی، پروسه های غیر ضروری را حذف و طرح جدید ای که چگونه تماس های مستقیم متقاضیان را با کارمند ذیربط کاهش دهند ترتیب نمودند. مراکز جمع آوری مالیاتی تا این دم پراگنده بوده که این خود ضیاع وقت برای مالیه دهندگان و کارمندان بود. بخاطر رسیدن به این چالشها احساس یک مرکز واحد برای جمع آوری مالیاتی شد که خوشبختانه در مرکز کابل با حمایت تخنیکی و مسلکی اداره آسان خدمت، جمع آوری مالیات کوچک و متوسط در زیر یک چتر بناء شد که با ایجاد چنین مرکز موثریت و شفافیت در عرضۀ خدمات عامه قابل ملاحظه خواهد بود.\r\n', '2022-07-21'),
(24, 'آمر مرکز عرضه خدمات مالیه دهندگان متوسط', NULL, '-  محترمه لطیفه بنت چمن علی مدیرثبت  معلومات . \r\n۴-محترمه انیسه  بنت صفر محمد مدیر توزیع واخذ اظهارنامه\r\nبناءْ ازمقام محترم احترامانه تقاضا میگردد اسامیان محترمه که درفوق ذکر است به حیث مدیر سنجش ابتدایی مالیات توظیف گردد . تابتواند دوسیه  های مودیان محترم را به وقت معینه شان اجراآت وعرضه خدمات بهتر صورت گیرد . درزمینه هرآنچه که هدایت فرمایند  مرعی الاجرامیباشد .                                          \r\n', '2022-07-22'),
(25, 'وزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروند', 'C:/xampp/htdocs/filter/images/1659272636.jpg', 'وزارت معارف حکومت سرپرست طالبان چهارشنبه ( ۳حمل سال ۱۴۰۱ خورشیدی) اعلام کرده است که درِ مکاتب به روی دختران لیسه و متوسطه تا اطلاع بعدی باز نخواهد شد.\r\nدر اطلاعیه‌ای که آنان منتشر کرده، آمده است که هر زمان لباس مکتب دختران مطابق شریعت و فرهنگ افغانی طراحی شود، دروازه‌های مکاتب دخترانه باز خواهد شد.\r\nدر سال‌های گذشته طبق معمول دانش‌آموزان مکتب‌ها اعم دختر و پسر پس از به صدا درآمدن زنگ مکتب در مراسم خاصی به سوی درس‌های شان می‌رفتند؛ اما امروز دختران دانش‌آموز بالاتر از صنف هفتم اجازه ورود به مکتب را دریافت نکردند و به خانه‌های شان بازگشتند.\r\nطالبان در حالی تعطیلی مکتب‌های دخترانه را اعلام می‌کنند که قبلن وعدهی بازگشایی آن را داده بودند.\r\nبسته شدن دروازه‌های مکاتب به روی دختران توسط طالبان واکنش‌های زیادی را به همراه داشته است. دفتر معاونت سازمان ملل در افغانستان (یوناما) از این اقدام گروه طالبان ابراز تأسف و نگرانی کرده است.\r\nهمچنین ویدیویی تکان دهنده‌ای از یک دانش‌آموز دختر در شبکه‌های اجتماعی منتشر شد که در مقابل یک مکتب در شهر کابل اشک می‌ریزد و از طالبان می‌خواهد که دروازه مکاتب را به روی دختران باز کند.\r\nسازمان عفو بین‌الملل هم در تویتی نوشته است که تغییر تصمیم طالبان مبنی بر مسدودماندن مکاتب متوسطه و لیسه دختران نگران کننده است.\r\nتصمیم جدید این گروه مبنی بر منع رفتن دختران به مکاتب، واکنش تند کاربران شبکه‌های اجتماعی را نیز بر انگیخته و آنان از مردم خواسته است که مانع رفتن پسران شان به مکتب شوند.\r\nبتول سید حیدری، روانشناس و استاد دانشگاه در صفحه فیسبوکاش نوشته است: «با اعلام طالبان مبنی بر ممنوعیت بازگشایی مکاتب دختران، از فرستادن فرزندان پسر خود به مدارس خودداری کنید و در این جنگ نابرابر، دختران این مرز و بوم را تنها نگذارید.»\r\nطالبان در شرایطی دست به بستن مکاتب دختران میزند که سران این گروه در حال رایزنی برای کسب مشروعیت ملی و بین المللی است.\r\n', '2022-07-31'),
(29, 'وزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروند', 'C:/xampp/htdocs/filter/images/1659291189.jpg', 'وزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروندوزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروندوزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروندوزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروندوزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروندوزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروندوزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروندوزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروندوزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروندوزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروندوزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروندوزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروندوزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروندوزارت معارف طالبان: دختران تا اطلاع ثانوی مکتب نروند', '2022-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`student_id`) VALUES
(1),
(2),
(90),
(91);

-- --------------------------------------------------------

--
-- Table structure for table `student_infromation`
--

CREATE TABLE `student_infromation` (
  `student_nid` int(11) NOT NULL,
  `student_name` varchar(64) NOT NULL,
  `father_name` varchar(64) NOT NULL,
  `grandfather_name` varchar(64) NOT NULL,
  `dofbrith` date NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_infromation`
--

INSERT INTO `student_infromation` (`student_nid`, `student_name`, `father_name`, `grandfather_name`, `dofbrith`, `photo`) VALUES
(1, 'روح الله', 'عصمت الله', 'عبدالرحیم', '2000-06-09', 'jhdjd'),
(10, 'mohamad', 'ali', 'ali jan', '1398-12-04', '567908989980'),
(22, 'محمدزمان', 'محمد نبی', 'گل حسن', '2022-07-04', 'C:/xampp/htdocs/filter/photo/1658946996.jpg'),
(34, 'rohullah', 'fathername', 'grandfather', '0000-00-00', 'newpath'),
(56, 'روح الله', 'عصمت الله', 'عبدالرحیم', '2022-07-04', 'C:/xampp/htdocs/filter/photo/1658923640.jpg'),
(67, 'name', 'fathername', 'grandfather', '0000-00-00', 'newpath');

-- --------------------------------------------------------

--
-- Table structure for table `tabledata`
--

CREATE TABLE `tabledata` (
  `class` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabledata`
--

INSERT INTO `tabledata` (`class`) VALUES
('0'),
('1'),
('2'),
('3'),
('4'),
('5'),
('6'),
('7'),
('8'),
('9'),
('10'),
('11'),
('12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(64) NOT NULL,
  `passwd` varchar(256) NOT NULL,
  `photo` varchar(256) DEFAULT NULL,
  `privilege` varchar(32) NOT NULL,
  `workplace` varchar(64) DEFAULT 'معارف'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `passwd`, `photo`, `privilege`, `workplace`) VALUES
('احمد مصور', 'Ahmad@123', NULL, 'teacher', 'لیسه_غازی'),
('رحمت الله', 'Mohmmad@123', NULL, 'manager', 'تربیت'),
('روح الله', 'Rohullah@123', 'C:/xampp/htdocs/filter/images/1659291132.jpg', 'officer', ''),
('عارف', 'Ali@123', NULL, 'teacher', 'عبدالرحیم_شهید'),
('علی', 'Ali@123', NULL, 'manager', 'عبدالرحیم_شهید'),
('محمد علی', 'Mohammad!2334$', NULL, 'manager', 'کابل'),
('محمد عمر', 'Mohammad@123', NULL, 'manager', 'لیسه_غازی');

-- --------------------------------------------------------

--
-- Table structure for table `عبدالرحیم_شهید140910`
--

CREATE TABLE `عبدالرحیم_شهید140910` (
  `student_nid` int(11) NOT NULL,
  `interpretation` varchar(32) NOT NULL,
  `islamic_insight` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `geology` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `computer` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `عبدالرحیم_شهید141010`
--

CREATE TABLE `عبدالرحیم_شهید141010` (
  `student_nid` int(11) NOT NULL,
  `interpretation` varchar(32) NOT NULL,
  `islamic_insight` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `geology` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `computer` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `عبدالرحیم_شهید141010`
--

INSERT INTO `عبدالرحیم_شهید141010` (`student_nid`, `interpretation`, `islamic_insight`, `dari`, `pashto`, `english`, `physics`, `chemistry`, `biology`, `math`, `geology`, `history`, `georaphy`, `civic_education`, `computer`, `selective_subject`, `sport`, `reformation`) VALUES
(10, '100', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90'),
(10, '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '9', '78', '78', '89', '78', '78');

-- --------------------------------------------------------

--
-- Table structure for table `عبدالرحیم_شهید141011`
--

CREATE TABLE `عبدالرحیم_شهید141011` (
  `student_nid` int(11) NOT NULL,
  `interpretation` varchar(32) NOT NULL,
  `islamic_insight` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `geology` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `computer` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `عبدالرحیم_شهید141111`
--

CREATE TABLE `عبدالرحیم_شهید141111` (
  `student_nid` int(11) NOT NULL,
  `interpretation` varchar(32) NOT NULL,
  `islamic_insight` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `geology` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `computer` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `عبدالرحیم_شهید141111`
--

INSERT INTO `عبدالرحیم_شهید141111` (`student_nid`, `interpretation`, `islamic_insight`, `dari`, `pashto`, `english`, `physics`, `chemistry`, `biology`, `math`, `geology`, `history`, `georaphy`, `civic_education`, `computer`, `selective_subject`, `sport`, `reformation`) VALUES
(10, '89', '89', '90', '90', '90', '67', '67', '56', '56', '78', '67', '56', '76', '56', '89', '76', '86');

-- --------------------------------------------------------

--
-- Table structure for table `عبدالرحیم_شهید141112`
--

CREATE TABLE `عبدالرحیم_شهید141112` (
  `student_nid` int(11) NOT NULL,
  `interpretation` varchar(32) NOT NULL,
  `islamic_insight` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `geology` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `computer` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `عبدالرحیم_شهید141212`
--

CREATE TABLE `عبدالرحیم_شهید141212` (
  `student_nid` int(11) NOT NULL,
  `interpretation` varchar(32) NOT NULL,
  `islamic_insight` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `geology` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `computer` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `عبدالرحیم_شهید141212`
--

INSERT INTO `عبدالرحیم_شهید141212` (`student_nid`, `interpretation`, `islamic_insight`, `dari`, `pashto`, `english`, `physics`, `chemistry`, `biology`, `math`, `geology`, `history`, `georaphy`, `civic_education`, `computer`, `selective_subject`, `sport`, `reformation`) VALUES
(10, '89', '89', '89', '89', '78', '78', '68', '86', '88', '88', '88', '88', '88', '88', '88', '88', '88');

-- --------------------------------------------------------

--
-- Table structure for table `لیسه_غازی139910`
--

CREATE TABLE `لیسه_غازی139910` (
  `student_nid` int(11) NOT NULL,
  `interpretation` varchar(32) NOT NULL,
  `islamic_insight` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `geology` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `computer` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `لیسه_غازی140011`
--

CREATE TABLE `لیسه_غازی140011` (
  `student_nid` int(11) NOT NULL,
  `interpretation` varchar(32) NOT NULL,
  `islamic_insight` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `geology` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `computer` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `لیسه_غازی140112`
--

CREATE TABLE `لیسه_غازی140112` (
  `student_nid` int(11) NOT NULL,
  `interpretation` varchar(32) NOT NULL,
  `islamic_insight` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `geology` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `computer` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student_infromation`
--
ALTER TABLE `student_infromation`
  ADD PRIMARY KEY (`student_nid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `عبدالرحیم_شهید140910`
--
ALTER TABLE `عبدالرحیم_شهید140910`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `عبدالرحیم_شهید141010`
--
ALTER TABLE `عبدالرحیم_شهید141010`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `عبدالرحیم_شهید141011`
--
ALTER TABLE `عبدالرحیم_شهید141011`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `عبدالرحیم_شهید141111`
--
ALTER TABLE `عبدالرحیم_شهید141111`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `عبدالرحیم_شهید141112`
--
ALTER TABLE `عبدالرحیم_شهید141112`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `عبدالرحیم_شهید141212`
--
ALTER TABLE `عبدالرحیم_شهید141212`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `لیسه_غازی139910`
--
ALTER TABLE `لیسه_غازی139910`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `لیسه_غازی140011`
--
ALTER TABLE `لیسه_غازی140011`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `لیسه_غازی140112`
--
ALTER TABLE `لیسه_غازی140112`
  ADD KEY `student_nid` (`student_nid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `عبدالرحیم_شهید140910`
--
ALTER TABLE `عبدالرحیم_شهید140910`
  ADD CONSTRAINT `عبدالرحیم_شهید140910_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `student_infromation` (`student_nid`);

--
-- Constraints for table `عبدالرحیم_شهید141010`
--
ALTER TABLE `عبدالرحیم_شهید141010`
  ADD CONSTRAINT `عبدالرحیم_شهید141010_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `student_infromation` (`student_nid`);

--
-- Constraints for table `عبدالرحیم_شهید141011`
--
ALTER TABLE `عبدالرحیم_شهید141011`
  ADD CONSTRAINT `عبدالرحیم_شهید141011_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `student_infromation` (`student_nid`);

--
-- Constraints for table `عبدالرحیم_شهید141111`
--
ALTER TABLE `عبدالرحیم_شهید141111`
  ADD CONSTRAINT `عبدالرحیم_شهید141111_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `student_infromation` (`student_nid`);

--
-- Constraints for table `عبدالرحیم_شهید141112`
--
ALTER TABLE `عبدالرحیم_شهید141112`
  ADD CONSTRAINT `عبدالرحیم_شهید141112_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `student_infromation` (`student_nid`);

--
-- Constraints for table `عبدالرحیم_شهید141212`
--
ALTER TABLE `عبدالرحیم_شهید141212`
  ADD CONSTRAINT `عبدالرحیم_شهید141212_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `student_infromation` (`student_nid`);

--
-- Constraints for table `لیسه_غازی139910`
--
ALTER TABLE `لیسه_غازی139910`
  ADD CONSTRAINT `لیسه_غازی139910_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `student_infromation` (`student_nid`);

--
-- Constraints for table `لیسه_غازی140011`
--
ALTER TABLE `لیسه_غازی140011`
  ADD CONSTRAINT `لیسه_غازی140011_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `student_infromation` (`student_nid`);

--
-- Constraints for table `لیسه_غازی140112`
--
ALTER TABLE `لیسه_غازی140112`
  ADD CONSTRAINT `لیسه_غازی140112_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `student_infromation` (`student_nid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
