-- -- phpMyAdmin SQL Dump
-- -- version 4.8.5
-- -- https://www.phpmyadmin.net/
-- --
-- -- Host: 127.0.0.1
-- -- Generation Time: Dec 12, 2019 at 02:30 PM
-- -- Server version: 10.1.38-MariaDB
-- -- PHP Version: 7.3.4

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- SET AUTOCOMMIT = 0;
-- START TRANSACTION;
-- SET time_zone = "+00:00";


-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!40101 SET NAMES utf8mb4 */;

-- --
-- -- Database: `cms`
-- --
-- CREATE DATABASE IF NOT EXISTS `cms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
-- USE `cms`;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `categories`
-- --

-- CREATE TABLE `categories` (
--   `cat_id` int(3) NOT NULL,
--   `cat_title` varchar(255) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `categories`
-- --

-- INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
-- (1, 'PHP'),
-- (2, 'Java'),
-- (3, 'Javascript'),
-- (4, 'JSP'),
-- (5, 'C++'),
-- (6, 'C#'),
-- (7, 'Git'),
-- (8, 'Bootstrap');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `comments`
-- --

-- CREATE TABLE `comments` (
--   `comment_id` int(3) NOT NULL,
--   `comment_post_id` int(3) NOT NULL,
--   `comment_author` varchar(255) NOT NULL,
--   `comment_email` varchar(255) NOT NULL,
--   `comment_content` text NOT NULL,
--   `comment_status` varchar(255) NOT NULL,
--   `comment_date` date NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `comments`
-- --

-- INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
-- (12, 14, 'This is the first comment', 'annemarie@gmail.com', 'First comment', 'approved', '2019-12-12'),
-- (14, 15, 'First comment for this post', 'vidarshanadithya3@gmail.com', 'First comment', 'approved', '2019-12-12'),
-- (15, 15, 'First comment for this post', 'vidarshanadithya3@gmail.com', 'First comment', 'approved', '2019-12-12'),
-- (16, 15, 'Seconf comment', 'annemarie@gmail.com', 'Second comment', 'approved', '2019-12-12'),
-- (17, 15, 'Seconf comment', 'annemarie@gmail.com', 'Second comment', 'approved', '2019-12-12'),
-- (18, 16, 'One comment only', 'vidarshanadithya3@gmail.com', 'This is the only comment for this post', 'approved', '2019-12-12'),
-- (19, 16, 'One comment only', 'vidarshanadithya3@gmail.com', 'This is the only comment for this post', 'unapproved', '2019-12-12'),
-- (20, 17, 'One comment only', 'annemarie@gmail.com', 'Only comment', 'unapproved', '2019-12-12'),
-- (21, 17, 'One comment only', 'annemarie@gmail.com', 'Only comment', 'unapproved', '2019-12-12'),
-- (22, 18, 'First comment for this post', 'johnny@gmail.com', 'Comments are a great feature', 'unapproved', '2019-12-12'),
-- (23, 18, 'First comment for this post', 'johnny@gmail.com', 'Comments are a great feature', 'unapproved', '2019-12-12');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `posts`
-- --

-- CREATE TABLE `posts` (
--   `post_id` int(3) NOT NULL,
--   `post_category_id` int(3) NOT NULL,
--   `post_title` varchar(255) NOT NULL,
--   `post_author` varchar(255) NOT NULL,
--   `post_user` varchar(255) NOT NULL,
--   `post_date` date NOT NULL,
--   `post_image` text NOT NULL,
--   `post_content` text NOT NULL,
--   `post_tags` varchar(255) NOT NULL,
--   `post_comment_count` int(11) NOT NULL,
--   `post_status` varchar(255) NOT NULL,
--   `post_views_count` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `posts`
-- --

-- INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
-- (14, 1, 'Testing a new feature', '', 'annemarie', '2019-12-12', 'image_3.jpg', '<p>ehbbfjjehgvje</p>', 'PHP, JSP, Java, C#', 0, 'published', 3),
-- (15, 1, 'Testing a new feature 2', '', 'John Doe', '2019-12-12', 'image_1.jpg', '<p>ervf5tbgv6</p>', 'Javascript, Java', 0, 'published', 5),
-- (16, 1, 'This is the second post-Updated', '', 'Edwin Diaz', '2019-12-12', 'image_2.jpg', '<p>This is a test</p>', 'PHP, JSP, Java, C#', 0, 'published', 2),
-- (17, 1, 'Testing a new feature 2', '', 'adithya', '2019-12-12', 'image_5.jpg', '<p>fefe</p>', 'Testing feature', 0, 'published', 2),
-- (18, 5, 'This is the second post-Updated', '', 'adithya', '2019-12-12', 'image_1.jpg', '<p>dgyerufh3</p>', 'PHP, JSP, Java, C#', 0, 'published', 2);

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `users`
-- --

-- CREATE TABLE `users` (
--   `user_id` int(3) NOT NULL,
--   `username` varchar(255) NOT NULL,
--   `user_password` varchar(255) NOT NULL,
--   `user_firstname` varchar(255) NOT NULL,
--   `user_lastname` varchar(255) NOT NULL,
--   `user_email` varchar(255) NOT NULL,
--   `user_image` text NOT NULL,
--   `user_role` varchar(255) NOT NULL,
--   `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `users`
-- --

-- INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
-- (1, 'adithya', '$2y$10$iusesomecrazystrings2unVg.paudO9x2pX3RIjF64NSmXT0hcFG', 'Adithya', 'Rathnayake', 'vidarshanadithya3@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
-- (2, 'John Doe', '$2y$10$iusesomecrazystrings2uya3DYtXG8hDnjsJD./3g.if54c5xF7C', 'John ', 'Doe', 'johnny@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
-- (3, 'anne', '$2y$10$iusesomecrazystrings2uya3DYtXG8hDnjsJD./3g.if54c5xF7C', 'Anne', 'Marie', 'annemarie@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
-- (4, 'Edwin Diaz', '$2y$10$iusesomecrazystrings2uya3DYtXG8hDnjsJD./3g.if54c5xF7C', 'Edwin', 'Diaz', 'edwin@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
-- (5, 'smith', '$2y$10$iusesomecrazystrings2uvgnjnDOGIE6JPA9zzq36EdPnYMUav/S', '', '', 'smith@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
-- (6, 'adithya', '$2y$10$iusesomecrazystrings2uvgnjnDOGIE6JPA9zzq36EdPnYMUav/S', '', '', 'adithya@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
-- (7, 'annemarie', '$2y$10$iusesomecrazystrings2uvgnjnDOGIE6JPA9zzq36EdPnYMUav/S', '', '', 'annemarie@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
-- (8, 'jenny', '$2y$10$iusesomecrazystrings2uvgnjnDOGIE6JPA9zzq36EdPnYMUav/S', '', '', 'jenny@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
-- (9, 'test1', '$2y$12$tGU4iZZ0/AiokmjXCpBzLuk46cAiew/FIktihpmH4hPB5uWxQisyW', '', '', 'test@test.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
-- (10, 'peter', '$2y$12$veHclsp.n74v6NVfUhGxdeVfCajMIoq68y0T18InI/PNCFy6wW4LC', '', '', 'peter@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
-- (11, 'peter2', '$2y$12$Q5SZRc/SKOgQYoK0UbkLmeCsAyN2d4fP3TG8eg2rJHW8jIqQkLeyi', '', '', 'peter@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
-- (12, 'adithya', '$2y$12$u/g/QgRujw7rifOXWcP6zurkk0mo859zJCvenWMdCbXqSWZ3eyyta', '', '', 'adithya@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
-- (13, 'peter3', '$2y$12$ZzHF1FtGI8l6v34PA2I6vOjNJzDTq69aDk.0K8eteQZKvykRw5Ia2', '', '', 'peter3@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
-- (14, 'test2', '$2y$12$JUvGaN588k/HmbhO2bG1ouG6z/5jWOUPgrUCumXPcLK7hFrhHEMuC', '', '', 'test2@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
-- (16, 'william', '$2y$10$CoSRTm5iEGP2mk3yZRGMjOpZn8J/5NIzxk4birK06nvrAxXP7i9aG', 'William', 'Smith', 'willi@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `users_online`
-- --

-- CREATE TABLE `users_online` (
--   `id` int(11) NOT NULL,
--   `session` varchar(255) NOT NULL,
--   `time` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `users_online`
-- --

-- INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
-- (4, 'b50tuprkrtf6nua7fmv2aq27aj', 1576086392),
-- (5, 'grbc516oc8853mij0qric94qfd', 1576082767),
-- (6, '85hkvq3slb6ncame0b5i7tbto0', 1576082770),
-- (7, '90ka1p82o42h9adu2t7cthlu8t', 1576083658),
-- (8, '0irbt7376dtv4qlfg58hiod3c6', 1576085088),
-- (9, '29nsqtbmpsdj4bbvjka0gkvtoo', 1576085816),
-- (10, 'bg3hbtbftdif6jmcnuibvqvbpe', 1576137677),
-- (11, '28gut626f84g97gm4t54rosvak', 1576128996),
-- (12, 'n0rs40gprvkv9fno5nk03ginvd', 1576123020),
-- (13, 'rkg5qfdi1o4fj61qa9pn0l54vk', 1576128985);

-- --
-- -- Indexes for dumped tables
-- --

-- --
-- -- Indexes for table `categories`
-- --
-- ALTER TABLE `categories`
--   ADD PRIMARY KEY (`cat_id`);

-- --
-- -- Indexes for table `comments`
-- --
-- ALTER TABLE `comments`
--   ADD PRIMARY KEY (`comment_id`);

-- --
-- -- Indexes for table `posts`
-- --
-- ALTER TABLE `posts`
--   ADD PRIMARY KEY (`post_id`);

-- --
-- -- Indexes for table `users`
-- --
-- ALTER TABLE `users`
--   ADD PRIMARY KEY (`user_id`);

-- --
-- -- Indexes for table `users_online`
-- --
-- ALTER TABLE `users_online`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- AUTO_INCREMENT for dumped tables
-- --

-- --
-- -- AUTO_INCREMENT for table `categories`
-- --
-- ALTER TABLE `categories`
--   MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

-- --
-- -- AUTO_INCREMENT for table `comments`
-- --
-- ALTER TABLE `comments`
--   MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

-- --
-- -- AUTO_INCREMENT for table `posts`
-- --
-- ALTER TABLE `posts`
--   MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

-- --
-- -- AUTO_INCREMENT for table `users`
-- --
-- ALTER TABLE `users`
--   MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

-- --
-- -- AUTO_INCREMENT for table `users_online`
-- --
-- ALTER TABLE `users_online`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
-- --
-- -- Database: `phpmyadmin`
-- --
-- CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
-- USE `phpmyadmin`;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__bookmark`
-- --

-- CREATE TABLE `pma__bookmark` (
--   `id` int(11) NOT NULL,
--   `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
--   `query` text COLLATE utf8_bin NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__central_columns`
-- --

-- CREATE TABLE `pma__central_columns` (
--   `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
--   `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
--   `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
--   `col_length` text COLLATE utf8_bin,
--   `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
--   `col_isNull` tinyint(1) NOT NULL,
--   `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
--   `col_default` text COLLATE utf8_bin
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__column_info`
-- --

-- CREATE TABLE `pma__column_info` (
--   `id` int(5) UNSIGNED NOT NULL,
--   `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
--   `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
--   `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__designer_settings`
-- --

-- CREATE TABLE `pma__designer_settings` (
--   `username` varchar(64) COLLATE utf8_bin NOT NULL,
--   `settings_data` text COLLATE utf8_bin NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__export_templates`
-- --

-- CREATE TABLE `pma__export_templates` (
--   `id` int(5) UNSIGNED NOT NULL,
--   `username` varchar(64) COLLATE utf8_bin NOT NULL,
--   `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
--   `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
--   `template_data` text COLLATE utf8_bin NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__favorite`
-- --

-- CREATE TABLE `pma__favorite` (
--   `username` varchar(64) COLLATE utf8_bin NOT NULL,
--   `tables` text COLLATE utf8_bin NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__history`
-- --

-- CREATE TABLE `pma__history` (
--   `id` bigint(20) UNSIGNED NOT NULL,
--   `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `sqlquery` text COLLATE utf8_bin NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__navigationhiding`
-- --

-- CREATE TABLE `pma__navigationhiding` (
--   `username` varchar(64) COLLATE utf8_bin NOT NULL,
--   `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
--   `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
--   `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
--   `table_name` varchar(64) COLLATE utf8_bin NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__pdf_pages`
-- --

-- CREATE TABLE `pma__pdf_pages` (
--   `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `page_nr` int(10) UNSIGNED NOT NULL,
--   `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__recent`
-- --

-- CREATE TABLE `pma__recent` (
--   `username` varchar(64) COLLATE utf8_bin NOT NULL,
--   `tables` text COLLATE utf8_bin NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --
-- -- Dumping data for table `pma__recent`
-- --

-- INSERT INTO `pma__recent` (`username`, `tables`) VALUES
-- ('root', '[{\"db\":\"cms\",\"table\":\"comments\"},{\"db\":\"cms\",\"table\":\"categories\"},{\"db\":\"cms\",\"table\":\"posts\"},{\"db\":\"cms\",\"table\":\"users\"},{\"db\":\"cms\",\"table\":\"users_online\"}]');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__relation`
-- --

-- CREATE TABLE `pma__relation` (
--   `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__savedsearches`
-- --

-- CREATE TABLE `pma__savedsearches` (
--   `id` int(5) UNSIGNED NOT NULL,
--   `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `search_data` text COLLATE utf8_bin NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__table_coords`
-- --

-- CREATE TABLE `pma__table_coords` (
--   `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `pdf_page_number` int(11) NOT NULL DEFAULT '0',
--   `x` float UNSIGNED NOT NULL DEFAULT '0',
--   `y` float UNSIGNED NOT NULL DEFAULT '0'
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__table_info`
-- --

-- CREATE TABLE `pma__table_info` (
--   `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
--   `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__table_uiprefs`
-- --

-- CREATE TABLE `pma__table_uiprefs` (
--   `username` varchar(64) COLLATE utf8_bin NOT NULL,
--   `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
--   `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
--   `prefs` text COLLATE utf8_bin NOT NULL,
--   `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --
-- -- Dumping data for table `pma__table_uiprefs`
-- --

-- INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
-- ('root', 'cms', 'users', '{\"sorted_col\":\"`users`.`user_id` ASC\"}', '2019-12-12 05:34:31');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__tracking`
-- --

-- CREATE TABLE `pma__tracking` (
--   `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
--   `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
--   `version` int(10) UNSIGNED NOT NULL,
--   `date_created` datetime NOT NULL,
--   `date_updated` datetime NOT NULL,
--   `schema_snapshot` text COLLATE utf8_bin NOT NULL,
--   `schema_sql` text COLLATE utf8_bin,
--   `data_sql` longtext COLLATE utf8_bin,
--   `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
--   `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__userconfig`
-- --

-- CREATE TABLE `pma__userconfig` (
--   `username` varchar(64) COLLATE utf8_bin NOT NULL,
--   `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `config_data` text COLLATE utf8_bin NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --
-- -- Dumping data for table `pma__userconfig`
-- --

-- INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
-- ('root', '2019-12-12 13:29:49', '{\"Console\\/Mode\":\"collapse\"}');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__usergroups`
-- --

-- CREATE TABLE `pma__usergroups` (
--   `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
--   `tab` varchar(64) COLLATE utf8_bin NOT NULL,
--   `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `pma__users`
-- --

-- CREATE TABLE `pma__users` (
--   `username` varchar(64) COLLATE utf8_bin NOT NULL,
--   `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --
-- -- Indexes for dumped tables
-- --

-- --
-- -- Indexes for table `pma__bookmark`
-- --
-- ALTER TABLE `pma__bookmark`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `pma__central_columns`
-- --
-- ALTER TABLE `pma__central_columns`
--   ADD PRIMARY KEY (`db_name`,`col_name`);

-- --
-- -- Indexes for table `pma__column_info`
-- --
-- ALTER TABLE `pma__column_info`
--   ADD PRIMARY KEY (`id`),
--   ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

-- --
-- -- Indexes for table `pma__designer_settings`
-- --
-- ALTER TABLE `pma__designer_settings`
--   ADD PRIMARY KEY (`username`);

-- --
-- -- Indexes for table `pma__export_templates`
-- --
-- ALTER TABLE `pma__export_templates`
--   ADD PRIMARY KEY (`id`),
--   ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

-- --
-- -- Indexes for table `pma__favorite`
-- --
-- ALTER TABLE `pma__favorite`
--   ADD PRIMARY KEY (`username`);

-- --
-- -- Indexes for table `pma__history`
-- --
-- ALTER TABLE `pma__history`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

-- --
-- -- Indexes for table `pma__navigationhiding`
-- --
-- ALTER TABLE `pma__navigationhiding`
--   ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

-- --
-- -- Indexes for table `pma__pdf_pages`
-- --
-- ALTER TABLE `pma__pdf_pages`
--   ADD PRIMARY KEY (`page_nr`),
--   ADD KEY `db_name` (`db_name`);

-- --
-- -- Indexes for table `pma__recent`
-- --
-- ALTER TABLE `pma__recent`
--   ADD PRIMARY KEY (`username`);

-- --
-- -- Indexes for table `pma__relation`
-- --
-- ALTER TABLE `pma__relation`
--   ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
--   ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

-- --
-- -- Indexes for table `pma__savedsearches`
-- --
-- ALTER TABLE `pma__savedsearches`
--   ADD PRIMARY KEY (`id`),
--   ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

-- --
-- -- Indexes for table `pma__table_coords`
-- --
-- ALTER TABLE `pma__table_coords`
--   ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

-- --
-- -- Indexes for table `pma__table_info`
-- --
-- ALTER TABLE `pma__table_info`
--   ADD PRIMARY KEY (`db_name`,`table_name`);

-- --
-- -- Indexes for table `pma__table_uiprefs`
-- --
-- ALTER TABLE `pma__table_uiprefs`
--   ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

-- --
-- -- Indexes for table `pma__tracking`
-- --
-- ALTER TABLE `pma__tracking`
--   ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

-- --
-- -- Indexes for table `pma__userconfig`
-- --
-- ALTER TABLE `pma__userconfig`
--   ADD PRIMARY KEY (`username`);

-- --
-- -- Indexes for table `pma__usergroups`
-- --
-- ALTER TABLE `pma__usergroups`
--   ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

-- --
-- -- Indexes for table `pma__users`
-- --
-- ALTER TABLE `pma__users`
--   ADD PRIMARY KEY (`username`,`usergroup`);

-- --
-- -- AUTO_INCREMENT for dumped tables
-- --

-- --
-- -- AUTO_INCREMENT for table `pma__bookmark`
-- --
-- ALTER TABLE `pma__bookmark`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `pma__column_info`
-- --
-- ALTER TABLE `pma__column_info`
--   MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `pma__export_templates`
-- --
-- ALTER TABLE `pma__export_templates`
--   MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `pma__history`
-- --
-- ALTER TABLE `pma__history`
--   MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `pma__pdf_pages`
-- --
-- ALTER TABLE `pma__pdf_pages`
--   MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `pma__savedsearches`
-- --
-- ALTER TABLE `pma__savedsearches`
--   MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
-- --
-- -- Database: `test`
-- --
-- CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
-- USE `test`;
-- COMMIT;

-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
