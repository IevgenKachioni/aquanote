-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 17, 2017 at 12:03 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aquanote`
--

-- --------------------------------------------------------

--
-- Table structure for table `genus`
--

CREATE TABLE `genus` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sub_family` varchar(255) DEFAULT NULL,
  `species_count` int(10) UNSIGNED DEFAULT NULL,
  `fun_fact` varchar(255) DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genus`
--

INSERT INTO `genus` (`id`, `name`, `sub_family`, `species_count`, `fun_fact`, `is_published`) VALUES
(60, 'Chelonia', 'Culpa consequatur.', 93263, 'Accusamus nihil repellat vero omnis voluptates id amet et.', 1),
(61, 'Chelonia', 'Suscipit qui.', 46721, 'Quam ipsam voluptatem cupiditate sed natus debitis voluptas.', 0),
(62, 'Carcharodon', 'Laudantium sit.', 41789, 'Dignissimos error et itaque quibusdam tempora velit.', 1),
(63, 'Carcharodon', 'Ut velit soluta.', 69263, 'Debitis et saepe eum sint dolorem delectus.', 1),
(65, 'Trichechus', 'Nostrum soluta qui.', 21198, 'Velit reiciendis aperiam et fuga.', 0),
(66, 'Eumetopias', 'Nisi placeat cumque.', 44669, 'Modi saepe architecto unde non dicta eveniet exercitationem.', 1),
(67, 'Eumetopias', 'Porro sed magni.', 2034, 'Voluptas sint non voluptates.', 1),
(68, 'Cucumaria', 'Optio quos qui illo.', 42414, 'Vero a officia id corporis incidunt saepe.', 1),
(69, 'Balistoides', 'Esse hic eligendi.', 58075, 'Ab voluptas sed a nam et sint.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `genus_note`
--

CREATE TABLE `genus_note` (
  `id` int(10) UNSIGNED NOT NULL,
  `genus_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_avatar_filename` varchar(255) DEFAULT NULL,
  `note` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genus_note`
--

