-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 06:26 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eurobath`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `returnorder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reports` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alluser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminuserrole` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(25) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `brand`, `category`, `product`, `slider`, `banner`, `coupons`, `shipping`, `blog`, `setting`, `returnorder`, `review`, `orders`, `stock`, `reports`, `alluser`, `adminuserrole`, `type`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2021-02-02 15:36:52', '$2y$10$GJ6Atqs34aBAhqNYjfV1fu.2oYMMEA5L6B5EmG70sFPz9Pc.YgmUi', '01684277944', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, '6ts05CQfiTL3HC8c2s0N9usYuwIKZl9tyqPufWk1zK1ogcQrwSnZLJi6HWxC', NULL, 'upload/admin_images/1709188380200451.png', '2021-02-02 15:36:52', '2021-08-26 14:17:40'),
(11, 'hello', 'hello@gmail.com', NULL, '$2y$10$BU3TaDF8ViAY9l5M9ejWseJQ21dqT60MWRN496b45C44J/ELdy2Ve', '01719820964', '1', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 2, NULL, NULL, 'upload/admin_images/1709188557745140.png', '2021-08-25 22:18:36', '2021-08-26 14:20:29'),
(12, 'euro', 'euro@gmail.com', NULL, '$2y$10$IiKfGoN.RV/tDaXspJumLenhr8tBC3SCtCUcqGEnFhwW88ecfLkRm', '01719820962', '1', '1', '1', NULL, NULL, NULL, '1', '1', '1', NULL, NULL, '1', '1', '1', NULL, NULL, 2, NULL, NULL, 'upload/admin_images/1710747234593411.png', '2021-09-12 19:15:10', '2021-09-12 19:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `banner_ones`
--

CREATE TABLE `banner_ones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bannerOne_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_ones`
--

INSERT INTO `banner_ones` (`id`, `bannerOne_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'upload/banner/1711917340459764.jpg', 'Euro Bath', 'Slider one Description', 1, NULL, '2021-09-25 17:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `bannner_twos`
--

CREATE TABLE `bannner_twos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bannerTwo_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bannner_twos`
--

INSERT INTO `bannner_twos` (`id`, `bannerTwo_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'upload/banner/1711917443103593.jpg', 'Slider Two', 'Slider twoDescription', 1, NULL, '2021-09-25 17:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details_hin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `post_title_en`, `post_title_hin`, `post_slug_en`, `post_slug_hin`, `post_image`, `post_details_en`, `post_details_hin`, `created_at`, `updated_at`) VALUES
(2, 6, '7 Steps to Launch an Expert Social-Media Marketing Campaign', 'একটি বিশেষজ্ঞ সোশ্যাল-মিডিয়া মার্কেটিং ক্যাম্পেইন চালু করার 7 টি ধাপ', '', '', 'upload/post/1707836502745103.jpg', '<p style=\"margin-left:0px; margin-right:0px; text-align:start\">Sometimes we need a little boost to help motivate and inspire us, which is why we created Entrepreneur Insider. This membership-based program offers unlimited access to Entrepreneur.com so you can stay updated on the latest and greatest in entrepreneurial news, trends, and strategies.</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\">Enjoy uninterrupted, ad-free access to premium articles, videos, webinars, and a weekly newsletter that feature content produced by and for entrepreneurs, like you. But that&rsquo;s not all! A one-year print and digital&nbsp;<em>Entrepreneur</em>&nbsp;magazine subscription is also included in your membership to help you gain even more expert insights.</p>', '<pre style=\"margin-left:0px; margin-right:0px; text-align:left\">\r\nকখনও কখনও আমাদের অনুপ্রাণিত এবং অনুপ্রাণিত করতে সাহায্য করার জন্য আমাদের একটু উৎসাহের প্রয়োজন হয়, এজন্যই আমরা উদ্যোক্তা ইনসাইডার তৈরি করেছি। এই মেম্বারশিপ-ভিত্তিক প্রোগ্রামটি উদ্যোক্তা ডট কম-এ সীমাহীন অ্যাক্সেস সরবরাহ করে যাতে আপনি সর্বশেষ এবং সর্বশ্রেষ্ঠ উদ্যোক্তাদের খবর, প্রবণতা এবং কৌশলে আপডেট থাকতে পারেন।\r\n\r\nপ্রিমিয়াম নিবন্ধ, ভিডিও, ওয়েবিনার এবং একটি সাপ্তাহিক নিউজলেটার যা আপনার মত উদ্যোক্তাদের দ্বারা এবং তাদের জন্য উত্পাদিত বিষয়বস্তুর জন্য নিরবচ্ছিন্ন, বিজ্ঞাপন মুক্ত অ্যাক্সেস উপভোগ করুন। কিন্তু এখানেই শেষ নয়! আপনার সদস্যতার মধ্যে এক বছরের প্রিন্ট এবং ডিজিটাল এন্টারপ্রেনার ম্যাগাজিনের সাবস্ক্রিপশনও অন্তর্ভুক্ত করা হয়েছে যাতে আপনি আরও বেশি বিশেষজ্ঞ অন্তর্দৃষ্টি পেতে পারেন।</pre>', '2021-08-11 16:10:09', NULL),
(3, 4, '5 Ways That Gen Z Differs from Millennials That You Must Take Into Account When Promoting Your Business', 'জেনারেল জেড সহস্রাব্দ থেকে আলাদা হওয়ার 5 টি উপায় যা আপনার ব্যবসার প্রচারের সময় আপনাকে অবশ্যই অ্যাকাউন্টে নিতে হবে', '', '', 'upload/post/1711555522190312.jpg', '<p>If you take a look at consumers from small towns to the world&#39;s biggest cities, you will find that there is always a huge gap in age. Companies recently had to figure out what makes Millennials tick, now the focus has shifted to Generation Z. So what does Gen Z mean for your business? Some corporations have decided to put them in the same boat as Millennials, however, that is a mistake. Although Gen Z consumers share similarities with Millennials, there are important differences for advertising your business to this new generation that you&rsquo;ll need to take into consideration.</p>\r\n\r\n<p>Here are five ways that Generation Z differs from Millennials when you set out to promote your company.</p>\r\n\r\n<p>1. Generational gap<br />\r\nEvery generation has quirks that make them different from one another, and sometimes these differences can make it hard to have a one-size-fits-all approach for marketing to a general audience.</p>\r\n\r\n<p>Let&rsquo;s look at social media usage across three generations &mdash; Generation X, Millennials, and Generation Z. Gen-X&rsquo;ers tend to use platforms like Twitter and Facebook more frequently, meaning that ads through these social media sites would be effective. Generation Z, on the other hand, prefers snappier ads in the form of posts or videos on Snapchat and Instagram, or ads taken out on YouTube and TikTok. They also respond well to witty marketing messages and tend to value the social media presence of a brand.</p>\r\n\r\n<p>Related: 7 Strategies Entrepreneurs Can Learn From The Kardashians</p>\r\n\r\n<p>2. Diversity and inclusion<br />\r\nGeneration Z is big on diversity and this effect can be seen in how they consistently advocate for more progressive stances from companies. Gen Z feels it is most important for companies to work with a diverse group of people with various skill levels. They want to bring everyone they can to a discussion as that is how they think the best results will be produced. Although many companies have adapted this mindset, as this generation gets older and becomes a more prominent part of the consumer base, businesses will be further encouraged to become more inclusive.</p>', '<pre style=\"margin-left:0px; margin-right:0px; text-align:left\">\r\nআপনি যদি ছোট শহর থেকে শুরু করে বিশ্বের সবচেয়ে বড় শহরগুলিতে ভোক্তাদের দিকে নজর দেন, আপনি দেখতে পাবেন যে বয়সের মধ্যে সর্বদা একটি বিশাল ব্যবধান রয়েছে। কোম্পানিগুলিকে সম্প্রতি খুঁজে বের করতে হয়েছিল কি Millennials টিক করে, এখন ফোকাস জেনারেশন Z তে স্থানান্তরিত হয়েছে। তাহলে জেনারেল Z আপনার ব্যবসার জন্য কী বোঝায়? কিছু কর্পোরেশন তাদের সহস্রাব্দের মতো একই নৌকায় রাখার সিদ্ধান্ত নিয়েছে, তবে এটি একটি ভুল। যদিও জেনারেল জেড ভোক্তারা সহস্রাব্দের সাথে মিল খুঁজে পান, এই নতুন প্রজন্মের কাছে আপনার ব্যবসার বিজ্ঞাপন দেওয়ার জন্য গুরুত্বপূর্ণ পার্থক্য রয়েছে যা আপনাকে বিবেচনা করতে হবে।\r\n\r\nআপনি আপনার কোম্পানিকে উন্নীত করার জন্য প্রস্তুত হওয়ার সময় জেনারেশন জেড সহস্রাব্দের থেকে আলাদা হওয়ার পাঁচটি উপায় এখানে দেওয়া হল।\r\n\r\n1. জেনারেশনাল গ্যাপ\r\nপ্রত্যেক প্রজন্মেরই কৌতূহল রয়েছে যা তাদের একে অপরের থেকে আলাদা করে তোলে এবং কখনও কখনও এই পার্থক্যগুলি সাধারণ দর্শকদের কাছে বিপণনের জন্য এক-আকার-ফিট-সমস্ত পদ্ধতির পক্ষে কঠিন হতে পারে।\r\n\r\nআসুন তিন প্রজন্ম জুড়ে সোশ্যাল মিডিয়া ব্যবহার দেখি-জেনারেশন এক্স, মিলেনিয়ালস এবং জেনারেশন জেড। জেনার-এক্স&rsquo;রা টুইটার এবং ফেসবুকের মতো প্ল্যাটফর্মগুলি বেশি ঘন ঘন ব্যবহার করে, যার অর্থ এই সোশ্যাল মিডিয়া সাইটগুলির মাধ্যমে বিজ্ঞাপন কার্যকর হবে। অন্যদিকে, জেনারেশন জেড, স্ন্যাপচ্যাট এবং ইনস্টাগ্রামে পোস্ট বা ভিডিও আকারে স্ন্যাপিয়ার বিজ্ঞাপন, বা ইউটিউব এবং টিকটকে নেওয়া বিজ্ঞাপন পছন্দ করে। তারা মজাদার বিপণন বার্তাগুলিতেও ভাল সাড়া দেয় এবং একটি ব্র্যান্ডের সোশ্যাল মিডিয়া উপস্থিতিকে মূল্য দেয়।\r\n\r\nসম্পর্কিত: 7 কৌশল উদ্যোক্তারা কারদাশিয়ানদের কাছ থেকে শিখতে পারেন\r\n\r\n2. বৈচিত্র্য এবং অন্তর্ভুক্তি\r\nজেনারেশন জেড বৈচিত্র্যের উপর বড় এবং এই প্রভাবটি দেখা যায় কিভাবে তারা ধারাবাহিকভাবে কোম্পানিগুলির থেকে আরও প্রগতিশীল অবস্থানের পক্ষে সমর্থন করে। জেনারেল জেড মনে করেন কোম্পানির জন্য বিভিন্ন দক্ষতার স্তরের মানুষের একটি ভিন্ন গোষ্ঠীর সাথে কাজ করা সবচেয়ে গুরুত্বপূর্ণ। তারা তাদের সাধ্যমত সবাইকে আলোচনায় আনতে চায় কারণ তারা মনে করে যে সেরা ফলাফল পাওয়া যাবে। যদিও অনেক কোম্পানি এই মানসিকতাকে মানিয়ে নিয়েছে, যেহেতু এই প্রজন্ম বয়স বাড়ছে এবং ভোক্তা ভিত্তির একটি বিশিষ্ট অংশ হয়ে উঠছে, ব্যবসাগুলি আরও অন্তর্ভুক্তিমূলক হওয়ার জন্য আরও উৎসাহিত হবে।</pre>', '2021-09-21 17:22:22', '2021-09-21 17:22:22'),
(5, 6, 'Test1', 'Test1', '', '', 'upload/post/1711555535348087.jpg', '<p>Post Details Englishsddsdds</p>', '<p>Post Details Bangladsdsdsdsdsds</p>', '2021-09-21 17:22:35', '2021-09-21 17:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories`
--

CREATE TABLE `blog_post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post_categories`
--

INSERT INTO `blog_post_categories` (`id`, `blog_category_name_en`, `blog_category_name_hin`, `blog_category_slug_en`, `blog_category_slug_hin`, `created_at`, `updated_at`) VALUES
(1, 'Finance', 'অর্থায়ন', 'finance', 'অর্থায়ন', '2021-08-12 13:17:03', '2021-08-12 13:17:03'),
(3, 'Technology', 'প্রযুক্তি', 'technology', 'প্রযুক্তি', NULL, NULL),
(4, 'Growth Strategies', 'বৃদ্ধির কৌশল', 'growth-strategies', 'বৃদ্ধির-কৌশল', '2021-08-09 14:58:59', NULL),
(5, 'Marketing', 'মার্কেটিং', 'marketing', 'মার্কেটিং', '2021-08-09 15:00:01', NULL),
(6, 'Social Media', 'সামাজিক মাধ্যম', 'social-media', 'সামাজিক-মাধ্যম', '2021-08-09 15:00:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_hin`, `brand_slug_en`, `brand_slug_hin`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'Euro Bath', 'Euro Bath', 'euro-bath', 'euro-bath', 'upload/brand/1711554463146964.png', NULL, '2021-09-21 17:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_en`, `category_name_hin`, `category_slug_en`, `category_slug_hin`, `category_icon`, `created_at`, `updated_at`) VALUES
(1, 'BATHROOMS COLLECTION', 'বাথরুম সংগ্রহ', 'bathrooms-collection', 'বাথরুম-সংগ্রহ', 'fa fa-bath', NULL, '2021-09-21 07:35:53'),
(3, 'TOILETS, BIDETS AND URINALS', 'টয়লেট, বিডেট এবং ইউরিনাল', 'toilets,-bidets-and-urinals', 'টয়লেট,-বিডেট-এবং-ইউরিনাল', 'fa fa-bath', NULL, NULL),
(5, 'BATHROOM FURNITURE', 'বাথরুম ফার্নিচার', 'bathroom-furniture', 'বাথরুম-ফার্নিচার', 'fa fa-bath', NULL, NULL),
(6, 'BATHTUBS', 'বাথটাব', 'bathtubs', 'বাথটাব', 'fa fa-bath', NULL, NULL),
(9, 'BATHROOM FITTINGS', 'বাথরুম ফিটিং', 'bathroom-fittings', 'বাথরুম-ফিটিং', 'fa fa-bath', NULL, NULL),
(10, 'testing', 'tesing2', 'testing', 'tesing2', 'fa fa-bath', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HAPPY20', 20, '2021-08-31', 1, '2021-08-04 14:06:45', '2021-08-04 14:06:45'),
(2, 'SIMBA10', 10, '2021-07-13', 1, '2021-07-13 19:19:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inner_banners`
--

CREATE TABLE `inner_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `innerBanner_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inner_banners`
--

INSERT INTO `inner_banners` (`id`, `innerBanner_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'upload/banner/1712007903502734.jpg', 'Big Sale', 'Inner Banner Description2', 1, NULL, '2021-09-26 17:30:29');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_02_02_203839_create_sessions_table', 1),
(7, '2021_02_02_212221_create_admins_table', 2),
(8, '2021_06_17_094504_create_brands_table', 3),
(9, '2021_06_18_002829_create_categories_table', 4),
(10, '2021_06_18_224434_create_sub_categories_table', 5),
(11, '2021_06_20_222109_create_sub_sub_categories_table', 6),
(12, '2021_06_21_211915_create_products_table', 7),
(13, '2021_06_21_214712_create_multi_imgs_table', 7),
(14, '2021_06_26_220341_create_sliders_table', 8),
(15, '2021_07_06_220722_create_wishlists_table', 9),
(16, '2021_07_10_193933_create_coupons_table', 10),
(17, '2021_07_11_205837_create_ship_divisions_table', 11),
(18, '2021_07_12_062046_create_ship_districts_table', 12),
(19, '2021_07_12_195236_create_ship_states_table', 13),
(20, '2021_07_15_001340_create_shippings_table', 14),
(21, '2021_07_27_184243_create_orders_table', 15),
(22, '2021_07_27_184553_create_order_items_table', 15),
(23, '2021_08_09_201007_create_blog_post_categories_table', 16),
(24, '2021_08_10_200836_create_blog_posts_table', 17),
(25, '2021_08_14_215858_create_site_settings_table', 18),
(26, '2021_08_15_201749_create_seos_table', 19),
(27, '2021_08_17_202039_create_reviews_table', 20),
(28, '2021_09_13_231041_create_users_table', 21),
(29, '2021_09_25_151340_create_banner_ones_table', 22),
(30, '2021_09_25_195423_create_bannner_twos_table', 23),
(31, '2021_09_26_205041_create_inner_banners_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/products/multi-image/1711554780607420.jpg', '2021-09-21 17:10:35', NULL),
(2, 1, 'upload/products/multi-image/1711554780770901.jpg', '2021-09-21 17:10:35', NULL),
(3, 2, 'upload/products/multi-image/1711555250541118.jpg', '2021-09-21 17:18:03', NULL),
(4, 2, 'upload/products/multi-image/1711555250703916.jpg', '2021-09-21 17:18:03', NULL),
(5, 3, 'upload/products/multi-image/1711555483242739.jpg', '2021-09-21 17:21:45', NULL),
(6, 3, 'upload/products/multi-image/1711555483408128.jpg', '2021-09-21 17:21:45', NULL),
(7, 3, 'upload/products/multi-image/1711555483574355.jpg', '2021-09-21 17:21:45', NULL),
(8, 4, 'upload/products/multi-image/1711555817489873.jpg', '2021-09-21 17:27:04', NULL),
(9, 4, 'upload/products/multi-image/1711555817658987.jpg', '2021-09-21 17:27:04', NULL),
(10, 5, 'upload/products/multi-image/1711555956536150.jpg', '2021-09-21 17:29:17', NULL),
(11, 5, 'upload/products/multi-image/1711555956750329.jpg', '2021-09-21 17:29:17', NULL),
(12, 5, 'upload/products/multi-image/1711555956909904.jpg', '2021-09-21 17:29:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_order`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, 2, 1, NULL, 'imtiaz', 'imtiazemon625@gmail.com', '01719820962', 3900, 'Adv. Abu Lias Lane,Nazir Road,House: Alam Nahar Homes,Flat: 3rd Floor,Feni', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 6000.00, NULL, 'EOS89013751', '01 October 2021', 'October', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2021-10-01 14:47:21', NULL),
(2, 9, 2, 1, NULL, 'imtiaz', 'imtiazemon625@gmail.com', '01684277944', 1229, 'D block,road-5,Bashundhara R/A', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 15000.00, NULL, 'EOS43455009', '01 October 2021', 'October', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2021-10-01 14:59:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'Lorem', 'Large', '1', 6000.00, '2021-10-01 14:47:26', NULL),
(2, 2, 3, 'Lorem', 'Large', '3', 5000.00, '2021-10-01 14:59:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@gmail.com', '$2y$10$NpE1kPJb2ENtd.OvplxH1eNve60elvo1FVbYpGvtOE.K5JLwoUvWK', '2021-07-28 00:45:07'),
('imtiazemon625@gmail.com', '$2y$10$93McB7KyDOwEfQ1tibGuPOYJQnmoBrpwyz0PIXS0hlcDALEhf11hi', '2021-09-29 17:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `product_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_hin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_hin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descp_hin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_hin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `digital_file` varchar(556) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_hin`, `product_slug_en`, `product_slug_hin`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_hin`, `product_size_en`, `product_size_hin`, `product_color_en`, `product_color_hin`, `selling_price`, `discount_price`, `short_descp_en`, `short_descp_hin`, `long_descp_en`, `long_descp_hin`, `product_thumbnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `digital_file`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, 'CERSANIA FITTINGS', 'CERSANIA FITTINGS', 'cersania-fittings', 'CERSANIA-FITTINGS', '1212', '22', 'washbasins', 'washbasins', 'Large,Medium,Small', 'Large,Medium,Small', 'Lorem,Ipsum,Amet', 'Large,Medium,Small', '2000', '1500', 'Compact and ergonomic - these are certainly the distinguishing features of the Cersania collection. Shapely faucets can be easily matched to washbasins or bathtubs of very small dimensions, and their comfortable handles ensure maximum comfort even in a small space.', 'Compact and ergonomic - these are certainly the distinguishing features of the Cersania collection. Shapely faucets can be easily matched to washbasins or bathtubs of very small dimensions, and their comfortable handles ensure maximum comfort even in a small space.', '<p><strong>Compact and ergonomic -&nbsp;these are certainly the distinguishing features of the&nbsp;Cersania collection.&nbsp;Shapely faucets can be easily matched to washbasins or bathtubs of very small dimensions, and their comfortable handles ensure maximum comfort even in a&nbsp;small space.&nbsp;</strong></p>', '<p><strong>Compact and ergonomic -&nbsp;these are certainly the distinguishing features of the&nbsp;Cersania collection.&nbsp;Shapely faucets can be easily matched to washbasins or bathtubs of very small dimensions, and their comfortable handles ensure maximum comfort even in a&nbsp;small space.&nbsp;</strong></p>', 'upload/products/thambnail/1711554780440442.jpg', 1, 1, 1, 1, NULL, 1, '2021-09-21 17:10:35', NULL),
(2, 1, 1, 3, NULL, 'COMO', 'COMO', 'como', 'COMO', '222', '20', 'washbasin', 'washbasin', NULL, NULL, NULL, NULL, '5000', NULL, 'COMO is a modern line of high standard bathroom ceramics, which is perfectly consistent with the minimalism typical of modern interiors. The simple, yet impressive design and the range of practical functionalities are the features that will make your bathroom a unique and comfortable place.', 'COMO is a modern line of high standard bathroom ceramics, which is perfectly consistent with the minimalism typical of modern interiors. The simple, yet impressive design and the range of practical functionalities are the features that will make your bathroom a unique and comfortable place.', '<p>COMO is a&nbsp;modern line of high standard bathroom ceramics, which is perfectly consistent with the minimalism typical of modern interiors. The simple, yet impressive design and the range of practical functionalities are the features that will make your bathroom a&nbsp;unique and comfortable place.</p>', '<p>COMO is a&nbsp;modern line of high standard bathroom ceramics, which is perfectly consistent with the minimalism typical of modern interiors. The simple, yet impressive design and the range of practical functionalities are the features that will make your bathroom a&nbsp;unique and comfortable place.</p>', 'upload/products/thambnail/1711555250374966.jpg', 1, 1, 1, 1, NULL, 1, '2021-09-21 17:18:03', NULL),
(3, 1, 1, 2, NULL, 'JOANNA NEW', 'JOANNA NEW', 'joanna-new', 'JOANNA-NEW', '333', '15', 'Bathtubs', 'Bathtubs', 'Large,Medium,Small', 'Large,Medium,Small', 'Lorem,Ipsum,Amet', 'Large,Medium,Small', '6000', '5000', 'Minimalism and comfort. The most important features of the JOANNA NEW bathroom series. This collection ensures precisely what you expect of a perfectly arranged bathroom.', 'Minimalism and comfort. The most important features of the JOANNA NEW bathroom series. This collection ensures precisely what you expect of a perfectly arranged bathroom.', '<p>Minimalism and comfort. The most important features of the JOANNA NEW bathroom series. This collection ensures precisely what you expect of a perfectly arranged bathroom.</p>', '<p>Minimalism and comfort. The most important features of the JOANNA NEW bathroom series. This collection ensures precisely what you expect of a perfectly arranged bathroom.</p>', 'upload/products/thambnail/1711555483066016.jpg', 1, 1, 1, 1, NULL, 1, '2021-09-21 17:24:31', '2021-09-21 17:24:31'),
(4, 1, 5, 15, NULL, 'Intro', 'Intro', 'intro', 'Intro', '4444', '19', 'Bathroom Furnitures', 'Bathroom Furnitures', 'Large,Medium,Small', 'Large,Medium,Small', 'Lorem,Ipsum,Amet', 'Large,Medium,Small', '2500', NULL, 'Minimalism and comfort. The most important features of the JOANNA NEW bathroom series. This collection ensures precisely what you expect of a perfectly arranged bathroom.', 'Minimalism and comfort. The most important features of the JOANNA NEW bathroom series. This collection ensures precisely what you expect of a perfectly arranged bathroom.', '<p>Minimalism and comfort. The most important features of the JOANNA NEW bathroom series. This collection ensures precisely what you expect of a&nbsp;perfectly arranged bathroom.</p>', '<p>Minimalism and comfort. The most important features of the JOANNA NEW bathroom series. This collection ensures precisely what you expect of a&nbsp;perfectly arranged bathroom.</p>', 'upload/products/thambnail/1711555817343853.jpg', 1, 1, 1, 1, NULL, 1, '2021-09-25 06:21:09', '2021-09-30 10:01:46'),
(5, 1, 6, 12, NULL, 'JOANNA NEW', 'JOANNA NEW', 'joanna-new', 'JOANNA-NEW', '222', '15', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Large,Medium,Small', 'Large,Medium,Small', 'Lorem,Ipsum,Amet', 'Large,Medium,Small', '6000', NULL, 'Minimalism and comfort. The most important features of the JOANNA NEW bathroom series. This collection ensures precisely what you expect of a perfectly arranged bathroom.', 'Minimalism and comfort. The most important features of the JOANNA NEW bathroom series. This collection ensures precisely what you expect of a perfectly arranged bathroom.', '<p>Minimalism and comfort. The most important features of the JOANNA NEW bathroom series. This collection ensures precisely what you expect of a&nbsp;perfectly arranged bathroom.</p>', '<p>Minimalism and comfort. The most important features of the JOANNA NEW bathroom series. This collection ensures precisely what you expect of a&nbsp;perfectly arranged bathroom.</p>', 'upload/products/thambnail/1711555956365316.jpg', 1, 1, NULL, 1, NULL, 1, '2021-09-25 05:40:59', '2021-09-25 05:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(255) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `summary`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 9, 'Best Product', 'Nice Product', 4, '1', '2021-09-30 08:47:27', '2021-09-30 08:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Euro Bath', 'Euro bath', 'best online shop,best product', 'We ensure to safely reached your product in hand', 'google_analytics', NULL, '2021-09-29 09:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9BhoknpCJ4mF1rACw5xVTw0AVmke4BJBjdJxsZr2', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiSDVqcGZzVzdON0RRRUUyU01QSGgzc0hBZkd6ZVVJT09ObnJrbnpOVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoiY2FydCI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoxOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjZhMWQzZDQzZGNiYjcwNDE4ZGZiNDc3YzQxMGE3NzZlIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6MTA6e3M6NToicm93SWQiO3M6MzI6IjZhMWQzZDQzZGNiYjcwNDE4ZGZiNDc3YzQxMGE3NzZlIjtzOjI6ImlkIjtzOjE6IjUiO3M6MzoicXR5IjtzOjE6IjEiO3M6NDoibmFtZSI7czoxMDoiSk9BTk5BIE5FVyI7czo1OiJwcmljZSI7ZDo2MDAwO3M6Njoid2VpZ2h0IjtkOjE7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6Mzp7czo1OiJpbWFnZSI7czo0NjoidXBsb2FkL3Byb2R1Y3RzL3RoYW1ibmFpbC8xNzExNTU1OTU2MzY1MzE2LmpwZyI7czo0OiJzaXplIjtzOjU6IkxhcmdlIjtzOjU6ImNvbG9yIjtzOjU6IkxvcmVtIjt9fXM6NzoidGF4UmF0ZSI7aTowO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO319fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo5O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkWHZyeFdDU3FBWndPbmZxR3A4c1RRLk0vSGg2aWFPWkE1OG9OdXRCbks3cTd6eWcyUHgvNi4iO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFh2cnhXQ1NxQVp3T25mcUdwOHNUUS5NL0hoNmlhT1pBNThvTnV0Qm5LN3E3enlnMlB4LzYuIjt9', 1633129169),
('bdWydvBUB7v8lOkWK5ojrLMmwRetyATNOW4G2WwZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid044OTNiTmFubjh3bmQydlpwcXh4eUVYN2Fpd0ZMUHp3Z3ZsMnNScSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638872179),
('BrfSJmfiNkWMslCaBKKzQbROEoOPWilZcsvwgVPQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36 Edg/94.0.992.31', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFkwc2VHazVQS0czTmljQnVNWHVVZ2N4TDBZZFhQWHBCNFhQaHY3WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1633176327),
('BWk9lv4X5SdeThrVmNKifjTknLEkcyghuTbgWGdO', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUE1veHZRSWttM1BvMTByN25JQm9INnQwdUJzSXBkYWo3UTYzM2w0ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1641229977),
('pgmozpultWwsQTzdMfu7cRISvYZ5AP4PJQMFLCqc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2FzaFg3WHl3RzUwNnFubE01bFQzaDByYU93eHlpeXJyZ3h4TVFSMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1633176337),
('xVRSjfrrw3OMVLGazcripYt3vruhYTEmuv8sv0iI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFU1a29jRU1BVlYwTE5Ua1NURElveUNGNU1xVnhLRmF6aFZYMzRhTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1636820174),
('ZVHgqfL3QLC6mQkUJiaVdP2O6vDRAGkn9c9Ob6K6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicHpYVGpEdnZRcVRtUURUeXF2WTVsWVE2OUNkVmRjVU9iZEFEZlViSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1641140956);

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 2, 'Feni', '2021-07-16 17:33:50', NULL),
(2, 1, 'Gazipur', '2021-07-16 17:37:32', NULL),
(3, 2, 'Cox-Bazar', '2021-07-16 18:15:21', NULL),
(4, 1, 'Narayanganj', '2021-07-16 18:15:28', NULL),
(5, 2, 'Rangamati', '2021-09-30 07:36:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '2021-07-11 15:37:38', NULL),
(2, 'Chittagong', '2021-07-11 15:42:31', NULL),
(5, 'Test1', '2021-07-11 16:31:02', '2021-07-11 16:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Fhulgazi', '2021-07-16 18:15:49', NULL),
(2, 1, 2, 'Sreepur', '2021-07-17 13:26:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `phone_one`, `phone_two`, `phone_three`, `phone_four`, `email`, `company_name`, `company_address`, `company_address_one`, `company_address_two`, `company_address_three`, `facebook`, `twitter`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1712076236678027.png', '01618600706', '01618600702', '01618600712', '01618600701', 'sntrading912@gmail.com', 'Euro Bath', '81, Bir Uttam C.R. Datta Sarak , (2nd Floor) , Hatirpool ,Dhaka-1205.', '29/1, Bir Uttam C.R. Datta Sarak , Hatirpool , Dhaka-1000.', '41, Bir Uttam C.R. Datta Sarak ,(Ground Floor) , Hatirpool , Dhaka- 1000', '68, Bir Uttam C.R. Datta Sarak , (Ground Floor) Hatirpool, Dhaka -1205', 'https://www.facebook.com/', 'https://twitter.com/?lang=en', 'https://www.linkedin.com/signup', 'https://www.youtube.com/', NULL, '2021-09-30 10:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/slider/1711554890397535.jpg', NULL, NULL, 1, NULL, '2021-09-25 06:14:57'),
(2, 'upload/slider/1711554900337692.jpg', 'Euro Bath', 'Best Shop', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name_en`, `subcategory_name_hin`, `subcategory_slug_en`, `subcategory_slug_hin`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bathroom Fittings Collections', 'বাথরুম জিনিসপত্র সংগ্রহ', 'bathroom-fittings-collections', 'বাথরুম-জিনিসপত্র-সংগ্রহ', NULL, NULL),
(2, 1, 'Bathtubs Collections', 'বাথটাব সংগ্রহ', 'bathtubs-collections', 'বাথটাব-সংগ্রহ', NULL, NULL),
(3, 1, 'Ceramic Collections', 'সিরামিক সংগ্রহ', 'ceramic-collections', 'সিরামিক-সংগ্রহ', NULL, NULL),
(4, 1, 'Concept Collections', 'কনসেপ্ট কালেকশন', 'concept-collections', 'কনসেপ্ট-কালেকশন', NULL, NULL),
(5, 1, 'Shower Collections', 'ঝরনা সংগ্রহ', 'shower-collections', 'ঝরনা-সংগ্রহ', NULL, NULL),
(6, 9, 'Washbasin faucets', 'ওয়াশবাসিন কল', 'washbasin-faucets', 'ওয়াশবাসিন-কল', NULL, NULL),
(7, 9, 'Bidet faucets', 'বিডেট কল', 'bidet-faucets', 'বিডেট-কল', NULL, NULL),
(8, 9, 'Bathtub-shower faucets', 'বাথটাব-শাওয়ার কল', 'bathtub-shower-faucets', 'বাথটাব-শাওয়ার-কল', NULL, NULL),
(9, 9, 'Shower faucets', 'ঝরনা কল', 'shower-faucets', 'ঝরনা-কল', NULL, NULL),
(10, 9, 'Bathroom fitting sets', 'বাথরুম ফিটিং সেট', 'bathroom-fitting-sets', 'বাথরুম-ফিটিং-সেট', NULL, NULL),
(11, 9, 'Shower sets', 'ঝরনা সেট', 'shower-sets', 'ঝরনা-সেট', NULL, NULL),
(12, 6, 'Rectangular bathtubs', 'আয়তক্ষেত্রাকার বাথটাব', 'rectangular-bathtubs', 'আয়তক্ষেত্রাকার-বাথটাব', NULL, NULL),
(13, 6, 'Asymmetric bathtubs', 'অসমমিত বাথটাব', 'asymmetric-bathtubs', 'অসমমিত-বাথটাব', NULL, NULL),
(14, 6, 'Symmetric bathtubs', 'প্রতিসম বাথটাব', 'symmetric-bathtubs', 'প্রতিসম-বাথটাব', NULL, NULL),
(15, 5, 'Bathroom furniture sets', 'বাথরুম আসবাবপত্র সেট', 'bathroom-furniture-sets', 'বাথরুম-আসবাবপত্র-সেট', NULL, NULL),
(16, 5, 'Countertops', 'কাউন্টারটপস', 'countertops', 'কাউন্টারটপস', NULL, NULL),
(17, 5, 'Washbasin cabinets', 'ওয়াশবাসিন ক্যাবিনেট', 'washbasin-cabinets', 'ওয়াশবাসিন-ক্যাবিনেট', NULL, NULL),
(18, 3, 'Bidets', 'বিডেটস', 'bidets', 'বিডেটস', NULL, NULL),
(19, 3, 'WC wall hung bowls CleanOn - without rim', 'WC প্রাচীর ঝুলানো বাটি ক্লিনঅন - রিম ছাড়া', 'wc-wall-hung-bowls-cleanon---without-rim', 'WC-প্রাচীর-ঝুলানো-বাটি-ক্লিনঅন---রিম-ছাড়া', NULL, NULL),
(21, 10, 'Mans Bottom', 'গেমিং', 'mans-bottom', 'গেমিং', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `provider_id`, `phone`, `last_seen`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(8, 'demo', 'demo@gmail.com', NULL, '12345678', '2021-09-22 21:49:06', NULL, '$2y$10$ndlbqz3plbjWT1.C0ZqnyO7JdZy5xartkbUiJanGFquGB5oOZztjK', NULL, NULL, NULL, '2021-09-22 15:49:05', '2021-09-22 15:49:06'),
(9, 'imtiaz', 'imtiazemon625@gmail.com', NULL, '01684277944', '2021-10-01 22:59:29', NULL, '$2y$10$XvrxWCSqAZwOnfqGp8sTQ.M/Hh6iaOZA58oNutBnK7q7zyg2Px/6.', NULL, NULL, NULL, '2021-09-29 11:21:07', '2021-10-01 16:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 1, 7, '2021-07-07 13:04:31', NULL),
(6, 1, 8, '2021-07-08 12:44:16', NULL),
(7, 1, 5, '2021-07-08 20:01:44', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banner_ones`
--
ALTER TABLE `banner_ones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bannner_twos`
--
ALTER TABLE `bannner_twos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inner_banners`
--
ALTER TABLE `inner_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `banner_ones`
--
ALTER TABLE `banner_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bannner_twos`
--
ALTER TABLE `bannner_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inner_banners`
--
ALTER TABLE `inner_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
