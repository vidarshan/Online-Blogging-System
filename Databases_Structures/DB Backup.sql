



/*always use primatry key not null auto_increment for every 'id ' column 
to prevent errors*/













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


-- CREATE TABLE `comments` (
--   `comment_id` int(3) NOT NULL,
--   `comment_post_id` int(3) NOT NULL,
--   `comment_author` varchar(255) NOT NULL,
--   `comment_email` varchar(255) NOT NULL,
--   `comment_content` text NOT NULL,
--   `comment_status` varchar(255) NOT NULL,
--   `comment_date` date NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- CREATE TABLE `categories` (
--   `cat_id` int(3) NOT NULL,
--   `cat_title` varchar(255) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
-- (1, 'PHP'),
-- (2, 'Java'),
-- (3, 'Javascript'),
-- (4, 'JSP'),
-- (5, 'C++'),
-- (6, 'C#'),
-- (7, 'Git'),
-- (8, 'Bootstrap');

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

-- INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
-- (14, 1, 'Testing a new feature', '', 'annemarie', '2019-12-12', 'image_3.jpg', '<p>ehbbfjjehgvje</p>', 'PHP, JSP, Java, C#', 0, 'published', 3),
-- (15, 1, 'Testing a new feature 2', '', 'John Doe', '2019-12-12', 'image_1.jpg', '<p>ervf5tbgv6</p>', 'Javascript, Java', 0, 'published', 5),
-- (16, 1, 'This is the second post-Updated', '', 'Edwin Diaz', '2019-12-12', 'image_2.jpg', '<p>This is a test</p>', 'PHP, JSP, Java, C#', 0, 'published', 2),
-- (17, 1, 'Testing a new feature 2', '', 'adithya', '2019-12-12', 'image_5.jpg', '<p>fefe</p>', 'Testing feature', 0, 'published', 2),
-- (18, 5, 'This is the second post-Updated', '', 'adithya', '2019-12-12', 'image_1.jpg', '<p>dgyerufh3</p>', 'PHP, JSP, Java, C#', 0, 'published', 2);

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

-- CREATE TABLE `users_online` (
--   `id` int(11) NOT NULL,
--   `session` varchar(255) NOT NULL,
--   `time` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;