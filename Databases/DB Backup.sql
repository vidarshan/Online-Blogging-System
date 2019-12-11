-- CREATE TABLE `posts` (
--   `post_id` int(3) NOT NULL AUTO INCREMENT PRIMARY KEY,
--   `post_category_id` int(3) NOT NULL,
--   `post_title` varchar(255) NOT NULL,
--   `post_author` varchar(255) NOT NULL,
--   `post_date` date NOT NULL,
--   `post_image` text NOT NULL,
--   `post_content` text NOT NULL,
--   `post_tags` varchar(255) NOT NULL,
--   `post_comment_count` int(11) NOT NULL,
--   `post_status` varchar(255) NOT NULL,
--   `post_views_count` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- CREATE TABLE `users` (
--   `user_id` int(3) NOT NULL AUTO INCREMENT PRIMARY KEY,
--   `username` varchar(255) NOT NULL,
--   `user_password` varchar(255) NOT NULL,
--   `user_firstname` varchar(255) NOT NULL,
--   `user_lastname` varchar(255) NOT NULL,
--   `user_email` varchar(255) NOT NULL,
--   `user_image` text NOT NULL,
--   `user_role` varchar(255) NOT NULL,
--   `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$Iusesomecrazystrings22'
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- CREATE TABLE `comments` (
--   `comment_id` int(3) NOT NULL AUTO INCREMENT PRIMARY KEY,
--   `comment_post_id` int(3) NOT NULL,
--   `comment_author` varchar(255) NOT NULL,
--   `comment_email` varchar(255) NOT NULL,
--   `comment_content` text NOT NULL,
--   `comment_status` varchar(255) NOT NULL,
--   `comment_date` date NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- CREATE TABLE `categories` (
--   `cat_id` int(3) NOT NULL AUTO INCREMENT PRIMARY KEY,
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
-- (1, 1, 'Vidarshan Adithya', 'vidarshanadithya3@gmail.com', 'This is the first comment', 'approved', '2019-12-11'),
-- (2, 1, 'First comment for this post', 'vidarshanadithya3@gmail.com', 'This is great', 'unapproved', '2019-12-11'),
-- (3, 2, 'Jane Smith', 'jane@gmail.com', 'This is great', 'unapproved', '2019-12-11'),
-- (4, 3, 'Anne', 'annemarie@gmail.com', 'This is great', 'unapproved', '2019-12-11'),
-- (5, 4, 'John Doe', 'johnny@gmail.com', 'This is a great course', 'unapproved', '2019-12-11');

-- INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
-- (1, 1, 'This is a PHP CMS project', 'Vidarshan Adithya', '2019-12-11', 'image_1.jpg', '<p>This is a good project for learning</p>', 'PHP, JSP, Java, C#', 1, 'published', 5),
-- (2, 3, 'Javascript course', 'Edwin Diaz', '2019-12-11', 'image_2.jpg', '<p>This is a good PHP course</p>', 'Javascript, Java', 1, 'published', 3),
-- (3, 1, 'Bootsrap Course', 'Vidarshan Adithya', '2019-12-11', 'image_3.jpg', '<p>This is a course for front end development</p>', 'Laravel, Bootstarp', 1, 'draft', 4),
-- (4, 2, 'Java new release', 'Edwin Diaz', '2019-12-11', 'image_4.jpg', '<p>This is a good java, javascript course</p>', 'Javascript, Java', 1, 'published', 2),
-- (5, 2, 'Java new release', 'Edwin Diaz', '2019-12-11', 'image_4.jpg', '<p>This is a good java, javascript course</p>', 'Javascript, Java', 0, 'published', 0),
-- (6, 1, 'Bootsrap Course', 'Vidarshan Adithya', '2019-12-11', 'image_3.jpg', '<p>This is a course for front end development</p>', 'Laravel, Bootstarp', 0, 'published', 0),
-- (7, 3, 'Javascript course', 'Edwin Diaz', '2019-12-11', 'image_2.jpg', '<p>This is a good PHP course</p>', 'Javascript, Java', 0, 'draft', 0),
-- (8, 1, 'This is a PHP CMS project', 'Vidarshan Adithya', '2019-12-11', 'image_1.jpg', '<p>This is a good project for learning</p>', 'PHP, JSP, Java, C#', 0, 'published', 0);

-- INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
-- (1, 'adithya', '$2y$10$iusesomecrazystrings2unVg.paudO9x2pX3RIjF64NSmXT0hcFG', 'Adithya', 'Rathnayake', 'vidarshanadithya3@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
-- (2, 'John Doe', '$2y$10$iusesomecrazystrings2uya3DYtXG8hDnjsJD./3g.if54c5xF7C', 'John ', 'Doe', 'johnny@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
-- (3, 'anne', '$2y$10$iusesomecrazystrings2uya3DYtXG8hDnjsJD./3g.if54c5xF7C', 'Anne', 'Marie', 'annemarie@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
-- (4, 'Edwin Diaz', '$2y$10$iusesomecrazystrings2uya3DYtXG8hDnjsJD./3g.if54c5xF7C', 'Edwin', 'Diaz', 'edwin@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22');

-- CREATE TABLE `users_online` (
--   `id` int(11) NOT NULL,
--   `session` varchar(255) NOT NULL,
--   `time` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
