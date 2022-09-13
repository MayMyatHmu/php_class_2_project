-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2022 at 05:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `one_project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(2, 'First Category', '2022-08-07 16:53:01', '0000-00-00 00:00:00'),
(3, 'Second Category', '2022-08-07 16:53:15', '0000-00-00 00:00:00'),
(4, 'Third Category', '2022-08-07 16:59:09', '0000-00-00 00:00:00'),
(8, 'Fouth category', '2022-08-07 17:22:22', '0000-00-00 00:00:00'),
(9, 'Fifth Category', '2022-08-07 17:25:55', '0000-00-00 00:00:00'),
(10, 'Sixth Category', '2022-08-07 17:26:05', '0000-00-00 00:00:00'),
(11, 'Sixth Category', '2022-08-07 17:32:23', '0000-00-00 00:00:00'),
(12, 'Fifth Category', '2022-08-07 17:32:50', '0000-00-00 00:00:00'),
(13, 'First Category Update', '2022-08-07 17:36:30', '0000-00-00 00:00:00'),
(14, 'First Category Update', '2022-08-15 05:29:17', '0000-00-00 00:00:00'),
(15, 'Second Category', '2022-08-15 05:29:25', '0000-00-00 00:00:00'),
(16, 'Category 16-8-2022', '2022-08-16 04:12:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 10, 6, 'အလွမ်းတေနဲ့ ရှင်သန်နေရတဲ့ ဘဝက မချိုမြိန်လှပါဘူး ကွယ်\r\n', '2022-08-21 01:07:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_comments`
--

CREATE TABLE `gallery_comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `image_id` tinyint(6) NOT NULL,
  `user_id` tinyint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery_comments`
--

