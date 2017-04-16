-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2017 at 01:07 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aqua_note`
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
(48, 'Amphiprion', 'Culpa consequatur.', 93263, 'Accusamus nihil repellat vero omnis voluptates id amet et.', 1),
(49, 'Chelonia', 'Suscipit qui.', 46721, 'Quam ipsam voluptatem cupiditate sed natus debitis voluptas.', 0),
(50, 'Hippocampus', 'Laudantium sit.', 41789, 'Dignissimos error et itaque quibusdam tempora velit.', 1),
(51, 'Trichechus', 'Ut velit soluta.', 69263, 'Debitis et saepe eum sint dolorem delectus.', 1),
(52, 'Cucumaria', 'Ipsum inventore sed.', 90529, 'Qui suscipit a deserunt laudantium quibusdam.', 1),
(53, 'Trichechus', 'Nostrum soluta qui.', 21198, 'Velit reiciendis aperiam et fuga.', 0),
(54, 'Balistoides', 'Nisi placeat cumque.', 44669, 'Modi saepe architecto unde non dicta eveniet exercitationem.', 1),
(55, 'Balistoides', 'Porro sed magni.', 2034, 'Voluptas sint non voluptates.', 1),
(56, 'Hippocampus', 'Optio quos qui illo.', 42414, 'Vero a officia id corporis incidunt saepe.', 1),
(57, 'Trichechus', 'Esse hic eligendi.', 58075, 'Ab voluptas sed a nam et sint.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `genus_note`
--

CREATE TABLE `genus_note` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_avatar_filename` varchar(255) DEFAULT NULL,
  `note` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genus_note`
--

INSERT INTO `genus_note` (`id`, `username`, `user_avatar_filename`, `note`, `created_at`) VALUES
(1, 'wiza.asia', 'leanna.jpeg', 'Ducimus eos odit amet et est ut eum. Molestiae quidem ut sunt et quidem. Accusamus aut nemo fuga est placeat rerum ut.', '2016-11-29 13:09:56'),
(2, 'stanton.romaguera', 'ryan.jpeg', 'Aut nam et eum architecto fugit repellendus illo veritatis. Ex esse veritatis voluptate vel possimus. Aut incidunt sunt cumque asperiores incidunt iure sequi.', '2017-02-16 12:26:29'),
(3, 'adolfo88', 'leanna.jpeg', 'Dicta voluptas fuga totam reiciendis qui. Fugiat nemo omnis consequatur. Qui cupiditate eos quod veritatis vel optio provident non. Magnam molestias et quibusdam et.', '2016-10-25 12:23:43'),
(4, 'buddy17', 'ryan.jpeg', 'Eveniet aut atque possimus. Dolores quis totam incidunt ducimus. Nesciunt est quia assumenda. Sunt qui similique ut culpa.', '2017-01-26 14:36:52'),
(5, 'carmen.schmidt', 'ryan.jpeg', 'Amet laborum iure molestiae et dolore quaerat molestiae. In dolores harum rerum sequi quia quasi. Sint saepe numquam tempora.', '2017-02-05 16:09:33'),
(6, 'justyn34', 'ryan.jpeg', 'Impedit aperiam ea similique. Sed architecto quod nulla maxime. Quibusdam inventore esse harum accusantium rerum nulla voluptatem.', '2017-03-04 19:18:08'),
(7, 'damion37', 'ryan.jpeg', 'Nesciunt omnis sit nisi recusandae. Molestias sit id labore. Ut voluptatem laudantium perferendis eveniet quam vero. Corrupti omnis temporibus maxime sint suscipit laudantium.', '2017-02-28 01:31:29'),
(8, 'waters.lucienne', 'leanna.jpeg', 'Non explicabo et neque itaque ex quaerat ut aut. Consequatur non rerum in cupiditate voluptas molestiae fuga. Cum non qui quaerat cupiditate incidunt id sunt.', '2016-11-15 14:31:42'),
(9, 'halvorson.hector', 'ryan.jpeg', 'Possimus ab in hic molestiae odio. Vitae maiores ex beatae reprehenderit. Corrupti dolorem reprehenderit ut ducimus.', '2017-01-24 20:04:57'),
(10, 'xschowalter', 'leanna.jpeg', 'Doloremque aperiam qui rerum accusamus beatae. Enim et doloribus voluptatibus perspiciatis. Sapiente quia suscipit doloribus. Dolorem saepe libero quas magni rerum consequatur.', '2017-01-08 15:28:58'),
(11, 'trisha.nitzsche', 'leanna.jpeg', 'Omnis voluptatem voluptatem et eaque praesentium et praesentium. Velit molestiae porro consequuntur quos hic animi. Doloribus illo velit eius similique dolore consequatur. Ipsam omnis saepe dolor in perspiciatis sit consectetur.', '2017-03-08 21:42:34'),
(12, 'vanessa.wiegand', 'ryan.jpeg', 'Soluta in dicta molestiae asperiores consequuntur sit repellendus dolorum. Doloremque et reprehenderit nesciunt eum. In esse et ut quis. Voluptate ullam placeat non ratione eaque.', '2017-03-02 22:14:01'),
(13, 'price.sam', 'ryan.jpeg', 'Tempore totam iste quidem eum labore velit voluptatibus. Laudantium voluptatem officiis vel dignissimos et. Doloremque quam quia voluptatem quibusdam. In maiores nisi eius quibusdam.', '2017-04-09 22:46:56'),
(14, 'weber.darius', 'leanna.jpeg', 'Reiciendis quod ullam at ut. Eos sed amet sunt vitae enim sapiente. Natus assumenda reiciendis similique et laudantium vel. Ea itaque est et nihil beatae.', '2017-03-03 17:23:36'),
(15, 'ebayer', 'leanna.jpeg', 'Officiis et est nisi iusto. Neque deleniti totam aut nisi. Omnis voluptatem velit nesciunt eligendi eos sint. Voluptates quo incidunt omnis aut enim nihil.', '2017-04-15 21:35:12'),
(16, 'mcclure.jamar', 'ryan.jpeg', 'Neque autem nihil esse. Pariatur reprehenderit assumenda error consequatur fugit ad iste. Ullam quidem quo vero soluta nostrum ea dolores. Fuga labore qui et.', '2017-01-17 02:56:43'),
(17, 'preynolds', 'ryan.jpeg', 'Enim quia reprehenderit magni fugiat consequatur officiis velit alias. Et quis quae distinctio ratione quis voluptates nulla. Eos omnis inventore perferendis voluptatem nisi. Consequatur ullam voluptas et tempora.', '2017-04-16 02:00:16'),
(18, 'tamia.kunde', 'leanna.jpeg', 'Nisi accusantium natus voluptatem ut explicabo. Eligendi ut ut sapiente ut qui. Explicabo optio amet velit aut delectus iure.', '2017-01-22 04:17:16'),
(19, 'zemlak.lessie', 'ryan.jpeg', 'Unde id in id porro molestiae in. Sint doloremque similique aut est dolores consectetur odio.', '2017-03-02 08:12:24'),
(20, 'raul.bogisich', 'leanna.jpeg', 'Facere cupiditate doloremque odio ad asperiores. Eius accusamus sint dolorem earum. Consequatur facilis molestias quo omnis minima illo. Iste modi accusantium autem suscipit quia et et dolorum.', '2017-01-14 07:28:40'),
(21, 'albertha.nienow', 'ryan.jpeg', 'Corrupti totam placeat delectus voluptatem earum officiis sed autem. Voluptatem est quod alias iste similique aut. Pariatur et libero explicabo quia sed ea.', '2016-10-22 22:29:48'),
(22, 'dawson07', 'leanna.jpeg', 'Molestiae et laboriosam dolor odit omnis vel excepturi. Quia quas beatae et nam itaque nesciunt. Ea accusantium temporibus qui ad.', '2017-02-04 01:27:13'),
(23, 'marian21', 'ryan.jpeg', 'Occaecati culpa aut in laudantium omnis. Aut laborum cupiditate corporis aliquid aut cumque consequuntur. Qui est maiores aliquid rerum autem qui.', '2017-02-25 05:44:14'),
(24, 'lang.shea', 'ryan.jpeg', 'Quibusdam fuga beatae voluptas iure rerum. Necessitatibus eius commodi odio ut aliquid.', '2017-03-11 13:19:56'),
(25, 'glover.leann', 'ryan.jpeg', 'Qui voluptatem distinctio modi officiis eos suscipit facilis. Ut modi quia recusandae qui eligendi. Voluptas totam asperiores ab tenetur voluptatem repudiandae reiciendis.', '2017-02-16 14:00:41'),
(26, 'xturner', 'ryan.jpeg', 'Quaerat nostrum voluptas est. Sed possimus vero eos voluptatem at qui eaque nihil. Eos fugit natus quaerat quibusdam alias. Accusamus aut dolores perspiciatis itaque doloribus qui.', '2016-11-01 08:36:27'),
(27, 'trace75', 'ryan.jpeg', 'Quia molestiae alias quo quis inventore. Ea sit in ut qui fugiat dolores placeat.', '2016-12-27 03:04:27'),
(28, 'blanda.evelyn', 'ryan.jpeg', 'Fuga dolores aut velit illo illum. Voluptas a aperiam voluptas aut qui neque minus eos. Nostrum non et et et.', '2016-11-06 02:13:02'),
(29, 'hlangosh', 'leanna.jpeg', 'Nesciunt non dolore quis et eius et. Omnis eaque pariatur non ea vel omnis. Explicabo inventore quam suscipit qui accusamus eveniet dolorem voluptatem. Similique tenetur aut sit aliquam provident et.', '2016-12-13 18:55:40'),
(30, 'ehickle', 'ryan.jpeg', 'Perferendis sit est magnam ut nemo possimus. Totam iste perspiciatis harum animi et ad rerum. Fugiat et facere quisquam. Quod velit velit ut rem repellendus ut sit laudantium.', '2016-11-08 11:28:39'),
(31, 'ostracke', 'ryan.jpeg', 'In reprehenderit reiciendis accusamus facilis quia et. Deleniti qui nostrum doloremque minima aut molestiae. Est consequatur numquam tempore similique ut debitis consequatur facere.', '2017-02-06 15:07:06'),
(32, 'bernier.marilie', 'ryan.jpeg', 'Perspiciatis quia quasi sit dolore ad. Est impedit itaque cumque officiis ut quis. Consequatur asperiores voluptatem magnam nostrum ea corrupti voluptatem. Cupiditate rerum ratione rerum repellendus ducimus.', '2017-03-19 00:54:28'),
(33, 'bartoletti.darryl', 'ryan.jpeg', 'Voluptas doloremque esse dolor qui illo placeat harum voluptatem. Enim tempora voluptas ut dolorem voluptates deserunt provident. Ipsam fugiat est ipsam quia reprehenderit sint.', '2017-02-02 04:26:59'),
(34, 'rolfson.conor', 'ryan.jpeg', 'Molestias iusto autem laboriosam nulla earum. Repellat culpa reprehenderit harum voluptatem. Nihil laboriosam sed recusandae.', '2017-02-18 06:39:19'),
(35, 'ztorp', 'ryan.jpeg', 'Aut consequatur aut ullam qui ea voluptatem. Cum vitae nostrum non maiores. Omnis aut quos ut ad est quidem eum rerum.', '2017-03-31 06:20:30'),
(36, 'moises.klocko', 'leanna.jpeg', 'Aut quas sunt eligendi sapiente et et fuga recusandae. Veniam enim quae voluptas. Dolore explicabo nisi a aut architecto et aut.', '2016-10-31 00:10:57'),
(37, 'marguerite02', 'leanna.jpeg', 'Perferendis praesentium cupiditate iste repellat provident. Debitis nisi ad ipsa magni nihil voluptatem magnam. Impedit recusandae omnis consequatur ut repellendus.', '2017-03-24 09:58:39'),
(38, 'dante.witting', 'leanna.jpeg', 'Iure enim sed velit aut. Quod cupiditate culpa nisi eos cupiditate quibusdam eveniet. Provident quas omnis voluptatem quia soluta recusandae id.', '2017-02-23 14:19:29'),
(39, 'upton.jewell', 'ryan.jpeg', 'Voluptas et aut sunt reiciendis. Voluptas molestiae eum et eos fugiat.', '2016-12-14 18:58:48'),
(40, 'champlin.kellen', 'ryan.jpeg', 'Quae dignissimos sunt atque aut unde. Accusamus sint hic ut atque expedita ratione minima. Ut reiciendis ut saepe numquam animi culpa velit. Molestias tenetur a cumque ut et.', '2017-03-27 00:55:53'),
(41, 'dicki.angelita', 'leanna.jpeg', 'Labore saepe perspiciatis doloremque voluptates unde optio accusamus. Non ratione enim velit ullam. Autem sapiente id consequuntur quo dolore qui. Et quasi incidunt rerum ex accusamus.', '2017-04-12 03:38:06'),
(42, 'ecrona', 'ryan.jpeg', 'Ullam eveniet dolore inventore consectetur sed repellat quia vitae. Voluptatibus dolorem totam laboriosam sit enim. Sint velit rerum autem quia.', '2016-11-26 07:41:19'),
(43, 'leif.bode', 'ryan.jpeg', 'Animi fugiat corporis dolores et officia et necessitatibus. Qui sit rem consequatur.', '2017-04-07 06:40:30'),
(44, 'murray.clotilde', 'ryan.jpeg', 'Id repudiandae ipsa doloremque placeat ut esse. Aut ratione cumque commodi. Cum ratione animi maxime enim est.', '2017-01-01 05:06:49'),
(45, 'verla99', 'ryan.jpeg', 'Optio odio aspernatur qui dolor blanditiis suscipit. Veniam neque omnis dolor qui.', '2017-01-02 01:20:58'),
(46, 'aufderhar.kayli', 'leanna.jpeg', 'Vero tenetur vel quasi corporis rerum quo. Accusantium omnis quibusdam quia aut culpa dolores consectetur. Doloremque quisquam aut cupiditate aperiam occaecati adipisci veritatis.', '2017-03-13 09:07:45'),
(47, 'merl.douglas', 'leanna.jpeg', 'Accusamus vel quae laborum expedita quis ut. Et id consequatur accusantium quia porro. Voluptates dignissimos est officiis est repudiandae est atque.', '2017-01-04 05:36:43'),
(48, 'leuschke.okey', 'ryan.jpeg', 'Perspiciatis inventore voluptatem corrupti exercitationem nisi quaerat. Voluptatem harum sed quia et. Neque voluptas est totam provident sunt.', '2016-11-10 05:43:28'),
(49, 'myron73', 'ryan.jpeg', 'Voluptates non quasi minima eveniet. Laborum dolor quasi totam qui ipsam iusto enim. Molestias amet aut qui.', '2017-02-21 18:44:13'),
(50, 'fmuller', 'leanna.jpeg', 'Provident et accusamus veniam et. Libero qui qui maiores est. Molestiae aliquam officiis soluta aliquam saepe.', '2016-11-03 05:23:42'),
(51, 'fisher.emmett', 'ryan.jpeg', 'Consequatur mollitia ducimus veritatis. Ad labore quos saepe quia quia unde quos error. Saepe eos et ab velit.', '2016-11-01 19:22:31'),
(52, 'emmanuelle45', 'ryan.jpeg', 'Culpa reiciendis dolorum eaque accusantium. Animi qui provident ipsa distinctio. Temporibus sunt officia et dolorem impedit. Cumque rerum qui ut non perspiciatis voluptatem.', '2016-12-03 13:15:45'),
(53, 'audrey51', 'leanna.jpeg', 'Quos aut quibusdam labore sit quod est qui dolor. Alias et similique impedit beatae dolores. Recusandae qui voluptas rerum quia et harum. Quaerat libero et repellat rerum voluptas dolore explicabo.', '2017-03-21 15:16:02'),
(54, 'wbuckridge', 'leanna.jpeg', 'Sit ducimus minima nulla suscipit id tempore. Recusandae et deleniti tenetur itaque illo sunt possimus esse.', '2017-01-15 08:19:59'),
(55, 'jaiden06', 'leanna.jpeg', 'Reiciendis sit optio consequatur aliquid. Repudiandae temporibus blanditiis sit maiores quo. Qui pariatur cumque hic sunt harum alias omnis. Asperiores aliquid ducimus fuga temporibus consequuntur omnis sit.', '2017-03-28 04:03:15'),
(56, 'cory.dare', 'ryan.jpeg', 'Est repellat asperiores vitae neque optio. Et consectetur ut expedita ratione vitae qui sed. Repudiandae quod sit asperiores eum. Nisi cumque et quod hic aut nulla.', '2016-11-15 10:59:36'),
(57, 'evan43', 'ryan.jpeg', 'Neque pariatur vel laudantium et laborum veniam. Dolorum ad in et fugit. Facilis dolor fugiat dicta eveniet. Est accusantium eveniet rerum architecto commodi.', '2017-02-19 01:34:58'),
(58, 'vokuneva', 'leanna.jpeg', 'Quis debitis et aliquam qui vel. Qui ipsum perferendis ut dolorum excepturi deleniti voluptatem. Et atque aut consequuntur ipsum dolores. Dolor necessitatibus qui corrupti et non. Quia repellat expedita laudantium ducimus qui.', '2016-11-04 22:11:05'),
(59, 'carter.ed', 'leanna.jpeg', 'Accusamus sed iure voluptatum excepturi sit quos magni. Iusto voluptatem quasi consequatur modi. Eveniet est voluptatem culpa dolores. Sunt occaecati est nihil vel aut.', '2016-12-19 09:20:06'),
(60, 'alan81', 'ryan.jpeg', 'Vel doloremque modi est qui inventore voluptate. A minus quos laudantium porro quibusdam. Suscipit quo consequatur ipsa repellendus.', '2017-03-18 17:56:20'),
(61, 'astrid.walter', 'leanna.jpeg', 'Libero eveniet nesciunt dolore et id. Sapiente voluptatum sint eum nobis. Et et fuga fugit consequatur cum esse laborum.', '2016-11-13 18:03:20'),
(62, 'thiel.alfred', 'ryan.jpeg', 'Voluptates error ut recusandae quis labore facilis sit. Quia velit quia laudantium ea et. Enim molestias sunt odio aperiam tenetur.', '2017-04-06 15:08:56'),
(63, 'osinski.americo', 'ryan.jpeg', 'Quidem quo similique vel. Deleniti id sed veniam. Velit perferendis dolores nemo nesciunt ullam fugiat maiores. Quo aspernatur quod voluptas quibusdam exercitationem ab.', '2017-01-24 01:49:39'),
(64, 'bernie01', 'ryan.jpeg', 'Dolor voluptatem alias dignissimos nobis expedita repellat aut. Cumque optio qui ab quaerat consequuntur. Eaque maiores optio voluptatibus et non ab. Exercitationem nemo et expedita culpa praesentium mollitia et. Eaque et recusandae iste qui.', '2017-04-08 04:55:52'),
(65, 'nlittle', 'leanna.jpeg', 'Illo possimus qui iste velit dolorem. Officiis nostrum dolore nulla est ea quo fugiat.', '2017-01-24 02:38:07'),
(66, 'bosco.lucile', 'leanna.jpeg', 'Hic odio quod totam quia tempora. Reprehenderit voluptas maiores consequatur excepturi impedit ducimus aut. Quia voluptatem est quo ea reprehenderit. Quibusdam in eum et.', '2017-02-07 01:39:45'),
(67, 'june.bechtelar', 'leanna.jpeg', 'Error aspernatur magnam aut sed architecto officiis ea. Velit ratione quia minus sint quis voluptatem sequi. Sed ratione dolorem fugit inventore repellendus voluptatum sit.', '2017-01-24 02:46:31'),
(68, 'loconner', 'ryan.jpeg', 'Non praesentium itaque sequi architecto quia veniam accusantium. Commodi qui id repellendus earum voluptate explicabo excepturi molestias. Quo culpa distinctio et consequatur exercitationem in.', '2016-12-11 00:44:49'),
(69, 'edaugherty', 'ryan.jpeg', 'Neque esse dicta architecto omnis quae consequatur. Est sit beatae quo alias aut. Perspiciatis quos illo sed nostrum doloremque atque. Molestiae expedita ut beatae repellendus doloremque omnis.', '2017-03-29 09:21:07'),
(70, 'fschmidt', 'ryan.jpeg', 'Ab et culpa voluptatem aperiam qui animi pariatur rerum. Corrupti id alias et qui. Ut aperiam laudantium fugiat est officia aut enim.', '2017-01-03 16:08:44'),
(71, 'schowalter.emely', 'ryan.jpeg', 'Dolorum similique a nihil quae veniam qui. Aspernatur ut et nesciunt eius est minus quis. Consequatur eligendi minus aut ea.', '2017-03-22 00:12:21'),
(72, 'bklein', 'leanna.jpeg', 'Cupiditate soluta dicta impedit vel. Rerum vel fuga quo incidunt aperiam sunt unde. Ullam dolores ut natus et ratione voluptate consequatur architecto. Placeat fugiat itaque et sit est.', '2017-01-27 22:56:21'),
(73, 'annalise37', 'ryan.jpeg', 'Dolor omnis assumenda dolor enim exercitationem sunt. Voluptatibus harum id cupiditate asperiores assumenda molestiae. Nobis beatae ut culpa aliquam debitis aut. Qui qui officia quis sint.', '2016-12-14 11:03:01'),
(74, 'dreilly', 'leanna.jpeg', 'Suscipit saepe quia vero nesciunt nobis. Facere non iure nihil. Soluta nihil est dolorum voluptas. Voluptatem a nihil possimus aut sit voluptas.', '2016-10-17 09:21:01'),
(75, 'smarquardt', 'ryan.jpeg', 'Alias ex consequatur qui eaque ut necessitatibus. Qui est et architecto odio alias sed eaque. Ut officia reiciendis ipsam voluptatem nulla molestias. Minus hic et aperiam voluptas corporis fugiat distinctio.', '2017-01-19 03:06:26'),
(76, 'eschumm', 'leanna.jpeg', 'Quae dolores blanditiis aut ut nemo eum. Impedit recusandae temporibus quam. Blanditiis omnis corrupti hic.', '2016-11-05 08:00:58'),
(77, 'kozey.josue', 'leanna.jpeg', 'Id nobis quo aliquid nam ex asperiores neque. Voluptas ut ut facilis qui sed. Magnam voluptatem nostrum illum praesentium exercitationem numquam. Vel perferendis consequuntur assumenda quae labore nesciunt. Animi libero sit repudiandae id aliquam.', '2016-12-26 10:37:51'),
(78, 'ifahey', 'ryan.jpeg', 'Qui assumenda a iusto perspiciatis dolor. Dolore unde nihil ducimus rerum est similique et. Distinctio minima fugit corrupti.', '2016-10-20 15:04:27'),
(79, 'langworth.ottilie', 'ryan.jpeg', 'Cupiditate in quaerat et enim temporibus quo soluta. Optio consectetur est cupiditate a eum natus officia laudantium. Aliquam deleniti rerum qui vitae enim et explicabo possimus.', '2016-11-14 02:05:53'),
(80, 'pdach', 'leanna.jpeg', 'Et beatae totam repellendus. Voluptatem qui repellendus necessitatibus hic ipsa doloribus. Qui accusamus et odio explicabo quam accusamus. Sint quia fuga autem impedit perspiciatis.', '2017-01-23 13:32:53'),
(81, 'braun.anabel', 'leanna.jpeg', 'Quo reprehenderit commodi aut voluptas corrupti placeat. At nostrum voluptatem et et ea. Harum tempore ab quis impedit. Assumenda aut aliquid consequatur nulla explicabo commodi praesentium voluptatem.', '2017-04-09 20:01:39'),
(82, 'predovic.jett', 'ryan.jpeg', 'Ipsam magni quis nobis dolorem. Odio alias nemo voluptatum non ea. Nisi nulla consectetur beatae. Dolorem maiores aut blanditiis in pariatur. Blanditiis consectetur itaque consequuntur cupiditate praesentium itaque et.', '2017-04-12 08:12:16'),
(83, 'qwillms', 'leanna.jpeg', 'Vitae quia molestiae magnam ea velit quo autem. Ut voluptatem est et ipsam molestiae ipsam. Quaerat minima id corrupti veritatis aspernatur.', '2016-11-15 05:41:53'),
(84, 'xcasper', 'ryan.jpeg', 'Aut commodi et voluptates inventore dolor assumenda. Minus vitae odit magnam omnis.', '2016-10-21 05:36:54'),
(85, 'owelch', 'leanna.jpeg', 'Recusandae ad omnis explicabo expedita sed. Quis aut facilis a eum. Id perferendis asperiores et reprehenderit rem dolorum. Sed nisi aut accusamus aut. Recusandae omnis ex omnis est.', '2017-01-27 22:07:40'),
(86, 'paul54', 'leanna.jpeg', 'Omnis quaerat doloremque beatae iure necessitatibus. Expedita quasi rerum veritatis veritatis nam et quam. Voluptatem qui ut itaque iusto consequuntur.', '2017-04-10 00:28:25'),
(87, 'ullrich.fabiola', 'ryan.jpeg', 'Facere sunt dolor omnis. Et fugiat animi veniam ad animi. Impedit voluptatum qui iure laboriosam laborum.', '2017-04-14 16:46:09'),
(88, 'ezra.mcdermott', 'ryan.jpeg', 'Qui alias itaque esse sint nisi sed maiores. Laudantium aliquid incidunt placeat. Ut dolores omnis est accusamus iusto et quis.', '2016-12-29 13:48:24'),
(89, 'lschulist', 'leanna.jpeg', 'Eum et nihil ut. Odio quia consequuntur temporibus alias nihil. Officia sapiente nesciunt atque. Eius totam esse velit voluptas temporibus.', '2017-01-22 20:32:23'),
(90, 'veum.walton', 'ryan.jpeg', 'Officia ut omnis nihil dolores et maxime tempora. Aut aut totam molestiae assumenda. Doloremque ab unde a cumque culpa voluptatum molestias. Totam similique voluptatum mollitia ab quo error rerum.', '2016-10-21 05:34:34'),
(91, 'gilberto03', 'ryan.jpeg', 'Provident nemo asperiores excepturi explicabo. A molestiae aliquam aut voluptate velit et et. Officia consequatur in et aut hic. Maxime nemo rerum in dolores molestias earum.', '2017-01-13 19:21:52'),
(92, 'enoch.mcclure', 'ryan.jpeg', 'In nihil quidem est eum quia. Amet quod sed illo. Sint magni ea nemo sed voluptatibus in. Est ratione natus perferendis fuga animi nulla.', '2017-03-03 13:35:21'),
(93, 'billie.pollich', 'ryan.jpeg', 'Et sed quis maiores et dignissimos. Mollitia non enim ad totam nihil quis. Maiores ipsa esse ullam cupiditate ut. Deserunt doloremque magnam et impedit quo.', '2017-01-17 00:34:43'),
(94, 'clara.blick', 'leanna.jpeg', 'Corporis facilis inventore vero animi unde doloribus culpa. Dolor vel consectetur debitis a animi. Ut ut exercitationem est quia ad quas. Cumque laborum quod ut ducimus.', '2016-12-16 10:19:30'),
(95, 'greenfelder.stanley', 'leanna.jpeg', 'Neque sit numquam vel est. Ab doloribus cupiditate excepturi non. In voluptatem vel rem quaerat sunt magni aut. Vel deleniti molestias velit.', '2017-01-11 14:29:20'),
(96, 'bria.schulist', 'leanna.jpeg', 'Et eos vero hic quia ut adipisci. Molestiae cum et facere fugiat sed earum. Suscipit voluptatem laboriosam deserunt nobis doloribus enim.', '2016-10-24 05:32:27'),
(97, 'zachery.vandervort', 'ryan.jpeg', 'Quo est rerum nihil sint placeat ipsa id ullam. Accusantium eveniet debitis voluptatem earum sed. Aut impedit facere rerum provident aut. Officia ducimus ea beatae eum amet provident sint. Eius et reprehenderit aliquam excepturi id et.', '2016-10-25 20:13:08'),
(98, 'dejuan.connelly', 'ryan.jpeg', 'Quod dolorem perspiciatis eos quis asperiores. Qui eaque natus qui voluptas. Beatae deleniti in quis.', '2017-04-07 06:43:24'),
(99, 'bailey.kuvalis', 'ryan.jpeg', 'Facilis dolore doloremque unde. Nostrum omnis dolorem dicta repellendus dolorum fugit. Molestiae aut est enim cupiditate. Dolore nobis in autem dicta adipisci.', '2017-02-01 05:04:51'),
(100, 'queenie79', 'leanna.jpeg', 'Molestias possimus magnam earum non explicabo. Et et omnis est animi quaerat. Autem qui suscipit vel aut magnam architecto.', '2017-01-13 03:11:48');

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `genus_note`
--
ALTER TABLE `genus_note`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