INSERT INTO `genus_note` (`id`, `genus_id`, `username`, `user_avatar_filename`, `note`, `created_at`) VALUES
(102, 62, 'wiza.asia', 'leanna.jpeg', 'Ducimus eos odit amet et est ut eum. Molestiae quidem ut sunt et quidem. Accusamus aut nemo fuga est placeat rerum ut.', '2016-11-29 15:02:30'),
(103, 66, 'naomi.marvin', 'leanna.jpeg', 'Nam et eum architecto. Repellendus illo veritatis qui ex. Veritatis voluptate vel possimus omnis aut. Sunt cumque asperiores incidunt iure. Cum culpa rem aut rerum.', '2016-12-08 22:56:27'),
(104, 67, 'omer.mueller', 'leanna.jpeg', 'Architecto fugiat nemo omnis consequatur recusandae qui cupiditate. Quod veritatis vel optio provident. Incidunt magnam molestias et quibusdam et ab quo voluptatum. Ipsum voluptatibus est accusantium eveniet. Atque possimus aut dolores quis totam incidunt ducimus aperiam.', '2016-11-14 19:07:18'),
(105, 60, 'russel.bertrand', 'ryan.jpeg', 'Culpa natus consequatur reiciendis sit et nihil ut porro. Laborum iure molestiae et dolore. Molestiae iste in dolores harum. Sequi quia quasi quae sint saepe numquam tempora et.', '2017-02-23 08:14:47'),
(106, 60, 'wyman12', 'leanna.jpeg', 'Ea similique ad sed. Quod nulla maxime voluptas. Inventore esse harum accusantium rerum nulla voluptatem voluptas. Quos sed autem voluptatibus eum aut nesciunt.', '2017-03-03 18:44:46'),
(107, 69, 'alfreda.lakin', 'leanna.jpeg', 'Similique ut voluptatem laudantium perferendis. Quam vero fuga corrupti omnis temporibus maxime sint. Laudantium quod magni non voluptas fuga. Autem non non explicabo et.', '2016-11-15 02:25:27'),
(108, 60, 'stuart.schneider', 'ryan.jpeg', 'Rerum in cupiditate voluptas molestiae fuga quod cum non. Quaerat cupiditate incidunt id sunt dolorem veritatis voluptatem. Molestiae est ut iure. Ab in hic molestiae odio sed vitae maiores.', '2016-12-20 00:53:02'),
(109, 63, 'jarrod.cummerata', 'leanna.jpeg', 'Omnis molestiae consequatur sint consequatur est. Doloremque aperiam qui rerum accusamus beatae. Enim et doloribus voluptatibus perspiciatis. Sapiente quia suscipit doloribus. Dolorem saepe libero quas magni rerum consequatur.', '2017-01-08 17:21:32'),
(110, 67, 'macie41', 'ryan.jpeg', 'Voluptatem voluptatem et eaque praesentium et praesentium est. Molestiae porro consequuntur quos hic. Nobis doloribus illo velit eius similique dolore. Et ipsam omnis saepe dolor in perspiciatis sit.', '2016-11-20 09:20:07'),
(111, 62, 'vanessa.wiegand', 'ryan.jpeg', 'Soluta in dicta molestiae asperiores consequuntur sit repellendus dolorum. Doloremque et reprehenderit nesciunt eum. In esse et ut quis. Voluptate ullam placeat non ratione eaque.', '2017-03-03 00:06:35'),
(112, 61, 'sam99', 'ryan.jpeg', 'Totam iste quidem eum labore velit voluptatibus. Laudantium voluptatem officiis vel dignissimos et. Doloremque quam quia voluptatem quibusdam. In maiores nisi eius quibusdam.', '2017-04-10 00:39:30'),
(113, 69, 'fbradtke', 'leanna.jpeg', 'Reiciendis quod ullam at ut. Eos sed amet sunt vitae enim sapiente. Natus assumenda reiciendis similique et laudantium vel. Ea itaque est et nihil beatae.', '2017-03-03 19:16:10'),
(115, 60, 'kstark', 'ryan.jpeg', 'Fugit ad iste minus ullam quidem. Vero soluta nostrum ea dolores doloremque fuga labore. Et molestias hic minus et omnis porro voluptatibus. Quia reprehenderit magni fugiat consequatur officiis.', '2016-11-22 00:56:54'),
(116, 60, 'hmurazik', 'leanna.jpeg', 'Quis voluptates nulla totam eos. Inventore perferendis voluptatem nisi quis consequatur ullam voluptas. Tempora repellat corporis excepturi sint dolores quaerat. Quia nisi accusantium natus voluptatem.', '2017-04-10 20:05:03'),
(117, 60, 'creola.wisoky', 'ryan.jpeg', 'Quidem explicabo optio amet velit. Delectus iure sed alias asperiores perspiciatis deserunt omnis inventore. Unde id in id porro molestiae in. Sint doloremque similique aut est dolores consectetur odio. Odio modi consequatur dicta ipsa temporibus sit facere.', '2017-01-19 22:09:21'),
(118, 69, 'zachery.gerlach', 'leanna.jpeg', 'Dolorem earum ut consequatur facilis molestias quo. Minima illo delectus iste modi accusantium autem. Quia et et dolorum quos aliquam. Accusantium quidem ut eius a corrupti totam placeat delectus.', '2016-12-13 13:19:31'),
(119, 63, 'jleuschke', 'ryan.jpeg', 'Quod alias iste similique aut tempore pariatur et. Explicabo quia sed ea aperiam unde voluptatem. Beatae neque eum est molestiae.', '2016-10-28 12:22:10'),
(120, 69, 'braun.frieda', 'ryan.jpeg', 'Quas beatae et nam itaque. Fugit ea accusantium temporibus qui. Est et et cum eius. Numquam quam occaecati culpa aut in laudantium omnis.', '2017-03-23 03:10:23'),
(121, 60, 'elinor35', 'ryan.jpeg', 'Non qui est maiores aliquid. Autem qui est velit excepturi et necessitatibus tenetur doloremque. Quibusdam fuga beatae voluptas iure rerum. Necessitatibus eius commodi odio ut aliquid.', '2017-03-11 15:12:30'),
(122, 67, 'leann.rice', 'leanna.jpeg', 'Voluptatem distinctio modi officiis eos suscipit facilis vel. Modi quia recusandae qui eligendi quo voluptas totam. Ab tenetur voluptatem repudiandae reiciendis cum accusamus ut et. Iste accusantium quaerat nostrum voluptas est tenetur.', '2017-01-21 22:28:50'),
(123, 68, 'gconn', 'ryan.jpeg', 'Nihil aliquid eos fugit. Quaerat quibusdam alias omnis accusamus aut dolores. Itaque doloribus qui dicta eligendi quae recusandae. Quo beatae deleniti quia molestiae alias quo quis.', '2016-10-27 10:35:02'),
(124, 68, 'kayley.turner', 'leanna.jpeg', 'Placeat reprehenderit nesciunt architecto quas. Similique consequatur nisi fuga dolores aut. Illo illum sint voluptas a aperiam. Aut qui neque minus eos fugit nostrum non.', '2017-01-15 14:44:26'),
(125, 65, 'bruen.kari', 'leanna.jpeg', 'Nam nesciunt non dolore quis et eius et. Omnis eaque pariatur non ea vel omnis. Explicabo inventore quam suscipit qui accusamus eveniet dolorem voluptatem.', '2017-02-11 10:47:00'),
(126, 60, 'iwiza', 'leanna.jpeg', 'Voluptatem eveniet consequatur sit impedit sint nam perferendis sit. Magnam ut nemo possimus qui totam iste. Harum animi et ad rerum perferendis fugiat. Facere quisquam et quod velit velit ut rem repellendus.', '2016-12-04 09:34:08'),
(127, 66, 'shawn.stracke', 'ryan.jpeg', 'Est in reprehenderit reiciendis accusamus. Quia et mollitia deleniti qui nostrum doloremque. Aut molestiae sapiente est consequatur. Tempore similique ut debitis consequatur.', '2017-03-02 13:57:42'),
(128, 60, 'bernier.marilie', 'ryan.jpeg', 'Perspiciatis quia quasi sit dolore ad. Est impedit itaque cumque officiis ut quis. Consequatur asperiores voluptatem magnam nostrum ea corrupti voluptatem. Cupiditate rerum ratione rerum repellendus ducimus.', '2017-03-19 02:47:02'),
(129, 63, 'baumbach.zechariah', 'leanna.jpeg', 'Doloremque esse dolor qui illo placeat harum voluptatem. Enim tempora voluptas ut dolorem voluptates deserunt provident. Ipsam fugiat est ipsam quia reprehenderit sint. Sed facere qui sit delectus ad iusto. Iusto autem laboriosam nulla earum eius repellat.', '2017-01-30 04:36:59'),
(130, 63, 'ahmed42', 'leanna.jpeg', 'Nobis hic rerum delectus dolorum voluptas cupiditate aut consequatur. Ullam qui ea voluptatem aut cum vitae nostrum. Maiores non omnis aut quos ut ad est quidem. Rerum voluptates laboriosam ea porro blanditiis.', '2016-11-10 10:21:47'),
(131, 65, 'nwolf', 'leanna.jpeg', 'Et et fuga recusandae voluptatem veniam enim quae voluptas. Dolore explicabo nisi a aut architecto et aut. Nam cum tempore doloremque. Aut qui perferendis praesentium cupiditate iste.', '2017-04-16 11:22:07'),
(133, 61, 'emilio.lesch', 'leanna.jpeg', 'Quod cupiditate culpa nisi eos cupiditate quibusdam eveniet. Provident quas omnis voluptatem quia soluta recusandae id. Aut voluptates est deleniti et accusantium nesciunt voluptas.', '2017-03-23 04:54:34'),
(134, 62, 'heather32', 'leanna.jpeg', 'Eos fugiat voluptas voluptatem consequuntur nostrum culpa. Quod voluptatem quae dignissimos sunt atque aut. Possimus accusamus sint hic ut atque expedita.', '2016-11-12 07:14:45'),
(135, 66, 'zturcotte', 'ryan.jpeg', 'Animi culpa velit dignissimos molestias. A cumque ut et rerum dolore consectetur et beatae. Nulla quisquam labore saepe perspiciatis doloremque. Unde optio accusamus magnam non ratione enim velit.', '2016-12-10 01:30:24'),
(136, 62, 'pwindler', 'leanna.jpeg', 'Qui in et quasi incidunt. Ex accusamus aut itaque nesciunt sit quidem fugit sapiente. Eveniet dolore inventore consectetur sed repellat. Vitae iure voluptatibus dolorem totam laboriosam.', '2016-11-18 15:32:49'),
(137, 60, 'von.sherwood', 'ryan.jpeg', 'Ducimus odio fuga vitae expedita. Vero animi fugiat corporis. Et officia et necessitatibus quasi.', '2017-01-06 12:05:16'),
(138, 65, 'tyson.feeney', 'ryan.jpeg', 'Sunt aliquam mollitia id repudiandae. Doloremque placeat ut esse. Aut ratione cumque commodi. Cum ratione animi maxime enim est.', '2017-01-01 06:59:23'),
(139, 62, 'zwilkinson', 'ryan.jpeg', 'Optio odio aspernatur qui dolor blanditiis suscipit. Veniam neque omnis dolor qui.', '2017-01-02 03:13:32'),
(140, 68, 'reichert.addison', 'leanna.jpeg', 'Tenetur vel quasi corporis rerum quo ut accusantium. Quibusdam quia aut culpa dolores consectetur quod doloremque. Aut cupiditate aperiam occaecati adipisci veritatis vel voluptas. Cumque sed modi odit.', '2017-01-17 18:31:14'),
(141, 65, 'pbayer', 'ryan.jpeg', 'Odio et id consequatur accusantium quia porro. Voluptates dignissimos est officiis est repudiandae est atque. Inventore sed ipsum omnis maiores esse.', '2017-02-18 05:43:08'),
(142, 61, 'bahringer.eleazar', 'leanna.jpeg', 'Voluptatem harum sed quia et. Neque voluptas est totam provident sunt. Est tempora qui minus officia.', '2016-12-07 14:12:13'),
(145, 65, 'spencer13', 'leanna.jpeg', 'Sunt est possimus voluptas blanditiis et. Aut culpa reiciendis dolorum eaque accusantium exercitationem animi.', '2017-03-14 19:48:19'),
(146, 69, 'ondricka.philip', 'leanna.jpeg', 'Dolorem impedit et cumque. Qui ut non perspiciatis voluptatem voluptatem eligendi provident sed. Magni qui sint quos aut quibusdam labore. Quod est qui dolor reprehenderit.', '2016-10-17 08:13:38'),
(147, 67, 'angelina13', 'ryan.jpeg', 'Voluptas rerum quia et harum dolor quaerat. Et repellat rerum voluptas dolore explicabo vero. Fugit officiis explicabo ipsa libero sit ducimus minima. Suscipit id tempore voluptatibus recusandae et deleniti tenetur. Illo sunt possimus esse et porro consequatur totam et.', '2016-11-29 17:48:06'),
(149, 60, 'dickens.tremaine', 'ryan.jpeg', 'Repellat asperiores vitae neque optio quod et consectetur. Expedita ratione vitae qui sed ut repudiandae. Sit asperiores eum et nisi cumque et quod.', '2017-04-07 17:48:52'),
(150, 63, 'tcruickshank', 'leanna.jpeg', 'Rerum officia et neque pariatur vel. Et laborum veniam dolores dolorum ad. Et fugit eius facilis dolor fugiat dicta.', '2017-03-29 04:23:27'),
(151, 61, 'stephen88', 'leanna.jpeg', 'Omnis distinctio eum sit hic voluptatum quis. Et aliquam qui vel debitis qui ipsum perferendis. Dolorum excepturi deleniti voluptatem iure et atque aut.', '2016-11-08 16:07:30'),
(152, 61, 'paris.towne', 'ryan.jpeg', 'Non quos quia repellat expedita laudantium ducimus qui odit. Sed illo minima sit. Necessitatibus accusamus sed iure voluptatum excepturi sit.', '2017-01-13 22:17:21'),
(153, 63, 'kerluke.august', 'leanna.jpeg', 'Eveniet est voluptatem culpa dolores. Sunt occaecati est nihil vel aut. Libero quis sit qui officia nihil.', '2017-02-09 18:02:52'),
(154, 61, 'ernser.bianka', 'leanna.jpeg', 'A minus quos laudantium porro quibusdam. Suscipit quo consequatur ipsa repellendus. Quam culpa fugit molestiae consectetur aut esse libero.', '2017-03-29 06:38:31'),
(155, 68, 'keeling.ardella', 'ryan.jpeg', 'Eum nobis et et et fuga fugit. Cum esse laborum sequi. Debitis tempora aperiam nam.', '2016-12-11 09:36:18'),
(156, 60, 'omann', 'ryan.jpeg', 'Facilis sit ea quia velit. Laudantium ea et sit enim. Sunt odio aperiam tenetur rerum aut tempore.', '2016-11-16 04:21:54'),
(157, 62, 'alaina63', 'ryan.jpeg', 'Consequatur deleniti id sed veniam aut velit perferendis. Nemo nesciunt ullam fugiat maiores omnis quo. Quod voluptas quibusdam exercitationem ab. Culpa rem sunt perferendis repellendus sapiente accusamus.', '2017-03-07 18:55:45'),
(158, 62, 'kiehn.maggie', 'ryan.jpeg', 'Cumque optio qui ab quaerat consequuntur. Eaque maiores optio voluptatibus et non ab.', '2017-03-27 08:00:28'),
(159, 67, 'maggie.mcclure', 'leanna.jpeg', 'Veniam eaque et recusandae iste qui tenetur aut. Molestias sed dicta molestiae illo possimus qui. Velit dolorem facere officiis nostrum dolore nulla. Ea quo fugiat unde alias sunt rerum fuga.', '2016-10-29 03:01:19'),
(160, 66, 'isabelle.roberts', 'leanna.jpeg', 'Id reprehenderit voluptas maiores consequatur. Impedit ducimus aut voluptatum quia voluptatem est. Ea reprehenderit inventore quibusdam in eum et fuga.', '2016-12-03 10:19:34'),
(161, 66, 'ignacio18', 'ryan.jpeg', 'Magnam aut sed architecto officiis. Omnis velit ratione quia minus sint. Voluptatem sequi debitis sed ratione dolorem. Inventore repellendus voluptatum sit unde.', '2017-04-02 01:50:37'),
(162, 66, 'else.rippin', 'leanna.jpeg', 'Sequi architecto quia veniam accusantium maiores commodi qui id. Earum voluptate explicabo excepturi molestias occaecati quo culpa. Et consequatur exercitationem in corporis qui dolor.', '2016-11-18 18:52:43'),
(163, 65, 'brooklyn41', 'leanna.jpeg', 'Quae consequatur nihil est sit beatae quo. Aut laborum perspiciatis quos.', '2016-10-26 13:03:07'),
(164, 63, 'jarod.leffler', 'ryan.jpeg', 'Beatae repellendus doloremque omnis ut aut et eius et. Rerum ab et culpa voluptatem. Qui animi pariatur rerum. Corrupti id alias et qui.', '2017-03-01 15:17:25'),
(165, 62, 'koepp.linnea', 'ryan.jpeg', 'Iusto quae consequatur excepturi quia excepturi. Culpa dolorum similique a nihil. Veniam qui qui aspernatur.', '2017-01-22 21:08:37'),
(166, 66, 'erdman.mireya', 'leanna.jpeg', 'Eligendi minus aut ea. At blanditiis architecto magni deserunt ad cupiditate soluta. Impedit vel accusamus rerum.', '2016-12-24 17:47:10'),
(167, 65, 'alfred08', 'ryan.jpeg', 'Dolores ut natus et ratione voluptate. Architecto iure placeat fugiat itaque et sit est. Omnis recusandae dicta vel qui unde et. Omnis assumenda dolor enim exercitationem. Culpa voluptatibus harum id cupiditate asperiores assumenda.', '2017-04-03 06:48:07'),
(168, 67, 'stewart57', 'leanna.jpeg', 'Magni qui qui officia. Sint quia quibusdam est ratione. Et consequatur suscipit saepe quia. Nesciunt nobis aperiam facere non iure nihil quia.', '2017-02-17 16:25:35'),
(170, 69, 'anastasia43', 'leanna.jpeg', 'Ut ut officia reiciendis. Voluptatem nulla molestias et minus hic. Aperiam voluptas corporis fugiat distinctio occaecati omnis illum. Odit ducimus culpa quae dolores.', '2017-01-07 07:33:29'),
(171, 65, 'gerhard.bode', 'ryan.jpeg', 'Quam aperiam blanditiis omnis corrupti hic aut qui. Minima unde enim molestiae autem id. Quo aliquid nam ex asperiores neque ea. Ut ut facilis qui sed sint. Voluptatem nostrum illum praesentium exercitationem.', '2016-11-24 22:56:10'),
(172, 61, 'darmstrong', 'ryan.jpeg', 'Nesciunt exercitationem animi libero sit. Id aliquam reprehenderit a tempora ipsam error vel.', '2017-01-08 21:29:56'),
(173, 66, 'lwill', 'ryan.jpeg', 'Dolore unde nihil ducimus rerum est similique et. Distinctio minima fugit corrupti. Accusantium excepturi soluta temporibus. Ad eum cupiditate in quaerat et enim temporibus.', '2017-03-17 19:21:14'),
(174, 61, 'eprice', 'ryan.jpeg', 'Eum natus officia laudantium recusandae aliquam deleniti rerum qui. Enim et explicabo possimus. Voluptatibus ipsum officia fugit iste. Et beatae totam repellendus.', '2017-01-21 02:24:58'),
(175, 66, 'schaden.velda', 'leanna.jpeg', 'Qui accusamus et odio explicabo quam accusamus. Sint quia fuga autem impedit perspiciatis. Illo odit id quasi illo omnis quidem. Reprehenderit commodi aut voluptas corrupti placeat odio at. Voluptatem et et ea ad.', '2017-02-08 19:31:08'),
(176, 60, 'graham.trinity', 'ryan.jpeg', 'Consequatur nulla explicabo commodi praesentium voluptatem. Non optio consequatur occaecati delectus ut amet ipsam magni. Nobis dolorem iusto odio alias. Voluptatum non ea architecto nisi nulla.', '2016-11-20 08:21:48'),
(177, 67, 'willy.brakus', 'leanna.jpeg', 'Omnis blanditiis consectetur itaque consequuntur cupiditate praesentium itaque. Reiciendis quo sapiente est adipisci quaerat voluptas. Quia molestiae magnam ea.', '2016-11-22 01:22:44'),
(178, 69, 'kaylin.halvorson', 'ryan.jpeg', 'Molestiae ipsam consequatur quaerat minima id. Veritatis aspernatur neque et quia saepe. Inventore laborum aut commodi et voluptates inventore dolor assumenda. Minus vitae odit magnam omnis.', '2016-10-21 07:29:28'),
(179, 69, 'blockman', 'ryan.jpeg', 'Ad omnis explicabo expedita sed et quis aut facilis. Eum et id perferendis asperiores et reprehenderit rem dolorum. Sed nisi aut accusamus aut.', '2016-11-12 10:41:07'),
(180, 61, 'therman', 'ryan.jpeg', 'Dolorem dolor perspiciatis sit nostrum eum omnis. Doloremque beatae iure necessitatibus qui. Quasi rerum veritatis veritatis nam et quam. Voluptatem qui ut itaque iusto consequuntur.', '2017-04-10 02:20:59'),
(182, 63, 'hartmann.raphaelle', 'leanna.jpeg', 'Alias itaque esse sint nisi sed. Veritatis laudantium aliquid incidunt placeat et ut dolores omnis. Accusamus iusto et quis voluptate recusandae vel. Aliquam dolor quasi eum et nihil.', '2016-11-28 12:12:16'),
(183, 62, 'cade.schamberger', 'leanna.jpeg', 'Officia sapiente nesciunt atque. Eius totam esse velit voluptas temporibus. Magnam repudiandae voluptas ut maxime qui fugiat.', '2017-01-31 15:34:37'),
(184, 62, 'mjohnston', 'leanna.jpeg', 'Non aut aut totam molestiae. Fugiat doloremque ab unde a cumque culpa voluptatum. Facere totam similique voluptatum mollitia ab quo. Rerum accusantium laborum veniam iure doloremque possimus.', '2017-02-21 07:20:10'),
(185, 61, 'zack51', 'leanna.jpeg', 'Molestiae aliquam aut voluptate velit et et reprehenderit officia. In et aut hic tempore maxime nemo rerum. Dolores molestias earum quos blanditiis eos ipsam. Non ut ex in nihil quidem est.', '2017-03-16 07:55:01'),
(186, 62, 'denesik.audreanne', 'leanna.jpeg', 'Magni ea nemo sed voluptatibus in laborum. Ratione natus perferendis fuga animi nulla possimus et. Ratione est eveniet perspiciatis et et sed. Maiores et dignissimos similique mollitia.', '2017-04-03 12:33:10'),
(187, 69, 'michale.hilpert', 'leanna.jpeg', 'Esse ullam cupiditate ut. Deserunt doloremque magnam et impedit quo. Vel deserunt eius architecto commodi eum at. Facilis inventore vero animi unde doloribus. Qui dolor vel consectetur debitis a animi.', '2017-02-15 17:01:29'),
(188, 60, 'qgreenholt', 'leanna.jpeg', 'Ut cumque laborum quod ut ducimus suscipit. Nostrum veritatis saepe ex voluptas. Neque sit numquam vel est.', '2016-11-02 04:40:58'),
(189, 69, 'nledner', 'ryan.jpeg', 'Voluptatem vel rem quaerat sunt magni aut. Vel deleniti molestias velit. Enim rerum sequi vel et nemo. Et eos vero hic quia ut adipisci.', '2017-02-10 09:29:48'),
(191, 60, 'rigoberto.dibbert', 'ryan.jpeg', 'Eius et reprehenderit aliquam excepturi id et. Voluptate molestiae ut qui. Ex vel quod dolorem perspiciatis eos quis asperiores. Qui eaque natus qui voluptas.', '2016-10-31 23:27:03'),
(192, 67, 'edward.white', 'leanna.jpeg', 'Quas illum cum aut. Dolore doloremque unde fuga nostrum omnis dolorem.', '2016-11-01 00:50:59'),
(193, 62, 'claude92', 'leanna.jpeg', 'Cupiditate qui dolore nobis in autem. Adipisci deserunt perspiciatis ut vel. Voluptatem consequuntur voluptatem molestias possimus magnam earum non. Voluptas et et omnis est.', '2017-02-02 18:29:44'),
(194, 67, 'glenna33', 'leanna.jpeg', 'Architecto corrupti itaque ipsa tenetur. Autem consequatur consequatur perspiciatis animi.', '2016-10-25 14:10:17'),
(195, 65, 'lpfeffer', 'leanna.jpeg', 'Maxime explicabo assumenda sit repellat. Nam in pariatur vero fuga consequatur praesentium consequatur nihil. Possimus id voluptas similique.', '2017-02-20 20:49:49'),
(196, 68, 'bpagac', 'leanna.jpeg', 'Ut omnis nisi dolorem ut repellat delectus magnam. Molestiae et a accusantium tempora consequuntur est ut commodi. Doloribus fugiat repellat harum assumenda. Illo voluptatem nobis fugit inventore sed at.', '2017-03-21 14:28:38'),
(197, 62, 'xkiehn', 'leanna.jpeg', 'Ullam ullam dolor debitis quo saepe. Possimus est labore et totam adipisci et odit.', '2017-01-02 11:38:31'),
(198, 63, 'nienow.hudson', 'leanna.jpeg', 'Laboriosam possimus ut voluptatibus. Maiores ex ratione facilis consequatur. Est et eveniet porro non similique aut. Quo velit quaerat libero provident nihil. Alias eos et cum illum corrupti et maiores.', '2016-10-26 20:33:54'),
(199, 68, 'littel.christy', 'leanna.jpeg', 'Quisquam amet nam ipsa eius. Non autem iste praesentium at. Aut corporis quis in quia asperiores sed sit.', '2017-03-16 05:29:47'),
(200, 65, 'leonel01', 'leanna.jpeg', 'Quasi possimus odit qui voluptatem asperiores voluptates consequuntur. Soluta distinctio placeat nesciunt quam hic perspiciatis. Est neque ipsam sequi.', '2017-04-09 02:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20170402171750');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genus`
--
ALTER TABLE `genus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genus_note`
--
ALTER TABLE `genus_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_genus_note_genus_idx` (`genus_id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genus`
--
ALTER TABLE `genus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `genus_note`
--
ALTER TABLE `genus_note`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `genus_note`
--
ALTER TABLE `genus_note`
  ADD CONSTRAINT `fk_genus_note_genus` FOREIGN KEY (`genus_id`) REFERENCES `genus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