INSERT INTO `gallery_comments` (`id`, `comment`, `image_id`, `user_id`, `created_at`) VALUES
(16, 'ကျောင်းပိတ်တော့ လွမ်းမိတယ် ခလေးတေအားလုံးကို \r\nနောက်ဆို ကျောင်းမပိတ်ခြင်းတော့ဘူး ကွာ', 27, 10, '2022-08-20 02:20:52'),
(17, 'သတိရတယ် အဲ့နေ့ရက်တေကို မေ့မယ်မထင်ဘူး နောက်ဆုံးထွက်သက်အထိ ', 26, 10, '2022-08-20 02:21:44'),
(18, 'ဘယ်နေ့က ဥပိန်သွားခဲ့တာလဲ မမှတ်မိတော့ဘူး\r\n', 26, 16, '2022-08-20 02:31:35'),
(19, 'နောက်တခါ ကျောင်းမပိတ်တော့ဘူးနော် ', 27, 11, '2022-08-20 03:20:40'),
(20, '၆-၈-၂၀၂၂ စနေနေ့က သွားခဲ့တာ ထင်တယ်', 26, 11, '2022-08-20 03:21:32'),
(21, 'Where are?', 32, 0, '2022-08-28 22:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `file_name`, `description`, `created_at`) VALUES
(26, 'edit_1.jpg', 'TheaLay', '2022-08-19 09:17:57'),
(27, 'edit_3.jpg', 'hello', '2022-08-20 06:04:44'),
(28, 'edit_4.jpg', 'pagination test', '2022-08-20 15:56:51'),
(32, 'edit_1.jpg', 'သတိရတယ်နေ့တေကို လက်ချိုးရေကြည့်မိတယ်', '2022-08-20 16:14:12'),
(33, 'edit_2.jpg', '[Forwarded from Aung MyoKhaing]\r\nသိချင်းထဲမှာသုံးသွားတဲ့ phrasal verb \r\nlet sb down တစုံတယောက်ကို ချန်ခဲ့ပါ / ထားခဲ့ပါ\r\nthrow sb out တစုံတယောက်ကို ပစ်ခဲ့ပါ\r\ncut sb down တစုံတယောက်ကို ဖြတ်ခဲ့ပါ / ထားခဲ့ပါ', '2022-08-20 16:16:16'),
(34, 'edit_1.jpg', '[Forwarded from Aung MyoKhaing]\r\nသိချင်းထဲမှာသုံးသွားတဲ့ phrasal verb \r\nlet sb down တစုံတယောက်ကို ချန်ခဲ့ပါ / ထားခဲ့ပါ\r\nthrow sb out တစုံတယောက်ကို ပစ်ခဲ့ပါ\r\ncut sb down တစုံတယောက်ကို ဖြတ်ခဲ့ပါ / ထားခဲ့ပါ', '2022-08-20 16:16:31'),
(35, 'edit_3.jpg', '[Forwarded from Aung MyoKhaing]\r\nသိချင်းထဲမှာသုံးသွားတဲ့ phrasal verb \r\nlet sb down တစုံတယောက်ကို ချန်ခဲ့ပါ / ထားခဲ့ပါ\r\nthrow sb out တစုံတယောက်ကို ပစ်ခဲ့ပါ\r\ncut sb down တစုံတယောက်ကို ဖြတ်ခဲ့ပါ / ထားခဲ့ပါ', '2022-08-20 16:16:39'),
(36, 'edit_4.jpg', '[Forwarded from Aung MyoKhaing]\r\nသိချင်းထဲမှာသုံးသွားတဲ့ phrasal verb \r\nlet sb down တစုံတယောက်ကို ချန်ခဲ့ပါ / ထားခဲ့ပါ\r\nthrow sb out တစုံတယောက်ကို ပစ်ခဲ့ပါ\r\ncut sb down တစုံတယောက်ကို ဖြတ်ခဲ့ပါ / ထားခဲ့ပါ', '2022-08-20 16:16:48'),
(37, 'edit_3.jpg', '[Forwarded from Aung MyoKhaing]\r\nသိချင်းထဲမှာသုံးသွားတဲ့ phrasal verb \r\nlet sb down တစုံတယောက်ကို ချန်ခဲ့ပါ / ထားခဲ့ပါ\r\nthrow sb out တစုံတယောက်ကို ပစ်ခဲ့ပါ\r\ncut sb down တစုံတယောက်ကို ဖြတ်ခဲ့ပါ / ထားခဲ့ပါ', '2022-08-20 16:16:56'),
(38, 'edit_4.jpg', '[Forwarded from Aung MyoKhaing]\r\nသိချင်းထဲမှာသုံးသွားတဲ့ phrasal verb \r\nlet sb down တစုံတယောက်ကို ချန်ခဲ့ပါ / ထားခဲ့ပါ\r\nthrow sb out တစုံတယောက်ကို ပစ်ခဲ့ပါ\r\ncut sb down တစုံတယောက်ကို ဖြတ်ခဲ့ပါ / ထားခဲ့ပါ', '2022-08-20 16:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `description`, `file_name`, `created_at`, `updated_at`) VALUES
(1, 11, 3, 'First post', 'IT Empire technologies', 'photo_2022-08-12_20-18-20.jpg', '2022-08-12 14:23:41', '0000-00-00 00:00:00'),
(2, 11, 3, 'Second post', 'IT Empire Post', 'photo_2022-08-12_20-19-51.jpg', '2022-08-12 14:23:47', '0000-00-00 00:00:00'),
(3, 11, 4, 'Third Post', 'Myanmar', 'photo_2022-08-12_20-19-01.jpg', '2022-08-12 14:21:39', '0000-00-00 00:00:00'),
(4, 11, 8, 'Fourth Post', 'ITEmpireTechnologies', 'photo_2022-08-12_20-18-42.jpg', '2022-08-12 14:23:22', '0000-00-00 00:00:00'),
(5, 11, 9, 'First Post', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', 'photo_2022-08-12_20-20-54.jpg', '2022-08-12 15:32:43', '0000-00-00 00:00:00'),
(6, 11, 4, 'ဘယ်ဆီရောက်နေပီးလဲခလေးလေးရေ', 'ချင်းတောင်တန်းတေရဲ့ နောက်ကွယ်မှာ မင်းလေး အဆင်မှ ပြေရဲ့လား ငါတို့ မတွေ့ရတော့တာ ဆယ်စု နှစ် တခု ကျော်ခဲ့ပြိးနော် တနေ့မှ မမေ့မရဘူးလို့ ပြောရင် ညာရာကြမှာမို့ မေ့နေတဲ့အချိန်တေတော့ ကို့မှာ ရှိပါတယ် ဒါမဲ့ အချိန်အများစုကတော့ မေ့လို့မရတဲ့ အတိတ်က အတူရှိခဲ့တဲ့ နေ့ရက်တွေကို လွမ်းဆွတ်ရင်နဲ့ မွန်းကြပ်နေရသူတယောက်ပါ - မြင်တွေ့ခွင့်မရတော့တဲ့ မင်းလေး အဆင်ပြေဖို့ ကို့ဆုတောင်းရင်နဲ့ အိပ်မပျော်တဲ့ညတေ က ဆယ်စုနှစ်တစ်စု မက ကြာခဲ့ပါပြီး ချင်းတောင်တန်းတေရဲ့ နောက်ကွယ်မှာ မင်းလေး ရှိသေးလား မရှိတော့ဘူးလား ကို့သေချာမသိတော့ပါဘူး နည်းပညာတေအရမ်းတိုးတက်နေပေမဲ့ အဲ့နည်းပညာတေက မင်းလေးနဲ့ အဆက်သွယ်ရဖို့ အခု ကို့အတွက် အကူညီမဖြစ်ပါဘူး - ကို့မျော်နေမှာ သိသားနဲ့ ပြန်မလာတော့တာ မင်းကို့ကို မချစ်လို့တော့ ဟုတ်မယ်မထင်ပါဘူး မင်းလေး ကို့ကို အရမ်းချစ်တာ ကို့ထက်မက မင်းလေးက ပိုသိပါတယ် - ပြန်လာပါလို့တော့ မခေါ်တော့ ဘူး - ပြန်မခေါ်ပေမဲ့ ကို့မျော်လင့်ချက်တေကတော့ အခုထိ အသက်ရှင်နေတုန်းပါ - သတိရလွမ်းဆွတ်ခြင်းများစွာဖြင့် တချိန်က ကိုကို \"ဟိဟိ\" လျောက်ရေးတာ မိုက်လား ', 'images_1.jpg', '2022-08-21 04:01:30', '0000-00-00 00:00:00'),
(7, 10, 8, 'ဘယ်ဆီမှာများလဲ ဘယ်ရင်ခွင်လေးထဲ ', 'ချင်းတောင်တန်းတေရဲ့ နောက်ကွယ်မှာ မင်းလေး အဆင်မှ ပြေရဲ့လား ငါတို့ မတွေ့ရတော့တာ ဆယ်စု နှစ် တခု ကျော်ခဲ့ပြိးနော် တနေ့မှ မမေ့မရဘူးလို့ ပြောရင် ညာရာကြမှာမို့ မေ့နေတဲ့အချိန်တေတော့ ကို့မှာ ရှိပါတယ် ဒါမဲ့ အချိန်အများစုကတော့ မေ့လို့မရတဲ့ အတိတ်က အတူရှိခဲ့တဲ့ နေ့ရက်တွေကို လွမ်းဆွတ်ရင်နဲ့ မွန်းကြပ်နေရသူတယောက်ပါ - မြင်တွေ့ခွင့်မရတော့တဲ့ မင်းလေး အဆင်ပြေဖို့ ကို့ဆုတောင်းရင်နဲ့ အိပ်မပျော်တဲ့ညတေ က ဆယ်စုနှစ်တစ်စု မက ကြာခဲ့ပါပြီး ချင်းတောင်တန်းတေရဲ့ နောက်ကွယ်မှာ မင်းလေး ရှိသေးလား မရှိတော့ဘူးလား ကို့သေချာမသိတော့ပါဘူး နည်းပညာတေအရမ်းတိုးတက်နေပေမဲ့ အဲ့နည်းပညာတေက မင်းလေးနဲ့ အဆက်သွယ်ရဖို့ အခု ကို့အတွက် အကူညီမဖြစ်ပါဘူး - ကို့မျော်နေမှာ သိသားနဲ့ ပြန်မလာတော့တာ မင်းကို့ကို မချစ်လို့တော့ ဟုတ်မယ်မထင်ပါဘူး မင်းလေး ကို့ကို အရမ်းချစ်တာ ကို့ထက်မက မင်းလေးက ပိုသိပါတယ် - ပြန်လာပါလို့တော့ မခေါ်တော့ ဘူး - ပြန်မခေါ်ပေမဲ့ ကို့မျော်လင့်ချက်တေကတော့ အခုထိ အသက်ရှင်နေတုန်းပါ - သတိရလွမ်းဆွတ်ခြင်းများစွာဖြင့် တချိန်က ကိုကို \"ဟိဟိ\" လျောက်ရေးတာ မိုက်လား ', 'images_2.jpg', '2022-08-21 04:00:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `phone`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'ashin@gmail.com', '12345', '09257031942', 'Mandalay', '', '2022-08-01 11:49:00', '0000-00-00 00:00:00'),
(2, 'Admin', 'uzinwebmdy@gmail.com', '1234', '09257031942', 'Mandalay', '', '2022-08-01 11:49:45', '0000-00-00 00:00:00'),
(3, 'admin', 'ashin@gmail.com', '1234', '09257031942', 'Mandalay', '', '2022-08-02 04:24:45', '0000-00-00 00:00:00'),
(4, 'IT Empire', 'empire@gmail.com', '1234', '09257031942', 'Address is Mandalay', '', '2022-08-02 04:26:56', '0000-00-00 00:00:00'),
(5, 'Admin Empire', 'aungyehtatcoder2021@gmail.com', '12345', '09257031942', 'Address', '', '2022-08-02 04:49:13', '0000-00-00 00:00:00'),
(6, 'Test Admin', 'koko@gmail.com', 'md5(1234)', '09257031942', 'Mandalay', '', '2022-08-04 04:28:47', '0000-00-00 00:00:00'),
(7, 'Admin', 'admin123@gmail.com', '1234', '09257031942', 'mandalay', '', '2022-08-04 15:38:35', '0000-00-00 00:00:00'),
(10, 'IT Empire', 'uzinwebmdy@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '09257031942', 'myanmar', 'edit_2.jpg', '2022-08-21 05:16:01', '0000-00-00 00:00:00'),
(11, 'Admin', 'aungyehtatcoder2021@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '09257031942', 'Myanmar Mandalay', 'edit_2.jpg', '2022-08-20 09:10:35', '0000-00-00 00:00:00'),
(12, 'Super Admin', 'superadmin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '09257031942', 'Mandalay Myanmar', 'images_1.jpg', '2022-08-29 02:43:43', '0000-00-00 00:00:00'),
(13, 'Admin', 'ashin@gmail.com', '1234', '09257031942', 'Myanmar', '', '2022-08-07 14:26:47', '0000-00-00 00:00:00'),
(14, 'admin', 'ashin@gmail.com', '1234', '09257031942', 'Myanmar', '', '2022-08-09 03:42:31', '0000-00-00 00:00:00'),
(15, 'New User', 'newuser@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '09257031942', 'Myanmar\r\n', '', '2022-08-11 03:58:53', '0000-00-00 00:00:00'),
(16, 'New Admin', 'newadmin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '09257031942', 'Myanmar', 'photo_2022-08-12_20-18-20.jpg', '2022-08-20 09:12:17', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_comments`
--
ALTER TABLE `gallery_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery_comments`
--
ALTER TABLE `gallery_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
