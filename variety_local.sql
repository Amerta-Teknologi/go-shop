-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 24, 2023 at 06:46 PM
-- Server version: 8.0.33
-- PHP Version: 8.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `variety_local`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `created_at`) VALUES
(18, 5, 31, 2, '2023-06-24 18:27:52'),
(20, 5, 32, 2, '2023-06-24 18:30:19'),
(21, 0, 32, 1, '2023-06-24 18:30:26'),
(22, 149, 33, 1, '2023-06-24 18:45:53'),
(23, 149, 32, 1, '2023-06-24 18:45:59'),
(24, 0, 33, 1, '2023-06-24 18:46:03'),
(25, 0, 30, 1, '2023-06-24 18:46:09'),
(26, 0, 31, 1, '2023-06-24 18:46:12'),
(27, 149, 31, 1, '2023-06-24 18:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `sequence` int DEFAULT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `sequence`, `url`) VALUES
(1, 'Home', 1, '/'),
(2, 'Gold Hearts', 2, '/products/categories/gold-hearts?page=1&order=name+asc'),
(3, 'Merchandise', 3, '/products/categories/merchandise?page=1&order=name+asc'),
(4, 'Contact', 4, '#');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `product_category_id` int DEFAULT NULL,
  `slug` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `price` float NOT NULL,
  `length` int DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `image_1_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image_2_url` varchar(255) DEFAULT NULL,
  `image_3_url` varchar(255) DEFAULT NULL,
  `image_4_url` varchar(255) DEFAULT NULL,
  `image_5_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `quantity` int NOT NULL,
  `sold_total` int NOT NULL,
  `featured` int NOT NULL,
  `status_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_category_id`, `slug`, `name`, `description`, `price`, `length`, `width`, `height`, `image_1_url`, `image_2_url`, `image_3_url`, `image_4_url`, `image_5_url`, `video_url`, `quantity`, `sold_total`, `featured`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 7, 'fish-tasty-1684138570', 'Fish Tasty 1684138570', 'Omnis molestiae optio totam nisi tenetur nihil nulla. Cumque esse tempora ipsa esse. Et est ad at aliquid quis corporis ut ut et. Voluptatem mollitia accusantium assumenda.', 526, 622, 716, 11, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2022-gru-pin.png?v=1653905316', 'https://picsum.photos/id/73/450/300', 'https://picsum.photos/id/150/450/300', 'https://picsum.photos/id/188/450/300', 'https://picsum.photos/id/227/450/300', NULL, 0, 0, 5, 1, '2023-05-15 08:16:09', '2023-05-23 18:55:45'),
(2, 6, 'hat-handcrafted-1684138578', 'Hat Handcrafted 1684138578', 'Omnis porro nostrum ut deserunt ut eaque tenetur omnis. Optio voluptas ad sit laudantium porro adipisci dolor repudiandae qui. Numquam voluptates et corrupti rerum quaerat quo sunt. Aliquam quam modi voluptas nostrum necessitatibus culpa officiis enim repudiandae. Non facilis sit.', 906, 310, 911, 555, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/Avatar-Pin-Glam-Shot.png?v=1669730048', 'https://picsum.photos/id/52/450/300', 'https://picsum.photos/id/135/450/300', 'https://picsum.photos/id/186/450/300', 'https://picsum.photos/id/203/450/300', NULL, 0, 0, 11, 1, '2023-05-15 08:16:18', '2023-05-23 18:56:19'),
(3, 4, 'soap-rustic-1684138584', 'Soap Rustic 1684138584', 'Ut quos sit quia voluptates quasi voluptas qui corrupti. Voluptas quaerat quam aperiam non mollitia ducimus vero. Dolore est inventore alias qui et impedit ipsa quasi. Veniam tempore dolores et.', 172, 589, 290, 989, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2021-boss-baby-pin.png?v=1635244066', 'https://picsum.photos/id/82/450/300', 'https://picsum.photos/id/139/450/300', 'https://picsum.photos/id/170/450/300', 'https://picsum.photos/id/217/450/300', NULL, 0, 1, 10, 1, '2023-05-15 08:16:23', '2023-05-23 18:55:55'),
(4, 2, 'sausages-handmade-1684138586', 'Sausages Handmade 1684138586', 'Qui id rerum vitae dolorem unde. Sed repellat ab voluptate similique ad consequatur provident. Dignissimos deleniti officiis natus qui incidunt iste quia culpa. Sit consequatur quis omnis sunt amet nisi nihil magnam. Dolores beatae veniam et velit ut vel. Quis optio ea commodi veniam ut dolorem reprehenderit.', 418, 379, 230, 686, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/GoldHeartBadge-2020-Trolls-180px.jpg?v=1635170714', 'https://picsum.photos/id/89/450/300', 'https://picsum.photos/id/109/450/300', 'https://picsum.photos/id/191/450/300', 'https://picsum.photos/id/211/450/300', NULL, 1, 0, 1, 1, '2023-05-15 08:16:25', '2023-05-23 19:17:08'),
(5, 10, 'computer-practical-1684138589', 'Computer Practical 1684138589', 'Reprehenderit non debitis exercitationem non laborum consequatur facilis. Quia ullam fuga pariatur. Quo odit nihil ut quos aliquam sit facere itaque provident. Cum iusto qui dolores repellendus.', 546, 888, 8, 276, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2018-sherlock-gnomes-gold-heart-2.jpg?v=1676906815', 'https://picsum.photos/id/92/450/300', 'https://picsum.photos/id/120/450/300', 'https://picsum.photos/id/185/450/300', 'https://picsum.photos/id/205/450/300', NULL, 0, 0, 1, 1, '2023-05-15 08:16:28', '2023-05-21 21:35:52'),
(6, 3, 'sausages-small-1684138591', 'Sausages Small 1684138591', 'Esse sequi ut occaecati sequi id accusamus enim. Quo qui qui iure repudiandae voluptatem. Quia illo quia saepe.', 891, 823, 448, 440, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2017-papa-smurf-gold-heart.jpg?v=1635243357', 'https://picsum.photos/id/88/450/300', 'https://picsum.photos/id/115/450/300', 'https://picsum.photos/id/180/450/300', 'https://picsum.photos/id/216/450/300', NULL, 30, 0, 1, 1, '2023-05-15 08:16:31', '2023-05-23 19:17:20'),
(7, 2, 'gloves-gorgeous-1684142102', 'Gloves Gorgeous 1684142102', 'Suscipit ut nobis ad ex et officiis voluptatum. Est tenetur itaque. Exercitationem dignissimos sunt praesentium minus id. Excepturi perferendis natus repellat et. Iusto qui excepturi voluptas unde non porro necessitatibus. Et a quibusdam quis officia ipsa maiores enim qui.', 473, 889, 520, 66, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2017-smurfette-gold-heart.jpg?v=1635243651', 'https://picsum.photos/id/69/450/300', 'https://picsum.photos/id/135/450/300', 'https://picsum.photos/id/175/450/300', 'https://picsum.photos/id/217/450/300', NULL, 0, 0, 1, 1, '2023-05-15 09:15:02', '2023-05-21 21:36:19'),
(8, 10, 'fish-incredible-1684433004', 'Fish Incredible 1684433004', 'Saepe soluta eaque. Harum veritatis asperiores corporis voluptatem eaque excepturi. Fugit excepturi et rerum nihil et quod id odit vitae. Aliquid ea vero doloribus dolor. Facere dolor quidem consequuntur enim ad.', 149, 169, 54, 599, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2016-hunger-games-mockingjay-part-2-gold-heart.jpg?v=1641817699', 'https://picsum.photos/id/71/450/300', 'https://picsum.photos/id/104/450/300', 'https://picsum.photos/id/184/450/300', 'https://picsum.photos/id/218/450/300', NULL, 100, 0, 1, 1, '2023-05-18 18:03:24', '2023-05-23 19:17:16'),
(9, 9, 'cheese-practical-1684433005', 'Cheese Practical 1684433005', 'Modi nisi aperiam aspernatur ea voluptates quo rerum. Voluptatem quia consequatur aut consequatur molestiae. Iusto reprehenderit at odio rem nostrum dolorem molestias eos ut. Est qui et aspernatur perferendis quia qui. Laborum rem eius est et asperiores ut aut.', 854, 796, 474, 351, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2015-minions-gold-heart.jpg?v=1636452690', 'https://picsum.photos/id/77/450/300', 'https://picsum.photos/id/111/450/300', 'https://picsum.photos/id/153/450/300', 'https://picsum.photos/id/227/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:25', '2023-05-21 21:50:14'),
(10, 2, 'table-handmade-1684433006', 'Table Handmade 1684433006', 'Molestiae ut qui et eligendi. Qui et porro dolores neque. Nam est explicabo distinctio quia placeat.', 621, 316, 698, 767, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2016-hunger-games-mockingjay-part-2-gold-heart.jpg?v=1641817699', 'https://picsum.photos/id/82/450/300', 'https://picsum.photos/id/114/450/300', 'https://picsum.photos/id/156/450/300', 'https://picsum.photos/id/208/450/300', NULL, 5, 0, 0, 0, '2023-05-18 18:03:25', '2023-05-23 19:17:11'),
(11, 4, 'pants-tasty-1684433007', 'Pants Tasty 1684433007', 'Qui iste molestiae non corporis libero ut minus est. Aut tenetur quas autem voluptatum similique id nam sit ipsam. Hic id ut soluta eos molestiae blanditiis tempore. Odio dicta inventore. Suscipit rerum qui quae dignissimos et enim repellendus.', 784, 576, 26, 186, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2016-hunger-games-mockingjay-part-2-gold-heart.jpg?v=1641817699', 'https://picsum.photos/id/57/450/300', 'https://picsum.photos/id/143/450/300', 'https://picsum.photos/id/175/450/300', 'https://picsum.photos/id/236/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:26', '2023-05-21 21:49:33'),
(13, 6, 'shoes-incredible-1684433008', 'Shoes Incredible 1684433008', 'Molestiae quo hic sunt repudiandae occaecati nostrum. Enim in accusantium. Nisi impedit nihil dolore fugit et magni rem eligendi. Et velit quisquam odio voluptate rerum. Et expedita porro nisi modi et quaerat qui voluptatum. Culpa error quo.', 738, 911, 234, 970, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2013_auto_x2_4215ba9d-fbd2-4d4a-bd8c-39a94e33658f.jpg?v=1676304821', 'https://picsum.photos/id/98/450/300', 'https://picsum.photos/id/104/450/300', 'https://picsum.photos/id/177/450/300', 'https://picsum.photos/id/237/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:27', '2023-05-21 21:50:43'),
(14, 7, 'shirt-ergonomic-1684433008', 'Shirt Ergonomic 1684433008', 'Voluptatibus corporis consequatur repellendus accusamus sequi. Dolor culpa quo non repellat magni inventore. Blanditiis non expedita. Harum officia voluptates dolor ipsa.', 93, 875, 389, 26, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2018-sherlock-gnomes-gold-heart-2.jpg?v=1676906815', 'https://picsum.photos/id/60/450/300', 'https://picsum.photos/id/106/450/300', 'https://picsum.photos/id/175/450/300', 'https://picsum.photos/id/243/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:28', '2023-05-21 21:47:54'),
(15, 3, 'cheese-handcrafted-1684433009', 'Cheese Handcrafted 1684433009', 'Eaque qui dolorum. Placeat ducimus nihil. Ea aut sit perspiciatis qui sed. Aut dolore sunt provident. Omnis sit nesciunt totam esse cum et doloribus aliquam.', 970, 995, 710, 654, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/GoldHeartBadge-2020-Trolls-180px.jpg?v=1635170714', 'https://picsum.photos/id/74/450/300', 'https://picsum.photos/id/143/450/300', 'https://picsum.photos/id/196/450/300', 'https://picsum.photos/id/250/450/300', NULL, 29, 0, 1, 1, '2023-05-18 18:03:28', '2023-05-23 19:17:26'),
(16, 2, 'pants-gorgeous-1684433009', 'Pants Gorgeous 1684433009', 'Vel ut velit non ab voluptatem iusto in sunt voluptate. Non non accusantium. Qui explicabo alias. Doloremque odit praesentium qui et blanditiis debitis maxime. Sed et vel id voluptatum voluptatem omnis.', 417, 510, 728, 371, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2016-hunger-games-mockingjay-part-2-gold-heart.jpg?v=1641817699', 'https://picsum.photos/id/66/450/300', 'https://picsum.photos/id/148/450/300', 'https://picsum.photos/id/152/450/300', 'https://picsum.photos/id/211/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:29', '2023-05-21 21:49:38'),
(17, 4, 'hat-gorgeous-1684433010', 'Hat Gorgeous 1684433010', 'Vel a mollitia reiciendis error aspernatur dignissimos odit ipsam. Exercitationem ipsum quis consequatur a qui officia explicabo. Rem fuga aperiam non voluptatibus sed quos reiciendis numquam quas. Illum assumenda et nostrum voluptatem dolores. Molestiae nostrum ullam distinctio necessitatibus dolorum magnam ut cum. Non fuga et sit.', 738, 514, 469, 610, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2018-sherlock-gnomes-gold-heart-2.jpg?v=1676906815', 'https://picsum.photos/id/82/450/300', 'https://picsum.photos/id/123/450/300', 'https://picsum.photos/id/189/450/300', 'https://picsum.photos/id/231/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:29', '2023-05-21 21:47:56'),
(18, 10, 'salad-tasty-1684433010', 'Salad Tasty 1684433010', 'Beatae magni minima rerum commodi. Quibusdam architecto fuga. Soluta quos qui.', 655, 15, 562, 789, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2013_auto_x2_4215ba9d-fbd2-4d4a-bd8c-39a94e33658f.jpg?v=1676304821', 'https://picsum.photos/id/58/450/300', 'https://picsum.photos/id/141/450/300', 'https://picsum.photos/id/185/450/300', 'https://picsum.photos/id/230/450/300', NULL, 76, 0, 0, 0, '2023-05-18 18:03:30', '2023-05-23 19:17:33'),
(19, 6, 'chicken-refined-1684433011', 'Chicken Refined 1684433011', 'Optio pariatur ut ipsum et accusantium. Deserunt modi vel qui numquam cupiditate iusto expedita sequi. Est suscipit rerum tempora alias nihil eveniet. Doloribus voluptas optio odio est. Ea animi neque porro molestiae soluta ipsum quam autem.', 212, 264, 440, 252, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2017-papa-smurf-gold-heart.jpg?v=1635243357', 'https://picsum.photos/id/60/450/300', 'https://picsum.photos/id/132/450/300', 'https://picsum.photos/id/176/450/300', 'https://picsum.photos/id/204/450/300', NULL, 98, 0, 1, 1, '2023-05-18 18:03:30', '2023-05-23 19:17:36'),
(20, 7, 'car-rustic-1684433011', 'Car Rustic 1684433011', 'Sit aspernatur ea odio inventore voluptatibus sint veritatis non omnis. Quos rerum necessitatibus quia quaerat sequi omnis. Aut nihil sit soluta deleniti sapiente. Tempore et voluptate nemo. Adipisci placeat nostrum aut rem. Esse et velit ut harum odit eaque itaque.', 261, 583, 799, 814, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/Avatar-Pin-Glam-Shot.png?v=1669730048', 'https://picsum.photos/id/83/450/300', 'https://picsum.photos/id/104/450/300', 'https://picsum.photos/id/153/450/300', 'https://picsum.photos/id/221/450/300', NULL, 55, 0, 1, 1, '2023-05-18 18:03:31', '2023-05-23 19:17:30'),
(21, 6, 'chips-rustic-1684433012', 'Chips Rustic 1684433012', 'Occaecati et aut qui nam. Maiores veritatis ex dolores eos repellat est. Illo consequatur fuga. Tempore est molestias omnis alias et recusandae. Adipisci necessitatibus et molestiae cum quo eum soluta.', 982, 97, 77, 865, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2016-hunger-games-mockingjay-part-2-gold-heart.jpg?v=1641817699', 'https://picsum.photos/id/97/450/300', 'https://picsum.photos/id/150/450/300', 'https://picsum.photos/id/184/450/300', 'https://picsum.photos/id/204/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:32', '2023-05-21 21:49:40'),
(22, 2, 'ball-refined-1684433013', 'Ball Refined 1684433013', 'Vel enim quidem omnis est laboriosam dolores. Autem omnis ut iste ad ipsam corporis. Rem similique nihil nisi. Voluptas suscipit ad quibusdam aut impedit molestiae magnam. Libero voluptatem omnis in iusto eveniet provident quos.', 412, 303, 541, 167, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/GoldHeartBadge-2020-Trolls-180px.jpg?v=1635170714', 'https://picsum.photos/id/54/450/300', 'https://picsum.photos/id/121/450/300', 'https://picsum.photos/id/155/450/300', 'https://picsum.photos/id/230/450/300', NULL, 42, 0, 1, 1, '2023-05-18 18:03:33', '2023-05-23 19:17:41'),
(23, 9, 'gloves-incredible-1684433014', 'Gloves Incredible 1684433014', 'Sed sit quae. Possimus perspiciatis delectus in et error. Ipsum laudantium beatae eveniet.', 648, 890, 373, 18, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2017-papa-smurf-gold-heart.jpg?v=1635243357', 'https://picsum.photos/id/66/450/300', 'https://picsum.photos/id/107/450/300', 'https://picsum.photos/id/167/450/300', 'https://picsum.photos/id/209/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:33', '2023-05-21 21:49:21'),
(24, 9, 'bacon-handcrafted-1684433015', 'Bacon Handcrafted 1684433015', 'Recusandae natus qui. Nostrum neque numquam quisquam. Delectus ut laudantium assumenda omnis nisi id. Dicta harum itaque est ducimus aliquam deserunt perferendis veniam ut. Qui autem aperiam aspernatur eum et mollitia. Sapiente maxime autem enim ullam doloremque.', 44, 30, 599, 825, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/Avatar-Pin-Glam-Shot.png?v=1669730048', 'https://picsum.photos/id/67/450/300', 'https://picsum.photos/id/135/450/300', 'https://picsum.photos/id/185/450/300', 'https://picsum.photos/id/235/450/300', NULL, 0, 0, 0, 0, '2023-05-18 18:03:34', '2023-05-21 21:47:17'),
(25, 1, 'tuna-incredible-1684433034', 'Tuna Incredible 1684433034', 'Quod quasi laudantium. Sed et quasi autem officia doloremque id ut non. Corrupti vitae adipisci in ipsam provident.', 679, 530, 699, 977, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/GoldHeartBadge-2020-Trolls-180px.jpg?v=1635170714', 'https://picsum.photos/id/52/450/300', 'https://picsum.photos/id/123/450/300', 'https://picsum.photos/id/184/450/300', 'https://picsum.photos/id/221/450/300', NULL, 0, 0, 2, 1, '2023-05-18 18:03:54', '2023-05-23 18:55:36'),
(26, 1, 'pizza-small-1684433036', 'Pizza Small 1684433036', 'Sunt a eum ab et veniam nisi dolorem non. Molestiae enim voluptas rerum aut ab sint. Fugit reiciendis voluptatibus quia voluptas expedita fugiat ut voluptatem. Quae molestiae ipsa enim quo vel nulla velit harum quia. Illo ducimus ipsam nobis dolore dolorem repudiandae. Soluta nulla deserunt asperiores ut quaerat provident eveniet neque.', 304, 659, 695, 111, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2015-minions-gold-heart.jpg?v=1636452690', 'https://picsum.photos/id/59/450/300', 'https://picsum.photos/id/122/450/300', 'https://picsum.photos/id/198/450/300', 'https://picsum.photos/id/218/450/300', NULL, 0, 0, 3, 1, '2023-05-18 18:03:55', '2023-05-23 18:55:40'),
(27, 1, 'table-licensed-1684433036', 'Table Licensed 1684433036', 'Rerum est ut veniam occaecati perspiciatis dicta saepe ipsa. Dignissimos consequatur eveniet. Sit architecto culpa ut dolorum non.', 975, 541, 382, 347, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2017-papa-smurf-gold-heart.jpg?v=1635243357', 'https://picsum.photos/id/98/450/300', 'https://picsum.photos/id/143/450/300', 'https://picsum.photos/id/175/450/300', 'https://picsum.photos/id/230/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:56', '2023-05-21 21:49:18'),
(28, 1, 'bike-fantastic-1684433036', 'Bike Fantastic 1684433036', 'Qui tempora odio quasi consequuntur voluptatem in asperiores. Vel ea expedita. Nam delectus maxime in illum voluptas dolores fugit iure dolore. Ipsam quasi architecto. Saepe rerum omnis sit consequatur sit inventore id.', 647, 968, 802, 690, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2017-smurfette-gold-heart.jpg?v=1635243651', 'https://picsum.photos/id/55/450/300', 'https://picsum.photos/id/142/450/300', 'https://picsum.photos/id/183/450/300', 'https://picsum.photos/id/204/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:56', '2023-05-21 21:49:01'),
(29, 1, 'bike-tasty-1684433037', 'Bike Tasty 1684433037', 'Nostrum dolore aperiam minima sint doloremque asperiores incidunt in. Quas inventore sapiente vel voluptatum est officiis ex. Eos facilis in corporis aut aut quasi consequuntur. Minima quasi aut nihil iusto facere maxime rerum et. Et ut ea dolorem architecto nulla nostrum.', 338, 527, 878, 404, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/Avatar-Pin-Glam-Shot.png?v=1669730048', 'https://picsum.photos/id/97/450/300', 'https://picsum.photos/id/135/450/300', 'https://picsum.photos/id/159/450/300', 'https://picsum.photos/id/227/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:56', '2023-05-21 21:47:13'),
(30, 1, 'towels-rustic-1684433037', 'Towels Rustic 1684433037', 'Accusamus corporis qui occaecati quaerat beatae. Quaerat dolorum veritatis. Impedit omnis harum ex quo quis dolorem facilis. Quisquam quisquam et vitae ratione cum officia. Cupiditate fuga deserunt necessitatibus optio odio nisi non animi.', 978, 255, 656, 606, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2018-sherlock-gnomes-gold-heart-2.jpg?v=1676906815', 'https://picsum.photos/id/94/450/300', 'https://picsum.photos/id/124/450/300', 'https://picsum.photos/id/189/450/300', 'https://picsum.photos/id/232/450/300', NULL, 0, 0, 0, 0, '2023-05-18 18:03:57', '2023-05-21 21:48:05'),
(31, 1, 'chips-rustic-1684433038', 'Chips Rustic 1684433038', 'Placeat veritatis nulla. Commodi incidunt animi dolores quia quae similique. Voluptas itaque ab.', 539, 127, 288, 540, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2017-smurfette-gold-heart.jpg?v=1635243651', 'https://picsum.photos/id/93/450/300', 'https://picsum.photos/id/106/450/300', 'https://picsum.photos/id/156/450/300', 'https://picsum.photos/id/218/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:57', '2023-05-21 21:48:56'),
(32, 1, 'fish-handmade-1684433038', 'Fish Handmade 1684433038', 'Vel laboriosam omnis animi harum nulla accusamus maxime et. Enim consequatur cumque ut a. Ipsa tempora veniam id nihil.', 44, 694, 424, 807, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/GoldHeartBadge-2020-Trolls-180px.jpg?v=1635170714', 'https://picsum.photos/id/79/450/300', 'https://picsum.photos/id/146/450/300', 'https://picsum.photos/id/200/450/300', 'https://picsum.photos/id/246/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:58', '2023-05-21 21:47:32'),
(33, 1, 'gloves-licensed-1684433039', 'Gloves Licensed 1684433039', 'Nihil deleniti dolorem tempora consequatur quod. Rem soluta quasi praesentium ipsam et temporibus ullam explicabo. Quibusdam eos quaerat ad cupiditate dolores voluptas quibusdam aliquid. Vero dolorem rerum aliquid.', 304, 308, 89, 483, 'https://cdn.shopify.com/s/files/1/0606/1074/0441/products/2016-hunger-games-mockingjay-part-2-gold-heart.jpg?v=1641817699', 'https://picsum.photos/id/61/450/300', 'https://picsum.photos/id/131/450/300', 'https://picsum.photos/id/166/450/300', 'https://picsum.photos/id/241/450/300', NULL, 0, 0, 1, 1, '2023-05-18 18:03:58', '2023-05-21 21:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `slug` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `slug`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'gold-hearts', 'Gold Hearts', 'Aliquam rerum necessitatibus illo dolorum deserunt alias dolor a. Ut quam illo reiciendis sunt consectetur consequatur dolores ut. Et commodi sequi quo iure earum rem. Nostrum deleniti quis.\r\n\r\nNostrum rerum Aliquam illo illo deserunt alias deserunt a. Ut quam illo reiciendis sunt consectetur consequatur dolores ut. Et commodi sequi quo iure earum rem. Nostrum deleniti quis.Aliquam rerum necessitatibus illo dolorum deserunt alias dolor a.', '2023-05-15 08:19:13', '2023-05-19 19:03:55'),
(2, 1, 'merchandise', 'Merchandise', 'Aliquam rerum necessitatibus illo dolorum deserunt alias dolor a. Ut quam illo reiciendis sunt consectetur consequatur dolores ut. Et commodi sequi quo iure earum rem. Nostrum deleniti quis.', '2023-05-15 08:19:14', '2023-05-19 19:03:58'),
(3, 2, 'table-sleek-1684138755', 'Table Sleek 1684138755', 'Aliquam rerum necessitatibus illo dolorum deserunt alias dolor a. Ut quam illo reiciendis sunt consectetur consequatur dolores ut. Et commodi sequi quo iure earum rem. Nostrum deleniti quis.', '2023-05-15 08:19:15', '2023-05-19 17:34:31'),
(4, 2, 'bacon-sleek-1684138756', 'Bacon Sleek 1684138756', NULL, '2023-05-15 08:19:15', '2023-05-15 08:19:15'),
(5, 1, 'table-tasty-1684138756', 'Table Tasty 1684138756', NULL, '2023-05-15 08:19:16', '2023-05-15 08:19:16'),
(6, 3, 'ball-incredible-1684138756', 'Ball Incredible 1684138756', NULL, '2023-05-15 08:19:16', '2023-05-15 08:19:16'),
(7, 1, 'towels-incredible-1684138757', 'Towels Incredible 1684138757', NULL, '2023-05-15 08:19:16', '2023-05-15 08:19:16'),
(8, 3, 'pizza-ergonomic-1684138758', 'Pizza Ergonomic 1684138758', NULL, '2023-05-15 08:19:18', '2023-05-15 08:19:18'),
(9, 3, 'tuna-handmade-1684138759', 'Tuna Handmade 1684138759', NULL, '2023-05-15 08:19:18', '2023-05-15 08:19:18'),
(10, 2, 'chips-sleek-1684142151', 'Chips Sleek 1684142151', NULL, '2023-05-15 09:15:51', '2023-05-15 09:15:51'),
(11, 3, 'fish-gorgeous-1684486073', 'Fish Gorgeous 1684486073', NULL, '2023-05-19 08:47:53', '2023-05-19 08:47:53'),
(13, 2, 'car-small-1684517566', 'Car Small 1684517566', NULL, '2023-05-19 17:32:46', '2023-05-19 17:32:46'),
(14, 1, 'bike-awesome-1684517592', 'Bike Awesome 1684517592', 'Voluptatem dignissimos consequuntur. Adipisci possimus provident sapiente repudiandae deserunt omnis. Cum rem est doloribus officiis eius.', '2023-05-19 17:33:11', '2023-05-19 17:33:11'),
(15, 2, 'soap-licensed-1684517622', 'Soap Licensed 1684517622', 'Aliquam rerum necessitatibus illo dolorum deserunt alias dolor a. Ut quam illo reiciendis sunt consectetur consequatur dolores ut. Et commodi sequi quo iure earum rem. Nostrum deleniti quis.', '2023-05-19 17:33:41', '2023-05-19 17:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `description` text NOT NULL,
  `rating` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `description`, `rating`, `created_at`, `updated_at`) VALUES
(1, 3, 'Incidunt nobis incidunt. Animi accusantium ea. Et id omnis eveniet quia.', 2, '2023-05-15 20:18:48', '2023-05-15 20:18:48'),
(2, 2, 'Rerum aut sunt consequatur non veritatis deserunt quasi. Exercitationem sit sit sint veniam aliquam quis beatae. Voluptatem nobis officia velit necessitatibus maxime sunt. Illum delectus officiis provident neque saepe.', 3, '2023-05-15 20:18:49', '2023-05-15 20:18:49'),
(3, 3, 'Occaecati non voluptas qui beatae in. Temporibus aperiam error. Aut odit architecto dignissimos minima id vel voluptas suscipit. Aut earum aliquam dolore possimus ratione. Aut nam eos doloremque animi nostrum laboriosam. Repellendus quia aut molestiae enim incidunt dolorum.', 5, '2023-05-15 20:18:50', '2023-05-15 20:18:50'),
(4, 2, 'Et ea veritatis impedit. Non eaque placeat recusandae autem provident similique sit fugit cum. Optio officiis veritatis perferendis.', 5, '2023-05-15 20:18:50', '2023-05-15 20:18:50'),
(5, 2, 'Voluptate sed quibusdam aut magni corporis expedita nulla. Sint fugit dicta aperiam. Ut blanditiis est mollitia. Accusantium rerum eos ut aut voluptates cum earum ipsa voluptas. Nesciunt unde rerum dicta consequatur molestiae dolorum nesciunt amet illo. Voluptas aut eaque eius provident sint sed omnis.', 1, '2023-05-15 20:21:14', '2023-05-15 20:21:14'),
(6, 3, 'Sed possimus consequatur et temporibus et mollitia. Rem et est magni dolorem eos consequatur officia id. Labore odio molestiae molestiae ea ullam. Laudantium voluptatum velit voluptatibus recusandae voluptatem numquam deleniti eius quis. Quia perferendis pariatur doloribus libero iusto in dignissimos placeat natus.', 4, '2023-05-15 20:24:53', '2023-05-15 20:24:53'),
(7, 2, 'Rerum deserunt iste dolor praesentium quis quod eligendi excepturi at. Fugiat quod doloremque. Autem dolor facere necessitatibus non. Doloribus ipsam saepe assumenda quod a deserunt laudantium et adipisci.', 2, '2023-05-19 08:47:53', '2023-05-19 08:47:53'),
(8, 2, 'Optio perferendis placeat nihil reprehenderit iste in et dolorem. Accusantium quidem iusto animi voluptatem qui amet. Aut repudiandae quos repudiandae sit nemo magnam sed.', 3, '2023-05-19 08:49:30', '2023-05-19 08:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` varchar(36) NOT NULL,
  `user_id` int DEFAULT NULL,
  `refresh_token` varchar(2048) DEFAULT NULL,
  `platform_id` int NOT NULL,
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `expires_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `refresh_token`, `platform_id`, `is_blocked`, `expires_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0cbff560-7e06-4d29-a843-5bb333d1f0d1', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjBjYmZmNTYwLTdlMDYtNGQyOS1hODQzLTViYjMzM2QxZjBkMSIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0Njo0MS42OTQ2OTkrMDc6MDAiLCJleHBpcmVkX2F0IjoiMjAyNC0wNi0yNFQwMTo0Njo0MS42OTQ2OTkrMDc6MDAifQ.QD_kRiLpxxrGoiXREzMQhYwsq4-ITxw4fzlUqR0G7gg', 0, 0, '2024-06-23 18:46:42', '2023-06-24 18:46:42', '2023-06-24 18:46:42', NULL),
('28866c8a-bdca-433c-b4b2-001abcc6df41', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjI4ODY2YzhhLWJkY2EtNDMzYy1iNGIyLTAwMWFiY2M2ZGY0MSIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0NDoyMC4yNDY2NzMrMDc6MDAiLCJleHBpcmVkX2F0IjoiMjAyNC0wNi0yNFQwMTo0NDoyMC4yNDY2NzMrMDc6MDAifQ.i9g7qhMNMZdExW6SVDDFT-FDSN13ywvnRd5eNhpP8b8', 0, 0, '2024-06-23 18:44:20', '2023-06-24 18:44:20', '2023-06-24 18:44:20', NULL),
('2aada503-6464-42ea-8c44-9678c2de4733', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjJhYWRhNTAzLTY0NjQtNDJlYS04YzQ0LTk2NzhjMmRlNDczMyIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0NDoxOC42NjEwMyswNzowMCIsImV4cGlyZWRfYXQiOiIyMDI0LTA2LTI0VDAxOjQ0OjE4LjY2MTAzKzA3OjAwIn0.I67ozYZQ2dJUTrN8hpdm9aKBgEZa4Z_wOeiEXZitPrI', 0, 0, '2024-06-23 18:44:19', '2023-06-24 18:44:19', '2023-06-24 18:44:19', NULL),
('30721819-ce8a-48a6-aeba-ee25bf52cf54', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjMwNzIxODE5LWNlOGEtNDhhNi1hZWJhLWVlMjViZjUyY2Y1NCIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0NTo0OS45MDQ4NjQrMDc6MDAiLCJleHBpcmVkX2F0IjoiMjAyNC0wNi0yNFQwMTo0NTo0OS45MDQ4NjQrMDc6MDAifQ.IfavH7s_OvR5zcgaJJn8pl1mNP_oZ2-KOZ_8PfLdPKo', 0, 0, '2024-06-23 18:45:50', '2023-06-24 18:45:50', '2023-06-24 18:45:50', NULL),
('422d18b6-14d2-4183-903a-2b418b80aa4e', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjQyMmQxOGI2LTE0ZDItNDE4My05MDNhLTJiNDE4YjgwYWE0ZSIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0NDoyNC4wNDQ4MTErMDc6MDAiLCJleHBpcmVkX2F0IjoiMjAyNC0wNi0yNFQwMTo0NDoyNC4wNDQ4MTErMDc6MDAifQ.ureuYei8-M4MO4F8a_PJkjSQrH1BG4ZsfbbWHlkdMf8', 0, 0, '2024-06-23 18:44:24', '2023-06-24 18:44:24', '2023-06-24 18:44:24', NULL),
('5318bc85-f5a6-4eb6-9f89-d319a33a18d7', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjUzMThiYzg1LWY1YTYtNGViNi05Zjg5LWQzMTlhMzNhMThkNyIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0NDoxOS41Mzk1NCswNzowMCIsImV4cGlyZWRfYXQiOiIyMDI0LTA2LTI0VDAxOjQ0OjE5LjUzOTU0KzA3OjAwIn0.MOT6GVi9Df0zdWXEBkgN6hmgmNVSMux-YFbsW4HgU7c', 0, 0, '2024-06-23 18:44:20', '2023-06-24 18:44:20', '2023-06-24 18:44:20', NULL),
('9b8c67b7-f09b-4755-b375-a0d114ee736b', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjliOGM2N2I3LWYwOWItNDc1NS1iMzc1LWEwZDExNGVlNzM2YiIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0NDoyMC45NzYwODQrMDc6MDAiLCJleHBpcmVkX2F0IjoiMjAyNC0wNi0yNFQwMTo0NDoyMC45NzYwODQrMDc6MDAifQ.lIG4C_46w6eRE4DHzJbkv1E9KAEnoDpbRFTk2jOW-II', 0, 0, '2024-06-23 18:44:21', '2023-06-24 18:44:21', '2023-06-24 18:44:21', NULL),
('9e80d660-ef6c-4bcd-8d00-d01912619c32', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjllODBkNjYwLWVmNmMtNGJjZC04ZDAwLWQwMTkxMjYxOWMzMiIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0MzoxOC44NDA4MDMrMDc6MDAiLCJleHBpcmVkX2F0IjoiMjAyNC0wNi0yNFQwMTo0MzoxOC44NDA4MDMrMDc6MDAifQ.mU3gmE9Yw5rViJGXnMhpr1ui3-ZiobXZhVFuPnfxcO8', 0, 0, '2024-06-23 18:43:19', '2023-06-24 18:43:19', '2023-06-24 18:43:19', NULL),
('a47bc2d2-888a-4893-a220-d27f121b63b7', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImE0N2JjMmQyLTg4OGEtNDg5My1hMjIwLWQyN2YxMjFiNjNiNyIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0NjoxNC43MzM0ODQrMDc6MDAiLCJleHBpcmVkX2F0IjoiMjAyNC0wNi0yNFQwMTo0NjoxNC43MzM0ODQrMDc6MDAifQ.PgC3LTyUOgksMVMMvU9-H1vpgDK9DyF88gb6DflVe8c', 0, 0, '2024-06-23 18:46:15', '2023-06-24 18:46:15', '2023-06-24 18:46:15', NULL),
('a9a3b4c0-360b-4e3e-aeb1-f525d76462e2', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImE5YTNiNGMwLTM2MGItNGUzZS1hZWIxLWY1MjVkNzY0NjJlMiIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0NDozNS4wMDU4NDcrMDc6MDAiLCJleHBpcmVkX2F0IjoiMjAyNC0wNi0yNFQwMTo0NDozNS4wMDU4NDcrMDc6MDAifQ.aJxG_BJ0TnfdCMtbtQD6V21pc7I-MvImtgJfLsXTgJ0', 0, 0, '2024-06-23 18:44:35', '2023-06-24 18:44:35', '2023-06-24 18:44:35', NULL),
('b00af2c3-26de-4d5d-affa-8b0958dd4a47', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImIwMGFmMmMzLTI2ZGUtNGQ1ZC1hZmZhLThiMDk1OGRkNGE0NyIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0MzowNy4xNjgzMDMrMDc6MDAiLCJleHBpcmVkX2F0IjoiMjAyNC0wNi0yNFQwMTo0MzowNy4xNjgzMDMrMDc6MDAifQ.ryZAOpbvYe7GEJOHUrhP6NM4Pu_TERwIEcqWn18mjh0', 0, 0, '2024-06-23 18:43:07', '2023-06-24 18:43:07', '2023-06-24 18:43:07', NULL),
('bc63c690-20d8-48fa-87f7-b4a4fccdb59c', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImJjNjNjNjkwLTIwZDgtNDhmYS04N2Y3LWI0YTRmY2NkYjU5YyIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0NDoyMC41MzM0MTErMDc6MDAiLCJleHBpcmVkX2F0IjoiMjAyNC0wNi0yNFQwMTo0NDoyMC41MzM0MTErMDc6MDAifQ.P6o93aCuDuuswySi1jSAi08PKwUbUZl0hGn5M7o5nKc', 0, 0, '2024-06-23 18:44:21', '2023-06-24 18:44:21', '2023-06-24 18:44:21', NULL),
('c3bf412a-a226-4835-b5e7-a0810028caae', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImMzYmY0MTJhLWEyMjYtNDgzNS1iNWU3LWEwODEwMDI4Y2FhZSIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0NDoyMi4zNDUxMTcrMDc6MDAiLCJleHBpcmVkX2F0IjoiMjAyNC0wNi0yNFQwMTo0NDoyMi4zNDUxMTgrMDc6MDAifQ.BF8gd3cBiABhfdMn_D6TUQDUM50YrtJmgdghIJtrtOA', 0, 0, '2024-06-23 18:44:22', '2023-06-24 18:44:22', '2023-06-24 18:44:22', NULL),
('c9d00678-c51d-4909-b893-35c0b5dafdc5', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImM5ZDAwNjc4LWM1MWQtNDkwOS1iODkzLTM1YzBiNWRhZmRjNSIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0NDoxNy4zNjAwMzgrMDc6MDAiLCJleHBpcmVkX2F0IjoiMjAyNC0wNi0yNFQwMTo0NDoxNy4zNjAwMzgrMDc6MDAifQ.lv5SX1VHPs1YVFxLqXJkLsKTMkHZy3Qv1RG8anwnKIw', 0, 0, '2024-06-23 18:44:17', '2023-06-24 18:44:17', '2023-06-24 18:44:17', NULL),
('f5d94d46-5194-4776-a745-3e1f50729171', 149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImY1ZDk0ZDQ2LTUxOTQtNDc3Ni1hNzQ1LTNlMWY1MDcyOTE3MSIsInVzZXJfaWQiOjE0OSwiaXNzdWVkX2F0IjoiMjAyMy0wNi0yNVQwMTo0NDoyMS40NzE5NTUrMDc6MDAiLCJleHBpcmVkX2F0IjoiMjAyNC0wNi0yNFQwMTo0NDoyMS40NzE5NTUrMDc6MDAifQ.MiYvOfCeWtlUF82etOhD1BtFXYCyCvLKohKCI6LyMTc', 0, 0, '2024-06-23 18:44:21', '2023-06-24 18:44:21', '2023-06-24 18:44:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `total` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `id` int NOT NULL,
  `product_category_id` int DEFAULT NULL,
  `slug` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `price` float NOT NULL,
  `length` int DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `image_1_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image_2_url` varchar(255) DEFAULT NULL,
  `image_3_url` varchar(255) DEFAULT NULL,
  `image_4_url` varchar(255) DEFAULT NULL,
  `image_5_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `product_category_name` int NOT NULL,
  `product_category_slug` varchar(512) NOT NULL,
  `product_category_description` text NOT NULL,
  `is_featured` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address_line_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `postal_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `company`, `address`, `address_line_2`, `city`, `postal_code`, `phone_number`) VALUES
(1, 'John Doe', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(2, 'Jane Doe', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(3, 'Bob Smith', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(4, 'Samantha Lee', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(5, 'Michael Johnson', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(6, 'Emily Davis', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(7, 'Chris Brown', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(8, 'Katie Peterson', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(9, 'Jessica Wilson', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(10, 'William Taylor', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(11, 'Ashley Clark', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(12, 'Daniel Rodriguez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(13, 'Natalie Anderson', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(14, 'James Lee', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(15, 'Laura Miller', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(16, 'Brian Jones', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(17, 'Julia Martinez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(18, 'Charles Garcia', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(19, 'Olivia Wright', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(20, 'Kevin Scott', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(21, 'Alex Turner', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(22, 'Sophia Thomas', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(23, 'Joshua Baker', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(24, 'Evelyn Green', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(25, 'Samuel Carter', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(26, 'Hannah Phillips', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(27, 'Matthew Martin', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(28, 'Chloe Young', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(29, 'Robert Gonzalez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(30, 'Isabella Hill', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(31, 'Richard Evans', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(32, 'Lily Allen', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(33, 'George Moore', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(34, 'Madison Wright', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(35, 'Erica Foster', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(36, 'Steven Nelson', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(37, 'Avery Perez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(38, 'Mason Baker', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(39, 'Victoria Campbell', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(40, 'Timothy Mitchell', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(41, 'Leah Powell', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(42, 'Andrew Torres', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(43, 'Claire Mitchell', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(44, 'Justin Flores', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(45, 'Allison Powell', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(46, 'Keith Ortiz', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(47, 'Amanda Baker', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(48, 'Anthony Cruz', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(49, 'Madeline Cooper', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(50, 'Peter Ramirez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(51, 'Jasmine Young', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(52, 'Caleb King', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(53, 'Makayla Foster', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(54, 'Adrian Rivera', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(55, 'Brianna Bailey', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(56, 'Julian Collins', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(57, 'Mackenzie Diaz', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(58, 'Connor Peterson', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(59, 'Lauren Perez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(60, 'Maxwell Cooper', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(61, 'Kaitlyn Evans', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(62, 'Austin James', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(63, 'Caroline Hill', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(64, 'Logan Barnes', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(65, 'Katherine Ross', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(66, 'Tyler Diaz', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(67, 'Savannah Flores', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(68, 'Luke Bailey', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(69, 'Abigail Hernandez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(70, 'Jason Barnes', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(71, 'Audrey Collins', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(72, 'Ethan Ortiz', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(73, 'Elizabeth Powell', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(74, 'Nicholas Reyes', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(75, 'Natalie Ortiz', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(76, 'Gavin Bryant', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(77, 'Hailey James', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(78, 'Zachary Adams', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(79, 'Gabriella Ramirez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(80, 'Brandon Hayes', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(81, 'Isabelle Wright', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(82, 'David Parker', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(83, 'Lila Cooper', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(84, 'Johnathan Carter', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(85, 'Avery Davis', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(86, 'Molly Flores', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(87, 'Tristan Garcia', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(88, 'Riley Powell', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(89, 'Nathan Adams', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(90, 'Nora Diaz', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(91, 'Brayden Martinez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(92, 'Maria Hernandez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(93, 'Eliana Ortiz', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(94, 'Dylan Ross', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(95, 'Annabelle Powell', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(96, 'Santiago Reyes', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(97, 'Mia Wright', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(98, 'Henry Hayes', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(99, 'Megan Barnes', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(100, 'Trevor Edwards', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(101, 'Lila Rodriguez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(102, 'Josiah Collins', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(103, 'Isabelle Cruz', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(104, 'Alexander Cooper', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(105, 'Sophie Anderson', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(106, 'Lucas Wright', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(107, 'Peyton Hernandez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(108, 'Jayden Carter', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(109, 'Makayla Williams', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(110, 'David Flores', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(111, 'Maya Adams', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(112, 'Isabella Diaz', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(113, 'Jacob Ross', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(114, 'Avery Flores', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(115, 'Leah Allen', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(116, 'Gavin Perez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(117, 'Mackenzie Baker', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(118, 'Benjamin Hill', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(119, 'Katherine Parker', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(120, 'Nolan Gonzalez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(121, 'Sophie Rodriguez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(122, 'Landon Clark', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(123, 'Amelia Taylor', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(124, 'Isabella Evans', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(125, 'Ethan Foster', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(126, 'Kaylee Campbell', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(127, 'Matthew Davis', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(128, 'Aaliyah Ramirez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(129, 'Ella Peterson', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(130, 'Madison Edwards', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(131, 'Kaitlyn Turner', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(132, 'Jordan Young', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(133, 'Nolan Martinez', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(134, 'Sophie Collins', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(135, 'Morgan Lewis', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(136, 'Ryan Evans', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(137, 'Anthony Wright', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(138, 'Audrey Baker', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(139, 'Caroline Parker', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(140, 'Emma Wilson', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(141, 'Logan Turner', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(142, 'Julian Campbell', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(143, 'Madison Lee', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(144, 'Jacob Adams', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(145, 'Cameron White', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(146, 'Eliana Smith', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(147, 'Nicholas Jones', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(148, 'Lila Anderson', NULL, '', NULL, NULL, NULL, '', '', '', NULL),
(149, 'inara', 'inara', 'inara@gmail.com', '$2a$10$mkmqKAlRWiyB3S8dREBGbu5xTdG1tVcVDZG4UsH4RV32xSM.Ff.72', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`slug`),
  ADD KEY `category_id` (`product_category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_ibfk_1` (`parent_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`slug`),
  ADD KEY `category_id` (`product_category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
