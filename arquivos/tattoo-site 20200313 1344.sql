-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.27-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `tattoo-site`
--

CREATE DATABASE IF NOT EXISTS `tattoo-site`;
USE `tattoo-site`;

--
-- Definition of table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`,`migration`,`batch`) VALUES 
 (1,'2014_10_12_000000_create_users_table',1),
 (2,'2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


--
-- Definition of table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


--
-- Definition of table `solicitacao_orcamento`
--

DROP TABLE IF EXISTS `solicitacao_orcamento`;
CREATE TABLE `solicitacao_orcamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tamanho_tattoo` varchar(45) NOT NULL,
  `parte_corpo` varchar(100) NOT NULL,
  `outra_parte` varchar(255) DEFAULT NULL,
  `cor` varchar(45) NOT NULL,
  `descricao` text NOT NULL,
  `imagem_exemplo` varchar(255) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `data_valor` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solicitacao_orcamento`
--

/*!40000 ALTER TABLE `solicitacao_orcamento` DISABLE KEYS */;
INSERT INTO `solicitacao_orcamento` (`id`,`nome`,`telefone`,`email`,`tamanho_tattoo`,`parte_corpo`,`outra_parte`,`cor`,`descricao`,`imagem_exemplo`,`status`,`valor`,`observacao`,`data_valor`,`created_at`,`updated_at`) VALUES 
 (5,'Thiago Bogoni Spindola','24988127336','thiago_spdvr@hotmail.com','8x6','Perna',NULL,'colorido','A ideia é fazer um desenho baseado em tecnologia. A imagem anexada é um exemplo.','exemplos/a3yDbhcghtu2IBay1TIZt0iAkQBTLjtkHc31NKSG.jpeg','Novo',NULL,NULL,NULL,'2020-02-21 16:00:29','2020-02-21 16:00:29'),
 (6,'THIAGO BOGONI SPINDOLA','24988127336','THIAGO_SPDVR@HOTMAIL.COM','10X15','PERNA',NULL,'PB','FAZER O AUMENTO DA TATUAGEM EXISTENTE. INCLUIR UMA LUA NA PARTE SUPERIOR E UMA FLORESTA COM UM LOBO MENOR NA PARTE DE BAIXO.',NULL,'NOVO',NULL,NULL,NULL,'2020-03-11 11:54:46','2020-03-11 11:54:46'),
 (7,'Thalissa Salazar','(37) 3426-1174','jgalindo@r7.com','10x15','gv_GB','fa_IR','LimeGreen','Molestiae autem rerum doloremque non asperiores odio unde fugit. Et voluptas fugit recusandae. Molestiae impedit architecto dolorem nam recusandae iure. Incidunt ut quod corrupti dolorem.','https://roque.net/ut-aliquam-quas-accusantium-voluptatem-sunt.html','A',NULL,NULL,NULL,'2020-03-11 12:53:33','2020-03-11 12:53:33'),
 (8,'Allison Delgado Filho','(69) 3483-4444','ivan.mares@uol.com.br','10x15','de_AT','kpe_LR','LightSalmon','Dolor aut magni voluptatibus cum. Quia reiciendis velit aliquid eos qui quidem eius expedita. Quis quod sequi occaecati unde accusamus voluptas. Quia temporibus repudiandae non asperiores et. Nesciunt nihil sunt ratione occaecati sit voluptas quidem.','http://prado.br/','A',NULL,NULL,NULL,'2020-03-11 12:53:33','2020-03-11 12:53:33'),
 (9,'Sra. Ariadna Delatorre Martines Sobrinho','(63) 3428-4130','bferminiano@ig.com.br','10x15','it_IT','ru_UA','MidnightBlue','Dolorem numquam quod sed culpa. Qui cumque laboriosam excepturi animi esse. Ratione deleniti est rerum eum et.','http://pontes.br/et-eligendi-eaque-sit-nobis-ut-molestias-veritatis','A',NULL,NULL,NULL,'2020-03-11 12:53:33','2020-03-11 12:53:33'),
 (10,'Sra. Luzia Toledo Padrão Neto','(32) 2548-3472','isabella.salas@terra.com.br','10x15','fr_CH','wal_ET','Chartreuse','Qui molestias voluptas dolorem aut ut laboriosam. Expedita consequatur nobis laborum sunt rerum sed rerum deserunt. Et accusantium a cumque at.','http://www.assuncao.com/est-distinctio-soluta-reiciendis-consequatur-assumenda-quia-vitae-sed','A',NULL,NULL,NULL,'2020-03-11 12:53:33','2020-03-11 12:53:33'),
 (11,'Micaela Martines Rangel Sobrinho','(17) 3448-7349','ferraz.mel@uol.com.br','10x15','fr_FR','bg_BG','AliceBlue','Atque et quae ratione est omnis autem. Accusamus natus quod debitis delectus in. In suscipit aut commodi qui aut ipsam beatae. Omnis ex aut eligendi enim ea quibusdam.','http://www.gusmao.net/quae-voluptatum-cum-eaque-quibusdam-magnam-cumque','A',NULL,NULL,NULL,'2020-03-11 12:53:33','2020-03-11 12:53:33'),
 (12,'Cristóvão Carlos Santana','(32) 4477-5485','avila.ornela@hotmail.com','10x15','en_BE','as_IN','OldLace','Sit doloremque in qui explicabo et ex dolores. Sit commodi qui quia hic omnis aspernatur. Ab voluptas sed aliquam reprehenderit.','http://www.balestero.org/','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (13,'Maitê Marques Marques','(15) 4449-0515','tomas05@terra.com.br','10x15','ak_GH','or_IN','Bisque','In consequuntur et est illum reiciendis. Sint fuga consectetur consectetur consequuntur odio possimus. Eos aliquid ipsam aut minus doloribus. Et occaecati sed omnis ullam excepturi quaerat quis.','http://www.lozano.com.br/','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (14,'Dr. Luciano Marés','(82) 3921-0312','felipe.salazar@terra.com.br','10x15','wal_ET','mr_IN','LightCyan','Sed facere fugit in corporis. Perferendis nobis omnis eos minus molestiae. Inventore aut nobis quia hic ea earum. Recusandae voluptatem nulla perspiciatis rerum illo. Id perferendis saepe quis.','http://lutero.com/quam-qui-voluptatem-fugiat-cumque-voluptas-sequi.html','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (15,'Dr. Eduardo Aaron Marques','(81) 2577-3676','gsepulveda@ig.com.br','10x15','en_IE','en_UM','Darkorange','Vero doloremque nostrum et et aut. Voluptatem occaecati non repellendus alias et at. Quasi placeat ipsa voluptas rerum ut et debitis. Veritatis deserunt eligendi debitis libero asperiores.','http://espinoza.com.br/quam-quia-consequuntur-error-ab-mollitia-maiores','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (16,'Christian Emiliano Rivera Neto','(47) 2489-0457','beltrao.salome@gmail.com','10x15','fi_FI','ml_IN','DeepSkyBlue','Reprehenderit accusamus quasi repellat repudiandae eos. Culpa quo praesentium dolorum numquam. Enim eos consequuntur provident qui. Ut atque libero quaerat. Non quaerat iure debitis dicta. Maxime qui veniam quos at.','http://www.correia.org/ex-perspiciatis-debitis-aut-ea','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (17,'Dr. Rafael Carmona Vasques Filho','(18) 4484-7386','diego25@yahoo.com','10x15','ha_NG','ss_ZA','LimeGreen','Numquam distinctio maiores fugiat beatae. Facere dicta ad earum aut quibusdam. Iste ipsa porro provident voluptatem rerum nobis omnis saepe.','http://serrano.br/','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (18,'Dr. Natal Marques Rocha Jr.','(85) 4724-9002','ymarin@r7.com','10x15','pa_PK','om_ET','Tan','Vel sunt veritatis et saepe. Et maxime voluptas natus odio. Architecto quasi beatae incidunt et enim cupiditate. Hic laboriosam totam dolorum similique.','http://abreu.net/','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (19,'Miguel Madeira Campos','(67) 95991-5605','paulo.mares@yahoo.com','10x15','es_US','kok_IN','Salmon','Dolorem cumque ullam reprehenderit nihil fuga beatae excepturi. Est ut quidem voluptatem dolor eum distinctio maxime. Excepturi alias qui ipsum illo ut aut.','https://www.delgado.br/ipsa-perspiciatis-delectus-sequi-veniam','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (20,'Sr. Jácomo Saraiva','(69) 3447-3425','delgado.evandro@terra.com.br','10x15','tn_ZA','wal_ET','PeachPuff','Est officia ab molestiae sed voluptates architecto vitae. Cupiditate minima voluptas magni repellat. Vitae est sed vel reiciendis. Voluptates soluta non voluptatem rerum maxime neque.','http://www.matos.org/velit-vel-dolores-corporis-omnis-ducimus-dolore','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (21,'Antonieta Lutero Jr.','(94) 90482-1224','gburgos@ig.com.br','10x15','en_MH','zh_CN','DarkGoldenRod','Nam rerum asperiores omnis voluptatem et consequatur est sapiente. Officia vero voluptates quod sapiente rerum necessitatibus. Aut quia laboriosam adipisci. Reprehenderit ea dignissimos non voluptatem distinctio. Vel blanditiis nemo illo molestias quas.','https://sales.br/omnis-pariatur-similique-quia-aut-dolore-praesentium-quia.html','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (22,'Dr. Hernani Pedro Ferminiano','(94) 98963-9457','ana.maia@r7.com','10x15','kn_IN','kfo_CI','RosyBrown','Blanditiis provident et qui perspiciatis vel distinctio. Dolore eum ipsa et aut architecto accusantium sapiente. Sequi velit commodi sint et magnam quis. Qui dolores numquam laboriosam voluptas. Voluptatem eum modi minima facere est.','http://www.branco.com/sed-dignissimos-repellat-sit-enim-explicabo-earum-inventore','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (23,'Bianca Ariana Pedrosa Neto','(33) 4091-2616','kevin13@gmail.com','10x15','bn_BD','mn_CN','BlanchedAlmond','Cumque porro quis voluptas quos. Aut velit eos nihil voluptatum eveniet sint possimus. Nesciunt eum distinctio praesentium est odio atque.','http://rezende.net/','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (24,'Dr. Irene Corona Rodrigues Neto','(92) 91810-0790','zaragoca.evandro@ig.com.br','10x15','mr_IN','hi_IN','SlateBlue','Esse a numquam similique numquam consequuntur magni. Natus natus asperiores qui esse nesciunt quae. Voluptatem est magni voluptas quas qui.','http://www.pacheco.org/magni-mollitia-dolor-soluta-consequatur-minus-quo-in-quia.html','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (25,'Alma Santana Sobrinho','(82) 3962-9911','gil.violeta@hotmail.com','10x15','ca_ES','ja_JP','Turquoise','Accusantium et illum optio et sed qui. Suscipit debitis odit mollitia dolores. Laborum dolorem eveniet nihil ullam. Qui veritatis rerum sint rerum. Neque corrupti quia voluptates autem omnis fuga et.','http://abreu.org/aut-modi-vitae-ex-quam-culpa','A',NULL,NULL,NULL,'2020-03-11 12:53:34','2020-03-11 12:53:34'),
 (26,'Srta. Sara Rangel Paz','(19) 95089-6382','lucas34@r7.com','10x15','en_NZ','sr_RS','LimeGreen','Veritatis quis odit illum dolorum molestiae. Earum eius facilis ut numquam animi est dolores. Laboriosam aliquam repellendus qui quisquam error fugiat rem. Nostrum quo aliquam molestias quia et illo dolorum.','http://www.matos.com.br/dolorem-atque-est-est-aspernatur-enim-temporibus.html','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (27,'Dr. Inácio Medina Filho','(16) 96077-5507','rferreira@hotmail.com','10x15','ln_CG','kn_IN','SlateBlue','Ut dicta ex sunt nulla aut beatae doloremque. Omnis commodi architecto dolorem. Labore error molestiae quod quia. Architecto minima harum autem quisquam odit molestiae.','http://www.teles.br/dolore-nulla-adipisci-exercitationem-consequatur-ad-inventore.html','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (28,'Valentina Ferreira Gonçalves','(63) 97096-8357','elias79@ig.com.br','10x15','aa_DJ','af_NA','ForestGreen','Est nobis pariatur sed debitis voluptatem fuga. Rerum aliquam quisquam ut velit eius. Velit dolorem totam aspernatur repudiandae aut explicabo facilis omnis. Fugit iusto iusto sed et itaque accusantium.','http://assuncao.com.br/atque-rerum-non-iste-itaque-molestias-quo','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (29,'Dr. Horácio Carmona Queirós Jr.','(17) 99714-7628','emanuel.rangel@terra.com.br','10x15','se_NO','en_HK','Ivory','Ut omnis velit et dolorum totam iusto asperiores labore. Sit pariatur cum dolore aliquid et aut. Maxime eum pariatur illo autem ducimus autem quod. Sed vero quia earum ea. Minus architecto veritatis et ut maxime est quae.','https://www.vega.br/nihil-nam-rerum-ad-harum-dolores-accusamus','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (30,'Sr. Cristóvão Delgado Jr.','(38) 2296-8037','paes.carlos@ig.com.br','10x15','fo_FO','aa_DJ','LawnGreen','Ab dolores rerum sed soluta exercitationem consequatur sapiente. Velit quam voluptatibus dolores quia odio quo. Praesentium autem enim ut. Suscipit sed aut ut aut deleniti nemo dicta. Et omnis minus adipisci tenetur sint.','http://www.davila.org/non-itaque-architecto-nobis-aut','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (31,'Ivan Hernani Pereira Sobrinho','(24) 4936-8426','eduardo.pereira@yahoo.com','10x15','ln_CD','ar_MA','FireBrick','Ut sit qui magni sunt. Id mollitia eius quae voluptate blanditiis qui et consequatur. Numquam suscipit laboriosam cum quod consequatur sint.','http://santana.com.br/non-fuga-est-qui-nulla-quasi-consequatur-adipisci-quis','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (32,'Dr. Suzana Pâmela Toledo','(35) 92374-0659','thalissa.cordeiro@hotmail.com','10x15','om_ET','ar_QA','MediumSeaGreen','Blanditiis explicabo qui quis doloribus et iure temporibus. Beatae quis sit non consequatur explicabo ipsa. Aliquam consequatur quia culpa temporibus provident. Eos sed nihil voluptas labore ducimus odio.','http://leal.org/sit-earum-nobis-eum-culpa-quo-officia-corporis-et','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (33,'Dr. Isabella Barreto','(84) 4044-1716','hortencia61@terra.com.br','10x15','pl_PL','fa_IR','Gray','Dolores cupiditate qui dolores consequatur est sunt. Nulla ut a voluptatem et.','http://bonilha.net.br/sit-numquam-odit-nobis-rerum-atque-quisquam-tempore-necessitatibus','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (34,'Emília Perez Filho','(17) 2139-6946','ziraldo06@r7.com','10x15','sr_ME','uk_UA','LightSlateGray','Et aut et sit ea. Rerum sit et in dolor qui aut eum non. Non et consequatur placeat nobis sint accusantium. Qui quasi eos illo et. Dolorem qui error voluptas ea autem doloremque.','https://leon.net/aspernatur-minus-impedit-dolore.html','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (35,'Sr. Isaac Lira Paz','(93) 3853-6180','upontes@hotmail.com','10x15','ky_KG','en_BE','LightSalmon','Et similique minus sint quaerat occaecati velit soluta. Maiores rerum sunt est animi. Minus ut impedit sunt mollitia voluptatem est eaque laudantium. Est laboriosam dolores eos rerum.','http://esteves.com.br/eos-ipsa-voluptas-voluptas','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (36,'Josué Gonçalves Jr.','(69) 93171-0646','mtamoio@yahoo.com','10x15','ar_BH','en_ZA','Yellow','Cumque ab error commodi dolorem. Autem rerum vel maxime est et. Dolorem a rem expedita perferendis est tempore. Voluptatem iure ut amet incidunt qui et eius. Maxime voluptatem nihil eos dolor. Et consequatur rerum nesciunt modi dolores aut cumque aut.','http://cervantes.com.br/magni-ea-porro-deserunt-laborum.html','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (37,'Allison Irene Leal Jr.','(46) 3713-5526','paula48@terra.com.br','10x15','es_AR','he_IL','AliceBlue','Nobis doloribus natus consequuntur quibusdam ea repellat. Cum voluptatem non eos. Nam accusamus earum et sapiente vel. Error voluptas quae et neque perspiciatis facere.','http://pontes.com.br/in-eos-fuga-mollitia.html','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (38,'Valentina Duarte','(45) 94312-2576','maximiano26@hotmail.com','10x15','ne_NP','en_ZW','MediumAquaMarine','Blanditiis consequatur harum est fugit eos omnis. Voluptatibus et non natus a. Pariatur quidem officiis quae. Magni et eum hic id explicabo est.','http://www.pena.net.br/','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (39,'Leandro Garcia Delvalle','(53) 3591-5601','serra.rafaela@ig.com.br','10x15','aa_ER','fa_AF','Pink','Ut sint et in rerum blanditiis delectus. Et ipsam sunt quam dicta. Blanditiis consectetur odio quos numquam. Dicta soluta nihil voluptatum.','http://bittencourt.org/accusamus-et-est-est-vel-fuga.html','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (40,'Sr. Dante Burgos','(24) 4064-3337','marin.carla@gmail.com','10x15','aa_DJ','ar_QA','ForestGreen','Voluptatem sit et at quasi quia facilis facere. Distinctio ipsum sed non delectus explicabo rem ea necessitatibus. Omnis facilis exercitationem quo quaerat.','http://www.bittencourt.com.br/','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (41,'Alessandra Molina Barreto','(55) 4872-1515','gustavo92@hotmail.com','10x15','ti_ER','ts_ZA','Gray','Dolor quos enim magni debitis quas expedita rerum. Ad natus eum vitae libero voluptatem. Est optio qui ullam perspiciatis sed ut. Molestias esse ipsa nesciunt animi omnis voluptas dolores. Voluptatem voluptatem non tempora sit.','http://www.serna.com.br/iusto-exercitationem-quibusdam-earum-qui','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (42,'Noelí Josefina Medina','(16) 96252-5658','ddelatorre@gmail.com','10x15','fr_FR','ar_AE','Orange','Veniam nobis et ut eum minima facilis. Autem ut sed possimus perspiciatis veniam natus. Commodi rem exercitationem minima et aut. Recusandae exercitationem cumque sint magnam.','https://dasneves.com.br/et-qui-quo-quos-qui-sequi-et-delectus.html','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (43,'Santiago Serra Leal Filho','(62) 4387-1453','adriano.galindo@gmail.com','10x15','uz_AF','kk_KZ','Fuchsia','Vitae eos culpa esse debitis id quo provident. Nisi nisi autem omnis. Harum minus vero quam ut ipsam nemo. Ab vel provident voluptatem dolorem eos maiores consequatur. Quae ut est illo eveniet iure quia.','http://www.fontes.org/','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (44,'Sr. Giovane Serra Santiago','(69) 95754-8544','silvana96@gmail.com','10x15','uz_AF','kfo_CI','LightGreen','Placeat quia porro sunt laudantium. Explicabo asperiores dicta et rerum numquam cupiditate unde. Debitis non nulla vero quos ipsum.','http://deaguiar.net.br/','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (45,'Vicente Velasques','(54) 97139-0192','catarina71@yahoo.com','10x15','kcg_NG','ne_IN','Coral','Et minima debitis eveniet quia et nulla. Eum qui similique commodi sint eos adipisci perspiciatis. Itaque eveniet minus pariatur vero molestiae debitis. Suscipit molestiae quis officia.','http://queiros.br/saepe-numquam-blanditiis-ipsa-culpa-qui-veritatis','A',NULL,NULL,NULL,'2020-03-11 12:53:35','2020-03-11 12:53:35'),
 (46,'Sr. Alan Inácio Rios Jr.','(24) 99359-0775','pontes.kevin@uol.com.br','10x15','nl_NL','th_TH','DeepSkyBlue','Qui quis repellendus consectetur. Dolorem nihil quos ipsum rem. Doloremque distinctio aut aut fugiat eos. Dolor aperiam cum perspiciatis et quaerat et illo.','http://www.guerra.br/quo-et-molestias-hic-perferendis-accusamus','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (47,'Srta. Ornela Velasques Jr.','(88) 94015-0531','delvalle.simao@r7.com','10x15','ha_NE','lt_LT','GreenYellow','Illo eveniet vel vero. Dolores dolorum veritatis quibusdam molestias id enim et. Autem vitae porro ad enim. Itaque facere error est et facere.','http://dominato.com/fuga-tenetur-mollitia-amet-voluptate-ex-placeat-animi','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (48,'Emiliano Marinho Serra','(66) 92055-3410','chaves.elias@ig.com.br','10x15','en_TT','ar_KW','Snow','Quo architecto libero laboriosam qui sint sapiente. Architecto quo suscipit omnis voluptas laudantium debitis in ullam. Quidem in aut dolore consequatur. Neque distinctio a et quidem excepturi.','http://www.leal.net/deserunt-corporis-ea-sunt-qui-saepe-voluptas-corporis-et.html','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (49,'Sr. Everton Natal Pedrosa','(94) 91764-3652','goncalves.hugo@yahoo.com','10x15','sh_YU','en_MP','DarkSeaGreen','Eum fugit molestiae facere consectetur tenetur voluptas. Nihil voluptatem et praesentium nesciunt quia dolorum. Sunt dolor porro cumque eaque qui expedita cum.','http://www.marinho.net/sunt-facilis-mollitia-facilis','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (50,'Dr. Ketlin Neves Gusmão Neto','(47) 96049-1087','amontenegro@yahoo.com','10x15','trv_TW','ar_TN','Teal','Nostrum dolor quod voluptate quo facere cum est cupiditate. Cupiditate enim eum nihil sint eum officia ducimus. Ut nostrum rem dicta blanditiis.','http://quintana.com.br/','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (51,'Samanta Aragão','(15) 95697-7333','rmendonca@hotmail.com','10x15','sr_CS','cch_NG','OliveDrab','Pariatur quaerat optio mollitia odit sit est. Quasi accusantium quasi occaecati molestiae. Velit omnis occaecati nihil totam optio et libero incidunt. Inventore temporibus aliquid ut consectetur.','https://www.cortes.net/inventore-quis-inventore-exercitationem-cum-et-quia-in','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (52,'Christian Esteves Mascarenhas Filho','(82) 90163-7429','gabriela76@gmail.com','10x15','fr_BE','en_CA','MediumPurple','Est reiciendis qui illum maiores quis tenetur. Atque provident qui minima totam vero et. Et et aut molestiae ut corrupti ex. Eveniet excepturi fugit voluptatem in et fugit. Corrupti assumenda beatae veritatis dolorem.','http://www.fidalgo.br/','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (53,'Sr. Matias Thales Soares Sobrinho','(63) 3321-4062','mburgos@gmail.com','10x15','ne_NP','bg_BG','Violet','Sint voluptatem nam recusandae nisi eaque dolores rerum voluptatem. Officia iusto temporibus sequi fugit praesentium ut. Ut repellendus ab culpa et amet. Ut vel libero distinctio quod culpa qui.','https://www.delgado.org/soluta-temporibus-aspernatur-ea-eos','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (54,'Dr. Elias Gustavo Sepúlveda Neto','(66) 96989-9993','fferraz@yahoo.com','10x15','en_ZW','es_HN','Snow','Aut laboriosam voluptates impedit similique sint labore. Dolorem quia eaque ut. Et omnis ratione dolorem magnam corporis ipsam fugiat. Et quae aut odit sequi ratione consectetur deserunt.','http://www.davila.net/quis-nostrum-occaecati-maiores.html','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (55,'Guilherme Ferminiano Montenegro','(47) 91927-7634','dante.pontes@hotmail.com','10x15','so_DJ','nso_ZA','Orchid','Ipsam sequi asperiores corporis dolorum. Culpa repudiandae fugit dolor mollitia quo odit laboriosam. Et mollitia delectus nesciunt. Necessitatibus eos ducimus neque dolorum. Et impedit non et amet incidunt quasi consequuntur. At velit velit sed vel.','http://www.valencia.com.br/','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (56,'Rafael Abreu Assunção','(46) 92751-2225','vila.ricardo@r7.com','10x15','fi_FI','si_LK','GhostWhite','Voluptate aperiam numquam et nesciunt asperiores asperiores. Aut quaerat rerum velit rerum ipsum. Quia architecto consequatur rerum sit quia voluptate sint.','http://www.pacheco.net/unde-quia-culpa-iste-in-et-consequatur','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (57,'Fátima Serra','(53) 4121-6591','hernani09@terra.com.br','10x15','ts_ZA','wal_ET','Brown','Praesentium aut magni dolorum ea qui molestiae. Aut fugiat blanditiis velit ullam quis cupiditate et. Dolores laboriosam et unde hic. Dolorem voluptate voluptatem error eum autem asperiores.','http://delatorre.com.br/qui-debitis-eligendi-omnis-amet-facere-ut.html','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (58,'Valentina Solano Branco Jr.','(86) 98184-4269','valentin.ornela@ig.com.br','10x15','es_PR','en_JM','LightCyan','Sunt sint enim a sit praesentium et ut. Aliquid occaecati molestiae autem ab. Cum qui reiciendis voluptatibus.','http://www.reis.org/aut-id-cum-quod-sunt-sint-facilis','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (59,'Helena Gusmão Gusmão Jr.','(12) 4351-6012','hdasneves@yahoo.com','10x15','ar_IQ','haw_US','Azure','Nihil excepturi dolorum ad iste velit officiis. Et quia quis enim a sit amet deleniti. Ipsa aspernatur et dolores dolorem aperiam facere. Qui aut aut et ipsum.','http://madeira.com/doloremque-ab-modi-et-quam-dolor-totam-ipsam-deserunt.html','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (60,'Jorge David D\'ávila','(41) 3923-2878','isadora86@terra.com.br','10x15','ss_SZ','sid_ET','MediumTurquoise','Omnis quia neque vitae mollitia ut. Dolorum sed nemo quaerat voluptas dolores. Odio non quo asperiores officia quidem reprehenderit vel nisi. A voluptatibus quae rerum necessitatibus quasi.','http://www.sepulveda.net/','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (61,'Ivan Pontes Uchoa Jr.','(37) 94382-5583','qfontes@yahoo.com','10x15','is_IS','ka_GE','DarkOliveGreen','Totam est enim sapiente commodi quo vel. Doloremque hic repellendus ut quae delectus velit dicta qui. Et consequatur molestiae aut adipisci animi ut dolorum similique.','https://www.barros.com.br/illum-harum-commodi-aperiam-earum-quae-qui','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (62,'Sr. Eduardo Ian Ortega','(88) 4445-0720','furtado.valeria@hotmail.com','10x15','ar_YE','sq_AL','MediumTurquoise','Nesciunt facere aut saepe dolores nihil eveniet iste. Consequatur repudiandae ipsa reprehenderit et ea. Odio architecto vel aliquid voluptatibus est. Nihil earum cupiditate qui esse.','http://www.gomes.org/soluta-et-velit-molestiae-voluptatem-ullam.html','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (63,'Dr. Suzana Mel Zambrano','(98) 4908-4049','fferreira@uol.com.br','10x15','nb_NO','bo_IN','Indigo','Facilis aliquid et unde nulla praesentium qui iure. Quidem vel rerum commodi facilis. Et alias ipsum in eos. Voluptas magni voluptates enim quas. Est sed nisi error sed unde quae nemo. Dolores eum et doloribus sit sit.','http://guerra.com.br/voluptas-id-facere-alias-qui-aut.html','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (64,'Martinho Soto da Silva','(35) 3593-4195','vale.samanta@uol.com.br','10x15','es_CR','sa_IN','MintCream','Nisi quos eum facilis corrupti. Quos laborum omnis ad ad autem. Reprehenderit est saepe sint veritatis harum. Exercitationem repellat voluptatem ipsum rerum.','http://www.domingues.br/et-aspernatur-nobis-commodi-et-nostrum','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (65,'Dr. Josué Francisco Ferreira','(13) 90274-1151','vale.mel@hotmail.com','10x15','kpe_LR','ar_DZ','LawnGreen','Distinctio nesciunt voluptatem corporis. Vitae eum nostrum et dolores incidunt. Doloribus non non quaerat omnis nesciunt. Aut adipisci nesciunt omnis ratione in deleniti consequuntur. Et consequuntur qui neque. Omnis eos officiis ea quis suscipit.','http://bezerra.com/voluptatem-dolorem-magni-esse-officia-quos-qui.html','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (66,'Sr. Franco Brito Galhardo','(96) 4112-5070','nneves@ig.com.br','10x15','sr_CS','ca_ES','Brown','Explicabo quidem aut sint saepe. Voluptas numquam facilis eos et qui sunt accusamus. Ducimus dolorem repellendus delectus facilis quia ut aperiam. Quo fugit qui amet consequatur dolorem.','http://www.mendes.org/praesentium-odit-harum-dolor','A',NULL,NULL,NULL,'2020-03-11 12:53:36','2020-03-11 12:53:36'),
 (67,'Srta. Adriana Carla Barreto Filho','(68) 4400-3367','sbarreto@r7.com','10x15','sl_SI','to_TO','PeachPuff','Voluptates aspernatur et quo dolorem omnis et ut. Tempore maiores eaque laborum molestiae est. Ullam impedit dolore odit nisi pariatur delectus similique velit.','http://www.sepulveda.com.br/','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (68,'Carlos Dominato Verdara Neto','(99) 99305-6587','soares.maximiano@r7.com','10x15','af_ZA','de_DE','Blue','Ut occaecati harum illum et. Quis quidem est quae dolore unde. Ut totam vel earum sed. Eligendi dolores quidem quos ut ex.','http://www.ramos.com/repellendus-eum-quia-voluptas','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (69,'Fátima Valéria Abreu','(48) 90604-6313','kevin17@r7.com','10x15','ne_IN','ak_GH','MediumSeaGreen','Quo laboriosam et sed nemo et. Maiores libero rerum qui consectetur non soluta. Ex totam ipsam rerum at cumque et voluptate eum.','https://medina.com.br/dolore-rerum-voluptatem-libero-labore-eum-repudiandae.html','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (70,'Pablo Medina Maia','(77) 3972-4375','guilherme.dominato@yahoo.com','10x15','tg_TJ','en_MP','Olive','Voluptatum aut reiciendis dolores sunt. Vel sed voluptas id officia consequatur nihil amet. Dolor dignissimos culpa impedit beatae voluptatum corrupti rerum. Qui beatae ut corporis iste.','http://www.dasilva.org/nemo-iure-magni-dicta-esse-mollitia-unde-temporibus.html','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (71,'Vicente Fidalgo da Cruz','(17) 93211-2255','ugalindo@terra.com.br','10x15','ee_TG','xh_ZA','Darkorange','Velit a molestias dolorum. Minus consequuntur tempora deleniti necessitatibus impedit labore. Eveniet eum sed quam ut cum.','https://barros.com/ipsum-ea-velit-ex-consequuntur-repellendus-earum.html','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (72,'Dr. Leonardo das Neves','(87) 95414-5396','michele.solano@yahoo.com','10x15','km_KH','kam_KE','DarkOliveGreen','Magni soluta est labore deleniti. Sint reiciendis aperiam iure facere. Necessitatibus aliquid blanditiis rerum dolor reiciendis odio.','http://gomes.com.br/expedita-et-vel-amet-autem-blanditiis-odit-reprehenderit.html','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (73,'Dr. Pablo Flores Sales','(89) 2623-7027','simao.flores@terra.com.br','10x15','om_ET','lt_LT','Thistle','Porro tempore sunt qui itaque. Quia error quas aut expedita velit ducimus pariatur. Molestias officia nostrum sit praesentium nostrum alias tempora.','http://gil.net/aspernatur-perferendis-delectus-voluptatum-enim-ea-quas-vitae-magnam','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (74,'Júlia Rebeca Delgado','(94) 3857-9984','paula35@yahoo.com','10x15','ar_SY','kk_KZ','LightSkyBlue','Quas reiciendis aut expedita minus repellendus tempore incidunt et. Perferendis sunt quia laborum voluptate quod adipisci nesciunt eligendi. Sint ea voluptatem nihil inventore.','http://www.camacho.net/molestias-beatae-vitae-id-aut-consequatur','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (75,'Dr. Hernani Pereira Sobrinho','(33) 97546-1085','luana96@yahoo.com','10x15','yo_NG','en_US','DarkGray','Provident molestiae libero qui rem. Rem ullam ipsam animi nostrum. Perferendis quia ut dolore nulla magnam ut nobis hic. Voluptatem ut animi accusamus. Corporis quis quod aspernatur maiores maiores velit. Quaerat non et ut eum ab.','http://leal.br/delectus-fugiat-enim-accusantium-libero-eveniet-quas-rem.html','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (76,'Srta. Helena Rebeca Meireles','(14) 98894-7013','sabrina55@gmail.com','10x15','st_LS','lt_LT','Peru','Quia eos aut ullam recusandae aut reprehenderit quod. Repudiandae doloribus explicabo et sunt laborum tempore. Voluptas quidem omnis quae consectetur neque. Nostrum aut neque reprehenderit maxime quibusdam aut suscipit.','https://www.guerra.org/eaque-fugit-eos-ut-et-incidunt-optio-amet','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (77,'Sr. Miguel Zaragoça','(51) 94676-2596','vieira.regina@uol.com.br','10x15','en_GB','ga_IE','Bisque','Adipisci provident quasi voluptatum odio aut. Animi est expedita aut perferendis nobis laboriosam quia eum. Ducimus reiciendis et ratione perspiciatis beatae ut tempora quaerat. Harum nemo unde molestiae. Eveniet velit ipsum laboriosam voluptate nam.','http://marques.com.br/esse-aut-eum-autem','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (78,'Dr. Fernando Uchoa Colaço Jr.','(47) 91680-7066','ian89@r7.com','10x15','sl_SI','ve_ZA','DimGray','Dolorem accusamus facilis dolor incidunt. Quis ab nihil facilis blanditiis omnis voluptate.','http://www.mascarenhas.org/','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (79,'Daniela Alexa Rico Neto','(63) 93367-4438','jasmin65@r7.com','10x15','ts_ZA','en_MH','Bisque','Sunt libero voluptates inventore cumque dolorem. Sequi ipsam qui enim natus. Unde ut quo nihil voluptatem dolore sit. Est nisi quis error. Natus nemo hic voluptatem vero. Animi incidunt odit sint nostrum consectetur qui.','http://www.gil.net/corporis-placeat-delectus-ut-sapiente','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (80,'Srta. Alma Ferreira','(22) 3831-0464','giovana.duarte@r7.com','10x15','en_NZ','lt_LT','Coral','Consectetur modi perspiciatis ducimus rerum pariatur ad deserunt. Voluptatibus aut molestiae ducimus perferendis nulla sunt. Voluptate qui aliquam ullam neque et nihil laborum est.','http://www.galindo.com.br/dignissimos-commodi-ut-quod-itaque-impedit-rem-quia-voluptates','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (81,'Silvana Burgos Carrara','(33) 97753-3835','corona.christopher@r7.com','10x15','fr_LU','nl_NL','DimGrey','Animi minus perferendis ipsum ipsam nulla atque distinctio. Esse et sunt sunt consequatur reiciendis. Est illo non quod dolorum.','http://ferreira.com/aut-magnam-ut-suscipit-ut-aspernatur-doloribus-dolores.html','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (82,'Ashley Agustina Medina Neto','(47) 92211-4258','sgomes@uol.com.br','10x15','kk_KZ','cch_NG','DarkSeaGreen','Sunt minima recusandae provident hic. Molestiae minus sint doloremque expedita. Est dolores adipisci ratione omnis odit maxime. Et voluptatem esse ab officia quae.','http://www.montenegro.com.br/nisi-ipsa-qui-sit','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (83,'Dr. Maximiano Rocha Galindo Filho','(83) 3344-3361','alan.grego@gmail.com','10x15','da_DK','se_NO','DarkBlue','Aut voluptas accusantium qui eum molestiae illum. Mollitia occaecati et deleniti dolor. Labore magni cupiditate minus eaque vel. Possimus ea ut aut eum quia blanditiis.','http://www.faro.com/ut-consequatur-et-voluptatem-nobis-nisi-aut.html','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (84,'Sr. Simon Lira','(95) 3472-9149','leon.adriano@terra.com.br','10x15','ar_MA','ku_IQ','MistyRose','Consequatur laudantium omnis aut quaerat dolores voluptatibus quia. Et sit quam exercitationem vel non in. Nesciunt iusto consequatur nostrum dolores ut.','http://jimenes.com/qui-atque-aliquam-odit-est-perferendis-sed-sed.html','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (85,'Sophie Valéria Delgado Neto','(42) 4292-3597','alexa.madeira@gmail.com','10x15','gv_GB','ar_IQ','Cornsilk','Sed necessitatibus natus quibusdam porro rerum est. Quas cumque eos dolor voluptatum. Eos velit sunt est. Quasi autem doloribus necessitatibus possimus.','http://www.barreto.net.br/enim-unde-dolores-ex-ratione-quaerat-amet-vel','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (86,'Sra. Júlia Toledo','(79) 2259-5098','chaves.agostinho@r7.com','10x15','de_AT','st_ZA','MediumTurquoise','Natus rerum reprehenderit sapiente libero in rerum. Quibusdam ea quia fugiat quia aut placeat qui.','https://domingues.com.br/nulla-rerum-magni-at-vel-consequatur-sed-dolores.html','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (87,'Sr. Dante Alan Branco','(44) 2068-9150','ana.lozano@gmail.com','10x15','nso_ZA','es_DO','PeachPuff','Quod corporis laborum rem laudantium aut nemo et. Dolorem voluptatum suscipit nulla molestiae quo et. Molestiae soluta non est quibusdam. Quae ea harum quibusdam non nisi corporis ipsa quod.','http://fernandes.net/saepe-minima-autem-eos-aperiam-ullam-nihil','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (88,'Francisco Sérgio da Silva Neto','(48) 4329-5151','josue10@yahoo.com','10x15','ku_SY','mn_CN','Blue','Consectetur ea quo voluptas inventore aspernatur. Perferendis unde suscipit ratione quos dolorum. Consequatur nostrum soluta nesciunt quidem sapiente reprehenderit iste esse.','http://www.bonilha.com.br/beatae-velit-fuga-veritatis','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (89,'Madalena Sara Santiago','(15) 97751-8388','abril54@hotmail.com','10x15','el_GR','nr_ZA','PaleVioletRed','Rerum veritatis sed sed mollitia animi. Occaecati laboriosam illum fugit commodi nostrum nobis. Natus autem aut assumenda.','http://faria.com.br/','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (90,'Micaela Fernandes Sobrinho','(14) 3342-8061','emares@gmail.com','10x15','gu_IN','cy_GB','DarkTurquoise','Quam doloribus rem iure delectus rem ab officiis. Ut in tempora quia iusto. Commodi excepturi magnam labore fuga quia placeat numquam illo.','http://madeira.org/accusantium-in-aspernatur-alias-aliquid-error-eos','A',NULL,NULL,NULL,'2020-03-11 12:53:37','2020-03-11 12:53:37'),
 (91,'Dr. Luis Duarte Filho','(85) 2067-4513','pamela.mares@gmail.com','10x15','hu_HU','ar_MA','Cornsilk','Sed error laborum vel rerum. Voluptate non ut facilis dolorum. Voluptas qui sed id deleniti asperiores nisi. Eum illo fugit libero consequuntur nemo. Molestiae ducimus reprehenderit nemo nam corporis qui.','http://www.roque.com.br/quia-omnis-enim-laudantium-nihil-est','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (92,'Fernando Gusmão Lira','(86) 4382-4173','rmatias@yahoo.com','10x15','ii_CN','kl_GL','LemonChiffon','Et corrupti cum enim ab nulla et. Voluptate nulla et corporis similique. Sint autem ullam iure assumenda. Veritatis et corporis dignissimos laboriosam.','http://solano.org/impedit-reprehenderit-magni-reprehenderit','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (93,'Micaela Tessália Meireles Sobrinho','(42) 2348-6684','guerra.everton@hotmail.com','10x15','es_PE','ha_NG','DarkSlateGray','Aut inventore accusantium nobis impedit ea voluptatem maiores. Dolorum nulla saepe sequi quia cum ullam. Perferendis nostrum aut exercitationem sed distinctio ad qui. Delectus occaecati qui placeat numquam.','https://www.vieira.org/ullam-amet-non-est-ut-mollitia-et','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (94,'Everton Rafael Neves','(17) 98926-1271','epontes@terra.com.br','10x15','zh_TW','hy_AM','HoneyDew','Ut et consequatur nemo laudantium sequi neque ut. Non facilis aut et. Nihil magni aut ullam est. Doloribus qui porro officiis sapiente. Eos assumenda dolor eius autem. Et omnis reprehenderit minus recusandae.','http://www.delatorre.net.br/','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (95,'Elias Queirós Verdugo','(85) 3456-6918','soares.giovane@terra.com.br','10x15','bn_IN','ru_RU','AntiqueWhite','Voluptatem dolorum minus natus officia consequatur beatae sunt. Aut quam sed molestias aut. Non hic voluptatem nesciunt accusantium totam. Nemo adipisci amet similique reprehenderit consequatur occaecati et. Eaque sunt rerum officia cum.','http://www.galhardo.org/eos-eius-aspernatur-nobis-minima-non-molestiae.html','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (96,'Olívia Ketlin Ferraz Neto','(83) 98855-6305','samuel84@terra.com.br','10x15','ar_LB','sh_BA','MidnightBlue','Delectus aperiam alias enim aspernatur autem. Tempora quis at molestiae eaque a sunt eos quis. Laudantium voluptas veritatis fuga id sit voluptatem reiciendis totam. Quia beatae quis ut aspernatur iste dignissimos. Eveniet vel sed animi quis.','http://meireles.com/ea-iure-eius-quis-ipsum','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (97,'Dr. Emília Tessália Sandoval','(93) 91686-6977','umendonca@terra.com.br','10x15','fur_IT','ro_MD','MidnightBlue','Ut doloremque ut quis distinctio ipsa dolor. Et et ut soluta necessitatibus suscipit ut nihil voluptatem. Consectetur nesciunt voluptatem saepe illo officia quia debitis quis. Sunt voluptates nesciunt qui quam. Esse est in ex dicta fugit.','http://ferraz.com/eum-autem-quis-sed-mollitia.html','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (98,'Ariana Santiago Filho','(12) 91968-1436','dasilva.pablo@ig.com.br','10x15','fr_SN','lv_LV','MidnightBlue','Quo vitae ut quia ab ut et quia id. Non et dolor ducimus sit et. Consectetur fugiat quo ullam in nesciunt quidem officia. Sint ut repellendus error.','http://deaguiar.net/','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (99,'Rodrigo Pablo Dominato','(48) 90467-3279','nlozano@ig.com.br','10x15','en_CA','nl_BE','HoneyDew','Ad blanditiis ea quia odit. Blanditiis aliquam vel maiores quos sit ut. Odit quibusdam sapiente rerum maiores pariatur. Itaque et molestias rerum sequi id.','http://www.zamana.net/quo-iusto-debitis-impedit-consequatur-nostrum-atque-sed.html','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (100,'Antônio Pacheco Sobrinho','(22) 94688-2306','simao77@yahoo.com','10x15','ti_ER','ms_BN','LightGreen','Quae est sunt officiis in itaque ea. Perspiciatis necessitatibus assumenda sunt ipsum error. Qui magnam suscipit similique eum. Suscipit dolor reiciendis voluptatem cupiditate.','http://vega.net.br/doloremque-illo-dolorem-voluptas-nesciunt-consequuntur-sint-molestias.html','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (101,'Dr. João David Serra Jr.','(31) 3303-3452','benjamin24@r7.com','10x15','ee_GH','ka_GE','Yellow','Explicabo sit at ipsum molestias enim rerum. Officia quo beatae modi impedit delectus mollitia. Dicta ut repellat nihil omnis accusantium. Exercitationem aut quo soluta in perferendis.','https://queiros.com.br/dolores-tenetur-esse-nam-sint-debitis-aut-velit.html','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (102,'Srta. Fátima Leal Santiago Sobrinho','(54) 91378-6063','christian.mascarenhas@yahoo.com','10x15','fil_PH','kok_IN','LightGreen','Quam voluptatem ipsam quia in. Aut ipsum expedita porro consequatur optio dolorem fuga. Sit autem cupiditate expedita deserunt.','http://campos.net.br/sunt-est-rerum-qui','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (103,'Srta. Micaela Guerra','(16) 3937-9518','everton80@gmail.com','10x15','fr_CA','aa_DJ','Gold','Aut dolorem eligendi voluptatem aut. Delectus nesciunt id delectus. Sint totam facere ab facere voluptatem.','http://darosa.br/','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (104,'Dr. Miranda Alexa Branco Sobrinho','(85) 2732-6184','lozano.estevao@gmail.com','10x15','ti_ER','bo_IN','PowderBlue','Quasi ipsum iste perspiciatis et rerum. Quos quia explicabo natus laborum. Sit reiciendis dolore necessitatibus cumque laborum. Et ut nihil quo fugit et.','https://caldeira.org/voluptatem-eius-quam-in-debitis-dolor-veniam.html','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (105,'Sr. Emiliano Everton Soto Sobrinho','(28) 90514-8401','iguerra@yahoo.com','10x15','ta_IN','es_SV','DeepSkyBlue','Dolorem perferendis quis ut voluptatem perspiciatis. Blanditiis sit laudantium amet dolores id quam quasi incidunt. Sint iusto ea voluptatibus consequatur voluptatem. Eius animi dignissimos sit illum perspiciatis.','http://www.neves.com.br/totam-debitis-excepturi-soluta-officia-natus-laudantium-quam','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38'),
 (106,'Dr. Catarina Cortês Jr.','(24) 4103-3067','jose.garcia@hotmail.com','10x15','it_IT','zh_MO','Orange','Ex omnis id vitae sed ut vel optio est. Itaque qui ad est rerum ut. Enim quo totam id numquam et eveniet et. Est consectetur consequuntur consequatur rem voluptates.','https://www.vega.org/ad-eos-et-et-fugiat-voluptates-quis-numquam','A',NULL,NULL,NULL,'2020-03-11 12:53:38','2020-03-11 12:53:38');
/*!40000 ALTER TABLE `solicitacao_orcamento` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


--
-- Definition of table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `senha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usuarios`
--

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
