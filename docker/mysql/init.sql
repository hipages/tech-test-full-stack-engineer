CREATE TABLE `suburbs` (
    `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `postcode` varchar(4) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `idx_suburbs_postcode` (`postcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `categories` (
    `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `parent_category_id` int(11) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`),
    KEY `idx_categories_parent_category` (`parent_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `jobs` (
    `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `status` varchar(50) NOT NULL DEFAULT 'new',
    `suburb_id` int(11) unsigned NOT NULL,
    `category_id` int(11) unsigned NOT NULL,
    `contact_name` varchar(255) NOT NULL,
    `contact_phone` varchar(255) NOT NULL,
    `contact_email` varchar(255) NOT NULL,
    `price` int(3) unsigned NOT NULL,
    `description` text NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `idx_jobs_suburb` (`suburb_id`),
    KEY `idx_jobs_category` (`category_id`),
    CONSTRAINT `fk_jobs_suburb` FOREIGN KEY (`suburb_id`) REFERENCES `suburbs` (`id`),
    CONSTRAINT `fk_jobs_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `suburbs`
(`id`, `name`, `postcode`)
VALUES
(1, 'Sydney', '2000'),
(2, 'Bondi', '2026'),
(3, 'Manly', '2095'),
(4, 'Surry Hills', '2010'),
(5, 'Newtown', '2042')
;

INSERT INTO `categories`
(`id`, `name`, `parent_category_id`)
VALUES
(1, 'Plumbing', 0),
(2, 'Electrical', 0),
(3, 'Carpentry', 0),
(4, 'Handyman', 0),
(5, 'Building', 0),
(6, 'Bathroom Renovation', 5)
;

INSERT INTO `jobs`
(`suburb_id`, `category_id`, `contact_name`, `contact_phone`, `contact_email`, `price`, `description`)
VALUES
(1, 1, 'Luke Skywalker', '0412345678', 'luke@mailinator.com', 20, 'Integer aliquam pulvinar odio et convallis. Integer id tristique ex. Aenean scelerisque massa vel est sollicitudin vulputate. Suspendisse quis ex eu ligula elementum suscipit nec a est. Aliquam a gravida diam. Donec placerat magna posuere massa maximus vehicula. Cras nisl ipsum, fermentum nec odio in, ultricies dapibus risus. Vivamus neque.'),
(2, 2, 'Darth Vader', '0422223333', 'darth@mailinator.com', 30, 'Praesent elit dui, blandit eget nisl sed, ornare pharetra urna. In cursus auctor tellus. Quisque ligula metus, viverra nec nibh ut, sagittis luctus tellus. Nulla egestas nibh ut diam vehicula, ut auctor lectus pharetra. Aliquam condimentum, erat eget vehicula eleifend, nulla risus consequat augue, quis convallis mi diam et dui.'),
(3, 3, 'Han Solo', '0498765432', 'han@mailinator.com', 45, 'Aliquam posuere est sit amet libero egestas tempus. Donec ut efficitur sapien. Sed molestie nec lacus malesuada suscipit. Aliquam suscipit nibh at posuere tempor. Etiam a sollicitudin felis. In et enim leo. Morbi vel imperdiet purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam posuere auctor elit, id venenatis.'),
(4, 4, 'Kylo Ren', '0488770066', 'kylo@mailinator.com', 15, 'Proin semper consectetur mauris id commodo. In accumsan est ligula, id posuere libero placerat ac. Nunc non volutpat sem. Mauris gravida dictum eleifend. Praesent quis mattis arcu, rutrum sagittis diam. Nullam tempus sagittis diam, vel viverra nunc ultricies non. Sed at orci sem. Phasellus eget arcu hendrerit, congue metus ut, mollis tellus. Quisque gravida metus ut libero porta, sit amet rutrum odio porta. Fusce interdum est sed quam venenatis dictum. Integer ultrices est in odio semper dictum. Proin nec urna vel quam finibus maximus.

Sed accumsan urna vitae libero luctus volutpat. Nulla eu sodales enim, vitae blandit ligula. Suspendisse at magna pellentesque, rhoncus orci quis, consequat diam. Donec pulvinar accumsan erat, quis hendrerit est ultricies vel. Vivamus felis justo, vulputate non urna sed, finibus semper ipsum. Cras mattis, est vel posuere mattis, turpis augue elementum massa, vitae accumsan nibh nisl nec lectus. Maecenas porta sagittis erat at consequat. Suspendisse fermentum rutrum bibendum. Donec tempor mollis massa vel egestas.

Morbi rutrum felis lacinia eros tincidunt scelerisque. Morbi aliquam porttitor sapien. Phasellus eu odio ac neque faucibus suscipit in at lectus. Maecenas et blandit arcu. Nullam sed sem neque. Nulla sit amet tristique nisl. Ut et pretium velit. Fusce consequat tincidunt fringilla. Nunc gravida libero sit amet augue viverra, a imperdiet odio dictum. Sed iaculis, metus vel rutrum convallis, quam ex commodo nibh, eget ultrices nisi eros eu massa. Ut iaculis maximus ligula, sed efficitur mauris bibendum sagittis. Curabitur et dolor mi. Proin lorem urna, porttitor quis lacus pharetra, ornare porta nulla. Sed ultricies feugiat nibh, et semper tellus aliquet sit amet. Cras faucibus scelerisque nisi, at vestibulum massa pharetra et.

'),
(5, 5, 'Lando Calrissian', '0433335555', 'lando@mailinator.com', 62, 'Quisque blandit erat id mi tincidunt porta. Vivamus eleifend sagittis neque id maximus. Etiam molestie, massa ut tempus fermentum, augue nisi pulvinar nunc, id malesuada ipsum ipsum nec odio. Etiam et nisl facilisis, egestas massa eget, sagittis sapien. Curabitur eget consequat diam. Proin auctor rhoncus est, vitae imperdiet sem mollis.'),
(1, 6, 'Jabba TheHutt', '0411443322', 'jabba@mailinator.com', 55, 'Suspendisse consequat malesuada arcu id venenatis. Donec maximus, dolor quis elementum scelerisque, lorem diam ornare arcu, sed venenatis orci justo nec nibh. Maecenas sollicitudin pulvinar lorem, at aliquet tortor tincidunt at. Vestibulum blandit, arcu eu blandit vehicula, orci nulla porta justo, a semper nunc risus sit amet ante. Donec lobortis.')
;