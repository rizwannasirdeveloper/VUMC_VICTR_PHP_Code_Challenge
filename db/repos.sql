-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2023 at 06:31 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-github_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `repos`
--

CREATE TABLE `repos` (
  `ID` int NOT NULL,
  `repo_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `total_stars` bigint UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_date` date NOT NULL,
  `last_push_date` date NOT NULL,
  `refresh_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `repos`
--

INSERT INTO `repos` (`ID`, `repo_id`, `name`, `description`, `total_stars`, `url`, `created_date`, `last_push_date`, `refresh_date`) VALUES
(1, 3482588, 'SecLists', 'SecLists is the security tester\'s companion. It\'s a collection of multiple types of lists used during security assessments, collected in one place. List types include usernames, passwords, URLs, sensitive data patterns, fuzzing payloads, web shells, and many more.', 47585, 'https://github.com/danielmiessler/SecLists', '2012-02-19', '2023-07-12', '2023-07-12 18:29:18'),
(2, 7548986, 'framework', 'The Laravel Framework.', 29810, 'https://github.com/laravel/framework', '2013-01-10', '2023-07-12', '2023-07-12 18:29:18'),
(3, 1864363, 'composer', 'Dependency Manager for PHP', 27697, 'https://github.com/composer/composer', '2011-06-08', '2023-07-11', '2023-07-12 18:29:18'),
(4, 2579314, 'Faker', 'Faker is a PHP library that generates fake data for you', 26740, 'https://github.com/fzaninotto/Faker', '2011-10-14', '2022-07-11', '2023-07-12 18:29:18'),
(5, 60243197, 'server', '☁️ Nextcloud server, a safe home for all your data', 23335, 'https://github.com/nextcloud/server', '2016-06-02', '2023-07-12', '2023-07-12 18:29:18'),
(6, 2246815, 'DesignPatternsPHP', 'sample code for several design patterns in PHP 8', 21307, 'https://github.com/DesignPatternsPHP/DesignPatternsPHP', '2011-08-22', '2023-05-11', '2023-07-12 18:29:18'),
(7, 1376664, 'monolog', 'Sends your logs to files, sockets, inboxes, databases and various web services', 20444, 'https://github.com/Seldaek/monolog', '2011-02-17', '2023-07-07', '2023-07-12 18:29:18'),
(8, 82238168, 'monica', 'Personal CRM. Remember everything about your friends, family and business relationships.', 19319, 'https://github.com/monicahq/monica', '2017-02-17', '2023-07-10', '2023-07-12 18:29:18'),
(9, 2234102, 'CodeIgniter', 'Open Source PHP Framework (originally from EllisLab)', 18215, 'https://github.com/bcit-ci/CodeIgniter', '2011-08-19', '2023-07-04', '2023-07-12 18:29:18'),
(10, 1548202, 'matomo', 'Liberating Web Analytics. Star us on Github? +1. Matomo is the leading open alternative to Google Analytics that gives you full control over your data. Matomo lets you easily collect data from websites & apps and visualise this data and extract insights. Privacy is built-in. We love Pull Requests! ', 17923, 'https://github.com/matomo-org/matomo', '2011-03-30', '2023-07-12', '2023-07-12 18:29:18'),
(11, 1631570, 'PHP-Parser', 'A PHP parser written in PHP', 16201, 'https://github.com/nikic/PHP-Parser', '2011-04-18', '2023-07-09', '2023-07-12 18:29:18'),
(12, 5724990, 'Carbon', 'A simple PHP API extension for DateTime.', 16192, 'https://github.com/briannesbitt/Carbon', '2012-09-08', '2023-07-12', '2023-07-12 18:29:18'),
(13, 53783664, 'howto-make-more-money', '程序员如何优雅的挣零花钱，2.0版，升级为小书了。Most of this not work outside China , so no English translate', 16089, 'https://github.com/easychen/howto-make-more-money', '2016-03-13', '2023-01-01', '2023-07-12 18:29:18'),
(14, 12615154, 'laravel-debugbar', 'Debugbar for Laravel (Integrates PHP Debug Bar)', 15339, 'https://github.com/barryvdh/laravel-debugbar', '2013-09-05', '2023-07-12', '2023-07-12 18:29:18'),
(15, 11323319, 'parsedown', 'Better Markdown Parser in PHP', 14421, 'https://github.com/erusev/parsedown', '2013-07-10', '2022-12-06', '2023-07-12 18:29:18'),
(16, 28628034, 'flarum', 'Simple forum software for building great communities.', 14147, 'https://github.com/flarum/flarum', '2014-12-30', '2023-05-20', '2023-07-12 18:29:18'),
(17, 3431193, 'yii2', 'Yii 2: The Fast, Secure and Professional PHP Framework', 14103, 'https://github.com/yiisoft/yii2', '2012-02-13', '2023-07-12', '2023-07-12 18:29:18'),
(18, 22553797, 'grav', 'Modern, Crazy Fast, Ridiculously Easy and Amazingly Powerful Flat-File CMS powered by PHP, Markdown, Twig, and Symfony', 13871, 'https://github.com/getgrav/grav', '2014-08-02', '2023-06-15', '2023-07-12 18:29:18'),
(19, 7704544, 'image', 'PHP Image Manipulation', 13315, 'https://github.com/Intervention/image', '2013-01-19', '2023-07-06', '2023-07-12 18:29:18'),
(20, 8678290, 'laravel-ide-helper', 'IDE Helper for Laravel', 13245, 'https://github.com/barryvdh/laravel-ide-helper', '2013-03-10', '2023-06-12', '2023-07-12 18:29:18'),
(21, 26730195, 'Cachet', '📛 An open source status page system for everyone.', 13143, 'https://github.com/CachetHQ/Cachet', '2014-11-16', '2022-12-09', '2023-07-12 18:29:18'),
(22, 8708394, 'whoops', 'PHP errors for cool kids ', 13022, 'https://github.com/filp/whoops', '2013-03-11', '2023-05-07', '2023-07-12 18:29:18'),
(23, 13899674, 'flysystem', 'Abstraction for local and remote filesystems', 12941, 'https://github.com/thephpleague/flysystem', '2013-10-27', '2023-06-13', '2023-07-12 18:29:18'),
(24, 1280180, 'phabricator', 'Effective June 1, 2021: Phabricator is no longer actively maintained.', 12328, 'https://github.com/phacility/phabricator', '2011-01-21', '2023-06-07', '2023-07-12 18:29:18'),
(25, 61490598, 'PhpSpreadsheet', 'A pure PHP library for reading and writing spreadsheet files', 12305, 'https://github.com/PHPOffice/PhpSpreadsheet', '2016-06-19', '2023-07-11', '2023-07-12 18:29:18'),
(26, 4916869, 'uuid', ':snowflake: A PHP library for generating universally unique identifiers (UUIDs).', 12132, 'https://github.com/ramsey/uuid', '2012-07-05', '2023-07-10', '2023-07-12 18:29:18'),
(27, 4344257, 'PHP-CS-Fixer', 'A tool to automatically fix PHP Coding Standards issues', 12010, 'https://github.com/PHP-CS-Fixer/PHP-CS-Fixer', '2012-05-16', '2023-07-12', '2023-07-12 18:29:18'),
(28, 49014795, 'phpstan', 'PHP Static Analysis Tool - discover bugs in your code without running it!', 11981, 'https://github.com/phpstan/phpstan', '2016-01-04', '2023-07-12', '2023-07-12 18:29:18'),
(29, 41589337, 'BookStack', 'A platform to create documentation/wiki content built with PHP & Laravel', 11823, 'https://github.com/BookStackApp/BookStack', '2015-08-29', '2023-07-12', '2023-07-12 18:29:18'),
(30, 926544, 'Slim', 'Slim is a PHP micro framework that helps you quickly write simple yet powerful web applications and APIs.', 11639, 'https://github.com/slimphp/Slim', '2010-09-21', '2023-06-22', '2023-07-12 18:29:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `repos`
--
ALTER TABLE `repos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `repos`
--
ALTER TABLE `repos`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
