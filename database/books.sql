-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 02:22 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin panel`
--

CREATE TABLE `admin panel` (
  `Admin_Email` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin panel`
--

INSERT INTO `admin panel` (`Admin_Email`, `admin_pass`) VALUES
('admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `book_isbn` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`book_isbn`, `user_id`) VALUES
('1121', 0),
('377', 0),
('377', 1),
('978-0-7303-1484-4', 1),
('978-1-4571-0402-2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_pdf` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL,
  `categoryid` int(100) NOT NULL,
  `book_type` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_pdf`, `book_descr`, `publisherid`, `categoryid`, `book_type`) VALUES
('978-0-321-94786-98', 'The Sixth Extinction An Unnatural History', 'Wallace Jackson', 'a white sky.jpg', '03_welcome-to-multiplatform-mobile-app-development-with-react-native-additional_How_to_Learn.pdf', 'A major book about the future of the world, blending intellectual and natural history and field reporting into a powerful account of the mass extinction unfolding before our eyes', 4, 3, 'Free'),
('978-0-7303-1484-4', 'Doing Good By Doing Good', 'Peter Baines', 'doing_good.jpg', '87-the-science-of-being-great.pdf', 'Doing Good by Doing Good shows companies how to improve the bottom line by implementing an engaging, authentic, and business-enhancing program that helps staff and business thrive. International CSR consultant Peter Baines draws upon lessons learnt from the challenges faced in his career as a police officer, forensic investigator, and founder of Hands Across the Water to describe the Australian CSR landscape, and the factors that make up a program that benefits everyone involved. Case studies illustrate the real effect of CSR on both business and society, with clear guidance toward maximizing involvement, engaging all employees, and improving the bottom line. The case studies draw out the companies that are focusing on creating shared value in meeting the challenges of society whilst at the same time bringing strong economic returns. Consumers are now expecting that big businesses with ever-increasing profits give back to the community from which those profits arise. At the same time, shareholders are demanding their share and are happy to see dividends soar. Getting this right is a balancing act, and Doing Good by Doing Good helps companies delineate a plan of action for getting it done.', 2, 2, 'Premium'),
('978-1-4571-0402-2', 'Professional ASP.NET 4 in C# and VB', 'Scott Hanselman', 'Professional.jpg', 'LogixPro_PLC_Lab_Manual_for_use_w_Programmable_Logic_Controllers_Petruzella_Frank.pdf', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', 1, 1, 'Free'),
('978-1-484216-40-8', 'Android Studio New Media Fundamentals', 'Wallace Jackson', 'android_studio.jpg', 'Android Studio New Media Fundamentals [Jackson 2015-10-30].pdf', 'Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', 4, 1, 'Premium');

-- --------------------------------------------------------

--
-- Table structure for table `book_reviews`
--

CREATE TABLE `book_reviews` (
  `id` int(11) NOT NULL,
  `book_isbn` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_reviews`
--

INSERT INTO `book_reviews` (`id`, `book_isbn`, `user_id`, `review`) VALUES
(1, '1121', 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid aperiam aspernatur beatae culpa deserunt dolores ducimus earum, error eum excepturi illo impedit in non obcaecati officiis optio praesentium sunt temporibus voluptatibus? Illo quisquam reiciendis sit. Alias error ipsum maiores molestias perspiciatis rerum similique ut vel veritatis? Dolorem doloribus molestiae praesentium? At enim placeat praesentium reiciendis rerum? Adipisci amet aspernatur assumenda at dignissimos dolorem, esse, facere, laboriosam molestiae nam nulla odio perspiciatis possimus quod recusandae tenetur velit vitae! Animi consequuntur dolorum eius in nesciunt qui sint ullam! Aliquid aspernatur cum dolorem eum ipsa officia, soluta. Consequatur debitis dolorem ipsam sit?'),
(2, '1121', 10, 'Recusandae Dolorum '),
(3, '1121', 10, 'Consequuntur nesciun'),
(4, '56-98765', 10, 'Proident officiis o'),
(5, '56-98765', 10, 'Aspernatur eos debi'),
(6, '978-0-321-94786-4', 10, 'Nulla dicta excepteu'),
(7, '978-1-484217-26-9', 5, 'Nesciunt minim est'),
(8, '377', 0, 'very interesting');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(100) NOT NULL,
  `category_name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(1, 'Science'),
(2, 'Art'),
(3, 'Business'),
(4, 'Economics'),
(5, 'Tourism'),
(6, 'Comic');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Wrox'),
(2, 'Wiley'),
(3, 'O\'Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'Addison-Wesley');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `email` varchar(100) NOT NULL,
  `time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`email`, `time`) VALUES
('a@gmail.com', '2021-07-11'),
('abc@gmail.com', '2021-06-10'),
('abc@gmail.com', '2021-06-10'),
('abc@gmail.com', '2021-06-10'),
('abc@gmail.com', '2021-06-10'),
('abc@gmail.com', '2021-06-10'),
('abc@gmail.com', '2021-06-10'),
('ac@gmail.com', '2021-07-11'),
('a@gmail.com', '2021-07-11'),
('a@gmail.com', '2021-07-11'),
('a@gmail.com', '2021-07-11'),
('q@gmail.com', '2021-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `subscribed_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `subscription_status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `user_id`, `expiry_date`, `subscribed_at`, `subscription_status`) VALUES
(1, 1, '2021-07-17', '2021-06-17 14:28:49', 1),
(2, 5, '2021-07-17', '2021-06-17 14:29:04', 2),
(3, 2, '2021-07-18', '2021-06-17 22:59:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `Name`, `time`) VALUES
(1, 'anam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Anam', '2021-06-17'),
(2, 'r@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'rana', '2021-06-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`book_isbn`,`user_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `book_reviews`
--
ALTER TABLE `book_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_reviews`
--
ALTER TABLE `book_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
